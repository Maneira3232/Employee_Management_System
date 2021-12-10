DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  -- CREATE id, name COLUMNS
  -- MAKE id AS PRIMARY KEY
  -- TODO: YOUR CODE HERE
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
  PRIMARY KEY(id)
);

CREATE TABLE role (
  -- CREATE id AS INTERGER, title AS VARCHAR, salary AS DECIMAL, deplartment_id AS INTEGER
  -- MAKE id As PRIMARY KEY
  -- MAKE department_id AS FOREIGN KEY REFERENCING department TABLE AND
  -- MAKE CONSTRAINT 'ON DELETE CASCADE' (WITHOUT QUOTES) ON THIS FOREIGN KEY
  -- TODO: YOUR CODE HERE
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  salary INT NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY(id)

);

CREATE TABLE employee (
  -- CREATE COLUMNS: id AS INT, first_name AS VARCHAR, last_name AS VARCHAR, role_id AS INTEGER, AND manager_id AS INT.
  -- MAKE id As PRIMARY KEY
  -- MAKE role_id AS FOREIGN KEY REFERENCING role TABLE AND MAKE CONSTRAINT ON DELETE CASCADE ON THIS FOREIGN KEY
  -- MAKE manager_id AS FOREIGN KEY REFERENCING employee TABLE ITSELF AND MAKE CONSTRAINT 'ON DELETE SET NULL' ON THIS FOREIGN KEY
  -- TODO: YOUR CODE HERE
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
role_id INT NOT NULL,
manager_id INT
PRIMARY KEY(id)
);
