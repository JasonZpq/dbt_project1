select 
    *
from 
    {{ ref('fct_orders') }} 
where 
    order_status is null 