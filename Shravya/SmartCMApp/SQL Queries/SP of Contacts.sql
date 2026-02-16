USE [SmartContactManager]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Create]
    @FullName      VARCHAR(MAX),
    @Email         VARCHAR(MAX),
    @Phone         VARCHAR(MAX),
    @City          VARCHAR(MAX),
    @CategoryId    INT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @ID            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Contacts]
    (
        FullName,
        Email,
        Phone,
        City,
        CategoryId,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @FullName,
        @Email,
        @Phone,
        @City,
        @CategoryId,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @ID = SCOPE_IDENTITY();
END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.Id,
        c.FullName,
        c.Email,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted
    FROM Contacts c
    INNER JOIN Category cat 
    ON c.CategoryId = cat.Id
    WHERE c.IsDeleted = 0
END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_ReadByID]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Contacts
    WHERE ID = @ID
      AND IsDeleted = 0
END
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Update]
    @FullName      VARCHAR(MAX),
    @Email         VARCHAR(MAX),
    @Phone         VARCHAR(MAX),
    @City          VARCHAR(MAX),
    @CategoryId    INT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @ID            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Contacts
    SET 
        FullName = @FullName,
        Email = @Email,
        Phone = @Phone,
        City = @City,
        CategoryId = @CategoryId,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE ID = @ID;

    RETURN @@ROWCOUNT;
END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Delete]
    @ID INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Contacts
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE ID = @ID
      AND IsDeleted = 0;
END
GO


