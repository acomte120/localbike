select
    *
from
    {{ ref("int_localbike__f_sales") }}
where
    total_quantity < 0
