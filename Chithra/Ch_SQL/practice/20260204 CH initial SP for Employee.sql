USE [BITECH]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Create]    Script Date: 04-02-2026 11:38:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Employee_Create]
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Role         VARCHAR(100),
    @PhoneNo       VARCHAR(13),
    @Email        VARCHAR(255),
    @Address      VARCHAR(500),
    @Salary       DECIMAL(18,4), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(100),
    @ModifiedDate DATETIME,
    @ModifiedBy   VARCHAR(100),
    @isDeleted    BIT,
    @Id           INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Employee] (
        [FirstName], [LastName], [Role], [PhoneNo], [Email], [Address], [Salary], 
        [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isDeleted]
    )
    VALUES (
        @FirstName, @LastName, @Role, @PhoneNo, @Email, @Address, @Salary, 
        @CreatedDate, @CreatedBy, @ModifiedDate, @ModifiedBy, @isDeleted
    );

    -- Assign the newly created Identity ID to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Employee_Delete]    Script Date: 04-02-2026 11:38:27 AM ******/
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
    -- delete from Inters where ID=@ID
    update Employee
    SET isDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and isDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[Employee_ReadAll]    Script Date: 04-02-2026 11:38:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Employee_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      FirstName ,LastName,[Role],PhoneNo, Email,[Address],Salary,
      CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,isDeleted

     FROM 
     Employee
     
     where isDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Employee_ReadByID]    Script Date: 04-02-2026 11:38:27 AM ******/
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
        FirstName ,LastName,[Role],PhoneNo, Email,[Address],Salary,
        CreatedDate,CreatedBy,ModifiedDate,ModifiedBy,isDeleted
    FROM Employee
    WHERE Id=@Id
        AND isDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Employee_Update]    Script Date: 04-02-2026 11:38:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[Employee_Update]    Script Date: 04-02-2026 ******/
Create     PROCEDURE [dbo].[Employee_Update]
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Role         VARCHAR(255),
    @PhoneNo        VARCHAR(13),
    @Email        VARCHAR(255),
    @Address      VARCHAR(500),
    @Salary       DECIMAL(18,4), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(100),
    @ModifiedDate DATETIME,
    @ModifiedBy   VARCHAR(100),
    @isDeleted    BIT,
    @Id           INT  
AS 
BEGIN
    SET NOCOUNT ON;

    update Employee
    set 
    FirstName=@FirstName
    ,LastName=@LastName
    ,[Role]=@Role
    ,PhoneNo=@PhoneNo
    ,Email=@Email
    ,[Address]=@Address
    ,Salary=@Salary
    ,CreatedDate=@CreatedDate
    ,CreatedBy=@CreatedBy
    ,ModifiedDate=@ModifiedDate
    ,ModifiedBy=@ModifiedBy
    ,isDeleted=@isDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END

GO
