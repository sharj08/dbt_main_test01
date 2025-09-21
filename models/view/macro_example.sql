SELECT
o.Order_ID,
c.customer_id,
c.customer_name,
p.product_Id,
p.product_name,
o.Quantity,
{{get_date_parts(date_column)}} as date_extract 

from Order o
JOIN
{{ref('stg_customers')}} c ON
o.customer_id = c.customer_id
JOIN
products p ON
o.product_Id = p.product_Id