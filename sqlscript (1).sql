REM   Script: Employee2
REM   Employee table-2

create table employee2(  
 
e_id number,  
 
e_name varchar2(10),  
 
salary number,  
 
age number  
 
);

insert into employee2 (e_id, e_name, salary, age)  
 
values (1, 'Ram', 10000, 21);

insert into employee2 (e_id, e_name, salary, age)  
 
values (2, 'Shyam', 7000, 24);

insert into employee2 (e_id, e_name, salary, age)  
 
values (3, 'Hari', 18000, 32);

insert into employee2 (e_id, e_name, salary, age)  
 
values (4, 'Krishna', 9000, 22);

insert into employee2 (e_id, e_name, salary, age)  
 
values (5, 'Avinash', 5000, 19);

insert into employee2 (e_id, e_name, salary, age)  
 
values (6, 'Fahem', 33000, 37);

insert into employee2 (e_id, e_name, salary, age)  
 
values (7, 'Irman', 3000, 18);

select * from employee2;

select count(*)  
 
from employee2;

select max(age)  
 
from employee2;

select min(salary)  
 
from employee2;

select avg(salary)  
 
from employee2;

select sum(age)  
 
from employee2;

select salary from employee2  
 
order by salary asc;

select salary from employee2  
 
order by salary desc;

select e_name, salary from employee2  
 
where age < 29 and salary < 10000;

CREATE TABLE employee_071 ( 
    Emp_no INT, 
    Emp_name VARCHAR(10), 
    Job VARCHAR(10), 
    Manager INT, 
    Salary INT 
);

insert into EMPLOYEE_071 values(101, 'John', 'HR', 201, 50000);

insert into EMPLOYEE_071 values(102, 'Alice', 'Engineer', 202, 60000);

insert into EMPLOYEE_071 values(103, 'Bob', 'Accountant', 203, 45000);

insert into EMPLOYEE_071 values(104, 'David', 'Admin', 204, 55000);

insert into EMPLOYEE_071 values(105, 'Eve', 'Manager', 205, 65000);

UPDATE employee_071 
SET Job = 'Trading'  
WHERE Emp_no = 103;

ALTER TABLE employee_071  
RENAME COLUMN Manager TO manager_no;

CREATE TABLE department (  
    Dept_no VARCHAR(10),  
    D_name VARCHAR(10),  
    D_loc VARCHAR(10)  
);

ALTER TABLE department  
ADD designation VARCHAR(10);

INSERT INTO DEPARTMENT VALUES('D1', 'HR', 'New York', NULL);

INSERT INTO DEPARTMENT VALUES('D2', 'Finance', 'Chicago', NULL);

INSERT INTO DEPARTMENT VALUES('D9', 'IT', 'San Franci', NULL);

UPDATE department  
SET designation = 'Accountant'  
WHERE Dept_no = 'D9';

UPDATE department  
SET designation = NULL;

CREATE TABLE customer (  
    Cust_id INT PRIMARY KEY,      
    Cust_name VARCHAR(50) NOT NULL,    
    Cust_email VARCHAR(50) NOT NULL,  
    Cust_phone VARCHAR(15) NOT NULL,  
    Cust_address VARCHAR(100)  
);

INSERT INTO CUSTOMER VALUES (1, 'Tarun', 'Tarun.@gmail.com', '1234567890', 'New York') ;

select * from CUSTOMER;

ALTER TABLE customer  
ADD CONSTRAINT unique_email UNIQUE (CUST_EMAIL);

