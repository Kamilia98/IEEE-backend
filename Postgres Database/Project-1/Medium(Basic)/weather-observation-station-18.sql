
-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
SELECT
    MIN(LAT_N)
FROM
    STATION INTO @a;

SELECT
    MIN(LONG_W)
FROM
    STATION INTO @b;

SELECT
    MAX(LAT_N)
FROM
    STATION INTO @c;

SELECT
    MAX(LONG_W)
FROM
    STATION INTO @d;

SELECT
    ROUND(ABS(@a - @c) + ABS(@b - @d), 4);

-- Another solution
SELECT  ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)
FROM
    STATION;