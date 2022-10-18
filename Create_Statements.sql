--Bank Management System

--Drop Bank Database if already exist
DROP DATABASE IF EXISTS BANK;
--Create a new Bank Database
CREATE DATABASE BANK;
--List of Databases
--\l;
--Connecting to Bank Database
\c bank;


--Create Statements
CREATE TABLE Customer(
	First_Name varchar(50) NOT NULL,
	Middle_Name varchar(50),
	Last_Name varchar(50) NOT NULL,
	Street varchar(20),
	City varchar(20),
	State varchar(20),
	Pin int,
	Age int NOT NULL,
	Email varchar(30),
	Gender char NOT NULL,
	Nationality varchar(15) NOT NULL,
	Cust_ID varchar(10) NOT NULL,
	Contact bigint NOT NULL,
	PAN_no varchar(10) NOT NULL,
	Salary int,
	Primary key(Cust_ID));


CREATE TABLE Account(
	Acc_No int NOT NULL,
	Balance int,
	Open_date date NOT NULL,
	Acc_Type varchar(30) NOT NULL,
	Primary key(Acc_No));


CREATE TABLE Deposit_Account(
	Deposit_Acc_No int NOT NULL,
	Initial_Amount int NOT NULL,
	Deposit_Account_Type varchar(30) NOT NULL,
	Current_Balance int NOT NULL,
	Duration int,
	Open_Date date NOT NULL,
	Close_Date date NOT NULL,
	Days int,
	Closure_Type varchar(30) NOT NULL,
	Primary key(Deposit_Acc_No));


CREATE TABLE Manager(
	Manager_ID int NOT NULL,
	Email_ID varchar(30),
	Nationality varchar(15) NOT NULL,
	First_Name varchar(50) NOT NULL,
	Middle_Name varchar(50) NOT NULL,
	Last_Name varchar(50) NOT NULL,
	Street varchar(20),
	City varchar(20),
	State varchar(20),
	Pin int,
	DOB date NOT NULL,
	Username varchar(30),
	Password varchar(30) UNIQUE,
	Salary int NOT NULL,
	Contact bigint NOT NULL,
	Gender char NOT NULL,
	primary key(Manager_ID));


CREATE TABLE Interest(
	Interest_ID int NOT NULL,
	Savings_int float NOT NULL,
	RD_int float,
	FD_int float,
	Interest_rate float NOT NULL,
	Interest_Amount int NOT NULL,
	Primary key(Interest_ID),
	Manager_Id int NOT NULL,
	Foreign key(Manager_ID) references Manager(Manager_Id));


CREATE TABLE Employee(
	First_Name varchar(50) NOT NULL,
	Middle_Name varchar(50) NOT NULL,
	Last_Name varchar(50) NOT NULL,
	Street varchar(20),
	City varchar(20),
	State varchar(20),
	Pin int,
	DOB date NOT NULL,
	Username varchar(30),
	Password varchar(30) UNIQUE,
	Salary int NOT NULL,
	Contact bigint NOT NULL,
	Gender char NOT NULL,
	Email_ID varchar(30),
	Nationality varchar(15) NOT NULL,
	Emp_ID int NOT NULL,
	Manager_ID int NOT NULL,
	Primary key(Emp_ID),
	Foreign key(Manager_ID) references Manager(Manager_ID));


CREATE TABLE has(
	Cust_ID varchar(10) NOT NULL,
	Acc_No int NOT NULL,
	Primary key(Cust_ID,Acc_No),
	Foreign key(Cust_ID) references Customer(Cust_ID),
	Foreign key(Acc_No) references Account(Acc_No));


CREATE TABLE Transaction(
	Trans_ID int NOT NULL,
	Trans_Type varchar(20) NOT NULL,
	Amount int,
	Avail_Balance int NOT NULL,
	Date_of_Trans date NOT NULL,
	Cust_ID varchar(10) NOT NULL,
	Emp_ID int NOT NULL,
	Foreign key(Cust_ID) references Customer(Cust_ID),
	Foreign key(Emp_ID) references Employee(Emp_ID));


CREATE TABLE Loan_Account(
	Loan_Acc_No int NOT NULL,
	Loan_Type varchar(15),
	Date_of_Loan date NOT NULL,
	Status varchar(20),
	Remaining_Amt int NOT NULL,
	Total_Amount int NOT NULL,
	Duration int,
	Interest float NOT NULL,
	Description varchar(30),
	Emp_ID int NOT NULL,
	Manager_ID int NOT NULL,
	Primary key(Loan_Acc_No),
	Foreign key(Emp_ID) references Employee(Emp_ID),
	Foreign key(Manager_ID) references Manager(Manager_ID));

--ALTER statement
ALTER TABLE Account
ADD Deposit_Acc_No int NOT NULL,
ADD Emp_ID int NOT NULL,
ADD Foreign key(Deposit_Acc_No) references Deposit_Account(Deposit_Acc_No),
ADD Foreign key(Emp_ID) references Employee(Emp_ID);

--List of relations in Bank Database
\dt;