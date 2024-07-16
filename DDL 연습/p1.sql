DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    year INTEGER,
    grade TEXT,
    salary INTEGER
);

ALTER TABLE employee ADD COLUMN phone_number VARCHAR(128);
ALTER TABLE employee ADD COLUMN email TEXT;

INSERT INTO employee(name, year, grade,salary,email,phone_number)
values('Hanh',2024,'차장',100,'hanh291029@naver.com','010-6765-2699'),
('Jin',2024,'사원',120,'jin291029@naver.com','010-1234-5678'),
('LOC',2024,'사장',12000,'loc30@naver.com','010-8765-4321'),
('DIU',2024,'사원',110,'diu90@naver.com','010-9986-6754');
INSERT INTO employee(name, year, grade,salary)
VALUES
('John Doe', 1985, '대리', 85000),
('Jane Smith', 1992, '대리', 65000),
('Alice Johnson', 1978, '사원', 47000),
('Robert Brown', 2001, '대리', 54000),
('Emily Davis', 1989, '차장', 105000),
('Michael Wilson', 1995, '대리', 72000),
('Sarah Martinez', 2000, '사원', 56000),
('David Anderson', 1975, '대리', 48000),
('Laura Thomas', 1983, '차장', 93000),
('James Jackson', 1998, '대리', 67000);

SELECT * FROM employee;
SELECT * FROM employee WHERE grade = '차장';
UPDATE employee
SET grade = '과장'
WHERE grade = '대리' AND salary >= 5000;
SELECT * FROM employee WHERE grade = '과장';


