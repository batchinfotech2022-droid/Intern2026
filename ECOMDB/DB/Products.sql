USE EcomDB;
Go
CREATE TABLE Products(
Id INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(MAX) NOT NULL,
Price DECIMAL(18,4) NOT NULL,
StockQuantity INT NOT NULL,
Category VARCHAR(MAX) NOT NULL,
CreatedBy VARCHAR(MAX) NOT NULL,
CreatedDate DATETIME NOT NULL,
ModifiedBy VARCHAR(MAX) NOT NULL,
ModifiedDate DATETIME NOT NULL,
IsDeleted BIT NOT NULL
);
INSERT INTO Products
(
ProductName, 
Price,
StockQuantity,
Category,
CreatedBy,
CreatedDate,
ModifiedBy,
ModifiedDate,
IsDeleted
)
VALUES
('A4 Spiral Notebook', 120.00, '150', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Sticky Notes Pack', 80.00, '200', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Color Highlighter Set', 199.00, '100', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Ball Pen Set (10 pcs)', 150.00, '300', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Desk Organizer', 499.00, '60', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Wall Calendar', 180.00, '50', 'Home Decor', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Photo Frame Set', 799.00, '35', 'Home Decor', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Table Clock', 599.00, '40', 'Home Decor', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Storage Basket', 699.00, '45', 'Home Storage', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Plastic Drawer Organizer', 899.00, '25', 'Home Storage', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('File Folder Pack', 220.00, '120', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Whiteboard with Marker', 1299.00, '15', 'Office Supplies', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Pin Board', 999.00, '20', 'Office Supplies', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Paper Tray Organizer', 699.00, '35', 'Office Supplies', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Document Holder File', 180.00, '90', 'Stationery', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Laundry Basket', 1199.00, '18', 'Home Storage', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Dustbin with Lid', 299.00, '30', 'Home Essentials', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Broom & Mop Set', 999.00, '20', 'Home Essentials', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Cloth Hangers Set (12 pcs)', 499.00, '70', 'Home Essentials', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Table Mat Set', 599.00, '40', 'Home Essentials', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
Go
SELECT * FROM Products;