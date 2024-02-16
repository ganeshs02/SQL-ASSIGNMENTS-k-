CREATE DATABASE retail;
USE retail;
CREATE TABLE store_dtl(
store_id    INT NOT NULL,
store_city  VARCHAR(30) NOT NULL,
store_state VARCHAR(30) NOT NULL,
contact_no  CHAR(10)    NOT NULL,
PRIMARY KEY(store_id)
);

