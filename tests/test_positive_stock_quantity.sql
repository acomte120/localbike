select
    *
from
    {{ ref("int_localbike__f_stocks") }}
where
    current_quantity < 0