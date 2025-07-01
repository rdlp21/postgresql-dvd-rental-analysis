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
