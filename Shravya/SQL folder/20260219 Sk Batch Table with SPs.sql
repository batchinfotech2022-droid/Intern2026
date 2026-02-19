USE [BiSchoolDB]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 19-02-2026 12:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[Timing] [varchar](13) NOT NULL,
	[Subject] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Batch_Create]    Script Date: 19-02-2026 12:54:28 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_Delete]    Script Date: 19-02-2026 12:54:28 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_ReadAll]    Script Date: 19-02-2026 12:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Batch_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      Title, Timing, [Subject], 
        CreatedBy, CreatedDate, ModifiedBy,  ModifiedDate,IsDeleted

     FROM 
     Batch
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Batch_ReadByID]    Script Date: 19-02-2026 12:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Batch_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Title, Timing, [Subject], 
        CreatedBy, CreatedDate, ModifiedBy,  ModifiedDate,IsDeleted
    FROM Batch
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Batch_Update]    Script Date: 19-02-2026 12:54:28 ******/
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