USE [SmartContactManager]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 24-02-2026 07:23:29 ******/
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
	[ActivityText] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppException]    Script Date: 24-02-2026 07:23:29 ******/
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
	[Remarks] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExceptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24-02-2026 07:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 24-02-2026 07:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[City] [varchar](50) NULL,
	[CategoryId] [int] NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserName] [varchar](max) NULL,
	[PassWord] [varchar](max) NULL,
	[Role] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsLogged] [bit] NULL,
	[NoOfAttempts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:15:15.470' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (2, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:15:15.507' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (3, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:15:30.760' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (4, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:15:30.770' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (5, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:15:32.483' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (6, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:15:36.620' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (7, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:15:36.623' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (8, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:15:39.253' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (9, N'Admin', N'Contact', N'Create', CAST(N'2026-02-16T11:15:51.103' AS DateTime), 1, N'FullName:Shravya Kulal - Email:kulalshravya72@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (10, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:15:51.133' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (11, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:15:51.137' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (12, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-16T11:16:06.397' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (13, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:16:10.477' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (14, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:16:10.490' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (15, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:16:18.170' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (16, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:16:32.690' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (17, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-16T11:16:46.507' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (18, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:16:49.480' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (19, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-16T11:16:51.103' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (20, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:16:52.930' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (21, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-16T11:16:55.420' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (22, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:16:58.553' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (23, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:17:02.607' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (24, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:17:02.607' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (25, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T11:31:54.207' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (26, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T11:31:54.223' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (27, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T21:37:23.310' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (28, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T21:37:23.340' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (29, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T21:39:53.240' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (30, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T21:39:53.250' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (31, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T21:40:25.767' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (32, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T21:40:25.767' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (33, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T21:40:27.390' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (34, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T21:40:27.393' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (35, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T21:40:37.500' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (36, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-16T21:40:45.260' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (37, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-16T21:40:45.280' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (38, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T06:59:14.100' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (39, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T06:59:14.123' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (40, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T07:11:38.570' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (41, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T07:11:38.583' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (42, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T07:24:28.430' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (43, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T07:24:28.447' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (44, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:44:20.237' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (45, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:44:20.267' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (46, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:44:44.570' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (47, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:44:44.573' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (48, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:44:49.767' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (49, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:44:53.757' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (50, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:44:53.760' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (51, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:45:00.473' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (52, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:45:00.487' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (53, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:45:05.007' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (54, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:45:05.010' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (55, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:45:11.120' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (56, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:45:11.123' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (57, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T12:45:27.617' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (58, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T12:45:27.617' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (59, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:31:42.110' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (60, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:31:42.130' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (61, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:31:52.227' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (62, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:31:52.230' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (63, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:31:54.990' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (64, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:31:56.463' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (65, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:31:56.467' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (66, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:31:59.040' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (67, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:32:00.863' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (68, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:32:00.863' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (69, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:32:07.547' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (70, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:32:07.547' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (71, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:44:01.717' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (72, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:44:01.727' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (73, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T14:49:51.627' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (74, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:49:51.633' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (75, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T14:49:53.897' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (76, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-17T16:49:40.153' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (77, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-17T16:49:40.160' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (78, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T05:49:51.963' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (79, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T05:49:51.993' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (80, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T05:50:02.663' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (81, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T05:50:02.667' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (82, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T05:50:04.560' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (83, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T05:50:04.563' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (84, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T05:50:34.960' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (85, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T05:50:34.973' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (86, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T05:50:45.997' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (87, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T05:50:46.000' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (88, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T07:23:12.747' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (89, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T07:23:12.780' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (90, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T07:24:41.227' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (91, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T07:24:41.257' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (92, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T07:24:44.893' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (93, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T07:24:44.897' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (94, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T07:24:52.867' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (95, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T07:24:52.867' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (96, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T07:25:09.217' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (97, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T07:25:09.217' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (98, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T09:35:13.960' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (99, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T09:35:13.993' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (100, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T10:27:13.460' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (101, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T10:27:13.470' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (102, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-18T21:57:15.420' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (103, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-18T21:57:15.443' AS DateTime), 1, N'All Records')
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Family', 1, N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), 0)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Friends', 1, N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), 0)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Work', 1, N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), 0)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Vendors', 1, N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), 0)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Clients', 1, N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), N'Admin', CAST(N'2026-02-15T16:22:42.013' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (1, N'Rahul Shetty', N'9876543210', N'Mumbai', 1, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (2, N'Anita Sharma', N'9876543211', N'Delhi', 2, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (3, N'Ravi Kumar', N'9876543212', N'Bangalore', 3, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (4, N'Sneha Patil', N'9876543213', N'Pune', 1, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (5, N'Amit Verma', N'9876543214', N'Chennai', 4, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (6, N'Shravya Kulal', N'8618523471', N'Manipal, Karnataka, India', 2, N'Admin', CAST(N'2026-02-16T11:15:51.087' AS DateTime), N'Admin', CAST(N'2026-02-16T11:15:51.087' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
