USE [EcommerceDB]
GO
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER   PROCEDURE [dbo].[Orders_Create]
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
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER  PROCEDURE [dbo].[Orders_Delete]
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
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER  PROCEDURE [dbo].[Orders_ReadAll]
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
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER  PROCEDURE [dbo].[Orders_ReadByID]
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
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 11-02-2026 21:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER  PROCEDURE [dbo].[Orders_Update]
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