(function () {
  var categories = {
    work: "Робочі та зведені набори",
    salary_esv: "Зарплата та ЄСВ",
    employment: "Трудові відносини та посади",
    report_packages: "Пакети звітності",
    package_headers: "Заголовки пакетів",
    appendix_4: "Додатки 4",
    appendix_5: "Додатки 5",
    appendix_6: "Додатки 6",
    quarterly_apeq: "Квартальні APEQ",
    payments: "Платежі",
    statuses_control: "Статуси та контроль",
    files_uploads: "Файли й завантаження",
    report_archive: "Архів та історія звітності",
    insurers: "Страхувальники",
    insurer_kved: "КВЕД страхувальника",
    persons: "Особи та документи",
    addresses_territories: "Адреси й території",
    directories: "Довідники",
    history_movements: "Історія та рух",
    technical: "Службові та технічні таблиці"
  };
  var coreByName = {
    T6_2026_EDRPOU: { category: "work", priority: 200, label: "Зведення нарахувань Т6", description: "Підготовлені місячні нарахування по особах і страхувальниках.", tags: ["т6", "зарплата", "єсв", "нарахування"] },
    SM_PACKLABEL: { category: "report_packages", priority: 190, label: "Пакети звітності роботодавців", description: "Заголовки пакетів, період, страхувальник і статус.", tags: ["пакет", "звітність", "період"] },
    SM_APE4_6DATA: { category: "salary_esv", priority: 180, label: "Нарахування зарплати та ЄСВ по особах", description: "Детальні рядки нарахувань, внесків і категорій ЗО.", tags: ["зарплата", "єсв", "т6", "нарахування"] },
    SM_APE4_5DATA: { category: "employment", priority: 175, label: "Прийняття, звільнення та посади", description: "Кадрові події, трудові відносини й посади особи.", tags: ["посада", "прийняття", "звільнення", "робота"] },
    SK_PACKLABEL: { category: "report_packages", priority: 170, label: "Пакети квартальної звітності", description: "Заголовки пакетів квартальної звітності.", tags: ["пакет", "квартал"] },
    SK_PACKLABEL_EXTENDED: { category: "report_packages", priority: 165, label: "Розширені реквізити пакетів", description: "Додаткові ознаки квартального пакета.", tags: ["пакет", "реквізити"] },
    SK_APEQ_DODATOK2_DATA: { category: "salary_esv", priority: 160, label: "Додаток 2 квартальної звітності", description: "Категорії ЗО, утримання та внески.", tags: ["додаток 2", "єсв", "категорія зо"] },
    PINSUR_MAIN: { category: "insurers", priority: 155, label: "Головний запис страхувальника", description: "Внутрішній ідентифікатор і поточний стан страхувальника.", tags: ["страхувальник", "підприємство"] },
    PINSUR_CHNG_DOC: { category: "insurers", priority: 150, label: "Версії реквізитів страхувальника", description: "Документи змін, що визначають версії анкет і КВЕД.", tags: ["версія", "документ змін"], routeBridge: true },
    PINSUR_ANKT_A: { category: "insurers", priority: 145, label: "Основні реквізити страхувальника", description: "Назва, ЄДРПОУ та категорія страхувальника.", tags: ["єдрпоу", "назва", "анкета"] },
    PINSUR_ANKT_C: { category: "addresses_territories", priority: 140, label: "Територіальні реквізити страхувальника", description: "Регіональні та облікові реквізити організації.", tags: ["регіон", "територія"] },
    PINSUR_KVED_HST: { category: "insurer_kved", priority: 135, label: "Версії набору КВЕД страхувальника", description: "Вузол версії КВЕД у маршруті актуального профілю.", tags: ["квед", "версія"], routeBridge: true },
    PINSUR_KVED: { category: "insurer_kved", priority: 130, label: "КВЕД у вибраній версії", description: "Види діяльності, прив’язані до версії страхувальника.", tags: ["квед", "діяльність"] },
    NSI_KVED: { category: "insurer_kved", priority: 125, label: "Довідник видів економічної діяльності", description: "Коди та назви КВЕД.", tags: ["квед", "довідник", "діяльність"] },
    INSURED_PERSON: { category: "persons", priority: 120, label: "Головний запис особи", description: "Внутрішній ключ застрахованої особи.", tags: ["особа", "застрахована особа"] },
    INSURED_PERSON_INFO: { category: "persons", priority: 115, label: "ПІБ, РНОКПП і документи особи", description: "Персональні реквізити, паспорт і дата народження.", tags: ["піб", "рнокпп", "паспорт", "документ"] },
    MRDORG: { category: "addresses_territories", priority: 110, label: "Органи та регіони обліку", description: "Коди органів обліку й регіонів.", tags: ["регіон", "орган"] },
    NSI_REGION_UKR: { category: "addresses_territories", priority: 105, label: "Довідник регіонів України", description: "Регіони та їхні коди.", tags: ["регіон", "область", "територія"] }
  };

  function tableName(table) {
    return String(table.name || String(table.fullName || "").split(".").pop()).toUpperCase();
  }
  function schemaName(table) {
    return String(table.schema || String(table.fullName || "").split(".")[0] || "WORK").toUpperCase();
  }
  function fallbackCategory(table) {
    var name = tableName(table);
    if (/^(TMP_|TEMP_)|(_LOG|_TEMP|_BUFFER|_BUF|_CACHE|_CACHED|INVALID_ROWS|_ERROR|_ERR)$/.test(name)) return "technical";
    if (/_MOVEMENT|_HST|_HIST(?:ORY)?$/.test(name)) return "history_movements";
    if (/^NSI_|^DIC_/.test(name)) return "directories";
    if (/ADDRESS|ADRESS|REGION|KOAT/.test(name)) return "addresses_territories";
    if (/PERSON|INSURED/.test(name)) return "persons";
    if (/KVED/.test(name)) return "insurer_kved";
    if (/^PINSUR_/.test(name)) return "insurers";
    if (/(_HST|_HIST|_ARCH|_OLD)$/.test(name) && schemaName(table) === "IKIS_WEBSM") return "report_archive";
    if (/FILE|LOAD|UPLOAD|ATTACH|DOCUMENT/.test(name) && schemaName(table) === "IKIS_WEBSM") return "files_uploads";
    if (/STATUS|STATE|CONTROL|CHECK|ERROR|REJECT/.test(name) && schemaName(table) === "IKIS_WEBSM") return "statuses_control";
    if (/PAY|PAYMENT|PLAT|VNES/.test(name) && schemaName(table) === "IKIS_WEBSM") return "payments";
    if (/APEQ|SK_APEQ/.test(name)) return "quarterly_apeq";
    if (/APE4_|APP4_|APD4/.test(name)) return "appendix_4";
    if (/APE5_|APP5_|APD5/.test(name)) return "appendix_5";
    if (/APE6_|APP6_|APD6/.test(name)) return "appendix_6";
    if (/PACKLABEL|PACKAGE/.test(name)) return "package_headers";
    if (/APE4_5/.test(name)) return "employment";
    if (/APE4_6|PAY|SALARY|ESV/.test(name)) return "salary_esv";
    if (schemaName(table) === "IKIS_NDI") return "directories";
    if (schemaName(table) === "IKIS_PERSON") return "persons";
    if (schemaName(table) === "IKIS_ERSP") return "insurers";
    if (schemaName(table) === "IKIS_SYS") return "directories";
    if (schemaName(table) === "IKIS_WEBSM") return "statuses_control";
    return "work";
  }
  function get(table) {
    var manual = coreByName[tableName(table)] || {};
    var category = manual.category || fallbackCategory(table);
    var technical = category === "technical";
    return {
      category: category,
      subcategory: manual.subcategory || "",
      visibility: manual.visibility || (coreByName[tableName(table)] ? "core" : technical ? "technical" : "advanced"),
      priority: manual.priority || 0,
      featured: manual.featured !== false && !!coreByName[tableName(table)],
      tags: manual.tags || [],
      synonyms: manual.synonyms || [],
      label: manual.label || table.label,
      description: manual.description || table.description || "",
      routeBridge: !!manual.routeBridge,
      schema: schemaName(table),
      grain: manual.grain || table.grain || inferGrain(table),
      role: manual.role || inferRole(table, category),
      availability: table.unresolvedExternal ? "зовнішня" : "доступна"
    };
  }
  function inferGrain(table) {
    var name = tableName(table);
    if (/PACKLABEL|HEADER/.test(name)) return "один пакет";
    if (/DATA|DETAIL|ROW/.test(name)) return "рядок звіту";
    if (/NSI_|DIC_/.test(name)) return "запис довідника";
    if (/_HST|HISTORY/.test(name)) return "історична версія";
    return "запис таблиці";
  }
  function inferRole(table, category) {
    if (category === "technical") return "технічна";
    if (/history|archive/.test(category) || /_HST|HISTORY/.test(tableName(table))) return "історія";
    if (category === "directories" || /^NSI_|^DIC_/.test(tableName(table))) return "довідник";
    if (/2|BRIDGE|LINK/.test(tableName(table))) return "bridge";
    return "факт";
  }
  function searchableText(table, config) {
    return [config.label, config.description, table.fullName, table.name, table.schema]
      .concat(config.tags, config.synonyms, (table.columns || []).map(function (column) { return column.name + " " + (column.label || ""); }))
      .join(" ").toLowerCase();
  }
  function search(tables, query) {
    if (!Array.isArray(tables)) {
      query = tables;
      tables = (window.SQL_SCHEMA && SQL_SCHEMA.tables) || [];
    }
    var needle = String(query || "").trim().toLowerCase();
    if (!needle) return [];
    return tables.map(function (table) {
      var config = get(table);
      var name = tableName(table).toLowerCase();
      var fullName = String(table.fullName || "").toLowerCase();
      var label = String(config.label || "").toLowerCase();
      var score = label === needle || name === needle || fullName === needle ? 1000 :
        label.indexOf(needle) === 0 || name.indexOf(needle) === 0 ? 700 : searchableText(table, config).indexOf(needle) >= 0 ? 300 : 0;
      if (!score) return null;
      var column = (table.columns || []).find(function (item) { return String(item.name).toLowerCase().indexOf(needle) >= 0; });
      var reason = column ? "колонка " + column.name : fullName.indexOf(needle) >= 0 || name.indexOf(needle) >= 0 ? "фізична назва" : label.indexOf(needle) >= 0 ? "назва" : "опис або тег";
      return { table: table, config: config, score: score, reason: reason };
    }).filter(Boolean).sort(function (a, b) {
      return b.score - a.score || b.config.priority - a.config.priority || a.config.label.localeCompare(b.config.label);
    });
  }
  window.SQL_CATALOG_UI = {
    categories: Object.keys(categories).map(function (id) { return { id: id, label: categories[id] }; }),
    categoryLabels: categories,
    tables: coreByName,
    get: get,
    search: search,
    tableName: tableName,
    schemaName: schemaName
  };
})();
