USE [BiSchoolDB]
GO

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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_Create]
    @BatchId INT,
    @StudentId INT,
    @CreatedDate DATETIME,
    @CreatedBy VARCHAR(50),
    @ModifiedDate DATETIME,
    @ModifiedBy VARCHAR(50),
    @IsDeleted BIT,
    @ID INT OUTPUT
AS
BEGIN
    INSERT INTO dbo.StudentBatch
    (BatchId, StudentId, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy, IsDeleted)
    VALUES
    (@BatchId, @StudentId, @CreatedDate, @CreatedBy, @ModifiedDate, @ModifiedBy, @IsDeleted)
    SELECT @ID = SCOPE_IDENTITY()
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_ReadAll]
AS
BEGIN
    SELECT 
        SB.Id,
        SB.BatchId,
        B.Title AS BatchTitle,
        SB.StudentId,
        S.FullName AS StudentName,
        SB.CreatedDate,
        SB.CreatedBy,
        SB.ModifiedDate,
        SB.ModifiedBy,
        SB.IsDeleted
    FROM dbo.StudentBatch SB
    INNER JOIN dbo.Batch B ON SB.BatchId = B.Id
    INNER JOIN dbo.Student S ON SB.StudentId = S.Id
    WHERE SB.IsDeleted = 0
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_ReadById]
    @ID INT
AS
BEGIN
    SELECT 
        SB.Id,
        SB.BatchId,
        B.Title AS BatchTitle,
        SB.StudentId,
        S.FullName AS StudentName,
        SB.CreatedDate,
        SB.CreatedBy,
        SB.ModifiedDate,
        SB.ModifiedBy,
        SB.IsDeleted
    FROM dbo.StudentBatch SB
    INNER JOIN dbo.Batch B ON SB.BatchId = B.Id
    INNER JOIN dbo.Student S ON SB.StudentId = S.Id
    WHERE SB.Id = @ID AND SB.IsDeleted = 0
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_Update]
    @ID INT,
    @BatchId INT,
    @StudentId INT,
    @CreatedDate DATETIME,
    @CreatedBy VARCHAR(50),
    @ModifiedDate DATETIME,
    @ModifiedBy VARCHAR(50),
    @IsDeleted BIT
AS
BEGIN
    SET NOCOUNT ON
    UPDATE dbo.StudentBatch
    SET 
        BatchId = @BatchId,
        StudentId = @StudentId,
        CreatedDate = @CreatedDate,
        CreatedBy = @CreatedBy,
        ModifiedDate = @ModifiedDate,
        ModifiedBy = @ModifiedBy,
        IsDeleted = @IsDeleted
    WHERE Id = @ID
    RETURN @@ROWCOUNT
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentBatch_Delete]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON
    UPDATE dbo.StudentBatch
    SET IsDeleted = 1
    WHERE Id = @ID
    RETURN @@ROWCOUNT
END
GO