--------------------------------------------------------
-- Archivo creado  - viernes-agosto-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TARGET
--------------------------------------------------------

  CREATE TABLE "SOUTH_SUPERSTORE"."TARGET" 
   (	"ID_SUBCATEGORY" NUMBER(7,0), 
	"YEAR" NUMBER(4,0), 
	"PROFIT_TARGET" NUMBER(38,25), 
	"SALES_TARGET" NUMBER(38,25)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SOUTH_SUPERSTORE.TARGET
SET DEFINE OFF;
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3292','2013','1702,585886','6434,5835');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3278','2013','494,683153','2437,6803000000004');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3283','2013','131,07823399999995','549,1480399999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3285','2013','2371,699666000001','8888,967219999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3282','2013','159,767342','754,5622');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3284','2013','2143,3840200000004','13464,4484');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3279','2013','90,89696999999998','551,9816000000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3291','2013','104,27044099999999','277,0394');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3287','2013','48,35984500000001','160,81824000000003');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3290','2013','397,77660399999985','3255,31706');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3289','2013','164,52625899999995','461,19829999999996');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3280','2013','-3286,7495750000026','30354,197500000006');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3288','2013','1325,4411059999995','3503,0335999999998');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3286','2013','3840,5651439999983','16559,00544');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3293','2013','448,3598019999996','6446,40576');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3281','2013','99,58953500000005','4289,781079999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3294','2013','1063,6705919999997','10636,810615');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3292','2014','803,1930769999999','3975,872640000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3278','2014','895,3085819999999','4235,374');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3283','2014','278,68278499999997','1498,5497999999998');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3285','2014','424,6038690000002','13197,970659999997');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3282','2014','100,08436799999998','1250,9819600000003');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3284','2014','1034,2139439999999','9914,40128');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3279','2014','305,53981500000003','935,9688000000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3291','2014','609,7874579999998','1592,23102');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3287','2014','45,79009999999998','135,44064000000003');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3290','2014','1125,2521919999997','5539,142239999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3289','2014','518,1601289999999','1241,0288399999997');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3280','2014','1428,9691089999997','3330,89395');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3288','2014','948,6682000000001','2211,1219200000005');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3286','2014','1825,5186339999998','7926,865819999998');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3293','2014','-251,96502600000014','8011,331820000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3281','2014','14,369543999999983','149,8864');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3294','2014','-2062,807675','7518,087990000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3292','2015','2416,648855','9379,843999999997');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3278','2015','1170,9680429999999','5551,395300000003');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3283','2015','352,55585199999996','1321,1213000000002');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3285','2015','611,845146','4153,338160000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3282','2015','558,2506339999999','4117,23864');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3284','2015','1199,5058','6394,433220000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3279','2015','871,9584','2611,08576');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3291','2015','379,88257999999996','877,82716');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3287','2015','33,854358','118,50310000000002');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3290','2015','1252,8319019999997','5598,095360000002');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3289','2015','123,22881300000003','317,02000000000004');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3280','2015','4092,70165','14032,916000000003');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3288','2015','1647,210432','4406,642920000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3286','2015','1462,68725','12554,451319999998');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3293','2015','1044,5464319999999','11490,81976');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3281','2015','-173,79528399999995','1645,6190000000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3294','2015','38,04630999999941','12623,294614999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3292','2016','1927,469412','8078,485139999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3278','2016','1421,3576439999995','9139,963099999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3283','2016','262,64855400000005','1389,9787200000003');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3285','2016','410,0333360000011','10697,627520000002');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3282','2016','519,586622','5621,41994');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3284','2016','1911,766923','16595,686479999997');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3279','2016','2334,322564','5252,715719999999');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3291','2016','329,15573599999993','883,57472');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3287','2016','42,1215','102,95616000000001');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3290','2016','529,1501909999997','3690,2930999999994');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3289','2016','190,15505399999998','589,56552');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3280','2016','-3790,3849979999986','9745,757');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3288','2016','1904,8452080000002','5239,8192');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3286','2016','3231,6016000000013','21790,535399999997');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3293','2016','962,2871419999993','10832,68632');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3281','2016','69,08962400000001','2435,28432');
Insert into SOUTH_SUPERSTORE.TARGET (ID_SUBCATEGORY,YEAR,PROFIT_TARGET,SALES_TARGET) values ('3294','2016','-3418,9498700000004','14670,511959999998');
commit;
--------------------------------------------------------
--  DDL for Index PK_TARGET
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOUTH_SUPERSTORE"."PK_TARGET" ON "SOUTH_SUPERSTORE"."TARGET" ("ID_SUBCATEGORY", "YEAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TARGET
--------------------------------------------------------

  ALTER TABLE "SOUTH_SUPERSTORE"."TARGET" MODIFY ("ID_SUBCATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SOUTH_SUPERSTORE"."TARGET" MODIFY ("YEAR" NOT NULL ENABLE);
  ALTER TABLE "SOUTH_SUPERSTORE"."TARGET" ADD CONSTRAINT "PK_TARGET" PRIMARY KEY ("ID_SUBCATEGORY", "YEAR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TARGET
--------------------------------------------------------

  ALTER TABLE "SOUTH_SUPERSTORE"."TARGET" ADD CONSTRAINT "FK_SUBCATEGORY_TARGET" FOREIGN KEY ("ID_SUBCATEGORY")
	  REFERENCES "SOUTH_SUPERSTORE"."SUBCATEGORY" ("ID_SUBCATEGORY") RELY ENABLE;
