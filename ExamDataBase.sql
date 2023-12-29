CREATE TABLE Department(
	DepartID INT PRIMARY KEY,
	DepartName VARCHAR(50) NOT NULL,
	Description VARCHAR(100) NOT NULL
)

INSERT INTO Department VALUES (123, N'Jack', N'Description00');
INSERT INTO Department VALUES (124, N'Jacg', N'Description01');
INSERT INTO Department VALUES (125, N'Jacp', N'Description02');


CREATE TABLE Employee(
	EmpCode CHAR(6) PRIMARY KEY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	BirthDay SMALLDATETIME NOT NULL,
	Gender Bit DEFAULT 1,
	Address VARCHAR(100),
	DepartID INT,
	FOREIGN KEY (DepartID) REFERENCES Department(DepartID),
	Salary MONEY
)

INSERT INTO Employee VALUES (99, N'Nguyen', N'Anh', '2005-01-22', 1, N'ThaiBinh', 123, 9999);
INSERT INTO Employee VALUES (98, N'Nguyen', N'Anh', '2005-01-22', 1, N'ThaiBinh', 124, 9999);
INSERT INTO Employee VALUES (97, N'Nguyen', N'Anh', '2005-01-22', 0, N'ThaiBinh', 125, 9999);


DROP TABLE Department
SELECT * FROM Department

DROP TABLE Employee
SELECT * FROM Employee

UPDATE Employee
SET Salary = Salary * 1.1
SELECT Salary FROM Employee

ALTER TABLE Employee 
ADD CONSTRAINT Salary CHeck (Salary > 0)