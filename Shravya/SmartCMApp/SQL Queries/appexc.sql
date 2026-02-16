USE [SmartContactManager]
GO

CREATE TABLE [dbo].[AppException](
    [ExceptionID] INT IDENTITY(1,1) PRIMARY KEY,
    [ExceptionSource] VARCHAR(50) NULL,
    [ExceptionDesc] VARCHAR(200) NULL,
    [ExceptionDate] DATETIME NULL,
    [IsSolved] BIT NULL,
    [Remarks] VARCHAR(100) NULL
)
GO
