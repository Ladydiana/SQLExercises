-- @Author: Culincu Diana Cristina
-- @Repo: https://github.com/Ladydiana/SQLExercises


USE exercises;

# 1. Write a SQL statement to find the total purchase amount of all orders. 
SELECT ord_no, sum(purch_amt) from orders group by ord_no;

# 2. Write a SQL statement to find the average purchase amount of all orders.
select ord_no, avg(purch_amt) from orders group by ord_no;

# 3. Write a SQL statement to find the number of salesmen currently listing for all of their customers.
select count(distinct salesman_id) from orders; 

# 4. Write a SQL statement know how many customer have listed their names.
select count(customer_id) from customer where cust_name is not null;

# 5. Write a SQL statement find the number of customers who gets at least a gradation for his/her performance.
select count(customer_id) from customer where grade is not null;

# 6. Write a SQL statement to get the maximum purchase amount of all the orders. 
select max(purch_amt) from orders;

# 7. Write a SQL statement to get the minimum purchase amount of all the orders.
select min(purch_amt) from orders;

# 8. Write a SQL statement which selects the highest grade for each of the cities of the customers.
select city, max(grade) from customer group by city;

# 9. Write a SQL statement to find the highest purchase amount ordered by the each customer with their ID and highest purchase amount. 
select customer_id, max(purch_amt) from orders group by customer_id;

# 10. Write a SQL statement to find the highest purchase amount ordered by the each customer on a particular date with their ID, order date and highest purchase amount. 
select customer_id, max(purch_amt), ord_date from orders group by customer_id, ord_date;

# 11. Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.
select salesman_id, max(purch_amt) from orders where ord_date='2012-08-17' group by salesman_id;

# 12. Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have highest purchase amount in a day is more than 2000. 
select customer_id, maxx, ord_date from
	(select customer_id, max(purch_amt) as maxx, ord_date from orders group by customer_id, ord_date) A
where A.maxx>2000;
-- or
SELECT customer_id,ord_date,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id,ord_date 
HAVING MAX(purch_amt) >2000;

# 13. Write a SQL statement to find the highest purchase amount with their ID and order date, for those customers who have a higher purchase amount in a day is within the range 2000 and 6000.
SELECT customer_id,ord_date,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id,ord_date 
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000;

# 14. Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount in a day is within the list 2000, 3000, 5760 and 6000.
SELECT customer_id,ord_date,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id,ord_date 
HAVING MAX(purch_amt) in (2000, 3000, 5760, 6000);

# 15. Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.
select customer_id, max(purch_amt) 
from orders 
group by customer_id 
having customer_id >3002 and customer_id <3007;


# 16. Write a SQL statement to display customer details (ID and purchase amount) whose IDs are within the range 3002 and 3007 and highest purchase amount is more than 1000.
SELECT customer_id,MAX(purch_amt) 
FROM orders 
WHERE customer_id BETWEEN 3002 and 3007 
GROUP BY customer_id 
HAVING MAX(purch_amt)>1000;

# 17. Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen whose ID is within the range 5003 and 5008.
select salesman_id, max(purch_amt)
from orders
group by salesman_id
having salesman_id between 5003 and 5008;

# 18. Write a SQL statement that counts all orders for a date August 17th, 2012
select count(ord_no) from orders where ord_date='2012-08-17';

# 19. Write a SQL statement that counts the number of different non NULL city values for salesmen.
select count(distinct city) 
from salesman 
where city is not null;

# 20. Write a query that counts the number of salesmen with their order date and ID registering orders for each day.
select ord_date, salesman_id, count(*) 
from orders 
group by ord_date; 

# 21. Write a SQL query to calculate the average price of all the products.
select avg(pro_price) from item_mast;

# 22. Write a SQL query to find the number of products with a price more than or equal to Rs.350.
select count(*) from item_mast where pro_price >= 350; 

# 23. Write a SQL query to display the average price of each company's products, along with their code.
select pro_com, avg(pro_price) from item_mast group by pro_com; 

# 24. Write a query in SQL to find the sum of the allotment amount of all departments.
select sum(dpt_allotment) from emp_department;

# 25. Write a query in SQL to find the number of employees in each department along with the department code. 
select emp_dept, count(*) from emp_details group by emp_dept;

 








