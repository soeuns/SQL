-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Weather Observation Station 4
/* Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:
where LAT_N is the northern latitude and LONG_W is the western longitude.
For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because */

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) -- COUNT:개수
FROM STATION




-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE (CITY LIKE 'i%'    -- WHERE LIKE 특정 문자열 패턴을 검색 
      OR CITY LIKE 'e%'  -- e%: e로 시작하는 문자열
      OR CITY LIKE 'a%'
      OR CITY LIKE 'o%'
      OR CITY LIKE 'u%');

--https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- Weather Observation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE (CITY LIKE '%a'    -- a로 끝나는 문자열
      OR CITY LIKE '%e'
      OR CITY LIKE '%i'
      OR CITY LIKE '%o'
      OR CITY LIKE '%u');
