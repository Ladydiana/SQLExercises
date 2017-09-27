-- @Author: Culincu Diana Cristina
-- @Repo: https://github.com/Ladydiana/SQLExercises

USE exercises;


# 1. Create a trigger for insert salesman
DROP TRIGGER IF EXISTS tInsSalesman;
DELIMITER $$
CREATE TRIGGER tInsSalesman BEFORE INSERT ON SALESMAN
FOR EACH ROW BEGIN
	set new._name=trim(upper(NEW._name));

END;
$$
DELIMITER ;