-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem

SELECT
    CEIL(COUNT(*) / 2) 
FROM
    Station INTO @X;

SET @row_number = 0;

CREATE TABLE T1 AS(
    SELECT lat_n AS a, (@row_number:=@row_number+1) AS num FROM Station ORDER BY lat_n
);

SELECT round(a,4) FROM t1 WHERE num = @X;

DROP tABLE T1 ;