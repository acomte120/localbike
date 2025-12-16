--sales by value and quantity for date, product, brand, category, store, staff, customer

select
    cal.date_day,
    p.product_id,
    b.brand_id,
    c.category_id,
    store.store_id,
    staff.staff_id,
    customer.customer_id,
    sum((quantity*oi.list_price))   as total_value,
    sum((quantity*oi.list_price)*(1-discount))  as discounted_value,
    sum((quantity*oi.list_price)*(discount))    as discount_value,
    sum(quantity) as total_quantity
from
    {{ ref("int_localbike__d_calendar") }} cal
    left outer join {{ ref("stg_localbike__orders") }} orders on (cal.date_day = orders.order_date)
    left outer join {{ ref("stg_localbike__order_items") }} oi on (orders.order_id = oi.order_id)
    left outer join {{ ref("int_localbike__d_customers") }} customer on (orders.customer_id = customer.customer_id)
    left outer join {{ ref("int_localbike__d_stores") }} store on (orders.store_id = store.store_id)
    left outer join {{ ref("int_localbike__d_staffs") }} staff on (orders.staff_id = staff.staff_id)
    left outer join {{ ref("int_localbike__d_products") }} p on (oi.product_id = p.product_id)
    left outer join {{ ref("int_localbike__d_categories") }} c on (p.category_id = c.category_id)
    left outer join {{ ref("int_localbike__d_brands") }} b on (p.brand_id = b.brand_id)
group by
    cal.date_day,
    p.product_id,
    b.brand_id,
    c.category_id,
    store.store_id,
    staff.staff_id,
    customer.customer_id