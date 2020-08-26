CREATE TABLE ORDERS (
    ID_ROW              NUMBER(10),
    ID_ORDER      		VARCHAR2(20 CHAR),
	FLAG_ORDER_RETURNED	NUMBER(1),
    ORDER_DATE       	DATE,
    SHIP_DATE       	DATE,
    SHIP_MODE          	VARCHAR2(100 CHAR),
	CUSTOMER			VARCHAR2(50 CHAR),
	CUSTOMER_NAME		VARCHAR2(200 CHAR),
	FLAG_CUSTOMER_REWARD			NUMBER(1),
    SEGMENT             VARCHAR2(50 CHAR),
	ZIP          		NUMBER(6),
	CITY       			VARCHAR2(100 CHAR),
	STATE       		VARCHAR2(100 CHAR),
	REGION				VARCHAR2(100 CHAR),
	COUNTRY				VARCHAR2(100 CHAR),
	PRODUCT				VARCHAR2(100 CHAR),
	PRODUCT_NAME		VARCHAR2(400 CHAR),
	SUBCATEGORY			VARCHAR2(100 CHAR),
	CATEGORY			VARCHAR2(100 CHAR),
    SALES          		NUMBER(38,25),
	QUANTITY			NUMBER(9),
	DISCOUNT			NUMBER(3,2),
	PROFIT				NUMBER(38,25),
	ORDER_YEAR			NUMBER(4)
	);
	
	CREATE UNIQUE INDEX PK_ORDERS ON ORDERS
  (
    ID_ROW ASC ,ID_ORDER ASC
  );
  
  ALTER TABLE ORDERS ADD CONSTRAINT PK_ORDERS PRIMARY KEY ( ID_ROW,ID_ORDER );
ALTER TABLE ORDERS MODIFY CONSTRAINT PK_ORDERS RELY ;
