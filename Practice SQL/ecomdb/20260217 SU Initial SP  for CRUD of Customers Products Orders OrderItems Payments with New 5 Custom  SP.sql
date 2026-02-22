USE [EcomDB]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Create]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Customers_Create]
    @FirstName    VARCHAR(MAX),
    @LastName     VARCHAR(MAX),
    @Email        VARCHAR(MAX),
    @Phone        VARCHAR(13),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Customers]
    (
        FirstName,
        LastName,
        Email,
        Phone,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @FirstName,
        @LastName,
        @Email,
        @Phone,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[Customers_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;
	    UPDATE Customers
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
      RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadAll]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Customers_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        FirstName,
        LastName,
        Email,
        Phone,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Customers
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadByID]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Customers_ReadByID]
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        FirstName,
        LastName,
        Email,
        Phone,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Customers
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[Customers_Update]
    @FirstName    VARCHAR(MAX),
    @LastName     VARCHAR(MAX),
    @Email        VARCHAR(MAX),
    @Phone        VARCHAR(13),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Customers
    SET
        FirstName = @FirstName,
        LastName = @LastName,
        Email = @Email,
        Phone = @Phone,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[OrderItems_Create]
    @OrderId      INT,
    @ProductId    INT,
    @Quantity     DECIMAL(18,4),
    @Price        DECIMAL(18,4),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO OrderItems
    (
        OrderId,
        ProductId,
        Quantity,
        Price,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @OrderId,
        @ProductId,
        @Quantity,
        @Price,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[OrderItems_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE OrderItems
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
      RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[OrderItems_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        OrderId,
        ProductId,
        Quantity,
        Price,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM OrderItems
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[OrderItems_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        OrderId,
        ProductId,
        Quantity,
        Price,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM OrderItems
    WHERE Id = @Id 
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[OrderItems_Update]
    @OrderId      INT,
    @ProductId    INT,
    @Quantity     DECIMAL(18,4),
    @Price        DECIMAL(18,4),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE OrderItems
    SET 
        OrderId = @OrderId,
        ProductId = @ProductId,
        Quantity = @Quantity,
        Price = @Price,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Orders_Create]
    @CustomerId   INT,
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
        CustomerId,
        OrderDate,
        TotalAmount,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @CustomerId,
        @OrderDate,
        @TotalAmount,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Orders_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Orders
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
      RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Orders_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CustomerId,
        OrderDate,
        TotalAmount,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Orders
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Orders_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CustomerId,
        OrderDate,
        TotalAmount,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Orders
    WHERE Id = @Id 
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadCustomerDetails]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[Orders_ReadCustomerDetails]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        O.Id AS OrderId,
        C.FirstName + ' ' + C.LastName AS CustomerName,
        O.OrderDate,
        O.TotalAmount
    FROM [EcomDB].[dbo].[Orders] O
    INNER JOIN [EcomDB].[dbo].[Customers] C 
        ON C.Id = O.CustomerId
    WHERE O.IsDeleted = 0
      AND C.IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadTotalAmountById]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Orders_ReadTotalAmountById]
   @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT  O.[Id]
      ,O.[CustomerId]
      ,O.[OrderDate]
      ,SUM(OI.Price*OI.Quantity) AS [TotalAmount]
  FROM [EcomDB].[dbo].[Orders] O
  INNER JOIN OrderItems OI ON OI.OrderId=O.Id
 
  WHERE 
 O.IsDeleted=0
  AND OI.IsDeleted=0
  GROUP BY O.[Id]
        ,[CustomerId]
      ,[OrderDate]
      
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadTotalByID]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_ReadTotalByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
    o.[Id],
    o.[CustomerId],
    o.[OrderDate],
    o.[TotalAmount],
    SUM(oi.Price * oi.Quantity) AS [Total],
    o.[CreatedBy],
    o.[CreatedDate],
    o.[ModifiedBy],
    o.[ModifiedDate],
    o.[IsDeleted]
FROM [EcomDB].[dbo].[Orders] o
INNER JOIN [EcomDB].[dbo].[OrderItems] oi 
    ON oi.OrderId = o.Id
