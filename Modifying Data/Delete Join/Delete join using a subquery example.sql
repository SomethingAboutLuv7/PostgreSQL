DELETE FROM member
WHERE phone IN (
    SELECT
      phone
    FROM
      denylist
);