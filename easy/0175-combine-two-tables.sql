DROP DATABASE IF EXISTS leetcode_0175;
CREATE DATABASE leetcode_0175;

\c leetcode_0175;

CREATE TABLE Person (
  personId INT, 
  firstName VARCHAR(255), 
  lastName VARCHAR(255)
);

CREATE TABLE Address (
  addressId INT,
  personId INT,
  city VARCHAR(255),
  state VARCHAR(255)
);

INSERT INTO Person 
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
FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId;

\c postgres

DROP DATABASE leetcode_0175;

\q
