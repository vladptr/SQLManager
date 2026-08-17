-- RC control: current main KVED duplicates, June 2026. No ROW_NUMBER or invented priority.
WITH current_kved_rows AS (
  SELECT im.im_id, ankt.ian_numident AS edrpou, k.kvd_code
  FROM ikis_ersp.pinsur_main im
  JOIN ikis_ersp.pinsur_chng_doc ih ON ih.ih_im = im.im_id
  LEFT JOIN ikis_ersp.pinsur_ankt_a ankt ON ankt.ian_id = ih.ih_ian
  JOIN ikis_ersp.pinsur_kved_hst ivh ON ivh.ivh_id = ih.ih_ivh
  JOIN ikis_ersp.pinsur_kved kv ON kv.iv_ivh = ivh.ivh_id
  JOIN ikis_ndi.nsi_kved k ON k.kvd_id = kv.iv_kvd
  WHERE im.im_st IN ('A', 'L') AND ih.ih_st_actual = 'A' AND kv.iv_tp = 'Y'
), kved_counts AS (
  SELECT im_id, COUNT(*) AS physical_join_multiplicity,
         COUNT(DISTINCT kvd_code) AS distinct_kved_count
  FROM current_kved_rows GROUP BY im_id HAVING COUNT(*) > 1
)
SELECT COUNT(*) AS insurers_with_multiple_current_kved,
       MAX(physical_join_multiplicity) AS max_physical_join_multiplicity,
       MAX(distinct_kved_count) AS max_distinct_kved_count
FROM kved_counts;

WITH current_kved_rows AS (
  SELECT im.im_id, ankt.ian_numident AS edrpou, k.kvd_code
  FROM ikis_ersp.pinsur_main im
  JOIN ikis_ersp.pinsur_chng_doc ih ON ih.ih_im = im.im_id
  LEFT JOIN ikis_ersp.pinsur_ankt_a ankt ON ankt.ian_id = ih.ih_ian
  JOIN ikis_ersp.pinsur_kved_hst ivh ON ivh.ivh_id = ih.ih_ivh
  JOIN ikis_ersp.pinsur_kved kv ON kv.iv_ivh = ivh.ivh_id
  JOIN ikis_ndi.nsi_kved k ON k.kvd_id = kv.iv_kvd
  WHERE im.im_st IN ('A', 'L') AND ih.ih_st_actual = 'A' AND kv.iv_tp = 'Y'
), counts AS (
  SELECT im_id, COUNT(*) physical_join_multiplicity, COUNT(DISTINCT kvd_code) distinct_kved_count
  FROM current_kved_rows GROUP BY im_id HAVING COUNT(*) > 1
), distinct_kved AS (
  SELECT DISTINCT im_id, kvd_code FROM current_kved_rows
), kved_lists AS (
  SELECT im_id, LISTAGG(kvd_code, ', ') WITHIN GROUP (ORDER BY kvd_code) distinct_kved_list
  FROM distinct_kved GROUP BY im_id
), distinct_edrpou AS (
  SELECT DISTINCT im_id, edrpou FROM current_kved_rows WHERE edrpou IS NOT NULL
), edrpou_lists AS (
  SELECT im_id, COUNT(*) distinct_edrpou_count,
         LISTAGG(edrpou, ', ') WITHIN GROUP (ORDER BY edrpou) edrpou_list
  FROM distinct_edrpou GROUP BY im_id
), t6_june AS (
  SELECT t6.slb_im, t6.kod_zo, SUM(NVL(t6.sum_narah, 0)) salary_month
  FROM vasiliuk_u.t6_2026_edrpou t6
  WHERE t6.year = 2026 AND t6.aped46_mnth = 6
  GROUP BY t6.slb_im, t6.kod_zo
), t6_by_insurer AS (
  SELECT slb_im, COUNT(*) affected_person_employer_months,
         COUNT(DISTINCT kod_zo) affected_unique_persons, SUM(salary_month) affected_salary
  FROM t6_june GROUP BY slb_im
)
SELECT c.im_id AS slb_im, c.im_id, NVL(e.distinct_edrpou_count, 0) distinct_edrpou_count,
       e.edrpou_list, c.physical_join_multiplicity, c.distinct_kved_count,
       l.distinct_kved_list, NVL(t.affected_person_employer_months, 0) affected_person_employer_months,
       NVL(t.affected_unique_persons, 0) affected_unique_persons,
       NVL(t.affected_salary, 0) affected_salary,
       NVL(t.affected_salary, 0) * (c.physical_join_multiplicity - 1) potentially_duplicated_salary
FROM counts c
LEFT JOIN kved_lists l ON l.im_id = c.im_id
LEFT JOIN edrpou_lists e ON e.im_id = c.im_id
LEFT JOIN t6_by_insurer t ON t.slb_im = c.im_id
ORDER BY potentially_duplicated_salary DESC, c.im_id;
