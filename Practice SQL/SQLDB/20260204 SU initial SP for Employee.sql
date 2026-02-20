USE [BITECH]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Create]    Script Date: 04-02-2026 11:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Employee_Create]
    @FirstName    VARCHAR(max),
    @LastName     VARCHAR(max),
	@Role         VARCHAR(255),
    @PhoneNO       VARCHAR(13),
    @Email        VARCHAR(255),
    @Address      VARCHAR(max),
    @Salary       DECIMAL(18,4), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(max),
    @ModifiedDate DATETIME,
    @ModifiedBy   VARCHAR(max),
    @IsDeleted    BIT,
    @Id           INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Employee] (
        [FirstName], [LastName], [Role], [PhoneNO], [Email], [Address], [Salary], 
        [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted]
    )
    VALUES (
        @FirstName, @LastName, @Role, @PhoneNO, @Email, @Address, @Salary, 
        @CreatedDate, @CreatedBy, @ModifiedDate, @ModifiedBy, @IsDeleted
    );

    -- Assign the newly created Identity ID to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Employee_Delete]    Script Date: 04-02-2026 11:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Employee_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Employee where ID=@ID
    update Employee
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[Employee_ReadAll]    Script Date: 04-02-2026 11:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Employee_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      FirstName ,LastName,[Role],PhoneNO,Email,[Address],Salary,
      CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,IsDeleted

     FROM 
     Employee
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Employee_ReadByID]    Script Date: 04-02-2026 11:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Employee_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        FirstName ,LastName,[Role],PhoneNO, Email,[Address],Salary,
        CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,IsDeleted
    FROM Employee
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Employee_Update]    Script Date: 04-02-2026 11:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Employee_Update]
	@FirstName    VARCHAR(max),
    @LastName     VARCHAR(max),
	@Role         VARCHAR(255),
    @PhoneNO       VARCHAR(13),
    @Email        VARCHAR(255),
    @Address      VARCHAR(max),
    @Salary       DECIMAL(18,4), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(max),
    @ModifiedDate DATETIME,
    @ModifiedBy   VARCHAR(max),
    @IsDeleted    BIT,
    @Id           INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update Employee
    set 
    FirstName=@FirstName
    ,LastName=@LastName
    ,[Role]=@Role
    ,PhoneNO=@PhoneNO
    ,Email=@Email
    ,[Address]=@Address
    ,Salary=@Salary
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
