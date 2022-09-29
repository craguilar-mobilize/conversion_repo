-- <sc-table> DemoUser TSQL </sc-table> 
CREATE TABLE DemoUsers
(
   ID       [NUMERIC] NOT NULL IDENTITY,
   Name     [VARCHAR] NOT NUll,
   Birthday [DATE] NOT NUll,
   CityCode [NUMERIC] NOT NUll,
   Email    [VARCHAR] NOT NUll,
   CONSTRAINT PK_DemoUsers PRIMARY KEY (ID)
);

-- <sc-insert> </sc-insert> 
INSERT INTO DemoUsers(Name, Birthday, CityCode, Email) VALUES('Emma Ezquivel', '2021-11-11', 123, 'emma@mobilize.se');
-- <sc-insert> </sc-insert> 
INSERT INTO DemoUsers(Name, Birthday, CityCode, Email) VALUES('Daniel Duran', '2021-10-11', 456, 'daniel@mobilize.se');
-- <sc-insert> </sc-insert> 
INSERT INTO DemoUsers(Name, Birthday, CityCode, Email) VALUES('Jennifer Jones', '2021-09-10', 789, 'jennifer@mobilize.se');
-- <sc-insert> </sc-insert> 
INSERT INTO DemoUsers(Name, Birthday, CityCode, Email) VALUES('Joseph Jar', '2021-08-09', 741, 'joseph@mobilize.se');

-- <sc-view> DemoUserView </sc-view> 
CREATE OR ALTER VIEW View_DemoUsers
   AS
   SELECT Name, CityCode, Email
   FROM DemoUsers;

-- <sc-procedure> InsertDemoUsers </sc-procedure> 
CREATE OR ALTER PROCEDURE InsertDemoUsers
   @in_Name [VARCHAR], 
   @in_Birthday [DATE], 
   @in_CityCode [NUMERIC], 
   @in_Email [VARCHAR]
AS
BEGIN
   INSERT INTO DemoUsers (Name, Birthday, CityCode, Email)
   VALUES (@in_Name, @in_Birthday, @in_CityCode, @in_Email); 
END

-- <sc-execute> </sc-execute> 
EXEC InsertDemoUsers @in_Name='TestTable', @in_Birthday='2020-12-12', @in_CityCode=420, @in_Email='testTable@email.com';

-- <sc-procedure> InsertDemoUsers </sc-procedure> 
CREATE OR ALTER PROCEDURE UpdateDemoUsers
   @in_id [NUMERIC], 
   @in_Name [VARCHAR], 
   @in_Birthday [DATE], 
   @in_CityCode [NUMERIC], 
   @in_Email [VARCHAR]
AS
BEGIN
   UPDATE DemoUsers
   SET Name = @in_Name, Birthday= @in_Birthday, CityCode = @in_CityCode, Email = @in_Email
   WHERE ID = @in_id; 
END

-- <sc-execute> </sc-execute> 
EXEC UpdateDemoUsers @in_id=5, @in_Name='TestUpdate', @in_Birthday='2020-12-12', @in_CityCode=840, @in_Email='testInsert@email.com';