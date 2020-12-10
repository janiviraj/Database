CREATE DATABASE  IF NOT EXISTS `homelessPeopleInformation`;
USE homelessPeopleInformation;


-- -----------------------------------------------------
-- Table structure for civilian
-- -----------------------------------------------------
DROP TABLE IF EXISTS `civilian`;

CREATE TABLE IF NOT EXISTS `civilian` (
  `CivilianId` VARCHAR(30) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `CivilainFirstName` VARCHAR(45) DEFAULT NULL,
  `CivilianLastName` VARCHAR(45) DEFAULT NULL,
  `CivilianStreet` VARCHAR(45) DEFAULT NULL,
  `CivilianCity` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL,
  `CivilianState` VARCHAR(20) DEFAULT NULL,
  `CivilianZipCode` INT(15) DEFAULT NULL,
  `CivilianNumber` INT(20) DEFAULT NULL,
  PRIMARY KEY (`CivilianId`))
ENGINE = InnoDB CHARSET=utf8;

-- Dumping valuse for table civilian


LOCK TABLES `civilian` WRITE;
INSERT INTO `civilian` VALUES ('Civilian1', 'Viraj', 'Jani', '55', 'Boston', 'MA', '02115', '12345678'),('Civilian2', 'Raj', 'Shah', '40', 'Boston', 'MA', '02114', '56978412'),('Civilian3', 'Manali', 'Sharma', '55', 'Boston', 'MA', '02116', '89563425'),('Civilian4', 'Rushabh', 'Bhavsar', '50', 'Boston', 'MA', '02115', '90908645'),('Civilian5', 'Yusuf', 'Ozbek', '25', 'Boston', 'MA', '02115', '89456367'),('Civilian6', 'Riya', 'Rajput', '40', 'Boston', 'MA', '02116', '56978456'),('Civilian7', 'Chetan', 'B', '55', 'Boston', 'MA', '02115', '96547862'),('Civilian8', 'Nupur', 'Deshpande', '40', 'Boston', 'MA', '02116', '34569756'),('Civilian9', 'Mayur', 'Dave', '55', 'Boston', 'MA', '02115', '61789674'),('Civilian10', 'Shardul', 'Thakur', '80', 'Boston', 'MA', '02114', '61789895'),('Civilian11', 'Sunil', 'Yadav', '40', 'Boston', 'MA', '02116', '61782874'),('Civilian12', 'Tom', 'Willams', '80', 'Boston', 'MA', '02114', '61789896'),('Civilian13', 'Harry', 'Potter', '55', 'Boston', 'MA', '02115', '61789625'),('Civilian14', 'Emma', 'Stones', '58', 'Boston', 'MA', '02115', '61789456');
UNLOCK TABLES;

Select * from civilian;

-- -----------------------------------------------------
-- Table Structure for PoliceStation
-- -----------------------------------------------------


DROP TABLE IF EXISTS `PoliceStation` ;

CREATE TABLE IF NOT EXISTS `PoliceStation` (
  `PoliceStationID` VARCHAR(45) NOT NULL,
  `PoliceStationStreet` VARCHAR(45) NULL,
  `PoliceStationCity` VARCHAR(45) NULL,
  `PoliceStationState` VARCHAR(45) NULL,
  `PoliceStationZip` VARCHAR(45) NULL,
  PRIMARY KEY (`PoliceStationID`))
ENGINE = InnoDB;

Select * from PoliceStation;


-- Dumping values for Table PoliceStation

LOCK TABLES `PoliceStation` WRITE;
INSERT INTO `PoliceStation` VALUES ('P0001', 'Burbank', 'Boston', 'MA', '02140'),('P0002', 'Tremont', 'Boston', 'MA', '02139'),('P0003', 'Botolph', 'Boston', 'MA', '02421'),('P0004', 'Boylston', 'Boston', 'MA', '02115');
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table structure for Police 
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Police` ;
SET foreign_key_checks = 0;
CREATE TABLE IF NOT EXISTS `Police` (
  `Police_id` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `PoliceStation_PoliceStationID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Police_id`),
  CONSTRAINT `fk_Police_PoliceStation1` FOREIGN KEY (`PoliceStation_PoliceStationID`) REFERENCES `PoliceStation` (`PoliceStationID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Police` (
  `Police_id` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) DEFAULT NULL,
  `LastName` VARCHAR(45) DEFAULT NULL,
  
  `PoliceStation_PoliceStationID` VARCHAR(45) NOT NULL,
PRIMARY KEY (`Police_id`),
UNIQUE KEY `Police_id_UNIQUE` (`Police_id`),
KEY `fk_Police_PoliceStation1_idx` (`PoliceStation_PoliceStationID`),
  CONSTRAINT `fk_Police_PoliceStation1` FOREIGN KEY (`PoliceStation_PoliceStationID`) REFERENCES `PoliceStation` (`PoliceStationID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


