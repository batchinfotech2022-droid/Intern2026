USE EcomDB;
Go
CREATE TABLE Payments(
Id INT IDENTITY(1,1) PRIMARY KEY,
OrderId INT NOT NULL,
PaymentDate DATETIME NOT NULL,
Amount DECIMAL(18,4) NOT NULL,
PaymentMethod VARCHAR(MAX) NOT NULL,
CreatedBy VARCHAR(MAX) NOT NULL,
CreatedDate DATETIME NOT NULL,
ModifiedBy VARCHAR(MAX) NOT NULL,
ModifiedDate DATETIME NOT NULL,
IsDeleted BIT NOT NULL
);
INSERT INTO Payments
(
OrderId, 
PaymentDate, 
Amount,
PaymentMethod,
CreatedBy, 
CreatedDate,
ModifiedBy,
ModifiedDate,
IsDeleted
)
VALUES
(5, GETDATE(), 675.00, 'Net Banking', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(2, GETDATE(), 850.00, 'Credit Card', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(8, GETDATE(), 999.00, 'UPI', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(1, GETDATE(), 1250.00, 'Debit Card', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(6, GETDATE(), 1540.00, 'Credit Card', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(3, GETDATE(), 430.00, 'Cash', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(7, GETDATE(), 299.00, 'UPI', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(4, GETDATE(), 2199.00, 'Net Banking', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
GO
GO
SELECT * FROM Payments;