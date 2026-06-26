SELECT
	EXTRACT(MONTH FROM STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS order_month,
    EXTRACT(YEAR FROM STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS order_year,
    SUM(Sales) AS total_sales
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year;