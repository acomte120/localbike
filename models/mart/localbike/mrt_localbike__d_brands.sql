select
    brand_id,
    brand_name
from
    {{ ref("int_localbike__d_brands") }}