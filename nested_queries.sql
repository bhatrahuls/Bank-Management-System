--Bank Management System

--Connecting to Bank Database
\c bank


--Nested Queries

--1. List the Names of all the Managers who supervise atleast one Employee.
SELECT mg.first_name,mg.middle_name,mg.last_name FROM manager as mg 
WHERE EXISTS(
                SELECT * FROM employee as e 
                WHERE mg.manager_id=e.manager_id
            );


--2. List the Names and ID of the Managers who do not manage any Loan or Interest Accounts.
SELECT first_name,middle_name,last_name,manager_id FROM manager as mg
WHERE NOT EXISTS(
                 SELECT * FROM interest as i 
                 WHERE mg.manager_id=i.manager_id
                )
      AND
      NOT EXISTS(
                 SELECT * FROM loan_account as la
                 WHERE mg.manager_id=la.manager_id
                );


--3. List the Names of all the Employees who manage atleast one account as well as Loan Account.
SELECT e.first_name,e.middle_name,e.last_name FROM employee as e
WHERE EXISTS(
             SELECT * FROM account as acc 
             WHERE e.emp_id=acc.emp_id
            )
      AND
      EXISTS(
             SELECT * FROM loan_account as loan_acc   
             WHERE e.emp_id=loan_acc.emp_id  
            );


--4. List the Names of all the Employees who haven't handled any Transaction.
SELECT e.first_name,e.middle_name,e.last_name FROM employee as e
WHERE NOT EXISTS(
                 SELECT * FROM transaction as t 
                 WHERE e.emp_id=t.emp_id
                );


--EXCLUDED IN PDF 5. List the Details of the Employees whose salaries are greater than the average salaries of all the Employees.
SELECT * FROM employee as e 
WHERE e.salary>ALL(
                    SELECT avg(e1.salary) FROM employee as e1 
                  );


--6. List the Nationality, Name and ID of the Male Customers whose salaries are greater than the average salaries among all the Customers.
SELECT cust.cust_id,cust.First_Name,cust.Last_Name,cust.nationality FROM customer as cust
WHERE Gender='M'
AND cust.salary>ALL(
                    SELECT avg(cust1.salary) FROM customer as cust1 WHERE Gender='M'
                   );