Select * from Police;

-- Dumping values for Police Table

LOCK TABLES `Police` WRITE;
INSERT INTO `Police` VALUES ('PID0001', 'Steve', 'Jobs', 'P0001'),('PID0002', 'Roger', 'Fed', 'P0002'),('PID0003', 'Chris', 'Ronaldo', 'P0002'),('PID0004', 'Chris', 'Evans', 'P0004'),('PID0005', 'Steve', 'Jobs', 'P0001'),('PID0006', 'Sachin', 'Tendulkar', 'P0001'),('PID0007', 'Phil', 'Mavreick', 'P0003'),('PID0008', 'Eden', 'Hazard', 'P0001'),('PID0009', 'Paul', 'Pogba', 'P0002'),('PID0010', 'Sam', 'Adams', 'P0001');
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table  structure for LocateHomeless
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LocateHomeless` ;

CREATE TABLE IF NOT EXISTS `LocateHomeless` (
  `Location_id` VARCHAR(45) NOT NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  PRIMARY KEY (`Location_id`))
ENGINE = InnoDB;

Delete From LocateHomeless Where Location_id= '1005';

-- Dumping values in LocateHomeless Table

LOCK TABLES `LocateHomeless` WRITE;
INSERT INTO `LocateHomeless` (`Location_id`, `Street`, `City`, `ZipCode`,`State`) VALUES ('1001', 'Burbank', 'Boston', '02140','MA'),('1002', 'Botolph', 'Boston', '02421', 'MA'),('1003', 'Boylston', 'Boston', '02115', 'MA'),('1004', 'Tremont', 'Boston', '02139', 'MA'),('1005', 'Roxbury', 'Boston', '02140', 'MA');
UNLOCK TABLES;


select * from LocateHomeless;

-- -----------------------------------------------------
-- Table structure for Homeless Person
-- -----------------------------------------------------
DROP TABLE IF EXISTS `HomelessPerson` ;

CREATE TABLE IF NOT EXISTS `HomelessPerson` (
  `HomelessPerson_id` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) DEFAULT NULL,
  `LastName` VARCHAR(45) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` VARCHAR(45) DEFAULT NULL,
  `Race` VARCHAR(45) DEFAULT NULL,
  `Ethenicity` VARCHAR(45) DEFAULT NULL,
  `Location_Location_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`HomelessPerson_id`),
  CONSTRAINT `fk_Homeless Location_Location_id`
    FOREIGN KEY (`Location_Location_id`)
    REFERENCES `LocateHomeless` (`Location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


select * FROM homelessperson;

-- Dumping values in homelessperson table

INSERT INTO `homelessperson` VALUES ('H000001', 'Rodger', 'Adams', '1994-12-02', 'Male', 'Native', 'American', '1005'),('H000002', 'Crash', 'Thomson', '1967-11-03', 'Male', 'African', 'American', '1001'),('H000003', 'Manali', 'Sharma', '1994-11-11', 'Female', 'Native', 'Asian', '1002'),('H000004', 'Will ', 'Smith', '1960-12-03', 'Male', 'African', 'American', '1005'),('H000005', 'Anshul', 'Singh', '1977-07-05', 'Male', 'Native', 'Asian', '1005'),('H000006', 'Rose', 'Williams', '1990-03-03', 'Female', 'Native', 'American', '1001'),('H000007', 'Katlyne', 'Stacy', '2000-11-03', 'Female', 'African', 'American', '1005'),('H000008', 'Kate', 'Willison', '1997-11-03', 'Female', 'African', 'American', '1002'),('H000009', 'Sam', 'Mavreic', '2004-11-03', 'Male', 'Native', 'American', '1005'),('H000010', 'Steve', 'Nantis', '1950-11-03', 'Male', 'African', 'American', '1003'),('H000011', 'Pooja', 'Joshi', '1980-11-03', 'Female', 'Native', 'Asian', '1004');

