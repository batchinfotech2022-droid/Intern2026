USE [BiSchoolDB]
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 20-02-2026 20:42:40 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 20-02-2026 20:42:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_Create]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Batch_Create]
    @Id           INT OUTPUT ,
    @Title        VARCHAR(100),
    @Timing       VARCHAR(13),
    @Subject      VARCHAR(100),
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT

AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Batch] (
        Title, Timing, [Subject], 
        CreatedBy, CreatedDate, ModifiedBy,  ModifiedDate,IsDeleted
    )
    VALUES (
        @Title, @Timing, @Subject, 
        @CreatedBy, @CreatedDate, @ModifiedBy,  @ModifiedDate,@IsDeleted
    );

 
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Batch_Delete]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Batch_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Batch
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate

    where Id=@Id
    and IsDeleted=0

    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Batch_ReadAll]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Batch_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      Id,Title, Timing, [Subject], 
        CreatedBy, CreatedDate, ModifiedBy,  ModifiedDate,IsDeleted

     FROM 
     Batch
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Batch_ReadByID]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Batch_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,Title, Timing, [Subject], 
        CreatedBy, CreatedDate, ModifiedBy,  ModifiedDate,IsDeleted
    FROM Batch
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Batch_Update]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Batch_Update]
    @Title        VARCHAR(100),
    @Timing       VARCHAR(13),
    @Subject      VARCHAR(100),
    @Address      VARCHAR(500),
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @ID           INT  
AS 
BEGIN
    SET NOCOUNT ON;

    update Batch
    set 
    Title=@Title
    ,Timing=@Timing
    ,[Subject]=@Subject
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
/****** Object:  StoredProcedure [dbo].[Fees_Create]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Fees_Create]
    @StudentId     INT,
    @Amount        DECIMAL(18,4),
    @Date      DATE,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Id            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Fees
    (
        StudentId, Amount, [Date],
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @StudentId,
		@Amount,
		@Date,
        @CreatedBy,
		@CreatedDate,
		@ModifiedBy,
		@ModifiedDate, 
		@IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_Delete]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE      PROCEDURE [dbo].[Fees_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Fees
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_ReadAll]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[Fees_ReadAll]
AS
BEGIN
    SELECT 
        F.Id,
        F.StudentId,
        S.FullName AS StudentName,
        F.Amount,
        F.[Date],
        F.CreatedDate,
        F.CreatedBy,
        F.ModifiedDate,
        F.ModifiedBy,
        F.IsDeleted
    FROM dbo.Fees F
    INNER JOIN Student S ON F.StudentId = S.Id
    WHERE F.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_ReadByID]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE         PROCEDURE [dbo].[Fees_ReadByID]
    @Id INT
AS
BEGIN
    SELECT 
        F.Id,
        F.StudentId,
        S.FullName AS StudentName,
        F.Amount,
        F.[Date],
        F.CreatedDate,
        F.CreatedBy,
        F.ModifiedDate,
        F.ModifiedBy,
        F.IsDeleted
    FROM dbo.Fees F
    INNER JOIN Student S ON F.StudentId = S.Id
    WHERE F.Id = @Id
      AND F.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_Update]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE        PROCEDURE [dbo].[Fees_Update]
    @StudentId     INT,
    @Amount        DECIMAL(18,4),
    @Date      DATE,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Id            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Fees
    SET
        StudentId = @StudentId,
        Amount = @Amount,
        [Date] = @Date,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id
      AND IsDeleted = 0;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Create]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Student_Create]
    @FullName      VARCHAR(MAX),
    @Email         VARCHAR(MAX),
    @Password      VARCHAR(MAX),
    @Address       VARCHAR(MAX),
    @Phone         VARCHAR(MAX),
    @IsAdmin       VARCHAR(MAX),
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Id            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Student]
    (
        FullName,
        Email,
        [Password],
        [Address],
        Phone,
        IsAdmin,
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
    @Password, 
     @Address, 
    @Phone,   
    @IsAdmin , 
    @CreatedBy, 
    GETDATE(),
    @ModifiedBy, 
    GETDATE(),
    @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Delete]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Student_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Student
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Student_ReadAll]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Student_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        FullName,
        Email,
        [Password],
        [Address],
        Phone,
        IsAdmin,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Student
    WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Student_ReadByID]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Student_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        FullName,
        Email,
        [Password],
        [Address],
        Phone,
        IsAdmin,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Student
WHERE Id = @Id
  AND IsDeleted = 0;

END
GO
/****** Object:  StoredProcedure [dbo].[Student_Update]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Student_Update]
   @FullName      VARCHAR(MAX),
    @Email         VARCHAR(MAX),
    @Password      VARCHAR(MAX),
     @Address       VARCHAR(MAX),
    @Phone         VARCHAR(MAX),
    @IsAdmin       VARCHAR(MAX),
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Id            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Student
    SET 
    FullName=@FullName,     
    Email=@Email,        
    [Password]=@Password,    
    [Address]=@Address,      
    Phone=@Phone,       
    IsAdmin=@IsAdmin,    
    CreatedBy=@CreatedBy,    
    CreatedDate=@CreatedDate,  
    ModifiedBy=@ModifiedBy,  
    ModifiedDate=@ModifiedDate,
    IsDeleted=@IsDeleted
    WHERE Id = @Id
AND IsDeleted = 0;


    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[StudentBatch_Create]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_Create]
    @BatchId INT,
    @StudentId INT,
    @CreatedBy VARCHAR(50),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(50),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS
BEGIN
    INSERT INTO dbo.StudentBatch
    (BatchId, StudentId, CreatedBy, CreatedDate, ModifiedBy,  ModifiedDate,IsDeleted)
    VALUES
    (@BatchId, @StudentId,  @CreatedBy,@CreatedDate,  @ModifiedBy,@ModifiedDate, @IsDeleted)
    SELECT @Id = SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[StudentBatch_Delete]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON
    UPDATE dbo.StudentBatch
    SET IsDeleted = 1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    WHERE Id = @Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[StudentBatch_ReadAll]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_ReadAll]
AS
BEGIN
    SELECT 
        SB.Id,
        SB.BatchId,
        B.Title AS BatchTitle,
        SB.StudentId,
        S.FullName AS StudentName,
        SB.CreatedBy,
        SB.CreatedDate,
        SB.ModifiedBy,
        SB.ModifiedDate,
        SB.IsDeleted
    FROM dbo.StudentBatch SB
    INNER JOIN dbo.Batch B ON SB.BatchId = B.Id
    INNER JOIN dbo.Student S ON SB.StudentId = S.Id
    WHERE SB.IsDeleted = 0
END

GO
/****** Object:  StoredProcedure [dbo].[StudentBatch_ReadById]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_ReadById]
    @Id INT
AS
BEGIN
    SELECT 
        SB.Id,
        SB.BatchId,
        B.Title AS BatchTitle,
        SB.StudentId,
        S.FullName AS StudentName,
        SB.CreatedBy,
        SB.CreatedDate,
        SB.ModifiedBy,
        SB.ModifiedDate,
        SB.IsDeleted
    FROM dbo.StudentBatch SB
    INNER JOIN dbo.Batch B ON SB.BatchId = B.Id
    INNER JOIN dbo.Student S ON SB.StudentId = S.Id
    WHERE SB.Id = @Id AND SB.IsDeleted = 0
END

GO
/****** Object:  StoredProcedure [dbo].[StudentBatch_Update]    Script Date: 20-02-2026 20:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_Update]
    @Id INT,
    @BatchId INT,
    @StudentId INT,
    @CreatedBy VARCHAR(50),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(50),
    @ModifiedDate DATETIME,
    @IsDeleted BIT
AS
BEGIN
    SET NOCOUNT ON
    UPDATE dbo.StudentBatch
    SET 
        BatchId = @BatchId,
        StudentId = @StudentId,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id
    RETURN @@ROWCOUNT
END

GO
