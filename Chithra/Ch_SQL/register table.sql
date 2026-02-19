USE [UserTaskApp]
GO

/* Drop table if it already exists */
IF OBJECT_ID('[Register]', 'U') IS NOT NULL
    DROP TABLE [Register];
GO

/* Create Register table */
CREATE TABLE [Register](
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    [Password] VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    [Address] VARCHAR(200) NOT NULL,

    IsSystemAdmin BIT NOT NULL DEFAULT 0,
    IsSystemUser BIT NOT NULL DEFAULT 0,
    IsSystemSupervisor BIT NOT NULL DEFAULT 0,

    IsActive BIT NOT NULL DEFAULT 1,
    IsLocked BIT NOT NULL DEFAULT 0,
    NoAttempts INT NOT NULL DEFAULT 0,

    CreatedBy VARCHAR(100) NOT NULL,
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
    ModifiedBy VARCHAR(100) NOT NULL,
    ModifiedDate DATETIME NOT NULL DEFAULT GETDATE(),
    IsDeleted BIT NOT NULL DEFAULT 0
);
GO

/* Insert sample record */
INSERT INTO [Register]
(
    UserName,
    FirstName,
    LastName,
    [Password],
    Phone,
    [Address],
    IsSystemAdmin,
    IsSystemUser,
    IsSystemSupervisor,
    IsActive,
    IsLocked,
    NoAttempts,
    CreatedBy,
    CreatedDate,
    ModifiedBy,
    ModifiedDate,
    IsDeleted
)
VALUES
(
    'Chithraharish',
    'Chithra',
    'Acharya',
    'Chithra@123',
    '+919741917780',
    'Karkala',
    1,
    0,
    0,
    1,
    0,
    1,
    'Admin',
    GETDATE(),
    'Admin',
    GETDATE(),
    0
);
GO

/* Verify */
SELECT * FROM [Register];
GO
