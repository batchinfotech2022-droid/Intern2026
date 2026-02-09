USE EcomDB;
Go
CREATE TABLE Orders(
Id INT IDENTITY(1,1) PRIMARY KEY,
CustomerId INT NOT NULL,
OrderDate DATETIME NOT NULL,
TotalAmount DECIMAL(18,4) NOT NULL,
CreatedBy VARCHAR(MAX) NOT NULL,
CreatedDate DATETIME NOT NULL,
ModifiedBy VARCHAR(MAX) NOT NULL,
ModifiedDate DATETIME NOT NULL,
IsDeleted BIT NOT NULL
);
INSERT INTO Orders
(CustomerId,
OrderDate,
TotalAmount,
CreatedBy,
CreatedDate,
ModifiedBy,
ModifiedDate,
IsDeleted
)
VALUES
(7, GETDATE(), 299.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, GETDATE(), 850.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, GETDATE(), 1250.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, GETDATE(), 430.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, GETDATE(), 675.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, GETDATE(), 2199.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, GETDATE(), 1540.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, GETDATE(), 999.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
GO
SELECT * FROM Orders;