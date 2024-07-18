SELECT * FROM users;
INSERT INTO user(first_name,last_name,age,balance,phone,email,country)
VALUES('Hanh','Nguyen',24,10,'010-6765-2699','hanh291029@naver.com','VietNam');
SELECT * FROM user WHERE first_name = 'Hanh';
SELECT first_name,age FROM user WHERE age > 30;
UPDATE user 
SET balance = 100
WHERE balance > 100;
SELECT balance FROM user WHERE balance > 100;

DELETE FROM user WHERE first_name = 'Austin';
SELECT * FROM user WHERE first_name = 'Austin';
SELECT * FROM user WHERE NOT phone LIKE '010-%';
SELECT * FROM user WHERE last_name LIKE '%''%';

