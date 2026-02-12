USE [Cmanager]
GO

INSERT INTO [dbo].[Activity]
    (UserName, ActivityOn, ActivityItem, ActivityDate, IsSuccess, ActivityText)
VALUES
('Shravya', 'Login', 'User Login', GETDATE(), 1, 'User logged in successfully'),

('Rahul', 'Create Contact', 'Contact Added', GETDATE(), 1, 'New contact created'),

('Anita', 'Edit Contact', 'Contact Updated', GETDATE(), 1, 'Updated phone number'),

('Kiran', 'Delete Contact', 'Contact Deleted', GETDATE(), 0, 'Delete failed due to constraint'),

('Megha', 'Password Change', 'Security Update', GETDATE(), 1, 'Password changed successfully');
GO
