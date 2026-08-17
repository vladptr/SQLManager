(function () {
  const state = {
    step: 1,
    tables: [],
    joins: [],
    fields: [],
    filters: [],
    orderBy: [],
    metrics: [],
    presets: [],
    semanticMode: "current",
    allHistoryConfirmed: false,
    qualityProfiles: [],
    taskId: null,
    taskParameters: null,
    t6Years: [2026],
    t6MonthFrom: 1,
    t6MonthTo: 12,
    t6Region: "",
    latestPersonOnly: false,
    parallel8: false,
    salaryGrain: "person_month",
    salaryPopulationRule: "reported",
    mode: "select",
    targetTable: "work_result",
    catalogMode: "core",
    catalogQuery: "",
    catalogLimit: 30,
    expandedCategories: new Set(),
  };
  let catalogRenderCount = 0;
  const MAX_STEP = 6;
  const READY_REPORTS = [
    { id: "salary_kved_region", label: "Середня зарплата за регіоном і КВЕД", tables: ["t6_2026_edrpou", "nsi_kved"], metrics: ["avg_monthly_salary_period"], fields: [{ table: "t6_2026_edrpou", column: "reg", agg: "" }, { table: "nsi_kved", column: "kvd_code", agg: "" }], grain: "person_employer_month" },
    { id: "people_kved_month", label: "Кількість осіб за місяцями та КВЕД", tables: ["t6_2026_edrpou", "nsi_kved"], metrics: ["people_count"], fields: [{ table: "t6_2026_edrpou", column: "aped46_mnth", agg: "" }, { table: "nsi_kved", column: "kvd_code", agg: "" }], grain: "person_employer_month" },
    { id: "payroll_esv", label: "Фонд зарплати й внески ЄСВ", tables: ["t6_2026_edrpou"], metrics: ["payroll", "contributions"], fields: [], grain: "person_month" },
    { id: "current_insurer", label: "Поточний профіль страхувальника", tables: ["pinsur_main", "pinsur_ankt_a"], metrics: [], fields: [], grain: "person_employer_month" },
    { id: "position_as_of_month", label: "Посада особи на місяць звіту", tables: ["t6_2026_edrpou", "sm_ape4_5data"], metrics: [], fields: [], grain: "person_employer_month", route: "position_as_of_t6_month" }
  ];
  const TEMPLATE_SCRIPTS = [
    {
      id: "t6_2026_edrpou",
      title: "t6_edrpou",
      description:
        "Скрипт для створення зведення з пакетів T6 за вибраний період.",
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
  and nvl(pd.aped46_year, plb.slb_charg_year) between {{YEAR_START}} and {{YEAR_END}}
  and nvl(aped46_mnth, slb_charg_mnth) between {{MONTH_START}} and {{MONTH_END}}
  {{APED46_OTK_CONDITION}}
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
    {
      id: "t1_2024",
      title: "t1",
      description:
        "КВЕД і ознака бюджетної організації зі звітності APE 4-1 за вибраний період.",
      sql: `DROP TABLE t1_2024;

CREATE TABLE t1_2024 AS
SELECT /*+ PARALLEL(plb, 8) */
       plb.slb_im,
       plb.slb_charg_mnth,
       plb.slb_charg_year,
       SUBSTR(app4.ape1_eco_act, 1, 5) AS kved,
       MAX(app4.ape1_budg_org) AS ape1_budg_org
FROM ikis_websm.sm_packlabel plb
JOIN ikis_websm.sm_ape4_1 app4
  ON app4.ape1_slb = plb.slb_id
WHERE plb.slb_charg_year BETWEEN {{YEAR_START}} AND {{YEAR_END}}
  AND plb.slb_charg_mnth BETWEEN {{MONTH_START}} AND {{MONTH_END}}
  AND plb.slb_system = 1
  AND plb.slb_actuality = 'Y'
  AND plb.slb_fixed = 'Y'
  AND plb.slb_st = 'O'
  AND app4.ape1_st = 'O'
GROUP BY plb.slb_im,
         plb.slb_charg_mnth,
         plb.slb_charg_year,
         SUBSTR(app4.ape1_eco_act, 1, 5);

SELECT *
FROM t1_2024;
`,
    },
    {
      id: "t2_2022",
      title: "t2",
      description:
        "Зведення категорій ЗО, утримань і внесків із SK_APEQ_DODATOK2_DATA за вибраний період.",
      sql: `CREATE TABLE t2_2022 AS
SELECT /*+ PARALLEL(t, 8) */
       TO_CHAR(LPAD(spl.spl_ru, 2, 0)) AS reg,
       t.apqd2_zo AS cat_zo,
       t.apqd2_numident AS numid,
       t.apqd2_mnth AS mnth,
       SUM(t.apqd2_sum_pv) AS sum_vrah,
       SUM(t.apqd2_sum_v) AS sum_vnes,
       spl.spl_im
FROM ikis_websm.sk_apeq_dodatok2_data t
JOIN ikis_websm.sk_packlabel spl
  ON spl.spl_id = t.apqd2_spl
JOIN ikis_websm.sk_packlabel_extended sple
  ON sple.sple_id = spl.spl_id
WHERE t.apqd2_year BETWEEN {{YEAR_START}} AND {{YEAR_END}}
  AND t.apqd2_mnth BETWEEN {{MONTH_START}} AND {{MONTH_END}}
  AND t.apqd2_st = 'O'
  AND spl.spl_actuality = 'Y'
GROUP BY TO_CHAR(LPAD(spl.spl_ru, 2, 0)),
         t.apqd2_zo,
         t.apqd2_numident,
         t.apqd2_mnth,
         spl.spl_im;
`,
    },
  ];
  const $ = (s, r = document) => r.querySelector(s);
  const $$ = (s, r = document) => [...r.querySelectorAll(s)];
  function tLabel(id) {
    const item = SQL_SCHEMA.getTable(id);
    const ui = item && window.SQL_CATALOG_UI && SQL_CATALOG_UI.get(item);
    return (ui && ui.label) || (item && item.label) || id;
  }
  function cLabel(tableId, col) {
    const t = SQL_SCHEMA.getTable(tableId);
    const item = t && t.columns.find((x) => x.name === col);
    return (item && item.label) || col;
  }
  function optionLabel(item) {
    const code = item.code != null ? String(item.code) : "";
    const label = String(item.label || code);
    return code && label.indexOf("(" + code + ")") < 0 ? `${label} (${code})` : label;
  }
  function groupedOptionsHtml(groups, selected, emptyLabel) {
    let html = emptyLabel != null ? `<option value="">${safeText(emptyLabel)}</option>` : "";
    (groups || []).forEach((group) => {
      const items = (group.items || [])
        .map((item) => {
          const value = item.code != null ? item.code : item.value;
          return `<option value="${safeText(value)}" ${String(value) === String(selected || "") ? "selected" : ""}>${safeText(optionLabel(item))}</option>`;
        })
        .join("");
      html += `<optgroup label="${safeText(group.label)}">${items}</optgroup>`;
    });
    return html;
  }
  function fillReadyRegionSelect(selected) {
    const select = $("#ready-region");
    if (!select) return;
    select.innerHTML = groupedOptionsHtml(SQL_SCHEMA.regionGroups || [], selected, "усі регіони");
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
    catalogRenderCount += 1;
    const root = $("#table-catalog");
    root.innerHTML = "";
    const fragment = document.createDocumentFragment();
    const query = state.catalogQuery.trim();
    if (query) {
      const matches = SQL_CATALOG_UI.search(query);
      const sec = document.createElement("section");
      sec.className = "catalog-group search-results";
      const heading = document.createElement("h3");
      heading.textContent = `Результати пошуку — ${matches.length}`;
      sec.appendChild(heading);
      const grid = document.createElement("div");
      grid.className = "card-grid";
      matches.slice(0, state.catalogLimit).forEach((match) => grid.appendChild(createTableCard(match.table, match)));
      sec.appendChild(grid);
      if (matches.length > state.catalogLimit) {
        const more = document.createElement("button");
        more.type = "button";
        more.className = "btn ghost catalog-show-more";
        more.textContent = `Показати ще (${matches.length - state.catalogLimit})`;
        more.addEventListener("click", function () { state.catalogLimit += 30; renderCatalog(); });
        sec.appendChild(more);
      }
      fragment.appendChild(sec);
    } else if (state.catalogMode === "core") {
      const core = SQL_SCHEMA.tables.filter((table) => SQL_CATALOG_UI.get(table).visibility === "core");
      core.sort(compareCatalogTables);
      fragment.appendChild(createCatalogSection("Основні джерела", core));
    } else {
      const technicalOnly = state.catalogMode === "technical";
      SQL_CATALOG_UI.categories.forEach((category) => {
        if ((category.id === "technical") !== technicalOnly) return;
        const tables = SQL_SCHEMA.tables.filter((table) => {
          const ui = SQL_CATALOG_UI.get(table);
          return ui.category === category.id && (technicalOnly || ui.visibility !== "technical");
        }).sort(compareCatalogTables);
        if (!tables.length) return;
        fragment.appendChild(createCategorySection(category, tables));
      });
    }
    root.appendChild(fragment);
    updateCatalogSelectionState();
  }
  function compareCatalogTables(a, b) {
    const au = SQL_CATALOG_UI.get(a);
    const bu = SQL_CATALOG_UI.get(b);
    return (bu.priority - au.priority) || au.label.localeCompare(bu.label, "uk");
  }
  function createCatalogSection(title, tables) {
    const sec = document.createElement("section");
    sec.className = "catalog-group";
    const heading = document.createElement("h3");
    heading.textContent = `${title} — ${tables.length}`;
    sec.appendChild(heading);
    const grid = document.createElement("div");
    grid.className = "card-grid";
    const cards = document.createDocumentFragment();
    tables.forEach((table) => cards.appendChild(createTableCard(table)));
    grid.appendChild(cards);
    sec.appendChild(grid);
    return sec;
  }
  function createCategorySection(category, tables) {
    const sec = document.createElement("section");
    const expanded = state.expandedCategories.has(category.id);
    sec.className = "catalog-group catalog-category" + (expanded ? " expanded" : "");
    sec.dataset.categoryId = category.id;
    const selected = tables.filter((table) => state.tables.includes(table.id)).length;
    const header = document.createElement("button");
    header.type = "button";
    header.className = "category-toggle";
    header.dataset.category = category.id;
    header.setAttribute("aria-expanded", String(expanded));
    const categoryLabel = document.createElement("span"); categoryLabel.textContent = category.label;
    const categoryCount = document.createElement("span"); categoryCount.className = "category-count"; categoryCount.dataset.categoryCount = category.id; categoryCount.textContent = `${tables.length} джерел, вибрано ${selected}`;
    const arrow = document.createElement("span"); arrow.className = "category-arrow"; arrow.textContent = "⌄";
    header.append(categoryLabel, categoryCount, arrow);
    sec.appendChild(header);
    if (expanded) {
      const grid = document.createElement("div");
      grid.className = "card-grid category-grid";
      const cards = document.createDocumentFragment();
      tables.forEach((table) => cards.appendChild(createTableCard(table)));
      grid.appendChild(cards);
      sec.appendChild(grid);
    }
    return sec;
  }
  function createTableCard(table, match) {
    const ui = SQL_CATALOG_UI.get(table);
    const card = document.createElement("button");
    card.type = "button";
    card.dataset.tableId = table.id;
    card.className = "table-card" + (state.tables.includes(table.id) ? " selected" : "");
    const role = ui.role || (ui.routeBridge ? "bridge" : ui.category === "directories" ? "довідник" : /history|_hst/i.test(ui.category + " " + table.fullName) ? "історія" : ui.visibility === "technical" ? "технічна" : "факт");
    const availability = ui.availability || "доступна";
    card.innerHTML = `
      <span class="card-badges"><span class="schema-badge">${safeText(ui.schema)}</span>${ui.routeBridge ? '<span class="route-badge">Автоматичний bridge</span>' : ""}</span>
      <span class="t-title">${safeText(ui.label)}</span>
      <span class="t-desc">${safeText(ui.description || table.description || "")}</span>
      <span class="t-tech">${safeText(table.fullName)}</span>
      <span class="t-grain">Зерно: ${safeText(ui.grain || "не описано")} · роль: ${safeText(role)} · ${safeText(availability)} · колонок: ${(table.columns || []).length}</span>
      ${match ? `<span class="match-reason">Знайдено: ${safeText(match.reason)}</span>` : ""}
    `;
    return card;
  }
  function updateCatalogSelectionState() {
    $("#selected-count").textContent = String(state.tables.length);
    $$(".table-card[data-table-id]").forEach((card) => {
      card.classList.toggle("selected", state.tables.includes(card.dataset.tableId));
    });
    $$('[data-category-count]').forEach((counter) => {
      const categoryId = counter.dataset.categoryCount;
      const tables = SQL_SCHEMA.tables.filter((table) => SQL_CATALOG_UI.get(table).category === categoryId);
      const selected = tables.filter((table) => state.tables.includes(table.id)).length;
      counter.textContent = `${tables.length} джерел, вибрано ${selected}`;
    });
  }
  function toggleTable(id) {
    const i = state.tables.indexOf(id);
    if (i >= 0) state.tables.splice(i, 1);
    else state.tables.push(id);
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
    updateCatalogSelectionState();
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
          `<span class="chip"><b>${idx + 1}.</b> ${safeText(tLabel(id))}
          <button type="button" data-rm="${safeText(id)}" title="Прибрати">×</button></span>`
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
    const result = SqlBuilder.build(state);
    const graph = result.graph;
    const bridges = (graph && graph.bridgeTables) || [];
    $("#bridge-info").textContent = bridges.length
      ? `Автоматично додані проміжні таблиці: ${bridges.map(tLabel).join(", ")}`
      : "";
    if (graph && graph.root) hint.textContent += ` Маршрут: ${[graph.root].concat((graph.joins || []).map((item) => item.table)).map(tLabel).join(" → ")}.`;
    ((graph && graph.edges) || []).forEach((edge, idx) => root.appendChild(joinRow({
      ...edge,
      leftTable: edge.left,
      rightTable: edge.right,
    }, idx)));
  }
  function joinRow(j, idx) {
    const row = document.createElement("div");
    row.className = "join-row";
    const conditions = (j.conditions || []).map((condition) =>
      `<div class="join-line"><code>${safeText(cLabel(j.leftTable, condition.leftCol))}</code><span class="join-word">=</span><code>${safeText(cLabel(j.rightTable, condition.rightCol))}</code></div>`
    ).join("");
    const variants = (j.variants || []).map((variant) =>
      `<option value="${safeText(variant.id)}" ${variant.id === j.selectedVariant ? "selected" : ""}>${safeText(variant.label)}</option>`
    ).join("");
    row.innerHTML = `
      <div class="join-plain">
        <div class="join-line">
          <strong>${safeText(tLabel(j.leftTable))}</strong><span class="join-word">→</span><strong>${safeText(tLabel(j.rightTable))}</strong>
          <span class="badge">${j.type} · ${j.cardinality || "невідомо"}</span>
        </div>
        ${variants ? `<label class="join-line"><span class="join-word">Спосіб зіставлення:</span><select data-join-variant>${variants}</select></label>` : ""}
        ${conditions}
        ${j.note ? `<div class="join-note">${safeText(j.note)}</div>` : ""}
      </div>
    `;
    const variantSelect = $("[data-join-variant]", row);
    if (variantSelect) variantSelect.addEventListener("change", (event) => {
      const selectedVariant = event.target.value;
      const existing = state.joins.find((item) => item.id === j.id);
      if (existing) existing.selectedVariant = selectedVariant;
      else state.joins.push({ id: j.id, selectedVariant });
      renderJoins();
      updateSql();
    });
    return row;
  }
  function colOptions(tableId, selected) {
    const item = SQL_SCHEMA.getTable(tableId);
    const columns = (item && item.columns) || [];
    const option = (c) =>
      `<option value="${safeText(c.name)}" ${c.name === selected ? "selected" : ""}>${safeText(c.label)}</option>`;
    const grouped = new Map();
    columns.forEach((c) => {
      const group = SQL_SCHEMA.columnGroup ? SQL_SCHEMA.columnGroup(c) : { id: "other", label: "Інші поля" };
      if (!grouped.has(group.id)) grouped.set(group.id, { label: group.label, items: [] });
      grouped.get(group.id).items.push(c);
    });
    const order = SQL_SCHEMA.columnGroups || [];
    if (grouped.size <= 1) return columns.map(option).join("");
    return order
      .filter((group) => grouped.has(group.id))
      .map((group) => `<optgroup label="${safeText(group.label)}">${grouped.get(group.id).items.map(option).join("")}</optgroup>`)
      .join("");
  }
  function tableOptions(selectedId) {
    const grouped = new Map();
    state.tables.forEach((id) => {
      const table = SQL_SCHEMA.getTable(id);
      const ui = table && window.SQL_CATALOG_UI && SQL_CATALOG_UI.get(table);
      const label = (ui && SQL_CATALOG_UI.categoryLabels && SQL_CATALOG_UI.categoryLabels[ui.category]) || "Інші джерела";
      if (!grouped.has(label)) grouped.set(label, []);
      grouped.get(label).push(id);
    });
    const option = (id) =>
      `<option value="${safeText(id)}" ${id === selectedId ? "selected" : ""}>${safeText(tLabel(id))}</option>`;
    if (grouped.size <= 1) return state.tables.map(option).join("");
    return [...grouped.entries()]
      .map(([label, ids]) => `<optgroup label="${safeText(label)}">${ids.map(option).join("")}</optgroup>`)
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
      box.innerHTML = `<div class="avail-title">${safeText(t.label)}</div>`;
      const grouped = new Map();
      (t.columns || []).forEach((c) => {
        const group = SQL_SCHEMA.columnGroup ? SQL_SCHEMA.columnGroup(c) : { id: "other", label: "Інші поля" };
        if (!grouped.has(group.id)) grouped.set(group.id, { label: group.label, items: [] });
        grouped.get(group.id).items.push(c);
      });
      const groups = (SQL_SCHEMA.columnGroups || [{ id: "other", label: "Інші поля" }]).filter((group) => grouped.has(group.id));
      groups.forEach((group) => {
        const subgroup = document.createElement("div");
        subgroup.className = "avail-subgroup";
        if (groups.length > 1) {
          const heading = document.createElement("div");
          heading.className = "avail-subtitle";
          heading.textContent = grouped.get(group.id).label;
          subgroup.appendChild(heading);
        }
        const chips = document.createElement("div");
        chips.className = "avail-chips";
        grouped.get(group.id).items.forEach((c) => {
          const already = state.fields.some(
            (f) => f.table === tid && f.column === c.name
          );
          const btn = document.createElement("button");
          btn.type = "button";
          btn.className = "avail-chip" + (already ? " used" : "");
          btn.disabled = already;
          btn.innerHTML = already
            ? `<span>${safeText(c.label)}</span><span class="chip-tag">вже додано</span>`
            : `<span>${safeText(c.label)}</span><span class="chip-plus">+</span>`;
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
        subgroup.appendChild(chips);
        box.appendChild(subgroup);
      });
      avail.appendChild(box);
    });
    if (countEl) countEl.textContent = String(state.fields.length);
    emptyHint.hidden = state.fields.length > 0;
    state.fields.forEach((f, idx) => {
      const card = document.createElement("div");
      card.className = "chosen-card";
      const isNum = isNumericColumn(f.table, f.column);
      const unsafeSalaryColumn = /^(sum_narah|sum_vrah|sum_narah_vnes|aped46_sum|aped46_sum_narah)$/i.test(f.column);
      const ops = SQL_SCHEMA.aggregates
        .filter((a) => !(unsafeSalaryColumn && a.id === "AVG"))
        .map((a) => {
          return `<option value="${a.id}" ${
            (f.agg || "") === a.id ? "selected" : ""
          }>${a.label}</option>`;
        })
        .join("");
      card.innerHTML = `
        <div class="chosen-num">${idx + 1}</div>
        <div class="chosen-body">
          <div class="chosen-name">${safeText(cLabel(f.table, f.column))}</div>
          <div class="chosen-from">з: ${safeText(tLabel(f.table))}</div>
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
      const upButton = $("[data-up]", card);
      if (upButton) upButton.addEventListener("click", () => {
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
      const downButton = $("[data-down]", card);
      if (downButton) downButton.addEventListener("click", () => {
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
          const wasSelected = state.metrics.includes(metric.id);
          if (metric.salaryMetric) {
            state.metrics = state.metrics.filter((id) => {
              const selected = SQL_SCHEMA.metrics.find((item) => item.id === id);
              return !selected || !selected.salaryMetric;
            });
          }
          const index = state.metrics.indexOf(metric.id);
          if (wasSelected && !metric.salaryMetric) state.metrics.splice(index, 1);
          else if (!wasSelected) state.metrics.push(metric.id);
          renderMetrics();
          updateSql();
        });
        root.appendChild(button);
      });
    renderSalarySettings();
  }
  function renderSalarySettings() {
    const settings = $("#salary-settings");
    const metric = SQL_SCHEMA.metrics.find((item) => state.metrics.includes(item.id) && item.salaryMetric);
    settings.hidden = !metric;
    if (!metric) return;
    $$('[name="salary-grain"]').forEach((radio) => { radio.checked = radio.value === state.salaryGrain; });
    $("#salary-population-rule").value = state.salaryPopulationRule;
    $("#salary-metric-explain").innerHTML =
      `<b>Зерно:</b> ${safeText(state.salaryGrain)}. <b>Чисельник:</b> ${safeText(metric.numerator)}. <b>Знаменник:</b> ${safeText(metric.denominator)}. ` +
      `<b>Період:</b> ${safeText(metric.period)}. <b>Популяція:</b> ${safeText(state.salaryPopulationRule)}. <b>Одиниця:</b> ${safeText(metric.unit)}.`;
  }
  function isNumericColumn(tableId, colName) {
    const t = SQL_SCHEMA.getTable(tableId);
    const c = t && t.columns.find((x) => x.name === colName);
    const ty = ((c && c.type) || "").toUpperCase();
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
            ? ((SQL_SCHEMA.aggregates.find((a) => a.id === f.agg) || {}).label || "") + " · "
            : "";
          return `<option value="f:${i}" ${
            o.fieldIndex === i ? "selected" : ""
          }>${safeText(op)}${safeText(cLabel(f.table, f.column))}</option>`;
        })
        .join("");
    } else {
      state.tables.forEach((tid) => {
        const selectedTable = SQL_SCHEMA.getTable(tid);
        if (selectedTable) selectedTable.columns.forEach((c) => {
          const val = `c:${tid}.${c.name}`;
          const selected =
            o.fieldIndex == null && o.table === tid && o.column === c.name;
          fieldOpts += `<option value="${safeText(val)}" ${selected ? "selected" : ""}>${safeText(cLabel(
            tid,
            c.name
          ))}</option>`;
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
          }>${safeText(d.label)}</option>`
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
        o.agg = (match && match.agg) || "";
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
        column: SQL_SCHEMA.getTable(tid).columns[0] ? SQL_SCHEMA.getTable(tid).columns[0].name : "",
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
    const helpBtn = document.createElement("button");
    helpBtn.type = "button";
    helpBtn.className = "help-btn";
    helpBtn.title = "Довідник категорій ЗО";
    helpBtn.setAttribute("aria-label", "Довідник категорій ЗО");
    helpBtn.textContent = "?";
    helpBtn.addEventListener("click", openZoCategoryHelp);
    root.appendChild(helpBtn);
    const chips = [];
    const categorySource = state.tables.includes("t6_2026_edrpou")
      ? { table: "t6_2026_edrpou", column: "kat_zo" }
      : state.tables.includes("sm_ape4_6data")
        ? { table: "sm_ape4_6data", column: "aped46_zo" }
        : null;
    if (categorySource) {
      const groups = SQL_SCHEMA.zoFilterGroups || {};
      const military = (groups.military || []).join(", ");
      const disability = (groups.disability || []).join(", ");
      chips.push(
        { id: "military", label: "Військові", ...categorySource, op: "IN", value: military },
        { id: "civilian", label: "Цивільні", ...categorySource, op: "NOT IN", value: military },
        { id: "disability", label: "Особи з інвалідністю", ...categorySource, op: "IN", value: disability }
      );
    }
    state.tables.forEach((tid) => {
      const t = SQL_SCHEMA.getTable(tid);
      ((t && t.columns) || []).forEach((c) => {
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
      const key = ch.id || `${ch.table}.${ch.column}.${ch.op}`;
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
    const ops = SQL_SCHEMA.operators
      .map(
        (o) =>
          `<option value="${safeText(o.id)}" ${o.id === f.op ? "selected" : ""}>${safeText(o.label)}</option>`
      )
      .join("");
    const needVal = f.op !== "IS NULL" && f.op !== "IS NOT NULL";
    const lookup = needVal && SQL_SCHEMA.lookupForColumn ? SQL_SCHEMA.lookupForColumn(f.table, f.column) : null;
    const useLookup = !!(lookup && (f.op === "=" || f.op === "!="));
    const ph =
      f.op === "BETWEEN"
        ? "від, до"
        : f.op === "IN" || f.op === "NOT IN"
          ? "a, b, c"
          : f.op === "LIKE" || f.op === "LIKE_UPPER"
            ? "фрагмент"
            : "значення";
    const valueControl = !needVal
      ? `<input type="text" data-k="value" disabled />`
      : useLookup
        ? `<select data-k="value">${groupedOptionsHtml(lookup.groups, f.value, lookup.empty)}</select>`
        : `<input type="text" data-k="value" placeholder="${safeText(ph)}" value="${safeText(f.value || "")}" />`;
    row.innerHTML = `
      <select data-k="table" title="${safeText(tLabel(f.table))}">${tableOptions(f.table)}</select>
      <select data-k="column" title="${safeText(cLabel(f.table, f.column))}">${colOptions(f.table, f.column)}</select>
      <select data-k="op">${ops}</select>
      ${valueControl}
      <button type="button" class="btn danger icon" data-del>×</button>
    `;
    $$("select, input", row).forEach((el) => {
      const go = () => {
        f[el.dataset.k] = el.value;
        if (el.dataset.k === "table") {
          const selectedTable = SQL_SCHEMA.getTable(f.table);
          f.column = selectedTable && selectedTable.columns[0] ? selectedTable.columns[0].name : "";
          f.value = "";
        }
        if (el.dataset.k === "column") f.value = "";
        if (el.dataset.k === "table" || el.dataset.k === "column" || el.dataset.k === "op") renderFilters();
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
    const sqlState = SQLWizardState.forStep(state, state.step);
    if (!sqlState.tables.length) {
      $("#sql-out").value = "";
      const status = $("#sql-status"); status.className = "sql-status"; status.replaceChildren();
      const paragraph = document.createElement("p"); paragraph.textContent = "Оберіть джерело або готовий звіт — SQL з’явиться тут."; status.appendChild(paragraph);
      $("#sql-explain").innerHTML = "<p>Поки нічого не зібрано.</p>";
      return;
    }
    const result = SqlBuilder.build(sqlState);
    $("#sql-out").value = result.sql || result.errors.map((error) => `-- ПОМИЛКА: ${error}`).join("\n");
    const status = $("#sql-status");
    status.className = "sql-status" + (result.errors.length ? " error" : result.warnings.length ? " warning" : "");
    status.replaceChildren();
    const statusItems = result.errors.length ? result.errors.map((message) => ({ label: "Помилка", message }))
      : (result.diagnostics || []).concat((result.warnings || []).map((message) => ({ severity: "warning", message }))).map((item) => ({ label: item.severity === "info" ? "Інформація" : "Увага", message: item.message, action: item.action }));
    statusItems.forEach((item) => {
      const paragraph = document.createElement("p");
      const strong = document.createElement("strong"); strong.textContent = item.label + ": ";
      paragraph.appendChild(strong); paragraph.appendChild(document.createTextNode(String(item.message || "")));
      if (item.action) paragraph.appendChild(document.createTextNode(" Дія: " + item.action + "."));
      status.appendChild(paragraph);
    });
    $("#sql-explain").innerHTML = buildExplain(result, sqlState);
  }
  function buildExplain(result, sqlState) {
    const current = sqlState || state;
    if (!current.tables.length) return "<p>Поки нічого не зібрано.</p>";
    const lines = [];
    lines.push(
      `<li><b>Джерела:</b> ${current.tables.map((id) => safeText(tLabel(id))).join("; ")}</li>`
    );
    const resolvedEdges = (result && result.graph && result.graph.edges) || [];
    if (resolvedEdges.length) {
      lines.push(
        `<li><b>З’єднання:</b> ${resolvedEdges
          .map(
            (j) => `${safeText(tLabel(j.left))} ↔ ${safeText(tLabel(j.right))}: ${(j.conditions || []).map((condition) =>
              `[${safeText(cLabel(j.left, condition.leftCol))}] = [${safeText(cLabel(j.right, condition.rightCol))}]`
            ).join(" AND ")}`
          )
          .join("; ")}</li>`
      );
    }
    if (current.fields.length) {
      lines.push(
        `<li><b>У результаті:</b> ${current.fields
          .map((f) => {
            const a = f.agg
              ? ((SQL_SCHEMA.aggregates.find((x) => x.id === f.agg) || {}).label || "") + " — "
              : "";
            return safeText(a) + safeText(cLabel(f.table, f.column));
          })
          .join("; ")}</li>`
      );
    } else {
      lines.push(`<li><b>У результаті:</b> усі поля</li>`);
    }
    if (current.metrics.length) {
      lines.push(`<li><b>Показники:</b> ${current.metrics.map((id) => {
        const metric = SQL_SCHEMA.metrics.find((item) => item.id === id);
        return safeText((metric && metric.label) || id);
      }).join("; ")}</li>`);
      const salaryMetric = SQL_SCHEMA.metrics.find((item) => current.metrics.includes(item.id) && item.salaryMetric);
      if (salaryMetric) {
        const grainLabel = current.salaryGrain === "person_employer_month"
          ? "одна особа в одного страхувальника за місяць; роботодавці враховуються окремо"
          : "одна особа за місяць; зарплата всіх роботодавців підсумована";
        const populationLabel = current.salaryPopulationRule === "positive_salary"
          ? "місячна зарплата після агрегації та сторнувань більша нуля"
          : "є запис у T6 за місяць";
        lines.push(`<li><b>Чисельник:</b> ${safeText(salaryMetric.numerator)}</li>`);
        lines.push(`<li><b>Знаменник:</b> ${safeText(salaryMetric.denominator)}</li>`);
        lines.push(`<li><b>Рівень:</b> ${safeText(grainLabel)}</li>`);
        lines.push(`<li><b>Період:</b> ${safeText(salaryMetric.period)}; <b>одиниця:</b> ${safeText(salaryMetric.unit)}</li>`);
        lines.push(`<li><b>Активний працівник:</b> ${safeText(populationLabel)}</li>`);
        lines.push(`<li><b>Semantic mode:</b> ${safeText(current.semanticMode || "current")}</li>`);
      }
    }
    const quality = (SQL_SCHEMA.systemFilters || []).filter((profile) => (current.qualityProfiles || []).includes(profile.id));
    if (quality.length) lines.push(`<li><b>Профілі якості:</b> ${quality.map((item) => safeText(item.label)).join("; ")}</li>`);
    if (result && result.appliedPredicates && result.appliedPredicates.length) lines.push(`<li><b>Автоматичні предикати:</b> ${result.appliedPredicates.map(safeText).join("; ")}</li>`);
    if (current.orderBy.length) {
      lines.push(`<li><b>Сортування:</b> ${current.orderBy.length} правил(а)</li>`);
    }
    if (current.filters.length) {
      lines.push(
        `<li><b>Фільтри:</b> ${current.filters
          .map((f) => {
            const op =
              (SQL_SCHEMA.operators.find((o) => o.id === f.op) || {}).label || f.op;
            return `${safeText(cLabel(f.table, f.column))} ${safeText(op)} ${safeText(f.value || "…")}`;
          })
          .join("; ")}</li>`
      );
    }
    const modeLabel =
      (SQL_SCHEMA.outputModes.find((m) => m.id === current.mode) || {}).label ||
      current.mode;
    lines.push(`<li><b>Дія:</b> ${safeText(modeLabel)}</li>`);
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
    updateSql();
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
    updateSql();
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
      presets: [],
      semanticMode: "current",
      allHistoryConfirmed: false,
      qualityProfiles: [],
      taskId: null,
      taskParameters: null,
      t6Years: [2026],
      t6MonthFrom: 1,
      t6MonthTo: 12,
      t6Region: "",
      latestPersonOnly: false,
      parallel8: false,
      salaryGrain: "person_month",
      salaryPopulationRule: "reported",
      mode: "select",
      targetTable: "work_result",
      catalogMode: "core",
      catalogQuery: "",
      expandedCategories: new Set(),
    });
    $("#search-tables").value = "";
    setT6Years([2026]);
    $("#ready-month-from").value = "1";
    $("#ready-month-to").value = "12";
    $("#ready-grain").value = "person_month";
    fillReadyRegionSelect("");
    renderCatalog();
    renderSelectedStrip();
    renderModeUi();
    $("#semantic-mode").value = "current";
    $("#all-history-confirmed").checked = false;
    $("#all-history-confirm-wrap").hidden = true;
    $("#quality-accepted-packages").checked = false;
    $("#filter-latest-person").checked = false;
    $("#use-parallel-8").checked = false;
    syncSteps();
    updateSql();
    notify("Очищено");
  }
  function renderTemplates() {
    renderSavedPresets();
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
  function safeText(value) {
    return String(value).replace(/[&<>"']/g, function (character) {
      return { "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[character];
    });
  }
  function renderSavedPresets() {
    const root = $("#saved-presets-list");
    if (!root) return;
    const items = SQLPresetStore.list(localStorage).sort(function (a, b) { return b.updatedAt.localeCompare(a.updatedAt); });
    if (!items.length) {
      root.innerHTML = '<p class="hint muted-box">Ще немає збережених пресетів.</p>';
      return;
    }
    root.innerHTML = items.map(function (preset) {
      const tables = (preset.state.tables || []).map(tLabel).join("; ");
      return `<article class="preset-card">
        <strong>${safeText(preset.name)}</strong>
        <span>${safeText(tables || "Без джерел")}</span>
        <div class="preset-actions">
          <button type="button" class="btn" data-user-load="${safeText(preset.id)}">Завантажити</button>
          <button type="button" class="btn danger" data-user-delete="${safeText(preset.id)}">Видалити</button>
        </div>
      </article>`;
    }).join("");
    root.querySelectorAll("[data-user-load]").forEach(function (button) {
      button.addEventListener("click", function () { loadUserPreset(button.dataset.userLoad); });
    });
    root.querySelectorAll("[data-user-delete]").forEach(function (button) {
      button.addEventListener("click", function () {
        if (!window.confirm("Видалити цей пресет?")) return;
        SQLPresetStore.remove(localStorage, button.dataset.userDelete);
        renderSavedPresets();
        notify("Пресет видалено");
      });
    });
  }
  function saveUserPreset() {
    if (!state.tables.length) {
      notify("Спочатку налаштуйте запит", false);
      return;
    }
    const name = window.prompt("Назва пресета:", "Мій звіт");
    if (name == null) return;
    try {
      SQLPresetStore.save(localStorage, name, state);
      if (state.step === 6) renderSavedPresets();
      notify("Пресет збережено");
    } catch (error) {
      notify(error.message || "Не вдалося зберегти пресет", false);
    }
  }
  function renderReadyReports() {
    const root = $("#ready-report-list"); if (!root) return; root.replaceChildren();
    READY_REPORTS.forEach((report) => {
      const button = document.createElement("button"); button.type = "button"; button.className = "ready-report-card"; button.textContent = report.label;
      button.addEventListener("click", () => applyReadyReport(report)); root.appendChild(button);
    });
  }
  function readT6Years() {
    return $$('input[type="checkbox"]', $("#ready-years")).filter((input) => input.checked).map((input) => Number(input.value)).sort();
  }
  function setT6Years(years) {
    const selected = new Set((years || []).map(Number));
    $$('input[type="checkbox"]', $("#ready-years")).forEach((input) => { input.checked = selected.has(Number(input.value)); });
  }
  function applyReadyReport(report) {
    const years = readT6Years();
    const year = years.length === 1 ? years[0] : null;
    const monthFrom = Math.max(1, Math.min(12, Number($("#ready-month-from").value) || 1));
    const monthTo = Math.max(monthFrom, Math.min(12, Number($("#ready-month-to").value) || 12));
    const region = $("#ready-region").value.trim(); const grain = $("#ready-grain").value; const populationRule = $("#ready-population").value; const semanticMode = $("#ready-semantic-mode").value;
    state.t6Years = years; state.t6MonthFrom = monthFrom; state.t6MonthTo = monthTo; state.t6Region = region;
    state.taskId = report.id; state.taskParameters = { years: years.slice(), monthFrom, monthTo, region: region || null, grain, populationRule, semanticMode };
    state.tables = report.tables.slice(); state.metrics = report.metrics.slice(); state.fields = report.fields.map((item) => ({ ...item })); state.filters = [];
    state.salaryGrain = grain || report.grain; state.salaryPopulationRule = populationRule; state.semanticMode = semanticMode; state.allHistoryConfirmed = false; state.presets = semanticMode === "current" ? ["current_insurer_profile"] : [];
    $("#semantic-mode").value = semanticMode; $("#all-history-confirm-wrap").hidden = semanticMode !== "all_history"; $("#all-history-confirmed").checked = false;
    state.joins = report.route ? [{ id: "t6_work_to_employment_ape45", selectedVariant: report.route }] : [];
    renderCatalog(); renderSelectedStrip(); updateSql(); notify("Готовий звіт застосовано");
  }
  function presetCompatible(saved) {
    return (saved.tables || []).every(function (id) { return !!SQL_SCHEMA.getTable(id); }) &&
      (saved.metrics || []).every(function (id) { return SQL_SCHEMA.metrics.some(function (metric) { return metric.id === id; }); });
  }
  function exportUserPresets() {
    const blob = new Blob([SQLPresetStore.exportJson(localStorage)], { type: "application/json;charset=utf-8" });
    const link = document.createElement("a"); link.href = URL.createObjectURL(blob); link.download = "sqlmanager-presets-v2.json"; link.click(); URL.revokeObjectURL(link.href);
  }
  function importUserPresets(file) {
    const reader = new FileReader();
    reader.onload = function () {
      try { const count = SQLPresetStore.importJson(localStorage, reader.result, presetCompatible); renderSavedPresets(); notify(`Імпортовано пресетів: ${count}`); }
      catch (error) { notify(error.message || "Не вдалося імпортувати пресети", false); }
    };
    reader.readAsText(file, "UTF-8");
  }
  function loadUserPreset(id) {
    const preset = SQLPresetStore.get(localStorage, id);
    if (!preset) {
      notify("Пресет не знайдено", false);
      renderSavedPresets();
      return;
    }
    const saved = preset.state || {};
    const tables = (saved.tables || []).filter(function (tableId) { return !!SQL_SCHEMA.getTable(tableId); });
    const hasColumn = function (tableId, columnName) {
      const table = SQL_SCHEMA.getTable(tableId);
      return !!(table && table.columns.some(function (column) { return column.name === columnName; }));
    };
    state.tables = tables;
    state.joins = Array.isArray(saved.joins) ? saved.joins : [];
    state.fields = (saved.fields || []).filter(function (field) { return tables.includes(field.table) && hasColumn(field.table, field.column); });
    state.filters = (saved.filters || []).filter(function (filter) { return tables.includes(filter.table) && hasColumn(filter.table, filter.column); });
    state.orderBy = (saved.orderBy || []).filter(function (order) {
      return order.fieldIndex != null ? order.fieldIndex < state.fields.length : tables.includes(order.table) && hasColumn(order.table, order.column);
    });
    state.metrics = (saved.metrics || []).filter(function (id) {
      const metric = SQL_SCHEMA.metrics.find(function (item) { return item.id === id; });
      return metric && metric.tables.every(function (tableId) { return tables.includes(tableId); });
    });
    state.presets = (saved.presets || []).filter(function (id) { return SQL_SCHEMA.semanticPresets.some(function (item) { return item.id === id; }); });
    state.semanticMode = ["current", "all_history"].includes(saved.semanticMode) ? saved.semanticMode : "current";
    state.allHistoryConfirmed = state.semanticMode === "all_history" && saved.allHistoryConfirmed === true;
    state.taskId = saved.taskId || null;
    state.taskParameters = saved.taskParameters && typeof saved.taskParameters === "object"
      ? JSON.parse(JSON.stringify(saved.taskParameters)) : null;
    state.t6Years = Array.isArray(saved.t6Years) && saved.t6Years.length ? saved.t6Years.slice() : [2026];
    state.t6MonthFrom = Math.max(1, Math.min(12, Number(saved.t6MonthFrom) || 1));
    state.t6MonthTo = Math.max(state.t6MonthFrom, Math.min(12, Number(saved.t6MonthTo) || 12));
    state.t6Region = String(saved.t6Region || "");
    setT6Years(state.t6Years);
    $("#ready-month-from").value = String(state.t6MonthFrom);
    $("#ready-month-to").value = String(state.t6MonthTo);
    fillReadyRegionSelect(state.t6Region);
    state.qualityProfiles = (saved.qualityProfiles || []).filter(function (id) { return SQL_SCHEMA.systemFilters.some(function (item) { return item.id === id; }); });
    state.latestPersonOnly = saved.latestPersonOnly === true;
    state.parallel8 = saved.parallel8 === true;
    state.salaryGrain = saved.salaryGrain === "person_employer_month" ? "person_employer_month" : "person_month";
    $("#ready-grain").value = state.salaryGrain;
    state.salaryPopulationRule = saved.salaryPopulationRule === "positive_salary" ? "positive_salary" : "reported";
    state.mode = SQL_SCHEMA.outputModes.some(function (mode) { return mode.id === saved.mode; }) ? saved.mode : "select";
    state.targetTable = String(saved.targetTable || "work_result");
    $("#mode-select").value = state.mode;
    $("#target-table").value = state.targetTable;
    $("#semantic-mode").value = state.semanticMode;
    $("#all-history-confirm-wrap").hidden = state.semanticMode !== "all_history";
    $("#all-history-confirmed").checked = state.allHistoryConfirmed;
    $("#quality-accepted-packages").checked = state.qualityProfiles.includes("accepted_actual_packages");
    $("#filter-latest-person").checked = state.latestPersonOnly;
    $("#use-parallel-8").checked = state.parallel8;
    renderCatalog();
    renderSelectedStrip();
    renderJoins();
    renderModeUi();
    renderFields();
    renderOrder();
    renderFilters();
    updateSql();
    notify("Пресет завантажено");
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
    } catch (error) {
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
      yearStart: Number($("#tpl-year-start").value) || 2022,
      yearEnd: Number($("#tpl-year-end").value) || 2026,
      monthStart: Number($("#tpl-month-start").value) || 1,
      monthEnd: Number($("#tpl-month-end").value) || 6,
      otk: $("#tpl-otk").value,
    };
  }

  function applyTemplateSettings(sql) {
    return TemplateUtils.apply(sql, getTemplateSettings());
  }

  function zoCategoryTag(code) {
    const groups = SQL_SCHEMA.zoFilterGroups || {};
    if ((groups.military || []).indexOf(code) >= 0) return `<span class="zo-cat-tag military">військові</span>`;
    if ((groups.disability || []).indexOf(code) >= 0) return `<span class="zo-cat-tag disability">інвалідність</span>`;
    return "";
  }
  function renderZoCategoryList(query) {
    const root = $("#zo-category-list");
    if (!root) return;
    const q = String(query || "").trim().toLowerCase();
    const items = (SQL_SCHEMA.zoCategories || []).filter((item) => {
      if (!q) return true;
      return String(item.code).includes(q) || String(item.label || "").toLowerCase().includes(q);
    });
    root.replaceChildren();
    if (!items.length) {
      const empty = document.createElement("p");
      empty.className = "muted";
      empty.textContent = "Нічого не знайдено.";
      root.appendChild(empty);
      return;
    }
    items.forEach((item) => {
      const row = document.createElement("div"); row.className = "zo-cat-row";
      const code = document.createElement("span"); code.className = "zo-cat-code"; code.textContent = String(item.code);
      const label = document.createElement("span"); label.className = "zo-cat-label"; label.textContent = String(item.label || "");
      row.append(code, label);
      const groups = SQL_SCHEMA.zoFilterGroups || {};
      const tagClass = (groups.military || []).indexOf(item.code) >= 0 ? "military"
        : (groups.disability || []).indexOf(item.code) >= 0 ? "disability" : "";
      if (tagClass) {
        const tag = document.createElement("span"); tag.className = "zo-cat-tag " + tagClass;
        tag.textContent = tagClass === "military" ? "військові" : "інвалідність";
        row.appendChild(tag);
      }
      root.appendChild(row);
    });
  }
  function openZoCategoryHelp() {
    const overlay = $("#zo-category-dialog");
    if (!overlay) return;
    overlay.hidden = false;
    renderZoCategoryList($("#zo-category-search") && $("#zo-category-search").value);
    const search = $("#zo-category-search");
    if (search) search.focus();
  }
  function closeZoCategoryHelp() {
    const overlay = $("#zo-category-dialog");
    if (overlay) overlay.hidden = true;
  }
  function bindZoCategoryHelp() {
    const openBtn = $("#zo-category-help");
    const closeBtn = $("#zo-category-close");
    const overlay = $("#zo-category-dialog");
    const search = $("#zo-category-search");
    if (openBtn) openBtn.addEventListener("click", openZoCategoryHelp);
    if (closeBtn) closeBtn.addEventListener("click", closeZoCategoryHelp);
    if (overlay) {
      overlay.addEventListener("click", (event) => {
        if (event.target === overlay) closeZoCategoryHelp();
      });
    }
    if (search) {
      search.addEventListener("input", () => renderZoCategoryList(search.value));
    }
    document.addEventListener("keydown", (event) => {
      if (event.key === "Escape" && overlay && !overlay.hidden) closeZoCategoryHelp();
    });
    renderZoCategoryList("");
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
    $("#semantic-mode").addEventListener("change", (event) => {
      state.semanticMode = event.target.value;
      state.presets = state.semanticMode === "current" ? ["current_insurer_profile"] : [];
      state.allHistoryConfirmed = false;
      $("#all-history-confirmed").checked = false;
      $("#all-history-confirm-wrap").hidden = state.semanticMode !== "all_history";
      updateSql();
    });
    $("#ready-years").addEventListener("change", (event) => {
      const years = readT6Years();
      if (!years.length) {
        event.target.checked = true;
        notify("Оберіть хоча б один рік T6", false);
        return;
      }
      state.t6Years = years;
      updateSql();
    });
    const syncT6Parameters = (event) => {
      let monthFrom = Math.max(1, Math.min(12, Number($("#ready-month-from").value) || 1));
      let monthTo = Math.max(1, Math.min(12, Number($("#ready-month-to").value) || 12));
      if (monthFrom > monthTo) {
        if (event && event.target.id === "ready-month-to") monthFrom = monthTo;
        else monthTo = monthFrom;
      }
      state.t6MonthFrom = monthFrom; state.t6MonthTo = monthTo; state.t6Region = $("#ready-region").value.trim();
      $("#ready-month-from").value = String(monthFrom); $("#ready-month-to").value = String(monthTo);
      updateSql();
    };
    $("#ready-month-from").addEventListener("change", syncT6Parameters);
    $("#ready-month-to").addEventListener("change", syncT6Parameters);
    $("#ready-region").addEventListener("change", syncT6Parameters);
    $("#ready-region").addEventListener("input", syncT6Parameters);
    $("#ready-grain").addEventListener("change", (event) => {
      state.salaryGrain = event.target.value;
      $$('[name="salary-grain"]').forEach((radio) => { radio.checked = radio.value === state.salaryGrain; });
      renderSalarySettings();
      updateSql();
    });
    $("#all-history-confirmed").addEventListener("change", (event) => { state.allHistoryConfirmed = event.target.checked; updateSql(); });
    $("#quality-accepted-packages").addEventListener("change", (event) => {
      state.qualityProfiles = event.target.checked ? ["accepted_actual_packages"] : [];
      updateSql();
    });
    $("#filter-latest-person").addEventListener("change", (event) => {
      state.latestPersonOnly = event.target.checked;
      updateSql();
    });
    $("#use-parallel-8").addEventListener("change", (event) => {
      state.parallel8 = event.target.checked;
      updateSql();
    });
    $$('[name="salary-grain"]').forEach((radio) => radio.addEventListener("change", (event) => {
      state.salaryGrain = event.target.value;
      $("#ready-grain").value = state.salaryGrain;
      renderSalarySettings();
      updateSql();
    }));
    $("#salary-population-rule").addEventListener("change", (event) => {
      state.salaryPopulationRule = event.target.value;
      renderSalarySettings();
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
      } catch (error) {
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
    $("#btn-save-preset").addEventListener("click", saveUserPreset);
    $("#btn-export-presets").addEventListener("click", exportUserPresets);
    $("#btn-import-presets").addEventListener("click", () => $("#preset-import-file").click());
    $("#preset-import-file").addEventListener("change", (event) => { if (event.target.files[0]) importUserPresets(event.target.files[0]); event.target.value = ""; });
    $("#btn-reset").addEventListener("click", resetAll);
    bindZoCategoryHelp();
    $("#search-tables").addEventListener("input", (e) => {
      state.catalogQuery = e.target.value.trim();
      state.catalogLimit = 30;
      renderCatalog();
    });
    $("#catalog-modes").addEventListener("click", (event) => {
      const button = event.target.closest("[data-catalog-mode]");
      if (!button) return;
      state.catalogMode = button.dataset.catalogMode;
      if (state.catalogMode === "technical") state.expandedCategories.add("technical");
      $$("[data-catalog-mode]").forEach((item) => {
        const active = item.dataset.catalogMode === state.catalogMode;
        item.classList.toggle("active", active);
        item.classList.toggle("ghost", !active);
      });
      renderCatalog();
    });
    $("#table-catalog").addEventListener("click", (event) => {
      const category = event.target.closest("[data-category]");
      if (category) {
        const id = category.dataset.category;
        if (state.expandedCategories.has(id)) state.expandedCategories.delete(id);
        else state.expandedCategories.add(id);
        renderCatalog();
        return;
      }
      const card = event.target.closest("[data-table-id]");
      if (card) toggleTable(card.dataset.tableId);
    });
  }
  function init() {
    try {
      bind();
      fillReadyRegionSelect(state.t6Region);
      renderReadyReports();
      renderCatalog();
      renderSelectedStrip();
      renderModeUi();
      syncSteps();
      updateSql();
      window.SQLManagerApp = {
        getCatalogRenderCount: () => catalogRenderCount,
        getState: () => state,
        setCatalogMode: (mode) => {
          state.catalogMode = mode;
          if (mode === "technical") state.expandedCategories.add("technical");
          renderCatalog();
        },
        setCatalogSearch: (query) => {
          state.catalogQuery = query || "";
          $("#search-tables").value = state.catalogQuery;
          renderCatalog();
        },
        toggleCategory: (id) => {
          if (state.expandedCategories.has(id)) state.expandedCategories.delete(id);
          else state.expandedCategories.add(id);
          renderCatalog();
        },
        toggleTable,
        goToStep,
      };
    } catch (error) {
      const catalog = document.querySelector("#table-catalog");
      if (catalog) {
        catalog.replaceChildren();
        const message = document.createElement("p"); message.className = "error-message";
        message.textContent = "Помилка запуску конструктора: " + String(error && error.message ? error.message : error);
        catalog.appendChild(message);
      }
      throw error;
    }
  }
  document.addEventListener("DOMContentLoaded", init);
})();
