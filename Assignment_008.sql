/*Create table ‘Wing a’showing details of flat holders in shrileela database.
 * (flat No,owner name,mobile number)(max 10 flats)*/
CREATE DATABASE shrileela;
USE shrileela;
CREATE TABLE wing_a(
flat_no    INT     NOT NULL,
owner_name VARCHAR(20) NOT NULL,
mobile     CHAR(10)    NOT NULL,
PRIMARY KEY(flat_no)
);