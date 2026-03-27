USE [EcommerceDB]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Create]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Customers_Create]
    @FirstName    VARCHAR(MAX),
	@LastName    VARCHAR(MAX),
	@Email    VARCHAR(MAX),
	@Phone    VARCHAR(MAX),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Customers]
    (
        FirstName, LastName, Email,Phone,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @FirstName, @LastName, @Email, @Phone,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END

GO
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Customers_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Customers where ID=@ID
    update Customers
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadAll]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      FirstName ,LastName,Email,Phone,
      CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IsDeleted

     FROM 
     Customers
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadByID]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_ReadByID]
   @ID INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        FirstName ,LastName, Email,Phone,
        CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IsDeleted
    FROM Customers
    WHERE ID=@ID 
        AND IsDeleted=0
    END


GO
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_Update]
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Email        VARCHAR(255),
    @Phone        VARCHAR(13),
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @ID           INT  
AS 
BEGIN
    SET NOCOUNT ON;

    update Customers
    set 
    FirstName=@FirstName
    ,LastName=@LastName
    ,Email=@Email
    ,Phone=@Phone
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    ID=@ID

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[GetTotalAmount]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[GetTotalAmount]
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	o.Id,
	o.CustomerId,
	SUM(oi.Quantity*oi.Price) AS TotalAmount
	FROM Orders o
	INNER JOIN OrderItems oi
	ON o.Id=oi.OrderId
	WHERE o.IsDeleted=0 AND oi.IsDeleted=0
	GROUP BY 
	o.Id,
	o.CustomerId;

	END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_Create]
    @OrderID    INT,
	@ProductID    INT,
	@Quantity    INT,
	@Price    DECIMAL(18,4),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[OrderItems]
    (
        OrderID, ProductID , Quantity,Price,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @OrderID, @ProductID, @Quantity, @Price,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[OrderItems_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from OrderItems where ID=@ID
    update OrderItems
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
         OrderID, ProductID , Quantity,Price,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM OrderItems
    WHERE IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        OrderID, ProductID , Quantity,Price,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM OrderItems
    WHERE Id = @Id
      AND IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_Update]
	@OrderID    INT,
	@ProductID    INT,
	@Quantity    INT,
	@Price    DECIMAL(18,4),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate      DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE OrderItems
    set 
    OrderID = @OrderID,
    ProductID = @ProductID,
    Quantity = @Quantity,
    Price = @Price,
	CreatedBy=@CreatedBy,
    CreatedDate=@CreatedDate,
	ModifiedBy=@ModifiedBy,
    ModifiedDate=@ModifiedDate,
    IsDeleted=@IsDeleted
    where 
    Id=@Id
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Create]
    @CustomerID   INT,
    @OrderDate    DATETIME,
    @TotalAmount  DECIMAL(18,4),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Orders]
    (
        CustomerID, OrderDate , TotalAmount,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @CustomerID, @OrderDate, @TotalAmount,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Orders_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Orders where ID=@ID
    update Orders
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Orders_GetOrdersWithCustomerDetails]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Orders_GetOrdersWithCustomerDetails]
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	o.Id AS OrderId,
	c.FirstName+' '+c.LastName AS CustomerName,
	o.OrderDate,
	o.TotalAmount
	FROM Orders o
	INNER JOIN Customers c	ON o.CustomerId=c.Id
	WHERE o.IsDeleted=0
	AND c.IsDeleted=0;

	END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
         CustomerID, OrderDate , TotalAmount,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Orders
    WHERE IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CustomerID, OrderDate , TotalAmount,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Orders
    WHERE Id = @Id
      AND IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_Update]
	@CustomerID   INT,
    @OrderDate    DATETIME,
    @TotalAmount  DECIMAL(18,4),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate      DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Orders
    set 
    CustomerID = @CustomerID,
    OrderDate = @OrderDate,
    TotalAmount = @TotalAmount,
	CreatedBy=@CreatedBy,
    CreatedDate=@CreatedDate,
	ModifiedBy=@ModifiedBy,
    ModifiedDate=@ModifiedDate,
    IsDeleted=@IsDeleted
    where 
    Id=@Id
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_Create]
    @OrderID    INT,
	@PaymentDate    DATETIME,
	@Amount    DECIMAL(18,4),
    @PaymentMethod  VARCHAR(MAX),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Payments]
    (
        OrderID, PaymentDate , Amount,PaymentMethod,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @OrderID, @PaymentDate, @Amount, @PaymentMethod,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Payments_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Payments where ID=@ID
    update Payments
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
         OrderID, PaymentDate , Amount,PaymentMethod,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Payments
    WHERE IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        OrderID, PaymentDate , Amount,PaymentMethod,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Payments
    WHERE Id = @Id
      AND IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_Update]
	@OrderID    INT,
	@PaymentDate    DATETIME,
	@Amount    DECIMAL(18,4),
    @PaymentMethod  VARCHAR(MAX),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate      DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Payments
    set 
    OrderID = @OrderID,
    PaymentDate = @PaymentDate,
    Amount = @Amount,
    PaymentMethod = @PaymentMethod,
	CreatedBy=@CreatedBy,
    CreatedDate=@CreatedDate,
	ModifiedBy=@ModifiedBy,
    ModifiedDate=@ModifiedDate,
    IsDeleted=@IsDeleted
    where 
    Id=@Id
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Products_Create]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_Create]
    @ProductName    VARCHAR(MAX),
	@Price    DECIMAL(18,4),
	@StockQuantity    INT,
	@Category    VARCHAR(MAX),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Products]
    (
        ProductName, Price , StockQuantity,Category,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @ProductName, @Price, @StockQuantity, @Category,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Products_Delete]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Products_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Products where ID=@ID
    update Products
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Products_ReadAll]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
         ProductName, Price , StockQuantity,Category,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Products
    WHERE IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadByID]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ProductName, Price , StockQuantity,Category,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Products
    WHERE Id = @Id
      AND IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Products_Update]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_Update]
	@ProductName    VARCHAR(MAX),
	@Price    DECIMAL(18,4),
	@StockQuantity    INT,
	@Category    VARCHAR(MAX),
    @CreatedBy      VARCHAR(MAX),
    @CreatedDate      DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Products
    set 
    ProductName = @ProductName,
    Price = @Price,
    StockQuantity = @StockQuantity,
    Category = @Category,
	CreatedBy=@CreatedBy,
    CreatedDate=@CreatedDate,
	ModifiedBy=@ModifiedBy,
    ModifiedDate=@ModifiedDate,
    IsDeleted=@IsDeleted
    where 
    Id=@Id
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[ReadCustomersWithXOrders]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[ReadCustomersWithXOrders]
@Minorders INT
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	c.Id,
	c.FirstName +' '+c.LastName AS CustomerName,
	COUNT(o.Id) AS TotalOrders
	FROM Customers c
	INNER JOIN Orders o
	ON c.Id = o.CustomerId
	WHERE c.IsDeleted=0 AND o.IsDeleted=0
	GROUP BY c.Id, c.FirstName,c.LastName
	HAVING COUNT(o.Id)>=@Minorders;



	

	END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveLowStockProduct]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[RetrieveLowStockProduct]
@MinStock INT
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	p.Id,
	p.ProductName,
	p.StockQuantity,
	p.Category
	FROM Products p
	WHERE p.StockQuantity<@MinStock AND IsDeleted=0
	ORDER BY p.StockQuantity ASC;

	END
GO
/****** Object:  StoredProcedure [dbo].[SearchProductsBasedOnParameters]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[SearchProductsBasedOnParameters]
@MinValue DECIMAL(18,4)=0,
@MaxValue DECIMAL(18,4)
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT *
	FROM Products 
	WHERE Price BETWEEN @MinValue AND @MaxValue
	AND IsDeleted=0;

	END
GO
/****** Object:  StoredProcedure [dbo].[Top5BestSellingProducts]    Script Date: 14-02-2026 21:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Top5BestSellingProducts]
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT TOP 5
	p.Id AS ProductId,
	p.ProductName,
	SUM(oi.Quantity) AS TotalSold
	FROM OrderItems oi
	INNER JOIN Products p
	ON oi.ProductId=p.Id
	where oi.IsDeleted=0 AND 
	p.IsDeleted=0
	GROUP BY p.Id,p.ProductName
	ORDER BY TotalSold DESC;


	

	END
GO
