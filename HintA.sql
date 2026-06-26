SELECT
    `Order ID`,
    STR_TO_DATE(`Order Date`, '%m/%d/%Y') AS order_date,
    EXTRACT(MONTH FROM STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS order_month
FROM orders;