--1
SELECT *
FROM Dataset.karirnex
LIMIT 10;

--2
SELECT COUNT (DISTINCT Kota)
FROM Dataset.karirnex;

SELECT DISTINCT (Kota)
FROM Dataset.karirnex;

--3
SELECT *
FROM Dataset.karirnex
WHERE status = 'completed' AND TRIM (Kota) = 'Jakarta Pusat'
ORDER BY sales_date_std DESC;

--4
SELECT category, SUM (total_sales) AS total_revenue
FROM `Dataset.karirnex`
GROUP BY category
ORDER BY total_revenue DESC;

--5
SELECT product_name, COUNT (order_id) AS banyak_order
FROM Dataset.karirnex
GROUP BY product_name
ORDER BY banyak_order DESC
LIMIT 5;

