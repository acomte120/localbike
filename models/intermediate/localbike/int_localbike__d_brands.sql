select
    brand_id,
    brand_name
from
    {{ ref("stg_localbike__brands") }}