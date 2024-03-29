﻿/*** MSC-WARNING - MSCEWI1039 - SEMANTIC INFORMATION COULD NOT BE LOADED FOR . CHECK IF THE NAME IS INVALID OR DUPLICATED. ***/
-- <sc-table> DemoUsers Oracle </sc-table> 
CREATE TABLE DemoUsers
(
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 4 OF THE SOURCE CODE. **
--  ID        INTEGER GENERATED BY DEFAULT AS IDENTITY START WITH 1
--  PRIMARY   KEY,
  Name VARCHAR,
  Birthday VARCHAR,
  CityCode INTEGER,
  Email VARCHAR
);

-- <sc-insert> </sc-insert> 
  INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
  VALUES ('Emma Ezquivel', '2021-11-11', 123, 'emma@mobilize.se');
-- <sc-insert> </sc-insert> 
  INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
  VALUES ('Daniel Duran', '2021-10-11', 456, 'daniel@mobilize.se');
-- <sc-insert> </sc-insert> 
  INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
  VALUES ('Jennifer Jones', '2021-09-10', 789, 'jennifer@mobilize.se');
-- <sc-insert> </sc-insert> 
  INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
  VALUES ('Joseph Jar', '2021-08-09', 741, 'joseph@mobilize.se');

-- <sc-view> DemoUserView </sc-view> 
  CREATE OR REPLACE VIEW View_DemoUsers
  (Name, CityCode, Email)
  AS
  SELECT
  Name,
  CityCode,
  Email
       FROM
  DemoUsers;

-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 28 OF THE SOURCE CODE. **
---- <sc-procedure> InsertDemoUsers </sc-procedure> 
--CREATE OR REPLACE PROCEDURE InsertDemoUsers (
--	in_Name IN VARCHAR,
--	in_Birthday IN DATE,
--	in_CityCode INTEGER,
--	in_Email IN VARCHAR)
--IS
--BEGIN
--  INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
--  VALUES (in_Name, in_Birthday, n_CityCode, in_Email)
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 38 OF THE SOURCE CODE. **
--END
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 39 OF THE SOURCE CODE. **
--/

---- <sc-execute> </sc-execute> 
--CALL InsertDemoUsers ('TestTable', '2020-12-12', 420, 'testTable@email.com')

-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 45 OF THE SOURCE CODE. **
---- <sc-procedure> UpdateDemoUsers </sc-procedure> 
--CREATE OR REPLACE PROCEDURE UpdateDemoUsers (
--	in_id IN INTEGER,
--	in_Name IN VARCHAR,
--	in_Birthday IN DATE,
--	in_CityCode INTEGER,
--	in_Email IN VARCHAR)
--IS
--BEGIN
--  UPDATE DemoUsers SET
--  Name = in_Name,
--  Birthday= in_Birthday,
--  CityCode = in_CityCode,
--  Email = in_Email
--  WHERE ID = in_id
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 60 OF THE SOURCE CODE. **
--END
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 61 OF THE SOURCE CODE. **
--/

---- <sc-execute> </sc-execute> 
--CALL UpdateDemoUsers (5, 'TestUpdate', '2020-12-12', 840, 'testInsert@email.com')