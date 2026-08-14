-- Повний RC-приклад, який відповідає готовому звіту конструктора.
-- УВАГА: перед трактуванням підсумків виконайте control-current-kved-duplicates.sql.
WITH
  person_employer_month AS (
    SELECT t6_src.year,
           t6_src.aped46_mnth,
           t6_src.kod_zo,
           t6_src.slb_im,
           t6_src.edrpou,
           t6_src.reg,
           SUM(NVL(t6_src.sum_narah, 0)) AS salary_month,
           SUM(NVL(t6_src.sum_vrah, 0)) AS salary_counted_month,
           SUM(NVL(t6_src.sum_narah_vnes, 0)) AS esv_month
    FROM vasiliuk_u.t6_2026_edrpou t6_src
    WHERE t6_src.year = 2026
      AND t6_src.aped46_mnth BETWEEN 6 AND 6
    GROUP BY t6_src.year,
             t6_src.aped46_mnth,
             t6_src.kod_zo,
             t6_src.slb_im,
             t6_src.edrpou,
             t6_src.reg
  ),
  person_month AS (
    SELECT year,
           aped46_mnth,
           kod_zo,
           reg,
           SUM(salary_month) AS salary_month,
           SUM(salary_counted_month) AS salary_counted_month,
           SUM(esv_month) AS esv_month
    FROM person_employer_month
    GROUP BY year, aped46_mnth, kod_zo, reg
  ),
  salary_population AS (
    SELECT *
    FROM person_employer_month
  )
SELECT t6.reg AS "Регіон",
       k.kvd_code AS "Код КВЕД",
       SUM(t6.salary_month) / NULLIF(COUNT(*), 0) AS "avg_monthly_salary_period"
FROM salary_population t6
JOIN ikis_ersp.pinsur_main im
  ON t6.slb_im = im.im_id
JOIN ikis_ersp.pinsur_chng_doc ih
  ON im.im_id = ih.ih_im
JOIN ikis_ersp.pinsur_kved_hst ivh
  ON ih.ih_ivh = ivh.ivh_id
JOIN ikis_ersp.pinsur_kved kv
  ON ivh.ivh_id = kv.iv_ivh
JOIN ikis_ndi.nsi_kved k
  ON kv.iv_kvd = k.kvd_id
WHERE im.im_st IN ('A', 'L')
  AND ih.ih_st_actual = 'A'
  AND kv.iv_tp = 'Y'
GROUP BY t6.reg, k.kvd_code;
