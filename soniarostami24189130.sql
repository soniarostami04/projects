CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `book_mast`
--

DROP TABLE IF EXISTS `book_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_mast` (
  `book_id` text,
  `book_name` text,
  `isbn_no` text,
  `cate_id` text,
  `aut_id` text,
  `pub_id` text,
  `dt_of_pub` text,
  `pub_lang` text,
  `no_page` int DEFAULT NULL,
  `book_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_mast`
--

LOCK TABLES `book_mast` WRITE;
/*!40000 ALTER TABLE `book_mast` DISABLE KEYS */;
INSERT INTO `book_mast` VALUES ('BK001   ','Introduction to Electrodynamics     ','0000979001  ','CA001   ','AUT001 ','P003   ','5/8/2001','English  ',201,85),('BK002   ','Understanding of Steel Construction ','0000979002  ','CA002   ','AUT002 ','P001   ','7/15/2003','English  ',300,105.5),('BK003   ','Guide to Networking                 ','0000979003  ','CA003   ','AUT003 ','P002   ','9/10/2002','Hindi    ',510,200),('BK004   ','Transfer  of Heat and Mass          ','0000979004  ','CA002   ','AUT004 ','P004   ','2/16/2004','English  ',600,250),('BK005   ','Conceptual Physics                  ','0000979005  ','CA001   ','AUT005 ','P006   ','7/16/2003','NULL     ',345,145),('BK006   ','Fundamentals of Heat                ','0000979006  ','CA001   ','AUT006 ','P005   ','8/10/2003','German   ',247,112),('BK007   ','Advanced 3d Graphics                ','0000979007  ','CA003   ','AUT007 ','P002   ','2/16/2004','Hindi    ',165,56),('BK008   ','Human Anatomy                       ','0000979008  ','CA005   ','AUT008 ','P006   ','5/17/2001','German   ',88,50.5),('BK009   ','Mental Health Nursing               ','0000979009  ','CA005   ','AUT009 ','P007   ','2/10/2004','English  ',350,145),('BK010   ','Fundamentals of Thermodynamics      ','0000979010  ','CA002   ','AUT010 ','P007   ','10/14/2002','English  ',400,225),('BK011   ','The Experimental Analysis of Cat    ','0000979011  ','CA004   ','AUT011 ','P005   ','6/9/2007','French   ',225,95),('BK012   ','The Nature  of World                ','0000979012  ','CA004   ','AUT005 ','P008   ','12/20/2005','English  ',350,88),('BK013   ','Environment a Sustainable Future    ','0000979013  ','CA004   ','AUT012 ','P001   ','10/27/2003','German   ',165,100),('BK014   ','Concepts in Health                  ','0000979014  ','CA005   ','AUT013 ','P004   ','8/25/2001','NULL     ',320,180),('BK015   ','Anatomy & Physiology                ','0000979015  ','CA005   ','AUT014 ','P008   ','10/10/2000','Hindi    ',225,135),('BK016   ','Networks and Telecommunications     ','00009790_16 ','CA003   ','AUT015 ','P003   ','1/1/2002','French   ',95,45);
/*!40000 ALTER TABLE `book_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` text,
  `country_name` text,
  `region_id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('','',''),('AR         ','Argentina    ','2'),('AU         ','Australia    ','3'),('BE         ','Belgium      ','1'),('BR         ','Brazil       ','2'),('CA         ','Canada       ','2'),('CH         ','Switzerland  ','1'),('CN         ','China        ','3'),('DE         ','Germany      ','1'),('DK         ','Denmark      ','1'),('EG         ','Egypt        ','4'),('FR         ','France       ','1'),('HK         ','HongKong     ','3'),('IL         ','Israel       ','4'),('IN         ','India        ','3'),('IT         ','Italy        ','1'),('JP         ','Japan        ','3'),('KW         ','Kuwait       ','4'),('MX         ','Mexico       ','2'),('NG         ','Nigeria      ','4'),('NL         ','Netherlands  ','1'),('SG         ','Singapore    ','3'),('UK         ','United Kingd ','1'),('US         ','United State ','2'),('ZM         ','Zambia       ','4'),('ZW         ','Zimbabwe     ','4');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DEPARTMENT_ID` int DEFAULT NULL,
  `DEPARTMENT_NAME` text,
  `MANAGER_ID` int DEFAULT NULL,
  `LOCATION_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (10,' Administration       ',200,1700),(20,' Marketing            ',201,1800),(30,' Purchasing           ',114,1700),(40,' Human Resources      ',203,2400),(50,' Shipping             ',121,1500),(60,' IT                   ',103,1400),(70,' Public Relations     ',204,2700),(80,' Sales                ',145,2500),(90,' Executive            ',100,1700),(100,' Finance              ',108,1700),(110,' Accounting           ',205,1700);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EMPLOYEE` int DEFAULT NULL,
  `FIRST_NAME` text,
  `LAST_NAME` text,
  `EMAIL` text,
  `PHONE_NUMBER` text,
  `HIRE_DATE` text,
  `JOB_ID` text,
  `SALARY` int DEFAULT NULL,
  `COMMISSION_PCT` text,
  `MANAGER_ID` text,
  `DEPARTMENT_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (100,' Steven      ',' King        ',' SKING    ',' 515.123.4567       ',' 17-Jun-87 ',' AD_PRES    ',24000,'                ','            ',90),(101,' Neena       ',' Kochhar     ',' NKOCHHAR ',' 515.123.4568       ',' 21-Sep-89 ',' AD_VP      ',17000,'                ',' 100        ',90),(102,' Lex         ',' De Haan     ',' LDEHAAN  ',' 515.123.4569       ',' 13-Jan-93 ',' AD_VP      ',17000,'                ',' 100        ',90),(103,' Alexander   ',' Hunold      ',' AHUNOLD  ',' 590.423.4567       ',' 3-Jan-90  ',' IT_PROG    ',9000,'                ',' 102        ',60),(104,' Bruce       ',' Ernst       ',' BERNST   ',' 590.423.4568       ',' 21-May-91 ',' IT_PROG    ',6000,'                ',' 103        ',60),(105,' David       ',' Austin      ',' DAUSTIN  ',' 590.423.4569       ',' 25-Jun-97 ',' IT_PROG    ',4800,'                ',' 103        ',60),(106,' Valli       ',' Pataballa   ',' VPATABAL ',' 590.423.4560       ',' 5-Feb-98  ',' IT_PROG    ',4800,'                ',' 103        ',60),(107,' Diana       ',' Lorentz     ',' DLORENTZ ',' 590.423.5567       ',' 7-Feb-99  ',' IT_PROG    ',4200,'                ',' 103        ',60),(108,' Nancy       ',' Greenberg   ',' NGREENBE ',' 515.124.4569       ',' 17-Aug-94 ',' FI_MGR     ',12000,'                ',' 101        ',100),(109,' Daniel      ',' Faviet      ',' DFAVIET  ',' 515.124.4169       ',' 16-Aug-94 ',' FI_ACCOUNT ',9000,'                ',' 108        ',100),(110,' John        ',' Chen        ',' JCHEN    ',' 515.124.4269       ',' 28-Sep-97 ',' FI_ACCOUNT ',8200,'                ',' 108        ',100),(111,' Ismael      ',' Sciarra     ',' ISCIARRA ',' 515.124.4369       ',' 30-Sep-97 ',' FI_ACCOUNT ',7700,'                ',' 108        ',100),(112,' Jose Manuel ',' Urman       ',' JMURMAN  ',' 515.124.4469       ',' 7-Mar-98  ',' FI_ACCOUNT ',7800,'                ',' 108        ',100),(113,' Luis        ',' Popp        ',' LPOPP    ',' 515.124.4567       ',' 7-Dec-99  ',' FI_ACCOUNT ',6900,'                ',' 108        ',100),(114,' Den         ',' Raphaely    ',' DRAPHEAL ',' 515.127.4561       ',' 7-Dec-94  ',' PU_MAN     ',11000,'                ',' 100        ',30),(115,' Alexander   ',' Khoo        ',' AKHOO    ',' 515.127.4562       ',' 18-May-95 ',' PU_CLERK   ',3100,'                ',' 114        ',30),(116,' Shelli      ',' Baida       ',' SBAIDA   ',' 515.127.4563       ',' 24-Dec-97 ',' PU_CLERK   ',2900,'                ',' 114        ',30),(117,' Sigal       ',' Tobias      ',' STOBIAS  ',' 515.127.4564       ',' 24-Jul-97 ',' PU_CLERK   ',2800,'                ',' 114        ',30),(118,' Guy         ',' Himuro      ',' GHIMURO  ',' 515.127.4565       ',' 15-Nov-98 ',' PU_CLERK   ',2600,'                ',' 114        ',30),(119,' Karen       ',' Colmenares  ',' KCOLMENA ',' 515.127.4566       ',' 10-Aug-99 ',' PU_CLERK   ',2500,'                ',' 114        ',30),(120,' Matthew     ',' Weiss       ',' MWEISS   ',' 650.123.1234       ',' 18-Jul-96 ',' ST_MAN     ',8000,'                ',' 100        ',50),(121,' Adam        ',' Fripp       ',' AFRIPP   ',' 650.123.2234       ',' 10-Apr-97 ',' ST_MAN     ',8200,'                ',' 100        ',50),(122,' Payam       ',' Kaufling    ',' PKAUFLIN ',' 650.123.3234       ',' 1-May-95  ',' ST_MAN     ',7900,'                ',' 100        ',50),(123,' Shanta      ',' Vollman     ',' SVOLLMAN ',' 650.123.4234       ',' 10-Oct-97 ',' ST_MAN     ',6500,'                ',' 100        ',50),(124,' Kevin       ',' Mourgos     ',' KMOURGOS ',' 650.123.5234       ',' 16-Nov-99 ',' ST_MAN     ',5800,'                ',' 100        ',50),(125,' Julia       ',' Nayer       ',' JNAYER   ',' 650.124.1214       ',' 16-Jul-97 ',' ST_CLERK   ',3200,'                ',' 120        ',50),(126,' Irene       ',' Mikkilineni ',' IMIKKILI ',' 650.124.1224       ',' 28-Sep-98 ',' ST_CLERK   ',2700,'                ',' 120        ',50),(127,' James       ',' Landry      ',' JLANDRY  ',' 650.124.1334       ',' 14-Jan-99 ',' ST_CLERK   ',2400,'                ',' 120        ',50),(128,' Steven      ',' Markle      ',' SMARKLE  ',' 650.124.1434       ',' 8-Mar-00  ',' ST_CLERK   ',2200,'                ',' 120        ',50),(129,' Laura       ',' Bissot      ',' LBISSOT  ',' 650.124.5234       ',' 20-Aug-97 ',' ST_CLERK   ',3300,'                ',' 121        ',50),(130,' Mozhe       ',' Atkinson    ',' MATKINSO ',' 650.124.6234       ',' 30-Oct-97 ',' ST_CLERK   ',2800,'                ',' 121        ',50),(131,' James       ',' Marlow      ',' JAMRLOW  ',' 650.124.7234       ',' 16-Feb-97 ',' ST_CLERK   ',2500,'                ',' 121        ',50),(132,' TJ          ',' Olson       ',' TJOLSON  ',' 650.124.8234       ',' 10-Apr-99 ',' ST_CLERK   ',2100,'                ',' 121        ',50),(133,' Jason       ',' Mallin      ',' JMALLIN  ',' 650.127.1934       ',' 14-Jun-96 ',' ST_CLERK   ',3300,'                ',' 122        ',50),(134,' Michael     ',' Rogers      ',' MROGERS  ',' 650.127.1834       ',' 26-Aug-98 ',' ST_CLERK   ',2900,'                ',' 122        ',50),(135,' Ki          ',' Gee         ',' KGEE     ',' 650.127.1734       ',' 12-Dec-99 ',' ST_CLERK   ',2400,'                ',' 122        ',50),(136,' Hazel       ',' Philtanker  ',' HPHILTAN ',' 650.127.1634       ',' 6-Feb-00  ',' ST_CLERK   ',2200,'                ',' 122        ',50),(137,' Renske      ',' Ladwig      ',' RLADWIG  ',' 650.121.1234       ',' 14-Jul-95 ',' ST_CLERK   ',3600,'                ',' 123        ',50),(138,' Stephen     ',' Stiles      ',' SSTILES  ',' 650.121.2034       ',' 26-Oct-97 ',' ST_CLERK   ',3200,'                ',' 123        ',50),(139,' John        ',' Seo         ',' JSEO     ',' 650.121.2019       ',' 12-Feb-98 ',' ST_CLERK   ',2700,'                ',' 123        ',50),(140,' Joshua      ',' Patel       ',' JPATEL   ',' 650.121.1834       ',' 6-Apr-98  ',' ST_CLERK   ',2500,'                ',' 123        ',50),(141,' Trenna      ',' Rajs        ',' TRAJS    ',' 650.121.8009       ',' 17-Oct-95 ',' ST_CLERK   ',3500,'                ',' 124        ',50),(142,' Curtis      ',' Davies      ',' CDAVIES  ',' 650.121.2994       ',' 29-Jan-97 ',' ST_CLERK   ',3100,'                ',' 124        ',50),(143,' Randall     ',' Matos       ',' RMATOS   ',' 650.121.2874       ',' 15-Mar-98 ',' ST_CLERK   ',2600,'                ',' 124        ',50),(144,' Peter       ',' Vargas      ',' PVARGAS  ',' 650.121.2004       ',' 9-Jul-98  ',' ST_CLERK   ',2500,'                ',' 124        ',50),(145,' John        ',' Russell     ',' JRUSSEL  ',' 011.44.1344.429268 ',' 1-Oct-96  ',' SA_MAN     ',14000,' 0.4            ',' 100        ',80),(146,' Karen       ',' Partners    ',' KPARTNER ',' 011.44.1344.467268 ',' 5-Jan-97  ',' SA_MAN     ',13500,' 0.3            ',' 100        ',80),(147,' Alberto     ',' Errazuriz   ',' AERRAZUR ',' 011.44.1344.429278 ',' 10-Mar-97 ',' SA_MAN     ',12000,' 0.3            ',' 100        ',80),(148,' Gerald      ',' Cambrault   ',' GCAMBRAU ',' 011.44.1344.619268 ',' 15-Oct-99 ',' SA_MAN     ',11000,' 0.3            ',' 100        ',80),(149,' Eleni       ',' Zlotkey     ',' EZLOTKEY ',' 011.44.1344.429018 ',' 29-Jan-00 ',' SA_MAN     ',10500,' 0.2            ',' 100        ',80),(150,' Peter       ',' Tucker      ',' PTUCKER  ',' 011.44.1344.129268 ',' 30-Jan-97 ',' SA_REP     ',10000,' 0.3            ',' 145        ',80),(151,' David       ',' Bernstein   ',' DBERNSTE ',' 011.44.1344.345268 ',' 24-Mar-97 ',' SA_REP     ',9500,' 0.25           ',' 145        ',80),(152,' Peter       ',' Hall        ',' PHALL    ',' 011.44.1344.478968 ',' 20-Aug-97 ',' SA_REP     ',9000,' 0.25           ',' 145        ',80),(153,' Christopher ',' Olsen       ',' COLSEN   ',' 011.44.1344.498718 ',' 30-Mar-98 ',' SA_REP     ',8000,' 0.2            ',' 145        ',80),(154,' Nanette     ',' Cambrault   ',' NCAMBRAU ',' 011.44.1344.987668 ',' 9-Dec-98  ',' SA_REP     ',7500,' 0.2            ',' 145        ',80),(155,' Oliver      ',' Tuvault     ',' OTUVAULT ',' 011.44.1344.486508 ',' 23-Nov-99 ',' SA_REP     ',7000,' 0.15           ',' 145        ',80),(156,' Janette     ',' King        ',' JKING    ',' 011.44.1345.429268 ',' 30-Jan-96 ',' SA_REP     ',10000,' 0.35           ',' 146        ',80),(157,' Patrick     ',' Sully       ',' PSULLY   ',' 011.44.1345.929268 ',' 4-Mar-96  ',' SA_REP     ',9500,' 0.35           ',' 146        ',80),(158,' Allan       ',' McEwen      ',' AMCEWEN  ',' 011.44.1345.829268 ',' 1-Aug-96  ',' SA_REP     ',9000,' 0.35           ',' 146        ',80),(159,' Lindsey     ',' Smith       ',' LSMITH   ',' 011.44.1345.729268 ',' 10-Mar-97 ',' SA_REP     ',8000,' 0.3            ',' 146        ',80),(160,' Louise      ',' Doran       ',' LDORAN   ',' 011.44.1345.629268 ',' 15-Dec-97 ',' SA_REP     ',7500,' 0.3            ',' 146        ',80),(161,' Sarath      ',' Sewall      ',' SSEWALL  ',' 011.44.1345.529268 ',' 3-Nov-98  ',' SA_REP     ',7000,' 0.25           ',' 146        ',80),(162,' Clara       ',' Vishney     ',' CVISHNEY ',' 011.44.1346.129268 ',' 11-Nov-97 ',' SA_REP     ',10500,' 0.25           ',' 147        ',80),(163,' Danielle    ',' Greene      ',' DGREENE  ',' 011.44.1346.229268 ',' 19-Mar-99 ',' SA_REP     ',9500,' 0.15           ',' 147        ',80),(164,' Mattea      ',' Marvins     ',' MMARVINS ',' 011.44.1346.329268 ',' 24-Jan-00 ',' SA_REP     ',7200,' 0.1            ',' 147        ',80),(165,' David       ',' Lee         ',' DLEE     ',' 011.44.1346.529268 ',' 23-Feb-00 ',' SA_REP     ',6800,' 0.1            ',' 147        ',80),(166,' Sundar      ',' Ande        ',' SANDE    ',' 011.44.1346.629268 ',' 24-Mar-00 ',' SA_REP     ',6400,' 0.1            ',' 147        ',80),(167,' Amit        ',' Banda       ',' ABANDA   ',' 011.44.1346.729268 ',' 21-Apr-00 ',' SA_REP     ',6200,' 0.1            ',' 147        ',80),(168,' Lisa        ',' Ozer        ',' LOZER    ',' 011.44.1343.929268 ',' 11-Mar-97 ',' SA_REP     ',11500,' 0.25           ',' 148        ',80),(169,' Harrison    ',' Bloom       ',' HBLOOM   ',' 011.44.1343.829268 ',' 23-Mar-98 ',' SA_REP     ',10000,' 0.2            ',' 148        ',80),(170,' Tayler      ',' Fox         ',' TFOX     ',' 011.44.1343.729268 ',' 24-Jan-98 ',' SA_REP     ',9600,' 0.2            ',' 148        ',80),(171,' William     ',' Smith       ',' WSMITH   ',' 011.44.1343.629268 ',' 23-Feb-99 ',' SA_REP     ',7400,' 0.15           ',' 148        ',80),(172,' Elizabeth   ',' Bates       ',' EBATES   ',' 011.44.1343.529268 ',' 24-Mar-99 ',' SA_REP     ',7300,' 0.15           ',' 148        ',80),(173,' Sundita     ',' Kumar       ',' SKUMAR   ',' 011.44.1343.329268 ',' 21-Apr-00 ',' SA_REP     ',6100,' 0.1            ',' 148        ',80),(174,' Ellen       ',' Abel        ',' EABEL    ',' 011.44.1644.429267 ',' 11-May-96 ',' SA_REP     ',11000,' 0.3            ',' 149        ',80),(175,' Alyssa      ',' Hutton      ',' AHUTTON  ',' 011.44.1644.429266 ',' 19-Mar-97 ',' SA_REP     ',8800,' 0.25           ',' 149        ',80),(176,' Jonathon    ',' Taylor      ',' JTAYLOR  ',' 011.44.1644.429265 ',' 24-Mar-98 ',' SA_REP     ',8600,' 0.2            ',' 149        ',80),(177,' Jack        ',' Livingston  ',' JLIVINGS ',' 011.44.1644.429264 ',' 23-Apr-98 ',' SA_REP     ',8400,' 0.2            ',' 149        ',80),(178,' Kimberely   ',' Grant       ',' KGRANT   ',' 011.44.1644.429263 ',' 24-May-99 ',' SA_REP     ',7000,' 0.15           ',' 149        ',0),(179,' Charles     ',' Johnson     ',' CJOHNSON ',' 011.44.1644.429262 ',' 4-Jan-00  ',' SA_REP     ',6200,' 0.1            ',' 149        ',80),(180,' Winston     ',' Taylor      ',' WTAYLOR  ',' 650.507.9876       ',' 24-Jan-98 ',' SH_CLERK   ',3200,'                ',' 120        ',50),(181,' Jean        ',' Fleaur      ',' JFLEAUR  ',' 650.507.9877       ',' 23-Feb-98 ',' SH_CLERK   ',3100,'                ',' 120        ',50),(182,' Martha      ',' Sullivan    ',' MSULLIVA ',' 650.507.9878       ',' 21-Jun-99 ',' SH_CLERK   ',2500,'                ',' 120        ',50),(183,' Girard      ',' Geoni       ',' GGEONI   ',' 650.507.9879       ',' 3-Feb-00  ',' SH_CLERK   ',2800,'                ',' 120        ',50),(184,' Nandita     ',' Sarchand    ',' NSARCHAN ',' 650.509.1876       ',' 27-Jan-96 ',' SH_CLERK   ',4200,'                ',' 121        ',50),(185,' Alexis      ',' Bull        ',' ABULL    ',' 650.509.2876       ',' 20-Feb-97 ',' SH_CLERK   ',4100,'                ',' 121        ',50),(186,' Julia       ',' Dellinger   ',' JDELLING ',' 650.509.3876       ',' 24-Jun-98 ',' SH_CLERK   ',3400,'                ',' 121        ',50),(187,' Anthony     ',' Cabrio      ',' ACABRIO  ',' 650.509.4876       ',' 7-Feb-99  ',' SH_CLERK   ',3000,'                ',' 121        ',50),(188,' Kelly       ',' Chung       ',' KCHUNG   ',' 650.505.1876       ',' 14-Jun-97 ',' SH_CLERK   ',3800,'                ',' 122        ',50),(189,' Jennifer    ',' Dilly       ',' JDILLY   ',' 650.505.2876       ',' 13-Aug-97 ',' SH_CLERK   ',3600,'                ',' 122        ',50),(190,' Timothy     ',' Gates       ',' TGATES   ',' 650.505.3876       ',' 11-Jul-98 ',' SH_CLERK   ',2900,'                ',' 122        ',50),(191,' Randall     ',' Perkins     ',' RPERKINS ',' 650.505.4876       ',' 19-Dec-99 ',' SH_CLERK   ',2500,'                ',' 122        ',50),(192,' Sarah       ',' Bell        ',' SBELL    ',' 650.501.1876       ',' 4-Feb-96  ',' SH_CLERK   ',4000,'                ',' 123        ',50),(193,' Britney     ',' Everett     ',' BEVERETT ',' 650.501.2876       ',' 3-Mar-97  ',' SH_CLERK   ',3900,'                ',' 123        ',50),(194,' Samuel      ',' McCain      ',' SMCCAIN  ',' 650.501.3876       ',' 1-Jul-98  ',' SH_CLERK   ',3200,'                ',' 123        ',50),(195,' Vance       ',' Jones       ',' VJONES   ',' 650.501.4876       ',' 17-Mar-99 ',' SH_CLERK   ',2800,'                ',' 123        ',50),(196,' Alana       ',' Walsh       ',' AWALSH   ',' 650.507.9811       ',' 24-Apr-98 ',' SH_CLERK   ',3100,'                ',' 124        ',50),(197,' Kevin       ',' Feeney      ',' KFEENEY  ',' 650.507.9822       ',' 23-May-98 ',' SH_CLERK   ',3000,'                ',' 124        ',50),(198,' Donald      ',' OConnell    ',' DOCONNEL ',' 650.507.9833       ',' 21-Jun-99 ',' SH_CLERK   ',2600,'                ',' 124        ',50),(199,' Douglas     ',' Grant       ',' DGRANT   ',' 650.507.9844       ',' 13-Jan-00 ',' SH_CLERK   ',2600,'                ',' 124        ',50),(200,' Jennifer    ',' Whalen      ',' JWHALEN  ',' 515.123.4444       ',' 17-Sep-87 ',' AD_ASST    ',4400,'                ',' 101        ',10),(201,' Michael     ',' Hartstein   ',' MHARTSTE ',' 515.123.5555       ',' 17-Feb-96 ',' MK_MAN     ',13000,'                ',' 100        ',20),(202,' Pat         ',' Fay         ',' PFAY     ',' 603.123.6666       ',' 17-Aug-97 ',' MK_REP     ',6000,'                ',' 201        ',20),(203,' Susan       ',' Mavris      ',' SMAVRIS  ',' 515.123.7777       ',' 7-Jun-94  ',' HR_REP     ',6500,'                ',' 101        ',40),(204,' Hermann     ',' Baer        ',' HBAER    ',' 515.123.8888       ',' 7-Jun-94  ',' PR_REP     ',10000,'                ',' 101        ',70),(205,' Shelley     ',' Higgins     ',' SHIGGINS ',' 515.123.8080       ',' 7-Jun-94  ',' AC_MGR     ',12000,'                ',' 101        ',110),(206,' William     ',' Gietz       ',' WGIETZ   ',' 515.123.8181       ',' 7-Jun-94  ',' AC_ACCOUNT ',8300,'                ',' 205        ',110),(0,'','','','','','',0,'','',0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_history`
--

DROP TABLE IF EXISTS `job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_history` (
  `EMPLOYEE_ID` int DEFAULT NULL,
  `START_DATE` text,
  `END_DATE` text,
  `JOB_ID` text,
  `DEPARTMENT_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_history`
--

LOCK TABLES `job_history` WRITE;
/*!40000 ALTER TABLE `job_history` DISABLE KEYS */;
INSERT INTO `job_history` VALUES (102,'1/13/1993','7/24/1998','IT_PROG    ',60),(101,'9/21/1989','10/27/1993','AC_ACCOUNT ',110),(101,'10/28/1993','3/15/1997','AC_MGR     ',110),(201,'2/17/1996','12/19/1999','MK_REP     ',20),(114,'3/24/1998','12/31/1999','ST_CLERK   ',50),(122,'1/1/1999','12/31/1999','ST_CLERK   ',50),(200,'9/17/1987','6/17/1993','AD_ASST    ',90),(176,'3/24/1998','12/31/1998','SA_REP     ',80),(176,'1/1/1999','12/31/1999','SA_MAN     ',80),(200,'7/1/1994','12/31/1998','AC_ACCOUNT ',90);
/*!40000 ALTER TABLE `job_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int DEFAULT NULL,
  `street_address` text,
  `postal_code` int DEFAULT NULL,
  `city` text,
  `state_province` text,
  `country_id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1000,'1297 Via Cola di Rie ',989,'Roma                ','','IT         '),(1100,'93091 Calle della Te ',10934,'Venice              ','','IT         '),(1200,'2017 Shinjuku-ku     ',1689,'Tokyo               ','Tokyo Prefectu   ','JP         '),(1300,'9450 Kamiya-cho      ',6823,'Hiroshima           ','','JP         '),(1400,'2014 Jabberwocky Rd  ',26192,'Southlake           ','Texas            ','US         '),(1500,'2011 Interiors Blvd  ',99236,'South San Francisco ','California       ','US         '),(1600,'2007 Zagora St       ',8810,'South Brunswick     ','New Jersey       ','US         '),(1700,'2004 Charade Rd      ',98199,'Seattle             ','Washington       ','US         '),(2000,'40-5-12 Laogianggen  ',190518,'Beijing             ','','CN         '),(2100,'1298 Vileparle (E)   ',490231,'Bombay              ','Maharashtra      ','IN         '),(2200,'12-98 Victoria Stree ',2901,'Sydney              ','New South Wales  ','AU         '),(2300,'198 Clementi North   ',540198,'Singapore           ','','SG         '),(2400,'8204 Arthur St       ',0,'London              ','','UK         '),(2700,'Schwanthalerstr. 703 ',80925,'Munich              ','Bavaria          ','DE         '),(2900,'20 Rue des Corps-Sai ',1730,'Geneva              ','Geneve           ','CH         '),(3000,'Murtenstrasse 921    ',3095,'Bern                ','BE               ','CH         '),(3200,'Mariano Escobedo 999 ',11932,'Mexico City         ','Distrito Federal ','MX         ');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `pub_id` text,
  `pub_name` text,
  `pub_city` text,
  `country` text,
  `country_office` text,
  `no_of_branch` int DEFAULT NULL,
  `estd` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES ('P001   ','Jex Max Publication          ','New York  ','USA       ','New York       ',15,'12/25/1969'),('P002   ','BPP Publication              ','Mumbai    ','India     ','New Delhi      ',10,'10/1/1985'),('P003   ','New Harrold Publication      ','Adelaide  ','Australia ','Sydney         ',6,'9/5/1975'),('P004   ','Ultra Press Inc.             ','London    ','UK        ','London         ',8,'7/10/1948'),('P005   ','Mountain Publication         ','Houstan   ','USA       ','Sun Diego      ',25,'1/1/1975'),('P006   ','Summer Night Publication     ','New York  ','USA       ','Atlanta        ',10,'12/10/1990'),('P007   ','Pieterson Grp. of Publishers ','Cambridge ','UK        ','London         ',6,'7/15/1950'),('P008   ','Novel Publisher Ltd.         ','New Delhi ','India     ','Bangalore      ',10,'1/1/2000');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'books'
--

--
-- Dumping routines for database 'books'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 21:11:30
