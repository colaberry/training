CREATE TABLE ali_muwwakkil.Toys 
(	ToyID 	INT,
	ToyName varchar(50),
    ToyCost Decimal(10,2)
);

CREATE TABLE ali_muwwakkil.ToySales
(	SalesID 	INT,
	ToyID		INT,
    PurchaseDate Datetime,
    UnitCount	INT,
    ReceiptID 	int
);

/*
Run the below code only after the Contraints have been setup.
*/

INSERT INTO ali_muwwakkil.Toys (ToyName,ToyCost)
SELECT  'Toy Truck','5.00' UNION
SELECT  'Basketball','15.00' UNION
SELECT  'Football','20.00' UNION
SELECT  'Frisbee','4.00' UNION
SELECT  'Bike','65.00' UNION
SELECT  'Teddy Bear','25.00' UNION
SELECT  'Water Gun','35.00' UNION
SELECT  'Baseball Bat','15.00' UNION
SELECT  'Baseball','3.00' UNION
SELECT  'Skateboard','40.00';

INSERT INTO ali_muwwakkil.ToySales (ToyID, UnitCount, ReceiptID)
SELECT	1,1,10001 UNION
SELECT	1,2,10002 UNION
SELECT	2,3,10003 UNION
SELECT	2,4,10004 UNION
SELECT	3,5,10005 UNION
SELECT	3,1,10006 UNION
SELECT	4,2,10007 UNION
SELECT	5,3,10008 UNION
SELECT	5,4,10009 UNION
SELECT	6,5,10010;
