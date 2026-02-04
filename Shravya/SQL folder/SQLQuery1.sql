--create database BITech;  --create database

use [BITech]
go
--create table Interns
--(
--Id int identity(1,1),
--Firstname varchar(max) not null,
--Lastname varchar(max) not null,
--CollegeName varchar(max) not null,
--PhoneNumber varchar(50) not null,
--Email varchar(max) not null,
--[Address] varchar(Max),
--course varchar(50) not null,
--createdBy varchar(50) not null,
--createdDate DateTime not null,
--updatedBy varchar(50) not null,
--updatedDate DateTime not null,
--isDeleted bit not null
--);

--Insert Into Interns (FirstName,LastName,CollegeName,PhoneNumber,Email,[Address],course,createdBy,createdDate,updatedby,updatedDate,isDeleted)
--values('shravya','kulal','AIET','9878967289','kulalshravya72@gmail.com','manipal,Udupi','B.E','Admin',GETDATE(),'Admin',GETDATE(),0);

--INSERT INTO Interns
--(FirstName, LastName, CollegeName, PhoneNumber, Email, [Address], Course, CreatedDate, CreatedBy, updatedDate, updatedBy, IsDeleted)
--VALUES
--('Amit','Kumar','ABC College','9000000001','amit@test.com','Delhi','BCA',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Neha','Verma','XYZ University','9000000002','neha@test.com','Mumbai','MBA',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Ravi','Singh','Global Institute','9000000003','ravi@test.com','Pune','B.Tech',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Priya','Nair','South College','9000000004','priya@test.com','Chennai','MCA',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Karan','Mehta','North University','9000000005','karan@test.com','Ahmedabad','BBA',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Sneha','Iyer','City College','9000000006','sneha@test.com','Bangalore','B.Sc',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Arjun','Reddy','Tech Institute','9000000007','arjun@test.com','Hyderabad','B.Tech',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Pooja','Shah','Modern College','9000000008','pooja@test.com','Surat','B.Com',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Vijay','Das','National University','9000000009','vijay@test.com','Kolkata','MBA',GETDATE(),'Admin',GETDATE(),'Admin',0),
--('Meera','Joshi','Premier Institute','9000000010','meera@test.com','Jaipur','M.Sc',GETDATE(),'Admin',GETDATE(),'Admin',0);

Select Course,count(Course) From Interns Group by Course having count(Course)>1 ;