(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.SQLWizardState = api;
})(typeof self !== "undefined" ? self : this, function () {
  function forStep(state, step) {
    const result = Object.assign({}, state);
    if (step < 4) {
      result.filters = [];
      result.latestPersonOnly = false;
      result.parallel8 = false;
    }
    if (step < 3) {
      result.fields = [];
      result.orderBy = [];
      result.metrics = [];
      result.salaryGrain = "person_month";
      result.salaryPopulationRule = "reported";
    }
    if (step < 2) {
      result.joins = [];
      result.presets = [];
      result.mode = "select";
      result.targetTable = "work_result";
    }
    return result;
  }
  return { forStep: forStep };
});
