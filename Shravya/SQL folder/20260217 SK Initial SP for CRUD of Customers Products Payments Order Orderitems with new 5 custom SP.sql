USE [EcommerceDB]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Create]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Customers_Create]
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
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Customers_Delete]
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
/****** Object:  StoredProcedure [dbo].[Customers_ReadAll]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Customers_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
         FirstName, LastName, Email, Phone,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Customers
    WHERE IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadByID]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Customers_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        FirstName, LastName, Email, Phone,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Customers
    WHERE Id = @Id
      AND IsDeleted = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE    PROCEDURE [dbo].[Customers_Update]
	@FirstName    VARCHAR(MAX),
    @LastName        VARCHAR(MAX),
    @Email          VARCHAR(MAX),
    @Phone       VARCHAR(13),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate      DATETIME,
    @ModifiedBy     VARCHAR(MAX),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Customers
    set 
    FirstName = @FirstName,
    LastName = @LastName,
    Email = @Email,
    Phone = @Phone,
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[OrderItems_Create]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[OrderItems_Delete]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[OrderItems_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[OrderItems_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE        PROCEDURE [dbo].[OrderItems_Update]
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
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE      PROCEDURE [dbo].[Orders_Create]
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
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Orders_Delete]
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
/****** Object:  StoredProcedure [dbo].[Orders_GetOrdersWithCustomerDetails]    Script Date: 17-02-2026 10:28:47 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Orders_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Orders_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Orders_Update]
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
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Payments_Create]
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
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Payments_Delete]
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
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Payments_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Payments_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE        PROCEDURE [dbo].[Payments_Update]
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
/****** Object:  StoredProcedure [dbo].[Products_Create]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_Create]
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
/****** Object:  StoredProcedure [dbo].[Products_Delete]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_Delete]
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
/****** Object:  StoredProcedure [dbo].[products_ReadAll]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[products_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Products_ReadByID]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[Products_Update]    Script Date: 17-02-2026 10:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE       PROCEDURE [dbo].[Products_Update]
	@ProductName    VARCHAR(MAX),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(MAX),
    @CreatedBy    VARCHAR(MAX),
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
    Price  = @Price ,
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
