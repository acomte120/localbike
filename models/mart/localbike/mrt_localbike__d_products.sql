select
    product_id,
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price
from
    {{ ref("int_localbike__d_products") }}