
-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[^aeiou]$';

/* 정규식 사용할 때 REGEXP
대괄호 [ ] 안에 ^: 문자 클래스를 부정
&가 아닌 $임을 주의 */




-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou]|[^aeiou]$';

/*
'^[^aeiou]$'   한 번에 쓰기 불가능. 나눠서 두번 써야 함
| or의 의미
*/





-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$';

/*
.*의 의미: 모든 문자(개행 문자 제외)와 0번 이상 일치하는 패턴
다른 두 패턴 사이에 있는 문자 시퀀스를 일치시키는 데 사용
빈 문자열을 포함하여 일련의 문자와 일치시킴
*/
