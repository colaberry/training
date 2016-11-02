CREATE TABLE ali_muwwakkil.Student
(	StudentID 		INT,
	StudentName		Varchar(50),
    StudentClass	Varchar(50),
    StudentAge		INT,
    StudentRank		INT,
    TestScore		int		);
    
INSERT INTO ali_muwwakkil.Student
SELECT 1,'Jack','Freshman',18,1,100
Union
SELECT 2,'Mike','Sophomore',19,3,85
Union
SELECT 3,'Ralph','Junior',20,2,95
Union
SELECT 4,'Kishan','Freshman',19,1,93
Union
SELECT 5,'Ali','Sophomore',19,2,91
Union
SELECT 6,'Terrel','Junior',20,3,87
Union
SELECT 7,'Anand','Freshman',20,3,86
Union
SELECT 8,'Sai','Sophomore',21,1,99
Union
SELECT 9,'Larry','Junior',22,1,98
Union
SELECT 10,'Deion','Freshman',18,4,82
Union
SELECT 11,'Sammy','Senior',21,4,81
Union
SELECT 12,'Ralph','Senior',22,3,87
Union
SELECT 13,'Simon','Senior',21,2,90
Union
SELECT 14,'Lebron','Senior',20,1,97