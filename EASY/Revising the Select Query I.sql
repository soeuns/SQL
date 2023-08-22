-- https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.


SELECT *  -- 모든 컬럼 조회
FROM CITY -- FROM 테이블명
WHERE POPULATION >= 100000 AND COUNTRYCODE = 'USA'; -- WHERE 조건1 AND 조건2 / '문자열'
