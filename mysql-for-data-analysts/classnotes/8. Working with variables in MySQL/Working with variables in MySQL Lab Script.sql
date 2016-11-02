CREATE TABLE ali_muwwakkil.flights 
(	FlightID 				INT NOT NULL AUTO_INCREMENT,
	FlightDatetime			datetime,
    FlightDepartureCity 	varchar(50),
    FlightDestinationCity 	varchar(50),
    Ontime 					int,
  PRIMARY KEY (FlightID)
);

INSERT INTO ali_muwwakkil.flights (FlightDateTime, FlightDepartureCity, FlightDestinationCity, Ontime)
SELECT '2016/01/01','Dallas-Texas','L.A.',1  UNION
SELECT '2016/02/01','Austin-Texas','New York',1  UNION
SELECT '2016/03/01','Houston-Texas','New Jersy',0  UNION
SELECT '2016/04/01','San Antonio-Texas','Mesquite',1  UNION
SELECT '2016/05/01','Lewisville-Texas','Albany',0  UNION
SELECT '2016/06/01','Orlando-Florida','Atlanta',1  UNION
SELECT '2016/07/01','Chicago-Illinois','Oklahoma City',1  UNION
SELECT '2016/08/01','New Orleans-Louisiana','Memphis',0  UNION
SELECT '2016/09/01','Miami-Florida','Charlotte',1  UNION
SELECT '2016/10/01','Sacramento-California','San Francisco',1;

CREATE TABLE  ali_muwwakkil.HospitalStaff
(	EmpID 		INT NOT NULL AUTO_INCREMENT,
	NameJob 	varchar(50) ,
	HireDate 	datetime NULL,
	Location 	varchar(150) NULL,
  PRIMARY KEY (EmpID)
);

INSERT INTO ali_muwwakkil.HospitalStaff (NameJob,HireDate,Location)
SELECT		'Dr. Johnson_Doctor'	,'2016/03/01',	'Dallas-Texas' UNION
SELECT		'Nurse Jackie_Nurse'	,'2016/10/15',	'Mesquite-Texas' UNION
SELECT		'Anne_Nurse Assistant'	,'2016/11/01',	'Denton-Texas' UNION
SELECT		'Dr. Jackson_Doctor'	,'2016/04/02',	'Irving-Texas' UNION
SELECT		'Jamie_Nurse'			,'2016/02/15',	'San Francisco-California' UNION
SELECT		'Aesha_Nurse Assistant'	,'2016/06/30',	'Oakland-California' UNION
SELECT		'Dr. Ali_Doctor'		,'2016/07/04',	'L.A.-California' UNION
SELECT		'Evelyn_Nurse'			,'2016/01/07',	'Fresno-California' UNION
SELECT		'James Worthy_Nurse Assistant'	,'2016/08/01',	'Orlando-Florida' UNION
SELECT		'Anand_Doctor'			,'2016/03/01',	'Miami-Florida';

SELECT 		*
FROM 		ali_muwwakkil.flights;

SELECT		*
FROM		ali_muwwakkil.HospitalStaff;



