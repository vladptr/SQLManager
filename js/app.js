(function () {
  const state = {
    step: 1,
    tables: [],
    joins: [],
    fields: [],
    filters: [],
    orderBy: [],
    metrics: [],
    mode: "select",
    targetTable: "work_result",
  };
  const MAX_STEP = 6;
  const TEMPLATE_SCRIPTS = [
    {
      id: "t6_2026_edrpou",
      title: "Створити t6_2026_edrpou",
      description:
        "Скрипт для створення таблиці t6_2026_edrpou з пакета T6 за 2026 рік.",
      sql: `drop table t6_2026_edrpou purge;
create table t6_2026_edrpou as
select /*+parallel(pd,8)*/
       lpad(mrd.mrd_reg_code, 2,0) reg,
       slb_im,
       ian_numident edrpou,
       ian_name1,
       pd.aped46_numident kod_zo,
       cs_pfu.dwh_common.getdatefromnumident(aped46_numident) as birth_dt,
       sum(case when pd.aped46_pay_tp in (3,5,7,9,12) then abs(pd.aped46_sum) * -1 else pd.aped46_sum end) sum_narah,
       sum(case when pd.aped46_pay_tp in (3,5,7,9,12) then abs(pd.aped46_sum_pv) * -1 else pd.aped46_sum_pv end) sum_vrah,
       sum(case when pd.aped46_pay_tp in (3,5,7,9,12) then abs(pd.aped46_sum_narah) * -1 else pd.aped46_sum_narah end) sum_narah_vnes,
       nvl(pd.aped46_mnth, plb.slb_charg_mnth) aped46_mnth,
       nvl(pd.aped46_year, plb.slb_charg_year) year,
       aped46_zo kat_zo,
       case
         when aped46_numident is not null
           and aped46_numident not like '00000%'
           and regexp_instr(aped46_numident, '\\D') = 0
         then mod(substr(aped46_numident, length(aped46_numident) - 1, 1), 2)
         else aped46_sex
       end sex
from ikis_websm.sm_packlabel plb
join ikis_websm.sm_ape4_6data pd on plb.slb_id = pd.aped46_slb
join ikis_sys.mrdorg mrd on plb.slb_org_mdzu = mrd.mrd_code
join ikis_ersp.pinsur_main im on plb.slb_im = im.im_id
join ikis_ersp.pinsur_chng_doc chd on im.im_ih = chd.ih_id
join ikis_ersp.pinsur_ankt_a ankt on chd.ih_ian = ankt.ian_id
where plb.slb_fixed = 'Y'
  and plb.slb_actuality = 'Y'
  and plb.slb_st = 'O'
  and pd.aped46_st = 'O'
  and nvl(pd.aped46_year, plb.slb_charg_year) = {{YEAR}}
  and nvl(aped46_mnth, slb_charg_mnth) between {{MONTH_START}} and {{MONTH_END}}
group by lpad(mrd.mrd_reg_code, 2,0),
         slb_im,
         ian_numident,
         pd.aped46_numident,
         aped46_zo,
         nvl(pd.aped46_year, plb.slb_charg_year),
         nvl(pd.aped46_mnth, plb.slb_charg_mnth),
         aped46_sex,
         ian_name1;





`,
      },
  ];
  const $ = (s, r = document) => r.querySelector(s);
  const $$ = (s, r = document) => [...r.querySelectorAll(s)];
  function tLabel(id) {
    return SQL_SCHEMA.getTable(id)?.label || id;
  }
  function cLabel(tableId, col) {
    const t = SQL_SCHEMA.getTable(tableId);
    return t?.columns.find((x) => x.name === col)?.label || col;
  }
  function notify(msg, ok = true) {
    const el = $("#toast");
    el.textContent = msg;
    el.classList.toggle("error", !ok);
    el.classList.add("show");
    clearTimeout(notify._t);
    notify._t = setTimeout(() => el.classList.remove("show"), 2200);
  }
  function syncSteps() {
    $$(".step-pill").forEach((el) => {
      const n = Number(el.dataset.step);
      el.classList.toggle("active", n === state.step);
      el.classList.toggle("done", n < state.step);
    });
    $$(".panel[data-step]").forEach((p) => {
      p.classList.toggle("active", Number(p.dataset.step) === state.step);
    });
    $("#btn-back").disabled = state.step <= 1;
    $("#btn-next").textContent =
      state.step >= MAX_STEP ? "Оновити SQL" : "Далі";
  }
  function renderCatalog() {
    const root = $("#table-catalog");
    root.innerHTML = "";
    const byGroup = {};
    SQL_SCHEMA.tables.forEach((t) => {
      (byGroup[t.group] ||= []).push(t);
    });
    Object.keys(byGroup).forEach((g) => {
      const sec = document.createElement("section");
      sec.className = "catalog-group";
      sec.innerHTML = `<h3>${SQL_SCHEMA.schemas[g] || g}</h3>`;
      const grid = document.createElement("div");
      grid.className = "card-grid";
      byGroup[g].forEach((t) => {
        const card = document.createElement("button");
        card.type = "button";
        card.className =
          "table-card" + (state.tables.includes(t.id) ? " selected" : "");
        card.innerHTML = `
          <span class="t-title">${t.label}</span>
          <span class="t-desc">${t.description || ""}</span>
          <span class="t-tech">${t.fullName}</span>
        `;
        card.addEventListener("click", () => toggleTable(t.id));
        grid.appendChild(card);
      });
      sec.appendChild(grid);
      root.appendChild(sec);
    });
    $("#selected-count").textContent = String(state.tables.length);
  }
  function toggleTable(id) {
    const i = state.tables.indexOf(id);
    if (i >= 0) state.tables.splice(i, 1);
    else state.tables.push(id);
    state.joins = SqlBuilder.suggestJoinsForTables(state.tables);
    state.fields = state.fields.filter((f) => state.tables.includes(f.table));
    state.metrics = state.metrics.filter((id) => {
      const metric = SQL_SCHEMA.metrics.find((m) => m.id === id);
      return metric && metric.tables.every((tableId) => state.tables.includes(tableId));
    });
    state.filters = state.filters.filter((f) => state.tables.includes(f.table));
    state.orderBy = state.orderBy.filter((o) => {
      if (o.fieldIndex != null) return o.fieldIndex < state.fields.length;
      return state.tables.includes(o.table);
    });
    renderCatalog();
    renderSelectedStrip();
    updateSql();
  }
  function renderSelectedStrip() {
    const el = $("#selected-strip");
    if (!state.tables.length) {
      el.innerHTML = `<span class="muted">Натисніть картку нижче, щоб додати джерело</span>`;
      return;
    }
    el.innerHTML = state.tables
      .map(
        (id, idx) =>
          `<span class="chip"><b>${idx + 1}.</b> ${tLabel(id)}
          <button type="button" data-rm="${id}" title="Прибрати">×</button></span>`
      )
      .join("");
    $$("[data-rm]", el).forEach((b) =>
      b.addEventListener("click", (e) => {
        e.stopPropagation();
        toggleTable(b.dataset.rm);
      })
    );
  }
  function renderJoins() {
    const root = $("#joins-list");
    const hint = $("#joins-hint");
    root.innerHTML = "";
    if (!state.tables.length) {
      hint.textContent = "Спочатку оберіть джерела на кроці 1.";
      return;
    }
    if (state.tables.length === 1) {
      hint.textContent =
        "Одне джерело — з’єднувати нічого. Переходьте до «Результат».";
      return;
    }
    hint.textContent = "Зв’язки будуються автоматично як граф. Порядок вибору джерел не впливає на SQL.";
    state.joins.forEach((j, idx) => root.appendChild(joinRow(j, idx)));
  }
  function joinRow(j, idx) {
    const row = document.createElement("div");
    row.className = "join-row";
    const conditions = (j.conditions || []).map((condition) =>
      `<div class="join-line"><code>${cLabel(j.leftTable, condition.leftCol)}</code><span class="join-word">=</span><code>${cLabel(j.rightTable, condition.rightCol)}</code></div>`
    ).join("");
    const variants = (j.variants || []).map((variant) =>
      `<option value="${variant.id}" ${variant.id === j.selectedVariant ? "selected" : ""}>${variant.label}</option>`
    ).join("");
    row.innerHTML = `
      <div class="join-plain">
        <div class="join-line">
          <strong>${tLabel(j.leftTable)}</strong><span class="join-word">→</span><strong>${tLabel(j.rightTable)}</strong>
          <span class="badge">${j.type} · ${j.cardinality || "невідомо"}</span>
        </div>
        ${variants ? `<label class="join-line"><span class="join-word">Спосіб зіставлення:</span><select data-join-variant>${variants}</select></label>` : ""}
        ${conditions}
        ${j.note ? `<div class="join-note">${j.note}</div>` : ""}
      </div>
    `;
    $("[data-join-variant]", row)?.addEventListener("change", (event) => {
      j.selectedVariant = event.target.value;
      const variant = j.variants.find((item) => item.id === j.selectedVariant);
      j.conditions = variant.conditions.map((item) => ({ ...item }));
      j.leftSource = variant.leftSource || j.leftSource;
      j.rightSource = variant.rightSource || j.rightSource;
      renderJoins();
      updateSql();
    });
    return row;
  }
  function colOptions(tableId, selected) {
    return (SQL_SCHEMA.getTable(tableId)?.columns || [])
      .map(
        (c) =>
          `<option value="${c.name}" ${c.name === selected ? "selected" : ""}>${c.label}</option>`
      )
      .join("");
  }
  function renderModeUi() {
    $("#mode-select").value = state.mode;
    const show = state.mode === "ctas" || state.mode === "drop_ctas";
    $("#target-wrap").style.display = show ? "flex" : "none";
  }
  function renderFields() {
    const avail = $("#fields-available");
    const chosen = $("#fields-chosen");
    const emptyHint = $("#fields-empty-hint");
    const countEl = $("#chosen-count");
    if (!avail || !chosen) return;
    renderMetrics();
    avail.innerHTML = "";
    chosen.innerHTML = "";
    if (!state.tables.length) {
      avail.innerHTML = `<p class="hint">Немає джерел — крок 1.</p>`;
      emptyHint.hidden = false;
      if (countEl) countEl.textContent = "0";
      return;
    }
    state.tables.forEach((tid) => {
      const t = SQL_SCHEMA.getTable(tid);
      const box = document.createElement("div");
      box.className = "avail-group";
      box.innerHTML = `<div class="avail-title">${t.label}</div>`;
      const chips = document.createElement("div");
      chips.className = "avail-chips";
      t.columns.forEach((c) => {
        const already = state.fields.some(
          (f) => f.table === tid && f.column === c.name
        );
        const btn = document.createElement("button");
        btn.type = "button";
        btn.className = "avail-chip" + (already ? " used" : "");
        btn.disabled = already;
        btn.innerHTML = already
          ? `<span>${c.label}</span><span class="chip-tag">вже додано</span>`
          : `<span>${c.label}</span><span class="chip-plus">+</span>`;
        btn.title = already ? "Уже у відповіді" : "Додати у відповідь";
        if (!already) {
          btn.addEventListener("click", () => {
            state.fields.push({
              table: tid,
              column: c.name,
              agg: "",
              outAlias: "",
            });
            renderFields();
            renderOrder();
            updateSql();
          });
        }
        chips.appendChild(btn);
      });
      box.appendChild(chips);
      avail.appendChild(box);
    });
    if (countEl) countEl.textContent = String(state.fields.length);
    emptyHint.hidden = state.fields.length > 0;
    state.fields.forEach((f, idx) => {
      const card = document.createElement("div");
      card.className = "chosen-card";
      const isNum = isNumericColumn(f.table, f.column);
      const ops = SQL_SCHEMA.aggregates
        .map((a) => {
          return `<option value="${a.id}" ${
            (f.agg || "") === a.id ? "selected" : ""
          }>${a.label}</option>`;
        })
        .join("");
      card.innerHTML = `
        <div class="chosen-num">${idx + 1}</div>
        <div class="chosen-body">
          <div class="chosen-name">${cLabel(f.table, f.column)}</div>
          <div class="chosen-from">з: ${tLabel(f.table)}</div>
          <label class="chosen-op">
            <span>Що зробити з полем?</span>
            <select data-agg>${ops}</select>
          </label>
          ${
            isNum
              ? ""
              : `<div class="chosen-tip">Текст / дата — зазвичай «без зміни (як у джерелі)»</div>`
          }
        </div>
        <div class="chosen-actions">
          <button type="button" class="btn ghost icon tiny" data-up title="Вище" ${
            idx === 0 ? "disabled" : ""
          }>↑</button>
          <button type="button" class="btn ghost icon tiny" data-down title="Нижче" ${
            idx === state.fields.length - 1 ? "disabled" : ""
          }>↓</button>
          <button type="button" class="btn danger icon tiny" data-rm title="Прибрати">×</button>
        </div>
      `;
      $("[data-agg]", card).addEventListener("change", (e) => {
        f.agg = e.target.value;
        renderOrder();
        updateSql();
      });
      $("[data-rm]", card).addEventListener("click", () => {
        state.fields.splice(idx, 1);
        state.orderBy = state.orderBy
          .map((o) => {
            if (o.fieldIndex == null) return o;
            if (o.fieldIndex === idx) return null;
            if (o.fieldIndex > idx) return { ...o, fieldIndex: o.fieldIndex - 1 };
            return o;
          })
          .filter(Boolean);
        renderFields();
        renderOrder();
        updateSql();
      });
      $("[data-up]", card)?.addEventListener("click", () => {
        if (idx <= 0) return;
        [state.fields[idx - 1], state.fields[idx]] = [
          state.fields[idx],
          state.fields[idx - 1],
        ];
        swapOrderIndexes(idx, idx - 1);
        renderFields();
        renderOrder();
        updateSql();
      });
      $("[data-down]", card)?.addEventListener("click", () => {
        if (idx >= state.fields.length - 1) return;
        [state.fields[idx], state.fields[idx + 1]] = [
          state.fields[idx + 1],
          state.fields[idx],
        ];
        swapOrderIndexes(idx, idx + 1);
        renderFields();
        renderOrder();
        updateSql();
      });
      chosen.appendChild(card);
    });
  }
  function renderMetrics() {
    const root = $("#metrics-list");
    if (!root) return;
    root.innerHTML = "";
    SQL_SCHEMA.metrics
      .filter((metric) => metric.tables.every((tableId) => state.tables.includes(tableId)))
      .forEach((metric) => {
        const button = document.createElement("button");
        button.type = "button";
        button.className = "col-chip" + (state.metrics.includes(metric.id) ? " selected" : "");
        button.textContent = metric.label;
        button.addEventListener("click", () => {
          const index = state.metrics.indexOf(metric.id);
          if (index >= 0) state.metrics.splice(index, 1); else state.metrics.push(metric.id);
          renderMetrics();
          updateSql();
        });
        root.appendChild(button);
      });
  }
  function isNumericColumn(tableId, colName) {
    const t = SQL_SCHEMA.getTable(tableId);
    const c = t?.columns.find((x) => x.name === colName);
    const ty = (c?.type || "").toUpperCase();
    return /NUMBER|INT|FLOAT|DECIMAL/.test(ty);
  }
  function swapOrderIndexes(a, b) {
    state.orderBy.forEach((o) => {
      if (o.fieldIndex === a) o.fieldIndex = b;
      else if (o.fieldIndex === b) o.fieldIndex = a;
    });
  }
  function renderOrder() {
    const root = $("#order-list");
    if (!root) return;
    root.innerHTML = "";
    if (!state.orderBy.length) {
      root.innerHTML = `<p class="hint muted-box">Сортування не задано — можна лишити так.</p>`;
    }
    state.orderBy.forEach((o, idx) => root.appendChild(orderRow(o, idx)));
  }
  function orderRow(o, idx) {
    const row = document.createElement("div");
    row.className = "sort-card";
    let fieldOpts = "";
    if (state.fields.length) {
      fieldOpts = state.fields
        .map((f, i) => {
          const op = f.agg
            ? SQL_SCHEMA.aggregates.find((a) => a.id === f.agg)?.label + " · "
            : "";
          return `<option value="f:${i}" ${
            o.fieldIndex === i ? "selected" : ""
          }>${op}${cLabel(f.table, f.column)}</option>`;
        })
        .join("");
    } else {
      state.tables.forEach((tid) => {
        SQL_SCHEMA.getTable(tid)?.columns.forEach((c) => {
          const val = `c:${tid}.${c.name}`;
          const selected =
            o.fieldIndex == null && o.table === tid && o.column === c.name;
          fieldOpts += `<option value="${val}" ${selected ? "selected" : ""}>${cLabel(
            tid,
            c.name
          )}</option>`;
        });
      });
    }
    const dirOpts = [
      { id: "ASC", label: "від меншого до більшого (А → Я)" },
      { id: "DESC", label: "від більшого до меншого (Я → А)" },
    ]
      .map(
        (d) =>
          `<option value="${d.id}" ${
            (o.dir || "ASC") === d.id ? "selected" : ""
          }>${d.label}</option>`
      )
      .join("");
    row.innerHTML = `
      <label class="sort-field">
        <span>Сортувати за</span>
        <select data-k="target">${fieldOpts || "<option value=''>— додайте колонки —</option>"}</select>
      </label>
      <label class="sort-dir">
        <span>Напрям</span>
        <select data-k="dir">${dirOpts}</select>
      </label>
      <button type="button" class="btn danger icon" data-del title="Прибрати">×</button>
    `;
    $("[data-k=target]", row).addEventListener("change", (e) => {
      const v = e.target.value;
      if (v.startsWith("f:")) {
        o.fieldIndex = Number(v.slice(2));
        delete o.table;
        delete o.column;
        delete o.agg;
      } else if (v.startsWith("c:")) {
        const rest = v.slice(2);
        const dot = rest.indexOf(".");
        o.table = rest.slice(0, dot);
        o.column = rest.slice(dot + 1);
        o.fieldIndex = null;
        const match = state.fields.find(
          (f) => f.table === o.table && f.column === o.column && f.agg
        );
        o.agg = match?.agg || "";
      }
      updateSql();
    });
    $("[data-k=dir]", row).addEventListener("change", (e) => {
      o.dir = e.target.value;
      updateSql();
    });
    $("[data-del]", row).addEventListener("click", () => {
      state.orderBy.splice(idx, 1);
      renderOrder();
      updateSql();
    });
    return row;
  }
  function renderFilters() {
    const root = $("#filters-list");
    root.innerHTML = "";
    if (!state.tables.length) {
      root.innerHTML = `<p class="hint">Спочатку оберіть джерела.</p>`;
      return;
    }
    state.filters.forEach((f, idx) => root.appendChild(filterRow(f, idx)));
    const add = document.createElement("button");
    add.type = "button";
    add.className = "btn ghost";
    add.textContent = "+ Додати умову";
    add.addEventListener("click", () => {
      const tid = state.tables[0];
      state.filters.push({
        table: tid,
        column: SQL_SCHEMA.getTable(tid)?.columns[0]?.name || "",
        op: "=",
        value: "",
      });
      renderFilters();
      updateSql();
    });
    root.appendChild(add);
    renderQuickFilters();
  }
  function renderQuickFilters() {
    const root = $("#quick-filters");
    root.innerHTML = `<span class="muted">Швидко (з обраних полів):</span>`;
    const chips = [];
    state.tables.forEach((tid) => {
      const t = SQL_SCHEMA.getTable(tid);
      (t?.columns || []).forEach((c) => {
        const name = c.label.toLowerCase();
        if (/\b(іпн|рнокпп|єдрпоу|код|номер)\b/i.test(c.label) || /ident|edrpou|kod|code|numident/i.test(c.name)) {
          chips.push({
            label: `${c.label} = …`,
            table: tid,
            column: c.name,
            op: "=",
            value: "",
          });
        } else if (/прізв|ім'|ім’я|назв|текст/i.test(name) || c.type === "VARCHAR2") {
          if (/прізв|ім'|ім’я|назв|імя/i.test(name) || /name|ln_|fn_|sn_/i.test(c.name)) {
            chips.push({
              label: `${c.label} містить…`,
              table: tid,
              column: c.name,
              op: "LIKE_UPPER",
              value: "",
            });
          }
        } else if (/дата|місяць|рік|період/i.test(name) || c.type === "DATE" || /year|mnth|_dt/i.test(c.name)) {
          chips.push({
            label: `${c.label} у діапазоні…`,
            table: tid,
            column: c.name,
            op: "BETWEEN",
            value: "",
          });
        }
      });
    });
    const seen = new Set();
    chips.slice(0, 24).forEach((ch) => {
      const key = `${ch.table}.${ch.column}.${ch.op}`;
      if (seen.has(key)) return;
      seen.add(key);
      if (seen.size > 8) return;
      const b = document.createElement("button");
      b.type = "button";
      b.className = "col-chip";
      b.textContent = ch.label;
      b.addEventListener("click", () => {
        state.filters.push({
          table: ch.table,
          column: ch.column,
          op: ch.op,
          value: ch.value,
        });
        renderFilters();
        updateSql();
      });
      root.appendChild(b);
    });
    if (seen.size === 0) {
      root.innerHTML = "";
    }
  }
  function filterRow(f, idx) {
    const row = document.createElement("div");
    row.className = "filter-row";
    const tables = state.tables
      .map(
        (id) =>
          `<option value="${id}" ${id === f.table ? "selected" : ""}>${tLabel(id)}</option>`
      )
      .join("");
    const ops = SQL_SCHEMA.operators
      .map(
        (o) =>
          `<option value="${o.id}" ${o.id === f.op ? "selected" : ""}>${o.label}</option>`
      )
      .join("");
    const needVal = f.op !== "IS NULL" && f.op !== "IS NOT NULL";
    const ph =
      f.op === "BETWEEN"
        ? "від, до"
        : f.op === "IN"
          ? "a, b, c"
          : f.op === "LIKE" || f.op === "LIKE_UPPER"
            ? "фрагмент"
            : "значення";
    row.innerHTML = `
      <select data-k="table">${tables}</select>
      <select data-k="column">${colOptions(f.table, f.column)}</select>
      <select data-k="op">${ops}</select>
      <input type="text" data-k="value" placeholder="${ph}" value="${
        f.value || ""
      }" ${needVal ? "" : "disabled"} />
      <button type="button" class="btn danger icon" data-del>×</button>
    `;
    $$("select, input", row).forEach((el) => {
      const go = () => {
        f[el.dataset.k] = el.value;
        if (el.dataset.k === "table") {
          f.column = SQL_SCHEMA.getTable(f.table)?.columns[0]?.name || "";
        }
        if (el.dataset.k === "table" || el.dataset.k === "op") renderFilters();
        updateSql();
      };
      el.addEventListener("change", go);
      el.addEventListener("input", go);
    });
    $("[data-del]", row).addEventListener("click", () => {
      state.filters.splice(idx, 1);
      renderFilters();
      updateSql();
    });
    return row;
  }
  function updateSql() {
    const result = SqlBuilder.build(state);
    $("#sql-out").value = result.sql || result.errors.map((error) => `-- ПОМИЛКА: ${error}`).join("\n");
    const status = $("#sql-status");
    status.className = "sql-status" + (result.errors.length ? " error" : result.warnings.length ? " warning" : "");
    status.innerHTML = result.errors.length
      ? result.errors.map((error) => `<p><strong>Помилка:</strong> ${error}</p>`).join("")
      : result.warnings.map((warning) => `<p><strong>Увага:</strong> ${warning}</p>`).join("");
    $("#sql-explain").innerHTML = buildExplain();
  }
  function buildExplain() {
    if (!state.tables.length) return "<p>Поки нічого не зібрано.</p>";
    const lines = [];
    lines.push(
      `<li><b>Джерела:</b> ${state.tables.map(tLabel).join("; ")}</li>`
    );
    if (state.joins.length) {
      lines.push(
        `<li><b>З’єднання:</b> ${state.joins
          .map(
            (j) =>
              `${tLabel(j.leftTable)} [${cLabel(j.leftTable, j.leftCol)}] = ${tLabel(
                j.rightTable
              )} [${cLabel(j.rightTable, j.rightCol)}]`
          )
          .join("; ")}</li>`
      );
    }
    if (state.fields.length) {
      lines.push(
        `<li><b>У результаті:</b> ${state.fields
          .map((f) => {
            const a = f.agg
              ? SQL_SCHEMA.aggregates.find((x) => x.id === f.agg)?.label + " — "
              : "";
            return a + cLabel(f.table, f.column);
          })
          .join("; ")}</li>`
      );
    } else {
      lines.push(`<li><b>У результаті:</b> усі поля</li>`);
    }
    if (state.metrics.length) {
      lines.push(`<li><b>Показники:</b> ${state.metrics.map((id) => SQL_SCHEMA.metrics.find((metric) => metric.id === id)?.label || id).join("; ")}</li>`);
    }
    if (state.orderBy.length) {
      lines.push(`<li><b>Сортування:</b> ${state.orderBy.length} правил(а)</li>`);
    }
    if (state.filters.length) {
      lines.push(
        `<li><b>Фільтри:</b> ${state.filters
          .map((f) => {
            const op =
              SQL_SCHEMA.operators.find((o) => o.id === f.op)?.label || f.op;
            return `${cLabel(f.table, f.column)} ${op} ${f.value || "…"}`;
          })
          .join("; ")}</li>`
      );
    }
    const modeLabel =
      SQL_SCHEMA.outputModes.find((m) => m.id === state.mode)?.label ||
      state.mode;
    lines.push(`<li><b>Дія:</b> ${modeLabel}</li>`);
    return `<ul>${lines.join("")}</ul>`;
  }
  function go(delta) {
    if (delta > 0) {
      if (state.step === 1 && !state.tables.length) {
        notify("Оберіть хоча б одне джерело", false);
        return;
      }
      if (state.step >= MAX_STEP) {
        updateSql();
        notify("SQL оновлено");
        return;
      }
      state.step = Math.min(MAX_STEP, state.step + 1);
    } else {
      state.step = Math.max(1, state.step - 1);
    }
    onStepEnter();
    syncSteps();
  }
  function onStepEnter() {
    if (state.step === 2) {
      renderJoins();
      renderModeUi();
    }
    if (state.step === 3) {
      renderFields();
      renderOrder();
    }
    if (state.step === 4) renderFilters();
    if (state.step === 5) updateSql();
    if (state.step === 6) renderTemplates();
  }
  function goToStep(n) {
    if (n > 1 && n < MAX_STEP && !state.tables.length) {
      notify("Спочатку оберіть джерела", false);
      return;
    }
    state.step = n;
    onStepEnter();
    syncSteps();
  }
  function resetAll() {
    Object.assign(state, {
      step: 1,
      tables: [],
      joins: [],
      fields: [],
      filters: [],
      orderBy: [],
      metrics: [],
      mode: "select",
      targetTable: "work_result",
    });
    renderCatalog();
    renderSelectedStrip();
    renderModeUi();
    syncSteps();
    updateSql();
    notify("Очищено");
  }
  function renderTemplates() {
    const root = $("#templates-list");
    root.innerHTML = TEMPLATE_SCRIPTS.map(
      (tpl, idx) => `
        <article class="preset-card">
          <strong>${tpl.title}</strong>
          <span>${tpl.description}</span>
          <div class="preset-actions">
            <button type="button" class="btn" data-load="${idx}">Вставити</button>
            <button type="button" class="btn ghost" data-copy="${idx}">Копіювати</button>
          </div>
        </article>`
    ).join("");
    root.querySelectorAll("[data-load]").forEach((btn) => {
      btn.addEventListener("click", () => loadTemplate(Number(btn.dataset.load)));
    });
    root.querySelectorAll("[data-copy]").forEach((btn) => {
      btn.addEventListener("click", () => copyTemplate(Number(btn.dataset.copy)));
    });
  }
  function loadTemplate(index) {
    const tpl = TEMPLATE_SCRIPTS[index];
    if (!tpl) return;
    const sql = applyTemplateSettings(tpl.sql);
    $("#sql-out").value = sql;
    $("#sql-explain").innerHTML = `<p>Завантажено шаблон: <strong>${tpl.title}</strong>.</p>`;
    notify("Шаблон завантажено");
  }
  async function copyTemplate(index) {
    const tpl = TEMPLATE_SCRIPTS[index];
    if (!tpl) return;
    const sql = applyTemplateSettings(tpl.sql);
    try {
      await navigator.clipboard.writeText(sql);
      notify("Шаблон скопійовано");
    } catch {
      const area = document.createElement("textarea");
      area.value = sql;
      document.body.appendChild(area);
      area.select();
      document.execCommand("copy");
      document.body.removeChild(area);
      notify("Шаблон скопійовано");
    }
  }

  function getTemplateSettings() {
    return {
      year: Number($("#tpl-year").value) || 2026,
      monthStart: Number($("#tpl-month-start").value) || 1,
      monthEnd: Number($("#tpl-month-end").value) || 6,
    };
  }

  function applyTemplateSettings(sql) {
    const settings = getTemplateSettings();
    const year = String(settings.year);
    const monthStart = String(settings.monthStart).padStart(2, "0");
    const monthEnd = String(settings.monthEnd).padStart(2, "0");
    return sql
      .replace(/\{\{YEAR\}\}/g, year)
      .replace(/\{\{MONTH_START\}\}/g, monthStart)
      .replace(/\{\{MONTH_END\}\}/g, monthEnd);
  }

  function bind() {
    $("#btn-next").addEventListener("click", () => go(1));
    $("#btn-back").addEventListener("click", () => go(-1));
    $$(".step-pill").forEach((el) =>
      el.addEventListener("click", () => goToStep(Number(el.dataset.step)))
    );
    $("#mode-select").innerHTML = SQL_SCHEMA.outputModes
      .map((m) => `<option value="${m.id}">${m.label}</option>`)
      .join("");
    $("#mode-select").addEventListener("change", (e) => {
      state.mode = e.target.value;
      renderModeUi();
      updateSql();
    });
    $("#target-table").addEventListener("input", (e) => {
      state.targetTable = e.target.value.trim() || "work_result";
      updateSql();
    });
    $("#btn-add-order").addEventListener("click", () => {
      if (state.fields.length) {
        state.orderBy.push({ fieldIndex: 0, dir: "DESC" });
      } else if (state.tables.length) {
        notify("Спочатку додайте колонки у відповідь (кнопки зліва)", false);
        return;
      } else {
        notify("Спочатку оберіть джерела", false);
        return;
      }
      renderOrder();
      updateSql();
    });
    $("#btn-copy").addEventListener("click", async () => {
      try {
        await navigator.clipboard.writeText($("#sql-out").value);
        notify("Скопійовано");
      } catch {
        $("#sql-out").select();
        document.execCommand("copy");
        notify("Скопійовано");
      }
    });
    $("#btn-download").addEventListener("click", () => {
      const blob = new Blob([$("#sql-out").value], {
        type: "text/plain;charset=utf-8",
      });
      const a = document.createElement("a");
      a.href = URL.createObjectURL(blob);
      a.download = "query.sql";
      a.click();
      URL.revokeObjectURL(a.href);
      notify("Збережено");
    });
    $("#btn-reset").addEventListener("click", resetAll);
    $("#search-tables").addEventListener("input", (e) => {
      const q = e.target.value.trim().toLowerCase();
      $$(".table-card").forEach((card) => {
        card.style.display =
          !q || card.textContent.toLowerCase().includes(q) ? "" : "none";
      });
      $$(".catalog-group").forEach((sec) => {
        const any = [...sec.querySelectorAll(".table-card")].some(
          (c) => c.style.display !== "none"
        );
        sec.style.display = any ? "" : "none";
      });
    });
  }
  function init() {
    bind();
    renderCatalog();
    renderSelectedStrip();
    renderModeUi();
    syncSteps();
    updateSql();
  }
  document.addEventListener("DOMContentLoaded", init);
})();
