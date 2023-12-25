USE Assignment2
GO

CREATE TABLE List (
	ProductID INT PRIMARY KEY,
	NameCompanyProduct NVARCHAR(50),
	Address NVARCHAR(20),
	Telephone INT
)

DROP TABLE List

INSERT INTO List VALUES ('123', N'Asus', N'USA', 9832323);
INSERT INTO List VALUES ('124', N'Clienware', N'France', 9832324);
INSERT INTO List VALUES ('125', N'Bcer', N'Russian', 9832325);



CREATE TABLE ListProduct (
	NameProduct NVARCHAR(50),
	Describe NVARCHAR(50),
	Unit NVARCHAR(10),
	Price MONEY,
	Quantity INT
)

DROP TABLE ListProduct

INSERT INTO ListProduct VALUES (N'Máy Tính Asus', N'Máy nhập cũ', N'Chiếc', 800, 10);
INSERT INTO ListProduct VALUES (N'Máy Tính Alienware', N'Máy đang hot', N'Chiếc', 1200, 15);
INSERT INTO ListProduct VALUES (N'Máy Tính Acer', N'Máy bình bình', N'Chiếc', 1000, 10);

SELECT * FROM List
SELECT * FROM ListProduct

--4a)--
SELECT DISTINCT NameProduct FROM List
--4b)--
SELECT DISTINCT NameProduct FROM ListProduct


--5a)--
SELECT * FROM List ORDER BY NameCompanyProduct
--5b)--
SELECT DISTINCT NameProduct FROM ListProduct WHERE (Price DESC)
--5c)--

--5d)--
SELECT DISTINCT NameProduct FROM ListProduct WHERE (Quantity < 11)