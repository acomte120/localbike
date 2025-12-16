select
    status_id,
    status_name
from
    {{ ref("int_localbike__d_status") }}