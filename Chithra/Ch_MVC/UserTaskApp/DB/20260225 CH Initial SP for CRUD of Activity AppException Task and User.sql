USE [UserTaskApp]
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 25-02-2026 22:37:14 ******/
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
/****** Object:  StoredProcedure [dbo].[TASK_Create]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[TASK_Create]

    @Title        VARCHAR(100),
    @Description  VARCHAR(500),
    @AssignedTo   VARCHAR(30),
    @Status       VARCHAR(100), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(100),
    @ModifiedDate DATETIME,
    @ModifiedBy   VARCHAR(100),
    @IsDeleted    BIT,
    @Id          INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[TASK] (
        Title, [Description], AssignedTo, [Status ], 
        [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted]
    )
    VALUES (
        @Title, @Description, @AssignedTo, @Status, 
        @CreatedDate, @CreatedBy, @ModifiedDate, @ModifiedBy, @IsDeleted
    );

    -- Assign the newly created Identity ID to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[TASK_Delete]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TASK_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Inters where ID=@ID
    update TASK
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[TASK_ReadAll]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE      PROCEDURE [dbo].[TASK_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
     Id,
      Title, [Description], AssignedTo, [Status] ,
      CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,IsDeleted

     FROM 
     TASK
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[TASK_ReadByID]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE      PROCEDURE [dbo].[TASK_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        Title, [Description], AssignedTo, [Status] ,
      CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,IsDeleted
    FROM TASK
    WHERE Id=@Id
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[TASK_Update]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[TASK_Update]
    @Title        VARCHAR(100),
    @Description  VARCHAR(500),
    @AssignedTo   VARCHAR(30),
    @Status       VARCHAR(100),
    @CreatedBy   VARCHAR(100),
    @CreatedDate DATETIME,
        @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id          INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update TASK
    set 
   Title= @Title
   ,[Description] =@Description
    ,AssignedTo=@AssignedTo
    ,[Status]=@Status
        ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
        ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[User_Create]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[User_Create] 
    @UserName     VARCHAR(100),
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Password     VARCHAR(100),
    @Phone        VARCHAR(13),
    @Address      VARCHAR(500),
    @Role         VARCHAR(100),
    @IsActive      BIT,
    @IsLogged      BIT,
    @NoAttempts    INT,
    @IsLocked      BIT,
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT OUTPUT

AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[User] (
       [UserName],[FirstName], [LastName], [Password], [Phone], [Address], [Role],[IsActive],[IsLogged],[NoAttempts], [IsLocked],
        [CreatedBy] ,[CreatedDate],  [ModifiedBy], [ModifiedDate],[IsDeleted]
    )
    VALUES (
        @UserName, @FirstName, @LastName, @Password, @Phone,@Address,@Role,@IsActive,@IsLogged, @NoAttempts ,  @IsLocked,
         @CreatedBy,@CreatedDate , @ModifiedBy, @ModifiedDate,@IsDeleted
    );

    -- Assign the newly created Identity ID to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[User_Delete]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[User_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
   
    update [User]
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[User_ReadAll]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[User_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
     Id,

      UserName,FirstName, LastName, [Password], Phone, [Address], [Role],IsActive,IsLogged,NoAttempts, IsLocked,
       
      CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,IsDeleted

     FROM 
       [User]
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[User_ReadByID]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[User_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT Id,
      UserName,FirstName, LastName, [Password], Phone, [Address], [Role],IsActive,IsLogged,NoAttempts, IsLocked,
        
      CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,IsDeleted
    FROM [User]
    WHERE Id=@Id
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[User_ReadByUserName]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[User_ReadByUserName]
   @UserName VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id,
           UserName,
           FirstName,
           LastName,
           [Password],
           Phone,
           [Address],
           [Role],
           IsActive,
           IsLogged,
           NoAttempts,
           IsLocked,
           CreatedBy,
           CreatedDate,
           ModifiedBy,
           ModifiedDate,
           IsDeleted
    FROM [User]
    WHERE LTRIM(RTRIM(UserName)) = LTRIM(RTRIM(@UserName))
      AND IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 25-02-2026 22:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[User_Update]
    @Id           INT , 
    @UserName     VARCHAR(100),
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Password     VARCHAR(100),
    @Phone        VARCHAR(13),
    @Address      VARCHAR(500),
    @Role         VARCHAR(100),
    @IsActive      BIT,
    @IsLogged      BIT,
    @NoAttempts    INT,
    @IsLocked      BIT,
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(100),
    @ModifiedDate DATETIME,
    @ModifiedBy   VARCHAR(100),
    @IsDeleted    BIT
   
AS 
BEGIN
    SET NOCOUNT ON;

    update [User]
    set 
    [UserName]=@UserName
    ,[FirstName]=@FirstName
    ,[LastName]=@LastName
    ,[Password]=@Password
    ,[Phone]=@Phone
    ,[Address]=@Address
    ,[Role]=@Role
    ,[IsActive]=@IsActive      
    ,[IsLogged]=@IsLogged    
    ,[NoAttempts]=@NoAttempts    
    ,[IsLocked]=@IsLocked      
    ,CreatedDate=@CreatedDate
    ,CreatedBy=@CreatedBy
    ,ModifiedDate=@ModifiedDate
    ,ModifiedBy=@ModifiedBy
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
