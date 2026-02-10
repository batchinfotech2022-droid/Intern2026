USE EcomDB;
Go
CREATE TABLE OrderItems(
Id INT IDENTITY(1,1) PRIMARY KEY,
OrderId INT NOT NULL,
ProductId INT NOT NULL,
Quantity DECIMAL(18,4) NOT NULL,
Price DECIMAL(18,4) NOT NULL,
CreatedBy VARCHAR(MAX) NOT NULL,
CreatedDate DATETIME NOT NULL,
ModifiedBy VARCHAR(MAX) NOT NULL,
ModifiedDate DATETIME NOT NULL,
IsDeleted BIT NOT NULL
);
INSERT INTO OrderItems
(OrderId,
ProductId,
Quantity,
Price,
CreatedBy,
CreatedDate,
ModifiedBy,
ModifiedDate,
IsDeleted)
VALUES
(3, 5, 2, 150.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, 12, 1, 1299.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, 2, 4, 80.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, 18, 1, 999.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, 7, 2, 799.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, 3, 3, 199.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, 14, 2, 699.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, 6, 5, 60.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(7, 10, 1, 899.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, 19, 2, 499.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, 1, 4, 120.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, 16, 1, 1199.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, 9, 2, 699.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, 4, 3, 150.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, 11, 2, 220.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(7, 15, 3, 180.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, 8, 1, 599.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, 20, 2, 599.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, 6, 4, 60.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, 13, 1, 999.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, 17, 2, 899.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, 5, 3, 150.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, 18, 1, 999.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(7, 2, 6, 80.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, 3, 2, 199.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, 6, 5, 60.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, 11, 3, 220.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, 14, 1, 699.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, 9, 2, 699.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, 1, 4, 120.00, 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
GO
SELECT * FROM OrderItems;