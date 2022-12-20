-- <sc-table> DemoUser TSQL </sc-table> 
CREATE TABLE PUBLIC.DemoUsers
(
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 4 OF THE SOURCE CODE. **
--   ID       [NUMERIC] NOT NULL IDENTITY,
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 5 OF THE SOURCE CODE. **
--   Name     [VARCHAR] NOT NUll,
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 6 OF THE SOURCE CODE. **
--   Birthday [DATE] NOT NUll,
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 7 OF THE SOURCE CODE. **
--   CityCode [NUMERIC] NOT NUll,
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 8 OF THE SOURCE CODE. **
--   Email    [VARCHAR] NOT NUll,
   CONSTRAINT PK_DemoUsers PRIMARY KEY (ID)
);

-- <sc-insert> </sc-insert> 
INSERT INTO PUBLIC.DemoUsers (Name, Birthday, CityCode, Email)
VALUES ('Emma Ezquivel', '2021-11-11', 123, 'emma@mobilize.se');
-- <sc-insert> </sc-insert> 
INSERT INTO PUBLIC.DemoUsers (Name, Birthday, CityCode, Email)
VALUES ('Daniel Duran', '2021-10-11', 456, 'daniel@mobilize.se');
-- <sc-insert> </sc-insert> 
INSERT INTO PUBLIC.DemoUsers (Name, Birthday, CityCode, Email)
VALUES ('Jennifer Jones', '2021-09-10', 789, 'jennifer@mobilize.se');
-- <sc-insert> </sc-insert> 
INSERT INTO PUBLIC.DemoUsers (Name, Birthday, CityCode, Email)
VALUES ('Joseph Jar', '2021-08-09', 741, 'joseph@mobilize.se');

-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 22 OF THE SOURCE CODE. **
---- <sc-view> DemoUserView </sc-view> 
--CREATE OR ALTER VIEW View_DemoUsers
--   AS
--   SELECT Name, CityCode, Email
--   FROM DemoUsers

-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 28 OF THE SOURCE CODE. **
--   -- <sc-procedure> InsertDemoUsers </sc-procedure> 
--CREATE OR ALTER PROCEDURE InsertDemoUsers
--   @in_Name [VARCHAR],
--   @in_Birthday [DATE],
--   @in_CityCode [NUMERIC],
--   @in_Email [VARCHAR]
--AS
--BEGIN
--   INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
--   VALUES (@in_Name, @in_Birthday, @in_CityCode, @in_Email)
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 37 OF THE SOURCE CODE. **
--END

---- <sc-execute> </sc-execute> 
--EXEC InsertDemoUsers @in_Name='TestTable', @in_Birthday='2020-12-12', @in_CityCode=420, @in_Email='testTable@email.com'

-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 43 OF THE SOURCE CODE. **
---- <sc-procedure> InsertDemoUsers </sc-procedure> 
--CREATE OR ALTER PROCEDURE UpdateDemoUsers
--   @in_id [NUMERIC],
--   @in_Name [VARCHAR],
--   @in_Birthday [DATE],
--   @in_CityCode [NUMERIC],
--   @in_Email [VARCHAR]
--AS
--BEGIN
--   UPDATE DemoUsers
--   SET Name = @in_Name, Birthday= @in_Birthday, CityCode = @in_CityCode, Email = @in_Email
--   WHERE ID = @in_id
-- ** MSC-ERROR - MSCEWI1001 - UNRECOGNIZED TOKEN ON LINE 54 OF THE SOURCE CODE. **
--END

---- <sc-execute> </sc-execute> 
--EXEC UpdateDemoUsers @in_id=5, @in_Name='TestUpdate', @in_Birthday='2020-12-12', @in_CityCode=840, @in_Email='testInsert@email.com'