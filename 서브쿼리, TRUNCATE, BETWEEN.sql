-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Top Earners
-- We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

SELECT MAX(months * salary), COUNT(*) 
FROM Employee 
WHERE months * salary = (SELECT MAX(months * salary) FROM Employee); 

/*
* 곱하기
COUNT(*) : 행의 수
WHERE 조건절 안에 서브쿼리
*/



-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- Weather Observation Station 2
-- Query the following two values from the STATION table: The sum of all values in LAT_N rounded to a scale of  decimal places.The sum of all values in LONG_W rounded to a scale of  decimal places.

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION



-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- Weather Observation Station 13
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

SELECT TRUNCATE(SUM(LAT_N), 4) -- 소숫점 4자리로 반올림
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

/*
TRUNCATE: 반올림
오류1. BETWEEN(A,B)아님 -> BETWEEN A AND B
오류2. BETWEEN 앞에 기준 컬럼이 나와야 함
*/