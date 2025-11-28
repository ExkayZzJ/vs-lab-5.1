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
