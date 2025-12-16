--orders for each day, store, staff, customer, status

select
    date_day,
    case when store_id is null then -1 else store_id end as store_id,
    case when staff_id is null then -1 else staff_id end as staff_id,
    case when customer_id is null then -1 else customer_id end as customer_id,
    case when order_status is null then -1 else order_status end as status_id,
    count(distinct order_id) as num_orders
    --cast(shipped_date as datetime) - cast(order_date as datetime) as shipping_delay
    --case when shipped_date is not null and order_date is not null then { datediff("order_date", "shipped_date", "day") } end as shipping_delay
from
    {{ ref("int_localbike__d_calendar") }} cal
    left outer join {{ ref("stg_localbike__orders") }} orders on (cal.date_day = orders.order_date)
group by
    date_day,
    store_id,
    staff_id,
    customer_id,
    status_id