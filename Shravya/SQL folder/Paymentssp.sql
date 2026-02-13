USE [EcommerceDB]
GO
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[Payments_Create]
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
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[Payments_Delete]
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
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[Payments_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[Payments_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER     PROCEDURE [dbo].[Payments_Update]
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