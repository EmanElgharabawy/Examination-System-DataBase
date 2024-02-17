--Admin Role --
CREATE ROLE admin_role;

GRANT ALTER ANY USER TO admin_role;
GRANT CREATE PROCEDURE TO admin_role;
GRANT CREATE TABLE TO admin_role;
GRANT ALTER ANY LOGIN TO Admin;