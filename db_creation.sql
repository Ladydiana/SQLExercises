-- @Author: Culincu Diana Cristina
-- @Repo: https://github.com/Ladydiana/SQLExercises


DROP DATABASE if exists exercises;
CREATE DATABASE exercises;

USE exercises;


DROP TABLE IF EXISTS salesman;
CREATE table salesman (
	salesman_id INT PRIMARY KEY AUTO_INCREMENT,
	_name VARCHAR(70) NOT NULL,
    city VARCHAR(40),
    comission DOUBLE(3,2)
);

INSERT INTO salesman (salesman_id, _name, city, comission) values
(5001, 'James Hoog', 'New York',  0.15),
(5002, 'Nail Knite', 'Paris',  0.13),
(5005, 'Pit Alex', 'London',  0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5003, 'Lauson Hen', NULL,  0.12),
(5007, 'Paul Adam', 'Rome',  0.13);

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(70) NOT NULL,
    city VARCHAR (40),       
    grade INT,       
    salesman_id INT NOT NULL,
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

INSERT INTO customer VALUES
(3002,         'Nick Rimando',  'New York',    100,         5001),
(3005,         'Graham Zusi',   'California',  200,         5002),
(3001,         'Brad Guzan',    'London',      NULL,        5005),
(3004,         'Fabian Johns',  'Paris',       300,         5006),
(3007,         'Brad Davis',    'New York',    200,         5001),
(3009,         'Geoff Camero',  'Berlin',      100,         5003),
(3008,         'Julian Green',  'London',      300,         5002),
(3003,         'Jozy Altidor',  'Moscow',      200,         5007)
;


DROP TABLE IF EXISTS orders;
CREATE TABLE ORDERS (
	ord_no INT PRIMARY KEY AUTO_INCREMENT,
    purch_amt DOUBLE (6,2) NOT NULL,
	ord_date DATE,
	customer_id INTEGER NOT NULL,
    salesman_id INTEGER NOT NULL,
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO orders VALUES 
(70001,       150.5,       '2012-10-05',  3005,         5002),
(70009,       270.65,      '2012-09-10',  3001,         5005),
(70002,       65.26,       '2012-10-05',  3002,         5001),
(70004,       110.5,       '2012-08-17',  3009,         5003),
(70007,       948.5,       '2012-09-10',  3005,         5002),
(70005,       2400.6,      '2012-07-27',  3007,         5001),
(70008,       5760,        '2012-09-10',  3002,         5001),
(70010,       1983.43,     '2012-10-10',  3004,         5006),
(70003,       2480.4,      '2012-10-10',  3009,         5003),
(70012,       250.45,      '2012-06-27',  3008,         5002),
(70011,       75.29,       '2012-08-17',  3003,         5007),
(70013,       3045.6,      '2012-04-25',  3002,         5001);


DROP TABLE IF EXISTS item_mast;
CREATE TABLE item_mast (
	PRO_ID int primary key auto_increment,
    PRO_NAME VARCHAR(30) not null,                   
    PRO_PRICE int not null,   
    PRO_COM int not null
);

INSERT INTO item_mast values
(101, 'Mother Board',                    3200,         15),
(102, 'Key Board',                        450,         16),
(103, 'ZIP drive',                        250,         14),
(104, 'Speaker',                          550,         16),
(105, 'Monitor',                         5000,         11),
(106, 'DVD drive',                        900,         12),
(107, 'CD drive',                         800,         12),
(108, 'Printer',                         2600,         13),
(109, 'Refill cartridge',                 350,         13),
(110, 'Mouse',                            250,         12);

DROP TABLE IF EXISTS emp_department;
CREATE TABLE emp_department (
	dpt_code int not null primary key,
	dpt_name varchar(50) not null,
    dpt_allotment int not null
);

INSERT INTO emp_department values
(57, 'IT',                      65000),
(63, 'Finance',                 15000),
(47, 'HR',                     240000),
(27, 'RD',                      55000),
(89, 'QC',                      75000);


DROP TABLE IF EXISTS emp_details;
CREATE TABLE emp_details(
	emp_idno int not null primary key,
    emp_fname VARCHAR(50) not null,
    emp_lname VARCHAR(50) not null,
    emp_dept int not null,
    foreign key (emp_dept) references emp_department(dpt_code)
);
INSERT INTO emp_details VALUES
(127323, 'Michale',         'Robbin',                  57),
(526689, 'Carlos',          'Snares',                  63),
(843795, 'Enric',           'Dosio',                   57),
(328717, 'Jhon',            'Snares',                  63),
(444527, 'Joseph',          'Dosni',                   47),
(659831, 'Zanifer',         'Emily',                   47),
(847674, 'Kuleswar',        'Sitaraman',               57),
(748681, 'Henrey',          'Gabriel',                 47),
(555935, 'Alex',            'Manuel',                  57),
(539569, 'George',          'Mardy',                   27),
(733843, 'Mario',           'Saule',                   63),
(631548, 'Alan',            'Snappy',                  27),
(839139, 'Maria',           'Foster',                  57);
























