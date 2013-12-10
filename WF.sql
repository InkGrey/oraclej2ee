--------------------------------------------------------
--  File created - 星期四-十二月-05-2013   
--------------------------------------------------------

--------------------------------------------------------
--  DDL for Sequence S_T_USER
--------------------------------------------------------

   CREATE SEQUENCE  "MAGGIE"."S_T_USER"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
 
--------------------------------------------------------
--  DDL for Sequence S_T_OCCUPATION
--------------------------------------------------------

   CREATE SEQUENCE  "MAGGIE"."S_T_OCCUPATION"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
 
--------------------------------------------------------
--  DDL for Sequence SEQ_USER
--------------------------------------------------------

   CREATE SEQUENCE  "MAGGIE"."SEQ_USER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
 
--------------------------------------------------------
--  DDL for Table WF_WORLD_REGIONS
--------------------------------------------------------

  CREATE TABLE "MAGGIE"."WF_WORLD_REGIONS" 
   (	"REGION_ID" NUMBER NOT NULL ENABLE, 
	"REGION_NAME" VARCHAR2(4000), 
	 CONSTRAINT "WF_WORLD_REGIONS_PK" PRIMARY KEY ("REGION_ID") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table WF_LANGUAGES
--------------------------------------------------------

  CREATE TABLE "MAGGIE"."WF_LANGUAGES" 
   (	"LANGUAGE_ID" NUMBER NOT NULL ENABLE, 
	"LANGUAGE_NAME" VARCHAR2(4000), 
	 CONSTRAINT "WF_LANGUAGES_PK" PRIMARY KEY ("LANGUAGE_ID") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table WF_SPOKEN_LANGUAGE
--------------------------------------------------------

  CREATE TABLE "MAGGIE"."WF_SPOKEN_LANGUAGE" 
   (	"COUNTRY_ID" NUMBER NOT NULL ENABLE, 
	"LANGUAGE_ID" NUMBER NOT NULL ENABLE, 
	"OFFICIAL" VARCHAR2(4000), 
	"COMMENTS" VARCHAR2(4000), 
	 CONSTRAINT "WF_SPOKEN_LANGUAGE_PK" PRIMARY KEY ("COUNTRY_ID", "LANGUAGE_ID") ENABLE, 
	 CONSTRAINT "WF_SPOKEN_LANGUAGE_WF_LAN_FK1" FOREIGN KEY ("LANGUAGE_ID")
	  REFERENCES "MAGGIE"."WF_LANGUAGES" ("LANGUAGE_ID") ENABLE, 
	 CONSTRAINT "WF_SPOKEN_LANGUAGE_WF_COU_FK1" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "MAGGIE"."WF_COUNTRIES" ("COUNTRY_ID") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table WF_CURRENCIES
--------------------------------------------------------

  CREATE TABLE "MAGGIE"."WF_CURRENCIES" 
   (	"CURRENCY_CODE" NUMBER NOT NULL ENABLE, 
	"CURRENCY_NAME" VARCHAR2(4000), 
	"COMMENTS" VARCHAR2(4000), 
	 CONSTRAINT "WF_CURRENCIES_PK" PRIMARY KEY ("CURRENCY_CODE") ENABLE
   ) ;
 
--------------------------------------------------------
--  DDL for Table WF_COUNTRIES
--------------------------------------------------------

  CREATE TABLE "MAGGIE"."WF_COUNTRIES" 
   (	"COUNTRY_ID" NUMBER NOT NULL ENABLE, 
	"REGION_ID" NUMBER, 
	"COUNTRY_NAME" VARCHAR2(4000), 
	"LOCATION" VARCHAR2(4000), 
	"CAPITAL" VARCHAR2(4000), 
	"AREA" VARCHAR2(4000), 
	"COASTLINE" VARCHAR2(4000), 
	"LOWEST_ELEVATION" NUMBER, 
	"LOWEST_ELEVATION_NAME" VARCHAR2(4000), 
	"HIGHEST_ELEVATION" NUMBER, 
	"HIGHEST_ELEVATION_NAME" VARCHAR2(4000), 
	"DATE_OF_DEPENDENCE" DATE, 
	"NATIONAL_HOLIDAY_NAME" VARCHAR2(4000), 
	"NATIONAL_HOLIDAY_DATE" DATE, 
	"POPULATION" NUMBER, 
	"POPULATION_GROWTH_RATE" NUMBER, 
	"LIFE_EXPECT_AT_BIRTH" NUMBER, 
	"MEDIAN_AGE" NUMBER, 
	"AIRPORTS" VARCHAR2(4000), 
	"CLIMATE" VARCHAR2(4000), 
	"FIPS_ID" NUMBER, 
	"INTERNET_EXTENSION" VARCHAR2(4000), 
	"FLAG" VARCHAR2(4000), 
	"CURRENCY_CODE" NUMBER, 
	"EXTERNAL_FLAG" VARCHAR2(4000), 
	 CONSTRAINT "WF_COUNTRIES_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE, 
	 CONSTRAINT "WF_COUNTRIES_WF_WORLD_REG_FK1" FOREIGN KEY ("REGION_ID")
	  REFERENCES "MAGGIE"."WF_WORLD_REGIONS" ("REGION_ID") ENABLE, 
	 CONSTRAINT "WF_COUNTRIES_WF_CURRENCIE_FK1" FOREIGN KEY ("CURRENCY_CODE")
	  REFERENCES "MAGGIE"."WF_CURRENCIES" ("CURRENCY_CODE") ENABLE
   ) ;
 
--------------------------------------------------------
--  Constraints for Table WF_WORLD_REGIONS
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_WORLD_REGIONS" MODIFY ("REGION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MAGGIE"."WF_WORLD_REGIONS" ADD CONSTRAINT "WF_WORLD_REGIONS_PK" PRIMARY KEY ("REGION_ID") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table WF_LANGUAGES
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_LANGUAGES" MODIFY ("LANGUAGE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MAGGIE"."WF_LANGUAGES" ADD CONSTRAINT "WF_LANGUAGES_PK" PRIMARY KEY ("LANGUAGE_ID") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table WF_SPOKEN_LANGUAGE
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_SPOKEN_LANGUAGE" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MAGGIE"."WF_SPOKEN_LANGUAGE" MODIFY ("LANGUAGE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MAGGIE"."WF_SPOKEN_LANGUAGE" ADD CONSTRAINT "WF_SPOKEN_LANGUAGE_PK" PRIMARY KEY ("COUNTRY_ID", "LANGUAGE_ID") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table WF_CURRENCIES
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_CURRENCIES" MODIFY ("CURRENCY_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "MAGGIE"."WF_CURRENCIES" ADD CONSTRAINT "WF_CURRENCIES_PK" PRIMARY KEY ("CURRENCY_CODE") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table WF_COUNTRIES
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_COUNTRIES" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MAGGIE"."WF_COUNTRIES" ADD CONSTRAINT "WF_COUNTRIES_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE;
 
--------------------------------------------------------
--  DDL for Index WF_WORLD_REGIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAGGIE"."WF_WORLD_REGIONS_PK" ON "MAGGIE"."WF_WORLD_REGIONS" ("REGION_ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index WF_SPOKEN_LANGUAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAGGIE"."WF_SPOKEN_LANGUAGE_PK" ON "MAGGIE"."WF_SPOKEN_LANGUAGE" ("COUNTRY_ID", "LANGUAGE_ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index WF_CURRENCIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAGGIE"."WF_CURRENCIES_PK" ON "MAGGIE"."WF_CURRENCIES" ("CURRENCY_CODE") 
  ;
 
--------------------------------------------------------
--  DDL for Index WF_COUNTRIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAGGIE"."WF_COUNTRIES_PK" ON "MAGGIE"."WF_COUNTRIES" ("COUNTRY_ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index WF_LANGUAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAGGIE"."WF_LANGUAGES_PK" ON "MAGGIE"."WF_LANGUAGES" ("LANGUAGE_ID") 
  ;
 
--------------------------------------------------------
--  Ref Constraints for Table WF_SPOKEN_LANGUAGE
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_SPOKEN_LANGUAGE" ADD CONSTRAINT "WF_SPOKEN_LANGUAGE_WF_COU_FK1" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "MAGGIE"."WF_COUNTRIES" ("COUNTRY_ID") ENABLE;
 
  ALTER TABLE "MAGGIE"."WF_SPOKEN_LANGUAGE" ADD CONSTRAINT "WF_SPOKEN_LANGUAGE_WF_LAN_FK1" FOREIGN KEY ("LANGUAGE_ID")
	  REFERENCES "MAGGIE"."WF_LANGUAGES" ("LANGUAGE_ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table WF_COUNTRIES
--------------------------------------------------------

  ALTER TABLE "MAGGIE"."WF_COUNTRIES" ADD CONSTRAINT "WF_COUNTRIES_WF_CURRENCIE_FK1" FOREIGN KEY ("CURRENCY_CODE")
	  REFERENCES "MAGGIE"."WF_CURRENCIES" ("CURRENCY_CODE") ENABLE;
 
  ALTER TABLE "MAGGIE"."WF_COUNTRIES" ADD CONSTRAINT "WF_COUNTRIES_WF_WORLD_REG_FK1" FOREIGN KEY ("REGION_ID")
	  REFERENCES "MAGGIE"."WF_WORLD_REGIONS" ("REGION_ID") ENABLE;
 
---------------------------------------------------
--   DATA FOR TABLE WF_WORLD_REGIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into WF_WORLD_REGIONS

---------------------------------------------------
--   END DATA FOR TABLE WF_WORLD_REGIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE WF_LANGUAGES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into WF_LANGUAGES

---------------------------------------------------
--   END DATA FOR TABLE WF_LANGUAGES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE WF_SPOKEN_LANGUAGE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into WF_SPOKEN_LANGUAGE

---------------------------------------------------
--   END DATA FOR TABLE WF_SPOKEN_LANGUAGE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE WF_CURRENCIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into WF_CURRENCIES

---------------------------------------------------
--   END DATA FOR TABLE WF_CURRENCIES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE WF_COUNTRIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into WF_COUNTRIES

---------------------------------------------------
--   END DATA FOR TABLE WF_COUNTRIES
---------------------------------------------------
