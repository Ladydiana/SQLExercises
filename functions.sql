-- @Author: Culincu Diana Cristina
-- @Repo: https://github.com/Ladydiana/SQLExercises


USE exercises;



# 1. Function to return a list of all the customers for a salesman
DROP FUNCTION IF EXISTS fCust;
DELIMITER $$
CREATE FUNCTION fCust(salesmn_id INT) RETURNS VARCHAR(100)
BEGIN
	DECLARE cust_list VARCHAR(100);
    DECLARE l_c VARCHAR(20);
    DECLARE ok int default 0;
	DECLARE c CURSOR FOR select customer_id from customer where salesmn_id=salesman_id;
	DECLARE CONTINUE HANDLER FOR NOT FOUND BEGIN set ok=1; END;

	open c;
    bucla: loop
			fetch c into l_c;
            if ok=1 then
				leave bucla;
			else set cust_list=concat_ws('; ', cust_list, l_c);
            end if;
	end loop bucla;
	close c;
	return cust_list;
END;
$$
DELIMITER ;

select fCust(5001);







# Print a list of all the orders for a customer
DROP FUNCTION IF EXISTS fOrders;
DELIMITER $$
CREATE FUNCTION fOrders(custid int) RETURNS VARCHAR(1000)
BEGIN
	DECLARE list_O VARCHAR(1000);
    DECLARE vL int;
    DECLARE ok tinyint default 0;
    DECLARE c cursor for select ord_no from orders where custid=customer_id;
    DECLARE continue handler for not found begin set ok=1; end;
    
    open c;
	bucla:	loop
			fetch c into vL;
            if ok=1 then
				leave bucla;
			else
				set list_O = concat_ws('; ', list_O, vL);
            end if;
    end loop bucla;
    close c;
    return list_O;
END;
$$
DELIMITER ;

select fOrders(3002);

