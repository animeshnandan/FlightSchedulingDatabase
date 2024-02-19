CREATE DATABASE  IF NOT EXISTS `vacation_in_europe` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vacation_in_europe`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: vacation_in_europe
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accommodations`
--

DROP TABLE IF EXISTS `accommodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodations` (
  `Accommodation_ID` int unsigned NOT NULL,
  `Accommodation_Type` varchar(30) NOT NULL,
  `Description` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`Accommodation_ID`),
  UNIQUE KEY `Accommodation_ID_UNIQUE` (`Accommodation_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodations`
--

LOCK TABLES `accommodations` WRITE;
/*!40000 ALTER TABLE `accommodations` DISABLE KEYS */;
INSERT INTO `accommodations` VALUES (1,'Moving assistance','Providing or allowing a passenger to bring their wheelchairs, crutches, canes, etc.'),(2,'Medical assistance','Allowing a passenger to bring their prescription medication and medical devices needed to administer those medications'),(3,'Airport navigation assistance','Assisting a passenger through check-in process, security checkpoints, and aircraft boarding'),(4,'Baggage assistance','Assisting a passenger who is unable to carry their luggage'),(5,'Seating accommodation','Providing seating accommodations, such as greater leg room, adjoining seat, etc.'),(6,'Service animal accommodation','Allowing a passenger to bring their service animal');
/*!40000 ALTER TABLE `accommodations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `Airline_ID` int unsigned NOT NULL,
  `Airline_Name` varchar(30) NOT NULL,
  `Phone_Support` varchar(20) DEFAULT NULL,
  `Email_Support` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Airline_ID`),
  UNIQUE KEY `Airline_ID_UNIQUE` (`Airline_ID`),
  UNIQUE KEY `Airline_name_UNIQUE` (`Airline_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'Aegean Airlines','302106987000','customerservice@aegeanair.com'),(2,'Air France','33172222222','contact-af@airfrance.fr'),(3,'Alitalia','39066564956','customer.relations@alitalia.com'),(4,'British Airways','448445711111','customer.service@ba.com'),(5,'EasyJet','443300365000','customer.service@easyjet.com'),(6,'Finnair','358969106600','traveldocs@finnair.com'),(7,'Iberia','34902000102','centrodeatencion@iberia.es'),(8,'KLM Royal Dutch Airlines','31206490787','info@klm.com'),(9,'Lufthansa','498912999999','customer.relations@lufthansa.com'),(10,'Norwegian Air Shuttle','4782444444','customer.service@norwegian.com'),(11,'Ryanair','35318125111','customerqueries@ryanair.com'),(12,'SAS','46700754100','info@sas.se'),(13,'Swiss International Air Lines','41582200707','customerfeedback@swiss.com'),(14,'TAP Air Portugal','351707205700','customer@tap.pt'),(15,'Turkish Airlines','902124444444','customer@thy.com'),(16,'Croatia Airlines','62777777','info@croatiaairlines.hr'),(17,'Austrian Airlines','1967007','kundenservice@austrian.com'),(18,'Brussels Airlines','78188889','contact@brusselsairlines.com'),(19,'Czech Airlines','420239007007','callcentrum@csa.cz'),(20,'Air Malta','35621662211','customercare.airmalta@airmalta.com');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `Airport_ID` int unsigned NOT NULL,
  `Airport_name` varchar(40) NOT NULL,
  `Airport_code` varchar(4) NOT NULL,
  `Address_Line1` varchar(45) NOT NULL,
  `Address_Line2` varchar(45) DEFAULT NULL,
  `City` varchar(30) NOT NULL,
  `State_Province` varchar(45) DEFAULT NULL,
  `Country_ID` int unsigned NOT NULL,
  `Zipcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Airport_ID`),
  UNIQUE KEY `Airport_ID_UNIQUE` (`Airport_ID`),
  KEY `fk_Airports_Countries1_idx` (`Country_ID`),
  CONSTRAINT `fk_Airports_Countries1` FOREIGN KEY (`Country_ID`) REFERENCES `countries` (`Country_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'Amsterdam Airport Schiphol','AMS','Evert van de Beekstraat 70','','Schiphol','North Holland',23,'1118 CX'),(2,'Athens International Airport','ATH','Attiki Odos','Spata Artemida','Athens','Attica',14,'190 04'),(3,'Barcelona–El Prat Airport','BCN','El Prat de Llobregat','','Barcelona','Catalonia',30,'8820'),(4,'Berlin Tegel Airport','TXL','Flughafen Tegel','','Berlin','Berlin',13,'13405'),(5,'Brussels Airport','BRU','Leopoldlaan','','Zaventem','Flemish Brabant',4,'1930'),(6,'Budapest Ferenc Liszt Airport','BUD','Budapest Airport','','Budapest','Pest County',15,'1185'),(7,'Charles de Gaulle Airport','CDG','95700 Roissy-en-France','','Paris','Ile-de-France',12,'95700'),(8,'Copenhagen Airport','CPH','Lufthavnsboulevarden 6','','Kastrup','Capital Region',9,'2770'),(9,'Dublin Airport','DUB','Corballis','','Dublin','Leinster',17,'K67 YX57'),(10,'Frankfurt Airport','FRA','60547 Frankfurt am Main Flugh','','Frankfurt','Hesse',13,'60547'),(11,'Glasgow Airport','GLA','Paisley','','Glasgow','Renfrewshire',32,'PA3 2SW'),(12,'Helsinki Airport','HEL','Lentajantie 3','','Vantaa','Uusimaa',11,'1530'),(13,'Istanbul Airport','IST','Tayakadın','','Arnavutkoy','Istanbul Province',31,'34283'),(14,'Leonardo da Vinci Airport','FCO','Via dell\'Aeroporto di Fiumicin','','Rome','Lazio',18,'54'),(15,'Lisbon Portela Airport','LIS','Alameda das Comunidades Portug','','Lisbon','Lisbon',26,'1700-111'),(16,'London City Airport','LCY','Hartmann Rd','','London','Greater London',32,'E16 2PX'),(17,'London Gatwick Airport','LGW','Horley','','London','Greater London',32,'RH6 0NP'),(18,'London Heathrow Airport','LHR','Longford','','London','Greater London',32,'TW6 1EW'),(19,'Madrid–Barajas Airport','MAD','Avenida de la Hispanidad','','Madrid','Community of Madrid',30,'28042'),(20,'Manchester Airport','MAN','Manchester M90 1QX','','Manchester','Greater Manchester',32,'M90 1QX'),(21,'Milan Malpensa Airport','MXP','21010 Ferno (VA)','','Milan','Lombardy',18,'21010'),(22,'Munich Airport','MUC','Nordallee','','Munich','Bavaria',13,'85356'),(23,'Nice Cote d\'Azur Airport','NCE','Rue Costes et Bellonte','','Nice','Provence-Alpes-Cote d\'Azur',12,'6206'),(24,'Oslo Airport','OSL','Edvard Munchs veg','','Ullensaker','Viken',24,'2061'),(25,'Paris-Orly Airport','ORY','Orly Sud','','Paris','lle-de-France',12,'94390'),(26,'Porto Airport','OPO','Pedras Rubras','','Maia','Porto',26,'4470-558'),(27,'Prague Airport','PRG','Aviaticka ulice 1611/2','','Prague','Prague',8,'161 00'),(28,'Rome Ciampino Airport','CIA','Via Appia Nuova','','Rome','Lazio',18,'178'),(29,'Sheremetyevo International','SVO','Khimki','','Moscow','Moscow Oblast',3,'141400'),(30,'Stockholm Arlanda Airport','ARN','Marsta','','Stockholm','Stockholm',11,'190 45'),(31,'Vienna International Airport','VIE','Schwechat','','Vienna','Vienna',2,'1300'),(32,'Warsaw Chopin Airport','WAW','Zwirki i Wigury','','Warsaw','Masovian',25,'00-906'),(33,'Zurich Airport','ZRH','Zurich Airport','','Zurich','Zurich',33,'8058'),(34,'Brussels South Charleroi Airport','CRL','Rue des Freres Wright','','Charleroi','Hainaut',4,'6041');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `arriving_country_avg_price`
--

DROP TABLE IF EXISTS `arriving_country_avg_price`;
/*!50001 DROP VIEW IF EXISTS `arriving_country_avg_price`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `arriving_country_avg_price` AS SELECT 
 1 AS `Arriving Country Name`,
 1 AS `Average Ticket Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `Booking_ID` int unsigned NOT NULL,
  `Flight_ID` int unsigned NOT NULL,
  `Customer_ID` int unsigned NOT NULL,
  `Ticket_Price` decimal(5,2) NOT NULL,
  `Seat_Number` varchar(4) DEFAULT NULL,
  `CC_Last_4_Digits` varchar(4) NOT NULL,
  PRIMARY KEY (`Booking_ID`),
  UNIQUE KEY `Booking_number_UNIQUE` (`Booking_ID`),
  KEY `fk_Flights_has_Customers_Customers1_idx` (`Customer_ID`),
  KEY `fk_Flights_has_Customers_Flights_idx` (`Flight_ID`),
  CONSTRAINT `fk_Flights_has_Customers_Customers1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  CONSTRAINT `fk_Flights_has_Customers_Flights` FOREIGN KEY (`Flight_ID`) REFERENCES `flights` (`Flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,122,325.00,'A397','2376'),(2,2,5,759.00,'B34','4103'),(3,3,107,472.00,'C286','7284'),(4,4,38,891.00,'D177','9538'),(5,5,72,189.00,'E99','2846'),(6,6,116,542.00,'F372','9347'),(7,7,14,679.00,'G211','4109'),(8,8,75,247.00,'H56','5739'),(9,9,53,618.00,'I139','1246'),(10,10,54,485.00,'J307','4019'),(11,11,49,133.00,'A323','7564'),(12,12,29,923.00,'B11','8271'),(13,13,136,415.00,'C79','5710'),(14,14,69,528.00,'D263','9571'),(15,15,21,100.00,'E134','5719'),(16,16,135,370.00,'F330','3951'),(17,17,63,854.00,'G166','4612'),(18,18,34,645.00,'H275','2948'),(19,19,7,291.00,'I391','1895'),(20,20,56,723.00,'J24','2163'),(21,1,42,543.00,'A128','7630'),(22,2,57,967.00,'B196','4760'),(23,3,123,176.00,'C40','7650'),(24,4,35,991.00,'D289','4038'),(25,5,76,843.00,'E381','4028'),(26,6,113,605.00,'F92','5712'),(27,7,18,316.00,'G359','5387'),(28,8,21,429.00,'H113','2015'),(29,9,45,820.00,'I147','5642'),(30,10,59,190.00,'J232','8592'),(31,11,107,572.00,'A18','9324'),(32,12,131,608.00,'B299','2341'),(33,13,67,791.00,'C73','9304'),(34,14,23,338.00,'D345','2045'),(35,15,12,675.00,'E152','8412'),(36,16,65,283.00,'F202','5716'),(37,17,134,508.00,'G218','4027'),(38,52,71,407.00,'H60','2463'),(39,19,39,920.00,'I389','6109'),(40,20,126,276.00,'J334','6820'),(41,1,51,932.00,'A162','1603'),(42,2,74,367.00,'B87','9283'),(43,3,10,144.00,'C148','8307'),(44,4,75,827.00,'D310','6109'),(45,5,56,714.00,'E214','8365'),(46,6,32,609.00,'F70','3640'),(47,7,68,695.00,'G279','2185'),(48,8,72,888.00,'H395','5938'),(49,9,19,193.00,'I253','2956'),(50,10,138,531.00,'J364','7238'),(51,11,65,934.00,'A119','1089'),(52,12,114,752.00,'B227','3654'),(53,13,1,218.00,'C174','2810'),(54,14,40,660.00,'D350','3651'),(55,15,32,392.00,'E61','9357'),(56,16,36,546.00,'F314','2371'),(57,17,111,868.00,'G155','7462'),(58,87,61,996.00,'H42','2810'),(59,19,17,483.00,'I184','3765'),(60,50,129,330.00,'J398','2387'),(61,1,47,614.00,'A250','2865'),(62,2,112,803.00,'B93','4918'),(63,3,4,276.00,'C305','4039'),(64,4,144,667.00,'D121','9471'),(65,5,74,377.00,'E169','3418'),(66,6,30,205.00,'F190','7204'),(67,7,60,968.00,'G385','2719'),(68,8,129,917.00,'H230','6837'),(69,9,52,484.00,'I391','2875'),(70,10,27,260.00,'J399','9203'),(71,11,132,674.00,'A296','1947'),(72,12,76,825.00,'B25','7092'),(73,13,42,518.00,'C65','5021'),(74,14,33,390.00,'D106','9208'),(75,15,66,732.00,'E159','3471'),(76,16,15,139.00,'F390','4201'),(77,17,128,719.00,'G15','4293'),(78,26,3,583.00,'H241','3850'),(79,19,109,377.00,'I101','9065'),(80,85,41,199.00,'J198','7812'),(81,1,70,749.00,'A173','6509'),(82,2,125,311.00,'B305','1392'),(83,3,54,529.00,'C87','2903'),(84,4,62,920.00,'D396','2015'),(85,5,25,630.00,'E251','8352'),(86,6,137,271.00,'F121','1746'),(87,7,145,861.00,'G42','4570'),(88,8,63,472.00,'H269','7410'),(89,9,8,690.00,'I199','8630'),(90,10,35,591.00,'J351','9814'),(91,11,55,206.00,'A62','6502'),(92,12,31,415.00,'B240','3215'),(93,13,115,886.00,'C144','2850'),(94,14,77,953.00,'D18','2038'),(95,15,16,763.00,'E380','4570'),(96,16,133,840.00,'F319','1076'),(97,17,44,305.00,'G203','9423'),(98,93,34,121.00,'H117','9814'),(99,19,2,788.00,'I292','6502'),(100,85,118,421.00,'J198','3215');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `Country_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Country_ID`),
  UNIQUE KEY `Country_ID_UNIQUE` (`Country_ID`),
  UNIQUE KEY `Country_Name_UNIQUE` (`Country_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Albania'),(2,'Austria'),(3,'Belarus'),(4,'Belgium'),(5,'Bulgaria'),(6,'Croatia'),(7,'Cyprus'),(8,'Czech Republic'),(9,'Denmark'),(10,'Estonia'),(11,'Finland'),(12,'France'),(13,'Germany'),(14,'Greece'),(15,'Hungary'),(16,'Iceland'),(17,'Ireland'),(18,'Italy'),(19,'Latvia'),(20,'Lithuania'),(21,'Luxembourg'),(22,'Malta'),(23,'Netherlands'),(24,'Norway'),(25,'Poland'),(26,'Portugal'),(27,'Romania'),(28,'Slovakia'),(29,'Slovenia'),(30,'Spain'),(33,'Switzerland'),(31,'Turkey'),(32,'United Kingdom');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_accommodations`
--

DROP TABLE IF EXISTS `customer_accommodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_accommodations` (
  `Customer_ID` int unsigned NOT NULL,
  `Accommodation_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Accommodation_ID`),
  KEY `fk_Customers_has_Accommodations_Accommodations1_idx` (`Accommodation_ID`),
  KEY `fk_Customers_has_Accommodations_Customers1_idx` (`Customer_ID`),
  CONSTRAINT `fk_Customers_has_Accommodations_Accommodations1` FOREIGN KEY (`Accommodation_ID`) REFERENCES `accommodations` (`Accommodation_ID`),
  CONSTRAINT `fk_Customers_has_Accommodations_Customers1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_accommodations`
--

LOCK TABLES `customer_accommodations` WRITE;
/*!40000 ALTER TABLE `customer_accommodations` DISABLE KEYS */;
INSERT INTO `customer_accommodations` VALUES (12,1),(23,1),(33,1),(52,1),(56,1),(58,1),(61,1),(66,1),(67,1),(77,1),(122,1),(14,2),(17,2),(25,2),(39,2),(44,2),(45,2),(51,2),(62,2),(75,2),(76,2),(112,2),(8,3),(26,3),(29,3),(32,3),(68,3),(70,3),(113,3),(117,3),(2,4),(11,4),(15,4),(19,4),(21,4),(22,4),(49,4),(73,4),(78,4),(115,4),(10,5),(30,5),(41,5),(43,5),(111,5),(113,5),(9,6),(18,6),(36,6),(46,6),(48,6),(55,6),(57,6),(107,6),(109,6);
/*!40000 ALTER TABLE `customer_accommodations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_aggregate_flight_info`
--

DROP TABLE IF EXISTS `customer_aggregate_flight_info`;
/*!50001 DROP VIEW IF EXISTS `customer_aggregate_flight_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_aggregate_flight_info` AS SELECT 
 1 AS `Customer_Name`,
 1 AS `No_of_Flights`,
 1 AS `Total_Price_Paid`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_ID` int unsigned NOT NULL,
  `First_Name` varchar(40) NOT NULL,
  `Last_Name` varchar(40) NOT NULL,
  `Nationality_ID` int unsigned NOT NULL,
  `Passport_Number` varchar(12) NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `Customer_ID_UNIQUE` (`Customer_ID`),
  UNIQUE KEY `Passport_UNIQUE` (`Passport_Number`),
  KEY `fk_Customers_Countries1_idx` (`Nationality_ID`),
  CONSTRAINT `fk_Customers_Countries1` FOREIGN KEY (`Nationality_ID`) REFERENCES `countries` (`Country_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe',1,'FR123456789'),(2,'Jane','Smith',2,'DE987654321'),(3,'Michael','Johnson',3,'IT112233445'),(4,'Emily','Brown',4,'ES223344556'),(5,'Sophia','Davis',5,'NL334455667'),(6,'Olivia','Miller',6,'BE445566778'),(7,'Amelia','Wilson',7,'AT556677889'),(8,'Ava','Moore',8,'HR667788990'),(9,'Ella','Taylor',9,'CY778899001'),(10,'Scarlett','Anderson',10,'CZ889900112'),(11,'Grace','Thomas',11,'DK990011223'),(12,'Chloe','Jackson',12,'EE001122334'),(13,'Zoe','White',13,'FI112233445'),(14,'Lily','Harris',1,'FR223344556'),(15,'Freya','Martin',2,'DE334455667'),(16,'Isla','Thompson',14,'GR445566778'),(17,'Poppy','Garcia',15,'HU556677889'),(18,'Daisy','Martinez',16,'IS667788990'),(19,'Isabella','Robinson',17,'IE778899001'),(20,'Sophie','Clark',3,'IT889900112'),(21,'Mia','Rodriguez',18,'LV990011223'),(22,'Evie','Lewis',19,'LT001122334'),(23,'Ruby','Lee',20,'LU112233445'),(24,'Eva','Walker',21,'MT223344556'),(25,'Isabelle','Hall',5,'NL334455787'),(26,'Sienna','Allen',22,'NO445566778'),(27,'Sophia','Young',23,'PL556677889'),(28,'Alice','Hernandez',24,'PT667788990'),(29,'Charlotte','King',25,'RO778899001'),(30,'Lola','Wright',26,'SK889900'),(31,'Madison','Lopez',27,'SI019283746'),(32,'Harper','Green',4,'ES293847565'),(33,'Evelyn','Adams',28,'SE384756474'),(34,'Abigail','Baker',7,'AT475647383'),(35,'Emily','Gonzalez',6,'BE57647382A'),(36,'Avery','Nelson',29,'BG647382719'),(37,'Sofia','Carter',8,'HR7382718C0'),(38,'Aubrey','Mitchell',9,'CY827180937'),(39,'Ella','Perez',10,'CZ918093846'),(40,'Scarlett','Roberts',11,'DK098384755'),(41,'Grace','Turner',12,'EE83947564A'),(42,'Chloe','Phillips',13,'FI94756473B'),(43,'Zoe','Campbell',1,'FR05647382C'),(44,'Lily','Parker',2,'DE64738271D'),(45,'Freya','Evans',14,'GR7382718E0'),(46,'Isla','Edwards',15,'HU82718093F'),(47,'Poppy','Collins',16,'IS91809384G'),(48,'Daisy','Stewart',17,'IE09838475H'),(49,'Isabella','West',3,'IT83947564I'),(50,'Lucas','Perez',7,'AT999888777'),(51,'Olivia','Baker',13,'DE112233445'),(52,'Alexander','Anderson',8,'CZ445566778'),(53,'Mia','Wright',29,'SI998877665'),(54,'Sebastian','Adams',5,'BG112233445'),(55,'Lily','Clark',3,'BY445566778'),(56,'Eva','Evans',18,'IT998877665'),(57,'Aiden','Hall',9,'DK112233445'),(58,'Zoe','Allen',16,'IS445566778'),(59,'Daniel','Lee',15,'HU998877665'),(60,'Isabelle','Turner',33,'CH112233445'),(61,'Oliver','Johnson',2,'AT012345678'),(62,'Emma','Smith',7,'CY987654321'),(63,'Lucas','Taylor',20,'LT112233445'),(64,'Ava','Brown',11,'FI667788990'),(65,'Mila','Wilson',14,'GR123456789'),(66,'Leo','Davis',12,'FR987654321'),(67,'Sophia','Jones',10,'EE445566778'),(68,'Ethan','Garcia',21,'LU223344556'),(69,'Amelia','Miller',22,'MT776655443'),(70,'Mason','Hernandez',19,'LV001122334'),(71,'Isabella','Moore',17,'IE998877665'),(72,'Liam','Martin',6,'HR556677889'),(73,'Emily','Jackson',28,'SK334455667'),(74,'Benjamin','White',31,'TR112233445'),(75,'Chloe','Thompson',32,'GB445566778'),(76,'Noah','Walker',1,'AL123456789'),(77,'Ella','Young',23,'NL998877665'),(78,'William','King',24,'NO776655443'),(107,'Olivia','Parker',1,'AL223344556'),(109,'Mia','Edwards',3,'BY112233445'),(111,'Amelia','Wood',5,'BG998877665'),(112,'Harper','Barnes',6,'HR223344556'),(113,'Evelyn','Ross',7,'CY556677889'),(114,'Abigail','Reynolds',8,'CZ112233445'),(115,'Emily','Cox',9,'DK445566778'),(116,'Ava','Shaw',10,'EE998877665'),(117,'Ella','Richards',11,'FI223344556'),(118,'Scarlett','Ali',12,'FR556677889'),(122,'Freya','Carter',16,'IS223344556'),(123,'Aria','Morris',17,'IE556677889'),(125,'Penelope','Bell',19,'LV445566778'),(126,'Zoe','Kennedy',20,'LT998877665'),(128,'Alice','Gibson',22,'MT556677889'),(129,'Sienna','Ward',23,'NL112233445'),(131,'Lucy','George',25,'PL998877665'),(132,'Daisy','Watson',26,'PT223344556'),(133,'Isabelle','Simmons',27,'RO556677889'),(134,'Eva','Rhodes',28,'SK112233445'),(135,'Hannah','Stone',29,'SI445566778'),(136,'Imogen','Price',30,'ES998877665'),(137,'Matilda','Burns',31,'TR223344556'),(138,'Ruby','Russell',32,'GB556677889'),(144,'Rosie','Hudson',8,'CZ334455667'),(145,'Thea','Spencer',9,'DK998877665');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `flight_ticket_price_london`
--

DROP TABLE IF EXISTS `flight_ticket_price_london`;
/*!50001 DROP VIEW IF EXISTS `flight_ticket_price_london`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `flight_ticket_price_london` AS SELECT 
 1 AS `City`,
 1 AS `Airport`,
 1 AS `Airline`,
 1 AS `Destination`,
 1 AS `Departure Date`,
 1 AS `Departure Time`,
 1 AS `Arrival Time`,
 1 AS `Ticket Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `Flight_ID` int unsigned NOT NULL,
  `Flight_Number` varchar(10) NOT NULL,
  `Departure_Time` datetime NOT NULL,
  `Arrival_Time` datetime NOT NULL,
  `Total_Num_Seats` int DEFAULT NULL,
  `Seats_Occupied` int DEFAULT NULL,
  `Airline_ID` int unsigned NOT NULL,
  `Departure_Airport` int unsigned NOT NULL,
  `Arrival_Airport` int unsigned NOT NULL,
  PRIMARY KEY (`Flight_ID`),
  UNIQUE KEY `Flight_ID_UNIQUE` (`Flight_ID`),
  UNIQUE KEY `Flight_number_UNIQUE` (`Flight_Number`),
  KEY `fk_Flights_Airlines1_idx` (`Airline_ID`),
  KEY `fk_Flights_Airports1_idx` (`Departure_Airport`),
  KEY `fk_Flights_Airports2_idx` (`Arrival_Airport`),
  CONSTRAINT `fk_Flights_Airlines1` FOREIGN KEY (`Airline_ID`) REFERENCES `airlines` (`Airline_ID`),
  CONSTRAINT `fk_Flights_Airports1` FOREIGN KEY (`Departure_Airport`) REFERENCES `airports` (`Airport_ID`),
  CONSTRAINT `fk_Flights_Airports2` FOREIGN KEY (`Arrival_Airport`) REFERENCES `airports` (`Airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'JN2378A','2023-05-09 09:00:00','2023-05-09 11:30:00',290,280,8,1,16),(2,'KL7890X','2023-05-09 09:45:00','2023-05-09 11:50:00',300,220,3,34,17),(3,'AB4567Y','2023-05-09 10:15:00','2023-05-09 12:50:00',200,160,1,4,18),(4,'FG9087Z','2023-05-09 10:30:00','2023-05-09 13:10:00',250,160,15,26,9),(5,'CD2345Q','2023-05-09 11:00:00','2023-05-09 14:20:00',320,310,14,7,12),(6,'PQ3456R','2023-05-09 11:15:00','2023-05-09 14:30:00',230,210,12,20,14),(7,'ST5678T','2023-05-09 11:45:00','2023-05-09 15:15:00',250,170,2,8,30),(8,'LM6789U','2023-05-09 12:00:00','2023-05-09 15:30:00',180,170,10,3,22),(9,'DE1234V','2023-05-09 12:15:00','2023-05-09 16:00:00',300,250,2,33,28),(10,'WX5678Y','2023-05-09 12:45:00','2023-05-09 16:30:00',280,170,12,24,19),(11,'FG7890Z','2023-05-09 13:00:00','2023-05-09 17:00:00',300,290,14,25,23),(12,'YU3456Q','2023-05-09 13:15:00','2023-05-09 17:30:00',200,170,11,5,13),(13,'KL9012R','2023-05-09 13:45:00','2023-05-09 18:00:00',290,280,8,11,27),(14,'AB6789S','2023-05-09 14:00:00','2023-05-09 18:30:00',150,140,4,2,31),(15,'EF2345T','2023-05-09 14:15:00','2023-05-09 19:00:00',220,170,10,32,10),(16,'UV4567U','2023-05-09 14:45:00','2023-05-09 19:30:00',150,150,14,6,29),(17,'GH7890V','2023-05-09 15:00:00','2023-05-09 20:00:00',210,190,2,9,21),(18,'JK1234W','2023-05-09 15:15:00','2023-05-09 20:30:00',170,150,9,18,8),(19,'RS5678X','2023-05-09 15:45:00','2023-05-09 21:00:00',200,190,4,15,7),(20,'LM9012Y','2023-05-09 16:00:00','2023-05-09 21:30:00',310,300,13,16,4),(21,'DE6789Z','2023-05-09 09:00:00','2023-05-09 11:30:00',170,140,11,13,25),(22,'WX2345Q','2023-05-09 09:45:00','2023-05-09 11:50:00',230,190,4,28,12),(23,'FG4567R','2023-05-09 10:15:00','2023-05-09 12:50:00',190,180,14,22,6),(24,'YU7890S','2023-05-09 10:30:00','2023-05-09 13:10:00',200,190,3,19,2),(25,'KL3456T','2023-05-09 11:00:00','2023-05-09 14:20:00',220,210,8,31,33),(26,'AB5678U','2023-05-09 11:15:00','2023-05-09 14:30:00',220,200,9,17,1),(27,'EF9012V','2023-05-09 11:45:00','2023-05-09 15:15:00',320,300,3,10,34),(28,'UV2345W','2023-05-09 12:00:00','2023-05-09 15:30:00',260,240,1,30,3),(29,'GH5679X','2023-05-09 12:15:00','2023-05-09 16:00:00',190,180,8,23,5),(30,'JK7890Y','2023-05-09 12:45:00','2023-05-09 16:30:00',210,150,14,27,11),(31,'RS1234Z','2023-05-09 13:00:00','2023-05-09 17:00:00',200,180,2,14,26),(32,'LM4537Q','2023-05-09 13:15:00','2023-05-09 17:30:00',250,210,1,29,20),(33,'DE7840R','2023-05-09 13:45:00','2023-05-09 18:00:00',230,220,11,12,15),(34,'WX3456S','2023-05-09 14:00:00','2023-05-09 18:30:00',150,140,9,1,18),(35,'FG5648T','2023-05-09 14:15:00','2023-05-09 19:00:00',190,140,14,34,5),(36,'YU9032U','2023-05-09 14:45:00','2023-05-09 19:30:00',170,150,3,4,20),(37,'KL2345V','2023-05-09 15:00:00','2023-05-09 20:00:00',230,210,12,26,13),(38,'AB4567W','2023-05-09 15:15:00','2023-05-09 20:30:00',310,280,3,7,22),(39,'EF7890X','2023-05-09 15:45:00','2023-05-09 21:00:00',170,150,3,21,10),(40,'UV3456Y','2023-05-09 16:00:00','2023-05-09 21:30:00',220,210,12,8,23),(41,'GH5678Z','2023-05-09 09:00:00','2023-05-09 11:30:00',230,170,12,3,16),(42,'JK9012Q','2023-05-09 09:45:00','2023-05-09 11:50:00',290,280,9,33,27),(43,'RS2345R','2023-05-09 10:15:00','2023-05-09 12:50:00',250,220,9,24,6),(44,'LM4567S','2023-05-09 10:30:00','2023-05-09 13:10:00',200,180,11,25,11),(45,'DE7890T','2023-05-09 11:00:00','2023-05-09 14:20:00',220,190,2,14,31),(46,'WX1234U','2023-05-09 11:15:00','2023-05-09 14:30:00',250,220,12,2,19),(47,'FG5678V','2023-05-09 11:45:00','2023-05-09 15:15:00',200,150,12,32,29),(48,'YU9012W','2023-05-09 12:00:00','2023-05-09 15:30:00',150,150,1,12,17),(49,'KL3456X','2023-05-09 12:15:00','2023-05-09 16:00:00',320,260,13,9,30),(50,'AB5678Y','2023-05-09 12:45:00','2023-05-09 16:30:00',220,190,9,18,28),(51,'EF9012Z','2023-05-09 13:00:00','2023-05-09 17:00:00',150,150,2,15,1),(52,'UV2345Q','2023-05-09 13:15:00','2023-05-09 17:30:00',290,240,14,16,8),(53,'GH5678R','2023-05-09 13:45:00','2023-05-09 18:00:00',320,310,7,13,30),(54,'JK7890S','2023-05-09 14:00:00','2023-05-09 18:30:00',240,220,11,28,25),(55,'RS1234T','2023-05-09 14:15:00','2023-05-09 19:00:00',240,190,3,22,17),(56,'LM4567U','2023-05-09 14:45:00','2023-05-09 19:30:00',280,240,10,19,7),(57,'DE7890V','2023-05-09 15:00:00','2023-05-09 20:00:00',290,270,1,33,31),(58,'WX3456W','2023-05-09 15:15:00','2023-05-09 20:30:00',200,180,14,14,5),(59,'FG5678X','2023-05-09 15:45:00','2023-05-09 21:00:00',220,160,11,20,2),(60,'YU9012Y','2023-05-09 16:00:00','2023-05-09 21:30:00',160,160,2,32,12),(61,'KL2345Z','2023-05-09 09:00:00','2023-05-09 11:30:00',220,190,14,4,23),(62,'AB4567Q','2023-05-09 09:45:00','2023-05-09 11:50:00',290,270,1,11,21),(63,'EF7890R','2023-05-09 10:15:00','2023-05-09 12:50:00',300,270,10,27,6),(64,'UV3456S','2023-05-09 10:30:00','2023-05-09 13:10:00',280,230,4,1,29),(65,'GH5678T','2023-05-09 11:00:00','2023-05-09 14:20:00',200,170,11,24,10),(66,'JK9012U','2023-05-09 11:15:00','2023-05-09 14:30:00',220,190,9,3,15),(67,'RS2345V','2023-05-09 11:45:00','2023-05-09 15:15:00',210,180,10,34,9),(68,'LM4567W','2023-05-09 12:00:00','2023-05-09 15:30:00',310,250,10,1,16),(69,'DE7890X','2023-05-09 12:15:00','2023-05-09 16:00:00',210,200,1,34,17),(70,'WX1234Y','2023-05-09 12:45:00','2023-05-09 16:30:00',270,250,4,4,18),(71,'FG5678Z','2023-05-09 13:00:00','2023-05-09 17:00:00',170,160,4,26,9),(72,'YU9012Q','2023-05-09 13:15:00','2023-05-09 17:30:00',300,280,3,7,12),(73,'KL3456R','2023-05-09 13:45:00','2023-05-09 18:00:00',170,160,14,20,14),(74,'AB5678S','2023-05-09 14:00:00','2023-05-09 18:30:00',200,160,9,8,30),(75,'EF9012T','2023-05-09 14:15:00','2023-05-09 19:00:00',190,180,1,3,22),(76,'UV2345U','2023-05-09 14:45:00','2023-05-09 19:30:00',170,160,1,33,28),(77,'GH5678V','2023-05-09 15:00:00','2023-05-09 20:00:00',280,240,10,24,19),(78,'JK7890W','2023-05-09 15:15:00','2023-05-09 20:30:00',170,140,14,25,23),(79,'RS1234X','2023-05-09 15:45:00','2023-05-09 21:00:00',240,220,2,5,13),(80,'LM4567Y','2023-05-09 16:00:00','2023-05-09 21:30:00',320,300,6,11,27),(81,'DE7890Z','2023-05-09 09:00:00','2023-05-09 11:30:00',170,150,7,2,31),(82,'WX3456Q','2023-05-09 09:45:00','2023-05-09 11:50:00',320,250,6,32,10),(83,'FG5678R','2023-05-09 10:15:00','2023-05-09 12:50:00',220,170,7,6,29),(84,'YU9012S','2023-05-09 10:30:00','2023-05-09 13:10:00',170,140,6,9,21),(85,'KL2345T','2023-05-09 11:00:00','2023-05-09 14:20:00',150,150,6,18,8),(86,'AB4567U','2023-05-09 11:15:00','2023-05-09 14:30:00',170,150,6,15,7),(87,'EF7890V','2023-05-09 11:45:00','2023-05-09 15:15:00',240,180,7,16,4),(88,'UV3456W','2023-05-09 12:00:00','2023-05-09 15:30:00',220,170,6,13,25),(89,'GH5678X','2023-05-09 12:15:00','2023-05-09 16:00:00',170,160,7,28,12),(90,'JK9012Y','2023-05-09 12:45:00','2023-05-09 16:30:00',220,210,3,22,6),(91,'RS2345Z','2023-05-09 13:00:00','2023-05-09 17:00:00',160,160,2,19,2),(92,'LM4567Q','2023-05-09 13:15:00','2023-05-09 17:30:00',300,270,11,31,33),(93,'DE7890R','2023-05-09 13:45:00','2023-05-09 18:00:00',210,190,9,17,1),(94,'WX1234S','2023-05-09 14:00:00','2023-05-09 18:30:00',280,270,8,10,34),(95,'FG5678T','2023-05-09 14:15:00','2023-05-09 19:00:00',190,180,4,30,3),(96,'YU9012U','2023-05-09 14:45:00','2023-05-09 19:30:00',190,170,2,23,5),(97,'KL3456V','2023-05-09 15:00:00','2023-05-09 20:00:00',310,290,2,27,11),(98,'AB5678W','2023-05-09 15:15:00','2023-05-09 20:30:00',190,170,8,14,26),(99,'EF9012X','2023-05-09 15:45:00','2023-05-09 21:00:00',320,300,4,29,20),(100,'UV2345Y','2023-05-09 16:00:00','2023-05-09 21:30:00',170,150,4,12,15);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `german_passanger_glasgow_airport`
--

DROP TABLE IF EXISTS `german_passanger_glasgow_airport`;
/*!50001 DROP VIEW IF EXISTS `german_passanger_glasgow_airport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `german_passanger_glasgow_airport` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Airline_Name`,
 1 AS `Flight_Number`,
 1 AS `Departure_Airport`,
 1 AS `Arrival_Airport`,
 1 AS `Departure_Time`,
 1 AS `Arrival_Time`,
 1 AS `Luggage_Type`,
 1 AS `Weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `luggage_types`
--

DROP TABLE IF EXISTS `luggage_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luggage_types` (
  `Luggage_Type_ID` int unsigned NOT NULL,
  `Luggage_Type` varchar(20) NOT NULL,
  `Weight_Limit` int NOT NULL,
  `Size_restrictions` varchar(10) NOT NULL,
  PRIMARY KEY (`Luggage_Type_ID`),
  UNIQUE KEY `Luggage_Type_ID_UNIQUE` (`Luggage_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luggage_types`
--

LOCK TABLES `luggage_types` WRITE;
/*!40000 ALTER TABLE `luggage_types` DISABLE KEYS */;
INSERT INTO `luggage_types` VALUES (1,'Personal item',4,'15x30x40'),(2,'Carry-on bag',8,'23x40x55'),(3,'Checked-in bag',20,'30x50x80');
/*!40000 ALTER TABLE `luggage_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luggages`
--

DROP TABLE IF EXISTS `luggages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luggages` (
  `Luggage_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Weight` decimal(4,2) DEFAULT NULL,
  `Luggage_Price` decimal(5,2) DEFAULT NULL,
  `Luggage_Type_ID` int unsigned NOT NULL,
  `Booking_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Luggage_ID`),
  UNIQUE KEY `Luggage_ID_UNIQUE` (`Luggage_ID`),
  KEY `fk_Luggages_Luggage_Types1_idx` (`Luggage_Type_ID`),
  KEY `fk_Luggages_Bookings1_idx` (`Booking_ID`),
  CONSTRAINT `fk_Luggages_Bookings1` FOREIGN KEY (`Booking_ID`) REFERENCES `bookings` (`Booking_ID`),
  CONSTRAINT `fk_Luggages_Luggage_Types1` FOREIGN KEY (`Luggage_Type_ID`) REFERENCES `luggage_types` (`Luggage_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luggages`
--

LOCK TABLES `luggages` WRITE;
/*!40000 ALTER TABLE `luggages` DISABLE KEYS */;
INSERT INTO `luggages` VALUES (1,2.00,0.00,1,26),(2,6.00,30.00,2,56),(3,15.00,80.00,3,1),(4,4.00,0.00,1,29),(5,7.00,35.00,2,11),(6,18.00,90.00,3,71),(7,3.00,0.00,1,92),(8,5.00,25.00,2,18),(9,12.00,60.00,3,83),(10,1.00,0.00,1,98),(11,8.00,40.00,2,85),(12,20.00,100.00,3,5),(13,3.00,0.00,1,85),(14,6.00,30.00,2,73),(15,17.00,85.00,3,60),(16,2.00,0.00,1,45),(17,7.00,35.00,2,42),(18,14.00,70.00,3,92),(19,1.00,0.00,1,24),(20,5.00,25.00,2,21),(21,16.00,80.00,3,68),(22,4.00,0.00,1,56),(23,8.00,40.00,2,60),(24,19.00,95.00,3,63),(25,3.00,0.00,1,25),(26,6.00,30.00,2,55),(27,15.00,75.00,3,34),(28,2.00,0.00,1,17),(29,7.00,35.00,2,72),(30,18.00,90.00,3,63),(31,4.00,0.00,1,59),(32,5.00,25.00,2,10),(33,12.00,60.00,3,15),(34,1.00,0.00,1,34),(35,8.00,40.00,2,79),(36,20.00,100.00,3,35),(37,3.00,0.00,1,59),(38,6.00,30.00,2,8),(39,17.00,85.00,3,57),(40,2.00,0.00,1,84),(41,7.00,35.00,2,47),(42,14.00,70.00,3,100),(43,1.00,0.00,1,39),(44,5.00,25.00,2,6),(45,16.00,80.00,3,100),(46,4.00,0.00,1,22),(47,8.00,40.00,2,12),(48,19.00,95.00,3,9),(49,3.00,0.00,1,2),(50,6.00,30.00,2,26);
/*!40000 ALTER TABLE `luggages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `passangers_moving_assistance`
--

DROP TABLE IF EXISTS `passangers_moving_assistance`;
/*!50001 DROP VIEW IF EXISTS `passangers_moving_assistance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `passangers_moving_assistance` AS SELECT 
 1 AS `Accommodation_Type`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `passangers_zurich_to_rome`
--

DROP TABLE IF EXISTS `passangers_zurich_to_rome`;
/*!50001 DROP VIEW IF EXISTS `passangers_zurich_to_rome`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `passangers_zurich_to_rome` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Airline_Name`,
 1 AS `Flight_Number`,
 1 AS `Departure_Airport`,
 1 AS `Arrival_Airport`,
 1 AS `Departure_Time`,
 1 AS `Arrival_Time`,
 1 AS `Seat_Number`,
 1 AS `Ticket_Price`,
 1 AS `Accommodation_Type`,
 1 AS `Luggage_Type`,
 1 AS `Weight`,
 1 AS `Luggage_Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `popular_destinations`
--

DROP TABLE IF EXISTS `popular_destinations`;
/*!50001 DROP VIEW IF EXISTS `popular_destinations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popular_destinations` AS SELECT 
 1 AS `Country`,
 1 AS `Number of flights arriving`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `arriving_country_avg_price`
--

/*!50001 DROP VIEW IF EXISTS `arriving_country_avg_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `arriving_country_avg_price` AS select `c`.`Country_Name` AS `Arriving Country Name`,concat('$ ',convert(format(avg(`b`.`Ticket_Price`),2) using utf8mb4)) AS `Average Ticket Price` from (((`airports` `a` join `countries` `c` on((`a`.`Country_ID` = `c`.`Country_ID`))) join `flights` `f` on((`a`.`Airport_ID` = `f`.`Arrival_Airport`))) join `bookings` `b` on((`f`.`Flight_ID` = `b`.`Flight_ID`))) group by `c`.`Country_Name` order by avg(`b`.`Ticket_Price`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_aggregate_flight_info`
--

/*!50001 DROP VIEW IF EXISTS `customer_aggregate_flight_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_aggregate_flight_info` AS select concat(`customers`.`First_Name`,' ',`customers`.`Last_Name`) AS `Customer_Name`,count(`bookings`.`Flight_ID`) AS `No_of_Flights`,concat('$ ',convert(format(sum(`bookings`.`Ticket_Price`),2) using utf8mb4)) AS `Total_Price_Paid` from (`customers` join `bookings` on((`customers`.`Customer_ID` = `bookings`.`Customer_ID`))) group by `customers`.`Customer_ID` order by `No_of_Flights` desc,sum(`bookings`.`Ticket_Price`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `flight_ticket_price_london`
--

/*!50001 DROP VIEW IF EXISTS `flight_ticket_price_london`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flight_ticket_price_london` AS select `departure`.`City` AS `City`,`departure`.`Airport_name` AS `Airport`,`air`.`Airline_Name` AS `Airline`,concat(`arrival`.`City`,', ',`c`.`Country_Name`) AS `Destination`,date_format(`f`.`Departure_Time`,'%a, %b %d, %Y') AS `Departure Date`,date_format(`f`.`Departure_Time`,'%H:%i') AS `Departure Time`,date_format(`f`.`Arrival_Time`,'%H:%i') AS `Arrival Time`,concat('$',(`b`.`Ticket_Price` - 0.01)) AS `Ticket Price` from (((((`flights` `f` join `bookings` `b` on((`f`.`Flight_ID` = `b`.`Flight_ID`))) join `airports` `departure` on((`departure`.`Airport_ID` = `f`.`Departure_Airport`))) join `airports` `arrival` on((`arrival`.`Airport_ID` = `f`.`Arrival_Airport`))) join `countries` `c` on((`c`.`Country_ID` = `arrival`.`Country_ID`))) join `airlines` `air` on((`air`.`Airline_ID` = `f`.`Airline_ID`))) where `f`.`Departure_Airport` in (select `airports`.`Airport_ID` from `airports` where (`airports`.`City` = 'London')) order by `departure`.`Airport_name`,`b`.`Ticket_Price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `german_passanger_glasgow_airport`
--

/*!50001 DROP VIEW IF EXISTS `german_passanger_glasgow_airport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `german_passanger_glasgow_airport` AS select `c`.`First_Name` AS `First_Name`,`c`.`Last_Name` AS `Last_Name`,`a`.`Airline_Name` AS `Airline_Name`,`f`.`Flight_Number` AS `Flight_Number`,`dep_airport`.`Airport_name` AS `Departure_Airport`,`arr_airport`.`Airport_name` AS `Arrival_Airport`,`f`.`Departure_Time` AS `Departure_Time`,`f`.`Arrival_Time` AS `Arrival_Time`,`lt`.`Luggage_Type` AS `Luggage_Type`,`l`.`Weight` AS `Weight` from ((((((((`customers` `c` join `bookings` `b` on((`c`.`Customer_ID` = `b`.`Customer_ID`))) join `flights` `f` on((`b`.`Flight_ID` = `f`.`Flight_ID`))) join `airlines` `a` on((`f`.`Airline_ID` = `a`.`Airline_ID`))) join `airports` `dep_airport` on((`f`.`Departure_Airport` = `dep_airport`.`Airport_ID`))) join `airports` `arr_airport` on((`f`.`Arrival_Airport` = `arr_airport`.`Airport_ID`))) join `luggages` `l` on((`b`.`Booking_ID` = `l`.`Booking_ID`))) join `luggage_types` `lt` on((`l`.`Luggage_Type_ID` = `lt`.`Luggage_Type_ID`))) join `countries` `cn` on((`c`.`Nationality_ID` = `cn`.`Country_ID`))) where ((`cn`.`Country_Name` = 'Germany') and (`dep_airport`.`Airport_name` = 'Glasgow Airport')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `passangers_moving_assistance`
--

/*!50001 DROP VIEW IF EXISTS `passangers_moving_assistance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `passangers_moving_assistance` AS select `accommodations`.`Accommodation_Type` AS `Accommodation_Type`,concat(`customers`.`First_Name`,' ',`customers`.`Last_Name`) AS `Name` from ((`customers` join `customer_accommodations` on((`customers`.`Customer_ID` = `customer_accommodations`.`Customer_ID`))) join `accommodations` on((`customer_accommodations`.`Accommodation_ID` = `accommodations`.`Accommodation_ID`))) where (`accommodations`.`Accommodation_Type` = 'Moving Assistance') order by `customers`.`First_Name`,`customers`.`Last_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `passangers_zurich_to_rome`
--

/*!50001 DROP VIEW IF EXISTS `passangers_zurich_to_rome`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `passangers_zurich_to_rome` AS select `c`.`First_Name` AS `First_Name`,`c`.`Last_Name` AS `Last_Name`,`a`.`Airline_Name` AS `Airline_Name`,`f`.`Flight_Number` AS `Flight_Number`,`dep_airport`.`Airport_name` AS `Departure_Airport`,`arr_airport`.`Airport_name` AS `Arrival_Airport`,`f`.`Departure_Time` AS `Departure_Time`,`f`.`Arrival_Time` AS `Arrival_Time`,`b`.`Seat_Number` AS `Seat_Number`,`b`.`Ticket_Price` AS `Ticket_Price`,`ac`.`Accommodation_Type` AS `Accommodation_Type`,`lt`.`Luggage_Type` AS `Luggage_Type`,`l`.`Weight` AS `Weight`,`l`.`Luggage_Price` AS `Luggage_Price` from (((((((((`customers` `c` join `bookings` `b` on((`c`.`Customer_ID` = `b`.`Customer_ID`))) join `flights` `f` on((`b`.`Flight_ID` = `f`.`Flight_ID`))) join `airlines` `a` on((`f`.`Airline_ID` = `a`.`Airline_ID`))) join `airports` `dep_airport` on((`f`.`Departure_Airport` = `dep_airport`.`Airport_ID`))) join `airports` `arr_airport` on((`f`.`Arrival_Airport` = `arr_airport`.`Airport_ID`))) join `luggages` `l` on((`b`.`Booking_ID` = `l`.`Booking_ID`))) join `luggage_types` `lt` on((`l`.`Luggage_Type_ID` = `lt`.`Luggage_Type_ID`))) join `customer_accommodations` `ca` on((`c`.`Customer_ID` = `ca`.`Customer_ID`))) join `accommodations` `ac` on((`ca`.`Accommodation_ID` = `ac`.`Accommodation_ID`))) where ((`dep_airport`.`City` = 'Zurich') and (`arr_airport`.`City` = 'Rome')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popular_destinations`
--

/*!50001 DROP VIEW IF EXISTS `popular_destinations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular_destinations` AS select `c`.`Country_Name` AS `Country`,count(`c`.`Country_Name`) AS `Number of flights arriving` from ((`flights` `f` join `airports` `a` on((`f`.`Arrival_Airport` = `a`.`Airport_ID`))) join `countries` `c` on((`a`.`Country_ID` = `c`.`Country_ID`))) group by `c`.`Country_Name` order by count(`c`.`Country_Name`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09 15:13:16
