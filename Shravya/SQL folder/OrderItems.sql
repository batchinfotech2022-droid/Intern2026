Use EcommerceDB;
Go

Create Table OrderItems(
Id Int Identity(1,1) Primary Key,
OrderId Int not null,
ProductId Int not null,
Quantity Int not null,
Price Decimal(18,4) not null,
CreatedBy Varchar(max) not null,
CreatedDate DateTime not null,
ModifiedBy Varchar(max) not null,
ModifiedDate DateTime not null,
IsDeleted Bit not null
);

Insert Into OrderItems(
OrderId,ProductId,Quantity,Price,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IsDeleted)
Values
(1, 1, 2, 65000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, 2, 1, 32000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(1, 3, 3, 2500.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(2, 4, 1, 7000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, 5, 2, 12000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, 6, 10, 80.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(3, 7, 15, 20.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, 8, 2, 450.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, 9, 1, 1800.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(4, 10, 2, 1500.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, 11, 1, 800.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, 12, 1, 14000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(5, 13, 1, 9500.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, 14, 2, 2200.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, 15, 5, 300.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(6, 16, 1, 1600.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, 17, 1, 3200.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, 18, 4, 150.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(7, 19, 2, 650.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(7, 20, 1, 2800.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(7, 1, 1, 65000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(8, 2, 2, 32000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, 3, 4, 2500.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(8, 4, 1, 7000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(9, 5, 1, 12000.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(9, 6, 20, 80.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(9, 7, 10, 20.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(10, 8, 3, 450.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(10, 9, 2, 1800.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(10, 10, 1, 1500.0000, 'Admin', GETDATE(), 'Admin', GETDATE(), 0);

Select * from Orderitems;
