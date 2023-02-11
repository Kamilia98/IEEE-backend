https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true 

select CAST(ROUND(SUM(LAT_N), 2)AS NUMERIC(12,2)), CAST(ROUND(SUM(LONG_W), 2) AS NUMERIC(12,2)) from STATION;