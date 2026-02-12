USE [EcommerceDB]
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[OrderItems_Create]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[OrderItems_Delete]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[OrderItems_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[OrderItems_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER     PROCEDURE [dbo].[OrderItems_Update]
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