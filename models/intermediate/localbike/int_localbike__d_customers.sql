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
union
select
    -1 as customer_id
    'Unknown' as first_name,
    'Unknown' as last_name,
    'Unknown' as phone,
    'Unknown' as email,
    'Unknown' as street,
    'Unknown' as city,
    'Unknown' as state,
    'Unknown' as zip_code