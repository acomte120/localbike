select
    store_id || '-' || product_id as stock_id,
    store_id,
    product_id,
    quantity
from
    {{ source('localbike', 'stocks') }}