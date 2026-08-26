SELECT
  film.film_id,
  film.title,
  inventory.inventory_id
FROM
  inventory
RIGHT JOIN film
  ON film.film_id = inventory.film_id
ORDER BY
  film.title;