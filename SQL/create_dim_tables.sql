create schema dwh;

drop table if exists dwh.dim_product;
create table dwh.dim_product (
  ID INTEGER not null primary key  ,
  PRODUCT_ID VARCHAR(20),
  PRODUCT_NAME VARCHAR(4000),
  CATEGORY VARCHAR(20),
  SUB_CATEGORY VARCHAR(50)
  
);

drop table if exists dwh.dim_customer;
create table dwh.dim_customer (
  CUSTOMER_ID Varchar(20) not null primary key,
  CUSTOMER_NAME Varchar(50) ,
  SEGMENT Varchar(30)
);

drop table if exists dwh.dim_shipping;
create table dwh.dim_shipping (
  ID INTEGER not null primary KEY ,
  SHIP_MODE Varchar(20)
  
);

drop table if exists dwh.dim_geo;
create table dwh.dim_geo (
  ID INTEGER not null primary KEY ,
  COUNTRY Varchar(50) ,
  CITY Varchar(50),
  STATE Varchar(50),
  POSTAL_CODE Varchar(20),
  REGION Varchar(10)
  
);
