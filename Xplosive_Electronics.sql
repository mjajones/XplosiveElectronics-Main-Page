-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: xplosiveelectronics
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `Category_ID` int NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(255) NOT NULL,
  `Category_Type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Is_Contract_Customer` tinyint(1) NOT NULL DEFAULT '0',
  `Account_Number` varchar(50) DEFAULT NULL,
  `Online_Customer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe','123 Madison Lane, Madison, MS 39110','6015551234','john.doe@gmail.com',1,'9002407220',1),(2,'Jane Smith','456 Oak Street, Hattiesburg, MS 39402','6015552345','jane.smith@gmail.com',1,'5654533622',0),(3,'James Brown','789 Elm Street, Gulfport, MS 39501','2285553456','james.brown@gmail.com',1,'1265446759',1),(4,'Emily White','321 Maple Avenue, Hattiesburg, MS 39402','6015555678','emily.white@gmail.com',1,'9363633235',0),(5,'Michael Green','987 Pine Lane, Madison, MS 39110','6015556789','michael.green@gmail.com',1,'3021826206',1),(6,'Sarah Black','654 Spruce Avenue, Gulfport, MS 39501','2285557890','sarah.black@gmail.com',1,'7018231634',1),(7,'William Blue','876 Cedar Street, Madison, MS 39110','6015558901','william.blue@gmail.com',1,'6025679862',0),(8,'Olivia Yellow','432 Birch Avenue, Hattiesburg, MS 39402','6015559012','olivia.yellow@gmail.com',1,'9073704713',1),(9,'David Purple','111 Ash Street, Gulfport, MS 39501','2285550123','david.purple@gmail.com',1,'7291484286',1),(10,'Sophia Pink','222 Cypress Road, Madison, MS 39110','6015551235','sophia.pink@gmail.com',1,'9236307599',0),(11,'Brian Grey','112 Cedar Lane, Madison, MS 39110','6015555432','brian.grey@gmail.com',1,'4307085447',1),(12,'Alice Blue','9879 Mountain Rd, Hattiesburg, MS 39402','6015559999','alice.blue@gmail.com',1,'3826504744',0),(13,'Josh Silver','763 Oak Ln, Gulfport, MS 39501','2285553333','josh.silver@gmail.com',1,'6211267687',1),(14,'Megan Sky','233 Pine Blvd, Madison, MS 39110','6015552323','megan.sky@gmail.com',1,'9576824511',0),(15,'Eric Fox','554 Rock Road, Hattiesburg, MS 39402','6015554444','eric.fox@gmail.com',1,'9250319804',1),(16,'Hannah Grey','121 Wave Ave, Gulfport, MS 39501','2285555656','hannah.grey@gmail.com',1,'7521125793',1),(17,'Zach Smith','7777 Lakeside Dr, Madison, MS 39110','6015556565','zach.smith@gmail.com',1,'9854669859',0),(18,'Beth Stone','2214 River St, Hattiesburg, MS 39402','6015551212','beth.stone@gmail.com',1,'6709972225',1),(19,'Ron Timber','1877 Ocean Blvd, Gulfport, MS 39501','2285558989','ron.timber@gmail.com',1,'3985851857',0),(20,'Amy Lake','105 Palm Dr, Madison, MS 39110','6015551717','amy.lake@gmail.com',1,'9799342918',1),(21,'Shawn Grey','900 Pine St, Hattiesburg, MS 39402','6015555656','shawn.grey@gmail.com',1,'7039159328',0),(22,'Maria Snow','321 Beach Rd, Gulfport, MS 39501','2285559898','maria.snow@gmail.com',1,'5797768194',1),(23,'Chris Winter','500 Elm Blvd, Madison, MS 39110','6015557878','chris.winter@gmail.com',1,'7871363291',0),(24,'Laura Marsh','98 Spruce Lane, Hattiesburg, MS 39402','6015554343','laura.marsh@gmail.com',1,'1963512182',1),(25,'Alex Sun','1217 Shadow Ln, Gulfport, MS 39501','2285552121','alex.sun@gmail.com',1,'6203471344',0),(26,'Ella Rose','432 Forest Dr, Madison, MS 39110','6015559292','ella.rose@gmail.com',1,'5126820481',1),(27,'John Dawn','8931 Rock Ave, Hattiesburg, MS 39402','6015558989','john.dawn@gmail.com',1,'7023688682',1),(28,'Nancy Blue','2032 Crescent Rd, Gulfport, MS 39501','2285553434','nancy.blue@gmail.com',1,'9737982274',0),(29,'Brandon Rain','302 Sunset Dr, Madison, MS 39110','6015556565','brandon.rain@gmail.com',1,'7618845633',1),(30,'Sally Storm','9852 Stormy Blvd, Hattiesburg, MS 39402','6015553434','sally.storm@gmail.com',1,'8880281652',0),(31,'Dan Fire','665 Summer St, Gulfport, MS 39501','2285552222','dan.fire@gmail.com',1,'1544871666',1),(32,'Cathy Snow','102 River Blvd, Madison, MS 39110','6015557777','cathy.snow@gmail.com',1,'1083513685',1),(33,'Mike Ice','760 Creek Ln, Hattiesburg, MS 39402','6015555656','mike.ice@gmail.com',1,'782953734',0),(34,'Jerry Frost','997 Forest Dr, Gulfport, MS 39501','2285556565','jerry.frost@gmail.com',1,'664227922',1),(35,'David Sunny','335 Oak Ave, Madison, MS 39110','6015558989','david.sunny@gmail.com',1,'972278715',1),(36,'Emma Fields','900 Ocean Dr, Hattiesburg, MS 39402','6015551212','emma.fields@gmail.com',1,'2868710116',0),(37,'Holly Berry','2030 Hillcrest Ln, Gulfport, MS 39501','2285559090','holly.berry@gmail.com',1,'1426714743',1),(38,'Jacob Willow','400 Lakeside Blvd, Madison, MS 39110','6015556565','jacob.willow@gmail.com',1,'8527443677',0),(39,'Megan Frost','765 Beach Ave, Hattiesburg, MS 39402','6015551213','megan.frost@gmail.com',1,'8357074464',1),(40,'Caleb Winter','123 Water St, Gulfport, MS 39501','2285556767','caleb.winter@gmail.com',1,'6203041594',0),(41,'Anna Brown','667 Pine Ave, Madison, MS 39110','6015554345','anna.brown@gmail.com',1,'5943984888',1),(42,'Henry Oaks','200 Sunset Ln, Hattiesburg, MS 39402','6015552324','henry.oaks@gmail.com',1,'1110799965',1),(43,'Ruth Moon','54 Birch Ave, Gulfport, MS 39501','2285550909','ruth.moon@gmail.com',1,'7722045469',0),(44,'Noah Stone','432 Apple Rd, Madison, MS 39110','6015557879','noah.stone@gmail.com',1,'5277827759',1),(45,'Ivy Spring','900 Elm Ln, Hattiesburg, MS 39402','6015554344','ivy.spring@gmail.com',1,'3223002695',0),(46,'Emily Roberts','789 Pine St, Hattiesburg, MS 39402','6015553434','emily.roberts@gmail.com',0,NULL,1),(47,'John Smith','123 Maple Ave, Madison, MS 39110','6015556767','john.smith@gmail.com',0,NULL,1),(48,'Alice Johnson','654 Oak St, Gulfport, MS 39501','2285555656','alice.johnson@gmail.com',0,NULL,1),(49,'Jack White','456 Spruce St, Madison, MS 39110','6015554545','jack.white@gmail.com',0,NULL,1),(50,'Lucy Grey','321 Birch Ave, Hattiesburg, MS 39402','6015554545','lucy.grey@gmail.com',0,NULL,1),(51,'Michael Brown','987 Cypress St, Madison, MS 39110','6015553434','michael.brown@gmail.com',0,NULL,1),(52,'Sarah Green','321 Birch St, Hattiesburg, MS 39402','6015554545','sarah.green@gmail.com',0,NULL,1),(53,'Daniel Black','564 Oak Lane, Gulfport, MS 39501','2285556767','daniel.black@gmail.com',0,NULL,1),(54,'Rachel Blue','874 Pine St, Madison, MS 39110','6015556767','rachel.blue@gmail.com',0,NULL,1),(55,'David Miller','532 Oak Ave, Hattiesburg, MS 39402','6015557878','david.miller@gmail.com',0,NULL,1),(56,'Sophia Martinez','981 Pine St, Gulfport, MS 39501','2285556767','sophia.martinez@gmail.com',0,NULL,1),(57,'Oliver Davis','111 Maple St, Madison, MS 39110','6015553333','oliver.davis@gmail.com',0,NULL,1),(58,'Amelia Harris','250 Spruce St, Hattiesburg, MS 39402','6015555656','amelia.harris@gmail.com',0,NULL,1),(59,'James Wilson','333 Oak St, Madison, MS 39110','6015553434','james.wilson@gmail.com',0,NULL,1),(60,'Isabella Clark','987 Cypress Ln, Gulfport, MS 39501','2285557878','isabella.clark@gmail.com',0,NULL,1),(61,'Elijah Lee','123 Birch Ln, Madison, MS 39110','6015556767','elijah.lee@gmail.com',0,NULL,1),(62,'Mia Walker','654 Pine St, Hattiesburg, MS 39402','6015553434','mia.walker@gmail.com',0,NULL,1),(63,'Noah Hall','321 Oak Ave, Gulfport, MS 39501','2285555656','noah.hall@gmail.com',0,NULL,1),(64,'Ava Young','888 Spruce St, Madison, MS 39110','6015557878','ava.young@gmail.com',0,NULL,1),(65,'Liam King','222 Birch Ave, Hattiesburg, MS 39402','6015553333','liam.king@gmail.com',0,NULL,1),(66,'Charlotte Scott','876 Oak Ln, Gulfport, MS 39501','2285556767','charlotte.scott@gmail.com',0,NULL,1),(67,'Lucas Adams','123 Pine St, Madison, MS 39110','6015554545','lucas.adams@gmail.com',0,NULL,1),(68,'Harper Edwards','777 Maple Ave, Hattiesburg, MS 39402','6015557878','harper.edwards@gmail.com',0,NULL,1),(69,'Benjamin Turner','654 Oak Ln, Gulfport, MS 39501','2285557878','benjamin.turner@gmail.com',0,NULL,1),(70,'Evelyn Carter','321 Birch Ave, Madison, MS 39110','6015556767','evelyn.carter@gmail.com',0,NULL,1),(71,'Henry Phillips','789 Spruce St, Hattiesburg, MS 39402','6015553434','henry.phillips@gmail.com',0,NULL,1),(72,'Abigail Mitchell','654 Pine St, Gulfport, MS 39501','2285554545','abigail.mitchell@gmail.com',0,NULL,1),(73,'Sebastian Garcia','111 Maple Ln, Madison, MS 39110','6015557878','sebastian.garcia@gmail.com',0,NULL,1),(74,'Emily Hernandez','999 Spruce Ln, Hattiesburg, MS 39402','6015553434','emily.hernandez@gmail.com',0,NULL,1),(75,'Daniel Rodriguez','654 Birch St, Gulfport, MS 39501','2285556767','daniel.rodriguez@gmail.com',0,NULL,1),(76,'Victoria Wright','888 Maple St, Madison, MS 39110','6015555656','victoria.wright@gmail.com',0,NULL,1),(77,'Logan Robinson','321 Oak Ln, Hattiesburg, MS 39402','6015557878','logan.robinson@gmail.com',0,NULL,1),(78,'Elizabeth Walker','654 Pine St, Gulfport, MS 39501','2285553434','elizabeth.walker@gmail.com',0,NULL,1),(79,'Owen Lewis','123 Birch St, Madison, MS 39110','6015553333','owen.lewis@gmail.com',0,NULL,1),(80,'Lily Moore','987 Oak Ave, Hattiesburg, MS 39402','6015556767','lily.moore@gmail.com',0,NULL,1),(81,'Jack White','789 Spruce St, Madison, MS 39110','6015555656','jack.white@gmail.com',0,NULL,1),(82,'Sophie Young','123 Pine Ln, Gulfport, MS 39501','2285554545','sophie.young@gmail.com',0,NULL,1),(83,'Jacob Adams','654 Maple Ave, Madison, MS 39110','6015557878','jacob.adams@gmail.com',0,NULL,1),(84,'Grace Harris','321 Birch St, Hattiesburg, MS 39402','6015553434','grace.harris@gmail.com',0,NULL,1),(85,'William Johnson','987 Oak Ln, Gulfport, MS 39501','2285556767','william.johnson@gmail.com',0,NULL,1),(86,'Avery Thompson','123 Spruce St, Madison, MS 39110','6015557878','avery.thompson@gmail.com',0,NULL,1),(87,'Ethan White','654 Pine Ave, Hattiesburg, MS 39402','6015553434','ethan.white@gmail.com',0,NULL,1),(88,'Ella Brown','789 Maple St, Gulfport, MS 39501','2285555656','ella.brown@gmail.com',0,NULL,1),(89,'Alexander Davis','111 Oak Ln, Madison, MS 39110','6015556767','alexander.davis@gmail.com',0,NULL,1),(90,'Madison Hall','321 Birch Ln, Hattiesburg, MS 39402','6015557878','madison.hall@gmail.com',0,NULL,1),(91,'Levi Lee','654 Oak St, Gulfport, MS 39501','2285557878','levi.lee@gmail.com',0,NULL,1),(92,'Scarlett Scott','123 Maple Ave, Madison, MS 39110','6015553434','scarlett.scott@gmail.com',0,NULL,1),(93,'Samuel Green','987 Spruce Ln, Hattiesburg, MS 39402','6015554545','samuel.green@gmail.com',0,NULL,1),(94,'Emily Roberts','789 Pine St, Hattiesburg, MS 39402','6015553434','emily.roberts@gmail.com',0,NULL,1),(95,'John Smith','123 Maple Ave, Madison, MS 39110','6015556767','john.smith@gmail.com',0,NULL,1),(96,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(97,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(98,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(99,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(100,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(101,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(102,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(103,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(104,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(105,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(106,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(107,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(108,'Reagan Jones','226 pecan creek dr madison ms 39110','6013100080','reagan.jones@gmail.com',0,NULL,1),(109,'Jesus Jesus','438 Roman Cv','6018503317','jesus@gmail.com',0,NULL,1),(110,'jesus','2344 lksajflaksjdf','6018503317','mike@gmail.com',0,NULL,1),(111,'jason mraz','483 thomas cv','6015487567','michael@gmail.com',0,NULL,1),(112,'Thomas Thomas','400 Thomas CV','60177777777','thomasthomas@gmail.com',0,NULL,1),(113,'Thomas Thomas','333 Thomas Thomas','7777777777','thomas@thomas.com',0,NULL,1),(114,'thumbelina thumb','thumb dr','601777777777','thumbelina@gmail.com',0,NULL,1),(115,'TEST TEST','123 TEST','8888888888','TEST@TEST.COM',0,NULL,1),(116,'TEST TEST','123 TEST','9999999999','TEST@GMAIL.COM',0,NULL,1),(117,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(118,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(119,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(120,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(121,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(122,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(123,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(124,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(125,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(126,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(127,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(128,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(129,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(130,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(131,'Michael Jones','226 Pecan Creek Dr','7698765432','mjj121616@gmail.com',0,NULL,1),(132,'Michael Jones','226 Pecan Creek Dr','5555555555','mjj121616@gmail.com',0,NULL,1),(133,'MOTHER','THERESA','90099999999','MOTHER.THERESA@GMAIL.COM',0,NULL,1),(134,'HELEN HUNT','123 HELEN DR','9999999999','HELEN.HUNT@GMAIL.COM',0,NULL,1),(135,'Henry Ford','123 henry ford','1111111111','henry.ford@yahoo.com',0,NULL,1),(136,'Honest Abe','124 Honest blvd','1234567890','honest.abe@aol.com',0,NULL,1),(137,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(138,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(139,'Joe Rogan','123 Rogan ln','7774567777','joe.rogan@allstars.net',0,NULL,1),(140,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(141,'Taylor Swift','100 Swifty Rd.','90090090000','taylor.swifty@records.biz',0,NULL,1),(142,'Ryan Hawkins','856 Ocean Springs Dr','7699993456','Ryan.hawkins@fairview.com',0,NULL,1),(143,'Ryan Hawkins','856 Ocean Springs Dr','7699993456','Ryan.hawkins@fairview.com',0,NULL,1),(144,'Ryan Hawkins','123 ryan hawkins dr','6017773456','ryan.hawkins@fairview.com',0,NULL,1),(145,'Ryan Hawkins','123 ryan hawkins dr','6017773456','ryan.hawkins@fairview.com',0,NULL,1),(146,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1),(147,'Thomas Evertson','815 Homey Hill Dr','4327865463','tevertsen@gmail.com',0,NULL,1),(148,'Michael Jones','226 Pecan Creek Dr','6018503317','mjj121616@gmail.com',0,NULL,1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Location_ID` int DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Location_ID` (`Location_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Chamar McDonald','Sales Associate','6015551234','chamar.McDonald@gmail.com',1),(2,'Jane Smith','Cashier','6015552345','jane.smith@gmail.com',1),(3,'Michael Johnson','Sales Associate','6015553456','michael.johnson@gmail.com',1),(4,'Jason Chavez','Manager','6015554567','jason.chavez@xplosiveelectronics.com',1),(5,'Emily Davis','Stock Clerk','6015555678','emily.davis@gmail.com',1),(6,'David Williams','Sales Associate','6015556789','david.williams@gmail.com',1),(7,'Sophia Wilson','Customer Service Rep','6015557890','sophia.wilson@gmail.com',1),(8,'James Taylor','Sales Associate','6015558910','james.taylor@gmail.com',1),(9,'Olivia Moore','Sales Associate','6015559021','olivia.moore@gmail.com',1),(10,'Liam Anderson','Technician','6015551235','liam.anderson@gmail.com',1),(11,'Ava Thompson','Sales Associate','6015552346','ava.thompson@gmail.com',1),(12,'Mason White','Cashier','6015553457','mason.white@gmail.com',1),(13,'Isabella Martinez','Cashier','6015554568','isabella.martinez@gmail.com',1),(14,'Lucas Garcia','Technician','6015555679','lucas.garcia@gmail.com',1),(15,'Mia Miller','Customer Service Rep','6015556780','mia.miller@gmail.com',1),(16,'Ethan Clark','Sales Associate','6012111234','ethan.clark@gmail.com',2),(17,'Chloe Rodriguez','Cashier','6012112345','chloe.rodriguez@gmail.com',2),(18,'Benjamin Lewis','Sales Associate','6012113456','benjamin.lewis@gmail.com',2),(19,'Susan Thompson','Manager','6012114567','susan.thompson@xplosiveelectronics.com',2),(20,'Noah Hall','Stock Clerk','6012115678','noah.hall@gmail.com',2),(21,'Ella Harris','Sales Associate','6012116789','ella.harris@gmail.com',2),(22,'Logan Allen','Customer Service Rep','6012117890','logan.allen@gmail.com',2),(23,'Aiden Young','Warehouse Worker','6012118910','aiden.young@gmail.com',2),(24,'Grace Hernandez','Sales Associate','6012119021','grace.hernandez@gmail.com',2),(25,'Jack King','Technician','6012111235','jack.king@gmail.com',2),(26,'Aria Wright','Sales Associate','6012112346','aria.wright@gmail.com',2),(27,'Henry Scott','Cashier','6012113457','henry.scott@gmail.com',2),(28,'Amelia Green','Sales Associate','6012114568','amelia.green@gmail.com',2),(29,'Alexander Adams','Cashier','6012115679','alexander.adams@gmail.com',2),(30,'Sophia Baker','Customer Service Rep','6012116780','sophia.baker@gmail.com',2),(31,'Daniel Turner','Sales Associate','2283001234','daniel.turner@gmail.com',3),(32,'Lily Mitchell','Cashier','2283002345','lily.mitchell@gmail.com',3),(33,'Samuel Perez','Sales Associate','2283003456','samuel.perez@gmail.com',3),(34,'Austin McMurphy','Manager','2283004567','austin.mcmurphy@xplosiveelectronics.com',3),(35,'Elijah Phillips','Stock Clerk','2283005678','elijah.phillips@gmail.com',3),(36,'Avery Campbell','Sales Associate','2283006789','avery.campbell@gmail.com',3),(37,'Owen Stewart','Customer Service Rep','2283007890','owen.stewart@gmail.com',3),(38,'Harper Sanchez','Warehouse Worker','2283008910','harper.sanchez@gmail.com',3),(39,'Liam Morris','Sales Associate','2283009021','liam.morris@gmail.com',3),(40,'Evelyn Reed','Technician','2283001235','evelyn.reed@gmail.com',3),(41,'William Ward','Sales Associate','2283002346','william.ward@gmail.com',3),(42,'Isabella Torres','Cashier','2283003457','isabella.torres@gmail.com',3),(43,'James Peterson','Sales Associate','2283004568','james.peterson@gmail.com',3),(44,'Ethan Gray','Cashier','2283005679','ethan.gray@gmail.com',3),(45,'Charlotte Rivera','Customer Service Rep','2283006780','charlotte.rivera@gmail.com',3),(46,'Michael Jones','Warehouse Manager','6018881234','michael.jones@xplosiveelectronics.com',4),(47,'Aubrey Carter','Forklift Operator','6018882345','aubrey.carter@gmail.com',4),(48,'Isaac Foster','Warehouse Worker','6018883456','isaac.foster@gmail.com',4),(49,'Zoey Powell','Stock Controller','6018884567','zoey.powell@gmail.com',4),(50,'Levi Foster','Inventory Specialist','6018885678','levi.foster@gmail.com',4),(51,'Ella Howard','Warehouse Worker','6018886789','ella.howard@gmail.com',4),(52,'Isaac Walker','Logistics Coordinator','6018887890','isaac.walker@gmail.com',4),(53,'Harper Collins','Warehouse Clerk','6018888910','harper.collins@gmail.com',4),(54,'Mia Bell','Forklift Operator','6018889021','mia.bell@gmail.com',4),(55,'Lucas Richardson','Inventory Manager','6018881235','lucas.richardson@gmail.com',4),(56,'Alexander Turner','Logistics Assistant','6018882346','alexander.turner@gmail.com',4),(57,'Isabella Simmons','Warehouse Worker','6018883457','isabella.simmons@gmail.com',4),(58,'Sophia Ross','Stock Controller','6018884568','sophia.ross@gmail.com',4),(59,'Liam Baker','Inventory Specialist','6018885679','liam.baker@gmail.com',4),(60,'Ava Lee','Warehouse Worker','6018886780','ava.lee@gmail.com',4),(61,'Miller Moss','Warehouse Manager','2287431234','miller.moss@xplosiveelectronics.com',5),(62,'Aiden Richardson','Forklift Operator','2287432345','aiden.richardson@gmail.com',5),(63,'Lucas Brooks','Warehouse Worker','2287433456','lucas.brooks@gmail.com',5),(64,'Ella Powell','Stock Controller','2287434567','ella.powell@gmail.com',5),(65,'Levi Cook','Inventory Specialist','2287435678','levi.cook@gmail.com',5),(66,'Mia Sanchez','Warehouse Worker','2287436789','mia.sanchez@gmail.com',5),(67,'Isaac Hayes','Logistics Coordinator','2287437890','isaac.hayes@gmail.com',5),(68,'Harper Morgan','Warehouse Clerk','2287438910','harper.morgan@gmail.com',5),(69,'Liam Cooper','Forklift Operator','2287439021','liam.cooper@gmail.com',5),(70,'Sophia Bailey','Inventory Manager','2287431235','sophia.bailey@gmail.com',5),(71,'Ethan Long','Logistics Assistant','2287432346','ethan.long@gmail.com',5),(72,'Charlotte Jenkins','Warehouse Worker','2287433457','charlotte.jenkins@gmail.com',5),(73,'Lucas Campbell','Stock Controller','2287434568','lucas.campbell@gmail.com',5),(74,'Amelia James','Inventory Specialist','2287435679','amelia.james@gmail.com',5),(75,'Sophia Thompson','Warehouse Wrker','2287436780','sophia.thompson@gmail.com',5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Inventory_ID` int NOT NULL AUTO_INCREMENT,
  `Location_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Inventory_ID`),
  KEY `Location_ID` (`Location_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=856 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,5),(2,1,2,17),(3,1,3,19),(4,1,4,15),(5,1,5,24),(6,1,6,10),(7,1,7,18),(8,1,8,13),(9,1,9,22),(10,1,10,20),(11,1,11,11),(12,1,12,12),(13,1,13,14),(14,1,14,15),(15,1,15,19),(16,1,16,21),(17,1,17,24),(18,1,18,17),(19,1,19,25),(20,1,20,14),(21,1,21,13),(22,1,22,16),(23,1,23,20),(24,1,24,17),(25,1,25,15),(26,1,26,14),(27,1,27,12),(28,1,28,19),(29,1,29,10),(30,1,30,25),(31,1,31,13),(32,1,32,21),(33,1,33,24),(34,1,34,11),(35,1,35,20),(36,1,36,17),(37,1,37,22),(38,1,38,16),(39,1,39,10),(40,1,40,25),(41,1,41,24),(42,1,42,23),(43,1,43,12),(44,1,44,18),(45,1,45,19),(46,1,46,22),(47,1,47,14),(48,1,48,21),(49,1,49,13),(50,1,50,17),(51,1,51,25),(52,1,52,10),(53,1,53,24),(54,1,54,12),(55,1,55,15),(56,1,56,23),(57,1,57,14),(58,1,58,19),(59,1,59,10),(60,1,60,13),(61,1,61,22),(62,1,62,18),(63,1,63,20),(64,1,64,17),(65,1,65,24),(66,1,66,23),(67,1,67,10),(68,1,68,21),(69,1,69,25),(70,1,70,14),(71,1,71,22),(72,1,72,15),(73,1,73,20),(74,1,74,18),(75,1,75,17),(76,1,76,13),(77,1,77,25),(78,1,78,10),(79,1,79,24),(80,1,80,16),(81,1,81,14),(82,1,82,19),(83,1,83,15),(84,1,84,23),(85,1,85,22),(86,1,86,17),(87,1,87,11),(88,1,88,13),(89,1,89,20),(90,1,90,24),(91,1,91,12),(92,1,92,21),(93,1,93,14),(94,1,94,16),(95,1,95,19),(96,1,96,22),(97,1,97,18),(98,1,98,15),(99,1,99,13),(100,1,100,23),(101,1,101,17),(102,1,102,24),(103,1,103,20),(104,1,104,18),(105,1,105,14),(106,1,106,16),(107,1,107,19),(108,1,108,25),(109,1,109,22),(110,1,110,15),(111,1,111,17),(112,1,112,12),(113,1,113,20),(114,1,114,23),(115,1,115,11),(116,1,116,21),(117,1,117,18),(118,1,118,14),(119,1,119,15),(120,1,120,19),(121,1,121,25),(122,1,122,17),(123,1,123,22),(124,1,124,16),(125,1,125,13),(126,1,126,18),(127,1,127,14),(128,1,128,23),(129,1,129,20),(130,1,130,17),(131,1,131,10),(132,1,132,15),(133,1,133,19),(134,1,134,12),(135,1,135,23),(136,1,136,22),(137,1,137,18),(138,1,138,15),(139,1,139,11),(140,1,140,21),(141,1,141,24),(142,1,142,17),(143,1,143,13),(144,1,144,14),(145,1,145,16),(146,1,146,19),(147,1,147,20),(148,1,148,23),(149,1,149,15),(150,1,150,18),(151,1,151,10),(152,1,152,25),(153,1,153,24),(154,1,154,14),(155,1,155,20),(156,1,156,13),(157,1,157,22),(158,1,158,21),(159,1,159,15),(160,1,160,16),(161,1,161,11),(162,1,162,18),(163,1,163,10),(164,1,164,24),(165,1,165,19),(166,1,166,13),(167,1,167,23),(168,1,168,17),(169,1,169,15),(170,1,170,12),(171,1,171,25),(172,2,1,5),(173,2,2,17),(174,2,3,19),(175,2,4,15),(176,2,5,24),(177,2,6,5),(178,2,7,18),(179,2,8,14),(180,2,9,22),(181,2,10,20),(182,2,11,15),(183,2,12,12),(184,2,13,22),(185,2,14,25),(186,2,15,11),(187,2,16,9),(188,2,17,20),(189,2,18,7),(190,2,19,23),(191,2,20,14),(192,2,21,13),(193,2,22,8),(194,2,23,16),(195,2,24,19),(196,2,25,18),(197,2,26,5),(198,2,27,13),(199,2,28,19),(200,2,29,17),(201,2,30,25),(202,2,31,11),(203,2,32,24),(204,2,33,9),(205,2,34,18),(206,2,35,20),(207,2,36,16),(208,2,37,22),(209,2,38,5),(210,2,39,14),(211,2,40,25),(212,2,41,7),(213,2,42,13),(214,2,43,21),(215,2,44,11),(216,2,45,24),(217,2,46,9),(218,2,47,12),(219,2,48,15),(220,2,49,18),(221,2,50,19),(222,2,51,22),(223,2,52,14),(224,2,53,23),(225,2,54,15),(226,2,55,11),(227,2,56,25),(228,2,57,13),(229,2,58,19),(230,2,59,17),(231,2,60,5),(232,2,61,22),(233,2,62,18),(234,2,63,20),(235,2,64,15),(236,2,65,16),(237,2,66,9),(238,2,67,25),(239,2,68,17),(240,2,69,11),(241,2,70,23),(242,2,71,15),(243,2,72,12),(244,2,73,14),(245,2,74,21),(246,2,75,18),(247,2,76,9),(248,2,77,25),(249,2,78,7),(250,2,79,15),(251,2,80,14),(252,2,81,17),(253,2,82,20),(254,2,83,13),(255,2,84,23),(256,2,85,11),(257,2,86,19),(258,2,87,25),(259,2,88,9),(260,2,89,16),(261,2,90,12),(262,2,91,14),(263,2,92,22),(264,2,93,18),(265,2,94,20),(266,2,95,16),(267,2,96,21),(268,2,97,7),(269,2,98,9),(270,2,99,13),(271,2,100,24),(272,2,101,15),(273,2,102,12),(274,2,103,19),(275,2,104,22),(276,2,105,18),(277,2,106,14),(278,2,107,23),(279,2,108,16),(280,2,109,7),(281,2,110,25),(282,2,111,10),(283,2,112,17),(284,2,113,12),(285,2,114,15),(286,2,115,22),(287,2,116,18),(288,2,117,20),(289,2,118,9),(290,2,119,7),(291,2,120,16),(292,2,121,13),(293,2,122,24),(294,2,123,19),(295,2,124,12),(296,2,125,22),(297,2,126,17),(298,2,127,15),(299,2,128,9),(300,2,129,13),(301,2,130,25),(302,2,131,16),(303,2,132,7),(304,2,133,23),(305,2,134,20),(306,2,135,15),(307,2,136,18),(308,2,137,10),(309,2,138,25),(310,2,139,13),(311,2,140,16),(312,2,141,7),(313,2,142,12),(314,2,143,22),(315,2,144,17),(316,2,145,21),(317,2,146,9),(318,2,147,23),(319,2,148,13),(320,2,149,25),(321,2,150,19),(322,2,151,16),(323,2,152,7),(324,2,153,12),(325,2,154,18),(326,2,155,20),(327,2,156,17),(328,2,157,22),(329,2,158,14),(330,2,159,24),(331,2,160,12),(332,2,161,9),(333,2,162,23),(334,2,163,15),(335,2,164,19),(336,2,165,17),(337,2,166,11),(338,2,167,21),(339,2,168,14),(340,2,169,24),(341,2,170,10),(342,2,171,12),(343,3,1,5),(344,3,2,8),(345,3,3,10),(346,3,4,14),(347,3,5,12),(348,3,6,7),(349,3,7,9),(350,3,8,11),(351,3,9,6),(352,3,10,15),(353,3,11,3),(354,3,12,13),(355,3,13,8),(356,3,14,14),(357,3,15,12),(358,3,16,7),(359,3,17,11),(360,3,18,9),(361,3,19,6),(362,3,20,15),(363,3,21,4),(364,3,22,8),(365,3,23,7),(366,3,24,12),(367,3,25,13),(368,3,26,5),(369,3,27,10),(370,3,28,9),(371,3,29,6),(372,3,30,14),(373,3,31,3),(374,3,32,7),(375,3,33,8),(376,3,34,13),(377,3,35,12),(378,3,36,5),(379,3,37,15),(380,3,38,11),(381,3,39,14),(382,3,40,9),(383,3,41,7),(384,3,42,4),(385,3,43,13),(386,3,44,6),(387,3,45,12),(388,3,46,8),(389,3,47,11),(390,3,48,10),(391,3,49,14),(392,3,50,7),(393,3,51,9),(394,3,52,13),(395,3,53,12),(396,3,54,15),(397,3,55,10),(398,3,56,5),(399,3,57,6),(400,3,58,9),(401,3,59,13),(402,3,60,7),(403,3,61,14),(404,3,62,11),(405,3,63,10),(406,3,64,6),(407,3,65,3),(408,3,66,12),(409,3,67,9),(410,3,68,15),(411,3,69,14),(412,3,70,5),(413,3,71,4),(414,3,72,13),(415,3,73,12),(416,3,74,11),(417,3,75,14),(418,3,76,9),(419,3,77,6),(420,3,78,8),(421,3,79,11),(422,3,80,10),(423,3,81,15),(424,3,82,13),(425,3,83,12),(426,3,84,6),(427,3,85,4),(428,3,86,10),(429,3,87,5),(430,3,88,9),(431,3,89,11),(432,3,90,7),(433,3,91,15),(434,3,92,14),(435,3,93,8),(436,3,94,4),(437,3,95,12),(438,3,96,11),(439,3,97,6),(440,3,98,9),(441,3,99,7),(442,3,100,13),(443,3,101,15),(444,3,102,10),(445,3,103,5),(446,3,104,12),(447,3,105,14),(448,3,106,6),(449,3,107,9),(450,3,108,11),(451,3,109,7),(452,3,110,8),(453,3,111,14),(454,3,112,5),(455,3,113,12),(456,3,114,15),(457,3,115,6),(458,3,116,9),(459,3,117,10),(460,3,118,13),(461,3,119,11),(462,3,120,4),(463,3,121,7),(464,3,122,14),(465,3,123,12),(466,3,124,5),(467,3,125,10),(468,3,126,8),(469,3,127,13),(470,3,128,15),(471,3,129,9),(472,3,130,7),(473,3,131,5),(474,3,132,11),(475,3,133,10),(476,3,134,14),(477,3,135,12),(478,3,136,9),(479,3,137,6),(480,3,138,7),(481,3,139,13),(482,3,140,15),(483,3,141,10),(484,3,142,8),(485,3,143,12),(486,3,144,9),(487,3,145,14),(488,3,146,6),(489,3,147,11),(490,3,148,5),(491,3,149,7),(492,3,150,8),(493,3,151,14),(494,3,152,13),(495,3,153,9),(496,3,154,6),(497,3,155,12),(498,3,156,10),(499,3,157,15),(500,3,158,5),(501,3,159,8),(502,3,160,14),(503,3,161,11),(504,3,162,9),(505,3,163,7),(506,3,164,10),(507,3,165,6),(508,3,166,13),(509,3,167,12),(510,3,168,8),(511,3,169,15),(512,3,170,5),(513,3,171,6),(514,4,1,3),(515,4,2,23),(516,4,3,18),(517,4,4,5),(518,4,5,24),(519,4,6,15),(520,4,7,3),(521,4,8,0),(522,4,9,7),(523,4,10,19),(524,4,11,11),(525,4,12,22),(526,4,13,13),(527,4,14,25),(528,4,15,17),(529,4,16,14),(530,4,17,9),(531,4,18,6),(532,4,19,21),(533,4,20,8),(534,4,21,12),(535,4,22,19),(536,4,23,2),(537,4,24,17),(538,4,25,5),(539,4,26,20),(540,4,27,0),(541,4,28,24),(542,4,29,3),(543,4,30,2),(544,4,31,18),(545,4,32,12),(546,4,33,4),(547,4,34,6),(548,4,35,10),(549,4,36,21),(550,4,37,25),(551,4,38,16),(552,4,39,3),(553,4,40,23),(554,4,41,12),(555,4,42,14),(556,4,43,20),(557,4,44,18),(558,4,45,7),(559,4,46,6),(560,4,47,25),(561,4,48,10),(562,4,49,5),(563,4,50,2),(564,4,51,9),(565,4,52,23),(566,4,53,4),(567,4,54,19),(568,4,55,17),(569,4,56,15),(570,4,57,20),(571,4,58,8),(572,4,59,14),(573,4,60,6),(574,4,61,22),(575,4,62,16),(576,4,63,2),(577,4,64,5),(578,4,65,11),(579,4,66,21),(580,4,67,9),(581,4,68,3),(582,4,69,8),(583,4,70,14),(584,4,71,17),(585,4,72,25),(586,4,73,13),(587,4,74,0),(588,4,75,10),(589,4,76,19),(590,4,77,22),(591,4,78,3),(592,4,79,25),(593,4,80,11),(594,4,81,17),(595,4,82,2),(596,4,83,7),(597,4,84,5),(598,4,85,12),(599,4,86,16),(600,4,87,14),(601,4,88,0),(602,4,89,9),(603,4,90,23),(604,4,91,15),(605,4,92,18),(606,4,93,7),(607,4,94,4),(608,4,95,5),(609,4,96,21),(610,4,97,6),(611,4,98,17),(612,4,99,8),(613,4,100,19),(614,4,101,13),(615,4,102,10),(616,4,103,3),(617,4,104,12),(618,4,105,25),(619,4,106,20),(620,4,107,4),(621,4,108,15),(622,4,109,18),(623,4,110,8),(624,4,111,22),(625,4,112,7),(626,4,113,14),(627,4,114,6),(628,4,115,23),(629,4,116,12),(630,4,117,9),(631,4,118,11),(632,4,119,0),(633,4,120,18),(634,4,121,2),(635,4,122,25),(636,4,123,4),(637,4,124,17),(638,4,125,7),(639,4,126,20),(640,4,127,3),(641,4,128,16),(642,4,129,13),(643,4,130,11),(644,4,131,6),(645,4,132,18),(646,4,133,5),(647,4,134,21),(648,4,135,15),(649,4,136,2),(650,4,137,0),(651,4,138,23),(652,4,139,14),(653,4,140,7),(654,4,141,6),(655,4,142,18),(656,4,143,12),(657,4,144,20),(658,4,145,5),(659,4,146,3),(660,4,147,13),(661,4,148,21),(662,4,149,25),(663,4,150,14),(664,4,151,9),(665,4,152,19),(666,4,153,7),(667,4,154,8),(668,4,155,15),(669,4,156,11),(670,4,157,24),(671,4,158,16),(672,4,159,10),(673,4,160,3),(674,4,161,17),(675,4,162,12),(676,4,163,6),(677,4,164,18),(678,4,165,5),(679,4,166,21),(680,4,167,14),(681,4,168,2),(682,4,169,20),(683,4,170,13),(684,4,171,4),(685,5,1,4),(686,5,2,14),(687,5,3,21),(688,5,4,4),(689,5,5,20),(690,5,6,0),(691,5,7,13),(692,5,8,17),(693,5,9,5),(694,5,10,23),(695,5,11,8),(696,5,12,16),(697,5,13,3),(698,5,14,24),(699,5,15,7),(700,5,16,19),(701,5,17,9),(702,5,18,11),(703,5,19,25),(704,5,20,22),(705,5,21,13),(706,5,22,7),(707,5,23,14),(708,5,24,10),(709,5,25,2),(710,5,26,23),(711,5,27,18),(712,5,28,8),(713,5,29,5),(714,5,30,17),(715,5,31,9),(716,5,32,8),(717,5,33,16),(718,5,34,3),(719,5,35,11),(720,5,36,24),(721,5,37,20),(722,5,38,7),(723,5,39,15),(724,5,40,25),(725,5,41,13),(726,5,42,10),(727,5,43,18),(728,5,44,22),(729,5,45,9),(730,5,46,6),(731,5,47,25),(732,5,48,0),(733,5,49,7),(734,5,50,11),(735,5,51,21),(736,5,52,3),(737,5,53,14),(738,5,54,18),(739,5,55,12),(740,5,56,9),(741,5,57,5),(742,5,58,24),(743,5,59,22),(744,5,60,4),(745,5,61,19),(746,5,62,14),(747,5,63,6),(748,5,64,0),(749,5,65,17),(750,5,66,12),(751,5,67,7),(752,5,68,21),(753,5,69,25),(754,5,70,10),(755,5,71,11),(756,5,72,22),(757,5,73,8),(758,5,74,6),(759,5,75,15),(760,5,76,4),(761,5,77,23),(762,5,78,9),(763,5,79,5),(764,5,80,12),(765,5,81,18),(766,5,82,3),(767,5,83,11),(768,5,84,7),(769,5,85,20),(770,5,86,16),(771,5,87,13),(772,5,88,0),(773,5,89,24),(774,5,90,9),(775,5,91,18),(776,5,92,15),(777,5,93,4),(778,5,94,17),(779,5,95,12),(780,5,96,10),(781,5,97,25),(782,5,98,14),(783,5,99,6),(784,5,100,5),(785,5,101,21),(786,5,102,3),(787,5,103,19),(788,5,104,18),(789,5,105,9),(790,5,106,23),(791,5,107,0),(792,5,108,15),(793,5,109,12),(794,5,110,4),(795,5,111,22),(796,5,112,13),(797,5,113,8),(798,5,114,10),(799,5,115,17),(800,5,116,7),(801,5,117,25),(802,5,118,16),(803,5,119,0),(804,5,120,20),(805,5,121,9),(806,5,122,3),(807,5,123,22),(808,5,124,5),(809,5,125,18),(810,5,126,24),(811,5,127,7),(812,5,128,13),(813,5,129,4),(814,5,130,16),(815,5,131,11),(816,5,132,19),(817,5,133,25),(818,5,134,6),(819,5,135,14),(820,5,136,9),(821,5,137,2),(822,5,138,21),(823,5,139,8),(824,5,140,23),(825,5,141,12),(826,5,142,5),(827,5,143,17),(828,5,144,7),(829,5,145,10),(830,5,146,19),(831,5,147,0),(832,5,148,16),(833,5,149,25),(834,5,150,3),(835,5,151,20),(836,5,152,18),(837,5,153,6),(838,5,154,22),(839,5,155,4),(840,5,156,9),(841,5,157,17),(842,5,158,15),(843,5,159,14),(844,5,160,10),(845,5,161,13),(846,5,162,23),(847,5,163,5),(848,5,164,21),(849,5,165,2),(850,5,166,16),(851,5,167,11),(852,5,168,25),(853,5,169,8),(854,5,170,12),(855,5,171,19);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `Invoice_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Invoice_Date` date NOT NULL,
  `Due_Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Payment_Status` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`Invoice_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,5,'2024-10-18','2024-12-21',2440.91,'Pending'),(2,6,'2024-10-01','2024-12-17',2629.60,'Pending'),(3,7,'2024-10-23','2024-12-29',1913.71,'Pending'),(4,8,'2024-10-09','2024-12-17',2797.43,'Pending'),(5,9,'2024-10-03','2024-12-17',2074.49,'Pending'),(6,10,'2024-10-22','2024-12-12',2878.34,'Pending'),(7,11,'2024-10-21','2024-12-15',1455.78,'Pending'),(8,12,'2024-10-25','2024-12-22',697.63,'Pending'),(9,13,'2024-10-24','2024-12-08',454.52,'Pending'),(10,14,'2024-10-21','2024-12-03',1475.16,'Pending'),(11,15,'2024-10-03','2024-12-28',1691.20,'Pending'),(12,16,'2024-10-28','2024-12-27',2416.80,'Pending'),(13,17,'2024-10-12','2024-12-11',2381.26,'Pending'),(14,18,'2024-10-28','2024-12-02',1947.15,'Pending'),(15,19,'2024-10-02','2024-12-09',1177.74,'Pending'),(16,20,'2024-10-29','2024-12-18',846.15,'Pending');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Manager` varchar(255) DEFAULT NULL,
  `Location_Type` enum('Store','Warehouse') NOT NULL,
  PRIMARY KEY (`Location_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Xplosive Electronics Madison','1050 Madison Ln. Madison, MS 39110','6015555252','Jason Chavez','Store'),(2,'Xplosive Electronics Hattiesburg','700 Hattiesburg Ln. Hattiesburg, MS 39402','6012119090','Susan Thompson','Store'),(3,'Xplosive Electronics Gulfport','121 Coastal Plains Hwy, Gulfport, MS 39501','2283003000','Austin McMurphy','Store'),(4,'Xplosive Electronics North Warehouse','18 Business Parkway, Madison, MS 39110','6018888989','Michael Jones','Warehouse'),(5,'Xplosive Electronics South Warehouse','5678 Waterfront Dr, Gulfport, MS 39501','2287430912','Miller Moss','Warehouse');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `Order_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  KEY `Product_ID` (`Product_ID`),
  KEY `order_detail_ibfk_1_idx` (`Order_ID`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (4,125,1,79.99),(5,125,1,79.99),(5,156,1,1999.99),(5,157,1,74.99),(6,125,1,79.99),(6,156,1,1999.99),(6,157,1,74.99),(7,125,1,79.99),(7,156,1,1999.99),(7,157,1,74.99),(8,125,1,79.99),(8,156,1,1999.99),(8,157,1,74.99),(9,126,1,129.99),(10,126,1,129.99),(10,126,1,129.99),(11,126,1,129.99),(11,126,1,129.99),(12,126,1,129.99),(12,126,1,129.99),(13,126,1,129.99),(13,126,1,129.99),(14,126,1,129.99),(14,126,1,129.99),(15,126,1,129.99),(15,126,1,129.99),(16,126,1,129.99),(16,126,1,129.99),(16,156,1,1999.99),(17,126,1,129.99),(17,126,1,129.99),(17,156,1,1999.99),(18,126,1,129.99),(18,126,1,129.99),(18,156,1,1999.99),(19,126,1,129.99),(19,126,1,129.99),(19,156,1,1999.99),(20,126,1,129.99),(20,126,1,129.99),(20,156,1,1999.99),(21,126,1,129.99),(21,126,1,129.99),(21,156,1,1999.99),(22,126,1,129.99),(22,126,1,129.99),(22,156,1,1999.99),(23,126,1,129.99),(23,126,1,129.99),(23,156,1,1999.99),(24,126,1,129.99),(24,126,1,129.99),(24,156,1,1999.99),(25,126,1,129.99),(25,126,1,129.99),(25,156,1,1999.99),(26,126,1,129.99),(26,126,1,129.99),(26,156,1,1999.99),(27,157,1,74.99),(28,157,1,74.99),(29,1,1,399.99),(30,1,1,399.99),(31,1,1,399.99),(32,1,1,399.99),(33,1,1,399.99),(34,1,1,399.99),(35,1,1,399.99),(36,1,1,399.99),(37,1,1,399.99),(38,30,1,1299.00),(38,32,1,1399.99),(39,30,1,1299.00),(39,32,1,1399.99),(40,30,1,1299.00),(40,32,1,1399.99),(41,30,1,1299.00),(41,32,1,1399.99),(42,30,1,1299.00),(42,32,1,1399.99),(43,30,1,1299.00),(43,32,1,1399.99),(44,30,1,1299.00),(44,32,1,1399.99);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Date` datetime NOT NULL,
  `Customer_ID` int NOT NULL,
  `Order_Type` enum('Online','In-Store') NOT NULL,
  `Payment_ID` int NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Payment_ID` (`Payment_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-10-17 16:26:55',104,'Online',1),(2,'2024-10-17 16:29:32',105,'Online',1),(3,'2024-10-17 16:37:37',106,'Online',1),(4,'2024-10-17 17:59:56',107,'Online',1),(5,'2024-10-17 18:09:35',108,'Online',1),(6,'2024-10-17 18:33:50',109,'Online',1),(7,'2024-10-17 18:36:09',110,'Online',1),(8,'2024-10-17 18:44:44',111,'Online',1),(9,'2024-10-18 15:26:01',112,'Online',1),(10,'2024-10-18 15:38:07',113,'Online',1),(11,'2024-10-18 15:46:53',114,'Online',1),(12,'2024-10-18 15:54:50',115,'Online',1),(13,'2024-10-18 15:59:42',116,'Online',1),(14,'2024-10-18 16:05:37',117,'Online',1),(15,'2024-10-18 16:10:15',118,'Online',1),(16,'2024-10-19 14:06:10',120,'Online',1),(17,'2024-10-19 14:34:21',121,'Online',1),(18,'2024-10-19 14:43:25',122,'Online',1),(19,'2024-10-19 15:03:48',123,'Online',1),(20,'2024-10-19 15:11:20',124,'Online',1),(21,'2024-10-19 15:34:13',125,'Online',1),(22,'2024-10-19 16:00:47',126,'Online',1),(23,'2024-10-19 16:01:26',127,'Online',1),(24,'2024-10-19 16:18:57',128,'Online',1),(25,'2024-10-19 16:21:36',129,'Online',1),(26,'2024-10-19 16:33:03',130,'Online',1),(27,'2024-10-19 16:43:19',131,'Online',1),(28,'2024-10-19 16:51:20',132,'Online',1),(29,'2024-10-22 10:03:52',133,'Online',1),(30,'2024-10-22 10:23:03',134,'Online',1),(31,'2024-10-22 11:43:17',135,'Online',1),(32,'2024-10-22 11:50:48',136,'Online',1),(33,'2024-10-22 11:55:45',137,'Online',1),(34,'2024-10-22 12:07:24',138,'Online',1),(35,'2024-10-22 12:16:01',139,'Online',1),(36,'2024-10-22 12:28:54',140,'Online',1),(37,'2024-10-22 12:33:32',141,'Online',1),(38,'2024-10-26 17:43:27',142,'Online',1),(39,'2024-10-26 17:43:30',143,'Online',1),(40,'2024-10-26 17:45:24',144,'Online',1),(41,'2024-10-26 17:50:36',145,'Online',1),(42,'2024-10-26 17:57:59',146,'Online',1),(43,'2024-10-26 18:05:59',147,'Online',1),(44,'2024-10-26 18:26:55',148,'Online',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Payment_Type` enum('Account','Credit Card','Debit Card') NOT NULL,
  `Card_Number` varchar(20) DEFAULT NULL,
  `Expiration_Date` date DEFAULT NULL,
  `Customer_ID` int NOT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Credit Card','4111111111111111','2024-12-01',1),(2,'Debit Card','5555555555554444','2023-09-01',2),(3,'Credit Card','4012888888881881','2025-03-15',3),(4,'Credit Card','378282246310005','2026-01-22',4),(5,'Debit Card','6011111111111117','2023-10-12',5),(6,'Credit Card','30569309025904','2025-08-30',6),(7,'Credit Card','3530111333300000','2027-02-01',7),(8,'Debit Card','6011000990139424','2024-07-19',8),(9,'Credit Card','6011111111111117','2025-04-10',9),(10,'Debit Card','5105105105105100','2023-11-03',10),(11,'Credit Card','4111111111111111','2024-12-01',11),(12,'Debit Card','5555555555554444','2023-09-01',12),(13,'Credit Card','4012888888881881','2025-03-15',13),(14,'Credit Card','378282246310005','2026-01-22',14),(15,'Debit Card','6011111111111117','2023-10-12',15),(16,'Credit Card','30569309025904','2025-08-30',16),(17,'Credit Card','3530111333300000','2027-02-01',17),(18,'Debit Card','6011000990139424','2024-07-19',18),(19,'Credit Card','6011111111111117','2025-04-10',19),(20,'Debit Card','5105105105105100','2023-11-03',20),(21,'Credit Card','4111111111111111','2024-12-01',21),(22,'Debit Card','5555555555554444','2023-09-01',22),(23,'Credit Card','4012888888881881','2025-03-15',23),(24,'Credit Card','378282246310005','2026-01-22',24),(25,'Debit Card','6011111111111117','2023-10-12',25),(26,'Credit Card','30569309025904','2025-08-30',26),(27,'Credit Card','3530111333300000','2027-02-01',27),(28,'Debit Card','6011000990139424','2024-07-19',28),(29,'Credit Card','6011111111111117','2025-04-10',29),(30,'Debit Card','5105105105105100','2023-11-03',30),(31,'Credit Card','4111111111111111','2024-12-01',31),(32,'Debit Card','5555555555554444','2023-09-01',32),(33,'Credit Card','4012888888881881','2025-03-15',33),(34,'Credit Card','378282246310005','2026-01-22',34),(35,'Debit Card','6011111111111117','2023-10-12',35),(36,'Credit Card','30569309025904','2025-08-30',36),(37,'Credit Card','3530111333300000','2027-02-01',37),(38,'Debit Card','6011000990139424','2024-07-19',38),(39,'Credit Card','6011111111111117','2025-04-10',39),(40,'Debit Card','5105105105105100','2023-11-03',40),(41,'Credit Card','4111111111111111','2024-12-01',41),(42,'Debit Card','5555555555554444','2023-09-01',42),(43,'Credit Card','4012888888881881','2025-03-15',43),(44,'Credit Card','378282246310005','2026-01-22',44),(45,'Debit Card','6011111111111117','2023-10-12',45),(46,'Credit Card','30569309025904','2025-08-30',46),(47,'Credit Card','3530111333300000','2027-02-01',47),(48,'Debit Card','6011000990139424','2024-07-19',48),(49,'Credit Card','6011111111111117','2025-04-10',49),(50,'Debit Card','5105105105105100','2023-11-03',50);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` text,
  `Price` decimal(10,2) NOT NULL,
  `Manufacturer` varchar(255) DEFAULT NULL,
  `Product_Type` varchar(100) DEFAULT NULL,
  `Is_Package` tinyint(1) NOT NULL DEFAULT '0',
  `Package_Details` text,
  `Image_URL` varchar(255) DEFAULT NULL,
  `reorder_level` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Samsung Dishwasher 440 Series','Samsung Dishwasher 440 Series',399.99,'Samsung','Dishwasher',0,NULL,'/appliances/dishwasherpics/samsungdishwasher.jpg',5),(2,'Bosch 550 Series Smart Control Dishwasher','Bosch 550 Series Smart Control Dishwasher',1169.99,'Bosch','Dishwasher',0,NULL,'/appliances/dishwasherpics/bosch.jpg',5),(3,'LG Dishwasher','LG Dishwasher',599.99,'LG','Dishwasher',0,NULL,'/appliances/dishwasherpics/Lgdishwasher.jpg',5),(4,'Bosch 300 Series Smart Control','Bosch 300 Series Smart Control',899.99,'Bosch','Dishwasher',0,NULL,'/appliances/dishwasherpics/bosch300series.jpg',5),(5,'Kitchenaid Top Control Dishwasher','Kitchenaid Top Control Dishwasher',999.99,'Kitchenaid','Dishwasher',0,NULL,'/appliances/dishwasherpics/kitchenaid.jpg',5),(6,'GE Top Control Fingerprint Resistant Dishwasher','GE Top Control Fingerprint Resistant Dishwasher',549.99,'GE','Dishwasher',0,NULL,'/appliances/dishwasherpics/Gefingerprint.jpg',5),(7,'Frigidaire Front Control MaxDry Dishwasher','Frigidaire Front Control MaxDry Dishwasher',379.99,'Frigidaire','Dishwasher',0,NULL,'/appliances/dishwasherpics/Frigidaire.jpg',5),(8,'Samsung AutoRelease Smart Built-In Dishwasher','Samsung AutoRelease Dry Smart Built-In Stainless Steel Tub Dishwasher',649.99,'Samsung','Dishwasher',0,NULL,'/appliances/dishwasherpics/samsungautorelease.jpg',5),(9,'Maytag 24 Front Control Built-In Dishwasher','Maytag 24 Front Control Built-In Dishwasher',539.99,'Maytag','Dishwasher',0,NULL,'/appliances/dishwasherpics/maytag24.jpg',5),(10,'GE 1.6 Cu. Ft. Over-the-Range Microwave','GE 1.6 Cu. Ft. Over-the-Range Microwave - Stainless Steel',219.99,'GE','Microwave',0,NULL,'/appliances/microwavepics/ge16.jpg',5),(11,'LG 1.5 Cu. Ft. Countertop Microwave','LG 1.5 Cu. Ft. Countertop Microwave with Sensor Cooking',179.99,'LG','Microwave',0,NULL,'/appliances/microwavepics/lg15.jpg',5),(12,'Whirlpool 1.7 Cu. Ft. Over-the-Range Microwave','Whirlpool 1.7 Cu. Ft. Over-the-Range Microwave',209.99,'Whirlpool','Microwave',0,NULL,'/appliances/microwavepics/whirlpool17.jpg',5),(13,'LG 2.0 Cu. Ft. Over-the-Range Microwave','LG 2.0 Cu. Ft. Over-the-Range Microwave with Sensor Cooking',459.99,'LG','Microwave',0,NULL,'/appliances/microwavepics/lg20.jpg',5),(14,'GE Profile 2.2 Cu. Ft. Built-In Microwave','GE Profile 2.2 Cu. Ft. Built-In Microwave - Black on Black',289.99,'GE','Microwave',0,NULL,'/appliances/microwavepics/geprofile.jpg',5),(15,'Insignia 1.1 Cu. Ft. Countertop Microwave','Insignia 1.1 Cu. Ft. Countertop Microwave - Black',109.99,'Insignia','Microwave',0,NULL,'/appliances/microwavepics/insignia11.jpg',5),(16,'Frigidaire Gallery 1.9 Cu. Ft. Over-The-Range Microwave','Frigidaire Gallery 1.9 Cu. Ft. Over-The-Range Microwave',399.99,'Frigidaire','Microwave',0,NULL,'/appliances/microwavepics/frigidairegallary.jpg',5),(17,'Panasonic 1.2 Cu. Ft. Multioven Microwave','Panasonic 1.2 Cu. Ft. 1000 Watt HomeCHEF 4-in-1 Multioven Microwave',499.99,'Panasonic','Microwave',0,NULL,'/appliances/microwavepics/panasonic12.jpg',5),(18,'Samsung Bespoke 2.1 Cu. Ft. Over-the-Range Microwave','Samsung Bespoke 2.1 Cu. Ft. Over-the-Range Microwave with Sensor Cooking',521.99,'Samsung','Microwave',0,NULL,'/appliances/microwavepics/samsungbespoke.jpg',5),(19,'Samsung Bespoke 6.3 Cu Ft Electric','Samsung Bespoke 6.3 Cu Ft Electric',799.99,'Samsung','Oven',0,NULL,'/appliances/ovenpics/samsungbespoke.jpg',5),(20,'Whirlpool Gas Range with Drawer','Whirlpool Gas Range with Drawer',599.99,'Whirlpool','Oven',0,NULL,'/appliances/ovenpics/whirlpoolgas.jpg',5),(21,'LG 6.3 Cu Ft Smart Electric Range','LG 6.3 Cu Ft Smart Electric Range',799.99,'LG','Oven',0,NULL,'/appliances/ovenpics/LG63.jpg',5),(22,'Samsung 6 Cu Ft Smart Duo Gas Range','Samsung 6 Cu Ft Smart Duo Gas Range',1099.99,'Samsung','Oven',0,NULL,'/appliances/ovenpics/samsungduo.jpg',5),(23,'LG 7.3 Cu Ft Double Oven Electric Convection Range','LG 7.3 Cu Ft Double Oven Electric Convection Range',1399.99,'LG','Oven',0,NULL,'/appliances/ovenpics/lg73.jpg',5),(24,'Samsung 30 Built-In Single Wall Oven with WiFi','Samsung 30 Built-In Single Wall Oven with WiFi',1299.99,'Samsung','Oven',0,NULL,'/appliances/ovenpics/samsung30wifi.jpg',5),(25,'Samsung 6.3 cu. ft. Smart Electric Range','Samsung 6.3 cu. ft. Smart Electric Range with Air Fry & Griddle',1484.99,'Samsung','Oven',0,NULL,'/appliances/ovenpics/samsungflexduo.jpg',5),(26,'Samsung 30 Built-In Double Wall Oven with WiFi','Samsung 30 Built-In Double Wall Oven with WiFi',1899.99,'Samsung','Oven',0,NULL,'/appliances/ovenpics/samsungdoublewall.jpg',5),(27,'GE 30 Built-In Single Electric Wall Oven','GE 30 Built-In Single Electric Wall Oven',1199.99,'GE','Oven',0,NULL,'/appliances/ovenpics/GE30.jpg',5),(28,'Whirlpool 5.3 Cu. Ft. Electric Range','Whirlpool 5.3 Cu. Ft. Electric Range with Cooktop Flexibility',679.99,'Whirlpool','Oven',0,NULL,'/appliances/ovenpics/whirlpool53.jpg',5),(29,'LG Top Freezer Refrigerator','LG Top Freezer Refrigerator',699.99,'LG','Refrigerator',0,NULL,'/appliances/fridgepics/lgtop.jpg',5),(30,'Whirlpool Side-by-Side Refrigerator','Whirlpool Side-by-Side Refrigerator',1299.00,'Whirlpool','Refrigerator',0,NULL,'/appliances/fridgepics/whirlpoolside.jpg',5),(31,'Insignia Bottom Freezer Refrigerator','Insignia Bottom Freezer Refrigerator',679.99,'Insignia','Refrigerator',0,NULL,'/appliances/fridgepics/insigniabottom.jpg',5),(32,'LG Counter Depth Max Refrigerator','LG Counter Depth Max Refrigerator',1399.99,'LG','Refrigerator',0,NULL,'/appliances/fridgepics/LGcounter.jpg',5),(33,'Samsung 26.7 Cu. Ft. Side-by-Side Smart Refrigerator','Samsung 26.7 Cu. Ft. Side-by-Side Smart Refrigerator with Family Hub',2099.00,'Samsung','Refrigerator',0,NULL,'/appliances/fridgepics/samsung267.jpg',5),(34,'Samsung 31 Cu. Ft. French Door Refrigerator','Samsung 31 Cu. Ft. French Door Refrigerator with Four Types of Ice',1899.99,'Samsung','Refrigerator',0,NULL,'/appliances/fridgepics/samsungfrenchdoor.jpg',5),(35,'Samsung 30 Cu. Ft. French Door Refrigerator','Samsung 30 Cu. Ft. French Door Refrigerator with Family Hub',3149.99,'Samsung','Refrigerator',0,NULL,'/appliances/fridgepics/samsung30cu.jpg',5),(36,'Whirlpool 20.5 Cu. Ft. Top-Freezer Refrigerator','Whirlpool 20.5 Cu. Ft. Top-Freezer Refrigerator',739.99,'Whirlpool','Refrigerator',0,NULL,'/appliances/fridgepics/whirlpooltopwhite.jpg',5),(37,'Samsung BESPOKE 29 Cu. Ft. French Door Refrigerator','Samsung BESPOKE 29 Cu. Ft. French Door Refrigerator with Family Hub',3779.99,'Samsung','Refrigerator',0,NULL,'/appliances/fridgepics/samsungbespoke.jpg',5),(38,'JBL Partybox Speaker','JBL Partybox Speaker',249.99,'JBL','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/jblpartybox.jpg',5),(39,'Samsung Sound Tower High Power Audio','Samsung Sound Tower High Power Audio',549.99,'Samsung','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/samsungsoundtower.jpg',5),(40,'JBL Waterproof Speaker','JBL Waterproof Speaker',99.99,'JBL','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/jblwaterproof.jpg',5),(41,'Bose SoundLink Bluetooth Speaker','Bose SoundLink Bluetooth Speaker',149.99,'Bose','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/boseoundlink.jpg',5),(42,'Sony Ult Field 7 Wireless Speaker','Sony Ult Field 7 Wireless Speaker',399.99,'Sony','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/sonyultfield.jpg',5),(43,'Marshall - Emberton II Portable Bluetooth Speaker','Marshall - Emberton II Portable Bluetooth Speaker',115.99,'Marshall','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/marshall.jpg',5),(44,'Harman Kardon - Go+Play Mini Portable Wireless Speaker','Harman Kardon - Go+Play Mini Portable Wireless Speaker',399.99,'Harman Kardon','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/harmonkardonoplay.jpg',5),(45,'JBL - Xtreme 4 Portable Bluetooth Speaker','JBL - Xtreme 4 Portable Bluetooth Speaker',379.99,'JBL','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/jblxtreme4.jpg',5),(46,'Bose - SoundLink Revolve+ II Portable Bluetooth Speaker','Bose - SoundLink Revolve+ II Portable Bluetooth Speaker',299.99,'Bose','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/boseresolve.jpg',5),(47,'Sony - XV900 X-Series Bluetooth Party Speaker','Sony - XV900 X-Series Bluetooth Party Speaker',899.99,'Sony','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/sonyx900.jpg',5),(48,'JBL Flip 6 Portable Waterproof Speaker','JBL Flip 6 Portable Waterproof Speaker',129.99,'JBL','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/jblwaterproof.jpg',5),(49,'Sony XV800 Bluetooth Party Speaker','Sony XV800 Bluetooth Party Speaker',549.99,'Sony','Bluetooth Speaker',0,NULL,'/audiofolder/btspeakerpics/sonyx800.jpg',5),(50,'Bose QuietComfort Wireless Noise Cancelling Headphones','Bose QuietComfort Wireless Noise Cancelling Headphones',249.00,'Bose','Headphones',0,NULL,'/audiofolder/hppics/bosequietcomfort.jpg',5),(51,'Apple AirPods Pro','Apple AirPods Pro',189.99,'Apple','Headphones',0,NULL,'/audiofolder/hppics/appleairpodpro.jpg',5),(52,'Sony Wireless Noise Cancelling Headphones with bass boost','Sony Wireless Noise Cancelling Headphones with bass boost',279.99,'Sony','Headphones',0,NULL,'/audiofolder/hppics/sonyheadphones.jpg',5),(53,'Samsung Galaxy Buds2','Samsung Galaxy Buds2',109.99,'Samsung','Headphones',0,NULL,'/audiofolder/hppics/samsunggalaxybuds2.jpg',5),(54,'Bose QuietComfort Noise Cancelling Earbuds','Bose QuietComfort Noise Cancelling Earbuds',249.99,'Bose','Headphones',0,NULL,'/audiofolder/hppics/bosequietcomf.jpg',5),(55,'Jabra Elite 10 Earbuds','Jabra Elite 10 Earbuds',229.99,'Jabra','Headphones',0,NULL,'/audiofolder/hppics/jabraleite10.jpg',5),(56,'Sony - WH7C20N Wireless Noise Cancelling Headphones','Sony - WH7C20N Wireless Noise Cancelling Headphones',149.99,'Sony','Headphones',0,NULL,'/audiofolder/hppics/sonywhch720.jpg',5),(57,'Apple - AirPods Max - Space Gray','Apple - AirPods Max - Space Gray',529.99,'Apple','Headphones',0,NULL,'/audiofolder/hppics/appleairpodsmax.jpg',5),(58,'Apple - AirPods Pro 2 - White','Apple - AirPods Pro 2 - White',169.99,'Apple','Headphones',0,NULL,'/audiofolder/hppics/airpodpro2.jpg',5),(59,'Sennheiser - Momentum 4 Wireless Adaptive Noise-Cancelling Over-The-Ear Headphones','Sennheiser - Momentum 4 Wireless Adaptive Noise-Cancelling Over-The-Ear Headphones',399.99,'Sennheiser','Headphones',0,NULL,'/audiofolder/hppics/senheisermomentum.jpg',5),(60,'Sony - WH1000XM4 Wireless Noise-Cancelling Over-the-Ear Headphones','Sony - WH1000XM4 Wireless Noise-Cancelling Over-the-Ear Headphones',299.99,'Sony','Headphones',0,NULL,'/audiofolder/hppics/sonywh1000xm4.jpg',5),(61,'Beats - Powerbeats Pro Totally Wireless Earbuds','Beats - Powerbeats Pro Totally Wireless Earbuds',199.99,'Beats','Headphones',0,NULL,'/audiofolder/hppics/beatspowerbeatspro.jpg',5),(62,'Beats Solo 4 True Wireless Headphones','Beats Solo 4 True Wireless Headphones',149.99,'Beats','Headphones',0,NULL,'/audiofolder/hppics/beatssolo4.jpg',5),(63,'Panasonic Lumix 18.1MP 4k Camera','Panasonic Lumix 18.1MP 4k Camera',479.99,'Panasonic','Camera',0,NULL,'/cameras/dslr/panasoniclumix.jpg',5),(64,'Canon EOS Rebel T7 DSLR Video','Canon EOS Rebel T7 DSLR Video',599.99,'Canon','DSLR Camera',0,NULL,'/cameras/dslr/canonoesrebel.jpg',5),(65,'Nikon D7500 DSLR 4K Video Camera','Nikon D7500 DSLR 4K Video Camera with AF-S DX NIKKOR 18-140mm f/3.5-5.6G ED VR lens - Black',1199.99,'Nikon','DSLR Camera',0,NULL,'/cameras/dslr/nikond7500.jpg',5),(66,'Kodak PIXPRO AZ425-BK','Kodak PIXPRO AZ425-BK - Black',188.99,'Kodak','DSLR Camera',0,NULL,'/cameras/dslr/kodakpixpro.jpg',5),(67,'Canon EOS 5D Mark IV DSLR Camera','Canon EOS 5D Mark IV DSLR Camera with 24-105mm f/4L IS II USM Lens - Black',3099.00,'Canon','DSLR Camera',0,NULL,'/cameras/dslr/canonoes5d.jpg',5),(68,'Nikon D850 DSLR 4k Video Camera','Nikon D850 DSLR 4k Video Camera (Body Only) - Black',2499.99,'Nikon','DSLR Camera',0,NULL,'/cameras/dslr/nikond8504k.jpg',5),(69,'Panasonic LUMIX FZ80D 18.1 Megapixels 4K Camera','Panasonic LUMIX FZ80D 18.1 Megapixels 4K Photo Point and Shoot Digital Camera with 60X Zoom Lens - Black',479.99,'Panasonic','DSLR Camera',0,NULL,'/cameras/dslr/panasoniclumixtz80d.jpg',5),(70,'Canon EOS 90D DSLR Camera','Canon EOS 90D DSLR Camera',1199.99,'Canon','DSLR Camera',0,NULL,'/cameras/dslr/canonoes90d.jpg',5),(71,'Nikon D7500 Camera','Nikon D7500 Camera',899.99,'Nikon','DSLR Camera',0,NULL,'/cameras/dslr/nikond75004k.jpg',5),(72,'Sony Alpha a7 Mirrorless','Sony Alpha a7 Mirrorless',1699.99,'Sony','Mirrorless Camera',0,NULL,'/cameras/mirrorless/sonyalpha.jpg',5),(73,'Canon EOS R100 4K Mirrorless Camera Kit','Canon EOS R100 4K Video Mirrorless Camera Special Edition 2 Lens Kit with RF-S 18-45mm and RF-S 55-210mm Lenses - Black',829.99,'Canon','Mirrorless Camera',0,NULL,'/cameras/mirrorless/canonoesr100.jpg',5),(74,'Panasonic LUMIX G7 Mirrorless Camera','Panasonic LUMIX G7 Mirrorless 4K Photo Digital Camera Body with 14-42mm f3.5-5.6 II Lens - DMC-G7KK - Black',549.99,'Panasonic','Mirrorless Camera',0,NULL,'/cameras/mirrorless/panasoniclumixg7.jpg',5),(75,'Sony Alpha 6100 Mirrorless Camera Kit','Sony Alpha 6100 Mirrorless Camera 2-Lens Kit with E PZ 16-50mm and E 55-210mm Lenses - Black',1099.99,'Sony','Mirrorless Camera',0,NULL,'/cameras/mirrorless/sonyalpha6100.jpg',5),(76,'Nikon Z50 Mirrorless 4K Camera','Nikon Z50 Mirrorless 4K Video Camera with NIKKOR Z DX 16-50mm f/3.5-6.3 VR Lens - Black',999.99,'Nikon','Mirrorless Camera',0,NULL,'/cameras/mirrorless/nikonz50mirrorless.jpg',5),(77,'Canon EOS R6 Mark II Mirrorless','Canon EOS R6 Mark II Mirrorless',1999.99,'Canon','Mirrorless Camera',0,NULL,'/cameras/mirrorless/canonoesr6.jpg',5),(78,'Panasonic LUMIX G85 Mirrorless Camera','Panasonic LUMIX G85 Mirrorless 4K Photo Digital Camera Body with 12-60mm Lens, DMC-G85MK - Black',699.99,'Panasonic','Mirrorless Camera',0,NULL,'/cameras/mirrorless/panasoniclumixg85.jpg',5),(79,'Olympus OM SYSTEM OM-1 Mark II 4K Mirrorless Camera','Olympus OM SYSTEM OM-1 Mark II 4K Video Mirrorless Camera with Lens - Black',2842.99,'Olympus','Mirrorless Camera',0,NULL,'/cameras/mirrorless/olympusmarkii.jpg',5),(80,'Panasonic Lumix S9 Mirrorless','Panasonic Lumix S9 Mirrorless',1799.99,'Panasonic','Mirrorless Camera',0,NULL,'/cameras/mirrorless/panasonics9.jpg',5),(81,'Dell Inspiron 15 Touch Screen Laptop','Dell Inspiron 15 Touch Screen Laptop Intel Core i5 - 8GB - 512GB SSD',379.99,'Dell','Computer',0,NULL,'/computers/computerimages/inspiron15.jpg',5),(82,'Apple MacBook Air 13 inch Laptop','Apple - MacBook Air 13-inch Laptop - M3 chip - 8GB Memory - 256GB SSD',899.00,'Apple','Computer',0,NULL,'/computers/computerimages/air13.jpg',5),(83,'Apple MacBook Pro 14 inch Laptop','Apple - MacBook Pro 14\" Laptop - M3 Pro Chip - 16GB Memory - 14 core GPU - 512GB SSD',1499.00,'Apple','Computer',0,NULL,'/computers/computerimages/pro14.jpg',5),(84,'Lenovo Ideapad 11 15.6 FHD Touchscreen Laptop','Lenovo Ideapad 11 15.6\" FHD Touchscreen Laptop Intel Core i3 - 8GB Memory - Intel UHD Graphics - 256GB SSD',279.99,'Lenovo','Computer',0,NULL,'/computers/computerimages/ideapad.jpg',5),(85,'Acer Chromebook 315','Acer Chromebook 315 - 15.6\" HD Display Laptop - Intel Celeron - 4GB LPDDR4 - 64GB eMMC',149.00,'Acer','Computer',0,NULL,'/computers/computerimages/acer.jpg',5),(86,'HP Envy 2-in-1 14 Wide Ultra XGA Touch Screen Laptop','HP - Envy 2-in-1 14\" Wide Ultra XGA Touch Screen Laptop - AMD Ryzen 7 - 16GB Memory - 1TB SSD',599.99,'HP','Computer',0,NULL,'/computers/computerimages/envylaptop.jpg',5),(87,'Samsung Galaxy Book4','Samsung Galaxy Book4 - 15.6\" FHD Laptop - Intel Core i7 - 16GB Memory - 512GB SSD',549.99,'Samsung','Computer',0,NULL,'/computers/computerimages/galaxybook.jpg',5),(88,'Asus 14 Laptop','Asus 14\" Laptop - Intel Celeron N4500 with 4GB Memory - 64GB eMMC',119.99,'Asus','Computer',0,NULL,'/computers/computerimages/asuslaptop.jpg',5),(89,'HP Envy Desktop','HP Envy Desktop - Intel Core i7 - 32GB Memory - NVIDIA GeForce RTX4060 - 1TB SSD',1439.99,'HP','Computer',0,NULL,'/computers/computerimages/envydesktop.jpg',5),(90,'Dell Inspiron 27 Touch All In One Desktop','Dell Inspiron 27\" Touch All In One Desktop - Intel Core i7 - 16GB Memory - 1TB SSD',1399.99,'Dell','Computer',0,NULL,'/computers/computerimages/inspironaio.jpg',5),(91,'HP EliteDesk 800 G4 Desktop','HP EliteDesk 800 G4 Desktop - Intel Core i5 - 16GB Memory - 500GB SSD',369.99,'HP','Computer',0,NULL,'/computers/computerimages/hpelitedesk.jpg',5),(92,'HP Desktop','HP Desktop - Intel Core i3 - 8GB Memory - 256GB SSD',379.99,'HP','Computer',0,NULL,'/computers/computerimages/hpcorei3.jpg',5),(93,'CyberPowerPC Gaming Desktop','CyberPowerPC - Gaming Desktop - AMD Ryzen 5 5500 - 16GB Memory - AMD Radeon RX 6500 XT 4GB - 1TB SSD',649.99,'CyberPower','Computer',0,NULL,'/computers/computerimages/cyberpower.jpg',5),(94,'iBUYPOWER Trace 7','iBUYPOWER - Trace 7 - AMD Ryzen 7 5700 - 16GB DDR4 - GeForce RTX 4060 8GB - 1TB NVMe',789.99,'iBUYPOWER','Computer',0,NULL,'/computers/computerimages/ibuypower.jpg',5),(95,'HP OMEN','HP OMEN - AMD Ryzen 7 7700 - 16GB DDR5 Memory - GeForce RTX 4060 Ti - 1TB SSD',1199.99,'HP','Computer',0,NULL,'/computers/computerimages/hpomen.jpg',5),(96,'Alienware Aurora R16 Desktop','Alienware - Aurora R16 Desktop - Intel Core i7 - NVIDIA GeForce RTX 4070 - 32GB Memory - 1TB SSD',1799.99,'Alienware','Computer',0,NULL,'/computers/computerimages/alienware.jpg',5),(97,'Apple 10.2 inch iPad with Wi-Fi 64GB','Apple - 10.2 inch iPad with Wi-Fi 64GB',199.99,'Apple','Tablet',0,NULL,'/computers/tabletimages/apple102.jpg',5),(98,'Apple 12.9 inch iPad Pro M2 Wi-Fi','Apple - 12.9 inch iPad Pro M2 Wi-Fi',1299.00,'Apple','Tablet',0,NULL,'/computers/tabletimages/apple129.jpg',5),(99,'Apple 11 inch iPad Pro M4 chip Wi-Fi 512GB','Apple 11 inch iPad Pro M4 chip Wi-Fi 512GB',1099.00,'Apple','Tablet',0,NULL,'/computers/tabletimages/apple11pro.jpg',5),(100,'Apple 13 inch iPad Air M2 chip Wi-Fi 256GB','Apple - 13 inch iPad Air M2 chip Wi-Fi 256GB',899.00,'Apple','Tablet',0,NULL,'/computers/tabletimages/ipadair.jpg',5),(101,'Samsung Galaxy Tab A9 11 inch 64GB','Samsung Galaxy Tab A9 11 inch 64GB',179.99,'Samsung','Tablet',0,NULL,'/computers/tabletimages/taba9.jpg',5),(102,'Samsung Galaxy Tab 12.4 128GB Wi-Fi','Samsung Galaxy Tab 12.4\" 128GB Wi-Fi',489.99,'Samsung','Tablet',0,NULL,'/computers/tabletimages/tab124.jpg',5),(103,'Samsung Galaxy Tab S9 Ultra 14.6 inch 256GB Wi-Fi','Samsung Galaxy Tab S9 Ultra - 14.6\" 256GB - Wi-Fi with S-Pen',949.99,'Samsung','Tablet',0,NULL,'/computers/tabletimages/tabs9ultra.jpg',5),(104,'Amazon Fire HD 10-10.1 inch Tablet 32GB','Amazon Fire HD 10-10.1\" Tablet 32GB',89.99,'Amazon','Tablet',0,NULL,'/computers/tabletimages/firehd10.jpg',5),(105,'Amazon Fire HD 8-8 inch Tablet with Wi-Fi 32GB','Amazon - Fire HD 8-8\" Tablet with Wi-Fi 32GB',59.99,'Amazon','Tablet',0,NULL,'/computers/tabletimages/firehd8.jpg',5),(106,'Amazon Fire Max 11 Tablet 11 inch Display','Amazon - Fire Max 11tablet - 11\" display - Octa-Core Processor - 4GB RAM',169.99,'Amazon','Tablet',0,NULL,'/computers/tabletimages/firemax.jpg',5),(107,'Amazon Echo Hub Smart Home with Alexa','Amazon Echo Hub Smart Home with Alexa',144.99,'Amazon','Smart Home',0,NULL,'/smartwifi/shpics/amazonechohub.jpg',5),(108,'Amazon Echo Dot','Amazon Echo Dot',29.99,'Amazon','Smart Home',0,NULL,'/smartwifi/shpics/amazonechodot.jpg',5),(109,'Amazon Echo Show 15 Smart Display with Alexa','Amazon Echo Show 15 Smart Display with Alexa',279.99,'Amazon','Smart Home',0,NULL,'/smartwifi/shpics/echoshow15.jpg',5),(110,'Nest Hub Max Smart Display','Nest Hub Max Smart Display',229.99,'Google','Smart Home',0,NULL,'/smartwifi/shpics/nesthubmax.jpg',5),(111,'Apple Homepod Smart Speaker with Siri','Apple Homepod Smart Speaker with Siri',299.99,'Apple','Smart Home',0,NULL,'/smartwifi/shpics/applehomepod.jpg',5),(112,'Google Nest Audio Smart Speaker','Google Nest Audio Smart Speaker',99.99,'Google','Smart Home',0,NULL,'/smartwifi/shpics/googlenest.jpg',5),(113,'Eufy Security E340 Video Doorbell','Eufy Security E340 Video Doorbell',139.99,'Eufy','Smart Home',0,NULL,'/smartwifi/shpics/eufysecurity.jpg',5),(114,'Ring 2 Pack Stick Up Indoor/Oudoor Camera','Ring 2 Pack Stick Up Indoor/Oudoor Camera',139.98,'Ring','Smart Home',0,NULL,'/smartwifi/shpics/ring2pack.jpg',5),(115,'TP Link Tapo Wired Floodlight Wi-Fi Security Camera','TP Link Tapo Wired Floodlight Wi-Fi Security Camera',129.99,'TP-Link','Smart Home',0,NULL,'/smartwifi/shpics/tplinktapo.jpg',5),(116,'Arlo Outdoor Camera','Arlo Outdoor Camera',49.99,'Arlo','Smart Home',0,NULL,'/smartwifi/shpics/arlooutdoor.jpg',5),(117,'Emerson Sensi Touch 2 Smart Thermostat','Emerson Sensi Touch 2 Smart Thermostat',180.99,'Emerson','Smart Home',0,NULL,'/smartwifi/shpics/emersonsensi.jpg',5),(118,'Ecobee Smart Thermostat','Ecobee Smart Thermostat',219.99,'Ecobee','Smart Home',0,NULL,'/smartwifi/shpics/ecobeesmart.jpg',5),(119,'Google Nest Learning Thermostat','Google Nest Learning Thermostat',279.99,'Google','Smart Home',0,NULL,'/smartwifi/shpics/googlenestthermostat.jpg',5),(120,'Honeywell Smart Thermostat','Honeywell Smart Thermostat',179.99,'Honeywell','Smart Home',0,NULL,'/smartwifi/shpics/honeywellsmart.jpg',5),(121,'Phillips Hue A19 60W Smart LED Starter Kit','Phillips Hue A19 60W Smart LED Starter Kit',109.99,'Philips','Smart Home',0,NULL,'/smartwifi/shpics/phillipsa19.jpg',5),(122,'Philips Hue Bluetooth Lightstrip','Philips Hue Bluetooth Lightstrip',69.99,'Philips','Smart Home',0,NULL,'/smartwifi/shpics/phillipslightstrip.jpg',5),(123,'TP-Link Tapo A19 Smart Wi-Fi LED Bulb (5-Pack)','TP-Link Tapo A19 Smart Wi-Fi LED Bulb (5-Pack)',59.99,'TP-Link','Smart Home',0,NULL,'/smartwifi/shpics/tplinktapoa19.jpg',5),(124,'NETGEAR Orbi 850 Series AX 6000 Wi-Fi 6 System (3 Pack)','NETGEAR Orbi 850 Series AX 6000 Wi-Fi 6 System (3 Pack)',699.99,'NETGEAR','Wi-Fi Router',0,NULL,'/smartwifi/wifi/netgearorbi.jpg',5),(125,'TP-Link Archer AX20 AX1800 Dual Band Wi-Fi 6 Router','TP-Link Archer AX20 AX1800 Dual Band Wi-Fi 6 Router',79.99,'TP-Link','Wi-Fi Router',0,NULL,'/smartwifi/wifi/tplinkarcher.jpg',5),(126,'Asus AX3000 Dual Band Wi-Fi 6 Wireless Router','Asus AX3000 Dual Band Wi-Fi 6 Wireless Router',129.99,'Asus','Wi-Fi Router',0,NULL,'/smartwifi/wifi/asusax300.jpg',5),(127,'TP-Link Archer AXE7800 Tri-Band Wi-Fi 6E Router','TP-Link Archer AXE7800 Tri-Band Wi-Fi 6E Router',199.99,'TP-Link','Wi-Fi Router',0,NULL,'/smartwifi/wifi/tplinkarcher7800.jpg',5),(128,'eero 6 AX1800 Dual-Band Mesh Wi-Fi 6 Router - White','eero 6 AX1800 Dual-Band Mesh Wi-Fi 6 Router - White',69.99,'eero','Wi-Fi Router',0,NULL,'/smartwifi/wifi/eero6.jpg',5),(129,'ASUS - ROG Rapture GT-AX11000 Pro Tri-band WiFi 6 Gaming Router','ASUS - ROG Rapture GT-AX11000 Pro Tri-band WiFi 6 Gaming Router, 2.5G Port - Black',327.99,'ASUS','Wi-Fi Router',0,NULL,'/smartwifi/wifi/asusrog.jpg',5),(130,'NETGEAR - Nighthawk AXE7800 Tri-Band Wi-Fi Router - Black','NETGEAR - Nighthawk AXE7800 Tri-Band Wi-Fi Router - Black',299.99,'NETGEAR','Wi-Fi Router',0,NULL,'/smartwifi/wifi/netgearnighthawk.jpg',5),(131,'ASUS - RT-AX82U AX5400 Dual-Band WiFi 6 Router - Black','ASUS - RT-AX82U AX5400 Dual-Band WiFi 6 Router - Black',199.99,'ASUS','Wi-Fi Router',0,NULL,'/smartwifi/wifi/asurt.jpg',5),(132,'ASUS AX5400 Dual Band WiFi 6 Router','ASUS AX5400 Dual Band WiFi 6 Router',199.99,'ASUS','Wi-Fi Router',0,NULL,'/smartwifi/wifi/asusax5400.jpg',5),(133,'Linksys Max Stream AX1800 Dual Band Mesh Wi-Fi 6 Router','Linksys Max Stream AX1800 Dual Band Mesh Wi-Fi 6 Router',139.99,'Linksys','Wi-Fi Router',0,NULL,'/smartwifi/wifi/linksysmaxstream.jpg',5),(134,'Netgear Wi-Fi 7 Router Nighthawk BE9300 Tri-Band Router','Netgear Wi-Fi 7 Router Nighthawk BE9300 Tri-Band Router',329.99,'Netgear','Wi-Fi Router',0,NULL,'/smartwifi/wifi/netgearwifi7.jpg',5),(135,'Bose Smart Ultra Soundbar with Dolby Atmos','Bose Smart Ultra Soundbar with Dolby Atmos',749.99,'Bose','Soundbar',0,NULL,'/tvht/sbarpics/bosesmartultra.jpg',5),(136,'Samsung 3.1 Channel Soundbar with Wireless Subwoofer','Samsung 3.1 Channel Soundbar with Wireless Subwoofer',249.99,'Samsung','Soundbar',0,NULL,'/tvht/sbarpics/samsung31.jpg',5),(137,'JBL Bar 1000 7.1 4-channel Soundbar with Dolby Atmos','JBL Bar 1000 7.1 4-channel Soundbar with Dolby Atmos',999.99,'JBL','Soundbar',0,NULL,'/tvht/sbarpics/jbl71.jpg',5),(138,'LG 5.1 Channel Soundbar with Subwoofer','LG 5.1 Channel Soundbar with Subwoofer',249.99,'LG','Soundbar',0,NULL,'/tvht/sbarpics/lg51.jpg',5),(139,'Sony Bravia Theater Bar with 11 speakers','Sony Bravia Theater Bar with 11 speakers',699.99,'Sony','Soundbar',0,NULL,'/tvht/sbarpics/sonybravia.jpg',5),(140,'Hisense 3.1.2 Dolby Atmos Soundbar','Hisense 3.1.2 Dolby Atmos Soundbar',229.99,'Hisense','Soundbar',0,NULL,'/tvht/sbarpics/hisense.jpg',5),(141,'JBL BAR 500 5.1ch Soundbar with Multibeam and Dolby Atmos - Black','JBL BAR 500 5.1ch Soundbar with Multibeam and Dolby Atmos - Black',399.99,'JBL','Soundbar',0,NULL,'/tvht/sbarpics/jblbar500.jpg',5),(142,'Sonos Arc Soundbar with Dolby Atmos, Google Assistant and Amazon Alexa - Black','Sonos Arc Soundbar with Dolby Atmos, Google Assistant and Amazon Alexa - Black',899.99,'Sonos','Soundbar',0,NULL,'/tvht/sbarpics/sonorarc.jpg',5),(143,'Sonos Arc 5.1 Soundbar','Sonos Arc 5.1 Soundbar',219.99,'Sonos','Soundbar',0,NULL,'/tvht/sbarpics/sonorarc.jpg',5),(144,'VIZIO 2.0 Soundbar w/ Dolby Atmos, DTS:X - Black','VIZIO 2.0 Soundbar w/ Dolby Atmos, DTS:X - Black',89.99,'VIZIO','Soundbar',0,NULL,'/tvht/sbarpics/vizio20.jpg',5),(145,'VIZIO 2.1 Soundbar, Wireless Subwoofer w/ Dolby Atmos, DTS:X - Black','VIZIO 2.1 Soundbar, Wireless Subwoofer w/ Dolby Atmos, DTS:X - Black',149.99,'VIZIO','Soundbar',0,NULL,'/tvht/sbarpics/vizio21.jpg',5),(146,'Chromecast with Google TV (4K)','Chromecast with Google TV (4K)',49.99,'Google','Streaming Device',0,NULL,'/tvht/sdpics/chromecast4k.jpg',5),(147,'Amazon Fire TV Stick 4K','Amazon Fire TV Stick 4K',39.99,'Amazon','Streaming Device',0,NULL,'/tvht/sdpics/amazonfiretvstick.jpg',5),(148,'Apple 4K 64GB','Apple 4K 64GB',129.99,'Apple','Streaming Device',0,NULL,'/tvht/sdpics/apple4k64.jpg',5),(149,'Roku Streaming Stick 4K','Roku Streaming Stick 4K',34.99,'Roku','Streaming Device',0,NULL,'/tvht/sdpics/rokustick4k.jpg',5),(150,'Roku Ultra - 4K Dolby Vision and Voice Remote','Roku Ultra - 4K Dolby Vision and Voice Remote',89.99,'Roku','Streaming Device',0,NULL,'/tvht/sdpics/rokuultra.jpg',5),(151,'Roku Express 4K+','Roku Express 4K+ | Streaming Player HD/4K/HDR with Roku Voice Remote with TV Controls',39.99,'Roku','Streaming Device',0,NULL,'/tvht/sdpics/rokuexpress.jpg',5),(152,'Tablo - 4th Gen, 4-Tuner, 128GB Over-The-Air DVR & Streaming Player','Tablo - 4th Gen, 4-Tuner, 128GB Over-The-Air DVR & Streaming Player - White',139.99,'Tablo','Streaming Device',0,NULL,'/tvht/sdpics/tablo.jpg',5),(153,'Apple - Siri Remote (3rd Generation)','Apple - Siri Remote (3rd Generation) (Latest Model) - Silver',59.99,'Apple','Streaming Device',0,NULL,'/tvht/sdpics/applesiriremote.jpg',5),(154,'Amazon Fire TV Cube with 4K Ultra HD','Amazon Fire TV Cube with 4K Ultra HD',109.99,'Amazon','Streaming Device',0,NULL,'/tvht/sdpics/amazoncube.jpg',5),(155,'Insignia 55 inch QLED 8K TV','Insignia 55 inch QLED 8K TV',629.99,'Insignia','Television',0,NULL,'/tvht/tvpics/insignia55.jpg',5),(156,'Samsung 75 inch QLED 8K TV','Samsung 75 inch QLED 8K TV',1999.99,'Samsung','Television',0,NULL,'/tvht/tvpics/samsung8k.jpg',5),(157,'Insignia 32 inch LED HD Smart TV','Insignia 32 inch LED HD Smart TV',74.99,'Insignia','Television',0,NULL,'/tvht/tvpics/insignia32.jpg',5),(158,'Samsung 65 inch 4K Smart TV','Samsung 65 inch 4K Smart TV',1699.99,'Samsung','Television',0,NULL,'/tvht/tvpics/samsung65inch.jpg',5),(159,'LG 48 inch OLED 4K Smart TV','LG 48 inch OLED 4K Smart TV',749.99,'LG','Television',0,NULL,'/tvht/tvpics/lg48oled.jpg',5),(160,'Samsung 98 Class DU9000 Series Crystal UHD Smart Tizen TV (2024)','Samsung - 98\" Class DU9000 Series Crystal UHD Smart Tizen TV (2024)',3499.99,'Samsung','Television',0,NULL,'/tvht/tvpics/samsung98.jpg',5),(161,'LG 75 Class C3 Series QNED 4K UHD Smart webOS TV (2024)','LG- 75\" Class C3 Series QNED 4K UHD Smart webOS TV (2024)',1499.99,'LG','Television',0,NULL,'/tvht/tvpics/lg75qned.jpg',5),(162,'Toshiba 75 Class C350 Series LED 4K UHD Smart Fire TV','Toshiba - 75\" Class C350 Series LED 4K UHD Smart Fire TV',499.99,'Toshiba','Television',0,NULL,'/tvht/tvpics/toshiba75.jpg',5),(163,'Samsung 98 Class Q80C QLED 4K UHD Smart Tizen TV (2023)','Samsung - 98\" Class Q80C QLED 4K UHD Smart Tizen TV (2023)',4999.99,'Samsung','Television',0,NULL,'/tvht/tvpics/samsung984k.jpg',5),(164,'Samsung 65 Class S85D Series OLED 4K Smart Tizen TV (2024)','Samsung - 65\" Class S85D Series OLED 4K Smart Tizen TV (2024)',1499.99,'Samsung','Television',0,NULL,'/tvht/tvpics/samsung65oled.jpg',5),(165,'Samsung 55 Class DU7200 Series Crystal UHD 4K Smart Tizen TV (2024)','Samsung - 55\" Class DU7200 Series Crystal UHD 4K Smart Tizen TV (2024)',379.99,'Samsung','Television',0,NULL,'/tvht/tvpics/samsung55.jpg',5),(166,'LG 55 Class C4 Series OLED evo 4K UHD Smart webOS TV (2024)','LG - 55\" Class C4 Series OLED evo 4K UHD Smart webOS TV (2024)',1399.99,'LG','Television',0,NULL,'/tvht/tvpics/lg55oled.jpg',5),(167,'Hisense 55 Class A6 Series LED 4K UHD Smart Google TV (2024)','Hisense - 55\" Class A6 Series LED 4K UHD Smart Google TV (2024)',249.99,'Hisense','Television',0,NULL,'/tvht/tvpics/hisense55.jpg',5),(168,'TCL 115 Class QM8-Series 4K UHD HDR QD-Mini LED Smart Google TV (2024)','TCL- 115\" Class QM8-Series 4K UHD HDR QD-Mini LED Smart Google TV (2024)',19999.99,'TCL','Television',0,NULL,'/tvht/tvpics/tcl1154k.jpg',5),(169,'Sony 43 Class BRAVIA 3 LED 4K UHD Smart Google TV (2024)','Sony - 43\" Class BRAVIA 3 LED 4K UHD Smart Google TV (2024)',199.99,'Sony','Television',0,NULL,'/tvht/tvpics/sony43bravia.jpg',5),(170,'Sony 75 Class BRAVIA 3 LED 4K UHD Smart Google TV (2024)','Sony - 75\" Class BRAVIA 3 LED 4K UHD Smart Google TV (2024)',499.99,'Sony','Television',0,NULL,'/tvht/tvpics/sony75bravia.jpg',5),(171,'Sony 55 Class BRAVIA 3 LED 4K UHD Smart Google TV (2024)','Sony - 55\" Class BRAVIA 3 LED 4K UHD Smart Google TV (2024)',699.99,'Sony','Television',0,NULL,'/tvht/tvpics/sony55bravia.jpg',5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `Product_ID` int NOT NULL,
  `Category_ID` int NOT NULL,
  PRIMARY KEY (`Product_ID`,`Category_ID`),
  KEY `Category_ID` (`Category_ID`),
  CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_component`
--

DROP TABLE IF EXISTS `product_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_component` (
  `Package_Product_ID` int NOT NULL,
  `Component_Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Package_Product_ID`,`Component_Product_ID`),
  KEY `Component_Product_ID` (`Component_Product_ID`),
  CONSTRAINT `product_component_ibfk_1` FOREIGN KEY (`Package_Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_component_ibfk_2` FOREIGN KEY (`Component_Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_component`
--

LOCK TABLES `product_component` WRITE;
/*!40000 ALTER TABLE `product_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reorder`
--

DROP TABLE IF EXISTS `reorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reorder` (
  `Reorder_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int NOT NULL,
  `Supplier_ID` int NOT NULL,
  `Order_Date` datetime NOT NULL,
  `Quantity` int NOT NULL,
  `Status` enum('Pending','Filled') NOT NULL DEFAULT 'Pending',
  `Expected_Arrival_Date` date DEFAULT NULL,
  `Actual_Arrival_Date` date DEFAULT NULL,
  PRIMARY KEY (`Reorder_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `reorder_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reorder_ibfk_2` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reorder`
--

LOCK TABLES `reorder` WRITE;
/*!40000 ALTER TABLE `reorder` DISABLE KEYS */;
INSERT INTO `reorder` VALUES (1,1,1,'2024-10-22 10:23:03',10,'Pending','2024-10-29',NULL);
/*!40000 ALTER TABLE `reorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `Sale_ID` int NOT NULL AUTO_INCREMENT,
  `Sale_Date` datetime NOT NULL,
  `Employee_ID` int NOT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Payment_ID` int NOT NULL,
  PRIMARY KEY (`Sale_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Payment_ID` (`Payment_ID`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_detail`
--

DROP TABLE IF EXISTS `sale_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_detail` (
  `Sale_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Sale_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `sale_detail_ibfk_1` FOREIGN KEY (`Sale_ID`) REFERENCES `sale` (`Sale_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sale_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_detail`
--

LOCK TABLES `sale_detail` WRITE;
/*!40000 ALTER TABLE `sale_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `Shipment_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int NOT NULL,
  `Shipper_ID` int NOT NULL,
  `Tracking_Number` varchar(50) DEFAULT NULL,
  `Shipment_Date` datetime NOT NULL,
  `Delivery_Date` datetime DEFAULT NULL,
  `Shipment_Status` enum('On-Time','Late') DEFAULT 'On-Time',
  PRIMARY KEY (`Shipment_ID`),
  KEY `Shipper_ID` (`Shipper_ID`),
  KEY `shipment_ibfk_1_idx` (`Order_ID`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`Shipper_ID`) REFERENCES `shipper` (`Shipper_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,15,1,'KSTBEMHRGUJ','2024-10-19 16:10:15','2024-10-25 16:10:15','On-Time'),(2,16,1,'P8XNP0A5UZ','2024-10-20 14:06:10','2024-10-23 14:06:10','Late'),(3,17,1,'U4WTPU43B8','2024-10-20 14:34:21','2024-10-23 14:34:21','On-Time'),(4,18,1,'3LGF1CYKZYP','2024-10-20 14:43:25','2024-10-23 14:43:25','On-Time'),(5,19,1,'BTKS5X0UBE','2024-10-20 15:03:48','2024-10-25 15:03:48','On-Time'),(6,20,1,'Z0N2ROF4AL8','2024-10-20 15:11:20','2024-10-25 15:11:20','On-Time'),(7,21,1,'EO05Z2XO9LP','2024-10-20 15:34:13','2024-10-25 15:34:13','On-Time'),(8,22,1,'MMZAM8BAG0N','2024-10-20 16:00:47','2024-10-24 16:00:47','Late'),(9,23,1,'OWE8YCGRE8','2024-10-20 16:01:26','2024-10-23 16:01:26','Late'),(10,24,1,'U2IM89XAVDG','2024-10-20 16:18:57','2024-10-24 16:18:57','On-Time'),(11,25,1,'XYIF09JJAHC','2024-10-20 16:21:36','2024-10-23 16:21:36','On-Time'),(12,26,1,'6V23Y325XI','2024-10-20 16:33:03','2024-10-25 16:33:03','On-Time'),(13,27,1,'XEBZPHAR8T','2024-10-20 16:43:19','2024-10-23 16:43:19','On-Time'),(14,28,1,'MF97J3KI3GG','2024-10-20 16:51:20','2024-10-25 16:51:20','On-Time'),(15,29,1,'8S99TZEE8SG','2024-10-23 10:03:52','2024-10-25 10:03:52','On-Time'),(16,30,1,'SV136KSOGR','2024-10-23 10:23:03','2024-10-25 10:23:03','Late'),(17,31,1,'E5HVOS53LQF','2024-10-23 11:43:17','2024-10-28 11:43:17','On-Time'),(18,32,1,'3UFL2DXHXC2','2024-10-23 11:50:48','2024-10-29 11:50:48','On-Time'),(19,33,1,'HW2UW5J01G','2024-10-23 11:55:45','2024-10-28 11:55:45','On-Time'),(20,34,1,'TFU6T6YL3CM','2024-10-23 12:07:24','2024-10-29 12:07:24','Late'),(21,35,1,'6RZ64MMRYRF','2024-10-23 12:16:01','2024-10-28 12:16:01','On-Time'),(22,36,1,'KIAVYTB8WD','2024-10-23 12:28:54','2024-10-29 12:28:54','On-Time'),(23,37,1,'R6RI9ENICLQ','2024-10-23 12:33:32','2024-10-28 12:33:32','On-Time'),(24,38,1,'V00J2E2SODC','2024-10-27 17:43:27','2024-10-30 17:43:27','On-Time'),(25,39,1,'A1WMOWVAZB8','2024-10-27 17:43:30','2024-10-30 17:43:30','On-Time'),(26,40,1,'TJ9P8FGRGCQ','2024-10-27 17:45:24','2024-11-01 17:45:24','On-Time'),(27,41,1,'MI4E7M7B69','2024-10-27 17:50:36','2024-10-31 17:50:36','On-Time'),(28,42,1,'5ED3C6SBK7E','2024-10-27 17:57:59','2024-10-30 17:57:59','On-Time'),(29,43,1,'SQKF3USTQRO','2024-10-27 18:05:59','2024-10-31 18:05:59','On-Time'),(30,44,1,'ACRDSTYIO6U','2024-10-27 18:26:55','2024-10-30 18:26:55','On-Time');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipper` (
  `Shipper_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Contact_Info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Shipper_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'FedEx','1800-463-3339, contact@fedex.com'),(2,'UPS','1800-742-5877, contact@ups.com'),(3,'DHL','1800-225-5345, contact@dhl.com'),(4,'USPS','1800-275-8777, contact@usps.com'),(5,'OnTrac','1800-334-5000, contact@ontrac.com');
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Supplier_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Products Plus','2318 Oak St, Houston, TX 65128','516-452-7512','contact@productsplus.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `Transfer_ID` int NOT NULL AUTO_INCREMENT,
  `From_Location_ID` int NOT NULL,
  `To_Location_ID` int NOT NULL,
  `Transfer_Date` datetime NOT NULL,
  PRIMARY KEY (`Transfer_ID`),
  KEY `From_Location_ID` (`From_Location_ID`),
  KEY `To_Location_ID` (`To_Location_ID`),
  CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`From_Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`To_Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_detail`
--

DROP TABLE IF EXISTS `transfer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_detail` (
  `Transfer_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Transfer_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `transfer_detail_ibfk_1` FOREIGN KEY (`Transfer_ID`) REFERENCES `transfer` (`Transfer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfer_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_detail`
--

LOCK TABLES `transfer_detail` WRITE;
/*!40000 ALTER TABLE `transfer_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26 18:35:01
