/* Create table student in school database.(Roll no,first name,last name,DOB).
 * Create table marks in school database.(Roll no,maths marks,English marks,science marks)*/

CREATE DATABASE school;
USE school;
CREATE TABLE student(
roll_no     INT    NOT NULL,
first_name  VARCHAR(20) NOT NULL,
last_name   VARCHAR(20) NOT NULL,
dob         DATE        NOT NULL,
PRIMARY KEY(roll_no)
);
CREATE TABLE marks(
roll_no     INT         NOT NULL,
maths       FLOAT(3.2)  NOT NULL,
english     FLOAT(3,2)  NOT NULL,
science     FLOAT(3,2)  NOT NULL,
PRIMARY KEY(roll_no)
);

SHOW TABLES;