-- -----------------------------------------------------
-- Table `Department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Department` ;

CREATE TABLE IF NOT EXISTS `Department` (
  `Department_id` VARCHAR(45)  NOT NULL,
  `Department Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Department_id`))
ENGINE = InnoDB;

select * from Department;

-- Dumping values in Department

INSERT INTO `Department` VALUES ('BOS101', 'State Health'),('BOS102', 'Local Health');


-- -----------------------------------------------------
-- Table structure for Hospital
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital` ;

CREATE TABLE IF NOT EXISTS `Hospital` (
  `Hospital_id` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NULL,
  PRIMARY KEY (`Hospital_id`))
ENGINE = InnoDB;

select * from Hospital;

-- Dumping Values in hospital Table

INSERT INTO `Hospital`VALUES ('HOS1001', 'AIMS', 'Burbank', 'Boston', 'MA', '02140'),('HOS1002', 'WeCare', 'Botolph', 'Boston', 'MA', '02115'),('HOS1003', 'Reliance', 'Roxbury', 'Boston', 'MA', '02140'),('HOS1004', 'Hearts', 'Trmont', 'Boston', 'MA', '02139');

-- -----------------------------------------------------
-- Table structur for HospitalDepartment
-- -----------------------------------------------------
DROP TABLE IF EXISTS `HospitalDepartment` ;

CREATE TABLE IF NOT EXISTS `HospitalDepartment` (
  `Hospital_id` VARCHAR(45) NOT NULL,
  `Department_id` VARCHAR(45) NOT NULL,
  CONSTRAINT `fk_HospitalDepartment_Hospital1`
    FOREIGN KEY (`Hospital_id`)
    REFERENCES `Hospital` (`Hospital_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HospitalDepartment_Department1`
    FOREIGN KEY (`Department_id`)
    REFERENCES `Department` (`Department_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SELECT * From HospitalDepartment;

-- Dumping values in HospitalDepartment

INSERT INTO `HospitalDepartment` VALUES ('HOS1001','BOS101'),('HOS1002','BOS101'),('HOS1003','BOS102'),('HOS1004','BOS102');


