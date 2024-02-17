--Training Manager Role --

CREATE ROLE training_manager_role;


GRANT CREATE TABLE TO training_manager_role;
GRANT INSERT,SELECT ,UPDATE, DELETE ON [dbo].[Instructor] TO training_manager_role ;
GRANT INSERT, SELECT,UPDATE, DELETE ON [dbo].[Course] TO training_manager_role;
GRANT UPDATE ON [dbo].[Course] TO training_manager_role;
GRANT INSERT, UPDATE ON [dbo].[Branch] TO training_manager_role;
GRANT INSERT, UPDATE ON [dbo].[Track] TO training_manager_role;
GRANT INSERT, UPDATE ON [dbo].[Intake] TO training_manager_role;
GRANT INSERT, UPDATE ON [dbo].[Student] TO training_manager_role;

