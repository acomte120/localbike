select
    *
from
    {{ ref("int_localbike__f_orders") }}
where shipping_delay < 0