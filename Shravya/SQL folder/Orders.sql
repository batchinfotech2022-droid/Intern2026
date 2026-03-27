Use EcommerceDB;
Go

Create  Table Orders(
Id Int Identity(1,1) Primary Key,
CustomerId Int not null,
OrderDate DateTime not null,
TotalAmount Decimal(18,4) not null,
CreatedBy Varchar(max) not null,
CreatedDate DateTime not null,
ModifiedBy Varchar(max) not null,
ModifiedDate DateTime not null,
IsDeleted Bit not null
);

Insert into Orders(
 CustomerId,
 OrderDate,
 TotalAmount,
 CreatedBy,
 CreatedDate,
 ModifiedBy,
 ModifiedDate,
 IsDeleted)
 Values
 (1,GETDATE(),1500.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (2,GETDATE(),900.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (3,GETDATE(),75.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (4,GETDATE(),1150.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (5,GETDATE(),1900.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (6,GETDATE(),2500.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (7,GETDATE(),3500.00,'Admin',GETDATE(),'Admin',GETDATE(),0),
 (8,GETDATE(),1700.00,'Admin',GETDATE(),'Admin',GETDATE(),0);

 Select * from Orders;