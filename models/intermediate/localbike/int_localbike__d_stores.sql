select
    store_id,
    store_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
from
    {{ ref('stg_localbike__stores') }}
union all
select
    -1 as store_id,
    'Unknown' as store_name,
    'Unknown' as phone,
    'Unknown' as email,
    'Unknown' as street,
    'Unknown' as city,
    'Unknown' as state,
    -1 as zip_code