USE [InternLAapp]
GO

/****** Object:  StoredProcedure [dbo].[Leave_Create]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_Create]
    @InternId INT,
    @FromDate DATE,
    @ToDate DATE,
    @Reason VARCHAR(MAX),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Leave]
    (
        InternId,
        FromDate,
        ToDate,
        Reason,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @InternId,
        @FromDate,
        @ToDate,
        @Reason,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO

/****** Object:  StoredProcedure [dbo].[Leave_ReadAll]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_ReadAll]
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        InternId,
        FromDate,
        ToDate,
        Reason,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Leave
    WHERE IsDeleted = 0;
END
GO

/****** Object:  StoredProcedure [dbo].[Leave_ReadByID]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_ReadByID]
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT
        InternId,
        FromDate,
        ToDate,
        Reason,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Leave
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO

/****** Object:  StoredProcedure [dbo].[Leave_Update]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Leave_Update]
    @InternId INT,
    @FromDate DATE,
    @ToDate DATE,
    @Reason VARCHAR(MAX),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Leave
    SET
        InternId = @InternId,
        FromDate = @FromDate,
        ToDate = @ToDate,
        Reason = @Reason,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;

    RETURN @@ROWCOUNT
END
GO

/****** Object:  StoredProcedure [dbo].[Leave_Delete]     ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Leave_Delete]
    @Id INT,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Leave
    SET
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0;

    RETURN @@ROWCOUNT
END
GO