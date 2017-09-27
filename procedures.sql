-- @Author: Culincu Diana Cristina
-- @Repo: https://github.com/Ladydiana/SQLExercises

USE exercises;

# 1. Procedure to view all employees from a given department
DROP PROCEDURE IF EXISTS pEmp;
DELIMITER $$
CREATE PROCEDURE pEmp(in deptNo int)
BEGIN
	select * from emp_details where emp_dept=deptNo;
END;
$$
DELIMITER ;

call pEmp(57);

# 2. Procedure to return the number of all employees from a given department by name
DROP PROCEDURE IF EXISTS pEmp2;
DELIMITER $$
CREATE PROCEDURE pEmp2 (in dept_name VARCHAR(50), out numberr INT)
BEGIN
	SELECT count(*) into numberr from emp_details where emp_dept=(select dpt_code from emp_department where dept_name=dpt_name);

END;
$$
DELIMITER ;

call pEmp2('IT', @num);
select @num;