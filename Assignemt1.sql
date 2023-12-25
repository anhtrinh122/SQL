USE Assignment1
GO

--oder--
CREATE TABLE Oder (
	CustomerID INT,
	Oderdate DATE,
	PRIMARY KEY (customerID)
)

INSERT INTO Oder VALUES (123, '2023/12/25')
INSERT INTO Oder VALUES (124, '2023/12/22')

DROP TABLE Oder



--khach hang--
CREATE TABLE Customers (
	CustomerID INT,
	Name NVARCHAR(255),
	Address NVARCHAR(255),
	Tel INT,
	FOREIGN KEY (customerID) REFERENCES Oder(customerID)
)

DROP TABLE Customers

INSERT INTO Customers VALUES (123, N'Nguyen Van A', 'MyDinh,HaNoi', 123456789)
INSERT INTO Customers VALUES (124, N'Nguyen Van B', 'CauGiay,HaNoi', 987654321)

SELECT * FROM Oder
SELECT * FROM Customers

CREATE TABLE Product (
	ProductID INT PRIMARY KEY,
	NamePro NVARCHAR(255),
	Unit NVARCHAR(225),
	Price MONEY,
	Quantity INT,
	IntoMoney INT
)

DROP TABLE Product

INSERT INTO Product VALUES (01, N'May Tinh T450', 'Chiec', 1000, 1, 1000)
INSERT INTO Product VALUES (02, N'Dien Thoai Nokia5670', 'Chiec', 200, 2, 400)
INSERT INTO Product VALUES (03, N'May In Samsung450', 'Chiec', 100, 1, 100)

SELECT * FROM Product