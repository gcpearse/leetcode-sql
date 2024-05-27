DROP DATABASE IF EXISTS leetcode;
CREATE DATABASE leetcode;

\c leetcode;

CREATE TABLE employee (
  id INT,
  name VARCHAR(255),
  salary INT,
  managerId INT
);

INSERT INTO employee
  (id, name, salary, managerId)
VALUES
  (1, 'Joe', 70000, 3),
  (2, 'Henry', 80000, 4),
  (3, 'Sam', 60000, NULL),
  (4, 'Max', 90000, NULL);

SELECT employee_1.name AS employee
FROM employee AS employee_1
INNER JOIN employee AS employee_2
ON employee_1.managerId = employee_2.id
WHERE employee_1.salary > employee_2.salary;

\c postgres

DROP DATABASE leetcode;

\q


/*

Write a solution to find the employees who earn more than their managers.

*/
