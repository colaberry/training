CREATE TABLE `ali_muwwakkil`.`loan` (
  `LoanNumber` INT NOT NULL AUTO_INCREMENT,
  `CustomerFname` VARCHAR(50) NULL,
  `CustomerLname` VARCHAR(50) NULL,
  `PropertyAddress` VARCHAR(150) NULL,
  `City` VARCHAR(150) NULL,
  `State` VARCHAR(50) NULL,
  `BankruptcyAttorneyName` VARCHAR(50) NULL,
  `UPB` DECIMAL NULL,
  `LoanDate` DATETIME NULL,
  PRIMARY KEY (`LoanNumber`));


INSERT INTO ali_muwwakkil.Loan
           (CustomerFname
           ,CustomerLname
           ,PropertyAddress
           ,City
           ,State
           ,BankruptcyAttorneyName
		   ,UPB
		   ,LoanDate)
SELECT	'Mr. Anand','Dasari','1212 Main St.','Plano','TX','Jerry',85000,'2016/01/01' UNION
SELECT	'Mr. John','Nasari','1215 Joseph St.','Garland','TX','Jerry',95000,'2016/04/02' UNION
SELECT	'Dr. Ali','Muwwakkil','2375 True True St.','Atlanta','GA','Diesel',115000,'2015/05/03' UNION
SELECT	'Mr. John','Brown','11532 Chain St.','SanFrancisco','CA','Mora',350000,'2015/06/13' UNION
SELECT	'Dr. Kishan','Johnson','4625 Miller Rd.','Atlanta','GA','Diesel',225000,'2016/08/09' UNION
SELECT	'Mr. John','Jackson','972 Flower Rd.','Dallas','TX','Jerry',150000,'2016/03/12' UNION
SELECT	'Sr. Ralph','Jenkins','1518 Mission Ridge St.','SanFrancisco','CA','Mora',650000,'2014/05/19' UNION
SELECT	'Dr. John','Howard','102 Washington','Dallas','TX','Jerry',450000,'2015/04/05' UNION
SELECT	'Mrs. Marsha','Tamrie','1301 Solana','SanFrancisco','CA','Mora',750000,'2014/03/20'  UNION
SELECT	'Mrs. Alexis','Gibson','1111 Phillips Rd.','Atlanta','GA','Diesel',99000,'2015/06/30' ;
        
SELECT * FROM ali_muwwakkil.Loan



