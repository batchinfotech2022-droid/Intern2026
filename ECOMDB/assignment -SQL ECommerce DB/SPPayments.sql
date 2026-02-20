USE [EcomDB]
GO
/****** Object:  StoredProcedure [dbo].[Payments_Create]     ******/
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

/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]     ******/
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

/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]     ******/
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

/****** Object:  StoredProcedure [dbo].[Payments_Update]     ******/
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
END
GO

/****** Object:  StoredProcedure [dbo].[Payments_Delete]     ******/
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
END
GO