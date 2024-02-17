-- Admin Account --
CREATE LOGIN Admin
WITH PASSWORD = 'Admin123' ,
DEFAULT_DATABASE = [Examination system]
GO

Use [Examination system]
CREATE USER Admin 
FOR LOGIN Admin
GO
--------------------------------------------------------------
--Student Account--
CREATE LOGIN Student
WITH PASSWORD = 'Student123' ,
DEFAULT_DATABASE = [Examination system]
GO

Use [Examination system]
CREATE USER Student 
FOR LOGIN Student
GO
--------------------------------------------------------------------------------------------------
--Training Manager Account--

CREATE LOGIN TrainingManager
WITH PASSWORD = 'Manager123' ,
DEFAULT_DATABASE = [Examination system]
GO

Use [Examination system]
CREATE USER TrainingManager 
FOR LOGIN TrainingManager
GO
-----------------------------------------------------------
--Instructor Account--
CREATE LOGIN instructor
WITH PASSWORD = 'instructor123' ,
DEFAULT_DATABASE = [Examination system]
GO

Use [Examination system]
CREATE USER instructor 
FOR LOGIN instructor
GO


