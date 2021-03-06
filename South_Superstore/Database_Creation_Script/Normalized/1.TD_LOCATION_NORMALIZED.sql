

-----------------------------------------------------------------------------LOCATION--------------------------------------
	
	CREATE TABLE LOCATION (
    ID_LOCATION            	NUMBER(7),--AUTOINCREMENT
	ZIP          			NUMBER(6),
	CITY       				VARCHAR2(100 CHAR),
	STATE       			VARCHAR2(100 CHAR),
	REGION					VARCHAR2(100 CHAR),
	COUNTRY					VARCHAR2(100 CHAR)
	)



ALTER TABLE LOCATION ADD (
  CONSTRAINT PK_LOCATION PRIMARY KEY (ID_LOCATION));



CREATE SEQUENCE SEQ_LOCATION START WITH 1;
	
CREATE OR REPLACE TRIGGER TRIGG_LOCATION
BEFORE INSERT ON LOCATION 
FOR EACH ROW

BEGIN
  SELECT SEQ_LOCATION.NEXTVAL
  INTO   :new.ID_LOCATION
  FROM   dual;
END;

