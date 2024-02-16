-- Create table marks in school database.(Roll no,maths marks,English marks,science marks)
CREATE TABLE marks(
roll_no  INT NOT NULL,
maths    FLOAT(3,2) NOT NULL,
english  FLOAT(3,2) NOT NULL,
science  FLOAT(3,2) NOT NULL,
PRIMARY KEY(roll_no)
);