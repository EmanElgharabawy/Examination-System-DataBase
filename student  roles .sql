--Student Role --

CREATE ROLE student_role;
GRANT SELECT ON [dbo].[Exam] TO student_role;
GRANT SELECT ON [dbo].[Question] TO student_role;

GRANT ALTER ANY LOGIN TO Student;