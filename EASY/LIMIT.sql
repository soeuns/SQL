-- Weather Observation Station 15
-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;

/*LIMIT 숫자 : 결과에서 몇개를 출력할지
ORDER BY 컬럼 DESC: 내림차순
*/
