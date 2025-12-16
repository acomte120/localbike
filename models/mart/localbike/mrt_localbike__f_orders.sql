select
    date_day,
    store_id,
    staff_id,
    customer_id,
    status_id,
    num_orders
from
    {{ ref("int_localbike__f_orders")}}