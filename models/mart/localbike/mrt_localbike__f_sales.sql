select
    date_day,
    product_id,
    brand_id,
    category_id,
    store_id,
    staff_id,
    customer_id,
    total_value,
    discounted_value,
    discount_value,
    total_quantity
from
    {{ ref("int_localbike__f_sales") }}