/*Create table ‘wing B’showing details of flat holders in shrileela database.
 * (flat number,owner name,mobile number)(max 10 flats)
*/
USE shrileela;
CREATE TABLE wing_b(
flat_no    INT       NOT NULL,
owner_name VARCHAR(20) NOT NULL,
mobile_no  CHAR(10) NOT  NULL,
PRIMARY KEY(flat_no)
);