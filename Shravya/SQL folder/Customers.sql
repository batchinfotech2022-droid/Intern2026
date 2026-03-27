--Create database EcommerceDB;
--Go

Use EcommerceDB;
Go

Create Table Customers(
Id Int Identity(1,1) Primary Key,
FirstName Varchar(max) not null,
LastName Varchar(max) not null,
Email Varchar(max) not null,
Phone Varchar(max) not null,
CreatedBy Varchar(max) not null,
CreatedDate DateTime not null,
ModifiedBy Varchar(max) not null,
ModifiedDate DateTime not null,
IsDeleted Bit not null
);

Insert Into Customers
(FirstName,LastName,Email,Phone,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IsDeleted)
Values
('Rahul', 'Sharma', 'rahulsharma@gmail.com', '9876543210', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Ananya', 'Patel', 'ananyapatel@gmail.com', '9123456789', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Vikram', 'Rao', 'vikramrao@gmail.com', '9988776655', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Sneha', 'Nair', 'snehanair@gmail.com', '9012345678', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Amit', 'Verma', 'amitverma@gmail.com', '9090909090', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Pooja', 'Mehta', 'poojamehta@gmail.com', '9345678123', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Karan', 'Singh', 'karansingh@gmail.com', '9567890123', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Neha', 'Gupta', 'nehagupta@gmail.com', '9786543210', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Arjun', 'Iyer', 'arjuniyer@gmail.com', '9654321876', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Priya', 'Kulkarni', 'priyakulkarni@gmail.com', '9823456712', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);


Select * from Customers;
Go