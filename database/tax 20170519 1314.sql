-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.50


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema taxfunda
--

CREATE DATABASE IF NOT EXISTS taxfunda;
USE taxfunda;

--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `Sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL DEFAULT '',
  `Email` varchar(45) DEFAULT NULL,
  `Comment` varchar(120) NOT NULL DEFAULT '',
  `time` varchar(120) NOT NULL,
  PRIMARY KEY (`Sno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`Sno`,`Name`,`Email`,`Comment`,`time`) VALUES 
 (1,'Ayush','ayush@gmail.com','Brilliant work done.',''),
 (2,'Ayush','ayush@gmail.com','Brilliant work done.',''),
 (3,'Harsh','harsh@gmail.com','Quite good website',''),
 (4,'aditya','aditya420@gmail.vcom','good bye','wdfwefwefwegfwe'),
 (5,'Arpit','arpit26@gmail.com','good content , very good site \r\n\r\nIt is very nice to see this type of site\r\n really, happy!\r\nwhat the fuck;;;;',''),
 (6,'ashwin','ashwin27@gmail.com','Awesome website!!!! \r\nQuite beneficial for tax payer.Good jobzzz..',''),
 (7,'rana','rana23@gmail.com','jai mahishmati.......',''),
 (8,'gkghj','ffrfc@cfv.juj','sfgdfvbfdvfdgergfd','Sat May 06 04:27:30 PDT 2017'),
 (9,'wefrewf','wefwef@edf.ntrh','wefwefwefcweef','Sat May 06 04:31:09 PDT 2017'),
 (10,'ashwin','ashwin@g.ojj','good excellent work\r\n','Sat May 06 04:32:01 PDT 2017'),
 (11,'aman','sgjb@hghdsfh.dsadj','sdfhbdsg','Sat May 06 05:06:23 PDT 2017'),
 (12,'Adesh','adesh@pagal.com','i love this website. From the way developer design and code itlaslfkj\r\n','Sat May 06 05:08:33 PDT 2017'),
 (13,'nayan','vjkjv@jnh.hbkj','hbjhcfjhv h','Sat May 06 07:09:00 PDT 2017'),
 (14,'Harsh','harsh@gmail.com','worthfull!!!!! helps a lot ............respect for team members','Sun May 07 00:00:19 IST 2017'),
 (15,'arpit','arpis@han.cn','ewkffhwefnre,g','Sun May 07 14:27:44 IST 2017'),
 (16,'hari','hari@gm.bom','very nice website help me to fill tax very easily','Mon May 08 21:32:12 IST 2017'),
 (17,'hari','hari@gm.bom','very nice website help me to fill tax very easily','Mon May 08 21:32:32 IST 2017'),
 (18,'himanshu','him@f.bom','good web service for tax?','Mon May 08 22:10:10 IST 2017'),
 (19,'sam','sam@gmnn.niih','nice happy to use these site','Mon May 08 22:20:32 IST 2017'),
 (20,'simon','sim@gmail.com','very good website','Mon May 08 22:30:44 IST 2017'),
 (21,'ravi','rac@h.n','fghhvhcfch hgcytfyfvhgv','Mon May 08 22:34:39 IST 2017'),
 (22,'ram','ramu@fgvj.jkg','hvgddcbvjhfgvhfg','Mon May 08 22:45:51 IST 2017'),
 (23,'ram','ramu@fgvj.jkg','hvgddcbvjhfgvhfg','Mon May 08 22:46:10 IST 2017'),
 (24,'mitesh','fmerif.2I@ekrmf.ef','woerwekfefwer','Mon May 08 22:58:35 IST 2017'),
 (25,'ankit ','kefefmk@mwf.we','eewrwefkmewkfmerf','Mon May 08 23:18:10 IST 2017'),
 (26,'ankit ','kefefmk@mwf.we','eewrwefkmewkfmerf','Mon May 08 23:18:32 IST 2017'),
 (27,'aman','wdj@msdf.wed','iowfmwekfmwekfm','Mon May 08 23:20:42 IST 2017'),
 (28,'amit','dgfghvb@r.jh','fhgvjhgbkj ','Tue May 09 00:34:35 IST 2017'),
 (29,'ritesh','ritesh23@gmail.vo','good website trusted and true information has been shared.','Sat May 13 22:50:14 IST 2017'),
 (30,'ram','jedd@yhjn.doj','Excellent services\r\n','Mon May 15 12:09:49 IST 2017'),
 (31,'aadesh','aadesgkdh@h.ggi',' provide very good solutions for the queries','Mon May 15 12:11:49 IST 2017'),
 (32,'shyam','shyam@fg.mail','simplified content available','Mon May 15 12:13:10 IST 2017'),
 (33,'rahul','rahul@gmai.com','Experts are quite good','Mon May 15 12:14:38 IST 2017'),
 (34,'bakul','bakul@gim.com','good website','Mon May 15 12:15:44 IST 2017'),
 (35,'ashish','dasd@gdg.com','Good services','Mon May 15 12:16:23 IST 2017'),
 (36,'arjun','dsdf@fxd.com','nice website','Mon May 15 12:16:52 IST 2017');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE `query` (
  `Sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questions` varchar(600) NOT NULL DEFAULT '',
  `name` varchar(15) DEFAULT NULL,
  `time` varchar(120) NOT NULL DEFAULT '',
  `ans1` varchar(2000) DEFAULT NULL,
  `name1` varchar(15) DEFAULT NULL,
  `time1` varchar(120) DEFAULT NULL,
  `ans2` varchar(2000) DEFAULT NULL,
  `name2` varchar(15) DEFAULT NULL,
  `time2` varchar(120) DEFAULT NULL,
  `ans3` varchar(2000) DEFAULT NULL,
  `name3` varchar(15) DEFAULT NULL,
  `time3` varchar(120) DEFAULT NULL,
  `ans4` varchar(2000) DEFAULT NULL,
  `name4` varchar(15) DEFAULT NULL,
  `time4` varchar(120) DEFAULT NULL,
  `ans5` varchar(2000) DEFAULT NULL,
  `name5` varchar(15) DEFAULT NULL,
  `time5` varchar(120) DEFAULT NULL,
  `ans6` varchar(2000) DEFAULT NULL,
  `name6` varchar(15) DEFAULT NULL,
  `time6` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` (`Sno`,`questions`,`name`,`time`,`ans1`,`name1`,`time1`,`ans2`,`name2`,`time2`,`ans3`,`name3`,`time3`,`ans4`,`name4`,`time4`,`ans5`,`name5`,`time5`,`ans6`,`name6`,`time6`) VALUES 
 (24,'How would be the proceeds from sale of inherited ancestral property taxed if it is sold within a year of inheritance? Can benefits of Section 54 Or Captial Gains Account scheme be availed?\r\nAnd if the proceed are shared further with subequent heirs how would it be taxed? ','harsh','Mon May 15 11:33:07 IST 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (25,'what is gst?','harsh','Mon May 15 11:46:36 IST 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (26,'Can benefits of Section 54 Or Captial Gains Account scheme be availed?','harsh','Mon May 15 11:47:26 IST 2017','   Yes it can be availed. Capital gain has to be charged on the proportionate basis in the hands of the legal hire. ','ankit','Mon May 15 11:48:35 IST 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (27,'My name in Pan card is \'Arpit\' whereas in addhar card it is apit resultantly my adhar card is not being linked what should I do? ','Arpit','Mon May 15 12:02:07 IST 2017','If you are not able to verify your ITR with your Aadhaar Card, you can also authenticate the same using EVC which would be sent to your registered mobile no. and email id. ','sarthak','Mon May 15 12:04:46 IST 2017','Log into their website site and seek help . Correction in aADHAR card is possible if you establish that it is a mistake in printing , Ensure that you filled the name correctly in the aadhar registration. ','Rpit','Mon May 15 12:07:43 IST 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (28,'htnhgmh','harsh','Mon May 15 16:08:42 IST 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `query` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `firstname` varchar(15) NOT NULL DEFAULT '',
  `lastname` varchar(15) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `age` varchar(9) NOT NULL DEFAULT '',
  `pann` varchar(11) NOT NULL DEFAULT '',
  `gender` varchar(7) NOT NULL DEFAULT '',
  `phone` bigint(15) unsigned NOT NULL DEFAULT '0',
  `password` varchar(20) NOT NULL DEFAULT '',
  `category` varchar(15) NOT NULL,
  PRIMARY KEY (`pann`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`firstname`,`lastname`,`email`,`age`,`pann`,`gender`,`phone`,`password`,`category`) VALUES 
 ('ankit','jain','ankit@gmail.com','18-60','ADDCb1254J','male',917489563214,'shanu','experts'),
 ('ayush','jan','ayushjan@gmail','under_18','addyg45a','male',918982325745,'+568464',''),
 ('harsh','bangar','harshbangar23@gmail.com','18-60','ADDYJ4557A','male',91898232746,'shanu123','others'),
 ('sarthak','jain','sartek@gmail.com','18-60','adfcp7896l','male',917415283691,'sartek','experts'),
 ('Rpit','mallviya','Rpit@gmail.com','under_18','Adxcp8796m','male',9189875677,'rpit','experts'),
 ('Rpita','malviya','Rpit@gmail.coma','18-60','AgPCK4589M','female',91898556486,'are',''),
 ('ritesh','rana','rrnana23@ng.gk','18-60','Asdjl8794o','male',8985462136,'shanu859','taxpayer'),
 ('aditya','mishra','aditya@gmail.com','above 60','ASDKP8989M','male',8985475698,'arpit','taxpayer'),
 ('gfjgghg','ghmbk','gjhgkb@hhjgmk','under_18','AXpck4589k','male',895659659645,'Shanu','taxpayer'),
 ('Arpit','malviya','arpit28@gmail.com','18-60','AXPCK4589M','male',91898756486,'arpit','taxpayer');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
