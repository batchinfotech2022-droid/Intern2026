USE [SmartContactManager]
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 -- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Adding a new row with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_Create]
	@Username varchar(20),
	@Activityon varchar(50),
	@Activityitem varchar(50),
	@Activitydate datetime,
	@Issuccess bit,
	@Activitytext varchar(250),
	@Activityid int OUTPUT
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO Activity
		( Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext)
	VALUES
		(@Username,@Activityon,@Activityitem,@Activitydate,@Issuccess,@Activitytext)

	SELECT @Activityid = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Deleting the row of the given ID value
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_Delete]
	@Activityid int
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM Activity
	WHERE
		Activityid = @Activityid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting all rows
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_ReadAll]
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Activityid, Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext
	FROM Activity
	ORDER BY Activityid DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting a Row according to given ID
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_ReadById]
	@Activityid int
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Activityid, Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext
	FROM Activity
	WHERE
		Activityid = @Activityid
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Updating the row of a given ID value with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_Update]
	@Activityid int,
	@Username varchar(20),
	@Activityon varchar(50),
	@Activityitem varchar(50),
	@Activitydate datetime,
	@Issuccess bit,
	@Activitytext varchar(250)
AS
BEGIN
	SET NOCOUNT ON
	UPDATE Activity
	SET
		Username = @Username,
		Activityon = @Activityon,
		Activityitem = @Activityitem,
		Activitydate = @Activitydate,
		Issuccess = @Issuccess,
		Activitytext = @Activitytext
	WHERE
		Activityid = @Activityid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Adding a new row with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_Create]
	@Exceptionsource varchar(50),
	@Exceptiondesc varchar(200),
	@Exceptiondate datetime,
	@Issolved bit,
	@Remarks varchar(100),
	@Exceptionid int OUTPUT
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO AppException
		( Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks)
	VALUES
		(@Exceptionsource,@Exceptiondesc,@Exceptiondate,@Issolved,@Remarks)

	SELECT @Exceptionid = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Deleting the row of the given ID value
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_Delete]
	@Exceptionid int
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM AppException
	WHERE
		Exceptionid = @Exceptionid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting all rows
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_ReadAll]
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Exceptionid, Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks
	FROM AppException
	ORDER BY Exceptionid DESC
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting a Row according to given ID
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_ReadById]
	@Exceptionid int
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Exceptionid, Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks
	FROM AppException
	WHERE
		Exceptionid = @Exceptionid
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	NTier
-- Create date:	22-05-2024
-- Description:	Read Exception details For Search
-- Revisions:	
-- =============================================

CREATE PROCEDURE [dbo].[AppException_ReadForSearch]
	@ExceptionSource varchar(50)
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	ExceptionID, ExceptionSource, ExceptionDesc, ExceptionDate, IsSolved, Remarks
	FROM AppException
	WHERE
		ExceptionSource Like '%' + @ExceptionSource + '%'
		OR
		ExceptionDesc Like '%' + @ExceptionSource + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Updating the row of a given ID value with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_Update]
	@Exceptionid int,
	@Exceptionsource varchar(50),
	@Exceptiondesc varchar(200),
	@Exceptiondate datetime,
	@Issolved bit,
	@Remarks varchar(100)
AS
BEGIN
	SET NOCOUNT ON
	UPDATE AppException
	SET
		Exceptionsource = @Exceptionsource,
		Exceptiondesc = @Exceptiondesc,
		Exceptiondate = @Exceptiondate,
		Issolved = @Issolved,
		Remarks = @Remarks
	WHERE
		Exceptionid = @Exceptionid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Create]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Category_Create]
    @CategoryName  VARCHAR(MAX),
    @IsActive      BIT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @ID            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Category]
    (
        CategoryName,
        IsActive,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @CategoryName,
        @IsActive,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @ID = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_Delete]
    @ID INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Category
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE ID = @ID
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ReadAll]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        CategoryName,
        IsActive,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Category
    WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ReadByID]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_ReadByID]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        CategoryName,
        IsActive,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Category
    WHERE ID = @ID
      AND IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_Update]
    @CategoryName  VARCHAR(MAX),
    @IsActive      BIT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @ID            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Category
    SET 
        CategoryName = @CategoryName,
        IsActive = @IsActive,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE ID = @ID;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Create]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Create]
    @FullName VARCHAR(100),
    @UserName VARCHAR(100),
    @Phone VARCHAR(20),
    @City VARCHAR(50),
    @CategoryId INT,
    @PassWord VARCHAR(100),
    @Role VARCHAR(50),
    @IsActive BIT,
    @IsLogged BIT,
    @NoOfAttempts INT,
    @CreatedBy VARCHAR(100),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @ID INT OUTPUT
AS
BEGIN
    INSERT INTO Contacts
    (
        FullName, UserName, Phone, City, CategoryId,
        [PassWord], [Role], IsActive, IsLogged, NoOfAttempts,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @FullName, @UserName, @Phone, @City, @CategoryId,
        @Password, @Role, @IsActive, @IsLogged, @NoOfAttempts,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    )

    SELECT @ID = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Delete]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME
AS
BEGIN
    UPDATE Contacts
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id

    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_ReadAll]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_ReadAll]
AS
BEGIN
    SELECT
        Id,
        FullName,
        UserName,
        Phone,
        City,
        CategoryId,
        [PassWord],
        [Role],
        IsActive,
        IsLogged,
        NoOfAttempts,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Contacts
    WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_ReadByID]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_ReadByID]
    @Id INT
AS
BEGIN
    SELECT
        Id,
        FullName,
        UserName,
        Phone,
        City,
        CategoryId,
        [PassWord],
        [Role],
        IsActive,
        IsLogged,
        NoOfAttempts,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Contacts
    WHERE Id = @Id
      AND IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Update]    Script Date: 24-02-2026 07:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Update]
    @Id INT,
    @FullName VARCHAR(100),
    @UserName VARCHAR(100),
    @Phone VARCHAR(20),
    @City VARCHAR(50),
    @CategoryId INT,
    @PassWord VARCHAR(100),
    @Role VARCHAR(50),
    @IsActive BIT,
    @IsLogged BIT,
    @NoOfAttempts INT,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME
AS
BEGIN
    UPDATE Contacts
    SET
        FullName = @FullName,
        UserName = @UserName,
        Phone = @Phone,
        City = @City,
        CategoryId = @CategoryId,
        [PassWord] = @PassWord,
        [Role] = @Role,
        IsActive = @IsActive,
        IsLogged = @IsLogged,
        NoOfAttempts = @NoOfAttempts,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id

    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Contacts_Login]    Script Date: 24-02-2026 07:25:54 ******/
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
/****** Object:  StoredProcedure [dbo].[Contacts_RetrieveByUserName]    Script Date: 24-02-2026 07:25:54 ******/
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
