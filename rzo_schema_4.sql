--------------------------------------------------------
--  File created - середа-серпня-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SM_ANNOUNCEMENT
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" 
   (	"ANN_ID" NUMBER, 
	"ANN_PRIORITY_TYPE" VARCHAR2(10), 
	"ANN_CREATE_TIME" DATE, 
	"ANN_LAST_EDIT_TIME" DATE, 
	"ANN_SUBJECT" VARCHAR2(200), 
	"ANN_BODY" VARCHAR2(4000), 
	"ANN_WU" NUMBER
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_ID" IS 'Ід повідомлення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_PRIORITY_TYPE" IS 'Пріорітет';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_CREATE_TIME" IS 'Дата створення повідомлення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_LAST_EDIT_TIME" IS 'Дата останньої модифікації повідомлення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_SUBJECT" IS 'Тема';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_BODY" IS 'Текст повідомлення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_ANNOUNCEMENT"."ANN_WU" IS 'Ід користувача, який провів останню модифікацію';
   COMMENT ON TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT"  IS 'Інформаційні повідомлення';
--------------------------------------------------------
--  DDL for Table SM_APE4_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_1" 
   (	"APE1_SLB" NUMBER(14,0), 
	"APE1_ST" VARCHAR2(1), 
	"APE1_ECO_ACT" VARCHAR2(30), 
	"APE1_PROF_RISK" NUMBER(2,0), 
	"APE1_BUDG_ORG" VARCHAR2(1), 
	"APE1_INV_ORG" VARCHAR2(1), 
	"APE1_INV_ORG2" VARCHAR2(1), 
	"APE1_MINISTRY" VARCHAR2(250), 
	"APE1_ADDRESS" VARCHAR2(250), 
	"APE1_PHONE" VARCHAR2(100), 
	"APE1_FRM_PROP" VARCHAR2(250), 
	"APE1_REGNUM" VARCHAR2(25), 
	"APE1_BANKNAME" VARCHAR2(250), 
	"APE1_MFO" VARCHAR2(20), 
	"APE1_ACCNUM" VARCHAR2(255), 
	"APE1_WRKR_CNT" NUMBER(14,0), 
	"APE1_INVAL_CNT" NUMBER(14,0), 
	"APE1_TR_CNT" NUMBER(14,0), 
	"APE1_ZO_CNT" NUMBER(14,0), 
	"APE1_TAX_TP" NUMBER(2,0), 
	"APE1_SUM1_1" NUMBER(12,2), 
	"APE1_SUM1_1_1" NUMBER(12,2), 
	"APE1_SUM1_1_2" NUMBER(12,2), 
	"APE1_SUM1_1_3" NUMBER(12,2), 
	"APE1_SUM1_1_4" NUMBER(12,2), 
	"APE1_SUM1_1_4_1" NUMBER(12,2), 
	"APE1_SUM1_2" NUMBER(12,2), 
	"APE1_SUM1_2_1" NUMBER(12,2), 
	"APE1_SUM1_2_1_1" NUMBER(12,2), 
	"APE1_SUM1_2_1_2" NUMBER(12,2), 
	"APE1_SUM1_2_1_3" NUMBER(12,2), 
	"APE1_SUM1_2_1_4" NUMBER(12,2), 
	"APE1_SUM1_2_1_5" NUMBER(12,2), 
	"APE1_SUM1_2_1_6" NUMBER(12,2), 
	"APE1_SUM1_2_2" NUMBER(12,2), 
	"APE1_SUM1_2_3" NUMBER(12,2), 
	"APE1_SUM1_3" NUMBER(12,2), 
	"APE1_SUM1_3_1" NUMBER(12,2), 
	"APE1_SUM1_3_1_1" NUMBER(12,2), 
	"APE1_SUM1_3_1_2" NUMBER(12,2), 
	"APE1_SUM1_3_1_3" NUMBER(12,2), 
	"APE1_SUM1_3_1_4" NUMBER(12,2), 
	"APE1_SUM1_3_1_5" NUMBER(12,2), 
	"APE1_SUM1_3_1_6" NUMBER(12,2), 
	"APE1_SUM1_3_2" NUMBER(12,2), 
	"APE1_SUM1_3_3" NUMBER(12,2), 
	"APE1_SUM1_4" NUMBER(12,2), 
	"APE1_SUM1_4_1" NUMBER(12,2), 
	"APE1_SUM1_4_1_1" NUMBER(12,2), 
	"APE1_SUM1_4_1_2" NUMBER(12,2), 
	"APE1_SUM1_4_1_3" NUMBER(12,2), 
	"APE1_SUM1_4_2" NUMBER(12,2), 
	"APE1_SUM1_4_3" NUMBER(12,2), 
	"APE1_SUM1_5" NUMBER(12,2), 
	"APE1_SUM1_5_1" NUMBER(12,2), 
	"APE1_SUM1_5_2" NUMBER(12,2), 
	"APE1_SUM1_5_3" NUMBER(12,2), 
	"APE1_SUM1_5_4" NUMBER(12,2), 
	"APE1_SUM1_5_5" NUMBER(12,2), 
	"APE1_SUM1_6" NUMBER(12,2), 
	"APE1_SUM1_6_1" NUMBER(12,2), 
	"APE1_SUM1_6_1_1" NUMBER(12,2), 
	"APE1_SUM1_6_1_2" NUMBER(12,2), 
	"APE1_SUM1_6_1_3" NUMBER(12,2), 
	"APE1_SUM1_6_1_4" NUMBER(12,2), 
	"APE1_SUM1_6_1_5" NUMBER(12,2), 
	"APE1_SUM1_6_1_6" NUMBER(12,2), 
	"APE1_SUM1_6_1_7" NUMBER(12,2), 
	"APE1_SUM1_6_1_8" NUMBER(12,2), 
	"APE1_SUM1_6_2" NUMBER(12,2), 
	"APE1_SUM1_6_3" NUMBER(12,2), 
	"APE1_SUM1_6_3_1" NUMBER(12,2), 
	"APE1_SUM1_6_3_2" NUMBER(12,2), 
	"APE1_SUM1_6_3_3" NUMBER(12,2), 
	"APE1_SUM1_6_3_4" NUMBER(12,2), 
	"APE1_SUM1_6_3_5" NUMBER(12,2), 
	"APE1_SUM1_6_4" NUMBER(12,2), 
	"APE1_ERR_TEXT" VARCHAR2(255), 
	"APE1_SUM1_7" NUMBER(12,2), 
	"APE1_SUM1_7_1" NUMBER(12,2), 
	"APE1_SUM1_7_1_1" NUMBER(12,2), 
	"APE1_SUM1_7_1_2" NUMBER(12,2), 
	"APE1_SUM1_7_1_3" NUMBER(12,2), 
	"APE1_SUM1_7_1_4" NUMBER(12,2), 
	"APE1_SUM1_7_1_5" NUMBER(12,2), 
	"APE1_SUM1_7_1_6" NUMBER(12,2), 
	"APE1_SUM1_7_1_7" NUMBER(12,2), 
	"APE1_SUM1_7_1_8" NUMBER(12,2), 
	"APE1_SUM1_7_2" NUMBER(12,2), 
	"APE1_SUM1_7_3" NUMBER(12,2), 
	"APE1_SUM1_7_3_1" NUMBER(12,2), 
	"APE1_SUM1_7_3_2" NUMBER(12,2), 
	"APE1_SUM1_7_3_3" NUMBER(12,2), 
	"APE1_SUM1_7_3_4" NUMBER(12,2), 
	"APE1_SUM1_7_3_5" NUMBER(12,2), 
	"APE1_SUM1_7_4" NUMBER(12,2), 
	"APE1_ERR_TEXT2" VARCHAR2(255), 
	"APE1_SUM1_8" NUMBER(12,2), 
	"APE1_SUM1_8_1" NUMBER(12,2), 
	"APE1_SUM1_8_2" NUMBER(12,2), 
	"APE1_SUM1_8_3" NUMBER(12,2), 
	"APE1_SUM1_8_4" NUMBER(12,2), 
	"APE1_SUM1_8_5" NUMBER(12,2), 
	"APE1_SUM1_8_6" NUMBER(12,2), 
	"APE1_SUM1_8_7" NUMBER(12,2), 
	"APE1_SUM1_8_8" NUMBER(12,2), 
	"APE1_SUM1_8_9" NUMBER(12,2), 
	"APE1_SUM1_8_10" NUMBER(12,2), 
	"APE1_SUM1_8_11" NUMBER(12,2), 
	"APE1_SUM1_8_12" NUMBER(12,2), 
	"APE1_SUM1_8_13" NUMBER(12,2), 
	"APE1_SUM1_8_14" NUMBER(12,2), 
	"APE1_SUMA1_1" NUMBER(12,2), 
	"APE1_SUMA1_2" NUMBER(12,2), 
	"APE1_SUMA1_3" NUMBER(12,2), 
	"APE1_SUMA1_4" NUMBER(12,2), 
	"APE1_SUMA1_5" NUMBER(12,2), 
	"APE1_SUMA1_6" NUMBER(12,2), 
	"APE1_SUMA1_7" NUMBER(12,2), 
	"APE1_SUMA1_8" NUMBER(12,2), 
	"APE1_SUMA1_9" NUMBER(12,2), 
	"APE1_SUMA1_10" NUMBER(12,2), 
	"APE1_SUMA1_11" NUMBER(12,2), 
	"APE1_SUMA1_12" NUMBER(12,2), 
	"APE1_SUMA1_13" NUMBER(12,2), 
	"APE1_SUMA1_14" NUMBER(12,2), 
	"APE1_SUMA1_15" NUMBER(12,2), 
	"APE1_SUMA1_16" NUMBER(12,2), 
	"APE1_SUMA1_17" NUMBER(12,2), 
	"APE1_SUMA1_18" NUMBER(12,2), 
	"APE1_SUMA1_19" NUMBER(12,2), 
	"APE1_SUMA1_20" NUMBER(12,2), 
	"APE1_SUMA1_21" NUMBER(12,2), 
	"APE1_SUMA1_22" NUMBER(12,2), 
	"APE1_SUMA1_23" NUMBER(12,2), 
	"APE1_SUMA1_24" NUMBER(12,2), 
	"APE1_SUMA1_25" NUMBER(12,2), 
	"APE1_SUMA1_26" NUMBER(12,2), 
	"APE1_CH_ZO" VARCHAR2(1), 
	"APE1_ERR_TEXT3" VARCHAR2(255), 
	"APE1_DTA_1" NUMBER(2,0), 
	"APE1_DTA_2" NUMBER(2,0), 
	"APE1_ZO_CNT_M" NUMBER(5,0), 
	"APE1_ZO_CNT_F" NUMBER(5,0), 
	"APE1_SUM1_2_2_1" NUMBER(12,2), 
	"APE1_SUM1_2_2_2" NUMBER(12,2), 
	"APE1_SUM1_2_3_1" NUMBER(12,2), 
	"APE1_SUM1_2_3_2" NUMBER(12,2), 
	"APE1_SUM1_2_3_3" NUMBER(12,2), 
	"APE1_SUM1_2_3_4" NUMBER(12,2), 
	"APE1_SUM1_3_3_1" NUMBER(12,2), 
	"APE1_SUM1_3_3_2" NUMBER(12,2), 
	"APE1_SUM1_3_3_3" NUMBER(12,2), 
	"APE1_SUM1_3_3_4" NUMBER(12,2), 
	"APE1_SUM1_3_2_1" NUMBER(12,2), 
	"APE1_SUM1_3_2_2" NUMBER(12,2), 
	"APE1_SHIPBUILDING" VARCHAR2(1) DEFAULT 'N', 
	"APE1_ADDGARANT_CNT" NUMBER(14,0), 
	"APE1_SUM1_2_1_7" NUMBER(12,2), 
	"APE1_SUM1_2_2_3" NUMBER(12,2), 
	"APE1_SUM1_3_1_7" NUMBER(12,2), 
	"APE1_SUM1_3_2_3" NUMBER(12,2), 
	"APE1_JOBCREATED" NUMBER(14,0), 
	"APE1_STAFF_CNT" NUMBER(14,0), 
	"APE1_SUM1_1_5" NUMBER(12,2), 
	"APE1_SUM1_2_4" NUMBER(12,2), 
	"APE1_SUM1_2_4_1" NUMBER(12,2), 
	"APE1_SUM1_2_4_2" NUMBER(12,2), 
	"APE1_SUM1_2_4_3" NUMBER(12,2), 
	"APE1_SUM1_2_4_4" NUMBER(12,2), 
	"APE1_SUM1_3_4" NUMBER(12,2), 
	"APE1_SUM1_3_4_1" NUMBER(12,2), 
	"APE1_SUM1_3_4_2" NUMBER(12,2), 
	"APE1_SUM1_3_4_3" NUMBER(12,2), 
	"APE1_SUM1_3_4_4" NUMBER(12,2), 
	"APE1_SUM1_4_4" NUMBER(12,2), 
	"APE1_SUM1_5_6" NUMBER(12,2), 
	"APE1_ZAST_KOEF" VARCHAR2(1), 
	"APE1_ROZM_KOEF" NUMBER(12,3), 
	"APE1_SER_ZP" NUMBER(12,2), 
	"APE1_SER_ZO" NUMBER(14,0), 
	"APE1_SUM1_2_5" NUMBER(12,2), 
	"APE1_SUM1_2_5_1" NUMBER(12,2), 
	"APE1_SUM1_2_5_2" NUMBER(12,2), 
	"APE1_SUM1_2_5_3" NUMBER(12,2), 
	"APE1_SUM1_2_5_4" NUMBER(12,2), 
	"APE1_SUM1_2_5_5" NUMBER(12,2), 
	"APE1_SUM1_3_5" NUMBER(12,2), 
	"APE1_SUM1_3_5_1" NUMBER(12,2), 
	"APE1_SUM1_3_5_2" NUMBER(12,2), 
	"APE1_SUM1_3_5_3" NUMBER(12,2), 
	"APE1_SUM1_3_5_4" NUMBER(12,2), 
	"APE1_SUM1_3_5_5" NUMBER(12,2), 
	"APE1_SUM1_6_1_9" NUMBER(12,2), 
	"APE1_SUM1_6_1_10" NUMBER(12,2), 
	"APE1_SUM1_6_1_11" NUMBER(12,2), 
	"APE1_SUM1_6_1_12" NUMBER(12,2), 
	"APE1_SUM1_6_1_13" NUMBER(12,2), 
	"APE1_SUM1_7_1_9" NUMBER(12,2), 
	"APE1_SUM1_7_1_10" NUMBER(12,2), 
	"APE1_SUM1_7_1_11" NUMBER(12,2), 
	"APE1_SUM1_7_1_12" NUMBER(12,2), 
	"APE1_SUM1_7_1_13" NUMBER(12,2), 
	"APE1_LDF" NUMBER(14,0), 
	"APE1_SUM1_3_2_1_V2" NUMBER(12,2), 
	"APE1_SUM1_3_3_1_V2" NUMBER(12,2), 
	"APE1_SUM1_3_4_1_V2" NUMBER(12,2), 
	"APE1_DIMPL_FAMILY_CNT" NUMBER(14,0), 
	"APE1_SUM1_DIPL_FAMILY_22" NUMBER(12,2), 
	"APE1_IS_EMPLOYER" VARCHAR2(1), 
	"APE1_SUM_FINE" NUMBER(16,2), 
	"APE1_V8_SUM1_1_6" NUMBER(16,2), 
	"APE1_V8_SUM1_1_6_1" NUMBER(16,2), 
	"APE1_V8_SUM1_1_6_2" NUMBER(16,2), 
	"APE1_V8_SUM1_1_6_3" NUMBER(16,2), 
	"APE1_V8_SUM1_2_6" NUMBER(16,2), 
	"APE1_V8_SUM1_2_6_1" NUMBER(16,2), 
	"APE1_V8_SUM1_2_6_2" NUMBER(16,2), 
	"APE1_V8_SUM1_2_6_3" NUMBER(16,2), 
	"APE1_V8_SUM1_3_7" NUMBER(16,2), 
	"APE1_V8_SUM1_3_7_1" NUMBER(16,2), 
	"APE1_V8_SUM1_3_7_2" NUMBER(16,2), 
	"APE1_V8_SUM1_3_7_3" NUMBER(16,2), 
	"APE1_V8_SUM1_4_4" NUMBER(16,2), 
	"APE1_V8_SUM1_4_4_1" NUMBER(16,2), 
	"APE1_V8_SUM1_4_4_2" NUMBER(16,2), 
	"APE1_V8_SUM1_4_4_3" NUMBER(16,2), 
	"APE1_V8_SUM1_6_4" NUMBER(16,2), 
	"APE1_V8_SUM1_6_4_1" NUMBER(16,2), 
	"APE1_V8_SUM1_6_4_2" NUMBER(16,2), 
	"APE1_V8_SUM1_6_4_3" NUMBER(16,2), 
	"APE1_DIIACITYRESIDENT" VARCHAR2(1)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ECO_ACT" IS 'Код основного виду економічної діяльності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_PROF_RISK" IS 'Клас професійного ризику виробництва';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_BUDG_ORG" IS 'Бюджетна установа (Так / Ні)(Y / N)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_INV_ORG" IS 'Підприємство, організація всеукраїнської громадської організації інвалідів, зокрема УТОГ, УТОС (Так / Ні)(Y / N)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_MINISTRY" IS 'Міністерство,
інший центральний
орган';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ADDRESS" IS 'Місцезнаходження (місце проживання)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_PHONE" IS 'Телефон';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_FRM_PROP" IS 'Організаційно-правова форма господарювання';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_REGNUM" IS '№ реєстрації
платника
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_BANKNAME" IS 'Назва банку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_MFO" IS 'МФО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ACCNUM" IS '№ п/рахунку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_WRKR_CNT" IS 'Середньооблікова чисельність
штатних працівників облікового
складу за звітний період
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_INVAL_CNT" IS 'у т. ч.: середньооблікова к-ть
штатних працівників, яким
відповідно до чинного
законодавства встановлена
інвалідність
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_TR_CNT" IS 'К-ть осіб, які виконували
роботи за договорами
цивільно-правового характеру
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ZO_CNT" IS 'К-ть ЗО у звітному періоді';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_TAX_TP" IS 'Обрана система оподаткування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_1" IS 'Загальна сума нарахованої заробітної плати, винагород за виконану роботу (надані послуги) за цивільно-правовими договорами та оплати допомоги по тимчасовій непрацездатності, усього';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_1_1" IS 'сума нарахованої заробітної плати ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_1_2" IS 'сума винагород за договорами цивільно-правового характеру';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_1_3" IS 'сума оплати перших п’яти днів тимчасової непрацездатності, що здійснюється за рахунок коштів роботодавця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_1_4" IS 'сума допомоги по тимчасовій непрацездатності, яка виплачується за рахунок коштів Фонду соціального страхування у зв’язку з тимчасовою втратою працездатності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_1_4_1" IS 'Сума допомоги по тимчасовій непрацездатності, яка виплачувається за рахунок коштів Фонду соціального страхування від нещасних випадків на виробництві та професійних захворювань на виробництві';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2" IS 'Сума нарахованої заробітної плати, винагород за виконану роботу (надані послуги) за цивільно-правовими договорами та оплати допомоги по тимчасовій непрацездатності  на яку нараховується єдиний внесок, усього (р.2.1+ р.2.2 + р.2.3) ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1" IS 'Сума нарахованої заробітної плати, на яку нараховується єдиний внесок, усього (р. 2.1.1 + р.2.1.2 + р.2.1.3 + р.2.1.4 + р.2.1.5 + р.2.1.6)
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_1" IS 'роботодавцями, відповідно до класу професійного ризику виробництва, (36,76-49,7%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_2" IS 'бюджетними установами, (36,3%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_3" IS 'роботодавцями найманим працівникам із числа осіб льотних екіпажів повітряних  суден цивільної авіації (пілоти, штурмани, бортінженери, бортмеханіки, бортрадисти, льотчики-наглядачі) і бортоператорам, які  виконують спеціальні роботи в польотах,  (45,96 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_4" IS 'підприємствами, установами і організаціями працюючим інвалідам, (8,41 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_5" IS 'підприємствами та організаціями всеукраїнських громадських організацій інвалідів, зокрема товариствами УТОГ та УТОС ( 5,3 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_6" IS 'підприємствами та організаціями громадських організацій інвалідів (за умов визначених ч.14 ст. 8 Закону) працюючим інвалідам,  ( 5,5 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_2" IS 'Сума винагород за виконані роботи (надані послуги) за цивільно-правовими договорами, 34,7%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_3" IS 'Сума допомоги по тимчасовій непрацездатності, 33,2 % ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3" IS 'Нараховано єдиного внеску, усього  (р. 3.1 + р.3.2 + р.3.3 )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_1" IS 'На суми заробітної плати , усього (р. 3.1.1 + р. 3.1.2 + р. 3.1.3 + р. 3.1.4 + р. 3.1.5 + р. 3.1.6)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_1_1" IS 'р.  2.1.1 х  (36,76%-49,7%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_1_2" IS 'р. 2.1.2 х  36,3 % ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_1_3" IS 'р. 2.1.3 х 45,96 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_1_6" IS 'р.  2.1.6 х 5,5 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_2" IS 'На суми винагород за виконані роботи (надані послуги) за цивільно-правовими договорами,
 (р. 2.2 х 34,7%)
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_3" IS 'На суми допомоги по тимчасовій непрацездатності, (рядок 2.3 х 33,2 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4" IS 'Сума нарахованої заробітної плати, винагород за виконану роботу (надані послуги) за цивільно-правовими договорами та оплати допомоги по тимчасовій непрацездатності з якої, утримано єдиного внеску, усього (р. 4.1 + р. 4.2 + р. 4.3 ), ( відповідає значенню р. 2)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4_1" IS 'Сума заробітної плати застрахованих осіб, усього (р. 4.1.1 + р. 4.1.2 + р. 4.1.3)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4_1_1" IS 'осіб, які працюють на умовах трудового договору (контракту), ( 3,6 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4_1_2" IS 'найманих працівників – інвалідів, які працюють на підприємствах УТОГ, УТОС, (2,85 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4_1_3" IS 'працівників, які працюють на посадах, робота на яких зараховується до стажу, що дає право на одержання пенсії відповідно до окремих  Законів України, ( 6,1 %)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4_2" IS 'Сума винагород за виконану роботу (надані послуги) за цивільно-правовими договорами, 2,6%  (відповідає значенню р. 2.2)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_4_3" IS 'Сума допомоги по тимчасовій непрацездатності, 2 % (відповідає значенню р. 2.3)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_5" IS 'Утримано єдиного внеску, усього (р. 5.1 +  р. 5.2 +  р. 5.3 + р.  5.4 + 5..5)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_5_1" IS 'р.4.1.1х 3,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_5_2" IS 'р.4.1.2 х 2,85 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_5_3" IS 'р. 4.1.3 х 6,1%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_5_4" IS 'р. 4.2 х 2,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_5_5" IS 'р 4.3 х 2%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6" IS 'Донараховано та\або доутримано єдиного внеску у зв’язку з виправленням помилки, допущеної у попередніх звітних  періодах ( р 6.1+р.6.2+ р.6.3)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1" IS 'Донараховано єдиного внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_1" IS '36,76-49,7 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_2" IS '36,3 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_3" IS '45,96 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_4" IS '8,41%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_5" IS '5,3%      ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_6" IS '5,5%      ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_7" IS '34,7%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_1_8" IS '33,2%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_2" IS 'Донараховано єдиного внеску за попередні звітні періоди внаслідок збільшення класу професійного ризику';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_3" IS 'Доутримано єдиного внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_3_1" IS '3,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_3_2" IS '2,85 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_3_3" IS '6,1 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_3_4" IS '2,1 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_3_5" IS '2 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_6_4" IS 'Сума виплат, на яку донараховано єдиний  внесок';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ERR_TEXT" IS 'Зміст помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7" IS 'Зменшено  суму єдиного внеску у зв’язку з виправленням помилки, допущеної у попередніх  звітних періодах ( 7.1 +7.2+ 7.3)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1" IS 'Зменшено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_1" IS '36,76-49,7 % ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_2" IS '36,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_3" IS '45,96 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_4" IS '8,41 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_5" IS '5,3 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_6" IS '5,5 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_7" IS '34,7 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_1_8" IS '33,2 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_2" IS 'Зменшено суму єдиного внеску  за попередні звітні періоди внаслідок зменшення класу професійного ризику';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_3" IS 'Зменшено утримань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_3_1" IS '3,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_3_2" IS '2,85 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_3_3" IS '6,1 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_3_4" IS '2,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_3_5" IS '2 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_7_4" IS 'Сума виплат, на яку зайво нараховано єдиний внесок';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ERR_TEXT2" IS 'Зміст помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8" IS 'Загальна сума єдиного внеску, що підлягає сплаті,  всього (р. 3 + р.5 + р.6  – р.7)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_1" IS 'р. 3.1.1 + р 6.1.1 – р.7.1.1 (36,76–49,7%) ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_2" IS 'р. 3.1.2 + р.6.1.2 – р.7.1.2  (36,3%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_3" IS 'р.  3.1.3 + р.6.1.3 – р. 7.1.3  (45,96%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_4" IS 'р. 3.1.4 + р.6.1.4 – р.7.1.4  (8,41%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_5" IS 'р. 3.1.5 + р.6.1.5 – р.7.1.5  (5,3%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_6" IS 'р. 3.1.6 + р.6.1.6 – р.7.1.6   (5,5%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_7" IS 'р. 3.2 + р.6.1.7 – р. 7.1.7  (34,7%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_8" IS 'р. 3.3 + р.6.1.8 – р. 7.1.8  (33,2%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_9" IS 'р. 5.1 + р.6.3.1– р. 7.3.1 (3,6%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_10" IS 'р. 5.2 + р. 6.3.2 – р. 7.3.2 (2,85%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_11" IS 'р. 5.3 + р. 6.3.3 – р. 7.3.3 (6,1%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_12" IS 'р. 5.4 + р. 6.3.4 – р. 7.3.4 (2,6%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_13" IS 'р. 5.5 + р. 6.3.5 – р. 7.3.5 (2%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_8_14" IS 'р. 6.2 – р.7.2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_1" IS 'Сума заборгованості з виплати заробітної плати на початок звітного періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_2" IS 'Сума заборгованості з виплати заробітної плати на кінець звітного періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_3" IS 'Сальдо розрахунків рахунку 65 “Розрахунки за страхуванням” на початок звітного періоду (Дт)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_4" IS 'Сальдо розрахунків рахунку 65 “Розрахунки за страхуванням” на початок звітного періоду (Кт)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_5" IS 'у тому числі: пеня';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_6" IS 'у тому числі: штрафні санкції ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_7" IS 'Сальдо розрахунків рахунку 65 “Розрахунки за страхуванням” на кінець звітного періоду (Дт)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_8" IS 'Сальдо розрахунків рахунку 65 “Розрахунки за страхуванням” на кінець звітного періоду (Кт)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_9" IS 'у тому числі: пеня';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_10" IS 'у тому числі: штрафні санкції ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_11" IS 'Виплачено заробітної плати усього';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_12" IS 'у т.ч. у натуральній формі  ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_13" IS 'у т.ч.: - виплачено у звітному періоді заробітної плати та інших виплат і винагород, пов’язаних з відносинами трудового найму, нарахованої за період до 01.01.2011 року  ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_14" IS '- виплачено у звітному періоді заробітної плати та інших виплат і винагород, пов’язаних з відносинами трудового найму, нарахованої за період до 01.01.2004 року';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_15" IS '1.1. Страхових внесків до Фонду соціального страхування від нещасних випадків на виробництві та професійних захворювань України';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_16" IS '1.2. Страхових внесків до Фонду соціального страхування з тимчасової втрати працездатності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_17" IS '1.3. Страхових внесків до Фонду соціального страхування на випадок безробіття  ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_18" IS '2. Належить до сплати збору на обов’язкове державне пенсійне страхування, нарахованого за період до 01.01.2004 року';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_19" IS '3.1. Сума, на яку збільшено внески у зв''язку з виправленням помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_20" IS '3.1.1.  32%; 32,3%; 31,8%; 33,2%; 4%; 42%; 6,4%; 6,46%; 13,28%; 19,92%; 26,56%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_21" IS '3.1.2.  0,5 – 5 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_22" IS '3.2. Сума виплати (заробітку, доходу), на яку донараховані страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_23" IS '3.3. Сума, на яку зменшено внески у зв''язку з виправленням помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_24" IS '3.3.1.  32%; 32,3%; 31,8%; 33,2%; 4%; 42%; 6,4%; 6,46%; 13,28%; 19,92%; 26,56%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_25" IS '3.3.2.  0,5 – 5 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUMA1_26" IS '3.4. Сума виплати (заробітку, доходу), на яку зайво нараховані страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_CH_ZO" IS 'Виправлення допущеної помилки потребує змін у персоніфікованому обліку застрахованих осіб';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ERR_TEXT3" IS 'Зміст помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_DTA_1" IS 'Встановлені строки виплати заробітної плати:
за першу половину місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_DTA_2" IS 'Встановлені строки виплати заробітної плати:
за другу половину місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ZO_CNT_M" IS 'Кількість чоловіків  (Кількість ЗО у звітному періоді)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ZO_CNT_F" IS 'Кількість жінок (Кількість ЗО у звітному періоді)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SHIPBUILDING" IS 'Підприємство суднобудівної промисловості (клас 30.11 група 30.1 розділ 30, клас 33.15 група 33.1 розділ 33 КВЕД ДК 009:2010)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_ADDGARANT_CNT" IS 'працівників,  яким відповідно до чинного законодавства встановлено інвалідність, осіб';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_1_7" IS 'підприємствами суднобудівної промисловості (клас 30.11 група 30.1 розділ 30, клас 33.15 група 33.1 розділ 33 КВЕД ДК 009:2010)  (33,2%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_2_2_3" IS 'Сума винагород за виконані роботи (надані послуги) за цивільно-правовими договорами, нарахована підприємствами суднобудівної промисловості (клас 30.11 група 30.1 розділ 30, клас 33.15 група 33.1 розділ 33 КВЕД ДК 009:2010), 33,2%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_1_7" IS 'на суми заробітної плати, нарахованої підприємствами суднобудівної промисловості (клас 30.11 група 30.1 розділ 30, клас 33.15 група 33.1 розділ 33 КВЕД ДК 009:2010) (33,2%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_3_2_3" IS 'на суми винагород за виконані роботи (надані послуги) за цивільно-правовими договорами, нараховані  підприємствами суднобудівної промисловості (клас 30.11 група 30.1 розділ 30, клас 33.15 група 33.1 розділ 33 КВЕД ДК 009:2010) (р. 2.2.2 х 33,2%)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_JOBCREATED" IS 'Кількість створених нових робочих місць';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_STAFF_CNT" IS 'Штатна чисельність працівників';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_DIMPL_FAMILY_CNT" IS 'Кількість застрахованих осіб у звітному періоді з числа непрацюючих інших з подружжя працівників дипломатичної служби, яким нараховано єдиний внесок';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM1_DIPL_FAMILY_22" IS 'на суми мінімальної заробітної плати непрацюючому іншому з подружжя працівника дипломатичної';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_IS_EMPLOYER" IS 'Роботодавець';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_SUM_FINE" IS 'Сума пені яка нарахована платником єдиного внеску ст 25';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_1_6" IS 'v8 1_1_6 сума нарахованої заробітної плати за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення11';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_1_6_1" IS 'v8 1_1_6_1 Зменшено суму нарахувань з єдиного внеску у зв''язку з виправленням помилки, допущеної  5.3%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_1_6_2" IS 'v8 1_1_6_2 Зменшено суму нарахувань з єдиного внеску у зв’язку з виправленням помилки, допущеної  5.5%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_1_6_3" IS 'v8 1_1_6_3 Зменшено суму нарахувань з єдиного внеску у зв’язку з виправленням помилки, допущеної  22%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_2_6" IS 'v8 2_6 за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_2_6_1" IS 'v8 за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення  5.3%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_2_6_2" IS 'v8 за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення  5.5%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_2_6_3" IS 'v8 за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення 22%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_3_7" IS 'v8 на суму нарахованої заробітної плати за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_3_7_1" IS 'v8 на суму нарахованої заробітної плати за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення 5.3%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_3_7_2" IS 'v8 на суму нарахованої заробітної плати за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення 5.5%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_3_7_3" IS 'v8 на суму нарахованої заробітної плати за найманих працівників, призваних під час мобілізації на військову службу до Збройних Сил України, які не отримували доходи у вигляді грошового забезпечення 22%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_4_4" IS 'v8 Донараховано єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу, які не отримували доходи у вигляді грошового забезпечення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_4_4_1" IS 'v8 Донараховано єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу, які не отримували доходи у вигляді грошового забезпечення 5.3%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_4_4_2" IS 'v8 Донараховано єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу, які не отримували доходи у вигляді грошового забезпечення 5.5%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_4_4_3" IS 'v8 Донараховано єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу, які не отримували доходи у вигляді грошового забезпечення 22%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_6_4" IS 'v8 Зменшено суму нарахувань з єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу до ЗСУ, які не отримували доходи у вигляді гз';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_6_4_1" IS 'v8 Зменшено суму нарахувань з єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу до ЗСУ, які не отримували доходи у вигляді гз 5.3%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_6_4_2" IS 'v8 Зменшено суму нарахувань з єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу до ЗСУ, які не отримували доходи у вигляді гз 5.5%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_V8_SUM1_6_4_3" IS 'v8 Зменшено суму нарахувань з єдиного внеску у зв’язку з виправленням помилки, допущеної в попередніх звітних періодах за найманих працівників, призваних під час мобілізації на військову службу до ЗСУ, які не отримували доходи у вигляді гз 22%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_1"."APE1_DIIACITYRESIDENT" IS 'резидент Дія Сіті';
--------------------------------------------------------
--  DDL for Table SM_APE4_2
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_2" 
   (	"APE42_SLB" NUMBER(14,0), 
	"APE42_ST" VARCHAR2(1), 
	"APE42_CNT1_1" NUMBER(14,0), 
	"APE42_CNT1_2" NUMBER(14,0), 
	"APE42_CNT1_3" NUMBER(14,0), 
	"APE42_CNT1_4" NUMBER(14,0), 
	"APE42_CNT1_5" NUMBER(14,0), 
	"APE42_CNT1_6" NUMBER(14,0), 
	"APE42_SUM1_1_1" NUMBER(12,2), 
	"APE42_SUM1_1_2" NUMBER(12,2), 
	"APE42_SUM1_1_3" NUMBER(12,2), 
	"APE42_SUM1_1_4" NUMBER(12,2), 
	"APE42_SUM1_1_5" NUMBER(12,2), 
	"APE42_SUM1_2_1" NUMBER(12,2), 
	"APE42_SUM1_2_2" NUMBER(12,2), 
	"APE42_SUM1_2_3" NUMBER(12,2), 
	"APE42_SUM1_2_4" NUMBER(12,2), 
	"APE42_SUM1_2_5" NUMBER(12,2), 
	"APE42_SUM1_3_1" NUMBER(12,2), 
	"APE42_SUM1_3_2" NUMBER(12,2), 
	"APE42_SUM1_3_3" NUMBER(12,2), 
	"APE42_SUM1_3_4" NUMBER(12,2), 
	"APE42_SUM1_3_5" NUMBER(12,2), 
	"APE42_SUM2_1" NUMBER(12,2), 
	"APE42_SUM2_2" NUMBER(12,2), 
	"APE42_SUM2_3" NUMBER(12,2), 
	"APE42_SUM2_3_1" NUMBER(12,2), 
	"APE42_SUM2_4" NUMBER(12,2), 
	"APE42_SUM2_4_1" NUMBER(12,2), 
	"APE42_SUM2_5" NUMBER(12,2), 
	"APE42_LDF" NUMBER(14,0), 
	"APE42_PCH_CNT" NUMBER(14,0), 
	"APE42_PCH_SUM_ESV_MNTH" NUMBER(12,2), 
	"APE42_PCH_SUM_ESV_BEFORE" NUMBER(12,2), 
	"APE42_PCH_SUM_ESV_YEAR" NUMBER(12,2), 
	"APE42_SUM_FINE" NUMBER(16,2), 
	"APE42_CAPTIVE_CNT" NUMBER(14,0), 
	"APE42_CAPTIVE_ESV_MNTH" NUMBER(16,2), 
	"APE42_CAPTIVE_ESV_PREV" NUMBER(16,2), 
	"APE42_CAPTIVE_ESV_YEAR" NUMBER(16,2), 
	"APE42_DIPL_SPOUSE_CNT" NUMBER(14,0), 
	"APE42_DIPL_SPOUSE_ESV_MNTH" NUMBER(16,2), 
	"APE42_DIPL_SPOUSE_ESV_PREV" NUMBER(16,2)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CNT1_1" IS 'Кількість осіб (Особи, які відповідно до закону отримують допомогу по догляду за дитиною до досягнення нею трирічного віку, усього)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CNT1_2" IS 'Кількість осіб (Непрацюючі працездатні батьки)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CNT1_3" IS 'Кількість осіб (Непрацюючі працездатні особи, що здійснюють догляд за інвалідом)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CNT1_4" IS 'Кількість осіб (Непрацюючі працездатні особи, які здійснюють догляд за престарілим)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CNT1_5" IS 'Кількість осіб (Батьки-вихователі дитячих будинків та прийомні батьки)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CNT1_6" IS 'Кількість осіб (Батьки-вихователі дитячих будинків та прийомні батьки, які не працюють )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_1_1" IS 'Нараховано єдиного внеску (грн.) у звітному місяці (Особи, які відповідно до закону отримують допомогу по догляду за дитиною до досягнення нею трирічного віку, усього)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_1_2" IS 'Нараховано єдиного внеску (грн.) у звітному місяці (Непрацюючі працездатні батьки)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_1_3" IS 'Нараховано єдиного внеску (грн.) у звітному місяці (Непрацюючі працездатні особи, що здійснюють догляд за інвалідом)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_1_4" IS 'Нараховано єдиного внеску (грн.) у звітному місяці (Непрацюючі працездатні особи, які здійснюють догляд за престарілим)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_1_5" IS 'Нараховано єдиного внеску (грн.) у звітному місяці (Разом (рядки 1 + 2 + 3 + 4))';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_2_1" IS 'Нараховано єдиного внеску (грн.) у т.ч. за попередні
періоди
(Особи, які відповідно до закону отримують допомогу по догляду за дитиною до досягнення нею трирічного віку, усього)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_2_2" IS 'Нараховано єдиного внеску (грн.) у т.ч. за попередні
періоди
(Непрацюючі працездатні батьки)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_2_3" IS 'Нараховано єдиного внеску (грн.) у т.ч. за попередні
періоди
(Непрацюючі працездатні особи, що здійснюють догляд за інвалідом)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_2_4" IS 'Нараховано єдиного внеску (грн.) у т.ч. за попередні
періоди
(Непрацюючі працездатні особи, які здійснюють догляд за престарілим)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_2_5" IS 'Нараховано єдиного внеску (грн.) у т.ч. за попередні
періоди
(Разом (рядки 1 + 2 + 3 + 4))';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_3_1" IS 'Нараховано єдиного внеску (грн.) з початку року (Особи, які відповідно до закону отримують допомогу по догляду за дитиною до досягнення нею трирічного віку, усього)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_3_2" IS 'Нараховано єдиного внеску (грн.) з початку року (Непрацюючі працездатні батьки)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_3_3" IS 'Нараховано єдиного внеску (грн.) з початку року (Непрацюючі працездатні особи, що здійснюють догляд за інвалідом)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_3_4" IS 'Нараховано єдиного внеску (грн.) з початку року (Непрацюючі працездатні особи, які здійснюють догляд за престарілим)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM1_3_5" IS 'Нараховано єдиного внеску (грн.) з початку року (Разом (рядки 1 + 2 + 3 + 4))';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM2_1" IS 'Сума грошового забезпечення, на яку нараховується єдиний внесок ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM2_2" IS 'Нараховано єдиного внеску (рядок 1 х 33,2 %) ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_PCH_CNT" IS 'Непрацюючі працездатні батьки які фактично здійснюють догляд за дитиною з інвалідністю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_PCH_SUM_ESV_MNTH" IS 'сумма єсв за місяць по непрацюючих працездатних батьках які фактично здійснюють догляд за дитиною з інвалідністю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_PCH_SUM_ESV_BEFORE" IS 'сумма єсв за попередні періоди по непрацюючих працездатних батьках які фактично здійснюють догляд за дитиною з інвалідністю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_PCH_SUM_ESV_YEAR" IS 'сумма єсв за з початку року по непрацюючих працездатних батьках які фактично здійснюють догляд за дитиною з інвалідністю';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_SUM_FINE" IS 'Сума пені яка нарахована платником єдиного внеску ст 25';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CAPTIVE_CNT" IS 'Чисельність осіб, позбавлених особистої свободи, яким нарахована виплата у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CAPTIVE_ESV_MNTH" IS 'ЄСВ, нарахований за осіб, позбавлених особистої свободи, у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CAPTIVE_ESV_PREV" IS 'ЄСВ, нарахований за осіб, позбавлених особистої свободи, у тч за попередні періоди';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_CAPTIVE_ESV_YEAR" IS 'ЄСВ, нарахований за осіб, позбавлених особистої свободи, з початку року';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_DIPL_SPOUSE_CNT" IS 'Чисельність непрацюючих інших з подружжя працівників дипслужби, яким нарахована виплата у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_DIPL_SPOUSE_ESV_MNTH" IS 'ЄСВ, нарахований за непрацюючих інших з подружжя працівників дипслужби у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_2"."APE42_DIPL_SPOUSE_ESV_PREV" IS 'ЄСВ, нарахований за непрацюючих інших з подружжя працівників дипслужби, у тч за попередні періоди';
--------------------------------------------------------
--  DDL for Table SM_APE4_3
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_3" 
   (	"APE43_SLB" NUMBER(14,0), 
	"APE43_ST" VARCHAR2(1), 
	"APE43_CNT1" NUMBER(14,0), 
	"APE43_SUM1" NUMBER(12,2), 
	"APE43_SUM2" NUMBER(12,2), 
	"APE43_SUM3" NUMBER(12,2), 
	"APE43_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_3"."APE43_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_3"."APE43_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_3"."APE43_CNT1" IS 'Кількість осіб, яким нараховане грошове забезпечення у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_3"."APE43_SUM1" IS 'Нараховано єдиного внеску (грн.) у звітному місяці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_3"."APE43_SUM2" IS 'Нараховано єдиного внеску (грн.) у т. ч. за попередні звітні періоди';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_3"."APE43_SUM3" IS 'Нараховано єдиного внеску (грн.) з початку року';
--------------------------------------------------------
--  DDL for Table SM_APE4_4
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_4" 
   (	"APE44_SLB" NUMBER(14,0), 
	"APE44_ST" VARCHAR2(1), 
	"APE44_CNT1" NUMBER(14,0), 
	"APE44_SUM1" NUMBER(12,2), 
	"APE44_SUM2" NUMBER(12,2), 
	"APE44_SUM3" NUMBER(12,2), 
	"APE44_SUM4" NUMBER(12,2), 
	"APE44_SUM5" NUMBER(12,2), 
	"APE44_SUM6" NUMBER(12,2), 
	"APE44_SUM6_1" NUMBER(12,2), 
	"APE44_SUM6_2" NUMBER(12,2), 
	"APE44_SUM7" NUMBER(12,2), 
	"APE44_SUM7_1" NUMBER(12,2), 
	"APE44_SUM7_2" NUMBER(12,2), 
	"APE44_SUM8" NUMBER(12,2), 
	"APE44_SUM8_1" NUMBER(12,2), 
	"APE44_SUM8_2" NUMBER(12,2), 
	"APE44_ERR_TEXT" VARCHAR2(255), 
	"APE44_ERR_TEXT2" VARCHAR2(255), 
	"APE44_SUMA1" NUMBER(12,2), 
	"APE44_SUMA2" NUMBER(12,2), 
	"APE44_SUMA3" NUMBER(12,2), 
	"APE44_SUMA4" NUMBER(12,2), 
	"APE44_SUMA5" NUMBER(12,2), 
	"APE44_SUMA6" NUMBER(12,2), 
	"APE44_SUMA7" NUMBER(12,2), 
	"APE44_SUMA8" NUMBER(12,2), 
	"APE44_ERR_TEXT3" VARCHAR2(255), 
	"APE44_P2_1" NUMBER(12,2), 
	"APE44_P2_2" NUMBER(12,2), 
	"APE44_P2_3" NUMBER(12,2), 
	"APE44_P2_4" NUMBER(12,2), 
	"APE44_P2_5" NUMBER(12,2), 
	"APE44_P2_6" NUMBER(12,2), 
	"APE44_P2_6_1" NUMBER(12,2), 
	"APE44_P2_6_2" NUMBER(12,2), 
	"APE44_P2_ERR1" VARCHAR2(255), 
	"APE44_P2_7" NUMBER(12,2), 
	"APE44_P2_7_1" NUMBER(12,2), 
	"APE44_P2_7_2" NUMBER(12,2), 
	"APE44_P2_ERR2" VARCHAR2(255), 
	"APE44_P2_8" NUMBER(12,2), 
	"APE44_P2_8_1" NUMBER(12,2), 
	"APE44_P2_8_2" NUMBER(12,2), 
	"APE44_CNT2" NUMBER(14,0), 
	"APE44_LDF" NUMBER(14,0), 
	"APE44_R01021G3" NUMBER(12,2), 
	"APE44_R01022G3" NUMBER(12,2), 
	"APE44_R01031G3" NUMBER(12,2), 
	"APE44_R01032G3" NUMBER(12,2), 
	"APE44_R02021G3" NUMBER(12,2), 
	"APE44_R02022G3" NUMBER(12,2), 
	"APE44_R02031G3" NUMBER(12,2), 
	"APE44_R02032G3" NUMBER(12,2), 
	"APE44_P1_SUM_FINE" NUMBER(16,2), 
	"APE44_P2_SUM_FINE" NUMBER(16,2)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_CNT1" IS 'Кількість осіб, яким у звітному періоді нараховано грошове забезпечення ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM1" IS 'Загальна сума грошового забезпечення';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM2" IS 'Сума грошового забезпечення, на яку нараховується єдиний внесок
(в межах максимальної величини бази нарахування єдиного внеску) ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM3" IS 'Нараховано єдиного внеску, 34,7%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM4" IS 'Сума грошового забезпечення, з якого утримується єдиний внесок';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM5" IS 'Утримано єдиного внеску із застрахованих осіб, 2,6 % ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM6" IS 'Сума, на яку збільшено єдиний внесок у зв''язку з виправленням помилки,
допущеної у попередніх звітних періодах (р. 6.1 + р. 6.2) ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM6_1" IS '34,7 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM6_2" IS '2,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM7" IS 'Сума, на яку зменшено єдиний внесок у зв''язку з виправленням помилки,
допущеної у попередніх звітних періодах (р. 7.1 + р. 7.2)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM7_1" IS '34,7 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM7_2" IS '2,6 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM8" IS 'Загальна сума єдиного внеску (р. 3 + р. 5 + р. 6 - р. 7)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM8_1" IS 'Нараховано єдиного внеску 34,7 % (р. 3 + р. 6.1 - р. 7.1)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUM8_2" IS 'Утримано єдиного внеску 2,6 % (р. 5 + р. 6.2 - р. 7.2)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_ERR_TEXT" IS 'Зміст помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_ERR_TEXT2" IS 'Зміст помилки 2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA1" IS '1. Сума, на яку збільшено внески у зв''язку з виправленням помилки, у т.ч';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA2" IS '1.1. 33,2%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA3" IS '1.2. 0,5 – 2 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA4" IS '2. Сума виплати (заробітку, доходу), на яку донараховані страхові внески         ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA5" IS '3. Сума, на яку зменшено внески у зв''язку з виправленням помилки, у т.ч';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA6" IS '3.1. 33,2%';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA7" IS '3.2. 0,5 – 2 %';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_SUMA8" IS '4. Сума виплати (заробітку, доходу), на яку зайво нараховані страхові внески    ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_ERR_TEXT3" IS 'Зміст помилки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_P1_SUM_FINE" IS 'Cума пені яка нарахована платником єдиного внеску ст 25 частина 1';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_4"."APE44_P2_SUM_FINE" IS 'Cума пені яка нарахована платником єдиного внеску ст 25 частина 2';
--------------------------------------------------------
--  DDL for Table SM_APE4_5
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_5" 
   (	"APE45_SLB" NUMBER(14,0), 
	"APE45_PAGE" NUMBER(14,0), 
	"APE45_PAGENUM" NUMBER(14,0), 
	"APE45_RECSNUM" NUMBER(14,0), 
	"APE45_ST" VARCHAR2(1), 
	"APE45_FORMTYPE" VARCHAR2(1), 
	"APE45_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5"."APE45_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5"."APE45_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5"."APE45_PAGENUM" IS 'Номер аркуша звіту';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5"."APE45_RECSNUM" IS 'Кількість рядків
на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5"."APE45_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5"."APE45_FORMTYPE" IS 'Тип форми';
--------------------------------------------------------
--  DDL for Table SM_APE4_5DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_5DATA" 
   (	"APED45_SLB" NUMBER(14,0), 
	"APED45_PAGE" NUMBER(14,0), 
	"APED45_RECNUM" NUMBER(14,0), 
	"APED45_UKR_CIT" VARCHAR2(1), 
	"APED45_NUMIDENT" VARCHAR2(10), 
	"APED45_LN" VARCHAR2(100), 
	"APED45_NM" VARCHAR2(100), 
	"APED45_FTN" VARCHAR2(100), 
	"APED45_START_DT" NUMBER(2,0), 
	"APED45_STOP_DT" NUMBER(2,0), 
	"APED45_ST" VARCHAR2(1) DEFAULT 'N', 
	"APED45_PERSON_TYPE" NUMBER(2,0), 
	"APED45_BASE_END_WORK" VARCHAR2(255), 
	"APED45_NEWJOB_DT" DATE, 
	"APED45_DOG_CPH" VARCHAR2(1), 
	"APED45_DATE_HIRE" DATE, 
	"APED45_DATE_FIRE" DATE, 
	"APED45_PEL" NUMBER(14,0), 
	"APED45_PROFESSION_NAME" VARCHAR2(4000), 
	"APED45_ZKPPTR" NUMBER(5,0), 
	"APED45_CODE_CLASS_PROF" VARCHAR2(6), 
	"APED45_POSITION" VARCHAR2(255), 
	"APED45_DOC_REASON" VARCHAR2(255), 
	"APED45_MIL_RANK" VARCHAR2(255), 
	"APED45_NCP" NUMBER(14,0), 
	"APED45_NMR" NUMBER(14,0), 
	"APED45_SUMISNIC" NUMBER(1,0), 
	"APED45_MOVE_POS" NUMBER(1,0), 
	"APED45_APQD5" NUMBER(14,0), 
	"APED45_SPL" NUMBER(14,0), 
	"APED45_APQD5_UNFIX" NUMBER(14,0), 
	"APED45_IDENT" NUMBER(14,0), 
	"APED45_STATE_SRC" VARCHAR2(10), 
	"APED45_CSM" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_RECNUM" IS 'Номер рядка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_UKR_CIT" IS 'Громадянин України
(1-так, 0-ні)
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_LN" IS 'Призвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_START_DT" IS 'Дата початку (трудових відносин у звітному місяці)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_STOP_DT" IS 'Дата кінця (трудових відносин  у звітному місяці)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_NEWJOB_DT" IS 'Дата створення нового робочого місця (штатної одиниці), на яке у звітному періді працевлаштований даний працівник';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_SUMISNIC" IS 'Внутрішній сумісник 1 - так, 0 - ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_MOVE_POS" IS 'Переведено, призначено на іншу посаду або роботу, переміщено до іншого підрозділу 1 - так, 0 - ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_APQD5" IS 'Ід запису даних додатка 5';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_SPL" IS 'Ід ярлика квартальноњ звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_IDENT" IS 'Унікальний номер запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_STATE_SRC" IS 'Джерело стану запису звітності ikis_ndi.v_ddn_aped_state_src';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_5DATA"."APED45_CSM" IS 'Ід запису звітів з судовим рішенням';
--------------------------------------------------------
--  DDL for Table SM_APE4_6
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_6" 
   (	"APE46_SLB" NUMBER(14,0), 
	"APE46_PAGE" NUMBER(14,0), 
	"APE46_PAGENUM" NUMBER(14,0), 
	"APE46_RECSNUM" NUMBER(14,0), 
	"APE46_ST" VARCHAR2(1), 
	"APE46_FORMTYPE" VARCHAR2(1), 
	"APE46_SUM" NUMBER(12,2), 
	"APE46_SUM_PV" NUMBER(12,2), 
	"APE46_SUM_V" NUMBER(12,2), 
	"APE46_SUM_DIFF" NUMBER(12,2), 
	"APE46_SUM_NARAH" NUMBER(12,2), 
	"APE46_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_SLB" IS 'Код ярлыка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_PAGENUM" IS 'Номер аркуша звіту';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_RECSNUM" IS 'Кількість рядків
на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_FORMTYPE" IS 'Тип форми';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_SUM" IS 'Загальна сума нарахованого заробітку / доходу (усього з початку звітного місяця)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_SUM_PV" IS 'Сума нарахованого заробітку/доходу  у  межах максимальної величини, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6"."APE46_SUM_V" IS 'Сума єдиного внеску за звітний місяць (із заробітку / доходу)';
--------------------------------------------------------
--  DDL for Table SM_APE4_6DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_6DATA" 
   (	"APED46_SLB" NUMBER(14,0), 
	"APED46_PAGE" NUMBER(14,0), 
	"APED46_RECNUM" NUMBER(14,0), 
	"APED46_UKR_CIT" VARCHAR2(1), 
	"APED46_NUMIDENT" VARCHAR2(10), 
	"APED46_LN" VARCHAR2(100), 
	"APED46_NM" VARCHAR2(100), 
	"APED46_FTN" VARCHAR2(100), 
	"APED46_ZO" NUMBER(3,0), 
	"APED46_PAY_TP" NUMBER(2,0), 
	"APED46_MNTH" NUMBER(2,0), 
	"APED46_YEAR" NUMBER(4,0), 
	"APED46_SEX" NUMBER(1,0), 
	"APED46_OTK" NUMBER(1,0), 
	"APED46_EXP" NUMBER(1,0), 
	"APED46_SUM" NUMBER(12,2), 
	"APED46_SUM_PV" NUMBER(12,2), 
	"APED46_SUM_V" NUMBER(12,2), 
	"APED46_ST" VARCHAR2(1) DEFAULT 'N', 
	"APED46_DD_NWORK" NUMBER(2,0), 
	"APED46_DD_NSAL" NUMBER(2,0), 
	"APED46_DD_WRKR" NUMBER(14,0), 
	"APED46_NEWJOB" VARCHAR2(1), 
	"APED46_KD_VP" NUMBER(4,0), 
	"APED46_SUM_DIFF" NUMBER(12,2), 
	"APED46_SUM_NARAH" NUMBER(12,2), 
	"APED46_NRC" NUMBER(1,0), 
	"APED46_DATE" DATE, 
	"APED46_PEL" NUMBER(14,0), 
	"APED46_APQD1" NUMBER(14,0), 
	"APED46_SPL" NUMBER(14,0), 
	"APED46_APQD1_UNFIX" NUMBER(14,0), 
	"APED46_NFWH" NUMBER(1,0), 
	"APED46_IDENT" NUMBER(14,0), 
	"APED46_STATE_SRC" VARCHAR2(10), 
	"APED46_CSM" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_SLB" IS 'Код ярлыка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_RECNUM" IS 'Номер рядка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_UKR_CIT" IS 'Громадянин України ( 1-Так, 0-Ні )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_LN" IS 'Призвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_ZO" IS 'Код катего-рії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_PAY_TP" IS 'Тип нарахувань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_MNTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_YEAR" IS 'Рік, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_SEX" IS 'Пол ( 1 -чоловік, 0 -жінка )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_OTK" IS 'Ознака трудової книжки  ( 1-Так, 0 -Ні )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_EXP" IS 'Ознака наявності спецстажу  ( 1-Так, 0-Ні )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_SUM" IS 'Загальна сума нарахованого заробітку / доходу (усього з початку звітного місяця)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_SUM_PV" IS 'Сума нарахованого заробітку/доходу  у  межах максимальної величини, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_SUM_V" IS 'Сума єдиного внеску за звітний місяць (із заробітку / доходу)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_DD_NWORK" IS 'Кількість календарних днів тимчасової непрацездатності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_DD_NSAL" IS 'Кількість календарних днів без збереження заробітної плати';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_DD_WRKR" IS 'Кількість  днів перебування у трудових/  ЦП  відносинах протягом календарного звітного місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_NEWJOB" IS 'Ознака нового робочого місця 1-так, 0-ні';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_KD_VP" IS 'Кількість календарних днів відпустки у зв’язку з вагітністю та пологами';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_NFWH" IS 'Ознака наявності трудового договору з нефіксованим робочим часом';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_IDENT" IS 'Унікальний номер запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_STATE_SRC" IS 'Джерело стану запису звітності ikis_ndi.v_ddn_aped_state_src';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_6DATA"."APED46_CSM" IS 'Ід запису звітів з судовим рішенням';
   COMMENT ON TABLE "IKIS_WEBSM"."SM_APE4_6DATA"  IS 'snapshot table for snapshot IKIS_WEBSM.SM_APE4_6DATA_P';
--------------------------------------------------------
--  DDL for Table SM_APE4_6DATA_KPR
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_6DATA_KPR" 
   (	"APED46_SLB" NUMBER(14,0), 
	"APED46_PAGE" NUMBER(14,0), 
	"APED46_RECNUM" NUMBER(14,0), 
	"APED46_UKR_CIT" VARCHAR2(1), 
	"APED46_NUMIDENT" VARCHAR2(10), 
	"APED46_LN" VARCHAR2(100), 
	"APED46_NM" VARCHAR2(100), 
	"APED46_FTN" VARCHAR2(100), 
	"APED46_ZO" NUMBER(3,0), 
	"APED46_MNTH" NUMBER(2,0), 
	"APED46_YEAR" NUMBER(4,0), 
	"APED46_SEX" NUMBER(1,0), 
	"APED46_OTK" NUMBER(1,0), 
	"APED46_EXP" NUMBER(1,0), 
	"APED46_SUM" NUMBER(12,2), 
	"APED46_SUM_PV" NUMBER(12,2), 
	"APED46_SUM_V" NUMBER(12,2), 
	"APED46_ST" VARCHAR2(1) DEFAULT 'N', 
	"APED46_PAY_TP" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE4_7
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_7" 
   (	"APE47_SLB" NUMBER(14,0), 
	"APE47_PAGE" NUMBER(14,0), 
	"APE47_PAGENUM" NUMBER(14,0), 
	"APE47_RECSNUM" NUMBER(14,0), 
	"APE47_ST" VARCHAR2(1), 
	"APE47_FORMTYPE" VARCHAR2(1), 
	"APE47_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE4_7DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_7DATA" 
   (	"APED47_SLB" NUMBER(14,0), 
	"APED47_PAGE" NUMBER(14,0), 
	"APED47_RECNUM" NUMBER(14,0), 
	"APED47_UKR_CIT" VARCHAR2(1), 
	"APED47_NUMIDENT" VARCHAR2(10), 
	"APED47_LN" VARCHAR2(100), 
	"APED47_NM" VARCHAR2(100), 
	"APED47_FTN" VARCHAR2(100), 
	"APED47_EXP" VARCHAR2(10), 
	"APED47_START_DT" NUMBER(2,0), 
	"APED47_STOP_DT" NUMBER(2,0), 
	"APED47_DD" NUMBER(2,0), 
	"APED47_NORM_DD" NUMBER(3,0), 
	"APED47_HH" NUMBER(4,0), 
	"APED47_MM" NUMBER(2,0), 
	"APED47_NORM_HHMM" VARCHAR2(10), 
	"APED47_ORDER_NUM" VARCHAR2(8), 
	"APED47_ORDER_DT" DATE, 
	"APED47_SEASON" VARCHAR2(1), 
	"APED47_ST" VARCHAR2(1) DEFAULT 'N', 
	"APED47_PEL" NUMBER(14,0), 
	"APED47_APQD6" NUMBER(14,0), 
	"APED47_SPL" NUMBER(14,0), 
	"APED47_APQD6_UNFIX" NUMBER(14,0), 
	"APED47_IDENT" NUMBER(14,0), 
	"APED47_STATE_SRC" VARCHAR2(10), 
	"APED47_CSM" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_RECNUM" IS 'Номер рядка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_UKR_CIT" IS 'Громадянин України(1-так, 0-ні)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_LN" IS 'Призвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_EXP" IS 'Код підстави для обліку спецстажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_START_DT" IS 'Початок періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_STOP_DT" IS 'Кінець періоду';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_DD" IS 'Кількість днів';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_NORM_DD" IS 'Кількість нормозмін';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_HH" IS 'Кількітьгодин/хвилин (години)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_MM" IS 'Кількітьгодин/хвилин (хвилини)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_NORM_HHMM" IS 'Норма тривалості роботи для зарахування за повний місяць спецстажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_ORDER_NUM" IS '№ наказу про проведення атестації робочого місця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_ORDER_DT" IS 'Дата наказу про проведення атестації робочого місця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_SEASON" IS 'Ознака СЕЗОН';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_APQD6" IS 'Ід запису додатка 6';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_SPL" IS 'Ід ярлика квартальноњ звітност?';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_IDENT" IS 'Унікальний номер запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_STATE_SRC" IS 'Джерело стану запису звітності ikis_ndi.v_ddn_aped_state_src';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_7DATA"."APED47_CSM" IS 'Ід запису звітів з судовим рішенням';
--------------------------------------------------------
--  DDL for Table SM_APE4_8
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_8" 
   (	"APE48_SLB" NUMBER(14,0), 
	"APE48_TP" NUMBER(2,0), 
	"APE48_PAGE" NUMBER(14,0), 
	"APE48_PAGENUM" NUMBER(14,0), 
	"APE48_RECSNUM" NUMBER(14,0), 
	"APE48_ST" VARCHAR2(1), 
	"APE48_FORMTYPE" VARCHAR2(1), 
	"APE48_SUM1" NUMBER(12,2), 
	"APE48_SUM1_PV" NUMBER(12,2), 
	"APE48_SUM1_V" NUMBER(12,2), 
	"APE48_SUM2" NUMBER(12,2), 
	"APE48_SUM2_V" NUMBER(12,2), 
	"APE48_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_TP" IS 'Тип таблиці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_PAGE" IS 'Код аркушу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_PAGENUM" IS 'Номер аркушу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_RECSNUM" IS 'Кількість записів на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_FORMTYPE" IS 'Тип форми';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_SUM1" IS 'Загальна сума нарахованого грошового забезпечення (усього з початку звітного місяця) (Таблиця 8)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_SUM1_PV" IS 'Сума нарахованого грошового забезпечення у межах максимальної величини, на яку нараховується єдиний внесок (Таблиця 8)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_SUM1_V" IS 'Сума єдиного сплаченого внеску (Таблиця 8)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_SUM2" IS 'Мінімальний розмір заробітної плати, встановлений законодавством (Таблиця 9)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8"."APE48_SUM2_V" IS 'Сума єдиного сплаченого внеску (Таблиця 9)';
--------------------------------------------------------
--  DDL for Table SM_APE4_8DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE4_8DATA" 
   (	"APED48_SLB" NUMBER(14,0), 
	"APED48_TP" NUMBER(2,0), 
	"APED48_PAGE" NUMBER(14,0), 
	"APED48_RECNUM" NUMBER(14,0), 
	"APED48_UKR_CIT" VARCHAR2(1), 
	"APED48_NUMIDENT" VARCHAR2(10), 
	"APED48_LN" VARCHAR2(100), 
	"APED48_NM" VARCHAR2(100), 
	"APED48_FTN" VARCHAR2(100), 
	"APED48_ZO" NUMBER(3,0), 
	"APED48_START_DT" NUMBER(2,0), 
	"APED48_STOP_DT" NUMBER(2,0), 
	"APED48_MNTH" NUMBER(2,0), 
	"APED48_YEAR" NUMBER(4,0), 
	"APED48_SUM1" NUMBER(12,2), 
	"APED48_SUM1_PV" NUMBER(12,2), 
	"APED48_SUM1_V" NUMBER(12,2), 
	"APED48_SUM2" NUMBER(12,2), 
	"APED48_SUM2_V" NUMBER(12,2), 
	"APED48_ST" VARCHAR2(1) DEFAULT 'N', 
	"APED48_PAY_TYPE" NUMBER(2,0), 
	"APED48_PEL" NUMBER(14,0), 
	"APED48_APQD2" NUMBER(14,0), 
	"APED48_APQD3" NUMBER(14,0), 
	"APED48_SPL" NUMBER(14,0), 
	"APED48_APQD2_UNFIX" NUMBER(14,0), 
	"APED48_APQD3_UNFIX" NUMBER(14,0), 
	"APED48_IDENT" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_SLB" IS 'Код ярлыка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_TP" IS 'Тип таблиці';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_PAGE" IS 'Код аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_RECNUM" IS 'Номер рядка';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_UKR_CIT" IS 'Громадянин України ( 1-Так, 0-Ні )';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_NUMIDENT" IS 'Номер облікової картки ЗО за ДРФО ДПА ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_LN" IS 'Призвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_NM" IS 'Ім’я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_ZO" IS 'Код катего-рії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_START_DT" IS 'Дата початку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_STOP_DT" IS 'Дата кінця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_MNTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_YEAR" IS 'Рік, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_ST" IS 'Стан';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_APQD2" IS 'Ід запису даних додатка 2';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_APQD3" IS 'Ід даних запису додатка 3';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_SPL" IS 'Ід ярлика квартальноњ звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_APQD2_UNFIX" IS 'Ід запису додатку 1 що змінив статус запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_APQD3_UNFIX" IS 'Ід запису додатку 1 що змінив статус запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE4_8DATA"."APED48_IDENT" IS 'Унікальний номер запису';
--------------------------------------------------------
--  DDL for Table SM_APE5_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_1" 
   (	"APE51_SLB" NUMBER(14,0), 
	"APE51_FORMTYPE" NUMBER(2,0), 
	"APE51_ST" VARCHAR2(1), 
	"APE51_NUMIDENT" VARCHAR2(10), 
	"APE51_LN" VARCHAR2(50), 
	"APE51_NM" VARCHAR2(50), 
	"APE51_FTN" VARCHAR2(50), 
	"APE51_FAM_NUM" NUMBER(4,0), 
	"APE51_INS_TYPE" VARCHAR2(20), 
	"APE51_NUM_DGV" VARCHAR2(50), 
	"APE51_DGV_DT" DATE, 
	"APE51_START_DT" DATE, 
	"APE51_END_DT" DATE, 
	"APE51_SUM" NUMBER(12,2), 
	"APE51_SUM_PV" NUMBER(12,2), 
	"APE51_ESV" NUMBER(12,2), 
	"APE51_SUM_V" NUMBER(12,2), 
	"APE51_NUM_DD1" NUMBER(3,0), 
	"APE51_NUM_DD2" NUMBER(3,0), 
	"APE51_SUM_1" NUMBER(12,2), 
	"APE51_SUM_2" NUMBER(12,2), 
	"APE51_SUM_3" NUMBER(12,2), 
	"APE51_SUM_4" NUMBER(12,2), 
	"APE51_TERMINATE" DATE, 
	"APE51_PEL" NUMBER(14,0), 
	"APE51_PERCENT_ESV" NUMBER(12,2), 
	"APE51_LDF" NUMBER(14,0), 
	"APE51_YEAR" NUMBER(4,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE5_1"."APE51_TERMINATE" IS 'Дата розірвання договору';
--------------------------------------------------------
--  DDL for Table SM_APE5_1_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_1_DATA" 
   (	"APED51_SLB" NUMBER(14,0), 
	"APED51_MNTH" NUMBER(2,0), 
	"APED51_SUM" NUMBER(12,2), 
	"APED51_SUM_PV" NUMBER(12,2), 
	"APED51_ESV" NUMBER(12,2), 
	"APED51_SUM_V" NUMBER(12,2), 
	"APED51_NUM_DD1" NUMBER(2,0), 
	"APED51_NUM_DD2" NUMBER(2,0), 
	"APED51_ZO" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_2
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_2" 
   (	"APE52_SLB" NUMBER(14,0), 
	"APE52_FORMTYPE" NUMBER(2,0), 
	"APE52_ST" VARCHAR2(1), 
	"APE52_NUMIDENT" VARCHAR2(10), 
	"APE52_LN" VARCHAR2(50), 
	"APE52_NM" VARCHAR2(50), 
	"APE52_FTN" VARCHAR2(50), 
	"APE52_TAX_TYPE" VARCHAR2(20), 
	"APE52_FAM_NUM" NUMBER(4,0), 
	"APE52_INS_TYPE" VARCHAR2(20), 
	"APE52_NUM_DGV" VARCHAR2(50), 
	"APE52_DGV_DT" DATE, 
	"APE52_START_DT" DATE, 
	"APE52_END_DT" DATE, 
	"APE52_SUM" NUMBER(12,2), 
	"APE52_ESV" NUMBER(12,2), 
	"APE52_SUM_V" NUMBER(12,2), 
	"APE52_NUM_DD1" NUMBER(3,0), 
	"APE52_NUM_DD2" NUMBER(3,0), 
	"APE52_SUM_1" NUMBER(12,2), 
	"APE52_SUM_2" NUMBER(12,2), 
	"APE52_SUM_3" NUMBER(12,2), 
	"APE52_SUM_4" NUMBER(12,2), 
	"APE52_TERMINATE" DATE, 
	"APE52_PEL" NUMBER(14,0), 
	"APE52_PERCENT_ESV" NUMBER(12,2), 
	"APE52_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE5_2"."APE52_TERMINATE" IS 'Дата розірвання договору';
--------------------------------------------------------
--  DDL for Table SM_APE5_2_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_2_DATA" 
   (	"APED52_SLB" NUMBER(14,0), 
	"APED52_MNTH" NUMBER(2,0), 
	"APED52_SUM" NUMBER(12,2), 
	"APED52_ESV" NUMBER(12,2), 
	"APED52_SUM_V" NUMBER(12,2), 
	"APED52_NUM_DD1" NUMBER(2,0), 
	"APED52_NUM_DD2" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_3
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_3" 
   (	"APE53_SLB" NUMBER(14,0), 
	"APE53_FORMTYPE" NUMBER(2,0), 
	"APE53_ST" VARCHAR2(1), 
	"APE53_NUMIDENT" VARCHAR2(10), 
	"APE53_LN" VARCHAR2(50), 
	"APE53_NM" VARCHAR2(50), 
	"APE53_FTN" VARCHAR2(50), 
	"APE53_ACT_TYPE" NUMBER(4,0), 
	"APE53_INS_TYPE" VARCHAR2(20), 
	"APE53_NUM_DGV" VARCHAR2(50), 
	"APE53_DGV_DT" DATE, 
	"APE53_START_DT" DATE, 
	"APE53_END_DT" DATE, 
	"APE53_SUM" NUMBER(12,2), 
	"APE53_SUM_PV" NUMBER(12,2), 
	"APE53_ESV" NUMBER(12,2), 
	"APE53_SUM_V" NUMBER(12,2), 
	"APE53_NUM_DD1" NUMBER(3,0), 
	"APE53_NUM_DD2" NUMBER(3,0), 
	"APE53_SUM_1" NUMBER(12,2), 
	"APE53_SUM_2" NUMBER(12,2), 
	"APE53_SUM_3" NUMBER(12,2), 
	"APE53_SUM_4" NUMBER(12,2), 
	"APE53_TERMINATE" DATE, 
	"APE53_PEL" NUMBER(14,0), 
	"APE53_PERCENT_ESV" NUMBER(12,2), 
	"APE53_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE5_3"."APE53_TERMINATE" IS 'Дата розірвання договору';
--------------------------------------------------------
--  DDL for Table SM_APE5_3_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_3_DATA" 
   (	"APED53_SLB" NUMBER(14,0), 
	"APED53_MNTH" NUMBER(2,0), 
	"APED53_SUM" NUMBER(12,2), 
	"APED53_SUM_PV" NUMBER(12,2), 
	"APED53_ESV" NUMBER(12,2), 
	"APED53_SUM_V" NUMBER(12,2), 
	"APED53_NUM_DD1" NUMBER(2,0), 
	"APED53_NUM_DD2" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_4
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_4" 
   (	"APE54_SLB" NUMBER(14,0), 
	"APE54_FORMTYPE" NUMBER(2,0), 
	"APE54_ST" VARCHAR2(1), 
	"APE54_PAGE" NUMBER(6,0), 
	"APE54_PAGENUM" NUMBER(6,0), 
	"APE54_NUMIDENT" VARCHAR2(10), 
	"APE54_LN" VARCHAR2(50), 
	"APE54_NM" VARCHAR2(50), 
	"APE54_FTN" VARCHAR2(50), 
	"APE54_ZO" NUMBER(2,0), 
	"APE54_INS_TYPE" VARCHAR2(20), 
	"APE54_NUM_DGV" VARCHAR2(50), 
	"APE54_DGV_DT" DATE, 
	"APE54_START_DT" DATE, 
	"APE54_END_DT" DATE, 
	"APE54_SUM" NUMBER(12,2), 
	"APE54_SUM_PV" NUMBER(12,2), 
	"APE54_ESV" NUMBER(12,2), 
	"APE54_SUM_V" NUMBER(12,2), 
	"APE54_NUM_DD1" NUMBER(3,0), 
	"APE54_NUM_DD2" NUMBER(3,0), 
	"APE54_PEL" NUMBER(14,0), 
	"APE54_PERCENT_ESV" NUMBER(12,2), 
	"APE54_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_4_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_4_DATA" 
   (	"APED54_SLB" NUMBER(14,0), 
	"APED54_PAGE" NUMBER(6,0), 
	"APED54_MNTH" NUMBER(2,0), 
	"APED54_SUM" NUMBER(12,2), 
	"APED54_SUM_PV" NUMBER(12,2), 
	"APED54_ESV" NUMBER(12,2), 
	"APED54_SUM_V" NUMBER(12,2), 
	"APED54_NUM_DD1" NUMBER(2,0), 
	"APED54_NUM_DD2" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_5
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_5" 
   (	"APE55_SLB" NUMBER(14,0), 
	"APE55_FORMTYPE" NUMBER(2,0), 
	"APE55_ST" VARCHAR2(1), 
	"APE55_PAGE" NUMBER(6,0), 
	"APE55_PAGENUM" NUMBER(6,0), 
	"APE55_NUMIDENT" VARCHAR2(10), 
	"APE55_LN" VARCHAR2(50), 
	"APE55_NM" VARCHAR2(50), 
	"APE55_FTN" VARCHAR2(50), 
	"APE55_ZO" NUMBER(2,0), 
	"APE55_INS_TYPE" VARCHAR2(20), 
	"APE55_NUM_DGV" VARCHAR2(50), 
	"APE55_DGV_DT" DATE, 
	"APE55_START_DT" DATE, 
	"APE55_END_DT" DATE, 
	"APE55_SUM" NUMBER(12,2), 
	"APE55_SUM_PV" NUMBER(12,2), 
	"APE55_ESV" NUMBER(12,2), 
	"APE55_SUM_V" NUMBER(12,2), 
	"APE55_NUM_DD1" NUMBER(3,0), 
	"APE55_NUM_DD2" NUMBER(3,0), 
	"APE55_PEL" NUMBER(14,0), 
	"APE55_PERCENT_ESV" NUMBER(12,2), 
	"APE55_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_5_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_5_DATA" 
   (	"APED55_SLB" NUMBER(14,0), 
	"APED55_PAGE" NUMBER(6,0), 
	"APED55_MNTH" NUMBER(2,0), 
	"APED55_SUM" NUMBER(12,2), 
	"APED55_SUM_PV" NUMBER(12,2), 
	"APED55_ESV" NUMBER(12,2), 
	"APED55_SUM_V" NUMBER(12,2), 
	"APED55_NUM_DD1" NUMBER(2,0), 
	"APED55_NUM_DD2" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_6
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_6" 
   (	"APE56_SLB" NUMBER(14,0), 
	"APE56_FORMTYPE" NUMBER(2,0), 
	"APE56_ST" VARCHAR2(1), 
	"APE56_NUMIDENT" VARCHAR2(10), 
	"APE56_LN" VARCHAR2(50), 
	"APE56_NM" VARCHAR2(50), 
	"APE56_FTN" VARCHAR2(50), 
	"APE56_PEL" NUMBER(14,0), 
	"APE56_PERCENT_ESV" NUMBER(12,2), 
	"APE56_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE5_6_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE5_6_DATA" 
   (	"APED56_SLB" NUMBER(14,0), 
	"APED56_MNTH" NUMBER(2,0), 
	"APED56_EXP" VARCHAR2(10), 
	"APED56_START_DT" NUMBER(2,0), 
	"APED56_STOP_DT" NUMBER(2,0), 
	"APED56_DD" NUMBER(2,0), 
	"APED56_HH" NUMBER(4,0), 
	"APED56_MM" NUMBER(2,0), 
	"APED56_NORM_HHMM" VARCHAR2(10), 
	"APED56_SEASON" VARCHAR2(1)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_1" 
   (	"APE61_SLB" NUMBER(14,0), 
	"APE61_PAGE" NUMBER(14,0), 
	"APE61_PAGENUM" NUMBER(14,0), 
	"APE61_SUM" NUMBER(12,2), 
	"APE61_VOL_SUM" NUMBER(12,2), 
	"APE61_DAYS" NUMBER(3,0), 
	"APE61_NUMIDENT" VARCHAR2(10), 
	"APE61_NM" VARCHAR2(100), 
	"APE61_LN" VARCHAR2(100), 
	"APE61_FTN" VARCHAR2(100), 
	"APE61_VOL_SUM_2" NUMBER(12,2), 
	"APE61_ST" VARCHAR2(1), 
	"APE61_ZO" NUMBER(2,0), 
	"APE61_FORMTYPE" VARCHAR2(1), 
	"APE61_CHECK" CHAR(1) DEFAULT 'N', 
	"APE61_INS_TYPE" VARCHAR2(20), 
	"APE61_BEGIN_DT" DATE, 
	"APE61_END_DT" DATE, 
	"APE61_NUM_MM" NUMBER(2,0), 
	"APE61_NUM_DD" NUMBER(2,0), 
	"APE61_YEAR" NUMBER(4,0), 
	"APE61_PEL" NUMBER(14,0), 
	"APE61_LDF" NUMBER(14,0), 
	"APE61_VOL_CONTRIBUTION2_SUM" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_1_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" 
   (	"APED61_SLB" NUMBER(14,0), 
	"APED61_PAGE" NUMBER(14,0), 
	"APED61_MONTH" NUMBER(2,0), 
	"APED61_YEAR" NUMBER(4,0), 
	"APED61_SUM" NUMBER(12,2), 
	"APED61_VOL_SUM" NUMBER(12,2), 
	"APED61_DAYS" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_2
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_2" 
   (	"APE62_SLB" NUMBER(14,0), 
	"APE62_PAGE" NUMBER(14,0), 
	"APE62_PAGENUM" NUMBER(14,0), 
	"APE62_NUMIDENT" VARCHAR2(10), 
	"APE62_NM" VARCHAR2(100), 
	"APE62_LN" VARCHAR2(100), 
	"APE62_FTN" VARCHAR2(100), 
	"APE62_VOL_SUM" NUMBER(12,2), 
	"APE62_SUM" NUMBER(12,2), 
	"APE62_ADD_SUM" NUMBER(12,2), 
	"APE62_ST" VARCHAR2(1), 
	"APE62_ZO" NUMBER(2,0), 
	"APE62_FORMTYPE" VARCHAR2(1), 
	"APE62_CHECK" CHAR(1) DEFAULT 'N', 
	"APE62_PEL" NUMBER(14,0), 
	"APE62_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_2_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" 
   (	"APED62_ID" NUMBER(14,0), 
	"APED62_SLB" NUMBER(14,0), 
	"APED62_PAGE" NUMBER(14,0), 
	"APED62_MONTH" NUMBER(2,0), 
	"APED62_YEAR" NUMBER(4,0), 
	"APED62_SUM" NUMBER(12,2), 
	"APED62_ADD_SUM" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_3
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_3" 
   (	"APE63_SLB" NUMBER(14,0), 
	"APE63_PAGE" NUMBER(14,0), 
	"APE63_PAGENUM" NUMBER(14,0), 
	"APE63_NUMIDENT" VARCHAR2(10), 
	"APE63_NM" VARCHAR2(100), 
	"APE63_LN" VARCHAR2(100), 
	"APE63_FTN" VARCHAR2(100), 
	"APE63_VOL_SUM" NUMBER(12,2), 
	"APE63_SUM" NUMBER(12,2), 
	"APE63_ADD_SUM" NUMBER(12,2), 
	"APE63_ST" VARCHAR2(1), 
	"APE63_ZO" NUMBER(2,0), 
	"APE63_FORMTYPE" VARCHAR2(1), 
	"APE63_CHECK" CHAR(1) DEFAULT 'N', 
	"APE63_PEL" NUMBER(14,0), 
	"APE63_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_3_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" 
   (	"APED63_ID" NUMBER(14,0), 
	"APED63_SLB" NUMBER(14,0), 
	"APED63_PAGE" NUMBER(14,0), 
	"APED63_MONTH" NUMBER(2,0), 
	"APED63_YEAR" NUMBER(4,0), 
	"APED63_SUM" NUMBER(12,2), 
	"APED63_ADD_SUM" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE6_4
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_4" 
   (	"APE64_SLB" NUMBER(14,0), 
	"APE64_PAGE" NUMBER(14,0), 
	"APE64_PAGENUM" NUMBER(14,0), 
	"APE64_NUMIDENT" VARCHAR2(10), 
	"APE64_NM" VARCHAR2(100), 
	"APE64_LN" VARCHAR2(100), 
	"APE64_FTN" VARCHAR2(100), 
	"APE64_SUM" NUMBER(12,2), 
	"APE64_SUM2" NUMBER(12,2), 
	"APE64_ST" VARCHAR2(1), 
	"APE64_ZO" NUMBER(2,0), 
	"APE64_FORMTYPE" VARCHAR2(1), 
	"APE64_CHECK" CHAR(1) DEFAULT 'N', 
	"APE64_DT_NAK" DATE, 
	"APE64_NUM_NAK" VARCHAR2(100), 
	"APE64_PEL" NUMBER(14,0), 
	"APE64_LDF" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4"."APE64_SLB" IS 'Ссилка на пачку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4"."APE64_NUMIDENT" IS 'Реєстраційний номер облікової картки платника податків';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4"."APE64_SUM" IS 'Сума, з якої сплачено внесок і яка використовується для обчислення пенсії';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4"."APE64_SUM2" IS 'Сума зобов''язань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4"."APE64_ZO" IS 'Категорія застрахованої особи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4"."APE64_CHECK" IS 'Підтвереження спеціаліста відділу надходження доходів факту сплати внесків';
--------------------------------------------------------
--  DDL for Table SM_APE6_4_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" 
   (	"APED64_ID" NUMBER(14,0), 
	"APED64_SLB" NUMBER(14,0), 
	"APED64_PAGE" NUMBER(14,0), 
	"APED64_MONTH" NUMBER(2,0), 
	"APED64_YEAR" NUMBER(4,0), 
	"APED64_SUM" NUMBER(12,2), 
	"APED64_SUM2" NUMBER(12,2)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4_DATA"."APED64_SLB" IS 'Ссылка на пачку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4_DATA"."APED64_MONTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APE6_4_DATA"."APED64_YEAR" IS 'Рік, за який проведено нарахування';
--------------------------------------------------------
--  DDL for Table SM_APE7_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE7_1" 
   (	"APE71_SLB" NUMBER(14,0), 
	"APE71_PAGE" NUMBER(14,0), 
	"APE71_PAGENUM" NUMBER(14,0), 
	"APE71_FORMTYPE" VARCHAR2(1), 
	"APE71_NUMIDENT" VARCHAR2(10), 
	"APE71_NM" VARCHAR2(100), 
	"APE71_LN" VARCHAR2(100), 
	"APE71_FTN" VARCHAR2(100), 
	"APE71_ZO" NUMBER(2,0), 
	"APE71_CIT" NUMBER(1,0), 
	"APE71_DD" NUMBER(2,0), 
	"APE71_MM" NUMBER(2,0), 
	"APE71_NAME_PROF" VARCHAR2(255), 
	"APE71_START_DT" DATE, 
	"APE71_END_DT" DATE, 
	"APE71_DD_ALL" NUMBER(4,0), 
	"APE71_SUM_ALL" NUMBER(15,5), 
	"APE71_ST" VARCHAR2(1), 
	"APE71_YYYY" NUMBER(4,0), 
	"APE71_DD_NV" NUMBER(2,0), 
	"APE71_MM_NV" NUMBER(2,0), 
	"APE71_YYYY_NV" NUMBER(4,0), 
	"APE71_DD_SA" NUMBER(2,0), 
	"APE71_MM_SA" NUMBER(2,0), 
	"APE71_YYYY_SA" NUMBER(4,0), 
	"APE71_PEL" NUMBER(14,0), 
	"APE71_LDF" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APE7_1_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" 
   (	"APED71_ID" NUMBER(14,0), 
	"APED71_SLB" NUMBER(14,0), 
	"APED71_PAGE" NUMBER(14,0), 
	"APED71_MONTH" NUMBER(2,0), 
	"APED71_YEAR" NUMBER(4,0), 
	"APED71_DD" NUMBER(2,0), 
	"APED71_SUM" NUMBER(15,5), 
	"APED71_CHECK" NUMBER(1,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP12_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP12_1" 
   (	"APP12_ID" NUMBER(14,0), 
	"APP12_SLB" NUMBER(14,0), 
	"APP12_ORDER_NUM" VARCHAR2(25), 
	"APP12_IM" NUMBER(14,0), 
	"APP12_ORDER_DT" DATE, 
	"APP12_POST_HEAD" VARCHAR2(255), 
	"APP12_NAME_HEAD" VARCHAR2(255), 
	"APP12_NUMIDENT" VARCHAR2(10), 
	"APP12_LN" VARCHAR2(50), 
	"APP12_NM" VARCHAR2(50), 
	"APP12_FTN" VARCHAR2(50), 
	"APP12_COURT_NAME" VARCHAR2(1000), 
	"APP12_COURT_NUM" VARCHAR2(50), 
	"APP12_COURT_DT" DATE, 
	"APP12_ST" VARCHAR2(10), 
	"APP12_CASE_NUM" VARCHAR2(50), 
	"APP12_WRKR_START" DATE, 
	"APP12_WRKR_STOP" DATE, 
	"APP12_SUM_COURT_AMOUNT" NUMBER(12,2), 
	"APP12_IH" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP12_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP12_1DATA" 
   (	"APP12D_ID" NUMBER(14,0), 
	"APP12D_APP12" NUMBER(14,0), 
	"APP12D_SLB" NUMBER(14,0), 
	"APP12D_ZIC" NUMBER(2,0), 
	"APP12D_SUM_CUR" NUMBER(12,2), 
	"APP12D_CHARG_MNTH" DATE, 
	"APP12D_SUM_COURT" NUMBER(12,2), 
	"APP12D_WRKR_DAY" NUMBER(2,0), 
	"APP12D_SUM_OPR" NUMBER(12,2), 
	"APP12D_OPR" VARCHAR2(2) DEFAULT 'L', 
	"APP12D_ST" VARCHAR2(10), 
	"APP12D_SUM_PC_OPR" NUMBER(12,2), 
	"APP12D_CONTR_ST" VARCHAR2(10) DEFAULT 'U', 
	"APP12D_ROWNUM" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP30_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP30_1" 
   (	"APP301_ID" NUMBER(14,0), 
	"APP301_SLB" NUMBER(14,0), 
	"APP301_PAGE" NUMBER(14,0), 
	"APP301_PAGENUM" NUMBER(14,0), 
	"APP301_NUMIDENT" VARCHAR2(10), 
	"APP301_LASTNAME" VARCHAR2(100), 
	"APP301_NAME" VARCHAR2(100), 
	"APP301_FATHERNAME" VARCHAR2(100), 
	"APP301_ZO" NUMBER(2,0), 
	"APP301_SUM_PAY" NUMBER(10,2), 
	"APP301_SUM_V" NUMBER(10,2), 
	"APP301_FORMTYPE" NUMBER(14,0), 
	"APP301_ST" VARCHAR2(10), 
	"APP301_CHECK" VARCHAR2(10) DEFAULT 'N', 
	"APP301_SUM_PAY_TOTAL" NUMBER(10,2), 
	"APP301_PEL" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP30_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP30_1DATA" 
   (	"APP301D_ID" NUMBER(14,0), 
	"APP301D_APP301" NUMBER(14,0), 
	"APP301D_SLB" NUMBER(14,0), 
	"APP301D_PAGE" NUMBER(14,0), 
	"APP301D_MONTH" NUMBER(2,0), 
	"APP301D_YEAR" NUMBER(4,0), 
	"APP301D_SUM_PAY" NUMBER(10,2), 
	"APP301D_SUM_V" NUMBER(10,2), 
	"APP301D_ROWNUM" NUMBER(2,0), 
	"APP301D_ST" VARCHAR2(10), 
	"APP301D_MONTH_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP4_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_1" 
   (	"AP1_ID" NUMBER(14,0), 
	"AP1_SLB" NUMBER(14,0), 
	"AP1_SUM1_1" NUMBER(12,2), 
	"AP1_SUM1_1_1" NUMBER(12,2), 
	"AP1_SUM1_1_1_1" NUMBER(12,2), 
	"AP1_SUM1_1_1_2" NUMBER(12,2), 
	"AP1_SUM1_1_2" NUMBER(12,2), 
	"AP1_SUM1_2" NUMBER(12,2), 
	"AP1_SUM1_2_1" NUMBER(12,2), 
	"AP1_SUM1_2_2" NUMBER(12,2), 
	"AP1_SUM1_2_3" NUMBER(12,2), 
	"AP1_SUM1_3" NUMBER(12,2), 
	"AP1_SUM1_3_1" NUMBER(12,2), 
	"AP1_SUM1_3_2" NUMBER(12,2), 
	"AP1_SUM1_3_3" NUMBER(12,2), 
	"AP1_SUM1_4" NUMBER(12,2), 
	"AP1_SUM1_5" NUMBER(12,2), 
	"AP1_SUM1_6" NUMBER(12,2), 
	"AP1_SUM1_6_1" NUMBER(12,2), 
	"AP1_SUM1_6_2" NUMBER(12,2), 
	"AP1_SUM1_6A" NUMBER(12,2), 
	"AP1_SUM1_7" NUMBER(12,2), 
	"AP1_SUM1_7_1" NUMBER(12,2), 
	"AP1_SUM1_7_2" NUMBER(12,2), 
	"AP1_SUM1_7A" NUMBER(12,2), 
	"AP1_SUM1_8" NUMBER(12,2), 
	"AP1_SUM1_8_1" NUMBER(12,2), 
	"AP1_SUM1_8_2" NUMBER(12,2), 
	"AP1_SUM2_1" NUMBER(12,2), 
	"AP1_SUM2_2" NUMBER(12,2), 
	"AP1_SUM2_2_1" NUMBER(12,2), 
	"AP1_SUM2_2_2" NUMBER(12,2), 
	"AP1_SUM2_2_3" NUMBER(12,2), 
	"AP1_SUM2_2_4" NUMBER(12,2), 
	"AP1_SUM2_3" NUMBER(12,2), 
	"AP1_SUM2_4" NUMBER(12,2), 
	"AP1_SUM2_5" NUMBER(12,2), 
	"AP1_REP_MNTH" NUMBER(2,0), 
	"AP1_SUM_PREV" NUMBER(12,2), 
	"AP1_SUM_NEXT" NUMBER(12,2), 
	"AP1_SUMA1_1" NUMBER(12,2), 
	"AP1_SUMA1_2" NUMBER(12,2), 
	"AP1_SUMA1_3" NUMBER(12,2), 
	"AP1_SUMA1_4" NUMBER(12,2), 
	"AP1_SUMA1_5" NUMBER(12,2), 
	"AP1_SUMA1_6" NUMBER(12,2), 
	"AP1_SUMA1_7" NUMBER(12,2), 
	"AP1_SUMA1_8" NUMBER(12,2), 
	"AP1_SUMA1_9" NUMBER(12,2), 
	"AP1_SUMA1_10" NUMBER(12,2), 
	"AP1_SUMA1_11" NUMBER(12,2), 
	"AP1_SUMA1_12" NUMBER(12,2), 
	"AP1_SUMA1_13" NUMBER(12,2), 
	"AP1_SUMA1_14" NUMBER(12,2), 
	"AP1_SUMA1_15" NUMBER(12,2), 
	"AP1_SUMA1_16" NUMBER(12,2), 
	"AP1_SUMA1_17" NUMBER(12,2), 
	"AP1_SUMA1_18" NUMBER(12,2), 
	"AP1_ST" VARCHAR2(1), 
	"AP1_MINISTRY" VARCHAR2(250), 
	"AP1_ADDRESS" VARCHAR2(250), 
	"AP1_PHONE" VARCHAR2(100), 
	"AP1_VLASN" VARCHAR2(250), 
	"AP1_REGNUM" VARCHAR2(25), 
	"AP1_BANKNAME" VARCHAR2(250), 
	"AP1_MFO" VARCHAR2(20), 
	"AP1_ACCNUM" VARCHAR2(255), 
	"AP1_WRKR_CNT" NUMBER(14,0), 
	"AP1_INVAL_CNT" NUMBER(14,0), 
	"AP1_TR_CNT" NUMBER(14,0), 
	"AP1_ZO_CNT" NUMBER(14,0), 
	"AP1_TAX_TP" VARCHAR2(250), 
	"AP1_CAMCHK" VARCHAR2(1) DEFAULT 'N', 
	"AP1_OPERATIONS" VARCHAR2(1), 
	"AP1_ERR_TEXT" VARCHAR2(255), 
	"AP1_ERR_TEXT2" VARCHAR2(255)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_APP4_1D2DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_1D2DATA" 
   (	"A4A2_SLB" NUMBER(14,0), 
	"A4A2_MNTH" NUMBER(2,0), 
	"A4A2_FUND_PURE" NUMBER(12,2), 
	"A4A2_KOEF" NUMBER(12,2), 
	"A4A2_SUM" NUMBER(12,2), 
	"A4A2_RATE32" NUMBER(12,2), 
	"A4A2_RATE4" NUMBER(12,2), 
	"A4A2_RATE42" NUMBER(12,2), 
	"A4A2_RATE15" NUMBER(12,2), 
	"A4A2_FUND_TAKEN" NUMBER(12,2), 
	"A4A2_ID" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP4_2
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_2" 
   (	"AP42_ID" NUMBER(14,0), 
	"AP42_SLB" NUMBER(14,0), 
	"AP42_ST" VARCHAR2(1), 
	"AP42_YEAR" NUMBER(4,0), 
	"AP42_MNTH" NUMBER(2,0), 
	"AP42_KAM_CHK" VARCHAR2(1), 
	"AP42_COL1_0" NUMBER(14,0), 
	"AP42_COL2_0" NUMBER(14,0), 
	"AP42_COL3_0" NUMBER(14,0), 
	"AP42_COL4_0" NUMBER(14,0), 
	"AP42_COL6_0" NUMBER(14,0), 
	"AP42_COL6_1" NUMBER(14,0), 
	"AP42_SUM_M1" NUMBER(12,2), 
	"AP42_SUM_M2" NUMBER(12,2), 
	"AP42_SUM_M3" NUMBER(12,2), 
	"AP42_SUM_M4" NUMBER(12,2), 
	"AP42_SUM_M5" NUMBER(12,2), 
	"AP42_SUM_Y1" NUMBER(12,2), 
	"AP42_SUM_Y2" NUMBER(12,2), 
	"AP42_SUM_Y3" NUMBER(12,2), 
	"AP42_SUM_Y4" NUMBER(12,2), 
	"AP42_SUM_Y5" NUMBER(12,2), 
	"AP42_SUM1_0" NUMBER(12,2), 
	"AP42_SUM2_0" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP4_3
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_3" 
   (	"AP43_ID" NUMBER(14,0), 
	"AP43_SLB" NUMBER(14,0), 
	"AP43_ST" VARCHAR2(1), 
	"AP43_YEAR" NUMBER(4,0), 
	"AP43_MNTH" NUMBER(2,0), 
	"AP43_KAM_CHK" VARCHAR2(1), 
	"AP43_COL1" NUMBER(14,0), 
	"AP43_SUM_M1" NUMBER(12,2), 
	"AP43_SUM_Y1" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP4_4
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_4" 
   (	"AP44_ID" NUMBER(14,0), 
	"AP44_SLB" NUMBER(14,0), 
	"AP44_ST" VARCHAR2(1), 
	"AP44_YEAR" NUMBER(4,0), 
	"AP44_MNTH" NUMBER(2,0), 
	"AP44_KAM_CHK" VARCHAR2(1), 
	"AP44_SUM1" NUMBER(12,2), 
	"AP44_SUM2" NUMBER(12,2), 
	"AP44_SUM3" NUMBER(12,2), 
	"AP44_SUM4" NUMBER(12,2), 
	"AP44_SUM5" NUMBER(12,2), 
	"AP44_SUM6" NUMBER(12,2), 
	"AP44_SUM6_1" NUMBER(12,2), 
	"AP44_SUM6_2" NUMBER(12,2), 
	"AP44_SUM7" NUMBER(12,2), 
	"AP44_SUM7_1" NUMBER(12,2), 
	"AP44_SUM7_2" NUMBER(12,2), 
	"AP44_SUM8" NUMBER(12,2), 
	"AP44_SUM8_1" NUMBER(12,2), 
	"AP44_SUM8_2" NUMBER(12,2), 
	"AP44_PNUM" NUMBER(14,0), 
	"AP44_ERRTEXT" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP4_5
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_5" 
   (	"AP45_ID" NUMBER(14,0), 
	"AP45_SLB" NUMBER(14,0), 
	"AP45_RECSNUM" NUMBER(14,0), 
	"AP45_PAGENUM" NUMBER(14,0), 
	"AP45_CHARG_MNTH" NUMBER(2,0), 
	"AP45_CHARG_YEAR" NUMBER(4,0), 
	"AP45_PAGE" NUMBER(14,0), 
	"AP45_ST" VARCHAR2(1), 
	"AP45_FORMTYPE" VARCHAR2(1)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_APP4_6
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_6" 
   (	"AP4_SLB" NUMBER(14,0), 
	"AP4_TP" NUMBER(2,0), 
	"AP4_RECSNUM" NUMBER(14,0), 
	"AP4_ST" VARCHAR2(1), 
	"AP4_PAGENUM" NUMBER(14,0), 
	"AP4_SUM" NUMBER(12,2), 
	"AP4_SUM_PV" NUMBER(12,2), 
	"AP4_SUM_L" NUMBER(12,2), 
	"AP4_SUM_L_PV" NUMBER(12,2), 
	"AP4_SUM_CH" NUMBER(12,2), 
	"AP4_SUM_CH_PV" NUMBER(12,2), 
	"AP4_SUM_MIL" NUMBER(12,2), 
	"AP4_SUM_V" NUMBER(12,2), 
	"AP4_ID" NUMBER(14,0), 
	"AP4_PAGE" NUMBER(14,0), 
	"AP4_FORMTYPE" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SLB" IS 'ссылка на ярлык пачки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_TP" IS 'тип таблицы';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_RECSNUM" IS 'количество строк на листе';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_ST" IS 'статус документа';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_PAGENUM" IS 'номер аркушу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM" IS 'сума нарахованого заробітку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_PV" IS 'сума нарахованого заробітку, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_L" IS 'сума нарахувань за дні непрацездатності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_L_PV" IS 'сума нарахувань за дні непрацездатності, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_CH" IS 'грошове забезпечення батькам-вихователям';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_CH_PV" IS 'грошове забезпечення батькам-вихователям, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_MIL" IS 'заробітна плата особ, які проходять військову службу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_SUM_V" IS 'сума страхових внесків ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_6"."AP4_ID" IS 'Код аркушу (сіквенс)';
--------------------------------------------------------
--  DDL for Table SM_APP4_8
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_8" 
   (	"AP48_ID" NUMBER(14,0), 
	"AP48_SLB" NUMBER(14,0), 
	"AP48_RECSNUM" NUMBER(14,0), 
	"AP48_PAGENUM" NUMBER(14,0), 
	"AP48_CHARG_MNTH" NUMBER(2,0), 
	"AP48_CHARG_YEAR" NUMBER(4,0), 
	"AP48_FORMTYPE" NUMBER(14,0), 
	"AP48_ST" VARCHAR2(1), 
	"AP48_PAGE" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_APP4_8DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_8DATA" 
   (	"A48D_ID" NUMBER(14,0), 
	"A48D_SLB" NUMBER(14,0), 
	"A48D_PAGE" NUMBER(14,0), 
	"A48D_RECNUM" NUMBER(14,0), 
	"A48D_LN" VARCHAR2(60), 
	"A48D_NM" VARCHAR2(60), 
	"A48D_FTN" VARCHAR2(60), 
	"A48D_NUMIDENT" VARCHAR2(10), 
	"A48D_EXP" VARCHAR2(10), 
	"A48D_START_DT" NUMBER(2,0), 
	"A48D_STOP_DT" NUMBER(2,0), 
	"A48D_SEASON" VARCHAR2(1), 
	"A48D_DD" NUMBER(14,0), 
	"A48D_NORM_DD" NUMBER(14,0), 
	"A48D_HH" NUMBER(14,0), 
	"A48D_MM" NUMBER(2,0), 
	"A48D_NORM_HH" VARCHAR2(10), 
	"A48_ST" VARCHAR2(1) DEFAULT 'N', 
	"A48D_PEL" NUMBER(14,0), 
	"A48D_IDENT" NUMBER(14,0), 
	"A48D_STATE_SRC" VARCHAR2(10), 
	"A48D_CSM" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_8DATA"."A48D_IDENT" IS 'Унікальний номер';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_8DATA"."A48D_STATE_SRC" IS 'Джерело стану строки звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_8DATA"."A48D_CSM" IS 'Ід запису звітів з судовим рішенням';
--------------------------------------------------------
--  DDL for Table SM_APP4_DIV3DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_DIV3DATA" 
   (	"A43D_SLB" NUMBER(14,0), 
	"A43D_MNTH" NUMBER(2,0), 
	"A43D_SUM_PREV" NUMBER(14,2), 
	"A43D_SUM_NEXT" NUMBER(14,2), 
	"A43D_ID" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP4_PAYDATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" 
   (	"A4PD_SLB" NUMBER(14,0), 
	"A4PD_TP" NUMBER(2,0), 
	"A4PD_RECNUM" NUMBER(2,0), 
	"A4PD_LN" VARCHAR2(60), 
	"A4PD_NM" VARCHAR2(60), 
	"A4PD_FTN" VARCHAR2(60), 
	"A4PD_NUMIDENT" VARCHAR2(10), 
	"A4PD_ZO" NUMBER(2,0), 
	"A4PD_ZIC" NUMBER(2,0), 
	"A4PD_SUM" NUMBER(12,2), 
	"A4PD_SUM_PV" NUMBER(12,2), 
	"A4PD_SUM_V" NUMBER(12,2), 
	"A4PD_SUM_L" NUMBER(12,2), 
	"A4PD_SUM_L_PV" NUMBER(12,2), 
	"A4PD_SUM_CH" NUMBER(12,2), 
	"A4PD_SUM_CH_PV" NUMBER(12,2), 
	"A4PD_SUM_MIL" NUMBER(12,2), 
	"A4PD_OTK" VARCHAR2(1), 
	"A4PD_EXP" VARCHAR2(1), 
	"A4PD_PAY_YEAR" NUMBER(4,0), 
	"A4PD_PAY_MNTH" NUMBER(2,0), 
	"A4PD_PAY_TP" NUMBER(2,0), 
	"A4PD_START_DT" NUMBER(2,0), 
	"A4PD_STOP_DT" NUMBER(2,0), 
	"A4PD_ID" NUMBER(14,0), 
	"A4PD_PAGE" NUMBER(14,0), 
	"A4PD_ST" VARCHAR2(1) DEFAULT 'N', 
	"A4PD_PEL" NUMBER(14,0), 
	"A4PD_STATE_SRC" VARCHAR2(10), 
	"A4PD_CSM" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SLB" IS 'ссылка на ярлык пачки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_TP" IS 'тип таблицы';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_RECNUM" IS 'номер запису на аркуші';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_LN" IS 'Призвище ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_NM" IS 'Ім’я ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_FTN" IS 'По батькові ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_NUMIDENT" IS 'Номер облікової картки застрахованої особи (ЗО) по ДРФО ДПА';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_ZO" IS 'Код категорії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_ZIC" IS 'Код типу ставки страхового внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM" IS 'сума нарахованого заробітку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_PV" IS 'сума нарахованого заробітку, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_V" IS 'сума страхових внесків ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_L" IS 'сума нарахувань за дні непрацездатності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_L_PV" IS 'сума нарахувань за дні непрацездатності, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_CH" IS 'грошове забезпечення батькам-вихователям';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_CH_PV" IS 'грошове забезпечення батькам-вихователям, на яку нараховуються страхові внески';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_SUM_MIL" IS 'заробітна плата особ, які проходять військову службу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_OTK" IS 'Ознака наявності трудової книжки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_EXP" IS 'Ознака наявності спец стажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_PAY_YEAR" IS 'Рік, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_PAY_MNTH" IS 'Місяць, за який проведено нарахування';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_PAY_TP" IS 'Тип нарахувань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_START_DT" IS 'Дата початку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_STOP_DT" IS 'Дата кінця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_ID" IS 'Код запису на аркуші (сіквенс)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_STATE_SRC" IS 'Джерело стану строки звітності';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP4_PAYDATA"."A4PD_CSM" IS 'Ід запису звітів з судовим рішенням';
--------------------------------------------------------
--  DDL for Table SM_APP4_WRKRDATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" 
   (	"AP4W_SLB" NUMBER(14,0), 
	"AP4W_RECNUM" NUMBER(14,0), 
	"AP4W_PAGENUM" NUMBER(14,0), 
	"AP4W_NUMIDENT" VARCHAR2(10), 
	"AP4W_LN" VARCHAR2(30), 
	"AP4W_NM" VARCHAR2(30), 
	"AP4W_FTN" VARCHAR2(30), 
	"AP4W_START_DT" NUMBER(2,0), 
	"AP4W_STOP_DT" NUMBER(2,0), 
	"AP4W_ST" VARCHAR2(1) DEFAULT 'N', 
	"AP4W_PEL" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_APP5_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_1" 
   (	"AP51_SLB" NUMBER(14,0), 
	"AP51_ST" VARCHAR2(1), 
	"AP51_YEAR" NUMBER(4,0), 
	"AP51_NUMIDENT" VARCHAR2(25), 
	"AP51_ADR" VARCHAR2(500), 
	"AP51_TEL" VARCHAR2(100), 
	"AP51_FNUM" NUMBER(2,0), 
	"AP51_SUM" NUMBER(12,2), 
	"AP51_SUM_F" NUMBER(12,2), 
	"AP51_SUM_NV" NUMBER(12,2), 
	"AP51_SUM_V" NUMBER(12,2), 
	"AP51_SUM_A" NUMBER(12,2), 
	"AP51_LN" VARCHAR2(30), 
	"AP51_NM" VARCHAR2(30), 
	"AP51_FTN" VARCHAR2(30), 
	"AP51_REGNUM" VARCHAR2(255), 
	"AP51_FNAME" VARCHAR2(100), 
	"AP51_PEL" NUMBER(14,0)
   ) ;

   COMMENT ON TABLE "IKIS_WEBSM"."SM_APP5_1"  IS 'Таблица 1 Додатка 5 ( apl_tp = 11 в sm_app_list )';
--------------------------------------------------------
--  DDL for Table SM_APP5_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_1DATA" 
   (	"APD51_SLB" NUMBER(14,0), 
	"APD51_MNTH" NUMBER(2,0), 
	"APD51_SUM" NUMBER(12,2), 
	"APD51_SUM_F" NUMBER(12,2), 
	"APD51_SUM_NV" NUMBER(12,2), 
	"APD51_SUM_V" NUMBER(12,2), 
	"APD51_SUM_A" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP5_2
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_2" 
   (	"AP52_SLB" NUMBER(14,0), 
	"AP52_ST" VARCHAR2(1), 
	"AP52_YEAR" NUMBER(4,0), 
	"AP52_NUMIDENT" VARCHAR2(25), 
	"AP52_ADR" VARCHAR2(500), 
	"AP52_TEL" VARCHAR2(100), 
	"AP52_FNUM" NUMBER(2,0), 
	"AP52_TYPE" NUMBER(2,0), 
	"AP52_SUM" NUMBER(12,2), 
	"AP52_SUM_F" NUMBER(12,2), 
	"AP52_SUM_V" NUMBER(12,2), 
	"AP52_LN" VARCHAR2(30), 
	"AP52_NM" VARCHAR2(30), 
	"AP52_FTN" VARCHAR2(30), 
	"AP52_REGNUM" VARCHAR2(255), 
	"AP52_FNAME" VARCHAR2(100), 
	"AP52_PAGE" NUMBER(14,0), 
	"AP52_PAGENUM" NUMBER(14,0), 
	"AP52_PEL" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP5_2"."AP52_TYPE" IS 'Система опадаткування';
--------------------------------------------------------
--  DDL for Table SM_APP5_2DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_2DATA" 
   (	"APD52_SLB" NUMBER(14,0), 
	"APD52_MNTH" NUMBER(2,0), 
	"APD52_SUM" NUMBER(12,2), 
	"APD52_SUM_F" NUMBER(12,2), 
	"APD52_SUM_V" NUMBER(12,2), 
	"APD52_PAGE" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP5_3
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_3" 
   (	"AP53_SLB" NUMBER(14,0), 
	"AP53_ST" VARCHAR2(1), 
	"AP53_YEAR" NUMBER(4,0), 
	"AP53_NUMIDENT" VARCHAR2(25), 
	"AP53_ADR" VARCHAR2(500), 
	"AP53_TEL" VARCHAR2(100), 
	"AP53_SUM" NUMBER(12,2), 
	"AP53_SUM_NV" NUMBER(12,2), 
	"AP53_SUM_V" NUMBER(12,2), 
	"AP53_TYPE_ACT" NUMBER(2,0), 
	"AP53_LN" VARCHAR2(30), 
	"AP53_NM" VARCHAR2(30), 
	"AP53_FTN" VARCHAR2(30), 
	"AP53_REGNUM" VARCHAR2(255), 
	"AP53_FNAME" VARCHAR2(100), 
	"AP53_PEL" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP5_3"."AP53_NUMIDENT" IS 'Номер реєстрації платника';
--------------------------------------------------------
--  DDL for Table SM_APP5_3DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_3DATA" 
   (	"APD53_SLB" NUMBER(14,0), 
	"APD53_MNTH" NUMBER(2,0), 
	"APD53_SUM" NUMBER(12,2), 
	"APD53_SUM_NV" NUMBER(12,2), 
	"APD53_SUM_V" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP5_4
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_4" 
   (	"AP54_SLB" NUMBER(14,0), 
	"AP54_ST" VARCHAR2(1), 
	"AP54_YEAR" NUMBER(4,0), 
	"AP54_NUMIDENT" VARCHAR2(10), 
	"AP54_LN" VARCHAR2(30), 
	"AP54_NM" VARCHAR2(30), 
	"AP54_FTN" VARCHAR2(30), 
	"AP54_INS_NAME" VARCHAR2(100), 
	"AP54_SUM_VP" NUMBER(12,2), 
	"AP54_ZO" NUMBER(2,0), 
	"AP54_ZIC" NUMBER(2,0), 
	"AP54_OTK" VARCHAR2(1), 
	"AP54_FORMTYPE" NUMBER(14,0), 
	"AP54_SUM" NUMBER(12,2), 
	"AP54_SUM_PENS" NUMBER(12,2), 
	"AP54_SUM_INV" NUMBER(12,2), 
	"AP54_SUM_V" NUMBER(12,2), 
	"AP54_PAGE" NUMBER(14,0), 
	"AP54_PAGENUM" NUMBER(14,0), 
	"AP54_PEL" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP5_4"."AP54_ZO" IS 'Код категорії ЗО';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP5_4"."AP54_ZIC" IS 'Код типу ставки страхового внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP5_4"."AP54_OTK" IS 'Ознака наявності трудової книжки';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP5_4"."AP54_FORMTYPE" IS 'Тип форми ( Початкова - 1,  Скасовуюча - 2)';
--------------------------------------------------------
--  DDL for Table SM_APP5_4DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_4DATA" 
   (	"APD54_SLB" NUMBER(14,0), 
	"APD54_MNTH" NUMBER(2,0), 
	"APD54_SUM" NUMBER(12,2), 
	"APD54_SUM_PENS" NUMBER(12,2), 
	"APD54_SUM_INV" NUMBER(12,2), 
	"APD54_SUM_V" NUMBER(12,2), 
	"APD54_PAGE" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP5_5
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_5" 
   (	"AP55_SLB" NUMBER(14,0), 
	"AP55_ST" VARCHAR2(1), 
	"AP55_YEAR" NUMBER(4,0), 
	"AP55_NUMIDENT" VARCHAR2(10), 
	"AP55_LN" VARCHAR2(30), 
	"AP55_NM" VARCHAR2(30), 
	"AP55_FTN" VARCHAR2(30), 
	"AP55_INS_NAME" VARCHAR2(100), 
	"AP55_ZO" NUMBER(2,0), 
	"AP55_ZIC" NUMBER(2,0), 
	"AP55_OTK" VARCHAR2(1), 
	"AP55_FORMTYPE" NUMBER(14,0), 
	"AP55_SUM_VP" NUMBER(12,2), 
	"AP55_SUM" NUMBER(12,2), 
	"AP55_SUM_PENS" NUMBER(12,2), 
	"AP55_SUM_INV" NUMBER(12,2), 
	"AP55_SUM_VID" NUMBER(12,2), 
	"AP55_PAGE" NUMBER(14,0), 
	"AP55_PAGENUM" NUMBER(14,0), 
	"AP55_PEL" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP5_5DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP5_5DATA" 
   (	"APD55_SLB" NUMBER(14,0), 
	"APD55_MNTH" NUMBER(2,0), 
	"APD55_SUM" NUMBER(12,2), 
	"APD55_SUM_PENS" NUMBER(12,2), 
	"APD55_SUM_INV" NUMBER(12,2), 
	"APD55_SUM_VID" NUMBER(12,2), 
	"APD55_PAGE" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP61_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP61_1" 
   (	"APP61_ID" NUMBER(14,0), 
	"APP61_SLB" NUMBER(14,0), 
	"APP61_PAGE" NUMBER(14,0), 
	"APP61_PAGENUM" NUMBER(14,0), 
	"APP61_YEAR" NUMBER(4,0), 
	"APP61_NUMIDENT" VARCHAR2(10), 
	"APP61_LASTNAME" VARCHAR2(100), 
	"APP61_NAME" VARCHAR2(100), 
	"APP61_FATHERNAME" VARCHAR2(100), 
	"APP61_ZO" NUMBER(2,0), 
	"APP61_ZDSS_PFU" VARCHAR2(10) DEFAULT 'N', 
	"APP61_ZDSSTVP_F03" VARCHAR2(10) DEFAULT 'N', 
	"APP61_ZDSSNV_F01" VARCHAR2(10) DEFAULT 'N', 
	"APP61_ZDSSBZ_F02" VARCHAR2(10) DEFAULT 'N', 
	"APP61_SUM_ALL" NUMBER(10,2), 
	"APP61_FORMTYPE" NUMBER(14,0), 
	"APP61_SUM_TOTAL" NUMBER(10,2), 
	"APP61_SUM_V_TOTAL" NUMBER(10,2), 
	"APP61_MONTH_DAY_TOTAL" NUMBER(3,0), 
	"APP61_ST" VARCHAR2(10), 
	"APP61_CHECK" VARCHAR2(10) DEFAULT 'N', 
	"APP61_PEL" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP61_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP61_1DATA" 
   (	"APP61D_ID" NUMBER(14,0), 
	"APP61D_SLB" NUMBER(14,0), 
	"APP61D_APP61" NUMBER(14,0), 
	"APP61D_PAGE" NUMBER(14,0), 
	"APP61D_MONTH" NUMBER(2,0), 
	"APP61D_SUM_PAY" NUMBER(10,2), 
	"APP61D_SUM_V" NUMBER(10,2), 
	"APP61D_MONTH_DT" DATE, 
	"APP61D_MONTH_DAY" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP6_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP6_1" 
   (	"AP61_SLB" NUMBER(14,0), 
	"AP61_ST" VARCHAR2(1), 
	"AP61_YEAR" NUMBER(4,0), 
	"AP61_NUMIDENT" VARCHAR2(10), 
	"AP61_LN" VARCHAR2(30), 
	"AP61_NM" VARCHAR2(30), 
	"AP61_FTN" VARCHAR2(30), 
	"AP61_ZO" NUMBER(2,0), 
	"AP61_ZIC" NUMBER(2,0), 
	"AP61_SUM_INS" NUMBER(12,2), 
	"AP61_START_DT" DATE, 
	"AP61_STOP_DT" DATE, 
	"AP61_DD_ALL" NUMBER(4,0), 
	"AP61_MM_ALL" NUMBER(4,0), 
	"AP61_SUM" NUMBER(12,2), 
	"AP61_SUM_V" NUMBER(12,2), 
	"AP61_D_NUM" NUMBER(14,0), 
	"AP61_FORMTYPE" NUMBER(14,0), 
	"AP61_PEL" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP6_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP6_1DATA" 
   (	"APD61_SLB" NUMBER(14,0), 
	"APD61_MNTH" NUMBER(2,0), 
	"APD61_SUM" NUMBER(12,2), 
	"APD61_SUM_V" NUMBER(12,2), 
	"APD61_D_NUM" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP7_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP7_1" 
   (	"AP71_SLB" NUMBER(14,0), 
	"AP71_ST" VARCHAR2(1), 
	"AP71_NUMIDENT" VARCHAR2(10), 
	"AP71_FORMTYPE" NUMBER(14,0), 
	"AP71_LN" VARCHAR2(100), 
	"AP71_NM" VARCHAR2(100), 
	"AP71_FTN" VARCHAR2(100), 
	"AP71_ZO" NUMBER(2,0), 
	"AP71_ZIC" NUMBER(2,0), 
	"AP71_SUM_INS" NUMBER(12,2), 
	"AP71_START_DT" DATE, 
	"AP71_STOP_DT" DATE, 
	"AP71_DD_ALL" NUMBER(4,0), 
	"AP71_MM_ALL" NUMBER(4,0), 
	"AP71_ZVIT_YEAR" NUMBER(4,0), 
	"AP71_DOP_YEAR" NUMBER(4,0), 
	"AP71_SUM" NUMBER(12,2), 
	"AP71_SUM_PV" NUMBER(12,2), 
	"AP71_SUM_V" NUMBER(12,2), 
	"AP71_D_NUM" NUMBER(14,0), 
	"AP71_PAGE" NUMBER(14,0), 
	"AP71_PAGENUM" NUMBER(14,0), 
	"AP71_PEL" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_ST" IS 'Код стану';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_NUMIDENT" IS 'Номер облікової картки застрахованої особи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_FORMTYPE" IS 'Тип форми';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_LN" IS 'Призвище';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_NM" IS 'Ім''я';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_FTN" IS 'По-батькові';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_ZO" IS 'Код застрахованної особи';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_ZIC" IS 'Код типу  ставки страхового внеску';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_SUM_INS" IS 'Нарахована сума внеску від мінімального розміру заробітку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_START_DT" IS 'Початок періоду отримання допомоги/компенсації у звітному році
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_STOP_DT" IS 'Кінець періоду отримання допомоги/компенсації у звітному році
';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_DD_ALL" IS 'Кількість повних
місяців';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_MM_ALL" IS 'Кількість повних
днів';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_ZVIT_YEAR" IS 'Звітний рік по нарахуванню ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_DOP_YEAR" IS 'Рік, в якому сплачено допомогу/компенсацію';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_SUM" IS 'Усього мінімальний розмір  заробітку (доходу) ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_SUM_PV" IS 'Мінімальний розмір  заробітку (доходу) який враховується  для  пенсії';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_SUM_V" IS 'Сума внеску від мінімального розміру заробітку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_D_NUM" IS 'Усього повних днів для стажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_PAGE" IS 'Номер аркушу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1"."AP71_PAGENUM" IS 'Номер аркушу (редагується)';
--------------------------------------------------------
--  DDL for Table SM_APP7_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP7_1DATA" 
   (	"APD71_SLB" NUMBER(14,0), 
	"APD71_MNTH" NUMBER(2,0), 
	"APD71_SUM" NUMBER(12,2), 
	"APD71_SUM_PV" NUMBER(12,2), 
	"APD71_SUM_V" NUMBER(12,2), 
	"APD71_D_NUM" NUMBER(14,0), 
	"APD71_PAGE" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_SLB" IS 'Код ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_MNTH" IS 'Код місяця';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_SUM" IS 'Мінімальний розмір заробітку (доходу)
встановлений законодавством, усього';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_SUM_PV" IS 'Мінімальний розмір  заробітку (доходу) який враховується  для  пенсії';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_SUM_V" IS 'Сума внеску від мінімального розміру заробітку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_D_NUM" IS 'Усього повних днів для стажу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_APP7_1DATA"."APD71_PAGE" IS 'Номер аркушу';
--------------------------------------------------------
--  DDL for Table SM_APP8_1
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP8_1" 
   (	"AP81_SLB" NUMBER(14,0), 
	"AP81_PAGE" NUMBER(14,0), 
	"AP81_ROWCOUNT" NUMBER(2,0), 
	"AP81_ST" CHAR(1) DEFAULT 'N', 
	"AP81_FORMTYPE" NUMBER(2,0) DEFAULT 1
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP8_1DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP8_1DATA" 
   (	"APD81_SLB" NUMBER(14,0), 
	"APD81_PAGE" NUMBER(14,0), 
	"APD81_ROW" NUMBER(2,0), 
	"APD81_NUMIDENT" VARCHAR2(10), 
	"APD81_FNAME" VARCHAR2(60), 
	"APD81_LNAME" VARCHAR2(60), 
	"APD81_MNAME" VARCHAR2(60), 
	"APD81_OPER" NUMBER(1,0), 
	"APD81_START_DT" DATE, 
	"APD81_END_DT" DATE, 
	"APD81_ST" CHAR(1) DEFAULT 'N', 
	"APD81_PEL" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_APP_LIST
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_APP_LIST" 
   (	"APL_TP" NUMBER(4,0), 
	"APL_SLB" NUMBER(14,0), 
	"APL_PAGES" NUMBER(14,0), 
	"APL_ROWS" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_AREA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_AREA" 
   (	"SAR_ID" NUMBER(14,0), 
	"SAR_NAME" VARCHAR2(64), 
	"SAR_SSA" NUMBER(14,0), 
	"SAR_SNAME" VARCHAR2(64), 
	"SAR_ORG" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_AREA_DATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_AREA_DATA" 
   (	"SAD_ARE" NUMBER, 
	"SAD_CONTENT" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table SM_AREA_SS
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_AREA_SS" 
   (	"SSA_ID" NUMBER(14,0), 
	"SSA_NAME" VARCHAR2(170), 
	"SSA_COMMENT" VARCHAR2(170), 
	"SSA_SS_CODE" VARCHAR2(30)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_CHANGE_STATE
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" 
   (	"SCH_ID" NUMBER(14,0), 
	"SCH_CREATE_DT" DATE, 
	"SCH_START_DT" DATE, 
	"SCH_FINISFH_DT" DATE, 
	"SCH_JB_ID" NUMBER(14,0), 
	"SCH_SLB" NUMBER(14,0), 
	"SCH_NCSS" VARCHAR2(10), 
	"SCH_NCST" VARCHAR2(10)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_ID" IS 'Ід запиту на зміну даних';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_CREATE_DT" IS 'Дата створення запису';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_START_DT" IS 'дата старту виконання звадання';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_FINISFH_DT" IS 'Дата завершення виконання завдання';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_JB_ID" IS 'ід запиту завдання sysweb';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_SLB" IS 'Ід звіту над яким проходить операція';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_NCSS" IS 'код статусу';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE"."SCH_NCST" IS 'Код типу завдань';
   COMMENT ON TABLE "IKIS_WEBSM"."SM_CHANGE_STATE"  IS 'Ручні операції над звітами';
--------------------------------------------------------
--  DDL for Table SM_CHANGE_STATE_AUDIT
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT" 
   (	"SCHA_ID" NUMBER(14,0), 
	"SCHA_SCH" NUMBER(14,0), 
	"SCHA_WU" NUMBER(14,0), 
	"SCHA_USER" VARCHAR2(50), 
	"SCHA_ORG" NUMBER(5,0), 
	"SCHA_PIB" VARCHAR2(255), 
	"SCHA_IP" VARCHAR2(50), 
	"SCHA_REASON" VARCHAR2(4000), 
	"SCHA_DT" DATE
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_ID" IS 'Ід аудиту зміни статусів';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_SCH" IS 'Ід запиту на зміну даних';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_WU" IS 'Ід користувача';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_USER" IS 'Логін користвача';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_ORG" IS 'район коритувача';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_PIB" IS 'Піб коритувача на момент здуйснення операції';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_IP" IS 'Іп адреса';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_REASON" IS 'причина зміни';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"."SCHA_DT" IS 'Дата зміни';
   COMMENT ON TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT"  IS 'Дані аудиту';
--------------------------------------------------------
--  DDL for Table SM_CHANGE_STATE_DETAIL
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" 
   (	"SCHD_ID" NUMBER(14,0), 
	"SCHD_SCH" NUMBER(14,0), 
	"SCHD_NCST" VARCHAR2(10), 
	"SCHD_SLB" NUMBER(14,0), 
	"SCHD_PAGE" NUMBER(14,0), 
	"SCHD_ROW" NUMBER(14,0), 
	"SCHD_PAGE_NUM" NUMBER(14,0), 
	"SCHD_NOTE" VARCHAR2(255), 
	"SCHD_OLD_ST" VARCHAR2(1), 
	"SCHD_NEW_ST" VARCHAR2(1), 
	"SCHD_SYSTEM" NUMBER(1,0), 
	"SCHD_TYPE" NUMBER(2,0), 
	"SCHD_WTD" NUMBER(14,0), 
	"SCHD_TABLE_NAME" VARCHAR2(50)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_ID" IS 'Ід деталів зміни статусів звіту';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_SCH" IS 'Ід запиту на зміну даних';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_NCST" IS 'Код типу завдань';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_SLB" IS 'SLB_ID';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_PAGE" IS 'Ід аркуша';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_ROW" IS 'номер рядку у таблиці фізичний';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_PAGE_NUM" IS 'Номер сторынки для коритувача';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_NOTE" IS 'додаткова інформація';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_OLD_ST" IS 'Старий статус';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_NEW_ST" IS 'Новий статус';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_SYSTEM" IS 'сповмз/есв';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_TYPE" IS 'Тип додатку';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_WTD" IS 'Ід таблиці ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"."SCHD_TABLE_NAME" IS 'Назва таблиці';
   COMMENT ON TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL"  IS 'Датальні дані зміни статусів';
--------------------------------------------------------
--  DDL for Table SM_CONTROL_PROTOCOL
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_CONTROL_PROTOCOL" 
   (	"SCP_ID" NUMBER(14,0), 
	"SCP_SCS" NUMBER(14,0), 
	"SCP_MESSAGE" VARCHAR2(2000), 
	"SCP_NUMBER" VARCHAR2(10), 
	"SCP_TYPE" VARCHAR2(20), 
	"SCP_TS" DATE DEFAULT SYSDATE, 
	"SCP_NOTE" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_CONTROL_SESSION
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_CONTROL_SESSION" 
   (	"SCS_ID" NUMBER(14,0), 
	"SCS_START_DT" DATE, 
	"SCS_STOP_DT" DATE, 
	"SCS_TYPE" VARCHAR2(10), 
	"SCS_ESS_ID" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_DIRTY_REPORT
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_DIRTY_REPORT" 
   (	"SDR_ID" NUMBER(14,0), 
	"SDR_SLB" NUMBER(14,0), 
	"SDR_TP" VARCHAR2(10), 
	"SDR_TS" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table SM_FILEBLOB
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FILEBLOB" 
   (	"SFB_ID" NUMBER(16,0), 
	"SFB_FILENAME" VARCHAR2(255), 
	"SFB_BLOB" BLOB, 
	"SFB_TS" DATE DEFAULT sysdate, 
	"SFB_DT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_FILEBLOB_ECP
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FILEBLOB_ECP" 
   (	"FBE_ID" NUMBER(16,0), 
	"FBE_FILENAME" VARCHAR2(255), 
	"FBE_BLOB" BLOB, 
	"FBE_DT" DATE, 
	"FBE_ORG" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_FILEBLOB_ERR
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FILEBLOB_ERR" 
   (	"ERR_ID" NUMBER(16,0), 
	"ERR_FILENAME" VARCHAR2(255), 
	"ERR_BLOB" BLOB, 
	"ERR_DT" DATE, 
	"ERR_ORG" VARCHAR2(5), 
	"ERR_SLB" NUMBER(16,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_FILEBLOB_TEMP
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FILEBLOB_TEMP" 
   (	"SFB_ID" NUMBER(16,0), 
	"SFB_FILENAME" VARCHAR2(255), 
	"SFB_BLOB" BLOB, 
	"SFB_TS" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table SM_FILECONTENT
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FILECONTENT" 
   (	"FC_ID" NUMBER(14,0), 
	"FC_SLB" NUMBER(14,0), 
	"FC_JB" NUMBER(14,0), 
	"FC_FILENAME" VARCHAR2(255), 
	"FC_PROTOCOL" NUMBER, 
	"FC_TECHPROTO" NUMBER, 
	"FC_VST_ID" NUMBER(14,0), 
	"FC_ZIPFILENAME" VARCHAR2(255), 
	"FC_FILECONTENT_FILE_IDN" VARCHAR2(15), 
	"FC_KVT_FILE_IDN" VARCHAR2(15), 
	"FC_ZIPCONTENT_FILE_IDN" VARCHAR2(15), 
	"FC_CONTENT" BLOB, 
	"FC_KVT" BLOB, 
	"FC_ZIPCONTENT" BLOB
   ) 
 LOB ("FC_CONTENT") STORE AS SECUREFILE "FC_CONTENT"(ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("FC_KVT") STORE AS SECUREFILE "FC_KVT"(ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("FC_ZIPCONTENT") STORE AS SECUREFILE "FC_ZIPCONTENT"(ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_FILECONTENT_CORRUPT_ROW
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FILECONTENT_CORRUPT_ROW" 
   (	"FC_ID" NUMBER(14,0), 
	"FC_SLB" NUMBER(14,0), 
	"FC_CONTENT" BLOB, 
	"FC_JB" NUMBER(14,0), 
	"FC_FILENAME" VARCHAR2(255), 
	"FC_PROTOCOL" NUMBER, 
	"FC_TECHPROTO" NUMBER, 
	"FC_VST_ID" NUMBER(14,0), 
	"FC_KVT" BLOB, 
	"FC_ZIPFILENAME" VARCHAR2(255), 
	"FC_ZIPCONTENT" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table SM_FIX_CONTROLS
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FIX_CONTROLS" 
   (	"SFC_TP" NUMBER, 
	"SFC_NUMBER" VARCHAR2(10), 
	"SFC_TYPE" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_FORM_REP
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_FORM_REP" 
   (	"FR_ID" NUMBER(14,0), 
	"FR_REP_TYPE" VARCHAR2(20), 
	"FR_USER_ID" NUMBER(14,0), 
	"FR_FORM_DT" DATE, 
	"FR_NUMIDENT" VARCHAR2(10), 
	"FR_INCODE" VARCHAR2(5), 
	"FR_REASON" VARCHAR2(250), 
	"FR_NDOC" VARCHAR2(50), 
	"FR_DT" DATE, 
	"FR_IS_REV" VARCHAR2(1) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table SM_INSR2AREA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_INSR2AREA" 
   (	"I2A_IM" NUMBER(14,0), 
	"I2A_SAR" NUMBER(14,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_JOB_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_JOB_LOG" 
   (	"JL_ID" NUMBER, 
	"JL_FILENAME" VARCHAR2(255), 
	"JL_EXCEPTION" VARCHAR2(2000), 
	"JL_MESSAGE" VARCHAR2(255), 
	"JL_TYPE" VARCHAR2(10), 
	"JL_TS" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_KV2_BLACK_LIST
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_KV2_BLACK_LIST" 
   (	"SK2BL_ID" NUMBER, 
	"FILENAME" VARCHAR2(50), 
	"DT" DATE, 
	"GET" NUMBER(1,0) DEFAULT 0, 
	"GET_DT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SM_LIST_FOP_2011
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_LIST_FOP_2011" 
   (	"LF_IM" NUMBER(14,0), 
	"LF_NUMIDENT" VARCHAR2(10), 
	"LF_INCODE" VARCHAR2(5), 
	"LF_ORG_ID" NUMBER(5,0), 
	"LF_MARK" NUMBER(1,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table SM_LOADDATA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_LOADDATA" 
   (	"LD_SLB" NUMBER(14,0), 
	"LD_FILENAME" VARCHAR2(50), 
	"LD_FILETYPE" VARCHAR2(1), 
	"LD_LOAD_DT" DATE, 
	"LD_YEAR" NUMBER(4,0), 
	"LD_MONTH" NUMBER(2,0), 
	"LD_REGNUM" VARCHAR2(25), 
	"LD_NUMIDENT" VARCHAR2(10), 
	"LD_INCODE" VARCHAR2(5), 
	"LD_NAME" VARCHAR2(255), 
	"LD_REG_DT" DATE, 
	"LD_PAY_DT" DATE, 
	"LD_CODE" VARCHAR2(5), 
	"LD_ZIPFILENAME" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_LOAD_FILE_VERSION
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_LOAD_FILE_VERSION" 
   (	"LFV_SLB_ID" NUMBER, 
	"LFV_VERSION" VARCHAR2(255), 
	"LFV_SOFTWARE" VARCHAR2(255), 
	"LFV_TS" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SM_LOAD_KVT
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_LOAD_KVT" 
   (	"LK_SLB" NUMBER, 
	"LK_MESSAGE" VARCHAR2(2000), 
	"LK_ORDER1" NUMBER, 
	"LK_ORDER2" NUMBER, 
	"LK_TYPE" VARCHAR2(10) DEFAULT 'SUCCESS'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_LOAD_NOINSUR
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_LOAD_NOINSUR" 
   (	"SLN_ID" NUMBER(14,0), 
	"SLN_TS" DATE, 
	"SLN_FILENAME" VARCHAR2(255), 
	"SLN_BLOB" BLOB, 
	"SLN_KVT" VARCHAR2(4000)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_LOAD_TAB_ERROR_LOG
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_LOAD_TAB_ERROR_LOG" 
   (	"LTE_SLB_ID" NUMBER, 
	"LTE_FILE_NAME" VARCHAR2(50), 
	"LTE_EXCEPTION" VARCHAR2(255), 
	"LTE_TS" DATE DEFAULT sysdate
   ) ;

   COMMENT ON TABLE "IKIS_WEBSM"."SM_LOAD_TAB_ERROR_LOG"  IS 'Журнал помилок, які виникли при завантаженні таблиць з файлів';
--------------------------------------------------------
--  DDL for Table SM_MASS_RELOAD
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_MASS_RELOAD" 
   (	"SLB" NUMBER, 
	"TS" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table SM_MASS_RELOAD_26
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_MASS_RELOAD_26" 
   (	"SLB_ORG" NUMBER, 
	"SLB_ID_IN" NUMBER, 
	"SLB_ID" NUMBER, 
	"FILE_RELOADED" VARCHAR2(1)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_MESSAGES2
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_MESSAGES2" 
   (	"MSG" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL" 
   (	"SLB_ID" NUMBER(14,0), 
	"SLB_IM" NUMBER(14,0), 
	"SLB_ID_IN" NUMBER(14,0), 
	"SLB_ID_OUT" VARCHAR2(255), 
	"SLB_DT_OUT" DATE, 
	"SLB_DT_IN" DATE DEFAULT trunc(sysdate), 
	"SLB_BOSS_NUMIDENT" VARCHAR2(10), 
	"SLB_BOSS_PIB" VARCHAR2(90), 
	"SLB_ACC_NUMIDENT" VARCHAR2(10), 
	"SLB_ACC_PIB" VARCHAR2(90), 
	"SLB_RESPONS_NUMIDENT" VARCHAR2(10), 
	"SLB_RESPONS_PIB" VARCHAR2(90), 
	"SLB_ST" VARCHAR2(1) DEFAULT 'N', 
	"SLB_CHARG_MNTH" NUMBER(2,0), 
	"SLB_CHARG_YEAR" NUMBER(4,0), 
	"SLB_TYPE" NUMBER(2,0), 
	"SLB_ORG" NUMBER(5,0), 
	"SLB_SRC" VARCHAR2(1), 
	"SLB_CNTRL_ST" VARCHAR2(1), 
	"SLB_FIXED" VARCHAR2(10) DEFAULT 'N', 
	"SLB_LASTPROTOCOL" NUMBER, 
	"SLB_WU" NUMBER, 
	"SLB_EXTENDED" VARCHAR2(1) DEFAULT 'N', 
	"SLB_IS_ADD_REP" VARCHAR2(10) DEFAULT 'N', 
	"SLB_USER_FIX" NUMBER(14,0), 
	"SLB_DT_FIX" DATE, 
	"SLB_ACTUALITY" VARCHAR2(10) DEFAULT 'N', 
	"SLB_SCS" NUMBER, 
	"SLB_DT_UNFIX" DATE, 
	"SLB_WU_UNFIX" NUMBER(14,0), 
	"SLB_DT_UNFIX1" DATE, 
	"SLB_DT_UNFIX5" DATE, 
	"SLB_DT_FIX14" DATE, 
	"SLB_NN_DGV" VARCHAR2(255), 
	"SLB_DT_DGV" DATE, 
	"SLB_START_DT" DATE, 
	"SLB_END_DT" DATE, 
	"SLB_DOP_DT" DATE, 
	"SLB_IS_CORRECT" VARCHAR2(10), 
	"SLB_SYSTEM" NUMBER(2,0) DEFAULT 0, 
	"SM_UNLOAD_DT" DATE, 
	"SLB_PARAMS_1" VARCHAR2(100), 
	"SLB_PARAMS_2" VARCHAR2(100), 
	"SLB_FIRM_ADR" VARCHAR2(255), 
	"SLB_FIRM_PHON" VARCHAR2(100), 
	"SLB_TERMINATE_DGV_DT" DATE, 
	"SLB_ORG_MDZU" NUMBER(14,0), 
	"SLB_SRC_MASTER" VARCHAR2(10), 
	"SLB_IS_SK" VARCHAR2(1)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ID" IS 'Ід ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_IM" IS 'Ід страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ID_IN" IS 'Вхідний номер у ПФУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ID_OUT" IS 'Вихідний № у страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_DT_OUT" IS 'Вихідна дата у страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_DT_IN" IS 'Вхідна дата у ПФУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_BOSS_NUMIDENT" IS 'ОКЗО керівника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_BOSS_PIB" IS 'ПІБ керівника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ACC_NUMIDENT" IS 'ОКЗО бухгалтера';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ACC_PIB" IS 'ПІБ бухгалтера';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_RESPONS_NUMIDENT" IS 'ОКЗО відповідального';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_RESPONS_PIB" IS 'ПІБ відповідального';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ST" IS 'Статус ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_CHARG_MNTH" IS 'Звітний місяць';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_CHARG_YEAR" IS 'Звітний рік';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_TYPE" IS 'Тип додатку. Довідник довідників 2007';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ORG" IS 'Орган ПФУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_SRC" IS 'Джерело ярлика (M-ручний, E-електронна пачка, S-електронна пачка з ЕЦП)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_FIXED" IS 'Ознака фіксації Y/N';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_WU" IS 'Ід коритувача що створив (можливо редагував ярлик)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_IS_ADD_REP" IS 'Ознака "Додатковий звіт"';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_USER_FIX" IS 'Ід користувача, що зафіксував звіт';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_DT_FIX" IS 'Дата фіксації ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ACTUALITY" IS 'Признак "Актуальний". В интерфейсе не показывается. Y/N';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_SCS" IS 'Ід сеансу останього контролю ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_DT_UNFIX" IS 'Дата розвіксаціх ярлика';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_WU_UNFIX" IS 'Ід користувача що розфіксував';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_NN_DGV" IS 'Номер договору';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_DT_DGV" IS '  Дата укладання договор';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_START_DT" IS 'Дата початку дії договору';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_END_DT" IS 'Дата кінця дії договору';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_DOP_DT" IS 'Дата здійснення сплати (додаток 6, 6-1)';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_IS_CORRECT" IS 'Ознака "Коригуючий/скасовуючий звіт"';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_SYSTEM" IS 'Система ЄСВ-1 СПОВ-МЗ-0';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SM_UNLOAD_DT" IS 'Чи вивантажувавя ярлик фондам';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_PARAMS_1" IS 'Додаток 6, 6-1 Сплата внесків за попередній період з';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_PARAMS_2" IS 'Додаток 6, 6-1 Сплата внесків за попередній період  по';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_FIRM_ADR" IS 'Адреса страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_FIRM_PHON" IS 'Телефон страхувальника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_TERMINATE_DGV_DT" IS 'Дата розірвання договору';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_ORG_MDZU" IS 'Код органу МДЗУ';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL"."SLB_SRC_MASTER" IS 'Орган до якого подано звіт (PFU/MDZU)';
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_2010
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_2010" 
   (	"SLB_ID" NUMBER(14,0), 
	"SLB_IM" NUMBER(14,0), 
	"ORG_ID" NUMBER(5,0), 
	"ORG_ORG" NUMBER(5,0), 
	"CH_YEAR" NUMBER(4,0), 
	"CH_MNTH" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_ADD
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" 
   (	"SLBA_ID" NUMBER(14,0), 
	"SLBA_ORD_NO" VARCHAR2(20), 
	"SLBA_ORD_DT" DATE, 
	"SLBA_ORD_REG_DT" DATE DEFAULT sysdate, 
	"SLBA_SIGN_PIB" VARCHAR2(100), 
	"SLBA_SIGN_POST" VARCHAR2(50), 
	"SLBA_INSP_PIB" VARCHAR2(100), 
	"SLBA_INSUR_NUMIDENT" VARCHAR2(10), 
	"SLBA_INSUR_INCODE" VARCHAR2(5), 
	"SLBA_INSUR_IM" NUMBER(14,0), 
	"SLBA_INSUR_NAME1" VARCHAR2(500), 
	"SLBA_ST" VARCHAR2(1) DEFAULT 'N', 
	"SLBA_PARAM1_NO" VARCHAR2(100), 
	"SLBA_PARAM1_DT" DATE, 
	"SLBA_PARAM2_NO" VARCHAR2(100), 
	"SLBA_PARAM2_DT" DATE, 
	"SLBA_SUM_TOT_INCR" NUMBER(10,2), 
	"SLBA_SUM_TOT_DECR" NUMBER(10,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_EXTEND
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" 
   (	"SPE_ID" NUMBER(14,0), 
	"SPE_IH" NUMBER(14,0), 
	"SPE_CHARG_DATE" DATE, 
	"SPE_MRD_REG_CODE" NUMBER(2,0), 
	"SPE_NUMIDENT" VARCHAR2(10), 
	"SPE_ORG_MDZU_XML" NUMBER(4,0), 
	"SPE_SUCCESSOR_NUMIDENT" VARCHAR2(10), 
	"SPE_SUCCESSOR_IM" NUMBER(14,0), 
	"SPE_FORM_TYPE" NUMBER(1,0), 
	"SPE_MRD_ORG_SEND" NUMBER(4,0), 
	"SPE_PACKTYPE_VER" VARCHAR2(2), 
	"SPE_SLB_DEPENDENCIES" NUMBER(14,0), 
	"SPE_NDDT" NUMBER(14,0), 
	"SPE_REPORT_OWNER_SRC" NUMBER(1,0), 
	"SPE_DFS_IN_DT" DATE, 
	"SPE_KVT_CODE" VARCHAR2(3), 
	"SPE_HTINPF" VARCHAR2(10), 
	"SPE_KVED" VARCHAR2(7), 
	"SPE_STATE_REG_TERM_DT" DATE, 
	"SPE_SUCCESSOR_INCODE" VARCHAR2(10), 
	"SPE_REPORTNUM" NUMBER(14,0)
   ) ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL_EXTEND"."SPE_SUCCESSOR_INCODE" IS 'Філія правонаступника';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL_EXTEND"."SPE_REPORTNUM" IS 'Номер звіту в періоді';
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_KPR
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_KPR" 
   (	"KPR_SLB_ID" NUMBER(14,0), 
	"KPR_YEAR" NUMBER(4,0), 
	"KPR_MNTH" NUMBER(2,0), 
	"KPR_SLB_ID_IN" NUMBER(14,0), 
	"KPR_ORG_ID" NUMBER(5,0), 
	"KPR_ORG_ORG" NUMBER(5,0), 
	"KPR_PR_CODE" NUMBER(2,0), 
	"KPR_PR_TAX" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_KVED
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_KVED" 
   (	"PKV_SLB_ID" NUMBER(14,0), 
	"PKV_MNTH" NUMBER(2,0), 
	"PKV_YEAR" NUMBER(4,0), 
	"PKV_SLB_ID_IN" NUMBER(14,0), 
	"PKV_ORG_ID" NUMBER(5,0), 
	"PKV_ORG_ORG" NUMBER(5,0), 
	"PKV_IM" NUMBER(14,0), 
	"PKV_ECO_ACT" VARCHAR2(30), 
	"PKV_KVED" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_O
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" 
   (	"SLB_ID" NUMBER(14,0), 
	"SLB_IM" NUMBER(14,0), 
	"SLB_ID_IN" NUMBER(14,0), 
	"SLB_ID_OUT" VARCHAR2(255), 
	"SLB_DT_OUT" DATE, 
	"SLB_DT_IN" DATE DEFAULT trunc(sysdate), 
	"SLB_BOSS_NUMIDENT" VARCHAR2(10), 
	"SLB_BOSS_PIB" VARCHAR2(90), 
	"SLB_ACC_NUMIDENT" VARCHAR2(10), 
	"SLB_ACC_PIB" VARCHAR2(90), 
	"SLB_RESPONS_NUMIDENT" VARCHAR2(10), 
	"SLB_RESPONS_PIB" VARCHAR2(90), 
	"SLB_ST" VARCHAR2(1) DEFAULT 'N', 
	"SLB_CHARG_MNTH" NUMBER(2,0), 
	"SLB_CHARG_YEAR" NUMBER(4,0), 
	"SLB_TYPE" NUMBER(2,0), 
	"SLB_ORG" NUMBER(5,0), 
	"SLB_SRC" VARCHAR2(1), 
	"SLB_CNTRL_ST" VARCHAR2(1), 
	"SLB_FIXED" VARCHAR2(10) DEFAULT 'N', 
	"SLB_LASTPROTOCOL" NUMBER, 
	"SLB_WU" NUMBER, 
	"SLB_EXTENDED" VARCHAR2(1) DEFAULT 'N', 
	"SLB_IS_ADD_REP" VARCHAR2(10) DEFAULT 'N', 
	"SLB_USER_FIX" NUMBER(14,0), 
	"SLB_DT_FIX" DATE, 
	"SLB_ACTUALITY" VARCHAR2(10) DEFAULT 'N', 
	"SLB_SCS" NUMBER, 
	"SLB_DT_UNFIX" DATE, 
	"SLB_WU_UNFIX" NUMBER(14,0), 
	"SLB_DT_UNFIX1" DATE, 
	"SLB_DT_UNFIX5" DATE, 
	"SLB_DT_FIX14" DATE, 
	"SLB_NN_DGV" VARCHAR2(255), 
	"SLB_DT_DGV" DATE, 
	"SLB_START_DT" DATE, 
	"SLB_END_DT" DATE, 
	"SLB_DOP_DT" DATE, 
	"SLB_IS_CORRECT" VARCHAR2(10), 
	"SLB_SYSTEM" NUMBER(2,0) DEFAULT 0, 
	"SM_UNLOAD_DT" DATE, 
	"SLB_PARAMS_1" VARCHAR2(100), 
	"SLB_PARAMS_2" VARCHAR2(100), 
	"SLB_FIRM_ADR" VARCHAR2(255), 
	"SLB_FIRM_PHON" VARCHAR2(100), 
	"SLB_TERMINATE_DGV_DT" DATE, 
	"SLB_ORG_MDZU" NUMBER(14,0), 
	"SLB_SRC_MASTER" VARCHAR2(10)
   )  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL_O"."SLB_IS_ADD_REP" IS 'Ознака "Додатковий звіт"';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL_O"."SLB_ACTUALITY" IS 'Признак "Актуальний". В интерфейсе не показывается.';
   COMMENT ON COLUMN "IKIS_WEBSM"."SM_PACKLABEL_O"."SLB_TERMINATE_DGV_DT" IS 'Дата розірвання договору';
--------------------------------------------------------
--  DDL for Table SM_PACKLABEL_TEMP
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PACKLABEL_TEMP" 
   (	"CODE_OPER" NUMBER(14,0), 
	"SLB_ID" NUMBER(14,0), 
	"SLB_ID_IN" NUMBER(14,0), 
	"SLB_ORG" NUMBER(5,0), 
	"SLB_PARAMS_1" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_PENS_REPORT
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_PENS_REPORT" 
   (	"SPR_ID" NUMBER, 
	"SPR_NUMIDENT" VARCHAR2(10), 
	"SPR_ALL_SUM" NUMBER(12,2), 
	"SPR_INCOME_SUM" NUMBER(12,2) DEFAULT 0, 
	"SPR_WORK_COUNT" NUMBER DEFAULT 0
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table SM_SUPPORT_PFU
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_SUPPORT_PFU" 
   (	"SP_USER_ID" NUMBER, 
	"SP_DT" DATE, 
	"SP_CODE_OPER" NUMBER, 
	"SP_SLB_ID" NUMBER, 
	"SP_FIXED_OLD" VARCHAR2(5), 
	"SP_ACTUALITY_OLD" VARCHAR2(5), 
	"SP_ST_OLD" VARCHAR2(5), 
	"SP_FIXED_NEW" VARCHAR2(5), 
	"SP_ACTUALITY_NEW" VARCHAR2(5), 
	"SP_ST_NEW" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_TYPE5_PERIOD
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_TYPE5_PERIOD" 
   (	"STP_ID" NUMBER(14,0), 
	"STP_SPE" NUMBER(14,0), 
	"STP_NTTT" NUMBER(14,0), 
	"STP_START_DT" DATE, 
	"STP_STOP_DT" DATE, 
	"STP_RN" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SM_USR2AREA
--------------------------------------------------------

  CREATE TABLE "IKIS_WEBSM"."SM_USR2AREA" 
   (	"U2A_SAR" NUMBER(14,0), 
	"U2A_WU" NUMBER(14,0)
   ) ;
--------------------------------------------------------
--  Constraints for Table SM_ANNOUNCEMENT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" ADD CONSTRAINT "PK_ANN_ID" PRIMARY KEY ("ANN_ID")
  USING INDEX "IKIS_WEBSM"."PK_ANN_ID"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_PRIORITY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_LAST_EDIT_TIME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_BODY" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_ANNOUNCEMENT" MODIFY ("ANN_WU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_1" ADD CONSTRAINT "PK_APE4_1_SLB" PRIMARY KEY ("APE1_SLB")
  USING INDEX "IKIS_WEBSM"."PK_APE4_1_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_1" MODIFY ("APE1_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_2" ADD CONSTRAINT "PK_APE4_2_SLB" PRIMARY KEY ("APE42_SLB")
  USING INDEX "IKIS_WEBSM"."PK_APE4_2_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_2" MODIFY ("APE42_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_3" ADD CONSTRAINT "PK_APE4_3_SLB" PRIMARY KEY ("APE43_SLB")
  USING INDEX "IKIS_WEBSM"."PK_APE4_3_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_3" MODIFY ("APE43_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_4" ADD CONSTRAINT "PK_APE4_4_SLB" PRIMARY KEY ("APE44_SLB")
  USING INDEX "IKIS_WEBSM"."PK_APE4_4_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_4" MODIFY ("APE44_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5" ADD CONSTRAINT "PK_APE4_5_SLB" PRIMARY KEY ("APE45_SLB", "APE45_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_APE4_5_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5" MODIFY ("APE45_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5" MODIFY ("APE45_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_5DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "PK_APE4_5DATA_SLB" PRIMARY KEY ("APED45_SLB", "APED45_PAGE", "APED45_RECNUM")
  USING INDEX "IKIS_WEBSM"."PK_APE4_5DATA_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" MODIFY ("APED45_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" MODIFY ("APED45_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" MODIFY ("APED45_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" MODIFY ("APED45_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_6
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6" ADD CONSTRAINT "PK_APE4_6_SLB" PRIMARY KEY ("APE46_SLB", "APE46_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_APE4_6_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6" MODIFY ("APE46_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6" MODIFY ("APE46_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_6DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "SMAPED46P_PK_SLB_PAGE_RNUM" PRIMARY KEY ("APED46_SLB", "APED46_PAGE", "APED46_RECNUM")
  USING INDEX "IKIS_WEBSM"."SMAPED46P_PK_SLB_PAGE_RNUM"  ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" MODIFY ("APED46_ST" NOT NULL ENABLE NOVALIDATE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_6DATA_KPR
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA_KPR" MODIFY ("APED46_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA_KPR" MODIFY ("APED46_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA_KPR" MODIFY ("APED46_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA_KPR" MODIFY ("APED46_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_7
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7" ADD CONSTRAINT "PK_APE4_7_SLB" PRIMARY KEY ("APE47_SLB", "APE47_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_APE4_7_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7" MODIFY ("APE47_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7" MODIFY ("APE47_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_7DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "PK_APE4_7DATA_SLB" PRIMARY KEY ("APED47_SLB", "APED47_PAGE", "APED47_RECNUM")
  USING INDEX "IKIS_WEBSM"."PK_APE4_7DATA_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" MODIFY ("APED47_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" MODIFY ("APED47_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" MODIFY ("APED47_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" MODIFY ("APED47_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_8
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" ADD CONSTRAINT "PK_APE4_8_SLB" PRIMARY KEY ("APE48_SLB", "APE48_TP", "APE48_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_APE4_8_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" MODIFY ("APE48_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" MODIFY ("APE48_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" MODIFY ("APE48_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE4_8DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "PK_APE4_8DATA_SLB" PRIMARY KEY ("APED48_SLB", "APED48_TP", "APED48_PAGE", "APED48_RECNUM")
  USING INDEX "IKIS_WEBSM"."PK_APE4_8DATA_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" MODIFY ("APED48_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" MODIFY ("APED48_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" MODIFY ("APED48_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" MODIFY ("APED48_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" MODIFY ("APED48_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1" ADD CONSTRAINT "PK_SM_APE51" PRIMARY KEY ("APE51_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE51"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1" MODIFY ("APE51_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1_DATA" ADD CONSTRAINT "PK_SM_APED51" PRIMARY KEY ("APED51_SLB", "APED51_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED51"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1_DATA" MODIFY ("APED51_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2" ADD CONSTRAINT "PK_SM_APE52" PRIMARY KEY ("APE52_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE52"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2" MODIFY ("APE52_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2_DATA" ADD CONSTRAINT "PK_SM_APED52" PRIMARY KEY ("APED52_SLB", "APED52_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED52"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2_DATA" MODIFY ("APED52_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3" ADD CONSTRAINT "PK_SM_APE53" PRIMARY KEY ("APE53_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE53"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3" MODIFY ("APE53_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_3_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3_DATA" ADD CONSTRAINT "PK_SM_APED53" PRIMARY KEY ("APED53_SLB", "APED53_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED53"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3_DATA" MODIFY ("APED53_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4" ADD CONSTRAINT "PK_SM_APE54" PRIMARY KEY ("APE54_SLB", "APE54_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE54"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4" MODIFY ("APE54_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_4_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4_DATA" ADD CONSTRAINT "PK_SM_APED54" PRIMARY KEY ("APED54_SLB", "APED54_PAGE", "APED54_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED54"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4_DATA" MODIFY ("APED54_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5" ADD CONSTRAINT "PK_SM_APE55" PRIMARY KEY ("APE55_SLB", "APE55_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE55"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5" MODIFY ("APE55_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_5_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5_DATA" ADD CONSTRAINT "PK_SM_APED55" PRIMARY KEY ("APED55_SLB", "APED55_PAGE", "APED55_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED55"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5_DATA" MODIFY ("APED55_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_6
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6" ADD CONSTRAINT "PK_SM_APE56" PRIMARY KEY ("APE56_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE56"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6" MODIFY ("APE56_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE5_6_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6_DATA" ADD CONSTRAINT "PK_SM_APED56" PRIMARY KEY ("APED56_SLB", "APED56_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED56"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6_DATA" MODIFY ("APED56_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" ADD CONSTRAINT "PK_SM_APE61" PRIMARY KEY ("APE61_SLB", "APE61_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE61"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" MODIFY ("APE61_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" MODIFY ("APE61_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" MODIFY ("APE61_NUMIDENT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" MODIFY ("APE61_CHECK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" ADD CONSTRAINT "PK_SM_APED61" PRIMARY KEY ("APED61_SLB", "APED61_MONTH", "APED61_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED61"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" MODIFY ("APED61_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" MODIFY ("APED61_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" MODIFY ("APED61_MONTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" MODIFY ("APED61_YEAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" ADD CONSTRAINT "PK_SM_APE62" PRIMARY KEY ("APE62_SLB", "APE62_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE62"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" MODIFY ("APE62_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" MODIFY ("APE62_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" MODIFY ("APE62_PAGENUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" MODIFY ("APE62_NUMIDENT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" MODIFY ("APE62_CHECK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" ADD CONSTRAINT "PK_SM_APED62" PRIMARY KEY ("APED62_ID")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED62"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" MODIFY ("APED62_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" MODIFY ("APED62_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" MODIFY ("APED62_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" MODIFY ("APED62_MONTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" MODIFY ("APED62_YEAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" ADD CONSTRAINT "PK_SM_APE63" PRIMARY KEY ("APE63_SLB", "APE63_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE63"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" MODIFY ("APE63_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" MODIFY ("APE63_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" MODIFY ("APE63_NUMIDENT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" MODIFY ("APE63_CHECK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_3_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" ADD CONSTRAINT "PK_SM_APED63" PRIMARY KEY ("APED63_ID")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED63"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" MODIFY ("APED63_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" MODIFY ("APED63_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" MODIFY ("APED63_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" MODIFY ("APED63_MONTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" MODIFY ("APED63_YEAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" ADD CONSTRAINT "PK_SM_APE64" PRIMARY KEY ("APE64_SLB", "APE64_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE64"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" MODIFY ("APE64_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" MODIFY ("APE64_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" MODIFY ("APE64_NUMIDENT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" MODIFY ("APE64_CHECK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE6_4_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" ADD CONSTRAINT "PK_SM_APED64" PRIMARY KEY ("APED64_ID")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED64"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" MODIFY ("APED64_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" MODIFY ("APED64_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" MODIFY ("APED64_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" MODIFY ("APED64_MONTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" MODIFY ("APED64_YEAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE7_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" ADD CONSTRAINT "PK_SM_APE71" PRIMARY KEY ("APE71_SLB", "APE71_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APE71"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" MODIFY ("APE71_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" MODIFY ("APE71_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APE7_1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" ADD CONSTRAINT "PK_SM_APED71" PRIMARY KEY ("APED71_ID")
  USING INDEX "IKIS_WEBSM"."PK_SM_APED71"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" MODIFY ("APED71_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" MODIFY ("APED71_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" MODIFY ("APED71_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" MODIFY ("APED71_MONTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" MODIFY ("APED71_YEAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP12_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1" MODIFY ("APP12_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1" ADD CONSTRAINT "XPK_SM_APP12_1" PRIMARY KEY ("APP12_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_APP12_1"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_APP12_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" ADD CONSTRAINT "CHK_SM_APP12_1DATA_CONTR_ST" CHECK (APP12D_CONTR_ST in ('U','A','D')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" ADD CONSTRAINT "CHK_SM_APP12_1DATA_OPR" CHECK (APP12D_OPR in ('L','R','S','M')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" MODIFY ("APP12D_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" ADD CONSTRAINT "XPK_SM_APP12_1DATA" PRIMARY KEY ("APP12D_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_APP12_1DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_APP30_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" ADD CONSTRAINT "CHK_SM_APP30_1_ST" CHECK (app301_st in ('N','G', 'X', 'O')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" MODIFY ("APP301_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" MODIFY ("APP301_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" ADD CONSTRAINT "XPK_SM_APP30_1" PRIMARY KEY ("APP301_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_APP30_1"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_APP30_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1DATA" ADD CONSTRAINT "CHK_SM_APP30_1DATA_ST" CHECK (app301d_st in ('N','G', 'X', 'O')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1DATA" MODIFY ("APP301D_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1DATA" MODIFY ("APP301D_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1DATA" ADD CONSTRAINT "XPK_SM_APP30_1DATA" PRIMARY KEY ("APP301D_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_APP30_1DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_APP4_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1" ADD CONSTRAINT "PK_SM_APP1" PRIMARY KEY ("AP1_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP1"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1" MODIFY ("AP1_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_1D2DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1D2DATA" ADD CONSTRAINT "PK_SM_APP4_1D2DATA" PRIMARY KEY ("A4A2_SLB", "A4A2_MNTH", "A4A2_ID")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP4_1D2DATA"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1D2DATA" MODIFY ("A4A2_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1D2DATA" MODIFY ("A4A2_MNTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_2" ADD CONSTRAINT "PK_SM_APP42" PRIMARY KEY ("AP42_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP42"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_2" MODIFY ("AP42_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_2" MODIFY ("AP42_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_3" ADD CONSTRAINT "PK_SM_APP4_3" PRIMARY KEY ("AP43_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP4_3"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_3" MODIFY ("AP43_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_3" MODIFY ("AP43_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_4" ADD CONSTRAINT "PK_SM_APP4_4" PRIMARY KEY ("AP44_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP4_4"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_4" MODIFY ("AP44_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_5" ADD CONSTRAINT "PK_SM_APP4_5" PRIMARY KEY ("AP45_SLB", "AP45_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP4_5"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_5" MODIFY ("AP45_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_5" MODIFY ("AP45_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_6
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" ADD CONSTRAINT "PK_SM_APP4_6" PRIMARY KEY ("AP4_SLB", "AP4_TP", "AP4_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP4_6"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" MODIFY ("AP4_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" MODIFY ("AP4_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" MODIFY ("AP4_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" MODIFY ("AP4_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_8
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8" ADD CONSTRAINT "PK_SM_APP4_8" PRIMARY KEY ("AP48_SLB", "AP48_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP4_8"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8" MODIFY ("AP48_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8" MODIFY ("AP48_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_8DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" ADD CONSTRAINT "PK_APP4_8D_SLB" PRIMARY KEY ("A48D_SLB", "A48D_PAGE", "A48D_RECNUM")
  USING INDEX "IKIS_WEBSM"."PK_APP4_8D_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" MODIFY ("A48D_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" MODIFY ("A48D_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" MODIFY ("A48D_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" MODIFY ("A48_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_DIV3DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_DIV3DATA" ADD CONSTRAINT "PK_APP4_1DATA" PRIMARY KEY ("A43D_SLB", "A43D_MNTH", "A43D_ID")
  USING INDEX "IKIS_WEBSM"."PK_APP4_1DATA"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_DIV3DATA" MODIFY ("A43D_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_DIV3DATA" MODIFY ("A43D_MNTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_PAYDATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" ADD CONSTRAINT "PK_APP4_PD_SLB" PRIMARY KEY ("A4PD_SLB", "A4PD_TP", "A4PD_PAGE", "A4PD_RECNUM")
  USING INDEX "IKIS_WEBSM"."PK_APP4_PD_SLB"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" MODIFY ("A4PD_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" MODIFY ("A4PD_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" MODIFY ("A4PD_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" MODIFY ("A4PD_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" MODIFY ("A4PD_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" MODIFY ("A4PD_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP4_WRKRDATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" ADD CONSTRAINT "PK_AP4WRKRDATA" PRIMARY KEY ("AP4W_SLB", "AP4W_PAGENUM", "AP4W_RECNUM")
  USING INDEX "IKIS_WEBSM"."PK_AP4WRKRDATA"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" MODIFY ("AP4W_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" MODIFY ("AP4W_RECNUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" MODIFY ("AP4W_PAGENUM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" MODIFY ("AP4W_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1" ADD CONSTRAINT "PK_SM_APP51" PRIMARY KEY ("AP51_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP51"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1" MODIFY ("AP51_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1DATA" ADD CONSTRAINT "PK_SM_APD51" PRIMARY KEY ("APD51_SLB", "APD51_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD51"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1DATA" MODIFY ("APD51_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1DATA" MODIFY ("APD51_MNTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2" ADD CONSTRAINT "PK_SM_APP52" PRIMARY KEY ("AP52_SLB", "AP52_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP52"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2" MODIFY ("AP52_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_2DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2DATA" ADD CONSTRAINT "PK_SM_APD52" PRIMARY KEY ("APD52_SLB", "APD52_PAGE", "APD52_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD52"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2DATA" MODIFY ("APD52_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2DATA" MODIFY ("APD52_MNTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3" ADD CONSTRAINT "PK_SM_APP53" PRIMARY KEY ("AP53_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP53"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3" MODIFY ("AP53_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_3DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3DATA" ADD CONSTRAINT "PK_SM_APD53" PRIMARY KEY ("APD53_SLB", "APD53_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD53"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3DATA" MODIFY ("APD53_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3DATA" MODIFY ("APD53_MNTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4" ADD CONSTRAINT "PK_SM_APP54" PRIMARY KEY ("AP54_SLB", "AP54_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP54"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4" MODIFY ("AP54_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4" MODIFY ("AP54_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_4DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4DATA" ADD CONSTRAINT "PK_SM_APD54" PRIMARY KEY ("APD54_SLB", "APD54_MNTH", "APD54_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD54"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4DATA" MODIFY ("APD54_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4DATA" MODIFY ("APD54_MNTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4DATA" MODIFY ("APD54_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5" ADD CONSTRAINT "PK_SM_APP55" PRIMARY KEY ("AP55_SLB", "AP55_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP55"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5" MODIFY ("AP55_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5" MODIFY ("AP55_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP5_5DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5DATA" ADD CONSTRAINT "PK_SM_APD55" PRIMARY KEY ("APD55_SLB", "APD55_MNTH", "APD55_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD55"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5DATA" MODIFY ("APD55_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5DATA" MODIFY ("APD55_MNTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5DATA" MODIFY ("APD55_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP61_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" ADD CONSTRAINT "CHK_SM_APP61_1_ST" CHECK (app61_st in ('N','G', 'X', 'O')) ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" MODIFY ("APP61_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" MODIFY ("APP61_ZDSS_PFU" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" MODIFY ("APP61_ZDSSTVP_F03" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" MODIFY ("APP61_ZDSSNV_F01" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" MODIFY ("APP61_ZDSSBZ_F02" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" MODIFY ("APP61_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" ADD CONSTRAINT "XPK_SM_APP61_1" PRIMARY KEY ("APP61_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_APP61_1"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_APP61_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1DATA" MODIFY ("APP61D_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1DATA" ADD CONSTRAINT "XPK_SM_APP61_1DATA" PRIMARY KEY ("APP61D_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_APP61_1DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_APP6_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1" ADD CONSTRAINT "PK_SM_APP61" PRIMARY KEY ("AP61_SLB")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP61"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1" MODIFY ("AP61_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP6_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1DATA" ADD CONSTRAINT "PK_SM_APD61" PRIMARY KEY ("APD61_SLB", "APD61_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD61"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1DATA" MODIFY ("APD61_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1DATA" MODIFY ("APD61_MNTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP7_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1" ADD CONSTRAINT "PK_SM_APP71" PRIMARY KEY ("AP71_SLB", "AP71_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP71"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1" MODIFY ("AP71_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1" MODIFY ("AP71_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP7_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1DATA" ADD CONSTRAINT "PK_SM_APD71" PRIMARY KEY ("APD71_SLB", "APD71_PAGE", "APD71_MNTH")
  USING INDEX "IKIS_WEBSM"."PK_SM_APD71"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1DATA" MODIFY ("APD71_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1DATA" MODIFY ("APD71_MNTH" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1DATA" MODIFY ("APD71_PAGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP8_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" ADD CONSTRAINT "PK_SM_APP8_1" PRIMARY KEY ("AP81_SLB", "AP81_PAGE")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP8_1"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" MODIFY ("AP81_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" MODIFY ("AP81_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" MODIFY ("AP81_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" MODIFY ("AP81_FORMTYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP8_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" ADD CONSTRAINT "PK_SM_APP8_1DATA" PRIMARY KEY ("APD81_SLB", "APD81_PAGE", "APD81_ROW")
  USING INDEX "IKIS_WEBSM"."PK_SM_APP8_1DATA"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" MODIFY ("APD81_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" MODIFY ("APD81_PAGE" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" MODIFY ("APD81_ROW" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" MODIFY ("APD81_ST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_APP_LIST
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP_LIST" ADD CONSTRAINT "PK_APP_LIST" PRIMARY KEY ("APL_TP", "APL_SLB")
  USING INDEX "IKIS_WEBSM"."PK_APP_LIST"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP_LIST" MODIFY ("APL_TP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_APP_LIST" MODIFY ("APL_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_AREA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_AREA" MODIFY ("SAR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_AREA" MODIFY ("SAR_SSA" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_AREA" MODIFY ("SAR_ORG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_AREA" ADD CONSTRAINT "XPK_AREA_SM_ID" PRIMARY KEY ("SAR_ID")
  USING INDEX "IKIS_WEBSM"."XPK_AREA_SM_ID"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_AREA_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_AREA_DATA" ADD CONSTRAINT "PK_SAD" PRIMARY KEY ("SAD_ARE")
  USING INDEX "IKIS_WEBSM"."PK_SAD"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_AREA_SS
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_AREA_SS" MODIFY ("SSA_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_AREA_SS" ADD CONSTRAINT "XPK_SM_AREA_SS" PRIMARY KEY ("SSA_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_AREA_SS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_CHANGE_STATE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" MODIFY ("SCH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" MODIFY ("SCH_CREATE_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" MODIFY ("SCH_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" ADD CONSTRAINT "XPK_SM_CHANGE_STATE" PRIMARY KEY ("SCH_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_CHANGE_STATE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_CHANGE_STATE_AUDIT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT" MODIFY ("SCHA_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT" ADD CONSTRAINT "XPK_SM_CHANGE_STATE_AUDIT" PRIMARY KEY ("SCHA_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_CHANGE_STATE_AUDIT"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_CHANGE_STATE_DETAIL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" MODIFY ("SCHD_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" MODIFY ("SCHD_SLB" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" ADD CONSTRAINT "XPK_SM_CHANGE_STATE_DETAIL" PRIMARY KEY ("SCHD_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_CHANGE_STATE_DETAIL"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_CONTROL_PROTOCOL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_PROTOCOL" ADD CONSTRAINT "PK_SM_CONTROL_PROTOCOL" PRIMARY KEY ("SCP_ID")
  USING INDEX "IKIS_WEBSM"."PARTIND_CONTROL_PROTOCOL"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_PROTOCOL" MODIFY ("SCP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_PROTOCOL" MODIFY ("SCP_TS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_CONTROL_SESSION
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_SESSION" ADD CONSTRAINT "PK_CONTROL_SESSION" PRIMARY KEY ("SCS_ID")
  USING INDEX "IKIS_WEBSM"."PK_CONTROL_SESSION"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_SESSION" MODIFY ("SCS_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_SESSION" MODIFY ("SCS_ESS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_DIRTY_REPORT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_DIRTY_REPORT" MODIFY ("SDR_TS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_FILEBLOB
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_FILEBLOB" ADD CONSTRAINT "PK_SFB_ID" PRIMARY KEY ("SFB_ID")
  USING INDEX "IKIS_WEBSM"."PK_SFB_ID"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_FILEBLOB" MODIFY ("SFB_TS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_FILEBLOB_TEMP
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_FILEBLOB_TEMP" MODIFY ("SFB_TS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_FILECONTENT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_FILECONTENT" ADD CONSTRAINT "SM_FCNTP_PK_FC_ID" PRIMARY KEY ("FC_ID")
  USING INDEX "IKIS_WEBSM"."SM_FCNTP_PK_FC_ID"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_FILECONTENT" MODIFY ("FC_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_FILECONTENT_CORRUPT_ROW
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_FILECONTENT_CORRUPT_ROW" MODIFY ("FC_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_FORM_REP
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_FORM_REP" MODIFY ("FR_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_FORM_REP" MODIFY ("FR_IS_REV" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_FORM_REP" ADD CONSTRAINT "XPK_SM_FORM_REP" PRIMARY KEY ("FR_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_FORM_REP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_INSR2AREA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_INSR2AREA" MODIFY ("I2A_IM" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_INSR2AREA" MODIFY ("I2A_SAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_JOB_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_JOB_LOG" ADD CONSTRAINT "PK_JOB_LOG" PRIMARY KEY ("JL_ID")
  USING INDEX "IKIS_WEBSM"."PK_JOB_LOG"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_KV2_BLACK_LIST
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_KV2_BLACK_LIST" MODIFY ("SK2BL_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_KV2_BLACK_LIST" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_KV2_BLACK_LIST" MODIFY ("DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_KV2_BLACK_LIST" ADD CONSTRAINT "XPK_SM_KV2_BLACK_LIST" PRIMARY KEY ("SK2BL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_LIST_FOP_2011
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_LIST_FOP_2011" MODIFY ("LF_MARK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_LOADDATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_LOADDATA" ADD CONSTRAINT "PK_LOADDATA" PRIMARY KEY ("LD_SLB")
  USING INDEX "IKIS_WEBSM"."PK_LOADDATA"  ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_LOADDATA" MODIFY ("LD_SLB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_LOAD_KVT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_LOAD_KVT" MODIFY ("LK_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_LOAD_TAB_ERROR_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_LOAD_TAB_ERROR_LOG" MODIFY ("LTE_TS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_MASS_RELOAD_26
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_MASS_RELOAD_26" MODIFY ("SLB_ORG" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_MASS_RELOAD_26" MODIFY ("SLB_ID_IN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" ADD CONSTRAINT "CHK_SLB_IS_SK" CHECK (slb_is_sk in ('N', 'Y')) ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" ADD CONSTRAINT "SM_PKLBP_PK_SLB_ID" PRIMARY KEY ("SLB_ID")
  USING INDEX "IKIS_WEBSM"."PK_SM_PACKLABEL"  ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_ID" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_ID_IN" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_DT_IN" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_ST" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_FIXED" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_EXTENDED" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_IS_ADD_REP" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_ACTUALITY" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_IS_CORRECT" NOT NULL ENABLE NOVALIDATE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" MODIFY ("SLB_SYSTEM" NOT NULL ENABLE NOVALIDATE);
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL_2010
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_2010" MODIFY ("SLB_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL_ADD
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" MODIFY ("SLBA_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" MODIFY ("SLBA_ORD_REG_DT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" MODIFY ("SLBA_INSUR_NUMIDENT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" ADD CONSTRAINT "XPK_SM_PACKLABEL_ADD" PRIMARY KEY ("SLBA_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_PACKLABEL_ADD"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL_EXTEND
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" MODIFY ("SPE_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "XPK_SM_PACKLABEL_EXTEND" PRIMARY KEY ("SPE_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_PACKLABEL_EXTEND"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL_KPR
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_KPR" MODIFY ("KPR_SLB_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL_KVED
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_KVED" MODIFY ("PKV_SLB_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_KVED" MODIFY ("PKV_IM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_PACKLABEL_O
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" ADD CONSTRAINT "PK_SM_PACKLABEL" PRIMARY KEY ("SLB_ID") DISABLE VALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_ID_IN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_DT_IN" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_ST" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_FIXED" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_EXTENDED" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_IS_ADD_REP" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_ACTUALITY" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_IS_CORRECT" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" MODIFY ("SLB_SYSTEM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SM_TYPE5_PERIOD
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_TYPE5_PERIOD" MODIFY ("STP_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_TYPE5_PERIOD" ADD CONSTRAINT "XPK_SM_TYPE5_PERIOD" PRIMARY KEY ("STP_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_TYPE5_PERIOD"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_1" ADD CONSTRAINT "FK_APE1_LDF" FOREIGN KEY ("APE1_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_1" ADD CONSTRAINT "FK_APE4_1_SLB" FOREIGN KEY ("APE1_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_1" ADD CONSTRAINT "PFK_APE4_1_SLB_P" FOREIGN KEY ("APE1_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_2" ADD CONSTRAINT "FK_APE42_LDF" FOREIGN KEY ("APE42_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_2" ADD CONSTRAINT "FK_APE4_2_SLB" FOREIGN KEY ("APE42_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_2" ADD CONSTRAINT "PFK_APE4_2_SLB_P" FOREIGN KEY ("APE42_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_3" ADD CONSTRAINT "FK_APE43_LDF" FOREIGN KEY ("APE43_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_3" ADD CONSTRAINT "FK_APE4_3_SLB" FOREIGN KEY ("APE43_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_3" ADD CONSTRAINT "PFK_APE4_3_SLB_P" FOREIGN KEY ("APE43_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_4" ADD CONSTRAINT "FK_APE44_LDF" FOREIGN KEY ("APE44_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_4" ADD CONSTRAINT "FK_APE4_4_SLB" FOREIGN KEY ("APE44_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_4" ADD CONSTRAINT "PFK_APE4_4_SLB_P" FOREIGN KEY ("APE44_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5" ADD CONSTRAINT "FK_APE45_LDF" FOREIGN KEY ("APE45_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5" ADD CONSTRAINT "FK_APE4_5_SLB" FOREIGN KEY ("APE45_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5" ADD CONSTRAINT "PFK_APE4_5_SLB_P" FOREIGN KEY ("APE45_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_5DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APE45_PEL" FOREIGN KEY ("APED45_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APE4_5DATA" FOREIGN KEY ("APED45_SLB", "APED45_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE4_5" ("APE45_SLB", "APE45_PAGE") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APE4_5DATA_SLB" FOREIGN KEY ("APED45_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APED45_APQD5" FOREIGN KEY ("APED45_APQD5")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ("APQD5_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APED45_APQD5_UNFIX" FOREIGN KEY ("APED45_APQD5_UNFIX")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK5_DATA" ("APQD5_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APED45_CSM" FOREIGN KEY ("APED45_CSM")
	  REFERENCES "IKIS_WEBSM"."CDE_SM" ("CSM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "FK_APED45_SPL" FOREIGN KEY ("APED45_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_5DATA" ADD CONSTRAINT "PFK_APE4_5DATA_SLB_P" FOREIGN KEY ("APED45_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_6
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6" ADD CONSTRAINT "FK_APE46_LDF" FOREIGN KEY ("APE46_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6" ADD CONSTRAINT "FK_APE4_6_SLB" FOREIGN KEY ("APE46_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6" ADD CONSTRAINT "PFK_APE4_6_SLB_P" FOREIGN KEY ("APE46_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_6DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "FK_APE46_PEL" FOREIGN KEY ("APED46_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "FK_APED46_APQD1" FOREIGN KEY ("APED46_APQD1")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ("APQD1_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "FK_APED46_APQD1_UNFIX" FOREIGN KEY ("APED46_APQD1_UNFIX")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK1_DATA" ("APQD1_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "FK_APED46_CSM" FOREIGN KEY ("APED46_CSM")
	  REFERENCES "IKIS_WEBSM"."CDE_SM" ("CSM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "FK_APED46_SPL" FOREIGN KEY ("APED46_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "SMAPED46P_FK_REORG0" FOREIGN KEY ("APED46_SLB", "APED46_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE4_6" ("APE46_SLB", "APE46_PAGE") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_6DATA" ADD CONSTRAINT "SMAPED46P_FK_SLB$REORG0" FOREIGN KEY ("APED46_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_7
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7" ADD CONSTRAINT "FK_APE47_LDF" FOREIGN KEY ("APE47_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7" ADD CONSTRAINT "FK_APE4_7_SLB" FOREIGN KEY ("APE47_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7" ADD CONSTRAINT "PFK_APE4_7_SLB_P" FOREIGN KEY ("APE47_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_7DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APE47_PEL" FOREIGN KEY ("APED47_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APE4_7DATA" FOREIGN KEY ("APED47_SLB", "APED47_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE4_7" ("APE47_SLB", "APE47_PAGE") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APE4_7DATA_SLB" FOREIGN KEY ("APED47_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APED47_APQD6" FOREIGN KEY ("APED47_APQD6")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ("APQD6_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APED47_APQD6_UNFIX" FOREIGN KEY ("APED47_APQD6_UNFIX")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK6_DATA" ("APQD6_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APED47_CSM" FOREIGN KEY ("APED47_CSM")
	  REFERENCES "IKIS_WEBSM"."CDE_SM" ("CSM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "FK_APED47_SPL" FOREIGN KEY ("APED47_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_7DATA" ADD CONSTRAINT "PFK_APE4_7DATA_SLB_P" FOREIGN KEY ("APED47_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_8
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" ADD CONSTRAINT "FK_APE48_LDF" FOREIGN KEY ("APE48_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" ADD CONSTRAINT "FK_APE4_8_SLB" FOREIGN KEY ("APE48_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8" ADD CONSTRAINT "PFK_APE4_8_SLB_P" FOREIGN KEY ("APE48_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE4_8DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APE48_PEL" FOREIGN KEY ("APED48_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APE4_8DATA" FOREIGN KEY ("APED48_SLB", "APED48_TP", "APED48_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE4_8" ("APE48_SLB", "APE48_TP", "APE48_PAGE") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APE4_8DATA_SLB" FOREIGN KEY ("APED48_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APED48_APQD2" FOREIGN KEY ("APED48_APQD2")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ("APQD2_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APED48_APQD2_UNFIX" FOREIGN KEY ("APED48_APQD2_UNFIX")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK2_DATA" ("APQD2_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APED48_APQD3" FOREIGN KEY ("APED48_APQD3")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ("APQD3_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APED48_APQD3_UNFIX" FOREIGN KEY ("APED48_APQD3_UNFIX")
	  REFERENCES "IKIS_WEBSM"."SK_APEQ_DODATOK3_DATA" ("APQD3_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "FK_APED48_SPL" FOREIGN KEY ("APED48_SPL")
	  REFERENCES "IKIS_WEBSM"."SK_PACKLABEL" ("SPL_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE4_8DATA" ADD CONSTRAINT "PFK_APE4_8DATA_SLB_P" FOREIGN KEY ("APED48_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1" ADD CONSTRAINT "FK_APE51_LDF" FOREIGN KEY ("APE51_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1" ADD CONSTRAINT "FK_APE51_PEL" FOREIGN KEY ("APE51_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1" ADD CONSTRAINT "FK_SM_APE51" FOREIGN KEY ("APE51_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1" ADD CONSTRAINT "PFK_SM_APE51_P" FOREIGN KEY ("APE51_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_1_DATA" ADD CONSTRAINT "FK_SM_APED51" FOREIGN KEY ("APED51_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APE5_1" ("APE51_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2" ADD CONSTRAINT "FK_APE52_LDF" FOREIGN KEY ("APE52_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2" ADD CONSTRAINT "FK_APE52_PEL" FOREIGN KEY ("APE52_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2" ADD CONSTRAINT "FK_SM_APE52" FOREIGN KEY ("APE52_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2" ADD CONSTRAINT "PFK_SM_APE52_P" FOREIGN KEY ("APE52_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_2_DATA" ADD CONSTRAINT "FK_SM_APED52" FOREIGN KEY ("APED52_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APE5_2" ("APE52_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3" ADD CONSTRAINT "FK_APE53_LDF" FOREIGN KEY ("APE53_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3" ADD CONSTRAINT "FK_APE53_PEL" FOREIGN KEY ("APE53_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3" ADD CONSTRAINT "FK_SM_APE53" FOREIGN KEY ("APE53_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3" ADD CONSTRAINT "PFK_SM_APE53_P" FOREIGN KEY ("APE53_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_3_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_3_DATA" ADD CONSTRAINT "FK_SM_APED53" FOREIGN KEY ("APED53_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APE5_3" ("APE53_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4" ADD CONSTRAINT "FK_APE54_LDF" FOREIGN KEY ("APE54_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4" ADD CONSTRAINT "FK_APE54_PEL" FOREIGN KEY ("APE54_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4" ADD CONSTRAINT "FK_SM_APE54" FOREIGN KEY ("APE54_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4" ADD CONSTRAINT "PFK_SM_APE54_P" FOREIGN KEY ("APE54_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_4_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_4_DATA" ADD CONSTRAINT "FK_SM_APED54" FOREIGN KEY ("APED54_SLB", "APED54_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE5_4" ("APE54_SLB", "APE54_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5" ADD CONSTRAINT "FK_APE55_LDF" FOREIGN KEY ("APE55_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5" ADD CONSTRAINT "FK_APE55_PEL" FOREIGN KEY ("APE55_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5" ADD CONSTRAINT "FK_SM_APE55" FOREIGN KEY ("APE55_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5" ADD CONSTRAINT "PFK_SM_APE55_P" FOREIGN KEY ("APE55_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_5_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_5_DATA" ADD CONSTRAINT "FK_SM_APED55" FOREIGN KEY ("APED55_SLB", "APED55_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE5_5" ("APE55_SLB", "APE55_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_6
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6" ADD CONSTRAINT "FK_APE56_LDF" FOREIGN KEY ("APE56_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6" ADD CONSTRAINT "FK_APE56_PEL" FOREIGN KEY ("APE56_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6" ADD CONSTRAINT "FK_SM_APE56" FOREIGN KEY ("APE56_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6" ADD CONSTRAINT "PFK_SM_APE56_P" FOREIGN KEY ("APE56_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE5_6_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE5_6_DATA" ADD CONSTRAINT "FK_SM_APED56" FOREIGN KEY ("APED56_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APE5_6" ("APE56_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" ADD CONSTRAINT "FK_APE61_LDF" FOREIGN KEY ("APE61_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" ADD CONSTRAINT "FK_APE61_PEL" FOREIGN KEY ("APE61_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" ADD CONSTRAINT "FK_SM_APE61" FOREIGN KEY ("APE61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1" ADD CONSTRAINT "PFK_SM_APE61_P" FOREIGN KEY ("APE61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_1_DATA" ADD CONSTRAINT "FK_SM_APED61" FOREIGN KEY ("APED61_SLB", "APED61_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE6_1" ("APE61_SLB", "APE61_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" ADD CONSTRAINT "FK_APE62_LDF" FOREIGN KEY ("APE62_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" ADD CONSTRAINT "FK_APE62_PEL" FOREIGN KEY ("APE62_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" ADD CONSTRAINT "FK_SM_APE62" FOREIGN KEY ("APE62_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2" ADD CONSTRAINT "PFK_SM_APE62_P" FOREIGN KEY ("APE62_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_2_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_2_DATA" ADD CONSTRAINT "FK_SM_APED62" FOREIGN KEY ("APED62_SLB", "APED62_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE6_2" ("APE62_SLB", "APE62_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" ADD CONSTRAINT "FK_APE63_LDF" FOREIGN KEY ("APE63_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" ADD CONSTRAINT "FK_APE63_PEL" FOREIGN KEY ("APE63_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" ADD CONSTRAINT "FK_SM_APE63" FOREIGN KEY ("APE63_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3" ADD CONSTRAINT "PFK_SM_APE63_P" FOREIGN KEY ("APE63_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_3_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_3_DATA" ADD CONSTRAINT "FK_SM_APED63" FOREIGN KEY ("APED63_SLB", "APED63_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE6_3" ("APE63_SLB", "APE63_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" ADD CONSTRAINT "FK_APE64_LDF" FOREIGN KEY ("APE64_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" ADD CONSTRAINT "FK_APE64_PEL" FOREIGN KEY ("APE64_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" ADD CONSTRAINT "FK_SM_APE64" FOREIGN KEY ("APE64_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4" ADD CONSTRAINT "PFK_SM_APE64_P" FOREIGN KEY ("APE64_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE6_4_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE6_4_DATA" ADD CONSTRAINT "FK_SM_APED64" FOREIGN KEY ("APED64_SLB", "APED64_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE6_4" ("APE64_SLB", "APE64_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE7_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" ADD CONSTRAINT "FK_APE71_LDF" FOREIGN KEY ("APE71_LDF")
	  REFERENCES "IKIS_WEBSM"."LINKED_DOCS_FILE" ("LDF_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" ADD CONSTRAINT "FK_APE71_PEL" FOREIGN KEY ("APE71_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" ADD CONSTRAINT "FK_SM_APE71" FOREIGN KEY ("APE71_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1" ADD CONSTRAINT "PFK_SM_APE71_P" FOREIGN KEY ("APE71_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APE7_1_DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APE7_1_DATA" ADD CONSTRAINT "FK_SM_APED71" FOREIGN KEY ("APED71_SLB", "APED71_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APE7_1" ("APE71_SLB", "APE71_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP12_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1" ADD CONSTRAINT "FK_APP12_IM" FOREIGN KEY ("APP12_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1" ADD CONSTRAINT "FK_APP12_SLB" FOREIGN KEY ("APP12_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1" ADD CONSTRAINT "PFK_APP12_SLB_P" FOREIGN KEY ("APP12_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP12_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" ADD CONSTRAINT "FK_APP12D_APP12" FOREIGN KEY ("APP12D_APP12")
	  REFERENCES "IKIS_WEBSM"."SM_APP12_1" ("APP12_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" ADD CONSTRAINT "FK_APP12D_SLB" FOREIGN KEY ("APP12D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP12_1DATA" ADD CONSTRAINT "PFK_APP12D_SLB_P" FOREIGN KEY ("APP12D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP30_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" ADD CONSTRAINT "FK_APP301_PEL" FOREIGN KEY ("APP301_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" ADD CONSTRAINT "FK_APP301_SLB" FOREIGN KEY ("APP301_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1" ADD CONSTRAINT "PFK_APP301_SLB_P" FOREIGN KEY ("APP301_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP30_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP30_1DATA" ADD CONSTRAINT "FK_APP301D_APP301" FOREIGN KEY ("APP301D_APP301")
	  REFERENCES "IKIS_WEBSM"."SM_APP30_1" ("APP301_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1" ADD CONSTRAINT "FK_AP41_SLB" FOREIGN KEY ("AP1_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1" ADD CONSTRAINT "PFK_AP41_SLB_P" FOREIGN KEY ("AP1_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_1D2DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1D2DATA" ADD CONSTRAINT "FK_A4A2_SLB" FOREIGN KEY ("A4A2_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_1D2DATA" ADD CONSTRAINT "PFK_A4A2_SLB_P" FOREIGN KEY ("A4A2_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_2" ADD CONSTRAINT "FK_AP42_SLB" FOREIGN KEY ("AP42_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_2" ADD CONSTRAINT "PFK_AP42_SLB_P" FOREIGN KEY ("AP42_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_3" ADD CONSTRAINT "FK_AP43_SLB" FOREIGN KEY ("AP43_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_3" ADD CONSTRAINT "PFK_AP43_SLB_P" FOREIGN KEY ("AP43_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_4" ADD CONSTRAINT "FK_AP44_SLB" FOREIGN KEY ("AP44_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_4" ADD CONSTRAINT "PFK_AP44_SLB_P" FOREIGN KEY ("AP44_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_5" ADD CONSTRAINT "FK_AP45_SLB" FOREIGN KEY ("AP45_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_5" ADD CONSTRAINT "PFK_AP45_SLB_P" FOREIGN KEY ("AP45_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_6
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" ADD CONSTRAINT "FK_AP46_SLB" FOREIGN KEY ("AP4_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_6" ADD CONSTRAINT "PFK_AP46_SLB_P" FOREIGN KEY ("AP4_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_8
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8" ADD CONSTRAINT "FK_AP48_SLB" FOREIGN KEY ("AP48_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8" ADD CONSTRAINT "PFK_AP48_SLB_P" FOREIGN KEY ("AP48_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_8DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" ADD CONSTRAINT "FK_A48D_CSM" FOREIGN KEY ("A48D_CSM")
	  REFERENCES "IKIS_WEBSM"."CDE_SM" ("CSM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" ADD CONSTRAINT "FK_A48D_PEL" FOREIGN KEY ("A48D_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" ADD CONSTRAINT "FK_A48D_SLB" FOREIGN KEY ("A48D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" ADD CONSTRAINT "FK_APP4_8PAGE" FOREIGN KEY ("A48D_SLB", "A48D_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP4_8" ("AP48_SLB", "AP48_PAGE") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_8DATA" ADD CONSTRAINT "PFK_A48D_SLB_P" FOREIGN KEY ("A48D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_DIV3DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_DIV3DATA" ADD CONSTRAINT "FK_A43D_SLB" FOREIGN KEY ("A43D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_DIV3DATA" ADD CONSTRAINT "PFK_A43D_SLB_P" FOREIGN KEY ("A43D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_PAYDATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" ADD CONSTRAINT "FK_A4PD_CSM" FOREIGN KEY ("A4PD_CSM")
	  REFERENCES "IKIS_WEBSM"."CDE_SM" ("CSM_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" ADD CONSTRAINT "FK_A4PD_PEL" FOREIGN KEY ("A4PD_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" ADD CONSTRAINT "FK_A4PD_SLB" FOREIGN KEY ("A4PD_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" ADD CONSTRAINT "FK_APP4_6PAGE" FOREIGN KEY ("A4PD_SLB", "A4PD_TP", "A4PD_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP4_6" ("AP4_SLB", "AP4_TP", "AP4_PAGE") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_PAYDATA" ADD CONSTRAINT "PFK_A4PD_SLB_P" FOREIGN KEY ("A4PD_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP4_WRKRDATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" ADD CONSTRAINT "FK_AP4W_AP45" FOREIGN KEY ("AP4W_SLB", "AP4W_PAGENUM")
	  REFERENCES "IKIS_WEBSM"."SM_APP4_5" ("AP45_SLB", "AP45_PAGE") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" ADD CONSTRAINT "FK_AP4W_PEL" FOREIGN KEY ("AP4W_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" ADD CONSTRAINT "FK_AP4W_SLB" FOREIGN KEY ("AP4W_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP4_WRKRDATA" ADD CONSTRAINT "PFK_AP4W_SLB_P" FOREIGN KEY ("AP4W_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1" ADD CONSTRAINT "FK_AP51_PEL" FOREIGN KEY ("AP51_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1" ADD CONSTRAINT "FK_SM_APP51" FOREIGN KEY ("AP51_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1" ADD CONSTRAINT "PFK_SM_APP51_P" FOREIGN KEY ("AP51_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_1DATA" ADD CONSTRAINT "FK_SM_APD51" FOREIGN KEY ("APD51_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APP5_1" ("AP51_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_2
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2" ADD CONSTRAINT "FK_AP52_PEL" FOREIGN KEY ("AP52_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2" ADD CONSTRAINT "FK_SM_APP52" FOREIGN KEY ("AP52_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2" ADD CONSTRAINT "PFK_SM_APP52_P" FOREIGN KEY ("AP52_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_2DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_2DATA" ADD CONSTRAINT "FK_SM_APD52" FOREIGN KEY ("APD52_SLB", "APD52_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP5_2" ("AP52_SLB", "AP52_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_3
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3" ADD CONSTRAINT "FK_AP53_PEL" FOREIGN KEY ("AP53_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3" ADD CONSTRAINT "FK_SM_APP53" FOREIGN KEY ("AP53_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3" ADD CONSTRAINT "PFK_SM_APP53_P" FOREIGN KEY ("AP53_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_3DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_3DATA" ADD CONSTRAINT "FK_SM_APD53" FOREIGN KEY ("APD53_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APP5_3" ("AP53_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_4
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4" ADD CONSTRAINT "FK_AP54_PEL" FOREIGN KEY ("AP54_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4" ADD CONSTRAINT "FK_SM_APP54" FOREIGN KEY ("AP54_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4" ADD CONSTRAINT "PFK_SM_APP54_P" FOREIGN KEY ("AP54_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_4DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_4DATA" ADD CONSTRAINT "FK_SM_APD54" FOREIGN KEY ("APD54_SLB", "APD54_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP5_4" ("AP54_SLB", "AP54_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_5
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5" ADD CONSTRAINT "FK_AP55_PEL" FOREIGN KEY ("AP55_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5" ADD CONSTRAINT "FK_SM_APP55" FOREIGN KEY ("AP55_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5" ADD CONSTRAINT "PFK_SM_APP55_P" FOREIGN KEY ("AP55_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP5_5DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP5_5DATA" ADD CONSTRAINT "FK_SM_APD55" FOREIGN KEY ("APD55_SLB", "APD55_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP5_5" ("AP55_SLB", "AP55_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP61_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" ADD CONSTRAINT "FK_APP61_PEL" FOREIGN KEY ("APP61_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" ADD CONSTRAINT "FK_APP61_SLB" FOREIGN KEY ("APP61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1" ADD CONSTRAINT "PFK_APP61_SLB_P" FOREIGN KEY ("APP61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP61_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1DATA" ADD CONSTRAINT "FK_APP61D_APP61" FOREIGN KEY ("APP61D_APP61")
	  REFERENCES "IKIS_WEBSM"."SM_APP61_1" ("APP61_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1DATA" ADD CONSTRAINT "FK_APP61D_SLB" FOREIGN KEY ("APP61D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP61_1DATA" ADD CONSTRAINT "PFK_APP61D_SLB_P" FOREIGN KEY ("APP61D_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP6_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1" ADD CONSTRAINT "FK_AP61_PEL" FOREIGN KEY ("AP61_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1" ADD CONSTRAINT "FK_SM_APP61" FOREIGN KEY ("AP61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1" ADD CONSTRAINT "PFK_SM_APP61_P" FOREIGN KEY ("AP61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP6_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP6_1DATA" ADD CONSTRAINT "FK_SM_APD61" FOREIGN KEY ("APD61_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_APP6_1" ("AP61_SLB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP7_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1" ADD CONSTRAINT "FK_AP71_PEL" FOREIGN KEY ("AP71_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1" ADD CONSTRAINT "FK_SM_APP71" FOREIGN KEY ("AP71_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1" ADD CONSTRAINT "PFK_SM_APP71_P" FOREIGN KEY ("AP71_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP7_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP7_1DATA" ADD CONSTRAINT "FK_SM_APD71" FOREIGN KEY ("APD71_SLB", "APD71_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP7_1" ("AP71_SLB", "AP71_PAGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP8_1
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" ADD CONSTRAINT "FK_AP81_SLB" FOREIGN KEY ("AP81_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1" ADD CONSTRAINT "PFK_AP81_SLB_P" FOREIGN KEY ("AP81_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_APP8_1DATA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" ADD CONSTRAINT "FK_APD81_PA81" FOREIGN KEY ("APD81_SLB", "APD81_PAGE")
	  REFERENCES "IKIS_WEBSM"."SM_APP8_1" ("AP81_SLB", "AP81_PAGE") ON DELETE CASCADE DEFERRABLE ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" ADD CONSTRAINT "FK_APD81_PEL" FOREIGN KEY ("APD81_PEL")
	  REFERENCES "IKIS_PERSON"."PERSON_ESV_LINK" ("PEL_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" ADD CONSTRAINT "FK_APD81_SLB" FOREIGN KEY ("APD81_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_APP8_1DATA" ADD CONSTRAINT "PFK_APD81_SLB_P" FOREIGN KEY ("APD81_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_AREA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_AREA" ADD CONSTRAINT "FK_SAR_ORG" FOREIGN KEY ("SAR_ORG")
	  REFERENCES "IKIS_SYS"."OPFU" ("ORG_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_AREA" ADD CONSTRAINT "FK_SAR_SSA" FOREIGN KEY ("SAR_SSA")
	  REFERENCES "IKIS_WEBSM"."SM_AREA_SS" ("SSA_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_CHANGE_STATE
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" ADD CONSTRAINT "FK_SCH_NCSS" FOREIGN KEY ("SCH_NCSS")
	  REFERENCES "IKIS_WEBSM"."NSI_CHANGE_STATE_STAUS" ("NCSS_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" ADD CONSTRAINT "FK_SCH_NCST" FOREIGN KEY ("SCH_NCST")
	  REFERENCES "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE" ("NCST_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE" ADD CONSTRAINT "FK_SCH_SLB" FOREIGN KEY ("SCH_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_CHANGE_STATE_AUDIT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_AUDIT" ADD CONSTRAINT "FK_SCHA_SCH" FOREIGN KEY ("SCHA_SCH")
	  REFERENCES "IKIS_WEBSM"."SM_CHANGE_STATE" ("SCH_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_CHANGE_STATE_DETAIL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" ADD CONSTRAINT "FK_SCHD_NCST" FOREIGN KEY ("SCHD_NCST")
	  REFERENCES "IKIS_WEBSM"."NSI_CHANGE_STATE_TYPE" ("NCST_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" ADD CONSTRAINT "FK_SCHD_SCH" FOREIGN KEY ("SCHD_SCH")
	  REFERENCES "IKIS_WEBSM"."SM_CHANGE_STATE" ("SCH_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" ADD CONSTRAINT "FK_SCHD_SLB" FOREIGN KEY ("SCHD_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_CHANGE_STATE_DETAIL" ADD CONSTRAINT "FK_SCHD_WTD" FOREIGN KEY ("SCHD_WTD")
	  REFERENCES "IKIS_AGGREGATE"."WH_TAB_DICTIONARY" ("WTD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_CONTROL_PROTOCOL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_CONTROL_PROTOCOL" ADD CONSTRAINT "FK_SCP_SCS" FOREIGN KEY ("SCP_SCS")
	  REFERENCES "IKIS_WEBSM"."SM_CONTROL_SESSION" ("SCS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_FILECONTENT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_FILECONTENT" ADD CONSTRAINT "PSM_FCNTP_FK_FC_SLB_P" FOREIGN KEY ("FC_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_FILECONTENT" ADD CONSTRAINT "SM_FCNTP_FK_FC_SLB" FOREIGN KEY ("FC_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_INSR2AREA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_INSR2AREA" ADD CONSTRAINT "FK_SUA_SAR" FOREIGN KEY ("I2A_SAR")
	  REFERENCES "IKIS_WEBSM"."SM_AREA" ("SAR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_LOAD_KVT
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_LOAD_KVT" ADD CONSTRAINT "FK_LK_SLB" FOREIGN KEY ("LK_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_LOAD_KVT" ADD CONSTRAINT "PFK_LK_SLB_P" FOREIGN KEY ("LK_SLB")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_LOAD_TAB_ERROR_LOG
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_LOAD_TAB_ERROR_LOG" ADD CONSTRAINT "FK_LTE_SLB_ID" FOREIGN KEY ("LTE_SLB_ID")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_LOAD_TAB_ERROR_LOG" ADD CONSTRAINT "PFK_LTE_SLB_ID_P" FOREIGN KEY ("LTE_SLB_ID")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_PACKLABEL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" ADD CONSTRAINT "SM_PKLBP_FK_SLB_IM" FOREIGN KEY ("SLB_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_PACKLABEL_ADD
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" ADD CONSTRAINT "FK_SLBA_ID" FOREIGN KEY ("SLBA_ID")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_ADD" ADD CONSTRAINT "PFK_SLBA_ID_P" FOREIGN KEY ("SLBA_ID")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_PACKLABEL_EXTEND
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "FK_SPE_MRD_REG_CODE" FOREIGN KEY ("SPE_MRD_REG_CODE")
	  REFERENCES "IKIS_NDI"."NSI_REGION_UKR" ("RU_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "FK_SPE_NDDT" FOREIGN KEY ("SPE_NDDT")
	  REFERENCES "IKIS_WEBSM"."NSI_DFS_DOC_TYPE" ("NDDT_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "FK_SPE_SLB" FOREIGN KEY ("SPE_ID")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "FK_SPE_SLB_DEPEND" FOREIGN KEY ("SPE_SLB_DEPENDENCIES")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_O" ("SLB_ID") DISABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "FK_SPE_SUCCESSOR_IM" FOREIGN KEY ("SPE_SUCCESSOR_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "PFK_SPE_SLB_DEPEND_P" FOREIGN KEY ("SPE_SLB_DEPENDENCIES")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "PFK_SPE_SLB_P" FOREIGN KEY ("SPE_ID")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") ENABLE NOVALIDATE;
--------------------------------------------------------
--  Ref Constraints for Table SM_PACKLABEL_O
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_O" ADD CONSTRAINT "FK_SLB_IM" FOREIGN KEY ("SLB_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_TYPE5_PERIOD
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_TYPE5_PERIOD" ADD CONSTRAINT "FK_STP_NTTT" FOREIGN KEY ("STP_NTTT")
	  REFERENCES "IKIS_WEBSM"."NSI_TYPE5_TABLE_TYPE" ("NTTT_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_TYPE5_PERIOD" ADD CONSTRAINT "FK_STP_SPE" FOREIGN KEY ("STP_SPE")
	  REFERENCES "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SM_USR2AREA
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_USR2AREA" ADD CONSTRAINT "FK_U2A_SAR" FOREIGN KEY ("U2A_SAR")
	  REFERENCES "IKIS_WEBSM"."SM_AREA" ("SAR_ID") ENABLE;
  ALTER TABLE "IKIS_WEBSM"."SM_USR2AREA" ADD CONSTRAINT "FK_U2A_WU" FOREIGN KEY ("U2A_WU")
	  REFERENCES "IKIS_SYSWEB"."W_USERS" ("WU_ID") ENABLE;
