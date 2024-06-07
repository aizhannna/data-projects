CREATE SCHEMA stg;

drop table if exists stg.orders;

create table stg.orders (
  ROW_ID INTEGER NOT NULL primary key,
  ORDER_ID Varchar(20) NOT NULL,
  ORDER_DATE Date not NULL,
  SHIP_DATE Date not NULL,
  SHIP_MODE Varchar(20),
  CUSTOMER_ID Varchar(20) not NULL,
  CUSTOMER_NAME Varchar(50) not null,
  SEGMENT Varchar(30),
  COUNTRY Varchar(50),
  CITY Varchar(50),
  STATE Varchar(50),
  POSTAL_CODE Varchar(20),
  REGION Varchar(10),
  PRODUCT_ID VARCHAR(20),
  CATEGORY VARCHAR(20),
  SUB_CATEGORY VARCHAR(50),
  PRODUCT_NAME VARCHAR(4000),
  SALES NUMERIC ,
  QUANTITY INTEGER,
  DISCOUNT NUMERIC,
  PROFIT NUMERIC
);

drop table if exists stg.people;
create table stg.people (
  REGIONAL_MNGR Varchar(20) not NULL ,
  REGION Varchar(10) not NULL
);

drop table if exists stg.returns;
create table stg.returns (
  RETURNED varchar(5) not NULL ,
  ORDER_ID Varchar(20) NOT NULL
)