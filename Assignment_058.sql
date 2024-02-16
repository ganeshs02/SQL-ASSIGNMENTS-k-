-- Generate a report that shows all columns from member table and one additional hard coded column:
-- value - "online" , column name - "channel"

USE retail;
SELECT * ,'online' AS channel FROM member;