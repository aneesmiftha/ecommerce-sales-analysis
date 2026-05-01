SELECT City, 
round(SUM(Total_Sales)/SUM(Quantity), 2) as avg_order_value
from ecommerce
group by City
order by avg_order_value desc;