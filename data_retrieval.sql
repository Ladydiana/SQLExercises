-- @Author: Culincu Diana Cristina
-- @Repo: https://github.com/Ladydiana/SQLExercises

USE exercises;

# 1.
# Write a SQL statement to display all the information of all salesmen.
select * from salesman;


# 2
# Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution"

SELECT 'This is SQL Exercise, Practice and Solution';

# 3
# Write a query to display three numbers in three columns.

SELECT 1 as 'One', 2 as 'Two', 3 as 'Three';

# 4
# Write a query to display the sum of two numbers 10 and 15 from RDMS sever. 

SELECT 10+15 as 'Sum';

# 5 
# Write a query to display the result of an arithmetic expression.

SELECT 1+2+3+7*10-5 as 'Sum';

# 6
#  Write a SQL statement to display specific columns like name and commission for all the salesmen.

select _name, comission from salesman;

# 7 
# Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders. 

SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders;

# 8
# Write a query which will retrieve the value of salesman id of all salesmen, getting orders from the customers in orders table without any repeats.

SELECT distinct salesman_id from customer;

# 9 
# Write a SQL statement to display names and city of salesman, who belongs to the city of Paris. 
select _name, city from salesman where city='Paris';

# 10
# Write a SQL statement to display all the information for those customers with a grade of 200. 
select * from customer where grade=200;

# 11
# Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.
select ord_no, ord_date, purch_amt from orders where salesman_id=5001;
