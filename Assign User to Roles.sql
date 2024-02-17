-- Assign User to Roles
USE Examinatin_System;

ALTER ROLE training_manager_role ADD MEMBER TrainingManager;
ALTER ROLE instructor_role ADD MEMBER instructor;
ALTER ROLE student_role ADD MEMBER Student;