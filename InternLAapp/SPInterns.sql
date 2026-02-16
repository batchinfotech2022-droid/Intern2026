USE [InternLAapp]
GO

/****** Object:  StoredProcedure [dbo].[Interns_Create]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_Create]
    @FullName VARCHAR(MAX),
    @DateOfJoining DATE,
    @AvailableLeave INT,
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Interns]
    (
        FullName,
        DateOfJoining,
        AvailableLeave,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @FullName,
        @DateOfJoining,
        @AvailableLeave,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO

/****** Object:  StoredProcedure [dbo].[Interns_ReadAll]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        FullName,
        DateOfJoining,
        AvailableLeave,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Interns
    WHERE IsDeleted = 0;
END
GO

/****** Object:  StoredProcedure [dbo].[Interns_ReadByID]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_ReadByID]
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        FullName,
        DateOfJoining,
        AvailableLeave,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Interns
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO

/****** Object:  StoredProcedure [dbo].[Interns_Update]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Interns_Update]
    @FullName VARCHAR(MAX),
    @DateOfJoining DATE,
    @AvailableLeave INT,
    @CreatedBy    VARCHAR(MAX),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Interns
    SET
        FullName = @FullName,
        DateOfJoining = @DateOfJoining,
        AvailableLeave = @AvailableLeave,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;
	RETURN @@ROWCOUNT
END
GO

/****** Object:  StoredProcedure [dbo].[Interns_Delete]     ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Interns_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;
	    UPDATE Interns
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;
	  RETURN @@ROWCOUNT
END
GO