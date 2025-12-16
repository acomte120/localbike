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
    {{ ref("int_localbike__d_staffs") }}