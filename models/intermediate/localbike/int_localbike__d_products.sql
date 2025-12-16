select
    product_id,
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price
from
    {{ ref("stg_localbike__products") }}
union
select
    -1 as brand_id,
    'Unknown' as product_name,
    -1 as brand_id,
    -1 as category_id,
    'Unknown' as model_year,
    'Unknown' as list_price