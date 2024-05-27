DROP DATABASE IF EXISTS leetcode;
CREATE DATABASE leetcode;

\c leetcode;

CREATE TABLE customers (
  id INT,
  name VARCHAR(255)
);

CREATE TABLE orders (
  id INT,
  customerId INT
);

INSERT INTO customers
  (id, name)
VALUES
  (1, 'Joe'),
  (2, 'Henry'),
  (3, 'Sam'),
  (4, 'Max');

INSERT INTO orders
  (id, customerId)
VALUES
  (1, 3),
  (2, 1);

SELECT name AS customers
FROM customers
LEFT JOIN orders
ON customers.id = orders.customerId
WHERE orders.customerId IS NULL;

\c postgres

DROP DATABASE leetcode;

\q


/*

Write a solution to find all customers who never order anything.

*/
