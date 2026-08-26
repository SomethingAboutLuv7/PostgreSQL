SELECT
  f.film_id,
  f.title,
  i.inventory_id
FROM
  inventory i
RIGHT JOIN film f
  ON f.film_id = i.film_id
ORDER BY
  f.title;