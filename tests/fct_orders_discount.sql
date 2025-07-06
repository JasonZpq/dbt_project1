select 
    *
from 
{{ ref('fct_orders') }} 
where 
    items_discounted_amount > 0