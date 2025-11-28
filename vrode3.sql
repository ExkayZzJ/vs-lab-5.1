CREATE TABLE institutes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(1024) NOT NULL
);
CREATE TABLE groups1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(2048) NOT NULL,
    short_name VARCHAR(64) UNIQUE NOT NULL,
    year INTEGER,
    institute_id INTEGER NOT NULL
);
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    surname VARCHAR(512) NOT NULL,
    name VARCHAR(512) NOT NULL,
    father_name VARCHAR(512),
    group_id INTEGER NOT NULL
);
CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(512) NOT NULL,
    chief VARCHAR(512) NOT NULL
);

ALTER TABLE groups1
ADD COLUMN cathedral_id INTEGER;

INSERT INTO institutes (name) VALUES ('Институт математики и информатики'), ('Физико-технический институт');

INSERT INTO groups1 (name, short_name, year, institute_id) VALUES
('Информатика и вычислительная техника', 'Б-ИВТ-25-1', 2025, 1),
('Информатика и вычислительная техника', 'Б-ИВТ-25-2', 2025, 1),
('Фундаментальная информатика и информационные технологии', 'Б-ФИИТ-25', 2025, 1),
('Прикладная информатика', 'Б-ПИ-25-1', 2025, 2);

INSERT INTO students (surname, name, father_name, group_id) VALUES
('Семёнов', 'Максим', 'Николаевич', 1),
('Амросьев', 'Данил', NULL, 1),
('Иванов', 'Никита', NULL, 1),
('Климентов', 'Кэссил', NULL, 1),
('Леденёв', 'Никита', NULL, 1),
('Малышев', 'Пётр', NULL, 1),
('Новиков', 'Ёркен', 'Станиславович', 1),
('Орбу', 'Артём', NULL, 1),
('Павлов', 'Айтал', NULL, 1),
('Петров', 'Кирилл', NULL, 1),
('Седалищев', 'Александр', NULL, 1),
('Соловьёв', 'Роман', NULL, 1),
('Аммосова', 'Даяна', NULL, 1),
('Борисов', 'Любомир', NULL, 1),
('Бояров', 'Максим', NULL, 1),
('Бурнашов', 'Данил', NULL, 1),
('Ермолаев', 'Айсен', NULL, 1),
('Иванов', 'Эрхан', NULL, 1),
('Керемасов', 'Александр', NULL, 1),
('Петров', 'Эльдар', NULL, 1),
('Софронов', 'Антон', NULL, 1),
('Степанов', 'Артур', NULL, 1),
('Эртюков', 'Владимир', NULL, 2);

INSERT INTO cathedrals (name, chief) VALUES
('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

UPDATE groups1
SET cathedral_id = 1
WHERE short_name IN ('Б-ИВТ-25-1', 'Б-ИВТ-25-2', 'Б-ФИИТ-25');

UPDATE groups1
SET cathedral_id = 2
WHERE short_name = 'Б-ПИ-25-1';


SELECT * FROM institutes;
SELECT * FROM groups1;
SELECT * FROM students;
SELECT * FROM cathedrals;

SELECT *
FROM groups1
WHERE cathedral_id = 1;
