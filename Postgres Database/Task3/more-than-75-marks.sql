-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
SELECT
    Name
FROM
    STUDENTS
WHERE
    marks > 75
ORDER BY
    RIGHT(NAME, 3),
    ID ASC;