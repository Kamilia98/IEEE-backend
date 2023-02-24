-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
SELECT
    MIN(LAT_N)
FROM
    STATION INTO @a;

SELECT
    MAX(LAT_N)
FROM
    STATION INTO @b;

SELECT
    MIN(LONG_W)
FROM
    STATION INTO @c;

SELECT
    MAX(LONG_W)
FROM
    STATION INTO @d;

SELECT
    ROUND(SQRT(POWER(@a - @b, 2) + POWER(@c - @d, 2)), 4);


-- another solution

SELECT
    ROUND(SQRT(POWER((MIN(LAT_N)) - (MAX(LAT_N)), 2) + POWER((MIN(LONG_W)) - (MAX(LONG_W)), 2)), 4)
FROM STATION;
