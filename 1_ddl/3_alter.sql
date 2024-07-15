

-- ALTER TABLE
-- RENAME TO
ALTER TABLE users RENAME TO users_backup;
ALTER TABLE users_backup RENAME TO users;

ALTER TABLE users RENAME TO user_backup;
ALTER TABLE users_pk_ai RENAME TO users;

-- RENAME COLUMN
ALTER TABLE users RENAME COLUMN first_name TO given_name;
ALTER TABLE users RENAME COLUMN last_name TO sur_name;

-- ADD COLUMN 
ALTER TABLE users ADD COLUMN address VARCHAR(256);
-- 문제가 될 수 있다.
-- 이미 존재하는 Record의 그 Column에는 무엇을 넣어야 할까?
ALTER TABLE users ADD COLUMN phone VARCHAR(128) NOT NULL DEFAULT 'asdf';

-- DROP COlUMN (SQLite 미지원)
ALTER TABLE users DROP COLUMN phone;

-- DROP TABLE 
DROP TABLE users;
DROP TABLE IF EXISTS users;