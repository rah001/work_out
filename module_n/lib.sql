/*
SQLyog Community Edition- MySQL GUI v6.14
MySQL - 5.0.21-community-nt : Database - library_development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `library_development`;

USE `library_development`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL auto_increment,
  `BookID` int(11) default NULL,
  `mem_id` int(255) default NULL,
  `Availble` varchar(255) default 'Available',
  `Reserve` varchar(255) default 'N',
  `NumberOfBooks` int(11) default NULL,
  `NumberOfAvailbleBooks` int(11) default '0',
  `NumberOfBorrowedBooks` int(11) default '0',
  `Subject` varchar(255) default NULL,
  `Ranking` int(10) default '0',
  `Title` varchar(255) default NULL,
  `Author` varchar(255) default NULL,
  `Publisher` varchar(255) default NULL,
  `Copyright` int(11) default NULL,
  `Edition` int(11) default NULL,
  `Pages` int(11) default NULL,
  `ISBN` varchar(255) default NULL,
  `Library` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `books` */

insert  into `books`(`id`,`BookID`,`mem_id`,`Availble`,`Reserve`,`NumberOfBooks`,`NumberOfAvailbleBooks`,`NumberOfBorrowedBooks`,`Subject`,`Ranking`,`Title`,`Author`,`Publisher`,`Copyright`,`Edition`,`Pages`,`ISBN`,`Library`) values (2,11,102,'Available','N',5,4,1,'java',44,'core java','sdhgdgh','shdghg',2009,4,987,'1jsdhjh-121-mxcnmx-111','main'),(3,12,106,'Available','N',4,4,0,'history',28,'djshd','dfjhjgs','dfjhdj',2002,4,789,'1-sdhj-dsjh-23=','main'),(4,13,NULL,'Available','N',8,8,0,'marathi',2,'Marathi','jsdjks','sdsjhj',2001,14,158,'1-dhjd-dksksj-112','main'),(5,14,NULL,'Available','N',10,10,0,'ntework',4,'ntework','dfjhj','sjdhjahs',0,0,0,'jdfshjd','main'),(6,15,NULL,'Available','N',6,6,0,'ror',3,'ror','ror','ror',0,0,0,'ror','main'),(7,16,NULL,'Available','N',10,10,0,'jdjksdk',1,'jhjkdk','jhsjkhk','jshskdj',0,0,0,'jdfsk','main');

/*Table structure for table `borrows` */

DROP TABLE IF EXISTS `borrows`;

CREATE TABLE `borrows` (
  `id` int(11) NOT NULL auto_increment,
  `BookID` int(11) default NULL,
  `MemberID` int(11) default NULL,
  `DayOfBorrowed` date default NULL,
  `DayOfReturn` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `borrows` */

insert  into `borrows`(`id`,`BookID`,`MemberID`,`DayOfBorrowed`,`DayOfReturn`) values (1,11,106,'2010-04-30','2010-04-30');

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) NOT NULL auto_increment,
  `MemberID` int(11) default NULL,
  `name` varchar(255) default NULL,
  `NumberOfBooks` int(11) default '0',
  `hashed_password` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PhoneNo` varchar(255) default NULL,
  `usertype` varchar(25) default NULL,
  `Email` varchar(255) default NULL,
  `Expired` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `members` */

insert  into `members`(`id`,`MemberID`,`name`,`NumberOfBooks`,`hashed_password`,`salt`,`Address`,`PhoneNo`,`usertype`,`Email`,`Expired`) values (9,101,'rahul',0,'7c2e3314110c92c66d1cd4605a3dc014ba08cf1d','376947500.698605051576203',NULL,NULL,'Admin','rahul@sprylogic.com','2010-04-26 07:26:00'),(15,102,'user1',0,'b15e5f75c9191522b8fecc0da50a53b28aff22f5','363917900.0265263433875037','ksdjkdfjkl','123456','Member','djfhjdhjk','2010-04-30 00:00:00'),(16,103,'user2',0,'097eea20aaa9e2310d7c13e08468bd4fc391f7d1','375982900.0651421056360895','fdjjkh','jdfjjhj','Admin','dfjhsdjh','2010-04-30 00:00:00');

/*Table structure for table `schema_migrations` */

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `schema_migrations` */

insert  into `schema_migrations`(`version`) values ('20100301071653'),('20100301072829'),('20100409073023');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
