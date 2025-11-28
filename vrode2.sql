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
INSERT INTO institutes (name) VALUES ('Институт математики и информатики'), ('Физико-технический институт');

INSERT INTO groups1 (name, short_name, year, institute_id) VALUES
('Информатика и вычислительная техника', 'Б-ИВТ-25-1', 2025, 1),
('Информатика и вычислительная техника', 'Б-ИВТ-25-2', 2025, 1),
('Фундаментальная информатика и информационные технологии', 'Б-ФИИТ-25', 2025, 1),
('Прикладная информатика', 'Б-ПИ-25-1', 2025, 2);

INSERT INTO students (surname, name, father_name, group_id) VALUES
('Эртюков', 'Владимир', NULL, 2),
('Семенов', 'Максим', 'Николаевич', 1),
('Новиков', 'Еркен', 'Станиславович', 1);

SELECT * FROM institutes;
SELECT * FROM groups1;
SELECT * FROM students;