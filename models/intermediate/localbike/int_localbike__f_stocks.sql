--stock for each product, store, brand, category

select
    case when p.product_id is null then -1 else p.product_id end as product_id,
    case when p.brand_id is null then -1 else p.brand_id end as brand_id,
    case when p.category_id is null then -1 else p.category_id end as category_id,
    case when s.store_id is null then -1 else s.store_id end as store_id,
    sum(quantity) as current_quantity
from
    {{ ref("stg_localbike__stocks") }} s
    left outer join {{ ref("int_localbike__d_products") }} p on (s.product_id = p.product_id)
group by
    p.product_id,
    p.brand_id,
    p.category_id,
    s.store_id