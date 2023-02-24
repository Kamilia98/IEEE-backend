-- https://www.hackerrank.com/challenges/the-report/problem
SELECT
    IF(grade.grade >= 8, student.name, "NULL"),
    grade.grade,
    student.marks
FROM
    students AS student
    JOIN grades AS grade ON marks >= min_mark
    AND marks <= max_mark
ORDER BY
    grade.grade DESC,
    student.name;