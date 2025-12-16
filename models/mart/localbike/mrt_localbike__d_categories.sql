select
    category_id,
    category_name
from
    {{ ref("int_localbike__d_categories") }}