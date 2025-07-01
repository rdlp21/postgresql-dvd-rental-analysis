-- Consulta: Clientes con más alquileres
SELECT customer_id, COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id
ORDER BY total_rentals DESC
LIMIT 5;

-- Consulta: Películas más rentadas
SELECT film_id, COUNT(*) AS total_rentals
FROM rental
GROUP BY film_id
ORDER BY total_rentals DESC
LIMIT 5;

-- Comparar filas dentro de la misma tabla (film)
SELECT
  f1.title,
  f2.title,
  f1.length
FROM
  film f1
  INNER JOIN film f2 
    ON f1.film_id > f2.film_id
   AND f1.length = f2.length;

-- PostgreSQL CROSS JOIN (Producto cartesiano)
SELECT
  select_list
FROM
  table1
CROSS JOIN table2;

-- GROUP BY y ROLLUP
SELECT
  category.name,
  COUNT(film.film_id)
FROM
  film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY ROLLUP (category.name);

-- CUBE para combinaciones múltiples
SELECT
  customer.store_id,
  customer.address_id,
  COUNT(*)
FROM customer
GROUP BY CUBE (store_id, address_id);

--Diferencia entre bases OLTP vs OLAP
Ejemplo OLTP 
Tabla: Sales
+---------+------------+------+----------+-------+
| sale_id | product_id | year | quantity | price |
+---------+------------+------+----------+-------+
Ejemplo OLAP
Tabla resumen de ventas
+------------+------------+---------------+
| product_id | year       | total_revenue |
+------------+------------+---------------+
  
-- CTE y Recursividad (WITH RECURSIVE)
WITH RECURSIVE subordinates AS (
  SELECT employee_id, manager_id, full_name
  FROM employees
  WHERE employee_id = 2
  UNION
  SELECT e.employee_id, e.manager_id, e.full_name
  FROM employees e
  JOIN subordinates s ON s.employee_id = e.manager_id
)
SELECT * FROM subordinates;
