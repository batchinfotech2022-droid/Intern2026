USE SmartContactManager;
GO

CREATE OR ALTER PROCEDURE REGISTER_Create
(
    @FirstName VARCHAR(100),
    @LastName VARCHAR(100),
    @Address VARCHAR(100),
    @Phone VARCHAR(100),
    @UserName VARCHAR(100),
    @Password VARCHAR(100),
    @IsSystemAdmin BIT,
    @IsSystemUser BIT,
    @IsSystemSupervisor BIT,
    @IsActive BIT,
    @IsLogged BIT,
    @NoOfAttempts INT,
    @CreatedBy VARCHAR(100),
    @CreatedDate DATETIME,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted BIT,
    @Id INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO REGISTER
    (
        FirstName, LastName, [Address], Phone,
        UserName, [Password],
        IsSystemAdmin, IsSystemUser, IsSystemSupervisor,
        IsActive, IsLogged, NoOfAttempts,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES
    (
        @FirstName, @LastName, @Address, @Phone,
        @UserName, @Password,
        @IsSystemAdmin, @IsSystemUser, @IsSystemSupervisor,
        @IsActive, @IsLogged, @NoOfAttempts,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    SELECT @Id = SCOPE_IDENTITY();
END
GO


CREATE OR ALTER PROCEDURE REGISTER_ReadAll
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM REGISTER
    WHERE IsDeleted = 0
END
GO


CREATE OR ALTER PROCEDURE REGISTER_ReadById
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM REGISTER
    WHERE Id = @Id
      AND IsDeleted = 0
END
GO


CREATE OR ALTER PROCEDURE REGISTER_Update
(
    @Id INT,
    @FirstName VARCHAR(100),
    @LastName VARCHAR(100),
    @Address VARCHAR(100),
    @Phone VARCHAR(100),
    @UserName VARCHAR(100),
    @Password VARCHAR(100),
    @IsSystemAdmin BIT,
    @IsSystemUser BIT,
    @IsSystemSupervisor BIT,
    @IsActive BIT,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME
)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE REGISTER
    SET 
        FirstName = @FirstName,
        LastName = @LastName,
        [Address] = @Address,
        Phone = @Phone,
        UserName = @UserName,
        [Password] = @Password,
        IsSystemAdmin = @IsSystemAdmin,
        IsSystemUser = @IsSystemUser,
        IsSystemSupervisor = @IsSystemSupervisor,
        IsActive = @IsActive,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0

    RETURN @@ROWCOUNT
END
GO

CREATE OR ALTER PROCEDURE REGISTER_Delete
(
    @Id INT,
    @ModifiedBy VARCHAR(100),
    @ModifiedDate DATETIME
)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE REGISTER
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id
      AND IsDeleted = 0

    RETURN @@ROWCOUNT
END
GO


CREATE OR ALTER PROCEDURE Register_Login
    @UserName VARCHAR(100),
    @Password VARCHAR(100)
AS
BEGIN
    SELECT *
    FROM REGISTER
    WHERE UserName = @UserName
          AND Password = @Password
          AND IsActive = 1
          AND IsDeleted = 0
END
GO


CREATE OR ALTER PROCEDURE Register_RetrieveByUserName
    @UserName VARCHAR(100)
AS
BEGIN
    SELECT *
    FROM REGISTER
    WHERE UserName = @UserName
      AND IsDeleted = 0
END

