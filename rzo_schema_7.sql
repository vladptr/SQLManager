--------------------------------------------------------
--  File created - четвер-серпня-13-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NDI_KATOTTG
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NDI_KATOTTG" 
   (	"KAOT_ID" NUMBER(14,0), 
	"KAOT_KAOT_L1" NUMBER(14,0), 
	"KAOT_KAOT_L2" NUMBER(14,0), 
	"KAOT_KAOT_L3" NUMBER(14,0), 
	"KAOT_KAOT_L4" NUMBER(14,0), 
	"KAOT_KAOT_L5" NUMBER(14,0), 
	"KAOT_CODE" VARCHAR2(20), 
	"KAOT_TP" VARCHAR2(10), 
	"KAOT_NAME" VARCHAR2(250), 
	"KAOT_START_DT" DATE, 
	"KAOT_STOP_DT" DATE, 
	"KAOT_ST" VARCHAR2(10), 
	"KAOT_KOATUU" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_ZO_CAT
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_ZO_CAT" 
   (	"ZO_ID" NUMBER(3,0), 
	"ZO_CODE" VARCHAR2(5), 
	"ZO_NAME" VARCHAR2(4000), 
	"ZO_SNAME" VARCHAR2(4000), 
	"ZO_ST" CHAR(1), 
	"ZO_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(10,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_ZO_TAXATION
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_ZO_TAXATION" 
   (	"ZT_ID" NUMBER(3,0), 
	"ZT_NAME" VARCHAR2(4000), 
	"ZT_ST" CHAR(1), 
	"ZT_SNAME" VARCHAR2(254), 
	"ZT_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(10,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_ADDRESS_TYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."NSI_ADDRESS_TYPE" 
   (	"AT_ID" NUMBER(14,0), 
	"AT_NAME" VARCHAR2(200), 
	"AT_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_NATIONALITY
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."NSI_NATIONALITY" 
   (	"NT_ID" NUMBER(14,0), 
	"NT_CODE" VARCHAR2(10), 
	"NT_SNAME" VARCHAR2(100), 
	"NT_NAME" VARCHAR2(250), 
	"NT_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_PERSON_STATE
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."NSI_PERSON_STATE" 
   (	"PT_ID" NUMBER(14,0), 
	"PT_NAME" VARCHAR2(200), 
	"PT_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_SEX
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."NSI_SEX" 
   (	"SEX_ID" NUMBER(14,0), 
	"SEX_NAME" VARCHAR2(200), 
	"SEX_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_SOURCE
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."NSI_SOURCE" 
   (	"SRC_ID" NUMBER(14,0), 
	"SRC_SNAME" VARCHAR2(100), 
	"SRC_NAME" VARCHAR2(200), 
	"SRC_ST" CHAR(1) DEFAULT 'A', 
	"SRC_INFOCROS_CODE" VARCHAR2(25), 
	"SRC_WEIGHT" NUMBER(2,0)
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."NSI_SOURCE"."SRC_WEIGHT" IS 'Пріоритет джерела інформації';
--------------------------------------------------------
--  DDL for Table NSI_SOURCE_TAB_NAME
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."NSI_SOURCE_TAB_NAME" 
   (	"STN_ID" NUMBER(14,0), 
	"STN_SRC" NUMBER(14,0), 
	"STN_TABLE" VARCHAR2(50), 
	"STN_ST_FIELD" VARCHAR2(50), 
	"STN_MFU_LOAD" VARCHAR2(10) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table PERSON_CHANGE
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."PERSON_CHANGE" 
   (	"PC_ID" NUMBER(14,0), 
	"PC_IP" NUMBER(14,0), 
	"PC_PD" NUMBER(14,0), 
	"PC_AD" NUMBER(14,0), 
	"PC_DC" NUMBER(14,0) DEFAULT -1, 
	"PC_BD" NUMBER(14,0), 
	"PC_PN" NUMBER(14,0), 
	"PC_DD" NUMBER(14,0), 
	"PC_CD" NUMBER(14,0), 
	"PC_IND" NUMBER(14,0), 
	"PC_CREATE_DT" DATE DEFAULT sysdate, 
	"PC_CHANGE_DT" DATE, 
	"PC_REF" RAW(15), 
	"PC_PCS" NUMBER(14,0), 
	"PC_SRC" NUMBER(14,0), 
	"PC_SRC_DT" DATE, 
	"PC_INV" NUMBER(14,0) DEFAULT -1, 
	"PC_RD" NUMBER(14,0) DEFAULT -1, 
	"PC_DC_NUMIDENT" NUMBER(14,0) DEFAULT -1
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE"."PC_DC" IS 'ІД ідентифікаційного документа. 12.02.2026 скасовано  невикористання "Не використовується для заповнення та відображення з 21.03.2017 (id документу/паспортні дані)"';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE"."PC_INV" IS 'ID інформації про інвалідність';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE"."PC_RD" IS 'ID підстави створення анкети (regulatory_documents)';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE"."PC_DC_NUMIDENT" IS 'ІД РНОКПП';
--------------------------------------------------------
--  DDL for Table PERSON_CHANGE_EXT
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" 
   (	"PCE_ID" NUMBER(14,0), 
	"PCE_IP" NUMBER(14,0), 
	"PCE_PC" NUMBER(14,0), 
	"PCE_IPN_DC" NUMBER(14,0), 
	"PCE_IPN" VARCHAR2(10), 
	"PCE_DOC_DC" NUMBER(14,0), 
	"PCE_DOC_TP" NUMBER(14,0), 
	"PCE_DOC_SER" VARCHAR2(10), 
	"PCE_DOC_NUM" VARCHAR2(10), 
	"PCE_DOC_ISSUE_DT" DATE, 
	"PCE_DOC_ISSUER" VARCHAR2(4000), 
	"PCE_CHECKSUM" VARCHAR2(100)
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_ID" IS 'ІД стану КСС';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_IP" IS 'ID застрахованої особи';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_PC" IS 'ID запису анкети';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_IPN_DC" IS 'Ід документа ІПН';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_IPN" IS 'ІПН';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_DOC_DC" IS 'Ід документа що посвідчує особу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_DOC_TP" IS 'Ід типу документа що посвідчує особу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_DOC_SER" IS 'Серія документа що посвідчує особу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_DOC_NUM" IS 'Номер документа що посвідчує особу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_DOC_ISSUE_DT" IS 'Дата видачі документа що посвідчує особу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_DOC_ISSUER" IS 'Ким видано документ що посвідчує особу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_EXT"."PCE_CHECKSUM" IS 'Контрольна сума';
--------------------------------------------------------
--  DDL for Table PERSON_CHANGE_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" 
   (	"PCL_ID" NUMBER(14,0), 
	"PCL_TP" VARCHAR2(10), 
	"PCL_IP" NUMBER(14,0), 
	"PCL_PC" NUMBER(14,0), 
	"PCL_SRC" NUMBER(14,0), 
	"PCL_SRC_DT" DATE, 
	"PCL_SRC_ID" NUMBER(14,0), 
	"PCL_SRC_TYPE" VARCHAR2(20), 
	"PCL_CREATE_DT" DATE DEFAULT sysdate, 
	"PCL_WU" NUMBER(14,0), 
	"PCL_RD" NUMBER(14,0) DEFAULT -1, 
	"PCL_PARAMS" VARCHAR2(255)
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_ID" IS 'ІД журналу';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_TP" IS 'Тип інформації (NEW|CNF)';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_IP" IS 'ІД персони';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_PC" IS 'ІД анкети';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_SRC" IS 'ІД джерела ';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_SRC_DT" IS 'Дата джерела';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_SRC_ID" IS 'ІД запису в системі джерелі';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_SRC_TYPE" IS 'Тип в джерелі, заплановано збереження типізації інформації), для відображення ';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_CREATE_DT" IS 'Дата створення';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_WU" IS 'Користувач';
   COMMENT ON COLUMN "IKIS_PERSON"."PERSON_CHANGE_LOG"."PCL_RD" IS 'ІД розпорядчого документа';
   COMMENT ON TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG"  IS 'Журнал дій по анкеті';
--------------------------------------------------------
--  DDL for Table TYPE_OPFU
--------------------------------------------------------

  CREATE TABLE "IKIS_SYS"."TYPE_OPFU" 
   (	"TO_ID" NUMBER(1,0), 
	"TO_CODE" VARCHAR2(10), 
	"TO_NAME" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_SK_PACKLABEL_ST
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."NSI_SK_PACKLABEL_ST" 
   (	"NSPS_ID" VARCHAR2(10), 
	"NSPS_NAME" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SK_CONTROL_SESSION
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_CONTROL_SESSION" 
   (	"SCSQ_ID" NUMBER(14,0), 
	"SCSQ_SPL" NUMBER(14,0), 
	"SCSQ_START_DT" DATE, 
	"SCSQ_STOP_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_CONTROL_SESSION"."SCSQ_ID" IS 'Ід сеансу протоколу понктролю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_CONTROL_SESSION"."SCSQ_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_CONTROL_SESSION"."SCSQ_START_DT" IS 'Дата початуку контролю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_CONTROL_SESSION"."SCSQ_STOP_DT" IS 'Дата завершення контролю';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK1_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" 
   (	"APQD1_ID" NUMBER(14,0), 
	"APQD1_SPL" NUMBER(14,0), 
	"APQD1_APQH1" NUMBER(14,0), 
	"APQD1_APQ1_PAGE" NUMBER(14,0), 
	"APQD1_DATE" DATE, 
	"APQD1_RECNUM" NUMBER(14,0), 
	"APQD1_UKR_CIT" VARCHAR2(1), 
	"APQD1_NUMIDENT" VARCHAR2(10), 
	"APQD1_LN" VARCHAR2(100), 
	"APQD1_NM" VARCHAR2(100), 
	"APQD1_FTN" VARCHAR2(100), 
	"APQD1_ZO" NUMBER(3,0), 
	"APQD1_MNTH" NUMBER(2,0), 
	"APQD1_YEAR" NUMBER(4,0), 
	"APQD1_SEX" NUMBER(1,0), 
	"APQD1_OTK" NUMBER(1,0), 
	"APQD1_EXP" NUMBER(1,0), 
	"APQD1_SUM" NUMBER(12,2), 
	"APQD1_SUM_PV" NUMBER(12,2), 
	"APQD1_SUM_V" NUMBER(12,2), 
	"APQD1_PAY_TP" NUMBER(2,0), 
	"APQD1_DD_NWORK" NUMBER(2,0), 
	"APQD1_DD_NSAL" NUMBER(2,0), 
	"APQD1_DD_WRKR" NUMBER(2,0), 
	"APQD1_NEWJOB" NUMBER(1,0), 
	"APQD1_KD_VP" NUMBER(4,0), 
	"APQD1_SUM_DIFF" NUMBER(12,2), 
	"APQD1_SUM_NARAH" NUMBER(12,2), 
	"APQD1_NRC" NUMBER(1,0), 
	"APQD1_IS_EXCLUDE" NUMBER(1,0), 
	"APQD1_ST" VARCHAR2(1) DEFAULT 'N', 
	"APQD1_APQD1_CORRECTION" NUMBER(14,0), 
	"APQD1_IM" NUMBER(14,0), 
	"APQD1_HMNTH_DT" DATE, 
	"APQD1_NFWH" NUMBER(1,0)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_ID" IS 'Ід запису додатка 1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_APQH1" IS 'Ід додатку_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_APQ1_PAGE" IS 'Ід додатку_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_DATE" IS 'Звітна дата запису за';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_RECNUM" IS 'Номер за порядком';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_UKR_CIT" IS 'Громадянин України 1 -Так, 0 -Ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_LN" IS 'Прізвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_ZO" IS 'Код категорії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_MNTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_YEAR" IS 'Рік, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SEX" IS 'Пол 1 -чоловік, 0 -жінка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_OTK" IS 'Ознака трудової книжки  1-Так, 0 -Ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_EXP" IS 'Ознака наявності спецстажу  1-Так, 0-Ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SUM" IS 'Загальна сума нарахованого заробітку, доходу, усього з початку звітного місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SUM_PV" IS 'Сума нарахованого заробітку, доходу  у  межах максимальної величини, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SUM_V" IS 'Сума утриманого єдиного внеску за звітний місяць із заробітної плати, доходу, грошового забезчпечення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_PAY_TP" IS 'Тип нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_DD_NWORK" IS 'Кількість календарних днів тимчасової непрацездатності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_DD_NSAL" IS 'Кількість календарних днів без збереження заробітної плати';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_DD_WRKR" IS 'Кількість днів перебування у трудових,  ЦП  відносинах, проходження військової служби протягом звітного місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_NEWJOB" IS 'Ознака нового робочого місця 1-так, 0-ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_KD_VP" IS 'Кількість календарних днів відпустки у зв’язку з вагітністю та пологами';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SUM_DIFF" IS 'Сума різниці між розміром мінімальної заробітної плати та фактично нарахованою заробітною платою за звітний місяць із заробітної плати, доходу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_SUM_NARAH" IS 'Сума нарахованого єдиного внеску за звітний місяць на заробітну плату, дохід, грошове забезпечення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_NRC" IS 'Ознака неповного робочого часу 1-так, 0-ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_IS_EXCLUDE" IS 'ознака включення якщо 1 рядок виключаєтся';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_APQD1_CORRECTION" IS 'Ід запису який поточный відміняє';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_IM" IS 'Ід страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_HMNTH_DT" IS 'Дата за який місяць кварталу подані дані';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA"."APQD1_NFWH" IS 'Ознака наявності трудового договору з нефіксованим робочим часом';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK1_HEADER
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" 
   (	"APQH1_ID" NUMBER(14,0), 
	"APQH1_SPL" NUMBER(14,0), 
	"APQH1_LDF" NUMBER(14,0), 
	"APQH1_PENS" NUMBER(1,0) DEFAULT 0, 
	"APQH1_SOCIAL_PAYMENT" NUMBER(1,0) DEFAULT 0, 
	"APQH1_MONTH_NUM" NUMBER(1,0), 
	"APQH1_DODATOK_NUM" VARCHAR2(30), 
	"APQH1_CHARGE_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_ID" IS 'Ід додатку_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_PENS" IS 'Для призначення пенсії';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_SOCIAL_PAYMENT" IS 'Для призначення інших соціальних виплат';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_MONTH_NUM" IS 'Номер місяця у кварталі';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_DODATOK_NUM" IS 'Номер додатку у розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER"."APQH1_CHARGE_DT" IS 'Звітна дата за місяць розрахунку';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK1_PAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" 
   (	"APQ1_ID" NUMBER(14,0), 
	"APQ1_SPL" NUMBER(14,0), 
	"APQ1_PAGE" NUMBER(14,0), 
	"APQ1_RECSNUM" NUMBER(14,0), 
	"APQP1_LDF" NUMBER(14,0), 
	"APQ1_APQH1" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE"."APQ1_ID" IS 'Ід аркушу заголовкку додатку_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE"."APQ1_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE"."APQ1_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE"."APQ1_RECSNUM" IS 'Кількість рядків на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE"."APQP1_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE"."APQ1_APQH1" IS 'Ід додатку_1';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK2_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" 
   (	"APQD2_ID" NUMBER(14,0), 
	"APQD2_SPL" NUMBER(14,0), 
	"APQD2_APQH2" NUMBER(14,0), 
	"APQD2_APQ2_PAGE" NUMBER(14,0), 
	"APQD2_RECNUM" NUMBER(14,0), 
	"APQD2_UKR_CIT" VARCHAR2(1), 
	"APQD2_NUMIDENT" VARCHAR2(10), 
	"APQD2_LN" VARCHAR2(100), 
	"APQD2_NM" VARCHAR2(100), 
	"APQD2_FTN" VARCHAR2(100), 
	"APQD2_ZO" NUMBER(3,0), 
	"APQD2_START_DAY" NUMBER(2,0), 
	"APQD2_STOP_DAY" NUMBER(2,0), 
	"APQD2_START_DT" DATE, 
	"APQD2_STOP_DT" DATE, 
	"APQD2_PAY_TYPE" NUMBER(2,0), 
	"APQD2_MNTH" NUMBER(2,0), 
	"APQD2_YEAR" NUMBER(4,0), 
	"APQD2_SUM" NUMBER(12,2), 
	"APQD2_SUM_PV" NUMBER(12,2), 
	"APQD2_SUM_V" NUMBER(12,2), 
	"APQD2_IS_EXCLUDE" NUMBER(1,0), 
	"APQD2_ST" VARCHAR2(1) DEFAULT 'N', 
	"APQD2_APQD2_CORRECTION" NUMBER(14,0), 
	"APQD2_IM" NUMBER(14,0), 
	"APQD2_HMNTH_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_ID" IS 'Ід запису даних додатка 2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_APQH2" IS 'Ід заголовку додатку_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_APQ2_PAGE" IS 'Ід додатку_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_RECNUM" IS 'Номер за порядком';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_UKR_CIT" IS 'Громадянин України 1 - так, 0 - ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_LN" IS 'Прізвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_ZO" IS 'Код категорії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_START_DAY" IS 'День початку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_STOP_DAY" IS 'День кінця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_START_DT" IS 'Дата старту періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_STOP_DT" IS 'Дата закінчення періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_PAY_TYPE" IS 'Код типу нарахувань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_MNTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_YEAR" IS 'Рік, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_SUM" IS 'Загальна сума нарахованого грошового забезпечення, допомоги, компенсації, мінімальний розмір заробітної плати, встановлений законодавством усього з початку звітного місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_SUM_PV" IS 'Сума нарахованого грошового забезпечення у межах максимальної величини, допомоги, надбавки, компенсації, мінімальний розмір заробітної плати, встановлений законодавством, на яку нараховується єдиний внесок';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_SUM_V" IS 'Сума нарахованого єдиного внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_IS_EXCLUDE" IS 'Ознака 0 - потрібно ввести, 1 - виключити';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_APQD2_CORRECTION" IS 'Ід запису який поточный відміняє';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_IM" IS 'Ід страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA"."APQD2_HMNTH_DT" IS 'Дата за який місяць кварталу подані дані';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK2_HEADER
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" 
   (	"APQH2_ID" NUMBER(14,0), 
	"APQH2_SPL" NUMBER(14,0), 
	"APQH2_LDF" NUMBER(14,0), 
	"APQH2_MONTH_NUM" NUMBER(1,0), 
	"APQH2_DODATOK_NUM" VARCHAR2(30), 
	"APQH2_CHARGE_DT" DATE, 
	"APQH2_NN_OSIB1" NUMBER(14,0), 
	"APQH2_SUM_MNTH1" NUMBER(12,2), 
	"APQH2_SUM_POPERED_ZV1" NUMBER(12,2), 
	"APQH2_SUM_YEAR1" NUMBER(12,2), 
	"APQH2_NN_OSIB2" NUMBER(14,0), 
	"APQH2_SUM_MNTH2" NUMBER(12,2), 
	"APQH2_SUM_POPERED_ZV2" NUMBER(12,2), 
	"APQH2_SUM_YEAR2" NUMBER(12,2), 
	"APQH2_NN_OSIB3" NUMBER(14,0), 
	"APQH2_SUM_MNTH3" NUMBER(12,2), 
	"APQH2_SUM_POPERED_ZV3" NUMBER(12,2), 
	"APQH2_SUM_YEAR3" NUMBER(12,2), 
	"APQH2_NN_OSIB4" NUMBER(14,0), 
	"APQH2_SUM_MNTH4" NUMBER(12,2), 
	"APQH2_SUM_POPERED_ZV4" NUMBER(12,2), 
	"APQH2_SUM_YEAR4" NUMBER(12,2), 
	"APQH2_SUM_MNTH5" NUMBER(12,2), 
	"APQH2_SUM_POPERED_ZV5" NUMBER(12,2), 
	"APQH2_SUM_YEAR5" NUMBER(12,2), 
	"APQH2_NN_OSIB6" NUMBER(14,0), 
	"APQH2_NN_OSIB61" NUMBER(14,0), 
	"APQH2_CAPTIVE_CNT" NUMBER(14,0), 
	"APQH2_CAPTIVE_ESV_MNTH" NUMBER(16,2), 
	"APQH2_CAPTIVE_ESV_PREV" NUMBER(16,2), 
	"APQH2_CAPTIVE_ESV_YEAR" NUMBER(16,2), 
	"APQH2_DIPL_SPOUSE_CNT" NUMBER(14,0), 
	"APQH2_DIPL_SPOUSE_ESV_MNTH" NUMBER(16,2), 
	"APQH2_DIPL_SPOUSE_ESV_PREV" NUMBER(16,2)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_ID" IS 'Ід заголовку додатку_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_MONTH_NUM" IS 'Номер місяця у кварталі';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_DODATOK_NUM" IS 'Номер додатку у розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_CHARGE_DT" IS 'Звітна дата за місяць розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_NN_OSIB1" IS '1Особи, які доглядають за дитиною до досягнення нею трирічного віку та відповідно до закону отримують допомогу по догляду за дитиною до досягнення нею трирічного віку таабо допомогу при народженні дитини, при усиновленні дитини ape42_cnt1_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_MNTH1" IS '1Нараховано єдиного внеску у звітному місяці ape42_sum1_1_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_POPERED_ZV1" IS '1Нараховано єдиного внеску у тому числі за попередні звітні періоди ape42_sum1_2_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_YEAR1" IS '1Нараховано єдиного внеску з початку року ape42_sum1_3_1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_NN_OSIB2" IS '2Непрацюючі працездатні батьки, усиновителі опікунів, піклувальників, прийомних батьків, батьків-вихователів, які фактично здійснюють догляд за дитиною з інвалідністю ape42_cnt1_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_MNTH2" IS '2Нараховано єдиного внеску у звітному місяці ape42_sum1_1_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_POPERED_ZV2" IS '2Нараховано єдиного внеску у тому числі за попередні звітні періоди ape42_sum1_2_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_YEAR2" IS '2Нараховано єдиного внеску з початку року ape42_sum1_3_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_NN_OSIB3" IS '3Непрацюючі працездатні особи, що здійснюють догляд за особою з інвалідністю I групи та отримують допомогу, надбавку або компенсацію відповідно до законодавства ape42_cnt1_3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_MNTH3" IS '3Нараховано єдиного внеску у звітному місяці ape42_sum1_1_3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_POPERED_ZV3" IS '3Нараховано єдиного внеску у тому числі за попередні звітні періоди ape42_sum1_2_3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_YEAR3" IS '3Нараховано єдиного внеску з початку року ape42_sum1_3_3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_NN_OSIB4" IS '4Непрацюючі працездатні особи, які здійснюють догляд особою похилого віку, яка згідно з висновком медичного закладу потребує постійного стороннього догляду або досягла 80-річного віку, та отримують допомогу, надбавку або компенсацію ape42_cnt1_4';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_MNTH4" IS '4Нараховано єдиного внеску у звітному місяці ape42_sum1_1_4';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_POPERED_ZV4" IS '4Нараховано єдиного внеску у тому числі за попередні звітні періоди ape42_sum1_2_4';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_YEAR4" IS '4Нараховано єдиного внеску з початку року ape42_sum1_3_4';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_MNTH5" IS '5Разом рядки 1,2,3,4 Нараховано єдиного внеску у звітному місяці ape42_sum1_1_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_POPERED_ZV5" IS '5Разом рядки 1,2,3,4 Нараховано єдиного внеску у тому числі за попередні звітні періоди ape42_sum1_2_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_SUM_YEAR5" IS '5Разом рядки 1,2,3,4 Нараховано єдиного внеску з початку року ape42_sum1_3_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_NN_OSIB6" IS '6Патронатні вихователі, батьки-вихователі дитячих будинків сімейного типу та прийомні батьки, що отримують грошове забезпечення відповідно до законодавства, у тому числі ape42_cnt1_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_NN_OSIB61" IS '6,1Патронатні вихователі, батьки-вихователі дитячих будинків сімейного типу та прийомні батьки, що отримують грошове забезпечення відповідно до законодавства, які не працюють ape42_cnt1_6';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_CAPTIVE_CNT" IS 'Чисельність осіб, позбавлених особистої свободи, яким нарахована виплата у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_CAPTIVE_ESV_MNTH" IS 'ЄСВ, нарахований за осіб, позбавлених особистої свободи, у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_CAPTIVE_ESV_PREV" IS 'ЄСВ, нарахований за осіб, позбавлених особистої свободи, у тч за попередні періоди';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_CAPTIVE_ESV_YEAR" IS 'ЄСВ, нарахований за осіб, позбавлених особистої свободи, з початку року';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_DIPL_SPOUSE_CNT" IS 'Чисельність непрацюючих інших з подружжя працівників дипслужби, яким нарахована виплата у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_DIPL_SPOUSE_ESV_MNTH" IS 'ЄСВ, нарахований за непрацюючих інших з подружжя працівників дипслужби у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER"."APQH2_DIPL_SPOUSE_ESV_PREV" IS 'ЄСВ, нарахований за непрацюючих інших з подружжя працівників дипслужби, у тч за попередні періоди';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK2_PAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" 
   (	"APQ2_ID" NUMBER(14,0), 
	"APQ2_SPL" NUMBER(14,0), 
	"APQ2_PAGE" NUMBER(14,0), 
	"APQ2_RECSNUM" NUMBER(14,0), 
	"APQ2_LDF" NUMBER(14,0), 
	"APQ2_APQH2" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE"."APQ2_ID" IS 'Ід додатку_2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE"."APQ2_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE"."APQ2_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE"."APQ2_RECSNUM" IS 'Кількість рядків на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE"."APQ2_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE"."APQ2_APQH2" IS 'Ід заголовку додатку_2';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK3_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" 
   (	"APQD3_ID" NUMBER(14,0), 
	"APQD3_SPL" NUMBER(14,0), 
	"APQD3_APQH3" NUMBER(14,0), 
	"APQD3_APQ3_PAGE" NUMBER(14,0), 
	"APQD3_RECNUM" NUMBER(14,0), 
	"APQD3_NUMIDENT" VARCHAR2(10), 
	"APQD3_LN" VARCHAR2(100), 
	"APQD3_NM" VARCHAR2(100), 
	"APQD3_FTN" VARCHAR2(100), 
	"APQD3_ZO" NUMBER(3,0), 
	"APQD3_START_DT" NUMBER(2,0), 
	"APQD3_STOP_DT" NUMBER(2,0), 
	"APQD3_MNTH" NUMBER(2,0), 
	"APQD3_YEAR" NUMBER(4,0), 
	"APQD3_SUM_PV" NUMBER(12,2), 
	"APQD3_SUM_V" NUMBER(12,2), 
	"APQD3_DATE" DATE, 
	"APQD3_ST" VARCHAR2(1) DEFAULT 'N', 
	"APQD3_IS_EXCLUDE" NUMBER(1,0), 
	"APQD3_APQD3_CORRECTION" NUMBER(14,0), 
	"APQD3_IM" NUMBER(14,0), 
	"APQD3_HMNTH_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_ID" IS 'Ід даних запису додатка 3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_APQH3" IS 'Ід заголовку додатку_3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_APQ3_PAGE" IS 'Ід додатку 3 аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_RECNUM" IS 'Номер за порядком';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_LN" IS 'Прізвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_ZO" IS 'Код категорії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_START_DT" IS 'Дата початку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_STOP_DT" IS 'Дата кінця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_MNTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_YEAR" IS 'Рік, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_SUM_PV" IS 'Грошове забезпечення, але не менше мінімального розміру заробітної плати, встановленого законодавством';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_SUM_V" IS 'Сума нарахованого єдиного внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_DATE" IS 'Звітна дата запису за';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_IS_EXCLUDE" IS 'Ознака 0 - рядок потрібно ввести, 1 - виключити';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_APQD3_CORRECTION" IS 'Ід запису який поточный відміняє';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_IM" IS 'Ід страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA"."APQD3_HMNTH_DT" IS 'Дата за який місяць кварталу подані дані';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK3_HEADER
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" 
   (	"APQH3_ID" NUMBER(14,0), 
	"APQH3_SPL" NUMBER(14,0), 
	"APQH3_LDF" NUMBER(14,0), 
	"APQH3_MONTH_NUM" NUMBER(1,0), 
	"APQH3_DODATOK_NUM" VARCHAR2(30), 
	"APQH3_CHARGE_DT" DATE, 
	"APQH3_NN_OSIB" NUMBER(6,0), 
	"APQH3_SUM_MNTH" NUMBER(12,2), 
	"APQH3_SUM_POPERED_ZV" NUMBER(12,2), 
	"APQH3_SUM_YEAR" NUMBER(12,2)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_ID" IS 'Ід заголовку додатку_3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_MONTH_NUM" IS 'Номер місяця у кварталі';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_DODATOK_NUM" IS 'Номер додатку у розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_CHARGE_DT" IS 'Звітна дата за місяць розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_NN_OSIB" IS 'Чисельність осіб, яким нараховане грошове забезпечення у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_SUM_MNTH" IS 'Нараховано єдиного внеску у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_SUM_POPERED_ZV" IS 'Нараховано єдиного внеску у тому числі за попередні звітні періоди';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER"."APQH3_SUM_YEAR" IS 'Нараховано єдиного внеску з початку року';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK3_PAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE" 
   (	"APQ3_ID" NUMBER(14,0), 
	"APQ3_SPL" NUMBER(14,0), 
	"APQ3_PAGE" NUMBER(14,0), 
	"APQ3_RECSNUM" NUMBER(14,0), 
	"APQ3_LDF" NUMBER(14,0), 
	"APQ3_APQH3" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE"."APQ3_ID" IS 'Ід додатку 3 аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE"."APQ3_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE"."APQ3_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE"."APQ3_RECSNUM" IS 'Кількість рядків на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE"."APQ3_LDF" IS 'ldf_id';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE"."APQ3_APQH3" IS 'Ід заголовку додатку_3';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK5_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" 
   (	"APQD5_ID" NUMBER(14,0), 
	"APQD5_SPL" NUMBER(14,0), 
	"APQD5_APQH5" NUMBER(14,0), 
	"APQD5_APQ5_PAGE" NUMBER(14,0), 
	"APQD5_RECNUM" NUMBER(14,0), 
	"APQD5_UKR_CIT" VARCHAR2(1), 
	"APQD5_NUMIDENT" VARCHAR2(10), 
	"APQD5_LN" VARCHAR2(100), 
	"APQD5_NM" VARCHAR2(100), 
	"APQD5_FTN" VARCHAR2(100), 
	"APQD5_ST" VARCHAR2(1) DEFAULT 'N', 
	"APQD5_PERSON_TYPE" NUMBER(2,0), 
	"APQD5_NEWJOB_DT" DATE, 
	"APQD5_BASE_END_WORK" VARCHAR2(255), 
	"APQD5_DOG_CPH" VARCHAR2(1), 
	"APQD5_DATE_HIRE" DATE, 
	"APQD5_DATE_FIRE" DATE, 
	"APQD5_SUMISNIC" NUMBER(1,0), 
	"APQD5_MOVE_POS" NUMBER(1,0), 
	"APQD5_PROFESSION_NAME" VARCHAR2(4000), 
	"APQD5_CODE_CLASS_PROF" VARCHAR2(6), 
	"APQD5_POSITION" VARCHAR2(500), 
	"APQD5_DOC_REASON" VARCHAR2(255), 
	"APQD5_MIL_RANK" VARCHAR2(255), 
	"APQD5_NCP" NUMBER(14,0), 
	"APQD5_NMR" NUMBER(14,0), 
	"APQD5_IS_EXCLUDE" NUMBER(1,0), 
	"APQD5_APQD5_CORRECTION" NUMBER(14,0), 
	"APQD5_IM" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_ID" IS 'Ід запису даних додатка 5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_APQH5" IS 'Ід заголовку додатку_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_APQ5_PAGE" IS 'Ід додатку_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_RECNUM" IS 'Номер за порядком';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_UKR_CIT" IS 'Громадянин України 1 - так, 0 - ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_LN" IS 'Прізвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_NM" IS 'Ім''я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_FTN" IS 'Побатькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_PERSON_TYPE" IS 'Код категорії особи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_NEWJOB_DT" IS 'Дата створення нового робочого місця, штатної одиниці, на яке  у звітному періоді працевлаштований працівник';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_BASE_END_WORK" IS 'Підстава припинення трудових відносин';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_DOG_CPH" IS 'Договір ЦПХ за основним місцем роботи або за сумісництвом 1 - так, 0 -ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_DATE_HIRE" IS 'Дата початку- Період трудових або цивільно-правових відносин, проходження військової служби та відпусток';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_DATE_FIRE" IS 'Дата закінчення- Період трудових або цивільно-правових відносин, проходження військової служби та відпусток';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_SUMISNIC" IS 'Внутрішний сумісник 1- Так, 0 - ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_MOVE_POS" IS 'Переведено, призначено на іншу посаду або роботу, переміщено до іншого підрозділу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_PROFESSION_NAME" IS 'Професійна назва роботи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_CODE_CLASS_PROF" IS 'Код класифікатора професій';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_POSITION" IS 'Посада';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_DOC_REASON" IS 'Документ підстава про початок, кінець трудових або цивільно - правових відносин, переведення на , кінець трудових або цивільно - правових відносин, переведення на іншу посаду, роботи та відпусток';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_MIL_RANK" IS 'Військове звання';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_NCP" IS 'Ід довідника класу професій';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_NMR" IS 'Ід довідника звань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_IS_EXCLUDE" IS 'Ознака 0 - ввести , 1 - виключити';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_APQD5_CORRECTION" IS 'Ід для корегування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA"."APQD5_IM" IS 'Ід страхувальника';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK5_HEADER
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" 
   (	"APQH5_ID" NUMBER(14,0), 
	"APQH5_SPL" NUMBER(14,0), 
	"APQH5_LDF" NUMBER(14,0), 
	"APQH5_MONTH_NUM" NUMBER(1,0), 
	"APQH5_DODATOK_NUM" VARCHAR2(30), 
	"APQH5_CHARGE_DT" DATE, 
	"APQH5_PENS" NUMBER(1,0) DEFAULT 0, 
	"APQH5_SOCIAL_PAYMENT" NUMBER(1,0), 
	"APQH5_CHARGE_DT_1" DATE, 
	"APQH5_CHARGE_DT_2" DATE, 
	"APQH5_CHARGE_DT_3" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_ID" IS 'Ід заголовку додатку_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_MONTH_NUM" IS 'Номер місяця у кварталі';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_DODATOK_NUM" IS 'Номер додатку у розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_CHARGE_DT" IS 'Звітна дата за місяць розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_PENS" IS 'Для призначення пенсії';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_SOCIAL_PAYMENT" IS 'Для призначення інших соціальних виплат';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_CHARGE_DT_1" IS 'Наявні дані за перший місяць кварталу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_CHARGE_DT_2" IS 'Наявні дані за другий місяць кварталу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER"."APQH5_CHARGE_DT_3" IS 'Наявні дані за 3-й місяць кварталу';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK5_PAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE" 
   (	"APQ5_ID" NUMBER(14,0), 
	"APQ5_SPL" NUMBER(14,0), 
	"APQ5_PAGE" NUMBER(14,0), 
	"APQ5_RECSNUM" NUMBER(14,0), 
	"APQ5_LDF" NUMBER(14,0), 
	"APQ5_APQH5" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE"."APQ5_ID" IS 'Ід додатку_5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE"."APQ5_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE"."APQ5_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE"."APQ5_RECSNUM" IS 'Кількість рядків на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE"."APQ5_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE"."APQ5_APQH5" IS 'Ід заголовку додатку 5';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK6_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" 
   (	"APQD6_ID" NUMBER(14,0), 
	"APQD6_SPL" NUMBER(14,0), 
	"APQD6_APQH6" NUMBER(14,0), 
	"APQD6_APQ6_PAGE" NUMBER(14,0), 
	"APQD6_UKR_CIT" VARCHAR2(1), 
	"APQD6_RECNUM" NUMBER(14,0), 
	"APQD6_NUMIDENT" VARCHAR2(10), 
	"APQD6_LN" VARCHAR2(100), 
	"APQD6_NM" VARCHAR2(100), 
	"APQD6_FTN" VARCHAR2(100), 
	"APQD6_EXP" VARCHAR2(10), 
	"APQD6_START_DT" NUMBER(2,0), 
	"APQD6_STOP_DT" NUMBER(2,0), 
	"APQD6_DD" NUMBER(2,0), 
	"APQD6_HH" NUMBER(4,0), 
	"APQD6_MM" NUMBER(2,0), 
	"APQD6_NORM_HHMM" VARCHAR2(10), 
	"APQD6_SEASON" VARCHAR2(1), 
	"APQD6_ST" VARCHAR2(1) DEFAULT 'N', 
	"APQD6_ORDER_NUM" VARCHAR2(8), 
	"APQD6_ORDER_DT" DATE, 
	"APQD6_IS_EXCLUDE" NUMBER(1,0), 
	"APQD6_APQD6_CORRECTION" NUMBER(14,0), 
	"APQD6_IM" NUMBER(14,0), 
	"APQD6_HMNTH_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_ID" IS 'Ід запису додатка 6';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_APQH6" IS 'Ід додатку_6';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_APQ6_PAGE" IS 'Ід додатку_6 аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_UKR_CIT" IS 'Громадянин України 1 -Так, 0 -Ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_RECNUM" IS 'Номер за порядком';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_LN" IS 'Прізвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_EXP" IS 'Код підстави для обліку спецстажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_START_DT" IS 'Початок періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_STOP_DT" IS 'Кінець періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_DD" IS 'Кількість днів';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_HH" IS 'Кількість годин, хвилин - години';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_MM" IS 'Кількість годин, хвилин - хвилини';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_NORM_HHMM" IS 'Норма тривалості роботи для зарахування за повний місяць спецстажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_SEASON" IS 'Ознака СЕЗОН';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_ORDER_NUM" IS '№ наказу про проведення атестації робочого місця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_ORDER_DT" IS 'Дата наказу про проведення атестації робочого місця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_IS_EXCLUDE" IS 'ознака "0", якщо рядок потрібно ввести, чи ознака "1", якщо рядок потрібно виключити';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_APQD6_CORRECTION" IS 'Ід запису який поточный відміняє';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_IM" IS 'Ід страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA"."APQD6_HMNTH_DT" IS 'Дата за який місяць кварталу подані дані';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK6_HEADER
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER" 
   (	"APQH6_ID" NUMBER(14,0), 
	"APQH6_SPL" NUMBER(14,0), 
	"APQH6_LDF" NUMBER(14,0), 
	"APQH6_MONTH_NUM" NUMBER(1,0), 
	"APQH6_DODATOK_NUM" VARCHAR2(30), 
	"APQH6_CHARGE_DT" DATE, 
	"APQH6_PENS" NUMBER(1,0) DEFAULT 0
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_ID" IS 'Ід додатку_6';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_MONTH_NUM" IS 'Номер місяця у кварталі';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_DODATOK_NUM" IS 'Номер додатку у розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_CHARGE_DT" IS 'Звітна дата за місяць розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER"."APQH6_PENS" IS 'Для призначення пенсії';
--------------------------------------------------------
--  DDL for Table SK_APEQ_DODATOK6_PAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE" 
   (	"APQ6_ID" NUMBER(14,0), 
	"APQ6_SPL" NUMBER(14,0), 
	"APQ6_PAGE" NUMBER(14,0), 
	"APQ6_RECSNUM" NUMBER(14,0), 
	"APQ6_LDF" NUMBER(14,0), 
	"APQ6_APQH6" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE"."APQ6_ID" IS 'Ід додатку_6 аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE"."APQ6_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE"."APQ6_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE"."APQ6_RECSNUM" IS 'Кількість рядків на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE"."APQ6_LDF" IS 'LDF_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE"."APQ6_APQH6" IS 'Ід додатку_6';
--------------------------------------------------------
--  Constraints for Table NDI_KATOTTG
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" MODIFY ("KAOT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" ADD CONSTRAINT "XPK_NDI_KATOTTG" PRIMARY KEY ("KAOT_ID")
  USING INDEX "IKIS_NDI"."XPK_NDI_KATOTTG"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_ZO_CAT
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_ZO_CAT" MODIFY ("ZO_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_ZO_CAT" ADD CONSTRAINT "XPK_NSI_ZO_CAT" PRIMARY KEY ("ZO_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_ZO_CAT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_ZO_TAXATION
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_ZO_TAXATION" MODIFY ("ZT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_ZO_TAXATION" ADD CONSTRAINT "XPK_NSI_ZO_TAXATION" PRIMARY KEY ("ZT_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_ZO_TAXATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_ADDRESS_TYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_ADDRESS_TYPE" ADD CONSTRAINT "CHK_NSI_ADDRESS_TYPE_AT_ST" CHECK (AT_ST in ('A','H','D')) ENABLE;
  ALTER TABLE "IKIS_PERSON"."NSI_ADDRESS_TYPE" MODIFY ("AT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."NSI_ADDRESS_TYPE" ADD CONSTRAINT "XPK_NSI_ADDRESS_TYPE" PRIMARY KEY ("AT_ID")
  USING INDEX "IKIS_PERSON"."XPK_NSI_ADDRESS_TYPE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_NATIONALITY
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_NATIONALITY" ADD CONSTRAINT "CHK_NSI_NATIONALITY_NT_ST" CHECK (NT_ST in ('A','H','D')) ENABLE;
  ALTER TABLE "IKIS_PERSON"."NSI_NATIONALITY" MODIFY ("NT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."NSI_NATIONALITY" ADD CONSTRAINT "XPK_NSI_NATIONALITY" PRIMARY KEY ("NT_ID")
  USING INDEX "IKIS_PERSON"."XPK_NSI_NATIONALITY"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_PERSON_STATE
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_PERSON_STATE" ADD CONSTRAINT "CHK_NSI_PERSON_STATE_PT_ST" CHECK (PT_ST in ('A','H','D')) ENABLE;
  ALTER TABLE "IKIS_PERSON"."NSI_PERSON_STATE" MODIFY ("PT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."NSI_PERSON_STATE" ADD CONSTRAINT "XPK_NSI_PERSON_STATE" PRIMARY KEY ("PT_ID")
  USING INDEX "IKIS_PERSON"."XPK_NSI_PERSON_STATE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_SEX
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_SEX" ADD CONSTRAINT "CHK_NSI_SEX_SEX_ST" CHECK (SEX_ST in ('A','H','D')) ENABLE;
  ALTER TABLE "IKIS_PERSON"."NSI_SEX" MODIFY ("SEX_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."NSI_SEX" ADD CONSTRAINT "XPK_NSI_SEX" PRIMARY KEY ("SEX_ID")
  USING INDEX "IKIS_PERSON"."XPK_NSI_SEX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_SOURCE
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_SOURCE" ADD CONSTRAINT "CHK_NSI_SOURCE_SRC_ST" CHECK (SRC_ST in ('A','H','D')) ENABLE;
  ALTER TABLE "IKIS_PERSON"."NSI_SOURCE" MODIFY ("SRC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."NSI_SOURCE" ADD CONSTRAINT "XPK_NSI_SOURCE" PRIMARY KEY ("SRC_ID")
  USING INDEX "IKIS_PERSON"."XPK_NSI_SOURCE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_SOURCE_TAB_NAME
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_SOURCE_TAB_NAME" ADD PRIMARY KEY ("STN_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON_CHANGE
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_IP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_PD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_AD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_DC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_BD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_PN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_DD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_CD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_IND" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_PCS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_SRC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_INV" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_RD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" MODIFY ("PC_DC_NUMIDENT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "XPK_PERSON_CHANGE" PRIMARY KEY ("PC_ID")
  USING INDEX "IKIS_PERSON"."XPK_PERSON_CHANGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON_CHANGE_EXT
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" MODIFY ("PCE_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" ADD CONSTRAINT "XPK_PERSON_CHANGE_EXT" PRIMARY KEY ("PCE_ID")
  USING INDEX "IKIS_PERSON"."XPK_PERSON_CHANGE_EXT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON_CHANGE_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" ADD CONSTRAINT "PK_PERSON_CHANGE_LOG" PRIMARY KEY ("PCL_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_IP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_PC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_SRC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_SRC_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" MODIFY ("PCL_RD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TYPE_OPFU
--------------------------------------------------------

  ALTER TABLE "IKIS_SYS"."TYPE_OPFU" MODIFY ("TO_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYS"."TYPE_OPFU" ADD CONSTRAINT "XPK_TYPE_OPFU" PRIMARY KEY ("TO_ID")
  USING INDEX "IKIS_SYS"."XPK_TYPE_OPFU"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_SK_PACKLABEL_ST
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."NSI_SK_PACKLABEL_ST" MODIFY ("NSPS_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."NSI_SK_PACKLABEL_ST" ADD CONSTRAINT "XPK_NSI_SK_PACKLABEL_ST" PRIMARY KEY ("NSPS_ID")
  USING INDEX "IKIS_WEBSM"."XPK_NSI_SK_PACKLABEL_ST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_CONTROL_SESSION
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_CONTROL_SESSION" MODIFY ("SCSQ_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_CONTROL_SESSION" ADD CONSTRAINT "XPK_SK_CONTROL_SESSION" PRIMARY KEY ("SCSQ_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_CONTROL_SESSION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "CHK_APQD1_ST" CHECK (apqd1_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" MODIFY ("APQD1_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" MODIFY ("APQD1_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" MODIFY ("APQD1_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK1_DATA" PRIMARY KEY ("APQD1_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK1_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK1_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" MODIFY ("APQH1_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" MODIFY ("APQH1_CHARGE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK1_HEADER" PRIMARY KEY ("APQH1_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK1_HEADER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK1_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" MODIFY ("APQ1_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK1_PAGE" PRIMARY KEY ("APQ1_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK1_PAGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "CHK_APQD2_ST" CHECK (apqd2_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" MODIFY ("APQD2_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" MODIFY ("APQD2_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK2_DATA" PRIMARY KEY ("APQD2_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK2_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK2_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" MODIFY ("APQH2_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK2_HEADER" PRIMARY KEY ("APQH2_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK2_HEADER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK2_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" MODIFY ("APQ2_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK2_PAGE" PRIMARY KEY ("APQ2_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK2_PAGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK3_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "CHK_APQD3_ST" CHECK (apqd3_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" MODIFY ("APQD3_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" MODIFY ("APQD3_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" MODIFY ("APQD3_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK3_DATA" PRIMARY KEY ("APQD3_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK3_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK3_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" MODIFY ("APQH3_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK3_HEADER" PRIMARY KEY ("APQH3_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK3_HEADER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK3_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE" MODIFY ("APQ3_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK3_PAGE" PRIMARY KEY ("APQ3_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK3_PAGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK5_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "CHK_APQD5_ST" CHECK (apqd5_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" MODIFY ("APQD5_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" MODIFY ("APQD5_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK5_DATA" PRIMARY KEY ("APQD5_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK5_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK5_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" MODIFY ("APQH5_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK5_HEADER" PRIMARY KEY ("APQH5_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK5_HEADER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK5_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK5_PAGE" PRIMARY KEY ("APQ5_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK5_PAGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK6_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "CHK_APQD6_ST" CHECK (apqd6_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" MODIFY ("APQD6_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" MODIFY ("APQD6_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" MODIFY ("APQD6_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK6_DATA" PRIMARY KEY ("APQD6_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK6_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK6_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER" MODIFY ("APQH6_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK6_HEADER" PRIMARY KEY ("APQH6_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK6_HEADER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_APEQ_DODATOK6_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE" MODIFY ("APQ6_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK6_PAGE" PRIMARY KEY ("APQ6_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK6_PAGE"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NDI_KATOTTG
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" ADD CONSTRAINT "FK_KAOT_KAOT_L5" FOREIGN KEY ("KAOT_KAOT_L5")
	  REFERENCES "IKIS_NDI"."NDI_KATOTTG" ("KAOT_ID") ENABLE;
  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" ADD CONSTRAINT "FK_KOAT_KOAT_L1" FOREIGN KEY ("KAOT_KAOT_L1")
	  REFERENCES "IKIS_NDI"."NDI_KATOTTG" ("KAOT_ID") ENABLE;
  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" ADD CONSTRAINT "FK_KOAT_KOAT_L2" FOREIGN KEY ("KAOT_KAOT_L2")
	  REFERENCES "IKIS_NDI"."NDI_KATOTTG" ("KAOT_ID") ENABLE;
  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" ADD CONSTRAINT "FK_KOAT_KOAT_L3" FOREIGN KEY ("KAOT_KAOT_L3")
	  REFERENCES "IKIS_NDI"."NDI_KATOTTG" ("KAOT_ID") ENABLE;
  ALTER TABLE "IKIS_NDI"."NDI_KATOTTG" ADD CONSTRAINT "FK_KOAT_KOAT_L4" FOREIGN KEY ("KAOT_KAOT_L4")
	  REFERENCES "IKIS_NDI"."NDI_KATOTTG" ("KAOT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_SOURCE_TAB_NAME
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."NSI_SOURCE_TAB_NAME" ADD CONSTRAINT "STN_NSI_SOURCE" FOREIGN KEY ("STN_SRC")
	  REFERENCES "IKIS_PERSON"."NSI_SOURCE" ("SRC_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON_CHANGE
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_AD" FOREIGN KEY ("PC_AD")
	  REFERENCES "IKIS_PERSON"."ADDRESS_DATA" ("AD_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_BD" FOREIGN KEY ("PC_BD")
	  REFERENCES "IKIS_PERSON"."BIRTH_DATA" ("BD_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_CD" FOREIGN KEY ("PC_CD")
	  REFERENCES "IKIS_PERSON"."CONTACT_DATA" ("CD_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_DC" FOREIGN KEY ("PC_DC")
	  REFERENCES "IKIS_PERSON"."DOCUMENT_DATA" ("DC_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_DC_NUMIDENT" FOREIGN KEY ("PC_DC_NUMIDENT")
	  REFERENCES "IKIS_PERSON"."DOCUMENT_DATA" ("DC_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_DD" FOREIGN KEY ("PC_DD")
	  REFERENCES "IKIS_PERSON"."DEATH_DATA" ("DD_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_IND" FOREIGN KEY ("PC_IND")
	  REFERENCES "IKIS_PERSON"."INSURANCE_DATA" ("IND_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_INV" FOREIGN KEY ("PC_INV")
	  REFERENCES "IKIS_PERSON"."INVALIDITY_DATA" ("INV_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_IP" FOREIGN KEY ("PC_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_PCS" FOREIGN KEY ("PC_PCS")
	  REFERENCES "IKIS_PERSON"."NSI_PERSONCH_STATE" ("PCS_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_PD" FOREIGN KEY ("PC_PD")
	  REFERENCES "IKIS_PERSON"."PERSON_DATA" ("PD_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_PN" FOREIGN KEY ("PC_PN")
	  REFERENCES "IKIS_PERSON"."PENSION_DATA" ("PN_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_RD" FOREIGN KEY ("PC_RD")
	  REFERENCES "IKIS_PERSON"."REGULATORY_DOCUMENTS" ("RD_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE" ADD CONSTRAINT "FK_PC_SRC" FOREIGN KEY ("PC_SRC")
	  REFERENCES "IKIS_PERSON"."NSI_SOURCE" ("SRC_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON_CHANGE_EXT
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" ADD CONSTRAINT "FK_PCE_DOC_DC" FOREIGN KEY ("PCE_DOC_DC")
	  REFERENCES "IKIS_PERSON"."DOCUMENT_DATA" ("DC_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" ADD CONSTRAINT "FK_PCE_DOC_TP" FOREIGN KEY ("PCE_DOC_TP")
	  REFERENCES "IKIS_PERSON"."NSI_DOCUMENT_TYPE" ("DT_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" ADD CONSTRAINT "FK_PCE_IP" FOREIGN KEY ("PCE_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" ADD CONSTRAINT "FK_PCE_IPN_DC" FOREIGN KEY ("PCE_IPN_DC")
	  REFERENCES "IKIS_PERSON"."DOCUMENT_DATA" ("DC_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_EXT" ADD CONSTRAINT "FK_PCE_PC" FOREIGN KEY ("PCE_PC")
	  REFERENCES "IKIS_PERSON"."PERSON_CHANGE" ("PC_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON_CHANGE_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" ADD CONSTRAINT "FK_PERSON_CHANGE_LOG_IP" FOREIGN KEY ("PCL_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" ADD CONSTRAINT "FK_PERSON_CHANGE_LOG_PC" FOREIGN KEY ("PCL_PC")
	  REFERENCES "IKIS_PERSON"."PERSON_CHANGE" ("PC_ID") ENABLE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" ADD CONSTRAINT "FK_PERSON_CHANGE_LOG_SRC" FOREIGN KEY ("PCL_SRC")
	  REFERENCES "IKIS_PERSON"."NSI_SOURCE" ("SRC_ID") ENABLE;
  ALTER TABLE "IKIS_PERSON"."PERSON_CHANGE_LOG" ADD CONSTRAINT "FK_PERSON_CHANGE_LOG_КВ" FOREIGN KEY ("PCL_RD")
	  REFERENCES "IKIS_PERSON"."REGULATORY_DOCUMENTS" ("RD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_CONTROL_SESSION
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_CONTROL_SESSION" ADD CONSTRAINT "FK_SCSQ_SPL" FOREIGN KEY ("SCSQ_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "FK_APQD1_APQ1_PAGE" FOREIGN KEY ("APQD1_APQ1_PAGE")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" ("APQ1_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "FK_APQD1_APQD1_CORRECTION" FOREIGN KEY ("APQD1_APQD1_CORRECTION")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ("APQD1_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "FK_APQD1_APQH1" FOREIGN KEY ("APQD1_APQH1")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" ("APQH1_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "FK_APQD1_IM" FOREIGN KEY ("APQD1_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ADD CONSTRAINT "FK_APQD1_SPL" FOREIGN KEY ("APQD1_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK1_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" ADD CONSTRAINT "FK_APQH1_LDF" FOREIGN KEY ("APQH1_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" ADD CONSTRAINT "FK_APQH1_SPL" FOREIGN KEY ("APQH1_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK1_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" ADD CONSTRAINT "FK_APQ1_APQH1" FOREIGN KEY ("APQ1_APQH1")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK1_HEADER" ("APQH1_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" ADD CONSTRAINT "FK_APQ1_SPL" FOREIGN KEY ("APQ1_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK1_PAGE" ADD CONSTRAINT "FK_APQP1_LDF" FOREIGN KEY ("APQP1_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "FK_APQD2_APQ2_PAGE" FOREIGN KEY ("APQD2_APQ2_PAGE")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" ("APQ2_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "FK_APQD2_APQD2_CORRECTION" FOREIGN KEY ("APQD2_APQD2_CORRECTION")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ("APQD2_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "FK_APQD2_APQH2" FOREIGN KEY ("APQD2_APQH2")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" ("APQH2_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "FK_APQD2_IM" FOREIGN KEY ("APQD2_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "FK_APQD2_SPL" FOREIGN KEY ("APQD2_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK2_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" ADD CONSTRAINT "FK_APQH2_LDF" FOREIGN KEY ("APQH2_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" ADD CONSTRAINT "FK_APQH2_SPL" FOREIGN KEY ("APQH2_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK2_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" ADD CONSTRAINT "FK_APQ2_APQH2" FOREIGN KEY ("APQ2_APQH2")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK2_HEADER" ("APQH2_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" ADD CONSTRAINT "FK_APQ2_LDF" FOREIGN KEY ("APQ2_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_PAGE" ADD CONSTRAINT "FK_APQ2_SPL" FOREIGN KEY ("APQ2_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK3_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "FK_APQD3_APQ3_PAGE" FOREIGN KEY ("APQD3_APQ3_PAGE")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE" ("APQ3_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "FK_APQD3_APQD3_CORRECTION" FOREIGN KEY ("APQD3_APQD3_CORRECTION")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ("APQD3_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "FK_APQD3_APQH3" FOREIGN KEY ("APQD3_APQH3")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" ("APQH3_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "FK_APQD3_IM" FOREIGN KEY ("APQD3_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ADD CONSTRAINT "FK_APQD3_SPL" FOREIGN KEY ("APQD3_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK3_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" ADD CONSTRAINT "FK_APQH3_LDF" FOREIGN KEY ("APQH3_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" ADD CONSTRAINT "FK_APQH3_SPL" FOREIGN KEY ("APQH3_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK3_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE" ADD CONSTRAINT "FK_APQ3_APQH3" FOREIGN KEY ("APQ3_APQH3")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK3_HEADER" ("APQH3_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK3_PAGE" ADD CONSTRAINT "FK_APQ3_SPL" FOREIGN KEY ("APQ3_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK5_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "FK_APQD5_APQ5" FOREIGN KEY ("APQD5_APQ5_PAGE")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE" ("APQ5_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "FK_APQD5_APQD5_CORRECTION" FOREIGN KEY ("APQD5_APQD5_CORRECTION")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ("APQD5_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "FK_APQD5_APQH5" FOREIGN KEY ("APQD5_APQH5")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" ("APQH5_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "FK_APQD5_IM" FOREIGN KEY ("APQD5_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "FK_APQD5_SPL" FOREIGN KEY ("APQD5_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK5_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" ADD CONSTRAINT "FK_APQH5_LDF" FOREIGN KEY ("APQH5_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" ADD CONSTRAINT "FK_APQH5_SPL" FOREIGN KEY ("APQH5_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK5_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE" ADD CONSTRAINT "FK_APQ5_APQH5" FOREIGN KEY ("APQ5_APQH5")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK5_HEADER" ("APQH5_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE" ADD CONSTRAINT "FK_APQ5_LDF" FOREIGN KEY ("APQ5_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_PAGE" ADD CONSTRAINT "FK_APQ5_SPL" FOREIGN KEY ("APQ5_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK6_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "FK_APQD6_APQ6_PAGE" FOREIGN KEY ("APQD6_APQ6_PAGE")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE" ("APQ6_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "FK_APQD6_APQD6_CORRECTION" FOREIGN KEY ("APQD6_APQD6_CORRECTION")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ("APQD6_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "FK_APQD6_APQH6" FOREIGN KEY ("APQD6_APQH6")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER" ("APQH6_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "FK_APQD6_IM" FOREIGN KEY ("APQD6_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ADD CONSTRAINT "FK_APQD6_SPL" FOREIGN KEY ("APQD6_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK6_HEADER
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER" ADD CONSTRAINT "FK_APQH6_SPL" FOREIGN KEY ("APQH6_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SK_APEQ_DODATOK6_PAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE" ADD CONSTRAINT "FK_APQ6_APQH6" FOREIGN KEY ("APQ6_APQH6")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK6_HEADER" ("APQH6_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK6_PAGE" ADD CONSTRAINT "FK_APQ6_SPL" FOREIGN KEY ("APQ6_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
