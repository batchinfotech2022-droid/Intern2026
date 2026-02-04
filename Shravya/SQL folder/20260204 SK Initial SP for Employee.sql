USE [BITech]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Create]    Script Date: 04-02-2026 11:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Employee_Create]
    @FullName    VARCHAR(max),
    @LastName     VARCHAR(max),
    @Role         VARCHAR(max),
    @PhoneNo        VARCHAR(13),
    @Email        VARCHAR(max),
    @Address      VARCHAR(max),
    @Salary       DECIMAL(18,4), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(max),
    @UpdatedDate DATETIME,
    @UpdatedBy   VARCHAR(max),
    @IsDeleted    BIT,
    @ID           INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Employee] (
        [FullName], [LastName], [Role], [PhoneNo], [Email], [Address], [Salary], 
        [createdDate], [createdBy], [updatedDate], [updatedBy], [isDeleted]
    )
    VALUES (
        @FullName, @LastName, @Role, @PhoneNo, @Email, @Address, @Salary, 
        @CreatedDate, @CreatedBy, @UpdatedDate, @UpdatedBy, @IsDeleted
    );

    -- Assign the newly created Identity ID to the output variable
    SELECT @ID = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Employee_Delete]    Script Date: 04-02-2026 11:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create   PROCEDURE [dbo].[Employee_Delete]
   @ID INT,
   @UpdatedBy VARCHAR(MAX),
   @UpdatedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    -- delete from Inters where ID=@ID
    update Employee
    SET IsDeleted=1
    ,UpdatedBy=@UpdatedBy
    ,updatedDate=@UpdatedDate
    where ID=@ID
    and IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Employee_ReadAll]    Script Date: 04-02-2026 11:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create      PROCEDURE [dbo].[Employee_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      FullName ,LastName,[Role],PhoneNo, Email,Salary,
      CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,IsDeleted

     FROM 
     Employee
     
     where IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Employee_ReadByID]    Script Date: 04-02-2026 11:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create      PROCEDURE [dbo].[Employee_ReadByID]
   @ID INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        FullName ,LastName,[Role],PhoneNo, Email,Salary,
        CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,IsDeleted
    FROM Employee
    WHERE ID=@ID 
        AND IsDeleted=0
    END


GO
/****** Object:  StoredProcedure [dbo].[Employee_Update]    Script Date: 04-02-2026 11:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create      PROCEDURE [dbo].[Employee_Update]
    @FullName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Role  VARCHAR(255),
    @PhoneNo        VARCHAR(13),
    @Email        VARCHAR(255),
    @Address      VARCHAR(500),
    @Salary      DECIMAL(18,4), 
    @CreatedDate  DATETIME,
    @CreatedBy    VARCHAR(100),
    @UpdatedDate DATETIME,
    @UpdatedBy   VARCHAR(100),
    @IsDeleted    BIT,
    @ID           INT  
AS 
BEGIN
    SET NOCOUNT ON;

    update Employee
    set 
    FullName=@FullName
    ,LastName=@LastName
    ,[Role]=@Role
    ,PhoneNo=@PhoneNo
    ,Email=@Email
    ,[Address]=@Address
    ,Salary=@Salary
    ,CreatedDate=@CreatedDate
    ,CreatedBy=@CreatedBy
    ,updatedDate=@UpdatedDate
    ,updatedBy=@UpdatedBy
    ,IsDeleted=@IsDeleted
    where 
    ID=@ID

    RETURN @@ROWCOUNT


END
GO
