USE exercises;

# 1. Write a SQL statement to prepare a list with salesman name, customer name and their cities for the salesmen and customer who belongs to the same city.
select S._name, C.cust_name, S.city from salesman S
join customer C on C.city=S.city;

# 2. Write a SQL statement to make a list with order no, purchase amount, customer name and their cities for those orders which order amount between 500 and 2000.
select O.ord_no, O.purch_amt, C.cust_name, C.city
from orders O
join customer C
on O.customer_id=C.customer_id;




