-- The Blunder
-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- 임금의 평균에서 0이 고장난 키보드로 입력한 임금의 평균을 뺀 값

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, 0, '')))
FROM EMPLOYEES
/* 값이 소수로 나오므로 CEIL로 묶기
CEIL(숫자): 올림
REPLACE(컬럼명, 기존 값, 바꿀 값) : 기존 값을 다른 값으로 대체
TRUNCATE(숫자): 내림 */




-- Revising Aggregations - The Count Function
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
-- Query a count of the number of cities in CITY having a Population larger than 100000.

SELECT COUNT(ID) -- COUNT: 개수를 세는 함수
FROM CITY
WHERE POPULATION > 100000;





-- Revising Aggregations - The Sum Function
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- Query the total population of all cities in CITY where District is California.

SELECT SUM(POPULATION) -- SUM: 합을 구하는 함수
FROM CITY
WHERE DISTRICT = 'California';





-- Revising Aggregations - Averages
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- Query the average population of all cities in CITY where District is California.

SELECT AVG(POPULATION) -- AVG: 평균을 구하는 함수 (AVERAGE가 아님을 주의)
FROM CITY
WHERE DISTRICT = 'California';





-- Average Population
-- https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT ROUND(AVG(POPULATION)) -- ROUND: 반올림 함수
FROM CITY





-- Population Density Difference
-- https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- Query the difference between the maximum and minimum populations in CITY.

SELECT MAX(POPULATION) - MIN(POPULATION) -- SELECT문에서 연산 가능
FROM CITY