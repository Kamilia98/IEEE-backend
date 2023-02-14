-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
SELECT
    (
        IF(
            (A + B) <= C
            OR (A + C) <= B
            OR (B + C) <= A,
            'Not A Triangle',
            IF (
                A = B
                AND B = C,
                'Equilateral',
                IF(
                    A != B
                    AND B != C
                    AND A != C,
                    'Scalene',
                    'Isosceles'
                )
            )
        )
    )
FROM
    TRIANGLES;