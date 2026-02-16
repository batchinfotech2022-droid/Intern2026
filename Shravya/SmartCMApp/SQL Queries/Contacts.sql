USE SmartContactManager;
GO

CREATE TABLE Contacts
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(10) NOT NULL,
    City VARCHAR(50) NULL,
    CategoryId INT NOT NULL,
    CreatedBy VARCHAR(MAX) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    ModifiedBy VARCHAR(MAX) NOT NULL,
    ModifiedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

INSERT INTO Contacts
(FullName, Email, Phone, City, CategoryId,
 CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
VALUES
('Rahul Shetty', 'rahul@gmail.com', '9876543210', 'Mumbai', 1,
 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Anita Sharma', 'anita@gmail.com', '9876543211', 'Delhi', 2,
 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Ravi Kumar', 'ravi@gmail.com', '9876543212', 'Bangalore', 3,
 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Sneha Patil', 'sneha@gmail.com', '9876543213', 'Pune', 1,
 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Amit Verma', 'amit@gmail.com', '9876543214', 'Chennai', 4,
 'Admin', GETDATE(), 'Admin', GETDATE(), 0);

 SELECT * FROM Contacts;