DROP DATABASE IF EXISTS leetcode;
CREATE DATABASE leetcode;

\c leetcode;

CREATE TABLE person (
  personId INT, 
  firstName VARCHAR(255), 
  lastName VARCHAR(255)
);

CREATE TABLE address (
  addressId INT,
  personId INT,
  city VARCHAR(255),
  state VARCHAR(255)
);

INSERT INTO person 
  (personId, lastName, firstName)
VALUES 
  (1, 'Wang', 'Allen'),
  (2, 'Alice', 'Bob');

INSERT INTO Address
  (addressId, personId, city, state)
VALUES
  (1, 2, 'New York City', 'New York'),
  (2, 3, 'Leetcode', 'California');

SELECT firstName, lastName, city, state
FROM person
LEFT JOIN Address
ON person.personId = address.personId;

\c postgres

DROP DATABASE leetcode;

\q
