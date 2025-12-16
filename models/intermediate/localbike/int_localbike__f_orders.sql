--orders for each day, store, staff, customer, status

select
    date_day,
    store_id,
    staff_id,
    customer_id,
    status_id
    (shipped_date - order_date) as shipping_delay
from
    {{ ref("int_localbike__d_calendar") }} cal
    left outer join {{ ref("stg_localbike__orders") }} orders on (cal.date_day = orders.order_date)