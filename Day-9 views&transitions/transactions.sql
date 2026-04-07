-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS BankDB;
USE BankDB;

-- Step 2: Create Table
CREATE TABLE Accounts (
    Acc_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);

-- Step 3: Insert Sample Data
INSERT INTO Accounts VALUES
(101, 'Arjun', 15000.00),
(102, 'Priya', 10000.00);

select * from Accounts;

-- check whether it is on or off
select @@autocommit;
set autocommit = 0;

start transaction;
-- deduct 5000 from arjun
update Accounts
set balance = balance - 5000
where Acc_no = 101;

-- add 5000 to priya
update Accounts
set Balance = Balance + 5000
where Acc_no = 102;

-- check before commit
select * from Accounts;

-- save changes permanently
commit;

-- check after commit
select * from Accounts;

start transaction;
-- deduct 2000 from Arjun
update Accounts
set Balance = Balance - 2000
where Acc_no = 101;

-- check before RollBack
select * from Accounts;

-- Cancel Transaction
rollback;

START TRANSACTION;
-- step-1 : Dedcut 1000
UPDATE Accounts
SET Balance = Balance - 1000
where Acc_No = 101;

select * from Accounts;

-- Create SavePoint
savepoint after_deduction;

-- Step-2 : Add 1000
update Accounts
set Balance = Balance + 1000
where Acc_no = 102;

select * from Accounts;

-- Suppose something goes wrong
-- rollback only to savepoint
rollback to  after_deduction;

-- Final Commit
commit;
