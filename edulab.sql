-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.30


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `user`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `user`;
USE `user`;

--
-- Table structure for table `user`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`email`,`password`) VALUES 
 (1,'edulab@gmail.com','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `user`.`contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(45) NOT NULL DEFAULT '',
  `reply` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`contact`
--

/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`id`,`name`,`email`,`message`,`reply`) VALUES 
 (1,'Gurcharan Singh','gurcharanchauhan7@gmail.com','can you send me full detail of java course.','');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


--
-- Table structure for table `user`.`counters`
--

DROP TABLE IF EXISTS `counters`;
CREATE TABLE `counters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `courses` varchar(45) NOT NULL DEFAULT '',
  `members` varchar(45) NOT NULL DEFAULT '',
  `trained` varchar(45) NOT NULL DEFAULT '',
  `clients` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`counters`
--

/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` (`id`,`courses`,`members`,`trained`,`clients`) VALUES 
 (1,'51','900','500','89');
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;


--
-- Table structure for table `user`.`courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL DEFAULT '',
  `content` varchar(2000) NOT NULL DEFAULT '',
  `duration` varchar(45) NOT NULL DEFAULT '',
  `price` varchar(45) NOT NULL DEFAULT '',
  `logo` varchar(1000) NOT NULL DEFAULT '',
  `savePath` varchar(1000) NOT NULL DEFAULT '',
  `teacher` varchar(45) NOT NULL DEFAULT '',
  `jlink` varchar(1000) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '2001-01-01',
  `time` varchar(45) NOT NULL DEFAULT '',
  `drive` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`courses`
--

/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`id`,`title`,`content`,`duration`,`price`,`logo`,`savePath`,`teacher`,`jlink`,`startdate`,`time`,`drive`) VALUES 
 (13,'java','Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.','6','15000','images\\java.png','C:\\Users\\GURCHARAN\\OneDrive\\Desktop\\advjava\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\edulab\\\\images\\java.png','Er.Deepak Gupta','https://meet.google.com/','2001-01-01','9 am- 11 am','1whWccg-ZlCVZ8J6B8NvrQoPcGFsMAKcR'),
 (14,'Php','PHP is a popular general-purpose scripting language that is especially suited to web development.','6','12000','images\\php.jpg','C:\\Users\\GURCHARAN\\OneDrive\\Desktop\\advjava\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\edulab\\\\images\\php.jpg','Er.Jaspreet Singh','https://meet.google.com/','2001-01-01','11 am - 2pm',''),
 (15,'Python','Python is a popular programming language. Python can be used on a server to create web applications.','2','15000','images\\python.png','C:\\Users\\GURCHARAN\\OneDrive\\Desktop\\advjava\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\edulab\\\\images\\python.png','Er. Harpreet Singh','https://meet.google.com/','2001-01-01','4 pm - 6pm','');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;


--
-- Table structure for table `user`.`hiring`
--

DROP TABLE IF EXISTS `hiring`;
CREATE TABLE `hiring` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) NOT NULL DEFAULT '',
  `position` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`hiring`
--

/*!40000 ALTER TABLE `hiring` DISABLE KEYS */;
INSERT INTO `hiring` (`id`,`company`,`email`,`mobile`,`position`) VALUES 
 (1,'abc','abc@gmail.com','9987867590','software developer');
/*!40000 ALTER TABLE `hiring` ENABLE KEYS */;


--
-- Table structure for table `user`.`jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `location` varchar(45) NOT NULL DEFAULT '',
  `company` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`jobs`
--

/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`,`title`,`content`,`location`,`company`) VALUES 
 (1,'java developer','Strong development experience in Java, J2EE, Spring, SOAP/REST, Hibernate.','mohali',''),
 (2,'java developer','Exposure to Kotlin, RxJava / LiveData / Coroutines, Caching & Database','delhi','');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;


--
-- Table structure for table `user`.`st_job`
--

DROP TABLE IF EXISTS `st_job`;
CREATE TABLE `st_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(45) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`st_job`
--

/*!40000 ALTER TABLE `st_job` DISABLE KEYS */;
INSERT INTO `st_job` (`id`,`job_id`,`email`,`date`,`status`) VALUES 
 (4,'1','princegs226@gmail.com','2022-05-12 20:01:32','Mailed'),
 (5,'2','princegs226@gmail.com','2022-05-13 09:21:47','Pending');
/*!40000 ALTER TABLE `st_job` ENABLE KEYS */;


--
-- Table structure for table `user`.`st_paid`
--

DROP TABLE IF EXISTS `st_paid`;
CREATE TABLE `st_paid` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL DEFAULT '',
  `tid` varchar(100) NOT NULL DEFAULT '',
  `amount` varchar(45) NOT NULL DEFAULT '',
  `cid` varchar(45) NOT NULL DEFAULT '',
  `confirm` varchar(45) NOT NULL DEFAULT '',
  `pdate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`st_paid`
--

/*!40000 ALTER TABLE `st_paid` DISABLE KEYS */;
INSERT INTO `st_paid` (`id`,`email`,`tid`,`amount`,`cid`,`confirm`,`pdate`) VALUES 
 (7,'princegs226@gmail.com','3918098210129','15000','13','','2022-05-15');
/*!40000 ALTER TABLE `st_paid` ENABLE KEYS */;


--
-- Table structure for table `user`.`student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `fname` varchar(45) NOT NULL DEFAULT '',
  `lname` varchar(45) NOT NULL DEFAULT '',
  `contact_no` varchar(45) NOT NULL DEFAULT '',
  `gender` varchar(45) NOT NULL DEFAULT '',
  `resume` varchar(1000) NOT NULL DEFAULT '',
  `savePath` varchar(1000) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `college` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`.`student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`email`,`password`,`fname`,`lname`,`contact_no`,`gender`,`resume`,`savePath`,`address`,`college`) VALUES 
 (1,'princegs226@gmail.com','0000','Gurcharan','Singh','8847241228','Male','resumes\\Gurcharan_Singh_Resume_17-04-2022-12-50-00.pdf','C:\\Users\\GURCHARAN\\OneDrive\\Desktop\\advjava\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\edulab\\\\resumes\\Gurcharan_Singh_Resume_17-04-2022-12-50-00.pdf','rajpura','BBSBEC');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
