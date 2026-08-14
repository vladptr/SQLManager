-- RC reconciliation: June 2026. No deduplication or invented KVED priority.
-- Result 1 classifies the T6 base with a LEFT JOIN, separating missing and fanout.
WITH person_employer_month AS (
  SELECT t6.slb_im, t6.kod_zo, SUM(NVL(t6.sum_narah, 0)) AS salary_month
  FROM vasiliuk_u.t6_2026_edrpou t6
  WHERE t6.year = 2026 AND t6.aped46_mnth = 6
  GROUP BY t6.slb_im, t6.kod_zo
), current_kved_rows AS (
  SELECT im.im_id, k.kvd_code
  FROM ikis_ersp.pinsur_main im
  JOIN ikis_ersp.pinsur_chng_doc ih ON ih.ih_im = im.im_id
  JOIN ikis_ersp.pinsur_kved_hst ivh ON ivh.ivh_id = ih.ih_ivh
  JOIN ikis_ersp.pinsur_kved kv ON kv.iv_ivh = ivh.ivh_id
  JOIN ikis_ndi.nsi_kved k ON k.kvd_id = kv.iv_kvd
  WHERE im.im_st IN ('A', 'L') AND ih.ih_st_actual = 'A' AND kv.iv_tp = 'Y'
), current_kved_count AS (
  SELECT im_id,
         COUNT(*) AS physical_join_multiplicity,
         COUNT(DISTINCT kvd_code) AS distinct_kved_count
  FROM current_kved_rows
  GROUP BY im_id
), classified AS (
  SELECT b.*, NVL(k.physical_join_multiplicity, 0) AS kved_multiplicity,
         NVL(k.distinct_kved_count, 0) AS distinct_kved_count
  FROM person_employer_month b
  LEFT JOIN current_kved_count k ON k.im_id = b.slb_im
)
SELECT SUM(salary_month) AS payroll_t6_before_join,
       SUM(CASE WHEN kved_multiplicity = 1 THEN salary_month ELSE 0 END) AS payroll_exactly_one_current_kved,
       SUM(CASE WHEN kved_multiplicity = 0 THEN salary_month ELSE 0 END) AS payroll_without_current_kved,
       SUM(CASE WHEN kved_multiplicity > 1 THEN salary_month ELSE 0 END) AS payroll_multiple_current_kved,
       SUM(CASE WHEN kved_multiplicity > 1 THEN salary_month * (kved_multiplicity - 1) ELSE 0 END) AS additional_payroll_from_fanout,
       SUM(CASE WHEN kved_multiplicity > 0 THEN salary_month * kved_multiplicity ELSE 0 END) AS payroll_after_actual_inner_join,
       COUNT(DISTINCT CASE WHEN kved_multiplicity = 0 THEN slb_im END) AS unmatched_insurers,
       SUM(CASE WHEN kved_multiplicity = 0 THEN 1 ELSE 0 END) AS unmatched_person_employer_months,
       COUNT(DISTINCT CASE WHEN kved_multiplicity > 1 THEN slb_im END) AS duplicated_insurers,
       SUM(CASE WHEN kved_multiplicity > 1 THEN 1 ELSE 0 END) AS duplicated_person_employer_months
FROM classified;

-- Result 2 compares all requested measures before and after the physical INNER JOIN.
WITH person_employer_month AS (
  SELECT t6.slb_im, t6.kod_zo, SUM(NVL(t6.sum_narah, 0)) AS salary_month
  FROM vasiliuk_u.t6_2026_edrpou t6
  WHERE t6.year = 2026 AND t6.aped46_mnth = 6
  GROUP BY t6.slb_im, t6.kod_zo
), current_kved_rows AS (
  SELECT im.im_id, k.kvd_code
  FROM ikis_ersp.pinsur_main im
  JOIN ikis_ersp.pinsur_chng_doc ih ON ih.ih_im = im.im_id
  JOIN ikis_ersp.pinsur_kved_hst ivh ON ivh.ivh_id = ih.ih_ivh
  JOIN ikis_ersp.pinsur_kved kv ON kv.iv_ivh = ivh.ivh_id
  JOIN ikis_ndi.nsi_kved k ON k.kvd_id = kv.iv_kvd
  WHERE im.im_st IN ('A', 'L') AND ih.ih_st_actual = 'A' AND kv.iv_tp = 'Y'
), actual_join AS (
  SELECT b.*, k.kvd_code FROM person_employer_month b
  JOIN current_kved_rows k ON k.im_id = b.slb_im
), measures AS (
  SELECT 'BEFORE_KVED' stage, COUNT(*) person_employer_months,
         COUNT(DISTINCT kod_zo) unique_persons, COUNT(DISTINCT slb_im) insurers,
         SUM(salary_month) payroll, SUM(salary_month) / NULLIF(COUNT(*), 0) avg_monthly_salary
  FROM person_employer_month
  UNION ALL
  SELECT 'AFTER_PHYSICAL_INNER_JOIN', COUNT(*), COUNT(DISTINCT kod_zo),
         COUNT(DISTINCT slb_im), SUM(salary_month), SUM(salary_month) / NULLIF(COUNT(*), 0)
  FROM actual_join
)
SELECT * FROM measures
UNION ALL
SELECT 'DIFFERENCE_AFTER_MINUS_BEFORE',
       a.person_employer_months - b.person_employer_months,
       a.unique_persons - b.unique_persons, a.insurers - b.insurers,
       a.payroll - b.payroll, a.avg_monthly_salary - b.avg_monthly_salary
FROM measures a CROSS JOIN measures b
WHERE a.stage = 'AFTER_PHYSICAL_INNER_JOIN' AND b.stage = 'BEFORE_KVED';
