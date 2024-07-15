

-- TODO
-- contents, due_date, completed
CREATE TABLE todo(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content TEXT,
    due_date TEXT,
    completed INTEGER
);

-- STUDENT 
-- first_name
-- last_name
-- phone
-- email
-- address
-- graduate

CREATE TABLE student (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXt NOT NULL,
    phone TEXT NOT NULL,
    email TEXT,
    address TEXT,
    graduate INTEGER
);
