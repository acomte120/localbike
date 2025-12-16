select distinct
    order_status as status_id,
    case order_status
        when 1
            then 'Order received'
        when 2
            then 'Processing'
        when 3
            then 'Ready for shipment'
        when 4
            then 'Shipped'
        else 'Undefined'
        end as status_name
from
    {{ ref("stg_localbike__orders") }} o