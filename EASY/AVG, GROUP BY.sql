-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Average Population of Each Continent

SELECT COUNTRY.CONTINENT, TRUNCATE(AVG(CITY.POPULATION), 0)
FROM CITY
    INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;

/*
country테이블의 countinent에 대해 각각의 평균을 구하기 위해
GROUP BY 사용

TRUNCATE: 버림
*/
