--Bank Management System

--Connecting to Bank Database
\c bank;


--Access Privileges:
--Multiple users with different access privilege levels for different parts of the database should be created.

--1. Create a user with permission to the Select and Insert privileges on all Tables for the Bank Database.
DROP USER IF EXISTS Pawan;
CREATE USER Pawan WITH PASSWORD 'Pawan123';
GRANT SELECT,INSERT ON ALL TABLES IN SCHEMA PUBLIC TO Pawan;


--2. Create a user with permission to the Select, Insert and Update privileges on certain Tables for the Bank Database.
DROP USER IF EXISTS Phani;
CREATE USER Phani WITH PASSWORD 'Phani576';
GRANT SELECT,INSERT,UPDATE ON CUSTOMER,MANAGER,EMPLOYEE TO Phani;


--3. Create a user with permission to the Select privilege on all Tables for the Bank Database.
DROP USER IF EXISTS Rahul;
CREATE USER Rahul WITH PASSWORD 'Rahul315';
GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO Rahul;


--4. Create a user with permission to ALL privileges on all Tables for the Bank Database.
DROP USER IF EXISTS Raj;
CREATE USER Raj WITH PASSWORD 'Raj338';
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA PUBLIC TO Raj;
--Remove the user Raj
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA PUBLIC FROM Raj;
DROP USER IF EXISTS Raj;