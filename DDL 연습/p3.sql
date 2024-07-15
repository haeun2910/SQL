CREATE TABLE menu (
    name VARCHAR(64),
    category VARCHAR(64),
    description TEXT,
    price INTEGER,
    vegetarian TEXT
);


INSERT INTO menu (name, category, description,price,vegetarian)
VALUES ('Chicken Parmesan', '양식', 'Chicken ', 150, 'NO'),
('Steak','양식','medium rare-rare-medium',300,'NO'),
('Pasta','양식','Spaghetti',100,'YES'),
('김치찌개','한식','조금 매움',50,'YES'),
('비빔밥','한식','고추장',50,'YES'),
('불고기','한식','고추장',60,'NO'),
('탕수육','중식','조금 달다',70,'NO'),
('짜장면','중식','조금 매움',50,'YES'),
('짬뽕','중식','조금 매움',60,'NO'),
('스시','일식','생선',90,'YES'),
('돈까스','일식','고기',80,'NO'),
('라멘','일식','고기',60,'NO'),
('타코야끼','일식','문어',50,'NO');
SELECT * FROM menu;
SELECT * FROM menu
WHERE category IN ('중식','한식')
AND vegetarian LIKE 'YES%'
ORDER BY price;


