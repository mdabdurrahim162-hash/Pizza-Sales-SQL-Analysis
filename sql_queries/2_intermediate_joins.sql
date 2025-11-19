-- Intermediate Joins (Questions 6-9)
-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT pizza_types.category, SUM(order_details.quantity) AS quantity
FROM pizza_types
JOIN pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category ORDER BY quantity DESC;

-- 7. Determine the distribution of orders by hour of the day.
SELECT HOUR(order_time) AS hour, COUNT(order_id) AS order_count
FROM orders
GROUP BY HOUR(order_time);

-- 8. Join relevant tables to find the category-wise distribution of pizzas.
SELECT category, COUNT(name) FROM pizza_types GROUP BY category;

-- 9. Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT ROUND(AVG(quantity)) as avg_pizza_per_day
FROM
(SELECT orders.order_date, SUM(order_details.quantity) as quantity
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) as order_quantity;
