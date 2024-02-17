USE [Examination system]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[CreateStudent]
    @name NVARCHAR(50),
    @age INT,
    @address NVARCHAR(50),
    @phone INT,
    @intakeID INT,
    @classID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO [dbo].[Student]
               (Std_name, Std_age, Std_address, Std_phone, Intake_id, class_id)
         VALUES
               (@name, @age, @address, @phone, @intakeID, @classID);

        PRINT 'Student created successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while creating the student. Error: ' + ERROR_MESSAGE();
    END CATCH
END;
GO


