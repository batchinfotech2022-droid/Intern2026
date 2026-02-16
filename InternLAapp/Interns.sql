--CREATE DATABASE InternLAapp;
--GO

USE InternLAapp;
Go
CREATE TABLE Interns
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(MAX) NOT NULL,
    DateOfJoining DATE NOT NULL,
    AvailableLeave INT NOT NULL,
	CreatedBy VARCHAR(MAX) NOT NULL,
	CreatedDate DATETIME NOT NULL,
	ModifiedBy VARCHAR(MAX) NOT NULL,
	ModifiedDate DATETIME NOT NULL,
	IsDeleted BIT NOT NULL
);

INSERT INTO Interns
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
('Raghav Rao', '2025-06-01', 10, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Chithra Acharya', '2024-05-05', 5, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Sulaksha Shetty', '2022-06-10', 15, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Prathiksha Sharma', '2022-03-12', 9, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Skanda Bhat', '2024-06-15', 11, 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

('Shravya Kulal', '2022-10-18', 10, 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
Go
SELECT * FROM Interns;
