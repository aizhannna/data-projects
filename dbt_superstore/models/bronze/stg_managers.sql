{{ config(
  materialized='view',
  alias='reg_managers',
  strategy ='view'
) }}

SELECT
row_number() over () as dwh_id,
regional_mngr as manager_name,
region ,
current_timestamp as etl_timestamp
FROM {{source('superstore','people')}}