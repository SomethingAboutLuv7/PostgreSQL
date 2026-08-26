SELECT	*
FROM products
INNER JOIN categories USING (category_id);