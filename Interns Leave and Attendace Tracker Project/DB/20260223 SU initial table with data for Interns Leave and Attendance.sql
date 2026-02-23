Use master;
Go
Create DataBase  Internsapp;
go


USE [Internsapp]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 23-02-2026 08:40:56 AM ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 23-02-2026 08:40:56 AM ******/
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
/****** Object:  Table [dbo].[Attendance]    Script Date: 23-02-2026 08:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InternId] [int] NOT NULL,
	[AttendanceDate] [date] NOT NULL,
	[Status] [bit] NOT NULL,
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
/****** Object:  Table [dbo].[Interns]    Script Date: 23-02-2026 08:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[UserName] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[DateOfJoining] [date] NOT NULL,
	[AvailableLeave] [int] NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
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
/****** Object:  Table [dbo].[Leave]    Script Date: 23-02-2026 08:40:56 AM ******/
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
