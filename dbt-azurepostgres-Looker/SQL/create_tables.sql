CREATE SCHEMA stg;

DROP TABLE IF EXISTS stg.orders;

CREATE TABLE stg.orders (
    row_id INTEGER NOT NULL PRIMARY KEY,
    order_id Varchar(20) NOT NULL,
    order_date Date NOT NULL,
    ship_date Date NOT NULL,
    ship_mode Varchar(20),
    customer_id Varchar(20) NOT NULL,
    customer_name Varchar(50) NOT NULL,
    segment Varchar(30),
    country Varchar(50),
    city Varchar(50),
    state Varchar(50),
    postal_code Varchar(20),
    region Varchar(10),
    product_id VARCHAR(20),
    category VARCHAR(20),
    sub_category VARCHAR(50),
    product_name VARCHAR(4000),
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);

DROP TABLE IF EXISTS stg.people;
CREATE TABLE stg.people (
    regional_mngr Varchar(20) NOT NULL,
    region Varchar(10) NOT NULL
);

DROP TABLE IF EXISTS stg.returns;
CREATE TABLE stg.returns (
    returned Varchar(5) NOT NULL,
    order_id Varchar(20) NOT NULL
)
