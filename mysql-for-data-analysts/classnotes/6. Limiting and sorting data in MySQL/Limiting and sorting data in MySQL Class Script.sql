CREATE TABLE ali_muwwakkil.lease
(	LeaseID 		INT,
	LeaseName		Varchar(50),
    LeaseType		varchar(50),
    City			varchar(50),
    State 			varchar(50),
    Zip 			varchar(50),
    RentAmount		int
);

INSERT INTO ali_muwwakkil.Lease (LeaseID, LeaseName, LeaseType, City, State, Zip, RentAmount)
Values (1, 'TrumpTowers', '1 yr', 'New York', 'NY', '76238', 14000 ),
(2, 'FedEx Building', '6 month', 'Miami', 'FL', '77828', 9000),
(3, 'Radison Towers', '2 yr', 'Chicago', 'IL', '72578', 8000),
(4, 'Federal Building', '6 month', 'New York', 'NY', '76239', 12500),
(5, 'Ocean Side Building', '2 yr', 'Dallas', 'TX', '75007', 5000),
(6, 'Radison Twin Towers', '1 yr', 'Dallas', 'TX', '75238', 6000),
(7, 'Chump City High', '6 month', 'Miami', 'FL', '77829', 7500),
(8, 'Georgia Towers', '1 yr', 'Atlanta', 'GA', '85249', 6700),
(9, 'Empire State Building', '2 yr', 'New York', 'NY', '75238', 15000),
(10, 'Austin Building Towers', '1 yr', 'Austin', 'TX', '77385', 6500),
(11, 'Overly Building', '2 yr', 'Austin', 'TX', '77440', 7000);

