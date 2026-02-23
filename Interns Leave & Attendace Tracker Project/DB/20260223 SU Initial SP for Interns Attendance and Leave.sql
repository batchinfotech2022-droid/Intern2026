USE [Internsapp]
GO
/****** Object:  StoredProcedure [dbo].[Activity_Create]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 -- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Adding a new row with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_Create]
	@Username varchar(20),
	@Activityon varchar(50),
	@Activityitem varchar(50),
	@Activitydate datetime,
	@Issuccess bit,
	@Activitytext varchar(250),
	@Activityid int OUTPUT
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO Activity
		( Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext)
	VALUES
		(@Username,@Activityon,@Activityitem,@Activitydate,@Issuccess,@Activitytext)

	SELECT @Activityid = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_Delete]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Deleting the row of the given ID value
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_Delete]
	@Activityid int
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM Activity
	WHERE
		Activityid = @Activityid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_ReadAll]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting all rows
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_ReadAll]
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Activityid, Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext
	FROM Activity
	ORDER BY Activityid DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_ReadById]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting a Row according to given ID
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_ReadById]
	@Activityid int
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Activityid, Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext
	FROM Activity
	WHERE
		Activityid = @Activityid
END
GO
/****** Object:  StoredProcedure [dbo].[Activity_Update]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Updating the row of a given ID value with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[Activity_Update]
	@Activityid int,
	@Username varchar(20),
	@Activityon varchar(50),
	@Activityitem varchar(50),
	@Activitydate datetime,
	@Issuccess bit,
	@Activitytext varchar(250)
AS
BEGIN
	SET NOCOUNT ON
	UPDATE Activity
	SET
		Username = @Username,
		Activityon = @Activityon,
		Activityitem = @Activityitem,
		Activitydate = @Activitydate,
		Issuccess = @Issuccess,
		Activitytext = @Activitytext
	WHERE
		Activityid = @Activityid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_Create]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Adding a new row with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_Create]
	@Exceptionsource varchar(50),
	@Exceptiondesc varchar(200),
	@Exceptiondate datetime,
	@Issolved bit,
	@Remarks varchar(100),
	@Exceptionid int OUTPUT
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO AppException
		( Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks)
	VALUES
		(@Exceptionsource,@Exceptiondesc,@Exceptiondate,@Issolved,@Remarks)

	SELECT @Exceptionid = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_Delete]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Deleting the row of the given ID value
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_Delete]
	@Exceptionid int
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM AppException
	WHERE
		Exceptionid = @Exceptionid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_ReadAll]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting all rows
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_ReadAll]
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Exceptionid, Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks
	FROM AppException
	ORDER BY Exceptionid DESC
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_ReadById]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Selecting a Row according to given ID
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_ReadById]
	@Exceptionid int
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	 Exceptionid, Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks
	FROM AppException
	WHERE
		Exceptionid = @Exceptionid
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_ReadForSearch]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	NTier
-- Create date:	22-05-2024
-- Description:	Read Exception details For Search
-- Revisions:	
-- =============================================

CREATE PROCEDURE [dbo].[AppException_ReadForSearch]
	@ExceptionSource varchar(50)
AS
BEGIN
	SET NOCOUNT ON
	SELECT
	ExceptionID, ExceptionSource, ExceptionDesc, ExceptionDate, IsSolved, Remarks
	FROM AppException
	WHERE
		ExceptionSource Like '%' + @ExceptionSource + '%'
		OR
		ExceptionDesc Like '%' + @ExceptionSource + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[AppException_Update]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Ntier App
-- Create date:	22-05-2024
-- Description:	Updating the row of a given ID value with supplied values
-- Revisions:	
-- =============================================
CREATE PROCEDURE [dbo].[AppException_Update]
	@Exceptionid int,
	@Exceptionsource varchar(50),
	@Exceptiondesc varchar(200),
	@Exceptiondate datetime,
	@Issolved bit,
	@Remarks varchar(100)
AS
BEGIN
	SET NOCOUNT ON
	UPDATE AppException
	SET
		Exceptionsource = @Exceptionsource,
		Exceptiondesc = @Exceptiondesc,
		Exceptiondate = @Exceptiondate,
		Issolved = @Issolved,
		Remarks = @Remarks
	WHERE
		Exceptionid = @Exceptionid

	RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Attendance_Create]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Attendance_Create]
    @InternId INT,
    @AttendanceDate DATE,
    @Status BIT,
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Attendance
    (
        InternId,
        AttendanceDate,
        [Status],
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
/****** Object:  StoredProcedure [dbo].[Attendance_Delete]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Attendance_Delete]
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

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Attendance_ReadAll]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Attendance_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        InternId,
        AttendanceDate,
        [Status],
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    FROM Attendance
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Attendance_ReadByID]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Attendance_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        InternId,
        AttendanceDate,
        [Status],
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
/****** Object:  StoredProcedure [dbo].[Attendance_Update]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Attendance_Update]
    @InternId INT,
    @AttendanceDate DATE,
    @Status BIT,
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
        [Status] = @Status,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_Create]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_Create]
    @FirstName VARCHAR(MAX),
    @LastName VARCHAR(MAX),
    @UserName VARCHAR(MAX),
    @Password VARCHAR(MAX),
    @DateOfJoining DATE,
    @AvailableLeave INT,
    @Address VARCHAR(MAX),
    @Phone VARCHAR(20),
    @IsSystemAdmin BIT,
    @IsActive BIT,
    @IsLocked BIT,
    @NoOfAttempts INT,
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Interns
    (
        FirstName,
        LastName,
        UserName,
        [Password],
        DateOfJoining,
        AvailableLeave,
        Address,
        Phone,
        IsSystemAdmin,
        IsActive,
        IsLocked,
        NoOfAttempts,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        IsDeleted
    )
    VALUES
    (
        @FirstName,
        @LastName,
        @UserName,
        @Password,
        @DateOfJoining,
        @AvailableLeave,
        @Address,
        @Phone,
        @IsSystemAdmin,
        @IsActive,
        @IsLocked,
        @NoOfAttempts,
        @CreatedBy,
        @CreatedDate,
        @ModifiedBy,
        @ModifiedDate,
        @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_Delete]    Script Date: 23-02-2026 08:44:03 AM ******/
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

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_ReadAll]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Interns
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_ReadByID]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Interns
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_RetrieveByPassword]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_RetrieveByPassword]
    @Password VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Interns
    WHERE [Password] = @Password
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_RetrieveByUserName]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_RetrieveByUserName]
    @UserName VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Interns
    WHERE UserName = @UserName
      AND IsDeleted = 0
      AND IsActive = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[Interns_Update]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Interns_Update]
    @FirstName VARCHAR(MAX),
    @LastName VARCHAR(MAX),
    @UserName VARCHAR(MAX),
    @Password VARCHAR(MAX),
    @DateOfJoining DATE,
    @AvailableLeave INT,
    @Address VARCHAR(MAX),
    @Phone VARCHAR(20),
    @IsSystemAdmin BIT,
    @IsActive BIT,
    @IsLocked BIT,
    @NoOfAttempts INT,
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Interns
    SET
        FirstName = @FirstName,
        LastName = @LastName,
        UserName = @UserName,
        [Password] = @Password,
        DateOfJoining = @DateOfJoining,
        AvailableLeave = @AvailableLeave,
        Address = @Address,
        Phone = @Phone,
        IsSystemAdmin = @IsSystemAdmin,
        IsActive = @IsActive,
        IsLocked = @IsLocked,
        NoOfAttempts = @NoOfAttempts,
        CreatedBy = @CreatedBy,
        CreatedDate = @CreatedDate,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        IsDeleted = @IsDeleted
    WHERE Id = @Id;

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Leave_Create]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_Create]
    @InternId INT,
    @FromDate DATETIME,
    @ToDate DATETIME,
    @Reason VARCHAR(250),
    @CreatedBy VARCHAR(MAX),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(MAX),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Leave
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
/****** Object:  StoredProcedure [dbo].[Leave_Delete]    Script Date: 23-02-2026 08:44:03 AM ******/
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

    RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[Leave_ReadAll]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Leave
    WHERE IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Leave_ReadByID]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_ReadByID]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Leave
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[Leave_Update]    Script Date: 23-02-2026 08:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Leave_Update]
    @InternId INT,
    @FromDate DATETIME,
    @ToDate DATETIME,
    @Reason VARCHAR(250),
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

    RETURN @@ROWCOUNT;
END
GO
