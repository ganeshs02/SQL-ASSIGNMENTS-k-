/* Create table donor in blood_bank database.
(donor no,first name,last name,blood group,contact no).*/
CREATE DATABASE blood_bank;
USE blood_bank;
CREATE TABLE donor(
donor_no    INT     NOT NULL,
first_name  VARCHAR(20) NOT NULL,
last_name   VARCHAR(20) NOT NULL,
blood_grp   ENUM('o+','o-','A+','A-','B+','B-') NOT NULL,
contact_no  CHAR(10) NOT NULL,
PRIMARY KEY(donor_no)
);