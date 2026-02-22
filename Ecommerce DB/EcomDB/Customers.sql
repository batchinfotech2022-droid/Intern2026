--CREATE DATABASE EcomDB;
--GO
USE EcomDB;
Go
CREATE TABLE Customers(
Id INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(MAX) NOT NULL,
LastName VARCHAR(MAX) NOT NULL,
Email VARCHAR(MAX) NOT NULL,
Phone VARCHAR(13) NOT NULL,
CreatedBy VARCHAR(MAX) NOT NULL,
CreatedDate DATETIME NOT NULL,
ModifiedBy VARCHAR(MAX) NOT NULL,
ModifiedDate DATETIME NOT NULL,
IsDeleted BIT NOT NULL
);
INSERT INTO Customers 
(FirstName, LastName, Email, Phone, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
VALUES
('Sulaksha', 'Shetty', 'shettys@gmail.com', '9876543210', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Prathiksha', 'Amin', 'prathi@gmail.com', '9123456780', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Dravya', 'Shetty', 'dravya@gmail.com', '9988776655', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Sharadhruthi', 'Gowda', 'shara@gmail.com', '9090909090', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Dashami', 'N', 'dashami@gmail.com', '9876501234', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Disha', 'Gowda', 'disha@gmail.com', '9012345678', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Srushti', 'Ittigati', 'srushti@gmail.com', '9345678901', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Kavya', 'Naik', 'kavya.naik@gmail.com', '9567890123', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Sandhya', 'Mehta', 'sandhyamehta@gmail.com', '9789012345', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Neha', 'Poojary', 'nehapoojary@gmail.com', '9890123456', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
Go
SELECT * FROM Customers;