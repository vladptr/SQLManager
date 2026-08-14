(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.SQLPresetStore = api;
})(typeof self !== "undefined" ? self : this, function () {
  const STORAGE_KEY = "sqlmanager.user-presets.v1";
  const SCHEMA_VERSION = 2;
  const STATE_KEYS = [
    "tables", "joins", "fields", "filters", "orderBy", "metrics", "presets",
    "latestPersonOnly", "parallel8", "salaryGrain", "salaryPopulationRule",
    "mode", "targetTable", "semanticMode", "allHistoryConfirmed",
    "qualityProfiles", "taskId", "taskParameters", "t6Years", "t6MonthFrom", "t6MonthTo", "t6Region"
  ];

  function clone(value) { return JSON.parse(JSON.stringify(value)); }
  function snapshot(state) {
    const result = { schemaVersion: SCHEMA_VERSION };
    STATE_KEYS.forEach(function (key) {
      if (state[key] !== undefined) result[key] = clone(state[key]);
    });
    return result;
  }
  function list(storage) {
    try {
      const parsed = JSON.parse(storage.getItem(STORAGE_KEY) || "[]");
      return Array.isArray(parsed) ? parsed.filter(function (item) {
        return item && typeof item.id === "string" && typeof item.name === "string" && item.state;
      }).map(migrate) : [];
    } catch (error) { return []; }
  }
  function migrate(item) {
    const copy = clone(item);
    copy.state = copy.state || {};
    if (!copy.state.schemaVersion) {
      copy.state.schemaVersion = SCHEMA_VERSION;
      copy.state.semanticMode = (copy.state.presets || []).includes("current_insurer_profile") ? "current" : "all_history";
      copy.state.allHistoryConfirmed = false;
      copy.state.qualityProfiles = copy.state.qualityProfiles || [];
    }
    return copy;
  }
  function exportJson(storage) {
    return JSON.stringify({ schemaVersion: SCHEMA_VERSION, presets: list(storage) }, null, 2);
  }
  function importJson(storage, text, validator) {
    const payload = JSON.parse(text);
    if (!payload || payload.schemaVersion !== SCHEMA_VERSION || !Array.isArray(payload.presets)) throw new Error("Несумісна версія файлу пресетів.");
    const imported = payload.presets.map(migrate).filter(function (item) { return item && item.id && item.name && item.state && (!validator || validator(item.state)); });
    write(storage, imported);
    return imported.length;
  }
  function write(storage, items) { storage.setItem(STORAGE_KEY, JSON.stringify(items)); }
  function save(storage, name, state) {
    const cleanName = String(name || "").trim();
    if (!cleanName) throw new Error("Вкажіть назву пресета.");
    if (cleanName.length > 80) throw new Error("Назва пресета має містити не більше 80 символів.");
    const items = list(storage);
    const folded = cleanName.toLocaleLowerCase("uk");
    const existing = items.find(function (item) { return item.name.toLocaleLowerCase("uk") === folded; });
    const preset = {
      id: existing ? existing.id : "preset-" + Date.now() + "-" + Math.random().toString(36).slice(2, 9),
      name: cleanName,
      updatedAt: new Date().toISOString(),
      state: snapshot(state)
    };
    if (existing) items[items.indexOf(existing)] = preset; else items.push(preset);
    write(storage, items);
    return clone(preset);
  }
  function remove(storage, id) {
    const items = list(storage);
    const next = items.filter(function (item) { return item.id !== id; });
    write(storage, next);
    return next.length !== items.length;
  }
  function get(storage, id) {
    const item = list(storage).find(function (preset) { return preset.id === id; });
    return item ? clone(item) : null;
  }
  return { STORAGE_KEY: STORAGE_KEY, SCHEMA_VERSION: SCHEMA_VERSION, snapshot: snapshot, list: list, save: save, remove: remove, get: get, migrate: migrate, exportJson: exportJson, importJson: importJson };
});
