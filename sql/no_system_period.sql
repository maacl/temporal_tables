CREATE TABLE no_system_period ();

CREATE TRIGGER versioning_trigger
BEFORE INSERT OR UPDATE OR DELETE ON no_system_period
FOR EACH ROW EXECUTE PROCEDURE versioning(NULL, NULL, NULL);

INSERT INTO no_system_period DEFAULT VALUES;
