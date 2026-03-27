Use EcommerceDB;
Go

Create Table Products(
Id Int Identity(1,1) Primary Key,
ProductName Varchar(max) not null,
Price Decimal(18,4) not null,
StockQuantity Int not null,
Category  Varchar(max) not null,
CreatedBy Varchar(max) not null,
CreatedDate DateTime not null,
ModifiedBy Varchar(max) not null,
ModifiedDate DateTime not null,
IsDeleted Bit not null
);

Insert Into Products(
ProductName,Price,StockQuantity,Category,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IsDeleted)
Values
('Laptop', 65000, 15, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Smartphone', 32000, 30, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Headphones', 2500, 50, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Office Chair', 7000, 20, 'Furniture', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Study Table', 12000, 10, 'Furniture', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Notebook', 80, 200, 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Pen', 20, 500, 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Water Bottle', 450, 60, 'Accessories', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Backpack', 1800, 40, 'Accessories', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Keyboard', 1500, 35, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Mouse', 800, 60, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Monitor', 14000, 12, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Printer', 9500, 8, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Power Bank', 2200, 25, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('USB Cable', 300, 100, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Desk Lamp', 1600, 18, 'Furniture', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Whiteboard', 3200, 7, 'Office Supplies', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Stapler', 150, 90, 'Office Supplies', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Calculator', 650, 35, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
('Router', 2800, 14, 'Electronics', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);

Select * from Products;
Go

