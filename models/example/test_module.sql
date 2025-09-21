SELECT
    STRUCT(
        o.Order_Date            AS original_date,
        YEAR(o.Order_Date)      AS year,
        MONTH(o.Order_Date)     AS month,
        DAY(o.Order_Date)       AS day,
        DAYOFWEEK(o.Order_Date) AS day_of_week,   -- Sunday=1 ... Saturday=7
        DAYOFYEAR(o.Order_Date) AS day_of_year,   -- 1–366
        WEEKOFYEAR(o.Order_Date) AS week,         -- 1–53
        QUARTER(o.Order_Date)   AS quarter
    ) AS extract_date,
    o.Customer_ID,
    p.Product_ID
FROM orders o
JOIN stg_customers c
  ON o.Customer_ID = c.Customer_ID
JOIN products p
  ON o.Product_ID = p.Product_ID;
