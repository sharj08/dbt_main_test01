SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    {{get_date_parts('Order_Date')}} as date_extract
FROM
    orders o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
--     products p ON o.Product_ID = p.Product_ID


-- SELECT
--     {{ get_date_parts('o.Order_Date') }},
--     o.Customer_ID,
--     p.Product_ID
-- FROM orders o
-- JOIN stg_customers c
--   ON o.Customer_ID = c.Customer_ID
-- JOIN products p
--   ON o.Product_ID = p.Product_ID
