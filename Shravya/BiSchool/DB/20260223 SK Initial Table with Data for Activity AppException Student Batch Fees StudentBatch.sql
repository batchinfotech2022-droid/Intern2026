USE master;
Go

CREATE DATABASE BiSchoolDB;
GO

USE [BiSchoolDB]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 23-02-2026 14:06:46 ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 23-02-2026 14:06:46 ******/
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
/****** Object:  Table [dbo].[Batch]    Script Date: 23-02-2026 14:06:46 ******/
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
/****** Object:  Table [dbo].[Fees]    Script Date: 23-02-2026 14:06:46 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 23-02-2026 14:06:46 ******/
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
/****** Object:  Table [dbo].[StudentBatch]    Script Date: 23-02-2026 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentBatch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_StudentBatch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1, N'Admin', N'Fees', N'Create', CAST(N'2026-02-19T22:03:42.890' AS DateTime), 1, N'StudentId:7 - Amount:23456 - Date:26-02-2026 00:00:00 - CreatedBy:Admin - CreatedDate:19-02-2026 22:03:42 - ModifiedBy:Admin - ModifiedDate:19-02-2026 22:03:42 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (2, N'usrname', N'Student', N'RetrieveAll', CAST(N'2026-02-19T23:03:04.897' AS DateTime), 0, N'All fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (3, N'usrname', N'Student', N'RetrieveAll', CAST(N'2026-02-20T06:25:11.920' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (4, N'usrname', N'Student', N'RetrieveAll', CAST(N'2026-02-20T06:26:56.373' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (5, N'', N'Student', N'RetrieveAll', CAST(N'2026-02-20T06:32:56.690' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (6, N'', N'Student', N'RetrieveAll', CAST(N'2026-02-20T06:37:20.030' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (7, N'', N'Student', N'RetrieveAll', CAST(N'2026-02-20T06:40:55.883' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (8, N'', N'Student', N'RetrieveAll', CAST(N'2026-02-20T06:41:10.077' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (9, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-20T07:06:34.640' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (10, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-20T07:26:20.413' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (11, N'usrName', N'Fees', N'Create', CAST(N'2026-02-20T07:26:59.277' AS DateTime), 0, N'StudentId:1 - Amount:24000 - Date:17-01-0001 00:00:00 - CreatedBy:usrName - CreatedDate:20-02-2026 07:26:59 - ModifiedBy:usrName - ModifiedDate:20-02-2026 07:26:59 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (12, N'usrName', N'Fees', N'Create', CAST(N'2026-02-20T07:27:01.687' AS DateTime), 0, N'StudentId:1 - Amount:24000 - Date:17-01-0001 00:00:00 - CreatedBy:usrName - CreatedDate:20-02-2026 07:27:01 - ModifiedBy:usrName - ModifiedDate:20-02-2026 07:27:01 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (15, N'usrName', N'Fees', N'Create', CAST(N'2026-02-20T07:27:03.233' AS DateTime), 0, N'StudentId:1 - Amount:24000 - Date:17-01-0001 00:00:00 - CreatedBy:usrName - CreatedDate:20-02-2026 07:27:03 - ModifiedBy:usrName - ModifiedDate:20-02-2026 07:27:03 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (16, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-20T10:09:34.493' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (17, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-20T15:55:48.777' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (18, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-20T15:55:52.757' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (19, N'Admin', N'Fees', N'Create', CAST(N'2026-02-20T15:56:16.387' AS DateTime), 0, N'StudentId:1 - Amount:45000 - Date:26-01-0001 00:00:00 - CreatedBy:Admin - CreatedDate:20-02-2026 15:56:16 - ModifiedBy:Admin - ModifiedDate:20-02-2026 15:56:16 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (20, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-20T16:31:02.827' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (21, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:31:09.830' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (22, N'Admin', N'Fees', N'Create', CAST(N'2026-02-20T16:31:54.300' AS DateTime), 0, N'StudentId:1 - Amount:29000 - Date:21-10-0026 00:00:00 - CreatedBy:Admin - CreatedDate:20-02-2026 16:31:54 - ModifiedBy:Admin - ModifiedDate:20-02-2026 16:31:54 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (23, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-20T16:53:45.137' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (24, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-20T16:53:49.320' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (25, N'Admin', N'Fees', N'Create', CAST(N'2026-02-20T16:54:02.570' AS DateTime), 0, N'StudentId:1 - Amount:4567789 - Date:31-01-0001 00:00:00 - CreatedBy:Admin - CreatedDate:20-02-2026 16:54:02 - ModifiedBy:Admin - ModifiedDate:20-02-2026 16:54:02 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (26, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:10:16.977' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (27, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:10:26.363' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (28, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T19:10:36.723' AS DateTime), 0, N'StudentId:1 - Amount:10000 - Date:01-01-0001 00:00:00 - CreatedBy:Admin - CreatedDate:22-02-2026 19:10:36 - ModifiedBy:Admin - ModifiedDate:22-02-2026 19:10:36 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (29, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:23:11.420' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (30, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:28:40.360' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (31, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:28:43.077' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (32, N'Admin', N'Fees', N'Create', CAST(N'2026-02-22T19:28:55.067' AS DateTime), 1, N'StudentId:1 - Amount:12000 - Date:11-02-2026 00:00:00 - CreatedBy:Admin - CreatedDate:22-02-2026 19:28:55 - ModifiedBy:Admin - ModifiedDate:22-02-2026 19:28:55 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (33, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:28:55.080' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (34, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:32:04.143' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (35, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:32:08.773' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (36, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:32:08.777' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (37, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T19:32:20.337' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (38, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:32:20.343' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (39, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:32:23.427' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (40, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:34:29.593' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (41, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:34:32.720' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (42, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:34:34.603' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (43, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:34:54.557' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (44, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:34:57.397' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (45, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:35:53.830' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (46, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:38:25.050' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (47, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:38:29.853' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (48, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:38:29.857' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (49, N'Admin', N'Fees', N'Update', CAST(N'2026-02-22T19:38:38.043' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (50, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:38:38.050' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (51, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:38:40.600' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (52, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:38:42.853' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (53, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-22T19:38:45.487' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (54, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:38:48.547' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (55, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-22T19:38:52.607' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (56, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T19:38:59.653' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (57, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:14:27.867' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (58, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:22:36.847' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (59, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:23:20.317' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (60, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:23:49.413' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (61, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-22T22:46:51.767' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (62, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T06:35:36.550' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (63, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T07:00:24.123' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (64, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:44:13.390' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (65, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:44:13.440' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (66, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:44:13.457' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (67, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:44:33.000' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (68, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:44:33.017' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (69, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:44:33.023' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (70, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:44:34.303' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (71, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:44:41.400' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (72, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:44:46.690' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (73, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:44:46.690' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (74, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:44:46.693' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (75, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:48:22.940' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (76, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:48:22.950' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (77, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:48:22.957' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (78, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:49:33.460' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (79, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:50:09.300' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (80, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:51:50.347' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (81, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:51:55.957' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (82, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:52:00.503' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (83, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:52:00.507' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (84, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:52:00.513' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (85, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:55:54.160' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (86, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:56:37.503' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (87, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:56:37.523' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (88, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:56:37.527' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (89, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:56:43.803' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (90, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T09:57:58.963' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (91, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T09:57:58.973' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (92, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T09:57:58.980' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (93, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:00:33.887' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (94, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:00:33.900' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (95, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:00:33.903' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (96, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:00:39.947' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (97, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:00:41.703' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (98, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:00:42.823' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (99, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:00:51.060' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (100, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:03:41.217' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (101, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:03:41.230' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (102, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:03:41.233' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (103, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:03:44.563' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (13, N'usrName', N'Fees', N'Create', CAST(N'2026-02-20T07:27:02.393' AS DateTime), 0, N'StudentId:1 - Amount:24000 - Date:17-01-0001 00:00:00 - CreatedBy:usrName - CreatedDate:20-02-2026 07:27:02 - ModifiedBy:usrName - ModifiedDate:20-02-2026 07:27:02 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (104, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:03:45.923' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (105, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:03:51.900' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (106, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:03:54.443' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (107, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:03:54.447' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (108, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:03:54.450' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (109, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:08:48.407' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (110, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:09:24.793' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (111, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-23T10:09:32.550' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (112, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:09:37.433' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (113, N'System', N'Student', N'RetrieveById', CAST(N'2026-02-23T10:09:55.607' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (114, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:10:24.833' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (115, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:10:28.300' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (116, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:10:33.710' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (117, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:12:24.123' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (118, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:12:27.267' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (119, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:30:59.690' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (120, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:30:59.727' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (121, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:30:59.737' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (122, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:31:10.757' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (123, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:31:16.347' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (124, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:31:16.350' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (125, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:31:59.977' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (126, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:32:00.007' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (127, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:32:00.017' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (128, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:32:54.760' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (129, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:32:58.677' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (130, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:32:58.690' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (131, N'Admin', N'Fees', N'Update', CAST(N'2026-02-23T10:33:11.957' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (132, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:33:11.997' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (133, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:33:14.173' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (134, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:33:16.397' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (135, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:33:18.060' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (136, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:33:20.737' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (137, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:36:02.947' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (138, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:36:02.963' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (139, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:36:02.970' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (140, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:36:05.417' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (141, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:36:10.133' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (142, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:36:10.133' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (143, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:36:15.647' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (144, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:36:17.237' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (145, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:36:19.087' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (146, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:44:20.900' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (147, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T10:44:20.927' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (148, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T10:44:20.937' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (149, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T10:44:44.717' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (150, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:44:48.740' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (151, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:45:51.577' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (152, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T10:45:56.460' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (153, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:19:27.480' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (154, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:19:27.487' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (155, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:19:27.490' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (156, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:19:40.567' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (157, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:19:49.027' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (158, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:22:29.313' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (159, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:22:38.833' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (160, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:22:40.483' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (161, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:22:40.487' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (162, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:22:44.393' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (163, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:24:53.220' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (164, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:24:53.227' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (165, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:24:53.227' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (166, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:25:00.833' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (167, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:25:03.420' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (168, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:26:22.983' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (169, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:26:22.990' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (170, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:26:22.993' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (171, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:26:26.673' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (172, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:26:28.500' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (173, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:31:31.810' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (174, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:31:31.817' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (175, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:31:31.820' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (176, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:31:47.073' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (177, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:31:48.917' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (178, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:37.003' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (179, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:38.280' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (180, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:39.053' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (181, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:39.277' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (182, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:39.480' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (183, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:39.683' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (184, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:39.900' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (185, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:32:51.840' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (186, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:32:51.847' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (187, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:32:51.850' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (188, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:32:55.367' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (189, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:32:57.413' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (190, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:33:04.390' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (191, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:33:07.853' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (192, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:38:46.500' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (193, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:38:49.920' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (194, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:38:51.750' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (195, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:38:52.637' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (196, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:38:55.307' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (197, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:38:57.243' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (198, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:39:57.907' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (199, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:39:57.917' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (200, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:39:57.917' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (201, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:40:00.993' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (202, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:40:02.673' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (203, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:40:08.543' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (204, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:40:12.213' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (205, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:41:53.290' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (206, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:41:53.300' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (207, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:41:53.303' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (208, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:42:02.837' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (209, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:42:04.787' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (210, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:42:09.260' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (211, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:48:23.250' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (212, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:48:25.267' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (213, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:48:25.270' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (214, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:50:59.357' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (215, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:51:01.817' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (216, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:57:10.253' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (217, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:57:10.263' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (218, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:57:10.270' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (219, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:57:13.680' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (220, N'Admin', N'Fees', N'RetrieveById', CAST(N'2026-02-23T11:57:16.450' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (221, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T11:58:58.940' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (222, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:58:58.950' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (223, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T11:58:58.950' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (224, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T11:59:02.733' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (225, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T12:19:22.313' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (226, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T12:19:22.320' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (227, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:19:22.323' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (14, N'usrName', N'Fees', N'Create', CAST(N'2026-02-20T07:27:02.800' AS DateTime), 0, N'StudentId:1 - Amount:24000 - Date:17-01-0001 00:00:00 - CreatedBy:usrName - CreatedDate:20-02-2026 07:27:02 - ModifiedBy:usrName - ModifiedDate:20-02-2026 07:27:02 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (228, N'Admin', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-23T12:19:47.690' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (229, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T12:47:00.947' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (230, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T12:47:00.993' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (231, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:47:01.007' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (232, N'System', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-23T12:47:40.307' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (233, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T12:47:44.413' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (234, N'System', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:47:44.427' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (235, N'System', N'StudentBatch', N'RetrieveAll', CAST(N'2026-02-23T12:47:49.637' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (236, N'System', N'Student', N'RetrieveAll', CAST(N'2026-02-23T12:47:52.567' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (237, N'System', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:47:52.570' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (238, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:47:57.163' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (239, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:47:58.867' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (240, N'Admin', N'Batch', N'Create', CAST(N'2026-02-23T12:48:50.563' AS DateTime), 1, N'Title:Batch1 - Timing:12:00PM-2:00PM - Subject:HTML - CreatedBy:Admin - CreatedDate:23-02-2026 12:48:50 - ModifiedBy:Admin - ModifiedDate:23-02-2026 12:48:50 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (241, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:48:50.623' AS DateTime), 0, N'All fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (242, N'Admin', N'Batch', N'Create', CAST(N'2026-02-23T12:50:40.303' AS DateTime), 1, N'Title:Batch1 - Timing:12:00PM-2:00PM - Subject:HTML - CreatedBy:Admin - CreatedDate:23-02-2026 12:50:40 - ModifiedBy:Admin - ModifiedDate:23-02-2026 12:50:40 - IsDeleted:False')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (243, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T12:50:40.327' AS DateTime), 0, N'All fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (244, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T13:06:07.463' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (245, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T13:06:07.480' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (246, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T13:06:07.487' AS DateTime), 0, N'All fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (247, N'Admin', N'Student', N'RetrieveAll', CAST(N'2026-02-23T13:09:48.533' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (248, N'Admin', N'Fees', N'RetrieveAll', CAST(N'2026-02-23T13:09:48.563' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (249, N'Admin', N'Batch', N'RetrieveAll', CAST(N'2026-02-23T13:09:48.573' AS DateTime), 0, N'All fields')
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Batch] ON 
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Batch1', N'12:00PM-2:00P', N'HTML', N'Admin', CAST(N'2026-02-23T12:48:50.530' AS DateTime), N'Admin', CAST(N'2026-02-23T12:48:50.530' AS DateTime), 0)
GO
INSERT [dbo].[Batch] ([Id], [Title], [Timing], [Subject], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Batch1', N'12:00PM-2:00P', N'HTML', N'Admin', CAST(N'2026-02-23T12:50:40.287' AS DateTime), N'Admin', CAST(N'2026-02-23T12:50:40.287' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Batch] OFF
GO
SET IDENTITY_INSERT [dbo].[Fees] ON 
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 7, CAST(23456.0000 AS Decimal(18, 4)), CAST(N'2026-02-26' AS Date), N'Admin', CAST(N'2026-02-19T22:03:42.413' AS DateTime), N'Admin', CAST(N'2026-02-19T22:03:42.413' AS DateTime), 0)
GO
INSERT [dbo].[Fees] ([Id], [StudentId], [Amount], [Date], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 1, CAST(160000.0000 AS Decimal(18, 4)), CAST(N'2026-03-07' AS Date), N'Admin', CAST(N'2026-02-22T19:28:55.060' AS DateTime), N'Admin', CAST(N'2026-02-23T10:33:11.937' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Fees] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([Id], [FullName], [Email], [Password], [Address], [Phone], [IsAdmin], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Sihi Verma', N'sihi@gmail.com', N'123', N'Mumbai', N'9000000002', 0, N'Admin', CAST(N'2026-02-19T10:25:30.447' AS DateTime), N'Admin', CAST(N'2026-02-19T10:25:30.447' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
