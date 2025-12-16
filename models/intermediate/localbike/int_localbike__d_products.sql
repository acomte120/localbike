select
    product_id,
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price
from
    {{ ref("stg_localbike__products") }}
union all
select
    -1 as brand_id,
    'Unknown' as product_name,
    -1 as brand_id,
    -1 as category_id,
    -1 as model_year,
    0 as list_price