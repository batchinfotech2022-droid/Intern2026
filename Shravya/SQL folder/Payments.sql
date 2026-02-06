Use EcommerceDB;
GO

Create Table Payments(
Id Int Identity(1,1) Primary Key,
OrderId Int not null,
PaymentDate DateTime not null,
Amount Decimal(18,4) not null,
PaymentMethod Varchar(max) not null,
CreatedBy Varchar(max) not null,
CreatedDate DateTime not null,
ModifiedBy Varchar(max) not null,
ModifiedDate DateTime not null,
IsDeleted Bit not null
);

Insert Into Payments
(OrderId,PaymentDate,Amount,PaymentMethod,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IsDeleted)
Values
(1, GETDATE(), 67500.0000, 'Credit Card', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, GETDATE(), 20080.0000, 'UPI', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, GETDATE(), 1250.0000, 'Cash', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, GETDATE(), 15000.0000, 'Debit Card', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, GETDATE(), 17500.0000, 'Net Banking', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, GETDATE(), 3200.0000, 'UPI', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(7, GETDATE(), 67800.0000, 'Credit Card', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, GETDATE(), 4800.0000, 'Wallet', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);

Select * from Payments;