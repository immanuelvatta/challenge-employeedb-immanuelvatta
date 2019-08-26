CREATE SCHEMA Department;
go
CREATE SCHEMA Employee;
go

CREATE TABLE Department.Department
(
    Did INT NOT NULL IDENTITY(1,1), 
    Name VARCHAR (30) NOT NULL,
    Location VARCHAR(30) NOT NULL
)
CREATE TABLE Employee.Employee
(
    Eid INT NOT NULL IDENTITY(1,1),
    Did INT NOT NULL,
    Firstname VARCHAR(30) NOT NULL,
    Lastname VARCHAR(30) NOT NULL
)
CREATE TABLE Employee.EmployeeDetails
(
    Emid INT NOT NULL IDENTITY(1,1),
    Eid INT NOT NULL,
    Salary NUMERIC(7,2) NOT NULL,
    Street VARCHAR(30) NOT NULL,
    City VARCHAR(20) NOT NULL,
    Province VARCHAR(20) NOT NULL
)

ALTER TABLE Department.Department
    add CONSTRAINT PK_Did PRIMARY KEY (Did);

ALTER TABLE Employee.Employee
    add CONSTRAINT PK_Eid PRIMARY KEY (Eid);
    
ALTER TABLE Employee.EmployeeDetails
    add CONSTRAINT PK_Emid PRIMARY KEY (Emid);

ALTER TABLE Employee.Employee
    add CONSTRAINT FK_Did FOREIGN KEY(Did) REFERENCES Department.Department(Did);

ALTER TABLE Employee.EmployeeDetails
    add CONSTRAINT FK_Eid FOREIGN KEY(Eid) REFERENCES Employee.Employee(Eid);