-- -----------------------------------------------------
-- Table structure Doctor
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Doctor` ;

CREATE TABLE IF NOT EXISTS `Doctor`(
  `Doctor_id` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Hospital_Hospital_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Doctor_id`),
  CONSTRAINT `fk_Doctor_Hospital1`
    FOREIGN KEY (`Hospital_Hospital_id`)
    REFERENCES `Hospital` (`Hospital_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select* From Doctor;

-- Dumping values in doctor table

INSERT INTO `Doctor` VALUES ('DOC101', 'Jon', 'Snow', 'Boston', 'HOS1001'),('DOC102', 'Peter', 'Pan', 'NewYork', 'HOS1002'),('DOC103', 'Arya', 'Stark', 'NewJersy', 'HOS1001'),('DOC104', 'Suraj', 'Joshi', 'Boston', 'HOS1003'),('DOC105', 'Arron', 'Ramsey', 'Boston', 'HOS1004'),('DOC106', 'Rakesh', 'Sharma', 'Boston', 'HOS1004');


-- -----------------------------------------------------
-- Table structure HospitalRoom
-- -----------------------------------------------------
DROP TABLE IF EXISTS `HospitalRoom` ;

CREATE TABLE IF NOT EXISTS `HospitalRoom` (
  `Room_id` VARCHAR(45) NOT NULL,
  `Capacity` INT(20) NULL,
  `Hospital_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Room_id`),
  CONSTRAINT `fk_HospitalRoom_Hospital1`
    FOREIGN KEY (`Hospital_id`)
    REFERENCES `Hospital` (`Hospital_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select* From HospitalRoom;

-- Dumping values in HospitalRoom

INSERT INTO `HospitalRoom` (`Room_id`, `Capacity`, `Hospital_id`) VALUES ('ROOM101', 4, 'HOS1001'),('ROOM102', 2, 'HOS1001'),('ROOM201', 1, 'HOS1002'),('ROOM202', 2, 'HOS1002'),('ROOM203', 4, 'HOS1002'),('ROOM204', 1, 'HOS1002'),('ROOM205', 2, 'HOS1002'),('ROOM301', 2, 'HOS1003'),('ROOM302', 2, 'HOS1003'),('ROOM303', 4, 'HOS1003'),('ROOM304', 4, 'HOS1003'),('ROOM102', 2, 'HOS1001'),('ROOM103', 4, 'HOS1001'),('ROOM104', 2, 'HOS1001'),('ROOM105', 2, 'HOS1001');


-- -------------------------------------------------------------
-- Table structure for Record Table
-- -------------------------------------------------------------
DROP TABLE IF EXISTS `HomlessPersonRecord` ;


CREATE TABLE IF NOT EXISTS `HomlessPersonRecord` (
`ReportHomeless_id`  VARCHAR(45) NOT NULL,
  `DateOfReport` DATE NOT NULL,
  `Doctor_Doctor_id` VARCHAR(45) DEFAULT NULL,
  `Police_Police_id` VARCHAR(45) NOT NULL,
  `HomelessPerson_HomelessPerson_id` VARCHAR(45) NOT NULL,
  `HomelessPerson_Location_Location_id` VARCHAR(45) NOT NULL,
  `ReportType_ReportTypeID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ReportHomeless_id`),
  CONSTRAINT `fk_Report_Doctor1`
    FOREIGN KEY (`Doctor_Doctor_id`)
    REFERENCES `Doctor`(`Doctor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Report_Police1`
    FOREIGN KEY (`Police_Police_id`)
    REFERENCES `Police` (`Police_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HomlessPersonRecord_Homeless Person1`
    FOREIGN KEY (`HomelessPerson_HomelessPerson_id`)
    REFERENCES `HomelessPerson` (`HomelessPerson_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HomlessPersonRecord_ReportType1`
    FOREIGN KEY (`ReportType_ReportTypeID`)
    REFERENCES `ReportType` (`ReportTypeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Dumping data int HomlessPersonRecord

INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00001', '2017-01-21', 'DOC101', 'PID0001', 'H000006', '1001', 'RE00006');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00002', '2018-02-11', 'PID0002', 'H000007', '1005', 'RE00007');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00003', '2018-09-11', 'DOC102', 'PID0002', 'H000002', '1001', 'RE00002');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00004', '2017-11-12', 'DOC104', 'PID0001', 'H000001', '1005', 'RE00001');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00005', '2016-01-16', 'DOC101', 'PID0001', 'H000004', '1005', 'RE00004');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00006', '2017-05-18', 'PID0003', 'H000003', '1002', 'RE00003');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00007', '2016-04-11', 'DOC106', 'PID0003', 'H000008', '1002', 'RE00008');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00008', '2017-09-11', '', 'PID0002', 'H000009', '1005', 'RE00009');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00009', '2018-10-11', 'DOC103', 'PID0002', 'H000010', '1003', 'RE00010');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00010', '2017-09-21', 'PID0001', 'H000011', '1004', 'RE00011');
INSERT INTO `HomlessPersonRecord` (`ReportHomeless_id`, `DateOfReport`, `Doctor_Doctor_id`, `Police_Police_id`, `HomelessPerson_HomelessPerson_id`, `HomelessPerson_Location_Location_id`, `ReportType_ReportTypeID`) VALUES ('HR00011', '2016-09-30', 'DOC101', 'PID0001', 'H000005', '1005', 'RE00005');

Select * FROM HomlessPersonRecord;
-- -----------------------------------------------------
-- Table structure for `ReportType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ReportType` ;

CREATE TABLE `ReportType` (
  `ReportTypeID` VARCHAR(45) NOT NULL,
  `ReportType` VARCHAR(45) NULL,
  PRIMARY KEY (`ReportTypeID`))
ENGINE = InnoDB;

DELETE FROM ReportType;

Select * FROM ReportType;

-- Dumping values in ReportType

INSERT INTO `ReportType` (`ReportTypeID`, `ReportType`) VALUES ('RE00001', 'Medical'),('RE00002', 'Criminal'),('RE00003', 'Criminal'),('RE00004', 'Medical'),('RE00006', 'Criminal'),('RE00007', 'Criminal'),('RE00008', 'Medical'),('RE00009', 'Criminal'),('RE00010', 'Medical'),('RE00011', 'Medical');



-- -----------------------------------------------------
-- Table structure for HomelessType
-- -----------------------------------------------------
DROP TABLE IF EXISTS `HomelessType` ;

CREATE TABLE IF NOT EXISTS `HomelessType` (
  `ReportType_ReportTypeID` VARCHAR(45) NOT NULL,
  `Homeless Person_HomelessPerson_id` VARCHAR(45) NOT NULL,
  `Homeless Person_Location_Location_id` VARCHAR(45) NOT NULL,
  CONSTRAINT `fk_HomelessType_ReportType1`
    FOREIGN KEY (`ReportType_ReportTypeID`)
    REFERENCES `ReportType` (`ReportTypeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HomelessType_Homeless Person1`
    FOREIGN KEY (`Homeless Person_HomelessPerson_id`)
    REFERENCES `HomelessPerson` (`HomelessPerson_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * FROM HomelessType;

-- Dumping values in HomelessType

INSERT INTO `HomelessType` VALUES ('RE00001', 'H000001',1005),('RE00002', 'H000002',1001),('RE00003', 'H000003',1002),('RE00004', 'H000004',1005),('RE00005', 'H000005',1005),('RE00006', 'H000006',1001),('RE00007', 'H000007',1005),('RE00008', 'H000008',1002),('RE00009', 'H000009',1005),('RE00010', 'H000010',1003),('RE00011', 'H000011',1004);






-- -----------------------------------------------------
-- Table struture RecordReportType
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RecordReportType` ;

CREATE TABLE IF NOT EXISTS `RecordReportType` (
  `HomlessPersonRecord_ReportHomeless_id` VARCHAR(15) NOT NULL,
  `ReportType_ReportTypeID` VARCHAR(15) NOT NULL,
  CONSTRAINT `fk_RecordReportType_HomlessPersonRecord`
    FOREIGN KEY (`HomlessPersonRecord_ReportHomeless_id`)
    REFERENCES `HomlessPersonRecord` (`ReportHomeless_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Dumping data into RecordType table

INSERT INTO `RecordReportType` VALUES ('HR00001', 'RE00001'),('HR00002', 'RE00002'),('HR00003', 'RE00003'),('HR00004', 'RE00004'),('HR00005', 'RE00005'),('HR00006', 'RE00006'),('HR00007', 'RE00007'),('HR00008', 'RE00008'),('HR00009', 'RE00009'),('HR00010', 'RE00010'),('HR00011', 'RE00011');


Select * FROM RecordReportType;

-- --------------------------------------------------------------
-- PROCEDURE to view all the details of home less people
-- ---------------------------------------------------------------
USE `homelesspeopleinformation`;
DROP procedure IF EXISTS `DetailsOfHomelesspeople`;

DELIMITER $$
USE `homelesspeopleinformation`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `DetailsOfHomelesspeople`()
BEGIN
SELECT
      A.Police_id,
      A.FirstName,
      A.LastName,
      C.ReportHomeless_id,
      C.DateOfReport,
      D.FirstName AS HomlessPersonFirstName,
      D.LastName AS HomlessPersonLastName,
      D.Gender,
      D.Race,
      D.Ethenicity,
      E.Street AS StreetLocated,
      E.City As CityLocation,
      E.ZipCode,
      E.State
   FROM
      Police AS A 
      INNER JOIN
         HomlessPersonRecord AS C 
         ON (A.Police_id = C.Police_Police_id) 
      INNER JOIN
         HomelessPerson AS D 
         ON (C.HomelessPerson_HomelessPerson_id = D.HomelessPerson_id) 
      INNER JOIN
         LocateHomeless AS E 
         ON(D.Location_Location_id = E.Location_id)
         group by D.LastName;
END$$

DELIMITER ;

-- --------------------------------------------------------------
-- Procedure HOME LESS People having medical condition
-- ---------------------------------------------------------------

USE `homelesspeopleinformation`;
DROP procedure IF EXISTS `MedicalDetails`;

DELIMITER $$
USE `homelesspeopleinformation`$$
CREATE PROCEDURE `MedicalDetails` ()
BEGIN
SELECT distinct
	  C.ReportHomeless_id AS RecordNumber,
      C.DateOfReport,
      D.FirstName AS HomlessPersonFirstName,
      D.LastName AS HomlessPersonLastName,
      D.Gender,
      D.Race,
      D.Ethenicity,
      E.Street AS StreetLocated,
      E.City As CityLocation,
      E.ZipCode,
      E.State,
      F.FirstName AS DoctorFirstName,
      F.LastName  AS DoctorLastName,
      H.Name AS HospitalName,
      H.ZipCode,
      A.Police_id,
      A.FirstName AS PoilceFirestName ,
      A.LastName  AS PoilceLastName
   FROM
      Police AS A 
      INNER JOIN HomlessPersonRecord AS C ON A.Police_id = C.Police_Police_id
      INNER JOIN
         HomelessPerson AS D 
         ON (C.HomelessPerson_HomelessPerson_id = D.HomelessPerson_id) 
      INNER JOIN
         LocateHomeless AS E 
         ON(D.Location_Location_id = E.Location_id)
	INNER JOIN
         DOCTOR AS F
         ON (C.Doctor_Doctor_id=F.Doctor_id)
	INNER JOIN
		Hospital AS H
        ON(F.Hospital_Hospital_id=H.Hospital_id)
         group by D.LastName;
END$$

DELIMITER ;

CALL MedicalDetails();

-- ----------------------------------------
-- View for checking homeless persons report
-- -----------------------------------------

USE `homelesspeopleinformation`;
CREATE  OR REPLACE VIEW `PoliceReportType` AS 
SELECT  X.ReportHomeless_id AS RecordNumber,
		P.Police_id AS OfficerID,
        P.FirstName AS PoliceOfficerFirstName,
        P.LastName AS PoliceOfficerLastName,
		H.FirstName AS HomlessPersonFirstName,
		H.LastName AS HomlessPersonLastName,
        R.ReportType AS ReportType
	FROM 
		POLICE AS P
        INNER JOIN homlesspersonrecord X
        ON (X.Police_Police_id=P.Police_id)
        INNER JOIN homelessperson AS H
        ON (X.HomelessPerson_HomelessPerson_id=H.HomelessPerson_id)
        INNER JOIN reporttype R
        ON(X.ReportType_ReportTypeID=R.ReportTypeID)
        GROUP BY H.LastName;

Select * from PoliceReportType;

-- ----------------------------------------------
-- - Anaylsis Max health supported need in an area using ZIP Code
-- ----------------------------------------------
SELECT
	L.ZipCode,
    MAX(R.ReportType)
FROM 
	locatehomeless AS L
    INNER JOIN homelessperson AS HP
    ON(HP.Location_Location_id=L.Location_id)
    INNER JOIN homelesstype AS X
    ON(X.HomelessPerson_Location_Location_id =HP.Location_Location_id)
    INNER JOIN reporttype AS R
    ON(X.ReportType_ReportTypeID=R.ReportTypeID)
    WHERE R.ReportType='Medical'
    GROUP BY R.ReportType ;

Select Z.ZipCode,
	   Max(R.ReportType) AS MaxHealthIssue
       FROM 
       locatehomeless AS Z
       INNER JOIN homelessperson AS H
       ON (Z.Location_id= H.Location_Location_id)
       INNER JOIN homlesspersonrecord AS Y
       ON(Y.HomelessPerson_HomelessPerson_id=H.HomelessPerson_id)
       INNER JOIN reporttype AS R
       ON(Y.ReportType_ReportTypeID=R.ReportTypeID);

-- ----------------------------------------------------
-- TRIGGER to log changes in homelessPerson table into homelessPerson_log
-- ----------------------------------------------------

delimiter //
CREATE TRIGGER trig_homlessperson
AFTER UPDATE ON homelessperson  
FOR EACH ROW
BEGIN
	INSERT INTO homelessperson_log (HomelessPerson_id,FirstName,LastName,DateOfBirth,Gender,Race,Ethnicity,Location_Location_id)
    VALUE(NEW.HomelessPerson_id, NEW.FirstName,NEW.LastName,NEW.DateOfBirth, NEW.Gender,NEW.Race,NEW.Ethenicity,NEW.Location_Location_id);
END;
//

Select * from homelessperson_log;

-- -----------------------------------------------------
-- View for police details  
-- -----------------------------------------------------


USE `homelesspeopleinformation`;
CREATE  OR REPLACE VIEW `AllPoliceDetails` AS
SELECT distinct
      A.Police_id,
      A.FirstName,
      A.LastName,
      B.PoliceStationID,
      B.PoliceStationStreet,
      B.PoliceStationCity,
      B.PoliceStationState,
      B.PoliceStationZip AS ZipCode
 FROM
      Police AS A 
      Inner Join
         PoliceStation AS B 
         ON (A.PoliceStation_PoliceStationID = B.PoliceStationID)
         group by A.LastName;;

select * from allpolicedetails;

