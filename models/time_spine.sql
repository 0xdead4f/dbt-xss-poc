{{ config(materialized='table') }}

with days as (
    select 1 as n union all select 2 union all select 3 union all select 4 union all select 5
)
select
    cast('2024-01-01' as date) + interval '1 day' * (n - 1) as date_day
from days
