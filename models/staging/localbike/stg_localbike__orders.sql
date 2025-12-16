select
    order_id,
    customer_id,
    order_status,
    order_date,
    required_date,
    shipped_date,
    --case when shipped_date is not null then date(shipped_date) else date('2000-01-01') end as shipped_date,
    --cast(shipped_date as date) as shipped_date,
    --date(shipped_date) as shipped_date,
    store_id,
    staff_id
from
    {{ source('localbike', 'orders') }}
