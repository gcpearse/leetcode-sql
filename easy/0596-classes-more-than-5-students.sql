DROP DATABASE IF EXISTS leetcode;
CREATE DATABASE leetcode;

\c leetcode;

CREATE TABLE courses (
  student VARCHAR(255),
  class VARCHAR(255)
);

INSERT INTO courses
  (student, class)
VALUES
  ('A', 'Math'),
  ('B', 'English'),
  ('C', 'Math'),
  ('D', 'Biology'),
  ('E', 'Math'),
  ('F', 'Computer'),
  ('G', 'Math'),
  ('H', 'Math'),
  ('I', 'Math');

SELECT class 
FROM courses
GROUP BY class
HAVING COUNT(student) >= 5;

\c postgres

DROP DATABASE leetcode;

\q


/*

Write a solution to find all the classes that have at least five students.

Return the result table in any order.

*/
