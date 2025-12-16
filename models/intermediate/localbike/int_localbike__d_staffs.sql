select
    staff_id,
    first_name,
    last_name,
    email,
    phone,
    active,
    store_id,
    manager_id
from
    {{ ref('stg_localbike__staffs') }}
union all
    -1 as staff_id,    
    'Unknown' as first_name,
    'Unknown' as last_name,
    'Unknown' as email,
    'Unknown' as phone,
    -1 as active,
    -1 as store_id,
    -1 as manager_id