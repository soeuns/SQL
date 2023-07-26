-- Weather Observation Station 15
-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345

-- LAT_N 값을 내림차순으로 정렬하여 가장 큰 값이 위에 위치하도록 함
ORDER BY LAT_N DESC

-- 결과에서 가장 큰 값을 하나만 반환하도록 제한
LIMIT 1;

/*LIMIT 숫자 : 결과에서 몇개를 출력할지
ORDER BY 컬럼 DESC: 내림차순
*/
