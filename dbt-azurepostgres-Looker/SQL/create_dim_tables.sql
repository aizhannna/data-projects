create schema dwh;

drop table if exists dwh.dim_product;
create table dwh.dim_product (
    id INTEGER not null primary key,
    product_id VARCHAR(20),
    product_name VARCHAR(4000),
    category VARCHAR(20),
    sub_category VARCHAR(50)

);

drop table if exists dwh.dim_customer;
create table dwh.dim_customer (
    customer_id Varchar(20) not null primary key,
    customer_name Varchar(50),
    segment Varchar(30)
);

drop table if exists dwh.dim_shipping;
create table dwh.dim_shipping (
    id INTEGER not null primary key,
    ship_mode Varchar(20)

);

drop table if exists dwh.dim_geo;
create table dwh.dim_geo (
    id INTEGER not null primary key,
    country Varchar(50),
    city Varchar(50),
    state Varchar(50),
    postal_code Varchar(20),
    region Varchar(10)

);
