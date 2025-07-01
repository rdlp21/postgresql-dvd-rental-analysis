# PostgreSQL DVD Rental Analysis

Este proyecto contiene un conjunto de consultas SQL aplicadas a la base de datos **DVD Rental**.

## Objetivo
Aplicar y demostrar dominio de consultas SQL con la base de datos de alquiler de películas, respondiendo preguntas de negocio.

## Contenido
- `dvd_rental_analysis.sql`: contiene consultas SQL documentadas con comentarios.

## Dataset utilizado
Base de datos pública "DVD Rental" utilizada comúnmente para prácticas en PostgreSQL.

## Aprendizajes
- Agrupaciones, ordenamientos y análisis de datos con SQL
- Interpretación de datos relacionales
- Comunicación técnica básica de resultados
  
- Comparar filas dentro de la misma tabla (film)
  •	Comparar pares de registros de la misma tabla.
	•	Usar INNER JOIN sobre la misma tabla (alias f1, f2).
	•	Evitar duplicados con f1.film_id > f2.film_id.

- PostgreSQL CROSS JOIN (Producto cartesiano)
  •	Combina cada fila de table1 con todas las filas de table2.
	•	Resulta en un producto cartesiano (n × m filas).
	•	Se puede simular con: FROM table1, table2 o INNER JOIN ... ON true.

- GROUP BY y ROLLUP
  •	GROUP BY agrupa por una o más columnas.
	•	ROLLUP agrega una fila extra de totales (suma acumulada o general).
	•	Sirve para resúmenes jerárquicos.

- CUBE para combinaciones múltiples
	•	CUBE genera todas las combinaciones posibles de los campos agrupados.
	•	Es útil para análisis multidimensionales, como OLAP (cubos analíticos).
	•	Ejemplo: comparar ventas por tienda, por dirección, y totales combinados.

- Diferencia entre bases OLTP vs OLAP
  •	OLTP: transacciones en tiempo real, datos normalizados.
	•	OLAP: análisis y reportes, datos agregados y desnormalizados.

- CTE y Recursividad (WITH RECURSIVE)
  •	WITH define un CTE (consulta común).
	•	RECURSIVE permite llamadas a sí mismo dentro del UNION.
	•	Útil para recorrer jerarquías, como estructuras de empleados o categorías anidadas.
