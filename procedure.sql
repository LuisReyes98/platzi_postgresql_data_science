-- Crear una procedure
CREATE OR REPLACE PROCEDURE test_drpcreate_procedure()
LANGUAGE SQL
AS $$
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa(bbb char(5) CONSTRAINT firstkey PRIMARY KEY);
$$;

-- Llamar a una procedure
CALL test_drpcreate_procedure();