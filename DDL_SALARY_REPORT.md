# Звіт: DDL-каталог і зарплатні показники

## Імпорт DDL

| Джерело | Таблиці | Колонки | PK | FK |
|---|---:|---:|---:|---:|
| `rzo_schema_4.sql` | 112 | 1 752 | 89 | 226 |
| `rzo_schema_5.sql` | 88 | 809 | 81 | 135 |
| Разом | 200 | 2 561 | 170 | 361 |

Імпорт детермінований і не створює дублів. Ручні назви, grain, warnings, semantic presets і дефолтні маршрути не перезаписуються. Фізичний `SM_PACKLABEL.SLB_IM → PINSUR_MAIN.IM_ID` підтверджений constraint `SM_PKLBP_FK_SLB_IM`.

## Спільний місячний SQL-grain

```sql
WITH person_employer_month AS (
  SELECT year, aped46_mnth, kod_zo, slb_im, edrpou,
         SUM(NVL(sum_narah, 0)) AS salary_month,
         SUM(NVL(sum_vrah, 0)) AS salary_counted_month,
         SUM(NVL(sum_narah_vnes, 0)) AS esv_month
  FROM vasiliuk_u.t6_2026_edrpou
  GROUP BY year, aped46_mnth, kod_zo, slb_im, edrpou
), person_month AS (
  SELECT year, aped46_mnth, kod_zo,
         SUM(salary_month) AS salary_month,
         SUM(salary_counted_month) AS salary_counted_month,
         SUM(esv_month) AS esv_month
  FROM person_employer_month
  GROUP BY year, aped46_mnth, kod_zo
)
```

Для `positive_salary` після вибраного grain додається `WHERE salary_month > 0`. До місячного підсумовування цей фільтр не застосовується.

## SQL зарплатних метрик

```sql
-- avg_salary_month
SELECT year, aped46_mnth,
       SUM(salary_month) / NULLIF(COUNT(*), 0) AS avg_salary_month
FROM salary_population
GROUP BY year, aped46_mnth;

-- avg_monthly_salary_period
SELECT SUM(salary_month) / NULLIF(COUNT(*), 0) AS avg_monthly_salary_period
FROM salary_population;

-- avg_monthly_salary_year
SELECT year,
       SUM(salary_month) / NULLIF(COUNT(*), 0) AS avg_monthly_salary_year
FROM salary_population
GROUP BY year;

-- avg_annual_salary; дозволено лише для місяців 1–12
SELECT year,
       12 * SUM(salary_month) / NULLIF(COUNT(*), 0) AS avg_annual_salary
FROM salary_population
GROUP BY year;

-- avg_annual_income_per_person
WITH person_year AS (
  SELECT year, kod_zo, SUM(salary_month) AS salary_year
  FROM person_month
  GROUP BY year, kod_zo
)
SELECT year,
       SUM(salary_year) / NULLIF(COUNT(*), 0) AS avg_annual_income_per_person
FROM person_year
GROUP BY year;
```

Конструктор вставляє перед цими фінальними SELECT повні CTE, вибрані фільтри, semantic mode та безпечні JOIN.

## Приклади

Особа A: січень 10 000, лютий 20 000. Особа B: січень 30 000.

- січень: `(10 000 + 30 000) / 2 = 20 000`;
- лютий: `20 000 / 1 = 20 000`;
- січень–лютий: `60 000 / 3 людино-місяці = 20 000`;
- дохід за період на унікальну особу: `60 000 / 2 = 30 000`.

Якщо A має двох роботодавців у січні, `person_month` рахує A один раз і підсумовує обидві зарплати. `person_employer_month` створює дві одиниці зайнятості. Для підприємства або КВЕД використовується другий рівень; довідники приєднуються після цього CTE лише в режимі `current` або в явно підтвердженому `all_history` з попередженням про fanout. Режим станом на дату ще не реалізований.

## Невирішені зовнішні посилання

У DDL є 133 FK до 47 таблиць, DDL яких немає у двох нових файлах:

```text
IKIS_AGGREGATE.WH_TAB_DICTIONARY
IKIS_ERS.INSUR_FILE
IKIS_NDI.NSI_BANK
IKIS_NDI.NSI_BANK_FEE
IKIS_NDI.NSI_BUSINESS_ST
IKIS_NDI.NSI_DATA_SOURCE
IKIS_NDI.NSI_DICT_MODIF
IKIS_NDI.NSI_FIN_TP
IKIS_NDI.NSI_FUND
IKIS_NDI.NSI_INSURER_RISK_LEVEL_CVWI
IKIS_NDI.NSI_INSURERCAT
IKIS_NDI.NSI_KOATUU
IKIS_NDI.NSI_KOPFG
IKIS_NDI.NSI_KVED
IKIS_NDI.NSI_MINISTRY
IKIS_NDI.NSI_MNG_FORM
IKIS_NDI.NSI_MRD_REASON_STOP
IKIS_NDI.NSI_OPF_CODE
IKIS_NDI.NSI_PROP_FORM
IKIS_NDI.NSI_PRSN_DOCTP
IKIS_NDI.NSI_REASON_BREAK
IKIS_NDI.NSI_REASON_STOP
IKIS_NDI.NSI_REG_ORG
IKIS_NDI.NSI_REGION_UKR
IKIS_NDI.NSI_RISK_CODE
IKIS_NDI.NSI_TAXATION
IKIS_NDI.NSI_VOL_INSURER
IKIS_NDI.NSI_ZO_TARIFF
IKIS_PERSON.INSURED_PERSON
IKIS_PERSON.LOAD_FILE_DATA
IKIS_PERSON.PERSON_ESV_LINK
IKIS_SYS.MRDORG
IKIS_SYS.OPFU
IKIS_SYSWEB.W_USERS
IKIS_WEBSM.CDE_PCASH
IKIS_WEBSM.CDE_SM
IKIS_WEBSM.LINKED_DOCS_FILE
IKIS_WEBSM.NSI_CHANGE_STATE_STAUS
IKIS_WEBSM.NSI_CHANGE_STATE_TYPE
IKIS_WEBSM.NSI_DFS_DOC_TYPE
IKIS_WEBSM.NSI_TYPE5_TABLE_TYPE
IKIS_WEBSM.SK_APEQ_DODATOK1_DATA
IKIS_WEBSM.SK_APEQ_DODATOK2_DATA
IKIS_WEBSM.SK_APEQ_DODATOK3_DATA
IKIS_WEBSM.SK_APEQ_DODATOK5_DATA
IKIS_WEBSM.SK_APEQ_DODATOK6_DATA
IKIS_WEBSM.SK_PACKLABEL
```

Кожен конкретний constraint доступний у `SQL_SCHEMA.physicalCatalog.joins` з `unresolvedExternal: true`.

## Відкриті бізнес-неоднозначності

1. DDL не визначає, який історичний КВЕД або адреса є правильним на довільну дату. Реалізовані режими: `current` і явно підтверджений `all_history`; режим станом на дату ще не реалізований. `latest` не є окремим semantic mode.
2. `reported` та `positive_salary` дають різні знаменники; конструктор вимагає явний вибір і показує його у поясненні.
3. `avg_annual_salary` потребує повного календарного року. Для неповного року окремий показник «річний еквівалент» ще не визначений.
4. Робоча T6 уже містить підсумовані суми зі сторнуванням. Для прямого розрахунку з сирої APE 4-6 потрібен окремий salary source adapter із підтвердженим grain.
5. `all_history` для адитивної зарплати не дозволений без окремого явного підтвердження користувача.
