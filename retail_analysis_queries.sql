SELECT COUNT(*) AS total_rows FROM retail_project.superstoreorders;
SELECT ROUND(SUM(sales), 2) AS total_sales, 
       ROUND(SUM(profit), 2) AS total_profit
FROM retail_project.superstoreorders;
SELECT MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS month,
       ROUND(SUM(sales), 2) AS total_sales
FROM retail_project.superstoreorders
GROUP BY MONTH(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY month;
SELECT region, 
       ROUND(SUM(sales), 2) AS total_sales, 
       ROUND(SUM(profit), 2) AS total_profit
FROM retail_project.superstoreorders
GROUP BY region
ORDER BY total_sales DESC;
SELECT customer_name, 
       ROUND(SUM(sales), 2) AS total_sales
FROM retail_project.superstoreorders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT category, 
       ROUND(SUM(profit), 2) AS total_profit
FROM retail_project.superstoreorders
GROUP BY category
ORDER BY total_profit ASC;