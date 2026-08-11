window.SqlBuilder = (function () {
  function quoteValue(val, op) {
    if (val === null || val === undefined) return "NULL";
    const s = String(val).trim();
    if (s === "") return "''";
    if (op === "IN") {
      return s
        .split(",")
        .map((p) => p.trim())
        .filter(Boolean)
        .map((p) => (/^-?\d+(\.\d+)?$/.test(p) ? p : `'${p.replace(/'/g, "''")}'`))
        .join(", ");
    }
    if (op === "BETWEEN") {
      const parts = s.split(",").map((p) => p.trim());
      if (parts.length >= 2) {
        const a = lit(parts[0]);
        const b = lit(parts[1]);
        return `${a} AND ${b}`;
      }
    }
    if (/^-?\d+(\.\d+)?$/.test(s) && op !== "LIKE" && op !== "LIKE_UPPER") {
      return s;
    }
    if (s.toUpperCase() === "NULL") return "NULL";
    return lit(s);
  }
  function lit(s) {
    if (/^-?\d+(\.\d+)?$/.test(String(s).trim())) return String(s).trim();
    return `'${String(s).replace(/'/g, "''")}'`;
  }
  function colRef(alias, col) {
    return `${alias}.${col}`;
  }
  function fieldBase(item, aliasOf) {
    const alias = aliasOf[item.table];
    if (!alias) return null;
    return colRef(alias, item.column);
  }
  function fieldExpr(item, aliasOf, forOrder) {
    const base = fieldBase(item, aliasOf);
    if (!base) return null;
    let expr = base;
    const agg = item.agg || "";
    if (agg === "COUNT_DISTINCT") expr = `COUNT(DISTINCT ${base})`;
    else if (agg) expr = `${agg}(${base})`;
    if (forOrder) return expr;
    const label =
      item.outAlias ||
      item.alias ||
      friendlyOutLabel(item);
    if (label) {
      const safe = String(label).replace(/"/g, '""');
      expr = `${expr} AS "${safe}"`;
    }
    return expr;
  }
  function friendlyOutLabel(item) {
    const t = SQL_SCHEMA.getTable(item.table);
    const c = t?.columns.find((x) => x.name === item.column);
    const base = c?.label || item.column;
    const map = {
      SUM: "Сума · ",
      AVG: "Середнє · ",
      COUNT: "Кількість · ",
      COUNT_DISTINCT: "Унікальних · ",
      MIN: "Мін · ",
      MAX: "Макс · ",
    };
    const p = map[item.agg];
    return p ? p + base : base;
  }
  function assignAliases(tableIds) {
    const aliasOf = {};
    const used = new Set();
    tableIds.forEach((id) => {
      const t = SQL_SCHEMA.getTable(id);
      if (!t) return;
      let a = t.defaultAlias;
      let n = 1;
      while (used.has(a)) {
        a = t.defaultAlias + n;
        n += 1;
      }
      used.add(a);
      aliasOf[id] = a;
    });
    return aliasOf;
  }
  function buildJoins(state, aliasOf) {
    const lines = [];
    (state.joins || []).forEach((j) => {
      const rightT = SQL_SCHEMA.getTable(j.rightTable);
      if (!rightT) return;
      const la = aliasOf[j.leftTable];
      const ra = aliasOf[j.rightTable];
      if (!la || !ra) return;
      const jt = j.type || "INNER";
      lines.push(
        `${jt} JOIN ${rightT.fullName} ${ra}\n    ON ${colRef(la, j.leftCol)} = ${colRef(ra, j.rightCol)}`
      );
    });
    return lines;
  }
  function buildWhere(state, aliasOf) {
    const parts = [];
    (state.filters || []).forEach((f) => {
      if (!f.table || !f.column || !f.op) return;
      const alias = aliasOf[f.table];
      if (!alias) return;
      const left = colRef(alias, f.column);
      const op = f.op;
      if (op === "IS NULL" || op === "IS NOT NULL") {
        parts.push(`${left} ${op}`);
        return;
      }
      if (op === "IN") {
        parts.push(`${left} IN (${quoteValue(f.value, op)})`);
        return;
      }
      if (op === "BETWEEN") {
        parts.push(`${left} BETWEEN ${quoteValue(f.value, op)}`);
        return;
      }
      if (op === "LIKE") {
        let v = String(f.value || "").trim();
        if (!v.includes("%")) v = `%${v}%`;
        parts.push(`${left} LIKE ${lit(v)}`);
        return;
      }
      if (op === "LIKE_UPPER") {
        let v = String(f.value || "").trim();
        if (!v.includes("%")) v = `%${v}%`;
        parts.push(`${left} LIKE UPPER(${lit(v)})`);
        return;
      }
      parts.push(`${left} ${op} ${quoteValue(f.value, op)}`);
    });
    return parts;
  }
  function buildGroupBy(state, aliasOf) {
    const hasAgg = (state.fields || []).some((f) => f.agg);
    if (!hasAgg) return [];
    return (state.fields || [])
      .filter((f) => !f.agg)
      .map((f) => fieldBase(f, aliasOf))
      .filter(Boolean);
  }
  function buildOrderBy(state, aliasOf) {
    return (state.orderBy || [])
      .map((o) => {
        if (o.expr) return `${o.expr} ${o.dir || "ASC"}`;
        if (o.fieldIndex != null && state.fields[o.fieldIndex]) {
          const expr = fieldExpr(state.fields[o.fieldIndex], aliasOf, true);
          return expr ? `${expr} ${o.dir || "ASC"}` : null;
        }
        const a = aliasOf[o.table];
        if (!a || !o.column) return null;
        let expr = colRef(a, o.column);
        if (o.agg === "COUNT_DISTINCT") expr = `COUNT(DISTINCT ${expr})`;
        else if (o.agg) expr = `${o.agg}(${expr})`;
        return `${expr} ${o.dir || "ASC"}`;
      })
      .filter(Boolean);
  }
  function buildSelect(state) {
    const selected = state.tables || [];
    if (!selected.length) {
      return "-- Крок 1: оберіть таблицю (таблиці)";
    }
    const aliasOf = assignAliases(selected);
    const fields = state.fields || [];
    let selectList;
    if (!fields.length) {
      selectList = ["*"];
    } else {
      selectList = fields.map((f) => fieldExpr(f, aliasOf, false)).filter(Boolean);
      if (!selectList.length) selectList = ["*"];
    }
    const baseId = selected[0];
    const base = SQL_SCHEMA.getTable(baseId);
    const baseAlias = aliasOf[baseId];
    const joinLines = buildJoins(state, aliasOf);
    const where = buildWhere(state, aliasOf);
    const groupBy = buildGroupBy(state, aliasOf);
    const orderBy = buildOrderBy(state, aliasOf);
    let fromSql;
    if (joinLines.length > 0) {
      fromSql = `FROM ${base.fullName} ${baseAlias}\n${joinLines
        .map((l) => "  " + l)
        .join("\n")}`;
    } else if (selected.length === 1) {
      fromSql = `FROM ${base.fullName} ${baseAlias}`;
    } else {
      const fromParts = selected.map(
        (id) => `${SQL_SCHEMA.getTable(id).fullName} ${aliasOf[id]}`
      );
      fromSql = `FROM ${fromParts.join(",\n     ")}`;
      suggestWhereJoins(selected, aliasOf).forEach((c) => where.unshift(c));
    }
    let sql = `SELECT\n       ${selectList.join(",\n       ")}\n${fromSql}`;
    if (where.length) sql += `\n WHERE ${where.join("\n   AND ")}`;
    if (groupBy.length) {
      sql += `\n GROUP BY\n       ${groupBy.join(",\n       ")}`;
    }
    if (orderBy.length) sql += `\n ORDER BY ${orderBy.join(", ")}`;
    const mode = state.mode || "select";
    const target = (state.targetTable || "work_result").trim();
    if (mode === "ctas") return `CREATE TABLE ${target} AS\n${sql};`;
    if (mode === "drop_ctas") {
      return `DROP TABLE ${target} PURGE;\n\nCREATE TABLE ${target} AS\n${sql};`;
    }
    return sql + ";";
  }
  function suggestWhereJoins(tableIds, aliasOf) {
    const set = new Set(tableIds);
    const conds = [];
    SQL_SCHEMA.joins.forEach((j) => {
      if (set.has(j.left) && set.has(j.right)) {
        conds.push(
          `${colRef(aliasOf[j.left], j.leftCol)} = ${colRef(aliasOf[j.right], j.rightCol)}`
        );
      }
    });
    return conds;
  }
  function suggestJoinsForTables(tableIds) {
    const set = new Set(tableIds);
    const result = [];
    SQL_SCHEMA.joins.forEach((j) => {
      if (set.has(j.left) && set.has(j.right)) {
        result.push({
          leftTable: j.left,
          rightTable: j.right,
          leftCol: j.leftCol,
          rightCol: j.rightCol,
          type: j.type || "INNER",
          note: j.note || "",
        });
      }
    });
    if (tableIds.length >= 2 && !result.length) {
      const a = tableIds[0];
      const b = tableIds[1];
      result.push({
        leftTable: a,
        rightTable: b,
        leftCol: SQL_SCHEMA.getTable(a)?.columns[0]?.name || "",
        rightCol: SQL_SCHEMA.getTable(b)?.columns[0]?.name || "",
        type: "INNER",
        note: "Оберіть поля з’єднання",
      });
    }
    return result;
  }
  return { buildSelect, suggestJoinsForTables, fieldExpr, assignAliases };
})();
