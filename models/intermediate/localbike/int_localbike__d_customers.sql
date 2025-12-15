select
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
from
    {{ ref('stg_localbike__customers') }}