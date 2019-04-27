DROP DATABASE IF EXISTS tosser;
CREATE DATABASE tosser;

--the following lines are not necessary to run, sequelize does it automatically.--
--use only as a reference:--

DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS recyclables;

CREATE TABLE categories
(
    id int NOT NULL,
    name VARCHAR(255) NOT NULL,
    imagelink VARCHAR (255) NOT NULL,
    description LONGTEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE recyclables
(
    id int AUTO INCREMENT,
    itemname VARCHAR(255) NOT NULL,
    categoryID VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);