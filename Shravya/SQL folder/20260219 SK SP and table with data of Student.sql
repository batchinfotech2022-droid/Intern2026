USE [BiSchoolDB]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 19-02-2026 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [varchar](max) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Sihi Verma', N'sihi@gmail.com', N'123', N'Mumbai', N'9000000002', 0, N'Admin', CAST(N'2026-02-19T10:25:30.447' AS DateTime), N'Admin', CAST(N'2026-02-19T10:25:30.447' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
/****** Object:  StoredProcedure [dbo].[Student_Create]    Script Date: 19-02-2026 12:16:30 ******/
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
    @CreatedDate ,
    @ModifiedBy, 
    @ModifiedDate,
    @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Delete]    Script Date: 19-02-2026 12:16:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_ReadAll]    Script Date: 19-02-2026 12:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Student_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
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
/****** Object:  StoredProcedure [dbo].[Student_ReadByID]    Script Date: 19-02-2026 12:16:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_Update]    Script Date: 19-02-2026 12:16:30 ******/
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
