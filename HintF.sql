/*SELECT *
FROM orders
WHERE YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) = 2017;
*/
SELECT *
FROM orders
WHERE STR_TO_DATE(`Order Date`, '%m/%d/%Y')
BETWEEN '2017-01-01' AND '2017-01-02'
ORDER BY EXTRACT(DAY FROM STR_TO_DATE(`Order Date`, '%m/%d/%Y')) ;