(function (root) {
  function median(values) {
    if (!values.length) return null;
    const sorted = values.slice().sort(function (a, b) { return a - b; });
    const middle = Math.floor(sorted.length / 2);
    return sorted.length % 2 ? sorted[middle] : (sorted[middle - 1] + sorted[middle]) / 2;
  }
  function aggregate(rows, keys) {
    const values = {};
    rows.forEach(function (row) {
      const key = keys.map(function (name) { return row[name]; }).join("|");
      if (!values[key]) values[key] = Object.assign({}, row, { salary: 0 });
      values[key].salary += row.salary;
    });
    return Object.keys(values).map(function (key) { return values[key]; });
  }
  function metrics(rows, grain) {
    const employerMonths = aggregate(rows, ["year", "month", "person", "employer"]);
    const population = grain === "person_employer_month" ? employerMonths : aggregate(employerMonths, ["year", "month", "person"]);
    const salaries = population.map(function (row) { return row.salary; });
    const total = salaries.reduce(function (sum, value) { return sum + value; }, 0);
    const personYears = aggregate(population, ["year", "person"]);
    const annualIncome = personYears.reduce(function (sum, row) { return sum + row.salary; }, 0) / personYears.length;
    const average = total / population.length;
    return {
      avg_salary_month: average,
      avg_monthly_salary_period: average,
      median_monthly_salary_period: median(salaries),
      avg_monthly_salary_year: average,
      avg_annual_salary: 12 * average,
      avg_annual_income_per_person: annualIncome
    };
  }
  const six = [1, 2, 3, 4, 5, 6].map(function (month) { return { year: 2026, month, person: "P1", employer: "E1", salary: 100 }; });
  const cases = [
    { id: "one_person_one_employer_six_months", rows: six, grain: "person_month", expected: { avg_salary_month: 100, avg_monthly_salary_period: 100, median_monthly_salary_period: 100, avg_monthly_salary_year: 100, avg_annual_salary: 1200, avg_annual_income_per_person: 600 } },
    { id: "one_person_two_employers", rows: [{ year: 2026, month: 6, person: "P1", employer: "E1", salary: 100 }, { year: 2026, month: 6, person: "P1", employer: "E2", salary: 300 }], grain: "person_month", expected: { avg_salary_month: 400, avg_monthly_salary_period: 400, median_monthly_salary_period: 400, avg_monthly_salary_year: 400, avg_annual_salary: 4800, avg_annual_income_per_person: 400 }, employerGrainExpected: { avg_salary_month: 200, avg_monthly_salary_period: 200, median_monthly_salary_period: 200, avg_monthly_salary_year: 200, avg_annual_salary: 2400, avg_annual_income_per_person: 400 } },
    { id: "zero_salary", rows: [{ year: 2026, month: 6, person: "P1", employer: "E1", salary: 0 }], grain: "person_month", expected: { avg_salary_month: 0, avg_monthly_salary_period: 0, median_monthly_salary_period: 0, avg_monthly_salary_year: 0, avg_annual_salary: 0, avg_annual_income_per_person: 0 } },
    { id: "negative_reversal", rows: [{ year: 2026, month: 6, person: "P1", employer: "E1", salary: 100 }, { year: 2026, month: 6, person: "P1", employer: "E1", salary: -20 }], grain: "person_month", expected: { avg_salary_month: 80, avg_monthly_salary_period: 80, median_monthly_salary_period: 80, avg_monthly_salary_year: 80, avg_annual_salary: 960, avg_annual_income_per_person: 80 } },
    { id: "two_current_kved", rows: [{ year: 2026, month: 6, person: "P1", employer: "E_DUP", salary: 500 }], grain: "person_employer_month", currentKved: ["01.11", "02.20"], expected: { avg_salary_month: 500, avg_monthly_salary_period: 500, median_monthly_salary_period: 500, avg_monthly_salary_year: 500, avg_annual_salary: 6000, avg_annual_income_per_person: 500 }, expectedPayrollBeforeKved: 500, expectedPayrollAfterNaiveKvedJoin: 1000 }
  ];
  root.SalaryControlDataset = { cases: cases, metrics: metrics };
})(typeof window !== "undefined" ? window : this);
