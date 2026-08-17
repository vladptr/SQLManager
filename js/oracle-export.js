(function () {
  "use strict";
  var API_BASE = location.protocol === "file:" ? "http://127.0.0.1:8787" : "";
  var connected = false;
  function byId(id) { return document.getElementById(id); }
  function setStatus(message, kind) {
    var status = byId("oracle-export-status");
    var dot = byId("oracle-health-dot");
    if (status) status.textContent = message;
    if (dot) dot.className = "oracle-health-dot" + (kind ? " " + kind : "");
  }
  function setConnected(value) {
    connected = value === true;
    var button = byId("btn-oracle-export");
    if (button && !button.dataset.busy) button.disabled = !connected;
  }
  function errorMessage(error) { return String(error && error.message ? error.message : error || "Невідома помилка"); }
  function isGeneratedSqlValid() {
    var output = byId("sql-out");
    var status = byId("sql-status");
    return !!(output && output.value.trim() && !(status && status.classList.contains("error")));
  }
  async function checkHealth() {
    setStatus("Перевіряю локальне підключення…", "");
    try {
      var response = await window.fetch(API_BASE + "/api/health", { method: "GET", cache: "no-store" });
      var data = await response.json();
      if (!response.ok || !data.ok) throw new Error(data.error || "Oracle недоступний");
      setConnected(true);
      setStatus("Oracle підключено: " + (data.user || "користувач") + " @ " + (data.connection || "Oracle"), "connected");
      return data;
    } catch (error) {
      setConnected(false);
      setStatus("Oracle не підключено. Запустіть start.bat на машині з доступом до Oracle.", "error");
      return { ok: false, error: errorMessage(error) };
    }
  }
  function fileName(header, format) {
    var match = header && /filename\*?=(?:UTF-8'')?"?([^";]+)/i.exec(header);
    if (match) {
      try { return decodeURIComponent(match[1].replace(/"/g, "")); } catch (ignore) { return match[1]; }
    }
    return "sqlmanager_" + new Date().toISOString().replace(/[-:T]/g, "").slice(0, 14) + "." + format;
  }
  function downloadBlob(blob, name) {
    var url = URL.createObjectURL(blob);
    var link = document.createElement("a");
    link.href = url; link.download = name;
    document.body.appendChild(link); link.click(); link.remove();
    URL.revokeObjectURL(url);
  }
  async function exportQuery() {
    var button = byId("btn-oracle-export");
    var cancelButton = byId("btn-oracle-cancel");
    var sql = (byId("sql-out") && byId("sql-out").value || "").trim();
    var format = byId("oracle-export-format") && byId("oracle-export-format").value === "csv" ? "csv" : "xlsx";
    if (!isGeneratedSqlValid()) {
      setStatus("Спочатку побудуйте коректний SQL без помилок.", "error");
      return false;
    }
    if (button) { button.dataset.busy = "1"; button.disabled = true; }
    if (cancelButton) cancelButton.disabled = false;
    setStatus("Виконую запит…", "connected");
    try {
      var response = await window.fetch(API_BASE + "/api/query/export", {
        method: "POST", headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ sql: sql, format: format })
      });
      if (!response.ok) {
        var message;
        try { message = (await response.json()).error; } catch (ignore) { message = await response.text(); }
        throw new Error(message || "Помилка виконання Oracle");
      }
      var blob = await response.blob();
      var name = fileName(response.headers.get("Content-Disposition"), format);
      downloadBlob(blob, name);
      var truncated = response.headers.get("X-SQLManager-Truncated") === "true";
      var maxRows = response.headers.get("X-SQLManager-Max-Rows") || "100000";
      setStatus(truncated ? "Готово. Результат обмежено першими " + maxRows + " рядками: " + name : "Готово. Завантажено " + name, truncated ? "error" : "connected");
      return true;
    } catch (error) {
      setStatus("Помилка Oracle: " + errorMessage(error), "error");
      return false;
    } finally {
      if (button) { delete button.dataset.busy; button.disabled = !connected; }
      if (cancelButton) cancelButton.disabled = true;
    }
  }
  async function cancelQuery() {
    var cancelButton = byId("btn-oracle-cancel");
    if (cancelButton) cancelButton.disabled = true;
    setStatus("Зупиняю запит…", "error");
    try {
      var response = await window.fetch(API_BASE + "/api/query/cancel", { method: "POST" });
      var data = await response.json();
      if (!response.ok || !data.ok) throw new Error(data.error || "Не вдалося зупинити запит");
      setStatus("Запит зупинено.", "error");
      return true;
    } catch (error) {
      setStatus("Помилка зупинки: " + errorMessage(error), "error");
      return false;
    }
  }
  function init() {
    var exportButton = byId("btn-oracle-export");
    var cancelButton = byId("btn-oracle-cancel");
    var healthButton = byId("btn-oracle-health");
    if (exportButton) exportButton.addEventListener("click", exportQuery);
    if (cancelButton) cancelButton.addEventListener("click", cancelQuery);
    if (healthButton) healthButton.addEventListener("click", checkHealth);
    checkHealth();
  }
  document.addEventListener("DOMContentLoaded", init);
  window.SQLManagerOracleExport = { checkHealth: checkHealth, exportQuery: exportQuery, cancelQuery: cancelQuery, isGeneratedSqlValid: isGeneratedSqlValid };
})();
