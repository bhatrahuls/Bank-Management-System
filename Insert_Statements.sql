--Bank Management System

--Connecting to Bank Database
\c bank;


--Insert Statements
INSERT INTO Customer(Cust_ID,First_Name,Middle_Name,Last_Name,Street,City,State,Pin,Age,Email,Gender,Nationality,Contact,PAN_no,Salary)
VALUES
('AB124D1','Chandan','R','Kumar','Colaba','Mumbai','Maharastra',590022,34,'chan123@gmail.com','M','India',9940328910,'AEF161JHK9',40000),
('AB124D2','Rahul','K','Kumar','Belathur','Bangalore','Karnataka',590552,38,'raj183@gmail.com','M','India',9940328450,'AWF16R4HK6',38000),
('AB124D3','Shruthi','S','Kumari','Brigade Road','Bangalore','Karnataka',594452,32,'shur63@gmail.com','F','India',9840328450,'ASF16RTTK6',48500),
('AB124D4','Nagendra','L','Kumar','Avenue Street','Bangalore','Karnataka',560072,36,'kiytr38@gmail.com','M','India',9930328445,'AL086RUP78',40000),
('AB124D5','Dwayne','L','Johnson','Tupac Line','New York City','New York',909079,36,'turde98@gmail.com','M','USA',9970368995,'ATJ86RUP55',50000),
('AB124D6','Asha','U','Bannu','Hazratganj','Lucknow','Uttar Pradesh',678764,38,'asha45@gmail.com','F','India',9970368863,'ARR8121UP5',50000),
('AB124D7','Roshani','R','Reddy','Fontainhas','Goa City','Goa',678009,34,'roshani123@gmail.com','F','India',7970568840,'BR49121US2',68000),
('AB124D8','Prakash','P','Kumar','Brigade Road','Bangalore','Karnataka',668879,30,'mike@gmail.com','M','India',7768950122,'BB6712DU33',70000);


INSERT INTO Manager(Manager_ID,Email_ID,Nationality,First_Name,Middle_Name,Last_Name,Street,City,State,Pin,DOB,Username,Password,Salary,Contact,Gender)
VALUES
(1001,'pvthi43@gmail.com','India','Rajendra','V','Kumar','Mall Road','Shimla','Himachal Pradesh',609876,'1976-07-24','Rocky120','CnM85yi',60000,9854521993,'M'),
(1002,'ddolak3@gmail.com','India','Pranav','M','Varma','Nice Road','Bangalore','Karnataka',956646,'1979-03-21','posty10','PnMJ3Eoyi',65000,9914523191,'M'),
(1003,'priya32@gmail.com','India','Priya','K','Sharma','Aroli','Mumbai','Maharashtra',566902,'1981-08-09','kiretf56','LU0MJ3Ekgt',65000,8494763217,'F'),
(1004,'harini612@gmail.com','India','Harini','K','Kumari','Aundh','Pune','Maharashtra',690677,'1980-04-17','Loefco23','DE8JJ2OkI',68000,9832910282,'F'),
(1005,'santar30@gmail.com','India','Santosh','R','Kumar','Tenjur','Hyderabad','Andhra Pradesh',691123,'1975-06-12','dd2wdef90','EffE800gr3',70000,9213102812,'M'),
(1006,'aman177@gmail.com','India','Aman','J','Kumar','Fashion Street','Pune','Maharashtra',612109,'1984-07-10','anme122f','ihbSS0d3f',70000,8675312566,'M'),
(1007,'daniel27@gmail.com','India','Daniel','S','Robert','Sampige Road','Malleshwaram','Karnataka',560089,'1984-05-19','Dewf12w3','JKcIw032',75000,7866152123,'M'),
(1008,'Sima11@gmail.com','India','Sima','J','Roy','Marine Drive','Kochi','Kerala',561245,'1987-01-20','rED2sw3','JDWqdc43',72000,7213248243,'F');


INSERT INTO Interest(Interest_ID,Savings_int,RD_int,FD_int,Interest_rate,Interest_Amount,Manager_ID)
VALUES
(101,5.3,6.2,7.3,12.9,10000,1001),
(102,5.0,4.2,8.3,9.6,12000,1003),
(103,4.12,6.44,3.3,4.8,8000,1003),
(104,6.13,2.17,5.32,7.98,12500,1005),
(105,6.87,9.10,5.92,8.18,12700,1002),
(106,2.34,7.21,8.11,6.5,11000,1002),
(107,8.66,9.12,4.45,6.13,13000,1007),
(108,8.77,5.96,4.34,3.18,12500,1008);


