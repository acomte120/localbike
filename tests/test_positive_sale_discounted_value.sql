select
    *
from
    {{ ref("int_localbike__f_sales") }}
where
    discounted_value < 0
