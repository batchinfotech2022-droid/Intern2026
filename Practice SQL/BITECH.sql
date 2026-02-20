USE [BITECH]
Go
INSERT INTO Activity (Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext)
VALUES 
('admin', 'Login', 'System', '2026-02-10', 1, 'Admin logged into the system'),

('shruti', 'Attendance', 'Mark Attendance', '2026-02-10', 1, 'Attendance marked successfully'),

('rahul', 'Attendance', 'Update Attendance', '2026-02-11', 1, 'Attendance updated for student'),

('prajwal', 'User Management', 'Create User', '2026-02-11', 0, 'Failed to create new user'),

('sulaksha', 'Reports', 'Generate Report', '2026-02-11', 1, 'Monthly report generated'),

('admin', 'Settings', 'Change Password', '2026-02-12', 1, 'Password changed successfully'),

('kiran', 'Login', 'System', '2026-02-12', 0, 'Invalid username or password'),

('megha', 'Attendance', 'Delete Record', '2026-02-12', 1, 'Attendance record deleted'),

('sachin', 'Profile', 'Update Profile', '2026-02-12', 1, 'User profile updated'),

('admin', 'Backup', 'Database Backup', '2026-02-12', 1, 'Database backup completed successfully');
GO