WHERE 
   o.IsDeleted = 0
  AND oi.IsDeleted = 0
GROUP BY 
    o.[Id],
    o.[CustomerId],
    o.[OrderDate],
    o.[TotalAmount],
    o.[CreatedBy],
    o.[CreatedDate],
    o.[ModifiedBy],
    o.[ModifiedDate],
    o.[IsDeleted];
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Orders_Update]
    @CustomerId   INT,
    @OrderDate    DATETIME,
    @TotalAmount  DECIMAL(18,4),
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Orders
    SET 
        CustomerId = @CustomerId,
        OrderDate = @OrderDate,
        TotalAmount = @TotalAmount,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Payments_Create]
    @OrderId INT,
    @PaymentDate DATETIME,
    @Amount DECIMAL(18,4),
    @PaymentMethod VARCHAR(MAX),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

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
    (
        @OrderId,
        @PaymentDate,
        @Amount,
        @PaymentMethod,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Payments_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Payments
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
      RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Payments_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        OrderId,
        PaymentDate,
        Amount,
        PaymentMethod,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Payments
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Payments_ReadByID]
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        OrderId,
        PaymentDate,
        Amount,
        PaymentMethod,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Payments
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Payments_Update]
    @OrderId INT,
    @PaymentDate DATETIME,
    @Amount DECIMAL(18,4),
    @PaymentMethod VARCHAR(MAX),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Payments
    SET
        OrderId = @OrderId,
        PaymentDate = @PaymentDate,
        Amount = @Amount,
        PaymentMethod = @PaymentMethod,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Products_Create]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_Create]
    @ProductName    VARCHAR(MAX),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(MAX),
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
    (
        @ProductName, @Price, @StockQuantity, @Category,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Products_Delete]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
  
    UPDATE Products
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadAll]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
         ProductName, Price, StockQuantity, Category,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Products
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadByID]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ProductName, Price, StockQuantity, Category,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Products
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadBylowStockQuantity]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_ReadBylowStockQuantity]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        ProductName,
        StockQuantity,
        Category
    FROM Products
    WHERE StockQuantity <40
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadTopBestSelling]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_ReadTopBestSelling]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 5
        P.Id as ProductId,
        P.ProductName,
        SUM(OI.Quantity) as TotalQuantity
    FROM [EcomDB].[dbo].[OrderItems] OI
    INNER JOIN [EcomDB].[dbo].[Products] P
        ON P.Id = OI.ProductId
    WHERE OI.IsDeleted = 0
      AND P.IsDeleted = 0
    GROUP BY 
        P.Id,
        P.ProductName
    ORDER BY 
        SUM(OI.Quantity) DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[Products_SearchByPriceRangr]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[Products_SearchByPriceRangr]
    @MinPrice DECIMAL(18,4)=0,
    @MaxPrice DECIMAL(18,4)
as
BEGIN
    SELECT *
    FROM Products
    WHERE Price BETWEEN @MinPrice AND @MaxPrice
    END
GO
/****** Object:  StoredProcedure [dbo].[Products_Update]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create       PROCEDURE [dbo].[Products_Update]
	@ProductName    VARCHAR(MAX),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(MAX),
    @CreatedDate    DATETIME,
    @CreatedBY      VARCHAR(MAX),
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
    CreatedDate=@CreatedDate,
    CreatedBy=@CreatedBy,
    ModifiedDate=@ModifiedDate,
    ModifiedBy=@ModifiedBy,
    IsDeleted=@IsDeleted
    where 
    Id=@Id
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[ReadCustomersWithXOrders]    Script Date: 17-02-2026 10:28:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[ReadCustomersWithXOrders]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        C.Id,
        C.FirstName + ' ' + C.LastName AS CustomerName,
        COUNT(O.Id) AS TotalOrders
    FROM Customers C
    INNER JOIN Orders O ON O.CustomerId = C.Id
    WHERE C.IsDeleted = 0
      AND O.IsDeleted = 0
    GROUP BY C.Id,
    C.FirstName,
    C.LastName
    HAVING COUNT(O.Id) >= 1;
END
GO
