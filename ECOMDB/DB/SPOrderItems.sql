USE [EcomDB]
GO

/****** Object:  StoredProcedure [dbo].[OrderItems_Create]     ******/
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

/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]     ******/
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
END
GO

/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]     ******/
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

/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]     ******/
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

/****** Object:  StoredProcedure [dbo].[OrderItems_Update]     ******/
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