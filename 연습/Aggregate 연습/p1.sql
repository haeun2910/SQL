-- 전체 학생들의 학점 평균을 출력하는 SQL을 작성하시오.
SELECT AVG(gpa) FROM student;
-- 전체 학생들 중 가장 높은 입학 연도와
-- 가장 낮은 입학 연도를 출력하는 SQL을 작성하시오.
SELECT MAX(year) FROM student;
SELECT MIN(year) FROM student;
-- 각 전공 별 학생 수를 출력하는 SQL을 작성하시오.
SELECT major,COUNT(*) FROM student
GROUP BY major;
-- 2000년 이후 입학한 학생들을 대상으로,
--  각 연도별 학생들의 학점 평균을 출력하는 SQL을 작성하시오.
SELECT year, AVG(gpa) FROM student
GROUP BY year
HAVING year >= 2000;
-- 각 평점을 받은 학생이 몇명인지,
-- 전공별로 나누어 출력하는 SQL을 작성하시오.
SELECT major,gpa, COUNT(*) FROM student
GROUP BY major,gpa
ORDER BY major;
-- 각 평점을 받은 학생이 몇명인지,
-- 전공별로 나누어 출력하되,
-- 총 인원이 30명이 넘는 자료만 출력하는 SQL을 작성하시오.
SELECT major,gpa,COUNT(*) FROM student
GROUP BY major, gpa
HAVING COUNT(*) > 30
ORDER BY major;

