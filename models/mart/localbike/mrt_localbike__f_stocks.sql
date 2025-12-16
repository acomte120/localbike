select
    product_id,
    brand_id,
    category_id,
    store_id,
    current_quantity
from
    {{ ref("int_localbike__f_stocks")}}