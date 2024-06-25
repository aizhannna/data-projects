{{ config(
  materialized='view',
  alias='returned_orders',
  strategy ='view'
) }}

SELECT
row_number() over () as dwh_id,
order_id,
returned,
current_timestamp as etl_timestamp
FROM {{source('superstore','returns')}}