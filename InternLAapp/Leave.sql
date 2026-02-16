USE InternLAapp;
GO

CREATE TABLE Leave
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    InternId INT NOT NULL,
    FromDate DATE NOT NULL,
    ToDate DATE NOT NULL,
    Reason VARCHAR(MAX) NOT NULL,
    CreatedBy VARCHAR(MAX) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    ModifiedBy VARCHAR(MAX) NOT NULL,
    ModifiedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);
GO
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
(1, '2026-02-10', '2026-02-12', 'Fever', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(2, '2026-02-15', '2026-02-16', 'Family Function', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(3, '2026-02-20', '2026-02-22', 'Sick Leave', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(4, '2026-02-05', '2026-02-05', 'Cold & Headache', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(5, '2026-02-25', '2026-02-26', 'Casual Leave', 'Admin', GETDATE(), 'Admin', GETDATE(), 0),

(6, '2026-02-28', '2026-03-01', 'Medical leave', 'Admin', GETDATE(), 'Admin', GETDATE(), 0);
GO
SELECT * FROM Leave;