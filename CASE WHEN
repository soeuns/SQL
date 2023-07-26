-- Type of Triangle
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

SELECT
CASE
    WHEN A=B AND B=C THEN 'Equilateral'
    WHEN A+B <= C OR A+C <= B OR B+C <=A THEN 'Not A Triangle'
    WHEN A=B OR A=C OR B=C THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES

/*조건에 따라 값을 정하는 CASE WHEN구문
SELECT
CASE
  WHEN 조건1 THEN 값1
  WHEN 조건2 THEN 값2
  ELSE 조건3
END
FROM 테이블명
*/
