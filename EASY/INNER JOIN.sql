-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- African Cities

SELECT CITY.NAME   -- CITY 테이블에서 NAME 필드 선택
FROM CITY
    INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';

/*
INNER JOIN: 두개 이상 테이블을 연결해 조건을 만족하는 데이터만 반환하는 것

FROM
    table1
INNER JOIN
    table2 ON table1.column1 = table2.column2(조건);
*/
