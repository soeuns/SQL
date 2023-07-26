-- Weather Observation Station 15
-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true

-- STATION 테이블에서 LONG_W 값을 소수점 네 자리까지 반올림하여 선택
SELECT ROUND(LONG_W, 4)

-- LAT_N 값이 137.2345보다 작은 레코드들을 필터링
FROM STATION
WHERE LAT_N < 137.2345

-- LAT_N 값을 내림차순으로 정렬하여 가장 큰 값이 위에 위치하도록 함
ORDER BY LAT_N DESC

-- 결과에서 가장 큰 값을 하나만 반환하도록 제한
LIMIT 1;
