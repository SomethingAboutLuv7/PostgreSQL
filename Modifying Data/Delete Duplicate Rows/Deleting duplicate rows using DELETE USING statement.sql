DELETE FROM
    basket a
        USING basket b
WHERE
    a.id < b.id
    AND a.fruit = b.fruit;