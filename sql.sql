/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.25-MariaDB : Database - constraction_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`constraction_management` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `constraction_management`;

/*Table structure for table `contractor` */

DROP TABLE IF EXISTS `contractor`;

CREATE TABLE `contractor` (
  `contractor_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `aadhar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`contractor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `contractor` */

insert  into `contractor`(`contractor_id`,`login_id`,`fname`,`lname`,`place`,`phone`,`email`,`aadhar`) values 
(2,8,'arjun','ar','kochi','7894561230','arjun@gmail.com','98');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `aadhar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`login_id`,`fname`,`lname`,`place`,`phone`,`email`,`aadhar`) values 
(1,2,'ann','anna','kollam','9874561230','ann@gmail.com','789456123');

/*Table structure for table `designimages` */

DROP TABLE IF EXISTS `designimages`;

CREATE TABLE `designimages` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `design_id` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `designimages` */

insert  into `designimages`(`image_id`,`design_id`,`path`) values 
(3,4,'static/4e722561-139a-4b25-97a9-0af4bb381000Hotel-1.jpg'),
(4,5,'static/bd0c6d5a-8702-4872-abe0-6349e53031c3istockphoto-1250205787-612x612 (1).jpg'),
(5,6,'static/7fd8e01b-1c17-4fc9-b48c-0ba281484c7cHotelMaris-Anandam1.jpg'),
(6,7,'static/f3db596a-f2a6-452a-9a58-45da714f0e8cHotel-1.jpg');

/*Table structure for table `designrequest` */

DROP TABLE IF EXISTS `designrequest`;

CREATE TABLE `designrequest` (
  `drequest_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `design_id` int(11) DEFAULT NULL,
  `req_date` varchar(100) DEFAULT NULL,
  `req_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`drequest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `designrequest` */

insert  into `designrequest`(`drequest_id`,`customer_id`,`design_id`,`req_date`,`req_status`) values 
(1,1,7,'2023-02-10','pending'),
(2,1,5,'2023-02-10','paid');

/*Table structure for table `designs` */

DROP TABLE IF EXISTS `designs`;

CREATE TABLE `designs` (
  `design_id` int(11) NOT NULL AUTO_INCREMENT,
  `contractor_id` int(11) DEFAULT NULL,
  `designname` varchar(100) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`design_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `designs` */

insert  into `designs`(`design_id`,`contractor_id`,`designname`,`details`) values 
(2,2,'sxm c',',mxn cdsc'),
(4,2,'Art Nimbus','ksjbxhvsbdcnskd'),
(5,2,'abcd','klsxdwoqdhu'),
(6,2,'zzssxw','.ljkabsch sakldmas'),
(7,2,'121sxawdawhb','liushgvgwsh');

/*Table structure for table `estimate` */

DROP TABLE IF EXISTS `estimate`;

CREATE TABLE `estimate` (
  `estimate_id` int(11) NOT NULL AUTO_INCREMENT,
  `drequest_id` int(11) DEFAULT NULL,
  `est_type` varchar(100) DEFAULT NULL,
  `est_amount` varchar(100) DEFAULT NULL,
  `est_date` varchar(100) DEFAULT NULL,
  `est_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`estimate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `estimate` */

insert  into `estimate`(`estimate_id`,`drequest_id`,`est_type`,`est_amount`,`est_date`,`est_status`) values 
(1,2,'sackxjhbcs n','2500','2023-02-11','paid');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `feed_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`customer_id`,`feedback`,`feed_date`) values 
(1,1,'cx cd','12/2'),
(2,NULL,'Gggg','2023-02-11'),
(3,NULL,'Fvf','2023-02-11'),
(4,NULL,'Gyhggttt','2023-02-11'),
(5,1,'Ytrr','2023-02-11');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(2,'user','user','customer'),
(8,'con','con','contractor'),
(10,'shop','shop','shop'),
(11,'User1','user1','customer');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `msg_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`message_id`,`sender_id`,`receiver_id`,`message`,`msg_date`) values 
(1,8,2,'hai','2023-02-10'),
(2,8,2,'helo','2023-02-10'),
(3,2,8,'Hggg','2023-02-11'),
(4,2,8,'Ggfg','2023-02-11'),
(5,2,8,'Gg','2023-02-11');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `estimate_id` int(11) DEFAULT NULL,
  `pay_amount` varchar(100) DEFAULT NULL,
  `pay_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`estimate_id`,`pay_amount`,`pay_date`) values 
(1,1,'2500','2023-02-11'),
(2,1,'2500','2023-02-11');

/*Table structure for table `raw_materials` */

DROP TABLE IF EXISTS `raw_materials`;

CREATE TABLE `raw_materials` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `raw_name` varchar(100) DEFAULT NULL,
  `raw_details` varchar(100) DEFAULT NULL,
  `raw_rate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `raw_materials` */

insert  into `raw_materials`(`material_id`,`shop_id`,`raw_name`,`raw_details`,`raw_rate`) values 
(2,1,'Cement','Construction Materials.','450'),
(3,1,'Steel','Reinforcement Steel.','250');

/*Table structure for table `rawrequest` */

DROP TABLE IF EXISTS `rawrequest`;

CREATE TABLE `rawrequest` (
  `rrequest_id` int(11) NOT NULL AUTO_INCREMENT,
  `drequest_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `rr_status` varchar(100) DEFAULT NULL,
  `contractor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rrequest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `rawrequest` */

insert  into `rawrequest`(`rrequest_id`,`drequest_id`,`material_id`,`rr_status`,`contractor_id`) values 
(1,2,3,'Delivered',2),
(2,2,2,'Delivered',2),
(3,2,2,'Delivered',2),
(4,NULL,NULL,NULL,2);

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `shop` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `shop` */

insert  into `shop`(`shop_id`,`login_id`,`shop`,`place`,`phone`,`email`) values 
(1,10,'shops','kochi','9874561230','shop@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
