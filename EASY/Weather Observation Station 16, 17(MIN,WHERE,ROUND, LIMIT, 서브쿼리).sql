--https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780;

--https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
--방법1. LIMIT 활용
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N
LIMIT 1
/*LIMIT 첫번째 값*/

  
--방법2. 서브쿼리
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
  SELECT MIN(LAT_N)
  FROM STATION
  WHERE LAT_N > 38.7780
)
/*WHERE 안에 쿼리: 서브쿼리*/
