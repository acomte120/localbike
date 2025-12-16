select
    category_id,
    category_name
from
    {{ ref("stg_localbike__categories") }}
union all
select
    -1 as category_id,
    'Unknown' as category_name