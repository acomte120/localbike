select
    *
from
    {{ ref("int_localbike__f_sales") }}
where
    discount > 1
