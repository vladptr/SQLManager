--------------------------------------------------------
--  File created - середа-серпня-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINREF_MOVEMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."ADMINREF_MOVEMENT" 
   (	"ARM_ID" NUMBER(14,0), 
	"ARM_IM" NUMBER(14,0), 
	"ARM_MOVECNT" NUMBER, 
	"ARM_IM_OLD" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ADMINREF_MOVEMENT_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."ADMINREF_MOVEMENT_LOG" 
   (	"DTS" TIMESTAMP (6), 
	"MES" VARCHAR2(4000), 
	"THR" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table ANSW_PFU_EDR_INSUERER
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER" 
   (	"IM_GUID" NUMBER(14,0), 
	"GUID" VARCHAR2(32), 
	"EDRPOU" VARCHAR2(12), 
	"C_STI_MAIN" NUMBER(4,0), 
	"TIN" VARCHAR2(12), 
	"FULL_NAME" VARCHAR2(500), 
	"N_REG_STI" VARCHAR2(24), 
	"D_REG_STI" DATE, 
	"D_ZAKR_STI" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."IM_GUID" IS 'GUID ПФУ';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."GUID" IS 'GUID МДЗУ';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."EDRPOU" IS 'Код ЄДРПОУ';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."C_STI_MAIN" IS 'Код органу Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."TIN" IS 'Код ЄДРПОУ Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."FULL_NAME" IS 'Назва страхувальника у Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."N_REG_STI" IS 'Номер взяття на облік у Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."D_REG_STI" IS 'Дата взяття на облік';
   COMMENT ON COLUMN "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"."D_ZAKR_STI" IS 'Дата зняття з обліку';
   COMMENT ON TABLE "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER"  IS 'Обратка от МДЗУ на 08.10.2013';
--------------------------------------------------------
--  DDL for Table DEBT_DR2DP
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DEBT_DR2DP" 
   (	"D2D_ID" NUMBER(14,0), 
	"D2D_DP" NUMBER(14,0), 
	"D2D_DR" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DEBT_FUND_REPLY
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DEBT_FUND_REPLY" 
   (	"DFR_ID" NUMBER(14,0), 
	"COM_ORG" NUMBER(5,0), 
	"DFR_DR" NUMBER(14,0), 
	"DFR_DRR" NUMBER(14,0), 
	"DFR_REG_FSS" VARCHAR2(14), 
	"DFR_DATE_FSS" DATE, 
	"DFR_FIRM_EDRPOU" VARCHAR2(10), 
	"DFR_BORG_RESULT" NUMBER(1,0), 
	"DFR_FSS_NOTE" VARCHAR2(250), 
	"DFR_FSS_NUM" VARCHAR2(5), 
	"DFR_FSS_NAME" VARCHAR2(100), 
	"DFR_FSS_POSITION" VARCHAR2(100), 
	"DFR_FSS_PIB" VARCHAR2(80), 
	"DFR_FSS_ECP" VARCHAR2(250), 
	"DFR_DT" DATE, 
	"DFR_SOURCE" VARCHAR2(10), 
	"DFR_ST" VARCHAR2(10), 
	"DFR_ACTUAL" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table DEBT_PACKET
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DEBT_PACKET" 
   (	"DP_ID" NUMBER(14,0), 
	"DP_CNT" NUMBER, 
	"DP_TP" VARCHAR2(10), 
	"DP_REGISTER_DT" DATE, 
	"DP_ST" VARCHAR2(10), 
	"DP_F1_REQUEST" DATE, 
	"DP_F1_REPLY" DATE, 
	"DP_F2_REQUEST" DATE, 
	"DP_F2_REPLY" DATE, 
	"DP_F3_REQUEST" DATE, 
	"DP_F3_REPLY" DATE, 
	"DP_F4_REQUEST" DATE, 
	"DP_F4_REPLY" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table DEBT_REQUEST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DEBT_REQUEST" 
   (	"DR_ID" NUMBER(14,0), 
	"COM_ORG" NUMBER(5,0), 
	"DR_REG_PFU" VARCHAR2(14), 
	"DR_DATE_PFU" DATE, 
	"DR_FIRM_EDRPOU" VARCHAR2(10), 
	"DR_FIRM_NAME" VARCHAR2(250), 
	"DR_FIRM_ADR" VARCHAR2(250), 
	"DR_EDR_SOURCE" VARCHAR2(10), 
	"DR_EDR_ID" VARCHAR2(14), 
	"DR_EDR_CODE" VARCHAR2(3), 
	"DR_EDR_DATE" DATE, 
	"DR_EDR_NAME" VARCHAR2(250), 
	"DR_PFU_NUM" VARCHAR2(5), 
	"DR_PFU_NAME" VARCHAR2(80), 
	"DR_PFU_POSITION" VARCHAR2(100), 
	"DR_PFU_PIB" VARCHAR2(80), 
	"DR_ECP" VARCHAR2(250), 
	"DR_ST" VARCHAR2(10), 
	"DR_SOURCE" VARCHAR2(10), 
	"DR_OUT_NUM" VARCHAR2(14), 
	"DR_OUT_DATE" DATE, 
	"DR_OUT_PIB" VARCHAR2(80), 
	"DR_OUT_POSITION" VARCHAR2(100), 
	"DR_EDR_RO_CODE" NUMBER(20,0), 
	"DR_EDR_EDRPOU" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table DEBT_REQUEST_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" 
   (	"DRL_ID" NUMBER(14,0), 
	"DRL_DP" NUMBER(14,0), 
	"DRL_DFR" NUMBER(14,0), 
	"DRL_DR" NUMBER(14,0), 
	"DRL_WU" NUMBER(14,0), 
	"DRL_DT" DATE, 
	"DRL_MESSAGE" VARCHAR2(500), 
	"DRL_ST" VARCHAR2(10), 
	"DRL_ACTION_TP" VARCHAR2(10), 
	"DRL_RBM_PKT" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DIC_DD
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DIC_DD" 
   (	"DIDI_ID" NUMBER(14,0), 
	"DIDI_NAME" VARCHAR2(100), 
	"DIDI_TP" CHAR(1), 
	"DIDI_DIDI" NUMBER(14,0), 
	"DIDI_SRTORDR" NUMBER(5,0), 
	"DIDI_DESCRIPT" VARCHAR2(250), 
	"DIDI_VIEWNAME" VARCHAR2(60)
   ) 
   CACHE ;
--------------------------------------------------------
--  DDL for Table DIC_DEBT_STATUS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DIC_DEBT_STATUS" 
   (	"DEBT_ID" VARCHAR2(10), 
	"DEBT_STATUS" VARCHAR2(400)
   ) ;
--------------------------------------------------------
--  DDL for Table DIC_DV
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DIC_DV" 
   (	"DIC_DIDI" NUMBER(14,0), 
	"DIC_CODE" VARCHAR2(10), 
	"DIC_VALUE" VARCHAR2(10), 
	"DIC_NAME" VARCHAR2(250), 
	"DIC_SNAME" VARCHAR2(100), 
	"DIC_ST" CHAR(1), 
	"DIC_SRTORDR" NUMBER(5,0)
   ) 
   CACHE ;
--------------------------------------------------------
--  DDL for Table DIC_MONITOR
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DIC_MONITOR" 
   (	"DM_VER" VARCHAR2(20), 
	"DM_DIC" NUMBER, 
	"DM_TABLE" VARCHAR2(30)
   ) ;
--------------------------------------------------------
--  DDL for Table DIC_NSI_TBL
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DIC_NSI_TBL" 
   (	"DNT_ID" NUMBER(14,0), 
	"DNT_NAME" VARCHAR2(40), 
	"DNT_COL_ID" VARCHAR2(40), 
	"DNT_COL_NAME" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table DIC_TBL
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DIC_TBL" 
   (	"TBL_ID" NUMBER(14,0), 
	"TBL_DIDI" NUMBER(14,0), 
	"TBL_FLD_NAME" VARCHAR2(60), 
	"TBL_TBL_NAME" VARCHAR2(60), 
	"TBL_DEF_VALUE" VARCHAR2(10)
   ) 
   CACHE ;
--------------------------------------------------------
--  DDL for Table DUBLANK2FUND
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."DUBLANK2FUND" 
   (	"DAF_ID" NUMBER(14,0), 
	"DAF_IM" NUMBER(14,0), 
	"DAF_TEXT" VARCHAR2(4000), 
	"DAF_DATE" DATE, 
	"DAF_TYPE_UNL" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table EXECUTIVE_ORDER_CVW
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" 
   (	"EOC_ID" NUMBER(14,0), 
	"EOC_IM" NUMBER(14,0), 
	"EOC_GUID" NUMBER(14,0), 
	"EOC_EXEC_ORDER_CNT" NUMBER(14,0), 
	"EOC_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW"."EOC_ID" IS 'Ід невиконаних приписів';
   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW"."EOC_IM" IS 'IM_ID';
   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW"."EOC_GUID" IS 'Гуід страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW"."EOC_EXEC_ORDER_CNT" IS 'К-сть невикористаних приписів';
--------------------------------------------------------
--  DDL for Table EXECUTIVE_ORDER_CVW_HIST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST" 
   (	"EOCH_ID" NUMBER(14,0), 
	"EOCH_EOC" NUMBER(14,0), 
	"EOCH_WU" NUMBER(14,0), 
	"EOCH_DT" DATE, 
	"EOCH_EXEC_ORDER_CNT" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST"."EOCH_ID" IS 'Ід історії невиконаних приписів';
   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST"."EOCH_EOC" IS 'Ід невиконаних приписів';
   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST"."EOCH_WU" IS 'Ід користувача';
   COMMENT ON COLUMN "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST"."EOCH_DT" IS 'дата оновлення';
--------------------------------------------------------
--  DDL for Table EXEMPLARY_CASE_CVW
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW" 
   (	"ECC_ID" NUMBER(14,0), 
	"ECC_IM" NUMBER(14,0), 
	"ECC_GUID" NUMBER(14,0), 
	"ECC_EXISTS_CASE" NUMBER(1,0), 
	"ECC_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW"."ECC_ID" IS 'Ід наглядової справи';
   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW"."ECC_IM" IS 'IM_ID';
   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW"."ECC_GUID" IS 'Гуід страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW"."ECC_EXISTS_CASE" IS 'Наявність наглядової справи';
--------------------------------------------------------
--  DDL for Table EXEMPLARY_CASE_CVW_HIST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST" 
   (	"ECCH_ID" NUMBER(14,0), 
	"ECCH_ECC" NUMBER(14,0), 
	"ECCH_WU" NUMBER(14,0), 
	"ECCH_DT" DATE, 
	"ECCH_EXISTS_CASE" NUMBER(1,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST"."ECCH_ID" IS 'Ід історії наглядової справи';
   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST"."ECCH_ECC" IS 'Ід наглядової справи';
   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST"."ECCH_WU" IS 'Ід користувача';
   COMMENT ON COLUMN "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST"."ECCH_DT" IS 'дата оновлення';
--------------------------------------------------------
--  DDL for Table GLOBAL_MOVEMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" 
   (	"GM_ID" NUMBER(14,0), 
	"GM_IM" NUMBER(14,0), 
	"GM_ORG" NUMBER(5,0), 
	"GM_IM_OLD" NUMBER(14,0), 
	"GM_ORG_OLD" NUMBER(5,0), 
	"GM_IM_GUID" NUMBER(14,0), 
	"GM_MVCNT" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table GLOBAL_MOVEMENT_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT_LOG" 
   (	"GML_ID" NUMBER(14,0), 
	"GML_ORG" NUMBER(5,0), 
	"GML_DTS" TIMESTAMP (4), 
	"GML_MES" VARCHAR2(4000), 
	"GML_ST" CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table IMID2FUND
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."IMID2FUND" 
   (	"IMF_IM_ID" NUMBER(14,0), 
	"IMF_GUID" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table INVALID_ROWS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."INVALID_ROWS" 
   (	"OWNER_NAME" VARCHAR2(30), 
	"TABLE_NAME" VARCHAR2(30), 
	"PARTITION_NAME" VARCHAR2(30), 
	"SUBPARTITION_NAME" VARCHAR2(30), 
	"HEAD_ROWID" ROWID, 
	"ANALYZE_TIMESTAMP" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table LOG_PINSUR_MAIN
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."LOG_PINSUR_MAIN" 
   (	"LIM_IM" NUMBER(14,0), 
	"LIM_WU" NUMBER(14,0), 
	"LIM_DATE" DATE, 
	"LIM_ST_OLD" VARCHAR2(10), 
	"LIM_ERS_ST_OLD" VARCHAR2(10), 
	"LIM_ST_NEW" VARCHAR2(10), 
	"LIM_IH_ST_OLD" VARCHAR2(10), 
	"LIM_ERS_IH_ST_OLD" VARCHAR2(10), 
	"LIM_IH_ST_NEW" VARCHAR2(10), 
	"LIM_IMV_ST_OLD" VARCHAR2(10), 
	"LIM_IMV_ST_NEW" VARCHAR2(10), 
	"LIM_IAB_RS_OLD" NUMBER(14,0), 
	"LIM_ERS_IAB_RS_OLD" NUMBER(14,0), 
	"LIM_IAB_RS_NEW" NUMBER(14,0), 
	"LIM_IAB_STOP_DT_OLD" DATE, 
	"LIM_ERS_IAB_STOP_DT_OLD" DATE, 
	"LIM_IAB_STOP_DT_NEW" DATE, 
	"LIM_CORR_ID" NUMBER(14,0), 
	"LIM_IAN_NUMIDENT_OLD" VARCHAR2(12), 
	"LIM_ERS_IAN_NUMIDENT_OLD" VARCHAR2(12), 
	"LIM_IAN_NUMIDENT_NEW" VARCHAR2(12), 
	"LIM_IAN_INCODE_OLD" VARCHAR2(5), 
	"LIM_ERS_IAN_INCODE_OLD" VARCHAR2(5), 
	"LIM_IAN_INCODE_NEW" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table MESSAGETEMPLATES
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."MESSAGETEMPLATES" 
   (	"MT_ID" NUMBER(14,0), 
	"MT_TEXT" VARCHAR2(500), 
	"MT_TXT_COLOR" VARCHAR2(20), 
	"MR_BG_COLOR" VARCHAR2(20), 
	"MT_ALG" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table MON_FILE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."MON_FILE" 
   (	"MF_ID" NUMBER(14,0), 
	"MF_LFD" NUMBER(14,0), 
	"MF_CR_DT" DATE, 
	"MF_CAT_TP" VARCHAR2(10), 
	"MF_MON_DT" DATE, 
	"HISTORY_STATUS" VARCHAR2(1)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."MON_FILE"."MF_ID" IS 'Ід завантаження диних МОН';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_FILE"."MF_LFD" IS 'Ід завантаженого файлу';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_FILE"."MF_CR_DT" IS 'дата ствоення';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_FILE"."MF_CAT_TP" IS 'Тип закладу міносвіти';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_FILE"."MF_MON_DT" IS 'Дата інформаці від мон';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_FILE"."HISTORY_STATUS" IS 'статус історичності';
   COMMENT ON TABLE "IKIS_ERSP"."MON_FILE"  IS 'Завантажні файли МОН';
--------------------------------------------------------
--  DDL for Table MON_IM
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."MON_IM" 
   (	"MIM_ID" NUMBER(14,0), 
	"MIM_MI" NUMBER(14,0), 
	"MIM_IM" NUMBER(14,0), 
	"MIM_ST" VARCHAR2(10), 
	"MIM_SEARCH_TP" VARCHAR2(10), 
	"MIM_CR_DT" DATE, 
	"MIM_CR_WU" NUMBER(14,0), 
	"MIM_DEL_DT" DATE, 
	"MIM_DEL_WU" NUMBER(14,0), 
	"MIM_EDRPO" VARCHAR2(10)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_ID" IS 'Ід зв’язку установ мон і єрс';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_MI" IS 'Ід закладу міноствіти';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_IM" IS 'Ід стархувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_ST" IS 'Статус привязки єдрпо';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_SEARCH_TP" IS 'Спосіб пошуку';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_CR_DT" IS 'Дата створення';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_CR_WU" IS 'Ід користувача';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_DEL_DT" IS 'Дата видалення';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_DEL_WU" IS 'Ід користувача';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_IM"."MIM_EDRPO" IS 'єдрпоу';
   COMMENT ON TABLE "IKIS_ERSP"."MON_IM"  IS 'Зв’язок установ МОН і єрс';
--------------------------------------------------------
--  DDL for Table MON_INSTITUTION
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."MON_INSTITUTION" 
   (	"MI_ID" NUMBER(14,0), 
	"MI_CR_DT" DATE, 
	"MI_NAME" VARCHAR2(4000), 
	"MI_CODE" NUMBER(10,0), 
	"MI_CODE_MAIN" NUMBER(10,0), 
	"MI_FOUNDING_YEAR" NUMBER(4,0), 
	"MI_CAT_TXT" VARCHAR2(255), 
	"MI_KATOTTG" VARCHAR2(100), 
	"MI_REGION" VARCHAR2(255), 
	"MI_SETTLMENT" VARCHAR2(500), 
	"MI_ADDRESS" VARCHAR2(4000), 
	"MI_BLOCK_DT" DATE, 
	"MI_CAT_TP" VARCHAR2(10), 
	"HISTORY_STATUS" VARCHAR2(1), 
	"MI_MF" NUMBER(14,0), 
	"MI_RN" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_ID" IS 'Ід закладу міноствіти';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_CR_DT" IS 'дата ствоення';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_NAME" IS 'Назва закладу мон';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_CODE" IS 'Код';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_CODE_MAIN" IS 'Код головного закладу';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_FOUNDING_YEAR" IS 'рік заснування';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_CAT_TXT" IS 'Категорія закладу освіти';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_KATOTTG" IS 'Код КАТОТТГ місцезнаходження';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_REGION" IS 'Регіон місцезнаходження';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_SETTLMENT" IS 'Населений пункт місцезнаходження';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_ADDRESS" IS 'Адреса';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_BLOCK_DT" IS 'Дата блокування';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_CAT_TP" IS 'Тип закладу міносвіти';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."HISTORY_STATUS" IS 'статус історичності';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_MF" IS 'Ід завантаження диних МОН';
   COMMENT ON COLUMN "IKIS_ERSP"."MON_INSTITUTION"."MI_RN" IS 'Номер рядка';
   COMMENT ON TABLE "IKIS_ERSP"."MON_INSTITUTION"  IS 'Заклади МОН';
--------------------------------------------------------
--  DDL for Table MRD_PINSUR_MAIN
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."MRD_PINSUR_MAIN" 
   (	"MRDIM_IM" NUMBER(14,0), 
	"MRDIM_GUID" VARCHAR2(32), 
	"MRDIM_ORG" NUMBER(5,0), 
	"MRDIM_NUMIDENT" VARCHAR2(10), 
	"MRDIM_INCODE" VARCHAR2(5), 
	"MRDIM_PSV_CODE" VARCHAR2(21), 
	"MRDIM_PSV_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table MRD_PINSUR_MOVEMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" 
   (	"MPM_ID" NUMBER(14,0), 
	"MPM_IM" NUMBER(14,0), 
	"MPM_MRD_OLD" NUMBER(14,0), 
	"MPM_MRD_NEW" NUMBER(14,0), 
	"MPM_MOVE_DT" DATE, 
	"MPM_ACTUAL_ST" CHAR(1) DEFAULT 'F', 
	"MPM_ST" CHAR(1) DEFAULT 'A'
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_DAYSOFF
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_DAYSOFF" 
   (	"DO_ID" NUMBER, 
	"DO_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_DEBT_RECIPIENT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_DEBT_RECIPIENT" 
   (	"DRR_ID" NUMBER(14,0), 
	"DRR_NAME" VARCHAR2(100), 
	"DRR_IC_CODE" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_NOTICE_TYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_NOTICE_TYPE" 
   (	"NT_ID" NUMBER, 
	"NT_NAME" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_ORG_DIRECT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_ORG_DIRECT" 
   (	"ND_ID" NUMBER(14,0), 
	"ND_NAME" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_ORG_TO_ENTYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" 
   (	"ND_ID" NUMBER(14,0), 
	"NT_ID" NUMBER(14,0), 
	"OT_ID" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_ORG_TYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_ORG_TYPE" 
   (	"OT_ID" NUMBER, 
	"OT_NAME" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_REASON_DENIAL
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_REASON_DENIAL" 
   (	"DIC_ID" NUMBER(14,0), 
	"DIC_CODE" VARCHAR2(10), 
	"DIC_NAME" VARCHAR2(500), 
	"DIC_OWNER" VARCHAR2(10), 
	"DIC_MANUAL" VARCHAR2(1)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_REASON_MESSAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_REASON_MESSAGE" 
   (	"RM_ID" NUMBER(14,0), 
	"RM_CODE" VARCHAR2(10), 
	"RM_NAME" VARCHAR2(250), 
	"RM_SRTORDR" NUMBER(10,0), 
	"RM_ACTUAL_DT" DATE, 
	"RM_NOTE" VARCHAR2(250)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EDR_REASON_NOCHECK
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EDR_REASON_NOCHECK" 
   (	"DIC_ID" NUMBER(14,0), 
	"DIC_CODE" VARCHAR2(10), 
	"DIC_NAME" VARCHAR2(500), 
	"DIC_OWNER" VARCHAR2(10), 
	"DIC_MANUAL" VARCHAR2(1)
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_EN_STATUS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_EN_STATUS" 
   (	"DIC_CODE" VARCHAR2(10), 
	"DIC_NAME" VARCHAR2(100), 
	"DIC_ORDER" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table NSI_FUNDS_TP
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."NSI_FUNDS_TP" 
   (	"NF_ID" NUMBER, 
	"NF_NAME_FULL" VARCHAR2(255), 
	"NF_NAME_SHORT" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table OBJECTPARAMTYPE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."OBJECTPARAMTYPE" 
   (	"OPT_ID" NUMBER(14,0), 
	"OPT_FND" NUMBER(14,0), 
	"OPT_CODE" VARCHAR2(10), 
	"OPT_NAME" VARCHAR2(100), 
	"OPT_DATATYPE" VARCHAR2(10), 
	"OPT_IS_SHOW" VARCHAR2(10) DEFAULT 'T'
   ) ;
--------------------------------------------------------
--  DDL for Table OL_INSURER_FOR_NOACCEPT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."OL_INSURER_FOR_NOACCEPT" 
   (	"IM_ID_A" NUMBER(14,0), 
	"IH_ORG_A" NUMBER(5,0), 
	"IAN_NUMIDENT_A" VARCHAR2(12), 
	"IAN_NAME1_A" VARCHAR2(250), 
	"IH_REG_DT_A" DATE, 
	"IAN_INCODE_A" VARCHAR2(5), 
	"IH_ORG_N" NUMBER(5,0), 
	"IM_ID_N" NUMBER(14,0), 
	"IAN_NUMIDENT_N" VARCHAR2(12), 
	"IAN_NAME1_N" VARCHAR2(250), 
	"IH_REG_DT_N" DATE, 
	"IAN_INCODE_N" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table OPFU2WEB
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."OPFU2WEB" 
   (	"ORGW_ID" NUMBER(14,0), 
	"ORGW_ORG" NUMBER(5,0), 
	"ORGW_ST_MIGRATE" VARCHAR2(10) DEFAULT '0', 
	"ORGW_DT_READY" DATE, 
	"ORGW_DT_MIGRATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table ORIGINALSERVICEFILE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."ORIGINALSERVICEFILE" 
   (	"OSF_ID" NUMBER(14,0), 
	"OSF_SFL" NUMBER(14,0), 
	"OSF_ORG" NUMBER(5,0), 
	"OSF_FILENAME" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_ADRESS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_ADRESS" 
   (	"IA_ID" NUMBER(14,0), 
	"IA_IAH" NUMBER(14,0), 
	"IA_KOATUU" NUMBER(14,0), 
	"IA_TP" CHAR(1) DEFAULT 'U', 
	"IA_POST_IND" VARCHAR2(6), 
	"IA_SATTLEMENT" VARCHAR2(250), 
	"IA_STREET" VARCHAR2(250), 
	"IA_BUILDING" VARCHAR2(54), 
	"IA_BLOCK" VARCHAR2(50), 
	"IA_OFFICE" VARCHAR2(50), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IA_OBI_TS" NUMBER(20,0), 
	"IA_KATOTTG_CODE" VARCHAR2(19), 
	"IA_ORG" NUMBER(14,0), 
	"IA_RU" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_ADRESS"."IA_KATOTTG_CODE" IS 'код КАТОТТГ';
--------------------------------------------------------
--  DDL for Table PINSUR_ADR_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_ADR_HST" 
   (	"IAH_ID" NUMBER(14,0), 
	"IAH_IM" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IAH_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_ANKT_A
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_ANKT_A" 
   (	"IAN_ID" NUMBER(14,0), 
	"IAN_IM" NUMBER(14,0), 
	"IAN_IC" NUMBER(2,0), 
	"IAN_NUMIDENT" VARCHAR2(12), 
	"IAN_INCODE" VARCHAR2(5), 
	"IAN_NAME1" VARCHAR2(500), 
	"IAN_PDT" NUMBER(14,0), 
	"IAN_NAME2" VARCHAR2(500), 
	"IAN_PDT_WHO" VARCHAR2(100), 
	"IAN_PDT_SERIA" VARCHAR2(5), 
	"IAN_TRUST_FIO" VARCHAR2(100), 
	"IAN_PDT_CODE" VARCHAR2(20), 
	"IAN_TRUST_ORG" VARCHAR2(100), 
	"IAN_PDT_DT" DATE, 
	"IAN_RO" NUMBER(14,0), 
	"IAN_TRUST_ADRESS" VARCHAR2(250), 
	"IAN_RO_CODE" VARCHAR2(25), 
	"IAN_TRUST_DRFO" VARCHAR2(10), 
	"IAN_TRUST_PHONE" VARCHAR2(20), 
	"IAN_RO_DT" DATE, 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"IAN_RO_SERIA" VARCHAR2(25), 
	"IAN_SI_NO" VARCHAR2(20), 
	"IAN_MAIN_NUMIDENT" VARCHAR2(12), 
	"IAN_SI_DT" DATE, 
	"IAN_MAIN_INCODE" VARCHAR2(5), 
	"IAN_MAIN_NAME" VARCHAR2(250), 
	"IAN_MAIN_KOATUU" NUMBER(14,0), 
	"REPL_TSR" NUMBER, 
	"IAN_OBI_TS" NUMBER(20,0), 
	"IAN_SI_BEGIN_DT" DATE, 
	"IAN_SI_COMP_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_ANKT_A"."IAN_SI_BEGIN_DT" IS 'Дата початку терміну дії Договору';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_ANKT_A"."IAN_SI_COMP_DT" IS 'Дата завершення терміну дії Договору';
--------------------------------------------------------
--  DDL for Table PINSUR_ANKT_B
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_ANKT_B" 
   (	"IAB_ID" NUMBER(14,0), 
	"IAB_MN" NUMBER(14,0), 
	"IAB_KPF" NUMBER(3,0), 
	"IAB_TX" NUMBER(3,0), 
	"IAB_BS" NUMBER(14,0), 
	"IAB_IM" NUMBER(14,0), 
	"IAB_MIN" NUMBER(14,0), 
	"IAB_FNT" NUMBER(14,0), 
	"IAB_PF" NUMBER(14,0), 
	"IAB_RC" NUMBER(14,0), 
	"IAB_PROC_DECR" NUMBER(6,3), 
	"IAB_ISBENEFITS" CHAR(1), 
	"IAB_INVAL_ISREG" CHAR(1), 
	"IAB_INVAL_QNT" NUMBER(10,0), 
	"IAB_FMEMB_QNT" NUMBER(10,0), 
	"IAB_WORKER_QNT" NUMBER(10,0), 
	"IAB_STOP_DT" DATE, 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"IAB_STOP_NAME" VARCHAR2(100), 
	"REPL_TP" CHAR(1), 
	"IAB_RS" NUMBER(14,0), 
	"IAB_STOP_NUM" VARCHAR2(20), 
	"REPL_TSR" NUMBER, 
	"IAB_OPF_CODE" NUMBER(20,0), 
	"IAB_OBI_TS" NUMBER(20,0), 
	"IAB_IS_BUDGET" VARCHAR2(10) DEFAULT 'F', 
	"IAB_IS_INVAL_ORG" VARCHAR2(10) DEFAULT 'F', 
	"IAB_IS_BOSS" VARCHAR2(10) DEFAULT 'F', 
	"IAB_PRAV_NUMIDENT" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_ANKT_C
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_ANKT_C" 
   (	"IAC_ID" NUMBER(14,0), 
	"IAC_IM" NUMBER(14,0), 
	"IAC_MDF" NUMBER(14,0) DEFAULT -1, 
	"IAC_STATE_REG_DT" DATE, 
	"IAC_RU" NUMBER(14,0) DEFAULT 0, 
	"IAC_IS_SHIPBUILD" CHAR(1) DEFAULT 'F', 
	"IAC_IS_DELF" CHAR(1) DEFAULT 'F', 
	"IAC_IS_PAYER" CHAR(1) DEFAULT 'F', 
	"IAC_CTRL_EDRPOU" VARCHAR2(10), 
	"IAC_CTRL_NAME" VARCHAR2(250), 
	"IAC_MRD" NUMBER(14,0), 
	"IAC_VOL_CONTR_START_DT" DATE, 
	"IAC_VOL_CONTR_STOP_DT" DATE, 
	"IAC_VOL_CONTR_BREAK_DT" DATE, 
	"IAC_RB" NUMBER(14,0) DEFAULT 0, 
	"IAC_LIQ_COURT_NAME" VARCHAR2(200), 
	"IAC_LIQ_COURT_SENT_NUM" VARCHAR2(100), 
	"IAC_LIQ_COURT_SENT_DT" DATE, 
	"IAC_LIQ_COURT_SENT_LAW_DT" DATE, 
	"IAC_LIQ_CRED_TERM_DT" DATE, 
	"IAC_LIQ_ACT_NUM" VARCHAR2(25), 
	"IAC_LIQ_ACT_DT" DATE, 
	"IAC_LIQ_COMM_DT" DATE, 
	"IAC_LIQ_COMM_HEAD_PASS" VARCHAR2(10), 
	"IAC_LIQ_COMM_HEAD_SURNAME" VARCHAR2(70), 
	"IAC_LIQ_COMM_HEAD_NAME" VARCHAR2(150), 
	"IAC_LIQ_COMM_LOCATION" VARCHAR2(150), 
	"IAC_LIQ_MANAGER_PASS" VARCHAR2(10), 
	"IAC_LIQ_MANAGER_SURNAME" VARCHAR2(70), 
	"IAC_LIQ_MANAGER_NAME" VARCHAR2(150), 
	"IAC_MRDS" NUMBER(14,0), 
	"IAC_RECORD_NUM" NUMBER(10,0), 
	"IAC_MRS" NUMBER(14,0) DEFAULT 0, 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IAC_OBI_TS" NUMBER(20,0), 
	"IAC_VI" NUMBER(14,0) DEFAULT 0, 
	"IAC_PUBLIC_DT" DATE, 
	"IAC_STATE_REG_TERM_DT" DATE, 
	"IAC_IS_NPD" VARCHAR2(1)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_ANKT_C"."IAC_IS_NPD" IS 'Ознака ФОП одночасно проводить незалежну професійну діяльність';
--------------------------------------------------------
--  DDL for Table PINSUR_BNKACCOUNT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" 
   (	"IX_ID" NUMBER(14,0), 
	"IX_IXH" NUMBER(14,0), 
	"IX_NB" NUMBER(14,0), 
	"IX_TP" CHAR(1), 
	"IX_FOND_TP" CHAR(1), 
	"IX_ACCOUNT" VARCHAR2(30), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IX_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_BNKACC_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_BNKACC_HST" 
   (	"IXH_ID" NUMBER(14,0), 
	"IXH_IM" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IXH_OBI_TS" NUMBER(20,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table PINSUR_BNKPAYMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" 
   (	"IP_ID" NUMBER(14,0), 
	"IP_IPH" NUMBER(14,0), 
	"IP_BF" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IP_OBI_TS" NUMBER(20,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table PINSUR_BNKPAY_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_BNKPAY_HST" 
   (	"IPH_ID" NUMBER(14,0), 
	"IPH_IM" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IPH_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED" 
   (	"ICC_ID" NUMBER(20,0), 
	"ICC_IM" NUMBER(14,0), 
	"ICC_MONTH" NUMBER(2,0), 
	"ICC_YEAR" NUMBER(4,0), 
	"ICC_MARK" NUMBER(1,0), 
	"ICC_TP" VARCHAR2(10), 
	"ICC_IM_SPOV" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TS_CENTER" NUMBER(20,0) DEFAULT 0, 
	"REPL_SEANS" NUMBER, 
	"REPL_TSR" NUMBER DEFAULT -1, 
	"ICC_OBI_TS" NUMBER(20,0), 
	"ICC_ORG" NUMBER(5,0), 
	"ICC_IM_GUID" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_DATA" 
   (	"PCD_ID" NUMBER(14,0), 
	"PCD_ICS" NUMBER(14,0), 
	"PCD_IM" NUMBER(14,0), 
	"PCD_IM_GUID" NUMBER(14,0), 
	"PCD_MONTH" NUMBER(2,0), 
	"PCD_YEAR" NUMBER(4,0), 
	"PCD_TP" NUMBER(2,0), 
	"PCD_RESULT" NUMBER(1,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_OSSV_CS1
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS1" 
   (	"ICO_ID" NUMBER(14,0), 
	"ICO_ICS" NUMBER(14,0), 
	"ICO_IM" NUMBER(14,0), 
	"ICO_MONTH" NUMBER(2,0), 
	"ICO_YEAR" NUMBER(4,0), 
	"ICO_TP" NUMBER(2,0), 
	"ICO_ORG" NUMBER(5,0), 
	"ICO_ISPOZ" NUMBER(1,0), 
	"ICO_RESULT" NUMBER(1,0), 
	"ICO_IM_GUID" NUMBER(14,0)
   ) 
  PARTITION BY HASH ("ICO_ID") 
 (PARTITION "SYS_P6702" , 
 PARTITION "SYS_P6703" , 
 PARTITION "SYS_P6704" , 
 PARTITION "SYS_P6705" , 
 PARTITION "SYS_P6706" , 
 PARTITION "SYS_P6707" , 
 PARTITION "SYS_P6708" , 
 PARTITION "SYS_P6709" , 
 PARTITION "SYS_P6710" , 
 PARTITION "SYS_P6711" , 
 PARTITION "SYS_P6712" , 
 PARTITION "SYS_P6713" , 
 PARTITION "SYS_P6714" , 
 PARTITION "SYS_P6715" , 
 PARTITION "SYS_P6716" , 
 PARTITION "SYS_P6717" , 
 PARTITION "SYS_P6718" , 
 PARTITION "SYS_P6719" , 
 PARTITION "SYS_P6720" , 
 PARTITION "SYS_P6721" , 
 PARTITION "SYS_P6722" , 
 PARTITION "SYS_P6723" , 
 PARTITION "SYS_P6724" , 
 PARTITION "SYS_P6725" , 
 PARTITION "SYS_P6726" , 
 PARTITION "SYS_P6727" , 
 PARTITION "SYS_P6728" , 
 PARTITION "SYS_P6729" , 
 PARTITION "SYS_P6730" , 
 PARTITION "SYS_P6731" , 
 PARTITION "SYS_P6732" , 
 PARTITION "SYS_P6733" , 
 PARTITION "SYS_P6734" , 
 PARTITION "SYS_P6735" , 
 PARTITION "SYS_P6736" , 
 PARTITION "SYS_P6737" , 
 PARTITION "SYS_P6738" , 
 PARTITION "SYS_P6739" , 
 PARTITION "SYS_P6740" , 
 PARTITION "SYS_P6741" , 
 PARTITION "SYS_P6742" , 
 PARTITION "SYS_P6743" , 
 PARTITION "SYS_P6744" , 
 PARTITION "SYS_P6745" , 
 PARTITION "SYS_P6746" , 
 PARTITION "SYS_P6747" , 
 PARTITION "SYS_P6748" , 
 PARTITION "SYS_P6749" )  ENABLE ROW MOVEMENT  READ ONLY ;

   COMMENT ON TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS1"  IS 'snapshot table for snapshot IKIS_ERSP.PINSUR_CACHED_OSSV_CS1_P';
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_OSSV_CS2
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2" 
   (	"ICO_ID" NUMBER(14,0), 
	"ICO_ICS" NUMBER(14,0), 
	"ICO_IM" NUMBER(14,0), 
	"ICO_MONTH" NUMBER(2,0), 
	"ICO_YEAR" NUMBER(4,0), 
	"ICO_TP" NUMBER(2,0), 
	"ICO_ORG" NUMBER(5,0), 
	"ICO_ISPOZ" NUMBER(1,0), 
	"ICO_RESULT" NUMBER(1,0), 
	"ICO_IM_GUID" NUMBER(14,0)
   ) 
  PARTITION BY HASH ("ICO_ID") 
 (PARTITION "SYS_P6750" , 
 PARTITION "SYS_P6751" , 
 PARTITION "SYS_P6752" , 
 PARTITION "SYS_P6753" , 
 PARTITION "SYS_P6754" , 
 PARTITION "SYS_P6755" , 
 PARTITION "SYS_P6756" , 
 PARTITION "SYS_P6757" , 
 PARTITION "SYS_P6758" , 
 PARTITION "SYS_P6759" , 
 PARTITION "SYS_P6760" , 
 PARTITION "SYS_P6761" , 
 PARTITION "SYS_P6762" , 
 PARTITION "SYS_P6763" , 
 PARTITION "SYS_P6764" , 
 PARTITION "SYS_P6765" , 
 PARTITION "SYS_P6766" , 
 PARTITION "SYS_P6767" , 
 PARTITION "SYS_P6768" , 
 PARTITION "SYS_P6769" , 
 PARTITION "SYS_P6770" , 
 PARTITION "SYS_P6771" , 
 PARTITION "SYS_P6772" , 
 PARTITION "SYS_P6773" , 
 PARTITION "SYS_P6774" , 
 PARTITION "SYS_P6775" , 
 PARTITION "SYS_P6776" , 
 PARTITION "SYS_P6777" , 
 PARTITION "SYS_P6778" , 
 PARTITION "SYS_P6779" , 
 PARTITION "SYS_P6780" , 
 PARTITION "SYS_P6781" , 
 PARTITION "SYS_P6782" , 
 PARTITION "SYS_P6783" , 
 PARTITION "SYS_P6784" , 
 PARTITION "SYS_P6785" , 
 PARTITION "SYS_P6786" , 
 PARTITION "SYS_P6787" , 
 PARTITION "SYS_P6788" , 
 PARTITION "SYS_P6789" , 
 PARTITION "SYS_P6790" , 
 PARTITION "SYS_P6791" , 
 PARTITION "SYS_P6792" , 
 PARTITION "SYS_P6793" , 
 PARTITION "SYS_P6794" , 
 PARTITION "SYS_P6795" , 
 PARTITION "SYS_P6796" , 
 PARTITION "SYS_P6797" )  ENABLE ROW MOVEMENT  READ ONLY ;

   COMMENT ON TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2"  IS 'snapshot table for snapshot IKIS_ERSP.PINSUR_CACHED_OSSV_CS2_P';
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_PROTOCOL
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" 
   (	"ICP_ID" NUMBER(14,0), 
	"ICP_SEANCE_ID" NUMBER(14,0), 
	"ICP_CREATE_DT" DATE DEFAULT SYSDATE, 
	"ICP_TP" CHAR(1) DEFAULT 'I', 
	"ICP_MESSAGE" VARCHAR2(4000)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_SEANS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" 
   (	"ICS_ID" NUMBER(14,0), 
	"ICS_OSSV_DT" DATE, 
	"ICS_TYPE" NUMBER(1,0) DEFAULT 0, 
	"ICS_ISPOZ" NUMBER(1,0) DEFAULT 1, 
	"ICS_START_DT" DATE, 
	"ICS_STOP_DT" DATE, 
	"ICS_COUNT" NUMBER(14,0), 
	"ICS_SKIP" NUMBER(1,0) DEFAULT 0, 
	"ICS_TOADD" NUMBER(14,0), 
	"ICS_TODEL" NUMBER(14,0), 
	"ICS_ADDED" NUMBER(14,0), 
	"ICS_DELETED" NUMBER(14,0), 
	"ICS_EXISTS" NUMBER(14,0), 
	"ICS_NOTFOUND" NUMBER(14,0), 
	"ICS_NOIM" NUMBER(14,0), 
	"ICS_DOUBLED" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_SEANS_CS1
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS1" 
   (	"ICS_ID" NUMBER(14,0), 
	"ICS_OSSV_DT" DATE, 
	"ICS_TYPE" NUMBER(1,0), 
	"ICS_START_DT" DATE, 
	"ICS_STOP_DT" DATE, 
	"ICS_SKIP" NUMBER(1,0), 
	"ICS_TOADD" NUMBER(14,0), 
	"ICS_TODEL" NUMBER(14,0), 
	"ICS_ADDED" NUMBER(14,0), 
	"ICS_DELETED" NUMBER(14,0), 
	"ICS_COPIEDTOOLDIM" NUMBER(14,0), 
	"ICS_EXISTS" NUMBER(14,0), 
	"ICS_NOTFOUND" NUMBER(14,0), 
	"ICS_NOIM" NUMBER(14,0), 
	"ICS_ORGLIST" VARCHAR2(4000), 
	"ICS_ZIPDATE" DATE, 
	"ICS_ZIPCONTENT" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CACHED_SEANS_CS2
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS2" 
   (	"ICS_ID" NUMBER(14,0), 
	"ICS_OSSV_DT" DATE, 
	"ICS_TYPE" NUMBER(1,0), 
	"ICS_START_DT" DATE, 
	"ICS_STOP_DT" DATE, 
	"ICS_SKIP" NUMBER(1,0), 
	"ICS_TOADD" NUMBER(14,0), 
	"ICS_TODEL" NUMBER(14,0), 
	"ICS_ADDED" NUMBER(14,0), 
	"ICS_DELETED" NUMBER(14,0), 
	"ICS_EXISTS" NUMBER(14,0), 
	"ICS_NOTFOUND" NUMBER(14,0), 
	"ICS_NOIM" NUMBER(14,0), 
	"ICS_ZIPDATE" DATE, 
	"ICS_ZIPCONTENT" BLOB, 
	"ICS_COPIEDTOOLDIM" NUMBER(15,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CHNG_DOC
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" 
   (	"IH_ID" NUMBER(14,0), 
	"IH_IM" NUMBER(14,0), 
	"IH_IVH" NUMBER(14,0), 
	"IH_ORG" NUMBER(5,0), 
	"IH_DS" NUMBER(14,0), 
	"IH_ITH" NUMBER(14,0), 
	"IH_IAN" NUMBER(14,0), 
	"IH_IAB" NUMBER(14,0), 
	"IH_IAH" NUMBER(14,0), 
	"REPL_PACK" NUMBER(10,0), 
	"IH_IXH" NUMBER(14,0), 
	"IH_IKH" NUMBER(14,0), 
	"IH_IPH" NUMBER(14,0), 
	"IH_TP" CHAR(1), 
	"IH_NAME" VARCHAR2(250), 
	"IH_CREATE_DT" DATE, 
	"IH_REG_DT" DATE, 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"IH_WRITER" VARCHAR2(60), 
	"IH_REF_CHNG" RAW(2), 
	"IH_FILE" NUMBER(14,0), 
	"REPL_TP" CHAR(1), 
	"IH_FILE_OZSZ" NUMBER(14,0), 
	"IH_ATTR_CHNG" RAW(8), 
	"IH_START_DT" DATE, 
	"IH_ST" VARCHAR2(10), 
	"IH_STOP_DT" DATE, 
	"IH_ST_ACTUAL" VARCHAR2(10), 
	"IH_ST_CNTRL" VARCHAR2(10), 
	"IH_ST_CNTRL_E" VARCHAR2(10), 
	"REPL_TS_CENTER" NUMBER(20,0) DEFAULT 0, 
	"REPL_SEANS_DOC" NUMBER, 
	"REPL_SEANS_ST" NUMBER, 
	"IH_DS_FIRST" NUMBER(14,0), 
	"IH_EDR_ID" NUMBER(20,0), 
	"REPL_TSR" NUMBER, 
	"IH_USR_ACT" NUMBER(14,0), 
	"IH_OBI_TS" NUMBER(20,0), 
	"IH_IAC" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CONTACT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CONTACT" 
   (	"IK_ID" NUMBER(14,0), 
	"IK_IKH" NUMBER(14,0), 
	"IK_TP" CHAR(1), 
	"IK_PIB" VARCHAR2(250), 
	"IK_PHONE" VARCHAR2(20), 
	"IK_FAX" VARCHAR2(20), 
	"IK_EMAIL" VARCHAR2(250), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"IK_DRFO" VARCHAR2(10), 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IK_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_CONTRACT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CONTRACT" 
   (	"ICN_ID" NUMBER(14,0), 
	"ICN_IM" NUMBER(14,0), 
	"ICN_IC" NUMBER(2,0), 
	"ICN_NO" VARCHAR2(20), 
	"ICN_START_DT" DATE, 
	"ICN_CLOSE_DT" DATE, 
	"ICN_BEGIN_DT" DATE, 
	"ICN_END_DT" DATE, 
	"ICN_OBI_TS" NUMBER(20,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_ID" IS 'ІД запису';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_IM" IS 'ID_страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_IC" IS 'ID_категорії_страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_NO" IS 'Номер договору';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_START_DT" IS 'Дата укладання Договору';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_CLOSE_DT" IS 'Фактична дата завершення/припинення дії Договору';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_BEGIN_DT" IS 'Дата початку терміну дії Договору';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_END_DT" IS 'Дата завершення терміну дії Договору';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_CONTRACT"."ICN_OBI_TS" IS 'Версія';
--------------------------------------------------------
--  DDL for Table PINSUR_CONT_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_CONT_HST" 
   (	"IKH_ID" NUMBER(14,0), 
	"IKH_IM" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IKH_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_DUAL
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_DUAL" 
   (	"DUMMY" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_JOIN_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" 
   (	"IJH_ID" NUMBER(14,0), 
	"IJH_OZSZ_IM" NUMBER(14,0), 
	"IJH_OZSZ_IH" NUMBER(14,0), 
	"IJH_SPOV_IM" NUMBER(14,0), 
	"IJH_SPOV_IH" NUMBER(14,0), 
	"IJH_SPOV_ID_OLD" NUMBER(14,0), 
	"IJH_SPOV_ID_NEW" NUMBER(14,0), 
	"IJH_OPER_DT" DATE, 
	"IJH_OPER_USR" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"IJH_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_KVED
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_KVED" 
   (	"IV_ID" NUMBER(14,0), 
	"IV_KVD" NUMBER(14,0), 
	"IV_IVH" NUMBER(14,0), 
	"IV_TP" VARCHAR2(10), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IV_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_KVED_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_KVED_HST" 
   (	"IVH_ID" NUMBER(14,0), 
	"IVH_IM" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IVH_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_MAIN
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_MAIN" 
   (	"IM_ID" NUMBER(14,0), 
	"IM_IH" NUMBER(14,0), 
	"IM_CODE_PSV" VARCHAR2(21), 
	"IM_IH_PRIOR" NUMBER(14,0), 
	"IM_DT_PSV" DATE, 
	"IM_ST" CHAR(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"IM_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"IM_ID_SPOV" NUMBER(14,0), 
	"IM_INSPECTOR" VARCHAR2(100), 
	"IM_ID_OZSZ" NUMBER(14,0), 
	"IM_CL_SRC" VARCHAR2(10), 
	"REPL_SEANS" NUMBER, 
	"IM_GUID" NUMBER(14,0), 
	"IM_GUID_EDR" NUMBER(14,0), 
	"REPL_TSR" NUMBER, 
	"IM_OBI_TS" NUMBER(20,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table PINSUR_MOVEMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_MOVEMENT" 
   (	"IMV_ID" NUMBER(14,0), 
	"IMV_IM_GUID" NUMBER(14,0), 
	"IMV_IH1" NUMBER(14,0), 
	"IMV_IH2" NUMBER(14,0), 
	"IMV_ORG1" NUMBER(5,0), 
	"IMV_ORG2" NUMBER(5,0), 
	"IMV_ST" CHAR(1), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"IMV_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_OBJECTPARAM
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM" 
   (	"IOP_ID" NUMBER(14,0), 
	"IOP_OPT" NUMBER(14,0), 
	"IOP_IM" NUMBER(14,0), 
	"IOP_VALUE" VARCHAR2(100), 
	"IOP_LOAD_DT" DATE, 
	"IOP_CREATE_DT" DATE, 
	"IOP_START_DT" DATE, 
	"IOP_STOP_DT" DATE, 
	"IOP_LASTREC" VARCHAR2(10), 
	"IOP_ST" VARCHAR2(10), 
	"IOP_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_OBJECTPARAM_RISK
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK" 
   (	"OPR_ID" NUMBER(14,0), 
	"OPR_IOP" NUMBER(14,0), 
	"OPR_MESSAGE_NUM" VARCHAR2(10), 
	"OPR_CHANGE_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK"."OPR_ID" IS 'ІД запису';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK"."OPR_IOP" IS 'Ід значення параметру';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK"."OPR_MESSAGE_NUM" IS '№ повідомлення про зміну класу професійного ризику на виробництві';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK"."OPR_CHANGE_DT" IS 'Дата, до якої змінено клас професійного ризику на виробництві';
--------------------------------------------------------
--  DDL for Table PINSUR_PERSON_CACHED
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_PERSON_CACHED" 
   (	"IPC_ID" NUMBER(14,0), 
	"IPC_IP" NUMBER(14,0), 
	"IPC_IM" NUMBER(14,0), 
	"IPC_IM_GUID" NUMBER(14,0), 
	"IPC_DT" DATE, 
	"IPC_TP" VARCHAR2(10), 
	"IPC_CDP" NUMBER(14,0), 
	"IPC_EDRPO" VARCHAR2(10)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_PERSON_CACHED"."IPC_ID" IS 'Ід позначка по особі';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_PERSON_CACHED"."IPC_IM" IS 'Ід страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_PERSON_CACHED"."IPC_IM_GUID" IS 'гуід';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_PERSON_CACHED"."IPC_DT" IS 'місяць';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_PERSON_CACHED"."IPC_TP" IS 'тип позначки';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_PERSON_CACHED"."IPC_CDP" IS 'Ід запису що додав запис';
--------------------------------------------------------
--  DDL for Table PINSUR_REQUEST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_REQUEST" 
   (	"IRQ_ID" NUMBER(14,0), 
	"IRQ_IH" NUMBER(14,0), 
	"IRQ_ORG1" NUMBER(5,0), 
	"IRQ_ORG2" NUMBER(5,0), 
	"IRQ_CREATE_DATE" DATE, 
	"IRQ_ST" VARCHAR2(10) DEFAULT 'N', 
	"IRQ_EDIT_ORG" NUMBER(5,0), 
	"IRQ_EDIT_DATE" DATE, 
	"IRQ_COMMENT1" VARCHAR2(2000), 
	"IRQ_COMMENT2" VARCHAR2(2000), 
	"IRQ_IMV" NUMBER(14,0), 
	"IRQ_CREATE_ORG" NUMBER(5,0), 
	"IRQ_STOP_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_RGST_ACCNT
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_RGST_ACCNT" 
   (	"IRA_ID" NUMBER(14,0), 
	"IRA_IM" NUMBER(14,0), 
	"IRA_ORG" NUMBER(5,0), 
	"IRA_REG_DT" DATE, 
	"IRA_CODE_PSV" VARCHAR2(21), 
	"IRA_REM_DT" VARCHAR2(21), 
	"IRA_REM_REASON" VARCHAR2(250), 
	"IRA_OBI_TS" NUMBER(20,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_ID" IS 'ІД запису';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_IM" IS 'ID_страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_ORG" IS 'ID_ОПФУ';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_REG_DT" IS 'Дата взяття страхувальника на облік';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_CODE_PSV" IS '№ обліку в ОПФУ';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_REM_DT" IS 'Дата переведення/зняття з обліку';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_REM_REASON" IS 'Причина зняття з обліку';
   COMMENT ON COLUMN "IKIS_ERSP"."PINSUR_RGST_ACCNT"."IRA_OBI_TS" IS 'Версія';
--------------------------------------------------------
--  DDL for Table PINSUR_TAXTP
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_TAXTP" 
   (	"IT_ID" NUMBER(14,0), 
	"IT_ITH" NUMBER(14,0), 
	"IT_STT" NUMBER(4,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"IT_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PINSUR_TAXTP_HST
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."PINSUR_TAXTP_HST" 
   (	"ITH_ID" NUMBER(14,0), 
	"ITH_IM" NUMBER(14,0), 
	"REPL_TS" NUMBER(20,0) DEFAULT 0, 
	"REPL_TP" CHAR(1), 
	"REPL_TSR" NUMBER, 
	"ITH_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table REQUEST2OBITS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."REQUEST2OBITS" 
   (	"RQO_ID" NUMBER(14,0), 
	"RQO_NRT" NUMBER(14,0), 
	"RQO_IM_OBI_TS" NUMBER(20,0), 
	"RQO_IH_OBI_TS" NUMBER(20,0), 
	"RQO_IV_OBI_TS" NUMBER(20,0), 
	"RQO_IOP_OBI_TS" NUMBER(20,0), 
	"RQO_CREATE_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table REQUEST4FUND
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."REQUEST4FUND" 
   (	"RQF_ID" NUMBER(14,0), 
	"RQF_IM" NUMBER(14,0), 
	"RQF_IH" NUMBER(14,0), 
	"RQF_OPT" NUMBER(14,0), 
	"RQF_IV_OBI_TS" NUMBER(20,0), 
	"RQF_IOP_OBI_TS" NUMBER(20,0), 
	"RQF_RQ" NUMBER(14,0), 
	"RQF_REQ_DT" DATE, 
	"RQF_ANSW_DT" DATE, 
	"RQF_ST" VARCHAR2(10) DEFAULT 'NEW'
   ) ;
--------------------------------------------------------
--  DDL for Table RISK_DEGREE_CVW
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."RISK_DEGREE_CVW" 
   (	"RDC_ID" NUMBER(14,0), 
	"RDC_IM" NUMBER(14,0), 
	"RDC_GUID" NUMBER(14,0), 
	"RDC_RECORD_DT" DATE, 
	"RDC_POINT_TOTAL" NUMBER(14,0), 
	"RDC_RISK_LEVEL_DIRLC" NUMBER(14,0), 
	"RDC_CHARGE_START_DT" DATE, 
	"RDC_CHARGE_STOP_DT" DATE, 
	"RDC_CRC" NUMBER(14,0), 
	"RDC_IRC" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_ID" IS 'Ід запису про ризик підприєства від кпр';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_IM" IS 'IM_ID';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_GUID" IS 'Гуід страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_RECORD_DT" IS 'Дата реєстрації в ЄРС';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_POINT_TOTAL" IS 'Кількість балів порушень';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_RISK_LEVEL_DIRLC" IS 'Ступінь ризику страхувальника nsi_insurer_risk_level_cvwi';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_CHARGE_START_DT" IS 'За даними ІКІС з';
   COMMENT ON COLUMN "IKIS_ERSP"."RISK_DEGREE_CVW"."RDC_CHARGE_STOP_DT" IS 'За даними ІКІС по';
--------------------------------------------------------
--  DDL for Table RPT_TEMPLATES
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."RPT_TEMPLATES" 
   (	"RT_ID" NUMBER(14,0), 
	"RT_SS_CODE" VARCHAR2(30), 
	"RT_TP" VARCHAR2(10), 
	"RT_CODE" VARCHAR2(30), 
	"RT_FILE_TP" VARCHAR2(10), 
	"RT_NAME" VARCHAR2(250), 
	"RT_TEXT" BLOB, 
	"RT_FILENAME" VARCHAR2(512)
   ) ;
--------------------------------------------------------
--  DDL for Table SERVICEFILE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."SERVICEFILE" 
   (	"SFL_ID" NUMBER(14,0), 
	"SFL_SMN" NUMBER(14,0), 
	"SFL_ORG" NUMBER(5,0), 
	"SFL_FILENAME" VARCHAR2(100), 
	"SFL_CONTENT" BLOB, 
	"SFL_RECEIV_DT" DATE, 
	"SFL_SEND_DT" DATE, 
	"SFL_ST" VARCHAR2(10) DEFAULT 'RCV'
   ) ;
--------------------------------------------------------
--  DDL for Table SERVICEMANAGE
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."SERVICEMANAGE" 
   (	"SMN_ID" NUMBER(14,0), 
	"SMN_CODE" VARCHAR2(10), 
	"SMN_NAME" VARCHAR2(255), 
	"SMN_IN_DOC" VARCHAR2(255), 
	"SMN_IN_LOGON" VARCHAR2(100), 
	"SMN_IN_PASSWORD" VARCHAR2(100), 
	"SMN_OUT_DOC" VARCHAR2(255), 
	"SMN_OUT_LOGON" VARCHAR2(100), 
	"SMN_OUT_PASSWORD" VARCHAR2(100), 
	"SMN_PROCEDURE" VARCHAR2(255), 
	"SMN_TIMER" NUMBER(10,0), 
	"SMN_IS_SCAN" VARCHAR2(10), 
	"SMN_IS_IN" VARCHAR2(10), 
	"SMN_IN_EXT" VARCHAR2(255), 
	"SMN_EXT_RENAME" VARCHAR2(255), 
	"SMN_ST" VARCHAR2(10), 
	"SMN_CODE_POS" NUMBER(3,0), 
	"SMN_CODE_LENGTH" NUMBER(3,0), 
	"SMN_ST_MIGRATE" VARCHAR2(10), 
	"SMN_OBI_TS" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SPOV_PR_BUF
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."SPOV_PR_BUF" 
   (	"SPB_ID" NUMBER(14,0), 
	"SPB_ORGCODE" NUMBER(5,0), 
	"SPB_NUMIDENT" VARCHAR2(13), 
	"SPB_INCODE" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table SPOV_PR_LOAD
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."SPOV_PR_LOAD" 
   (	"SPL_ID" NUMBER(14,0), 
	"SPL_ORGCODE" NUMBER(5,0), 
	"SPL_NUMIDENT" VARCHAR2(13), 
	"SPL_INCODE" VARCHAR2(5), 
	"SPL_ST" NUMBER(5,0), 
	"SPL_OLDNUMID" VARCHAR2(13), 
	"SPL_OLDINCODE" VARCHAR2(5), 
	"SPL_DS" NUMBER(14,0), 
	"SPL_DS_FIRST" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SPOV_PR_STATUS
--------------------------------------------------------

  CREATE TABLE "IKIS_ERSP"."SPOV_PR_STATUS" 
   (	"IM_ID" NUMBER, 
	"IM_ST_O" CHAR(1), 
	"IM_ST_N" CHAR(1), 
	"IH_ID" NUMBER, 
	"IH_ST_O" VARCHAR2(10), 
	"IH_ST_N" VARCHAR2(10), 
	"IH_ST_ACTUAL_O" VARCHAR2(10), 
	"IH_ST_ACTUAL_N" VARCHAR2(10), 
	"IS_EDITED" NUMBER(1,0) DEFAULT 0 -- не редактировался

   ) ;
--------------------------------------------------------
--  DDL for Table TMP_IDS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "IKIS_ERSP"."TMP_IDS" 
   (	"TI_ID" NUMBER(14,0)
   ) ON COMMIT DELETE ROWS ;
--------------------------------------------------------
--  DDL for View V_ANSW_PFU_EDR_INSUERER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER" ("IM_GUID", "MRD_GUID", "EDRPOU", "MRD_ORG", "MRD_EDRPOU", "MRD_NAME", "MRD_CODE", "MRD_START_DT", "MRD_STOP_DT") AS 
  select t.IM_GUID, t.GUID, t.EDRPOU, t.C_STI_MAIN, t.TIN, t.FULL_NAME, t.N_REG_STI, t.D_REG_STI, t.D_ZAKR_STI
  from IKIS_ERSP.ANSW_PFU_EDR_INSUERER t
;

   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."IM_GUID" IS 'GUID ПФУ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_GUID" IS 'GUID МДЗУ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."EDRPOU" IS 'Код ЄДРПОУ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_ORG" IS 'Код органу Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_EDRPOU" IS 'Код ЄДРПОУ Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_NAME" IS 'Назва страхувальника у Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_CODE" IS 'Номер взяття на облік у Міндоходів України';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_START_DT" IS 'Дата взяття на облік';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ANSW_PFU_EDR_INSUERER"."MRD_STOP_DT" IS 'Дата зняття з обліку'
;
--------------------------------------------------------
--  DDL for View V_ATLAS_BORG_FOR_IKIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ATLAS_BORG_FOR_IKIS" ("ID", "TIN", "DATE_OSSV", "BORG", "NOTE", "OPFU") AS 
  select "ID","TIN","DATE_OSSV","BORG","NOTE","OPFU" from v_atlas_borg_for_ikis@uniteh_acc

;
--------------------------------------------------------
--  DDL for View V_ATLAS_CS_POZNACHKI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ATLAS_CS_POZNACHKI" ("ERS_ID", "CP_MONTH", "CP_YEAR", "CP_TP", "CP_JOURNAL_ID", "RAION_ID", "CP_ISPOZ") AS 
  select "ERS_ID", "CP_MONTH", "CP_YEAR", "CP_TP", "CP_JOURNAL_ID", "RAION_ID", "CP_ISPOZ"
  from v_atlas_cs1_poznachki@uniteh_acc

;
--------------------------------------------------------
--  DDL for View V_ATLAS_CS_POZNACHKI_J
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ATLAS_CS_POZNACHKI_J" ("CPJ_ID", "CPJ_START", "CPJ_STOP", "CPJ_TP", "CPJ_LIST") AS 
  select "CPJ_ID", "CPJ_START", "CPJ_STOP", "CPJ_TP", "CPJ_LIST"
  from v_atlas_cs1_poznachki_journal@uniteh_acc

;
--------------------------------------------------------
--  DDL for View V_ATLAS_CS_POZNACHKI_N
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ATLAS_CS_POZNACHKI_N" ("ERS_ID", "IM_GUID", "CP_MONTH", "CP_YEAR", "CP_TP", "CP_JOURNAL_ID", "RAION_ID", "CP_ISPOZ") AS 
  select
    "ERS_ID"
  , null "IM_GUID"
  , "CP_MONTH"
  , "CP_YEAR"
  , "CP_TP"
  , "CP_JOURNAL_ID"
  , null "RAION_ID"
  , null as "CP_ISPOZ"
from v_atlas_cs2_poznachki@uniteh_acc

;
--------------------------------------------------------
--  DDL for View V_ATLAS_CS_POZNACHKI_N_J
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ATLAS_CS_POZNACHKI_N_J" ("CPJ_ID", "CPJ_START", "CPJ_STOP", "CPJ_TP") AS 
  select "CPJ_ID", "CPJ_START", "CPJ_STOP", "CPJ_TP"
from v_atlas_cs2_poznachki_journal@uniteh_acc

;
--------------------------------------------------------
--  DDL for View V_CS_PINSUR_CACHED_DATA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_CS_PINSUR_CACHED_DATA" ("ERS_ID", "CP_MONTH", "CP_YEAR", "CP_TP", "CP_JOURNAL_ID") AS 
  SELECT ERS_ID, CP_MONTH, CP_YEAR, CP_TP, CP_JOURNAL_ID
  FROM V_ATLAS_CS2_POZNACHKI@UNITEH_ACC

;
--------------------------------------------------------
--  DDL for View V_CS_PINSUR_CACHED_JOURNAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_CS_PINSUR_CACHED_JOURNAL" ("CPJ_ID", "CPJ_START", "CPJ_STOP", "CPJ_TP", "CP_ISPOZ", "CPJ_CN") AS 
  SELECT CPJ_ID, CPJ_START, CPJ_STOP, CPJ_TP, CP_ISPOZ, CPJ_CN
  FROM V_ATLAS_CS2_POZNACHKI_JOURNAL@UNITEH_ACC

;
--------------------------------------------------------
--  DDL for View V_DDN_ADR_TP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_ADR_TP" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 2003
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_BOOLEAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_BOOLEAN" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 2001
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DFR_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DFR_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3011
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DKP_FILE_TP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DKP_FILE_TP" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 2002
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DP_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DP_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3012
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DP_TP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DP_TP" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3013
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DRL_ACTION_TP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DRL_ACTION_TP" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3009
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DR_SOURCE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DR_SOURCE" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3010
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_DR_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_DR_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3008
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_EDR_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_EDR_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3005
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_GEN_ANSW_MODE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_GEN_ANSW_MODE" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  SELECT DIC_DIDI, DIC_CODE, DIC_VALUE, DIC_NAME, DIC_SNAME, DIC_ST, DIC_SRTORDR FROM IKIS_ERSP.DIC_DV WHERE DIC_DIDI = 3007
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_IRQ_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_IRQ_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3001
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_MIGRATE_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_MIGRATE_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3003
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_REC_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_REC_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3002
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_RQF_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_RQF_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3006
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DDN_SERVFILE_ST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DDN_SERVFILE_ST" ("DIC_DIDI", "DIC_CODE", "DIC_VALUE", "DIC_NAME", "DIC_SNAME", "DIC_ST", "DIC_SRTORDR") AS 
  select DIC_DIDI,DIC_CODE,DIC_VALUE,DIC_NAME,DIC_SNAME,DIC_ST,DIC_SRTORDR from dic_dv where DIC_DIDI = 3004
 
 
 
;
--------------------------------------------------------
--  DDL for View V_DEBT_DR2DP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DEBT_DR2DP" ("D2D_ID", "D2D_DP", "D2D_DR") AS 
  SELECT ikis_ersp.debt_dr2dp.d2d_id, ikis_ersp.debt_dr2dp.d2d_dp, ikis_ersp.debt_dr2dp.d2d_dr
       FROM ikis_ersp.debt_dr2dp
 
 
;
--------------------------------------------------------
--  DDL for View V_DEBT_FUND_REPLY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DEBT_FUND_REPLY" ("DFR_ID", "COM_ORG", "DFR_DR", "DFR_DRR", "DFR_REG_FSS", "DFR_DATE_FSS", "DFR_FIRM_EDRPOU", "DFR_BORG_RESULT", "DFR_FSS_NOTE", "DFR_FSS_NUM", "DFR_FSS_NAME", "DFR_FSS_POSITION", "DFR_FSS_PIB", "DFR_FSS_ECP", "DFR_DT", "DFR_SOURCE", "DFR_ST", "DFR_ACTUAL") AS 
  SELECT ikis_ersp.debt_fund_reply.dfr_id, ikis_ersp.debt_fund_reply.com_org, ikis_ersp.debt_fund_reply.dfr_dr, ikis_ersp.debt_fund_reply.dfr_drr, ikis_ersp.debt_fund_reply.dfr_reg_fss, ikis_ersp.debt_fund_reply.dfr_date_fss, ikis_ersp.debt_fund_reply.dfr_firm_edrpou, ikis_ersp.debt_fund_reply.dfr_borg_result, ikis_ersp.debt_fund_reply.dfr_fss_note, ikis_ersp.debt_fund_reply.dfr_fss_num, ikis_ersp.debt_fund_reply.dfr_fss_name, ikis_ersp.debt_fund_reply.dfr_fss_position, ikis_ersp.debt_fund_reply.dfr_fss_pib, ikis_ersp.debt_fund_reply.dfr_fss_ecp, ikis_ersp.debt_fund_reply.dfr_dt, ikis_ersp.debt_fund_reply.dfr_source, ikis_ersp.debt_fund_reply.dfr_st, ikis_ersp.debt_fund_reply.dfr_actual
       FROM ikis_ersp.debt_fund_reply
 
 
;
--------------------------------------------------------
--  DDL for View V_DEBT_PACKET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DEBT_PACKET" ("DP_ID", "DP_CNT", "DP_TP", "DP_REGISTER_DT", "DP_ST", "DP_F1_REQUEST", "DP_F1_REPLY", "DP_F2_REQUEST", "DP_F2_REPLY", "DP_F3_REQUEST", "DP_F3_REPLY", "DP_F4_REQUEST", "DP_F4_REPLY") AS 
  SELECT ikis_ersp.debt_packet.dp_id, ikis_ersp.debt_packet.dp_cnt, ikis_ersp.debt_packet.dp_tp, ikis_ersp.debt_packet.dp_register_dt, ikis_ersp.debt_packet.dp_st, ikis_ersp.debt_packet.dp_f1_request, ikis_ersp.debt_packet.dp_f1_reply, ikis_ersp.debt_packet.dp_f2_request, ikis_ersp.debt_packet.dp_f2_reply, ikis_ersp.debt_packet.dp_f3_request, ikis_ersp.debt_packet.dp_f3_reply, ikis_ersp.debt_packet.dp_f4_request, ikis_ersp.debt_packet.dp_f4_reply
       FROM ikis_ersp.debt_packet
 
 
;
--------------------------------------------------------
--  DDL for View V_DEBT_REQUEST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DEBT_REQUEST" ("DR_ID", "COM_ORG", "DR_REG_PFU", "DR_DATE_PFU", "DR_FIRM_EDRPOU", "DR_FIRM_NAME", "DR_FIRM_ADR", "DR_EDR_SOURCE", "DR_EDR_ID", "DR_EDR_CODE", "DR_EDR_DATE", "DR_EDR_NAME", "DR_PFU_NUM", "DR_PFU_NAME", "DR_PFU_POSITION", "DR_PFU_PIB", "DR_ECP", "DR_ST", "DR_SOURCE", "DR_OUT_NUM", "DR_OUT_DATE", "DR_OUT_PIB", "DR_OUT_POSITION") AS 
  SELECT ikis_ersp.debt_request.dr_id, ikis_ersp.debt_request.com_org, ikis_ersp.debt_request.dr_reg_pfu, ikis_ersp.debt_request.dr_date_pfu, ikis_ersp.debt_request.dr_firm_edrpou, ikis_ersp.debt_request.dr_firm_name, ikis_ersp.debt_request.dr_firm_adr, ikis_ersp.debt_request.dr_edr_source, ikis_ersp.debt_request.dr_edr_id, ikis_ersp.debt_request.dr_edr_code, ikis_ersp.debt_request.dr_edr_date, ikis_ersp.debt_request.dr_edr_name, ikis_ersp.debt_request.dr_pfu_num, ikis_ersp.debt_request.dr_pfu_name, ikis_ersp.debt_request.dr_pfu_position, ikis_ersp.debt_request.dr_pfu_pib, ikis_ersp.debt_request.dr_ecp, ikis_ersp.debt_request.dr_st, ikis_ersp.debt_request.dr_source, ikis_ersp.debt_request.dr_out_num, ikis_ersp.debt_request.dr_out_date, ikis_ersp.debt_request.dr_out_pib, ikis_ersp.debt_request.dr_out_position
       FROM ikis_ersp.debt_request
 
 
;
--------------------------------------------------------
--  DDL for View V_DEBT_REQUEST_2_OSSV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DEBT_REQUEST_2_OSSV" ("ID", "TIN", "DATE_IKIS") AS 
  SELECT ikis_ersp.debt_request.dr_reg_pfu, ikis_ersp.debt_request.dr_firm_edrpou, ikis_ersp.debt_request.dr_date_pfu
       FROM ikis_ersp.debt_request
       WHERE dr_st IN ('Z', 'C', 'R')
AND NOT EXISTS (SELECT 1
                FROM debt_fund_reply
                WHERE dfr_dr = dr_id
                  AND dfr_drr = 4
                  AND dfr_source = 'E')
 
 
;
--------------------------------------------------------
--  DDL for View V_DEBT_REQUEST_LOG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_DEBT_REQUEST_LOG" ("DRL_ID", "DRL_DP", "DRL_DFR", "DRL_DR", "DRL_DT", "DRL_MESSAGE", "DRL_ST", "DRL_ACTION_TP", "DRL_RBM_PKT", "DRL_WU") AS 
  SELECT ikis_ersp.debt_request_log.drl_id, ikis_ersp.debt_request_log.drl_dp, ikis_ersp.debt_request_log.drl_dfr, ikis_ersp.debt_request_log.drl_dr, ikis_ersp.debt_request_log.drl_dt, ikis_ersp.debt_request_log.drl_message, ikis_ersp.debt_request_log.drl_st, ikis_ersp.debt_request_log.drl_action_tp, ikis_ersp.debt_request_log.drl_rbm_pkt, ikis_ersp.debt_request_log.drl_wu
       FROM ikis_ersp.debt_request_log
 
 
;
--------------------------------------------------------
--  DDL for View V_ERS2COURT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_ERS2COURT" ("IM_ID", "IAN_NUMIDENT", "IAN_NAME1", "IAC_MRD", "IAN_RO_SERIA", "IAN_RO_CODE", "IAN_RO_DT", "IM_CODE_PSV", "IM_DT_PSV") AS 
  select ers.im_id, ers.ian_numident, ers.ian_name1, ers.iac_mrd,
  ian.ian_ro_seria, ers.ian_ro_code, ers.ian_ro_dt,
  ers.im_code_psv, ers.im_dt_psv
from ikis_ersp.v_mv_erd_1 ers,
  ikis_ersp.pinsur_ankt_a ian
where ers.ih_org = 28000
  and ers.ian_id = ian.ian_id;

   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IM_ID" IS '?¤ бва егў «м­ЁЄ ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IAN_NUMIDENT" IS 'т„ђЏЋ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IAN_NAME1" IS 'Ќ §ў ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IAC_MRD" IS '?¤ ¬¤§г';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IAN_RO_SERIA" IS '‘Ґа?п бў?¤®жвў® Їа® ¤Ґа¦аҐубва ж?о';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IAN_RO_CODE" IS 'Ќ®¬Ґа бў?¤®жвў® Їа® ¤Ґа¦аҐубва ж?о';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IAN_RO_DT" IS '„ в  ўЁ¤ з? (§ ¬?­Ё) бў?¤®жвў® Їа® ¤Ґа¦аҐубва ж?о';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IM_CODE_PSV" IS 'ђҐубва ж?©­Ё© ­®¬Ґа ў Њ„‡“/Џ”“';
   COMMENT ON COLUMN "IKIS_ERSP"."V_ERS2COURT"."IM_DT_PSV" IS '„ в  аҐубва ж? ў Њ„‡“/Џ”“';
   COMMENT ON TABLE "IKIS_ERSP"."V_ERS2COURT"  IS '‚мо ¤«п бг¤®ў®к бЁбвҐ¬Ё'
;
--------------------------------------------------------
--  DDL for View V_EXECUTIVE_ORDER_CVW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_EXECUTIVE_ORDER_CVW" ("EOC_ID", "EOC_IM", "EOC_GUID", "EOC_EXEC_ORDER_CNT", "EOC_DT") AS 
  SELECT IKIS_ERSP.executive_order_cvw.eoc_id,IKIS_ERSP.executive_order_cvw.eoc_im,IKIS_ERSP.executive_order_cvw.eoc_guid,IKIS_ERSP.executive_order_cvw.eoc_exec_order_cnt,IKIS_ERSP.executive_order_cvw.eoc_dt
		FROM IKIS_ERSP.executive_order_cvw
;
--------------------------------------------------------
--  DDL for View V_EXEMPLARY_CASE_CVW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_EXEMPLARY_CASE_CVW" ("ECC_ID", "ECC_IM", "ECC_GUID", "ECC_EXISTS_CASE", "ECC_DT") AS 
  SELECT IKIS_ERSP.exemplary_case_cvw.ecc_id,IKIS_ERSP.exemplary_case_cvw.ecc_im,IKIS_ERSP.exemplary_case_cvw.ecc_guid,IKIS_ERSP.exemplary_case_cvw.ecc_exists_case,IKIS_ERSP.exemplary_case_cvw.ecc_dt
		FROM IKIS_ERSP.exemplary_case_cvw
;
--------------------------------------------------------
--  DDL for View V_IKIS_PROT_SEANS_UNL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_IKIS_PROT_SEANS_UNL" ("PS_ID", "PS_SS", "PS_ORG", "PS_TYPE", "PS_DATE_START", "PS_DATE_STOP", "REPL_TS") AS 
  SELECT
      PS_ID
    , PS_SS
    , PS_ORG
    , PS_TYPE
    , PS_DATE_START
    , PS_DATE_STOP
    , REPL_TS
FROM IKIS_PROT_SEANS

;
--------------------------------------------------------
--  DDL for View V_IKIS_PROT_UNL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_IKIS_PROT_UNL" ("PROT_ID", "PROT_SEANS", "PROT_SS", "PROT_IPM", "PROT_ES", "PROT_MSG_TYPE", "PROT_ES_ID", "PROT_TYPE", "PROT_DATETIME", "PROT_PARAMVALUE1", "PROT_PARAMVALUE2", "PROT_PARAMVALUE3", "PROT_PARAMVALUE4", "PROT_PARAMVALUE5", "PROT_PARAMVALUE6", "PROT_PARAMVALUE7", "PROT_PARAMVALUE8", "PROT_ORD_1", "PROT_ORD_2", "PROT_ORD_3") AS 
  select
  PROT_ID,  PROT_SEANS,  PROT_SS,  PROT_IPM,  PROT_ES,
  PROT_MSG_TYPE,  PROT_ES_ID,  PROT_TYPE,  PROT_DATETIME,
  PROT_PARAMVALUE1,  PROT_PARAMVALUE2,  PROT_PARAMVALUE3,
  PROT_PARAMVALUE4,  PROT_PARAMVALUE5,  PROT_PARAMVALUE6,
  PROT_PARAMVALUE7,  PROT_PARAMVALUE8,
  PROT_ORD_1,  PROT_ORD_2,  PROT_ORD_3
from ikis_protocol
 
 
 
;
--------------------------------------------------------
--  DDL for View V_MON_FILE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_MON_FILE" ("MF_ID", "MF_LFD", "MF_CR_DT", "MF_CAT_TP", "MF_MON_DT", "HISTORY_STATUS") AS 
  SELECT IKIS_ERSP.mon_file.mf_id,IKIS_ERSP.mon_file.mf_lfd,IKIS_ERSP.mon_file.mf_cr_dt,IKIS_ERSP.mon_file.mf_cat_tp,IKIS_ERSP.mon_file.mf_mon_dt,IKIS_ERSP.mon_file.history_status
    FROM IKIS_ERSP.mon_file
;
--------------------------------------------------------
--  DDL for View V_MON_IM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_MON_IM" ("MIM_ID", "MIM_MI", "MIM_IM", "MIM_ST", "MIM_SEARCH_TP", "MIM_CR_DT", "MIM_CR_WU", "MIM_DEL_DT", "MIM_DEL_WU", "MIM_EDRPO") AS 
  SELECT IKIS_ERSP.mon_im.mim_id,IKIS_ERSP.mon_im.mim_mi,IKIS_ERSP.mon_im.mim_im,IKIS_ERSP.mon_im.mim_st,IKIS_ERSP.mon_im.mim_search_tp,IKIS_ERSP.mon_im.mim_cr_dt,IKIS_ERSP.mon_im.mim_cr_wu,IKIS_ERSP.mon_im.mim_del_dt,IKIS_ERSP.mon_im.mim_del_wu,IKIS_ERSP.mon_im.mim_edrpo
    FROM IKIS_ERSP.mon_im
;
--------------------------------------------------------
--  DDL for View V_MON_INSTITUTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_MON_INSTITUTION" ("MI_ID", "MI_CR_DT", "MI_NAME", "MI_CODE", "MI_CODE_MAIN", "MI_FOUNDING_YEAR", "MI_CAT_TXT", "MI_KATOTTG", "MI_REGION", "MI_SETTLMENT", "MI_ADDRESS", "MI_BLOCK_DT", "MI_CAT_TP", "HISTORY_STATUS", "MI_MF", "MI_RN") AS 
  SELECT IKIS_ERSP.mon_institution.mi_id,IKIS_ERSP.mon_institution.mi_cr_dt,IKIS_ERSP.mon_institution.mi_name,IKIS_ERSP.mon_institution.mi_code,IKIS_ERSP.mon_institution.mi_code_main,IKIS_ERSP.mon_institution.mi_founding_year,IKIS_ERSP.mon_institution.mi_cat_txt,IKIS_ERSP.mon_institution.mi_katottg,IKIS_ERSP.mon_institution.mi_region,IKIS_ERSP.mon_institution.mi_settlment,IKIS_ERSP.mon_institution.mi_address,IKIS_ERSP.mon_institution.mi_block_dt,IKIS_ERSP.mon_institution.mi_cat_tp,IKIS_ERSP.mon_institution.history_status,IKIS_ERSP.mon_institution.mi_mf,IKIS_ERSP.mon_institution.mi_rn
		FROM IKIS_ERSP.mon_institution
;
--------------------------------------------------------
--  DDL for View V_MRD_PINSUR_MAIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_MRD_PINSUR_MAIN" ("MRDIM_IM", "MRDIM_GUID", "MRDIM_ORG", "MRDIM_NUMIDENT", "MRDIM_INCODE", "MRDIM_PSV_CODE", "MRDIM_PSV_DT") AS 
  SELECT MRD_PINSUR_MAIN.mrdim_im, MRD_PINSUR_MAIN.mrdim_guid, MRD_PINSUR_MAIN.mrdim_org, MRD_PINSUR_MAIN.mrdim_numident, MRD_PINSUR_MAIN.mrdim_incode, MRD_PINSUR_MAIN.mrdim_psv_code, MRD_PINSUR_MAIN.mrdim_psv_dt
  FROM IKIS_ERSP.MRD_PINSUR_MAIN
 
 
;
--------------------------------------------------------
--  DDL for View V_MRD_PINSUR_MOVEMENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_MRD_PINSUR_MOVEMENT" ("MPM_ID", "MPM_IM", "MPM_MRD_OLD", "MPM_MRD_NEW", "MPM_MOVE_DT", "MPM_ACTUAL_ST", "MPM_ST") AS 
  SELECT MRD_PINSUR_MOVEMENT.mpm_id, MRD_PINSUR_MOVEMENT.mpm_im, MRD_PINSUR_MOVEMENT.mpm_mrd_old, MRD_PINSUR_MOVEMENT.mpm_mrd_new, MRD_PINSUR_MOVEMENT.mpm_move_dt, MRD_PINSUR_MOVEMENT.mpm_actual_st, MRD_PINSUR_MOVEMENT.mpm_st
  FROM IKIS_ERSP.MRD_PINSUR_MOVEMENT
 
 
;
--------------------------------------------------------
--  DDL for View V_MV_ERD_1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_MV_ERD_1" ("IM_GUID", "IM_ID", "IH_ID", "IAN_ID", "IAB_ID", "IAC_ID", "IAN_NUMIDENT", "IAN_INCODE", "IAN_NAME1", "IH_ORG", "IAC_MRD", "IM_ID_SPOV", "IM_DT_PSV", "IM_CODE_PSV", "IM_ST", "IM_IH_PRIOR", "IH_DS", "IAN_IC", "IAN_RO_CODE", "IAN_RO_DT", "IAB_STOP_DT", "IA_ID", "IA_KOATUU") AS 
  select im_guid, im_id, ih_id, ian_id, iab_id, iac_id, ian_numident, ian_incode, ian_name1, ih_org, iac_mrd, im_id_spov, im_dt_psv, im_code_psv,
im_st, im_ih_prior, ih_ds, ian_ic, ian_ro_code, ian_ro_dt, iab_stop_dt, ia_id, ia_koatuu
from ikis_aggregate.mv_erd_1
 
 
;
--------------------------------------------------------
--  DDL for View V_NDI_NSI_BANK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NDI_NSI_BANK" ("NB_ID", "NB_NB", "NB_MFO", "NB_EDRPOU", "NB_NAME", "NB_SNAME", "NB_ST", "NB_DEL_DT", "REPL_PACK") AS 
  select "NB_ID","NB_NB","NB_MFO","NB_EDRPOU","NB_NAME","NB_SNAME","NB_ST","NB_DEL_DT","REPL_PACK" from ikis_ndi.v_nsi_bank
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NDI_NSI_KOATUU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NDI_NSI_KOATUU" ("KT_ID", "KT_KT", "KT_CODE", "KT_TP", "KT_NAME", "KT_ST", "KT_DEL_DT", "REPL_PACK") AS 
  select "KT_ID","KT_KT","KT_CODE","KT_TP","KT_NAME","KT_ST","KT_DEL_DT","REPL_PACK" from ikis_ndi.v_nsi_koatuu
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NDI_NSI_KVED
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NDI_NSI_KVED" ("KVD_ID", "KVD_KVD", "KVD_SECTION", "KVD_SUBSECTION", "KVD_PARTITION", "KVD_GROUP", "KVD_CLASS", "KVD_SUBCLASS", "KVD_NAME", "KVD_SNAME", "KVD_ST", "KVED_CODE", "KVED_CODE_EX", "KVD_DEL_DT", "REPL_PACK", "KVD_TYPE") AS 
  select "KVD_ID","KVD_KVD","KVD_SECTION","KVD_SUBSECTION","KVD_PARTITION","KVD_GROUP","KVD_CLASS","KVD_SUBCLASS","KVD_NAME","KVD_SNAME","KVD_ST","KVED_CODE","KVED_CODE_EX","KVD_DEL_DT","REPL_PACK","KVD_TYPE" from ikis_ndi.v_nsi_kved
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NDI_NSI_MNG_FORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NDI_NSI_MNG_FORM" ("MN_ID", "MN_MN", "MN_CODE", "MN_NAME", "MN_SNAME", "MN_ST", "MN_DEL_DT", "REPL_PACK") AS 
  select "MN_ID","MN_MN","MN_CODE","MN_NAME","MN_SNAME","MN_ST","MN_DEL_DT","REPL_PACK" from ikis_ndi.v_nsi_mng_form
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NDI_NSI_REG_ORG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NDI_NSI_REG_ORG" ("RO_ID", "RO_CODE", "RO_NAME", "RO_SNAME", "RO_ST", "RO_OBL", "RO_EDRPOU", "REPL_PACK", "RO_DEL_DT", "RO_ADDRESS") AS 
  select "RO_ID","RO_CODE","RO_NAME","RO_SNAME","RO_ST","RO_OBL","RO_EDRPOU","REPL_PACK","RO_DEL_DT", "RO_ADDRESS"
  from ikis_ndi.v_nsi_reg_org
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_DAYSOFF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_DAYSOFF" ("DO_ID", "DO_DATE") AS 
  SELECT NSI_DAYSOFF.do_id, NSI_DAYSOFF.do_date
       FROM ikis_ersp.NSI_DAYSOFF
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_DEBT_RECIPIENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_DEBT_RECIPIENT" ("DRR_ID", "DRR_NAME", "DRR_IC_CODE") AS 
  SELECT ikis_ersp.nsi_debt_recipient.drr_id, ikis_ersp.nsi_debt_recipient.drr_name, ikis_ersp.nsi_debt_recipient.drr_ic_code
       FROM ikis_ersp.nsi_debt_recipient
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_NOTICE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_NOTICE_TYPE" ("NT_ID", "NT_NAME") AS 
  SELECT nsi_edr_notice_type.nt_id, nsi_edr_notice_type.nt_name
       FROM ikis_ersp.nsi_edr_notice_type
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_ORG_DIRECT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_ORG_DIRECT" ("ND_ID", "ND_NAME") AS 
  SELECT nsi_edr_org_direct.nd_id, nsi_edr_org_direct.nd_name
       FROM ikis_ersp.nsi_edr_org_direct
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_ORG_TO_ENTYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_ORG_TO_ENTYPE" ("ND_ID", "NT_ID", "OT_ID") AS 
  SELECT nsi_edr_org_to_entype.nd_id, nsi_edr_org_to_entype.nt_id, nsi_edr_org_to_entype.ot_id
       FROM ikis_ersp.nsi_edr_org_to_entype
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_ORG_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_ORG_TYPE" ("OT_ID", "OT_NAME") AS 
  SELECT nsi_edr_org_type.ot_id, nsi_edr_org_type.ot_name
       FROM ikis_ersp.nsi_edr_org_type
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_REASON_DENIAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_REASON_DENIAL" ("DIC_ID", "DIC_CODE", "DIC_NAME", "DIC_OWNER", "DIC_MANUAL") AS 
  SELECT nsi_edr_reason_denial.dic_id, nsi_edr_reason_denial.dic_code, nsi_edr_reason_denial.dic_name, nsi_edr_reason_denial.dic_owner, nsi_edr_reason_denial.dic_manual
       FROM ikis_ersp.nsi_edr_reason_denial
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_REASON_MESSAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_REASON_MESSAGE" ("RM_ID", "RM_CODE", "RM_NAME", "RM_SRTORDR", "RM_ACTUAL_DT", "RM_NOTE") AS 
  SELECT NSI_EDR_REASON_MESSAGE.RM_ID, NSI_EDR_REASON_MESSAGE.RM_CODE, NSI_EDR_REASON_MESSAGE.RM_NAME, NSI_EDR_REASON_MESSAGE.RM_SRTORDR, NSI_EDR_REASON_MESSAGE.RM_ACTUAL_DT, NSI_EDR_REASON_MESSAGE.RM_NOTE
       FROM IKIS_ERSP.NSI_EDR_REASON_MESSAGE
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EDR_REASON_NOCHECK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EDR_REASON_NOCHECK" ("DIC_ID", "DIC_CODE", "DIC_NAME", "DIC_OWNER", "DIC_MANUAL") AS 
  SELECT nsi_edr_reason_nocheck.dic_id, nsi_edr_reason_nocheck.dic_code, nsi_edr_reason_nocheck.dic_name, nsi_edr_reason_nocheck.dic_owner, nsi_edr_reason_nocheck.dic_manual
       FROM ikis_ersp.nsi_edr_reason_nocheck
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_EN_STATUS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_EN_STATUS" ("DIC_CODE", "DIC_NAME", "DIC_ORDER") AS 
  SELECT nsi_en_status.dic_code, nsi_en_status.dic_name, nsi_en_status.dic_order
       FROM ikis_ersp.nsi_en_status
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_FUNDS_TP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_FUNDS_TP" ("NF_ID", "NF_NAME_FULL", "NF_NAME_SHORT") AS 
  SELECT nsi_funds_tp.nf_id, nsi_funds_tp.nf_name_full, nsi_funds_tp.nf_name_short
       FROM ikis_ersp.nsi_funds_tp
 
 
 
;
--------------------------------------------------------
--  DDL for View V_NSI_INSURER_RISK_LEVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_NSI_INSURER_RISK_LEVEL" ("DIRLC_ID", "DIRLC_CODE", "DIRLC_NAME") AS 
  select irl.dirlc_id, irl.dirlc_code, irl.dirlc_name from ikis_ndi.v_nsi_insurer_risk_level irl
;
--------------------------------------------------------
--  DDL for View V_OBJECTPARAMTYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_OBJECTPARAMTYPE" ("OPT_ID", "OPT_FND", "OPT_CODE", "OPT_NAME", "OPT_DATATYPE", "OPT_IS_SHOW") AS 
  select ObjectParamType.opt_id, ObjectParamType.opt_fnd, ObjectParamType.opt_code, ObjectParamType.opt_name, ObjectParamType.opt_datatype, ObjectParamType.opt_is_show
       from ikis_ersp.ObjectParamType
 
 
 
;
--------------------------------------------------------
--  DDL for View V_OPFU2WEB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_OPFU2WEB" ("ORGW_ID", "ORGW_ORG", "ORGW_ST_MIGRATE", "ORGW_DT_READY", "ORGW_DT_MIGRATE") AS 
  SELECT Opfu2Web.orgw_id, Opfu2Web.orgw_org, Opfu2Web.orgw_st_migrate, Opfu2Web.orgw_dt_ready, Opfu2Web.orgw_dt_migrate
       FROM Opfu2Web
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSURER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSURER" ("IM_ID", "IAN_NUMIDENT", "IAN_INCODE", "IAN_NAME1", "IAN_NAME2", "IC_NAME", "IC_SNAME", "IH_ID", "IAN_RO_DT", "IAB_STOP_DT", "IAB_ISBENEFITS", "IM_DT_PSV", "IM_ST") AS 
  SELECT im_id,ian_numident, ian_incode, ian_name1, ian_name2, ic_name, ic_sname, ih_id,
IAN_RO_DT,
IAB_STOP_DT,
IAB_ISBENEFITS,
im_dt_psv,im_st
FROM pinsur_main,
     pinsur_chng_doc,
     pinsur_ankt_a,
     v_nsi_insurercat,
     pinsur_ankt_b
WHERE im_ih = ih_id
  AND ih_ian = ian_id
  and ih_iab = iab_id
  AND ic_id = ian_ic
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_ADRESS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_ADRESS" ("IA_ID", "IA_KOATUU", "IA_IAH", "IA_TP", "IA_POST_IND", "IA_SATTLEMENT", "IA_STREET", "IA_BUILDING", "IA_BLOCK", "IA_OFFICE", "IA_KATOTTG_CODE", "REPL_TS1", "REPL_TSR", "IA_OBI_TS", "REPL_TP", "IA_ORG", "IA_RU") AS 
  SELECT PINSUR_ADRESS.ia_id, PINSUR_ADRESS.ia_koatuu, PINSUR_ADRESS.ia_iah, PINSUR_ADRESS.ia_tp, PINSUR_ADRESS.ia_post_ind, PINSUR_ADRESS.ia_sattlement, PINSUR_ADRESS.ia_street, PINSUR_ADRESS.ia_building, PINSUR_ADRESS.ia_block, PINSUR_ADRESS.ia_office, PINSUR_ADRESS.ia_katottg_code, PINSUR_ADRESS.REPL_TS, PINSUR_ADRESS.REPL_TSR, PINSUR_ADRESS.ia_obi_ts,IKIS_ERSP.PINSUR_ADRESS.REPL_TP,IKIS_ERSP.PINSUR_ADRESS.ia_org,IKIS_ERSP.PINSUR_ADRESS.ia_ru
FROM ikis_ersp.PINSUR_ADRESS
;
--------------------------------------------------------
--  DDL for View V_PINSUR_ADR_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_ADR_HST" ("IAH_ID", "IAH_IM", "REPL_TS1", "REPL_TSR", "IAH_OBI_TS") AS 
  SELECT PINSUR_ADR_HST.iah_id, PINSUR_ADR_HST.iah_im, PINSUR_ADR_HST.REPL_TS, PINSUR_ADR_HST.REPL_TSR, PINSUR_ADR_HST.iah_obi_ts
       FROM PINSUR_ADR_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_ANKT_A
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_ANKT_A" ("IAN_ID", "IAN_IM", "IAN_IC", "IAN_NUMIDENT", "IAN_INCODE", "IAN_NAME1", "IAN_NAME2", "IAN_PDT", "IAN_PDT_SERIA", "IAN_PDT_CODE", "IAN_PDT_WHO", "IAN_PDT_DT", "IAN_TRUST_FIO", "IAN_TRUST_ORG", "IAN_TRUST_ADRESS", "IAN_TRUST_PHONE", "IAN_RO", "IAN_RO_CODE", "IAN_RO_DT", "IAN_TRUST_DRFO", "IAN_RO_SERIA", "IAN_SI_NO", "IAN_SI_DT", "IAN_SI_BEGIN_DT", "IAN_SI_COMP_DT", "IAN_MAIN_NUMIDENT", "IAN_MAIN_INCODE", "IAN_MAIN_NAME", "IAN_MAIN_KOATUU", "REPL_TS1", "REPL_TSR", "IAN_OBI_TS") AS 
  SELECT PINSUR_ANKT_A.ian_id, PINSUR_ANKT_A.ian_im, PINSUR_ANKT_A.ian_ic, PINSUR_ANKT_A.ian_numident, PINSUR_ANKT_A.ian_incode, PINSUR_ANKT_A.ian_name1, PINSUR_ANKT_A.ian_name2, PINSUR_ANKT_A.ian_pdt, PINSUR_ANKT_A.ian_pdt_seria, PINSUR_ANKT_A.ian_pdt_code, PINSUR_ANKT_A.ian_pdt_who, PINSUR_ANKT_A.ian_pdt_dt, PINSUR_ANKT_A.ian_trust_fio, PINSUR_ANKT_A.ian_trust_org, PINSUR_ANKT_A.ian_trust_adress, PINSUR_ANKT_A.ian_trust_phone, PINSUR_ANKT_A.ian_ro, PINSUR_ANKT_A.ian_ro_code, PINSUR_ANKT_A.ian_ro_dt, PINSUR_ANKT_A.ian_trust_drfo, PINSUR_ANKT_A.ian_ro_seria, PINSUR_ANKT_A.ian_si_no, PINSUR_ANKT_A.ian_si_dt, PINSUR_ANKT_A.ian_si_begin_dt, PINSUR_ANKT_A.ian_si_comp_dt, PINSUR_ANKT_A.ian_main_numident, PINSUR_ANKT_A.ian_main_incode, PINSUR_ANKT_A.ian_main_name, PINSUR_ANKT_A.ian_main_koatuu, PINSUR_ANKT_A.REPL_TS, PINSUR_ANKT_A.REPL_TSR, PINSUR_ANKT_A.ian_obi_ts
  FROM IKIS_ERSP.PINSUR_ANKT_A
;
--------------------------------------------------------
--  DDL for View V_PINSUR_ANKT_B
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_ANKT_B" ("IAB_ID", "IAB_BS", "IAB_MIN", "IAB_IM", "IAB_MN", "IAB_FNT", "IAB_PF", "IAB_RC", "IAB_PROC_DECR", "IAB_ISBENEFITS", "IAB_WORKER_QNT", "IAB_INVAL_ISREG", "IAB_INVAL_QNT", "IAB_STOP_DT", "IAB_STOP_NAME", "IAB_STOP_NUM", "IAB_RS", "IAB_FMEMB_QNT", "IAB_TX", "IAB_KPF", "REPL_TS1", "REPL_TSR", "IAB_OPF_CODE", "IAB_OBI_TS", "IAB_IS_BUDGET", "IAB_IS_INVAL_ORG", "IAB_IS_BOSS", "IAB_PRAV_NUMIDENT") AS 
  SELECT PINSUR_ANKT_B.iab_id, PINSUR_ANKT_B.iab_bs, PINSUR_ANKT_B.iab_min, PINSUR_ANKT_B.iab_im, PINSUR_ANKT_B.iab_mn, PINSUR_ANKT_B.iab_fnt, PINSUR_ANKT_B.iab_pf, PINSUR_ANKT_B.iab_rc, PINSUR_ANKT_B.iab_proc_decr, PINSUR_ANKT_B.iab_isbenefits, PINSUR_ANKT_B.iab_worker_qnt, PINSUR_ANKT_B.iab_inval_isreg, PINSUR_ANKT_B.iab_inval_qnt, PINSUR_ANKT_B.iab_stop_dt, PINSUR_ANKT_B.iab_stop_name, PINSUR_ANKT_B.iab_stop_num, PINSUR_ANKT_B.iab_rs, PINSUR_ANKT_B.iab_fmemb_qnt, PINSUR_ANKT_B.iab_tx, PINSUR_ANKT_B.iab_kpf, PINSUR_ANKT_B.REPL_TS, PINSUR_ANKT_B.REPL_TSR, PINSUR_ANKT_B.iab_opf_code, PINSUR_ANKT_B.iab_obi_ts, PINSUR_ANKT_B.iab_is_budget, PINSUR_ANKT_B.iab_is_inval_org, PINSUR_ANKT_B.iab_is_boss, PINSUR_ANKT_B.iab_prav_numident
       FROM ikis_ersp.PINSUR_ANKT_B
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_ANKT_C
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_ANKT_C" ("IAC_ID", "IAC_IM", "IAC_MDF", "IAC_STATE_REG_DT", "IAC_RU", "IAC_IS_SHIPBUILD", "IAC_IS_DELF", "IAC_IS_PAYER", "IAC_CTRL_EDRPOU", "IAC_CTRL_NAME", "IAC_MRD", "IAC_MRS", "IAC_VI", "IAC_VOL_CONTR_START_DT", "IAC_VOL_CONTR_STOP_DT", "IAC_VOL_CONTR_BREAK_DT", "IAC_RB", "IAC_LIQ_COURT_NAME", "IAC_LIQ_COURT_SENT_NUM", "IAC_LIQ_COURT_SENT_DT", "IAC_LIQ_COURT_SENT_LAW_DT", "IAC_LIQ_CRED_TERM_DT", "IAC_LIQ_ACT_NUM", "IAC_LIQ_ACT_DT", "IAC_LIQ_COMM_DT", "IAC_LIQ_COMM_HEAD_PASS", "IAC_LIQ_COMM_HEAD_SURNAME", "IAC_LIQ_COMM_HEAD_NAME", "IAC_LIQ_COMM_LOCATION", "IAC_LIQ_MANAGER_PASS", "IAC_LIQ_MANAGER_SURNAME", "IAC_LIQ_MANAGER_NAME", "IAC_PUBLIC_DT", "IAC_MRDS", "IAC_RECORD_NUM", "IAC_STATE_REG_TERM_DT", "IAC_IS_NPD", "REPL_TS", "REPL_TSR", "IAC_OBI_TS") AS 
  SELECT PINSUR_ANKT_C.IAC_ID, PINSUR_ANKT_C.IAC_IM, PINSUR_ANKT_C.IAC_MDF, PINSUR_ANKT_C.IAC_STATE_REG_DT, PINSUR_ANKT_C.IAC_RU, PINSUR_ANKT_C.IAC_IS_SHIPBUILD, PINSUR_ANKT_C.IAC_IS_DELF, PINSUR_ANKT_C.IAC_IS_PAYER, PINSUR_ANKT_C.IAC_CTRL_EDRPOU, PINSUR_ANKT_C.IAC_CTRL_NAME, PINSUR_ANKT_C.IAC_MRD, PINSUR_ANKT_C.IAC_MRS, PINSUR_ANKT_C.IAC_VI, PINSUR_ANKT_C.IAC_VOL_CONTR_START_DT, PINSUR_ANKT_C.IAC_VOL_CONTR_STOP_DT, PINSUR_ANKT_C.IAC_VOL_CONTR_BREAK_DT, PINSUR_ANKT_C.IAC_RB, PINSUR_ANKT_C.IAC_LIQ_COURT_NAME, PINSUR_ANKT_C.IAC_LIQ_COURT_SENT_NUM, PINSUR_ANKT_C.IAC_LIQ_COURT_SENT_DT, PINSUR_ANKT_C.IAC_LIQ_COURT_SENT_LAW_DT, PINSUR_ANKT_C.IAC_LIQ_CRED_TERM_DT, PINSUR_ANKT_C.IAC_LIQ_ACT_NUM, PINSUR_ANKT_C.IAC_LIQ_ACT_DT, PINSUR_ANKT_C.IAC_LIQ_COMM_DT, PINSUR_ANKT_C.IAC_LIQ_COMM_HEAD_PASS, PINSUR_ANKT_C.IAC_LIQ_COMM_HEAD_SURNAME, PINSUR_ANKT_C.IAC_LIQ_COMM_HEAD_NAME, PINSUR_ANKT_C.IAC_LIQ_COMM_LOCATION, PINSUR_ANKT_C.IAC_LIQ_MANAGER_PASS, PINSUR_ANKT_C.IAC_LIQ_MANAGER_SURNAME, PINSUR_ANKT_C.IAC_LIQ_MANAGER_NAME, PINSUR_ANKT_C.IAC_PUBLIC_DT, PINSUR_ANKT_C.IAC_MRDS, PINSUR_ANKT_C.IAC_RECORD_NUM, PINSUR_ANKT_C.IAC_STATE_REG_TERM_DT, PINSUR_ANKT_C.IAC_IS_NPD, PINSUR_ANKT_C.REPL_TS, PINSUR_ANKT_C.REPL_TSR, PINSUR_ANKT_C.IAC_OBI_TS
  FROM IKIS_ERSP.PINSUR_ANKT_C;

   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_ID" IS 'ID історії_анкети_страхувальника C';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_IM" IS 'ID страхувальника';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_MDF" IS 'ID типу відомостей';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_STATE_REG_DT" IS 'Дата реєстраційної дії держреєстратора';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_RU" IS 'ID області України';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_IS_SHIPBUILD" IS 'Підприємство судобудівної промисловості';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_IS_DELF" IS 'Гіничне підприємство';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_IS_PAYER" IS 'Ознака "платник/неплатник"';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_CTRL_EDRPOU" IS 'Код ЄДРПОУ органу управління 25%';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_CTRL_NAME" IS 'Назва органу управління 25%';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_MRD" IS 'ID органу МДЗУ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_MRS" IS 'ID причини зняття з обліку МДЗУ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_VI" IS 'ID Ознаки виду соціального страхування';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_VOL_CONTR_START_DT" IS 'Дата початку терміну дії Договору про добровільне страхування';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_VOL_CONTR_STOP_DT" IS 'Дата кінця терміну дії Договору про добровільне страхування';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_VOL_CONTR_BREAK_DT" IS 'Дата, з якої розірвано Договір про добровільне страхування';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_RB" IS 'ID причини розірвання Договору';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COURT_NAME" IS 'Найменування суду';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COURT_SENT_NUM" IS 'Номер судового рішення';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COURT_SENT_DT" IS 'Дата судового рішення';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COURT_SENT_LAW_DT" IS 'Дата набрання судовим рішенням законної сили';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_CRED_TERM_DT" IS 'Термін, до якого повинні подати свої вимоги кредитори';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_ACT_NUM" IS 'Номер рішення про припинення діяльності';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_ACT_DT" IS 'Дата прийняття рішення про припинення діяльності';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COMM_DT" IS 'Дата призначення комісії з припинення діяльності';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COMM_HEAD_PASS" IS 'РНОКПП або серія та номер паспорта голови ліквідаційної комісії';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COMM_HEAD_SURNAME" IS 'Прізвище голови ліквідаційної комісії';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COMM_HEAD_NAME" IS 'Ім’я, по батькові голови ліквідаційної комісії';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_COMM_LOCATION" IS 'Місцезнаходження ліквідаційної комісії';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_MANAGER_PASS" IS 'РНОКПП або серія та номер паспорта управителя майна';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_MANAGER_SURNAME" IS 'Прізвище управителя майна';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_LIQ_MANAGER_NAME" IS 'Ім’я, по батькові управителя майна';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_PUBLIC_DT" IS 'Дата публікації в ЗМІ';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_MRDS" IS 'Ід запиту';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_RECORD_NUM" IS 'Ідентифікатор запису у файлі';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_STATE_REG_TERM_DT" IS 'Дата державної реєстрації припинення';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_IS_NPD" IS 'Ознака ФОП одночасно проводить незалежну професійну діяльність';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."REPL_TS" IS 'Мітка послідовності змін';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."REPL_TSR" IS 'REPL_TSR';
   COMMENT ON COLUMN "IKIS_ERSP"."V_PINSUR_ANKT_C"."IAC_OBI_TS" IS 'Версія'
;
--------------------------------------------------------
--  DDL for View V_PINSUR_BNKACCOUNT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_BNKACCOUNT" ("IX_ID", "IX_IXH", "IX_NB", "IX_FOND_TP", "IX_TP", "IX_ACCOUNT", "REPL_TS1", "REPL_TSR", "IX_OBI_TS") AS 
  SELECT PINSUR_BNKACCOUNT.ix_id, PINSUR_BNKACCOUNT.ix_ixh, PINSUR_BNKACCOUNT.ix_nb, PINSUR_BNKACCOUNT.ix_fond_tp, PINSUR_BNKACCOUNT.ix_tp, PINSUR_BNKACCOUNT.ix_account, PINSUR_BNKACCOUNT.REPL_TS, PINSUR_BNKACCOUNT.REPL_TSR, PINSUR_BNKACCOUNT.ix_obi_ts
       FROM PINSUR_BNKACCOUNT
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_BNKACC_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_BNKACC_HST" ("IXH_ID", "IXH_IM", "REPL_TS1", "REPL_TSR", "IXH_OBI_TS") AS 
  SELECT PINSUR_BNKACC_HST.ixh_id, PINSUR_BNKACC_HST.ixh_im, PINSUR_BNKACC_HST.REPL_TS, PINSUR_BNKACC_HST.REPL_TSR, PINSUR_BNKACC_HST.ixh_obi_ts
       FROM PINSUR_BNKACC_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_BNKPAYMENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_BNKPAYMENT" ("IP_ID", "IP_IPH", "IP_BF", "REPL_TS1", "REPL_TSR", "IP_OBI_TS") AS 
  SELECT PINSUR_BNKPAYMENT.ip_id, PINSUR_BNKPAYMENT.ip_iph, PINSUR_BNKPAYMENT.ip_bf, PINSUR_BNKPAYMENT.REPL_TS, PINSUR_BNKPAYMENT.REPL_TSR, PINSUR_BNKPAYMENT.ip_obi_ts
       FROM PINSUR_BNKPAYMENT
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_BNKPAY_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_BNKPAY_HST" ("IPH_ID", "IPH_IM", "REPL_TS1", "REPL_TSR", "IPH_OBI_TS") AS 
  SELECT PINSUR_BNKPAY_HST.iph_id, PINSUR_BNKPAY_HST.iph_im, PINSUR_BNKPAY_HST.REPL_TS, PINSUR_BNKPAY_HST.REPL_TSR, PINSUR_BNKPAY_HST.iph_obi_ts
       FROM PINSUR_BNKPAY_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CACHED
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CACHED" ("ICC_ID", "ICC_IM", "ICC_IM_SPOV", "ICC_IM_GUID", "ICC_MARK", "ICC_MONTH", "ICC_YEAR", "ICC_TP", "REPL_TS_CENTER", "ICC_OBI_TS") AS 
  SELECT PINSUR_CACHED.icc_id, PINSUR_CACHED.icc_im, PINSUR_CACHED.icc_im_spov, PINSUR_CACHED.icc_im_guid, PINSUR_CACHED.icc_mark, PINSUR_CACHED.icc_month, PINSUR_CACHED.icc_year, PINSUR_CACHED.icc_tp, PINSUR_CACHED.repl_ts_center, PINSUR_CACHED.icc_obi_ts
  FROM IKIS_ERSP.PINSUR_CACHED
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CACHED_DATA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CACHED_DATA" ("PCD_ID", "PCD_ICS", "PCD_IM", "PCD_IM_GUID", "PCD_MONTH", "PCD_YEAR", "PCD_TP", "PCD_RESULT") AS 
  SELECT PINSUR_CACHED_DATA.PCD_ID, PINSUR_CACHED_DATA.PCD_ICS, PINSUR_CACHED_DATA.PCD_IM, PINSUR_CACHED_DATA.PCD_IM_GUID, PINSUR_CACHED_DATA.PCD_MONTH, PINSUR_CACHED_DATA.PCD_YEAR, PINSUR_CACHED_DATA.PCD_TP, PINSUR_CACHED_DATA.PCD_RESULT
  FROM IKIS_ERSP.PINSUR_CACHED_DATA
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CACHED_PROTOCOL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CACHED_PROTOCOL" ("ICP_ID", "ICP_SEANCE_ID", "ICP_CREATE_DT", "ICP_TP", "ICP_MESSAGE") AS 
  SELECT PINSUR_CACHED_PROTOCOL.icp_id, PINSUR_CACHED_PROTOCOL.icp_seance_id, PINSUR_CACHED_PROTOCOL.icp_create_dt, PINSUR_CACHED_PROTOCOL.icp_tp, PINSUR_CACHED_PROTOCOL.icp_message
  FROM IKIS_ERSP.PINSUR_CACHED_PROTOCOL
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CACHED_SEANS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CACHED_SEANS" ("ICS_ID", "ICS_OSSV_DT", "ICS_TYPE", "ICS_ISPOZ", "ICS_START_DT", "ICS_STOP_DT", "ICS_COUNT", "ICS_SKIP", "ICS_TOADD", "ICS_TODEL", "ICS_ADDED", "ICS_DELETED", "ICS_EXISTS", "ICS_NOTFOUND", "ICS_NOIM", "ICS_DOUBLED") AS 
  SELECT PINSUR_CACHED_SEANS.ICS_ID, PINSUR_CACHED_SEANS.ICS_OSSV_DT, PINSUR_CACHED_SEANS.ICS_TYPE, PINSUR_CACHED_SEANS.ICS_ISPOZ, PINSUR_CACHED_SEANS.ICS_START_DT, PINSUR_CACHED_SEANS.ICS_STOP_DT, PINSUR_CACHED_SEANS.ICS_COUNT, PINSUR_CACHED_SEANS.ICS_SKIP, PINSUR_CACHED_SEANS.ICS_TOADD, PINSUR_CACHED_SEANS.ICS_TODEL, PINSUR_CACHED_SEANS.ICS_ADDED, PINSUR_CACHED_SEANS.ICS_DELETED, PINSUR_CACHED_SEANS.ICS_EXISTS, PINSUR_CACHED_SEANS.ICS_NOTFOUND, PINSUR_CACHED_SEANS.ICS_NOIM, PINSUR_CACHED_SEANS.ICS_DOUBLED
  FROM IKIS_ERSP.PINSUR_CACHED_SEANS
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CACHED_SEANS_CS1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CACHED_SEANS_CS1" ("ICS_ID", "ICS_OSSV_DT", "ICS_TYPE", "ICS_START_DT", "ICS_STOP_DT", "ICS_SKIP", "ICS_TOADD", "ICS_TODEL", "ICS_ADDED", "ICS_DELETED", "ICS_COPIEDTOOLDIM", "ICS_EXISTS", "ICS_NOTFOUND", "ICS_NOIM", "ICS_ZIPDATE", "ICS_ZIPCONTENT", "ICS_ORGLIST") AS 
  SELECT PINSUR_CACHED_SEANS_CS1.ics_id, PINSUR_CACHED_SEANS_CS1.ics_ossv_dt, PINSUR_CACHED_SEANS_CS1.ics_type, PINSUR_CACHED_SEANS_CS1.ics_start_dt, PINSUR_CACHED_SEANS_CS1.ics_stop_dt, PINSUR_CACHED_SEANS_CS1.ics_skip, PINSUR_CACHED_SEANS_CS1.ics_toadd, PINSUR_CACHED_SEANS_CS1.ics_todel, PINSUR_CACHED_SEANS_CS1.ics_added, PINSUR_CACHED_SEANS_CS1.ics_deleted, PINSUR_CACHED_SEANS_CS1.ics_copiedtooldim, PINSUR_CACHED_SEANS_CS1.ics_exists, PINSUR_CACHED_SEANS_CS1.ics_notfound, PINSUR_CACHED_SEANS_CS1.ics_noim, PINSUR_CACHED_SEANS_CS1.ics_zipdate, PINSUR_CACHED_SEANS_CS1.ics_zipcontent, PINSUR_CACHED_SEANS_CS1.ics_orglist
       FROM ikis_ersp.PINSUR_CACHED_SEANS_CS1
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CACHED_SEANS_CS2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CACHED_SEANS_CS2" ("ICS_ID", "ICS_OSSV_DT", "ICS_TYPE", "ICS_START_DT", "ICS_STOP_DT", "ICS_SKIP", "ICS_TOADD", "ICS_TODEL", "ICS_ADDED", "ICS_DELETED", "ICS_EXISTS", "ICS_NOTFOUND", "ICS_NOIM", "ICS_ZIPDATE", "ICS_ZIPCONTENT") AS 
  SELECT ics_id, ics_ossv_dt, ics_type, ics_start_dt, ics_stop_dt, ics_skip, ics_toadd, ics_todel, ics_added, ics_deleted, ics_exists, ics_notfound, ics_noim,
       ics_zipdate, ics_zipcontent
  FROM IKIS_ERSP.PINSUR_CACHED_SEANS_CS2
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CHNG_DOC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CHNG_DOC" ("IH_ID", "IH_ORG", "IH_IM", "IH_IAN", "IH_IAB", "IH_IAC", "IH_ITH", "IH_IAH", "IH_IXH", "IH_IKH", "IH_IPH", "IH_TP", "IH_NAME", "IH_CREATE_DT", "IH_REG_DT", "IH_WRITER", "IH_ATTR_CHNG", "IH_REF_CHNG", "IH_DS", "IH_START_DT", "IH_STOP_DT", "IH_FILE", "IH_FILE_OZSZ", "IH_ST", "IH_ST_ACTUAL", "IH_ST_CNTRL", "IH_ST_CNTRL_E", "IH_IVH", "REPL_TS1", "REPL_SEANS_DOC", "REPL_SEANS_ST", "IH_DS_FIRST", "IH_EDR_ID", "REPL_TS_CENTER", "REPL_TSR", "IH_OBI_TS", "IH_USR_ACT") AS 
  SELECT PINSUR_CHNG_DOC.ih_id, PINSUR_CHNG_DOC.ih_org, PINSUR_CHNG_DOC.ih_im, PINSUR_CHNG_DOC.ih_ian, PINSUR_CHNG_DOC.ih_iab, PINSUR_CHNG_DOC.ih_iac, PINSUR_CHNG_DOC.ih_ith, PINSUR_CHNG_DOC.ih_iah, PINSUR_CHNG_DOC.ih_ixh, PINSUR_CHNG_DOC.ih_ikh, PINSUR_CHNG_DOC.ih_iph, PINSUR_CHNG_DOC.ih_tp, PINSUR_CHNG_DOC.ih_name, PINSUR_CHNG_DOC.ih_create_dt, PINSUR_CHNG_DOC.ih_reg_dt, PINSUR_CHNG_DOC.ih_writer, PINSUR_CHNG_DOC.ih_attr_chng, PINSUR_CHNG_DOC.ih_ref_chng, PINSUR_CHNG_DOC.ih_ds, PINSUR_CHNG_DOC.ih_start_dt, PINSUR_CHNG_DOC.ih_stop_dt, PINSUR_CHNG_DOC.ih_file, PINSUR_CHNG_DOC.ih_file_ozsz, PINSUR_CHNG_DOC.ih_st, PINSUR_CHNG_DOC.ih_st_actual, PINSUR_CHNG_DOC.ih_st_cntrl, PINSUR_CHNG_DOC.ih_st_cntrl_e, PINSUR_CHNG_DOC.ih_ivh, PINSUR_CHNG_DOC.REPL_TS, PINSUR_CHNG_DOC.REPL_SEANS_DOC, PINSUR_CHNG_DOC.REPL_SEANS_ST, PINSUR_CHNG_DOC.ih_ds_first, PINSUR_CHNG_DOC.IH_EDR_ID, PINSUR_CHNG_DOC.REPL_TS_CENTER, PINSUR_CHNG_DOC.REPL_TSR, PINSUR_CHNG_DOC.ih_obi_ts, PINSUR_CHNG_DOC.ih_usr_act
  FROM IKIS_ERSP.PINSUR_CHNG_DOC
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CONTACT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CONTACT" ("IK_ID", "IK_IKH", "IK_TP", "IK_PIB", "IK_PHONE", "IK_FAX", "IK_EMAIL", "IK_DRFO", "REPL_TS1", "REPL_TSR", "IK_OBI_TS") AS 
  SELECT PINSUR_CONTACT.ik_id, PINSUR_CONTACT.ik_ikh, PINSUR_CONTACT.ik_tp, PINSUR_CONTACT.ik_pib, PINSUR_CONTACT.ik_phone, PINSUR_CONTACT.ik_fax, PINSUR_CONTACT.ik_email, PINSUR_CONTACT.ik_drfo, PINSUR_CONTACT.REPL_TS, PINSUR_CONTACT.REPL_TSR, PINSUR_CONTACT.ik_obi_ts
       FROM PINSUR_CONTACT
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_CONT_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_CONT_HST" ("IKH_ID", "IKH_IM", "REPL_TS1", "REPL_TSR", "IKH_OBI_TS") AS 
  SELECT PINSUR_CONT_HST.ikh_id, PINSUR_CONT_HST.ikh_im, PINSUR_CONT_HST.REPL_TS, PINSUR_CONT_HST.REPL_TSR, PINSUR_CONT_HST.ikh_obi_ts
       FROM PINSUR_CONT_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_JOIN_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_JOIN_HST" ("IJH_ID", "IJH_OZSZ_IM", "IJH_OZSZ_IH", "IJH_SPOV_IM", "IJH_SPOV_IH", "IJH_SPOV_ID_OLD", "IJH_SPOV_ID_NEW", "IJH_OPER_DT", "IJH_OPER_USR", "IJH_OBI_TS") AS 
  SELECT PINSUR_JOIN_HST.IJH_ID, PINSUR_JOIN_HST.IJH_OZSZ_IM, PINSUR_JOIN_HST.IJH_OZSZ_IH, PINSUR_JOIN_HST.IJH_SPOV_IM, PINSUR_JOIN_HST.IJH_SPOV_IH, PINSUR_JOIN_HST.IJH_SPOV_ID_OLD, PINSUR_JOIN_HST.IJH_SPOV_ID_NEW, PINSUR_JOIN_HST.IJH_OPER_DT, PINSUR_JOIN_HST.IJH_OPER_USR, PINSUR_JOIN_HST.ijh_obi_ts
       FROM PINSUR_JOIN_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_KVED
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_KVED" ("IV_ID", "IV_KVD", "IV_IVH", "IV_TP", "REPL_TS1", "REPL_TSR", "IV_OBI_TS") AS 
  SELECT PINSUR_KVED.iv_id, PINSUR_KVED.iv_kvd, PINSUR_KVED.iv_ivh, PINSUR_KVED.iv_tp, PINSUR_KVED.REPL_TS, PINSUR_KVED.REPL_TSR, PINSUR_KVED.iv_obi_ts
       FROM PINSUR_KVED
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_KVED_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_KVED_HST" ("IVH_ID", "IVH_IM", "REPL_TS1", "REPL_TSR", "IVH_OBI_TS") AS 
  SELECT PINSUR_KVED_HST.ivh_id, PINSUR_KVED_HST.ivh_im, PINSUR_KVED_HST.REPL_TS, PINSUR_KVED_HST.REPL_TSR, PINSUR_KVED_HST.ivh_obi_ts
       FROM PINSUR_KVED_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_MAIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_MAIN" ("IM_ID", "IM_IH", "IM_IH_PRIOR", "IM_CODE_PSV", "IM_DT_PSV", "IM_ST", "IM_TS", "IM_INSPECTOR", "IM_ID_SPOV", "IM_ID_OZSZ", "IM_CL_SRC", "REPL_TS1", "REPL_SEANS", "IM_GUID", "IM_GUID_EDR", "REPL_TSR", "REPL_TP", "IM_OBI_TS") AS 
  SELECT PINSUR_MAIN.im_id, PINSUR_MAIN.im_ih, PINSUR_MAIN.im_ih_prior, PINSUR_MAIN.im_code_psv, PINSUR_MAIN.im_dt_psv, PINSUR_MAIN.im_st, PINSUR_MAIN.im_ts, PINSUR_MAIN.IM_INSPECTOR, PINSUR_MAIN.im_id_spov, PINSUR_MAIN.im_id_ozsz, PINSUR_MAIN.im_cl_src, PINSUR_MAIN.REPL_TS, PINSUR_MAIN.REPL_SEANS, PINSUR_MAIN.im_guid, PINSUR_MAIN.im_guid_edr, PINSUR_MAIN.REPL_TSR, PINSUR_MAIN.REPL_TP, PINSUR_MAIN.im_obi_ts
       FROM PINSUR_MAIN
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_MOVEMENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_MOVEMENT" ("IMV_ID", "IMV_IM_GUID", "IMV_IH1", "IMV_IH2", "IMV_ORG1", "IMV_ORG2", "IMV_ST", "REPL_TS1", "IMV_OBI_TS") AS 
  SELECT PINSUR_MOVEMENT.imv_id, PINSUR_MOVEMENT.imv_im_guid, PINSUR_MOVEMENT.imv_ih1, PINSUR_MOVEMENT.imv_ih2, PINSUR_MOVEMENT.imv_org1, PINSUR_MOVEMENT.imv_org2, PINSUR_MOVEMENT.imv_st, PINSUR_MOVEMENT.REPL_TS, PINSUR_MOVEMENT.imv_obi_ts
       FROM PINSUR_MOVEMENT
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_OBJECTPARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_OBJECTPARAM" ("IOP_ID", "IOP_OPT", "IOP_IM", "IOP_VALUE", "IOP_LOAD_DT", "IOP_CREATE_DT", "IOP_START_DT", "IOP_STOP_DT", "IOP_LASTREC", "IOP_ST", "IOP_OBI_TS") AS 
  SELECT pinsur_objectparam.iop_id, pinsur_objectparam.iop_opt, pinsur_objectparam.iop_im, pinsur_objectparam.iop_value, pinsur_objectparam.iop_load_dt, pinsur_objectparam.iop_create_dt, pinsur_objectparam.iop_start_dt, pinsur_objectparam.iop_stop_dt, pinsur_objectparam.iop_lastrec, pinsur_objectparam.iop_st, pinsur_objectparam.iop_obi_ts
       FROM pinsur_objectparam
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_PERSON_CACHED
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_PERSON_CACHED" ("IPC_ID", "IPC_IM", "IPC_IM_GUID", "IPC_DT", "IPC_TP", "IPC_CDP", "IPC_IP") AS 
  SELECT IKIS_ERSP.pinsur_person_cached.ipc_id,IKIS_ERSP.pinsur_person_cached.ipc_im,IKIS_ERSP.pinsur_person_cached.ipc_im_guid,IKIS_ERSP.pinsur_person_cached.ipc_dt,IKIS_ERSP.pinsur_person_cached.ipc_tp,IKIS_ERSP.pinsur_person_cached.ipc_cdp,IKIS_ERSP.pinsur_person_cached.ipc_ip
    FROM IKIS_ERSP.pinsur_person_cached

;
--------------------------------------------------------
--  DDL for View V_PINSUR_REQUEST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_REQUEST" ("IRQ_ID", "IRQ_IMV", "IRQ_IH", "IRQ_ORG1", "IRQ_ORG2", "IRQ_CREATE_ORG", "IRQ_CREATE_DATE", "IRQ_ST", "IRQ_EDIT_ORG", "IRQ_EDIT_DATE", "IRQ_COMMENT1", "IRQ_COMMENT2", "IRQ_STOP_DT") AS 
  SELECT PINSUR_REQUEST.irq_id, PINSUR_REQUEST.irq_imv, PINSUR_REQUEST.irq_ih, PINSUR_REQUEST.irq_org1, PINSUR_REQUEST.irq_org2, PINSUR_REQUEST.irq_create_org, PINSUR_REQUEST.irq_create_date, PINSUR_REQUEST.irq_st, PINSUR_REQUEST.irq_edit_org, PINSUR_REQUEST.irq_edit_date, PINSUR_REQUEST.irq_comment1, PINSUR_REQUEST.irq_comment2, PINSUR_REQUEST.irq_stop_dt
       FROM PINSUR_REQUEST
       WHERE irq_st not in ('D')
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_TAXTP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_TAXTP" ("IT_ID", "IT_ITH", "IT_STT", "REPL_TS1", "REPL_TSR", "IT_OBI_TS") AS 
  SELECT PINSUR_TAXTP.it_id, PINSUR_TAXTP.it_ith, PINSUR_TAXTP.it_stt, PINSUR_TAXTP.REPL_TS, PINSUR_TAXTP.REPL_TSR, PINSUR_TAXTP.it_obi_ts
       FROM PINSUR_TAXTP
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_TAXTP_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_TAXTP_HST" ("ITH_ID", "ITH_IM", "REPL_TS1", "REPL_TSR", "ITH_OBI_TS") AS 
  SELECT PINSUR_TAXTP_HST.ith_id, PINSUR_TAXTP_HST.ith_im, PINSUR_TAXTP_HST.REPL_TS, PINSUR_TAXTP_HST.REPL_TSR, PINSUR_TAXTP_HST.ith_obi_ts
       FROM PINSUR_TAXTP_HST
 
 
 
;
--------------------------------------------------------
--  DDL for View V_PINSUR_TERITREG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_PINSUR_TERITREG" ("IM_ID", "IAN_NUMIDENT", "INS_REG") AS 
  SELECT im_id, ian_numident,
         CASE
           WHEN ia.ia_katottg_code IS NULL AND ia.ia_koatuu IS NOT NULL AND ia.ia_koatuu NOT IN ('0000000000') THEN
             substr(koatuu.kt_code, 1, 2)
           ELSE
             substr(ia.ia_katottg_code, 3, 2)
          END AS ins_reg
    FROM (SELECT e.im_id, e.ian_numident, --e.im_guid, e.iac_mrd,
                 e.ia_id
            FROM (SELECT edr.im_id, edr.ian_numident, edr.ia_id, --edr.im_guid, edr.iac_mrd,
                         row_number() over(PARTITION BY edr.im_guid ORDER BY edr.iab_stop_dt DESC NULLS FIRST, edr.im_id DESC) rn
                    FROM ikis_aggregate.v_edr_main edr
                   WHERE edr.im_id > 0
                     AND edr.ih_org = 28000
                     AND edr.iac_mrd > 0
                     AND edr.ian_incode IS NULL
                   ) e
           WHERE e.rn = 1) er,
         ikis_ersp.v_pinsur_adress ia,
         ikis_ndi.nsi_koatuu koatuu
   WHERE ia.ia_id = er.ia_id
     AND ia.ia_koatuu = koatuu.kt_id(+)
;
--------------------------------------------------------
--  DDL for View V_REQUEST2OBITS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_REQUEST2OBITS" ("RQO_ID", "RQO_NRT", "RQO_IM_OBI_TS", "RQO_IH_OBI_TS", "RQO_IV_OBI_TS", "RQO_IOP_OBI_TS", "RQO_CREATE_DT") AS 
  SELECT Request2ObiTS.rqo_id, Request2ObiTS.rqo_nrt, Request2ObiTS.rqo_im_obi_ts, Request2ObiTS.rqo_ih_obi_ts, Request2ObiTS.rqo_iv_obi_ts, Request2ObiTS.rqo_iop_obi_ts, Request2ObiTS.rqo_create_dt
       FROM Request2ObiTS
 
 
 
;
--------------------------------------------------------
--  DDL for View V_REQUEST4FUND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_REQUEST4FUND" ("RQF_ID", "RQF_IM", "RQF_IH", "RQF_OPT", "RQF_IV_OBI_TS", "RQF_IOP_OBI_TS", "RQF_REQ_DT", "RQF_ANSW_DT", "RQF_ST", "RQF_RQ") AS 
  SELECT Request4Fund.rqf_id, Request4Fund.rqf_im, Request4Fund.rqf_ih, Request4Fund.rqf_opt, Request4Fund.rqf_iv_obi_ts, Request4Fund.rqf_iop_obi_ts, Request4Fund.rqf_req_dt, Request4Fund.rqf_answ_dt, Request4Fund.rqf_st, Request4Fund.rqf_rq
       FROM Request4Fund
 
 
 
;
--------------------------------------------------------
--  DDL for View V_RISK_DEGREE_CVW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_RISK_DEGREE_CVW" ("RDC_ID", "RDC_IM", "RDC_GUID", "RDC_RECORD_DT", "RDC_POINT_TOTAL", "RDC_RISK_LEVEL_DIRLC", "RDC_CHARGE_START_DT", "RDC_CHARGE_STOP_DT", "RDC_CRC", "RDC_IRC") AS 
  SELECT IKIS_ERSP.risk_degree_cvw.rdc_id,IKIS_ERSP.risk_degree_cvw.rdc_im,IKIS_ERSP.risk_degree_cvw.rdc_guid,IKIS_ERSP.risk_degree_cvw.rdc_record_dt,IKIS_ERSP.risk_degree_cvw.rdc_point_total,IKIS_ERSP.risk_degree_cvw.rdc_risk_level_dirlc,IKIS_ERSP.risk_degree_cvw.rdc_charge_start_dt,IKIS_ERSP.risk_degree_cvw.rdc_charge_stop_dt,IKIS_ERSP.risk_degree_cvw.rdc_crc,IKIS_ERSP.risk_degree_cvw.rdc_irc
		FROM IKIS_ERSP.risk_degree_cvw
;
--------------------------------------------------------
--  DDL for View V_SERVICEFILE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_SERVICEFILE" ("SFL_ID", "SFL_SMN", "SFL_ORG", "SFL_FILENAME", "SFL_CONTENT", "SFL_RECEIV_DT", "SFL_SEND_DT", "SFL_ST") AS 
  SELECT ServiceFile.sfl_id, ServiceFile.sfl_smn, ServiceFile.sfl_org, ServiceFile.sfl_filename, ServiceFile.sfl_content, ServiceFile.sfl_receiv_dt, ServiceFile.sfl_send_dt, ServiceFile.sfl_st
       FROM ServiceFile
 
 
 
;
--------------------------------------------------------
--  DDL for View V_SERVICEFILE_SND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_SERVICEFILE_SND" ("SFL_ID", "SFL_SMN", "SFL_ORG", "SFL_FILENAME", "SFL_CONTENT", "SFL_RECEIV_DT", "SFL_SEND_DT", "SFL_ST") AS 
  select "SFL_ID","SFL_SMN","SFL_ORG","SFL_FILENAME","SFL_CONTENT","SFL_RECEIV_DT","SFL_SEND_DT","SFL_ST"
from ServiceFile sfl
where sfl.sfl_st in ('SND')
 
 
 
;
--------------------------------------------------------
--  DDL for View V_SERVICEMANAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "IKIS_ERSP"."V_SERVICEMANAGE" ("SMN_ID", "SMN_CODE", "SMN_NAME", "SMN_IN_DOC", "SMN_IN_LOGON", "SMN_IN_PASSWORD", "SMN_OUT_DOC", "SMN_OUT_LOGON", "SMN_OUT_PASSWORD", "SMN_PROCEDURE", "SMN_TIMER", "SMN_IS_SCAN", "SMN_IS_IN", "SMN_IN_EXT", "SMN_EXT_RENAME", "SMN_ST", "SMN_CODE_POS", "SMN_CODE_LENGTH", "SMN_ST_MIGRATE", "SMN_OBI_TS") AS 
  SELECT ServiceManage.smn_id, ServiceManage.smn_code, ServiceManage.smn_name, ServiceManage.smn_in_doc, ServiceManage.smn_in_logon, ServiceManage.smn_in_password, ServiceManage.smn_out_doc, ServiceManage.smn_out_logon, ServiceManage.smn_out_password, ServiceManage.smn_procedure, ServiceManage.smn_timer, ServiceManage.smn_is_scan, ServiceManage.smn_is_in, ServiceManage.smn_in_ext, ServiceManage.smn_ext_rename, ServiceManage.smn_st, ServiceManage.smn_code_pos, ServiceManage.smn_code_length, ServiceManage.smn_st_migrate, ServiceManage.smn_obi_ts
       FROM ServiceManage
 
 
 
;
--------------------------------------------------------
--  Constraints for Table ADMINREF_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."ADMINREF_MOVEMENT" MODIFY ("ARM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."ADMINREF_MOVEMENT" ADD CONSTRAINT "XPK_ADMINREF_MOVEMENT" PRIMARY KEY ("ARM_ID")
  USING INDEX "IKIS_ERSP"."XPK_ADMINREF_MOVEMENT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ANSW_PFU_EDR_INSUERER
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."ANSW_PFU_EDR_INSUERER" MODIFY ("IM_GUID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEBT_DR2DP
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_DR2DP" MODIFY ("D2D_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DEBT_DR2DP" ADD CONSTRAINT "XPK_DEBT_DR2DP" PRIMARY KEY ("D2D_ID")
  USING INDEX "IKIS_ERSP"."XPK_DEBT_DR2DP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEBT_FUND_REPLY
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_FUND_REPLY" MODIFY ("DFR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DEBT_FUND_REPLY" ADD CONSTRAINT "XPK_DEBT_FUND_REPLY" PRIMARY KEY ("DFR_ID")
  USING INDEX "IKIS_ERSP"."XPK_DEBT_FUND_REPLY"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEBT_PACKET
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_PACKET" MODIFY ("DP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DEBT_PACKET" ADD CONSTRAINT "XPK_DEBT_PACKET" PRIMARY KEY ("DP_ID")
  USING INDEX "IKIS_ERSP"."XPK_DEBT_PACKET"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEBT_REQUEST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST" MODIFY ("DR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST" ADD CONSTRAINT "XPK_DEBT_REQUEST" PRIMARY KEY ("DR_ID")
  USING INDEX "IKIS_ERSP"."XPK_DEBT_REQUEST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEBT_REQUEST_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" MODIFY ("DRL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" ADD CONSTRAINT "XPK_DEBT_REQUEST_LOG" PRIMARY KEY ("DRL_ID")
  USING INDEX "IKIS_ERSP"."XPK_DEBT_REQUEST_LOG"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIC_DD
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_DD" ADD CONSTRAINT "IPK_DIC_DD" PRIMARY KEY ("DIDI_ID")
  USING INDEX "IKIS_ERSP"."IPK_DIC_DD"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."DIC_DD" MODIFY ("DIDI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIC_DEBT_STATUS
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_DEBT_STATUS" ADD CONSTRAINT "PK_DIC_DEBT_STATUS" PRIMARY KEY ("DEBT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_ERSP"."DIC_DEBT_STATUS" MODIFY ("DEBT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIC_DV
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_DV" ADD CONSTRAINT "IPK_DIC_DV" PRIMARY KEY ("DIC_DIDI", "DIC_VALUE")
  USING INDEX "IKIS_ERSP"."IPK_DIC_DV"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."DIC_DV" MODIFY ("DIC_DIDI" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DIC_DV" MODIFY ("DIC_VALUE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIC_MONITOR
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_MONITOR" ADD CONSTRAINT "PK_DD_MON" PRIMARY KEY ("DM_VER", "DM_DIC")
  USING INDEX  ENABLE;
  ALTER TABLE "IKIS_ERSP"."DIC_MONITOR" MODIFY ("DM_VER" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DIC_MONITOR" MODIFY ("DM_DIC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIC_NSI_TBL
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_NSI_TBL" MODIFY ("DNT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DIC_NSI_TBL" ADD CONSTRAINT "XPK_DIC_NSI_TBL" PRIMARY KEY ("DNT_ID")
  USING INDEX "IKIS_ERSP"."XPK_DIC_NSI_TBL"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIC_TBL
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_TBL" ADD CONSTRAINT "IPK_DIC_TBL" PRIMARY KEY ("TBL_ID")
  USING INDEX "IKIS_ERSP"."IPK_DIC_TBL"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."DIC_TBL" MODIFY ("TBL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DIC_TBL" MODIFY ("TBL_DIDI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DUBLANK2FUND
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DUBLANK2FUND" MODIFY ("DAF_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."DUBLANK2FUND" ADD CONSTRAINT "XPK_DUBLANK2FUND" PRIMARY KEY ("DAF_ID")
  USING INDEX "IKIS_ERSP"."XPK_DUBLANK2FUND"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXECUTIVE_ORDER_CVW
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" MODIFY ("EOC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" MODIFY ("EOC_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" MODIFY ("EOC_GUID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" ADD CONSTRAINT "XPK_EXECUTIVE_ORDER_CVW" PRIMARY KEY ("EOC_ID")
  USING INDEX "IKIS_ERSP"."XPK_EXECUTIVE_ORDER_CVW"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXECUTIVE_ORDER_CVW_HIST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST" MODIFY ("EOCH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST" ADD CONSTRAINT "XPK_EXECUTIVE_ORDER_CVW_HIST" PRIMARY KEY ("EOCH_ID")
  USING INDEX "IKIS_ERSP"."XPK_EXECUTIVE_ORDER_CVW_HIST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXEMPLARY_CASE_CVW
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW" MODIFY ("ECC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW" MODIFY ("ECC_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW" MODIFY ("ECC_GUID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW" ADD CONSTRAINT "XPK_EXEMPLARY_CASE_CVW" PRIMARY KEY ("ECC_ID")
  USING INDEX "IKIS_ERSP"."XPK_EXEMPLARY_CASE_CVW"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXEMPLARY_CASE_CVW_HIST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST" MODIFY ("ECCH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST" ADD CONSTRAINT "XPK_EXEMPLARY_CASE_CVW_HIST" PRIMARY KEY ("ECCH_ID")
  USING INDEX "IKIS_ERSP"."XPK_EXEMPLARY_CASE_CVW_HIST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GLOBAL_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" MODIFY ("GM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" ADD CONSTRAINT "XPK_GLOBAL_MOVEMENT" PRIMARY KEY ("GM_ID")
  USING INDEX "IKIS_ERSP"."XPK_GLOBAL_MOVEMENT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GLOBAL_MOVEMENT_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT_LOG" MODIFY ("GML_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT_LOG" ADD CONSTRAINT "XPK_GLOBAL_MOVEMENT_LOG" PRIMARY KEY ("GML_ID")
  USING INDEX "IKIS_ERSP"."XPK_GLOBAL_MOVEMENT_LOG"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IMID2FUND
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."IMID2FUND" MODIFY ("IMF_IM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."IMID2FUND" ADD CONSTRAINT "XPK_IMID2FUND" PRIMARY KEY ("IMF_IM_ID")
  USING INDEX "IKIS_ERSP"."XPK_IMID2FUND"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MESSAGETEMPLATES
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MESSAGETEMPLATES" MODIFY ("MT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MESSAGETEMPLATES" ADD CONSTRAINT "XPK_MESSAGETEMPLATES" PRIMARY KEY ("MT_ID")
  USING INDEX "IKIS_ERSP"."XPK_MESSAGETEMPLATES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MON_FILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MON_FILE" MODIFY ("MF_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MON_FILE" ADD CONSTRAINT "XPK_MON_FILE" PRIMARY KEY ("MF_ID")
  USING INDEX "IKIS_ERSP"."XPK_MON_FILE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MON_IM
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MON_IM" MODIFY ("MIM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MON_IM" ADD CONSTRAINT "XPK_MON_IM" PRIMARY KEY ("MIM_ID")
  USING INDEX "IKIS_ERSP"."XPK_MON_IM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MON_INSTITUTION
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MON_INSTITUTION" MODIFY ("MI_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MON_INSTITUTION" ADD CONSTRAINT "XPK_MON_INSTITUTION" PRIMARY KEY ("MI_ID")
  USING INDEX "IKIS_ERSP"."XPK_MON_INSTITUTION"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MRD_PINSUR_MAIN
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MAIN" MODIFY ("MRDIM_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MAIN" ADD CONSTRAINT "XPK_MRD_PINSUR_MAIN" PRIMARY KEY ("MRDIM_IM") DEFERRABLE
  USING INDEX "IKIS_ERSP"."XPK_MRD_PINSUR_MAIN"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MRD_PINSUR_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" ADD CONSTRAINT "CHK_MRD_PINSUR_MOV_ACT_ST" CHECK (MPM_ACTUAL_ST IN ('T', 'F')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" ADD CONSTRAINT "CHK_MRD_PINSUR_MOV_ST" CHECK (MPM_ST IN ('A', 'D', 'X')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" MODIFY ("MPM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" MODIFY ("MPM_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" MODIFY ("MPM_MRD_OLD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" MODIFY ("MPM_MRD_NEW" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" MODIFY ("MPM_ACTUAL_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" MODIFY ("MPM_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" ADD CONSTRAINT "XPK_MRD_PINSUR_MOVEMENT" PRIMARY KEY ("MPM_ID")
  USING INDEX "IKIS_ERSP"."XPK_MRD_PINSUR_MOVEMENT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_DAYSOFF
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_DAYSOFF" ADD CONSTRAINT "IDX_NSI_DAYSOFF" PRIMARY KEY ("DO_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_DAYSOFF"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_DAYSOFF" MODIFY ("DO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_DEBT_RECIPIENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_DEBT_RECIPIENT" MODIFY ("DRR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_DEBT_RECIPIENT" ADD CONSTRAINT "XPK_NSI_DEBT_RECIPIENT" PRIMARY KEY ("DRR_ID")
  USING INDEX "IKIS_ERSP"."XPK_NSI_DEBT_RECIPIENT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_EDR_NOTICE_TYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_NOTICE_TYPE" ADD CONSTRAINT "IDX_NSI_EDR_NOTICE_TYPE" PRIMARY KEY ("NT_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_NOTICE_TYPE"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_NOTICE_TYPE" MODIFY ("NT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_EDR_ORG_DIRECT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_DIRECT" ADD CONSTRAINT "IDX_NSI_EDR_ORG_DIRECT" PRIMARY KEY ("ND_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_ORG_DIRECT"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_DIRECT" MODIFY ("ND_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_DIRECT" MODIFY ("ND_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_EDR_ORG_TO_ENTYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" ADD CONSTRAINT "IDX_NSI_EDR_ORG_TO_ENTYPE" PRIMARY KEY ("ND_ID", "NT_ID", "OT_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_ORG_TO_ENTYPE"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" MODIFY ("ND_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" MODIFY ("NT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_EDR_ORG_TYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TYPE" ADD CONSTRAINT "IDX_NSI_EDR_ORG_TYPE" PRIMARY KEY ("OT_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_ORG_TYPE"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TYPE" MODIFY ("OT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_EDR_REASON_DENIAL
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_DENIAL" ADD CONSTRAINT "IDX_NSI_EDR_REASON_DENIAL" PRIMARY KEY ("DIC_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_REASON_DENIAL"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_DENIAL" MODIFY ("DIC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_DENIAL" MODIFY ("DIC_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_DENIAL" MODIFY ("DIC_NAME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_DENIAL" MODIFY ("DIC_OWNER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_EDR_REASON_MESSAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_MESSAGE" MODIFY ("RM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_MESSAGE" MODIFY ("RM_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_MESSAGE" MODIFY ("RM_NAME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_MESSAGE" MODIFY ("RM_SRTORDR" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_MESSAGE" ADD CONSTRAINT "XPK_NSI_EDR_REASON_MESSAGE" PRIMARY KEY ("RM_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_REASON_MESSAGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NSI_EDR_REASON_NOCHECK
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_NOCHECK" ADD CONSTRAINT "IDX_NSI_EDR_REASON_NOCHECK" PRIMARY KEY ("DIC_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_EDR_REASON_NOCHECK"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_NOCHECK" MODIFY ("DIC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_NOCHECK" MODIFY ("DIC_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_NOCHECK" MODIFY ("DIC_NAME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_REASON_NOCHECK" MODIFY ("DIC_OWNER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_EN_STATUS
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EN_STATUS" ADD CONSTRAINT "IPK_NSI_EN_STATUS" PRIMARY KEY ("DIC_CODE")
  USING INDEX "IKIS_ERSP"."IPK_NSI_EN_STATUS"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EN_STATUS" MODIFY ("DIC_CODE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."NSI_EN_STATUS" MODIFY ("DIC_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NSI_FUNDS_TP
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_FUNDS_TP" ADD CONSTRAINT "IDX_NSI_FUNDS" PRIMARY KEY ("NF_ID")
  USING INDEX "IKIS_ERSP"."IDX_NSI_FUNDS"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_FUNDS_TP" MODIFY ("NF_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OBJECTPARAMTYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."OBJECTPARAMTYPE" ADD CONSTRAINT "CHK_OBJECTPARAMTYPE_OPT_IS_SHO" CHECK (OPT_IS_SHOW in ('T','F')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."OBJECTPARAMTYPE" MODIFY ("OPT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."OBJECTPARAMTYPE" ADD CONSTRAINT "XPK_OBJECTPARAMTYPE" PRIMARY KEY ("OPT_ID")
  USING INDEX "IKIS_ERSP"."XPK_OBJECTPARAMTYPE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OL_INSURER_FOR_NOACCEPT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."OL_INSURER_FOR_NOACCEPT" MODIFY ("IM_ID_A" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."OL_INSURER_FOR_NOACCEPT" MODIFY ("IH_ORG_A" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."OL_INSURER_FOR_NOACCEPT" MODIFY ("IH_ORG_N" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."OL_INSURER_FOR_NOACCEPT" MODIFY ("IM_ID_N" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OPFU2WEB
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."OPFU2WEB" MODIFY ("ORGW_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."OPFU2WEB" ADD CONSTRAINT "XPK_OPFU2WEB" PRIMARY KEY ("ORGW_ID")
  USING INDEX "IKIS_ERSP"."XPK_OPFU2WEB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORIGINALSERVICEFILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."ORIGINALSERVICEFILE" MODIFY ("OSF_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."ORIGINALSERVICEFILE" ADD CONSTRAINT "XPK_ORIGINALSERVICEFILE" PRIMARY KEY ("OSF_ID")
  USING INDEX "IKIS_ERSP"."XPK_ORIGINALSERVICEFILE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_ADRESS
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" ADD CONSTRAINT "IPK_INSUR_ADRESS" PRIMARY KEY ("IA_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_ADRESS"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" MODIFY ("IA_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" MODIFY ("IA_IAH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" MODIFY ("IA_KOATUU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_ADR_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ADR_HST" ADD CONSTRAINT "IPK_INSUR_ADR_HST" PRIMARY KEY ("IAH_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_ADR_HST"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADR_HST" MODIFY ("IAH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADR_HST" MODIFY ("IAH_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_ANKT_A
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" ADD CONSTRAINT "IPK_INSUR_ANKT_A" PRIMARY KEY ("IAN_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_ANKT_A"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" MODIFY ("IAN_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" MODIFY ("IAN_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" MODIFY ("IAN_IC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" MODIFY ("IAN_PDT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" MODIFY ("IAN_RO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_ANKT_B
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "CHK_PINSUR_ANKT_B_IAB_IS_BOSS" CHECK (IAB_IS_BOSS in ('T','F')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "CHK_PINSUR_ANKT_B_IAB_IS_BUDGE" CHECK (IAB_IS_BUDGET in ('T','F')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "CHK_PINSUR_ANKT_B_IAB_IS_INVAL" CHECK (IAB_IS_INVAL_ORG in ('T','F')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "IPK_INSUR_ANKT_B" PRIMARY KEY ("IAB_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_ANKT_B"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_MN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_BS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_MIN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_FNT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_PF" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_RC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_ISBENEFITS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_INVAL_ISREG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" MODIFY ("IAB_RS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_ANKT_C
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_MDF" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_RU" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_IS_SHIPBUILD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_IS_DELF" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_IS_PAYER" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_RB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_MRS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" MODIFY ("IAC_VI" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "XPK_PINSUR_ANKT_C" PRIMARY KEY ("IAC_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_ANKT_C"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_BNKACCOUNT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" ADD CONSTRAINT "IPK_INSUR_BNKACCOUNT" PRIMARY KEY ("IX_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_BNKACCOUNT"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" MODIFY ("IX_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" MODIFY ("IX_IXH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" MODIFY ("IX_NB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" MODIFY ("IX_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" MODIFY ("IX_FOND_TP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_BNKACC_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACC_HST" ADD CONSTRAINT "IPK_INSUR_BNKACC_HST" PRIMARY KEY ("IXH_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_BNKACC_HST"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACC_HST" MODIFY ("IXH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACC_HST" MODIFY ("IXH_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_BNKPAYMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" ADD CONSTRAINT "IPK_INSUR_BNKPAYMENT" PRIMARY KEY ("IP_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_BNKPAYMENT"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" MODIFY ("IP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" MODIFY ("IP_IPH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" MODIFY ("IP_BF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_BNKPAY_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAY_HST" ADD CONSTRAINT "IPK_INSUR_BNKPAY_HST" PRIMARY KEY ("IPH_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_BNKPAY_HST"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAY_HST" MODIFY ("IPH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAY_HST" MODIFY ("IPH_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED" MODIFY ("ICC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED" ADD CONSTRAINT "XPK_PINSUR_CACHED" PRIMARY KEY ("ICC_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_CACHED"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_DATA" ADD CONSTRAINT "IDX_PINSUR_CACHED_DATA" PRIMARY KEY ("PCD_ID")
  USING INDEX "IKIS_ERSP"."IDX_PINSUR_CACHED_DATA"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_DATA" MODIFY ("PCD_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_DATA" MODIFY ("PCD_ICS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_DATA" MODIFY ("PCD_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_OSSV_CS1
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS1" MODIFY ("ICO_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS1" MODIFY ("ICO_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS1" ADD CONSTRAINT "XPK_PINSUR_CACHED_OSSV_CS1_ID" PRIMARY KEY ("ICO_ID")
  USING INDEX "IKIS_ERSP"."IDX_PINSUR_CACHED_OSSV_CS1_ID"  ENABLE NOVALIDATE;
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_OSSV_CS2
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2" ADD CONSTRAINT "IDX_PINSUR_CACHED_OSSV_CS2_ID" PRIMARY KEY ("ICO_ID")
  USING INDEX "IKIS_ERSP"."IDX_PINSUR_CACHED_OSSV_CS2_ID"  ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2" MODIFY ("ICO_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2" MODIFY ("ICO_ICS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2" MODIFY ("ICO_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_PROTOCOL
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" ADD CONSTRAINT "CHK_PINSUR_CACHED_PROTOCOL_TP" CHECK (ICP_TP IN ('I', 'U', 'D')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" MODIFY ("ICP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" MODIFY ("ICP_SEANCE_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" MODIFY ("ICP_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" MODIFY ("ICP_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_PROTOCOL" ADD CONSTRAINT "XPK_PINSUR_CACHED_PROTOCOL" PRIMARY KEY ("ICP_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_CACHED_PROTOCOL"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_SEANS
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" ADD CONSTRAINT "CHK_ICS_ISPOZ" CHECK (ICS_ISPOZ IN (0, 1)) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" ADD CONSTRAINT "CHK_ICS_SKIP" CHECK (ICS_SKIP IN (0, 1)) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" ADD CONSTRAINT "CHK_ICS_TYPE" CHECK (ICS_TYPE IN (0, 1)) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" ADD CONSTRAINT "IDX_ICSX_ID" PRIMARY KEY ("ICS_ID")
  USING INDEX "IKIS_ERSP"."IDX_ICSX_ID"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" MODIFY ("ICS_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" MODIFY ("ICS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" MODIFY ("ICS_ISPOZ" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS" MODIFY ("ICS_SKIP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_SEANS_CS1
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS1" ADD CONSTRAINT "IDX_ICS1_ID" PRIMARY KEY ("ICS_ID")
  USING INDEX "IKIS_ERSP"."IDX_ICS1_ID"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS1" MODIFY ("ICS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CACHED_SEANS_CS2
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS2" ADD CONSTRAINT "IDX_ICS_ID" PRIMARY KEY ("ICS_ID")
  USING INDEX "IKIS_ERSP"."IDX_ICS_ID"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS2" MODIFY ("ICS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CHNG_DOC
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "IPK_INSUR_CHNG_DOC" PRIMARY KEY ("IH_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_CHNG_DOC"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_ORG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_DS" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_ITH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IAN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IAB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IAH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IXH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IKH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_IPH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_ST_CNTRL" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" MODIFY ("IH_ST_CNTRL_E" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CONTACT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTACT" ADD CONSTRAINT "IPK_INSUR_CONTACT" PRIMARY KEY ("IK_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_CONTACT"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTACT" MODIFY ("IK_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTACT" MODIFY ("IK_IKH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_CONTRACT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTRACT" MODIFY ("ICN_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTRACT" MODIFY ("ICN_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTRACT" MODIFY ("ICN_IC" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTRACT" ADD CONSTRAINT "XPK_PINSUR_CONTRACT" PRIMARY KEY ("ICN_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_CONT_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CONT_HST" ADD CONSTRAINT "IPK_INSUR_CONT_HST" PRIMARY KEY ("IKH_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_CONT_HST"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONT_HST" MODIFY ("IKH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONT_HST" MODIFY ("IKH_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_DUAL
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_DUAL" MODIFY ("DUMMY" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_DUAL" ADD CONSTRAINT "XPK_PINSUR_DUAL" PRIMARY KEY ("DUMMY")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_DUAL"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_JOIN_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_OZSZ_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_OZSZ_IH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_SPOV_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_SPOV_IH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_SPOV_ID_OLD" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_SPOV_ID_NEW" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_OPER_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" MODIFY ("IJH_OPER_USR" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" ADD CONSTRAINT "XPK_PINSUR_JOIN_HST" PRIMARY KEY ("IJH_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_JOIN_HST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_KVED
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED" MODIFY ("IV_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED" ADD CONSTRAINT "XPK_PINSUR_KVED" PRIMARY KEY ("IV_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_KVED"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_KVED_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED_HST" MODIFY ("IVH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED_HST" ADD CONSTRAINT "XPK_PINSUR_KVED_HST" PRIMARY KEY ("IVH_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_KVED_HST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_MAIN
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_MAIN" ADD CONSTRAINT "IPK_INSUR_MAIN" PRIMARY KEY ("IM_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_MAIN"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_MAIN" MODIFY ("IM_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_MAIN" MODIFY ("IM_GUID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_MOVEMENT" ADD CONSTRAINT "IPK_PINSUR_MOVEMENT" PRIMARY KEY ("IMV_ID")
  USING INDEX "IKIS_ERSP"."IPK_PINSUR_MOVEMENT"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_MOVEMENT" MODIFY ("IMV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_OBJECTPARAM
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM" MODIFY ("IOP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM" ADD CONSTRAINT "XPK_PINSUR_OBJECTPARAM" PRIMARY KEY ("IOP_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_OBJECTPARAM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_OBJECTPARAM_RISK
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK" MODIFY ("OPR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK" ADD CONSTRAINT "XPK_PINSUR_OBJECTPARAM_RISK" PRIMARY KEY ("OPR_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_PERSON_CACHED
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_PERSON_CACHED" MODIFY ("IPC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_PERSON_CACHED" ADD CONSTRAINT "XPK_PINSUR_PERSON_CACHED" PRIMARY KEY ("IPC_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_PERSON_CACHED"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_REQUEST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "CHK_PINSUR_REQUEST_IRQ_ST" CHECK (irq_st in ('N','P','F','D','I','IF')) ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" MODIFY ("IRQ_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "XPK_PINSUR_REQUEST" PRIMARY KEY ("IRQ_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_REQUEST"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_RGST_ACCNT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_RGST_ACCNT" MODIFY ("IRA_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_RGST_ACCNT" MODIFY ("IRA_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_RGST_ACCNT" ADD CONSTRAINT "XPK_PINSUR_RGST_ACCNT" PRIMARY KEY ("IRA_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PINSUR_TAXTP
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP" ADD CONSTRAINT "IPK_INSUR_TAXTP" PRIMARY KEY ("IT_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_TAXTP"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP" MODIFY ("IT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP" MODIFY ("IT_ITH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP" MODIFY ("IT_STT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PINSUR_TAXTP_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP_HST" ADD CONSTRAINT "IPK_INSUR_TAXTP_HST" PRIMARY KEY ("ITH_ID")
  USING INDEX "IKIS_ERSP"."IPK_INSUR_TAXTP_HST"  ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP_HST" MODIFY ("ITH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP_HST" MODIFY ("ITH_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REQUEST2OBITS
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."REQUEST2OBITS" MODIFY ("RQO_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."REQUEST2OBITS" ADD CONSTRAINT "XPK_REQUEST2OBITS" PRIMARY KEY ("RQO_ID")
  USING INDEX "IKIS_ERSP"."XPK_REQUEST2OBITS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REQUEST4FUND
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."REQUEST4FUND" MODIFY ("RQF_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."REQUEST4FUND" ADD CONSTRAINT "XPK_REQUEST4FUND" PRIMARY KEY ("RQF_ID")
  USING INDEX "IKIS_ERSP"."XPK_REQUEST4FUND"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RISK_DEGREE_CVW
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."RISK_DEGREE_CVW" MODIFY ("RDC_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."RISK_DEGREE_CVW" ADD CONSTRAINT "XPK_RISK_DEGREE_CVW" PRIMARY KEY ("RDC_ID")
  USING INDEX "IKIS_ERSP"."XPK_RISK_DEGREE_CVW"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RPT_TEMPLATES
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."RPT_TEMPLATES" MODIFY ("RT_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."RPT_TEMPLATES" ADD CONSTRAINT "XPK_RPT_TEMPLATES" PRIMARY KEY ("RT_ID")
  USING INDEX "IKIS_ERSP"."XPK_RPT_TEMPLATES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICEFILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."SERVICEFILE" MODIFY ("SFL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."SERVICEFILE" ADD CONSTRAINT "XPK_SERVICEFILE" PRIMARY KEY ("SFL_ID")
  USING INDEX "IKIS_ERSP"."XPK_SERVICEFILE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICEMANAGE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."SERVICEMANAGE" MODIFY ("SMN_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."SERVICEMANAGE" ADD CONSTRAINT "XPK_SERVICEMANAGE" PRIMARY KEY ("SMN_ID")
  USING INDEX "IKIS_ERSP"."XPK_SERVICEMANAGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SPOV_PR_LOAD
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."SPOV_PR_LOAD" ADD CONSTRAINT "XPK_SPOV_PR_LOAD" PRIMARY KEY ("SPL_ID")
  USING INDEX "IKIS_ERSP"."XPK_SPOV_PR"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMINREF_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."ADMINREF_MOVEMENT" ADD CONSTRAINT "FK_ARM_IM" FOREIGN KEY ("ARM_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."ADMINREF_MOVEMENT" ADD CONSTRAINT "FK_ARM_IM_OLD" FOREIGN KEY ("ARM_IM_OLD")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEBT_DR2DP
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_DR2DP" ADD CONSTRAINT "FK_D2D_DP" FOREIGN KEY ("D2D_DP")
	  REFERENCES "IKIS_ERSP"."DEBT_PACKET" ("DP_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."DEBT_DR2DP" ADD CONSTRAINT "FK_D2D_DR" FOREIGN KEY ("D2D_DR")
	  REFERENCES "IKIS_ERSP"."DEBT_REQUEST" ("DR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEBT_FUND_REPLY
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_FUND_REPLY" ADD CONSTRAINT "FK_DFR_DR" FOREIGN KEY ("DFR_DR")
	  REFERENCES "IKIS_ERSP"."DEBT_REQUEST" ("DR_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."DEBT_FUND_REPLY" ADD CONSTRAINT "FK_DFR_DRR" FOREIGN KEY ("DFR_DRR")
	  REFERENCES "IKIS_ERSP"."NSI_DEBT_RECIPIENT" ("DRR_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."DEBT_FUND_REPLY" ADD CONSTRAINT "FK_DFR_ORG" FOREIGN KEY ("COM_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEBT_REQUEST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST" ADD CONSTRAINT "FK_DR_ORG" FOREIGN KEY ("COM_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEBT_REQUEST_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" ADD CONSTRAINT "FK_DRL_DFR" FOREIGN KEY ("DRL_DFR")
	  REFERENCES "IKIS_ERSP"."DEBT_FUND_REPLY" ("DFR_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" ADD CONSTRAINT "FK_DRL_DP" FOREIGN KEY ("DRL_DP")
	  REFERENCES "IKIS_ERSP"."DEBT_PACKET" ("DP_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" ADD CONSTRAINT "FK_DRL_DR" FOREIGN KEY ("DRL_DR")
	  REFERENCES "IKIS_ERSP"."DEBT_REQUEST" ("DR_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."DEBT_REQUEST_LOG" ADD CONSTRAINT "FK_DRL_WU" FOREIGN KEY ("DRL_WU")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIC_DD
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_DD" ADD CONSTRAINT "FK_DIDI_DIDI_DEFERRABLE" FOREIGN KEY ("DIDI_DIDI")
	  REFERENCES "IKIS_ERSP"."DIC_DD" ("DIDI_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIC_DV
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_DV" ADD CONSTRAINT "FK_DIC_DIDI_DEFERRABLE" FOREIGN KEY ("DIC_DIDI")
	  REFERENCES "IKIS_ERSP"."DIC_DD" ("DIDI_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIC_TBL
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."DIC_TBL" ADD CONSTRAINT "FK_TBL_DIDI_DEFERRABLE" FOREIGN KEY ("TBL_DIDI")
	  REFERENCES "IKIS_ERSP"."DIC_DD" ("DIDI_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXECUTIVE_ORDER_CVW
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" ADD CONSTRAINT "FK_EOC_IM" FOREIGN KEY ("EOC_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXECUTIVE_ORDER_CVW_HIST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXECUTIVE_ORDER_CVW_HIST" ADD CONSTRAINT "FK_EOCH_EOC" FOREIGN KEY ("EOCH_EOC")
	  REFERENCES "IKIS_ERSP"."EXECUTIVE_ORDER_CVW" ("EOC_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXEMPLARY_CASE_CVW
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW" ADD CONSTRAINT "FK_ECC_IM" FOREIGN KEY ("ECC_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXEMPLARY_CASE_CVW_HIST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."EXEMPLARY_CASE_CVW_HIST" ADD CONSTRAINT "FK_ECCH_ECC" FOREIGN KEY ("ECCH_ECC")
	  REFERENCES "IKIS_ERSP"."EXEMPLARY_CASE_CVW" ("ECC_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GLOBAL_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" ADD CONSTRAINT "FK_GM_IM" FOREIGN KEY ("GM_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" ADD CONSTRAINT "FK_GM_IM_OLD" FOREIGN KEY ("GM_IM_OLD")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" ADD CONSTRAINT "FK_GM_ORG" FOREIGN KEY ("GM_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT" ADD CONSTRAINT "FK_GM_ORG_OLD" FOREIGN KEY ("GM_ORG_OLD")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GLOBAL_MOVEMENT_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."GLOBAL_MOVEMENT_LOG" ADD CONSTRAINT "FK_GML_ORG" FOREIGN KEY ("GML_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOG_PINSUR_MAIN
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."LOG_PINSUR_MAIN" ADD CONSTRAINT "FK_LIM_IM" FOREIGN KEY ("LIM_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MON_FILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MON_FILE" ADD CONSTRAINT "FK_MF_LDF" FOREIGN KEY ("MF_LFD")
	  REFERENCES "IKIS_PERSON"."LOAD_FILE_DATA" ("LFD_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table MON_IM
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MON_IM" ADD CONSTRAINT "FK_MIM_CR_WU" FOREIGN KEY ("MIM_CR_WU")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."MON_IM" ADD CONSTRAINT "FK_MIM_DEL_WU" FOREIGN KEY ("MIM_DEL_WU")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."MON_IM" ADD CONSTRAINT "FK_MIM_IM" FOREIGN KEY ("MIM_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."MON_IM" ADD CONSTRAINT "FK_MIM_MI" FOREIGN KEY ("MIM_MI")
	  REFERENCES "IKIS_ERSP"."MON_INSTITUTION" ("MI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MON_INSTITUTION
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MON_INSTITUTION" ADD CONSTRAINT "FK_MI_MF" FOREIGN KEY ("MI_MF")
	  REFERENCES "IKIS_ERSP"."MON_FILE" ("MF_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MRD_PINSUR_MAIN
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MAIN" ADD CONSTRAINT "FK_MRDIM_IM" FOREIGN KEY ("MRDIM_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MAIN" ADD CONSTRAINT "FK_MRDIM_ORG_DEFERRABLE" FOREIGN KEY ("MRDIM_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MRD_PINSUR_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" ADD CONSTRAINT "FK_MPM_IM" FOREIGN KEY ("MPM_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" ADD CONSTRAINT "FK_MPM_MRD_NEW" FOREIGN KEY ("MPM_MRD_NEW")
	  REFERENCES "IKIS_SYS"."MRDORG" ("MRD_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."MRD_PINSUR_MOVEMENT" ADD CONSTRAINT "FK_MPM_MRD_OLD" FOREIGN KEY ("MPM_MRD_OLD")
	  REFERENCES "IKIS_SYS"."MRDORG" ("MRD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NSI_EDR_ORG_TO_ENTYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" ADD CONSTRAINT "FK_NSI_EDR_ORG_TO_ENTYPE_ND_ID" FOREIGN KEY ("ND_ID")
	  REFERENCES "IKIS_ERSP"."NSI_EDR_ORG_DIRECT" ("ND_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" ADD CONSTRAINT "FK_NSI_EDR_ORG_TO_ENTYPE_NT_ID" FOREIGN KEY ("NT_ID")
	  REFERENCES "IKIS_ERSP"."NSI_EDR_NOTICE_TYPE" ("NT_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."NSI_EDR_ORG_TO_ENTYPE" ADD CONSTRAINT "FK_NSI_EDR_ORG_TO_ENTYPE_OT_ID" FOREIGN KEY ("OT_ID")
	  REFERENCES "IKIS_ERSP"."NSI_EDR_ORG_TYPE" ("OT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OBJECTPARAMTYPE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."OBJECTPARAMTYPE" ADD CONSTRAINT "FK_OPT_FND" FOREIGN KEY ("OPT_FND")
	  REFERENCES "IKIS_NDI"."NSI_FUND" ("FND_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPFU2WEB
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."OPFU2WEB" ADD CONSTRAINT "FK_ORGW_ORG" FOREIGN KEY ("ORGW_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORIGINALSERVICEFILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."ORIGINALSERVICEFILE" ADD CONSTRAINT "FK_OSF_SFL" FOREIGN KEY ("OSF_SFL")
	  REFERENCES "IKIS_ERSP"."SERVICEFILE" ("SFL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_ADRESS
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" ADD CONSTRAINT "FK_IA_IAH" FOREIGN KEY ("IA_IAH")
	  REFERENCES "IKIS_ERSP"."PINSUR_ADR_HST" ("IAH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" ADD CONSTRAINT "FK_IA_KOATUU" FOREIGN KEY ("IA_KOATUU")
	  REFERENCES "IKIS_NDI"."NSI_KOATUU" ("KT_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" ADD CONSTRAINT "FK_IA_ORG" FOREIGN KEY ("IA_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ADRESS" ADD CONSTRAINT "FK_IA_RU" FOREIGN KEY ("IA_RU")
	  REFERENCES "IKIS_NDI"."NSI_REGION_UKR" ("RU_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_ADR_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ADR_HST" ADD CONSTRAINT "FK_IAH_IM" FOREIGN KEY ("IAH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_ANKT_A
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" ADD CONSTRAINT "FK_IAN_IC" FOREIGN KEY ("IAN_IC")
	  REFERENCES "IKIS_NDI"."NSI_INSURERCAT" ("IC_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" ADD CONSTRAINT "FK_IAN_IM" FOREIGN KEY ("IAN_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" ADD CONSTRAINT "FK_IAN_MAIN_KOATUU" FOREIGN KEY ("IAN_MAIN_KOATUU")
	  REFERENCES "IKIS_NDI"."NSI_KOATUU" ("KT_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" ADD CONSTRAINT "FK_IAN_PDT" FOREIGN KEY ("IAN_PDT")
	  REFERENCES "IKIS_NDI"."NSI_PRSN_DOCTP" ("PDT_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_A" ADD CONSTRAINT "FK_IAN_RO" FOREIGN KEY ("IAN_RO")
	  REFERENCES "IKIS_NDI"."NSI_REG_ORG" ("RO_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_ANKT_B
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_BS" FOREIGN KEY ("IAB_BS")
	  REFERENCES "IKIS_NDI"."NSI_BUSINESS_ST" ("BS_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_FNT" FOREIGN KEY ("IAB_FNT")
	  REFERENCES "IKIS_NDI"."NSI_FIN_TP" ("FNT_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_IM" FOREIGN KEY ("IAB_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_KPF" FOREIGN KEY ("IAB_KPF")
	  REFERENCES "IKIS_NDI"."NSI_KOPFG" ("KPF_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_MIN" FOREIGN KEY ("IAB_MIN")
	  REFERENCES "IKIS_NDI"."NSI_MINISTRY" ("MIN_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_MN" FOREIGN KEY ("IAB_MN")
	  REFERENCES "IKIS_NDI"."NSI_MNG_FORM" ("MN_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_PF" FOREIGN KEY ("IAB_PF")
	  REFERENCES "IKIS_NDI"."NSI_PROP_FORM" ("PF_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_RC" FOREIGN KEY ("IAB_RC")
	  REFERENCES "IKIS_NDI"."NSI_RISK_CODE" ("RC_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_RS" FOREIGN KEY ("IAB_RS")
	  REFERENCES "IKIS_NDI"."NSI_REASON_STOP" ("RS_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_IAB_TX" FOREIGN KEY ("IAB_TX")
	  REFERENCES "IKIS_NDI"."NSI_TAXATION" ("TX_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_B" ADD CONSTRAINT "FK_PIAB_OPF_CODE" FOREIGN KEY ("IAB_OPF_CODE")
	  REFERENCES "IKIS_NDI"."NSI_OPF_CODE" ("OPF_KD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_ANKT_C
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_IM" FOREIGN KEY ("IAC_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_MDF_DEFERRABLE" FOREIGN KEY ("IAC_MDF")
	  REFERENCES "IKIS_NDI"."NSI_DICT_MODIF" ("ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_MRD_DEFERRABLE" FOREIGN KEY ("IAC_MRD")
	  REFERENCES "IKIS_SYS"."MRDORG" ("MRD_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_MRS" FOREIGN KEY ("IAC_MRS")
	  REFERENCES "IKIS_NDI"."NSI_MRD_REASON_STOP" ("MRS_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_RB_DEFERRABLE" FOREIGN KEY ("IAC_RB")
	  REFERENCES "IKIS_NDI"."NSI_REASON_BREAK" ("RB_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_RU" FOREIGN KEY ("IAC_RU")
	  REFERENCES "IKIS_NDI"."NSI_REGION_UKR" ("RU_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_ANKT_C" ADD CONSTRAINT "FK_IAC_VI" FOREIGN KEY ("IAC_VI")
	  REFERENCES "IKIS_NDI"."NSI_VOL_INSURER" ("VI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_BNKACCOUNT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" ADD CONSTRAINT "FK_IX_IXH" FOREIGN KEY ("IX_IXH")
	  REFERENCES "IKIS_ERSP"."PINSUR_BNKACC_HST" ("IXH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACCOUNT" ADD CONSTRAINT "FK_IX_NB" FOREIGN KEY ("IX_NB")
	  REFERENCES "IKIS_NDI"."NSI_BANK" ("NB_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_BNKACC_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKACC_HST" ADD CONSTRAINT "FK_IXH_IM" FOREIGN KEY ("IXH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_BNKPAYMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" ADD CONSTRAINT "FK_IP_BF" FOREIGN KEY ("IP_BF")
	  REFERENCES "IKIS_NDI"."NSI_BANK_FEE" ("BF_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAYMENT" ADD CONSTRAINT "FK_IP_IPH" FOREIGN KEY ("IP_IPH")
	  REFERENCES "IKIS_ERSP"."PINSUR_BNKPAY_HST" ("IPH_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_BNKPAY_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_BNKPAY_HST" ADD CONSTRAINT "FK_IPH_IM" FOREIGN KEY ("IPH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CACHED_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_DATA" ADD CONSTRAINT "FK_PCD_ICS" FOREIGN KEY ("PCD_ICS")
	  REFERENCES "IKIS_ERSP"."PINSUR_CACHED_SEANS" ("ICS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CACHED_OSSV_CS1
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS1" ADD CONSTRAINT "R_1424" FOREIGN KEY ("ICO_ICS")
	  REFERENCES "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS1" ("ICS_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CACHED_OSSV_CS2
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CACHED_OSSV_CS2" ADD CONSTRAINT "FK_ICO_ICS" FOREIGN KEY ("ICO_ICS")
	  REFERENCES "IKIS_ERSP"."PINSUR_CACHED_SEANS_CS2" ("ICS_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CHNG_DOC
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_IH_DS" FOREIGN KEY ("IH_DS")
	  REFERENCES "IKIS_NDI"."NSI_DATA_SOURCE" ("DS_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_IH_IAC_DEFERRABLE" FOREIGN KEY ("IH_IAC")
	  REFERENCES "IKIS_ERSP"."PINSUR_ANKT_C" ("IAC_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_IH_ORG" FOREIGN KEY ("IH_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PFILE" FOREIGN KEY ("IH_FILE")
	  REFERENCES "IKIS_ERS"."INSUR_FILE" ("FILE_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PFILE_OZSZ" FOREIGN KEY ("IH_FILE_OZSZ")
	  REFERENCES "IKIS_ERS"."INSUR_FILE" ("FILE_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IAB" FOREIGN KEY ("IH_IAB")
	  REFERENCES "IKIS_ERSP"."PINSUR_ANKT_B" ("IAB_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IAH" FOREIGN KEY ("IH_IAH")
	  REFERENCES "IKIS_ERSP"."PINSUR_ADR_HST" ("IAH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IAN" FOREIGN KEY ("IH_IAN")
	  REFERENCES "IKIS_ERSP"."PINSUR_ANKT_A" ("IAN_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IKH" FOREIGN KEY ("IH_IKH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CONT_HST" ("IKH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IM" FOREIGN KEY ("IH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IPH" FOREIGN KEY ("IH_IPH")
	  REFERENCES "IKIS_ERSP"."PINSUR_BNKPAY_HST" ("IPH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_ITH" FOREIGN KEY ("IH_ITH")
	  REFERENCES "IKIS_ERSP"."PINSUR_TAXTP_HST" ("ITH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IVH" FOREIGN KEY ("IH_IVH")
	  REFERENCES "IKIS_ERSP"."PINSUR_KVED_HST" ("IVH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_IXH" FOREIGN KEY ("IH_IXH")
	  REFERENCES "IKIS_ERSP"."PINSUR_BNKACC_HST" ("IXH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_ST_CNTRL" FOREIGN KEY ("IH_ST_CNTRL")
	  REFERENCES "IKIS_ERSP"."PINSUR_DUAL" ("DUMMY") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_ST_CNTRL_E" FOREIGN KEY ("IH_ST_CNTRL_E")
	  REFERENCES "IKIS_ERSP"."PINSUR_DUAL" ("DUMMY") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CHNG_DOC" ADD CONSTRAINT "FK_PIH_USR_ACT" FOREIGN KEY ("IH_USR_ACT")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CONTACT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTACT" ADD CONSTRAINT "FK_IK_IKH" FOREIGN KEY ("IK_IKH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CONT_HST" ("IKH_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CONTRACT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTRACT" ADD CONSTRAINT "FK_ICN_IC" FOREIGN KEY ("ICN_IC")
	  REFERENCES "IKIS_NDI"."NSI_INSURERCAT" ("IC_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_CONTRACT" ADD CONSTRAINT "FK_ICN_IM" FOREIGN KEY ("ICN_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_CONT_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_CONT_HST" ADD CONSTRAINT "FK_IKH_IM" FOREIGN KEY ("IKH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_JOIN_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" ADD CONSTRAINT "FK_PIJH_OZSZ_IH" FOREIGN KEY ("IJH_OZSZ_IH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CHNG_DOC" ("IH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" ADD CONSTRAINT "FK_PIJH_OZSZ_IM" FOREIGN KEY ("IJH_OZSZ_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" ADD CONSTRAINT "FK_PIJH_SPOV_IH" FOREIGN KEY ("IJH_SPOV_IH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CHNG_DOC" ("IH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_JOIN_HST" ADD CONSTRAINT "FK_PIJH_SPOV_IM" FOREIGN KEY ("IJH_SPOV_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_KVED
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED" ADD CONSTRAINT "FK_IV_IVH" FOREIGN KEY ("IV_IVH")
	  REFERENCES "IKIS_ERSP"."PINSUR_KVED_HST" ("IVH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED" ADD CONSTRAINT "FK_IV_KVD" FOREIGN KEY ("IV_KVD")
	  REFERENCES "IKIS_NDI"."NSI_KVED" ("KVD_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_KVED_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED_HST" ADD CONSTRAINT "FK_IV_IM" FOREIGN KEY ("IVH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_MAIN
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_MAIN" ADD CONSTRAINT "FK_IM_IH_PRIOR" FOREIGN KEY ("IM_IH_PRIOR")
	  REFERENCES "IKIS_ERSP"."PINSUR_CHNG_DOC" ("IH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_MAIN" ADD CONSTRAINT "FK_PIM_IH" FOREIGN KEY ("IM_IH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CHNG_DOC" ("IH_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_MOVEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_MOVEMENT" ADD CONSTRAINT "FK_PIMV_ORG1" FOREIGN KEY ("IMV_ORG1")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_MOVEMENT" ADD CONSTRAINT "FK_PIMV_ORG2" FOREIGN KEY ("IMV_ORG2")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_OBJECTPARAM
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM" ADD CONSTRAINT "FK_IOP_IM" FOREIGN KEY ("IOP_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM" ADD CONSTRAINT "FK_IOP_OPT" FOREIGN KEY ("IOP_OPT")
	  REFERENCES "IKIS_ERSP"."OBJECTPARAMTYPE" ("OPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_OBJECTPARAM_RISK
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_OBJECTPARAM_RISK" ADD CONSTRAINT "FK_OPR_IOP" FOREIGN KEY ("OPR_IOP")
	  REFERENCES "IKIS_ERSP"."PINSUR_OBJECTPARAM" ("IOP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_PERSON_CACHED
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_PERSON_CACHED" ADD CONSTRAINT "FK_IPC_CDP" FOREIGN KEY ("IPC_CDP")
	  REFERENCES "IKIS_WEBSM"."CDE_PCASH" ("CDP_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_PERSON_CACHED" ADD CONSTRAINT "FK_IPC_IM" FOREIGN KEY ("IPC_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_PERSON_CACHED" ADD CONSTRAINT "FK_IPC_IP" FOREIGN KEY ("IPC_IP")
	  REFERENCES "IKIS_PERSON"."INSURED_PERSON" ("IP_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_REQUEST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "FK_IRQ_CREATE_ORG" FOREIGN KEY ("IRQ_CREATE_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "FK_IRQ_IH" FOREIGN KEY ("IRQ_IH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CHNG_DOC" ("IH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "FK_IRQ_IMV" FOREIGN KEY ("IRQ_IMV")
	  REFERENCES "IKIS_ERSP"."PINSUR_MOVEMENT" ("IMV_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "FK_IRQ_ORG1" FOREIGN KEY ("IRQ_ORG1")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "R_1300" FOREIGN KEY ("IRQ_ORG2")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_REQUEST" ADD CONSTRAINT "R_1301" FOREIGN KEY ("IRQ_EDIT_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_RGST_ACCNT
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_RGST_ACCNT" ADD CONSTRAINT "FK_IRA_IM" FOREIGN KEY ("IRA_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_RGST_ACCNT" ADD CONSTRAINT "FK_IRA_ORG" FOREIGN KEY ("IRA_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_TAXTP
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP" ADD CONSTRAINT "FK_IT_ITX" FOREIGN KEY ("IT_ITH")
	  REFERENCES "IKIS_ERSP"."PINSUR_TAXTP_HST" ("ITH_ID") DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP" ADD CONSTRAINT "FK_IT_STT" FOREIGN KEY ("IT_STT")
	  REFERENCES "IKIS_NDI"."NSI_ZO_TARIFF" ("ZOT_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_TAXTP_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_TAXTP_HST" ADD CONSTRAINT "FK_IM_ITH" FOREIGN KEY ("ITH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REQUEST4FUND
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."REQUEST4FUND" ADD CONSTRAINT "FK_RQF_IH" FOREIGN KEY ("RQF_IH")
	  REFERENCES "IKIS_ERSP"."PINSUR_CHNG_DOC" ("IH_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."REQUEST4FUND" ADD CONSTRAINT "FK_RQF_IM" FOREIGN KEY ("RQF_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."REQUEST4FUND" ADD CONSTRAINT "FK_RQF_OPT" FOREIGN KEY ("RQF_OPT")
	  REFERENCES "IKIS_ERSP"."OBJECTPARAMTYPE" ("OPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RISK_DEGREE_CVW
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."RISK_DEGREE_CVW" ADD CONSTRAINT "FK_RDC_IM" FOREIGN KEY ("RDC_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."RISK_DEGREE_CVW" ADD CONSTRAINT "FK_RDC_RISK_LEVEL_DIRLC" FOREIGN KEY ("RDC_RISK_LEVEL_DIRLC")
	  REFERENCES "IKIS_NDI"."NSI_INSURER_RISK_LEVEL_CVWI" ("DIRLC_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICEFILE
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."SERVICEFILE" ADD CONSTRAINT "FK_SFL_ORG" FOREIGN KEY ("SFL_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
  ALTER TABLE "IKIS_ERSP"."SERVICEFILE" ADD CONSTRAINT "FK_SFL_SMN" FOREIGN KEY ("SFL_SMN")
	  REFERENCES "IKIS_ERSP"."SERVICEMANAGE" ("SMN_ID") ENABLE;
