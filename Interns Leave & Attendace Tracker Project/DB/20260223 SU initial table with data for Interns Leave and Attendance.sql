USE MASTER;
CREATE DATABASE Internsapp;
go


USE [Internsapp]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 27-02-2026 10:04:27 ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 27-02-2026 10:04:27 ******/
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
/****** Object:  Table [dbo].[Attendance]    Script Date: 27-02-2026 10:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InternId] [int] NOT NULL,
	[AttendanceDate] [date] NOT NULL,
	[Status] [varchar](20) NOT NULL,
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
/****** Object:  Table [dbo].[Interns]    Script Date: 27-02-2026 10:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](max) NOT NULL,
	[DateOfJoining] [date] NOT NULL,
	[AvailableLeave] [int] NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [varchar](13) NULL,
	[IsSystemAdmin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[NoOfAttempts] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Leave]    Script Date: 27-02-2026 10:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InternId] [int] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Reason] [varchar](250) NULL,
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
SET IDENTITY_INSERT [dbo].[Activity] ON 
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T10:24:43.343' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (2, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T10:24:48.747' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (3, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T10:44:21.457' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (4, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T12:52:38.080' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (5, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-24T12:52:51.767' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (6, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-24T12:52:54.680' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (7, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-24T12:52:55.793' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (8, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-24T12:52:59.100' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (9, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T12:53:00.653' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (10, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T12:53:24.653' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (11, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-24T12:53:29.603' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (12, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T12:53:38.367' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (13, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-24T13:00:41.600' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (14, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-24T13:00:44.430' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (15, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-24T13:00:46.633' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (16, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-24T13:00:49.947' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (17, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T08:26:05.927' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (18, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-25T08:26:08.440' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (19, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-25T08:26:14.100' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (20, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T08:26:16.537' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (21, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T09:51:30.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (22, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T09:51:47.617' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (52, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:00:37.533' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (53, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:00:41.880' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (54, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:00:50.717' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (55, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:00:58.543' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (56, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:02:45.360' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (57, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:02:52.627' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (58, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:03:44.940' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (59, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:03:44.953' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (60, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:03:51.797' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (61, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T12:03:53.480' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (62, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-25T12:04:00.240' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (63, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:07:21.803' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (64, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:07:21.820' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (65, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:14:36.310' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (66, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:14:36.327' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (67, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:14:44.307' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (68, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:14:50.460' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (69, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T12:14:59.157' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (70, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:15:01.947' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (71, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:41:10.477' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (72, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:41:10.497' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (73, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:41:18.453' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (74, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:41:18.463' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (75, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:41:43.230' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (76, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:42:05.477' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (77, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T12:42:27.853' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (78, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T12:42:47.060' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (79, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-25T12:42:50.000' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (80, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:46:33.403' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (81, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:46:33.413' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (82, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:46:38.883' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (83, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:48:50.387' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (84, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:49:50.980' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (85, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:50:24.717' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (86, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:50:59.567' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (87, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T12:50:59.583' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (88, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T12:51:02.350' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (92, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:18:08.750' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (93, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:18:08.780' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (94, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:18:14.173' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (95, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:29:30.220' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (96, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:29:30.230' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (97, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:29:35.873' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (98, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:34:37.890' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (99, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:34:37.897' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (100, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:34:40.327' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (101, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:37:25.413' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (102, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:37:25.427' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (103, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T14:37:36.557' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (104, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:38:23.240' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (105, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:39:46.203' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (106, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:42:08.470' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (107, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:42:08.490' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (108, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:42:20.117' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (109, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:47:02.747' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (110, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:47:02.760' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (111, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:47:06.677' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (112, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:52:07.060' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (113, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:52:07.083' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (114, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:52:09.597' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (115, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:53:53.610' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (116, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:53:53.610' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (117, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:53:55.770' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (118, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:57:43.137' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (119, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T14:57:43.147' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (120, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T14:57:47.133' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (121, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:03:17.997' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (122, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:03:18.017' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (123, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:03:23.073' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (124, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:09:56.610' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (125, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:09:56.627' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (126, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:10:00.793' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (127, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:12:40.880' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (128, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:12:40.890' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (129, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:12:47.963' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (130, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:20:13.940' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (131, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:20:51.843' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (132, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:21:08.860' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (133, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:21:17.140' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (134, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:21:17.147' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (135, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:22:13.480' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (136, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:22:19.937' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (137, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:24:57.193' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (138, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:24:57.210' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (139, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:25:02.583' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (140, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:29:17.343' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (141, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:30:10.193' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (142, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T15:31:28.837' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (143, N'Admin', N'Leave', N'RetrieveAll', CAST(N'2026-02-25T15:31:46.200' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (144, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-25T15:32:20.837' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (145, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:32:39.107' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (146, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:33:43.660' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (147, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:33:43.683' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (148, N'Admin', N'Attendance', N'RetrieveAll', CAST(N'2026-02-25T15:33:49.123' AS DateTime), 1, N'All Fields')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (149, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:33:52.410' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (150, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:36:50.370' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (151, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:36:50.390' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (152, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:36:54.797' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (153, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:40:33.480' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (154, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:40:33.493' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (155, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:40:40.497' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (156, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:41:34.737' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (162, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-25T22:14:51.013' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1162, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:07:31.520' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1163, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:07:43.260' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1164, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:07:46.263' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (23, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:02:09.857' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (24, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:06:21.120' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (25, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:07:12.987' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (26, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:07:16.537' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (27, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:07:19.263' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (28, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:07:22.943' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (29, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:08:30.873' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (30, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:08:33.080' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (31, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:08:34.527' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (32, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:08:36.620' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (33, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:08:37.320' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (34, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:08:55.007' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (35, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:09:06.517' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (36, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:09:08.330' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (37, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:15:29.797' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (38, N'Sulaksha', N'Intern', N'Delete', CAST(N'2026-02-25T10:15:32.293' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (39, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:15:32.307' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (40, N'Sulaksha', N'Intern', N'Delete', CAST(N'2026-02-25T10:15:33.627' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (41, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:15:33.640' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (42, N'Sulaksha', N'Intern', N'Delete', CAST(N'2026-02-25T10:15:34.600' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (43, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:15:34.613' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (44, N'Sulaksha', N'Intern', N'Delete', CAST(N'2026-02-25T10:16:01.997' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (45, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:16:02.010' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (46, N'Sulaksha', N'Intern', N'Delete', CAST(N'2026-02-25T10:16:03.330' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (47, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:16:03.343' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (48, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:17:34.420' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (49, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:17:52.120' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (50, N'Admin', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T10:21:06.893' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (89, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T13:12:11.990' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (90, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T13:12:12.023' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (91, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T13:12:17.057' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (157, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:53:54.967' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (158, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T15:53:55.007' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (159, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:54:00.340' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (160, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T15:54:13.737' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (161, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T16:04:04.550' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (163, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-25T22:15:03.170' AS DateTime), 0, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1165, N'sulaksha', N'Intern', N'Create', CAST(N'2026-02-26T06:08:25.907' AS DateTime), 1, N'sara')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1166, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:08:25.927' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1167, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:08:38.760' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1199, N'sulaksha', N'Attendance', N'Update', CAST(N'2026-02-26T06:26:56.970' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1200, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:26:57.003' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1201, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:26:59.963' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1202, N'sulaksha', N'Attendance', N'Create', CAST(N'2026-02-26T06:27:07.770' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1203, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:27:07.793' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1204, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:27:10.130' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1205, N'sulaksha', N'Attendance', N'Create', CAST(N'2026-02-26T06:27:18.027' AS DateTime), 1, N'7')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1206, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:27:18.053' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1207, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:27:19.800' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1208, N'sulaksha', N'Attendance', N'Create', CAST(N'2026-02-26T06:27:27.447' AS DateTime), 1, N'9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1209, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:27:27.467' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1210, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:27:33.520' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1211, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:27:36.833' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1212, N'Admin', N'Leave', N'Create', CAST(N'2026-02-26T06:28:12.910' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1213, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:28:12.957' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1214, N'sulaksha', N'Leave', N'RetrieveById', CAST(N'2026-02-26T06:28:15.430' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1215, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:28:15.437' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1216, N'Admin', N'Leave', N'Update', CAST(N'2026-02-26T06:28:19.883' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1217, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:28:19.920' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1218, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:28:22.897' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1219, N'Admin', N'Leave', N'Create', CAST(N'2026-02-26T06:28:43.617' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1220, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:28:43.643' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1221, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-26T06:28:47.450' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1222, N'sulaksha', N'Leave', N'RetrieveById', CAST(N'2026-02-26T06:28:49.273' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1223, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:28:49.283' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1229, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:31:20.050' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1230, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:31:36.850' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1231, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T09:31:44.870' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1232, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T09:31:48.700' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1233, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:31:52.413' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1234, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:35:15.667' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1235, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:38:55.790' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1236, N'shravya', N'Intern', N'RetrieveById', CAST(N'2026-02-26T09:39:09.367' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1237, N'shravya', N'Intern', N'RetrieveById', CAST(N'2026-02-26T09:39:46.760' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1238, N'shravya', N'Intern', N'Update', CAST(N'2026-02-26T09:39:46.777' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1240, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T09:41:07.133' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1241, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T09:41:09.170' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1242, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T09:41:11.143' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1243, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:41:18.817' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1244, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:43:06.690' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1245, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:43:09.623' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1246, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T09:43:11.223' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1247, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T09:43:13.353' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1248, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:06:17.950' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1249, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:07:49.550' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1250, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:08:14.493' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1251, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:08:20.250' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1252, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:08:21.393' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1253, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:09:10.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1254, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:09:34.617' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1255, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T10:09:35.857' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1256, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:09:38.080' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1257, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:09:40.767' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1258, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:14:40.867' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1259, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:15:50.993' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1260, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:16:05.473' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1261, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T10:16:12.323' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1262, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:16:14.747' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1263, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T10:16:25.897' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1264, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:16:28.130' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1265, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:16:40.717' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1266, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T10:17:07.957' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1267, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:17:09.797' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1268, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:17:11.750' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1269, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:30:35.713' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1270, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:30:45.010' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1271, N'shravya', N'Leave', N'RetrieveById', CAST(N'2026-02-26T10:30:46.757' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1272, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:30:46.757' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1273, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:30:48.203' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1274, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-26T10:30:50.197' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1275, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T10:30:55.393' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1276, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:38:00.777' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1277, N'shravya', N'Intern', N'RetrieveById', CAST(N'2026-02-26T10:38:14.020' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1278, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:38:16.597' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1279, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T10:38:21.693' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1280, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:21:29.787' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1281, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:22:09.153' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1282, N'shravya', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:22:10.970' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1283, N'shravya', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:22:17.013' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1284, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:24:28.933' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1285, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:31:26.750' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1286, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:31:33.543' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1287, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:31:35.130' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1288, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:31:36.630' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1289, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:41:28.323' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1290, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:41:37.927' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1291, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:41:39.933' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1292, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:41:50.587' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1293, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:42:15.003' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1294, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:45:42.493' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1295, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:48:27.517' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1296, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:48:48.827' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (51, N'shravya', N'Intern', N'Update', CAST(N'2026-02-25T11:31:59.677' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1239, N'shravya', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T09:39:46.780' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1297, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:49:06.600' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1298, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:49:09.513' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1299, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:49:35.130' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1300, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:49:41.980' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1301, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:50:01.173' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1302, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:50:40.770' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1303, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:50:44.707' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1304, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:50:50.043' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1305, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:51:32.443' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1306, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:52:22.083' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1307, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:52:29.760' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1308, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T11:52:31.623' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1309, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:52:33.583' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1310, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:52:35.473' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1311, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:52:37.530' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1312, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T11:52:46.487' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1313, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:52:48.057' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1314, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:53:15.213' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1315, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:53:28.603' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1316, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T11:55:14.513' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1317, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:13:06.147' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1318, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:13:10.480' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1319, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:13:51.057' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1320, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:13:59.090' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1321, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:14:12.257' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1322, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:14:19.070' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1323, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:14:21.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1324, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:14:23.073' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1325, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:16:35.187' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1326, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:27:07.447' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1327, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:27:58.913' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1328, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:28:44.460' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1329, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:30:14.707' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1330, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:31:25.053' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1331, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:33:23.883' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1332, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:43:15.487' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1333, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:43:29.990' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1334, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:43:42.870' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1335, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:44:34.780' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1336, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:44:46.077' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1337, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:44:56.627' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1338, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:46:25.947' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1339, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:49:16.180' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1340, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:49:57.930' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1341, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:50:04.660' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1342, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:50:06.357' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1343, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:50:13.153' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1344, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:50:15.017' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1345, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:50:18.060' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1346, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:51:01.233' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1347, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:53:11.497' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1348, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:53:42.910' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1349, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:53:45.690' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1350, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:54:47.930' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1351, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:54:56.380' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1352, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:55:07.957' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1353, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T12:55:11.577' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1354, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:55:12.840' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1355, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:55:14.653' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1356, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:55:18.710' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1357, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:55:19.747' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1358, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:55:22.437' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1359, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:55:24.793' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1360, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T12:55:25.303' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1361, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T12:55:33.227' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1362, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T13:02:50.120' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1363, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T13:53:28.623' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1364, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T13:53:57.493' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1365, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:15:51.487' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1366, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:16:00.930' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1367, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T14:16:02.833' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1368, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T14:16:05.843' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1369, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T14:16:05.900' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1374, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T14:16:11.457' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1375, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:16:11.500' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1376, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T14:16:15.320' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1377, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T14:16:16.830' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1378, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:19:40.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1379, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:22:49.467' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1380, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:23:01.457' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1381, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:23:38.883' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1382, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T14:28:29.673' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1383, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T14:28:33.633' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1384, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T14:28:35.997' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1385, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:28:39.183' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1386, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T14:28:51.067' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1387, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T14:28:53.200' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1388, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T14:29:00.750' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1389, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T15:01:26.743' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1390, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T15:01:34.303' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1391, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T15:01:38.113' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1392, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T15:01:52.800' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1393, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T15:01:59.250' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1394, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T15:02:04.277' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1395, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T15:02:17.770' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1396, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T15:02:39.120' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1397, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T21:56:09.003' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1398, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T21:56:27.620' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1399, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T21:56:29.737' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1400, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T21:56:31.683' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1401, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T21:56:34.663' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1402, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T21:56:41.647' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1403, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T21:56:47.800' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1404, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:24:20.680' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1405, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:28:54.987' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1406, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:30:05.953' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1407, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:30:22.790' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1408, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:31:52.517' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1409, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:32:08.267' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1410, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:32:26.663' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1411, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:32:52.493' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1412, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:34:43.567' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1413, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:37:47.240' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1414, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T22:38:48.387' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1415, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:38:56.087' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1416, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:39:59.763' AS DateTime), 1, N'9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1417, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:40:06.507' AS DateTime), 1, N'9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1426, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T22:41:13.633' AS DateTime), 1, N'divya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1427, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:41:13.663' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1428, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:41:22.033' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1429, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:41:24.530' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1430, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T22:41:24.543' AS DateTime), 1, N'aishu')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1431, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:41:24.567' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1432, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:41:44.653' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1433, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:41:46.640' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1168, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:14:01.513' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1169, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:14:03.760' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1170, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:14:27.153' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1171, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:14:34.450' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1172, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:14:47.307' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1173, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:14:50.573' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1174, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:15:12.717' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1175, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:15:16.037' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1176, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:15:19.397' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1177, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:15:24.367' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1178, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:15:27.613' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1179, N'sulaksha', N'Intern', N'Delete', CAST(N'2026-02-26T06:15:33.107' AS DateTime), 1, N'11')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1180, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:15:33.133' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1181, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:15:58.477' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1182, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:16:01.560' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1183, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:26:03.277' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1184, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:26:07.343' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1185, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T06:26:21.260' AS DateTime), 1, N'5')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1194, N'sulaksha', N'Attendance', N'Update', CAST(N'2026-02-26T06:26:51.707' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1195, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:26:51.740' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1196, N'sulaksha', N'Attendance', N'RetrieveById', CAST(N'2026-02-26T06:26:53.763' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1197, N'sulaksha', N'Attendance', N'RetrieveById', CAST(N'2026-02-26T06:26:55.050' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1198, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:26:55.057' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1224, N'Admin', N'Leave', N'Update', CAST(N'2026-02-26T06:28:52.840' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1225, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:28:52.870' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1226, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-26T06:28:54.567' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1227, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:28:56.553' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1228, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T06:29:01.027' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1370, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T14:16:05.973' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1422, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T22:40:18.420' AS DateTime), 1, N'aishu')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1423, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:40:18.453' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1434, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T22:42:36.327' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1435, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:42:38.680' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1436, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T22:45:40.187' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1437, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:45:55.487' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1438, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:45:56.993' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1439, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:47:05.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1440, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:50:17.893' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1441, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:50:38.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1442, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:51:02.687' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1443, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:51:44.200' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1444, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:52:07.587' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1445, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:52:46.067' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1446, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:52:47.280' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1447, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:52:47.497' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1448, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:52:55.937' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1449, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:52:57.490' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1450, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:53:05.707' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1451, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:53:27.027' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1452, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:53:33.123' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1453, N'System', N'Intern', N'Update', CAST(N'2026-02-26T22:53:33.147' AS DateTime), 1, N'megha')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1454, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:53:33.193' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1455, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:53:36.233' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1456, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:54:01.347' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1457, N'System', N'Intern', N'Update', CAST(N'2026-02-26T22:54:01.360' AS DateTime), 1, N'prajna')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1458, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:54:01.373' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1459, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:00:58.993' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1460, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:01:01.683' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1461, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:01:06.513' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1462, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:01:08.877' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1463, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:01:57.420' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1464, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:01:59.743' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1465, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:02:05.967' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1466, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:02:37.600' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1467, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:02:39.943' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1468, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:03:14.100' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1469, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:03:16.207' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1470, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:03:18.953' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1471, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T23:11:06.050' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1472, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:11:14.877' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1473, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:11:16.480' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1474, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:11:19.843' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1475, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:11:21.557' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1476, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T23:11:25.387' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1477, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:11:29.313' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1478, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:11:30.977' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1479, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T23:12:18.133' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1480, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:12:21.213' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1481, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:12:25.603' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1482, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T23:12:27.703' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1483, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:12:29.143' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1484, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T23:12:42.527' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1485, N'sulaksha', N'Leave', N'RetrieveAll', CAST(N'2026-02-26T23:12:45.970' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1486, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:12:47.030' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1487, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:12:49.140' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1488, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:12:50.980' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1489, N'sulaksha', N'Attendance', N'RetrieveById', CAST(N'2026-02-26T23:13:12.913' AS DateTime), 1, N'4')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1490, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:13:12.923' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1491, N'sulaksha', N'Attendance', N'Update', CAST(N'2026-02-26T23:13:18.060' AS DateTime), 1, N'9')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1493, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:17:33.963' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1494, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:17:38.753' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1495, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:17:42.397' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1496, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:17:44.163' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1497, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:17:52.803' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1498, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:17:54.853' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1499, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:18:03.367' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1500, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:32:44.047' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1501, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:32:48.110' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1502, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:32:50.123' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1503, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:32:51.470' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1504, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:33:50.450' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1505, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:33:52.307' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1506, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:34:02.307' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1507, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:34:04.427' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1508, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:34:06.633' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1509, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:34:20.233' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1510, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:41:58.037' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1511, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:42:06.097' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1512, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:47:38.293' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1513, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:48:11.203' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1514, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:49:13.243' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1515, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:49:16.483' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1516, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:49:18.010' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1517, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:49:24.800' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1518, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:49:26.527' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1519, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:49:28.447' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1520, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:49:30.583' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1521, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:49:32.850' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1522, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:49:34.470' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1523, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:49:53.587' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1524, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:49:55.543' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1525, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:50:03.100' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1526, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:50:06.463' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1527, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:54:20.287' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1528, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:54:21.970' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1529, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:54:24.637' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1530, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:54:26.440' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1531, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:54:31.450' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1532, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:54:34.313' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1533, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:55:36.193' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1534, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:55:38.017' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1186, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T06:26:21.297' AS DateTime), 1, N'sakshi')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1187, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:26:21.313' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1188, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:26:28.747' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1189, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:26:31.723' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1190, N'sulaksha', N'Attendance', N'Create', CAST(N'2026-02-26T06:26:41.903' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1191, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T06:26:41.987' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1192, N'sulaksha', N'Attendance', N'RetrieveById', CAST(N'2026-02-26T06:26:43.657' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1193, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T06:26:43.667' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1492, N'sulaksha', N'Attendance', N'RetrieveAll', CAST(N'2026-02-26T23:13:18.117' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1535, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:55:48.313' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1536, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:56:30.353' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1537, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:56:32.267' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1538, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:56:34.967' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1539, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:56:36.910' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1540, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:56:45.807' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1541, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:56:48.297' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1542, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:56:55.940' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1543, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-26T23:56:57.980' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1544, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:57:04.607' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1545, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T23:59:33.480' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1546, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:02:27.080' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1547, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:32.087' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1548, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:02:33.943' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1549, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:36.450' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1550, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:02:39.560' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1551, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:02:41.723' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1552, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:41.730' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1553, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:02:44.113' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1554, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:45.677' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1555, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:02:47.330' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1556, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:49.210' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1557, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:02:51.190' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1558, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:52.773' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1559, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:02:56.433' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1560, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:03:11.090' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1561, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:03:30.357' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1562, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:05:12.590' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1563, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:05:21.620' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1564, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:05:24.390' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1565, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:05:26.773' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1566, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:05:26.783' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1567, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:05:29.157' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1568, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:05:34.960' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1569, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:05:38.003' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1570, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:05:40.353' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1571, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:06:28.807' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1572, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:06:32.627' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1573, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:06:35.200' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1574, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:06:39.200' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1575, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:06:41.293' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1576, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:07:00.763' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1577, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:16:04.553' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1578, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:16:16.107' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1579, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T00:16:19.637' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1580, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T00:16:21.297' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1581, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:16:23.717' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1582, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:16:27.593' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1583, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:16:33.450' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1584, N'System', N'Intern', N'Update', CAST(N'2026-02-27T00:16:33.513' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1585, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:16:33.557' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1589, N'System', N'Intern', N'Update', CAST(N'2026-02-27T00:16:46.793' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1590, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T00:16:46.817' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1591, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T06:16:20.790' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1592, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:16:30.340' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1593, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T06:16:34.850' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1594, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T06:16:38.373' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1595, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:16:38.393' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1596, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T06:16:41.223' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1597, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T06:16:43.190' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1598, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T06:16:45.400' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1599, N'System', N'Attendance', N'RetrieveById', CAST(N'2026-02-27T06:16:47.463' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1600, N'System', N'Attendance', N'RetrieveAll', CAST(N'2026-02-27T06:16:51.323' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1601, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:24:49.070' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1602, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T06:24:53.677' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1603, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T06:25:02.443' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1604, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-27T06:25:02.477' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1606, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T06:25:06.890' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1607, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T06:25:08.630' AS DateTime), 1, N'2')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1608, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:25:11.547' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1609, N'sulaksha', N'Intern', N'Create', CAST(N'2026-02-27T06:26:08.273' AS DateTime), 1, N'arya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1610, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:26:08.290' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1611, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:34:36.607' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1612, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:34:45.917' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1613, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:34:48.103' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1614, N'System', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:34:50.230' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1615, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:34:50.243' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1616, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:35:37.223' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1617, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:35:42.700' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1618, N'System', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:35:45.577' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1619, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:35:45.593' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1620, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:35:53.280' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1621, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:35:58.977' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1622, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:39:05.793' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1623, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:39:08.873' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1624, N'System', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:39:11.063' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1625, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:39:11.070' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1626, N'Admin', N'Leave', N'Update', CAST(N'2026-02-27T06:39:14.110' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1628, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:39:16.593' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1629, N'System', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:39:19.023' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1630, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:39:19.033' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1631, N'Admin', N'Leave', N'Update', CAST(N'2026-02-27T06:39:20.410' AS DateTime), 1, N'8')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1632, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:39:20.437' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1633, N'Admin', N'Leave', N'RetrieveById', CAST(N'2026-02-27T06:39:22.463' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1634, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:39:32.257' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1635, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:39:36.070' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1636, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:54:43.777' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1371, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T14:16:07.660' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1372, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T14:16:09.783' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1373, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T14:16:11.440' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1418, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-26T22:40:06.557' AS DateTime), 1, N'shravya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1419, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-26T22:40:06.590' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1420, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:40:13.610' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1421, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:40:18.410' AS DateTime), 1, N'6')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1605, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T06:25:02.510' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1627, N'System', N'Leave', N'RetrieveAll', CAST(N'2026-02-27T06:39:14.180' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1424, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:40:22.057' AS DateTime), 1, N'10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1425, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-26T22:41:13.617' AS DateTime), 1, N'10')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1586, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:16:37.317' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1587, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:16:40.207' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1588, N'System', N'Intern', N'RetrieveById', CAST(N'2026-02-27T00:16:46.777' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1637, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:14.163' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1639, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:14.163' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1644, N'sulaksha', N'Intern', N'Update', CAST(N'2026-02-27T09:55:47.367' AS DateTime), 1, N'Adhya')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1645, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:47.393' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1646, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T09:55:48.953' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1647, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:51.927' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1638, N'System', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:14.163' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1640, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:34.143' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1641, N'sulaksha', N'Intern', N'RetrieveAll', CAST(N'2026-02-27T09:55:43.043' AS DateTime), 1, N'All')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1642, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T09:55:44.587' AS DateTime), 1, N'1')
GO
INSERT [dbo].[Activity] ([ActivityID], [UserName], [ActivityOn], [ActivityItem], [ActivityDate], [IsSuccess], [ActivityText]) VALUES (1643, N'sulaksha', N'Intern', N'RetrieveById', CAST(N'2026-02-27T09:55:47.330' AS DateTime), 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 
GO
INSERT [dbo].[Attendance] ([Id], [InternId], [AttendanceDate], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 2, CAST(N'2026-02-26' AS Date), N'Half Day', N'sulaksha', CAST(N'2026-02-26T06:26:41.863' AS DateTime), N'sulaksha', CAST(N'2026-02-26T06:26:56.963' AS DateTime), 0)
GO
INSERT [dbo].[Attendance] ([Id], [InternId], [AttendanceDate], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 5, CAST(N'2026-02-26' AS Date), N'Present', N'sulaksha', CAST(N'2026-02-26T06:27:07.750' AS DateTime), N'sulaksha', CAST(N'2026-02-26T06:27:07.750' AS DateTime), 0)
GO
INSERT [dbo].[Attendance] ([Id], [InternId], [AttendanceDate], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 7, CAST(N'2026-02-26' AS Date), N'Leave', N'sulaksha', CAST(N'2026-02-26T06:27:18.010' AS DateTime), N'sulaksha', CAST(N'2026-02-26T06:27:18.010' AS DateTime), 0)
GO
INSERT [dbo].[Attendance] ([Id], [InternId], [AttendanceDate], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 9, CAST(N'2026-02-26' AS Date), N'Absent', N'sulaksha', CAST(N'2026-02-26T06:27:27.430' AS DateTime), N'sulaksha', CAST(N'2026-02-26T23:13:18.030' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Interns] ON 
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Adhya', N'Sharma', N'Adhya', N'admin123', CAST(N'2024-01-01' AS Date), 0, N'Mangalore', N'99877612445', 1, 1, 0, 0, N'system', CAST(N'2026-02-26T06:00:23.537' AS DateTime), N'sulaksha', CAST(N'2026-02-27T09:55:47.337' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Sulaksha', N'Shetty', N'sulaksha', N'123456', CAST(N'2024-06-01' AS Date), 12, N'Udupi', N'9876543210', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:00:23.537' AS DateTime), N'admin', CAST(N'2026-02-26T06:00:23.537' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Rahul', N'Rao', N'rahul', N'123456', CAST(N'2024-06-15' AS Date), 10, N'Mangalore', N'9876500001', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Prajna', N'Kapoor', N'prajna', N'123456', CAST(N'2024-07-01' AS Date), 0, N'Bangalore', N'9876500002', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'System', CAST(N'2026-02-26T22:54:01.347' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Sakshi', N'Bhat', N'sakshi', N'123456', CAST(N'2024-07-10' AS Date), 0, N'Manipal', N'9876500003', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'sulaksha', CAST(N'2026-02-26T06:26:21.270' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Aishwarya', N'Rao', N'aishu', N'123456', CAST(N'2024-08-01' AS Date), 0, N'Udupi', N'9876500004', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'sulaksha', CAST(N'2026-02-26T22:41:24.533' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Chithra', N'Acharya', N'chitra', N'123456', CAST(N'2024-08-05' AS Date), 12, N'Karkala', N'9876500005', 0, 0, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Megha', N'Poojary', N'megha', N'123456', CAST(N'2024-08-12' AS Date), 0, N'Moodbidri', N'9876500006', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'System', CAST(N'2026-02-26T22:53:33.130' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Shravya', N'Kulal', N'shravya', N'123456', CAST(N'2024-09-01' AS Date), 0, N'Surathkal', N'9876500007', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'sulaksha', CAST(N'2026-02-26T22:40:06.513' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Divya', N'Gowda', N'divya', N'123456', CAST(N'2024-09-10' AS Date), 0, N'Bangalore', N'9876500008', 0, 1, 0, 0, N'admin', CAST(N'2026-02-26T06:02:12.527' AS DateTime), N'sulaksha', CAST(N'2026-02-26T22:41:13.623' AS DateTime), 0)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, N'Sara', N'Khan', N'sara', N'123456', CAST(N'2026-02-26' AS Date), 0, N'Delhi', N'7760847590', 0, 0, 0, 0, N'sulaksha', CAST(N'2026-02-26T06:08:25.887' AS DateTime), N'sulaksha', CAST(N'2026-02-26T06:15:33.090' AS DateTime), 1)
GO
INSERT [dbo].[Interns] ([Id], [FirstName], [LastName], [UserName], [Password], [DateOfJoining], [AvailableLeave], [Address], [Phone], [IsSystemAdmin], [IsActive], [IsLocked], [NoOfAttempts], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, N'Arya', N'Shet', N'arya', N'114477', CAST(N'2026-02-27' AS Date), 0, N'Goa', N'+917789487711', 0, 1, 0, 0, N'sulaksha', CAST(N'2026-02-27T06:26:08.267' AS DateTime), N'sulaksha', CAST(N'2026-02-27T06:26:08.267' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Interns] OFF
GO
SET IDENTITY_INSERT [dbo].[Leave] ON 
GO
INSERT [dbo].[Leave] ([Id], [InternId], [FromDate], [ToDate], [Reason], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 8, CAST(N'2026-02-25T00:00:00.000' AS DateTime), CAST(N'2026-02-28T00:00:00.000' AS DateTime), N'Sick Leave', N'Admin', CAST(N'2026-02-26T06:28:12.880' AS DateTime), N'', CAST(N'2026-02-27T06:39:20.400' AS DateTime), 0)
GO
INSERT [dbo].[Leave] ([Id], [InternId], [FromDate], [ToDate], [Reason], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(N'2026-02-22T00:00:00.000' AS DateTime), CAST(N'2026-02-26T00:00:00.000' AS DateTime), N'Casual Leave', N'Admin', CAST(N'2026-02-26T06:28:43.603' AS DateTime), N'', CAST(N'2026-02-26T06:28:52.830' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Leave] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Contact_UserName]    Script Date: 27-02-2026 10:04:27 ******/
ALTER TABLE [dbo].[Interns] ADD  CONSTRAINT [UQ_Contact_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
