SELECT Product, SUM(Quantity) AS total_qty
FROM ecommerce
GROUP BY Product
ORDER BY total_qty DESC;

SELECT Product, SUM(Total_Sales) AS revenue
FROM ecommerce
GROUP BY Product
ORDER BY revenue DESC;

SELECT City, SUM(Total_Sales) AS revenue
FROM ecommerce
GROUP BY City
ORDER BY revenue DESC;

SELECT MONTH(Order_Date) AS month, SUM(Total_Sales) AS revenue
FROM ecommerce
GROUP BY month;

SELECT City,
       ROUND(SUM(Total_Sales)/SUM(Quantity),2) AS avg_order_value
FROM ecommerce
GROUP BY City
ORDER BY avg_order_value DESC;
