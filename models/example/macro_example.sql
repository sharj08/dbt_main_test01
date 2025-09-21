SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    {{ get_date_parts_flat('Order_Date') }} -- No "as date_extract"
FROM
    orders o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
    products p ON o.Product_ID = p.Product_ID