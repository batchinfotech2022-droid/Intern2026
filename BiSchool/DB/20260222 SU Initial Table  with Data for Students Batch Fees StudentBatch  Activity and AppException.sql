Use master;
Go
Create Database BiSchoolDB;
GO


USE [BiSchoolDB]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 23-02-2026 12:13:04 AM ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 23-02-2026 12:13:04 AM ******/
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
/****** Object:  Table [dbo].[Batch]    Script Date: 23-02-2026 12:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[Timing] [varchar](25) NULL,
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
/****** Object:  Table [dbo].[Fees]    Script Date: 23-02-2026 12:13:04 AM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 23-02-2026 12:13:04 AM ******/
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
/****** Object:  Table [dbo].[StudentBatch]    Script Date: 23-02-2026 12:13:04 AM ******/
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
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (37, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T13:51:48.410' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (38, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T13:52:19.937' AS DateTime), 0, N'Title:batch 1  - Timing:10 Pm  - Subject:C sharp - CreatedBy:Admin - CreatedDate:22-02-2026 01:52:19 PM - ModifiedBy:Admin - ModifiedDate:22-02-2026 01:52:19 PM - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (39, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T14:26:28.807' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (40, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T14:27:05.530' AS DateTime), 1, N'Title:batch1 - Timing:10 am - Subject:c# - CreatedBy:Admin - CreatedDate:22-02-2026 02:27:05 PM - ModifiedBy:Admin - ModifiedDate:22-02-2026 02:27:05 PM - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (41, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T14:27:05.643' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (42, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T14:27:08.350' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (43, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T14:27:13.270' AS DateTime), 1, N'Title:batch1 - Timing:10 am - Subject:c - CreatedBy: - CreatedDate:22-02-2026 02:27:13 PM - ModifiedBy: - ModifiedDate:22-02-2026 02:27:13 PM - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (44, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T14:27:13.280' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (45, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T14:27:15.557' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (46, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T14:27:19.210' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (47, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T14:27:21.027' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (48, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T14:27:26.150' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (49, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T14:45:12.540' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (50, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T14:45:14.657' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (51, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T14:45:16.570' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (52, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T14:59:49.087' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (53, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T14:59:51.667' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (54, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T14:59:54.780' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (55, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:35:20.000' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (56, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:35:42.520' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (57, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:35:44.000' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (58, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:35:46.253' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (59, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:35:48.367' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (60, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T15:36:03.440' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (61, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:36:03.473' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (62, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:36:05.810' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (63, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:36:07.750' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (64, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:36:09.533' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (65, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T15:36:11.620' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (66, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:48:31.510' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (67, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:48:35.207' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (68, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T15:48:37.560' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (69, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:48:37.583' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (70, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T15:49:20.073' AS DateTime), 1, N'Title:Batch2  - Timing:9:00 A.M - 12:30 P.M - Subject:Python')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (71, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:49:20.093' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (72, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:49:23.393' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (73, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T15:49:32.990' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (74, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:49:33.007' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (75, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:49:37.233' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (76, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:49:39.273' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (77, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:49:44.753' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (78, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:49:46.323' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (79, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:54:08.957' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (80, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T15:54:13.030' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (81, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:54:13.047' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (82, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:54:16.587' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (83, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:54:19.173' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (84, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:55:19.060' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (85, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:55:26.830' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (86, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:55:29.593' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (87, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T15:55:33.267' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (88, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:55:33.300' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (89, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:59:49.927' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (90, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T15:59:53.110' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (91, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T15:59:55.180' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (92, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T15:59:55.203' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (93, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T16:00:19.523' AS DateTime), 1, N'Title:Batch 3 - Timing:9:00 A.M - 12:30 P.M - Subject:Java')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (94, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:00:19.540' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (106, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:35:11.590' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (107, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:35:17.290' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (108, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:35:49.090' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (109, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:35:51.813' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (110, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:35:53.683' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (111, N'Admin', N'Student', N'Delete', CAST(N'2026-02-22T16:35:55.563' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (112, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:39:10.047' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (113, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:39:16.017' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (114, N'Admin', N'Student', N'Update', CAST(N'2026-02-22T16:39:40.723' AS DateTime), 1, N'FullName:Sihi Verma - Email:sihi@gmail.com - Password:1234567 - Address:Mumbai - Phone:9000000002 - IsAdmin:True - Createdby: - Createddate:22-02-2026 04:39:40 PM - Modifiedby: - Modifieddate:22-02-2026 04:39:40 PM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (95, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:06:43.773' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (96, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T16:06:45.557' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (97, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T16:07:05.140' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (98, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:07:05.153' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (99, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:16:41.423' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (100, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T16:16:44.173' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (101, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T16:16:48.903' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (102, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:16:48.923' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (103, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T16:21:19.930' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (104, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T16:21:25.080' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (105, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:21:25.113' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (115, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:39:40.747' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (116, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:39:46.507' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (117, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:39:53.673' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (118, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:39:55.867' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (119, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:40:00.920' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (120, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:40:02.510' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (121, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:40:04.750' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (122, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:40:09.993' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (123, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:40:26.883' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (124, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:40:28.620' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (125, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:40:35.650' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (126, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:53:23.630' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (127, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:53:40.980' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (128, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T16:53:42.653' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (129, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:53:45.100' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (130, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:53:47.817' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (131, N'Admin', N'Student', N'Update', CAST(N'2026-02-22T16:54:13.187' AS DateTime), 1, N'FullName:Sihi Verma - Email:sihi@gmail.com - Password:132456789 - Address:Mumbai - Phone:9876543210 - IsAdmin:True - Createdby: - Createddate:22-02-2026 04:54:13 PM - Modifiedby: - Modifieddate:22-02-2026 04:54:13 PM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (132, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:54:13.207' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (133, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:54:19.947' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (134, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:54:26.757' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (135, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:54:29.917' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (136, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:54:33.760' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (137, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T16:54:36.033' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (138, N'Admin', N'Student', N'Delete', CAST(N'2026-02-22T16:54:37.803' AS DateTime), 0, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (139, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T16:59:04.720' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (140, N'Admin', N'Student', N'Create', CAST(N'2026-02-22T17:00:27.190' AS DateTime), 1, N'FullName:Disha - Email:disha@gmail.com - Password:14785236 - Address:Delhi - Phone:+917789456114 - IsAdmin:True - Createdby:Admin - Createddate:22-02-2026 12:00:00 AM - Modifiedby:Admin - Modifieddate:22-02-2026 12:00:00 AM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (141, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:00:27.213' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (142, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T17:00:36.297' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (143, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:00:38.810' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (144, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T17:00:42.867' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (145, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T17:00:44.763' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (146, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:00:44.777' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (147, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T17:00:48.243' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (148, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T17:00:50.577' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (149, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:00:50.590' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (150, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:01:06.567' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (151, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:08:17.400' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (152, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T17:08:20.583' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (153, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T17:08:22.873' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (154, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:08:22.893' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (155, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T17:41:34.207' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (156, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T17:48:06.193' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (157, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T17:48:55.760' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (158, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T17:54:29.843' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (159, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T17:54:33.217' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (160, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T17:54:50.577' AS DateTime), 1, N'StudentId:1 - Amount:45000 - Date:01-01-2026 12:00:00 AM - CreatedBy:Admin - CreatedDate:22-02-2026 05:54:50 PM - ModifiedBy:Admin - ModifiedDate:22-02-2026 05:54:50 PM - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (161, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T17:54:50.670' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (162, N'', N'Fees', N'RetrieveById', CAST(N'2026-02-22T17:55:07.897' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (163, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T17:55:22.017' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (164, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T17:58:13.957' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (165, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T18:05:25.200' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (166, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T18:05:28.710' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (167, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T18:05:30.270' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (168, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T18:05:33.367' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (169, N'Admin', N'Fees', N'Delete', CAST(N'2026-02-22T18:05:35.157' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (170, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T18:22:10.720' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (171, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:02:25.523' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (172, N'Admin', N'Student', N'Create', CAST(N'2026-02-22T19:03:56.743' AS DateTime), 1, N'FullName:Aksh - Email:Aksh@gmail.com - Password:14785223 - Address:Kerala - Phone:+917789487711 - IsAdmin:False - Createdby:Admin - Createddate:22-02-2026 12:00:00 AM - Modifiedby:Admin - Modifieddate:22-02-2026 12:00:00 AM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (173, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:03:56.787' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (174, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T19:04:00.883' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (175, N'Admin', N'Student', N'Update', CAST(N'2026-02-22T19:04:11.227' AS DateTime), 1, N'FullName:Aksh - Email:Aksh@gmail.com - Password:123654 - Address:Kerala - Phone:+917789487711 - IsAdmin:True - Createdby: - Createddate:22-02-2026 07:04:11 PM - Modifiedby: - Modifieddate:22-02-2026 07:04:11 PM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (176, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:04:11.243' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (177, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T19:04:15.423' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (178, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:04:17.507' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (179, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T19:04:20.650' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (180, N'Admin', N'Student', N'Delete', CAST(N'2026-02-22T19:04:25.680' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (181, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:04:25.697' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (182, N'Admin', N'Student', N'Create', CAST(N'2026-02-22T19:05:02.423' AS DateTime), 1, N'FullName:Akshay - Email:Akshay11@gmail.com - Password:14789632 - Address:Bengaluru - Phone:9900225544 - IsAdmin:True - Createdby:Admin - Createddate:22-02-2026 12:00:00 AM - Modifiedby:Admin - Modifieddate:22-02-2026 12:00:00 AM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (183, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:05:02.433' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (184, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:05:07.363' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (185, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:05:09.653' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (186, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T19:05:31.560' AS DateTime), 1, N'StudentId:2 Amount:50000')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (187, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:05:31.580' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (188, N'', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:05:35.667' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (189, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T19:05:51.027' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (190, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:05:51.047' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (191, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:05:53.963' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (192, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:05:55.507' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (193, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T19:06:17.983' AS DateTime), 1, N'StudentId:3 Amount:60000')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (194, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:06:18.007' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (195, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T19:06:35.170' AS DateTime), 1, N'StudentId:4 Amount:45000')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (196, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:06:35.197' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (197, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T19:06:52.407' AS DateTime), 1, N'StudentId:10 Amount:10000')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (198, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:06:52.427' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (199, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:06:59.480' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (200, N'Admin', N'Fees', N'Delete', CAST(N'2026-02-22T19:07:01.317' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (201, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:07:01.340' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (202, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:07:05.967' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (203, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:07:09.417' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (204, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:07:10.943' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (205, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:07:14.727' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (206, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:07:17.567' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (207, N'', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:07:30.740' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (208, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T19:10:06.530' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (209, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:10:06.560' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (210, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:10:10.167' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (211, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:10:13.060' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (213, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:19:44.790' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (214, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T19:20:03.137' AS DateTime), 1, N'Title:Batch 5 - Timing:11:00 A.M - 01:30 P.M  - Subject:Web Development')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (218, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:20:21.097' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (219, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T19:20:23.373' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (220, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T19:20:25.263' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (222, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T19:20:27.167' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (228, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:21:05.727' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (232, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T19:45:46.920' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (233, N'Admin', N'StudentBatch', N'Update', CAST(N'2026-02-22T19:45:56.040' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (234, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T19:46:16.077' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (235, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T19:46:20.410' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (236, N'Admin', N'StudentBatch', N'Update', CAST(N'2026-02-22T19:46:27.917' AS DateTime), 0, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (238, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T19:46:34.290' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (241, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:12:38.843' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (242, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:12:43.173' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (243, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:12:56.567' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (244, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:12:59.833' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (245, N'Admin', N'StudentBatch', N'Update', CAST(N'2026-02-22T20:13:15.067' AS DateTime), 1, N'Id:1 BatchId:2 StudentId:1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (247, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:13:21.727' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (248, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:13:23.707' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (250, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:17:42.167' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (251, N'Admin', N'StudentBatch', N'Create', CAST(N'2026-02-22T20:17:55.983' AS DateTime), 1, N'BatchId:1 StudentId:5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (253, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:17:59.897' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (254, N'Admin', N'StudentBatch', N'Update', CAST(N'2026-02-22T20:18:07.420' AS DateTime), 1, N'Id:2 BatchId:1 StudentId:4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (255, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:18:07.443' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (257, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:18:11.430' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (260, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:18:15.277' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (261, N'Admin', N'Student', N'Create', CAST(N'2026-02-22T21:51:47.400' AS DateTime), 1, N'Name:Vibha')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (262, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T21:52:37.457' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (263, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T22:01:07.507' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (264, N'Admin', N'Student', N'Create', CAST(N'2026-02-22T22:02:49.250' AS DateTime), 1, N'FullName:Virat - Email:vi@gmail.com - Password:122345 - Address:Goa - Phone:+917789487451 - IsAdmin:True - Createdby:Admin - Createddate:22-02-2026 12:00:00 AM - Modifiedby:Admin - Modifieddate:22-02-2026 12:00:00 AM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (265, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T22:02:49.377' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (266, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T22:02:52.010' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (267, N'Admin', N'Student', N'Update', CAST(N'2026-02-22T22:03:04.713' AS DateTime), 1, N'FullName:Virat - Email:vi@gmail.com - Password:1478252 - Address:Goa - Phone:+917787897451 - IsAdmin:True - Createdby: - Createddate:22-02-2026 10:03:04 PM - Modifiedby: - Modifieddate:22-02-2026 10:03:04 PM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (268, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T22:03:04.730' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (269, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T22:03:08.357' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (270, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T22:03:11.113' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (271, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T22:03:21.657' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (272, N'Admin', N'Student', N'Delete', CAST(N'2026-02-22T22:03:24.453' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (273, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T22:03:24.463' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (274, N'Admin', N'Student', N'Create', CAST(N'2026-02-22T22:03:50.277' AS DateTime), 1, N'FullName:Virat - Email:vi@gmail.com - Password:1234567 - Address:Goa - Phone:9876543211 - IsAdmin:True - Createdby:Admin - Createddate:22-02-2026 12:00:00 AM - Modifiedby:Admin - Modifieddate:22-02-2026 12:00:00 AM - Isdeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (275, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T22:03:50.297' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (276, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:03:53.573' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (277, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T22:19:38.690' AS DateTime), 1, N'StudentId:3 Amount:48000.0000')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (278, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:19:38.817' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (279, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T22:19:46.200' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (280, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:19:47.627' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (281, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T22:19:50.187' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (282, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T22:19:53.097' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (283, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:19:53.120' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (284, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T22:19:54.983' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (285, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T22:20:01.213' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (286, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:20:01.233' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (287, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T22:20:04.407' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (288, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:20:06.717' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (289, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T22:20:08.430' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (290, N'Admin', N'Fees', N'Delete', CAST(N'2026-02-22T22:20:09.780' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (291, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:20:09.813' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (292, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:20:11.973' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (293, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:20:12.950' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (295, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T22:20:17.883' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (298, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T22:20:23.453' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (299, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T22:20:25.010' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (301, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:20:32.207' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (304, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:20:40.927' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (306, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:20:45.053' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (307, N'Admin', N'StudentBatch', N'Create', CAST(N'2026-02-22T22:20:54.420' AS DateTime), 1, N'BatchId:4 StudentId:5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (311, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:20:58.783' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (312, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:33:50.163' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (313, N'Admin', N'StudentBatch', N'Create', CAST(N'2026-02-22T22:34:22.930' AS DateTime), 1, N'BatchId:4 StudentId:3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (314, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:34:22.970' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (317, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:36:38.917' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (319, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:38:28.427' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (320, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:39:12.023' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (321, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:40:07.440' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (322, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:40:49.633' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (324, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:42:54.820' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (326, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:45:31.613' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (328, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:51:24.977' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (330, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:54:58.933' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (332, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:55:47.367' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (333, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:01:11.440' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (334, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:01:16.430' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (336, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:02:15.660' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (337, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:02:23.913' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (338, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:02:26.403' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (341, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:03:51.113' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (343, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:04:39.797' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (345, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:05:00.473' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (347, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:05:35.147' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (351, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:06:28.363' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (352, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:06:53.387' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (354, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:08:05.497' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (356, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:08:09.367' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (358, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:08:12.677' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (361, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:10:57.240' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (363, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:12:21.700' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (365, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:12:25.467' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (367, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:12:29.130' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (368, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T23:12:30.830' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (370, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:15:37.167' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (372, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:15:43.600' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (373, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:15:48.427' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (374, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:15:50.033' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (375, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:15:51.730' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (378, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:15:57.703' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (380, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:16:05.353' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (382, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:16:09.877' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (212, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T19:11:06.093' AS DateTime), 0, N'Title:Batch 5 - Timing:11:00 A.M - 01:30 P.M  - Subject:Web Development')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (215, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:20:03.177' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (216, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T19:20:05.443' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (217, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T19:20:21.080' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (221, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:20:25.270' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (223, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:20:29.187' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (224, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T19:20:31.063' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (225, N'Admin', N'Batch', N'Delete', CAST(N'2026-02-22T19:20:34.160' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (226, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T19:20:34.180' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (227, N'Admin', N'Batch', N'Create', CAST(N'2026-02-22T19:21:05.713' AS DateTime), 1, N'Title:Batch 1 - Timing:9:00 A.M - 10:30 P.M - Subject:C++')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (231, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T19:45:43.117' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (237, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T19:46:32.573' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (239, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T19:46:36.760' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (240, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T19:46:38.617' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (296, N'Admin', N'Batch', N'Update', CAST(N'2026-02-22T22:20:21.150' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (308, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:20:54.447' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (315, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:35:02.173' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (316, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:35:35.267' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (323, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:41:04.677' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (325, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:43:45.230' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (327, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:48:54.047' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (329, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:54:45.237' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (335, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:01:21.943' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (348, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:05:55.910' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (383, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:19:37.180' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (384, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:20:02.033' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (385, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:20:14.720' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (386, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:20:25.547' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (387, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:20:32.817' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (388, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T23:20:35.177' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (389, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:20:37.363' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (390, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T23:20:39.107' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (391, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:20:40.743' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (393, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:26:40.227' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (394, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:26:52.277' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (395, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:26:54.250' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (396, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:26:56.120' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (397, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:28:49.310' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (398, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:30:12.353' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (399, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:30:18.987' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (400, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:30:20.950' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (401, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:30:23.067' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (402, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:30:25.110' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (403, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:30:30.623' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (404, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:30:32.630' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (405, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:30:35.283' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (406, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:33:31.360' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (407, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:33:35.190' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (408, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:33:37.343' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (409, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:33:38.997' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (410, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:33:40.890' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (411, N'Admin', N'Student', N'RetrieveById', CAST(N'2026-02-22T23:33:42.517' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (412, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:33:44.253' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (413, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:37:18.460' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (414, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:37:20.220' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (415, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:37:22.373' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (417, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:37:25.557' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (422, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T00:00:26.013' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (423, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T00:00:30.780' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (424, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T00:00:33.750' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (425, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T00:00:35.317' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (426, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T00:00:36.737' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (427, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-23T00:00:39.090' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (428, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T00:00:44.677' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (229, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T19:45:24.843' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (230, N'Admin', N'StudentBatch', N'Create', CAST(N'2026-02-22T19:45:42.987' AS DateTime), 1, N'BatchId:1 StudentId:1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (252, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:17:56.030' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (297, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T22:20:21.167' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (331, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:55:10.947' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (355, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:08:07.547' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (360, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:08:22.230' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (364, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T23:12:23.367' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (418, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:37:26.893' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (246, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T20:13:15.107' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (249, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:13:26.547' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (258, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:18:13.653' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (259, N'Admin', N'StudentBatch', N'Delete', CAST(N'2026-02-22T20:18:15.260' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (305, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T22:20:43.497' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (346, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:05:29.513' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (256, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T20:18:09.857' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (294, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T22:20:13.833' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (340, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:03:45.393' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (344, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:04:58.553' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (353, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:08:03.360' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (366, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T23:12:26.713' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (377, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:15:56.140' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (381, N'Admin', N'Batch', N'RetrieveById', CAST(N'2026-02-22T23:16:08.180' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (416, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:37:23.820' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (300, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T22:20:26.813' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (302, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T22:20:34.993' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (303, N'Admin', N'StudentBatch', N'Update', CAST(N'2026-02-22T22:20:40.893' AS DateTime), 1, N'Id:1 BatchId:3 StudentId:1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (318, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T22:36:56.707' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (339, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:02:34.370' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (359, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:08:16.783' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (376, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:15:53.613' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (392, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:24:49.623' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (309, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T22:20:57.343' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (310, N'Admin', N'StudentBatch', N'Delete', CAST(N'2026-02-22T22:20:58.767' AS DateTime), 1, N'3')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (349, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:06:08.977' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (342, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:04:37.147' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (350, N'Admin', N'StudentBatch', N'RetrieveById', CAST(N'2026-02-22T23:06:19.173' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (357, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:08:11.077' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (362, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:12:10.240' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (369, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:12:32.697' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (371, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:15:41.973' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (379, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-22T23:16:02.720' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (419, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-22T23:37:28.033' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (420, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T23:37:29.180' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (421, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T23:37:31.010' AS DateTime), 1, N'All Fields')
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Batch] ON 
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'batch1', N'10 Pm ', N'C sharp', N'', CAST(N'2026-02-22T15:36:03.340' AS DateTime), N'Admin', CAST(N'2026-02-22T15:48:37.520' AS DateTime), 1)
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Batch 2 ', N'9:00 A.M - 12', N'Python', N'', CAST(N'2026-02-22T15:55:33.217' AS DateTime), N'Admin', CAST(N'2026-02-22T15:59:55.170' AS DateTime), 1)
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Batch 4', N'9:00 A.M -12 P.M', N'Maths', N'', CAST(N'2026-02-22T16:21:25.057' AS DateTime), N'Admin', CAST(N'2026-02-22T17:00:44.750' AS DateTime), 1)
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Batch 5', N'11:00 A.M - 01:30 P.M ', N'Web Application Development', N'', CAST(N'2026-02-22T19:20:25.253' AS DateTime), N'Admin', CAST(N'2026-02-22T19:20:34.143' AS DateTime), 1)
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Batch 1', N'9:00 A.M - 10:30 P.M', N'C++', N'', CAST(N'2026-02-22T22:20:21.117' AS DateTime), N'', CAST(N'2026-02-22T22:20:21.117' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Batch] OFF
GO
SET IDENTITY_INSERT [dbo].[Fees] ON 
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 1, CAST(45000.0000 AS Decimal(18, 4)), CAST(N'2026-01-01' AS Date), N'Admin', CAST(N'2026-02-22T17:54:50.547' AS DateTime), N'', CAST(N'2026-02-22T22:20:01.190' AS DateTime), 0)
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(55000.0000 AS Decimal(18, 4)), CAST(N'2025-02-10' AS Date), N'Admin', CAST(N'2026-02-22T19:05:31.543' AS DateTime), N'', CAST(N'2026-02-22T19:05:51.003' AS DateTime), 0)
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 3, CAST(60000.0000 AS Decimal(18, 4)), CAST(N'2026-03-01' AS Date), N'Admin', CAST(N'2026-02-22T19:06:17.960' AS DateTime), N'Admin', CAST(N'2026-02-22T22:20:09.760' AS DateTime), 1)
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 4, CAST(45000.0000 AS Decimal(18, 4)), CAST(N'2004-01-10' AS Date), N'Admin', CAST(N'2026-02-22T19:06:35.157' AS DateTime), N'Admin', CAST(N'2026-02-22T19:07:01.300' AS DateTime), 1)
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 10, CAST(10000.0000 AS Decimal(18, 4)), CAST(N'2024-05-10' AS Date), N'Admin', CAST(N'2026-02-22T19:06:52.400' AS DateTime), N'Admin', CAST(N'2026-02-22T19:06:52.400' AS DateTime), 0)
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 3, CAST(48000.0000 AS Decimal(18, 4)), CAST(N'2026-02-22' AS Date), N'Admin', CAST(N'2026-02-22T22:19:38.003' AS DateTime), N'Admin', CAST(N'2026-02-22T22:19:38.003' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Fees] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Sihi Verma', N'sihi@gmail.com', N'132456789', N'Mumbai', N'9876543210', 1, N'', CAST(N'2026-02-22T16:54:13.157' AS DateTime), N'', CAST(N'2026-02-22T16:54:13.157' AS DateTime), 0)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'chithra', N'harishchithra2004@gmail.com', N'1234', N'karkala', N'+917022789065', 0, N'', CAST(N'2026-02-20T16:33:08.947' AS DateTime), N'System', CAST(N'2026-02-20T16:33:09.060' AS DateTime), 0)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Disha', N'disha@gmail.com', N'14785236', N'Delhi', N'+917789456114', 1, N'Admin', CAST(N'2026-02-22T17:00:27.187' AS DateTime), N'Admin', CAST(N'2026-02-22T17:08:22.863' AS DateTime), 1)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Aksh', N'Aksh@gmail.com', N'123654', N'Kerala', N'+917789487711', 1, N'', CAST(N'2026-02-22T19:04:11.193' AS DateTime), N'Admin', CAST(N'2026-02-22T19:04:25.670' AS DateTime), 1)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Akshay', N'Akshay11@gmail.com', N'14789632', N'Bengaluru', N'9900225544', 1, N'Admin', CAST(N'2026-02-22T19:05:02.420' AS DateTime), N'Admin', CAST(N'2026-02-22T19:05:02.420' AS DateTime), 0)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Vibha', N'vibha222@gmail.com', N'112211212', N'Chennai', N'9876543210', 0, N'', CAST(N'2026-02-22T21:52:18.813' AS DateTime), N'Admin', CAST(N'2026-02-22T21:52:33.187' AS DateTime), 1)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Virat', N'vi@gmail.com', N'1478252', N'Goa', N'+917787897451', 1, N'', CAST(N'2026-02-22T22:03:04.647' AS DateTime), N'Admin', CAST(N'2026-02-22T22:03:24.440' AS DateTime), 1)
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Virat', N'vi@gmail.com', N'1234567', N'Goa', N'9876543211', 1, N'Admin', CAST(N'2026-02-22T22:03:50.277' AS DateTime), N'Admin', CAST(N'2026-02-22T22:03:50.277' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentBatch] ON 
GO
INSERT [dbo].[StudentBatch] ([Id], [BatchId], [StudentId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 3, 1, N'Admin', CAST(N'2026-02-22T19:45:42.947' AS DateTime), N'Admin', CAST(N'2026-02-22T22:20:40.887' AS DateTime), 0)
GO
INSERT [dbo].[StudentBatch] ([Id], [BatchId], [StudentId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 1, 4, N'Admin', CAST(N'2026-02-22T20:17:55.967' AS DateTime), N'Admin', CAST(N'2026-02-22T20:18:15.213' AS DateTime), 1)
GO
INSERT [dbo].[StudentBatch] ([Id], [BatchId], [StudentId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 4, 5, N'Admin', CAST(N'2026-02-22T22:20:54.407' AS DateTime), N'Admin', CAST(N'2026-02-22T22:20:58.750' AS DateTime), 1)
GO
INSERT [dbo].[StudentBatch] ([Id], [BatchId], [StudentId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 4, 3, N'Admin', CAST(N'2026-02-22T22:34:22.910' AS DateTime), N'Admin', CAST(N'2026-02-22T22:34:22.910' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[StudentBatch] OFF
GO
