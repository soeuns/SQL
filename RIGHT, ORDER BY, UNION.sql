-- WEATHER OBSERVATION STATION 5
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

(SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1)

UNION

(SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1)
/*
LENGTH(컬럼명): 길이
() UNION (): 둘 이상의 SELECT 문의 결과 집합을 단일 결과 집합으로 결합하는 데 사용
        세미콜론(;)을 사용할 필요가 없음
LIMIT 1: 반환되는 행 수를 하나로 제한
DESC: 내림차순 / 오름차순은 디폴트
ORDER BY: 정렬
    정렬 기준: CITY의 길이->CITY 알파벳순
*/



-- Higher Than 75 Marks
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;

/*
RIGHT(컬럼명, N): 오른쪽에서 N개의 문자 출력
*/




-- Employee Salaries
-- https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;