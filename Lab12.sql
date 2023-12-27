CREATE TABLE Employee(
	EmployeeID INT,
	Name VARCHAR(100),
	Tel CHAR(11),
	Email VARCHAR(30)
)

DROP TABLE Employee

INSERT INTO Employee VALUES (123, N'Jason', 0123456789, N'jason@gmail.com')
INSERT INTO Employee VALUES (124, N'Mary', 0123456788, N'mary@gmail.com')
INSERT INTO Employee VALUES (125, N'Atom', 0123456787, N'atom@gmail.com')
INSERT INTO Employee VALUES (126, N'Sicir', 0123456786, N'sicir@gmail.com')
INSERT INTO Employee VALUES (127, N'Jack', 0123456785, N'jack@gmail.com')
INSERT INTO Employee VALUES (128, N'William', 0123456784, N'william@gmail.com')

SELECT * FROM Employee

CREATE TABLE Groupp(
	GroupID INT,
	GroupName VARCHAR(30),
	LeaderID INT,
	ProjectID INT
	PRIMARY KEY (GroupID, ProjectID)
)

DROP TABLE Groupp

INSERT INTO Groupp VALUES (246, N'Hoa Mat Troi', 100, 967853)

SELECT * FROM Groupp

CREATE TABLE Project(
	ProjectID INT,
	ProjectName VARCHAR(30),
	StartDate DATETIME,
	EndDate DATETIME,
	Period INT,
	Cost MONEY,
	FOREIGN KEY (ProjectID) REFERENCES Groupp(ProjectID)
)

DROP TABLE Project

INSERT INTO Project VALUES (

