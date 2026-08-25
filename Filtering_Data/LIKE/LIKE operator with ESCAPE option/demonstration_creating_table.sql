CREATE TABLE t(
   message text
);

INSERT INTO t(message)
VALUES('The rents are now 10% higher than last month'),
      ('The new film will have _ in the title');

SELECT message FROM t;