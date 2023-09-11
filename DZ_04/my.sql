
-- create
CREATE TABLE employee (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
name TEXT NOT NULL,
age INTEGER NOT NULL,
address TEXT NOT NULL
);

-- insert
INSERT INTO employee (name, age, address) VALUES ('Clark', 18, 'Moscow');
INSERT INTO employee (name, age, address) VALUES ('Dave', 21,'Serbian');
INSERT INTO employee (name, age, address) VALUES ('Ava', 45,  'SaintP');
INSERT INTO employee (name, age, address) VALUES ('Sergio', 68, 'Cleaning');
INSERT INTO employee (name, age, address) VALUES ('Sandra', 33, 'NewYork');
INSERT INTO employee (name, age, address) VALUES ('Luciano', 9, 'Boston');
INSERT INTO employee (name, age, address) VALUES ('Bob', 13, 'Kongo');
INSERT INTO employee (name, age, address) VALUES ('Sam', 49, 'Brikleberry');
INSERT INTO employee (name, age, address) VALUES ('Pakito', 13, 'Moscow');
INSERT INTO employee (name, age, address) VALUES ('Barbie', 49, 'Moscow');

-- fetch
SELECT name AS Имя
FROM employee
WHERE address = 'Moscow' AND age >= 18 AND age < 30
ORDER BY name;