--  Retrieve the total number of orders placed.
select count(*)  as "Total Orders Placed" from orders;

-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(o.quantity * p.price), 2) AS 'Total Sales of Pizza'
FROM
    pizzas p
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
;
-- Identify the highest-priced pizza.
SELECT 
    pt.name AS Name, p.price AS 'Highest-priced pizza'
FROM
    pizzas p
        JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
WHERE
    p.price = (SELECT 
            MAX(price)
        FROM
            pizzas);
            
-- Identify the most common pizza size ordered.
SELECT 
    p.size,
    COUNT(o.quantity) AS 'Most Common Pizza Size Ordered'
FROM
    pizzas p
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY p.size
ORDER BY COUNT(o.quantity) DESC;
