CREATE TABLE music (
    title VARCHAR(128),
    artist VARCHAR(64),
    writer VARCHAR(64),
    lyrics VARCHAR(128),
    album_name VARCHAR(64),
    year INTEGER,
    dur_in_secs INTEGER 
);
INSERT INTO music (title,artist,writer,lyrics,album_name,year,dur_in_secs)
VALUES
('Lorem ipsum dolor', 'John Doe', 'Jane Doe', 'Sed ut perspiciatis unde omnis', 'consequatur', 1998, 210),
('Lorem ipsum dolor', 'Alice Smith', 'John Smith', 'Nemo enim ipsam voluptatem', 'voluptas', 2005, 345),
('Lorem ipsum dolor', 'Robert Brown', 'Michael Johnson', 'At vero eos et accusamus', 'dolores', 2010, 178),
('Lorem ipsum dolor', 'Emily Davis', 'Jessica Wilson', 'Et harum quidem rerum', 'fugit', 2018, 289),
('Lorem ipsum dolor', 'Daniel Martinez', 'Sophia Rodriguez', 'Nam libero tempore', 'soluta', 1999, 259),
('Lorem ipsum dolor', 'Matthew Garcia', 'David Lee', 'Temporibus autem quibusdam', 'optio', 2001, 156),
('Lorem ipsum dolor', 'Olivia Harris', 'Isabella Clark', 'Ut enim ad minima veniam', 'quibusdam', 2012, 312),
('Lorem ipsum dolor', 'Alexander Lewis', 'Mia Walker', 'Quis autem vel eum iure', 'velit', 2020, 241),
('Lorem ipsum dolor', 'Charlotte Young', 'Amelia Hernandez', 'Eum fugiat quo voluptas', 'nemo', 2015, 265),
('Lorem ipsum dolor', 'Liam King', 'Mason Wright', 'Autem quibusdam et aut', 'quod', 2008, 331);
SELECT * FROM music;
SELECT artist,writer FROM music
WHERE dur_in_secs >= 300
ORDER BY dur_in_secs;

