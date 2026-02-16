--CREATE DATABASE SmartContactManager;
--GO

USE SmartContactManager;
GO


CREATE TABLE Category
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(MAX) NOT NULL,
    IsActive BIT NOT NULL,
    CreatedBy VARCHAR(MAX) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    ModifiedBy VARCHAR(MAX) NOT NULL,
    ModifiedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

INSERT INTO Category
(CategoryName, IsActive, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
VALUES
('Family', 1, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Friends', 1, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Work', 1, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Vendors', 1, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Clients', 1, 'Admin', GETDATE(), 'Admin', GETDATE(), 0);

Select * from Category;