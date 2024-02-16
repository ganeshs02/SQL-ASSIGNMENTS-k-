-- Create table family_dtl in family database.(id,first_name,middle_name,last_name,age)
CREATE DATABASE family;
USE family;
CREATE TABLE family_dtl(
id          INT         NOT NULL,
first_name  VARCHAR(20) NOT NULL,
middle_name VARCHAR(20) NOT NULL,
last_name   VARCHAR(20) NOT NULL,
age         INT         NOT NULL,
PRIMARY KEY(id)
);