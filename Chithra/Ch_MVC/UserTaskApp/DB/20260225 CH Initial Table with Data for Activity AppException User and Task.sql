USE [UserTaskApp]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 25-02-2026 22:44:10 ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 25-02-2026 22:44:10 ******/
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
/****** Object:  Table [dbo].[TASK]    Script Date: 25-02-2026 22:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[AssignedTo] [varchar](30) NULL,
	[Status] [varchar](50) NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25-02-2026 22:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](max) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Role] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsLogged] [bit] NOT NULL,
	[NoAttempts] [int] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T06:09:56.143' AS DateTime), 0, N'All fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (2, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T06:25:43.543' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (3, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T06:26:24.827' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (4, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T06:26:31.673' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (5, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T06:26:36.883' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (6, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T06:26:42.750' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (7, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T06:26:51.383' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (8, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T06:26:56.350' AS DateTime), 1, N'16')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (9, N'Admin', N'User', N'Delete', CAST(N'2026-02-16T06:26:58.767' AS DateTime), 0, N'16')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (10, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T08:57:17.220' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (11, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T08:57:38.803' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (12, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T08:57:43.890' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (20, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:04:34.147' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (21, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:05:05.170' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (22, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:05:19.523' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (23, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:05:24.557' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (24, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:05:30.283' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (25, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:14:13.497' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (26, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:14:32.350' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (27, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T11:14:53.823' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (28, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:15:08.253' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (29, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:28:04.477' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (30, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:36:14.940' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (31, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:36:26.427' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (32, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:36:31.230' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (33, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:36:44.890' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (34, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:36:54.240' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (35, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:36:58.373' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (36, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:37:52.463' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (37, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T11:38:08.610' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (38, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-16T11:38:32.280' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (39, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-18T12:22:24.123' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (40, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T10:56:49.810' AS DateTime), 0, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (41, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T10:58:14.977' AS DateTime), 0, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (42, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T11:06:07.657' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (44, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:11:35.257' AS DateTime), 0, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (48, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:38:22.273' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (51, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:41:25.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (53, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:46:28.500' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (56, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:17:01.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (59, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:44:13.507' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (63, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:47:56.590' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (68, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:07:09.213' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (70, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:07:10.050' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (71, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:23:17.380' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (72, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:23:54.867' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (75, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:39:12.793' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (79, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:40:46.363' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (81, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:40:47.083' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (82, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:40:47.410' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (88, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:11:16.690' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (90, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:15:59.833' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (96, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:24:08.587' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (99, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:10.733' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (100, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:14.170' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (101, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:15.970' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (102, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:16.733' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (104, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:26:22.563' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (106, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:26:38.970' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (108, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:26:43.943' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (113, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T21:09:06.310' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (114, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T21:09:20.347' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (115, N'Admin', N'User', N'Delete', CAST(N'2026-02-24T21:09:42.910' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (118, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T21:30:40.097' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (121, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T21:33:50.343' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (125, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:00:02.840' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (126, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:00:12.907' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (127, N'System', N'User', N'Delete', CAST(N'2026-02-24T22:00:17.700' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (130, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:00:42.327' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (131, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:00:49.977' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (134, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:03:18.280' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (135, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:03:25.540' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (137, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:04:50.440' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (141, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:07:13.623' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (153, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:32:48.320' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (154, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:34:45.917' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (155, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:35:32.677' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (158, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:39:46.267' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (159, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:39:54.963' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (161, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:45:03.627' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (162, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:45:10.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (165, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:55:21.737' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (166, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:55:22.993' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (169, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:55:52.620' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (171, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:55:53.680' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (173, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:09:53.003' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (174, N'System', N'Task', N'Create', CAST(N'2026-02-24T23:10:18.543' AS DateTime), 1, N'c#')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (175, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:11:58.460' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (176, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:12:41.963' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (179, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:16:31.507' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (180, N'System', N'Task', N'Create', CAST(N'2026-02-24T23:21:27.260' AS DateTime), 1, N'C#')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (181, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:21:27.307' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (182, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:50:11.587' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (183, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:50:14.100' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (184, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-24T23:50:18.510' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (192, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:58:39.360' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (194, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-24T23:58:51.037' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (195, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:59:08.920' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (196, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-24T23:59:12.653' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (197, N'System', N'Task', N'Delete', CAST(N'2026-02-24T23:59:20.917' AS DateTime), 0, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (198, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T00:00:55.863' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (199, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T00:00:57.053' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (200, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T00:01:04.063' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (201, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T00:04:38.903' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (202, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T00:04:39.223' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (203, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T00:04:45.980' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (204, N'System', N'Task', N'Delete', CAST(N'2026-02-25T00:04:47.943' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (205, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T00:04:47.973' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (206, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T00:06:28.410' AS DateTime), 1, N'19')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (215, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T09:16:10.537' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (216, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T09:16:10.647' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (218, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T09:19:49.533' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (221, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T09:20:06.387' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (222, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T09:20:08.030' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (225, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T09:20:24.853' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (249, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:14:45.533' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (250, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:15:21.160' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (251, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:15:54.460' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (253, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:17:19.410' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (254, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:17:34.460' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (257, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:52.973' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (259, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:53.483' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (261, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:53.847' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (263, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:19:19.243' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (264, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:22:32.920' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (265, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:22:57.567' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (267, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:23:17.097' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (269, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:23:44.450' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (272, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T12:27:59.460' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (274, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:28:09.910' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (276, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:29:18.823' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (280, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:29:36.837' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (282, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:30:12.827' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (283, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:30:19.610' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (290, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:31:54.343' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (13, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T10:46:10.757' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (14, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T10:46:35.230' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (15, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T10:46:56.500' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (16, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T10:47:00.700' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (17, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T10:47:04.430' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (18, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-16T10:50:48.293' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (19, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-16T10:50:52.180' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (57, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:40:08.347' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (61, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:47:21.583' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (64, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:52:55.390' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (66, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:05:53.573' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (77, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:40:42.700' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (86, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:10:36.083' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (91, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:16:02.217' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (107, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:41.270' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (116, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T21:23:41.947' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (120, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T21:33:47.253' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (124, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T21:35:53.770' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (142, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:07:54.343' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (143, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:08:46.853' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (144, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:10:26.623' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (145, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:17:30.220' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (168, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:55:50.487' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (172, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:08:36.130' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (188, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:50:36.180' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (189, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-24T23:50:44.763' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (190, N'System', N'Task', N'Update', CAST(N'2026-02-24T23:50:44.800' AS DateTime), 1, N'c#')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (191, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:50:44.870' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (212, N'chithra@gmail.com', N'User', N'Update', CAST(N'2026-02-25T06:35:49.943' AS DateTime), 1, N'chithra@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (255, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:29.257' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (278, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:29:24.887' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (291, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:32:01.113' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (292, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:32:03.690' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (298, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:32:21.943' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (299, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:32:29.550' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (300, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:32:31.473' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (301, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:32:46.123' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (302, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:32:48.847' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (303, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:33:19.343' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (306, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T14:48:12.150' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (308, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T15:52:25.580' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (310, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T15:55:51.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (311, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T15:55:53.287' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (312, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T16:03:48.967' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (316, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T20:57:37.023' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (319, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T20:58:31.690' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (320, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T20:58:33.720' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (330, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T20:59:32.177' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (332, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:01:13.257' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (335, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:06:33.863' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (336, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:06:54.423' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (337, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:07:10.253' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (338, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:09:18.193' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (339, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:11:44.140' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (340, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:12:03.573' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (342, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:13:17.607' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (345, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:16:29.787' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (348, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T21:18:45.840' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (349, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T21:20:42.543' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (352, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T21:21:20.657' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (353, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T21:22:20.060' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (356, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T21:23:35.040' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (357, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T21:23:46.823' AS DateTime), 1, N'9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (358, N'System', N'Task', N'Update', CAST(N'2026-02-25T21:23:46.860' AS DateTime), 1, N'Expense Tracker')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (359, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T21:23:46.893' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (369, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T21:37:26.037' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (371, N'System', N'User', N'Create', CAST(N'2026-02-25T22:00:13.950' AS DateTime), 1, N'guru@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (372, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:00:13.993' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (373, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:00:45.970' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (375, N'System', N'User', N'Update', CAST(N'2026-02-25T22:00:49.833' AS DateTime), 1, N'guru@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (376, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:00:49.843' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (378, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:00:58.173' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (379, N'System', N'User', N'Create', CAST(N'2026-02-25T22:02:04.470' AS DateTime), 1, N'suchi@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (382, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:02:23.353' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (384, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:02:23.420' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (386, N'System', N'User', N'Create', CAST(N'2026-02-25T22:14:53.630' AS DateTime), 1, N'shravya@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (390, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:23:22.110' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (391, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:23:26.457' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (392, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:23:27.983' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (393, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:23:30.600' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (395, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:23:33.873' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (396, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:23:36.263' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (43, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T11:06:33.417' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (46, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:35:29.800' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (52, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:43:14.820' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (58, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:41:54.607' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (60, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:44:40.840' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (65, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:05:51.570' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (67, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:07:05.893' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (69, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:07:09.433' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (73, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:30:35.097' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (74, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:38:45.917' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (76, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:39:14.627' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (78, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:40:45.397' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (87, N'Admin', N'User', N'Create', CAST(N'2026-02-24T16:11:16.160' AS DateTime), 1, N'chithra@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (89, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:13:05.420' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (92, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:16:06.363' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (105, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:25.123' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (109, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:30:43.963' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (117, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T21:23:51.670' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (122, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T21:33:52.933' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (136, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:03:49.683' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (140, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:07:10.540' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (151, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:28:48.350' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (152, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:28:56.847' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (156, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:35:38.117' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (157, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:35:41.800' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (177, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:16:20.407' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (178, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:16:28.607' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (185, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T23:50:18.530' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (186, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:50:31.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (187, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-24T23:50:36.063' AS DateTime), 1, N'18')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (193, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-24T23:58:39.360' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (207, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T00:09:01.073' AS DateTime), 1, N'19')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (211, N'chithra@gmail.com', N'User', N'Update', CAST(N'2026-02-25T06:35:39.667' AS DateTime), 1, N'chithra@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (213, N'chithra@gmail.com', N'User', N'Update', CAST(N'2026-02-25T09:16:00.760' AS DateTime), 1, N'chithra@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (214, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T09:16:10.513' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (219, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T09:19:58.343' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (223, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T09:20:09.493' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (224, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T09:20:23.073' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (252, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:17:17.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (262, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:54.063' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (268, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:23:31.153' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (275, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:29:01.780' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (293, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:32:03.697' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (294, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:32:14.790' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (295, N'Seema@gmail.com', N'Task', N'Update', CAST(N'2026-02-25T12:32:14.820' AS DateTime), 1, N'Hospital Appointment Booking')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (296, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:32:14.840' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (297, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:32:21.850' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (307, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T14:50:04.487' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (317, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T20:58:21.273' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (329, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T20:59:30.267' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (334, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:05:17.753' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (344, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:16:00.123' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (350, N'System', N'User', N'Delete', CAST(N'2026-02-25T21:20:56.710' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (354, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T21:22:56.213' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (355, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T21:23:34.840' AS DateTime), 1, N'9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (374, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:00:49.817' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (380, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:02:04.500' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (394, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:23:32.067' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (397, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:23:38.420' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (45, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:21:59.083' AS DateTime), 0, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (47, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:37:05.727' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (49, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:38:43.373' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (55, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:16:59.203' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (80, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:40:46.807' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (94, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:24:01.880' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (95, N'Admin', N'User', N'Update', CAST(N'2026-02-24T16:24:08.553' AS DateTime), 1, N'chithra@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (97, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:25:58.937' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (98, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:26:07.683' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (103, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:26:17.427' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (110, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:52:01.857' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (111, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:53:27.933' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (112, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:54:43.013' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (129, N'System', N'User', N'Create', CAST(N'2026-02-24T22:00:42.257' AS DateTime), 1, N'chithra@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (132, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:01:03.377' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (139, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:05:00.043' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (146, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:18:43.693' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (147, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:27:19.633' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (148, N'Admin', N'Task', N'RetrieveAll', CAST(N'2026-02-24T22:28:00.903' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (149, N'Admin', N'Task', N'RetrieveById', CAST(N'2026-02-24T22:28:17.793' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (150, N'Admin', N'Task', N'Delete', CAST(N'2026-02-24T22:28:20.137' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (160, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:39:58.297' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (163, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:45:37.740' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (164, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:45:58.497' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (167, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:55:26.390' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (170, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:55:53.287' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (208, N'System', N'User', N'Create', CAST(N'2026-02-25T06:10:06.423' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (209, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T06:16:55.253' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (210, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T06:18:52.017' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (217, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T09:19:49.427' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (220, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T09:20:04.860' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (226, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T09:20:31.110' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (227, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:20:32.943' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (228, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:20:37.040' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (229, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:20:38.727' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (230, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:20:38.777' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (231, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:20:40.293' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (232, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:20:41.527' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (233, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:20:41.563' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (234, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:20:43.253' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (235, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:20:47.380' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (236, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:20:47.423' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (237, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:20:55.883' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (238, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:20:58.177' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (239, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:20:58.217' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (240, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:21:02.303' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (241, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:21:06.390' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (242, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:21:06.423' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (243, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:21:18.613' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (244, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:21:20.160' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (245, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:21:20.217' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (246, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T09:21:21.810' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (247, N'Seema@gmail.com', N'Task', N'Delete', CAST(N'2026-02-25T09:21:23.153' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (248, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T09:21:23.193' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (258, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:53.180' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (260, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:53.673' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (266, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:23:14.677' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (270, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:26:33.447' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (271, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:26:36.923' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (273, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T12:27:59.497' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (277, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T12:29:20.810' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (281, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T12:29:38.673' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (284, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:30:49.873' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (285, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:31:38.160' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (286, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:31:39.877' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (287, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:31:39.977' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (288, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T12:31:51.473' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (289, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T12:31:54.333' AS DateTime), 1, N'19')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (304, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:34:09.017' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (313, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T16:04:30.240' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (315, N'Seema@gmail.com', N'User', N'Update', CAST(N'2026-02-25T20:57:36.957' AS DateTime), 1, N'Seema@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (318, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T20:58:29.110' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (321, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T20:58:48.930' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (322, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T20:58:54.040' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (323, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T20:58:57.673' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (324, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T20:59:02.107' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (325, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T20:59:04.063' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (326, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T20:59:06.357' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (327, N'Seema@gmail.com', N'Task', N'RetrieveById', CAST(N'2026-02-25T20:59:26.230' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (328, N'Seema@gmail.com', N'Task', N'RetrieveAll', CAST(N'2026-02-25T20:59:28.597' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (331, N'Seema@gmail.com', N'User', N'RetrieveAll', CAST(N'2026-02-25T20:59:35.187' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (333, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:03:33.253' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (341, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:12:26.200' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (343, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:13:58.583' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (346, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:18:04.113' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (347, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T21:18:32.727' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (351, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T21:20:56.833' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (360, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T21:23:58.243' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (361, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T21:24:07.457' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (362, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T21:24:09.637' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (363, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T21:27:16.387' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (364, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T21:28:24.070' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (365, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T21:31:27.653' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (366, N'System', N'Task', N'RetrieveById', CAST(N'2026-02-25T21:31:31.537' AS DateTime), 1, N'10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (367, N'System', N'Task', N'Delete', CAST(N'2026-02-25T21:31:36.417' AS DateTime), 1, N'10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (368, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T21:31:36.440' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (370, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T21:57:57.137' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (377, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:00:55.540' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (387, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:14:53.680' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (388, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:23:17.130' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (389, N'System', N'Task', N'RetrieveAll', CAST(N'2026-02-25T22:23:19.777' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (50, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T12:40:41.120' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (62, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:47:21.623' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (128, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:00:17.773' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (133, N'System', N'User', N'RetrieveById', CAST(N'2026-02-24T22:01:05.613' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (138, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-24T22:04:57.657' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (305, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T14:46:03.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (314, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T20:38:44.713' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (383, N'System', N'User', N'Update', CAST(N'2026-02-25T22:02:23.397' AS DateTime), 1, N'suchi@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (54, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T14:05:36.137' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (83, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:55:35.413' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (84, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T15:58:54.603' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (85, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T16:08:37.123' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (93, N'Admin', N'User', N'RetrieveById', CAST(N'2026-02-24T16:16:22.080' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (119, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T21:33:34.243' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (123, N'Admin', N'User', N'RetrieveAll', CAST(N'2026-02-24T21:35:48.177' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (256, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T12:18:51.680' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (279, N'Seema@gmail.com', N'User', N'RetrieveById', CAST(N'2026-02-25T12:29:27.470' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (309, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T15:54:48.333' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (385, N'System', N'User', N'RetrieveAll', CAST(N'2026-02-25T22:03:59.127' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (381, N'System', N'User', N'RetrieveById', CAST(N'2026-02-25T22:02:14.473' AS DateTime), 1, N'5')
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[TASK] ON 
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Responsive Portfolio Website Development', N'Create a single-page, mobile-responsive portfolio website to showcase skills, projects, and resume', N'Sulaksha', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:20:38.700' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Interactive Task Manager Application', N'Develop a dynamic, interactive "To-Do List" application that allows users to add, mark as complete, edit, and delete tasks', N'Chithra', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:20:41.507' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Real-Time Data Dashboard Integration', N'Build a web application that fetches data from a public API (such as OpenWeatherMap or a free crypto API) and displays it in an attractive UI', N'Sulaksha', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:20:47.337' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Online Shopping Cart', N'Develop shopping cart with add/remove items and checkout option', N'Shravya', N'New', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:20:58.157' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Student Result Portal', N'Display student marks and grades with search functionality', N'Guru', N'In Progress', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:21:06.380' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Attendance Tracking App', N'Mark daily attendance and generate monthly reports', N'Disha', N'Testing', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:21:20.143' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Library Management System', N'Manage books, members, and issue/return records', N'Prasad', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T09:21:23.127' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Hospital Appointment Booking', N'Online doctor appointment scheduling system', N'Seema@gmail.com', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T12:32:14.790' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Expense Tracker', N'Track daily expenses and generate monthly reports', N'Seema@gmail.com', N'Testing', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'System', CAST(N'2026-02-25T21:23:46.827' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Online Quiz Portal', N'Create quizzes and evaluate student performance', N'Dravya', N'New', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'System', CAST(N'2026-02-25T21:31:36.297' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, N'Job Portal Website', N'Post jobs and allow candidates to apply online', N'Kirthi', N'In Progress', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, N'Food Ordering App', N'Order food online with cart and payment integration', N'Anit', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, N'Chat Application', N'Real-time messaging between users', N'Deepak', N'Testing', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, N'Inventory Control System', N'Manage stock and supplier details', N'Sunil', N'In Progress', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, N'Travel Booking Website', N'Book flights and hotels online', N'Sam', N'Testing', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, N'Feedback Collection System', N'Collect customer feedback and ratings', N'Pavi', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, N'Event Management Portal', N'Organize events and manage registrations', N'Latha', N'New', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, N'c#', N'create BiSchool Project', N'chithra@gmail.com', N'In Progress', N'System', CAST(N'2026-02-24T00:00:00.000' AS DateTime), N'System', CAST(N'2026-02-25T00:04:47.833' AS DateTime), 1)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, N'C#', N'Create BiSchool Project', N'chithra@gmail.com', N'New', N'System', CAST(N'2026-02-24T00:00:00.000' AS DateTime), N'System', CAST(N'2026-02-24T00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[TASK] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Password], [Phone], [Address], [Role], [IsActive], [IsLogged], [NoAttempts], [IsLocked], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'chithra@gmail.com', N'Chithra', N'Acharya', N'1234', N'+919000000002', N'Karkala', N'User', 0, 0, 0, 0, N'Admin', CAST(N'2026-02-24T16:11:15.807' AS DateTime), N'System', CAST(N'2026-02-24T22:00:17.450' AS DateTime), 1)
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Password], [Phone], [Address], [Role], [IsActive], [IsLogged], [NoAttempts], [IsLocked], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'chithra@gmail.com', N'Chithra', N'Acharya', N'1234', N'+919000000002', N'Karkala', N'User', 1, 1, 1, 0, N'System', CAST(N'2026-02-24T22:00:42.130' AS DateTime), N'System', CAST(N'2026-02-25T21:20:56.580' AS DateTime), 1)
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Password], [Phone], [Address], [Role], [IsActive], [IsLogged], [NoAttempts], [IsLocked], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Seema@gmail.com', N'Seema', N'Shetty', N'1234', N'+919000000023', N'Nitte', N'', 1, 1, 0, 0, N'System', CAST(N'2026-02-25T06:10:05.583' AS DateTime), N'Seema@gmail.com', CAST(N'2026-02-25T20:57:36.990' AS DateTime), 0)
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Password], [Phone], [Address], [Role], [IsActive], [IsLogged], [NoAttempts], [IsLocked], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'guru@gmail.com', N'Guru', N'Prasad', N'1234', N'+919128546575', N'Nakre', N'User', 0, 0, 0, 0, N'System', CAST(N'2026-02-25T22:00:13.857' AS DateTime), N'System', CAST(N'2026-02-25T22:00:13.857' AS DateTime), 0)
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Password], [Phone], [Address], [Role], [IsActive], [IsLogged], [NoAttempts], [IsLocked], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'suchi@gmail.com', N'Suchi', N'Suvarna', N'1234', N'+912456387945', N'Mangalore', N'User', 0, 0, 0, 0, N'System', CAST(N'2026-02-25T22:02:04.367' AS DateTime), N'System', CAST(N'2026-02-25T22:02:04.367' AS DateTime), 0)
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Password], [Phone], [Address], [Role], [IsActive], [IsLogged], [NoAttempts], [IsLocked], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'shravya@gmail.com', N'Shravya', N'Kulal', N'1234', N'+991245789632', N'Parkala', N'User', 1, 0, 0, 0, N'System', CAST(N'2026-02-25T22:14:53.430' AS DateTime), N'System', CAST(N'2026-02-25T22:14:53.430' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[TASK_Create]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[TASK_Delete]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[TASK_ReadAll]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[TASK_ReadByID]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[TASK_Update]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Create]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Delete]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[User_ReadAll]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[User_ReadByID]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[User_ReadByUserName]    Script Date: 25-02-2026 22:44:11 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 25-02-2026 22:44:11 ******/
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