INSERT INTO Employee(First_Name,Middle_Name,Last_Name,Street,City,State,Pin,DOB,Username,Password,Salary,Email_ID,Contact,Gender,Nationality,Emp_ID,Manager_ID)
VALUES
('Rohan','S','Kumar','Belathur','Bangalore','Karnataka',560067,'1987-08-05','jack2334','CN32rfy8',48000,'rohan45@gmail.com',9985412102,'M','India',1,1001),
('Rakesh','M','Sharma','Nagar Chowk','Mumbai','Maharashtra',113457,'1984-01-09','Krit4322','KLd789iO',47000,'rakes24@gmail.com',9783452099,'M','India',2,1001),
('Disha','R','Sharma','Hutatma Chowk','Mumbai','Maharashtra',679053,'1984-03-19','Hinse64h','Ome76NU9',46000,'Disha67@gmail.com',8843101293,'F','India',3,1001),
('Akriti','N','Verma','Jessore Road','Kolkata','West Bengal',619087,'1989-03-28','kdi2rfkd','LdmRE84M',46000,'akriti243@gmail.com',7812905632,'F','India',4,1004),
('Akhil','G','Reddy','Meenakshi Road','Bangalore','Karnataka',592319,'1982-11-12','akhi21md','B7nIK92',42000,'akhil292@gmail.com',9320490140,'M','India',5,1003),
('Pooja','S','Roy','Tin Road','Mysore','Karnataka',612211,'1983-02-02','pooj21ie','GH46Ii32',44000,'pooj156@gmail.com',9888430560,'F','India',6,1006),
('Prerna','K','Kumari','Warangal','Chennai','Tamil Nadu',721030,'1987-05-08','prerndai2','MIVO98ij',48000,'prerna119@gmail.com',8595602203,'F','India',7,1003),
('Pawan','J','Roy','Saylam','Chennai','Tamil Nadu',680530,'1980-07-28','pawa8jio','KwoTY89',45000,'pawan357@gmail.com',8435609688,'M','India',8,1005);


INSERT INTO Deposit_Account(Deposit_Acc_No,Initial_Amount,Deposit_Account_Type,Current_Balance,Duration,Open_Date,Close_Date,Days,Closure_Type)
VALUES
(10001,6000,'Savings Account',20000,158,'2018-08-23','2024-05-28',15,'Not closed'),
(10002,2000,'Savings Account',30000,188,'2016-08-21','2024-06-20',20,'Not closed'),
(10003,1500,'Savings Account',20200,118,'2019-01-11','2026-03-18',26,'Not closed'),
(10004,100000,'Current Account',300000,313,'2017-02-07','2023-04-12',22,'Not closed'),
(10005,120000,'Current Account',320000,317,'2016-09-10','2021-04-17',24,'closed'),
(10006,200000,'Fixed Deposit Account',500000,300,'2018-05-06','2026-05-27',28,'Not closed'),
(10007,5000,'Saving Account',300000,367,'2015-09-06','2021-03-23',30,'closed'),
(10008,50000,'Current Account',400000,369,'2018-09-26','2025-03-15',27,'Not closed');


INSERT INTO Account(Acc_No,Balance,Open_Date,Acc_Type,Deposit_Acc_No,Emp_ID)
VALUES
(100001,50000,'2014-04-13','Savings Account',10001,1),
(100002,150000,'2016-07-23','Savings Account',10002,1),
(100003,100000,'2016-08-23','Savings Account',10003,3),
(100004,200000,'2018-10-06','Current Account',10004,4),
(100005,200000,'2017-04-16','Current Account',10005,3),
(100006,250000,'2017-01-03','Fixed Deposit Account',10006,5),
(100007,400000,'2013-01-05','Savings Account',10007,7),
(100008,300000,'2014-09-15','Current Account',10008,4);


INSERT INTO has(Cust_ID,Acc_No)
VALUES
('AB124D1',100001),
('AB124D2',100002),
('AB124D3',100003),
('AB124D4',100004),
('AB124D5',100005),
('AB124D6',100006),
('AB124D7',100007),
('AB124D8',100008);


INSERT INTO Transaction(Trans_ID,Trans_Type,Amount,Avail_Balance,Date_of_Trans,Cust_ID,Emp_ID)
VALUES
(111,'Debit',10000,80000,'2021-05-09','AB124D1',2),
(112,'Debit',5000,100000,'2021-04-29','AB124D2',1),
(113,'Debit',2000,200000,'2018-03-10','AB124D7',2),
(114,'Debit',10000,250000,'2017-03-01','AB124D1',4),
(115,'Credit',10000,300000,'2019-09-11','AB124D3',4),
(116,'Credit',25000,350000,'2020-09-16','AB124D6',3),
(117,'Debit',25000,350000,'2021-07-16','AB124D7',8),
(118,'Debit',20000,450000,'2021-06-26','AB124D8',8);


INSERT INTO Loan_Account(Loan_Acc_No,Loan_Type,Date_of_Loan,Status,Remaining_Amt,Total_Amount,Duration,Interest,Description,Emp_ID,Manager_ID)
VALUES
(121,'Personal Loan','2018-09-05','Approved',10000,100000,125,4.7,'To pay college fee',1,1001),
(122,'Personal Loan','2019-04-17','Not Approved',100000,1000000,425,10.4,'To get new Home',1,1001),
(123,'Car Loan','2019-02-17','Approved',80000,1000000,315,13.9,'To get new car',3,1003),
(124,'Car Loan','2020-01-27','Not Approved',50000,500000,289,7.45,'To get new car',1,1003),
(125,'Personal Loan','2021-02-09','Approved',100000,500000,214,8.5,'To get new things',5,1005),
(126,'Home Loan','2017-01-05','Approved',10000,1000000,1117,16.1,'To get new Home',6,1006),
(127,'Business Loan','2014-06-14','Approved',1000000,30000000,2067,11.2,'To start business',6,1006),
(128,'Business Loan','2018-07-04','Not Approved',1000000,40000000,2167,13.7,'To start business',8,1008);
