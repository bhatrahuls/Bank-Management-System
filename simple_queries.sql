--Bank Management System

--Connecting to Bank Database
\c bank;


--Simple Queries

--1. Retrieve the complete details of the customers.
SELECT * FROM Customer;


--2. Retrieve the Names of the Employee whose salary is greater than 45000.
SELECT first_name,last_name,salary FROM Employee WHERE salary>45000;


--3. Retrieve the E-mail and contact details of the customers of the Bank.
SELECT first_name,last_name,Email,contact FROM Customer;


--4. List all the Female Managers of the Bank.
SELECT first_name,last_name FROM Manager WHERE gender='F';


--5. Retrieve the Name and Address of all the Employee's whose is from Karnataka State.
SELECT first_name,last_name,street,city,state,nationality FROM Employee WHERE state='Karnataka';


--6. List all the Male Employee's of the Bank.
SELECT first_name,last_name FROM Employee WHERE gender='M';