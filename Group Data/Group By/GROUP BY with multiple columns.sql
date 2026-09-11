SELECT
  customer_id,
  staff_id,
  SUM(amount)
FROM
  payment
GROUP BY
  staff_id,
  customer_id
ORDER BY
  customer_id;