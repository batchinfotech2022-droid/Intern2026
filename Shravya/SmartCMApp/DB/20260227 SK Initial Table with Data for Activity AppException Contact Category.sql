CREATE SmartContactManagerr
GO


USE [SmartContactManagerr]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 27-02-2026 09:30:24 AM ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 27-02-2026 09:30:25 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 27-02-2026 09:30:25 AM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 27-02-2026 09:30:25 AM ******/
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
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (225, N'payal@gmail.com', N'Contact', N'Update', CAST(N'2026-02-25T09:07:40.180' AS DateTime), 1, N'Id:10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (226, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:07:45.143' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (227, N'hija@gmail.com', N'Contact', N'Create', CAST(N'2026-02-25T09:08:43.843' AS DateTime), 1, N'FullName:Hija M UserName:hija@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (228, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:08:43.877' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (229, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:08:43.883' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (230, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:10:33.763' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (231, N'liniya@gmail.com', N'Contact', N'Create', CAST(N'2026-02-25T09:11:16.800' AS DateTime), 1, N'FullName:liniya Joseph UserName:liniya@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (232, N'liniya@gmail.com', N'Contact', N'Update', CAST(N'2026-02-25T09:11:38.170' AS DateTime), 1, N'Id:13')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (233, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:11:38.197' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (234, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:11:38.197' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (235, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:11:46.067' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (236, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:11:46.097' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (237, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:11:48.173' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (238, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:11:48.197' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (239, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:12:23.817' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (240, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:12:23.850' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (241, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:12:45.647' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (242, N'Admin', N'Contact', N'Update', CAST(N'2026-02-25T09:12:45.647' AS DateTime), 1, N'Id:6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (243, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:12:45.670' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (244, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:12:45.670' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (245, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:12:48.520' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (246, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:12:48.550' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (247, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:13:04.593' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (248, N'Admin', N'Contact', N'Update', CAST(N'2026-02-25T09:13:04.593' AS DateTime), 1, N'Id:5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (249, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:13:04.617' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (250, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:13:04.620' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (251, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:14:12.337' AS DateTime), 1, N'13')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (252, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:14:14.623' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (253, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:14:14.663' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (254, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:16:35.507' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (255, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:18:22.513' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (256, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:35:00.627' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (257, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:00.630' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (258, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:35:06.740' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (259, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:06.773' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (260, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:35:17.880' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (261, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:17.893' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (262, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:35:28.240' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (263, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:28.283' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (264, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:35:43.420' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (265, N'Admin', N'Contact', N'Update', CAST(N'2026-02-25T09:35:43.430' AS DateTime), 1, N'Id:8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (266, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:35:43.453' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (267, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:43.453' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (268, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:35:50.280' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (269, N'Admin', N'Contact', N'Delete', CAST(N'2026-02-25T09:35:52.270' AS DateTime), 1, N'Id:8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (270, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:35:52.290' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (271, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:52.297' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (272, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:35:56.723' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (273, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:35:56.763' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (274, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:36:06.853' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (275, N'Admin', N'Contact', N'Update', CAST(N'2026-02-25T09:36:06.867' AS DateTime), 1, N'Id:7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (276, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:36:06.907' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (277, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:36:06.907' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (278, N'kk@gmail.com', N'Contact', N'Update', CAST(N'2026-02-25T09:42:06.927' AS DateTime), 1, N'Id:9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (279, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:42:06.957' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (280, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:42:06.973' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (281, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:42:12.407' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (282, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:42:12.447' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (283, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:42:14.207' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (284, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:42:14.240' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (285, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:42:25.657' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (286, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:42:25.690' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (287, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:42:29.600' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (288, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:42:29.637' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (289, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:42:39.777' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (290, N'Admin', N'Contact', N'Update', CAST(N'2026-02-25T09:42:39.790' AS DateTime), 1, N'Id:4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (291, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:42:39.797' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (292, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:42:39.813' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (293, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:43:08.140' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (294, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:43:08.177' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (295, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:43:12.630' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (296, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:43:12.630' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (297, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:43:16.493' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (298, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:43:16.527' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (299, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:44:49.477' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (300, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:44:49.520' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (301, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:44:53.983' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (302, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:44:54.023' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (303, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:44:55.927' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (304, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:44:58.900' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (305, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:44:58.923' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (306, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:45:37.030' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (307, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:45:37.070' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (308, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:48:25.627' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (309, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:48:25.663' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (310, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:48:28.717' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (311, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:48:36.217' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (312, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:48:36.247' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (313, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:48:39.260' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (314, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:48:39.290' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (315, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:49:13.500' AS DateTime), 1, N'10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (316, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:50:52.233' AS DateTime), 1, N'10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (317, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:50:58.853' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (318, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:50:58.890' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (319, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:51:54.030' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (320, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:51:54.077' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (321, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:52:16.123' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (322, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:52:16.153' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (323, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:53:21.517' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (324, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:53:21.557' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (325, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:53:53.803' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (326, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:53:53.817' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (327, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:54:45.283' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (328, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:54:45.313' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (329, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:55:09.140' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (330, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:55:14.300' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (331, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:55:14.337' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (332, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:55:38.700' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (333, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:55:38.730' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (334, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:57:42.717' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (335, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:57:42.733' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (336, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:58:18.123' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (337, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:58:18.133' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (338, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T09:58:30.627' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (339, N'Admin', N'Contact', N'Delete', CAST(N'2026-02-25T09:58:33.377' AS DateTime), 1, N'Id:3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (340, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:58:33.397' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (341, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:58:33.397' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (342, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:58:47.337' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (343, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:58:47.350' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (344, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:58:49.260' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (345, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:58:49.267' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (346, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:58:53.960' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (347, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:58:53.963' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (348, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:58:55.257' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (349, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:59:03.740' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (350, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:59:03.743' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (351, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:59:08.557' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (352, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T09:59:12.023' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (353, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:59:12.030' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (354, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T09:59:14.803' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (355, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:01:57.037' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (356, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-25T10:02:01.310' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (357, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:02:04.563' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (358, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-25T10:02:07.533' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (359, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:02:18.370' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (360, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:04:49.857' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (361, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-25T10:04:52.133' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (362, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:05:04.053' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (363, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:07:51.253' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (364, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-25T10:07:58.950' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (365, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:08:03.277' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (366, N'Admin', N'Category', N'RetrieveById', CAST(N'2026-02-25T10:08:05.060' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (367, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:08:06.573' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (368, N'Admin', N'Category', N'Create', CAST(N'2026-02-25T10:08:21.357' AS DateTime), 1, N'CategoryName:College - IsActive:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (369, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:08:21.407' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (370, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T10:08:28.643' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (371, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:08:28.647' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (372, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:08:30.963' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (373, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T10:08:36.663' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (374, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:08:36.670' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (375, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T10:33:31.957' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (376, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:18:32.643' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (377, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:19:30.493' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (378, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:21:57.310' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (379, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:21:57.317' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (380, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:30:48.090' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (381, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:30:48.100' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (382, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:30:49.183' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (383, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:30:49.190' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (384, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:01.903' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (385, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:01.907' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (386, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:03.790' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (387, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:03.790' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (388, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:19.230' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (389, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:19.267' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (390, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:19.640' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (391, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:19.640' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (392, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:20.130' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (393, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:20.133' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (394, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:20.430' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (395, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:20.433' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (396, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:20.757' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (397, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:20.763' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (398, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:34:21.000' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (399, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:34:21.007' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (400, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:38:11.047' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (401, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:38:11.053' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (402, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:41:16.157' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (403, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:41:16.170' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (404, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:43:50.650' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (405, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:43:50.660' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (406, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:49:25.100' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (407, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:49:25.103' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (408, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:52:22.673' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (409, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:52:22.683' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (410, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:52:45.163' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (411, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:52:45.167' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (412, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:52:46.390' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (413, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:52:46.403' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (414, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T11:52:54.887' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (415, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:52:54.893' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (416, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T11:53:20.547' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (417, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:09:21.853' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (418, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:09:21.863' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (419, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:11:34.380' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (420, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:11:34.390' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (421, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:14:26.253' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (422, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:14:26.263' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (423, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:14:59.727' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (424, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:14:59.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (425, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:15:24.200' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (426, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:15:24.210' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (427, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:15:36.243' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (428, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:15:36.247' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (429, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:16:07.367' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (430, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:16:07.377' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (431, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:17:11.747' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (432, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:23:52.057' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (433, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:23:52.087' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (434, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T12:23:58.413' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (435, N'Admin', N'Contact', N'Delete', CAST(N'2026-02-25T12:24:04.917' AS DateTime), 1, N'Id:1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (436, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:24:04.943' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (437, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:24:04.953' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (438, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-25T12:24:12.653' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (439, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:24:32.543' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (440, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:24:32.553' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (441, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:39:11.820' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (442, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:39:11.840' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (443, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:40:27.203' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (444, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:40:27.220' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (445, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:40:46.107' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (446, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:40:46.123' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (447, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:41:34.967' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (448, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:41:34.980' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (449, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:41:39.043' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (450, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:41:39.043' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (451, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T12:45:14.220' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (452, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T12:45:14.233' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (453, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:20:44.307' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (454, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:20:44.317' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (455, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:23:02.600' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (456, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:23:02.610' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (457, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:23:26.433' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (458, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:23:26.473' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (459, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:23:30.280' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (460, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:23:30.317' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (461, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:23:41.820' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (462, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:23:41.820' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (463, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:23:45.537' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (464, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:23:45.537' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (465, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:23:54.013' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (466, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:23:54.013' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (467, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:27:31.103' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (468, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:27:31.117' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (469, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:27:33.820' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (470, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:27:33.847' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (471, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:35.560' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (472, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:35.577' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (473, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:38.483' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (474, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:38.517' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (475, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:39.217' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (476, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:39.217' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (477, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:39.447' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (478, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:39.477' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (479, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:39.993' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (480, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:39.997' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (481, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:40.297' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (482, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:40.330' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (483, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:40.540' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (484, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:40.577' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (485, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:40.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (486, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:40.743' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (487, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-25T15:30:54.450' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (488, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:54.477' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (489, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:30:58.460' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (490, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:31:36.550' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (491, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:32:38.000' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (492, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:32:43.883' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (493, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:32:44.303' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (494, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:32:44.523' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (495, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:33:25.333' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (496, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:33:28.857' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (497, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:33:29.780' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (498, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:33:29.973' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (499, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:33:30.197' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (500, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-25T15:33:30.410' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (501, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:03:00.587' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (502, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:03:00.600' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (503, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:03:26.580' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (504, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:03:26.623' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (505, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:03:28.633' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (506, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:03:28.633' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (507, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:03:31.257' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (508, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:03:31.283' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (509, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:06:28.057' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (510, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:06:28.087' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (511, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:07:37.653' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (512, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:07:37.683' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (513, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:08:04.943' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (514, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:08:04.950' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (515, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T09:30:59.763' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (516, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:30:59.767' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (517, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:31:17.520' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (518, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:31:26.247' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (519, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:31:31.107' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (520, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:34:11.330' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (521, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:35:05.930' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (522, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:35:08.040' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (523, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:35:09.203' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (524, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:35:10.490' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (525, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:35:12.000' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (526, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:39:33.650' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (527, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:40:14.830' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (528, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:45:45.657' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (529, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:45:48.327' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (530, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:46:00.153' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (531, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:48:54.373' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (532, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:52:34.427' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (533, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:52:46.977' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (534, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:52:48.487' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (535, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:56:38.220' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (536, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:56:48.403' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (537, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:57:43.597' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (538, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:58:08.117' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (539, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:58:26.963' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (540, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:59:11.980' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (541, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:59:33.260' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (542, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T09:59:48.487' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (543, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:00:07.333' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (544, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:00:22.583' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (545, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:00:33.180' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (546, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:00:56.017' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (547, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:01:12.650' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (548, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:01:23.410' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (549, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:05:10.240' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (550, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:05:30.850' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (551, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:07:23.967' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (552, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:07:43.827' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (553, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:09:14.900' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (554, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:09:24.437' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (555, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:11:23.730' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (556, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:12:05.597' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (557, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:12:40.850' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (558, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:15:52.793' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (559, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:16:36.380' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (560, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:16:47.000' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (561, N'cinthiya@gmail.com', N'Contact', N'Create', CAST(N'2026-02-26T10:17:41.527' AS DateTime), 1, N'FullName:Cinthiya Banny UserName:cinthiya@gmail.com')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (562, N'cinthiya@gmail.com', N'Contact', N'Update', CAST(N'2026-02-26T10:17:49.940' AS DateTime), 1, N'Id:14')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (563, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T10:17:49.960' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (564, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:17:49.967' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (565, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T10:18:08.533' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (566, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:18:08.560' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (567, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T10:21:10.793' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (568, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:21:10.833' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (569, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T10:21:35.393' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (570, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:21:35.430' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (571, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T10:21:40.147' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (572, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:21:40.180' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (573, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T10:21:47.700' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (574, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:21:47.737' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (575, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:22:07.967' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (576, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:22:24.443' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (577, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:24:06.327' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (578, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T10:24:25.160' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (579, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:02:51.757' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (580, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:05:38.710' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (581, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T12:22:34.537' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (582, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:22:34.550' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (583, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:23:21.050' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (584, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:23:58.077' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (585, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:24:00.643' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (586, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:31:13.947' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (587, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T12:52:04.770' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (588, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T14:27:40.193' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (589, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T14:30:02.063' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (590, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T14:34:12.497' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (591, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T14:44:05.900' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (592, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T14:48:07.587' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (593, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T14:48:11.500' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (594, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:04:35.217' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (595, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:05:16.467' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (596, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:05:16.470' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (597, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:05:46.863' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (598, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:05:46.863' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (599, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:05:54.037' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (600, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:05:54.067' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (601, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:06:17.043' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (602, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:06:19.063' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (603, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:06:20.333' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (604, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:06:29.977' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (605, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:06:30.177' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (606, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:07:08.083' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (607, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:07:08.083' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (608, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:07:16.970' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (609, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:07:16.980' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (610, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:07:25.207' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (611, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:07:25.210' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (612, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-26T15:07:41.933' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (613, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:07:41.933' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (614, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:07:49.847' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (615, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:07:57.100' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (616, N'Admin', N'Contact', N'RetrieveById', CAST(N'2026-02-26T15:08:06.437' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (617, N'Admin', N'Contact', N'Update', CAST(N'2026-02-26T15:08:06.443' AS DateTime), 1, N'Id:2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (618, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-26T15:08:06.460' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (619, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-26T15:08:06.473' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (620, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-27T08:59:52.237' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (621, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-27T09:00:24.293' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (622, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-27T09:00:24.297' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (623, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-27T09:00:40.120' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (624, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-27T09:00:40.133' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (625, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-27T09:00:46.087' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (626, N'Admin', N'Contact', N'RetrieveAll', CAST(N'2026-02-27T09:00:49.157' AS DateTime), 1, N'All Records')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (627, N'Admin', N'Category', N'RetrieveAll', CAST(N'2026-02-27T09:00:49.160' AS DateTime), 1, N'All Records')
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
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'College', 0, N'Admin', CAST(N'2026-02-25T10:08:21.357' AS DateTime), N'Admin', CAST(N'2026-02-25T10:08:21.357' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (1, N'Rahul Shetty', N'9876543210', N'Mumbai', 1, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-25T12:24:04.907' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (2, N'Anita Sharma', N'9876543211', N'Delhi', 3, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-26T15:08:06.437' AS DateTime), 0, N'anita@gmail.com', N'', N'', 0, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (3, N'Ravi Kumar', N'9876543212', N'Bangalore', 3, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-25T09:58:33.370' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (4, N'Sneha Patil', N'9876543213', N'Pune', 1, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-25T09:42:39.780' AS DateTime), 0, N'sneha@gmail.com', N'', N'', 0, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (5, N'Amit Verma', N'9876543214', N'Chennai', 4, N'Admin', CAST(N'2026-02-15T16:29:06.727' AS DateTime), N'Admin', CAST(N'2026-02-25T09:13:04.593' AS DateTime), 0, N'amit@gmail.com', N'', N'', 0, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (6, N'Shravya Kulal', N'8618523471', N'Manipal, Karnataka, India', 2, N'Admin', CAST(N'2026-02-16T11:15:51.087' AS DateTime), N'Admin', CAST(N'2026-02-25T09:12:45.647' AS DateTime), 0, N'shravya@gmail.com', N'', N'', 0, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (7, N'Malaika Gowda', N'5678932415', N'Mandya', 4, N'ss10@gmail.com', CAST(N'2026-02-24T14:55:32.020' AS DateTime), N'Admin', CAST(N'2026-02-25T09:36:06.853' AS DateTime), 0, N'ss10@gmail.com', N'12345', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (8, N'Kipi Keerthi', N'8907634560', N'RR Nagar', 3, N'kk@gmail.com', CAST(N'2026-02-24T15:37:11.313' AS DateTime), N'Admin', CAST(N'2026-02-25T09:35:52.260' AS DateTime), 1, N'kk@gmail.com', N'OFpIG1EGMVIYpoaDIHzJcg==:1GXkYdVrBRnSmR3XsmmuLFMnysM=', N'User', 1, 0, 3)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (9, N'Kipi Keerthi', N'8907634560', N'Bangalore', 3, N'kk@gmail.com', CAST(N'2026-02-24T15:40:53.507' AS DateTime), N'kk@gmail.com', CAST(N'2026-02-25T09:42:06.873' AS DateTime), 0, N'kk@gmail.com', N's016CaqFr9jbVG35ysHa5A==:5My5D7MtSKP2gmfWj/bOQiyeU/c=', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (10, N'Payal Singh', N'9805737383', N'Nitte', 2, N'payal@gmail.com', CAST(N'2026-02-24T17:18:10.307' AS DateTime), N'payal@gmail.com', CAST(N'2026-02-25T09:07:40.140' AS DateTime), 0, N'payal@gmail.com', N'x4Gq6LGCo9Zxaszzw3dLbg==:P33lf6r9ph/9I2VMwd1GmzcPdnw=', N'User', 1, 0, 1)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (11, N'Stuthi Shetty', N'9087543246', N'Denmark', 4, N'stuthi@gmail.com', CAST(N'2026-02-24T17:25:38.100' AS DateTime), N'stuthi@gmail.com', CAST(N'2026-02-24T17:42:31.460' AS DateTime), 0, N'stuthi@gmail.com', N'myGRE/Me4u3zsBJbnUSWXw==:IUKGNbKcrxuxV0LWVJsVmF/nmC0=', N'User', 1, 0, 1)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (12, N'Hija M', N'8907634560', N'Gadag', 3, N'hija@gmail.com', CAST(N'2026-02-25T09:08:43.837' AS DateTime), N'hija@gmail.com', CAST(N'2026-02-25T09:08:43.837' AS DateTime), 0, N'hija@gmail.com', N'12345', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (13, N'liniya Joseph', N'9876543210', N'Italy', 1, N'liniya@gmail.com', CAST(N'2026-02-25T09:11:16.790' AS DateTime), N'liniya@gmail.com', CAST(N'2026-02-25T09:11:38.137' AS DateTime), 0, N'liniya@gmail.com', N'oR9wusAGVJVWxCX2xTaY7w==:gXAcNTL6+Aq5xgIDkxakFi8R6Hk=', N'User', 1, 0, 0)
GO
INSERT [dbo].[Contacts] ([Id], [FullName], [Phone], [City], [CategoryId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted], [UserName], [PassWord], [Role], [IsActive], [IsLogged], [NoOfAttempts]) VALUES (14, N'Cinthiya Banny', N'8907634560', N'USA', 1, N'cinthiya@gmail.com', CAST(N'2026-02-26T10:17:41.513' AS DateTime), N'cinthiya@gmail.com', CAST(N'2026-02-26T10:17:49.897' AS DateTime), 0, N'cinthiya@gmail.com', N'/sJFXtip1ee7y0nKVBAjBQ==:nHnCvCzuwKGKIQpDwzB6wRUgKAU=', N'User', 1, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
