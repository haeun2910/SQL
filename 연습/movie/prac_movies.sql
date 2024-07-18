CREATE TABLE movie (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    director TEXT,
    release INTEGER
)
CREATE TABLE actor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
)

CREATE TABLE movie_actor (
    movie_id INTEGER,
    actor_id INTEGER
)

CREATE TABLE genre (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
)

CREATE TABLE movie_genre (
    movie_id INTEGER,
    genre_id INTEGER
)