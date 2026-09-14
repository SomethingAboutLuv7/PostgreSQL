SELECT
    fruit,
    COUNT( fruit )
FROM
    basket
GROUP BY
    fruit
HAVING
    COUNT( fruit )> 1
ORDER BY
    fruit;