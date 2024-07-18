-- Aggregate Functions
SELECT count(*) FROM user;
-- 특조=ㅓㅇ 걸럼을 대상으로 계산을 한다. 
SELECT AVG(balance) FROM user;
SELECT MAX(age) FROM user;
SELECT MIN(age) FROM user;
SELECT SUM(balance) FROM user;
SELECT AVG(balance),SUM(balance) FROM user;

-- WHERE와 조합
SELECT COUNT(*) FROM user
WHERE age < 30;

SELECT balance FROM user
WHERE age < 30;

-- user중 국적이 United States인 user의 평균 나이
SELECT AVG(age) FROM user
WHERE country = 'United States';
-- 국적이 South Korea인 user의 balance 총합
SELECT SUM(balance) FROM user 
WHERE country = 'South Korea';

-- 국적별로 사용자의 balance 평균을 조사해주세요
-- 1. 국적의 종류를 찾아야 한다.
SELECT DISTINCT country FROM user;
-- 2. 결과를 어디 메모해두고
-- 3. 각각 country = '국적'으로 검색한다
SELECT AVG(balance) FROM user
WHERE country = '';
-- 이렇게 하지 말고...
-- 내가 결과를 모루는 기준으로 country다!
SELECT * FROM user WHERE country = 'Colombia';


-- country를 기준으로 GROUP BY를 하자
SELECT country, AVG(balance) FROM user
GROUP BY country
-- ORDER BY도 가능
-- ORDER BY country DESC
ORDER BY AVG(age);

-- balance 별로 데이터를 모아
-- 각각의 평균 나이를 구하는 SQL
SELECT balance, AVG(age) FROM user
GROUP BY balance;

-- 국적별 사용자 수 
-- 많은 국적부터 적은 국적 순으로
SELECT country, COUNT(*) FROM user
GROUP BY country
ORDER BY COUNT(*);

-- 각 나잇대 (20대, 30대,40대 ...)  별 평균 balance
-- 20~29, 30~39
SELECT age / 10, AVG(balance) FROM user 
GROUP BY age / 10
ORDER BY age / 10;

-- Balance를 10대로 나누어서
-- (100~109, 110~119 ...)
-- 각 구간별 평균 나이
SELECT balance / 10, AVG(age),COUNT(*) FROM user
GROUP BY balance / 10
ORDER BY balance / 10;

-- 평균 열령이 40 이상인 나라만 조회하고 싶을 때
-- 국가별 평균 열령
SELECT country, AVG(age)
FROM user
-- WHERE를 넣어면 안된다!
-- age <=45인 데이터를 버리고 진행하기 때문에
-- WHERE age > 45 
GROUP BY country
-- 집게 결과로 데이터를 필링하고 싶으면
HAVING AVG(age) >= 45;
