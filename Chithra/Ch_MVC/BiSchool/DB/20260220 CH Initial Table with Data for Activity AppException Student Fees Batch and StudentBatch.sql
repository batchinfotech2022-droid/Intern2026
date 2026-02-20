USE [BiSchoolDB]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 20-02-2026 21:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[ActivityOn] [varchar](50) NULL,
	[ActivityItem] [varchar](50) NULL,
	[ActivityDate] [datetime] NULL,
	[IsSuccess] [bit] NULL,
	[ActivityText] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppException]    Script Date: 20-02-2026 21:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppException](
	[ExceptionID] [int] IDENTITY(1,1) NOT NULL,
	[ExceptionSource] [varchar](50) NULL,
	[ExceptionDesc] [varchar](200) NULL,
	[ExceptionDate] [datetime] NULL,
	[IsSolved] [bit] NULL,
	[Remarks] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  Table [dbo].[Fees]    Script Date: 20-02-2026 21:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[Date] [date] NOT NULL,
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
/****** Object:  Table [dbo].[Student]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  Table [dbo].[StudentBatch]    Script Date: 20-02-2026 21:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentBatch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_StudentBatch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:02:21.493' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (2, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:05:23.377' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (3, N'System', N'Student', N'Create', CAST(N'2026-02-20T15:05:54.003' AS DateTime), 1, N'FullName:chithra - Email:harishchithra2004@gmail.com - Password:1234 - Address:Karkala - Phone:+917022789065 - IsAdmin:True - CreatedBy:System - CreatedDate:20-02-2026 15:05:53 - ModifiedBy:System - ModifiedDate:20-02-2026 15:05:53 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (4, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:26:09.770' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (5, N'System', N'Student', N'Create', CAST(N'2026-02-20T15:26:36.090' AS DateTime), 1, N'FullName:chithra - Email:harishchithra2004@gmail.com - Password:1234 - Address:karkala - Phone:+917022789065 - IsAdmin:True - CreatedBy:System - CreatedDate:20-02-2026 15:26:35 - ModifiedBy:System - ModifiedDate:20-02-2026 15:26:35 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (6, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:51:50.040' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (7, N'System', N'Student', N'Create', CAST(N'2026-02-20T15:52:12.360' AS DateTime), 1, N'FullName:chithra - Email:harishchithra2004@gmail.com - Password:1234 - Address:karkala - Phone:+917022789065 - IsAdmin:True - CreatedBy:System - CreatedDate:20-02-2026 15:52:12 - ModifiedBy:System - ModifiedDate:20-02-2026 15:52:12 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (8, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:52:12.400' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (9, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:55:17.640' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (20, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:32:56.277' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (21, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:33:03.257' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (22, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:33:09.043' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (23, N'System', N'Student', N'Update', CAST(N'2026-02-20T16:33:09.210' AS DateTime), 1, N'FullName:chithra - Email:harishchithra2004@gmail.com - Password:1234 - Address:karkala - Phone:+917022789065 - IsAdmin:False - Createdby: - CreatedDate:20-02-2026 16:33:08 - ModifiedBy:System - ModifiedDate:20-02-2026 16:33:09 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (24, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:33:09.263' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (25, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:37:09.923' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (26, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:37:21.570' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (27, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:40:59.917' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (28, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:45:15.027' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (29, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:45:21.927' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (30, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:47:21.640' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (31, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:47:28.243' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (32, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:50:33.067' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (33, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:50:35.587' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (34, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:51:56.233' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (35, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:54:09.183' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (36, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:54:11.867' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (10, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:25:18.633' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (11, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:25:29.367' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (12, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:25:45.723' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (13, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:25:49.380' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (14, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:26:13.533' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (15, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:26:15.957' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (16, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:26:22.330' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (17, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:28:22.257' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (18, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:28:25.263' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (19, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-20T16:28:32.743' AS DateTime), 1, N'2')
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Sihi Verma', N'sihi@gmail.com', N'123', N'Mumbai', N'9000000002', 0, N'Admin', CAST(N'2026-02-19T10:25:30.447' AS DateTime), N'Admin', CAST(N'2026-02-19T10:25:30.447' AS DateTime), 0)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'chithra', N'harishchithra2004@gmail.com', N'1234', N'karkala', N'+917022789065', 0, N'', CAST(N'2026-02-20T16:33:08.947' AS DateTime), N'System', CAST(N'2026-02-20T16:33:09.060' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_Create]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_Delete]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_ReadAll]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_ReadByID]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Batch_Update]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Fees_Create]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Fees_Delete]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Fees_ReadAll]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Fees_ReadByID]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Fees_Update]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_Create]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_Delete]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_ReadAll]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_ReadByID]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[Student_Update]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[StudentBatch_Create]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[StudentBatch_Delete]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[StudentBatch_ReadAll]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[StudentBatch_ReadById]    Script Date: 20-02-2026 21:10:21 ******/
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
/****** Object:  StoredProcedure [dbo].[StudentBatch_Update]    Script Date: 20-02-2026 21:10:21 ******/
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
