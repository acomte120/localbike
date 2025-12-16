select
    brand_id,
    brand_name
from
    {{ ref("stg_localbike__brands") }}
union all
select
    -1 as brand_id,
    'Unknown' as brand_name