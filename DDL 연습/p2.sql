DROP TABLE IF EXISTS shopping;

CREATE TABLE shopping (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64),
    price INTEGER,
    stock INTEGER
);

ALTER TABLE shopping ADD COLUMN company TEXT;

INSERT INTO shopping(name,price,stock,company)
VALUES ('quan dui',1000000,50,'a'),
('ao ba lo',90000,70,'b'),
('bra', 150000, 20,'c'),
('underwear', 120000, 100,'c');
INSERT INTO shopping(name,price,stock)
VALUES
('chair', 250, 34),
('table', 450, 0),
('lamp', 120, 22),
('sofa', 780, 0),
('book', 20, 10),
('pencil', 5, 0),
('notebook', 15, 5),
('pen', 8, 0),
('backpack', 120, 55),
('monitor', 320, 0);

SELECT * FROM shopping;
SELECT * FROM shopping 
WHERE price <= 100000 AND stock >= 10
ORDER BY stock DESC;

DELETE FROM shopping
WHERE stock = 0;
SELECT * FROM shopping;
