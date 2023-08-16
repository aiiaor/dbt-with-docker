/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    SELECT
        Store,
        Dept,
        Date,
        Weekly_Sales AS WeeklySales,
        IsHoliday
    FROM
        {{ ref('sales data-set') }}

)

select *
from source_data