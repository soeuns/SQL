-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou]'

/*
 ^[ ] : 괄호 안의 문자로 시작하는
 ^[^ ] : 괄호 안의 문자가 아닌 문자로 시작하는
 */


 -- 또 다른 방법

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiou]'
