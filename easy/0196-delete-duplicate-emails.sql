DROP DATABASE IF EXISTS leetcode;
CREATE DATABASE leetcode;

\c leetcode;

CREATE TABLE person (
  id INT,
  email VARCHAR(255)
);

INSERT INTO person
  (id, email)
VALUES
  (1, 'john@example.com'),
  (2, 'bob@example.com'),
  (3, 'john@example.com');

DELETE
FROM person AS person_1
USING person AS person_2
WHERE person_1.email = person_2.email
AND person_1.id > person_2.id;

SELECT * FROM person;

\c postgres

DROP DATABASE leetcode;

\q
