--https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$' AND CITY REGEXP '^[aeiou]';

/* 정규표현식 패턴
[]: []안에 해당하는 문자 찾기
$: 끝나는 문자 찾기
'[aeiou]$': 모음으로 끝나는 문자열

^: 시작하는 문자 찾기 */
