USE [SmartContactManager]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[Contact_Create]
    @FullName      VARCHAR(MAX),
    @Phone         VARCHAR(MAX),
    @City          VARCHAR(MAX),
    @CategoryId    INT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Address       VARCHAR(MAX),
    @UserName      VARCHAR(MAX),
    @PassWord      VARCHAR(MAX),
    @Role          VARCHAR(MAX),
    @IsActive       BIT,
    @IsLogged       BIT,
    @NoOfAttempts    INT,
    @ID            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Contacts]
    (
        FullName,
        Phone,
        City,
        CategoryId,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted,
        [Address],
        UserName,
        [PassWord],
        [Role],
        IsActive,
        IsLogged,
        NoOfAttempts
    )
    VALUES
    (
        @FullName,
        @Phone,
        @City,
        @CategoryId,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted,
        @Address,
        @UserName,
        @PassWord,
        @Role,
        @IsActive,
        @IsLogged,
        @NoOfAttempts
    );

    SELECT @ID = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Delete]    Script Date: 17-02-2026 07:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[Contact_Delete]
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
/****** Object:  StoredProcedure [dbo].[Contact_ReadAll]    Script Date: 17-02-2026 07:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[Contact_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.Id,
        c.FullName,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted,
        c.[Address],
        c.UserName,
        c.[PassWord],
        c.[Role],
        c.IsActive,
        c.IsLogged,
        c.NoOfAttempts
    FROM Contacts c
    INNER JOIN Category cat 
    ON c.CategoryId = cat.Id
    WHERE c.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_ReadByID]    Script Date: 17-02-2026 07:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[Contact_ReadByID]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
         c.Id,
        c.FullName,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted,
        c.[Address],
        c.UserName,
        c.[PassWord],
        c.[Role],
        c.IsActive,
        c.IsLogged,
        c.NoOfAttempts
    FROM Contacts c
INNER JOIN Category cat 
ON c.CategoryId = cat.Id
WHERE c.Id = @ID
  AND c.IsDeleted = 0;

END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Update]    Script Date: 17-02-2026 07:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[Contact_Update]
   @FullName      VARCHAR(MAX),
    @Phone         VARCHAR(MAX),
    @City          VARCHAR(MAX),
    @CategoryId    INT,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Address       VARCHAR(MAX),
    @UserName      VARCHAR(MAX),
    @PassWord      VARCHAR(MAX),
    @Role          VARCHAR(MAX),
    @IsActive       BIT,
    @IsLogged       BIT,
    @NoOfAttempts    INT,
    @ID            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Contacts
    SET 
        FullName = @FullName,
        Phone = @Phone,
        City = @City,
        CategoryId = @CategoryId,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted,
        [Address]=@Address,
        UserName=@UserName,
        [PassWord]=@PassWord,
        [Role]=@Role,
        IsActive=@IsActive,
        IsLogged=@IsLogged,
        NoOfAttempts=@NoOfAttempts
    WHERE ID = @ID
AND IsDeleted = 0;


    RETURN @@ROWCOUNT;
END
GO


/****** Object:  StoredProcedure [dbo].[Contacts_Login]    Script Date: 17-02-2026 07:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[Contacts_Login]
    @UserName VARCHAR(100),
    @PassWord VARCHAR(100)
AS
BEGIN
    SELECT 
        c.Id,
        c.FullName,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted,
        c.[Address],
        c.UserName,
        c.[PassWord],
        c.[Role],
        c.IsActive,
        c.IsLogged,
        c.NoOfAttempts
    FROM Contacts c
INNER JOIN Category cat 
ON c.CategoryId = cat.Id
    WHERE c.UserName = @UserName
      AND c.[PassWord] = @Password
      AND c.IsActive = 1
      AND c.IsDeleted = 0;

END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[Contacts_RetrieveByUserName]
    @UserName VARCHAR(100)
AS
BEGIN
    SELECT 
        c.Id,
        c.FullName,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted,
        c.[Address],
        c.UserName,
        c.[PassWord],
        c.[Role],
        c.IsActive,
        c.IsLogged,
        c.NoOfAttempts
    FROM Contacts c
INNER JOIN Category cat 
ON c.CategoryId = cat.Id
    WHERE c.UserName = @UserName
  AND c.IsDeleted = 0;

END

GO