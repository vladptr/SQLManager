window.TemplateUtils = (function () {
  function clamp(value, min, max, fallback) {
    const number = Number(value);
    if (!Number.isFinite(number)) return fallback;
    return Math.min(max, Math.max(min, Math.trunc(number)));
  }

  function normalize(settings) {
    const firstYear = clamp(settings.yearStart, 2000, 2100, 2022);
    const secondYear = clamp(settings.yearEnd, 2000, 2100, firstYear);
    const firstMonth = clamp(settings.monthStart, 1, 12, 1);
    const secondMonth = clamp(settings.monthEnd, 1, 12, firstMonth);
    return {
      yearStart: Math.min(firstYear, secondYear),
      yearEnd: Math.max(firstYear, secondYear),
      monthStart: Math.min(firstMonth, secondMonth),
      monthEnd: Math.max(firstMonth, secondMonth),
      otk: ["1", "0"].includes(String(settings.otk)) ? String(settings.otk) : "any",
    };
  }

  function apply(sql, settings) {
    const value = normalize(settings);
    const otkCondition = value.otk === "any" ? "" : `AND pd.aped46_otk = ${value.otk}`;
    return sql
      .replace(/\{\{YEAR_START\}\}/g, String(value.yearStart))
      .replace(/\{\{YEAR_END\}\}/g, String(value.yearEnd))
      .replace(/\{\{MONTH_START\}\}/g, String(value.monthStart).padStart(2, "0"))
      .replace(/\{\{MONTH_END\}\}/g, String(value.monthEnd).padStart(2, "0"))
      .replace(/\{\{APED46_OTK_CONDITION\}\}/g, otkCondition);
  }

  return { apply, normalize };
})();
