USE [master]
GO

CREATE DATABASE UseTaskApp;
GO

USE [UserTaskApp]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 25-02-2026 22:41:47 ******/
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
/****** Object:  Table [dbo].[AppException]    Script Date: 25-02-2026 22:41:47 ******/
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
/****** Object:  Table [dbo].[TASK]    Script Date: 25-02-2026 22:41:47 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 25-02-2026 22:41:47 ******/
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
