SELECT
  f.film_id,
  f.title,
  i.inventory_id
FROM
  film f
  LEFT JOIN inventory i ON i.film_id = f.film_id
ORDER BY
  i.inventory_id;