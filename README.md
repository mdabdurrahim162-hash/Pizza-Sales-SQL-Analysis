# pizza_sales_project_by_SQL
Pizza Sales Data Analysis 🍕

📌 Project Overview

This project analyzes sales data from a pizza chain to answer key business questions regarding customer demand, sales performance, and operational efficiency. The analysis was performed using SQL (MySQL/PostgreSQL) to derive actionable insights from the raw data.

Data Source: [Insert Link to where you downloaded the data on GitHub]

🔍 Key Insights & Findings

Total Revenue: The total revenue generated was $817,860.05.


Busiest Days & Times: Orders peak around 12:00 PM (2,520 orders) and 6:00 PM (2,399 orders).



Customer Preferences: The Large (L) size is the most popular, accounting for 18,526 orders.


Top Performers: The Thai Chicken Pizza generates the highest revenue ($43,434.25).

🛠️ Technical Skills Demonstrated

Aggregations: Used COUNT, SUM, and AVG to calculate totals and averages.




Joins: Combined data from orders, order_details, pizzas, and pizza_types tables.



Window Functions: Used RANK() OVER (PARTITION BY ...) to find the top 3 pizzas per category.


Advanced Analytics: Calculated Cumulative Revenue over time using window functions.

