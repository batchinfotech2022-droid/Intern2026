use BITech
go

--Create Table Employee
--(Id int Identity(1,1) primary key,
--FullName varchar(max) not null,
--LastName varchar(max) not null,
--[Role] varchar(max) not null,
--PhoneNo varchar(50) not null,
--Email varchar(50) not null,
--[Address] varchar(max) not null,
--Salary decimal(18,4) not null,
--createdBy varchar(50) not null,
--createdDate DateTime not null,
--updatedBy varchar(50) not null,
--updatedDate DateTime not null,
--isDeleted bit not null
--);

--INSERT INTO Employee (
--    FullName, LastName, [Role], PhoneNo, Email, [Address],
--    Salary, CreatedDate, CreatedBy, updatedDate, updatedBy, isDeleted
--)
--VALUES
--('Srujan', 'Shetty', 'Software Engineer', '555-0101', 'alice.j@bitech.com', '123 Tech Lane, San Francisco, CA', 95000.00, GETDATE(), 'Admin', GETDATE(), 'Admin', 0),
--('Archana', 'Acharya', 'Data Analyst', '555-0102', 'bob.smith@bitech.com', '456 Data Drive, Austin, TX', 78000.00, GETDATE(), 'Admin', GETDATE(), 'Admin', 0),
--('Hemanth', 'Acharya', 'Project Manager', '555-0103', 'c.davis@bitech.com', '789 Agile Way, Seattle, WA', 105000.00, GETDATE(), 'Admin', GETDATE(), 'Admin', 0),
--('Muralidhar', 'Bhat', 'HR Specialist', '555-0104', 'diana.p@bitech.com', '101 People St, Chicago, IL', 65000.00, GETDATE(), 'Admin', GETDATE(), 'Admin', 0),
--('Sankalp', 'Bhat', 'DevOps Engineer', '555-0105', 'e.hunt@bitech.com', '202 Cloud Ave, New York, NY', 115000.00, GETDATE(), 'Admin', GETDATE(), 'Admin', 0);
--GO

---- Verify the data
--SELECT * FROM EMPLOYEE;

--CREATE TABLE MENTOR
--(
-- ID INT IDENTITY(1,1) PRIMARY KEY,
-- EmpID INT NOT NULL,
-- IntID INT NOT NULL,
--CreatedDate  DATETIME      NOT NULL,
--    CreatedBy    NVARCHAR(50)  NOT NULL,
--    ModifiedDate DATETIME      NOT NULL,
--    ModifiedBy   NVARCHAR(50)  NOT NULL,
--    IsDeleted    BIT           NOT NULL
--);

--INSERT INTO [dbo].[MENTOR]
--    ([EmpID], [IntID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted])
--VALUES
--    (2, 1, GETDATE(), 'ad', GETDATE(), 'ad', 0), (2, 2, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (2, 3, GETDATE(), 'ad', GETDATE(), 'ad', 0), (2, 4, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (2, 5, GETDATE(), 'ad', GETDATE(), 'ad', 0), (3, 6, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (3, 7, GETDATE(), 'ad', GETDATE(), 'ad', 0), (3, 8, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (3, 9, GETDATE(), 'ad', GETDATE(), 'ad', 0), (3, 10, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (4, 1, GETDATE(), 'ad', GETDATE(), 'ad', 0), (4, 2, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (4, 3, GETDATE(), 'ad', GETDATE(), 'ad', 0), (4, 4, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (4, 5, GETDATE(), 'ad', GETDATE(), 'ad', 0), (5, 6, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (5, 7, GETDATE(), 'ad', GETDATE(), 'ad', 0), (5, 8, GETDATE(), 'ad', GETDATE(), 'ad', 0),
--    (5, 9, GETDATE(), 'ad', GETDATE(), 'ad', 0), (5, 10, GETDATE(), 'ad', GETDATE(), 'ad', 0);
--GO

--Select * from MENTOR;
--Select Distinct FirstName,LastName  from Interns Inner Join MENTOR on MENTOR.IntID=Interns.ID;

--Select 
--Distinct I.FirstName,I.Lastname  
--from Interns I 
--Inner Join MENTOR M on M.IntID=I.ID
--Inner Join Employee E on E.ID=M.EmpID
--where
--E.ID=5;

--Select 
--FullName,Salary from Employee
--where Salary>(Select Avg(Salary) From Employee);

--Update Employee set Salary=Salary+2000 where isDeleted=0;



