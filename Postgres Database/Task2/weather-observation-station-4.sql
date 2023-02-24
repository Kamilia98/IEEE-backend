-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem
SELECT
    (count(CITY) - count(DISTINCT CITY))
FROM
    STATION;