DROP DATABASE IF EXISTS my_db;
CREATE DATABASE IF NOT EXISTS my_db;

USE my_db;

CREATE TABLE employees
(
    id         INT NOT NULL AUTO_INCREMENT,
    name       VARCHAR(15),
    surname    VARCHAR(25),
    department VARCHAR(20),
    salary     INT,
    PRIMARY KEY (id)
);

INSERT INTO employees(name, surname, department, salary)
VALUES ('Vladimir', 'Glinskikh', 'IT', 800),
       ('Nikolay', 'Romanov', 'Sales', 700),
       ('Svetlana', 'Svetina', 'HR', 890);

SELECT * FROM employees;