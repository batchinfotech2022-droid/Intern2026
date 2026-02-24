USE [SmartContactManagerr]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 24-02-2026 06:02:40 PM ******/
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
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (104, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T10:52:52.213' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (105, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T10:52:52.230' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (106, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T10:53:42.247' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (107, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T10:53:42.267' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (108, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T10:53:50.230' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (109, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T11:01:24.843' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (110, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:01:24.860' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (111, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:01:27.120' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (112, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T11:01:30.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (113, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:01:30.747' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (114, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:01:33.443' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (115, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T11:30:26.467' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (116, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:30:26.473' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (117, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:33:43.467' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (118, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T11:36:56.587' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (119, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:36:56.600' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (120, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T11:36:59.587' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (121, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:36:59.597' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (122, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T11:37:29.583' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (123, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:37:29.600' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (124, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T11:37:37.377' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (125, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T11:37:37.383' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (126, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:13:10.497' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (127, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:15:24.633' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (128, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:15:28.350' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (129, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:15:31.467' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (130, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:15:31.483' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (131, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:15:44.757' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (132, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:15:44.757' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (133, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:15:51.027' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (134, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:15:51.037' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (135, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:16:01.817' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (136, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:16:01.830' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (137, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:16:06.240' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (138, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:16:06.240' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (139, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:16:11.537' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (140, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:16:11.543' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (141, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:16:16.573' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (142, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:16:16.580' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (143, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:16:21.930' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (144, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:54:32.770' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (145, N'ss10@gmail.com', N'Contact', N'Create', CAST(N'2026-02-24T14:55:32.037' AS DateTime), 1, N'FullName:Malaika Gowda UserName:ss10@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (146, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T14:55:32.087' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (147, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T14:55:32.087' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (148, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T15:35:02.813' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (149, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T15:36:07.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (150, N'kk@gmail.com', N'Contact', N'Create', CAST(N'2026-02-24T15:37:11.350' AS DateTime), 1, N'FullName:Kipi Keerthi UserName:kk@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (151, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T15:40:23.143' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (152, N'kk@gmail.com', N'Contact', N'Create', CAST(N'2026-02-24T15:40:53.553' AS DateTime), 1, N'FullName:Kipi Keerthi UserName:kk@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (153, N'kk@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T16:57:25.413' AS DateTime), 1, N'Id:8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (154, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T16:59:32.240' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (155, N'kk@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T17:02:00.327' AS DateTime), 1, N'Id:8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (156, N'kk@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T17:05:57.523' AS DateTime), 1, N'Id:8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (157, N'kk@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T17:14:46.123' AS DateTime), 1, N'Id:8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (158, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:14:50.707' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (159, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:14:50.713' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (160, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:15:09.763' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (161, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:17:08.490' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (162, N'payal@gmail.com', N'Contact', N'Create', CAST(N'2026-02-24T17:18:10.313' AS DateTime), 1, N'FullName:Payal Singh UserName:payal@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (163, N'payal@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T17:18:22.787' AS DateTime), 1, N'Id:10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (164, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:18:22.830' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (165, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:18:22.830' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (166, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:23:04.727' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (167, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:23:04.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (168, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:23:50.597' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (169, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:23:50.637' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (170, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:24:09.250' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (171, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:24:09.277' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (172, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:24:10.897' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (173, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:24:10.930' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (174, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:24:16.993' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (175, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:24:25.693' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (176, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:24:25.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (177, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:24:29.033' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (178, N'stuthi@gmail.com', N'Contact', N'Create', CAST(N'2026-02-24T17:25:38.113' AS DateTime), 1, N'FullName:Stuthi Shetty UserName:stuthi@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (179, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:25:38.133' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (180, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:25:38.143' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (181, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T17:25:42.910' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (182, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:25:42.943' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (183, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:28:31.010' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (184, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:28:31.047' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (185, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T17:28:35.380' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (186, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:28:35.410' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (187, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:28:38.983' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (188, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:28:39.027' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (189, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T17:32:04.610' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (190, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:32:04.623' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (191, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:41:57.010' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (192, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:41:57.027' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (193, N'stuthi@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T17:42:22.130' AS DateTime), 1, N'Id:11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (194, N'stuthi@gmail.com', N'Contact', N'Update', CAST(N'2026-02-24T17:42:31.467' AS DateTime), 1, N'Id:11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (195, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:42:31.493' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (196, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:42:31.497' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (197, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:42:36.680' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (198, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:42:36.717' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (199, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T17:42:40.913' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (200, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:42:40.913' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (201, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:42:48.440' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (202, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:42:50.937' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (203, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:42:52.070' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (204, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:43:37.770' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (205, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:43:37.813' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (206, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:43:40.847' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (207, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:43:40.863' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (208, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T17:43:43.423' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (209, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:43:43.447' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (210, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:43:48.170' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (211, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:43:49.213' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (212, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:45:41.443' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (213, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:41.490' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (214, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-24T17:45:44.843' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (215, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:44.880' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (216, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-24T17:45:46.383' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (217, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:46.393' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (218, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:51.183' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (219, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:53.137' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (220, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:54.377' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (221, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:55.053' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (222, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:55.527' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (223, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:56.050' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (224, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-24T17:45:56.537' AS DateTime), 1, N'All Records')
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
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (7, N'Malaika Gowda', N'5678932415', N'Belman', 4, N'ss10@gmail.com', CAST(N'2026-02-24T14:55:32.020' AS DateTime), N'ss10@gmail.com', CAST(N'2026-02-24T14:55:32.020' AS DateTime), 0, N'ss10@gmail.com', N'12345', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (8, N'Kipi Keerthi', N'8907634560', N'Bangalore', 3, N'kk@gmail.com', CAST(N'2026-02-24T15:37:11.313' AS DateTime), N'kk@gmail.com', CAST(N'2026-02-24T17:14:46.083' AS DateTime), 0, N'kk@gmail.com', N'OFpIG1EGMVIYpoaDIHzJcg==:1GXkYdVrBRnSmR3XsmmuLFMnysM=', N'User', 1, 0, 3)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (9, N'Kipi Keerthi', N'8907634560', N'Bangalore', 3, N'kk@gmail.com', CAST(N'2026-02-24T15:40:53.507' AS DateTime), N'kk@gmail.com', CAST(N'2026-02-24T15:40:53.507' AS DateTime), 0, N'kk@gmail.com', N'12345', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (10, N'Payal Singh', N'9805737383', N'Nitte', 2, N'payal@gmail.com', CAST(N'2026-02-24T17:18:10.307' AS DateTime), N'payal@gmail.com', CAST(N'2026-02-24T17:18:22.747' AS DateTime), 0, N'payal@gmail.com', N'x4Gq6LGCo9Zxaszzw3dLbg==:P33lf6r9ph/9I2VMwd1GmzcPdnw=', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (11, N'Stuthi Shetty', N'9087543246', N'Denmark', 4, N'stuthi@gmail.com', CAST(N'2026-02-24T17:25:38.100' AS DateTime), N'stuthi@gmail.com', CAST(N'2026-02-24T17:42:31.460' AS DateTime), 0, N'stuthi@gmail.com', N'myGRE/Me4u3zsBJbnUSWXw==:IUKGNbKcrxuxV0LWVJsVmF/nmC0=', N'User', 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 24-02-2026 06:02:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Category_Create]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Category_Create]
    @CategoryName  VARCHAR(MAX),
    @IsActive      BIT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @ID            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Category]
    (
        CategoryName,
        IsActive,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @CategoryName,
        @IsActive,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @ID = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_Delete]
    @ID INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Category
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE ID = @ID
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ReadAll]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        CategoryName,
        IsActive,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Category
    WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ReadByID]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_ReadByID]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        CategoryName,
        IsActive,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Category
    WHERE ID = @ID
      AND IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Category_Update]
    @CategoryName  VARCHAR(MAX),
    @IsActive      BIT,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @ID            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Category
    SET 
        CategoryName = @CategoryName,
        IsActive = @IsActive,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE ID = @ID;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Create]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Create]
    @FullName VARCHAR(100),
    @UserName VARCHAR(100),
    @Phone VARCHAR(20),
    @City VARCHAR(50),
    @CategoryId INT,
    @PassWord VARCHAR(100),
    @Role VARCHAR(50),
    @IsActive BIT,
    @IsLogged BIT,
    @NoOfAttempts INT,
    @CreatedBy VARCHAR(100),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @ID INT OUTPUT
AS
BEGIN
    INSERT INTO Contacts
    (
        FullName, UserName, Phone, City, CategoryId,
        [PassWord], [Role], IsActive, IsLogged, NoOfAttempts,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @FullName, @UserName, @Phone, @City, @CategoryId,
        @Password, @Role, @IsActive, @IsLogged, @NoOfAttempts,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    )

    SELECT @ID = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Delete]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME
AS
BEGIN
    UPDATE Contacts
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id

    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_ReadAll]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_ReadAll]
AS
BEGIN
    SELECT
        Id,
        FullName,
        UserName,
        Phone,
        City,
        CategoryId,
        [PassWord],
        [Role],
        IsActive,
        IsLogged,
        NoOfAttempts,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Contacts
    WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_ReadByID]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_ReadByID]
    @Id INT
AS
BEGIN
    SELECT
        Id,
        FullName,
        UserName,
        Phone,
        City,
        CategoryId,
        [PassWord],
        [Role],
        IsActive,
        IsLogged,
        NoOfAttempts,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Contacts
    WHERE Id = @Id
      AND IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Contact_Update]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Update]
    @Id INT,
    @FullName VARCHAR(100),
    @UserName VARCHAR(100),
    @Phone VARCHAR(20),
    @City VARCHAR(50),
    @CategoryId INT,
    @PassWord VARCHAR(100),
    @Role VARCHAR(50),
    @IsActive BIT,
    @IsLogged BIT,
    @NoOfAttempts INT,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME
AS
BEGIN
    UPDATE Contacts
    SET
        FullName = @FullName,
        UserName = @UserName,
        Phone = @Phone,
        City = @City,
        CategoryId = @CategoryId,
        [PassWord] = @PassWord,
        [Role] = @Role,
        IsActive = @IsActive,
        IsLogged = @IsLogged,
        NoOfAttempts = @NoOfAttempts,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id

    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Contacts_Login]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Contacts_Login]
    @UserName VARCHAR(100),
    @Password VARCHAR(100)
AS
BEGIN
    SELECT 
        c.Id,
        c.FullName,
        c.UserName,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.[PassWord],
        c.[Role],
        c.IsActive,
        c.IsLogged,
        c.NoOfAttempts,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted
    FROM Contacts c
    INNER JOIN Category cat 
        ON c.CategoryId = cat.Id
    WHERE c.UserName = @UserName
      AND c.Password = @Password
      AND c.IsActive = 1
      AND c.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Contacts_RetrieveByUserName]    Script Date: 24-02-2026 06:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Object:  StoredProcedure [dbo].[Contacts_RetrieveByUserName]    Script Date: 24-02-2026 07:25:54 ******/
CREATE PROCEDURE [dbo].[Contacts_RetrieveByUserName]
    @UserName VARCHAR(100)
AS
BEGIN
    SELECT 
        c.Id,
        c.FullName,
        c.UserName,
        c.Phone,
        c.City,
        c.CategoryId,
        cat.CategoryName,
        c.[PassWord],
        c.[Role],
        c.IsActive,
        c.IsLogged,
        c.NoOfAttempts,
        c.CreatedDate,
        c.CreatedBy,
        c.ModifiedDate,
        c.ModifiedBy,
        c.IsDeleted
    FROM Contacts c
    INNER JOIN Category cat 
        ON c.CategoryId = cat.Id
    WHERE c.UserName = @UserName
      AND c.IsDeleted = 0
END
GO
