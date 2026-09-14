CREATE TABLE member(
   id SERIAL PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   phone VARCHAR(15) NOT NULL
);


CREATE TABLE denylist(
    phone VARCHAR(15) PRIMARY KEY
);


INSERT INTO member(first_name, last_name, phone)
VALUES ('John','Doe','(408)-523-9874'),
       ('Jane','Doe','(408)-511-9876'),
       ('Lily','Bush','(408)-124-9221');


INSERT INTO denylist(phone)
VALUES ('(408)-523-9874'),
       ('(408)-511-9876');

SELECT * FROM member;

SELECT * FROM denylist;