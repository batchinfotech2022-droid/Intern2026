USE InternLAapp;
GO

CREATE TABLE Attendance
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    InternId INT NOT NULL,
    AttendanceDate DATE NOT NULL,
    [Status] VARCHAR(20) NOT NULL,
    CreatedBy VARCHAR(MAX) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    ModifiedBy VARCHAR(MAX) NOT NULL,
    ModifiedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);
GO
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
(1, '2026-02-01', 'Present', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(2, '2026-02-01', 'Present', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(3, '2026-02-01', 'Absent',  'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(4, '2026-02-01', 'Present', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(5, '2026-02-01', 'Absent',  'Admin', GETDATE(), 'Admin', GETDATE(), 0),
(6, '2026-02-01', 'Present', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
GO
SELECT * FROM Attendance;