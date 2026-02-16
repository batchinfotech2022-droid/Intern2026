USE [InternLAapp]
GO

/****** Object:  StoredProcedure [dbo].[Attendance_Create]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Attendance_Create]
    @InternId INT,
    @AttendanceDate DATE,
    @Status VARCHAR(20),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Attendance]
    (
        InternId,
        AttendanceDate,
        Status,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @InternId,
        @AttendanceDate,
        @Status,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO

/****** Object:  StoredProcedure [dbo].[Attendance_ReadAll]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Attendance_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        InternId,
        AttendanceDate,
        Status,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Attendance
    WHERE IsDeleted = 0;
END
GO

/****** Object:  StoredProcedure [dbo].[Attendance_ReadByID]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Attendance_ReadByID]
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        InternId,
        AttendanceDate,
        Status,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Attendance
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO

/****** Object:  StoredProcedure [dbo].[Attendance_Update]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Attendance_Update]
    @InternId INT,
    @AttendanceDate DATE,
    @Status VARCHAR(20),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Attendance
    SET
        InternId = @InternId,
        AttendanceDate = @AttendanceDate,
        Status = @Status,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;

    RETURN @@ROWCOUNT
END
GO

/****** Object:  StoredProcedure [dbo].[Attendance_Delete]     ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Attendance_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Attendance
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;

    RETURN @@ROWCOUNT
END
GO