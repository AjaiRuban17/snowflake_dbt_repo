{{ config(materialized="table") }}
select
    try_cast(client_id as number) as client_id,
    try_cast(registration_date as date) as registration_date
from {{ source("raw", "CLIENT_RAW") }}

