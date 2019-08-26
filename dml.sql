INSERT INTO Department.Department(Name, Location)
VALUES('HR', 'Texas');

INSERT INTO Department.Department(Name, Location)
VALUES('Developer', 'California');

INSERT INTO Department.Department(Name, Location)
VALUES('Tester', 'Florida');

INSERT INTO Department.Department(Name, Location)
VALUES('Marketing', 'New York');

INSERT INTO Employee.Employee(Did, Firstname, Lastname)
VALUES(2, 'Immanuel', 'Vattakunnel');

INSERT INTO Employee.Employee(Did, Firstname, Lastname)
VALUES(1, 'John', 'Smith');

INSERT INTO Employee.Employee(Did, Firstname, Lastname)
VALUES(2, 'Tobin', 'Tom');

INSERT INTO Employee.Employee(Did, Firstname, Lastname)
VALUES(3, 'Benney', 'Doe');

INSERT INTO Employee.Employee(Did, Firstname, Lastname)
VALUES(4, 'Tina', 'Smith');

INSERT INTO Employee.EmployeeDetails(Eid, Salary, Street, City, Province)
VALUES(1, 95000, 'Duncan', 'Austin', 'Texas');

INSERT INTO Employee.EmployeeDetails(Eid, Salary, Street, City, Province)
VALUES(2, 99000, 'Case', 'Plano', 'Texas');

INSERT INTO Employee.EmployeeDetails(Eid, Salary, Street, City, Province)
VALUES(3, 92000, 'Center', 'Arlington', 'Texas');

INSERT INTO Employee.EmployeeDetails(Eid, Salary, Street, City, Province)
VALUES(4, 70000, 'Red River', 'Austin', 'Texas');

INSERT INTO Employee.EmployeeDetails(Eid, Salary, Street, City, Province)
VALUES(5, 60000, 'Beverly', 'Los Angeles', 'California');

SELECT E.FirstName, E.LastName, D.Name 
FROM Employee.Employee As E  INNER JOIN Department.Department AS D 
ON E.Did = D.Did
WHERE D.Name = 'Marketing';

SELECT D.Name, ED.Salary
FROM ((Employee.EmployeeDetails AS ED
INNER JOIN Employee.Employee AS E ON ED.Eid = E.Eid)
INNER JOIN Department.Department AS D ON E.Did = D.Did)
WHERE D.Name = 'Marketing';

UPDATE Employee.EmployeeDetails
SET Salary = 90000
WHERE 
Emid = 9; 

