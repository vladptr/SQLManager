--------------------------------------------------------
--  File created - вівторок-серпня-11-2026   
--------------------------------------------------------
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
--  Constraints for Table PINSUR_KVED_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED_HST" MODIFY ("IVH_ID" NOT NULL ENABLE);
  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED_HST" ADD CONSTRAINT "XPK_PINSUR_KVED_HST" PRIMARY KEY ("IVH_ID")
  USING INDEX "IKIS_ERSP"."XPK_PINSUR_KVED_HST"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PINSUR_KVED_HST
--------------------------------------------------------

  ALTER TABLE "IKIS_ERSP"."PINSUR_KVED_HST" ADD CONSTRAINT "FK_IV_IM" FOREIGN KEY ("IVH_IM")
	  REFERENCES "IKIS_ERSP"."PINSUR_MAIN" ("IM_ID") DEFERRABLE ENABLE;
