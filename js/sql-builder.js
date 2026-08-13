window.SqlBuilder = (function () {
  const VALUE_OPS = new Set(["=", "!=", ">", ">=", "<", "<=", "LIKE", "LIKE_UPPER", "IN", "NOT IN", "BETWEEN"]);
  const IDENTIFIER = /^[A-Za-z][A-Za-z0-9_$#]*(\.[A-Za-z][A-Za-z0-9_$#]*)?$/;

  function table(id) { return SQL_SCHEMA.getTable(id); }
  function column(tableId, name) { const item = table(tableId); return item && item.columns.find((columnItem) => columnItem.name === name); }
  function col(alias, name) { return `${alias}.${name}`; }
  function escapeLiteral(value) { return `'${String(value).replace(/'/g, "''")}'`; }
  function unique(values) { return [...new Set(values)]; }
  function replaceAliases(expression, aliases) {
    return expression.replace(/\{([^}]+)\}/g, (_, id) => aliases[id] || `{${id}}`);
  }
  function columnExpression(tableId, name, aliases) {
    const info = column(tableId, name);
    if (info && info.semanticExpression && (info.requires || []).every((id) => aliases[id])) {
      return replaceAliases(info.semanticExpression, aliases);
    }
    return col(aliases[tableId], name);
  }

  function assignAliases(tableIds) {
    const aliases = {};
    const used = new Set();
    [...tableIds].sort().forEach((id) => {
      const source = table(id);
      if (!source) return;
      let alias = source.defaultAlias;
      let suffix = 2;
      while (used.has(alias.toUpperCase())) alias = `${source.defaultAlias}${suffix++}`;
      aliases[id] = alias;
      used.add(alias.toUpperCase());
    });
    return aliases;
  }

  function normalizedEdges(state, catalog = SQL_SCHEMA.joins) {
    const overrides = new Map((state.joins || []).filter((edge) => edge.id).map((edge) => [edge.id, edge]));
    return catalog.map((catalogEdge) => {
        const edge = { ...catalogEdge, ...(overrides.get(catalogEdge.id) || {}) };
        const latestVariant = state.latestPersonOnly && !edge.selectedVariant
          ? (edge.variants || []).find((item) => item.isLatest)
          : null;
        const variant = (edge.variants || []).find((item) => item.id === edge.selectedVariant) || latestVariant || (edge.variants || [])[0];
        return {
        id: edge.id,
        left: edge.left || edge.leftTable,
        right: edge.right || edge.rightTable,
        conditions: (variant && variant.conditions) || edge.conditions || (edge.leftCol && edge.rightCol ? [{ leftCol: edge.leftCol, rightCol: edge.rightCol }] : []),
        type: edge.type || "INNER",
        cardinality: edge.cardinality || "N:M",
        preferredRoot: edge.preferredRoot,
        leftSource: (variant && variant.leftSource) || edge.leftSource,
        rightSource: (variant && variant.rightSource) || edge.rightSource,
        note: edge.note || "",
        warning: edge.warning || "",
        endpointsOnly: edge.endpointsOnly === true,
        isDefault: edge.isDefault !== false,
        weight: Number(edge.weight) || (edge.isDefault === false ? 20 : 5),
        variants: edge.variants || [],
        selectedVariant: (variant && variant.id) || "",
        };
      });
  }

  function chooseRoot(selected, edges) {
    const preferred = edges.map((edge) => edge.preferredRoot).filter((id) => selected.includes(id)).sort();
    if (preferred.length) return preferred[0];
    return [...selected].sort((a, b) => (((table(a) || {}).fullName || a).localeCompare((table(b) || {}).fullName || b)))[0];
  }

  function shortestPath(startSet, target, edges) {
    const queue = [...startSet].map((node) => ({ node, cost: 0, path: [], signature: "" }));
    const best = new Map();
    const solutions = [];
    while (queue.length) {
      queue.sort((a, b) => a.cost - b.cost || a.signature.localeCompare(b.signature));
      const current = queue.shift();
      if (current.cost > (best.has(current.node) ? best.get(current.node) : Infinity)) continue;
      best.set(current.node, current.cost);
      if (current.node === target) { solutions.push(current); continue; }
      edges.filter((edge) => edge.isDefault && (edge.left === current.node || edge.right === current.node)).forEach((edge) => {
        const next = edge.left === current.node ? edge.right : edge.left;
        if (current.path.some((item) => item.edge.id === edge.id)) return;
        const cost = current.cost + edge.weight;
        if (cost > (best.has(next) ? best.get(next) : Infinity)) return;
        const step = { edge, from: current.node, to: next };
        queue.push({ node: next, cost, path: [...current.path, step], signature: `${current.signature}|${edge.id}` });
      });
    }
    if (!solutions.length) return { path: null, ambiguous: false };
    solutions.sort((a, b) => a.cost - b.cost || a.signature.localeCompare(b.signature));
    const minimum = solutions[0].cost;
    const tied = unique(solutions.filter((item) => item.cost === minimum).map((item) => item.signature));
    return { path: solutions[0].path, ambiguous: tied.length > 1 };
  }

  function resolveJoinGraph(selectedTableIds, joinCatalog, overrides) {
    const userTables = unique(selectedTableIds.filter((id) => table(id))).sort();
    const state = { joins: overrides || [] };
    const catalogEdges = joinCatalog
      ? (joinCatalog.every((edge) => typeof edge.weight === "number" && typeof edge.isDefault === "boolean")
        ? joinCatalog
        : normalizedEdges(state, joinCatalog))
      : normalizedEdges(state);
    const errors = [];
    const warnings = [];
    if (!userTables.length) return { root: null, userTables, bridgeTables: [], allTables: [], edges: [], errors: ["Оберіть хоча б одне джерело."], warnings };
    const edges = catalogEdges.filter((edge) => !edge.endpointsOnly || (userTables.includes(edge.left) && userTables.includes(edge.right)));
    const root = chooseRoot(userTables, edges);
    const connected = new Set([root]);
    const resolved = new Map();
    userTables.filter((id) => id !== root).sort().forEach((target) => {
      if (connected.has(target)) return;
      const found = shortestPath(connected, target, edges);
      if (!found.path) { errors.push(`Неможливо знайти шлях до джерела «${(table(target) || {}).label || target}».`); return; }
      if (found.ambiguous) { errors.push(`Для джерела «${(table(target) || {}).label || target}» існує кілька рівноцінних маршрутів. Виберіть семантичний маршрут.`); return; }
      found.path.forEach((step) => { resolved.set(step.edge.id, step.edge); connected.add(step.from); connected.add(step.to); });
    });
    const allTables = [...connected].sort();
    const bridgeTables = allTables.filter((id) => !userTables.includes(id));
    return { root, userTables, bridgeTables, allTables, edges: [...resolved.values()], errors, warnings };
  }

  function buildJoinPlan(state, selected) {
    const errors = [];
    const warnings = [];
    const ctes = [];
    const graph = resolveJoinGraph(selected, normalizedEdges(state), state.joins);
    if (graph.errors.length) return { ...graph, errors: graph.errors, warnings, ctes, joins: [], aliases: assignAliases(graph.allTables) };
    const aliases = assignAliases(graph.allTables);
    const edges = graph.edges;
    const root = graph.root;
    const visited = new Set([root]);
    const joins = [];
    while (visited.size < graph.allTables.length) {
      const candidates = edges
        .filter((edge) => visited.has(edge.left) !== visited.has(edge.right))
        .sort((a, b) => {
          const aNext = visited.has(a.left) ? a.right : a.left;
          const bNext = visited.has(b.left) ? b.right : b.left;
          return aNext.localeCompare(bNext) || `${a.left}:${a.right}`.localeCompare(`${b.left}:${b.right}`);
        });
      const edge = candidates[0];
      if (!edge) {
        const missing = graph.allTables.filter((id) => !visited.has(id)).map((id) => (table(id) || {}).label || id);
        errors.push(`Неможливо зв’язати всі вибрані джерела. Без шляху залишилися: ${missing.join(", ")}. Додайте зв’язок у розширеному режимі або приберіть ці таблиці.`);
        return { errors, warnings, ctes, root, joins: [] };
      }
      const forward = visited.has(edge.left);
      const parent = forward ? edge.left : edge.right;
      const child = forward ? edge.right : edge.left;
      if (!edge.conditions.length) {
        errors.push(`Для зв’язку ${edge.left} ↔ ${edge.right} не задано жодної умови.`);
        return { errors, warnings, ctes, root, joins: [] };
      }
      const sourceKey = forward ? edge.rightSource : edge.leftSource;
      const source = sourceKey && SQL_SCHEMA.sources ? SQL_SCHEMA.sources[sourceKey] : null;
      if (source && source.cte && !ctes.includes(source.cte)) ctes.push(source.cte);
      const joinType = forward ? edge.type : ({ LEFT: "RIGHT", RIGHT: "LEFT" }[edge.type] || edge.type);
      const conditions = edge.conditions.map((condition) => forward
        ? `${col(aliases[parent], condition.leftCol)} = ${col(aliases[child], condition.rightCol)}`
        : `${col(aliases[parent], condition.rightCol)} = ${col(aliases[child], condition.leftCol)}`);
      joins.push({ table: child, sourceName: (source && source.from) || table(child).fullName, alias: aliases[child], type: joinType, conditions, edge, forward });
      const orientedCardinality = forward || edge.cardinality === "N:M"
        ? edge.cardinality
        : edge.cardinality.split("").reverse().join("");
      if (orientedCardinality.endsWith(":N") || orientedCardinality === "N:M") {
        warnings.push(`Зв’язок ${(table(parent) || {}).label} → ${(table(child) || {}).label} має кардинальність ${orientedCardinality} і може розмножити рядки.`);
      }
      if (edge.warning) warnings.push(edge.warning);
      visited.add(child);
    }
    for (const join of joins) {
      const edge = join.edge;
      const rootSourceKey = edge.left === root ? edge.leftSource : edge.right === root ? edge.rightSource : null;
      const rootSource = rootSourceKey && SQL_SCHEMA.sources ? SQL_SCHEMA.sources[rootSourceKey] : null;
      if (rootSource && rootSource.cte && !ctes.includes(rootSource.cte)) ctes.push(rootSource.cte);
    }
    const hasManyChain = joins.filter((join) => /:N$/.test(join.edge.cardinality)).length >= 2;
    if (hasManyChain) warnings.push("У страхувальника може бути декілька документів змін та декілька записів КВЕД. Суми T6 можуть розмножитися.");
    return { ...graph, errors, warnings: unique(warnings), ctes, root, joins, aliases };
  }

  function sourceForRoot(root, joins) {
    for (const join of joins) {
      const edge = join.edge;
      if (edge.left === root && edge.leftSource) return SQL_SCHEMA.sources && SQL_SCHEMA.sources[edge.leftSource] && SQL_SCHEMA.sources[edge.leftSource].from;
      if (edge.right === root && edge.rightSource) return SQL_SCHEMA.sources && SQL_SCHEMA.sources[edge.rightSource] && SQL_SCHEMA.sources[edge.rightSource].from;
    }
    return null;
  }

  function parseScalar(value, type, errors, label) {
    const raw = String(value == null ? "" : value).trim();
    if (!raw) { errors.push(`${label}: введіть значення.`); return null; }
    if (type === "NUMBER") {
      if (!/^-?(?:\d+|\d*\.\d+)$/.test(raw)) { errors.push(`${label}: очікується число з крапкою як десятковим роздільником.`); return null; }
      return raw;
    }
    if (type === "DATE") {
      if (!/^\d{4}-\d{2}-\d{2}$/.test(raw)) { errors.push(`${label}: дата має бути у форматі РРРР-ММ-ДД.`); return null; }
      const [year, month, day] = raw.split("-").map(Number);
      const date = new Date(Date.UTC(year, month - 1, day));
      if (date.getUTCFullYear() !== year || date.getUTCMonth() !== month - 1 || date.getUTCDate() !== day) {
        errors.push(`${label}: такої календарної дати не існує.`); return null;
      }
      return `DATE '${raw}'`;
    }
    return escapeLiteral(raw);
  }

  function buildFilters(state, aliases, errors) {
    const result = [];
    (state.filters || []).forEach((filter, index) => {
      if (!filter.table || !filter.column || !filter.op) return;
      const alias = aliases[filter.table];
      if (!alias) return;
      const info = column(filter.table, filter.column);
      const label = `Фільтр ${index + 1} (${(info && info.label) || filter.column})`;
      const left = columnExpression(filter.table, filter.column, aliases);
      if (filter.op === "IS NULL" || filter.op === "IS NOT NULL") { result.push(`${left} ${filter.op}`); return; }
      if (!VALUE_OPS.has(filter.op)) { errors.push(`${label}: невідомий оператор.`); return; }
      const raw = String(filter.value == null ? "" : filter.value).trim();
      if (!raw) { errors.push(`${label}: порожнє значення не допускається; використайте «порожнє / відсутнє».`); return; }
      if (filter.op === "BETWEEN") {
        const parts = raw.split(",").map((item) => item.trim());
        if (parts.length !== 2 || parts.some((item) => !item)) { errors.push(`${label}: для діапазону введіть рівно два значення через кому.`); return; }
        const from = parseScalar(parts[0], info && info.type, errors, `${label}, початок`);
        const to = parseScalar(parts[1], info && info.type, errors, `${label}, кінець`);
        if (from && to) result.push(`${left} BETWEEN ${from} AND ${to}`);
        return;
      }
      if (filter.op === "IN" || filter.op === "NOT IN") {
        const parts = raw.split(",").map((item) => item.trim());
        if (!parts.length || parts.some((item) => !item)) { errors.push(`${label}: список містить порожнє значення.`); return; }
        const values = parts.map((item) => parseScalar(item, info && info.type, errors, label));
        if (values.every(Boolean)) result.push(`${left} ${filter.op} (${values.join(", ")})`);
        return;
      }
      if (filter.op === "LIKE" || filter.op === "LIKE_UPPER") {
        if (info && (info.type === "NUMBER" || info.type === "DATE")) { errors.push(`${label}: пошук тексту не можна застосувати до типу ${info.type}.`); return; }
        const pattern = raw.includes("%") || raw.includes("_") ? raw : `%${raw}%`;
        result.push(filter.op === "LIKE_UPPER" ? `UPPER(${left}) LIKE UPPER(${escapeLiteral(pattern)})` : `${left} LIKE ${escapeLiteral(pattern)}`);
        return;
      }
      const value = parseScalar(raw, info && info.type, errors, label);
      if (value) result.push(`${left} ${filter.op} ${value}`);
    });
    return result;
  }

  function fieldExpression(item, aliases, withAlias, ctas) {
    const base = columnExpression(item.table, item.column, aliases);
    let expression = item.agg === "COUNT_DISTINCT" ? `COUNT(DISTINCT ${base})` : item.agg ? `${item.agg}(${base})` : base;
    if (!withAlias) return expression;
    const info = column(item.table, item.column);
    const alias = item.outAlias || item.alias || (ctas ? item.column : (info && info.label) || item.column);
    return `${expression} AS "${String(alias).replace(/"/g, '""')}"`;
  }

  function metricExpression(id, aliases) {
    const metric = (SQL_SCHEMA.metrics || []).find((item) => item.id === id);
    if (!metric || metric.tables.some((tableId) => !aliases[tableId])) return null;
    return { metric, expression: replaceAliases(metric.expression, aliases) };
  }

  function validateCtas(state, selected, fields, metrics, errors) {
    if (!["ctas", "drop_ctas"].includes(state.mode)) return;
    const target = String(state.targetTable || "").trim();
    if (!IDENTIFIER.test(target)) errors.push("Назва CTAS-таблиці має бути коректним Oracle identifier: TABLE або SCHEMA.TABLE.");
    if (!fields.length && !metrics.length && selected.length > 1) errors.push("SELECT * заборонено для CTAS із кількома джерелами. Оберіть колонки й задайте технічні аліаси.");
    const aliases = fields.map((item) => item.outAlias || item.alias || item.column).concat(metrics.map((item) => item.metric.alias));
    aliases.forEach((alias) => { if (!IDENTIFIER.test(alias)) errors.push(`Некоректний технічний аліас CTAS: ${alias}.`); });
    const folded = aliases.map((alias) => alias.toUpperCase());
    if (new Set(folded).size !== folded.length) errors.push("Технічні аліаси CTAS мають бути унікальними без урахування регістру.");
  }

  function build(state) {
    const selected = unique((state.tables || []).filter((id) => table(id))).sort();
    const plan = buildJoinPlan(state, selected);
    const aliases = plan.aliases;
    const errors = [...plan.errors];
    const warnings = [...plan.warnings];
    if (errors.length) return { sql: "", errors, warnings, aliases, graph: plan };
    const fields = state.fields || [];
    const metrics = (state.metrics || []).map((id) => metricExpression(id, aliases)).filter(Boolean);
    validateCtas(state, selected, fields, metrics, errors);
    const where = buildFilters(state, aliases, errors);
    (SQL_SCHEMA.systemFilters || []).forEach((rule) => {
      if (rule.tables.every((id) => plan.allTables.includes(id))) rule.expressions.forEach((expression) => where.push(replaceAliases(expression, aliases)));
    });
    (state.presets || []).forEach((presetId) => {
      const preset = (SQL_SCHEMA.semanticPresets || []).find((item) => item.id === presetId);
      if (!preset) return;
      if (!preset.tables.every((id) => plan.allTables.includes(id))) errors.push(`Preset «${preset.label}» потребує джерел: ${preset.tables.join(", ")}.`);
      else preset.filters.forEach((expression) => where.push(replaceAliases(expression, aliases)));
    });
    if (errors.length) return { sql: "", errors: unique(errors), warnings, aliases };

    const ctas = ["ctas", "drop_ctas"].includes(state.mode);
    const selectItems = fields.map((item) => fieldExpression(item, aliases, true, ctas));
    metrics.forEach(({ metric, expression }) => selectItems.push(`${expression} AS "${metric.alias}"`));
    if (!selectItems.length) selected.forEach((id) => selectItems.push(`${aliases[id]}.*`));
    const rootSource = sourceForRoot(plan.root, plan.joins) || table(plan.root).fullName;
    let from = `FROM ${rootSource} ${aliases[plan.root]}`;
    plan.joins.forEach((join) => { from += `\n  ${join.type} JOIN ${join.sourceName} ${join.alias}\n    ON ${join.conditions.join("\n   AND ")}`; });
    const groupBy = fields.filter((item) => !item.agg).map((item) => fieldExpression(item, aliases, false, ctas));
    const hasAggregate = metrics.length || fields.some((item) => item.agg);
    const selectKeyword = state.parallel8 ? "SELECT /*+ PARALLEL(8) */" : "SELECT";
    let sql = `${selectKeyword}\n       ${selectItems.join(",\n       ")}\n${from}`;
    if (where.length) sql += `\n WHERE ${unique(where).join("\n   AND ")}`;
    if (hasAggregate && groupBy.length) sql += `\n GROUP BY\n       ${unique(groupBy).join(",\n       ")}`;
    const order = (state.orderBy || []).map((item) => {
      if (item.fieldIndex != null && fields[item.fieldIndex]) return `${fieldExpression(fields[item.fieldIndex], aliases, false, ctas)} ${item.dir || "ASC"}`;
      if (item.table && item.column && aliases[item.table]) return `${col(aliases[item.table], item.column)} ${item.dir || "ASC"}`;
      return null;
    }).filter(Boolean);
    if (order.length) sql += `\n ORDER BY ${order.join(", ")}`;
    sql += ";";
    if (plan.ctes.length) sql = `WITH\n${plan.ctes.map((cte) => `  ${cte.replace(/\n/g, "\n  ")}`).join(",\n")}\n${sql}`;
    if (state.mode === "ctas") sql = `CREATE TABLE ${state.targetTable.trim()} AS\n${sql}`;
    if (state.mode === "drop_ctas") {
      warnings.push(`Увага: DROP TABLE ${state.targetTable.trim()} PURGE безповоротно видалить поточну таблицю перед створенням нової.`);
      sql = `DROP TABLE ${state.targetTable.trim()} PURGE;\n\nCREATE TABLE ${state.targetTable.trim()} AS\n${sql}`;
    }
    return { sql, errors: [], warnings: unique(warnings), aliases, graph: plan };
  }

  function buildSelect(state) {
    const result = build(state);
    if (result.errors.length) return result.errors.map((error) => `-- ПОМИЛКА: ${error}`).join("\n");
    return result.sql;
  }

  function suggestJoinsForTables(tableIds) {
    const selected = new Set(tableIds);
    return SQL_SCHEMA.joins.filter((edge) => selected.has(edge.left) && selected.has(edge.right)).map((edge) => ({
      id: edge.id,
      leftTable: edge.left, rightTable: edge.right, conditions: edge.conditions.map((item) => ({ ...item })),
      type: edge.type, cardinality: edge.cardinality, preferredRoot: edge.preferredRoot,
      leftSource: edge.leftSource, rightSource: edge.rightSource, note: edge.note || "",
      variants: (edge.variants || []).map((variant) => ({ ...variant, conditions: variant.conditions.map((item) => ({ ...item })) })),
      selectedVariant: edge.variants && edge.variants[0] ? edge.variants[0].id : "",
    }));
  }

  return { build, buildSelect, suggestJoinsForTables, assignAliases, resolveJoinGraph };
})();
