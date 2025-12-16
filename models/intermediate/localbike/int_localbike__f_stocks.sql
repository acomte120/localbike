--stock for each product, store, brand, category

select
    p.product_id,
    p.brand_id,
    p.category_id,
    s.store_id,
    sum(quantity) as current_quantity
from
    {{ ref("stg_localbike__stocks") }} s
    left outer join {{ ref("int_localbike__d_products") }} p on (s.product_id = p.product_id)
group by
    p.product_id,
    p.brand_id,
    p.category_id,
    s.store_id