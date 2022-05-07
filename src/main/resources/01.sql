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

CREATE TABLE users
(
    username varchar(15),
    password varchar(100),
    enabled  tinyint(1),
    PRIMARY KEY (username)
);

CREATE TABLE authorities
(
    username  varchar(15),
    authority varchar(25),
    FOREIGN KEY (username) references users (username)
);

INSERT INTO my_db.users (username, password, enabled)
VALUES ('Vladimir', '{bcrypt}$2a$10$2rwezGo58XrDFiGUXlI5muOUxWEsJPH2JwLg8CyKruCOU2QCNL2di', 1),
       ('Svetlana', '{bcrypt}$2a$10$E7/FarWb0p4MoT1hcuDQNuiw9h6RofE72K.Vtb6z4hzLvhqsKcBb2', 1),
       ('Aleksandr', '{bcrypt}$2a$10$xWiKLp2drwRx2p3AhZLpm.X2HT8plo3WgES1PbPmawgvek9vGowjO', 1);

INSERT INTO my_db.authorities (username, authority)
VALUES ('Vladimir', 'ROLE_EMPLOYEE'),
       ('Svetlana', 'ROLE_HR'),
       ('Svetlana', 'ROLE_HR'),
       ('Aleksandr', 'ROLE_MANAGER');

INSERT INTO employees(name, surname, department, salary)
VALUES ('Vladimir', 'Glinskikh', 'IT', 800),
       ('Nikolay', 'Romanov', 'Sales', 700),
       ('Svetlana', 'Svetina', 'HR', 890);

SELECT * FROM employees;
SELECT * FROM users;
SELECT * FROM authorities;