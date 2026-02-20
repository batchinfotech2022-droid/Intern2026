USE [EcomDB]
GO

/****** Object:  StoredProcedure [dbo].[Orders_create]******/
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

/****** Object:  StoredProcedure [dbo].[Orders_Delete]******/
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
END
GO

/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]******/
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

/****** Object:  StoredProcedure [dbo].[Orders_ReadByID******/
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
/****** Object:  StoredProcedure [dbo].[Orders_Update******/
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