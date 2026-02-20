USE [UserTaskApp]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 20-02-2026 14:12:30 ******/
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
/****** Object:  Table [dbo].[TASK]    Script Date: 20-02-2026 14:12:30 ******/
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
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[TASK] ON 
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Responsive Portfolio Website Development', N'Create a single-page, mobile-responsive portfolio website to showcase skills, projects, and resume', N'Sulaksha', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Interactive Task Manager Application', N'Develop a dynamic, interactive "To-Do List" application that allows users to add, mark as complete, edit, and delete tasks', N'Chithra', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Real-Time Data Dashboard Integration', N'Build a web application that fetches data from a public API (such as OpenWeatherMap or a free crypto API) and displays it in an attractive UI', N'Sulaksha', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Online Shopping Cart', N'Develop shopping cart with add/remove items and checkout option', N'Shravya', N'New', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Student Result Portal', N'Display student marks and grades with search functionality', N'Guru', N'In Progress', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Attendance Tracking App', N'Mark daily attendance and generate monthly reports', N'Disha', N'Testing', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Library Management System', N'Manage books, members, and issue/return records', N'Prasad', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Hospital Appointment Booking', N'Online doctor appointment scheduling system', N'Ravi', N'Done', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Expense Tracker', N'Track daily expenses and generate monthly reports', N'Deeptha', N'Testing', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
GO
INSERT [dbo].[TASK] ([Id], [Title], [Description], [AssignedTo], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Online Quiz Portal', N'Create quizzes and evaluate student performance', N'Dravya', N'New', N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), N'Admin', CAST(N'2026-02-15T22:01:52.743' AS DateTime), 0)
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
SET IDENTITY_INSERT [dbo].[TASK] OFF
GO
