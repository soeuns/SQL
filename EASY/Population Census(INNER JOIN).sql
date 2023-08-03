--https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

SELECT SUM(City.POPULATION)
FROM City
    INNER JOIN COUNTRY ON City.COUNTRYCODE = Country.CODE
WHERE Country.CONTINENT = 'Asia'

/*
INNER JOIN은 SQL에서 테이블 간에 데이터를 결합
INNER JOIN 테이블1 ON 테이블2.컬럼 = 테이블1.컬럼(결합 조건)
ON 뒤 조건이 만족하는 경우만 결합
;*/
