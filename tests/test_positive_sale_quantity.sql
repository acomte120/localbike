select
    *
from
    {{ ref("int_localbike__f_sales") }}
where
    quantity < 0
