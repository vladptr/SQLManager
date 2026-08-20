(function () {
  "use strict";
  var API_BASE = "";
  var connected = false;
  var exportBusy = false;
  var activeJobId = null;
  var pollTimer = null;
  var POLL_MS = typeof window.__SQLMANAGER_POLL_MS === "number" ? window.__SQLMANAGER_POLL_MS : 2000;

  function byId(id) { return document.getElementById(id); }
  function sleep(ms) { return new Promise(function (resolve) { setTimeout(resolve, ms); }); }

  function setStatus(message, kind) {
    var status = byId("oracle-export-status");
    var dot = byId("oracle-health-dot");
    if (status) status.textContent = message;
    if (dot) dot.className = "oracle-health-dot" + (kind ? " " + kind : "");
  }

  function setConnected(value) {
    connected = value === true;
    var button = byId("btn-oracle-export");
    if (button && !exportBusy) button.disabled = !connected;
  }

  function errorMessage(error) {
    return String(error && error.message ? error.message : error || "Невідома помилка");
  }

  function isGeneratedSqlValid() {
    var output = byId("sql-out");
    var status = byId("sql-status");
    return !!(output && output.value.trim() && !(status && status.classList.contains("error")));
  }

  function formatElapsed(seconds) {
    var total = Math.max(0, Number(seconds) || 0);
    if (total < 60) return total + " с";
    var minutes = Math.floor(total / 60);
    var rest = total % 60;
    return minutes + " хв " + rest + " с";
  }

  async function fetchJson(url, options) {
    var response = await window.fetch(url, options);
    var data = {};
    try { data = await response.json(); } catch (ignore) { data = {}; }
    if (!response.ok) {
      throw new Error(data.error || ("HTTP " + response.status));
    }
    return data;
  }

  async function checkHealth(full) {
    if (exportBusy) return { ok: connected };
    var suffix = full ? "?full=1" : "";
    if (!full) setStatus("Перевіряю підключення…", "");
    try {
      var data = await fetchJson(API_BASE + "/api/health" + suffix, { method: "GET", cache: "no-store" });
      if (!data.ok) throw new Error(data.error || "Oracle недоступний");
      setConnected(true);
      if (data.mode === "busy") {
        setStatus("Oracle: " + (data.user || "користувач") + " @ " + (data.connection || "Oracle") + ". Запит виконується.", "connected");
      } else if (data.oracleChecked) {
        setStatus("Oracle підключено: " + (data.user || "користувач") + " @ " + (data.connection || "Oracle"), "connected");
      } else {
        setStatus("Програма готова. Oracle: " + (data.user || "користувач") + " @ " + (data.connection || "Oracle"), "connected");
      }
      return data;
    } catch (error) {
      setConnected(false);
      setStatus("Oracle недоступний. Перевірте cred/auth3.json і мережу до бази.", "error");
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
    link.href = url;
    link.download = name;
    document.body.appendChild(link);
    link.click();
    link.remove();
    URL.revokeObjectURL(url);
  }

  function setExportBusy(value) {
    exportBusy = value === true;
    var exportButton = byId("btn-oracle-export");
    var cancelButton = byId("btn-oracle-cancel");
    var healthButton = byId("btn-oracle-health");
    if (exportButton) exportButton.disabled = exportBusy || !connected;
    if (cancelButton) cancelButton.disabled = !exportBusy;
    if (healthButton) healthButton.disabled = exportBusy;
  }

  async function waitForJob(jobId) {
    while (true) {
      var status = await fetchJson(API_BASE + "/api/query/status?jobId=" + encodeURIComponent(jobId), { method: "GET", cache: "no-store" });
      if (status.status === "running") {
        setStatus("Виконую запит… " + formatElapsed(status.elapsedSeconds), "connected");
        await sleep(POLL_MS);
        continue;
      }
      if (status.status === "completed") return status;
      throw new Error(status.error || "Запит не завершився успішно.");
    }
  }

  async function exportQuery() {
    var sql = (byId("sql-out") && byId("sql-out").value || "").trim();
    var format = byId("oracle-export-format") && byId("oracle-export-format").value === "csv" ? "csv" : "xlsx";
    if (!isGeneratedSqlValid()) {
      setStatus("Спочатку побудуйте коректний SQL без помилок.", "error");
      return false;
    }
    setExportBusy(true);
    activeJobId = null;
    setStatus("Запускаю запит…", "connected");
    try {
      var started = await fetchJson(API_BASE + "/api/query/export", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ sql: sql, format: format })
      });
      activeJobId = started.jobId;
      await waitForJob(activeJobId);
      var response = await window.fetch(API_BASE + "/api/query/download?jobId=" + encodeURIComponent(activeJobId), { method: "GET", cache: "no-store" });
      if (!response.ok) {
        var payload = {};
        try { payload = await response.json(); } catch (ignore) { payload = {}; }
        throw new Error(payload.error || "Не вдалося завантажити результат.");
      }
      var blob = await response.blob();
      var name = fileName(response.headers.get("Content-Disposition"), format);
      downloadBlob(blob, name);
      var truncated = response.headers.get("X-SQLManager-Truncated") === "true";
      var maxRows = response.headers.get("X-SQLManager-Max-Rows") || "100000";
      setStatus(
        truncated
          ? "Готово. Результат обмежено першими " + maxRows + " рядками: " + name
          : "Готово. Завантажено " + name,
        truncated ? "error" : "connected"
      );
      activeJobId = null;
      return true;
    } catch (error) {
      setStatus("Помилка Oracle: " + errorMessage(error), "error");
      return false;
    } finally {
      activeJobId = null;
      setExportBusy(false);
      if (pollTimer) { clearInterval(pollTimer); pollTimer = null; }
    }
  }

  async function cancelQuery() {
    setStatus("Зупиняю запит…", "error");
    try {
      var body = activeJobId ? JSON.stringify({ jobId: activeJobId }) : "{}";
      await fetchJson(API_BASE + "/api/query/cancel", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: body
      });
      activeJobId = null;
      setExportBusy(false);
      setStatus("Запит зупинено.", "error");
      return true;
    } catch (error) {
      setStatus("Помилка зупинки: " + errorMessage(error), "error");
      return false;
    }
  }

  function init() {
    if (document.body && new URLSearchParams(window.location.search).get("app") === "1") {
      document.body.classList.add("app-mode");
      document.title = "SQLManager";
    }
    var exportButton = byId("btn-oracle-export");
    var cancelButton = byId("btn-oracle-cancel");
    var healthButton = byId("btn-oracle-health");
    if (exportButton) exportButton.addEventListener("click", exportQuery);
    if (cancelButton) cancelButton.addEventListener("click", cancelQuery);
    if (healthButton) healthButton.addEventListener("click", function () { checkHealth(true); });
    checkHealth(false);
  }

  document.addEventListener("DOMContentLoaded", init);
  window.SQLManagerOracleExport = {
    checkHealth: checkHealth,
    exportQuery: exportQuery,
    cancelQuery: cancelQuery,
    isGeneratedSqlValid: isGeneratedSqlValid
  };
})();
