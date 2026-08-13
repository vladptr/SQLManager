--------------------------------------------------------
--  File created - четвер-серпня-13-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NSI_BANK
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_BANK" 
   (	"NB_ID" NUMBER(14,0), 
	"NB_NB" NUMBER(14,0), 
	"NB_MFO" VARCHAR2(6), 
	"NB_EDRPOU" VARCHAR2(10), 
	"NB_NAME" VARCHAR2(250), 
	"NB_SNAME" VARCHAR2(100), 
	"NB_ST" CHAR(1), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"NB_DEL_DT" DATE, 
	"RTS11" NUMBER, 
	"RTS12" NUMBER
   ) 
   CACHE ;
--------------------------------------------------------
--  DDL for Table NSI_BANKPAY_TP
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_BANKPAY_TP" 
   (	"BPT_ID" NUMBER(14,0), 
	"BPT_CODE" VARCHAR2(100), 
	"BPT_NAME" VARCHAR2(250), 
	"BPT_SNAME" CHAR(100), 
	"BPT_ST" CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_BANK_FEE
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_BANK_FEE" 
   (	"BF_ID" NUMBER(14,0), 
	"BF_NAME" VARCHAR2(250), 
	"BF_SNAME" VARCHAR2(100), 
	"BF_ST" CHAR(1), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"BF_DEL_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_BUSINESS_ST
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_BUSINESS_ST" 
   (	"BS_ID" NUMBER(14,0), 
	"BS_NAME" VARCHAR2(250), 
	"BS_SNAME" VARCHAR2(100), 
	"BS_ST" CHAR(1), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"BS_DEL_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_DATA_SOURCE
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_DATA_SOURCE" 
   (	"DS_ID" NUMBER(14,0), 
	"DS_NAME" VARCHAR2(250), 
	"DS_SNAME" VARCHAR2(100), 
	"DS_ST" CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_DICT_MODIF
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_DICT_MODIF" 
   (	"ID" NUMBER(14,0), 
	"NAME" VARCHAR2(250), 
	"REPL_TS" NUMBER(20,0), 
	"OPER_TP" CHAR(1), 
	"OPER_RS" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_FIN_TP
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_FIN_TP" 
   (	"FNT_ID" NUMBER(14,0), 
	"FNT_NAME" VARCHAR2(250), 
	"FNT_CODE" CHAR(2), 
	"FNT_SNAME" VARCHAR2(100), 
	"FNT_ST" CHAR(1), 
	"FNT_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_FUND
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_FUND" 
   (	"FND_ID" NUMBER(14,0), 
	"FND_CODE" VARCHAR2(10), 
	"FND_NAME" VARCHAR2(255), 
	"FND_SNAME" VARCHAR2(25), 
	"FND_ST" VARCHAR2(10), 
	"FND_SELF" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_FUNDS_ACCIDENT
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_FUNDS_ACCIDENT" 
   (	"FA_ID" NUMBER(20,0), 
	"FA_NAME" VARCHAR2(255), 
	"FA_CODE" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_FUNDS_SOCINSUR
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_FUNDS_SOCINSUR" 
   (	"FS_ID" NUMBER, 
	"FS_CODE" NUMBER(5,0), 
	"FS_NAME" VARCHAR2(255), 
	"FS_ADDRESS" VARCHAR2(255), 
	"FS_ORG" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_FUNDS_UNEMPLOYMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_FUNDS_UNEMPLOYMENT" 
   (	"FU_ID" NUMBER, 
	"FU_CODE" NUMBER(4,0), 
	"FU_NAME" VARCHAR2(255), 
	"FU_ORG" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_INSURERCAT
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_INSURERCAT" 
   (	"IC_ID" NUMBER(2,0), 
	"IC_NAME" VARCHAR2(250), 
	"IC_IC" NUMBER(2,0), 
	"IC_UF_TP" CHAR(1) DEFAULT 'U', 
	"IC_HR_TP" CHAR(1), 
	"IC_SNAME" VARCHAR2(150), 
	"IC_ST" CHAR(1), 
	"IC_CODE" VARCHAR2(10), 
	"IC_NOTE" VARCHAR2(2000), 
	"IC_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(10,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"IC_NAME_PORTAL" VARCHAR2(500)
   ) ;

   COMMENT ON COLUMN "IKIS_NDI"."NSI_INSURERCAT"."IC_NAME_PORTAL" IS 'Назва для порталу';
--------------------------------------------------------
--  DDL for Table NSI_INSURER_RISK_LEVEL_CVWI
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI" 
   (	"DIRLC_ID" NUMBER(14,0), 
	"DIRLC_CODE" VARCHAR2(20), 
	"DIRLC_NAME" VARCHAR2(250), 
	"DIRLC_ORD" NUMBER(5,0)
   ) ;

   COMMENT ON COLUMN "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI"."DIRLC_ID" IS 'Ід ступеню ризику пілприємства';
   COMMENT ON COLUMN "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI"."DIRLC_CODE" IS 'Код ступеня ризику';
   COMMENT ON COLUMN "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI"."DIRLC_NAME" IS 'Назва статусу ризикованості';
   COMMENT ON COLUMN "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI"."DIRLC_ORD" IS 'Сорутвання';
--------------------------------------------------------
--  DDL for Table NSI_KOATUU
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_KOATUU" 
   (	"KT_ID" NUMBER(14,0), 
	"KT_KT" NUMBER(14,0), 
	"KT_CODE" VARCHAR2(10), 
	"KT_TP" VARCHAR2(10), 
	"KT_NAME" VARCHAR2(250), 
	"KT_ST" VARCHAR2(10), 
	"KT_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_KOPFG
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_KOPFG" 
   (	"KPF_ID" NUMBER(3,0), 
	"KPF_CODE" VARCHAR2(10), 
	"KPF_NAME" VARCHAR2(250), 
	"KPF_ST" VARCHAR2(10), 
	"KPF_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"KPF_EDR_DICT_ID" NUMBER(15,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_KOPFG_V141
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_KOPFG_V141" 
   (	"KPF_ID" NUMBER(3,0), 
	"KPF_CODE" VARCHAR2(10), 
	"KPF_NAME" VARCHAR2(250)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_KVED
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_KVED" 
   (	"KVD_ID" NUMBER(14,0), 
	"KVD_SECTION" CHAR(1), 
	"KVD_SUBSECTION" CHAR(1), 
	"KVD_PARTITION" CHAR(2), 
	"KVD_GROUP" CHAR(1), 
	"KVD_CLASS" CHAR(1), 
	"KVD_SUBCLASS" CHAR(1), 
	"KVD_NAME" VARCHAR2(250), 
	"KVD_KVD" NUMBER(14,0), 
	"KVD_ST" CHAR(1), 
	"KVD_SNAME" VARCHAR2(100), 
	"KVD_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"KVD_TYPE" VARCHAR2(10)
   ) 
   CACHE ;
--------------------------------------------------------
--  DDL for Table NSI_KVED2RISK
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_KVED2RISK" 
   (	"KVD2RC_KVD" NUMBER(14,0), 
	"KVD2RC_RC" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_MINISTRY
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_MINISTRY" 
   (	"MIN_ID" NUMBER(14,0), 
	"MIN_IB" NUMBER(14,0), 
	"MIN_NAME" VARCHAR2(250), 
	"MIN_CODE" CHAR(4), 
	"MIN_SNAME" VARCHAR2(100), 
	"MIN_ST" CHAR(1), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"MIN_DEL_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_MNG_FORM
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_MNG_FORM" 
   (	"MN_ID" NUMBER(14,0), 
	"MN_MN" NUMBER(14,0), 
	"MN_NAME" VARCHAR2(250), 
	"MN_CODE" CHAR(5), 
	"MN_SNAME" VARCHAR2(100), 
	"MN_ST" CHAR(1), 
	"MN_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_MRD_REASON_STOP
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_MRD_REASON_STOP" 
   (	"MRS_ID" NUMBER(14,0), 
	"MRS_CODE" VARCHAR2(5), 
	"MRS_NAME" VARCHAR2(250), 
	"MRS_SNAME" VARCHAR2(100), 
	"MRS_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_OPF_CODE
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_OPF_CODE" 
   (	"OPF_ID" NUMBER(14,0), 
	"OPF_STATE" NUMBER(1,0), 
	"OPF_KD" NUMBER(14,0), 
	"OPF_NAME" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_PROP_FORM
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_PROP_FORM" 
   (	"PF_ID" NUMBER(14,0), 
	"PF_NAME" VARCHAR2(250), 
	"PF_CODE" CHAR(2), 
	"PF_SNAME" VARCHAR2(100), 
	"PF_ST" CHAR(1), 
	"PF_DEL_DT" DATE, 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_PRSN_DOCTP
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_PRSN_DOCTP" 
   (	"PDT_ID" NUMBER(14,0), 
	"PDT_NAME" VARCHAR2(250), 
	"PDT_SNAME" VARCHAR2(100), 
	"PDT_ST" CHAR(1), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"PDT_DEL_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_REASON_BREAK
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_REASON_BREAK" 
   (	"RB_ID" NUMBER(14,0), 
	"RB_CODE" VARCHAR2(3), 
	"RB_NAME" VARCHAR2(350), 
	"RB_SNAME" VARCHAR2(350), 
	"RB_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_REASON_STOP
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_REASON_STOP" 
   (	"RS_ID" NUMBER(14,0), 
	"RS_NAME" VARCHAR2(250), 
	"RS_SNAME" VARCHAR2(100), 
	"RS_ST" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_REGION_UKR
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_REGION_UKR" 
   (	"RU_ID" NUMBER(14,0), 
	"RU_CODE" VARCHAR2(3), 
	"RU_NAME" VARCHAR2(100), 
	"RU_SNAME" VARCHAR2(100), 
	"RU_ST" CHAR(1) DEFAULT 'A', 
	"RU_CODE2" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_REG_ORG
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_REG_ORG" 
   (	"RO_ID" NUMBER(14,0), 
	"RO_NAME" VARCHAR2(250), 
	"RO_SNAME" VARCHAR2(250), 
	"RO_ST" CHAR(1), 
	"RO_OBL" VARCHAR2(2), 
	"RO_EDRPOU" VARCHAR2(10), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"RO_DEL_DT" DATE, 
	"RO_ADDRESS" VARCHAR2(255), 
	"RO_CODE" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_RISK_CODE
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_RISK_CODE" 
   (	"RC_ID" NUMBER(14,0), 
	"RC_CODE" VARCHAR2(5), 
	"RC_NAME" VARCHAR2(250), 
	"RC_VALUE" NUMBER(7,3), 
	"RC_SNAME" VARCHAR2(100), 
	"RC_ST" CHAR(1), 
	"REPL_PACK" NUMBER(10,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_TAXATION
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_TAXATION" 
   (	"TX_ID" NUMBER(3,0), 
	"TX_NAME" VARCHAR2(250), 
	"TX_ST" VARCHAR2(10), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"TX_DEL_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_VOL_INSURER
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_VOL_INSURER" 
   (	"VI_ID" NUMBER(14,0), 
	"VI_CODE" VARCHAR2(5), 
	"VI_NAME" VARCHAR2(250), 
	"VI_SNAME" VARCHAR2(100), 
	"VI_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_ZO_TARIFF
--------------------------------------------------------

  CREATE TABLE "IKIS_NDI"."NSI_ZO_TARIFF" 
   (	"ZOT_ID" NUMBER(3,0), 
	"ZOT_ZO" NUMBER(3,0), 
	"ZOT_ZT" NUMBER(3,0), 
	"ZOT_TARIFF_TP" VARCHAR2(10), 
	"ZOT_MEASURE" VARCHAR2(10), 
	"ZOT_TARIFF" VARCHAR2(250), 
	"ZOT_ST" CHAR(1), 
	"REPL_PACK" NUMBER(14,0), 
	"REPL_TP" VARCHAR2(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"ZOT_DEL_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table MRDORG
--------------------------------------------------------

  CREATE TABLE "IKIS_SYS"."MRDORG" 
   (	"MRD_ID" NUMBER(14,0), 
	"MRD_MRD" NUMBER(14,0), 
	"MRD_CODE" VARCHAR2(5), 
	"MRD_NUMIDENT" VARCHAR2(10), 
	"MRD_NAME" VARCHAR2(250), 
	"MRD_SNAME" VARCHAR2(250), 
	"MRD_REG_CODE" NUMBER(2,0), 
	"MRD_ST" CHAR(1) DEFAULT 'A', 
	"MRD_START_DT" DATE DEFAULT TRUNC(SYSDATE), 
	"MRD_STOP_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table OPFU
--------------------------------------------------------

  CREATE TABLE "IKIS_SYS"."OPFU" 
   (	"ORG_ID" NUMBER(5,0), 
	"ORG_CODE" CHAR(5), 
	"ORG_NAME" VARCHAR2(250), 
	"ORG_ORG" NUMBER(5,0), 
	"ORG_START_DT" DATE, 
	"ORG_ST" CHAR(1), 
	"ORG_STOP_DT" DATE, 
	"ORG_NOTE" VARCHAR2(2000), 
	"ORG_CURRENT" CHAR(1), 
	"ORG_TO" NUMBER(1,0), 
	"ORG_HORG" NUMBER(5,0), 
	"ORG_MERGED" VARCHAR2(1)
   ) ;

   COMMENT ON COLUMN "IKIS_SYS"."OPFU"."ORG_TO" IS 'Ід типу опфу type_opfu центр, регіон, район або центр обробки громадян';
   COMMENT ON COLUMN "IKIS_SYS"."OPFU"."ORG_HORG" IS 'Ід ОПФУ якому підпорядковується поточний у випадку центру прийома громадян';
   COMMENT ON COLUMN "IKIS_SYS"."OPFU"."ORG_MERGED" IS 'Чи був ОПФУ об’єднаний або адмінреформований деталі у opfu_migration';
--------------------------------------------------------
--  DDL for Table INSURED_PERSON
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."INSURED_PERSON" 
   (	"IP_ID" NUMBER(14,0), 
	"IP_IP" NUMBER(14,0), 
	"IP_UNIQUE" VARCHAR2(100), 
	"IP_PC" NUMBER(14,0), 
	"IP_CREATE_DT" DATE DEFAULT sysdate, 
	"IP_PT" NUMBER(14,0), 
	"IP_SRC" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table INSURED_PERSON_INFO
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."INSURED_PERSON_INFO" 
   (	"IP_ID" NUMBER(14,0), 
	"LN_NAME" VARCHAR2(200), 
	"FN_NAME" VARCHAR2(200), 
	"SN_NAME" VARCHAR2(200), 
	"NT_NAME" VARCHAR2(250), 
	"SEX_NAME" VARCHAR2(200), 
	"BIRTH_DT" DATE, 
	"PASS_SERIAL" VARCHAR2(10), 
	"PASS_NUMBER" VARCHAR2(50), 
	"PT_NAME" VARCHAR2(200), 
	"NUMIDENT" VARCHAR2(50), 
	"MODIFY_DT" DATE, 
	"IP_UNIQUE" VARCHAR2(100), 
	"PASS_DT" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."IP_ID" IS 'ID застрахованої особи';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."LN_NAME" IS 'Прізвище особи';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."FN_NAME" IS 'Імя особи';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."SN_NAME" IS 'По батькові особи';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."NT_NAME" IS 'Громадянство';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."SEX_NAME" IS 'Стать';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."BIRTH_DT" IS 'Дата народження';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."PASS_SERIAL" IS 'Серія ідентифікаційного документа';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."PASS_NUMBER" IS 'Номер ідентифікаційного документа';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."PT_NAME" IS 'Стан запису персони';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."NUMIDENT" IS 'ІНН';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."MODIFY_DT" IS 'Дата останьої модифікації';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."IP_UNIQUE" IS 'КСС';
   COMMENT ON COLUMN "IKIS_PERSON"."INSURED_PERSON_INFO"."PASS_DT" IS 'ІД ідентифікаційного документа (ikis_person.nsi_document_type)';
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA" 
   (	"LFD_ID" NUMBER(14,0), 
	"LFD_LFD" NUMBER(14,0), 
	"LFD_FILE_NAME" VARCHAR2(255), 
	"LFD_LFT" NUMBER(14,0), 
	"LFD_MIME_TYPE" VARCHAR2(100), 
	"LFD_FILESIZE" NUMBER(14,0) DEFAULT 0, 
	"LFD_CREATE_DT" DATE DEFAULT sysdate, 
	"LFD_USER_ID" NUMBER(14,0), 
	"LFD_SRC" NUMBER(14,0), 
	"LFD_JB" NUMBER(14,0), 
	"LFD_ST" CHAR(1) DEFAULT 'O', 
	"LFD_RECORDS" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_ID" IS 'ІД файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_FILE_NAME" IS 'Назва файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_LFT" IS 'Тип файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_MIME_TYPE" IS 'MIME Тип файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_FILESIZE" IS 'Розмір файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_CREATE_DT" IS 'Дата створення запису';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_USER_ID" IS 'ІД користувача (ikis_sysweb.w_users)';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_SRC" IS 'Ідентифікатор джерела надходження';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_JB" IS 'Ідентифікатор завдання на виконання (ikis_sysweb.w_jobs)';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_ST" IS 'Статус запису';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA"."LFD_RECORDS" IS 'Кількість записів в файлі';
   COMMENT ON TABLE "IKIS_PERSON"."LOAD_FILE_DATA"  IS 'Завантаженя файлів в текстовому форматі';
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA_CONTENT
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT" 
   (	"LFDC_ID" NUMBER(14,0), 
	"LFDC_LFD" NUMBER(14,0), 
	"CONTENT" BLOB
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT"."LFDC_ID" IS 'Ідентифікатор запису';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT"."LFDC_LFD" IS 'ІД файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT"."CONTENT" IS 'Вкладення файлу';
   COMMENT ON TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT"  IS 'Завантаженя файлів в текстовому форматі';
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA_JOBS
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" 
   (	"LFDJ_ID" NUMBER(14,0), 
	"LFDJ_LFD" NUMBER(14,0), 
	"LFDJ_JB" NUMBER(14,0), 
	"LFDJ_JB_WJT" VARCHAR2(30), 
	"LFDJ_JB_NAME" VARCHAR2(30), 
	"LFDJ_JB_START" DATE, 
	"LFDJ_JB_END" DATE, 
	"LFDJ_JB_ST" VARCHAR2(10), 
	"LFDJ_ST" CHAR(1) DEFAULT 'A'
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_JOBS"."LFDJ_ID" IS 'ИД истории заданий';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_JOBS"."LFDJ_LFD" IS 'Ссылка на файл';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_JOBS"."LFDJ_JB" IS 'идентификатор задания (без ссылки на таблицу)';
   COMMENT ON TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS"  IS 'История заданий по загрузке файлов';
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" 
   (	"LFDL_ID" NUMBER(14,0), 
	"LFDL_LFD" NUMBER(14,0), 
	"LFDL_TEXT" VARCHAR2(4000), 
	"LFDL_FILE_ST" CHAR(1), 
	"LFDL_CREATE" DATE DEFAULT sysdate, 
	"LFDL_USER_ID" NUMBER(14,0), 
	"LFDL_TP" CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA_PARS
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS" 
   (	"LFDP_ID" NUMBER(14,0), 
	"LFDP_LFD" NUMBER(14,0), 
	"LFDP_RN" NUMBER(10,0), 
	"LFDP_ST" VARCHAR2(10), 
	"F1" VARCHAR2(500), 
	"F2" VARCHAR2(500), 
	"F3" VARCHAR2(500), 
	"F4" VARCHAR2(500), 
	"F5" VARCHAR2(500), 
	"F6" VARCHAR2(500), 
	"F7" VARCHAR2(500), 
	"F8" VARCHAR2(500), 
	"F9" VARCHAR2(500), 
	"F10" VARCHAR2(500), 
	"F11" VARCHAR2(500), 
	"F12" VARCHAR2(500), 
	"F13" VARCHAR2(500), 
	"F14" VARCHAR2(500), 
	"F15" VARCHAR2(500), 
	"F16" VARCHAR2(500), 
	"F17" VARCHAR2(500), 
	"F18" VARCHAR2(500), 
	"F19" VARCHAR2(500), 
	"F20" VARCHAR2(500), 
	"F21" VARCHAR2(500), 
	"F22" VARCHAR2(500), 
	"F23" VARCHAR2(500), 
	"F24" VARCHAR2(500), 
	"F25" VARCHAR2(500), 
	"F26" VARCHAR2(500), 
	"F27" VARCHAR2(500), 
	"F28" VARCHAR2(500), 
	"F29" VARCHAR2(500), 
	"F30" VARCHAR2(500), 
	"F31" VARCHAR2(500), 
	"F32" VARCHAR2(500), 
	"F33" VARCHAR2(500), 
	"F34" VARCHAR2(500), 
	"F35" VARCHAR2(500), 
	"F36" VARCHAR2(500), 
	"F37" VARCHAR2(500), 
	"F38" VARCHAR2(500), 
	"F39" VARCHAR2(500), 
	"F40" VARCHAR2(500), 
	"F41" VARCHAR2(500), 
	"F42" VARCHAR2(500), 
	"F43" VARCHAR2(500), 
	"F44" VARCHAR2(500), 
	"F45" VARCHAR2(500), 
	"F46" VARCHAR2(500), 
	"F47" VARCHAR2(500), 
	"F48" VARCHAR2(500), 
	"F49" VARCHAR2(500), 
	"F50" VARCHAR2(500), 
	"LFDP_LFT" NUMBER(14,0), 
	"LFDP_LFD_LFD" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_PARS"."LFDP_ST" IS 'Числово-символьный набор состояния записи, начальное состояние "N" - новая запись';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_PARS"."LFDP_LFT" IS 'Ідентифікатор типу файлу';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_PARS"."LFDP_LFD_LFD" IS 'Ідентифікатор ініціативного файлу';
   COMMENT ON TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS"  IS 'Таблица с данными после обработки';
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA_PARS_CLB
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" 
   (	"LFDPC_ID" NUMBER(14,0), 
	"LFDPC_LFD" NUMBER(14,0), 
	"LFDPC_LFDP" NUMBER(14,0), 
	"LFDPC_CODE" VARCHAR2(10), 
	"LFDPC_TEXT" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table LOAD_FILE_DATA_REF
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" 
   (	"LFDR_ID" NUMBER(14,0), 
	"LFDR_LFDP" NUMBER(14,0), 
	"LFDR_TRG" NUMBER(14,0), 
	"LFDR_CODE" VARCHAR2(500), 
	"LFDR_CREATE_DT" DATE DEFAULT sysdate
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_REF"."LFDR_ID" IS 'ІД запису в таблиці';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_REF"."LFDR_LFDP" IS 'ІД запису даних парсинга';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_REF"."LFDR_TRG" IS 'ІД запису даних УСС';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_REF"."LFDR_CODE" IS 'Назва обекта системи УСС';
   COMMENT ON COLUMN "IKIS_PERSON"."LOAD_FILE_DATA_REF"."LFDR_CREATE_DT" IS 'Дата створення';
   COMMENT ON TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF"  IS 'Відношення даних';
--------------------------------------------------------
--  DDL for Table PERSON_ESV_LINK
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."PERSON_ESV_LINK" 
   (	"PEL_ID" NUMBER(14,0), 
	"PEL_IP" NUMBER(14,0), 
	"PEL_NUMIDENT" VARCHAR2(50), 
	"PEL_FN" NUMBER(14,0), 
	"PEL_LN" NUMBER(14,0), 
	"PEL_SN" NUMBER(14,0), 
	"PEL_NT" NUMBER(14,0), 
	"PEL_SEX" NUMBER(14,0), 
	"PEL_IM" NUMBER(14,0), 
	"PEL_SRC" NUMBER(14,0), 
	"PEL_CREATE_DT" DATE DEFAULT sysdate, 
	"PEL_ST" CHAR(1) DEFAULT 'A', 
	"PEL_IS_ACTREP" CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSON_ESV_LINK_PRECALC
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" 
   (	"PEL_ID" NUMBER(14,0), 
	"PEL_NUMIDENT" VARCHAR2(50), 
	"PEL_LN" NUMBER(14,0), 
	"PEL_FN" NUMBER(14,0), 
	"PEL_SN" NUMBER(14,0), 
	"PEL_SEX" NUMBER(14,0), 
	"PEL_NT" NUMBER(14,0), 
	"PEL_SRC" NUMBER(14,0), 
	"PEL_CREATE_DT" DATE, 
	"S_IP_ID" NUMBER, 
	"S_DC_ID_T" NUMBER, 
	"S_DC_ID_F" NUMBER, 
	"S_PD_ID" NUMBER, 
	"S_PC_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERSON_ESV_LINK_PRECALC_REPORT
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" 
   (	"PRC_ID" NUMBER(2,0), 
	"INS_PERSON_ESV_LINK_PRECALC" NUMBER(1,0) DEFAULT 0, 
	"INS_INSURED_PERSON" NUMBER(1,0) DEFAULT 0, 
	"INS_DOCUMENT_DATA_T" NUMBER(1,0) DEFAULT 0, 
	"INS_DOCUMENT_DATA_F" NUMBER(1,0) DEFAULT 0, 
	"INS_PERSON_DATA" NUMBER(1,0) DEFAULT 0, 
	"INS_PERSON_CHANGE" NUMBER(1,0) DEFAULT 0, 
	"UPD_PERSON_ESV_LINK" NUMBER(1,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table ADDRESS_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_PERSON"."ADDRESS_DATA" 
   (	"AD_ID" NUMBER(14,0), 
	"AD_KT" NUMBER(14,0), 
	"AD_AT" NUMBER(14,0), 
	"AD_POSTCODE" VARCHAR2(10), 
	"AD_CN" NUMBER(14,0), 
	"AD_COUNTRY" VARCHAR2(250), 
	"AD_RG" NUMBER(14,0), 
	"AD_REGION" VARCHAR2(250), 
	"AD_CITY" VARCHAR2(250), 
	"AD_STREET" VARCHAR2(250), 
	"AD_DS" NUMBER(14,0), 
	"AD_DISTRICT" VARCHAR2(250), 
	"AD_BUILDING" VARCHAR2(50), 
	"AD_BLOCK" VARCHAR2(50), 
	"AD_CT" NUMBER(14,0), 
	"AD_APARTMENT" VARCHAR2(50), 
	"AD_NOTE" VARCHAR2(250), 
	"AD_IP" NUMBER(14,0), 
	"AD_ST" CHAR(1), 
	"AD_KAOT" NUMBER(14,0), 
	"AD_KAOT_CODE" VARCHAR2(19), 
	"AD_DT" DATE, 
	"AD_VERIFY_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_PERSON"."ADDRESS_DATA"."AD_KAOT" IS 'Ід катотг';
   COMMENT ON COLUMN "IKIS_PERSON"."ADDRESS_DATA"."AD_KAOT_CODE" IS 'Код катотг';
   COMMENT ON COLUMN "IKIS_PERSON"."ADDRESS_DATA"."AD_VERIFY_DT" IS 'Дата верифікації адреси';
--------------------------------------------------------
--  DDL for Table INSUR_FILE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERS"."INSUR_FILE" 
   (	"FILE_ID" NUMBER(14,0), 
	"FILE_START_DT" DATE, 
	"FILE_DS" NUMBER(14,0), 
	"FILE_STOP_DT" DATE, 
	"FILE_USER" NUMBER, 
	"FILE_NAME" VARCHAR2(250), 
	"FILE_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table W_USERS
--------------------------------------------------------

  CREATE TABLE "IKIS_SYSWEB"."W_USERS" 
   (	"WU_ID" NUMBER(14,0), 
	"WU_LOGIN" VARCHAR2(30), 
	"WU_WUT" NUMBER(14,0), 
	"WU_ORG" NUMBER(5,0), 
	"WU_PASSWORD" VARCHAR2(100), 
	"WU_PIB" VARCHAR2(255), 
	"WU_CR_DT" DATE, 
	"WU_LOCKED" VARCHAR2(10) DEFAULT 'N', 
	"WU_NUMID" VARCHAR2(10), 
	"WU_TRC" VARCHAR2(10), 
	"WU_ORG_ORG" NUMBER(5,0), 
	"WU_LOGIN_SIMPLE" NUMBER(1,0) DEFAULT 1, 
	"WU_LOGIN_CARD" NUMBER(1,0) DEFAULT 0, 
	"WU_CARD_NUM" VARCHAR2(20), 
	"WU_WTR" NUMBER(14,0), 
	"WU_EP" NUMBER(14,0), 
	"WU_LOGIN_SIGN" NUMBER(1,0) DEFAULT 0, 
	"WU_PWD_EXPIRE_DT" DATE, 
	"WU_WU_CHG" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_ID" IS 'ID';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_LOGIN" IS 'Логін коритсувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_WUT" IS 'Тип користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_ORG" IS 'ОПФУ користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_PASSWORD" IS 'Хеш пароля користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_PIB" IS 'ПІБ користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_CR_DT" IS 'Створено';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_LOCKED" IS 'Чи заблоковано Y/N';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_NUMID" IS '№ ОКЗО';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_TRC" IS 'Установка уровня трассировки пользователя: 0,4,8,12';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_WTR" IS 'Ід типової ролі';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_EP" IS 'Ід працівника з кадрового модуля';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_LOGIN_SIGN" IS 'Логін за ЕЦП(за допомогою особистого ключа)';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_PWD_EXPIRE_DT" IS 'Дата закінчення строку дії паролю';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS"."WU_WU_CHG" IS 'Ід адмістратора, що останій редагував запис';
--------------------------------------------------------
--  DDL for Table W_USERS_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_SYSWEB"."W_USERS_HST" 
   (	"WUH_ID" NUMBER(14,0), 
	"WUH_LOGIN_MD" VARCHAR2(30), 
	"WUH_WU" NUMBER(14,0), 
	"WUH_PWD_CHNG" VARCHAR2(10), 
	"WUH_PIB" VARCHAR2(255), 
	"WUH_AUTH_DT" DATE, 
	"WUH_LOCKED" VARCHAR2(10), 
	"WUH_NUMID" VARCHAR2(10), 
	"WUH_ROLES" VARCHAR2(4000), 
	"WUH_WUT" NUMBER(14,0), 
	"WUH_ORG" NUMBER(5,0), 
	"WUH_LOGIN_SIMPLE" NUMBER(1,0) DEFAULT 1, 
	"WUH_LOGIN_CARD" NUMBER(1,0) DEFAULT 0, 
	"WUH_CARD_NUM" VARCHAR2(20), 
	"WUH_LOGIN_SIGN" NUMBER(1,0) DEFAULT 0, 
	"WUH_WU_WU_CHG" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_ID" IS 'ІД';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_LOGIN_MD" IS 'Логін користувача, що змінював';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_WU" IS 'Посилання на актуальний запис користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_PWD_CHNG" IS 'Чи змінювався пароль (Y/N)';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_PIB" IS 'ПІБ користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_AUTH_DT" IS 'Дата створення запису аудиту';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_LOCKED" IS 'Чи був заблокований Y/N';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_NUMID" IS '№ ОКЗО користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_ROLES" IS 'Список ролей, що були на час створення запису аудиту';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_WUT" IS 'Тип користувача';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_ORG" IS 'ОПФУ';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_LOGIN_SIGN" IS 'Логін за ЕЦП';
   COMMENT ON COLUMN "IKIS_SYSWEB"."W_USERS_HST"."WUH_WU_WU_CHG" IS 'Ід адмістратора, що останій редагував запис';
--------------------------------------------------------
--  DDL for Table CDE_PCASH
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."CDE_PCASH" 
   (	"CDP_ID" NUMBER(14,0), 
	"CDP_CDE" NUMBER(14,0), 
	"CDP_CDS" NUMBER(14,0), 
	"CDP_CHARGE_DT" DATE, 
	"CDP_ST" VARCHAR2(10)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_PCASH"."CDP_ID" IS 'Ід запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_PCASH"."CDP_CDE" IS 'Ід виконання судового рішення';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_PCASH"."CDP_CDS" IS 'Ід суттєвостей, до якого приміняється судове рішення';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_PCASH"."CDP_CHARGE_DT" IS 'Дата за яку втановюється позначка';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_PCASH"."CDP_ST" IS 'Статус запису';
--------------------------------------------------------
--  DDL for Table CDE_SM
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."CDE_SM" 
   (	"CSM_ID" NUMBER(14,0), 
	"CSM_OPR_TP" VARCHAR2(10), 
	"CSM_ST" VARCHAR2(10), 
	"CSM_CDE" NUMBER(14,0), 
	"CSM_CDS" NUMBER(14,0), 
	"CSM_SLB" NUMBER(14,0), 
	"CSM_PAGE" NUMBER(14,0), 
	"CSM_RECNO" NUMBER(14,0), 
	"CSM_SM_TABLE_TP" VARCHAR2(10), 
	"CMS_IDENT" NUMBER(14,0), 
	"CSM_DT" DATE, 
	"CSM_TABNO_TP" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_ID" IS 'Ід запису звітів з судовим рішенням';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_OPR_TP" IS 'Тип операції';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_ST" IS 'статус';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_CDE" IS 'Ід виконання судового рішення';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_CDS" IS 'Ід суттєвостей, до якого приміняється судове рішення';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_SLB" IS 'SLB_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_PAGE" IS 'Ід аркуша звіту';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_RECNO" IS 'Ід запису на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_SM_TABLE_TP" IS 'тип таблиці або доатку';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CMS_IDENT" IS 'Ід запису таблиці';
   COMMENT ON COLUMN "IKIS_WEBSM"."CDE_SM"."CSM_TABNO_TP" IS 'Тип таблиці';
--------------------------------------------------------
--  DDL for Table LINKED_DOCS_FILE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" 
   (	"LDF_ID" NUMBER(14,0), 
	"LDF_SPE" NUMBER(14,0), 
	"LDF_NDFL" NUMBER(14,0), 
	"LDF_FILENAME" VARCHAR2(255), 
	"LDF_SPL" NUMBER(14,0), 
	"LDF_C_DOC_CNT" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."LINKED_DOCS_FILE"."LDF_SPL" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."LINKED_DOCS_FILE"."LDF_C_DOC_CNT" IS 'Номер однотипного документа в періоді';
--------------------------------------------------------
--  DDL for Table NSI_CHANGE_STATE_STAUS
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS" 
   (	"NCSS_ID" VARCHAR2(10), 
	"NCSS_NAME" VARCHAR2(50)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS"."NCSS_ID" IS 'код статусу';
   COMMENT ON COLUMN "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS"."NCSS_NAME" IS 'Назва статусу';
   COMMENT ON TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS"  IS 'Стан завдання';
--------------------------------------------------------
--  DDL for Table NSI_CHANGE_STATE_TYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE" 
   (	"NCST_ID" VARCHAR2(10), 
	"NCST_NAME" VARCHAR2(50)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE"."NCST_ID" IS 'Код типу завдань';
   COMMENT ON COLUMN "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE"."NCST_NAME" IS 'назва типу задань';
   COMMENT ON TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE"  IS 'Тип опрерації';
--------------------------------------------------------
--  DDL for Table NSI_DFS_DOC_TYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."NSI_DFS_DOC_TYPE" 
   (	"NDDT_ID" NUMBER(14,0), 
	"NDDT_C_DOC" VARCHAR2(3), 
	"NDDT_C_DOC_SUB" VARCHAR2(3), 
	"NDDT_C_DOC_VER" VARCHAR2(2), 
	"NDDT_ST" VARCHAR2(10), 
	"NDDT_VALID_FROM" DATE, 
	"NDDT_VALID_UNTIL" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_TYPE5_TABLE_TYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."NSI_TYPE5_TABLE_TYPE" 
   (	"NTTT_ID" NUMBER(14,0), 
	"NTTT_CODE" VARCHAR2(20), 
	"NTTT_NAME" VARCHAR2(255)
   ) ;
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
--  DDL for Table SK_PACKLABEL
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_PACKLABEL" 
   (	"SPL_ID" NUMBER(14,0), 
	"SPL_IM" NUMBER(14,0), 
	"SPL_IM_GUID" NUMBER(14,0), 
	"SPL_NQRT" NUMBER(14,0), 
	"SPL_NPDT_TYPE_PFU" NUMBER(14,0), 
	"SPL_DT_IN" DATE, 
	"SPL_ID_IN" NUMBER(14,0), 
	"SPL_CHARG_QUART" NUMBER(2,0), 
	"SPL_CHARG_YEAR" NUMBER(4,0), 
	"SPL_CHARGE_DT" DATE, 
	"SPL_REPORT_NUM" NUMBER(14,0), 
	"SPL_ACTUALITY" VARCHAR2(1) DEFAULT 'N', 
	"SPL_NDDT" NUMBER(14,0), 
	"SPL_ST" VARCHAR2(10), 
	"SPL_SCSQ_PROT_SEANS" NUMBER(14,0), 
	"SPL_SUCCESSOR_IM" NUMBER(14,0), 
	"SPL_SUCCESSOR_GUID" NUMBER(14,0), 
	"SPL_DODAT_NUMIDENT" VARCHAR2(10), 
	"SPL_START_DT" DATE, 
	"SPL_STOP_DT" DATE, 
	"SPL_MRD" NUMBER(4,0), 
	"SPL_NCT" NUMBER(14,0), 
	"SPL_RU" NUMBER(14,0), 
	"SPL_DOVIDN" NUMBER(1,0), 
	"SPL_CHARGE_MNTH" NUMBER(2,0)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_ID" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_IM" IS 'Ід страхувальника ЄРС';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_IM_GUID" IS 'Гуід страхувальника ЄРС';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_NQRT" IS 'Ід типу квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_NPDT_TYPE_PFU" IS 'Ід типу звіту для ПФУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_DT_IN" IS 'Вхідна дата у ПФУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_ID_IN" IS 'Вхідний номер у ПФУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_CHARG_QUART" IS 'Звітний квартал';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_CHARG_YEAR" IS 'Звітний рік';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_CHARGE_DT" IS 'Звітна дата';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_REPORT_NUM" IS 'Номер розрахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_ACTUALITY" IS 'Признак актуальний Y або N_не відображається';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_NDDT" IS 'Тип звіту податкової ключ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_ST" IS 'Ід статусу звіту';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_SCSQ_PROT_SEANS" IS 'Ід сеансу протоколу понктролю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_SUCCESSOR_IM" IS 'Ід ліквідованого підприємства';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_SUCCESSOR_GUID" IS 'Гуід ліквідованого підприємства';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_DODAT_NUMIDENT" IS 'Для додоаткового особа';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_START_DT" IS 'Дата початку завантаження';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_STOP_DT" IS 'Дата завершення завантаження';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_MRD" IS 'Код органу ДФС';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_NCT" IS 'Ід типу звітного періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_RU" IS 'Ід регіону України';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_DOVIDN" IS 'Ознака довідниковий';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL"."SPL_CHARGE_MNTH" IS 'Звітний місяць';
--------------------------------------------------------
--  DDL for Table SK_PACKLABEL_EXTENDED
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED" 
   (	"SPLE_ID" NUMBER(14,0), 
	"SPLE_IH" NUMBER(14,0), 
	"SPLE_NUMIDENT" VARCHAR2(10), 
	"SPLE_INSURER_NAME" VARCHAR2(500), 
	"SPLE_INSURER_REG_DT" DATE, 
	"SPLE_INSURER_REG_NUM" VARCHAR2(100), 
	"SPLE_ATOTTG" VARCHAR2(19), 
	"SPLE_SEPARATES_DEPARTMENT" VARCHAR2(500), 
	"SPLE_SUCCESSOR_NUMIDENT" VARCHAR2(10), 
	"SPLE_SUCCESSOR_INCODE" VARCHAR2(5), 
	"SPLE_TAX_ADDR" VARCHAR2(500), 
	"SPLE_POSTAL_INDEX" VARCHAR2(10), 
	"SPLE_TEL" VARCHAR2(50), 
	"SPLE_FAX" VARCHAR2(50), 
	"SPLE_EMAIL" VARCHAR2(50), 
	"SPLE_REPORT_SEND_TO" VARCHAR2(500), 
	"SPLE_DFS_IN_DT" DATE, 
	"SPLE_KVT_CODE" VARCHAR2(2), 
	"SPLE_MRD_ORG_SEND" NUMBER(4,0), 
	"SPLE_BOSS_NUMIDENT" VARCHAR2(10), 
	"SPLE_BOSS_PIB" VARCHAR2(90), 
	"SPLE_ACC_NUMIDENT" VARCHAR2(10), 
	"SPLE_ACC_PIB" VARCHAR2(90), 
	"SPLE_SRV_IN_DT" DATE, 
	"SPLE_REPORT_OWNER_SRC" NUMBER(1,0), 
	"SPLE_FILL_DT" DATE, 
	"SPLE_APENDIX_TXT" VARCHAR2(1000), 
	"SPLE_PAGES" NUMBER(14,0), 
	"SPLE_IS_LIKV" NUMBER(1,0), 
	"SPLE_DEACTUALIZE_DT" DATE, 
	"SPLE_EXECUTOR_NUMIDENT" VARCHAR2(10), 
	"SPLE_EXECUTOR_PIB" VARCHAR2(500), 
	"SPLE_DOVIDN_MNTH" NUMBER(2,0), 
	"SPLE_UTOCH_YEAR" NUMBER(4,0), 
	"SPLE_UTOCH_NCT" NUMBER(14,0), 
	"SPLE_SOFTWARE" VARCHAR2(500), 
	"SPLE_CORRECTION_SPL" NUMBER(14,0), 
	"SPLE_AREA_CODE" VARCHAR2(50), 
	"SPLE_SUBTYPE" VARCHAR2(20), 
	"SPLE_UTOCH_QUART" NUMBER(1,0), 
	"SPLE_UTOCH_MNTH" NUMBER(2,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_ID" IS 'Ід ярлика квартальної звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_IH" IS 'Ід анкети на час завантаження';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_NUMIDENT" IS 'Податковий номер або серія та номер паспорта платника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_INSURER_NAME" IS 'Назва платника 03';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_INSURER_REG_DT" IS 'Дата реєстрації';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_INSURER_REG_NUM" IS 'номер реєстрації';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_ATOTTG" IS 'Кодифікатор адміністративно-територіальних одиниць та територій територіальних громад UA17 цифр';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_SEPARATES_DEPARTMENT" IS 'Відокремлений підрозділ юридичної особи_033';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_SUCCESSOR_NUMIDENT" IS 'ЄДРПО ліквідованого підприємства';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_SUCCESSOR_INCODE" IS 'Філія ліквідованого підприємства';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_TAX_ADDR" IS 'Податкова адреса';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_POSTAL_INDEX" IS 'Поштовий індекс';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_TEL" IS 'Телефон';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_FAX" IS 'Факс';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_EMAIL" IS 'Електронна адреса';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_REPORT_SEND_TO" IS 'Назва органу ДФС до якого подається розрахунок';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_DFS_IN_DT" IS 'Дата з імені файлу 729 ДФС';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_KVT_CODE" IS 'код квитанції кв2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_MRD_ORG_SEND" IS 'ДФС до якого відправлено файл';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_BOSS_NUMIDENT" IS 'РНОКПП Керівника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_BOSS_PIB" IS 'ПІБ керівника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_ACC_NUMIDENT" IS 'РНОКПП бухгалтера';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_ACC_PIB" IS 'ПІБ бухгалтера';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_SRV_IN_DT" IS 'Дата надходження файлу до буферу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_REPORT_OWNER_SRC" IS 'Власник звіту походження 0 -старх 1-податкова';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_FILL_DT" IS 'Дата заповнення з розрахунку з даних роботодавця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_APENDIX_TXT" IS 'Зміст доповнення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_PAGES" IS 'К-сть аркушів';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_IS_LIKV" IS 'Чи ліквідуєт страхувальник';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_DEACTUALIZE_DT" IS 'Дата встрати звіту актуальності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_EXECUTOR_NUMIDENT" IS 'РНКОПП уповноваженої особи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_EXECUTOR_PIB" IS 'Піб уповноваженої особи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_DOVIDN_MNTH" IS 'Місяць подачі для довідкових';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_UTOCH_YEAR" IS 'Рік за який поється уточнена декларація';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_UTOCH_NCT" IS 'Тип звітного періоду для уточнення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_SOFTWARE" IS 'Програма формування звіту';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_CORRECTION_SPL" IS 'Ід звіту що звязан з корегуванням податкової K';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_AREA_CODE" IS 'Міжміський код';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_SUBTYPE" IS 'Підтип';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_UTOCH_QUART" IS 'Номер уточненого кварталу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED"."SPLE_UTOCH_MNTH" IS 'Номер місяця уточнення';
--------------------------------------------------------
--  Constraints for Table NSI_BANK
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_BANK" ADD CONSTRAINT "IPK_NSI_BANK" PRIMARY KEY ("NB_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_BANK"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_BANK" MODIFY ("NB_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_BANKPAY_TP
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_BANKPAY_TP" ADD CONSTRAINT "IPK_NSI_BANKPAY_TP" PRIMARY KEY ("BPT_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_BANKPAY_TP"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_BANKPAY_TP" MODIFY ("BPT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_BANK_FEE
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_BANK_FEE" ADD CONSTRAINT "IPK_NSI_BANK_FEE" PRIMARY KEY ("BF_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_BANK_FEE"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_BANK_FEE" MODIFY ("BF_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_BUSINESS_ST
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_BUSINESS_ST" ADD CONSTRAINT "IPK_NSI_BUSINESS_ST" PRIMARY KEY ("BS_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_BUSINESS_ST"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_BUSINESS_ST" MODIFY ("BS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_DATA_SOURCE
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_DATA_SOURCE" ADD CONSTRAINT "IPK_NSI_DATA_SOURCE" PRIMARY KEY ("DS_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_DATA_SOURCE"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_DATA_SOURCE" MODIFY ("DS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_DICT_MODIF
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_DICT_MODIF" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_DICT_MODIF" ADD CONSTRAINT "XPK_NSI_DICT_MODIF" PRIMARY KEY ("ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_DICT_MODIF"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_FIN_TP
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_FIN_TP" ADD CONSTRAINT "IPK_NSI_FIN_TP" PRIMARY KEY ("FNT_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_FIN_TP"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_FIN_TP" MODIFY ("FNT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_FUND
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_FUND" MODIFY ("FND_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_FUND" ADD CONSTRAINT "XPK_NSI_FUND" PRIMARY KEY ("FND_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_FUND"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_FUNDS_ACCIDENT
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_FUNDS_ACCIDENT" ADD CONSTRAINT "IDX_NSI_FONDS_ACCIDENT" PRIMARY KEY ("FA_ID")
  USING INDEX "IKIS_NDI"."IDX_NSI_FONDS_ACCIDENT"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_FUNDS_ACCIDENT" MODIFY ("FA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_FUNDS_SOCINSUR
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_FUNDS_SOCINSUR" ADD CONSTRAINT "IDX_NSI_FONDS_SOCINSUR" PRIMARY KEY ("FS_ID")
  USING INDEX "IKIS_NDI"."IDX_NSI_FONDS_SOCINSUR"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_FUNDS_SOCINSUR" MODIFY ("FS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_FUNDS_UNEMPLOYMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_FUNDS_UNEMPLOYMENT" ADD CONSTRAINT "IDX_NSI_FONDS_UNEMPLOYMENT" PRIMARY KEY ("FU_ID")
  USING INDEX "IKIS_NDI"."IDX_NSI_FONDS_UNEMPLOYMENT"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_FUNDS_UNEMPLOYMENT" MODIFY ("FU_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_INSURERCAT
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_INSURERCAT" ADD CONSTRAINT "CHK_NSI_INSURERCAT_IC_UF_TP" CHECK (IC_UF_TP in ('U','F')) ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_INSURERCAT" ADD CONSTRAINT "IPK_INSURERCAT" PRIMARY KEY ("IC_ID")
  USING INDEX "IKIS_NDI"."IPK_INSURERCAT"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_INSURERCAT" ADD CONSTRAINT "REGISTERTYPES62" CHECK (ic_uf_tp IN('U','F')) ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_INSURERCAT" MODIFY ("IC_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_INSURER_RISK_LEVEL_CVWI
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI" MODIFY ("DIRLC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI" ADD CONSTRAINT "XPK_DIC_INSURER_RISK_LEVEL_C" PRIMARY KEY ("DIRLC_ID")
  USING INDEX "IKIS_NDI"."XPK_DIC_INSURER_RISK_LEVEL_C"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_KOATUU
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KOATUU" ADD CONSTRAINT "CHK_NSI_KOATUU_KT_TP" CHECK (KT_TP in ('С','Т','М','Щ','Р')) ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_KOATUU" MODIFY ("KT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_KOATUU" MODIFY ("KT_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_KOATUU" ADD CONSTRAINT "XPK_NSI_KOATUU" PRIMARY KEY ("KT_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_KOATUU"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_KOPFG
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KOPFG" MODIFY ("KPF_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_KOPFG" ADD CONSTRAINT "XPK_NSI_KOPFG" PRIMARY KEY ("KPF_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_KOPFG"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_KVED
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KVED" ADD CONSTRAINT "IPK_NSI_KVED" PRIMARY KEY ("KVD_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_KVED"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_KVED" MODIFY ("KVD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_KVED2RISK
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KVED2RISK" MODIFY ("KVD2RC_KVD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_KVED2RISK" ADD CONSTRAINT "XPK_NSI_KVED2RISK" PRIMARY KEY ("KVD2RC_KVD")
  USING INDEX "IKIS_NDI"."XPK_NSI_KVED2RISK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_MINISTRY
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_MINISTRY" ADD CONSTRAINT "IPK_NSI_ECON_BRNCH" PRIMARY KEY ("MIN_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_ECON_BRNCH"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_MINISTRY" MODIFY ("MIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_MNG_FORM
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_MNG_FORM" ADD CONSTRAINT "IPK_NSI_MNG_FORM" PRIMARY KEY ("MN_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_MNG_FORM"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_MNG_FORM" MODIFY ("MN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_MRD_REASON_STOP
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_MRD_REASON_STOP" MODIFY ("MRS_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_MRD_REASON_STOP" MODIFY ("MRS_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_MRD_REASON_STOP" MODIFY ("MRS_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_MRD_REASON_STOP" ADD CONSTRAINT "XPK_NSI_MRD_REASON_STOP" PRIMARY KEY ("MRS_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_MRD_REASON_STOP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_OPF_CODE
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_OPF_CODE" ADD CONSTRAINT "CHK_OPFU_STATE" CHECK (OPF_STATE in (0,1,2)) ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_OPF_CODE" MODIFY ("OPF_KD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_OPF_CODE" ADD CONSTRAINT "XKP_OPF_CODE" PRIMARY KEY ("OPF_KD")
  USING INDEX "IKIS_NDI"."XKP_OPF_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_PROP_FORM
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_PROP_FORM" ADD CONSTRAINT "IPK_NSI_PROP_FORM" PRIMARY KEY ("PF_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_PROP_FORM"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_PROP_FORM" MODIFY ("PF_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_PRSN_DOCTP
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_PRSN_DOCTP" ADD CONSTRAINT "IPK_NSI_PRSN_DOCTP" PRIMARY KEY ("PDT_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_PRSN_DOCTP"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_PRSN_DOCTP" MODIFY ("PDT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_REASON_BREAK
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_REASON_BREAK" MODIFY ("RB_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_REASON_BREAK" MODIFY ("RB_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_REASON_BREAK" ADD CONSTRAINT "XPK_NSI_REASON_BREAK" PRIMARY KEY ("RB_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_REASON_BREAK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_REASON_STOP
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_REASON_STOP" MODIFY ("RS_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_REASON_STOP" MODIFY ("RS_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_REASON_STOP" ADD CONSTRAINT "XPK_NSI_REASON_STOP" PRIMARY KEY ("RS_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_REASON_STOP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_REGION_UKR
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_REGION_UKR" MODIFY ("RU_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_REGION_UKR" ADD CONSTRAINT "XPK_NSI_REGION_UKR" PRIMARY KEY ("RU_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_REGION_UKR"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_REG_ORG
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_REG_ORG" ADD CONSTRAINT "IPK_NSI_REG_ORG" PRIMARY KEY ("RO_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_REG_ORG"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_REG_ORG" MODIFY ("RO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_RISK_CODE
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_RISK_CODE" ADD CONSTRAINT "IPK_NSI_RISK_CODE" PRIMARY KEY ("RC_ID")
  USING INDEX "IKIS_NDI"."IPK_NSI_RISK_CODE"  ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_RISK_CODE" MODIFY ("RC_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_TAXATION
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_TAXATION" MODIFY ("TX_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_TAXATION" ADD CONSTRAINT "XPK_NSI_TAXATION" PRIMARY KEY ("TX_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_TAXATION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_VOL_INSURER
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_VOL_INSURER" ADD CONSTRAINT "CHK_NSI_VOL_INSURER_VI_ST" CHECK (VI_ST IN ('A', 'D', 'X')) ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_VOL_INSURER" MODIFY ("VI_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_VOL_INSURER" MODIFY ("VI_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_VOL_INSURER" MODIFY ("VI_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_VOL_INSURER" ADD CONSTRAINT "XPK_NSI_VOL_INSURER" PRIMARY KEY ("VI_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_VOL_INSURER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_ZO_TARIFF
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_ZO_TARIFF" MODIFY ("ZOT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_NDI"."NSI_ZO_TARIFF" ADD CONSTRAINT "XPK_NSI_ZO_TARIFF" PRIMARY KEY ("ZOT_ID")
  USING INDEX "IKIS_NDI"."XPK_NSI_ZO_TARIFF"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MRDORG
--------------------------------------------------------

  ALTER TABLE "IKIS_SYS"."MRDORG" MODIFY ("MRD_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYS"."MRDORG" MODIFY ("MRD_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYS"."MRDORG" MODIFY ("MRD_START_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYS"."MRDORG" ADD CONSTRAINT "XPK_MRDORG" PRIMARY KEY ("MRD_ID")
  USING INDEX "IKIS_SYS"."XPK_MRDORG"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OPFU
--------------------------------------------------------

  ALTER TABLE "IKIS_SYS"."OPFU" ADD CONSTRAINT "IPK_OPFU" PRIMARY KEY ("ORG_ID")
  USING INDEX "IKIS_SYS"."IPK_OPFU"  ENABLE;
  ALTER TABLE "IKIS_SYS"."OPFU" ADD CONSTRAINT "ORG_MERGED_RULE2" CHECK (org_merged IN ('A', 'M')) ENABLE;
  ALTER TABLE "IKIS_SYS"."OPFU" MODIFY ("ORG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INSURED_PERSON
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" MODIFY ("IP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" MODIFY ("IP_IP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" MODIFY ("IP_PC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" MODIFY ("IP_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" MODIFY ("IP_PT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" MODIFY ("IP_SRC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" ADD CONSTRAINT "XPK_INSURED_PERSON" PRIMARY KEY ("IP_ID")
  USING INDEX "IKIS_PERSON"."XPK_INSURED_PERSON"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSURED_PERSON_INFO
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON_INFO" ADD CONSTRAINT "IDXU_INSURED_PERSON_INFO_IP" PRIMARY KEY ("IP_ID")
  USING INDEX "IKIS_PERSON"."IDXU_INSURED_PERSON_INFO_IP"  ENABLE;
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON_INFO" MODIFY ("IP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" ADD CONSTRAINT "PK_LOAD_FILE_DATA" PRIMARY KEY ("LFD_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" MODIFY ("LFD_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" MODIFY ("LFD_FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" MODIFY ("LFD_LFT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" MODIFY ("LFD_FILESIZE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" MODIFY ("LFD_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" MODIFY ("LFD_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA_CONTENT
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT" ADD CONSTRAINT "PK_LOAD_FILE_DATA_CONTENT" PRIMARY KEY ("LFDC_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT" MODIFY ("LFDC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT" MODIFY ("LFDC_LFD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT" MODIFY ("CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA_JOBS
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" ADD CONSTRAINT "PK_LOAD_FILE_DATA_JOBS" PRIMARY KEY ("LFDJ_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" MODIFY ("LFDJ_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" MODIFY ("LFDJ_LFD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" MODIFY ("LFDJ_JB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" MODIFY ("LFDJ_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" ADD CONSTRAINT "PK_LOAD_FILE_DATA_LOG" PRIMARY KEY ("LFDL_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" MODIFY ("LFDL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" MODIFY ("LFDL_LFD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" MODIFY ("LFDL_TEXT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" MODIFY ("LFDL_CREATE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" MODIFY ("LFDL_TP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA_PARS
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS" ADD CONSTRAINT "PK_LOAD_FILE_DATA_PARS" PRIMARY KEY ("LFDP_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS" MODIFY ("LFDP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS" MODIFY ("LFDP_LFD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS" MODIFY ("LFDP_RN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA_PARS_CLB
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" ADD CONSTRAINT "PK_LOAD_FILE_DATA_PARS_CLB" PRIMARY KEY ("LFDPC_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" MODIFY ("LFDPC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" MODIFY ("LFDPC_LFD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" MODIFY ("LFDPC_LFDP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" MODIFY ("LFDPC_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAD_FILE_DATA_REF
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" MODIFY ("LFDR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" MODIFY ("LFDR_LFDP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" MODIFY ("LFDR_TRG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" MODIFY ("LFDR_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" MODIFY ("LFDR_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" ADD CONSTRAINT "XPK_LOAD_DATA_REF" PRIMARY KEY ("LFDR_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON_ESV_LINK
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_IP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_FN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_LN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_SN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_NT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_SEX" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_SRC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" MODIFY ("PEL_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "XPK_PERSON_ESV_LINK" PRIMARY KEY ("PEL_ID")
  USING INDEX "IKIS_PERSON"."XPK_PERSON_ESV_LINK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON_ESV_LINK_PRECALC
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_LN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_FN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_SN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_SEX" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_NT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_SRC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC" MODIFY ("PEL_CREATE_DT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSON_ESV_LINK_PRECALC_REPORT
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("PRC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("INS_PERSON_ESV_LINK_PRECALC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("INS_INSURED_PERSON" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("INS_DOCUMENT_DATA_T" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("INS_DOCUMENT_DATA_F" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("INS_PERSON_DATA" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK_PRECALC_REPORT" MODIFY ("INS_PERSON_CHANGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADDRESS_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" MODIFY ("AD_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" MODIFY ("AD_AT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" MODIFY ("AD_IP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" ADD CONSTRAINT "XPK_ADDRESS_DATA" PRIMARY KEY ("AD_ID")
  USING INDEX "IKIS_PERSON"."XPK_ADDRESS_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSUR_FILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERS"."INSUR_FILE" MODIFY ("FILE_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERS"."INSUR_FILE" ADD CONSTRAINT "XPK_INSUR_FILE" PRIMARY KEY ("FILE_ID")
  USING INDEX "IKIS_ERS"."XPK_INSUR_FILE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table W_USERS
--------------------------------------------------------

  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "CHK_LOGIN_CARD" CHECK (wu_login_card in (0, 1)) ENABLE;
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "CHK_LOGIN_SIMPLE" CHECK (wu_login_simple in (0, 1)) ENABLE;
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "CHK_W_USERS_WU_LOCKED" CHECK (WU_LOCKED in ('Y','N')) ENABLE;
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_WUT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_ORG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_PIB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_CR_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_LOCKED" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_NUMID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_LOGIN_SIMPLE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_LOGIN_CARD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" MODIFY ("WU_LOGIN_SIGN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "XPK_W_USERS" PRIMARY KEY ("WU_ID")
  USING INDEX "IKIS_SYSWEB"."XPK_W_USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table W_USERS_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_LOGIN_MD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_WU" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_PWD_CHNG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_PIB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_AUTH_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_LOCKED" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_NUMID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_WUT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_ORG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_LOGIN_SIMPLE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" MODIFY ("WUH_LOGIN_CARD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" ADD CONSTRAINT "XPK_W_USERS_HST" PRIMARY KEY ("WUH_ID")
  USING INDEX "IKIS_SYSWEB"."XPK_W_USERS_HST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CDE_PCASH
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."CDE_PCASH" MODIFY ("CDP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."CDE_PCASH" MODIFY ("CDP_CHARGE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."CDE_PCASH" ADD CONSTRAINT "XPK_CDE_PCASH" PRIMARY KEY ("CDP_ID")
  USING INDEX "IKIS_WEBSM"."XPK_CDE_PCASH"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CDE_SM
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."CDE_SM" MODIFY ("CSM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."CDE_SM" ADD CONSTRAINT "XPK_CDE_SM" PRIMARY KEY ("CSM_ID")
  USING INDEX "IKIS_WEBSM"."XPK_CDE_SM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LINKED_DOCS_FILE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" MODIFY ("LDF_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" MODIFY ("LDF_NDFL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" ADD CONSTRAINT "XPK_LINKED_DOCS_FILE" PRIMARY KEY ("LDF_ID")
  USING INDEX "IKIS_WEBSM"."XPK_LINKED_DOCS_FILE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_CHANGE_STATE_STAUS
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS" MODIFY ("NCSS_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS" ADD CONSTRAINT "XPK_NSI_CHANGE_STATE_STAUS" PRIMARY KEY ("NCSS_ID")
  USING INDEX "IKIS_WEBSM"."XPK_NSI_CHANGE_STATE_STAUS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_CHANGE_STATE_TYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE" MODIFY ("NCST_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE" ADD CONSTRAINT "XPK_NSI_CHANGE_STATE_TYPE" PRIMARY KEY ("NCST_ID")
  USING INDEX "IKIS_WEBSM"."XPK_NSI_CHANGE_STATE_TYPE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_DFS_DOC_TYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."NSI_DFS_DOC_TYPE" MODIFY ("NDDT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."NSI_DFS_DOC_TYPE" ADD CONSTRAINT "XPK_NSI_DFS_DOC_TYPE" PRIMARY KEY ("NDDT_ID")
  USING INDEX "IKIS_WEBSM"."XPK_NSI_DFS_DOC_TYPE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_TYPE5_TABLE_TYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."NSI_TYPE5_TABLE_TYPE" ADD CONSTRAINT "IDX_NTTT_CODE" UNIQUE ("NTTT_CODE")
  USING INDEX "IKIS_WEBSM"."IDX_NTTT_CODE"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."NSI_TYPE5_TABLE_TYPE" MODIFY ("NTTT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."NSI_TYPE5_TABLE_TYPE" ADD CONSTRAINT "XPK_NSI_TYPE5_TABLE_TYPE" PRIMARY KEY ("NTTT_ID")
  USING INDEX "IKIS_WEBSM"."XPK_NSI_TYPE5_TABLE_TYPE"  ENABLE;
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
--  Constraints for Table SK_APEQ_DODATOK2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "CHK_APQD2_ST" CHECK (apqd2_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" MODIFY ("APQD2_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" MODIFY ("APQD2_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK2_DATA" PRIMARY KEY ("APQD2_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK2_DATA"  ENABLE;
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
--  Constraints for Table SK_APEQ_DODATOK5_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "CHK_APQD5_ST" CHECK (apqd5_st in ('N','G', 'O', 'X', 'H', 'C')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" MODIFY ("APQD5_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" MODIFY ("APQD5_SPL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ADD CONSTRAINT "XPK_SK_APEQ_DODATOK5_DATA" PRIMARY KEY ("APQD5_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_APEQ_DODATOK5_DATA"  ENABLE;
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
--  Constraints for Table SK_PACKLABEL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "CHK_SPL_ACTUALITY" CHECK (SPL_ACTUALITY in ('Y','N')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "CHK_SPL_DOVIDN" CHECK (spl_dovidn in (0, 1, 2, 3, 4)) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" MODIFY ("SPL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "XPK_SK_PACKLABEL" PRIMARY KEY ("SPL_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_PACKLABEL"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SK_PACKLABEL_EXTENDED
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED" MODIFY ("SPLE_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL_EXTENDED" ADD CONSTRAINT "XPK_SK_PACKLABEL_EXTENDED" PRIMARY KEY ("SPLE_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SK_PACKLABEL_EXTENDED"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_BANK
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_BANK" ADD CONSTRAINT "FK_NB_NB" FOREIGN KEY ("NB_NB")
	  REFERENCES "IKIS_NDI"."NSI_BANK" ("NB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_INSURERCAT
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_INSURERCAT" ADD CONSTRAINT "FK_IC_IC" FOREIGN KEY ("IC_IC")
	  REFERENCES "IKIS_NDI"."NSI_INSURERCAT" ("IC_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_KOATUU
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KOATUU" ADD CONSTRAINT "FK_KT_KT" FOREIGN KEY ("KT_KT")
	  REFERENCES "IKIS_NDI"."NSI_KOATUU" ("KT_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_KVED
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KVED" ADD CONSTRAINT "FK_KVD_KVD" FOREIGN KEY ("KVD_KVD")
	  REFERENCES "IKIS_NDI"."NSI_KVED" ("KVD_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_KVED2RISK
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_KVED2RISK" ADD CONSTRAINT "FK_KVD2RC_KVD" FOREIGN KEY ("KVD2RC_KVD")
	  REFERENCES "IKIS_NDI"."NSI_KVED" ("KVD_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_KVED2RISK" ADD CONSTRAINT "FK_KVD2RC_RC" FOREIGN KEY ("KVD2RC_RC")
	  REFERENCES "IKIS_NDI"."NSI_RISK_CODE" ("RC_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_MINISTRY
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_MINISTRY" ADD CONSTRAINT "FK_IB_IB" FOREIGN KEY ("MIN_IB")
	  REFERENCES "IKIS_NDI"."NSI_MINISTRY" ("MIN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_MNG_FORM
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_MNG_FORM" ADD CONSTRAINT "FK_MN_MN" FOREIGN KEY ("MN_MN")
	  REFERENCES "IKIS_NDI"."NSI_MNG_FORM" ("MN_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_ZO_TARIFF
--------------------------------------------------------

  ALTER TABLE "IKIS_NDI"."NSI_ZO_TARIFF" ADD CONSTRAINT "FK_ZOT_ZO" FOREIGN KEY ("ZOT_ZO")
	  REFERENCES "IKIS_NDI"."NSI_ZO_CAT" ("ZO_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_NDI"."NSI_ZO_TARIFF" ADD CONSTRAINT "FK_ZOT_ZT" FOREIGN KEY ("ZOT_ZT")
	  REFERENCES "IKIS_NDI"."NSI_ZO_TAXATION" ("ZT_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MRDORG
--------------------------------------------------------

  ALTER TABLE "IKIS_SYS"."MRDORG" ADD CONSTRAINT "FK_MRD_MRD" FOREIGN KEY ("MRD_MRD")
	  REFERENCES "IKIS_SYS"."MRDORG" ("MRD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPFU
--------------------------------------------------------

  ALTER TABLE "IKIS_SYS"."OPFU" ADD CONSTRAINT "FK_ORG_HORG" FOREIGN KEY ("ORG_HORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_SYS"."OPFU" ADD CONSTRAINT "FK_ORG_ORG" FOREIGN KEY ("ORG_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_SYS"."OPFU" ADD CONSTRAINT "FK_ORG_TO" FOREIGN KEY ("ORG_TO")
	  REFERENCES "IKIS_SYS"."TYPE_OPFU" ("TO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSURED_PERSON
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" ADD CONSTRAINT "FK_IP_IP" FOREIGN KEY ("IP_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" ADD CONSTRAINT "FK_IP_PC" FOREIGN KEY ("IP_PC")
	  REFERENCES "IKIS_PERSON"."PERSON_CHANGE" ("PC_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" ADD CONSTRAINT "FK_IP_PT" FOREIGN KEY ("IP_PT")
	  REFERENCES "IKIS_PERSON"."NSI_PERSON_STATE" ("PT_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON" ADD CONSTRAINT "FK_IP_SRC" FOREIGN KEY ("IP_SRC")
	  REFERENCES "IKIS_PERSON"."NSI_SOURCE" ("SRC_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table INSURED_PERSON_INFO
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."INSURED_PERSON_INFO" ADD CONSTRAINT "FK_INSURED_PERSON_INFO_IP" FOREIGN KEY ("IP_ID")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" ADD CONSTRAINT "FK_LOAD_FILE_DATA_LFT" FOREIGN KEY ("LFD_LFT")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_TYPE" ("LFT_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA" ADD CONSTRAINT "FK_LOAD_FILE_DATA_SRC" FOREIGN KEY ("LFD_SRC")
	  REFERENCES "IKIS_PERSON"."NSI_SOURCE" ("SRC_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA_CONTENT
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_CONTENT" ADD CONSTRAINT "FK_LOAD_FILE_DATA_CONTENT_LFD" FOREIGN KEY ("LFDC_LFD")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA" ("LFD_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA_JOBS
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_JOBS" ADD CONSTRAINT "FK_LOAD_FILE_DATA_JOBS_LFD" FOREIGN KEY ("LFDJ_LFD")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA" ("LFD_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_LOG" ADD CONSTRAINT "FK_LOAD_FILE_DATA_LOG_LFD" FOREIGN KEY ("LFDL_LFD")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA" ("LFD_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA_PARS
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS" ADD CONSTRAINT "FK_LOAD_FILE_DATA_PARS_LFD" FOREIGN KEY ("LFDP_LFD")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA" ("LFD_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA_PARS_CLB
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" ADD CONSTRAINT "FK_LOAD_FILE_DATA_PARS_CLB_LFD" FOREIGN KEY ("LFDPC_LFD")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA" ("LFD_ID") ENABLE;
  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_PARS_CLB" ADD CONSTRAINT "FK_LOAD_FILE_DATA_PARS_CLB_LFDP" FOREIGN KEY ("LFDPC_LFDP")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA_PARS" ("LFDP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOAD_FILE_DATA_REF
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."LOAD_FILE_DATA_REF" ADD CONSTRAINT "FK_LFDR_LFDP" FOREIGN KEY ("LFDR_LFDP")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA_PARS" ("LFDP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON_ESV_LINK
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_FN" FOREIGN KEY ("PEL_FN")
	  REFERENCES "IKIS_PERSON"."NSI_FNAME" ("FN_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_IM" FOREIGN KEY ("PEL_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_IP" FOREIGN KEY ("PEL_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_LN" FOREIGN KEY ("PEL_LN")
	  REFERENCES "IKIS_PERSON"."NSI_LNAME" ("LN_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_NT" FOREIGN KEY ("PEL_NT")
	  REFERENCES "IKIS_PERSON"."NSI_NATIONALITY" ("NT_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_SEX" FOREIGN KEY ("PEL_SEX")
	  REFERENCES "IKIS_PERSON"."NSI_SEX" ("SEX_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_SN" FOREIGN KEY ("PEL_SN")
	  REFERENCES "IKIS_PERSON"."NSI_SNAME" ("SN_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."PERSON_ESV_LINK" ADD CONSTRAINT "FK_PEL_SRC" FOREIGN KEY ("PEL_SRC")
	  REFERENCES "IKIS_PERSON"."NSI_SOURCE" ("SRC_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table ADDRESS_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" ADD CONSTRAINT "FK_AD_AT" FOREIGN KEY ("AD_AT")
	  REFERENCES "IKIS_PERSON"."NSI_ADDRESS_TYPE" ("AT_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" ADD CONSTRAINT "FK_AD_IP" FOREIGN KEY ("AD_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_PERSON"."ADDRESS_DATA" ADD CONSTRAINT "FK_AD_KAOT" FOREIGN KEY ("AD_KAOT")
	  REFERENCES "IKIS_NDI"."NDI_KATOTTG" ("KAOT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSUR_FILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERS"."INSUR_FILE" ADD CONSTRAINT "FK_FILE_DS" FOREIGN KEY ("FILE_DS")
	  REFERENCES "IKIS_NDI"."NSI_DATA_SOURCE" ("DS_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table W_USERS
--------------------------------------------------------

  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "FK_OPFU2W_USERS" FOREIGN KEY ("WU_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "FK_UTP2USR" FOREIGN KEY ("WU_WUT")
	  REFERENCES "IKIS_SYSWEB"."W_USER_TYPE" ("WUT_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "FK_WU_WTR" FOREIGN KEY ("WU_WTR")
	  REFERENCES "IKIS_SYSWEB"."W_TYPICAL_ROLE" ("WTR_ID") ENABLE;
  ALTER TABLE "IKIS_SYSWEB"."W_USERS" ADD CONSTRAINT "FK_WU_WU_CHG" FOREIGN KEY ("WU_WU_CHG")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table W_USERS_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_SYSWEB"."W_USERS_HST" ADD CONSTRAINT "FK_USR2HST" FOREIGN KEY ("WUH_WU")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CDE_PCASH
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."CDE_PCASH" ADD CONSTRAINT "FK_CDP_CDE" FOREIGN KEY ("CDP_CDE")
	  REFERENCES "IKIS_WEBSM"."COURT_DECISION_ENFORCEMENT" ("CDE_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."CDE_PCASH" ADD CONSTRAINT "FK_CDP_CDS" FOREIGN KEY ("CDP_CDS")
	  REFERENCES "IKIS_WEBSM"."CDE_SUBJECT" ("CDS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CDE_SM
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."CDE_SM" ADD CONSTRAINT "FK_CMS_CDE" FOREIGN KEY ("CSM_CDE")
	  REFERENCES "IKIS_WEBSM"."COURT_DECISION_ENFORCEMENT" ("CDE_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."CDE_SM" ADD CONSTRAINT "FK_CSM_CDS" FOREIGN KEY ("CSM_CDS")
	  REFERENCES "IKIS_WEBSM"."CDE_SUBJECT" ("CDS_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."CDE_SM" ADD CONSTRAINT "FK_CSM_SLB" FOREIGN KEY ("CSM_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LINKED_DOCS_FILE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" ADD CONSTRAINT "FK_LDF_NDFL" FOREIGN KEY ("LDF_NDFL")
	  REFERENCES "IKIS_WEBSM"."NSI_DFS_FILE_LIST" ("NDFL_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" ADD CONSTRAINT "FK_LDF_SPE" FOREIGN KEY ("LDF_SPE")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."LINKED_DOCS_FILE" ADD CONSTRAINT "FK_LDF_SPL" FOREIGN KEY ("LDF_SPL")
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
--  Ref Constraints for Table SK_PACKLABEL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_IM" FOREIGN KEY ("SPL_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_NCT" FOREIGN KEY ("SPL_NCT")
	  REFERENCES "IKIS_WEBSM"."NSI_CHARGE_REPORT_TYPE" ("NCT_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_NDDT" FOREIGN KEY ("SPL_NDDT")
	  REFERENCES "IKIS_WEBSM"."NSI_DFS_DOC_TYPE" ("NDDT_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_NPDT" FOREIGN KEY ("SPL_NPDT_TYPE_PFU")
	  REFERENCES "IKIS_WEBSM"."NSI_PFU_DOC_TYPE" ("NPDT_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_NQRT" FOREIGN KEY ("SPL_NQRT")
	  REFERENCES "IKIS_WEBSM"."NSI_QUART_REPORT_TYPE" ("NQRT_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_SCSQ" FOREIGN KEY ("SPL_SCSQ_PROT_SEANS")
	  REFERENCES "IKIS_WEBSM"."SK_CONTROL_SESSION" ("SCSQ_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_ST" FOREIGN KEY ("SPL_ST")
	  REFERENCES "IKIS_WEBSM"."NSI_SK_PACKLABEL_ST" ("NSPS_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SK_PACKLABEL" ADD CONSTRAINT "FK_SPL_SUCCESSOR_IM" FOREIGN KEY ("SPL_SUCCESSOR_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
