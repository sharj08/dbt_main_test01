-- Test to check if there are no orders from today

select count(*) as num_orders_today
from {{ref('stg_orders')}}
where order_date = '2025-01-01' having count(*) >0
