--------------------------------------------------------
--  File created - вівторок-серпня-11-2026   
--------------------------------------------------------
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
--  DDL for Index PK_APE4_1_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_1_SLB" ON "IKIS_WEBSM"."SM_APE4_1" ("APE1_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE1_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE1_LDF" ON "IKIS_WEBSM"."SM_APE4_1" ("APE1_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_2_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_2_SLB" ON "IKIS_WEBSM"."SM_APE4_2" ("APE42_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE42_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE42_LDF" ON "IKIS_WEBSM"."SM_APE4_2" ("APE42_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_3_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_3_SLB" ON "IKIS_WEBSM"."SM_APE4_3" ("APE43_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE43_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE43_LDF" ON "IKIS_WEBSM"."SM_APE4_3" ("APE43_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE44_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE44_LDF" ON "IKIS_WEBSM"."SM_APE4_4" ("APE44_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_4_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_4_SLB" ON "IKIS_WEBSM"."SM_APE4_4" ("APE44_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_5_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_5_SLB" ON "IKIS_WEBSM"."SM_APE4_5" ("APE45_SLB", "APE45_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE45_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE45_LDF" ON "IKIS_WEBSM"."SM_APE4_5" ("APE45_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED45_CSM
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED45_CSM" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_CSM") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED45_SPL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED45_SPL" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_SPL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED45_APQD5_UNFIX
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED45_APQD5_UNFIX" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_APQD5_UNFIX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED45_IDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."IDX_APED45_IDENT" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_IDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE4_5DATA_SLB
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE4_5DATA_SLB" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_5DATA_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_5DATA_SLB" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_SLB", "APED45_PAGE", "APED45_RECNUM") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE4_5DATA_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE4_5DATA_NUMIDENT" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED45_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED45_PEL" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED45_NCP
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED45_NCP" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_NCP") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED45_NMR
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED45_NMR" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_NMR") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED45_APQD5
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED45_APQD5" ON "IKIS_WEBSM"."SM_APE4_5DATA" ("APED45_APQD5") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_6_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_6_SLB" ON "IKIS_WEBSM"."SM_APE4_6" ("APE46_SLB", "APE46_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE46_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE46_LDF" ON "IKIS_WEBSM"."SM_APE4_6" ("APE46_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED46_CSM
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED46_CSM" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_CSM") 
  ;
--------------------------------------------------------
--  DDL for Index SMAPED46P_IND_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."SMAPED46P_IND_NUMIDENT" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index SMAPED46P_PK_SLB_PAGE_RNUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."SMAPED46P_PK_SLB_PAGE_RNUM" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_SLB", "APED46_PAGE", "APED46_RECNUM") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED46_IDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."IDX_APED46_IDENT" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_IDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED46_APQD1
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED46_APQD1" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_APQD1") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED46_SPL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED46_SPL" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_SPL") 
  ;
