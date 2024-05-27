DROP DATABASE IF EXISTS leetcode;
CREATE DATABASE leetcode;

\c leetcode;

CREATE TABLE weather (
  id INT,
  recordDate DATE,
  temperature INT
);

INSERT INTO weather
  (id, recordDate, temperature)
VALUES
  (1, '2015-01-01', 10),
  (2, '2015-01-02', 25),
  (3, '2015-01-03', 20),
  (4, '2015-01-04', 30);

SELECT weather_1.id
FROM weather AS weather_1
INNER JOIN weather AS weather_2
ON weather_1.recordDate = weather_2.recordDate + INTERVAL '1 day'
WHERE weather_1.temperature > weather_2.temperature;

\c postgres

DROP DATABASE leetcode;

\q


/*

Write a solution to find the ID for any date with a higher temperature than the previous date.

*/
