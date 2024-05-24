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
  (1, 'a@b.com'),
  (2, 'c@d.com'),
  (3, 'a@b.com');

SELECT email
FROM person
GROUP BY email
HAVING COUNT(email) > 1;

\c postgres

DROP DATABASE leetcode;

\q