--------------------------------------------------------
--  DDL for Index SMAPED46P_FK_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."SMAPED46P_FK_PEL" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED46_APQD1_UNFIX
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED46_APQD1_UNFIX" ON "IKIS_WEBSM"."SM_APE4_6DATA" ("APED46_APQD1_UNFIX") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_7_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_7_SLB" ON "IKIS_WEBSM"."SM_APE4_7" ("APE47_SLB", "APE47_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE47_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE47_LDF" ON "IKIS_WEBSM"."SM_APE4_7" ("APE47_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED47_CSM
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED47_CSM" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_CSM") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED47_IDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."IDX_APED47_IDENT" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_IDENT") 
  ;
--------------------------------------------------------
--  DDL for Index APED47_APQD6
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."APED47_APQD6" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_APQD6") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_7DATA_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_7DATA_SLB" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_SLB", "APED47_PAGE", "APED47_RECNUM") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED47_SPL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED47_SPL" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_SPL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED47_APQD6_UNFIX
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED47_APQD6_UNFIX" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_APQD6_UNFIX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE4_7DATA_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE4_7DATA_NUMIDENT" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE4_7DATA_SLB
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE4_7DATA_SLB" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED47_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED47_PEL" ON "IKIS_WEBSM"."SM_APE4_7DATA" ("APED47_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE48_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE48_LDF" ON "IKIS_WEBSM"."SM_APE4_8" ("APE48_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_8_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_8_SLB" ON "IKIS_WEBSM"."SM_APE4_8" ("APE48_SLB", "APE48_TP", "APE48_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE4_8DATA_SLB
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE4_8DATA_SLB" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED48_APQD2
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED48_APQD2" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_APQD2") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED48_APQD3
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED48_APQD3" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_APQD3") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED48_SPL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED48_SPL" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_SPL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED48_APQD2_UNFIX
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED48_APQD2_UNFIX" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_APQD2_UNFIX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED48_IDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."IDX_APED48_IDENT" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_IDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED48_SLB_TP_NUM
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED48_SLB_TP_NUM" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_SLB", "APED48_TP", "APED48_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APED48_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APED48_PEL" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APED48_APQD3_UNFIX
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APED48_APQD3_UNFIX" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_APQD3_UNFIX") 
  ;
--------------------------------------------------------
--  DDL for Index PK_APE4_8DATA_SLB
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_APE4_8DATA_SLB" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_SLB", "APED48_TP", "APED48_PAGE", "APED48_RECNUM") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE4_8DATA_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE4_8DATA_NUMIDENT" ON "IKIS_WEBSM"."SM_APE4_8DATA" ("APED48_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE51_FORMTYPE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE51_FORMTYPE" ON "IKIS_WEBSM"."SM_APE5_1" ("APE51_FORMTYPE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE51
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE51" ON "IKIS_WEBSM"."SM_APE5_1" ("APE51_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE51_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE51_NUMIDENT" ON "IKIS_WEBSM"."SM_APE5_1" ("APE51_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE51_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE51_PEL" ON "IKIS_WEBSM"."SM_APE5_1" ("APE51_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE51_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE51_LDF" ON "IKIS_WEBSM"."SM_APE5_1" ("APE51_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED51
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED51" ON "IKIS_WEBSM"."SM_APE5_1_DATA" ("APED51_SLB", "APED51_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE52_FORMTYPE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE52_FORMTYPE" ON "IKIS_WEBSM"."SM_APE5_2" ("APE52_FORMTYPE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE52
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE52" ON "IKIS_WEBSM"."SM_APE5_2" ("APE52_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE52_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE52_NUMIDENT" ON "IKIS_WEBSM"."SM_APE5_2" ("APE52_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE52_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE52_PEL" ON "IKIS_WEBSM"."SM_APE5_2" ("APE52_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE52_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE52_LDF" ON "IKIS_WEBSM"."SM_APE5_2" ("APE52_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED52
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED52" ON "IKIS_WEBSM"."SM_APE5_2_DATA" ("APED52_SLB", "APED52_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE53_FORMTYPE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE53_FORMTYPE" ON "IKIS_WEBSM"."SM_APE5_3" ("APE53_FORMTYPE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE53
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE53" ON "IKIS_WEBSM"."SM_APE5_3" ("APE53_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE53_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE53_NUMIDENT" ON "IKIS_WEBSM"."SM_APE5_3" ("APE53_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE53_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE53_PEL" ON "IKIS_WEBSM"."SM_APE5_3" ("APE53_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE53_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE53_LDF" ON "IKIS_WEBSM"."SM_APE5_3" ("APE53_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED53
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED53" ON "IKIS_WEBSM"."SM_APE5_3_DATA" ("APED53_SLB", "APED53_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE54_FORMTYPE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE54_FORMTYPE" ON "IKIS_WEBSM"."SM_APE5_4" ("APE54_FORMTYPE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE54
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE54" ON "IKIS_WEBSM"."SM_APE5_4" ("APE54_SLB", "APE54_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE54_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE54_NUMIDENT" ON "IKIS_WEBSM"."SM_APE5_4" ("APE54_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE54_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE54_PEL" ON "IKIS_WEBSM"."SM_APE5_4" ("APE54_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE54_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE54_LDF" ON "IKIS_WEBSM"."SM_APE5_4" ("APE54_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED54
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED54" ON "IKIS_WEBSM"."SM_APE5_4_DATA" ("APED54_SLB", "APED54_PAGE", "APED54_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SM_APED54
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SM_APED54" ON "IKIS_WEBSM"."SM_APE5_4_DATA" ("APED54_SLB", "APED54_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE55
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE55" ON "IKIS_WEBSM"."SM_APE5_5" ("APE55_SLB", "APE55_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE55_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE55_NUMIDENT" ON "IKIS_WEBSM"."SM_APE5_5" ("APE55_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE55_FORMTYPE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE55_FORMTYPE" ON "IKIS_WEBSM"."SM_APE5_5" ("APE55_FORMTYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE55_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE55_PEL" ON "IKIS_WEBSM"."SM_APE5_5" ("APE55_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE55_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE55_LDF" ON "IKIS_WEBSM"."SM_APE5_5" ("APE55_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED55
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED55" ON "IKIS_WEBSM"."SM_APE5_5_DATA" ("APED55_SLB", "APED55_PAGE", "APED55_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SM_APED55
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SM_APED55" ON "IKIS_WEBSM"."SM_APE5_5_DATA" ("APED55_SLB", "APED55_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE56
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE56" ON "IKIS_WEBSM"."SM_APE5_6" ("APE56_SLB") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE56_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE56_NUMIDENT" ON "IKIS_WEBSM"."SM_APE5_6" ("APE56_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE56_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE56_PEL" ON "IKIS_WEBSM"."SM_APE5_6" ("APE56_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE56_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE56_LDF" ON "IKIS_WEBSM"."SM_APE5_6" ("APE56_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED56
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED56" ON "IKIS_WEBSM"."SM_APE5_6_DATA" ("APED56_SLB", "APED56_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE61
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE61" ON "IKIS_WEBSM"."SM_APE6_1" ("APE61_SLB", "APE61_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE61_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE61_NUMIDENT" ON "IKIS_WEBSM"."SM_APE6_1" ("APE61_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE61_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE61_PEL" ON "IKIS_WEBSM"."SM_APE6_1" ("APE61_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE61_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE61_LDF" ON "IKIS_WEBSM"."SM_APE6_1" ("APE61_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED61
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED61" ON "IKIS_WEBSM"."SM_APE6_1_DATA" ("APED61_SLB", "APED61_MONTH", "APED61_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index FK_SM_APED61
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."FK_SM_APED61" ON "IKIS_WEBSM"."SM_APE6_1_DATA" ("APED61_SLB", "APED61_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE62_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE62_PEL" ON "IKIS_WEBSM"."SM_APE6_2" ("APE62_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE62_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE62_LDF" ON "IKIS_WEBSM"."SM_APE6_2" ("APE62_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE62
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE62" ON "IKIS_WEBSM"."SM_APE6_2" ("APE62_SLB", "APE62_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE62_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE62_NUMIDENT" ON "IKIS_WEBSM"."SM_APE6_2" ("APE62_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED62
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED62" ON "IKIS_WEBSM"."SM_APE6_2_DATA" ("APED62_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SM_APED62
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SM_APED62" ON "IKIS_WEBSM"."SM_APE6_2_DATA" ("APED62_SLB", "APED62_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index AK_APE62_DATA
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."AK_APE62_DATA" ON "IKIS_WEBSM"."SM_APE6_2_DATA" ("APED62_MONTH", "APED62_YEAR", "APED62_SLB", "APED62_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE63
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE63" ON "IKIS_WEBSM"."SM_APE6_3" ("APE63_SLB", "APE63_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IKIS_WEBSMIDX_APE63_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IKIS_WEBSMIDX_APE63_NUMIDENT" ON "IKIS_WEBSM"."SM_APE6_3" ("APE63_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE63_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE63_PEL" ON "IKIS_WEBSM"."SM_APE6_3" ("APE63_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE63_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE63_LDF" ON "IKIS_WEBSM"."SM_APE6_3" ("APE63_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED63
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED63" ON "IKIS_WEBSM"."SM_APE6_3_DATA" ("APED63_ID") 
  ;
--------------------------------------------------------
--  DDL for Index AK_APE63_DATA
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."AK_APE63_DATA" ON "IKIS_WEBSM"."SM_APE6_3_DATA" ("APED63_MONTH", "APED63_YEAR", "APED63_SLB", "APED63_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SM_APED63
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SM_APED63" ON "IKIS_WEBSM"."SM_APE6_3_DATA" ("APED63_SLB", "APED63_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APE64
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APE64" ON "IKIS_WEBSM"."SM_APE6_4" ("APE64_SLB", "APE64_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_APE64_NUMIDENT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_APE64_NUMIDENT" ON "IKIS_WEBSM"."SM_APE6_4" ("APE64_NUMIDENT") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE64_PEL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE64_PEL" ON "IKIS_WEBSM"."SM_APE6_4" ("APE64_PEL") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_APE64_LDF
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_APE64_LDF" ON "IKIS_WEBSM"."SM_APE6_4" ("APE64_LDF") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_APED64
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_APED64" ON "IKIS_WEBSM"."SM_APE6_4_DATA" ("APED64_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SM_APED64
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SM_APED64" ON "IKIS_WEBSM"."SM_APE6_4_DATA" ("APED64_SLB", "APED64_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index AK_APE64_DATA
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."AK_APE64_DATA" ON "IKIS_WEBSM"."SM_APE6_4_DATA" ("APED64_MONTH", "APED64_YEAR", "APED64_SLB", "APED64_PAGE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_ORG_MDZU
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_ORG_MDZU" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ORG_MDZU") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SM_PACKLABEL
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."PK_SM_PACKLABEL" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_TYPE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_TYPE" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_IM
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_IM" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_IM") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_CHRG_YEAR_MNTH
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_CHRG_YEAR_MNTH" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_CHARG_YEAR", "SLB_CHARG_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_CHARG_MNTH
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_CHARG_MNTH" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_CHARG_MNTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_CHARG_YEAR
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_CHARG_YEAR" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_CHARG_YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_DT_IN
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_DT_IN" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_DT_IN") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_ID_ACTUAL
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_ID_ACTUAL" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID", "SLB_ACTUALITY") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_ID_IN
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_ID_IN" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ID_IN") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_ID_IN_SLB_ORG
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_ID_IN_SLB_ORG" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ORG", "SLB_ID_IN") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_ORG
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_ORG" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_ORG") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SLB_TAFY
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SLB_TAFY" ON "IKIS_WEBSM"."SM_PACKLABEL" ("SLB_TYPE", "SLB_ACTUALITY", "SLB_FIXED", "SLB_CHARG_YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SPE_IH
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SPE_IH" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_IH") 
  ;
--------------------------------------------------------
--  DDL for Index XPK_SM_PACKLABEL_EXTEND
--------------------------------------------------------

  CREATE UNIQUE INDEX "IKIS_WEBSM"."XPK_SM_PACKLABEL_EXTEND" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_MRD_REG_CODE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_MRD_REG_CODE" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_MRD_REG_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SPE_SUCCESSOR_IM
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SPE_SUCCESSOR_IM" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_SUCCESSOR_IM") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_SPE_SLB_DEPEND
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_SPE_SLB_DEPEND" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_SLB_DEPENDENCIES") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SPE_CHARGE_DATE
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SPE_CHARGE_DATE" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_CHARG_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IFK_SPE_NDDT
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IFK_SPE_NDDT" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_NDDT") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SPE_DFS_DT_IN
--------------------------------------------------------

  CREATE INDEX "IKIS_WEBSM"."IDX_SPE_DFS_DT_IN" ON "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ("SPE_DFS_IN_DT") 
  ;
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
--  Constraints for Table SM_PACKLABEL_EXTEND
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" MODIFY ("SPE_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL_EXTEND" ADD CONSTRAINT "XPK_SM_PACKLABEL_EXTEND" PRIMARY KEY ("SPE_ID")
  USING INDEX "IKIS_WEBSM"."XPK_SM_PACKLABEL_EXTEND"  ENABLE;
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
--  Ref Constraints for Table SM_PACKLABEL
--------------------------------------------------------

  ALTER TABLE "IKIS_WEBSM"."SM_PACKLABEL" ADD CONSTRAINT "SM_PKLBP_FK_SLB_IM" FOREIGN KEY ("SLB_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") ENABLE NOVALIDATE;
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
