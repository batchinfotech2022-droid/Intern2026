USE [UserTaskApp]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Register_Create]
    @Id           INT OUTPUT, 
    @UserName     VARCHAR(100),
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Password     VARCHAR(100),
    @Phone        VARCHAR(13),
    @Address      VARCHAR(500),
    @IsSystemAdmin BIT,
    @IsSystemUser   BIT,
    @IsSystemSupervisor BIT,
    @IsActive      BIT,
    @IsLocked      BIT,
    @NoAttempts    INT,
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT
    
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Register] (
        [UserName],[FirstName], [LastName], [Password], [Phone], [Address], [IsSystemAdmin],[IsSystemUser],[IsSystemSupervisor],[IsActive],[IsLocked],[NoAttempts], 
        [CreatedBy] ,[CreatedDate],  [ModifiedBy], [ModifiedDate],[IsDeleted]
    )
    VALUES (
        @UserName, @FirstName, @LastName, @Password, @Phone,@Address, @IsSystemAdmin, @IsSystemUser, @IsSystemSupervisor, @IsActive, @IsLocked, @NoAttempts , 
        @CreatedBy,@CreatedDate,  @ModifiedBy,  @ModifiedDate,@IsDeleted
    );

    -- Assign the newly created Identity ID to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Register_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Inters where ID=@ID
    update Register
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Register_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      UserName, FirstName, LastName, [Password], Phone,[Address], IsSystemAdmin, IsSystemUser, IsSystemSupervisor, IsActive, IsLocked, NoAttempts , 
        CreatedBy,CreatedDate,  ModifiedBy,  ModifiedDate, IsDeleted


     FROM 
     Register
     
     where IsDeleted=0
END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Register_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        UserName, FirstName, LastName, [Password], Phone,[Address], IsSystemAdmin, IsSystemUser, IsSystemSupervisor, IsActive, IsLocked, NoAttempts , 
        CreatedBy,CreatedDate,  ModifiedBy,  ModifiedDate, IsDeleted
    FROM Register
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Register_Update]
    @Id           INT  ,
    @UserName     VARCHAR(100),
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Password     VARCHAR(100),
    @Phone        VARCHAR(13),
    @Address      VARCHAR(500),
    @IsSystemAdmin BIT,
    @IsSystemUser   BIT,
    @IsSystemSupervisor BIT,
    @IsActive      BIT,
    @IsLocked      BIT,
    @NoAttempts    INT,
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT
AS 
BEGIN
    SET NOCOUNT ON;

    update Register
    set 
    UserName=@UserName
    ,FirstName=@FirstName
    ,LastName=@LastName
    ,[Password]=@Password
    ,Phone=@Phone
    ,[Address]=@Address
    ,IsSystemAdmin=@IsSystemAdmin
    ,IsSystemUser=@IsSystemUser
    ,IsSystemSupervisor=@IsSystemSupervisor
    ,IsActive=@IsActive
    ,IsLocked=@IsLocked
    ,NoAttempts=@NoAttempts
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