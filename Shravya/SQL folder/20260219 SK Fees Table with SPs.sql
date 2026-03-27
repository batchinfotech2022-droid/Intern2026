USE [BiSchoolDB]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 19-02-2026 15:36:03 ******/
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
/****** Object:  StoredProcedure [dbo].[Fees_Create]    Script Date: 19-02-2026 15:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER  PROCEDURE [dbo].[Fees_Create]
    @StudentId     INT,
    @Amount        DECIMAL(18,4),
    @Date      DATE,
    @CreatedBy     VARCHAR(MAX),
    @CreatedDate   DATETIME,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Id            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Fees
    (
        StudentId, Amount, [Date],
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @StudentId,
		@Amount,
		@Date,
        @CreatedBy,
		@CreatedDate,
		@ModifiedBy,
		@ModifiedDate, 
		@IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_Delete]    Script Date: 19-02-2026 15:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER     PROCEDURE [dbo].[Fees_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Fees
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_ReadAll]    Script Date: 19-02-2026 15:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER    PROCEDURE [dbo].[Fees_ReadAll]
AS
BEGIN
    SELECT 
        F.Id,
        F.StudentId,
        S.FullName AS StudentName,
        F.Amount,
        F.[Date],
        F.CreatedDate,
        F.CreatedBy,
        F.ModifiedDate,
        F.ModifiedBy,
        F.IsDeleted
    FROM dbo.Fees F
    INNER JOIN Student S ON F.StudentId = S.Id
    WHERE F.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_ReadByID]    Script Date: 19-02-2026 15:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER     PROCEDURE [dbo].[Fees_ReadByID]
    @Id INT
AS
BEGIN
    SELECT 
        F.Id,
        F.StudentId,
        S.FullName AS StudentName,
        F.Amount,
        F.[Date],
        F.CreatedDate,
        F.CreatedBy,
        F.ModifiedDate,
        F.ModifiedBy,
        F.IsDeleted
    FROM dbo.Fees F
    INNER JOIN Student S ON F.StudentId = S.Id
    WHERE F.Id = @Id
      AND F.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Fees_Update]    Script Date: 19-02-2026 15:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER    PROCEDURE [dbo].[Fees_Update]
    @StudentId     INT,
    @Amount        DECIMAL(18,4),
    @Date      DATE,
    @ModifiedBy    VARCHAR(MAX),
    @ModifiedDate  DATETIME,
    @IsDeleted     BIT,
    @Id            INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Fees
    SET
        StudentId = @StudentId,
        Amount = @Amount,
        [Date] = @Date,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id
      AND IsDeleted = 0;

    RETURN @@ROWCOUNT;
END
GO
