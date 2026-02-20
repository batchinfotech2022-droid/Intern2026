USE [PROJECT]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Create]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Customers_Create]
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Email        VARCHAR(255),
    @Phone        VARCHAR(13),
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Customers] (
        FirstName, LastName, Email, Phone, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @FirstName, @LastName, @Email,  @Phone,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Customers_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Customers
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadAll]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      FirstName ,LastName, Email, Phone,
      CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted

     FROM 
     Customers
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadByID]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        FirstName, LastName, Email, Phone, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Customers
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 12-02-2026 22:20:12 ******/
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
    @Id           INT 
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
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[OrderItems_Create]
    @OrderId        INT,
    @ProductId      INT,
    @Quantity       INT,
    @Price          DECIMAL(18,2),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[OrderItems] (
        OrderId, ProductId, Quantity,Price,
        CreatedBy,CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES (
        @OrderId, @ProductId, @Quantity,@Price,
        @CreatedBy,@CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update OrderItems
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
        OrderId, ProductId, Quantity,Price
        CreatedBy,CreatedDate, ModifiedBy, ModifiedDate, IsDeleted

     FROM 
     OrderItems
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadBestProductByID]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[OrderItems_ReadBestProductByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 5 ProductId,
           SUM(Quantity)  AS Total
       
FROM OrderItems 
GROUP BY ProductId
ORDER BY Total DESC
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        OrderId, ProductId, Quantity,Price
        CreatedBy,CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM OrderItems
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_Update]
    @OrderId       INT,
    @ProductId      INT,
    @Quantity       INT,
    @Price          DECIMAL(18,2),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update OrderItems
    set 
     OrderId=@OrderId
    ,ProductId=@ProductId 
    ,Quantity=@Quantity
    ,Price=@Price
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Orders_Create]
    @CustomerId     INT,
    @OrderDate      DATETIME,
    @TotalAmount    DECIMAL(18,4),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Orders] (
        CustomerId, OrderDate, TotalAmount,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @CustomerId, @OrderDate, @TotalAmount,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Orders
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
        CustomerId, OrderDate, TotalAmount,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
     FROM 
     Orders
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CustomerId, OrderDate, TotalAmount,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Orders
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadCustomerDetails]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Orders_ReadCustomerDetails]
AS 
BEGIN
    SET NOCOUNT ON;

    
SELECT  O.Id
		,C.FirstName
		,O.OrderDate
		,O.TotalAmount
FROM Orders O
INNER JOIN Customers C
ON O.CustomerId=C.Id
WHERE 
	 O.IsDeleted=0
	AND C.IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadOrderMore]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_ReadOrderMore]
  
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT	CustomerId,
	        COUNT(*) OrderCount
    FROM Orders
    GROUP BY CustomerId
    HAVING COUNT(*)>=1
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadTotalAmountById]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Orders_ReadTotalAmountById]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT  O.[Id]
      ,O.[CustomerId]
      ,O.[OrderDate]
      ,O.[TotalAmount]
      ,SUM(OI.Price*OI.Quantity) AS [Total] 
      ,O.[CreatedBy]
      ,O.[CreatedDate]
      ,O.[ModifiedBy]
      ,O.[ModifiedDate]
      ,O.[IsDeleted]
      
  FROM [PROJECT].[dbo].[Orders] O
  INNER JOIN OrderItems OI ON OI.OrderId=O.Id
  
  WHERE O.Id=8 
  AND O.IsDeleted=0
  AND OI.IsDeleted=0
  GROUP BY O.[Id]

      ,[CustomerId]
      ,[OrderDate]
      ,[TotalAmount]
      ,O.[CreatedBy]
      ,O.[CreatedDate]
      ,O.[ModifiedBy]
      ,O.[ModifiedDate]
      ,O.[IsDeleted]
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_Update]
    @CustomerId     INT,
    @OrderDate      DATETIME,
    @TotalAmount    DECIMAL(18,4),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update Orders
    set 
     CustomerId =@CustomerId
    ,OrderDate=@OrderDate
    ,TotalAmount=@TotalAmount
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Payments_Create]
    @OrderId        INT,
    @PaymentDate    DATETIME,
    @Amount         DECIMAL(18,4),
    @PaymentMethod  VARCHAR(100),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Payments] (
        OrderId , PaymentDate, Amount, PaymentMethod,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @OrderId , @PaymentDate, @Amount, @PaymentMethod,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Payments
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
        OrderId , PaymentDate, Amount, PaymentMethod,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
     FROM 
     Payments
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        OrderId , PaymentDate, Amount, PaymentMethod,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Payments
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_Update]
    @OrderId        INT,
    @PaymentDate    DATETIME,
    @Amount         DECIMAL(18,4),
    @PaymentMethod  VARCHAR(100),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT
AS 
BEGIN
    SET NOCOUNT ON;

    update Payments
    set 
     OrderId =@OrderId
    ,PaymentDate=@PaymentDate
    ,Amount =@Amount 
    ,PaymentMethod=@PaymentMethod
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[Products_Create]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[Products_Create]
    @ProductName    VARCHAR(100),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(300),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Products] (
        ProductName, Price, StockQuantity, Category, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @ProductName, @Price, @StockQuantity,  @Category,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Products_Delete]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Products
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadAll]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      ProductName, Price, StockQuantity, Category, 
      CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted

     FROM 
     Products
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadByID]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        ProductName, Price, StockQuantity, Category, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Products
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadSearchOnPriceByPrice]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_ReadSearchOnPriceByPrice]

   @MinPrice DECIMAL(18,4),
   @MaxPrice DECIMAL(18,4)

AS 
BEGIN
    SET NOCOUNT ON;

    SELECT @MinPrice=0,
            @MaxPrice=MAX(Price)
        
    FROM Products
    WHERE Price BETWEEN  @MinPrice AND @MaxPrice
        AND IsDeleted=0
       
    END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadStockQuantity]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_ReadStockQuantity]
   
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT ProductName, Price, StockQuantity, Category, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Products
    WHERE 
	StockQuantity<10
END

GO
/****** Object:  StoredProcedure [dbo].[Products_Update]    Script Date: 12-02-2026 22:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_Update]
    @ProductName    VARCHAR(100),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(300),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT  
AS 
BEGIN
    SET NOCOUNT ON;

    update Products
    set 
     ProductName=@ProductName
    ,Price=@Price
    ,StockQuantity=@StockQuantity
    ,Category=@Category
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
