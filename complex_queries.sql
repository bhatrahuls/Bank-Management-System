--Bank Management System

--Connecting to Bank Database
\c bank;


--Complex Queries

--1. Retrieve the Opening dates of the accounts of Male Customers staying in Bangalore and having salaries in the range of 40000-70000.
SELECT cust.first_name,acc.acc_no,acc.open_date 
FROM account as acc,has,customer as cust 
WHERE acc.acc_no=has.acc_no 
AND has.cust_id=cust.cust_id 
AND gender='M'
AND salary BETWEEN 40000 AND 70000 
AND city='Bangalore';


--2. Retreive the Name and Current Balance of the customers whose Savings Account are open.
SELECT first_name,middle_name,last_name,current_balance
FROM customer as cust,has,account as acc,deposit_account as dep_acc 
WHERE cust.cust_id=has.cust_id 
AND has.acc_no=acc.acc_no 
AND acc.deposit_acc_no=dep_acc.deposit_acc_no 
AND dep_acc.deposit_account_type = 'Savings Account'
AND dep_acc.closure_type = 'Not closed';


--3. Find the Names of all the Managers who do not Supervise any Employee(without using nested query).
SELECT mg.first_name,mg.middle_name,mg.last_name 
FROM manager as mg LEFT OUTER JOIN employee as e ON mg.manager_id=e.manager_id 
EXCEPT
SELECT mg.first_name,mg.middle_name,mg.last_name 
FROM manager as mg INNER JOIN employee as e ON mg.manager_id=e.manager_id;


--4. Find the total no. of Transactions that have been committed by the customers of the bank, who have committed atleast two transactions.
SELECT cust.first_name,cust.cust_id,count(*) 
FROM customer as cust,transaction as trans 
WHERE cust.cust_id=trans.cust_id 
GROUP BY(cust.cust_id) 
HAVING count(*)>=2;


--5. Obtain the Contact details of all the Customers who are yet to commit a transaction.
SELECT DISTINCT cust.first_name,cust.cust_id,cust.contact 
FROM customer as cust LEFT OUTER JOIN transaction as trans ON cust.cust_id=trans.cust_id
EXCEPT
SELECT DISTINCT cust.first_name,cust.cust_id,cust.contact 
FROM customer as cust INNER JOIN transaction as trans ON cust.cust_id=trans.cust_id; 
