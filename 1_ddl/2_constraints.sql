

-- Table Constraints
-- NOT NULL
CREATE TABLE users_not_null (
    id INTEGER,
    username VARCHAR(64),
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);

-- UNIQUE
CREATE TABLE users_unique (
    id INTEGER,
    username VARCHAR(64) UNIQUE,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);

-- PRIMARY KEY
CREATE TABLE users_pk (
    id INTEGER PRIMARY KEY,
    username VARCHAR(64) UNIQUE,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);

-- PRIMARY KEY AUTOINCREMENT
CREATE TABLE users_pk_ai (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(64) UNIQUE,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);
