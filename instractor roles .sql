CREATE ROLE instructor_role;
GRANT INSERT, UPDATE, DELETE ON [dbo].[Question] TO instructor_role;
GRANT INSERT ON [dbo].[Exam] TO instructor_role;
GRANT INSERT ON [dbo].[Exam_Questions] TO instructor_role;
GRANT INSERT ON [dbo].[Student_Exam] TO instructor_role; 