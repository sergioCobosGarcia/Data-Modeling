--------------------------------------------------------
-- Archivo creado  - viernes-agosto-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LOCATION
--------------------------------------------------------

  CREATE TABLE "SOUTH_SUPERSTORE"."LOCATION" 
   (	"ID_LOCATION" NUMBER(7,0), 
	"ZIP" NUMBER(6,0), 
	"CITY" VARCHAR2(100 CHAR), 
	"STATE" VARCHAR2(100 CHAR), 
	"REGION" VARCHAR2(100 CHAR), 
	"COUNTRY" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SOUTH_SUPERSTORE.LOCATION
SET DEFINE OFF;
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1621','33407','West Palm Beach','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1622','30344','East Point','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1623','27707','Durham','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1624','37087','Lebanon','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1625','30605','Athens','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1626','33161','North Miami','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1627','27834','Greenville','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1628','72762','Springdale','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1629','27360','Thomasville','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1630','34741','Kissimmee','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1631','27514','Chapel Hill','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1632','28205','Charlotte','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1633','37211','Nashville','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1634','41042','Florence','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1635','29406','North Charleston','South Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1636','36608','Mobile','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1637','31088','Warner Robins','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1638','33024','Pembroke Pines','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1639','72701','Fayetteville','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1640','39212','Jackson','Mississippi','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1641','33445','Delray Beach','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1642','32712','Apopka','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1643','37604','Johnson City','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1644','30328','Sandy Springs','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1645','29501','Florence','South Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1646','33023','Miramar','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1647','35401','Tuscaloosa','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1648','32503','Pensacola','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1649','40214','Louisville','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1650','32114','Daytona Beach','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1651','71203','Monroe','Louisiana','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1652','35601','Decatur','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1653','22204','Arlington','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1654','27604','Raleigh','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1655','31204','Macon','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1656','30318','Atlanta','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1657','33065','Coral Springs','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1658','37130','Murfreesboro','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1659','33311','Fort Lauderdale','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1660','28110','Monroe','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1661','22801','Harrisonburg','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1662','28403','Wilmington','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1663','37042','Clarksville','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1664','23434','Suffolk','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1665','29464','Mount Pleasant','South Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1666','70601','Lake Charles','Louisiana','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1667','37620','Bristol','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1668','32137','Palm Coast','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1669','33433','Boca Raton','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1670','24153','Salem','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1671','33030','Homestead','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1672','37075','Hendersonville','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1673','42301','Owensboro','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1674','37167','Smyrna','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1675','32725','Deltona','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1676','40475','Richmond','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1677','27405','Greensboro','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1678','33319','Tamarac','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1679','70506','Lafayette','Louisiana','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1680','31907','Columbus','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1681','23464','Virginia Beach','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1682','32303','Tallahassee','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1683','72209','Little Rock','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1684','71854','Texarkana','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1685','40324','Georgetown','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1686','29483','Summerville','South Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1687','28052','Gastonia','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1688','42071','Murray','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1689','32771','Sanford','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1690','30076','Roswell','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1691','27893','Wilson','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1692','30080','Smyrna','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1693','33021','Hollywood','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1694','22901','Charlottesville','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1695','23320','Chesapeake','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1696','33180','Miami','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1697','71111','Bossier City','Louisiana','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1698','28806','Asheville','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1699','33437','Boynton Beach','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1700','29730','Rock Hill','South Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1701','35630','Florence','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1702','71901','Hot Springs','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1703','35810','Huntsville','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1704','33068','Pompano Beach','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1705','33614','Tampa','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1706','32216','Jacksonville','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1707','38401','Columbia','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1708','33710','Saint Petersburg','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1709','23666','Hampton','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1710','33801','Lakeland','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1711','39401','Hattiesburg','Mississippi','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1712','30062','Marietta','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1713','42420','Henderson','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1714','72032','Conway','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1715','33317','Plantation','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1716','38301','Jackson','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1717','72401','Jonesboro','Arkansas','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1718','22980','Waynesboro','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1719','38671','Southaven','Mississippi','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1720','71603','Pine Bluff','Arkansas','South','United States');
commit;
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1721','32174','Ormond Beach','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1722','29203','Columbia','South Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1723','28540','Jacksonville','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1724','22153','Springfield','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1725','28314','Fayetteville','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1726','34952','Port Saint Lucie','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1727','36116','Montgomery','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1728','23602','Newport News','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1729','33142','Miami','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1730','33012','Hialeah','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1731','27511','Cary','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1732','22304','Alexandria','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1733','33063','Margate','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1734','28027','Concord','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1735','30188','Woodstock','Georgia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1736','27217','Burlington','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1737','37421','Chattanooga','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1738','42104','Bowling Green','Kentucky','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1739','39503','Gulfport','Mississippi','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1740','70065','Kenner','Louisiana','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1741','33134','Coral Gables','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1742','28601','Hickory','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1743','35244','Hoover','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1744','38109','Memphis','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1745','33178','Miami','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1746','23223','Richmond','Virginia','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1747','32839','Orlando','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1748','37064','Franklin','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1749','37918','Knoxville','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1750','38134','Bartlett','Tennessee','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1751','36830','Auburn','Alabama','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1752','32935','Melbourne','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1753','33458','Jupiter','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1754','32127','Port Orange','Florida','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1755','27534','Goldsboro','North Carolina','South','United States');
Insert into SOUTH_SUPERSTORE.LOCATION (ID_LOCATION,ZIP,CITY,STATE,REGION,COUNTRY) values ('1756','72756','Rogers','Arkansas','South','United States');
commit;
--------------------------------------------------------
--  DDL for Index PK_LOCATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOUTH_SUPERSTORE"."PK_LOCATION" ON "SOUTH_SUPERSTORE"."LOCATION" ("ID_LOCATION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRIGG_LOCATION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SOUTH_SUPERSTORE"."TRIGG_LOCATION" 
BEFORE INSERT ON LOCATION 
FOR EACH ROW

BEGIN
  SELECT SEQ_LOCATION.NEXTVAL
  INTO   :new.ID_LOCATION
  FROM   dual;
END;
/
ALTER TRIGGER "SOUTH_SUPERSTORE"."TRIGG_LOCATION" ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCATION
--------------------------------------------------------

  ALTER TABLE "SOUTH_SUPERSTORE"."LOCATION" ADD CONSTRAINT "PK_LOCATION" PRIMARY KEY ("ID_LOCATION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
