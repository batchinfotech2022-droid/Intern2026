USE [EcomDB]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 4) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 4) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[PaymentMethod] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](max) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[Category] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Create]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Customers_Create]
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
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Customers_Delete]
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
/****** Object:  StoredProcedure [dbo].[Customers_ReadAll]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Customers_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Customers_ReadByID]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Customers_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Customers_Update]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_Create]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_Delete]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 08-02-2026 09:34:29 PM ******/
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_Update]
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
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Create]
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
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Delete]
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
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 08-02-2026 09:34:29 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Update]
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
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_Create]
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
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_Delete]
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
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 08-02-2026 09:34:29 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_Update]
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
/****** Object:  StoredProcedure [dbo].[Products_Create]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_Create]
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
/****** Object:  StoredProcedure [dbo].[Products_Delete]    Script Date: 08-02-2026 09:34:29 PM ******/
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
  
    UPDATE Products
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadAll]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Products_ReadByID]    Script Date: 08-02-2026 09:34:29 PM ******/
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
        ProductName, Price, StockQuantity, Category,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM Products
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Products_Update]    Script Date: 08-02-2026 09:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_Update]
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
