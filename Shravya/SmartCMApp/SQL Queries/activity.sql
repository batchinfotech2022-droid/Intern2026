USE [SmartContactManager]
GO

CREATE TABLE [dbo].[Activity](
    [ActivityID] INT IDENTITY(1,1) PRIMARY KEY,
    [UserName] VARCHAR(20) NULL,
    [ActivityOn] VARCHAR(50) NULL,
    [ActivityItem] VARCHAR(50) NULL,
    [ActivityDate] DATETIME NULL,
    [IsSuccess] BIT NULL,
    [ActivityText] VARCHAR(250) NULL
)
GO
