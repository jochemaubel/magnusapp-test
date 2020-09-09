# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: magnusapp.nl (MySQL 5.5.5-10.1.44-MariaDB-0ubuntu0.18.04.1)
# Database: devmagnus
# Generation Time: 2020-09-09 18:55:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;

INSERT INTO `auth_group` (`id`, `name`)
VALUES
	(1,'primary_staff');

/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`)
VALUES
	(6,1,12),
	(11,1,16),
	(12,1,20),
	(4,1,40),
	(10,1,48),
	(13,1,95),
	(1,1,96),
	(2,1,97),
	(3,1,98),
	(5,1,139),
	(7,1,140),
	(8,1,141),
	(9,1,142);

/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add user',1,'add_appuser'),
	(2,'Can change user',1,'change_appuser'),
	(3,'Can delete user',1,'delete_appuser'),
	(4,'Can view user',1,'view_appuser'),
	(5,'Can add location',2,'add_location'),
	(6,'Can change location',2,'change_location'),
	(7,'Can delete location',2,'delete_location'),
	(8,'Can view location',2,'view_location'),
	(9,'Can add group member view model',3,'add_groupmemberviewmodel'),
	(10,'Can change group member view model',3,'change_groupmemberviewmodel'),
	(11,'Can delete group member view model',3,'delete_groupmemberviewmodel'),
	(12,'Can view group member view model',3,'view_groupmemberviewmodel'),
	(13,'Can add member',4,'add_member'),
	(14,'Can change member',4,'change_member'),
	(15,'Can delete member',4,'delete_member'),
	(16,'Can view member',4,'view_member'),
	(17,'Can add member group',5,'add_membergroup'),
	(18,'Can change member group',5,'change_membergroup'),
	(19,'Can delete member group',5,'delete_membergroup'),
	(20,'Can view member group',5,'view_membergroup'),
	(21,'Can add member group role',6,'add_membergrouprole'),
	(22,'Can change member group role',6,'change_membergrouprole'),
	(23,'Can delete member group role',6,'delete_membergrouprole'),
	(24,'Can view member group role',6,'view_membergrouprole'),
	(25,'Can add member role',7,'add_memberrole'),
	(26,'Can change member role',7,'change_memberrole'),
	(27,'Can delete member role',7,'delete_memberrole'),
	(28,'Can view member role',7,'view_memberrole'),
	(29,'Can add user member',8,'add_usermember'),
	(30,'Can change user member',8,'change_usermember'),
	(31,'Can delete user member',8,'delete_usermember'),
	(32,'Can view user member',8,'view_usermember'),
	(33,'Can add invitation',9,'add_invitation'),
	(34,'Can change invitation',9,'change_invitation'),
	(35,'Can delete invitation',9,'delete_invitation'),
	(36,'Can view invitation',9,'view_invitation'),
	(37,'Can add activity member view model',10,'add_activitymemberviewmodel'),
	(38,'Can change activity member view model',10,'change_activitymemberviewmodel'),
	(39,'Can delete activity member view model',10,'delete_activitymemberviewmodel'),
	(40,'Can view activity member view model',10,'view_activitymemberviewmodel'),
	(41,'Can add parent activity view model',11,'add_parentactivityviewmodel'),
	(42,'Can change parent activity view model',11,'change_parentactivityviewmodel'),
	(43,'Can delete parent activity view model',11,'delete_parentactivityviewmodel'),
	(44,'Can view parent activity view model',11,'view_parentactivityviewmodel'),
	(45,'Can add activity',12,'add_activity'),
	(46,'Can change activity',12,'change_activity'),
	(47,'Can delete activity',12,'delete_activity'),
	(48,'Can view activity',12,'view_activity'),
	(49,'Can add activity type',13,'add_activitytype'),
	(50,'Can change activity type',13,'change_activitytype'),
	(51,'Can delete activity type',13,'delete_activitytype'),
	(52,'Can view activity type',13,'view_activitytype'),
	(53,'Can add child activity view model',14,'add_childactivityviewmodel'),
	(54,'Can change child activity view model',14,'change_childactivityviewmodel'),
	(55,'Can delete child activity view model',14,'delete_childactivityviewmodel'),
	(56,'Can view child activity view model',14,'view_childactivityviewmodel'),
	(57,'Can add activity subscription',15,'add_activitysubscription'),
	(58,'Can change activity subscription',15,'change_activitysubscription'),
	(59,'Can delete activity subscription',15,'delete_activitysubscription'),
	(60,'Can view activity subscription',15,'view_activitysubscription'),
	(61,'Can add log entry',16,'add_logentry'),
	(62,'Can change log entry',16,'change_logentry'),
	(63,'Can delete log entry',16,'delete_logentry'),
	(64,'Can view log entry',16,'view_logentry'),
	(65,'Can add permission',17,'add_permission'),
	(66,'Can change permission',17,'change_permission'),
	(67,'Can delete permission',17,'delete_permission'),
	(68,'Can view permission',17,'view_permission'),
	(69,'Can add group',18,'add_group'),
	(70,'Can change group',18,'change_group'),
	(71,'Can delete group',18,'delete_group'),
	(72,'Can view group',18,'view_group'),
	(73,'Can add content type',19,'add_contenttype'),
	(74,'Can change content type',19,'change_contenttype'),
	(75,'Can delete content type',19,'delete_contenttype'),
	(76,'Can view content type',19,'view_contenttype'),
	(77,'Can add session',20,'add_session'),
	(78,'Can change session',20,'change_session'),
	(79,'Can delete session',20,'delete_session'),
	(80,'Can view session',20,'view_session'),
	(81,'Can add blacklisted token',21,'add_blacklistedtoken'),
	(82,'Can change blacklisted token',21,'change_blacklistedtoken'),
	(83,'Can delete blacklisted token',21,'delete_blacklistedtoken'),
	(84,'memberGroupAdmin',5,'memberGroupAdmin'),
	(85,'memberGroupSupervisor',3,'memberGroupSupervisor'),
	(86,'Can change outstanding token',22,'change_outstandingtoken'),
	(87,'Can delete outstanding token',22,'delete_outstandingtoken'),
	(88,'Can view outstanding token',22,'view_outstandingtoken'),
	(89,'Can add account',23,'add_account'),
	(90,'Can change account',23,'change_account'),
	(91,'Can delete account',23,'delete_account'),
	(92,'Can view account',23,'view_account'),
	(93,'Can add outstanding token',22,'add_outstandingtoken'),
	(94,'Can view blacklisted token',21,'view_blacklistedtoken'),
	(95,'Can add training',24,'add_training'),
	(96,'Can change training',24,'change_training'),
	(97,'Can delete training',24,'delete_training'),
	(98,'Can view training',24,'view_training'),
	(99,'Can add chess_position',25,'add_chess_position'),
	(100,'Can change chess_position',25,'change_chess_position'),
	(101,'Can delete chess_position',25,'delete_chess_position'),
	(102,'Can view chess_position',25,'view_chess_position'),
	(103,'Can add historical user',26,'add_historicalappuser'),
	(104,'Can change historical user',26,'change_historicalappuser'),
	(105,'Can delete historical user',26,'delete_historicalappuser'),
	(106,'Can view historical user',26,'view_historicalappuser'),
	(107,'Can add historical location',27,'add_historicallocation'),
	(108,'Can change historical location',27,'change_historicallocation'),
	(109,'Can delete historical location',27,'delete_historicallocation'),
	(110,'Can view historical location',27,'view_historicallocation'),
	(111,'Can add historical member',28,'add_historicalmember'),
	(112,'Can change historical member',28,'change_historicalmember'),
	(113,'Can delete historical member',28,'delete_historicalmember'),
	(114,'Can view historical member',28,'view_historicalmember'),
	(115,'Can add historical account',29,'add_historicalaccount'),
	(116,'Can change historical account',29,'change_historicalaccount'),
	(117,'Can delete historical account',29,'delete_historicalaccount'),
	(118,'Can view historical account',29,'view_historicalaccount'),
	(119,'Can add historical invitation',30,'add_historicalinvitation'),
	(120,'Can change historical invitation',30,'change_historicalinvitation'),
	(121,'Can delete historical invitation',30,'delete_historicalinvitation'),
	(122,'Can view historical invitation',30,'view_historicalinvitation'),
	(123,'Can add historical activity subscription',31,'add_historicalactivitysubscription'),
	(124,'Can change historical activity subscription',31,'change_historicalactivitysubscription'),
	(125,'Can delete historical activity subscription',31,'delete_historicalactivitysubscription'),
	(126,'Can view historical activity subscription',31,'view_historicalactivitysubscription'),
	(127,'Can add historical activity',32,'add_historicalactivity'),
	(128,'Can change historical activity',32,'change_historicalactivity'),
	(129,'Can delete historical activity',32,'delete_historicalactivity'),
	(130,'Can view historical activity',32,'view_historicalactivity'),
	(131,'Can add historical chess_position',33,'add_historicalchess_position'),
	(132,'Can change historical chess_position',33,'change_historicalchess_position'),
	(133,'Can delete historical chess_position',33,'delete_historicalchess_position'),
	(134,'Can view historical chess_position',33,'view_historicalchess_position'),
	(135,'Can add historical training',34,'add_historicaltraining'),
	(136,'Can change historical training',34,'change_historicaltraining'),
	(137,'Can delete historical training',34,'delete_historicaltraining'),
	(138,'Can view historical training',34,'view_historicaltraining'),
	(139,'Can add chess position',35,'add_chessposition'),
	(140,'Can change chess position',35,'change_chessposition'),
	(141,'Can delete chess position',35,'delete_chessposition'),
	(142,'Can view chess position',35,'view_chessposition'),
	(143,'Can add historical chess position',33,'add_historicalchessposition'),
	(144,'Can change historical chess position',33,'change_historicalchessposition'),
	(145,'Can delete historical chess position',33,'delete_historicalchessposition'),
	(146,'Can view historical chess position',33,'view_historicalchessposition'),
	(147,'Can add chess position training',36,'add_chesspositiontraining'),
	(148,'Can change chess position training',36,'change_chesspositiontraining'),
	(149,'Can delete chess position training',36,'delete_chesspositiontraining'),
	(150,'Can view chess position training',36,'view_chesspositiontraining'),
	(151,'Can add historical chess position training',37,'add_historicalchesspositiontraining'),
	(152,'Can change historical chess position training',37,'change_historicalchesspositiontraining'),
	(153,'Can delete historical chess position training',37,'delete_historicalchesspositiontraining'),
	(154,'Can view historical chess position training',37,'view_historicalchesspositiontraining'),
	(155,'Can add historical member group role',38,'add_historicalmembergrouprole'),
	(156,'Can change historical member group role',38,'change_historicalmembergrouprole'),
	(157,'Can delete historical member group role',38,'delete_historicalmembergrouprole'),
	(158,'Can view historical member group role',38,'view_historicalmembergrouprole'),
	(159,'Can add historical member group',39,'add_historicalmembergroup'),
	(160,'Can change historical member group',39,'change_historicalmembergroup'),
	(161,'Can delete historical member group',39,'delete_historicalmembergroup'),
	(162,'Can view historical member group',39,'view_historicalmembergroup'),
	(163,'Can add address',40,'add_address'),
	(164,'Can change address',40,'change_address'),
	(165,'Can delete address',40,'delete_address'),
	(166,'Can view address',40,'view_address'),
	(167,'Can add authorization',41,'add_authorization'),
	(168,'Can change authorization',41,'change_authorization'),
	(169,'Can delete authorization',41,'delete_authorization'),
	(170,'Can view authorization',41,'view_authorization'),
	(171,'Can add city',42,'add_city'),
	(172,'Can change city',42,'change_city'),
	(173,'Can delete city',42,'delete_city'),
	(174,'Can view city',42,'view_city'),
	(175,'Can add member picture',43,'add_memberpicture'),
	(176,'Can change member picture',43,'change_memberpicture'),
	(177,'Can delete member picture',43,'delete_memberpicture'),
	(178,'Can view member picture',43,'view_memberpicture'),
	(179,'Can add tag',44,'add_tag'),
	(180,'Can change tag',44,'change_tag'),
	(181,'Can delete tag',44,'delete_tag'),
	(182,'Can view tag',44,'view_tag'),
	(183,'Can add member detail',45,'add_memberdetail'),
	(184,'Can change member detail',45,'change_memberdetail'),
	(185,'Can delete member detail',45,'delete_memberdetail'),
	(186,'Can view member detail',45,'view_memberdetail'),
	(187,'Can add historical member picture',46,'add_historicalmemberpicture'),
	(188,'Can change historical member picture',46,'change_historicalmemberpicture'),
	(189,'Can delete historical member picture',46,'delete_historicalmemberpicture'),
	(190,'Can view historical member picture',46,'view_historicalmemberpicture'),
	(191,'Can add historical address',47,'add_historicaladdress'),
	(192,'Can change historical address',47,'change_historicaladdress'),
	(193,'Can delete historical address',47,'delete_historicaladdress'),
	(194,'Can view historical address',47,'view_historicaladdress'),
	(195,'Can add historical member detail',48,'add_historicalmemberdetail'),
	(196,'Can change historical member detail',48,'change_historicalmemberdetail'),
	(197,'Can delete historical member detail',48,'delete_historicalmemberdetail'),
	(198,'Can view historical member detail',48,'view_historicalmemberdetail'),
	(199,'Can add historical authorization',49,'add_historicalauthorization'),
	(200,'Can change historical authorization',49,'change_historicalauthorization'),
	(201,'Can delete historical authorization',49,'delete_historicalauthorization'),
	(202,'Can view historical authorization',49,'view_historicalauthorization'),
	(203,'Can add historical tag',50,'add_historicaltag'),
	(204,'Can change historical tag',50,'change_historicaltag'),
	(205,'Can delete historical tag',50,'delete_historicaltag'),
	(206,'Can view historical tag',50,'view_historicaltag'),
	(207,'Can add city',51,'add_city'),
	(208,'Can change city',51,'change_city'),
	(209,'Can delete city',51,'delete_city'),
	(210,'Can view city',51,'view_city');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_magnus_users_appuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_magnus_users_appuser_id` FOREIGN KEY (`user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`)
VALUES
	(1,'2020-01-02 13:26:14.840779','1','Member object (1)',1,'[{`added`: {}}]',2,1),
	(2,'2020-01-02 13:26:38.903140','2','Member object (2)',1,'[{`added`: {}}]',2,1),
	(3,'2020-01-02 13:26:56.708955','3','Member object (3)',1,'[{`added`: {}}]',2,1),
	(4,'2020-01-02 13:27:09.423196','1','UserMember object (1)',1,'[{`added`: {}}]',6,1),
	(5,'2020-01-02 13:27:16.294514','2','UserMember object (2)',1,'[{`added`: {}}]',6,1),
	(6,'2020-01-02 13:27:23.842789','3','UserMember object (3)',1,'[{`added`: {}}]',6,1),
	(7,'2020-01-02 13:29:38.663721','1','MemberRole object (1)',1,'[{`added`: {}}]',5,1),
	(8,'2020-01-02 13:29:49.343319','2','MemberRole object (2)',1,'[{`added`: {}}]',5,1),
	(9,'2020-01-02 13:36:02.849011','1','Groep D1',1,'[{`added`: {}}]',3,1),
	(10,'2020-01-02 13:36:08.356982','2','Groep E1',1,'[{`added`: {}}]',3,1),
	(11,'2020-01-02 13:36:17.272019','3','Trainingsgroepen',1,'[{`added`: {}}]',3,1),
	(12,'2020-01-02 13:36:21.575603','2','Groep E1',2,'[{`changed`: {`fields`: [`parentMemberGroup`]}}]',3,1),
	(13,'2020-01-02 13:36:25.435517','1','Groep D1',2,'[{`changed`: {`fields`: [`parentMemberGroup`]}}]',3,1),
	(14,'2020-01-02 13:36:35.565074','1','Donald Duck - Groep E1 - Trainer',1,'[{`added`: {}}]',4,1),
	(15,'2020-01-02 13:36:45.456124','2','Kwik Duck - Groep D1 - Speler',1,'[{`added`: {}}]',4,1),
	(16,'2020-01-02 13:36:54.489756','3','Donald Duck - Groep E1 - Speler',1,'[{`added`: {}}]',4,1),
	(17,'2020-01-02 13:37:13.200675','4','Kwik Duck - Groep E1 - Speler',1,'[{`added`: {}}]',4,1),
	(18,'2020-01-02 13:37:28.593503','5','Kwak Duck - Groep D1 - Speler',1,'[{`added`: {}}]',4,1),
	(19,'2020-01-02 13:39:03.202034','1','magnusapp2019@gmail.com',2,'[{`changed`: {`fields`: [`user_permissions`, `first_name`, `last_name`]}}]',1,1),
	(20,'2020-01-02 13:40:42.894517','1','ActivityType object (1)',1,'[{`added`: {}}]',15,1),
	(21,'2020-01-02 13:43:11.350858','1','Vrijdagavond training - None',1,'[{`added`: {}}]',14,1),
	(22,'2020-01-02 13:44:03.663354','2','Trainingen - None',1,'[{`added`: {}}]',14,1),
	(23,'2020-01-02 13:44:10.517898','1','Vrijdagavond training - Trainingen - None',2,'[{`changed`: {`fields`: [`parentActivity`]}}]',14,1),
	(24,'2020-01-02 13:49:01.603366','1','Donald - Duck - Groep E1 - Trainer - True',1,'[{`added`: {}}]',16,1),
	(25,'2020-01-02 13:50:35.500032','1','Donald Duck - Groep E1 - Trainer - Nee',2,'[{`changed`: {`fields`: [`registered`]}}]',16,1),
	(26,'2020-01-02 13:50:41.412998','1','Donald Duck - Groep E1 - Trainer - Nee',2,'[{`changed`: {`fields`: [`registered`]}}]',16,1),
	(27,'2020-01-02 13:52:19.787958','1','Donald Duck - Groep E1 - Trainer - Ja',2,'[{`changed`: {`fields`: [`registered`]}}]',16,1),
	(28,'2020-01-02 14:37:39.018976','2','besselb@yahoo.com',1,'[{`added`: {}}]',1,1),
	(29,'2020-01-02 14:38:04.585608','4','besselb@yahoo.com - Kwak Duck',1,'[{`added`: {}}]',6,1),
	(30,'2020-01-02 14:39:10.773107','2','besselb@yahoo.com',2,'[{`changed`: {`fields`: [`is_superuser`]}}]',1,1),
	(31,'2020-01-02 14:40:24.386370','2','besselb@yahoo.com',2,'[{`changed`: {`fields`: [`password`]}}]',1,1),
	(32,'2020-01-02 14:42:20.569201','3','D1 Training vrijdag (Hoofdactiviteit)',1,'[{`added`: {}}]',14,1),
	(33,'2020-01-03 11:58:43.810235','4','Dirk Kraaijpoel',1,'[{`added`: {}}]',2,1),
	(34,'2020-01-03 11:59:06.645660','4','Dirk Kraaijpoel',2,'[]',2,1),
	(35,'2020-01-03 12:05:37.590157','2','Clubavond Vrijdag',1,'[{`added`: {}}]',15,1),
	(36,'2020-01-03 12:06:00.157176','3','Clubavond Woensdag',1,'[{`added`: {}}]',15,1),
	(37,'2020-01-03 12:07:41.955933','2','Clubavond Vrijdag',3,'',15,1),
	(38,'2020-01-03 12:07:48.397159','3','Clubavond',2,'[{`changed`: {`fields`: [`description`]}}]',15,1),
	(39,'2020-01-03 12:07:59.456821','4','Interne competitie',1,'[{`added`: {}}]',15,1),
	(40,'2020-01-03 12:16:49.959630','3','Coördinator',1,'[{`added`: {}}]',5,1),
	(41,'2020-01-03 12:17:02.241514','4','Competitieleider',1,'[{`added`: {}}]',5,1),
	(42,'2020-01-03 12:17:38.234202','5','Koen Aubel',1,'[{`added`: {}}]',2,1),
	(43,'2020-01-03 12:17:46.785218','6','Daan Aubel',1,'[{`added`: {}}]',2,1),
	(44,'2020-01-03 12:17:56.645157','7','Hidde Kraaijoel',1,'[{`added`: {}}]',2,1),
	(45,'2020-01-03 12:18:07.015409','8','Jochem Aubel',1,'[{`added`: {}}]',2,1),
	(46,'2020-01-03 12:18:21.678361','9','Bessel Bakker',1,'[{`added`: {}}]',2,1),
	(47,'2020-01-03 12:18:45.028222','10','Nicolette Mulder',1,'[{`added`: {}}]',2,1),
	(48,'2020-01-03 12:18:55.379520','11','Bas van Esch',1,'[{`added`: {}}]',2,1),
	(49,'2020-01-03 12:21:26.880477','4','Organisatie',1,'[{`added`: {}}]',3,1),
	(50,'2020-01-03 12:22:08.249028','4','Clubavond Vrijdag (Hoofdactiviteit)',1,'[{`added`: {}}]',14,1),
	(51,'2020-01-03 12:23:02.747418','5','Training D1 - Clubavond Vrijdag',1,'[{`added`: {}}]',14,1),
	(52,'2020-01-03 12:23:30.784369','6','Clubmiddag Woensdag (Hoofdactiviteit)',1,'[{`added`: {}}]',14,1),
	(53,'2020-01-03 12:24:09.144472','5','Groep W1',1,'[{`added`: {}}]',3,1),
	(54,'2020-01-03 12:24:14.493020','6','Groep V1',1,'[{`added`: {}}]',3,1),
	(55,'2020-01-03 12:24:38.159638','6','Competitiegroep V1',2,'[{`changed`: {`fields`: [`description`]}}]',3,1),
	(56,'2020-01-03 12:24:55.280998','7','Competitiegroep W1',1,'[{`added`: {}}]',3,1),
	(57,'2020-01-03 12:25:42.926107','6','Bas van Esch - Organisatie - Coördinator',1,'[{`added`: {}}]',4,1),
	(58,'2020-01-03 12:25:53.590294','7','Dirk Kraaijpoel - Organisatie - Coördinator',1,'[{`added`: {}}]',4,1),
	(59,'2020-01-03 12:26:09.831626','8','Nicolette Mulder - Competitiegroep V1 - Competitieleider',1,'[{`added`: {}}]',4,1),
	(60,'2020-01-03 12:26:33.946497','9','Bessel Bakker - Groep D1 - Trainer',1,'[{`added`: {}}]',4,1),
	(61,'2020-01-03 12:26:45.442642','10','Bessel Bakker - Competitiegroep V1 - Competitieleider',1,'[{`added`: {}}]',4,1),
	(62,'2020-01-03 12:27:12.603399','11','Hidde Kraaijoel - Groep D1 - Speler',1,'[{`added`: {}}]',4,1),
	(63,'2020-01-03 12:27:32.523415','12','Koen Aubel - Groep D1 - Speler',1,'[{`added`: {}}]',4,1),
	(64,'2020-01-03 12:27:43.044619','13','Hidde Kraaijoel - Groep E1 - Trainer',1,'[{`added`: {}}]',4,1),
	(65,'2020-01-03 12:27:54.440344','14','Daan Aubel - Groep E1 - Speler',1,'[{`added`: {}}]',4,1),
	(66,'2020-01-03 12:28:20.155741','15','Bas van Esch - Competitiegroep W1 - Competitieleider',1,'[{`added`: {}}]',4,1),
	(67,'2020-01-03 12:28:29.993383','16','Daan Aubel - Competitiegroep W1 - Speler',1,'[{`added`: {}}]',4,1),
	(68,'2020-01-03 12:29:20.129489','17','Koen Aubel - Competitiegroep V1 - Speler',1,'[{`added`: {}}]',4,1),
	(69,'2020-01-03 12:29:37.348147','18','Daan Aubel - Competitiegroep V1 - Speler',1,'[{`added`: {}}]',4,1),
	(70,'2020-01-03 12:29:52.683935','19','Hidde Kraaijoel - Competitiegroep V1 - Speler',1,'[{`added`: {}}]',4,1),
	(71,'2020-01-03 12:30:31.360301','20','Bas van Esch - Groep W1 - Trainer',1,'[{`added`: {}}]',4,1),
	(72,'2020-01-03 12:32:56.471024','5','hakraai@gmail.com - Hidde Kraaijoel',1,'[{`added`: {}}]',6,1),
	(73,'2020-01-03 12:33:03.158831','6','hakraai@gmail.com - Dirk Kraaijpoel',1,'[{`added`: {}}]',6,1),
	(74,'2020-01-03 12:33:27.163023','7','besselb@yahoo.com - Bessel Bakker',1,'[{`added`: {}}]',6,1),
	(75,'2020-01-03 12:35:23.752431','6','Clubmiddag Woensdag (Hoofdactiviteit)',2,'[{`changed`: {`fields`: [`fromDate`, `toDate`]}}]',14,1),
	(76,'2020-01-03 12:36:07.245489','7','Training E1 - Clubavond Vrijdag',1,'[{`added`: {}}]',14,1),
	(77,'2020-01-03 12:37:01.565108','8','Training W1 - Clubmiddag Woensdag',1,'[{`added`: {}}]',14,1),
	(78,'2020-01-03 12:37:43.648858','9','Competitie V1 - Clubavond Vrijdag',1,'[{`added`: {}}]',14,1),
	(79,'2020-01-03 12:38:29.034906','10','Competitie W1 - Clubmiddag Woensdag',1,'[{`added`: {}}]',14,1),
	(80,'2020-01-09 09:25:42.263026','65','magnus_activities | activity subscription | canSetSpotted',1,'[{`added`: {}}]',8,1),
	(81,'2020-01-09 09:26:15.964517','66','magnus_activities | activity subscription | canSetRegistered',1,'[{`added`: {}}]',8,1),
	(82,'2020-01-09 13:16:39.821849','66','magnus_activities | activity subscription | canSetRegistered',2,'[{`changed`: {`fields`: [`codename`]}}]',8,1),
	(83,'2020-01-09 13:16:55.126254','65','magnus_activities | activity subscription | canSetSpotted',2,'[{`changed`: {`fields`: [`codename`]}}]',8,1),
	(84,'2020-01-11 15:09:22.556199','4','jochem.aubel@gmail.com',1,'[{`added`: {}}]',1,1),
	(85,'2020-01-11 15:09:42.971342','5','daanaubel@gmail.com',1,'[{`added`: {}}]',1,1),
	(86,'2020-01-11 15:10:18.627781','8','jochem.aubel@gmail.com - Koen Aubel',1,'[{`added`: {}}]',6,1),
	(87,'2020-01-11 15:10:27.112990','8','jochem.aubel@gmail.com - Koen Aubel',2,'[{`changed`: {`fields`: [`isPrimary`]}}]',6,1),
	(88,'2020-01-11 15:10:44.851025','9','jochem.aubel@gmail.com - Daan Aubel',1,'[{`added`: {}}]',6,1),
	(89,'2020-01-11 15:11:49.907990','10','daanaubel@gmail.com - Daan Aubel',1,'[{`added`: {}}]',6,1),
	(90,'2020-01-11 15:12:20.059959','6','koenaubel@gmail.com',1,'[{`added`: {}}]',1,1),
	(91,'2020-01-11 15:12:42.445808','11','koenaubel@gmail.com - Koen Aubel',1,'[{`added`: {}}]',6,1),
	(92,'2020-01-30 16:25:55.533184','67','auth | recht | isCoordinator',1,'[{`added`: {}}]',8,1),
	(93,'2020-01-30 16:26:08.777602','3','hakraai@gmail.com',2,'[{`changed`: {`fields`: [`user_permissions`]}}]',1,1),
	(94,'2020-02-05 09:49:18.893432','1','Vrijdagavond training - Trainingen',2,'[{`changed`: {`fields`: [`location`]}}]',14,1),
	(95,'2020-02-05 10:59:05.371623','84','magnus_members | member role | memberGroupAdmin',1,'[{`added`: {}}]',8,1),
	(96,'2020-02-05 10:59:47.101813','3','Coördinator',2,'[{`changed`: {`fields`: [`permissions`]}}]',5,1),
	(97,'2020-02-05 11:03:47.535050','21','Dirk Kraaijpoel - Groep E1 - Coördinator',1,'[{`added`: {}}]',4,1),
	(98,'2020-02-05 19:36:23.938249','85','magnus_members | member group | memberGroupSupervisor',1,'[{`added`: {}}]',8,1),
	(99,'2020-02-05 19:36:55.450421','6','Supervisor',1,'[{`added`: {}}]',5,1),
	(100,'2020-02-05 19:38:15.853045','22','Hidde Kraaijoel - Competitiegroep V1 - Supervisor',1,'[{`added`: {}}]',4,1),
	(101,'2020-02-05 19:45:23.732267','85','magnus_members | member group | memberGroupSupervisorR',2,'[{`changed`: {`fields`: [`name`, `codename`]}}]',8,1),
	(102,'2020-02-05 19:45:57.464915','85','magnus_members | member group | memberGroupSupervisor',2,'[{`changed`: {`fields`: [`name`, `codename`]}}]',8,1),
	(103,'2020-02-19 19:19:29.669362','1','A103',2,'[{`changed`: {`fields`: [`description`]}}]',17,1),
	(104,'2020-02-20 18:52:59.303839','3','Bessel Bakker - Groep D1 - Trainer - Ja',3,'',16,1),
	(105,'2020-02-23 21:50:30.666773','17','Kwik Duck - Groep E1 - Speler - Present- Spotted',3,'',16,1),
	(106,'2020-02-23 21:50:30.673849','16','Kwik Duck - Groep D1 - Speler - Present- Spotted',3,'',16,1),
	(107,'2020-02-23 21:50:30.679484','15','Bessel Bakker - Competitiegroep V1 - Competitieleider - Present- Spotted',3,'',16,1),
	(108,'2020-02-23 21:50:30.684398','14','Donald Duck - Groep E1 - Speler - Present- Spotted',3,'',16,1),
	(109,'2020-02-23 21:50:30.689233','13','Donald Duck - Groep E1 - Trainer - Present- Spotted',3,'',16,1),
	(110,'2020-02-23 21:50:30.694202','12','Daan Aubel - Competitiegroep V1 - Speler - Present- Spotted',3,'',16,1),
	(111,'2020-02-23 21:50:30.699094','11','Bessel Bakker - Groep D1 - Trainer - Present- Spotted',3,'',16,1),
	(112,'2020-02-23 21:50:30.704176','10','Daan Aubel - Groep E1 - Speler - Not present- Spotted',3,'',16,1),
	(113,'2020-02-23 21:50:30.707744','9','Hidde Kraaijoel - Groep E1 - Trainer - Not present- Spotted',3,'',16,1),
	(114,'2020-02-23 21:50:30.716946','8','Hidde Kraaijoel - Groep D1 - Speler - Not present- Spotted',3,'',16,1),
	(115,'2020-02-23 21:50:30.724383','7','Koen Aubel - Competitiegroep V1 - Speler - Present- Spotted',3,'',16,1),
	(116,'2020-02-23 21:50:30.729792','6','Koen Aubel - Groep D1 - Speler - Present- Spotted',3,'',16,1),
	(117,'2020-02-23 21:50:30.735230','5','Hidde Kraaijoel - Competitiegroep V1 - Supervisor - Not present- Spotted',3,'',16,1),
	(118,'2020-02-23 21:50:30.740335','4','Hidde Kraaijoel - Competitiegroep V1 - Speler - Not present- Spotted',3,'',16,1),
	(119,'2020-02-23 21:50:30.745266','2','Kwak Duck - Groep D1 - Speler - Present- Not spotted',3,'',16,1),
	(120,'2020-02-23 21:50:30.752640','1','Donald Duck - Groep E1 - Trainer - Not present- Not spotted',3,'',16,1),
	(121,'2020-02-27 21:55:33.617808','21','Dirk Kraaijpoel - Groep E1 - Coördinator',3,'',4,1),
	(122,'2020-02-27 21:56:50.810890','35','Dirk Kraaijpoel - Groep E1 - Coördinator - Present- Spotted',3,'',16,1),
	(123,'2020-02-27 21:57:10.080311','21','Dirk Kraaijpoel - Groep E1 - Coördinator',3,'',4,1),
	(124,'2020-02-28 21:12:40.914734','22','Hidde Kraaijoel - Competitiegroep V1 - Supervisor',3,'',4,1),
	(125,'2020-03-01 14:44:27.066316','23','Dirk Kraaijpoel - Competitiegroep W1 - Competitieleider',1,'[{`added`: {}}]',4,1),
	(126,'2020-03-01 14:58:42.911445','24','Dirk Kraaijpoel - Groep W1 - Trainer',1,'[{`added`: {}}]',4,1),
	(127,'2020-03-14 12:34:04.378834','1','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(128,'2020-03-14 12:36:51.498275','1','Invite: jochem.aubel@tele2.nl',2,'[{`changed`: {`fields`: [`members`]}}]',21,1),
	(129,'2020-03-14 12:37:12.333432','1','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(130,'2020-03-14 14:16:38.340321','2','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(131,'2020-03-14 14:41:24.423134','3','Invite: jochem.aubel@tele3.nl',1,'[{`added`: {}}]',21,1),
	(132,'2020-03-14 14:46:50.765174','3','Invite: jochem.aubel@tele4.nl',2,'[{`changed`: {`fields`: [`email`]}}]',21,1),
	(133,'2020-03-14 14:49:10.304340','4','Invite: jochem.aubel@tele3.nl',1,'[{`added`: {}}]',21,1),
	(134,'2020-03-14 15:35:47.697554','5','Invite: jochem.aubel@tele5.nl',1,'[{`added`: {}}]',21,1),
	(135,'2020-03-14 15:36:26.028209','5','Invite: jochem.aubel@tele5.nl',3,'',21,1),
	(136,'2020-03-14 15:36:26.039663','4','Invite: jochem.aubel@tele3.nl',3,'',21,1),
	(137,'2020-03-14 15:36:26.048053','3','Invite: jochem.aubel@tele4.nl',3,'',21,1),
	(138,'2020-03-14 15:36:26.058059','2','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(139,'2020-03-14 15:36:46.108698','6','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(140,'2020-03-14 15:40:40.929628','6','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(141,'2020-03-14 15:47:24.566336','7','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(142,'2020-03-14 16:32:50.338970','7','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(143,'2020-03-14 16:34:51.950592','8','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(144,'2020-03-14 16:40:48.900204','8','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(145,'2020-03-14 16:43:07.044876','9','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(146,'2020-03-15 14:20:26.263760','6','koenaubel@gmail.com',2,'[]',1,1),
	(147,'2020-03-15 18:28:32.329484','15','jochem.aubel@tele11.com',3,'',1,1),
	(148,'2020-03-15 18:28:32.349938','14','jochem.aubel@tele7.com',3,'',1,1),
	(149,'2020-03-15 18:28:32.361782','13','jochem.aubel@tele9.com',3,'',1,1),
	(150,'2020-03-15 18:28:32.371173','12','jochem.aubel@tele8.com',3,'',1,1),
	(151,'2020-03-15 18:28:32.383503','11','jochem.aubel@tele6.com',3,'',1,1),
	(152,'2020-03-15 18:28:32.396663','10','jochem.aubel@tele5.com',3,'',1,1),
	(153,'2020-03-15 18:28:32.407503','9','jochem.aubel@tele4.com',3,'',1,1),
	(154,'2020-03-15 18:28:32.418209','8','jochem.aubel@tele3.com',3,'',1,1),
	(155,'2020-03-15 18:28:32.428419','7','jochem.aubel@tele2.com',3,'',1,1),
	(156,'2020-03-15 19:41:54.637660','9','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(157,'2020-03-15 19:42:13.836820','10','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(158,'2020-03-15 20:15:30.833839','10','Invite: jochem.aubel@tele2.nl',3,'',21,1),
	(159,'2020-03-15 20:16:06.636365','17','jochem.aubel@tele3.com',3,'',1,1),
	(160,'2020-03-15 20:16:06.652926','16','jochem.aubel@tele2.com',3,'',1,1),
	(161,'2020-03-15 20:16:21.967428','18','jochem.aubel@tele3.nl',2,'[{`changed`: {`fields`: [`email`]}}]',1,1),
	(162,'2020-03-15 20:16:41.564940','11','Invite: jochem.aubel@tele2.nl',1,'[{`added`: {}}]',21,1),
	(163,'2020-03-15 21:29:35.905559','12','Invite: jochem.aubel@perflectie.nl',1,'[{`added`: {}}]',21,1),
	(164,'2020-03-15 21:32:14.100225','13','Invite: jochem@perflectie.nl',1,'[{`added`: {}}]',21,1),
	(165,'2020-03-15 22:11:33.754588','14','Invite: jochem@dialog.nl',1,'[{`added`: {}}]',21,1),
	(166,'2020-03-16 19:51:13.313001','14','Invite: jochem@dialog.nl',3,'',21,1),
	(167,'2020-03-16 19:51:13.327212','13','Invite: jochem@perflectie.nl',3,'',21,1),
	(168,'2020-03-16 19:51:13.335337','12','Invite: jochem.aubel@perflectie.nl',3,'',21,1),
	(169,'2020-03-16 19:51:41.357046','15','Invite: jochem.aubel@perflectie.nl',1,'[{`added`: {}}]',21,1),
	(170,'2020-03-16 21:00:26.415918','16','Invite: jochem.aubel@dialog.nl',1,'[{`added`: {}}]',21,1),
	(171,'2020-04-05 15:32:42.166763','1','Groep D1',2,'[{`changed`: {`fields`: [`parentMemberGroup`]}}]',3,1),
	(172,'2020-04-19 09:23:46.524484','16','Invite: jochem.aubel@dialog.nl',3,'',9,1),
	(173,'2020-04-19 09:23:46.531186','15','Invite: jochem.aubel@perflectie.nl',3,'',9,1),
	(174,'2020-04-19 09:23:46.532632','11','Invite: jochem.aubel@tele2.nl',3,'',9,1),
	(175,'2020-04-19 10:26:24.091515','19','Invite: besselb@yahoo.com',1,'[{\"added\": {}}]',9,1),
	(176,'2020-04-19 11:08:33.377718','19','Invite: besselb@yahoo.com',3,'',9,1),
	(177,'2020-04-19 11:08:47.414235','20','Invite: besselb@yahoo.com',1,'[{\"added\": {}}]',9,1),
	(178,'2020-04-19 11:13:35.319037','20','Invite: besselb@yahoo.com',3,'',9,1),
	(179,'2020-04-19 11:13:40.721174','20','Invite: besselb@yahoo.com',3,'',9,1),
	(180,'2020-04-19 11:21:05.078982','21','Invite: besselb@yahoo.com',1,'[{\"added\": {}}]',9,1),
	(181,'2020-04-19 11:34:26.942298','22','Invite: jochem.aubel@tele2.nl',1,'[{\"added\": {}}]',9,1),
	(182,'2020-04-21 13:58:31.557758','21','Invite: besselb@yahoo.com',3,'',9,1),
	(183,'2020-04-21 13:59:01.166702','23','Invite: besselb@yahoo.com',1,'[{\"added\": {}}]',9,1),
	(184,'2020-04-21 18:42:00.984323','24','Invite: koenaubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(185,'2020-04-21 18:43:38.883276','21','jochem.aubel@dialog.nl',3,'',1,1),
	(186,'2020-04-21 18:43:38.885628','20','jochem.aubel@perflectie.nl',3,'',1,1),
	(187,'2020-04-21 18:43:38.887364','19','jochem.aubel@tele2.nl',3,'',1,1),
	(188,'2020-04-21 18:43:38.890329','18','jochem.aubel@tele3.nl',3,'',1,1),
	(189,'2020-04-21 18:43:38.892461','6','koenaubel@gmail.com',3,'',1,1),
	(190,'2020-04-21 18:43:38.894384','5','daanaubel@gmail.com',3,'',1,1),
	(191,'2020-04-21 18:45:55.381234','25','Invite: daanaubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(192,'2020-04-24 07:21:18.020367','7','Speler',1,'[{\"added\": {}}]',7,1),
	(193,'2020-05-06 20:53:32.067301','9','Competitie V1_ - Clubavond Vrijdag',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,2),
	(194,'2020-05-06 20:53:58.513843','9','Competitie V1 - Clubavond Vrijdag',2,'[]',12,2),
	(195,'2020-05-10 20:44:22.911461','12','Dit veld is vereist. (Hoofdactiviteit)',2,'[]',12,2),
	(196,'2020-06-06 13:14:22.954202','24','Dirk Kraaijpoel - Groep W1 - 3',2,'[{\"changed\": {\"fields\": [\"MemberRole\"]}}]',6,1),
	(197,'2020-06-06 13:14:35.073675','22','Hidde Kraaijoel - Competitiegroep V1 - 3',2,'[{\"changed\": {\"fields\": [\"MemberRole\"]}}]',6,1),
	(198,'2020-06-06 13:14:40.874121','20','Bas van Esch - Groep W1 - 5',2,'[{\"changed\": {\"fields\": [\"MemberRole\"]}}]',6,1),
	(199,'2020-06-10 21:49:16.916833','4','jochem.aubel@gmail.com',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',1,2),
	(200,'2020-06-10 21:49:29.818659','3','hakraai@gmail.com',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',1,2),
	(201,'2020-06-18 09:35:48.912899','9','Bessel2 Bakker',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',45,1),
	(202,'2020-06-18 09:36:05.125996','9','Bessel Bakker',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',45,1),
	(203,'2020-06-23 11:23:12.360894','1','fssfsf',1,'[{\"added\": {}}]',42,1),
	(204,'2020-06-23 11:24:46.081901','1','fssfsf',3,'',42,1),
	(205,'2020-06-23 12:11:12.895219','10','Nicolette Mulder',2,'[]',45,1),
	(206,'2020-06-23 12:11:25.690547','7','Hidde Kraaijoel',2,'[{\"changed\": {\"fields\": [\"Birthday\"]}}]',45,1),
	(207,'2020-06-30 14:00:37.938486','1','Test',1,'[{\"added\": {}}]',51,2),
	(208,'2020-08-12 07:54:14.500530','25','Invite: daanaubel@gmail.com',3,'',9,1),
	(209,'2020-08-12 07:54:14.502012','24','Invite: koenaubel@gmail.com',3,'',9,1),
	(210,'2020-08-12 07:54:14.503007','23','Invite: besselb@yahoo.com',3,'',9,1),
	(211,'2020-08-12 07:54:14.503959','22','Invite: jochem.aubel@tele2.nl',3,'',9,1),
	(212,'2020-08-12 08:24:43.898872','22',' ',3,'',45,1),
	(213,'2020-08-12 08:24:43.900891','21',' ',3,'',45,1),
	(214,'2020-08-12 08:24:43.901929','20',' ',3,'',45,1),
	(215,'2020-08-12 08:24:43.902862','19',' ',3,'',45,1),
	(216,'2020-08-12 08:24:43.903861','18',' ',3,'',45,1),
	(217,'2020-08-12 08:24:43.904811','17',' ',3,'',45,1),
	(218,'2020-08-12 08:24:43.905727','16',' ',3,'',45,1),
	(219,'2020-08-12 08:24:43.906640','15',' ',3,'',45,1),
	(220,'2020-08-12 08:24:43.907749','14',' ',3,'',45,1),
	(221,'2020-08-12 08:24:43.909644','13',' ',3,'',45,1),
	(222,'2020-08-12 08:24:43.910945','12',' ',3,'',45,1),
	(223,'2020-08-12 08:25:07.391010','23','Sandra (Staff)',1,'[{\"added\": {}}]',45,1),
	(224,'2020-08-12 08:25:35.248491','26','Invite: jochem.aubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(225,'2020-08-12 08:27:45.987919','26','Invite: jochem.aubel@gmail.com',2,'[{\"changed\": {\"fields\": [\"UserMember\"]}}]',9,1),
	(226,'2020-08-12 08:28:35.858746','26','Invite: jochem.aubel@gmail.com',3,'',9,1),
	(227,'2020-08-12 08:28:55.638377','27','Invite: jochem.aubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(228,'2020-08-12 08:30:44.379672','27','Invite: jochem.aubel@gmail.com',3,'',9,1),
	(229,'2020-08-12 08:31:24.976690','25','Sandra (Staff)',2,'[{\"changed\": {\"fields\": [\"Password\", \"Staff status\"]}}]',1,1),
	(230,'2020-08-12 08:32:13.246457','44','Sandra (Staff) - Sandra (Staff)',3,'',8,1),
	(231,'2020-08-12 08:46:22.707810','14','TEST training - TEST clubavond vrijdag',2,'[{\"changed\": {\"fields\": [\"ParentActivity\"]}}]',12,1),
	(232,'2020-08-12 08:46:38.579179','15','TEST competitie - TEST clubavond vrijdag',2,'[{\"changed\": {\"fields\": [\"ParentActivity\"]}}]',12,1),
	(233,'2020-08-12 08:47:46.007097','24','Tinus (Trainer)',1,'[{\"added\": {}}]',45,1),
	(234,'2020-08-12 08:48:26.490323','28','Invite: jochem.aubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(235,'2020-08-12 08:49:16.819269','28','Invite: jochem.aubel@gmail.com',3,'',9,1),
	(236,'2020-08-12 08:49:38.027239','29','Invite: jochem.aubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(237,'2020-08-12 11:13:07.834726','47','Tinus (Trainer) - Tinus (Trainer)',3,'',8,1),
	(238,'2020-08-12 11:18:49.754645','1','primary_staff',1,'[{\"added\": {}}]',18,1),
	(239,'2020-08-12 11:19:10.147537','24','Tinus (Trainer)',2,'[{\"changed\": {\"fields\": [\"Roles\"]}}]',45,1),
	(240,'2020-08-12 11:19:31.254086','25','Tanja (Teamleider)',1,'[{\"added\": {}}]',45,1),
	(241,'2020-08-12 11:20:03.273109','26','Leo (Lid)',1,'[{\"added\": {}}]',45,1),
	(242,'2020-08-12 11:20:17.352109','27','Odette (Ouder)',1,'[{\"added\": {}}]',45,1),
	(243,'2020-08-12 11:20:37.738649','28','Aad (Aanmeldtafel)',1,'[{\"added\": {}}]',45,1),
	(244,'2020-08-12 11:20:59.526630','29','Eduard (Externe competitieleider)',1,'[{\"added\": {}}]',45,1),
	(245,'2020-08-12 11:21:15.341086','30','Cor (Competitieleider)',1,'[{\"added\": {}}]',45,1),
	(246,'2020-08-12 11:21:27.247080','31','Huub (Hulptrainer)',1,'[{\"added\": {}}]',45,1),
	(247,'2020-08-12 11:22:26.822142','29','Invite: jochem.aubel@gmail.com',3,'',9,1),
	(248,'2020-08-12 11:23:05.918987','30','Invite: jochem.aubel@tele2.nl',1,'[{\"added\": {}}]',9,1),
	(249,'2020-08-12 11:23:27.364500','31','Invite: jochem.aubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(250,'2020-08-12 11:23:52.460378','32','Invite: jochem.aubel@perflectie.nl',1,'[{\"added\": {}}]',9,1),
	(251,'2020-08-12 11:24:11.884570','33','Invite: jochem.aubel@dialog.nl',1,'[{\"added\": {}}]',9,1),
	(252,'2020-08-12 11:24:34.280885','34','Invite: jochem@perflectie.nl',1,'[{\"added\": {}}]',9,1),
	(253,'2020-08-12 11:24:53.256053','35','Invite: jochem@dialog.nl',1,'[{\"added\": {}}]',9,1),
	(254,'2020-08-12 11:28:16.132406','35','Invite: jochem@dialog.nl',3,'',9,1),
	(255,'2020-08-12 11:28:16.136858','34','Invite: jochem@perflectie.nl',3,'',9,1),
	(256,'2020-08-12 11:28:16.139253','33','Invite: jochem.aubel@dialog.nl',3,'',9,1),
	(257,'2020-08-12 11:28:16.141391','32','Invite: jochem.aubel@perflectie.nl',3,'',9,1),
	(258,'2020-08-12 11:28:16.144046','31','Invite: jochem.aubel@gmail.com',3,'',9,1),
	(259,'2020-08-12 11:28:16.146481','30','Invite: jochem.aubel@tele2.nl',3,'',9,1),
	(260,'2020-08-12 11:28:37.401494','36','Invite: jochem.aubel@gmail.com',1,'[{\"added\": {}}]',9,1),
	(261,'2020-08-12 11:30:27.462682','5','Externe competitie',1,'[{\"added\": {}}]',13,1),
	(262,'2020-08-12 11:30:59.598209','126','TEST externe competitie',1,'[{\"added\": {}}]',5,1),
	(263,'2020-08-12 11:31:15.642105','4','TEST clubavond',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',5,1),
	(264,'2020-08-12 11:32:20.049589','127','TEST magnus team',1,'[{\"added\": {}}]',5,1),
	(265,'2020-08-12 11:33:25.075792','16','TEST teamwedstrijd (Hoofdactiviteit)',1,'[{\"added\": {}}]',12,1),
	(266,'2020-08-12 11:33:37.987939','12','Dit veld is vereist. (Hoofdactiviteit)',3,'',12,1),
	(267,'2020-08-12 11:34:53.492291','126','TEST externe competitie',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',5,1),
	(268,'2020-08-12 11:37:21.050733','123','de op een na beste groep',3,'',5,1),
	(269,'2020-08-12 11:37:21.052209','122','De beste groep',3,'',5,1),
	(270,'2020-08-12 11:37:32.876056','121','Actieve rol',3,'',5,1),
	(271,'2020-08-12 11:38:27.473420','44','Eduard (Externe competitieleider) - TEST externe competitie - 90',1,'[{\"added\": {}}]',6,1),
	(272,'2020-08-12 11:38:47.921172','45','Huub (Hulptrainer) - TEST trainingsgroep - 70',1,'[{\"added\": {}}]',6,1),
	(273,'2020-08-12 11:39:25.135909','46','Aad (Aanmeldtafel) - TEST clubavond - 3',1,'[{\"added\": {}}]',6,1),
	(274,'2020-08-12 11:40:27.847401','59','Leo (Lid) - Leo (Lid)',3,'',8,1),
	(275,'2020-08-12 11:40:35.112312','55','Tanja (Teamleider) - Tanja (Teamleider)',3,'',8,1),
	(276,'2020-08-12 11:40:39.997600','53','Cor (Competitieleider) - Cor (Competitieleider)',3,'',8,1),
	(277,'2020-08-12 11:40:44.756526','51','Aad (Aanmeldtafel) - Aad (Aanmeldtafel)',3,'',8,1),
	(278,'2020-08-12 11:40:50.794071','49','Huub (Hulptrainer) - Huub (Hulptrainer)',3,'',8,1),
	(279,'2020-08-12 11:42:36.576933','61','Eduard (Externe competitieleider) - Eduard (Externe competitieleider)',3,'',8,1),
	(280,'2020-08-15 07:15:14.739898','25','Sandra (Staff)',2,'[]',1,1),
	(281,'2020-08-15 07:37:13.243167','25','Sandra (Staff)',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',1,1),
	(282,'2020-08-15 07:42:07.918005','25','Sandra (Staff)',2,'[{\"changed\": {\"fields\": [\"Password\", \"Email\"]}}]',1,1),
	(283,'2020-08-15 07:54:17.013199','25','Sandra (Staff)',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',1,1),
	(284,'2020-08-15 08:55:00.801889','25','Sandra (Staff)',2,'[{\"changed\": {\"fields\": [\"Password\", \"Email\"]}}]',1,1),
	(285,'2020-08-29 12:17:15.270418','22','NIEUWE training',3,'',24,1),
	(286,'2020-08-31 18:12:35.901435','151','NIEUWE groep',3,'',5,1),
	(287,'2020-08-31 18:12:35.903132','150','NIEUWE groep',3,'',5,1),
	(288,'2020-08-31 18:12:35.904135','149','NIEUWE groep',3,'',5,1),
	(289,'2020-09-09 18:52:23.655560','45','AAA BBB',3,'',45,1),
	(290,'2020-09-09 18:52:23.660905','44','AAA BBB',3,'',45,1),
	(291,'2020-09-09 18:52:23.663217','43','AAA BBB',3,'',45,1),
	(292,'2020-09-09 18:52:23.664663','42','AAA BBB',3,'',45,1),
	(293,'2020-09-09 18:52:48.389322','155','NIEUWE groep (bewerkt)',3,'',5,1),
	(294,'2020-09-09 18:52:48.391105','154','LEDEN groep',3,'',5,1),
	(295,'2020-09-09 18:52:48.392979','153','NIEUWE groep (bewerkt)',3,'',5,1),
	(296,'2020-09-09 18:52:48.394231','152','NIEUWE groep (bewerkt)',3,'',5,1);

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`)
VALUES
	(16,'admin','logentry'),
	(18,'auth','group'),
	(17,'auth','permission'),
	(19,'contenttypes','contenttype'),
	(23,'magnus_accounts','account'),
	(29,'magnus_accounts','historicalaccount'),
	(12,'magnus_activities','activity'),
	(10,'magnus_activities','activitymemberviewmodel'),
	(15,'magnus_activities','activitysubscription'),
	(14,'magnus_activities','childactivityviewmodel'),
	(32,'magnus_activities','historicalactivity'),
	(31,'magnus_activities','historicalactivitysubscription'),
	(13,'magnus_activities','old_activitytype'),
	(11,'magnus_activities','parentactivityviewmodel'),
	(30,'magnus_invitations','historicalinvitation'),
	(9,'magnus_invitations','invitation'),
	(40,'magnus_members','address'),
	(41,'magnus_members','authorization'),
	(42,'magnus_members','city'),
	(3,'magnus_members','groupmemberviewmodel'),
	(47,'magnus_members','historicaladdress'),
	(49,'magnus_members','historicalauthorization'),
	(28,'magnus_members','historicalmember'),
	(48,'magnus_members','historicalmemberdetail'),
	(39,'magnus_members','historicalmembergroup'),
	(38,'magnus_members','historicalmembergrouprole'),
	(46,'magnus_members','historicalmemberpicture'),
	(50,'magnus_members','historicaltag'),
	(4,'magnus_members','member'),
	(45,'magnus_members','memberdetail'),
	(5,'magnus_members','membergroup'),
	(6,'magnus_members','membergrouprole'),
	(43,'magnus_members','memberpicture'),
	(7,'magnus_members','memberrole'),
	(44,'magnus_members','tag'),
	(8,'magnus_members','usermember'),
	(51,'magnus_shared','city'),
	(27,'magnus_shared','historicallocation'),
	(2,'magnus_shared','location'),
	(35,'magnus_training','chessposition'),
	(36,'magnus_training','chesspositiontraining'),
	(25,'magnus_training','chess_position'),
	(33,'magnus_training','historicalchessposition'),
	(37,'magnus_training','historicalchesspositiontraining'),
	(34,'magnus_training','historicaltraining'),
	(24,'magnus_training','training'),
	(1,'magnus_users','appuser'),
	(26,'magnus_users','historicalappuser'),
	(20,'sessions','session'),
	(21,'token_blacklist','blacklistedtoken'),
	(22,'token_blacklist','outstandingtoken');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`)
VALUES
	(1,'contenttypes','0001_initial','2020-05-04 14:20:07.715672'),
	(2,'contenttypes','0002_remove_content_type_name','2020-05-04 14:20:07.776422'),
	(3,'auth','0001_initial','2020-05-04 14:20:07.852947'),
	(4,'auth','0002_alter_permission_name_max_length','2020-05-04 14:20:07.980203'),
	(5,'auth','0003_alter_user_email_max_length','2020-05-04 14:20:07.993255'),
	(6,'auth','0004_alter_user_username_opts','2020-05-04 14:20:08.014164'),
	(7,'auth','0005_alter_user_last_login_null','2020-05-04 14:20:08.026234'),
	(8,'auth','0006_require_contenttypes_0002','2020-05-04 14:20:08.027930'),
	(9,'auth','0007_alter_validators_add_error_messages','2020-05-04 14:20:08.040739'),
	(10,'auth','0008_alter_user_username_max_length','2020-05-04 14:20:08.062691'),
	(11,'auth','0009_alter_user_last_name_max_length','2020-05-04 14:20:08.075246'),
	(12,'auth','0010_alter_group_name_max_length','2020-05-04 14:20:08.094305'),
	(13,'auth','0011_update_proxy_permissions','2020-05-04 14:20:08.113058'),
	(14,'magnus_users','0001_initial','2020-05-04 14:20:08.173791'),
	(15,'admin','0001_initial','2020-05-04 14:20:08.366105'),
	(16,'admin','0002_logentry_remove_auto_add','2020-05-04 14:20:08.579290'),
	(17,'admin','0003_logentry_add_action_flag_choices','2020-05-04 14:20:08.610403'),
	(18,'magnus_shared','0001_initial','2020-05-04 14:20:08.633290'),
	(19,'magnus_members','0001_initial','2020-05-04 14:20:08.766129'),
	(20,'magnus_activities','0001_initial','2020-05-04 14:20:09.071434'),
	(21,'magnus_activities','0002_auto_20200425_0929','2020-05-04 14:20:09.499898'),
	(22,'magnus_invitations','0001_initial','2020-05-04 14:20:09.537206'),
	(23,'magnus_invitations','0002_auto_20200425_0929','2020-05-04 14:20:09.649877'),
	(24,'magnus_members','0002_auto_20200425_0929','2020-05-04 14:20:10.102060'),
	(25,'sessions','0001_initial','2020-05-04 14:20:10.129847'),
	(26,'token_blacklist','0001_initial','2020-05-04 14:20:10.238797'),
	(27,'token_blacklist','0002_outstandingtoken_jti_hex','2020-05-04 14:20:10.286636'),
	(28,'token_blacklist','0003_auto_20171017_2007','2020-05-04 14:20:10.379815'),
	(29,'token_blacklist','0004_auto_20171017_2013','2020-05-04 14:20:10.429238'),
	(30,'token_blacklist','0005_remove_outstandingtoken_jti','2020-05-04 14:20:10.466577'),
	(31,'token_blacklist','0006_auto_20171017_2113','2020-05-04 14:20:10.508402'),
	(32,'token_blacklist','0007_auto_20171017_2214','2020-05-04 14:20:10.599970'),
	(38,'magnus_accounts','0001_initial','2020-05-04 15:20:15.826020'),
	(39,'magnus_training','0001_initial','2020-05-05 20:49:13.000487'),
	(40,'magnus_accounts','0002_historicalaccount','2020-05-06 09:58:44.840316'),
	(41,'magnus_shared','0002_historicallocation','2020-05-06 09:58:45.390691'),
	(42,'magnus_members','0003_historicalmember','2020-05-06 09:58:45.603291'),
	(43,'magnus_activities','0003_historicalactivity_historicalactivitysubscription','2020-05-06 09:58:45.824103'),
	(44,'magnus_invitations','0003_historicalinvitation','2020-05-06 09:58:45.987236'),
	(45,'magnus_training','0002_historicalchess_position_historicaltraining','2020-05-06 09:58:46.276334'),
	(46,'magnus_users','0002_historicalappuser','2020-05-06 09:58:46.615142'),
	(47,'magnus_training','0003_auto_20200506_2046','2020-05-06 20:49:38.764101'),
	(48,'magnus_training','0004_auto_20200506_2100','2020-05-06 20:49:39.041129'),
	(49,'magnus_training','0005_auto_20200506_2123','2020-05-06 20:49:39.758079'),
	(50,'magnus_activities','0004_auto_20200506_2123','2020-05-06 20:49:40.211072'),
	(51,'magnus_accounts','0003_auto_20200507_2046','2020-05-07 19:26:31.314053'),
	(52,'magnus_training','0006_auto_20200507_2046','2020-05-07 19:26:32.909461'),
	(53,'magnus_training','0007_auto_20200507_2101','2020-05-07 19:26:33.801078'),
	(54,'magnus_training','0008_auto_20200507_2123','2020-05-07 19:26:34.088236'),
	(55,'magnus_accounts','0002_auto_20200510_2210','2020-05-10 20:24:44.806796'),
	(56,'magnus_accounts','0003_auto_20200510_2214','2020-05-10 20:24:45.001963'),
	(57,'magnus_activities','0002_auto_20200510_2210','2020-05-10 20:24:45.782651'),
	(58,'magnus_activities','0003_auto_20200510_2214','2020-05-10 20:24:46.191449'),
	(59,'magnus_invitations','0002_auto_20200510_2210','2020-05-10 20:24:46.449208'),
	(60,'magnus_shared','0002_auto_20200510_2210','2020-05-10 20:24:46.586061'),
	(61,'magnus_members','0002_auto_20200510_2210','2020-05-10 20:24:47.336655'),
	(62,'magnus_members','0003_auto_20200510_2214','2020-05-10 20:24:47.769803'),
	(63,'magnus_shared','0003_auto_20200510_2214','2020-05-10 20:24:47.875171'),
	(64,'magnus_training','0002_auto_20200510_2210','2020-05-10 20:26:30.900248'),
	(65,'magnus_members','0004_auto_20200515_1726','2020-05-15 15:34:46.072288'),
	(66,'magnus_invitations','0003_auto_20200515_2025','2020-05-15 18:39:13.417559'),
	(67,'magnus_training','0003_auto_20200516_1722','2020-05-16 15:34:26.365061'),
	(68,'magnus_members','0005_auto_20200524_1538','2020-05-27 12:08:22.297177'),
	(69,'magnus_training','0004_auto_20200524_1538','2020-05-27 12:08:22.445356'),
	(70,'magnus_accounts','0004_auto_20200528_1243','2020-05-28 11:08:54.919299'),
	(71,'magnus_activities','0004_auto_20200528_1243','2020-05-28 11:08:55.304476'),
	(72,'magnus_members','0006_auto_20200528_1240','2020-05-28 11:08:55.455809'),
	(73,'magnus_members','0007_auto_20200528_1243','2020-05-28 11:08:55.672448'),
	(74,'magnus_shared','0004_auto_20200528_1243','2020-05-28 11:08:55.775213'),
	(75,'magnus_training','0005_auto_20200528_1243','2020-05-28 11:08:56.197072'),
	(76,'magnus_activities','0005_auto_20200530_1741','2020-05-30 15:42:29.618356'),
	(77,'magnus_members','0008_auto_20200531_1404','2020-05-31 12:26:03.676037'),
	(78,'magnus_members','0009_auto_20200601_1345','2020-06-01 11:46:30.396718'),
	(79,'magnus_members','0010_member_roles','2020-06-04 21:25:44.448655'),
	(80,'magnus_members','0011_auto_20200605_1428','2020-06-06 13:11:58.280590'),
	(81,'magnus_members','0012_auto_20200612_1448','2020-06-12 12:59:05.231017'),
	(82,'magnus_members','0013_auto_20200618_1018','2020-06-18 09:13:49.736875'),
	(83,'magnus_members','0013_auto_20200618_1025','2020-06-18 09:13:50.118446'),
	(84,'magnus_members','0014_auto_20200618_1120','2020-06-18 09:35:39.187943'),
	(85,'magnus_members','0015_auto_20200619_1121','2020-06-19 10:47:00.128485'),
	(86,'magnus_members','0016_auto_20200621_0941','2020-06-21 07:45:46.567137'),
	(87,'magnus_members','0017_auto_20200623_1406','2020-06-23 12:10:43.875891'),
	(88,'magnus_members','0018_auto_20200628_1208','2020-06-28 10:48:53.548436'),
	(89,'magnus_shared','0005_auto_20200630_1427','2020-06-30 14:35:44.698871'),
	(90,'magnus_members','0019_auto_20200630_1428','2020-06-30 14:35:45.475968'),
	(91,'magnus_activities','0006_auto_20200902_0946','2020-09-02 08:02:57.115457'),
	(92,'magnus_activities','0007_delete_old_activitytype','2020-09-02 08:02:57.129697'),
	(93,'magnus_members','0020_address_city_historicaladdress','2020-09-02 10:54:14.769077'),
	(94,'magnus_members','0021_auto_20200902_1125','2020-09-02 11:32:06.884673'),
	(95,'magnus_training','0006_auto_20200902_0926','2020-09-02 11:32:07.125982'),
	(96,'magnus_invitations','0004_auto_20200806_2236','2020-09-03 10:47:08.246220'),
	(97,'admin','0004_auto_20200102_1254','2020-09-03 15:43:19.381414'),
	(98,'admin','0005_auto_20200102_1325','2020-09-03 15:43:19.592717'),
	(99,'token_blacklist','0008_auto_20200102_1254','2020-09-03 15:43:19.802941'),
	(100,'token_blacklist','0009_auto_20200102_1325','2020-09-03 15:43:20.059611'),
	(101,'magnus_shared','0006_auto_20200905_2036','2020-09-06 18:51:39.554920');

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('087rc8k492zfp32uw6nusym33ezrnh39','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-07-05 15:52:08.723670'),
	('0bkbg1sirg8gfuqvuau40jyfuua8ulca','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-29 18:47:07.767093'),
	('0qegv6fwn9trose9if9x7vuuac99o7m0','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-03-25 16:25:46.669855'),
	('1umtds4rbttizjpgj940adg2j6r62h7k','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-06-25 19:07:15.536519'),
	('2113ss5x2pzveshtx2zprc0hpecigcy4','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-06-09 18:31:29.053221'),
	('2ay9wldqms1gtn09ifg04081eiabejkk','YWZiMGRhNGQ4NTQ0MDQwNTRlZmViZDg3MWIxZWZlMWI1NWM4MDc3OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTkyMWY2OGVkMjc5YzVjYjNmMTY0OGM3ZGUzZWEyZmRiNTNjMjNiIn0=','2020-05-18 15:22:01.905472'),
	('2tt5kuxzlr2l8na03k9es5zup1s3woc2','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-06-11 11:14:17.349905'),
	('31xjy78o4tmn28e10j8r54d52sk58vll','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-05 13:58:13.674856'),
	('4178zkuy3yxnw4wsrwwst36dbh6nplb6','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-24 21:04:10.215108'),
	('5vh64v3qs1pvw819rjmxtzr938expmmr','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-13 08:49:20.103355'),
	('64ahnt8byna9c7su778q3jays4eemxxt','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-09-14 18:12:18.200546'),
	('73rg8nbx29o5o2qeunllnqajb0i9qkee','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-06-09 12:20:50.040598'),
	('73szk1ejryqeforewdd5ycceon093oxc','YWZiMGRhNGQ4NTQ0MDQwNTRlZmViZDg3MWIxZWZlMWI1NWM4MDc3OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTkyMWY2OGVkMjc5YzVjYjNmMTY0OGM3ZGUzZWEyZmRiNTNjMjNiIn0=','2020-06-24 21:48:15.536048'),
	('ao201duka9vllpa5q7g7d7cocckuhck4','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-08-26 07:54:05.342612'),
	('c49b66opxofo59e3ztnn82n91mw3vk2y','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-01-17 11:12:38.621854'),
	('cb9mvk7hjp3ifiaal38vvs2ks0keshjc','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-02-13 16:25:26.465242'),
	('cv5jos0c8qf4cni55wjd29nwe90mtgqx','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-18 18:50:54.033077'),
	('fsabzt0yhyxd96t1kd48c8ds3koy6csq','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-06-25 19:16:09.594756'),
	('huiv5zjgzer7t422kjt4kdzf07kenhet','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-02-20 20:01:33.032183'),
	('i9gre9q10bln1n9tr86t06e9h32eqlnf','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-01-16 13:22:30.719371'),
	('k35pig21v8z9m4n6uc0sm5vief3qo884','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-03 11:33:53.075883'),
	('l5xqcco8i33fj5ftkxp6rzgnhkcawz2l','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-05 10:48:32.803867'),
	('lwwso277fj280u7mdbrc6o86ricjfh4q','YWZiMGRhNGQ4NTQ0MDQwNTRlZmViZDg3MWIxZWZlMWI1NWM4MDc3OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTkyMWY2OGVkMjc5YzVjYjNmMTY0OGM3ZGUzZWEyZmRiNTNjMjNiIn0=','2020-07-14 13:59:53.105202'),
	('m16wpxpmlrhhy8rare7igg292lutdyjs','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-09-12 12:17:05.546152'),
	('okht45j3mk9g5ahq2jnlhlo48g6bfndv','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-03-26 21:26:26.701966'),
	('p1g2uiwepj7ugvy6jcsr6cxsn4gq4b7s','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-06-14 08:33:54.972405'),
	('pyhug3ovly9tbff0az69n64gd7cfl8qc','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-01-17 11:56:07.574031'),
	('rqwuzl8lfs4qt0doxkqymt7cjcida0mt','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-01-25 15:07:24.971967'),
	('rubd4kkbwi706sqc7a2fyitwomnawyvs','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-04-19 15:32:02.259592'),
	('zd5hhpya4hxjobxup7tdmlom1k2n9e1q','NjM4NmI3ODlhYzc0MDYyODdkMzVmZWI1NmJhNmNkYTI1ODBlYWQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjg4YzZmOTQwY2UyNDdkOGNiMGU5ZjVlMDlmZGY3YjM3ZDA0MzhhIn0=','2020-03-05 20:23:01.590217'),
	('zulakrwr890gy9o3sc8xk7wevkb7y825','Yjc4OTM3MzE2Mjg0NmI2M2ZmOTc4YWY3NzQwMTA2ZDQ2N2RjMmVhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOWFiZmEwZDM1YmM4NGQzZmRkODhlNzdmZmU1NDQzMmNlMWY3NjUwIn0=','2020-05-02 14:47:27.609822');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ledenimport
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ledenimport`;

CREATE TABLE `ledenimport` (
  `ail Address` varchar(38) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `lid` varchar(3) DEFAULT NULL,
  `dag` varchar(14) DEFAULT NULL,
  `First Name` varchar(12) DEFAULT NULL,
  `Tussenv` varchar(8) DEFAULT NULL,
  `Last Name` varchar(20) DEFAULT NULL,
  `Tag` varchar(47) DEFAULT NULL,
  `Birthday` varchar(11) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `Bondsnummer` varchar(7) DEFAULT NULL,
  `chesskid_account` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ledenimport` WRITE;
/*!40000 ALTER TABLE `ledenimport` DISABLE KEYS */;

INSERT INTO `ledenimport` (`ail Address`, `memberid`, `lid`, `dag`, `First Name`, `Tussenv`, `Last Name`, `Tag`, `Birthday`, `DateOfBirth`, `Bondsnummer`, `chesskid_account`)
VALUES
	('ana.pandit@gmail.com',3,'lid','\"vr\"','Aayush','','Singh','','11-Aug-2010','2010-08-11','8834815','Onderd-U-Aayush'),
	('sbouziki@hotmail.com',4,'pl3','\"vr\"','Adam','el','Bali','','6-Aug-2011','2011-08-06','',NULL),
	('albert@jezus-komt-terug.nl',5,'','\"vr\"','Albert','','Eikelenboom','\"vw\",\"trainer\", \"tc\"','','0000-00-00','',NULL),
	('katarina2011m@gmail.com',6,'lid','\"wo\"','Alex','','Xu','','31-Jan-2013','2013-01-31','8883292','Magnus-U-Alex'),
	('chi.san@live.nl',7,'lid','\"vr\"','Alex','','Lau','','28-Aug-2009','2009-08-28','8723825','Magnus-L-Alex'),
	('semra_eu@hotmail.com',8,'lid','\"vr\"','Amir','','Argoubi','','1-Dec-2007','2007-12-01','8806600','Magnus-L-Amir'),
	('jbagita@cdpro.sk',9,'lid','\"vr\"','Andras','','Bagita','','16-Sep-2005','2005-09-16','8741832',NULL),
	('sandrakhodabaks@hotmail.com',10,'lid','\"wo\"','Angelisha','','Ramhiet','','13-Apr-2009','2009-04-13','8772016','Magnus-L-Angelisha'),
	('anitakraaij@hotmail.com',11,'','\"vr\"','Anita','','Schoonhoven','\"vw\",\"trainer\",\"toernooi\",\"kamp\", \"st1\", \"ECtl\"','','0000-00-00','',NULL),
	('gloenn@mail.ru',12,'','\"vr\"','Anna','','Matveeva','\"vw\",\"bar\", \"Eng\"','','0000-00-00','',NULL),
	('nic.mulder72@hotmail.com',13,'lid','\"vr\"','Anne','','Mulder','\"vw\", \"trainer\"','27-May-2006','2006-05-27','8630974','Magnus-L-Anne'),
	('annemiek@neisingh.nl',14,'','nvt','Annemiek','','Zeeman','\"oud-vw\"','','0000-00-00','',NULL),
	('anoukubbink@hotmail.com',15,'lid','\"vr\"','Anouk','','Ubbink','','8-Dec-2005','2005-12-08','8596962',NULL),
	('aavandenhurk@vodafonevast.nl',16,'lid','\"ma\",\"vr\"','Arie ','van den ','Hurk','\"vw\", \"trainer\"','28-Oct-1960','1960-10-28','6281682',NULL),
	('arjen@wayam.nl',17,'','\"vr\"','Arjen','','Duursma','\"vw\", \"alg\", \"ECtl\"','','0000-00-00','',NULL),
	('arjen@taktc.nl',18,'','\"vr\"','Arjen','','Crince','\"vw\", \"trainer\",\"ECtl\"','','0000-00-00','',NULL),
	('suba.murugesu@gmail.com',19,'lid','\"vr\"','Arjun','','Murugesu','','26-Jul-2006','2006-07-26','8672213','Magnus-L-Arjun'),
	('a_m_montroos@hotmail.com',20,'','','Arlinda','','Montroos','\"ECtl\"','','0000-00-00','',NULL),
	('annadar@hotmail.com',21,'lid','\"vr\"','Artur','','Darmian','','30-Apr-2007','2007-04-30','8708821','Magnus-L-Artur'),
	('ammu.jyothi@gmail.com',22,'lid','\"vr\"','Avyukt','','Praveen','','11-Jul-2010','2010-07-11','8807392','Magnus-L-Avyukt'),
	('urmila.manniesing@gmail.com',23,'pl3','\"wo\"','Ayla','van der','Bijl','','6-Mar-2013','2013-03-06','',NULL),
	('bas_van_esch@hotmail.com',24,'lid','\"ma\",\"wo\",\"vr\"','Bas','van','Esch','\"vw\",\"trainer\",\"alg\",\"toernooi\", \"st1\"','19-Nov-1965','1965-11-19','6971481',NULL),
	('basvana@yahoo.com',25,'','\"vr\"','Bas','van','Arendonk','\"vw\", \"trainer\"','','0000-00-00','',NULL),
	('jim@habernickel.nl',26,'lid','\"vr\"','Bas ','','Habernickel','','4-Aug-2008','2008-08-04','8772104','Magnus-L-Bas'),
	('b.sam@online.nl',27,'','nvt','Benedikte','','Sam','\"vw\", \"alg\",\"kamp\"','','0000-00-00','',NULL),
	('jmhsmeets@gmail.com',28,'lid','\"vr\"','Bent','','Smeets','','1-Nov-2011','2011-11-01','8807018','Magnus-L-Bent'),
	('berend.snel@gmail.com',29,'','\"vr\"','Berend','','Snel','\"vw\", \"trainer\"','','0000-00-00','',NULL),
	('besselb@yahoo.com',30,'','\"vr\"','Bessel','','Bakker','\"vw\", \"trainer\", \"alg\"','','0000-00-00','',NULL),
	('laurien.kruize@planet.nl',31,'lid','\"vr\"','Bouwe ','','Kruize','','1-May-2006','2006-05-01','8597050','Magnus-L-Bouwe'),
	('maurice.arendse@gmail.com',32,'lid','\"vr\"','Bram','','Arendse','','10-Mar-2006','2006-03-10','8521150','Magnus-L-Bram'),
	('martin.nooteboom@gmail.com',33,'lid','\"vr\"','Bryce','','Nooteboom','','16-Jul-2008','2008-07-16','8683884','Magnus-L-Bryce'),
	('mail@roelgerrits.net',34,'lid','\"wo\"','Casper','','Gerrits','','1-Apr-2013','2013-04-01','8892906','Magnus-U-Casper'),
	('cymhelmer@gmail.com',35,'','nvt','Charlotte','','Helmer','\"oud-vw\"','','0000-00-00','',NULL),
	('crystaljzh@gmail.com',36,'lid','\"vr\"','Chloë','','Chu','','16-Apr-2009','2009-04-16','8772511',NULL),
	('jochem.aubel@gmail.com',37,'lid','\"wo\",\"vr\"','Daan','','Aubel','','17-Jul-2010','2010-07-17','8642469','Magnus-L-Daan2'),
	('m.zelke@casema.nl',38,'lid','\"vr\"','Dagomar','','Zelke','','6-Oct-2007','2007-10-06','8614628','Magnus-L-Dagomar'),
	('bahroos@yahoo.com',39,'lid','\"vr\"','Dakshh','','Bahroos','','10-Jan-2011','2011-01-10','8860489','Magnus-L-Dakshh'),
	('lasina8@hotmail.com',40,'lid','\"vr\"','Danilyo','','Boschker','','10-Sep-2007','2007-09-10','8699416','Magnus-L-Danilyo'),
	('eduard.brinkman@ziggo.nl',41,'lid','\"vr\"','David','','Brinkman','','27-Aug-2005','2005-08-27','8526771',NULL),
	('dwsonai@hotmail.com',42,'','\"wo\",\"vr\"','Debbie','','Ramdien-Sonai','\"ECtl\"','','0000-00-00','',NULL),
	('d.tjiam@xs4all.nl',43,'lid','\"ma\",\"vr\"','Dharma','','Tjiam','\"vw\", \"bestuur\",\"trainer\",\"maandag\",\"EC\", \"st1\"','4-Jan-1970','1970-01-04','6383751',NULL),
	('d_lubout@hotmail.com',44,'lid','\"vr\"','Dijus','','Lubout','','13-Aug-2010','2010-08-13','8892807','Magnus-U-Dijus'),
	('hakraai@gmail.com',45,'lid','\"ma\",\"vr\"','Dirk','','Kraaijpoel','\"vw\", \"bestuur\",\"trainer\",\"tc\", \"st1\"','28-Apr-1974','1974-04-28','8527937',NULL),
	('alyannemanon@gmail.com',46,'lid','\"wo\"','Dorian ','','Jansen','','2-Feb-2013','2013-02-02','8892895','Magnus-U-Dorian'),
	('fayzf@hotmail.com',47,'lid','\"vr\"','Emmie','','Chen','\"Eng\"','24-Nov-2013','2013-11-24','8892796','Magnus-U-Emmie'),
	('gisellyhenrik@gmail.com',48,'lid','\"vr\"','Eric ','','Flamink','','11-Feb-2010','2010-02-11','8879409','Magnus-D-Eric'),
	('erikstoppels@outlook.com',49,'','\"ma\",\"vr\"','Erik','','Stoppels','\"vw\", \"bestuur\",\"toernooi\",\"vrijdag\"','','0000-00-00','',NULL),
	('svveenbatenburg@gmail.com',50,'lid','\"vr\"','Eva','van','Veen','','18-Apr-2010','2010-04-18','8774051','Magnus-L-Eva'),
	('varkie power <felicitymathu@gmail.com>',51,'','\"vr\"','Felicity','','Mathu','\"vw\", \"trainer\"','','0000-00-00','',NULL),
	('m-f.hamoen@outlook.com',52,'lid','\"vr\"','Felix','','Hamoen','','1-Sep-2006','2006-09-01','8605036','Magnus-D-Felix'),
	('student333@isutrecht.nl',53,'lid','\"vr\"','Finn','','Doyle','\"Eng\"','18-Nov-2006','2006-11-18','8774282','Magnus-D-Finn'),
	('frank.wilschut@gmail.com',54,'lid','\"ma\",\"vr\"','Frank','','Wilschut','\"vw\", \"trainer\"','4-Mar-1980','1980-03-04','8396993',NULL),
	('glotamloi@gmail.com',55,'','\"vr\"','Geneviève','','Lo Tam Loi','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('K_g_georgakis@yahoo.gr',56,'lid','\"wo\"','Georgios','','Georgakis','','9-Apr-2011','2011-04-09','8892884','Magnus-U-Georgios'),
	('gertjan.van.manen@kersentuin.net',57,'lid','\"ma\",\"vr\"','Gertjan','van','Manen','\"vw\",\"trainer\", \"tc\", \"st1\"','4-Feb-1968','1968-02-04','8658023',NULL),
	('avemariken@gmail.com',58,'lid','\"wo\",\"vr\"','Gijs','','Losenoord','','27-Oct-2011','2011-10-27','8812441',NULL),
	('hannekebarth@me.com',59,'','nvt','Hanneke ','','Barth','\"oud-vw\"','','0000-00-00','',NULL),
	('ch.haseeb.ahmad@hotmail.com',60,'pl3','\"vr\"','Haseeb','','Akhtar','\"Eng\"','24-May-2008','2008-05-24','',NULL),
	('hiddekraaijpoel@gmail.com',61,'lid','\"vr\"','Hidde','','Kraaijpoel','\"vw\", \"trainer\"','17-Jul-2007','2007-07-17','8559111','Magnus-L-Hidde'),
	('hyke_bandsma@hotmail.com',62,'','\"vr\"','Hyke','','Bandsma','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('gloenn@mail.ru',63,'lid','\"vr\"','Iakov','','Matveeva','\"Eng\"','7-Jun-2012','2012-06-07','8870070','Magnus-U-Iakov'),
	('roderickloeber@live.nl',64,'lid','\"vr\"','Ilco','','Loeber','','31-Mar-2010','2010-03-31','8795567','Magnus-L-Ilco'),
	('sbouziki@hotmail.com',65,'pl3','\"vr\"','Imraan','el','Bali','','26-Jan-2013','2013-01-26','',NULL),
	('pelangi_care@yahoo.com',66,'lid','x','Inara','','Tran','','16-Sep-2009','2009-09-16','8828490','Magnus-D-Inara'),
	('inge_coolen@hotmail.com',67,'','\"vr\"','Inge','','Coolen','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('inge@habernickel.com',68,'','nvt','Inge','van der','Weijden','\"oud-vw\", \"alg\"','','0000-00-00','',NULL),
	('antisceptic@zoho.com',69,'','\"vr\"','Inna','','Erbakirci','\"Eng\"','','0000-00-00','',NULL),
	('isabellastoppels@outlook.com',70,'lid','\"vr\"','Isabella','','Stoppels','','17-Nov-2008','2008-11-17','8759905','Magnus-L-Isabella'),
	('astridanandita@gmail.com',71,'lid','\"vr\"','Isafara','','Gergin','','2-Feb-2008','2008-02-02','8621591','Magnus-L-Isafara'),
	('ivothonon@gmail.com',72,'','\"vr\"','Ivo','','Thonon','\"ECtl\"','','0000-00-00','',NULL),
	('inge_coolen@hotmail.com',73,'lid','\"vr\"','Jaap','van ','Helvert','','1-May-2009','2009-05-01','8597677',NULL),
	('jacco.lind@yahoo.com',74,'','\"vr\"','Jacco','','Lind','\"vw\", \"trainer\", \"st1\"','','0000-00-00','',NULL),
	('j.schoenmakers@meandernet.nl',75,'lid','\"wo\"','Jan','','Schoenmakers','','8-Jul-2011','2011-07-08','8879365','Magnus-D-Jan2'),
	('janjesseveling@gmail.com',76,'lid','\"wo\"','Jan','','Veling','','23-Oct-2006','2006-10-23','8761192','Magnus-D-Jan'),
	('janniezondervan@hotmail.com',77,'','\"vr\"','Jannie','','Zondervan','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('jasper@bonenkamp.nl',78,'lid','\"ma\"','Jasper','','Bonenkamp','\"vw\", \"alg\", \"trainer\", \"st1\"','21-Mar-2002','2002-03-21','8538662',NULL),
	('burne@hotmail.com',79,'lid','\"vr\"','Jayden','','Burne','','5-Mar-2009','2009-03-05','8848169','Magnus-D-Jayden2'),
	('claire@timetoknow.nl',80,'lid','\"vr\"','Jeanette','','Eikelenboom','','22-Aug-2009','2009-08-22','8687327','Magnus-L-Jeanette'),
	('dianaosna@hotmail.com',81,'lid','\"wo\"','Jelle','van','Putten','','30-Jul-2010','2010-07-30','8781014','Magnus-D-Jelle2'),
	('hyke_bandsma@hotmail.com',82,'lid','\"vr\"','Jelle','van','Haaften','','11-Oct-2010','2010-10-11','8687283','Magnus-L-Jelle'),
	('famvanaken@icloud.com',83,'lid','\"ma\",\"vr\"','Jelmer','van','Aken','\"vw\", \"ECtl\"','18-Dec-2002','2002-12-18','8599646',NULL),
	('ruthubbink@hotmail.co.uk',84,'lid','\"wo\",\"vr\"','Jesper','','Ubbink','','23-Feb-2010','2010-02-23','8703827','Magnus-L-Jesper'),
	('glen.ren@hotmail.com',85,'lid','\"vr\"','Jillano','','Wachter','','15-Dec-2006','2006-12-15','8838082','Magnus-D-Jillano'),
	('a_m_montroos@hotmail.com',86,'lid','\"wo\"','Jimmy','','Isabella','','12-Jan-2012','2012-01-12','8831834','Magnus-D-Jimmy'),
	('info@knjr.nl',87,'lid','\"vr\"','Joas','','Meijer','','9-Jun-2010','2010-06-09','8699405','Magnus-L-Joas'),
	('h.j.jurgens@uva.nl',88,'pl3','\"vr\"','Job ','','Jürgens','','23-Dec-2010','2010-12-23','',NULL),
	('jochem.aubel@gmail.com',89,'lid','\"ma\",\"vr\"','Jochem','','Aubel','\"vw\", \"EC\",\"tc\"','3-Jan-1976','1976-01-03','7117924',NULL),
	('jmhsmeets@gmail.com',90,'','\"vr\"','Joep','','Smeets','\"vw\", \"trainer\",  \"ECtl\"','','0000-00-00','',NULL),
	('fam.anhaus@gmail.com',91,'lid','\"vr\"','Jonas','','Anhaus','','1-Nov-2007','2007-11-01','8640082','Magnus-L-Jonas'),
	('jonas.achterberg@gmail.com',92,'lid','\"ma\",\"vr\"','Jonas','','Achterberg','\"vw\", \"trainer\"','31-Dec-2003','2003-12-31','8672235',NULL),
	('jclangev+magnus@gmail.com',93,'pl3','\"vr\"','Jonathan ','','Langeveld','','22-Aug-2011','2011-08-22','',NULL),
	('jasonsonokromo@hotmail.com',94,'lid','\"wo\"','Jordan','','Sonokromo','','27-Mar-2012','2012-03-27','8828435','Magnus-D-Jordan'),
	('crystaljzh@gmail.com',95,'lid','\"vr\"','Justin','','Chu','','1-May-2011','2011-05-01','8772522','Magnus-L-Justin'),
	('kai@taktc.nl',96,'lid','\"vr\"','Kai','','Crince','','1-Jan-2008','2008-01-01','8834848','Magnus-D-Kai'),
	('kasper.snel@gmail.com',97,'lid','\"ma\",\"vr\"','Kasper','','Snel','\"vw\", \"trainer\", \"st1\"','22-Jan-2004','2004-01-22','8513571',NULL),
	('CHBoersma@hotmail.com',98,'','\"wo\"','Kees','','Boersma','\"vw\",\"trainer\"','','0000-00-00','',NULL),
	('info@knjr.nl',99,'','\"vr\"','Klaas','','Meijer','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('jmhsmeets@gmail.com',100,'lid','\"vr\"','Kobe','','Smeets','','4-Jul-2008','2008-07-04','8659420','Magnus-L-Kobe'),
	('anitakraaij@hotmail.com',101,'lid','\"vr\"','Koen','','Schoonhoven','','25-Mar-2013','2013-03-25','8863415','Magnus-D-Koen'),
	('jochem.aubel@gmail.com',102,'lid','\"vr\"','Koen','','Aubel','','13-Jan-2008','2008-01-13','8544778','Magnus-L-Koen'),
	('jeroenselhorst@gmail.com',103,'lid','\"vr\"','Lars','','Selhorst','','23-Feb-2013','2013-02-23','8879354','Magnus-D-Lars'),
	('anitakraaij@hotmail.com',104,'lid','\"ma\",\"vr\"','Laura','','Schoonhoven','\"vw\",\"alg\"','22-Dec-2005','2005-12-22','8513549',NULL),
	('greetjeurban@yahoo.com',105,'lid','\"vr\"','Laurens','al','Michael','','30-Jan-2013','2013-01-30','8892917','Magnus-U-Laurens'),
	('sjoerd@heins.tk',106,'pl3','\"wo\"','Levi en Alex','','Heins en .. ','','','0000-00-00','',NULL),
	('liam@copperlioness.com',107,'lid','\"vr\"','Liam','','Thonon','','16-Dec-2007','2007-12-16','8625606','Magnus-L-Liam'),
	('lucasklein@online.nl',108,'lid','\"ma\",\"vr\"','Lucas','','Klein','\"vw\", \"trainer\"','15-Feb-2004','2004-02-15','8672224',NULL),
	('camiel.roskam@amsterdam.nl',109,'lid','\"vr\"','Luka','','Roskam','','31-Oct-2008','2008-10-31','8759377','Magnus-L-Luka'),
	('irisvangrinsven@gmail.com',110,'lid','\"vr\"','Maarten','','Huurnink','','24-Aug-2011','2011-08-24','8754240','Magnus-L-Maarten'),
	('irmpy1@gmail.com',111,'lid','\"vr\"','Mads','','Kok','','18-May-2007','2007-05-18','8682487','Magnus-D-Mads'),
	('esther.erik-jan@hotmail.com',112,'lid','\"wo\"','Maikel','','Kok','','24-Jul-2007','2007-07-24','8828446','Magnus-D-Maikel'),
	('russonero13@gmail.com',113,'lid','\"vr\"','Maksim','','Lebedev','\"Eng\"','4-Dec-2012','2012-12-04','8827005','Magnus-L-Maksim'),
	('dheymans@me.com',114,'lid','\"vr\"','Manu','','Monfils','','25-Mar-2011','2011-03-25','8870081','Magnus-D-Manu'),
	('markschoonhoven17@gmail.com',115,'lid','\"wo\",\"vr\"','Mark','','Schoonhoven','\"trainer\", \"st1\"','1-Jul-2004','2004-07-01','8513560',NULL),
	('marleen.maarleveld@gmail.com',116,'','','Marleen','','Maarleveld','\"ECtl\"','','0000-00-00','',NULL),
	('kaprima@live.nl',117,'lid','\"vr\"','Maruti','','Changur','','22-Jan-2009','2009-01-22','8786822','Magnus-L-Maruti'),
	('m_ziepzeerder@hotmail.com',118,'lid','\"ma\",\"vr\"','Matthijs','','Ziepzeerder','\"vw\", \"trainer\"','24-Jul-2010','2010-07-24','7297884',NULL),
	('maurice.arendse@gmail.com',119,'','\"vr\"','Maurice','','Arendse','\"vw\", \"alg\",\"EC\"','','0000-00-00','',NULL),
	('desmond@ziggo.nl',120,'lid','\"vr\"','Max','','Haneveer','','20-May-2007','2007-05-20','8831878','Magnus-L-Max'),
	('camiel.roskam@amsterdam.nl',121,'lid','\"vr\"','Max','','Roskam','','11-May-2010','2010-05-11','8759388','Magnus-L-Max2'),
	('verhoefgricelda@gmail.com',122,'lid','\"vr\"','Maxime','','Verhoef','','7-Feb-2011','2011-02-07','8879376','Magnus-D-Maxime'),
	('ardeheij@hotmail.com',123,'lid','\"vr\"','Mees','de','Heij','','25-Apr-2008','2008-04-25','8596918','Magnus-L-Mees'),
	('antisceptic@zoho.com',124,'lid','\"vr\"','Meryem','','Erbakirci','\"Eng\"','9-Sep-2011','2011-09-09','8873359','Magnus-D-Meryem'),
	('vikramdas77@gmail.com',125,'lid','\"wo\"','Mihika','','Vikram','','9-Jun-2011','2011-06-09','8812760','Onderd-U-Mihika'),
	('vikram.ambar@gmail.com',126,'lid','\"wo\"','Mihir','','Vikram','','9-Jun-2011','2011-06-09','8812771','Onderd-U-Mihir'),
	('mikakleibeuker@icloud.com',127,'lid','\"vr\"','Mika','','Kleibeuker','\"vw\", \"trainer\"','24-Jun-2007','2007-06-24','8577228','Magnus-D-Mika'),
	('natarajan.kandasamy@gmail.com',128,'lid','\"vr\"','Muhilan','','Natarajan','\"Eng\"','1-May-2012','2012-05-01','8810725','Magnus-D-Muhilan'),
	('sathish.murugesan@gmail.com',129,'lid','\"wo\"','Mukilan','','Sathish Kumar','\"Eng\"','11-Apr-2012','2012-04-11','8879332','ISU-U-Mukilan'),
	('agor02@gmail.com',130,'lid','\"vr\"','Mukilan','','Agoramoorthy','\"Eng\"','26-Nov-2011','2011-11-26','8807381','Magnus-L-Mukilan'),
	('simalay21@yahoo.com',131,'lid','\"vr\"','Mylo','','Georgopoulos','','27-May-2011','2011-05-27','8807183',NULL),
	('katarina2011m@gmail.com',132,'lid','\"wo\"','Nicholas','','Xu','','3-Apr-2010','2010-04-03','8883281','Magnus-U-Nicholas'),
	('nic.mulder72@hotmail.com',133,'','\"vr\"','Nicolette','','Mulder','\"vw\",\"alg\",\"redactie\"','','0000-00-00','',NULL),
	('ndvvliet@gmail.com',134,'lid','\"wo\"','Niels','van','Vliet','','26-Aug-2011','2011-08-26','8880003','Magnus-D-Niels'),
	('nils@neisingh.nl',135,'lid','\"vr\"','Nils','','Neisingh','','11-Apr-2005','2005-04-11','8523504',NULL),
	('gloenn@mail.ru',136,'lid','\"vr\"','Nina','','Matveeva','\"Eng\"','26-Dec-2009','2009-12-26','8870059','Magnus-D-Nina'),
	('dunja-paolo@outlook.com',137,'pl2','\"wo\"','Noah','','Paolo','','28-Jul-2013','2013-07-28','',NULL),
	('haenvanveen@ziggo.nl',138,'lid','\"vr\"','Noah','van','Veen','','30-Jul-2007','2007-07-30','8751127','Magnus-L-Noah2'),
	('hexilaba@yahoo.com',139,'','x','Noah','','Stoffer','','24-Jun-2010','2010-06-24','8718457',NULL),
	('lagerwerf.s@gmail.com',140,'lid','\"vr\"','Nout','','Wieberdink','','13-Dec-2010','2010-12-13','8835101','Magnus-D-Nout'),
	('o.a.bollaart@gmail.com',141,'lid','\"wo\"','Olivier','','Bollaart','','19-Sep-2011','2011-09-19','8892928','Magnus-U-Olivier'),
	('ewmdelange@gmail.com',142,'pl3','\"wo\"','Peer ','','Serto','','27-Nov-2009','2009-11-27','',NULL),
	('sandraoudejans@hotmail.com',143,'lid','\"wo\"','Philippe','','Boels','','27-Sep-2009','2009-09-27','8863426','Magnus-D-Philippe'),
	('hercohuurnink@gmail.com',144,'lid','\"vr\"','Pieter','','Huurnink','','2-Jul-2009','2009-07-02','8760136','Magnus-D-Pieter'),
	('polle@zingendetand.nl',145,'lid','\"vr\"','Polle','van','Arendonk','','24-Feb-2008','2008-02-24','8640720','Magnus-L-Polle'),
	('quentin@eker.nl',146,'lid','\"vr\"','Quentin','','Eker','','5-Aug-2008','2008-08-05','8687294','Magnus-D-Quentin'),
	('greetjeurban@yahoo.com',147,'lid','\"vr\"','Rein','al','Michael','','30-Jan-2013','2013-01-30','8892785','Magnus-U-Rein'),
	('janniezondervan@hotmail.com',148,'lid','\"vr\"','Rens ','','Kuiper','','27-Jul-2008','2008-07-27','8812254','Magnus-L-Rens'),
	('gandhinxt@gmail.com',149,'pl3','\"vr\"','Riddhi ','','Gandhi','\"Eng\"','25-Jun-2007','2007-06-25','',NULL),
	('sbpksk@gmail.com',150,'lid','\"wo\"','Rishaan','','Baboeram Panday','','5-Dec-2010','2010-12-05','8859400','Tweesp-M-Rishaan'),
	('mikkererajesh@gmail.com',151,'lid','\"vr\"','Rishi','','Rajesh','\"Eng\"','5-Apr-2012','2012-04-05','8892840','Magnus-U-Rishi'),
	('royke_24@hotmail.com',152,'lid','\"wo\"','Rivano','','Ramhiet','','10-Jun-2011','2011-06-10','8772027','Magnus-D-Rivano'),
	('lweltevreden@hotmail.com',153,'lid','x','Robin','','Weltevreden','','7-Mar-2009','2009-03-07','8828688',NULL),
	('yvonneyu@gmail.com',154,'lid','\"vr\"','Robin','','Zhang','','24-Nov-2008','2008-11-24','8713804','Magnus-L-Robin'),
	('roderickloeber@live.nl',155,'','\"vr\"','Roderick','','Loeber','','','0000-00-00','',NULL),
	('aurontnt@hotmail.com',156,'','\"vr\"','Ron','van','Oudenallen','\"vw\", \"trainer\", \"ECtl\"','','0000-00-00','',NULL),
	('besselb@yahoo.com',157,'pl3','\"vr\"','Roos','','Bakker','','27-Oct-2013','2013-10-27','',NULL),
	('rozemarijn.van.oudenallen@outlook.com',158,'lid','\"vr\"','Rozemarijn','van','Oudenallen','','6-Mar-2010','2010-03-06','8717918','Magnus-L-Rozemarij'),
	('ruthubbink@hotmail.co.uk',159,'','nvt','Ruth','','Ubbink','\"vw\", \"ECtl\"','','0000-00-00','',NULL),
	('dwsonai@hotmail.com',160,'lid','\"wo\"','Ryan','','Ramdien','','9-Aug-2010','2010-08-09','8722637','Magnus-D-Ryan'),
	('bakouri@soverin.net',161,'lid','\"vr\"','Saladin','','Bakouri','','19-Oct-2010','2010-10-19','8767297','Magnus-D-Saladin'),
	('bakouri@soverin.net',162,'lid','\"vr\"','Salman','','Bakouri','','24-Dec-2012','2012-12-24','8836157','Magnus-D-Salman'),
	('claire@timetoknow.nl',163,'lid','\"vr\"','Salome','','Eikelenboom','','14-Dec-2006','2006-12-14','8687338','Magnus-L-Salome'),
	('leoniehuisman@gmail.com',164,'','x','Sam','','Groenewoud','','25-Dec-2008','2008-12-25','8767550',NULL),
	('muserrefcelik@gmail.com',165,'lid','\"wo\"','Sami','','Karakaya','','18-May-2011','2011-05-18','8828413','Magnus-D-Sami'),
	('albert@jezus-komt-terug.nl',166,'lid','\"vr\"','Samuel','','Eikelenboom','','14-Dec-2004','2004-12-14','8671366',NULL),
	('s.vanegmond@infinitodesign.nl',167,'lid','\"ma\"','Sander','van','Egmond','','22-Jun-1973','1973-06-22','8658001',NULL),
	('',168,'','\"wo\"','Sandra','','Ramhiet','\"vw\",\"alg\"','','0000-00-00','',NULL),
	('saskia@koroc.nl',169,'','\"vr\"','Saskia','','Bosman','\"vw\", \"bestuur\",\"vrijdag\" ','8-Dec-1971','1971-12-08','8795149',NULL),
	('juke_nina@hotmail.com',170,'lid','\"vr\"','Sean','','Bolks','','5-Dec-2010','2010-12-05','8826642','Magnus-L-Sean'),
	('shavkatabc@yahoo.com',171,'lid','\"vr\"','Shahram','','Kholmatov','\"Eng\"','7-Feb-2010','2010-02-07','8860159','Boomga-U-Shahram'),
	('sbpksk@gmail.com',172,'lid','\"wo\"','Shariesh','','Baboeram Panday','\"Eng\"','3-Sep-2012','2012-09-03','8861380','Magnus-L-Shariesh'),
	('Navin@navin.nl',173,'lid','\"wo\"','Shiven','','Kisoensingh','','8-May-2011','2011-05-08','8836168','Magnus-D-Shiven'),
	('glotamloi@gmail.com',174,'lid','\"vr\"','Sibren','van','Riel','','25-Apr-2012','2012-04-25','8835211','Magnus-D-Sibren'),
	('Siebe.van.manen@gmail.com',175,'lid','\"ma\",\"vr\"','Siebe','van','Manen','\"vw\", \"trainer\", \"st1\"','10-Feb-2003','2003-02-10','8523339',NULL),
	('pedijkman@gmail.com',176,'lid','\"wo\"','Sietse','','Dijkman','','7-Apr-2009','2009-04-07','8825135','Magnus-D-Sietse'),
	('sietsebosman1@gmail.com',177,'lid','\"vr\"','Sietse','','Bosman','\"vw\",\"alg\"','9-Jan-2005','2005-01-09','8513472',NULL),
	('huisman.erik@gmail.com',178,'lid','\"vr\"','Simon','','Huisman','','16-Mar-2009','2009-03-16','8827016','Magnus-L-Simon'),
	('singhtanu2229@gmail.com',179,'pl3','\"vr\"','Siyona','','Singh','\"Eng\"','22-May-2011','2011-05-22','',NULL),
	('mikkererajesh@gmail.com',180,'lid','\"vr\"','Sonali','','Rajesh','','5-Apr-2012','2012-04-05','8892829','Magnus-U-Sonali'),
	('verhoefgricelda@gmail.com',181,'lid','\"vr\"','Sophie','','Verhoef','','1-Sep-2012','2012-09-01','8879376','Magnus-D-Sophie'),
	('carlaroosje@gmail.com',182,'lid','\"wo\"','Stefan','','Winkel','','21-May-2011','2011-05-21','8879596','Magnus-D-Stefan'),
	('famvanaken@icloud.com',183,'','nvt','Stephen','van','Aken','\"oud-vw\"','','0000-00-00','',NULL),
	('a.gaasenbeek@gmail.com',184,'','x','Steve','','Gaasenbeek','','10-May-2010','2010-05-10','8774249',NULL),
	('heomoi78@yahoo.com',185,'pl3','\"wo\"','Steven ','','Nguyen','\"Eng\"','15-Apr-2013','2013-04-15','',NULL),
	('dwsonai@hotmail.com',186,'lid','\"vr\"','Steven ','','Ramdien','','30-Jan-2008','2008-01-30','8722626','Magnus-D-Steven'),
	('marije.smelik@gmail.com',187,'lid','\"vr\"','Stijn','','Smelik','','10-May-2007','2007-05-10','8863668','Magnus-D-Stijn'),
	('m_ziepzeerder@hotmail.com',188,'lid','\"vr\"','Stijn','','Ziepzeerder','','24-Jul-2010','2010-07-24','8805753','Magnus-L-Stijn2'),
	('inge_coolen@hotmail.com',189,'lid','\"vr\"','Stijn','van','Helvert','','12-Aug-2010','2010-08-12','8672246','Magnus-L-Stijn'),
	('fam.hsia@gmail.com',190,'lid','x','Sui Ying','','Hsia','','23-Jan-2010','2010-01-23','8740886','Magnus-L-SuiYing'),
	('Natarajan.Kandasamy@gmail.com',191,'lid','\"vr\"','Sushanth','','Natarajan Sangeetha','\"Eng\"','5-Aug-2007','2007-08-05','8803993','Magnus-L-Sushanth'),
	('tessa.verhaegh@hotmail.com',192,'','nvt','Tessa','','Verhaegh','\"vw\",\"alg\"','','0000-00-00','',NULL),
	('marleen.maarleveld@gmail.com',193,'lid','\"vr\"','Teun','','Leenen','','14-Jan-2007','2007-01-14','8640104','Magnus-D-Teun'),
	('moniqueluyendijk@kpnmail.nl',194,'lid','\"vr\"','Thijs','','Brabers','','13-Apr-2005','2005-04-13','8547220',NULL),
	('eduard.brinkman@ziggo.nl',195,'lid','\"vr\"','Thomas','','Brinkman','','11-Oct-2007','2007-10-11','8605014','Magnus-D-Thomas'),
	('m_kleinhans@hotmail.com',196,'lid','\"vr\"','Tibbe','','Sietinga','','9-Jun-2007','2007-06-09','8657429','tibbe_'),
	('tiesjansen0807@gmail.com',197,'lid','\"vr\"','Ties','','Jansen','\"vw\", \"trainer\"','8-Jul-2007','2007-07-08','8640060','Magnus-L-Ties'),
	('kimdjansen@hotmail.nl',198,'lid','\"vr\"','Tijn','van de ','Geer','','12-Jul-2008','2008-07-12','8810758',NULL),
	('ljvanboxtel@googlemail.com',199,'lid','\"wo\"','Tim','van','Boxtel','','18-Feb-2010','2010-02-18','8709217','Magnus-D-Tim'),
	('martijn77vanzwam@hotmail.com',200,'lid','\"wo\"','Timo','van','Zwam','','21-Apr-2009','2009-04-21','8771994','Magnus-D-Timo'),
	('bert_herngreen@yahoo.com',201,'lid','\"vr\"','Timo','','Herngreen','','28-Nov-2004','2004-11-28','8588855',NULL),
	('lanzhang2003@gmail.com',202,'lid','\"wo\"','Timon','van','Hoogstraten','','13-Aug-2012','2012-08-13','8838005','Magnus-D-Timon'),
	('info@infinitodesign.nl',203,'lid','\"vr\"','Tom','van','Egmond','\"ECtl\"','5-Feb-2007','2007-02-05','8558154','Magnus-D-Tom'),
	('a_m_montroos@hotmail.com',204,'lid','\"wo\"','Tommy','','Isabella','','9-Sep-2010','2010-09-09','8831834','Magnus-D-Tommy'),
	('ayhan.yucel@outlook.com',205,'lid','\"vr\"','Tuna','','Yucel','','24-Jun-2010','2010-06-24','8767253','Magnus-L-Tuna'),
	('tygo@taktc.nl',206,'lid','\"vr\"','Tygo','','Crince','','9-Nov-2009','2009-11-09','8812914','Magnus-D-Tygo2'),
	('Lindadegroot_8@hotmail.com',207,'lid','\"vr\"','Tygo','van','Loenen','','26-Jun-2011','2011-06-26','8860445','Magnus-D-Tygo'),
	('v.dogan2011@hotmail.com',208,'lid','\"vr\"','Vefa','','Dogan','\"alg\"','19-Sep-2011','2011-09-19','8796172','Magnus-D-Vefa'),
	('victorstoppels@outlook.com',209,'lid','\"vr\"','Victor','','Stoppels','','25-Mar-2011','2011-03-25','8759894','Magnus-D-Victor'),
	('viggojans@gmail.com',210,'lid','\"vr\"','Viggo','','Jans','','14-Jan-2009','2009-01-14','8828457','Magnus-D-Viggo'),
	('singaravadivelu@gmail.com',211,'lid','\"vr\"','Vishaal','','Singaradivelu','\"Eng\"','15-May-2010','2010-05-15','8809691',NULL),
	('wfmvdlinden@gmail.com',212,'','\"vr\"','Wendy','van der','Linden','\"vw\",\"alg\", \"Ectl\"','','0000-00-00','',NULL),
	('ouders@wayam.nl',213,'lid','\"vr\"','Wietse ','','Duursma','','23-Jan-2006','2006-01-23','8578548',NULL),
	('sandravandenbrom@hotmail.com',214,'lid','\"wo\",\"vr\"','Yannick','','Visscher','\"vw\", \"trainer\"','10-Feb-2005','2005-02-10','8630963',NULL),
	('o_denisenko@yahoo.com',215,'pl3','\"vr\"','Yaroslav','','Denysenko','\"Eng\"','8-Feb-2010','2010-02-08','',NULL),
	('raj.kmb@gmail.com',216,'pl3','\"vr\"','Yashas ','','Konganahosur Mathada','\"Eng\"','17-Mar-2009','2009-03-17','',NULL),
	('yorick@wayam.nl',217,'lid','\"ma\",\"vr\"','Yorick ','','Duursma','\"vw\", \"trainer\"','23-Jan-2006','2006-01-23','8578229',NULL),
	('frankjeuken@hotmail.com',218,'lid','\"wo\"','Yuan','','Jeuken','','25-Aug-2009','2009-08-25','8820339','Magnus-D-Yuan'),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('ana.pandit@gmail.com',3,'lid','\"vr\"','Aayush','','Singh','','11-Aug-2010','2010-08-11','8834815','Onderd-U-Aayush'),
	('sbouziki@hotmail.com',4,'pl3','\"vr\"','Adam','el','Bali','','6-Aug-2011','2011-08-06','',NULL),
	('albert@jezus-komt-terug.nl',5,'','\"vr\"','Albert','','Eikelenboom','\"vw\",\"trainer\", \"tc\"','','0000-00-00','',NULL),
	('katarina2011m@gmail.com',6,'lid','\"wo\"','Alex','','Xu','','31-Jan-2013','2013-01-31','8883292','Magnus-U-Alex'),
	('chi.san@live.nl',7,'lid','\"vr\"','Alex','','Lau','','28-Aug-2009','2009-08-28','8723825','Magnus-L-Alex'),
	('semra_eu@hotmail.com',8,'lid','\"vr\"','Amir','','Argoubi','','1-Dec-2007','2007-12-01','8806600','Magnus-L-Amir'),
	('jbagita@cdpro.sk',9,'lid','\"vr\"','Andras','','Bagita','','16-Sep-2005','2005-09-16','8741832',NULL),
	('sandrakhodabaks@hotmail.com',10,'lid','\"wo\"','Angelisha','','Ramhiet','','13-Apr-2009','2009-04-13','8772016','Magnus-L-Angelisha'),
	('anitakraaij@hotmail.com',11,'','\"vr\"','Anita','','Schoonhoven','\"vw\",\"trainer\",\"toernooi\",\"kamp\", \"st1\", \"ECtl\"','','0000-00-00','',NULL),
	('gloenn@mail.ru',12,'','\"vr\"','Anna','','Matveeva','\"vw\",\"bar\", \"Eng\"','','0000-00-00','',NULL),
	('nic.mulder72@hotmail.com',13,'lid','\"vr\"','Anne','','Mulder','\"vw\", \"trainer\"','27-May-2006','2006-05-27','8630974','Magnus-L-Anne'),
	('annemiek@neisingh.nl',14,'','nvt','Annemiek','','Zeeman','\"oud-vw\"','','0000-00-00','',NULL),
	('anoukubbink@hotmail.com',15,'lid','\"vr\"','Anouk','','Ubbink','','8-Dec-2005','2005-12-08','8596962',NULL),
	('aavandenhurk@vodafonevast.nl',16,'lid','\"ma\",\"vr\"','Arie ','van den ','Hurk','\"vw\", \"trainer\"','28-Oct-1960','1960-10-28','6281682',NULL),
	('arjen@wayam.nl',17,'','\"vr\"','Arjen','','Duursma','\"vw\", \"alg\", \"ECtl\"','','0000-00-00','',NULL),
	('arjen@taktc.nl',18,'','\"vr\"','Arjen','','Crince','\"vw\", \"trainer\",\"ECtl\"','','0000-00-00','',NULL),
	('suba.murugesu@gmail.com',19,'lid','\"vr\"','Arjun','','Murugesu','','26-Jul-2006','2006-07-26','8672213','Magnus-L-Arjun'),
	('a_m_montroos@hotmail.com',20,'','','Arlinda','','Montroos','\"ECtl\"','','0000-00-00','',NULL),
	('annadar@hotmail.com',21,'lid','\"vr\"','Artur','','Darmian','','30-Apr-2007','2007-04-30','8708821','Magnus-L-Artur'),
	('ammu.jyothi@gmail.com',22,'lid','\"vr\"','Avyukt','','Praveen','','11-Jul-2010','2010-07-11','8807392','Magnus-L-Avyukt'),
	('urmila.manniesing@gmail.com',23,'pl3','\"wo\"','Ayla','van der','Bijl','','6-Mar-2013','2013-03-06','',NULL),
	('bas_van_esch@hotmail.com',24,'lid','\"ma\",\"wo\",\"vr\"','Bas','van','Esch','\"vw\",\"trainer\",\"alg\",\"toernooi\", \"st1\"','19-Nov-1965','1965-11-19','6971481',NULL),
	('basvana@yahoo.com',25,'','\"vr\"','Bas','van','Arendonk','\"vw\", \"trainer\"','','0000-00-00','',NULL),
	('jim@habernickel.nl',26,'lid','\"vr\"','Bas ','','Habernickel','','4-Aug-2008','2008-08-04','8772104','Magnus-L-Bas'),
	('b.sam@online.nl',27,'','nvt','Benedikte','','Sam','\"vw\", \"alg\",\"kamp\"','','0000-00-00','',NULL),
	('jmhsmeets@gmail.com',28,'lid','\"vr\"','Bent','','Smeets','','1-Nov-2011','2011-11-01','8807018','Magnus-L-Bent'),
	('berend.snel@gmail.com',29,'','\"vr\"','Berend','','Snel','\"vw\", \"trainer\"','','0000-00-00','',NULL),
	('besselb@yahoo.com',30,'','\"vr\"','Bessel','','Bakker','\"vw\", \"trainer\", \"alg\"','','0000-00-00','',NULL),
	('laurien.kruize@planet.nl',31,'lid','\"vr\"','Bouwe ','','Kruize','','1-May-2006','2006-05-01','8597050','Magnus-L-Bouwe'),
	('maurice.arendse@gmail.com',32,'lid','\"vr\"','Bram','','Arendse','','10-Mar-2006','2006-03-10','8521150','Magnus-L-Bram'),
	('martin.nooteboom@gmail.com',33,'lid','\"vr\"','Bryce','','Nooteboom','','16-Jul-2008','2008-07-16','8683884','Magnus-L-Bryce'),
	('mail@roelgerrits.net',34,'lid','\"wo\"','Casper','','Gerrits','','1-Apr-2013','2013-04-01','8892906','Magnus-U-Casper'),
	('cymhelmer@gmail.com',35,'','nvt','Charlotte','','Helmer','\"oud-vw\"','','0000-00-00','',NULL),
	('crystaljzh@gmail.com',36,'lid','\"vr\"','Chloë','','Chu','','16-Apr-2009','2009-04-16','8772511',NULL),
	('jochem.aubel@gmail.com',37,'lid','\"wo\",\"vr\"','Daan','','Aubel','','17-Jul-2010','2010-07-17','8642469','Magnus-L-Daan2'),
	('m.zelke@casema.nl',38,'lid','\"vr\"','Dagomar','','Zelke','','6-Oct-2007','2007-10-06','8614628','Magnus-L-Dagomar'),
	('bahroos@yahoo.com',39,'lid','\"vr\"','Dakshh','','Bahroos','','10-Jan-2011','2011-01-10','8860489','Magnus-L-Dakshh'),
	('lasina8@hotmail.com',40,'lid','\"vr\"','Danilyo','','Boschker','','10-Sep-2007','2007-09-10','8699416','Magnus-L-Danilyo'),
	('eduard.brinkman@ziggo.nl',41,'lid','\"vr\"','David','','Brinkman','','27-Aug-2005','2005-08-27','8526771',NULL),
	('dwsonai@hotmail.com',42,'','\"wo\",\"vr\"','Debbie','','Ramdien-Sonai','\"ECtl\"','','0000-00-00','',NULL),
	('d.tjiam@xs4all.nl',43,'lid','\"ma\",\"vr\"','Dharma','','Tjiam','\"vw\", \"bestuur\",\"trainer\",\"maandag\",\"EC\", \"st1\"','4-Jan-1970','1970-01-04','6383751',NULL),
	('d_lubout@hotmail.com',44,'lid','\"vr\"','Dijus','','Lubout','','13-Aug-2010','2010-08-13','8892807','Magnus-U-Dijus'),
	('hakraai@gmail.com',45,'lid','\"ma\",\"vr\"','Dirk','','Kraaijpoel','\"vw\", \"bestuur\",\"trainer\",\"tc\", \"st1\"','28-Apr-1974','1974-04-28','8527937',NULL),
	('alyannemanon@gmail.com',46,'lid','\"wo\"','Dorian ','','Jansen','','2-Feb-2013','2013-02-02','8892895','Magnus-U-Dorian'),
	('fayzf@hotmail.com',47,'lid','\"vr\"','Emmie','','Chen','\"Eng\"','24-Nov-2013','2013-11-24','8892796','Magnus-U-Emmie'),
	('gisellyhenrik@gmail.com',48,'lid','\"vr\"','Eric ','','Flamink','','11-Feb-2010','2010-02-11','8879409','Magnus-D-Eric'),
	('erikstoppels@outlook.com',49,'','\"ma\",\"vr\"','Erik','','Stoppels','\"vw\", \"bestuur\",\"toernooi\",\"vrijdag\"','','0000-00-00','',NULL),
	('svveenbatenburg@gmail.com',50,'lid','\"vr\"','Eva','van','Veen','','18-Apr-2010','2010-04-18','8774051','Magnus-L-Eva'),
	('varkie power <felicitymathu@gmail.com>',51,'','\"vr\"','Felicity','','Mathu','\"vw\", \"trainer\"','','0000-00-00','',NULL),
	('m-f.hamoen@outlook.com',52,'lid','\"vr\"','Felix','','Hamoen','','1-Sep-2006','2006-09-01','8605036','Magnus-D-Felix'),
	('student333@isutrecht.nl',53,'lid','\"vr\"','Finn','','Doyle','\"Eng\"','18-Nov-2006','2006-11-18','8774282','Magnus-D-Finn'),
	('frank.wilschut@gmail.com',54,'lid','\"ma\",\"vr\"','Frank','','Wilschut','\"vw\", \"trainer\"','4-Mar-1980','1980-03-04','8396993',NULL),
	('glotamloi@gmail.com',55,'','\"vr\"','Geneviève','','Lo Tam Loi','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('K_g_georgakis@yahoo.gr',56,'lid','\"wo\"','Georgios','','Georgakis','','9-Apr-2011','2011-04-09','8892884','Magnus-U-Georgios'),
	('gertjan.van.manen@kersentuin.net',57,'lid','\"ma\",\"vr\"','Gertjan','van','Manen','\"vw\",\"trainer\", \"tc\", \"st1\"','4-Feb-1968','1968-02-04','8658023',NULL),
	('avemariken@gmail.com',58,'lid','\"wo\",\"vr\"','Gijs','','Losenoord','','27-Oct-2011','2011-10-27','8812441',NULL),
	('hannekebarth@me.com',59,'','nvt','Hanneke ','','Barth','\"oud-vw\"','','0000-00-00','',NULL),
	('ch.haseeb.ahmad@hotmail.com',60,'pl3','\"vr\"','Haseeb','','Akhtar','\"Eng\"','24-May-2008','2008-05-24','',NULL),
	('hiddekraaijpoel@gmail.com',61,'lid','\"vr\"','Hidde','','Kraaijpoel','\"vw\", \"trainer\"','17-Jul-2007','2007-07-17','8559111','Magnus-L-Hidde'),
	('hyke_bandsma@hotmail.com',62,'','\"vr\"','Hyke','','Bandsma','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('gloenn@mail.ru',63,'lid','\"vr\"','Iakov','','Matveeva','\"Eng\"','7-Jun-2012','2012-06-07','8870070','Magnus-U-Iakov'),
	('roderickloeber@live.nl',64,'lid','\"vr\"','Ilco','','Loeber','','31-Mar-2010','2010-03-31','8795567','Magnus-L-Ilco'),
	('sbouziki@hotmail.com',65,'pl3','\"vr\"','Imraan','el','Bali','','26-Jan-2013','2013-01-26','',NULL),
	('pelangi_care@yahoo.com',66,'lid','x','Inara','','Tran','','16-Sep-2009','2009-09-16','8828490','Magnus-D-Inara'),
	('inge_coolen@hotmail.com',67,'','\"vr\"','Inge','','Coolen','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('inge@habernickel.com',68,'','nvt','Inge','van der','Weijden','\"oud-vw\", \"alg\"','','0000-00-00','',NULL),
	('antisceptic@zoho.com',69,'','\"vr\"','Inna','','Erbakirci','\"Eng\"','','0000-00-00','',NULL),
	('isabellastoppels@outlook.com',70,'lid','\"vr\"','Isabella','','Stoppels','','17-Nov-2008','2008-11-17','8759905','Magnus-L-Isabella'),
	('astridanandita@gmail.com',71,'lid','\"vr\"','Isafara','','Gergin','','2-Feb-2008','2008-02-02','8621591','Magnus-L-Isafara'),
	('ivothonon@gmail.com',72,'','\"vr\"','Ivo','','Thonon','\"ECtl\"','','0000-00-00','',NULL),
	('inge_coolen@hotmail.com',73,'lid','\"vr\"','Jaap','van ','Helvert','','1-May-2009','2009-05-01','8597677',NULL),
	('jacco.lind@yahoo.com',74,'','\"vr\"','Jacco','','Lind','\"vw\", \"trainer\", \"st1\"','','0000-00-00','',NULL),
	('j.schoenmakers@meandernet.nl',75,'lid','\"wo\"','Jan','','Schoenmakers','','8-Jul-2011','2011-07-08','8879365','Magnus-D-Jan2'),
	('janjesseveling@gmail.com',76,'lid','\"wo\"','Jan','','Veling','','23-Oct-2006','2006-10-23','8761192','Magnus-D-Jan'),
	('janniezondervan@hotmail.com',77,'','\"vr\"','Jannie','','Zondervan','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('jasper@bonenkamp.nl',78,'lid','\"ma\"','Jasper','','Bonenkamp','\"vw\", \"alg\", \"trainer\", \"st1\"','21-Mar-2002','2002-03-21','8538662',NULL),
	('burne@hotmail.com',79,'lid','\"vr\"','Jayden','','Burne','','5-Mar-2009','2009-03-05','8848169','Magnus-D-Jayden2'),
	('claire@timetoknow.nl',80,'lid','\"vr\"','Jeanette','','Eikelenboom','','22-Aug-2009','2009-08-22','8687327','Magnus-L-Jeanette'),
	('dianaosna@hotmail.com',81,'lid','\"wo\"','Jelle','van','Putten','','30-Jul-2010','2010-07-30','8781014','Magnus-D-Jelle2'),
	('hyke_bandsma@hotmail.com',82,'lid','\"vr\"','Jelle','van','Haaften','','11-Oct-2010','2010-10-11','8687283','Magnus-L-Jelle'),
	('famvanaken@icloud.com',83,'lid','\"ma\",\"vr\"','Jelmer','van','Aken','\"vw\", \"ECtl\"','18-Dec-2002','2002-12-18','8599646',NULL),
	('ruthubbink@hotmail.co.uk',84,'lid','\"wo\",\"vr\"','Jesper','','Ubbink','','23-Feb-2010','2010-02-23','8703827','Magnus-L-Jesper'),
	('glen.ren@hotmail.com',85,'lid','\"vr\"','Jillano','','Wachter','','15-Dec-2006','2006-12-15','8838082','Magnus-D-Jillano'),
	('a_m_montroos@hotmail.com',86,'lid','\"wo\"','Jimmy','','Isabella','','12-Jan-2012','2012-01-12','8831834','Magnus-D-Jimmy'),
	('info@knjr.nl',87,'lid','\"vr\"','Joas','','Meijer','','9-Jun-2010','2010-06-09','8699405','Magnus-L-Joas'),
	('h.j.jurgens@uva.nl',88,'pl3','\"vr\"','Job ','','Jürgens','','23-Dec-2010','2010-12-23','',NULL),
	('jochem.aubel@gmail.com',89,'lid','\"ma\",\"vr\"','Jochem','','Aubel','\"vw\", \"EC\",\"tc\"','3-Jan-1976','1976-01-03','7117924',NULL),
	('jmhsmeets@gmail.com',90,'','\"vr\"','Joep','','Smeets','\"vw\", \"trainer\",  \"ECtl\"','','0000-00-00','',NULL),
	('fam.anhaus@gmail.com',91,'lid','\"vr\"','Jonas','','Anhaus','','1-Nov-2007','2007-11-01','8640082','Magnus-L-Jonas'),
	('jonas.achterberg@gmail.com',92,'lid','\"ma\",\"vr\"','Jonas','','Achterberg','\"vw\", \"trainer\"','31-Dec-2003','2003-12-31','8672235',NULL),
	('jclangev+magnus@gmail.com',93,'pl3','\"vr\"','Jonathan ','','Langeveld','','22-Aug-2011','2011-08-22','',NULL),
	('jasonsonokromo@hotmail.com',94,'lid','\"wo\"','Jordan','','Sonokromo','','27-Mar-2012','2012-03-27','8828435','Magnus-D-Jordan'),
	('crystaljzh@gmail.com',95,'lid','\"vr\"','Justin','','Chu','','1-May-2011','2011-05-01','8772522','Magnus-L-Justin'),
	('kai@taktc.nl',96,'lid','\"vr\"','Kai','','Crince','','1-Jan-2008','2008-01-01','8834848','Magnus-D-Kai'),
	('kasper.snel@gmail.com',97,'lid','\"ma\",\"vr\"','Kasper','','Snel','\"vw\", \"trainer\", \"st1\"','22-Jan-2004','2004-01-22','8513571',NULL),
	('CHBoersma@hotmail.com',98,'','\"wo\"','Kees','','Boersma','\"vw\",\"trainer\"','','0000-00-00','',NULL),
	('info@knjr.nl',99,'','\"vr\"','Klaas','','Meijer','\"vw\",\"bar\"','','0000-00-00','',NULL),
	('jmhsmeets@gmail.com',100,'lid','\"vr\"','Kobe','','Smeets','','4-Jul-2008','2008-07-04','8659420','Magnus-L-Kobe'),
	('anitakraaij@hotmail.com',101,'lid','\"vr\"','Koen','','Schoonhoven','','25-Mar-2013','2013-03-25','8863415','Magnus-D-Koen'),
	('jochem.aubel@gmail.com',102,'lid','\"vr\"','Koen','','Aubel','','13-Jan-2008','2008-01-13','8544778','Magnus-L-Koen'),
	('jeroenselhorst@gmail.com',103,'lid','\"vr\"','Lars','','Selhorst','','23-Feb-2013','2013-02-23','8879354','Magnus-D-Lars'),
	('anitakraaij@hotmail.com',104,'lid','\"ma\",\"vr\"','Laura','','Schoonhoven','\"vw\",\"alg\"','22-Dec-2005','2005-12-22','8513549',NULL),
	('greetjeurban@yahoo.com',105,'lid','\"vr\"','Laurens','al','Michael','','30-Jan-2013','2013-01-30','8892917','Magnus-U-Laurens'),
	('sjoerd@heins.tk',106,'pl3','\"wo\"','Levi en Alex','','Heins en .. ','','','0000-00-00','',NULL),
	('liam@copperlioness.com',107,'lid','\"vr\"','Liam','','Thonon','','16-Dec-2007','2007-12-16','8625606','Magnus-L-Liam'),
	('lucasklein@online.nl',108,'lid','\"ma\",\"vr\"','Lucas','','Klein','\"vw\", \"trainer\"','15-Feb-2004','2004-02-15','8672224',NULL),
	('camiel.roskam@amsterdam.nl',109,'lid','\"vr\"','Luka','','Roskam','','31-Oct-2008','2008-10-31','8759377','Magnus-L-Luka'),
	('irisvangrinsven@gmail.com',110,'lid','\"vr\"','Maarten','','Huurnink','','24-Aug-2011','2011-08-24','8754240','Magnus-L-Maarten'),
	('irmpy1@gmail.com',111,'lid','\"vr\"','Mads','','Kok','','18-May-2007','2007-05-18','8682487','Magnus-D-Mads'),
	('esther.erik-jan@hotmail.com',112,'lid','\"wo\"','Maikel','','Kok','','24-Jul-2007','2007-07-24','8828446','Magnus-D-Maikel'),
	('russonero13@gmail.com',113,'lid','\"vr\"','Maksim','','Lebedev','\"Eng\"','4-Dec-2012','2012-12-04','8827005','Magnus-L-Maksim'),
	('dheymans@me.com',114,'lid','\"vr\"','Manu','','Monfils','','25-Mar-2011','2011-03-25','8870081','Magnus-D-Manu'),
	('markschoonhoven17@gmail.com',115,'lid','\"wo\",\"vr\"','Mark','','Schoonhoven','\"trainer\", \"st1\"','1-Jul-2004','2004-07-01','8513560',NULL),
	('marleen.maarleveld@gmail.com',116,'','','Marleen','','Maarleveld','\"ECtl\"','','0000-00-00','',NULL),
	('kaprima@live.nl',117,'lid','\"vr\"','Maruti','','Changur','','22-Jan-2009','2009-01-22','8786822','Magnus-L-Maruti'),
	('m_ziepzeerder@hotmail.com',118,'lid','\"ma\",\"vr\"','Matthijs','','Ziepzeerder','\"vw\", \"trainer\"','24-Jul-2010','2010-07-24','7297884',NULL),
	('maurice.arendse@gmail.com',119,'','\"vr\"','Maurice','','Arendse','\"vw\", \"alg\",\"EC\"','','0000-00-00','',NULL),
	('desmond@ziggo.nl',120,'lid','\"vr\"','Max','','Haneveer','','20-May-2007','2007-05-20','8831878','Magnus-L-Max'),
	('camiel.roskam@amsterdam.nl',121,'lid','\"vr\"','Max','','Roskam','','11-May-2010','2010-05-11','8759388','Magnus-L-Max2'),
	('verhoefgricelda@gmail.com',122,'lid','\"vr\"','Maxime','','Verhoef','','7-Feb-2011','2011-02-07','8879376','Magnus-D-Maxime'),
	('ardeheij@hotmail.com',123,'lid','\"vr\"','Mees','de','Heij','','25-Apr-2008','2008-04-25','8596918','Magnus-L-Mees'),
	('antisceptic@zoho.com',124,'lid','\"vr\"','Meryem','','Erbakirci','\"Eng\"','9-Sep-2011','2011-09-09','8873359','Magnus-D-Meryem'),
	('vikramdas77@gmail.com',125,'lid','\"wo\"','Mihika','','Vikram','','9-Jun-2011','2011-06-09','8812760','Onderd-U-Mihika'),
	('vikram.ambar@gmail.com',126,'lid','\"wo\"','Mihir','','Vikram','','9-Jun-2011','2011-06-09','8812771','Onderd-U-Mihir'),
	('mikakleibeuker@icloud.com',127,'lid','\"vr\"','Mika','','Kleibeuker','\"vw\", \"trainer\"','24-Jun-2007','2007-06-24','8577228','Magnus-D-Mika'),
	('natarajan.kandasamy@gmail.com',128,'lid','\"vr\"','Muhilan','','Natarajan','\"Eng\"','1-May-2012','2012-05-01','8810725','Magnus-D-Muhilan'),
	('sathish.murugesan@gmail.com',129,'lid','\"wo\"','Mukilan','','Sathish Kumar','\"Eng\"','11-Apr-2012','2012-04-11','8879332','ISU-U-Mukilan'),
	('agor02@gmail.com',130,'lid','\"vr\"','Mukilan','','Agoramoorthy','\"Eng\"','26-Nov-2011','2011-11-26','8807381','Magnus-L-Mukilan'),
	('simalay21@yahoo.com',131,'lid','\"vr\"','Mylo','','Georgopoulos','','27-May-2011','2011-05-27','8807183',NULL),
	('katarina2011m@gmail.com',132,'lid','\"wo\"','Nicholas','','Xu','','3-Apr-2010','2010-04-03','8883281','Magnus-U-Nicholas'),
	('nic.mulder72@hotmail.com',133,'','\"vr\"','Nicolette','','Mulder','\"vw\",\"alg\",\"redactie\"','','0000-00-00','',NULL),
	('ndvvliet@gmail.com',134,'lid','\"wo\"','Niels','van','Vliet','','26-Aug-2011','2011-08-26','8880003','Magnus-D-Niels'),
	('nils@neisingh.nl',135,'lid','\"vr\"','Nils','','Neisingh','','11-Apr-2005','2005-04-11','8523504',NULL),
	('gloenn@mail.ru',136,'lid','\"vr\"','Nina','','Matveeva','\"Eng\"','26-Dec-2009','2009-12-26','8870059','Magnus-D-Nina'),
	('dunja-paolo@outlook.com',137,'pl2','\"wo\"','Noah','','Paolo','','28-Jul-2013','2013-07-28','',NULL),
	('haenvanveen@ziggo.nl',138,'lid','\"vr\"','Noah','van','Veen','','30-Jul-2007','2007-07-30','8751127','Magnus-L-Noah2'),
	('hexilaba@yahoo.com',139,'','x','Noah','','Stoffer','','24-Jun-2010','2010-06-24','8718457',NULL),
	('lagerwerf.s@gmail.com',140,'lid','\"vr\"','Nout','','Wieberdink','','13-Dec-2010','2010-12-13','8835101','Magnus-D-Nout'),
	('o.a.bollaart@gmail.com',141,'lid','\"wo\"','Olivier','','Bollaart','','19-Sep-2011','2011-09-19','8892928','Magnus-U-Olivier'),
	('ewmdelange@gmail.com',142,'pl3','\"wo\"','Peer ','','Serto','','27-Nov-2009','2009-11-27','',NULL),
	('sandraoudejans@hotmail.com',143,'lid','\"wo\"','Philippe','','Boels','','27-Sep-2009','2009-09-27','8863426','Magnus-D-Philippe'),
	('hercohuurnink@gmail.com',144,'lid','\"vr\"','Pieter','','Huurnink','','2-Jul-2009','2009-07-02','8760136','Magnus-D-Pieter'),
	('polle@zingendetand.nl',145,'lid','\"vr\"','Polle','van','Arendonk','','24-Feb-2008','2008-02-24','8640720','Magnus-L-Polle'),
	('quentin@eker.nl',146,'lid','\"vr\"','Quentin','','Eker','','5-Aug-2008','2008-08-05','8687294','Magnus-D-Quentin'),
	('greetjeurban@yahoo.com',147,'lid','\"vr\"','Rein','al','Michael','','30-Jan-2013','2013-01-30','8892785','Magnus-U-Rein'),
	('janniezondervan@hotmail.com',148,'lid','\"vr\"','Rens ','','Kuiper','','27-Jul-2008','2008-07-27','8812254','Magnus-L-Rens'),
	('gandhinxt@gmail.com',149,'pl3','\"vr\"','Riddhi ','','Gandhi','\"Eng\"','25-Jun-2007','2007-06-25','',NULL),
	('sbpksk@gmail.com',150,'lid','\"wo\"','Rishaan','','Baboeram Panday','','5-Dec-2010','2010-12-05','8859400','Tweesp-M-Rishaan'),
	('mikkererajesh@gmail.com',151,'lid','\"vr\"','Rishi','','Rajesh','\"Eng\"','5-Apr-2012','2012-04-05','8892840','Magnus-U-Rishi'),
	('royke_24@hotmail.com',152,'lid','\"wo\"','Rivano','','Ramhiet','','10-Jun-2011','2011-06-10','8772027','Magnus-D-Rivano'),
	('lweltevreden@hotmail.com',153,'lid','x','Robin','','Weltevreden','','7-Mar-2009','2009-03-07','8828688',NULL),
	('yvonneyu@gmail.com',154,'lid','\"vr\"','Robin','','Zhang','','24-Nov-2008','2008-11-24','8713804','Magnus-L-Robin'),
	('roderickloeber@live.nl',155,'','\"vr\"','Roderick','','Loeber','','','0000-00-00','',NULL),
	('aurontnt@hotmail.com',156,'','\"vr\"','Ron','van','Oudenallen','\"vw\", \"trainer\", \"ECtl\"','','0000-00-00','',NULL),
	('besselb@yahoo.com',157,'pl3','\"vr\"','Roos','','Bakker','','27-Oct-2013','2013-10-27','',NULL),
	('rozemarijn.van.oudenallen@outlook.com',158,'lid','\"vr\"','Rozemarijn','van','Oudenallen','','6-Mar-2010','2010-03-06','8717918','Magnus-L-Rozemarij'),
	('ruthubbink@hotmail.co.uk',159,'','nvt','Ruth','','Ubbink','\"vw\", \"ECtl\"','','0000-00-00','',NULL),
	('dwsonai@hotmail.com',160,'lid','\"wo\"','Ryan','','Ramdien','','9-Aug-2010','2010-08-09','8722637','Magnus-D-Ryan'),
	('bakouri@soverin.net',161,'lid','\"vr\"','Saladin','','Bakouri','','19-Oct-2010','2010-10-19','8767297','Magnus-D-Saladin'),
	('bakouri@soverin.net',162,'lid','\"vr\"','Salman','','Bakouri','','24-Dec-2012','2012-12-24','8836157','Magnus-D-Salman'),
	('claire@timetoknow.nl',163,'lid','\"vr\"','Salome','','Eikelenboom','','14-Dec-2006','2006-12-14','8687338','Magnus-L-Salome'),
	('leoniehuisman@gmail.com',164,'','x','Sam','','Groenewoud','','25-Dec-2008','2008-12-25','8767550',NULL),
	('muserrefcelik@gmail.com',165,'lid','\"wo\"','Sami','','Karakaya','','18-May-2011','2011-05-18','8828413','Magnus-D-Sami'),
	('albert@jezus-komt-terug.nl',166,'lid','\"vr\"','Samuel','','Eikelenboom','','14-Dec-2004','2004-12-14','8671366',NULL),
	('s.vanegmond@infinitodesign.nl',167,'lid','\"ma\"','Sander','van','Egmond','','22-Jun-1973','1973-06-22','8658001',NULL),
	('',168,'','\"wo\"','Sandra','','Ramhiet','\"vw\",\"alg\"','','0000-00-00','',NULL),
	('saskia@koroc.nl',169,'','\"vr\"','Saskia','','Bosman','\"vw\", \"bestuur\",\"vrijdag\" ','8-Dec-1971','1971-12-08','8795149',NULL),
	('juke_nina@hotmail.com',170,'lid','\"vr\"','Sean','','Bolks','','5-Dec-2010','2010-12-05','8826642','Magnus-L-Sean'),
	('shavkatabc@yahoo.com',171,'lid','\"vr\"','Shahram','','Kholmatov','\"Eng\"','7-Feb-2010','2010-02-07','8860159','Boomga-U-Shahram'),
	('sbpksk@gmail.com',172,'lid','\"wo\"','Shariesh','','Baboeram Panday','\"Eng\"','3-Sep-2012','2012-09-03','8861380','Magnus-L-Shariesh'),
	('Navin@navin.nl',173,'lid','\"wo\"','Shiven','','Kisoensingh','','8-May-2011','2011-05-08','8836168','Magnus-D-Shiven'),
	('glotamloi@gmail.com',174,'lid','\"vr\"','Sibren','van','Riel','','25-Apr-2012','2012-04-25','8835211','Magnus-D-Sibren'),
	('Siebe.van.manen@gmail.com',175,'lid','\"ma\",\"vr\"','Siebe','van','Manen','\"vw\", \"trainer\", \"st1\"','10-Feb-2003','2003-02-10','8523339',NULL),
	('pedijkman@gmail.com',176,'lid','\"wo\"','Sietse','','Dijkman','','7-Apr-2009','2009-04-07','8825135','Magnus-D-Sietse'),
	('sietsebosman1@gmail.com',177,'lid','\"vr\"','Sietse','','Bosman','\"vw\",\"alg\"','9-Jan-2005','2005-01-09','8513472',NULL),
	('huisman.erik@gmail.com',178,'lid','\"vr\"','Simon','','Huisman','','16-Mar-2009','2009-03-16','8827016','Magnus-L-Simon'),
	('singhtanu2229@gmail.com',179,'pl3','\"vr\"','Siyona','','Singh','\"Eng\"','22-May-2011','2011-05-22','',NULL),
	('mikkererajesh@gmail.com',180,'lid','\"vr\"','Sonali','','Rajesh','','5-Apr-2012','2012-04-05','8892829','Magnus-U-Sonali'),
	('verhoefgricelda@gmail.com',181,'lid','\"vr\"','Sophie','','Verhoef','','1-Sep-2012','2012-09-01','8879376','Magnus-D-Sophie'),
	('carlaroosje@gmail.com',182,'lid','\"wo\"','Stefan','','Winkel','','21-May-2011','2011-05-21','8879596','Magnus-D-Stefan'),
	('famvanaken@icloud.com',183,'','nvt','Stephen','van','Aken','\"oud-vw\"','','0000-00-00','',NULL),
	('a.gaasenbeek@gmail.com',184,'','x','Steve','','Gaasenbeek','','10-May-2010','2010-05-10','8774249',NULL),
	('heomoi78@yahoo.com',185,'pl3','\"wo\"','Steven ','','Nguyen','\"Eng\"','15-Apr-2013','2013-04-15','',NULL),
	('dwsonai@hotmail.com',186,'lid','\"vr\"','Steven ','','Ramdien','','30-Jan-2008','2008-01-30','8722626','Magnus-D-Steven'),
	('marije.smelik@gmail.com',187,'lid','\"vr\"','Stijn','','Smelik','','10-May-2007','2007-05-10','8863668','Magnus-D-Stijn'),
	('m_ziepzeerder@hotmail.com',188,'lid','\"vr\"','Stijn','','Ziepzeerder','','24-Jul-2010','2010-07-24','8805753','Magnus-L-Stijn2'),
	('inge_coolen@hotmail.com',189,'lid','\"vr\"','Stijn','van','Helvert','','12-Aug-2010','2010-08-12','8672246','Magnus-L-Stijn'),
	('fam.hsia@gmail.com',190,'lid','x','Sui Ying','','Hsia','','23-Jan-2010','2010-01-23','8740886','Magnus-L-SuiYing'),
	('Natarajan.Kandasamy@gmail.com',191,'lid','\"vr\"','Sushanth','','Natarajan Sangeetha','\"Eng\"','5-Aug-2007','2007-08-05','8803993','Magnus-L-Sushanth'),
	('tessa.verhaegh@hotmail.com',192,'','nvt','Tessa','','Verhaegh','\"vw\",\"alg\"','','0000-00-00','',NULL),
	('marleen.maarleveld@gmail.com',193,'lid','\"vr\"','Teun','','Leenen','','14-Jan-2007','2007-01-14','8640104','Magnus-D-Teun'),
	('moniqueluyendijk@kpnmail.nl',194,'lid','\"vr\"','Thijs','','Brabers','','13-Apr-2005','2005-04-13','8547220',NULL),
	('eduard.brinkman@ziggo.nl',195,'lid','\"vr\"','Thomas','','Brinkman','','11-Oct-2007','2007-10-11','8605014','Magnus-D-Thomas'),
	('m_kleinhans@hotmail.com',196,'lid','\"vr\"','Tibbe','','Sietinga','','9-Jun-2007','2007-06-09','8657429','tibbe_'),
	('tiesjansen0807@gmail.com',197,'lid','\"vr\"','Ties','','Jansen','\"vw\", \"trainer\"','8-Jul-2007','2007-07-08','8640060','Magnus-L-Ties'),
	('kimdjansen@hotmail.nl',198,'lid','\"vr\"','Tijn','van de ','Geer','','12-Jul-2008','2008-07-12','8810758',NULL),
	('ljvanboxtel@googlemail.com',199,'lid','\"wo\"','Tim','van','Boxtel','','18-Feb-2010','2010-02-18','8709217','Magnus-D-Tim'),
	('martijn77vanzwam@hotmail.com',200,'lid','\"wo\"','Timo','van','Zwam','','21-Apr-2009','2009-04-21','8771994','Magnus-D-Timo'),
	('bert_herngreen@yahoo.com',201,'lid','\"vr\"','Timo','','Herngreen','','28-Nov-2004','2004-11-28','8588855',NULL),
	('lanzhang2003@gmail.com',202,'lid','\"wo\"','Timon','van','Hoogstraten','','13-Aug-2012','2012-08-13','8838005','Magnus-D-Timon'),
	('info@infinitodesign.nl',203,'lid','\"vr\"','Tom','van','Egmond','\"ECtl\"','5-Feb-2007','2007-02-05','8558154','Magnus-D-Tom'),
	('a_m_montroos@hotmail.com',204,'lid','\"wo\"','Tommy','','Isabella','','9-Sep-2010','2010-09-09','8831834','Magnus-D-Tommy'),
	('ayhan.yucel@outlook.com',205,'lid','\"vr\"','Tuna','','Yucel','','24-Jun-2010','2010-06-24','8767253','Magnus-L-Tuna'),
	('tygo@taktc.nl',206,'lid','\"vr\"','Tygo','','Crince','','9-Nov-2009','2009-11-09','8812914','Magnus-D-Tygo2'),
	('Lindadegroot_8@hotmail.com',207,'lid','\"vr\"','Tygo','van','Loenen','','26-Jun-2011','2011-06-26','8860445','Magnus-D-Tygo'),
	('v.dogan2011@hotmail.com',208,'lid','\"vr\"','Vefa','','Dogan','\"alg\"','19-Sep-2011','2011-09-19','8796172','Magnus-D-Vefa'),
	('victorstoppels@outlook.com',209,'lid','\"vr\"','Victor','','Stoppels','','25-Mar-2011','2011-03-25','8759894','Magnus-D-Victor'),
	('viggojans@gmail.com',210,'lid','\"vr\"','Viggo','','Jans','','14-Jan-2009','2009-01-14','8828457','Magnus-D-Viggo'),
	('singaravadivelu@gmail.com',211,'lid','\"vr\"','Vishaal','','Singaradivelu','\"Eng\"','15-May-2010','2010-05-15','8809691',NULL),
	('wfmvdlinden@gmail.com',212,'','\"vr\"','Wendy','van der','Linden','\"vw\",\"alg\", \"Ectl\"','','0000-00-00','',NULL),
	('ouders@wayam.nl',213,'lid','\"vr\"','Wietse ','','Duursma','','23-Jan-2006','2006-01-23','8578548',NULL),
	('sandravandenbrom@hotmail.com',214,'lid','\"wo\",\"vr\"','Yannick','','Visscher','\"vw\", \"trainer\"','10-Feb-2005','2005-02-10','8630963',NULL),
	('o_denisenko@yahoo.com',215,'pl3','\"vr\"','Yaroslav','','Denysenko','\"Eng\"','8-Feb-2010','2010-02-08','',NULL),
	('raj.kmb@gmail.com',216,'pl3','\"vr\"','Yashas ','','Konganahosur Mathada','\"Eng\"','17-Mar-2009','2009-03-17','',NULL),
	('yorick@wayam.nl',217,'lid','\"ma\",\"vr\"','Yorick ','','Duursma','\"vw\", \"trainer\"','23-Jan-2006','2006-01-23','8578229',NULL),
	('frankjeuken@hotmail.com',218,'lid','\"wo\"','Yuan','','Jeuken','','25-Aug-2009','2009-08-25','8820339','Magnus-D-Yuan'),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL),
	('',NULL,'','','','','','','','0000-00-00','',NULL);

/*!40000 ALTER TABLE `ledenimport` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_accounts_account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_accounts_account`;

CREATE TABLE `magnus_accounts_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountType` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `token` varchar(1000) NOT NULL,
  `fromDate` datetime(6) DEFAULT NULL,
  `toDate` datetime(6) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_accounts_acco_member_id_381c9824_fk_magnus_me` (`member_id`),
  CONSTRAINT `magnus_accounts_acco_member_id_381c9824_fk_magnus_me` FOREIGN KEY (`member_id`) REFERENCES `magnus_members_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_accounts_account` WRITE;
/*!40000 ALTER TABLE `magnus_accounts_account` DISABLE KEYS */;

INSERT INTO `magnus_accounts_account` (`id`, `accountType`, `username`, `token`, `fromDate`, `toDate`, `createdDate`, `member_id`)
VALUES
	(1,1,'pataje','',NULL,NULL,'2020-06-21 07:18:56.633117',5),
	(2,2,'entjemeloentje_030ko','',NULL,NULL,'2020-06-21 07:18:56.634909',5),
	(3,3,'Magnus-L-Koen','',NULL,NULL,'2020-06-21 07:18:56.645952',5),
	(53,2,'ChessComAccountChessComAccount','',NULL,NULL,'2020-09-03 11:15:53.736219',26),
	(54,1,'LichessAccountLichessAccount','LichessTokenLichessToken',NULL,NULL,'2020-09-03 11:15:53.738525',26),
	(55,3,'ChessKidAccountChessKidAccount','',NULL,NULL,'2020-09-03 11:15:53.767323',26),
	(56,1,'LichessAccount','LichessToken',NULL,NULL,'2020-09-03 11:34:20.560167',24),
	(57,2,'ChessComAccount','',NULL,NULL,'2020-09-03 11:34:20.567200',24),
	(58,3,'ChessKidAccount','',NULL,NULL,'2020-09-03 11:34:20.591802',24);

/*!40000 ALTER TABLE `magnus_accounts_account` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_accounts_historicalaccount
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_accounts_historicalaccount`;

CREATE TABLE `magnus_accounts_historicalaccount` (
  `id` int(11) NOT NULL,
  `accountType` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `token` varchar(1000) NOT NULL,
  `fromDate` datetime(6) DEFAULT NULL,
  `toDate` datetime(6) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_accounts_hist_history_user_id_f2bb5b1b_fk_magnus_us` (`history_user_id`),
  KEY `magnus_accounts_historicalaccount_id_e36af40c` (`id`),
  KEY `magnus_accounts_historicalaccount_member_id_5e61dc64` (`member_id`),
  CONSTRAINT `magnus_accounts_hist_history_user_id_f2bb5b1b_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_accounts_historicalaccount` WRITE;
/*!40000 ALTER TABLE `magnus_accounts_historicalaccount` DISABLE KEYS */;

INSERT INTO `magnus_accounts_historicalaccount` (`id`, `accountType`, `username`, `token`, `fromDate`, `toDate`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `member_id`)
VALUES
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',1,'2020-06-21 07:18:56.636163',NULL,'+',4,5),
	(2,2,'koentjemeloentje_030','',NULL,NULL,'2020-06-21 07:18:56.634909',2,'2020-06-21 07:18:56.638083',NULL,'+',4,5),
	(3,3,'Magnus-L-Koen','',NULL,NULL,'2020-06-21 07:18:56.645952',3,'2020-06-21 07:18:56.651994',NULL,'+',4,5),
	(1,1,'koenie131koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',4,'2020-06-21 08:35:17.170263',NULL,'~',4,5),
	(2,2,'koentjemeloentje_030koentjemeloentje_030','',NULL,NULL,'2020-06-21 07:18:56.634909',5,'2020-06-21 08:35:17.213312',NULL,'~',4,5),
	(3,3,'Magnus-L-KoenMagnus-L-Koen','',NULL,NULL,'2020-06-21 07:18:56.645952',6,'2020-06-21 08:35:17.215062',NULL,'~',4,5),
	(1,1,'koenie131koenie131koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',7,'2020-06-21 08:36:15.755667',NULL,'~',4,5),
	(3,3,'Magnus-L-KoenMagnus-L-KoenMagnus-L-Koen','',NULL,NULL,'2020-06-21 07:18:56.645952',8,'2020-06-21 08:36:15.766415',NULL,'~',4,5),
	(2,2,'koentjemeloentje_030koentjemeloentje_030koentjemeloentje_030','',NULL,NULL,'2020-06-21 07:18:56.634909',9,'2020-06-21 08:36:15.770098',NULL,'~',4,5),
	(2,2,'koentjemeloentje_030','',NULL,NULL,'2020-06-21 07:18:56.634909',10,'2020-06-21 08:36:43.805659',NULL,'~',4,5),
	(3,3,'Magnus-L-Koen','',NULL,NULL,'2020-06-21 07:18:56.645952',11,'2020-06-21 08:36:43.809849',NULL,'~',4,5),
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',12,'2020-06-21 08:36:50.450882',NULL,'~',4,5),
	(1,1,'koenie131pataje','',NULL,NULL,'2020-06-21 07:18:56.633117',13,'2020-06-21 14:05:17.712148',NULL,'~',4,5),
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',14,'2020-06-21 14:09:16.477203',NULL,'~',4,5),
	(1,1,'koenie131pataje','',NULL,NULL,'2020-06-21 07:18:56.633117',15,'2020-06-21 14:12:17.752867',NULL,'~',4,5),
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',16,'2020-06-21 14:18:11.667267',NULL,'~',4,5),
	(1,1,'koenie131pataje','',NULL,NULL,'2020-06-21 07:18:56.633117',17,'2020-06-21 14:19:05.479710',NULL,'~',4,5),
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',18,'2020-06-21 14:23:26.758796',NULL,'~',4,5),
	(1,1,'koenie131pataje','',NULL,NULL,'2020-06-21 07:18:56.633117',19,'2020-06-21 14:23:44.310628',NULL,'~',4,5),
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',20,'2020-06-21 15:18:38.539943',NULL,'~',4,5),
	(1,1,'Keys.BACKSPACEpataje','',NULL,NULL,'2020-06-21 07:18:56.633117',21,'2020-06-21 15:18:57.802719',NULL,'~',4,5),
	(1,1,'koenie131','',NULL,NULL,'2020-06-21 07:18:56.633117',22,'2020-06-21 15:20:06.829830',NULL,'~',4,5),
	(1,1,'pataje','',NULL,NULL,'2020-06-21 07:18:56.633117',23,'2020-06-21 15:20:24.871603',NULL,'~',4,5),
	(2,2,'entjemeloentje_030ko','',NULL,NULL,'2020-06-21 07:18:56.634909',24,'2020-06-22 15:45:12.905625',NULL,'~',4,5),
	(44,3,'ChessKidAccount','',NULL,NULL,'2020-08-31 17:57:34.606282',110,'2020-08-31 17:57:34.608024',NULL,'+',25,28),
	(43,1,'LichessAccount','LichessToken',NULL,NULL,'2020-08-31 17:57:34.602036',111,'2020-08-31 17:57:34.609406',NULL,'+',25,28),
	(45,2,'ChessComAccount','',NULL,NULL,'2020-08-31 17:57:34.607395',112,'2020-08-31 17:57:34.613461',NULL,'+',25,28),
	(43,1,'LichessAccount','LichessToken',NULL,NULL,'2020-08-31 17:57:34.602036',113,'2020-08-31 17:57:44.318256',NULL,'-',25,28),
	(46,1,'LichessAccount','LichessToken',NULL,NULL,'2020-08-31 18:00:54.123610',114,'2020-08-31 18:00:54.124827',NULL,'+',25,28),
	(44,3,'ChessKidAccountChessKidAccount','',NULL,NULL,'2020-08-31 17:57:34.606282',115,'2020-08-31 18:00:54.127532',NULL,'~',25,28),
	(45,2,'ChessComAccountChessComAccount','',NULL,NULL,'2020-08-31 17:57:34.607395',116,'2020-08-31 18:00:54.136942',NULL,'~',25,28),
	(46,1,'LichessAccount','LichessToken',NULL,NULL,'2020-08-31 18:00:54.123610',117,'2020-08-31 18:08:45.156257',NULL,'-',25,28),
	(45,2,'ChessComAccountChessComAccount','',NULL,NULL,'2020-08-31 17:57:34.607395',118,'2020-08-31 18:08:45.172751',NULL,'-',25,28),
	(44,3,'ChessKidAccountChessKidAccount','',NULL,NULL,'2020-08-31 17:57:34.606282',119,'2020-08-31 18:08:45.174787',NULL,'-',25,28),
	(47,1,'LichessAccount','LichessToken',NULL,NULL,'2020-08-31 18:10:24.476701',120,'2020-08-31 18:10:24.477951',NULL,'+',25,28),
	(49,3,'ChessKidAccount','',NULL,NULL,'2020-08-31 18:10:24.494246',121,'2020-08-31 18:10:24.495813',NULL,'+',25,28),
	(48,2,'ChessComAccount','',NULL,NULL,'2020-08-31 18:10:24.491003',122,'2020-08-31 18:10:24.498552',NULL,'+',25,28),
	(47,1,'LichessAccount','LichessToken',NULL,NULL,'2020-08-31 18:10:24.476701',123,'2020-08-31 18:10:34.765905',NULL,'-',25,28),
	(48,2,'ChessComAccount','',NULL,NULL,'2020-08-31 18:10:24.491003',124,'2020-08-31 18:10:34.768472',NULL,'-',25,28),
	(49,3,'ChessKidAccount','',NULL,NULL,'2020-08-31 18:10:24.494246',125,'2020-08-31 18:10:34.770994',NULL,'-',25,28),
	(50,1,'LichessAccount','LichessToken',NULL,NULL,'2020-09-03 11:02:26.211879',126,'2020-09-03 11:02:26.215328',NULL,'+',25,28),
	(51,2,'ChessComAccount','',NULL,NULL,'2020-09-03 11:02:26.214439',127,'2020-09-03 11:02:26.217660',NULL,'+',25,28),
	(52,3,'ChessKidAccount','',NULL,NULL,'2020-09-03 11:02:26.233879',128,'2020-09-03 11:02:26.235308',NULL,'+',25,28),
	(53,2,'ChessComAccount','',NULL,NULL,'2020-09-03 11:15:53.736219',129,'2020-09-03 11:15:53.759472',NULL,'+',33,26),
	(54,1,'LichessAccount','LichessToken',NULL,NULL,'2020-09-03 11:15:53.738525',130,'2020-09-03 11:15:53.762352',NULL,'+',33,26),
	(55,3,'ChessKidAccount','',NULL,NULL,'2020-09-03 11:15:53.767323',131,'2020-09-03 11:15:53.773635',NULL,'+',33,26),
	(56,1,'LichessAccount','LichessToken',NULL,NULL,'2020-09-03 11:34:20.560167',132,'2020-09-03 11:34:20.561748',NULL,'+',27,24),
	(57,2,'ChessComAccount','',NULL,NULL,'2020-09-03 11:34:20.567200',133,'2020-09-03 11:34:20.574632',NULL,'+',27,24),
	(58,3,'ChessKidAccount','',NULL,NULL,'2020-09-03 11:34:20.591802',134,'2020-09-03 11:34:20.593075',NULL,'+',27,24),
	(50,1,'LichessAccountLichessAccount','LichessTokenLichessToken',NULL,NULL,'2020-09-03 11:02:26.211879',135,'2020-09-03 19:46:45.734282',NULL,'~',29,28),
	(51,2,'ChessComAccountChessComAccount','',NULL,NULL,'2020-09-03 11:02:26.214439',136,'2020-09-03 19:46:45.737744',NULL,'~',29,28),
	(52,3,'ChessKidAccountChessKidAccount','',NULL,NULL,'2020-09-03 11:02:26.233879',137,'2020-09-03 19:46:45.760099',NULL,'~',29,28),
	(51,2,'ChessComAccountChessComAccountChessComAccount','',NULL,NULL,'2020-09-03 11:02:26.214439',138,'2020-09-09 06:21:30.270700',NULL,'~',25,28),
	(50,1,'LichessAccountLichessAccountLichessAccount','LichessTokenLichessTokenLichessToken',NULL,NULL,'2020-09-03 11:02:26.211879',139,'2020-09-09 06:21:30.279163',NULL,'~',25,28),
	(52,3,'ChessKidAccountChessKidAccountChessKidAccount','',NULL,NULL,'2020-09-03 11:02:26.233879',140,'2020-09-09 06:21:30.290206',NULL,'~',25,28),
	(51,2,'ChessComAccountChessComAccountChessComAccount','',NULL,NULL,'2020-09-03 11:02:26.214439',141,'2020-09-09 07:15:06.293158',NULL,'-',25,28),
	(50,1,'LichessAccountLichessAccountLichessAccount','LichessTokenLichessTokenLichessToken',NULL,NULL,'2020-09-03 11:02:26.211879',142,'2020-09-09 07:15:06.295462',NULL,'-',25,28),
	(52,3,'ChessKidAccountChessKidAccountChessKidAccount','',NULL,NULL,'2020-09-03 11:02:26.233879',143,'2020-09-09 07:15:06.313737',NULL,'-',25,28),
	(60,2,'ChessComAccount','',NULL,NULL,'2020-09-09 07:17:40.232581',144,'2020-09-09 07:17:40.233250',NULL,'+',25,28),
	(59,1,'LichessAccount','LichessToken',NULL,NULL,'2020-09-09 07:17:40.232134',145,'2020-09-09 07:17:40.233299',NULL,'+',25,28),
	(61,3,'ChessKidAccount','',NULL,NULL,'2020-09-09 07:17:40.258243',146,'2020-09-09 07:17:40.259087',NULL,'+',25,28),
	(60,2,'ChessComAccount','',NULL,NULL,'2020-09-09 07:17:40.232581',147,'2020-09-09 07:17:47.614490',NULL,'-',25,28),
	(59,1,'LichessAccount','LichessToken',NULL,NULL,'2020-09-09 07:17:40.232134',148,'2020-09-09 07:17:47.615552',NULL,'-',25,28),
	(61,3,'ChessKidAccount','',NULL,NULL,'2020-09-09 07:17:40.258243',149,'2020-09-09 07:17:47.645955',NULL,'-',25,28),
	(55,3,'ChessKidAccountChessKidAccount','',NULL,NULL,'2020-09-03 11:15:53.767323',150,'2020-09-09 07:18:47.277967',NULL,'~',33,26),
	(53,2,'ChessComAccountChessComAccount','',NULL,NULL,'2020-09-03 11:15:53.736219',151,'2020-09-09 07:18:47.288423',NULL,'~',33,26),
	(54,1,'LichessAccountLichessAccount','LichessTokenLichessToken',NULL,NULL,'2020-09-03 11:15:53.738525',152,'2020-09-09 07:18:47.289482',NULL,'~',33,26);

/*!40000 ALTER TABLE `magnus_accounts_historicalaccount` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_activities_activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_activities_activity`;

CREATE TABLE `magnus_activities_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `fromDate` datetime(6) NOT NULL,
  `toDate` datetime(6) NOT NULL,
  `eventAvailable` tinyint(1) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `activityType` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `membergroup_id` int(11) NOT NULL,
  `parentActivity_id` int(11) DEFAULT NULL,
  `training_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_activities_ac_membergroup_id_7bca50ea_fk_magnus_me` (`membergroup_id`),
  KEY `magnus_activities_ac_location_id_28025fd2_fk_magnus_sh` (`location_id`),
  KEY `magnus_activities_ac_parentActivity_id_2204fe26_fk_magnus_ac` (`parentActivity_id`),
  KEY `magnus_activities_ac_training_id_f66d54e6_fk_magnus_tr` (`training_id`),
  CONSTRAINT `magnus_activities_ac_location_id_28025fd2_fk_magnus_sh` FOREIGN KEY (`location_id`) REFERENCES `magnus_shared_location` (`id`),
  CONSTRAINT `magnus_activities_ac_membergroup_id_7bca50ea_fk_magnus_me` FOREIGN KEY (`membergroup_id`) REFERENCES `magnus_members_membergroup` (`id`),
  CONSTRAINT `magnus_activities_ac_parentActivity_id_2204fe26_fk_magnus_ac` FOREIGN KEY (`parentActivity_id`) REFERENCES `magnus_activities_activity` (`id`),
  CONSTRAINT `magnus_activities_ac_training_id_f66d54e6_fk_magnus_tr` FOREIGN KEY (`training_id`) REFERENCES `magnus_training_training` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_activities_activity` WRITE;
/*!40000 ALTER TABLE `magnus_activities_activity` DISABLE KEYS */;

INSERT INTO `magnus_activities_activity` (`id`, `name`, `fromDate`, `toDate`, `eventAvailable`, `createdDate`, `activityType`, `location_id`, `membergroup_id`, `parentActivity_id`, `training_id`)
VALUES
	(1,'Vrijdagavond training','2020-01-03 18:00:00.000000','2020-01-03 20:00:00.000000',1,'2020-01-02 00:00:00.000000',1,1,2,2,NULL),
	(2,'Trainingen','2019-08-06 22:00:00.000000','2020-08-08 21:00:00.000000',1,'2020-01-02 00:00:00.000000',1,NULL,3,NULL,NULL),
	(3,'D1 Training vrijdag','2020-01-03 18:15:00.000000','2020-01-03 22:00:00.000000',1,'2020-01-02 00:00:00.000000',1,NULL,1,NULL,NULL),
	(4,'Clubavond Vrijdag','2020-01-03 12:22:02.000000','2020-01-03 12:22:04.000000',1,'2020-01-03 00:00:00.000000',3,NULL,4,NULL,NULL),
	(5,'Training D1','2020-01-03 12:22:50.000000','2020-01-03 12:22:52.000000',1,'2020-01-03 00:00:00.000000',1,NULL,1,4,1),
	(6,'Clubmiddag Woensdag','2020-01-08 12:23:28.000000','2020-01-08 12:23:29.000000',1,'2020-01-03 00:00:00.000000',3,NULL,4,NULL,NULL),
	(7,'Training E1','2020-01-03 12:36:02.000000','2020-01-03 12:36:04.000000',1,'2020-01-03 00:00:00.000000',1,NULL,2,4,NULL),
	(8,'Training W1','2020-01-08 12:36:56.000000','2020-01-08 12:36:40.000000',1,'2020-01-03 00:00:00.000000',1,NULL,5,6,NULL),
	(9,'Competitie V1','2020-01-03 12:37:41.000000','2020-01-03 12:37:42.000000',1,'2020-01-03 00:00:00.000000',4,NULL,6,4,NULL),
	(10,'Competitie W1','2020-01-08 12:38:22.000000','2020-01-08 12:38:26.000000',1,'2020-01-03 00:00:00.000000',4,NULL,7,6,NULL),
	(13,'TEST clubavond vrijdag','2025-09-05 16:45:00.000000','2025-09-05 16:45:00.000000',1,'2020-08-12 08:43:07.635030',3,NULL,4,NULL,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',1,NULL,124,13,NULL),
	(15,'TEST competitie','2025-09-04 17:30:00.000000','2025-09-04 17:30:00.000000',1,'2020-08-12 08:44:25.287051',4,NULL,125,13,NULL),
	(16,'TEST teamwedstrijd','2025-09-05 17:00:00.000000','2025-09-05 19:00:00.000000',1,'2020-08-12 11:33:25.070367',5,NULL,127,NULL,NULL),
	(17,'TEST activiteit zonder leden','2025-08-22 17:00:00.000000','2025-08-22 17:00:00.000000',1,'2020-08-23 14:43:16.615247',1,NULL,2,NULL,NULL);

/*!40000 ALTER TABLE `magnus_activities_activity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_activities_activitysubscription
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_activities_activitysubscription`;

CREATE TABLE `magnus_activities_activitysubscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registered` tinyint(1) DEFAULT NULL,
  `spotted` tinyint(1) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `memberGroupRole_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_activities_ac_activity_id_42269c83_fk_magnus_ac` (`activity_id`),
  KEY `magnus_activities_ac_memberGroupRole_id_fc1ab3de_fk_magnus_me` (`memberGroupRole_id`),
  CONSTRAINT `magnus_activities_ac_activity_id_42269c83_fk_magnus_ac` FOREIGN KEY (`activity_id`) REFERENCES `magnus_activities_activity` (`id`),
  CONSTRAINT `magnus_activities_ac_memberGroupRole_id_fc1ab3de_fk_magnus_me` FOREIGN KEY (`memberGroupRole_id`) REFERENCES `magnus_members_membergrouprole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_activities_activitysubscription` WRITE;
/*!40000 ALTER TABLE `magnus_activities_activitysubscription` DISABLE KEYS */;

INSERT INTO `magnus_activities_activitysubscription` (`id`, `registered`, `spotted`, `createdDate`, `activity_id`, `memberGroupRole_id`)
VALUES
	(18,NULL,0,'2020-02-23 00:00:00.000000',5,5),
	(19,NULL,0,'2020-02-23 00:00:00.000000',5,2),
	(20,NULL,0,'2020-02-23 00:00:00.000000',7,4),
	(21,1,0,'2020-02-23 00:00:00.000000',7,14),
	(22,1,0,'2020-02-23 00:00:00.000000',9,18),
	(23,NULL,1,'2020-02-23 00:00:00.000000',5,9),
	(24,NULL,1,'2020-02-23 00:00:00.000000',9,10),
	(25,1,1,'2020-02-23 00:00:00.000000',5,12),
	(26,1,1,'2020-02-23 00:00:00.000000',9,17),
	(27,NULL,0,'2020-02-23 00:00:00.000000',9,8),
	(28,NULL,0,'2020-02-23 00:00:00.000000',7,1),
	(29,NULL,0,'2020-02-23 00:00:00.000000',7,3),
	(30,1,0,'2020-02-23 00:00:00.000000',5,11),
	(31,1,0,'2020-02-23 00:00:00.000000',7,13),
	(32,0,0,'2020-02-23 00:00:00.000000',9,19),
	(33,0,0,'2020-02-23 00:00:00.000000',9,22),
	(34,1,1,'2020-02-24 00:00:00.000000',1,14),
	(36,0,1,'2020-02-26 00:00:00.000000',1,13),
	(37,1,NULL,'2020-03-01 00:00:00.000000',4,7),
	(38,NULL,1,'2020-03-01 00:00:00.000000',8,24),
	(39,NULL,0,'2020-03-23 00:00:00.000000',8,20),
	(41,1,NULL,'2020-03-23 00:00:00.000000',3,12),
	(42,1,1,'2020-04-13 00:00:00.000000',10,16),
	(44,0,NULL,'2020-04-26 00:00:00.000000',3,11),
	(56,NULL,0,'2020-08-31 18:03:25.289434',14,45),
	(57,1,0,'2020-08-31 18:04:26.271315',14,41),
	(58,1,0,'2020-08-31 18:04:26.281040',15,42),
	(59,NULL,0,'2020-09-02 11:50:43.777652',14,25),
	(60,NULL,0,'2020-09-02 11:52:11.511980',15,30),
	(61,0,NULL,'2020-09-03 16:12:26.390856',14,40);

/*!40000 ALTER TABLE `magnus_activities_activitysubscription` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_activities_historicalactivity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_activities_historicalactivity`;

CREATE TABLE `magnus_activities_historicalactivity` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `fromDate` datetime(6) NOT NULL,
  `toDate` datetime(6) NOT NULL,
  `eventAvailable` tinyint(1) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `activityType` int(11) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `membergroup_id` int(11) DEFAULT NULL,
  `parentActivity_id` int(11) DEFAULT NULL,
  `training_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_activities_hi_history_user_id_9beb58eb_fk_magnus_us` (`history_user_id`),
  KEY `magnus_activities_historicalactivity_id_3506a738` (`id`),
  KEY `magnus_activities_historicalactivity_location_id_0579c200` (`location_id`),
  KEY `magnus_activities_historicalactivity_membergroup_id_ce62505e` (`membergroup_id`),
  KEY `magnus_activities_historicalactivity_parentActivity_id_843621ee` (`parentActivity_id`),
  KEY `magnus_activities_historicalactivity_training_id_c1b968cd` (`training_id`),
  CONSTRAINT `magnus_activities_hi_history_user_id_9beb58eb_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_activities_historicalactivity` WRITE;
/*!40000 ALTER TABLE `magnus_activities_historicalactivity` DISABLE KEYS */;

INSERT INTO `magnus_activities_historicalactivity` (`id`, `name`, `fromDate`, `toDate`, `eventAvailable`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `activityType`, `history_user_id`, `location_id`, `membergroup_id`, `parentActivity_id`, `training_id`)
VALUES
	(1,'Vrijdagavond training','2020-01-03 18:00:00.000000','2020-01-03 20:00:00.000000',1,'2020-01-02 00:00:00.000000',1,'2020-05-06 10:01:02.158666','','+',1,NULL,1,2,2,NULL),
	(2,'Trainingen','2019-08-06 22:00:00.000000','2020-08-08 21:00:00.000000',1,'2020-01-02 00:00:00.000000',2,'2020-05-06 10:01:02.158902','','+',1,NULL,NULL,3,NULL,NULL),
	(3,'D1 Training vrijdag','2020-01-03 18:15:00.000000','2020-01-03 22:00:00.000000',1,'2020-01-02 00:00:00.000000',3,'2020-05-06 10:01:02.159018','','+',1,NULL,NULL,1,NULL,NULL),
	(4,'Clubavond Vrijdag','2020-01-03 12:22:02.000000','2020-01-03 12:22:04.000000',1,'2020-01-03 00:00:00.000000',4,'2020-05-06 10:01:02.159130','','+',3,NULL,NULL,4,NULL,NULL),
	(5,'Training D1','2020-01-03 12:22:50.000000','2020-01-03 12:22:52.000000',1,'2020-01-03 00:00:00.000000',5,'2020-05-06 10:01:02.159239','','+',1,NULL,NULL,1,4,NULL),
	(6,'Clubmiddag Woensdag','2020-01-08 12:23:28.000000','2020-01-08 12:23:29.000000',1,'2020-01-03 00:00:00.000000',6,'2020-05-06 10:01:02.159349','','+',3,NULL,NULL,4,NULL,NULL),
	(7,'Training E1','2020-01-03 12:36:02.000000','2020-01-03 12:36:04.000000',1,'2020-01-03 00:00:00.000000',7,'2020-05-06 10:01:02.159456','','+',1,NULL,NULL,2,4,NULL),
	(8,'Training W1','2020-01-08 12:36:56.000000','2020-01-08 12:36:40.000000',1,'2020-01-03 00:00:00.000000',8,'2020-05-06 10:01:02.159579','','+',1,NULL,NULL,5,6,NULL),
	(9,'Competitie V1','2020-01-03 12:37:41.000000','2020-01-03 12:37:42.000000',1,'2020-01-03 00:00:00.000000',9,'2020-05-06 10:01:02.159689','','+',4,NULL,NULL,6,4,NULL),
	(10,'Competitie W1','2020-01-08 12:38:22.000000','2020-01-08 12:38:26.000000',1,'2020-01-03 00:00:00.000000',10,'2020-05-06 10:01:02.159806','','+',4,NULL,NULL,7,6,NULL),
	(12,'Dit veld is vereist.','2020-01-01 21:00:00.000000','2020-02-02 21:00:00.000000',1,'2020-02-05 00:00:00.000000',11,'2020-05-06 10:01:02.159924','','+',1,NULL,NULL,1,NULL,NULL),
	(9,'Competitie V1_','2020-01-03 12:37:41.000000','2020-01-03 12:37:42.000000',1,'2020-01-03 00:00:00.000000',12,'2020-05-06 20:53:32.044430',NULL,'~',4,2,NULL,6,4,NULL),
	(9,'Competitie V1','2020-01-03 12:37:41.000000','2020-01-03 12:37:42.000000',1,'2020-01-03 00:00:00.000000',13,'2020-05-06 20:53:58.508959',NULL,'~',4,2,NULL,6,4,NULL),
	(12,'Dit veld is vereist.','2020-01-01 21:00:00.000000','2020-02-02 21:00:00.000000',1,'2020-02-05 00:00:00.000000',14,'2020-05-10 20:44:22.906676',NULL,'~',1,2,NULL,1,NULL,NULL),
	(5,'Training D1','2020-01-03 12:22:50.000000','2020-01-03 12:22:52.000000',1,'2020-01-03 00:00:00.000000',15,'2020-05-30 10:16:12.549380',NULL,'~',1,3,NULL,1,4,1),
	(5,'Training D1','2020-01-03 12:22:50.000000','2020-01-03 12:22:52.000000',1,'2020-01-03 00:00:00.000000',16,'2020-05-30 10:16:24.883176',NULL,'~',1,3,NULL,1,4,2),
	(5,'Training D1','2020-01-03 12:22:50.000000','2020-01-03 12:22:52.000000',1,'2020-01-03 00:00:00.000000',17,'2020-05-30 10:16:30.757877',NULL,'~',1,3,NULL,1,4,1),
	(13,'TEST clubavond vrijdag','2025-09-05 16:45:00.000000','2025-09-05 16:45:00.000000',1,'2020-08-12 08:43:07.635030',18,'2020-08-12 08:43:07.636732',NULL,'+',3,25,NULL,4,NULL,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',19,'2020-08-12 08:43:48.617496',NULL,'+',1,25,NULL,124,NULL,NULL),
	(15,'TEST competitie','2025-09-04 17:30:00.000000','2025-09-04 17:30:00.000000',1,'2020-08-12 08:44:25.287051',20,'2020-08-12 08:44:25.288305',NULL,'+',4,25,NULL,125,NULL,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',21,'2020-08-12 08:46:22.692500',NULL,'~',1,1,NULL,124,13,NULL),
	(15,'TEST competitie','2025-09-04 17:30:00.000000','2025-09-04 17:30:00.000000',1,'2020-08-12 08:44:25.287051',22,'2020-08-12 08:46:38.575212',NULL,'~',4,1,NULL,125,13,NULL),
	(16,'TEST teamwedstrijd','2025-09-05 17:00:00.000000','2025-09-05 19:00:00.000000',1,'2020-08-12 11:33:25.070367',23,'2020-08-12 11:33:25.071529',NULL,'+',5,1,NULL,127,NULL,NULL),
	(12,'Dit veld is vereist.','2020-01-01 21:00:00.000000','2020-02-02 21:00:00.000000',1,'2020-02-05 00:00:00.000000',24,'2020-08-12 11:33:38.003065',NULL,'-',1,1,NULL,1,NULL,NULL),
	(17,'TEST activiteit zonder leden','2025-08-22 17:00:00.000000','2025-08-22 17:00:00.000000',1,'2020-08-23 14:43:16.615247',27,'2020-08-23 14:43:16.616173',NULL,'+',1,25,NULL,2,NULL,NULL),
	(33,'NIEUWE activiteit','2020-08-31 17:00:00.000000','2020-08-31 17:00:00.000000',1,'2020-08-31 18:02:41.917433',87,'2020-08-31 18:02:41.919488',NULL,'+',4,25,NULL,1,NULL,NULL),
	(33,'NIEUWE activiteit (bewerkt)','2020-08-31 17:00:00.000000','2020-08-31 17:00:00.000000',1,'2020-08-31 18:02:41.917433',88,'2020-08-31 18:02:47.073682',NULL,'~',4,25,NULL,1,NULL,NULL),
	(33,'NIEUWE activiteit (bewerkt)','2020-08-31 17:00:00.000000','2020-08-31 17:00:00.000000',1,'2020-08-31 18:02:41.917433',89,'2020-08-31 18:02:50.914333',NULL,'-',4,25,NULL,1,NULL,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',90,'2020-08-31 18:03:53.272493',NULL,'~',1,25,NULL,124,13,1),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',91,'2020-08-31 18:03:55.761759',NULL,'~',1,25,NULL,124,13,NULL),
	(34,'NIEUWE activiteit','2020-09-03 17:00:00.000000','2020-09-03 17:00:00.000000',1,'2020-09-03 11:03:45.656625',92,'2020-09-03 11:03:45.672246',NULL,'+',4,25,NULL,1,NULL,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',93,'2020-09-03 11:11:43.030604',NULL,'~',1,25,NULL,124,13,1),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',94,'2020-09-03 11:11:45.626829',NULL,'~',1,25,NULL,124,13,NULL),
	(34,'NIEUWE activiteit (bewerkt)','2020-09-03 17:00:00.000000','2020-09-03 17:00:00.000000',1,'2020-09-03 11:03:45.656625',95,'2020-09-03 11:14:17.613047',NULL,'~',4,25,NULL,1,NULL,NULL),
	(34,'NIEUWE activiteit (bewerkt)','2020-09-03 17:00:00.000000','2020-09-03 17:00:00.000000',1,'2020-09-03 11:03:45.656625',96,'2020-09-03 11:14:22.656111',NULL,'-',4,25,NULL,1,NULL,NULL),
	(35,'NIEUWE activiteit','2020-09-03 17:00:00.000000','2020-09-03 17:00:00.000000',1,'2020-09-03 11:14:49.478054',97,'2020-09-03 11:14:49.479405',NULL,'+',4,25,NULL,1,NULL,NULL),
	(35,'NIEUWE activiteit (bewerkt)','2020-09-03 17:00:00.000000','2020-09-03 17:00:00.000000',1,'2020-09-03 11:14:49.478054',98,'2020-09-03 11:14:53.119655',NULL,'~',4,25,NULL,1,NULL,NULL),
	(35,'NIEUWE activiteit (bewerkt)','2020-09-03 17:00:00.000000','2020-09-03 17:00:00.000000',1,'2020-09-03 11:14:49.478054',99,'2020-09-03 11:14:55.930486',NULL,'-',4,25,NULL,1,NULL,NULL),
	(36,'NIEUWE activiteit','2020-09-09 17:00:00.000000','2020-09-09 17:00:00.000000',1,'2020-09-09 06:22:44.385536',100,'2020-09-09 06:22:44.388410',NULL,'+',4,25,NULL,1,NULL,NULL),
	(36,'NIEUWE activiteit (bewerkt)','2020-09-09 17:00:00.000000','2020-09-09 17:00:00.000000',1,'2020-09-09 06:22:44.385536',101,'2020-09-09 06:22:47.616997',NULL,'~',4,25,NULL,1,NULL,NULL),
	(36,'NIEUWE activiteit (bewerkt)','2020-09-09 17:00:00.000000','2020-09-09 17:00:00.000000',1,'2020-09-09 06:22:44.385536',102,'2020-09-09 06:22:50.212617',NULL,'-',4,25,NULL,1,NULL,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',103,'2020-09-09 06:23:43.961078',NULL,'~',1,25,NULL,124,13,1),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',104,'2020-09-09 06:23:46.799086',NULL,'~',1,25,NULL,124,13,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',105,'2020-09-09 07:30:11.813110',NULL,'~',1,27,NULL,124,13,1),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',106,'2020-09-09 07:30:14.421606',NULL,'~',1,27,NULL,124,13,NULL),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',107,'2020-09-09 07:45:14.098482',NULL,'~',1,28,NULL,124,13,1),
	(14,'TEST training','2025-09-04 16:45:00.000000','2025-09-04 16:45:00.000000',1,'2020-08-12 08:43:48.616424',108,'2020-09-09 07:45:18.632527',NULL,'~',1,28,NULL,124,13,NULL);

/*!40000 ALTER TABLE `magnus_activities_historicalactivity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_activities_historicalactivitysubscription
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_activities_historicalactivitysubscription`;

CREATE TABLE `magnus_activities_historicalactivitysubscription` (
  `id` int(11) NOT NULL,
  `registered` tinyint(1) DEFAULT NULL,
  `spotted` tinyint(1) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `memberGroupRole_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_activities_hi_history_user_id_239029d7_fk_magnus_us` (`history_user_id`),
  KEY `magnus_activities_historicalactivitysubscription_id_eeb8a987` (`id`),
  KEY `magnus_activities_historica_activity_id_b50932d8` (`activity_id`),
  KEY `magnus_activities_historica_memberGroupRole_id_d4e4428a` (`memberGroupRole_id`),
  CONSTRAINT `magnus_activities_hi_history_user_id_239029d7_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_activities_historicalactivitysubscription` WRITE;
/*!40000 ALTER TABLE `magnus_activities_historicalactivitysubscription` DISABLE KEYS */;

INSERT INTO `magnus_activities_historicalactivitysubscription` (`id`, `registered`, `spotted`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `activity_id`, `history_user_id`, `memberGroupRole_id`)
VALUES
	(18,NULL,0,'2020-02-23 00:00:00.000000',1,'2020-05-06 10:01:01.648826','','+',5,NULL,5),
	(19,NULL,0,'2020-02-23 00:00:00.000000',2,'2020-05-06 10:01:01.649054','','+',5,NULL,2),
	(20,NULL,0,'2020-02-23 00:00:00.000000',3,'2020-05-06 10:01:01.649157','','+',7,NULL,4),
	(21,1,0,'2020-02-23 00:00:00.000000',4,'2020-05-06 10:01:01.649255','','+',7,NULL,14),
	(22,1,0,'2020-02-23 00:00:00.000000',5,'2020-05-06 10:01:01.649347','','+',9,NULL,18),
	(23,NULL,1,'2020-02-23 00:00:00.000000',6,'2020-05-06 10:01:01.649439','','+',5,NULL,9),
	(24,NULL,1,'2020-02-23 00:00:00.000000',7,'2020-05-06 10:01:01.649542','','+',9,NULL,10),
	(25,1,0,'2020-02-23 00:00:00.000000',8,'2020-05-06 10:01:01.649634','','+',5,NULL,12),
	(26,1,0,'2020-02-23 00:00:00.000000',9,'2020-05-06 10:01:01.649725','','+',9,NULL,17),
	(27,NULL,0,'2020-02-23 00:00:00.000000',10,'2020-05-06 10:01:01.649817','','+',9,NULL,8),
	(28,NULL,0,'2020-02-23 00:00:00.000000',11,'2020-05-06 10:01:01.649908','','+',7,NULL,1),
	(29,NULL,0,'2020-02-23 00:00:00.000000',12,'2020-05-06 10:01:01.649998','','+',7,NULL,3),
	(30,1,0,'2020-02-23 00:00:00.000000',13,'2020-05-06 10:01:01.650091','','+',5,NULL,11),
	(31,1,0,'2020-02-23 00:00:00.000000',14,'2020-05-06 10:01:01.650189','','+',7,NULL,13),
	(32,0,0,'2020-02-23 00:00:00.000000',15,'2020-05-06 10:01:01.650280','','+',9,NULL,19),
	(33,0,0,'2020-02-23 00:00:00.000000',16,'2020-05-06 10:01:01.650422','','+',9,NULL,22),
	(34,1,1,'2020-02-24 00:00:00.000000',17,'2020-05-06 10:01:01.650592','','+',1,NULL,14),
	(36,0,1,'2020-02-26 00:00:00.000000',18,'2020-05-06 10:01:01.650684','','+',1,NULL,13),
	(37,1,NULL,'2020-03-01 00:00:00.000000',19,'2020-05-06 10:01:01.650776','','+',4,NULL,7),
	(38,NULL,1,'2020-03-01 00:00:00.000000',20,'2020-05-06 10:01:01.650873','','+',8,NULL,24),
	(39,NULL,0,'2020-03-23 00:00:00.000000',21,'2020-05-06 10:01:01.650965','','+',8,NULL,20),
	(40,1,NULL,'2020-03-23 00:00:00.000000',22,'2020-05-06 10:01:01.651054','','+',12,NULL,12),
	(41,1,NULL,'2020-03-23 00:00:00.000000',23,'2020-05-06 10:01:01.651142','','+',3,NULL,12),
	(42,1,1,'2020-04-13 00:00:00.000000',24,'2020-05-06 10:01:01.651229','','+',10,NULL,16),
	(43,0,NULL,'2020-04-18 00:00:00.000000',25,'2020-05-06 10:01:01.651317','','+',12,NULL,11),
	(44,0,NULL,'2020-04-26 00:00:00.000000',26,'2020-05-06 10:01:01.651415','','+',3,NULL,11),
	(21,0,0,'2020-02-23 00:00:00.000000',27,'2020-05-23 09:50:23.691975',NULL,'~',7,23,14),
	(22,0,0,'2020-02-23 00:00:00.000000',28,'2020-05-23 09:50:23.739060',NULL,'~',9,23,18),
	(21,1,0,'2020-02-23 00:00:00.000000',29,'2020-05-23 09:50:24.834787',NULL,'~',7,23,14),
	(22,1,0,'2020-02-23 00:00:00.000000',30,'2020-05-23 09:50:24.854639',NULL,'~',9,23,18),
	(21,0,0,'2020-02-23 00:00:00.000000',31,'2020-05-23 09:50:26.527594',NULL,'~',7,23,14),
	(22,0,0,'2020-02-23 00:00:00.000000',32,'2020-05-23 09:50:26.552696',NULL,'~',9,23,18),
	(21,1,0,'2020-02-23 00:00:00.000000',33,'2020-05-23 09:50:27.065347',NULL,'~',7,23,14),
	(22,1,0,'2020-02-23 00:00:00.000000',34,'2020-05-23 09:50:27.079034',NULL,'~',9,23,18),
	(21,0,0,'2020-02-23 00:00:00.000000',35,'2020-05-23 09:50:28.081791',NULL,'~',7,23,14),
	(22,0,0,'2020-02-23 00:00:00.000000',36,'2020-05-23 09:50:30.105756',NULL,'~',9,23,18),
	(22,1,0,'2020-02-23 00:00:00.000000',37,'2020-05-23 09:50:31.193840',NULL,'~',9,23,18),
	(21,1,0,'2020-02-23 00:00:00.000000',38,'2020-05-23 09:50:31.997949',NULL,'~',7,23,14),
	(21,0,0,'2020-02-23 00:00:00.000000',39,'2020-05-23 09:50:33.207669',NULL,'~',7,23,14),
	(22,0,0,'2020-02-23 00:00:00.000000',40,'2020-05-23 09:50:33.232565',NULL,'~',9,23,18),
	(21,1,0,'2020-02-23 00:00:00.000000',41,'2020-05-23 09:50:33.719978',NULL,'~',7,23,14),
	(22,1,0,'2020-02-23 00:00:00.000000',42,'2020-05-23 09:50:33.743953',NULL,'~',9,23,18),
	(21,1,1,'2020-02-23 00:00:00.000000',43,'2020-06-20 07:15:49.785137',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',44,'2020-06-20 07:15:49.803351',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',45,'2020-06-20 07:15:53.523611',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',46,'2020-06-20 07:15:53.542054',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',47,'2020-06-20 09:44:41.153955',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',48,'2020-06-20 09:44:41.167601',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',49,'2020-06-20 09:51:40.988138',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',50,'2020-06-20 09:51:41.016339',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',51,'2020-06-20 10:04:46.575335',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',52,'2020-06-20 10:04:46.589453',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',53,'2020-06-20 10:05:16.267010',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',54,'2020-06-20 10:05:16.296333',NULL,'~',9,3,18),
	(25,1,1,'2020-02-23 00:00:00.000000',55,'2020-06-20 10:07:04.300444',NULL,'~',5,3,12),
	(26,1,1,'2020-02-23 00:00:00.000000',56,'2020-06-20 10:07:04.320865',NULL,'~',9,3,17),
	(21,1,1,'2020-02-23 00:00:00.000000',57,'2020-06-20 10:07:36.454019',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',58,'2020-06-20 10:07:36.470144',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',59,'2020-06-20 10:13:40.079441',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',60,'2020-06-20 10:13:40.096176',NULL,'~',9,3,18),
	(28,NULL,1,'2020-02-23 00:00:00.000000',61,'2020-06-20 10:13:45.157076',NULL,'~',7,3,1),
	(29,NULL,1,'2020-02-23 00:00:00.000000',62,'2020-06-20 10:13:45.169101',NULL,'~',7,3,3),
	(28,NULL,0,'2020-02-23 00:00:00.000000',63,'2020-06-20 10:13:47.106820',NULL,'~',7,3,1),
	(29,NULL,0,'2020-02-23 00:00:00.000000',64,'2020-06-20 10:13:47.119191',NULL,'~',7,3,3),
	(21,1,0,'2020-02-23 00:00:00.000000',65,'2020-06-20 10:13:48.674950',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',66,'2020-06-20 10:13:48.692397',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',67,'2020-06-20 10:13:54.969412',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',68,'2020-06-20 10:13:54.987354',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',69,'2020-06-20 10:15:45.799460',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',70,'2020-06-20 10:15:45.813963',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',71,'2020-06-20 10:35:46.559607',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',72,'2020-06-20 10:35:46.570918',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',73,'2020-06-20 10:36:17.486638',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',74,'2020-06-20 10:36:17.506227',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',75,'2020-06-20 10:36:21.354291',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',76,'2020-06-20 10:36:21.369898',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',77,'2020-06-20 10:39:20.844240',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',78,'2020-06-20 10:39:20.857193',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',79,'2020-06-20 10:39:28.145377',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',80,'2020-06-20 10:39:28.164676',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',81,'2020-06-20 10:41:44.244778',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',82,'2020-06-20 10:41:44.267502',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',83,'2020-06-20 10:42:42.783386',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',84,'2020-06-20 10:42:42.799264',NULL,'~',9,3,18),
	(28,NULL,1,'2020-02-23 00:00:00.000000',85,'2020-06-20 10:43:43.520691',NULL,'~',7,3,1),
	(29,NULL,1,'2020-02-23 00:00:00.000000',86,'2020-06-20 10:43:43.550507',NULL,'~',7,3,3),
	(21,1,0,'2020-02-23 00:00:00.000000',87,'2020-06-20 10:44:32.346029',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',88,'2020-06-20 10:44:32.362548',NULL,'~',9,3,18),
	(28,NULL,0,'2020-02-23 00:00:00.000000',89,'2020-06-20 10:44:33.389165',NULL,'~',7,3,1),
	(29,NULL,0,'2020-02-23 00:00:00.000000',90,'2020-06-20 10:44:33.410083',NULL,'~',7,3,3),
	(21,1,1,'2020-02-23 00:00:00.000000',91,'2020-06-20 10:44:36.098241',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',92,'2020-06-20 10:44:36.109918',NULL,'~',9,3,18),
	(28,NULL,1,'2020-02-23 00:00:00.000000',93,'2020-06-20 10:44:38.310456',NULL,'~',7,3,1),
	(29,NULL,1,'2020-02-23 00:00:00.000000',94,'2020-06-20 10:44:38.325336',NULL,'~',7,3,3),
	(28,NULL,0,'2020-02-23 00:00:00.000000',95,'2020-06-20 10:44:43.313979',NULL,'~',7,3,1),
	(29,NULL,0,'2020-02-23 00:00:00.000000',96,'2020-06-20 10:44:43.329595',NULL,'~',7,3,3),
	(21,1,0,'2020-02-23 00:00:00.000000',97,'2020-06-20 10:44:46.019895',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',98,'2020-06-20 10:44:46.042444',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',99,'2020-06-20 10:45:23.345954',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',100,'2020-06-20 10:45:23.370395',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',101,'2020-06-20 10:45:33.505219',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',102,'2020-06-20 10:45:33.520347',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',103,'2020-06-20 10:49:38.572924',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',104,'2020-06-20 10:49:38.587545',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',105,'2020-06-20 10:49:39.896803',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',106,'2020-06-20 10:49:39.911952',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',107,'2020-06-20 10:51:02.470743',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',108,'2020-06-20 10:51:02.494985',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',109,'2020-06-20 10:51:03.768687',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',110,'2020-06-20 10:51:03.781304',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',111,'2020-06-20 10:53:23.717593',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',112,'2020-06-20 10:53:23.730926',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',113,'2020-06-20 10:53:25.118027',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',114,'2020-06-20 10:53:25.135245',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',115,'2020-06-20 11:57:55.451892',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',116,'2020-06-20 11:57:55.468070',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',117,'2020-06-20 11:57:56.868725',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',118,'2020-06-20 11:57:56.884982',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',119,'2020-06-20 15:13:20.464417',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',120,'2020-06-20 15:13:20.475468',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',121,'2020-06-20 15:13:21.837129',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',122,'2020-06-20 15:13:21.858875',NULL,'~',9,3,18),
	(21,1,1,'2020-02-23 00:00:00.000000',123,'2020-06-21 06:04:28.147059',NULL,'~',7,3,14),
	(22,1,1,'2020-02-23 00:00:00.000000',124,'2020-06-21 06:04:28.164307',NULL,'~',9,3,18),
	(21,1,0,'2020-02-23 00:00:00.000000',125,'2020-06-21 06:04:29.412353',NULL,'~',7,3,14),
	(22,1,0,'2020-02-23 00:00:00.000000',126,'2020-06-21 06:04:29.427543',NULL,'~',9,3,18),
	(43,0,NULL,'2020-04-18 00:00:00.000000',127,'2020-08-12 11:33:37.997197',NULL,'-',12,1,11),
	(40,1,NULL,'2020-03-23 00:00:00.000000',128,'2020-08-12 11:33:37.999212',NULL,'-',12,1,12),
	(56,NULL,1,'2020-08-31 18:03:25.289434',199,'2020-08-31 18:03:25.290916',NULL,'+',14,25,45),
	(56,NULL,0,'2020-08-31 18:03:25.289434',200,'2020-08-31 18:03:26.850245',NULL,'~',14,25,45),
	(57,NULL,1,'2020-08-31 18:04:26.271315',201,'2020-08-31 18:04:26.272602',NULL,'+',14,25,41),
	(58,NULL,1,'2020-08-31 18:04:26.281040',202,'2020-08-31 18:04:26.282482',NULL,'+',15,25,42),
	(57,NULL,0,'2020-08-31 18:04:26.271315',203,'2020-08-31 18:04:27.781628',NULL,'~',14,25,41),
	(58,NULL,0,'2020-08-31 18:04:26.281040',204,'2020-08-31 18:04:27.793465',NULL,'~',15,25,42),
	(59,NULL,1,'2020-09-02 11:50:43.777652',205,'2020-09-02 11:50:43.778466',NULL,'+',14,25,25),
	(59,NULL,0,'2020-09-02 11:50:43.777652',206,'2020-09-02 11:50:47.906064',NULL,'~',14,25,25),
	(60,NULL,1,'2020-09-02 11:52:11.511980',207,'2020-09-02 11:52:11.512817',NULL,'+',15,1,30),
	(60,NULL,0,'2020-09-02 11:52:11.511980',208,'2020-09-02 11:54:04.680990',NULL,'~',15,1,30),
	(59,NULL,1,'2020-09-02 11:50:43.777652',209,'2020-09-03 11:11:19.012096',NULL,'~',14,25,25),
	(59,NULL,0,'2020-09-02 11:50:43.777652',210,'2020-09-03 11:11:20.410717',NULL,'~',14,25,25),
	(57,NULL,1,'2020-08-31 18:04:26.271315',211,'2020-09-03 11:12:15.825583',NULL,'~',14,25,41),
	(58,NULL,1,'2020-08-31 18:04:26.281040',212,'2020-09-03 11:12:15.850986',NULL,'~',15,25,42),
	(57,NULL,0,'2020-08-31 18:04:26.271315',213,'2020-09-03 11:12:17.284324',NULL,'~',14,25,41),
	(58,NULL,0,'2020-08-31 18:04:26.281040',214,'2020-09-03 11:12:17.309160',NULL,'~',15,25,42),
	(59,NULL,1,'2020-09-02 11:50:43.777652',215,'2020-09-03 16:10:19.391088',NULL,'~',14,27,25),
	(61,0,NULL,'2020-09-03 16:12:26.390856',216,'2020-09-03 16:12:26.415078',NULL,'+',14,27,40),
	(61,1,NULL,'2020-09-03 16:12:26.390856',217,'2020-09-03 16:28:58.242814',NULL,'~',14,27,40),
	(61,0,NULL,'2020-09-03 16:12:26.390856',218,'2020-09-03 16:29:02.638418',NULL,'~',14,27,40),
	(61,1,NULL,'2020-09-03 16:12:26.390856',219,'2020-09-03 16:29:03.391555',NULL,'~',14,27,40),
	(61,0,NULL,'2020-09-03 16:12:26.390856',220,'2020-09-03 16:30:08.686939',NULL,'~',14,27,40),
	(61,1,NULL,'2020-09-03 16:12:26.390856',221,'2020-09-03 16:30:09.897618',NULL,'~',14,27,40),
	(61,0,NULL,'2020-09-03 16:12:26.390856',222,'2020-09-03 16:30:45.842788',NULL,'~',14,27,40),
	(57,0,0,'2020-08-31 18:04:26.271315',223,'2020-09-03 17:23:27.759436',NULL,'~',14,33,41),
	(58,0,0,'2020-08-31 18:04:26.281040',224,'2020-09-03 17:23:27.778755',NULL,'~',15,33,42),
	(57,1,0,'2020-08-31 18:04:26.271315',225,'2020-09-03 17:23:34.059865',NULL,'~',14,33,41),
	(58,1,0,'2020-08-31 18:04:26.281040',226,'2020-09-03 17:23:34.089147',NULL,'~',15,33,42),
	(57,0,0,'2020-08-31 18:04:26.271315',227,'2020-09-03 17:23:47.174498',NULL,'~',14,33,41),
	(58,0,0,'2020-08-31 18:04:26.281040',228,'2020-09-03 17:23:47.190506',NULL,'~',15,33,42),
	(57,1,0,'2020-08-31 18:04:26.271315',229,'2020-09-03 17:23:52.356106',NULL,'~',14,33,41),
	(58,1,0,'2020-08-31 18:04:26.281040',230,'2020-09-03 17:23:52.369534',NULL,'~',15,33,42),
	(57,0,0,'2020-08-31 18:04:26.271315',231,'2020-09-03 17:24:29.457545',NULL,'~',14,33,41),
	(58,0,0,'2020-08-31 18:04:26.281040',232,'2020-09-03 17:24:29.468692',NULL,'~',15,33,42),
	(57,1,0,'2020-08-31 18:04:26.271315',233,'2020-09-03 17:24:30.849558',NULL,'~',14,33,41),
	(58,1,0,'2020-08-31 18:04:26.281040',234,'2020-09-03 17:24:32.419840',NULL,'~',15,33,42),
	(59,NULL,0,'2020-09-02 11:50:43.777652',235,'2020-09-03 19:47:48.692189',NULL,'~',14,29,25),
	(60,NULL,0,'2020-09-02 11:52:11.511980',236,'2020-09-03 19:47:48.707265',NULL,'~',15,29,30),
	(57,1,1,'2020-08-31 18:04:26.271315',237,'2020-09-03 19:47:59.500596',NULL,'~',14,29,41),
	(58,1,1,'2020-08-31 18:04:26.281040',238,'2020-09-03 19:47:59.515599',NULL,'~',15,29,42),
	(57,1,0,'2020-08-31 18:04:26.271315',239,'2020-09-03 19:48:00.982083',NULL,'~',14,29,41),
	(58,1,0,'2020-08-31 18:04:26.281040',240,'2020-09-03 19:48:01.003329',NULL,'~',15,29,42),
	(59,NULL,1,'2020-09-02 11:50:43.777652',241,'2020-09-03 19:50:44.300636',NULL,'~',14,29,25),
	(60,NULL,1,'2020-09-02 11:52:11.511980',242,'2020-09-03 19:50:44.323469',NULL,'~',15,29,30),
	(59,NULL,0,'2020-09-02 11:50:43.777652',243,'2020-09-03 19:50:46.545688',NULL,'~',14,29,25),
	(60,NULL,0,'2020-09-02 11:52:11.511980',244,'2020-09-03 19:50:46.559311',NULL,'~',15,29,30),
	(59,NULL,1,'2020-09-02 11:50:43.777652',245,'2020-09-09 06:23:20.753000',NULL,'~',14,25,25),
	(59,NULL,0,'2020-09-02 11:50:43.777652',246,'2020-09-09 06:23:22.091427',NULL,'~',14,25,25),
	(57,1,1,'2020-08-31 18:04:26.271315',247,'2020-09-09 06:24:11.536120',NULL,'~',14,25,41),
	(58,1,1,'2020-08-31 18:04:26.281040',248,'2020-09-09 06:24:11.550665',NULL,'~',15,25,42),
	(57,1,0,'2020-08-31 18:04:26.271315',249,'2020-09-09 06:24:12.986100',NULL,'~',14,25,41),
	(58,1,0,'2020-08-31 18:04:26.281040',250,'2020-09-09 06:24:12.998233',NULL,'~',15,25,42),
	(57,0,0,'2020-08-31 18:04:26.271315',251,'2020-09-09 07:25:34.913166',NULL,'~',14,33,41),
	(58,0,0,'2020-08-31 18:04:26.281040',252,'2020-09-09 07:25:34.935553',NULL,'~',15,33,42),
	(57,1,0,'2020-08-31 18:04:26.271315',253,'2020-09-09 07:25:36.467690',NULL,'~',14,33,41),
	(58,1,0,'2020-08-31 18:04:26.281040',254,'2020-09-09 07:25:37.956479',NULL,'~',15,33,42),
	(59,NULL,1,'2020-09-02 11:50:43.777652',255,'2020-09-09 07:29:36.612898',NULL,'~',14,27,25),
	(59,NULL,0,'2020-09-02 11:50:43.777652',256,'2020-09-09 07:29:38.075000',NULL,'~',14,27,25),
	(59,NULL,1,'2020-09-02 11:50:43.777652',257,'2020-09-09 07:44:46.297309',NULL,'~',14,28,25),
	(59,NULL,0,'2020-09-02 11:50:43.777652',258,'2020-09-09 07:44:47.829650',NULL,'~',14,28,25),
	(59,NULL,1,'2020-09-02 11:50:43.777652',259,'2020-09-09 07:58:36.759580',NULL,'~',14,29,25),
	(60,NULL,1,'2020-09-02 11:52:11.511980',260,'2020-09-09 07:58:36.779698',NULL,'~',15,29,30),
	(59,NULL,0,'2020-09-02 11:50:43.777652',261,'2020-09-09 07:58:38.191386',NULL,'~',14,29,25),
	(60,NULL,0,'2020-09-02 11:52:11.511980',262,'2020-09-09 07:58:38.206488',NULL,'~',15,29,30),
	(57,1,1,'2020-08-31 18:04:26.271315',263,'2020-09-09 07:58:47.513756',NULL,'~',14,29,41),
	(58,1,1,'2020-08-31 18:04:26.281040',264,'2020-09-09 07:58:47.535732',NULL,'~',15,29,42),
	(57,1,0,'2020-08-31 18:04:26.271315',265,'2020-09-09 07:58:48.913247',NULL,'~',14,29,41),
	(58,1,0,'2020-08-31 18:04:26.281040',266,'2020-09-09 07:58:48.940230',NULL,'~',15,29,42);

/*!40000 ALTER TABLE `magnus_activities_historicalactivitysubscription` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_invitations_historicalinvitation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_invitations_historicalinvitation`;

CREATE TABLE `magnus_invitations_historicalinvitation` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `key` varchar(64) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `inviter_id` int(11) DEFAULT NULL,
  `userMember_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_invitations_h_history_user_id_f037a8c4_fk_magnus_us` (`history_user_id`),
  KEY `magnus_invitations_historicalinvitation_id_bc7c3aab` (`id`),
  KEY `magnus_invitations_historicalinvitation_email_2b418cdf` (`email`),
  KEY `magnus_invitations_historicalinvitation_key_04dcd53d` (`key`),
  KEY `magnus_invitations_historicalinvitation_inviter_id_30e9eb09` (`inviter_id`),
  KEY `magnus_invitations_historicalinvitation_userMember_id_c18f0255` (`userMember_id`),
  CONSTRAINT `magnus_invitations_h_history_user_id_f037a8c4_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_invitations_historicalinvitation` WRITE;
/*!40000 ALTER TABLE `magnus_invitations_historicalinvitation` DISABLE KEYS */;

INSERT INTO `magnus_invitations_historicalinvitation` (`id`, `first_name`, `last_name`, `email`, `created`, `accepted`, `key`, `sent`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `inviter_id`, `userMember_id`)
VALUES
	(22,'Jochem','Aubel','jochem.aubel@tele2.nl','2020-04-19 11:34:26.669008',0,'qnnpi9ydimu81ftagoqan7f30xmpcxyywg0hnikqmkzldfzfmbwddjl51jy5x2o8','2020-04-19 11:34:26.930876',1,'2020-05-06 10:01:01.574045','','+',NULL,NULL,NULL),
	(23,'Bes','B','besselb@yahoo.com','2020-04-21 13:59:00.242818',0,'kv8gamril8ush53fdgweslfekuyvy5djeruzat35zatycgz4rgvdiueyynve2nrh','2020-04-21 13:59:01.146823',2,'2020-05-06 10:01:01.574328','','+',NULL,2,NULL),
	(24,'Koen','Aubel','koenaubel@gmail.com','2020-04-21 18:42:00.136506',1,'qb0i0b5njmq6ghyjguxqu7aypesgvjzczljmshpqujua7zuyhtkwc23zvxg0fjxm','2020-04-21 18:42:00.962523',3,'2020-05-06 10:01:01.574422','','+',NULL,NULL,NULL),
	(25,'Daan','Aubel','daanaubel@gmail.com','2020-04-21 18:45:54.964983',1,'t6zocorcjlptfwjyfyq5wde2cpzip9qbvejfieck88klcgugrk783pas2g0ejsot','2020-04-21 18:45:55.357605',4,'2020-05-06 10:01:01.574518','','+',NULL,NULL,NULL),
	(25,'Daan','Aubel','daanaubel@gmail.com','2020-04-21 18:45:54.964983',1,'t6zocorcjlptfwjyfyq5wde2cpzip9qbvejfieck88klcgugrk783pas2g0ejsot','2020-04-21 18:45:55.357605',5,'2020-08-12 07:54:14.516136',NULL,'-',1,NULL,NULL),
	(24,'Koen','Aubel','koenaubel@gmail.com','2020-04-21 18:42:00.136506',1,'qb0i0b5njmq6ghyjguxqu7aypesgvjzczljmshpqujua7zuyhtkwc23zvxg0fjxm','2020-04-21 18:42:00.962523',6,'2020-08-12 07:54:14.517980',NULL,'-',1,NULL,NULL),
	(23,'Bes','B','besselb@yahoo.com','2020-04-21 13:59:00.242818',0,'kv8gamril8ush53fdgweslfekuyvy5djeruzat35zatycgz4rgvdiueyynve2nrh','2020-04-21 13:59:01.146823',7,'2020-08-12 07:54:14.519703',NULL,'-',1,2,NULL),
	(22,'Jochem','Aubel','jochem.aubel@tele2.nl','2020-04-19 11:34:26.669008',0,'qnnpi9ydimu81ftagoqan7f30xmpcxyywg0hnikqmkzldfzfmbwddjl51jy5x2o8','2020-04-19 11:34:26.930876',8,'2020-08-12 07:54:14.522220',NULL,'-',1,NULL,NULL),
	(26,'Jochem','Aubel','jochem.aubel@gmail.com','2020-08-12 08:25:34.478624',0,'er3meevtzs5ynh3evqga5w1krwtchlmj82b8ei3un0yswszj9rplx2ny7ar0prhg',NULL,9,'2020-08-12 08:25:34.486123',NULL,'+',1,NULL,NULL),
	(26,'Jochem','Aubel','jochem.aubel@gmail.com','2020-08-12 08:25:34.478624',0,'er3meevtzs5ynh3evqga5w1krwtchlmj82b8ei3un0yswszj9rplx2ny7ar0prhg','2020-08-12 08:25:35.234197',10,'2020-08-12 08:25:35.239935',NULL,'~',1,NULL,NULL),
	(26,'Jochem','Aubel','jochem.aubel@gmail.com','2020-08-12 08:25:34.478624',0,'bhuja8caubqwjjjruvmcjqrd2iqnuhiiz9n8vjuadkfc3fdthrwrsfjgcymphomq','2020-08-12 08:25:35.234197',11,'2020-08-12 08:27:45.963743',NULL,'~',1,NULL,23),
	(26,'Jochem','Aubel','jochem.aubel@gmail.com','2020-08-12 08:25:34.478624',0,'bhuja8caubqwjjjruvmcjqrd2iqnuhiiz9n8vjuadkfc3fdthrwrsfjgcymphomq','2020-08-12 08:25:35.234197',12,'2020-08-12 08:28:35.871434',NULL,'-',1,NULL,23),
	(27,'Sandra','(Staff)','jochem.aubel@gmail.com','2020-08-12 08:28:55.382227',0,'ytx819apq9vz31xwdqwhmsa1jf3l0awylgygaw4docmsfsy17knyti4tcxfvet09',NULL,13,'2020-08-12 08:28:55.398054',NULL,'+',1,NULL,23),
	(27,'Sandra','(Staff)','jochem.aubel@gmail.com','2020-08-12 08:28:55.382227',0,'ytx819apq9vz31xwdqwhmsa1jf3l0awylgygaw4docmsfsy17knyti4tcxfvet09','2020-08-12 08:28:55.621368',14,'2020-08-12 08:28:55.623831',NULL,'~',1,NULL,23),
	(27,'Sandra','(Staff)','jochem.aubel@gmail.com','2020-08-12 08:28:55.382227',1,'ytx819apq9vz31xwdqwhmsa1jf3l0awylgygaw4docmsfsy17knyti4tcxfvet09','2020-08-12 08:28:55.621368',15,'2020-08-12 08:29:37.394154',NULL,'~',NULL,NULL,23),
	(27,'Sandra','(Staff)','jochem.aubel@gmail.com','2020-08-12 08:28:55.382227',1,'ytx819apq9vz31xwdqwhmsa1jf3l0awylgygaw4docmsfsy17knyti4tcxfvet09','2020-08-12 08:28:55.621368',16,'2020-08-12 08:30:44.388351',NULL,'-',1,NULL,23),
	(28,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:48:26.024409',0,'rooxphhp2u0okgtlwzqfw1klynzwm1zy5gfuchztp1ywofxszoemqxp42vcrajfs',NULL,17,'2020-08-12 08:48:26.034644',NULL,'+',1,NULL,NULL),
	(28,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:48:26.024409',0,'rooxphhp2u0okgtlwzqfw1klynzwm1zy5gfuchztp1ywofxszoemqxp42vcrajfs','2020-08-12 08:48:26.474723',18,'2020-08-12 08:48:26.477747',NULL,'~',1,NULL,NULL),
	(28,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:48:26.024409',0,'rooxphhp2u0okgtlwzqfw1klynzwm1zy5gfuchztp1ywofxszoemqxp42vcrajfs','2020-08-12 08:48:26.474723',19,'2020-08-12 08:49:16.836252',NULL,'-',1,NULL,NULL),
	(29,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:49:37.882214',0,'vzkvxbnzbghvgncfvhpeo0ssocvhtgezut3qpywqbcogast2ksswsbruvyayzpzz',NULL,20,'2020-08-12 08:49:37.896796',NULL,'+',1,NULL,24),
	(29,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:49:37.882214',0,'vzkvxbnzbghvgncfvhpeo0ssocvhtgezut3qpywqbcogast2ksswsbruvyayzpzz','2020-08-12 08:49:38.014941',21,'2020-08-12 08:49:38.018462',NULL,'~',1,NULL,24),
	(29,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:49:37.882214',1,'vzkvxbnzbghvgncfvhpeo0ssocvhtgezut3qpywqbcogast2ksswsbruvyayzpzz','2020-08-12 08:49:38.014941',22,'2020-08-12 08:50:17.219911',NULL,'~',NULL,NULL,24),
	(29,'Tinus','(Trainer)','jochem.aubel@gmail.com','2020-08-12 08:49:37.882214',1,'vzkvxbnzbghvgncfvhpeo0ssocvhtgezut3qpywqbcogast2ksswsbruvyayzpzz','2020-08-12 08:49:38.014941',23,'2020-08-12 11:22:26.851933',NULL,'-',1,NULL,24),
	(30,'Huub','(Hulptrainer)','jochem.aubel@tele2.nl','2020-08-12 11:23:05.571544',0,'eein41zw5c79ntctdnudrz1c0v8jz9tpgk90fcquofy7tfgaotoujevecb4vbqao',NULL,24,'2020-08-12 11:23:05.598030',NULL,'+',1,NULL,31),
	(30,'Huub','(Hulptrainer)','jochem.aubel@tele2.nl','2020-08-12 11:23:05.571544',0,'eein41zw5c79ntctdnudrz1c0v8jz9tpgk90fcquofy7tfgaotoujevecb4vbqao','2020-08-12 11:23:05.905853',25,'2020-08-12 11:23:05.908832',NULL,'~',1,NULL,31),
	(31,'Aad','(Aanmeldtafel)','jochem.aubel@gmail.com','2020-08-12 11:23:27.211075',0,'mb6koq0zlub4akrvupav1ayamupvgbyd9vycqbz1n4eniap8th6celwdr44muune',NULL,26,'2020-08-12 11:23:27.229449',NULL,'+',1,NULL,28),
	(31,'Aad','(Aanmeldtafel)','jochem.aubel@gmail.com','2020-08-12 11:23:27.211075',0,'mb6koq0zlub4akrvupav1ayamupvgbyd9vycqbz1n4eniap8th6celwdr44muune','2020-08-12 11:23:27.351976',27,'2020-08-12 11:23:27.355462',NULL,'~',1,NULL,28),
	(32,'Leo','(Lid)','jochem.aubel@perflectie.nl','2020-08-12 11:23:52.271344',0,'bwtdgqxp9aayk2dl4tylhdmet7fi1y1zpqr10zbnbfh193ga9gkzpuccumagh61n',NULL,28,'2020-08-12 11:23:52.286969',NULL,'+',1,NULL,26),
	(32,'Leo','(Lid)','jochem.aubel@perflectie.nl','2020-08-12 11:23:52.271344',0,'bwtdgqxp9aayk2dl4tylhdmet7fi1y1zpqr10zbnbfh193ga9gkzpuccumagh61n','2020-08-12 11:23:52.448096',29,'2020-08-12 11:23:52.450615',NULL,'~',1,NULL,26),
	(33,'Odette','(Ouder)','jochem.aubel@dialog.nl','2020-08-12 11:24:11.703694',0,'ri6bimniry8eyvgxva283nwilgn0zko8aloh00x0hssxjjk1o4r1rkkcj087assd',NULL,30,'2020-08-12 11:24:11.724656',NULL,'+',1,NULL,27),
	(33,'Odette','(Ouder)','jochem.aubel@dialog.nl','2020-08-12 11:24:11.703694',0,'ri6bimniry8eyvgxva283nwilgn0zko8aloh00x0hssxjjk1o4r1rkkcj087assd','2020-08-12 11:24:11.863912',31,'2020-08-12 11:24:11.867222',NULL,'~',1,NULL,27),
	(34,'Tanja','(Teamleider)','jochem@perflectie.nl','2020-08-12 11:24:34.115579',0,'pph4d96orml6sjsnrb1blf4d3hwal8orlr3vmc5ntmqdikwzemtvpbhxrgx9dfu0',NULL,32,'2020-08-12 11:24:34.136464',NULL,'+',1,NULL,25),
	(34,'Tanja','(Teamleider)','jochem@perflectie.nl','2020-08-12 11:24:34.115579',0,'pph4d96orml6sjsnrb1blf4d3hwal8orlr3vmc5ntmqdikwzemtvpbhxrgx9dfu0','2020-08-12 11:24:34.267026',33,'2020-08-12 11:24:34.270636',NULL,'~',1,NULL,25),
	(35,'Cor','(Competitieleider)','jochem@dialog.nl','2020-08-12 11:24:53.075428',0,'u5iwu2k7gvyoxjmjrgmbpdd2bknqxl48cicbeu8ulqorbr2qaylzqefta0okqbii',NULL,34,'2020-08-12 11:24:53.100479',NULL,'+',1,NULL,30),
	(35,'Cor','(Competitieleider)','jochem@dialog.nl','2020-08-12 11:24:53.075428',0,'u5iwu2k7gvyoxjmjrgmbpdd2bknqxl48cicbeu8ulqorbr2qaylzqefta0okqbii','2020-08-12 11:24:53.237352',35,'2020-08-12 11:24:53.240399',NULL,'~',1,NULL,30),
	(30,'Huub','(Hulptrainer)','jochem.aubel@tele2.nl','2020-08-12 11:23:05.571544',1,'eein41zw5c79ntctdnudrz1c0v8jz9tpgk90fcquofy7tfgaotoujevecb4vbqao','2020-08-12 11:23:05.905853',36,'2020-08-12 11:25:26.529603',NULL,'~',NULL,NULL,31),
	(31,'Aad','(Aanmeldtafel)','jochem.aubel@gmail.com','2020-08-12 11:23:27.211075',1,'mb6koq0zlub4akrvupav1ayamupvgbyd9vycqbz1n4eniap8th6celwdr44muune','2020-08-12 11:23:27.351976',37,'2020-08-12 11:25:47.958152',NULL,'~',NULL,NULL,28),
	(35,'Cor','(Competitieleider)','jochem@dialog.nl','2020-08-12 11:24:53.075428',1,'u5iwu2k7gvyoxjmjrgmbpdd2bknqxl48cicbeu8ulqorbr2qaylzqefta0okqbii','2020-08-12 11:24:53.237352',38,'2020-08-12 11:26:36.108317',NULL,'~',NULL,NULL,30),
	(34,'Tanja','(Teamleider)','jochem@perflectie.nl','2020-08-12 11:24:34.115579',1,'pph4d96orml6sjsnrb1blf4d3hwal8orlr3vmc5ntmqdikwzemtvpbhxrgx9dfu0','2020-08-12 11:24:34.267026',39,'2020-08-12 11:26:58.182095',NULL,'~',NULL,NULL,25),
	(33,'Odette','(Ouder)','jochem.aubel@dialog.nl','2020-08-12 11:24:11.703694',1,'ri6bimniry8eyvgxva283nwilgn0zko8aloh00x0hssxjjk1o4r1rkkcj087assd','2020-08-12 11:24:11.863912',40,'2020-08-12 11:27:24.511283',NULL,'~',NULL,NULL,27),
	(32,'Leo','(Lid)','jochem.aubel@perflectie.nl','2020-08-12 11:23:52.271344',1,'bwtdgqxp9aayk2dl4tylhdmet7fi1y1zpqr10zbnbfh193ga9gkzpuccumagh61n','2020-08-12 11:23:52.448096',41,'2020-08-12 11:27:42.661796',NULL,'~',NULL,NULL,26),
	(35,'Cor','(Competitieleider)','jochem@dialog.nl','2020-08-12 11:24:53.075428',1,'u5iwu2k7gvyoxjmjrgmbpdd2bknqxl48cicbeu8ulqorbr2qaylzqefta0okqbii','2020-08-12 11:24:53.237352',42,'2020-08-12 11:28:16.176201',NULL,'-',1,NULL,30),
	(34,'Tanja','(Teamleider)','jochem@perflectie.nl','2020-08-12 11:24:34.115579',1,'pph4d96orml6sjsnrb1blf4d3hwal8orlr3vmc5ntmqdikwzemtvpbhxrgx9dfu0','2020-08-12 11:24:34.267026',43,'2020-08-12 11:28:16.180158',NULL,'-',1,NULL,25),
	(33,'Odette','(Ouder)','jochem.aubel@dialog.nl','2020-08-12 11:24:11.703694',1,'ri6bimniry8eyvgxva283nwilgn0zko8aloh00x0hssxjjk1o4r1rkkcj087assd','2020-08-12 11:24:11.863912',44,'2020-08-12 11:28:16.182927',NULL,'-',1,NULL,27),
	(32,'Leo','(Lid)','jochem.aubel@perflectie.nl','2020-08-12 11:23:52.271344',1,'bwtdgqxp9aayk2dl4tylhdmet7fi1y1zpqr10zbnbfh193ga9gkzpuccumagh61n','2020-08-12 11:23:52.448096',45,'2020-08-12 11:28:16.186267',NULL,'-',1,NULL,26),
	(31,'Aad','(Aanmeldtafel)','jochem.aubel@gmail.com','2020-08-12 11:23:27.211075',1,'mb6koq0zlub4akrvupav1ayamupvgbyd9vycqbz1n4eniap8th6celwdr44muune','2020-08-12 11:23:27.351976',46,'2020-08-12 11:28:16.195522',NULL,'-',1,NULL,28),
	(30,'Huub','(Hulptrainer)','jochem.aubel@tele2.nl','2020-08-12 11:23:05.571544',1,'eein41zw5c79ntctdnudrz1c0v8jz9tpgk90fcquofy7tfgaotoujevecb4vbqao','2020-08-12 11:23:05.905853',47,'2020-08-12 11:28:16.198874',NULL,'-',1,NULL,31),
	(36,'Eduard','(Externe competitieleider)','jochem.aubel@gmail.com','2020-08-12 11:28:37.135428',0,'9vjpridkmc8nmkktjebvczjbikegmjsgt3iupbz8miy1xvx4mrpv4nx2wvgwpoco',NULL,48,'2020-08-12 11:28:37.146819',NULL,'+',1,NULL,29),
	(36,'Eduard','(Externe competitieleider)','jochem.aubel@gmail.com','2020-08-12 11:28:37.135428',0,'9vjpridkmc8nmkktjebvczjbikegmjsgt3iupbz8miy1xvx4mrpv4nx2wvgwpoco','2020-08-12 11:28:37.387504',49,'2020-08-12 11:28:37.394005',NULL,'~',1,NULL,29),
	(36,'Eduard','(Externe competitieleider)','jochem.aubel@gmail.com','2020-08-12 11:28:37.135428',1,'9vjpridkmc8nmkktjebvczjbikegmjsgt3iupbz8miy1xvx4mrpv4nx2wvgwpoco','2020-08-12 11:28:37.387504',50,'2020-08-12 11:42:07.271568',NULL,'~',NULL,NULL,29);

/*!40000 ALTER TABLE `magnus_invitations_historicalinvitation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_invitations_invitation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_invitations_invitation`;

CREATE TABLE `magnus_invitations_invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `key` varchar(64) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `inviter_id` int(11) DEFAULT NULL,
  `userMember_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  UNIQUE KEY `email` (`email`),
  KEY `magnus_invitations_i_inviter_id_81fcc5f9_fk_magnus_us` (`inviter_id`),
  KEY `magnus_invitations_i_userMember_id_f01bbef1_fk_magnus_me` (`userMember_id`),
  CONSTRAINT `magnus_invitations_i_inviter_id_81fcc5f9_fk_magnus_us` FOREIGN KEY (`inviter_id`) REFERENCES `magnus_users_appuser` (`id`),
  CONSTRAINT `magnus_invitations_i_userMember_id_f01bbef1_fk_magnus_me` FOREIGN KEY (`userMember_id`) REFERENCES `magnus_members_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_invitations_invitation` WRITE;
/*!40000 ALTER TABLE `magnus_invitations_invitation` DISABLE KEYS */;

INSERT INTO `magnus_invitations_invitation` (`id`, `first_name`, `last_name`, `email`, `created`, `accepted`, `key`, `sent`, `inviter_id`, `userMember_id`)
VALUES
	(36,'Eduard','(Externe competitieleider)','jochem.aubel@gmail.com','2020-08-12 11:28:37.135428',1,'9vjpridkmc8nmkktjebvczjbikegmjsgt3iupbz8miy1xvx4mrpv4nx2wvgwpoco','2020-08-12 11:28:37.387504',NULL,29);

/*!40000 ALTER TABLE `magnus_invitations_invitation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_invitations_invitation_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_invitations_invitation_members`;

CREATE TABLE `magnus_invitations_invitation_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitation_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_invitations_invit_invitation_id_member_id_aa297f9f_uniq` (`invitation_id`,`member_id`),
  KEY `magnus_invitations_i_member_id_7f583dda_fk_magnus_me` (`member_id`),
  CONSTRAINT `magnus_invitations_i_invitation_id_7ae9d6fe_fk_magnus_in` FOREIGN KEY (`invitation_id`) REFERENCES `magnus_invitations_invitation` (`id`),
  CONSTRAINT `magnus_invitations_i_member_id_7f583dda_fk_magnus_me` FOREIGN KEY (`member_id`) REFERENCES `magnus_members_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_invitations_invitation_members` WRITE;
/*!40000 ALTER TABLE `magnus_invitations_invitation_members` DISABLE KEYS */;

INSERT INTO `magnus_invitations_invitation_members` (`id`, `invitation_id`, `member_id`)
VALUES
	(49,36,29);

/*!40000 ALTER TABLE `magnus_invitations_invitation_members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_address`;

CREATE TABLE `magnus_members_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) NOT NULL,
  `housenumber` int(11) NOT NULL,
  `housenumber_suffix` varchar(10) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_members_addre_city_id_5b240682_fk_magnus_me` (`city_id`),
  CONSTRAINT `magnus_members_addre_city_id_5b240682_fk_magnus_me` FOREIGN KEY (`city_id`) REFERENCES `magnus_members_city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_authorization
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_authorization`;

CREATE TABLE `magnus_members_authorization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) DEFAULT NULL,
  `validated` tinyint(1) NOT NULL,
  `validationTime` date NOT NULL,
  `bankaccount_number` varchar(100) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_city`;

CREATE TABLE `magnus_members_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_historicaladdress
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicaladdress`;

CREATE TABLE `magnus_members_historicaladdress` (
  `id` int(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `housenumber` int(11) NOT NULL,
  `housenumber_suffix` varchar(10) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_d152da00_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicaladdress_id_bcd12eb0` (`id`),
  KEY `magnus_members_historicaladdress_city_id_dbb8a317` (`city_id`),
  CONSTRAINT `magnus_members_histo_history_user_id_d152da00_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_historicalauthorization
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicalauthorization`;

CREATE TABLE `magnus_members_historicalauthorization` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `validated` tinyint(1) NOT NULL,
  `validationTime` date NOT NULL,
  `bankaccount_number` varchar(100) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_2a0eed07_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicalauthorization_id_0e2d79a3` (`id`),
  CONSTRAINT `magnus_members_histo_history_user_id_2a0eed07_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_historicalmember
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicalmember`;

CREATE TABLE `magnus_members_historicalmember` (
  `id` int(11) NOT NULL,
  `email_old` varchar(254) DEFAULT NULL,
  `birthday_old` date DEFAULT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `middle_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_80146898_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicalmember_id_01b8205b` (`id`),
  CONSTRAINT `magnus_members_histo_history_user_id_80146898_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_historicalmember` WRITE;
/*!40000 ALTER TABLE `magnus_members_historicalmember` DISABLE KEYS */;

INSERT INTO `magnus_members_historicalmember` (`id`, `email_old`, `birthday_old`, `first_name`, `last_name`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `endDate`, `startDate`, `middle_name`)
VALUES
	(1,'magnusapp2019@gmail.com','2020-01-09','Donald','Duck','2020-01-02 00:00:00.000000',1,'2020-05-06 10:01:01.495965','','+',NULL,NULL,NULL,''),
	(2,'','2019-10-10','Kwik','Duck','2020-01-02 00:00:00.000000',2,'2020-05-06 10:01:01.496166','','+',NULL,NULL,NULL,''),
	(3,'','2018-01-18','Kwak','Duck','2020-01-02 00:00:00.000000',3,'2020-05-06 10:01:01.496241','','+',NULL,NULL,NULL,''),
	(4,'hakraai@gmail.com','2017-01-05','Dirk','Kraaijpoel','2020-01-03 00:00:00.000000',4,'2020-05-06 10:01:01.496310','','+',NULL,NULL,NULL,''),
	(5,'','2020-01-03','Koen','Aubel','2020-01-03 00:00:00.000000',5,'2020-05-06 10:01:01.496377','','+',NULL,NULL,NULL,''),
	(6,'','2020-01-03','Daan','Aubel','2020-01-03 00:00:00.000000',6,'2020-05-06 10:01:01.496443','','+',NULL,NULL,NULL,''),
	(7,'','2020-01-03','Hidde','Kraaijoel','2020-01-03 00:00:00.000000',7,'2020-05-06 10:01:01.496522','','+',NULL,NULL,NULL,''),
	(8,'','2020-01-03','Jochem','Aubel','2020-01-03 00:00:00.000000',8,'2020-05-06 10:01:01.496591','','+',NULL,NULL,NULL,''),
	(9,'','2020-01-03','Bessel','Bakker','2020-01-03 00:00:00.000000',9,'2020-05-06 10:01:01.496657','','+',NULL,NULL,NULL,''),
	(10,'','2020-01-03','Nicolette','Mulder','2020-01-03 00:00:00.000000',10,'2020-05-06 10:01:01.496721','','+',NULL,NULL,NULL,''),
	(11,'','2020-01-03','Bas','van Esch','2020-01-03 00:00:00.000000',11,'2020-05-06 10:01:01.496787','','+',NULL,NULL,NULL,''),
	(12,NULL,NULL,'Guus','Geluk','2020-06-21 06:21:13.945024',12,'2020-06-21 06:21:13.946524',NULL,'+',3,NULL,NULL,''),
	(13,NULL,NULL,'Guus','Geluk','2020-06-21 06:22:24.798196',13,'2020-06-21 06:22:24.799798',NULL,'+',3,NULL,NULL,''),
	(14,NULL,NULL,'Guus','Geluk','2020-06-21 06:24:46.199459',14,'2020-06-21 06:24:46.200973',NULL,'+',3,NULL,NULL,''),
	(15,NULL,NULL,'Guus','Geluk','2020-06-21 06:25:42.120199',15,'2020-06-21 06:25:42.121707',NULL,'+',3,NULL,NULL,''),
	(16,NULL,NULL,'Guus','Geluk','2020-06-21 06:29:34.627126',16,'2020-06-21 06:29:34.629257',NULL,'+',3,NULL,NULL,''),
	(17,NULL,NULL,'Guus','Geluk','2020-06-21 08:39:12.614038',17,'2020-06-21 08:39:12.615744',NULL,'+',3,NULL,NULL,''),
	(18,NULL,NULL,'Guus','Geluk','2020-06-21 09:59:40.020930',18,'2020-06-21 09:59:40.022361',NULL,'+',3,NULL,NULL,''),
	(19,NULL,NULL,'Diederik','Duck','2020-06-21 10:00:36.527810',19,'2020-06-21 10:00:36.529675',NULL,'+',3,NULL,NULL,''),
	(20,NULL,NULL,'Willie','Wortel','2020-06-21 10:01:26.646478',20,'2020-06-21 10:01:26.648204',NULL,'+',3,NULL,NULL,''),
	(21,NULL,NULL,'Guus','Geluk','2020-06-21 15:21:14.544864',21,'2020-06-21 15:21:14.547868',NULL,'+',3,NULL,NULL,''),
	(22,NULL,NULL,'fghkf','gfjhgf','2020-06-21 15:21:33.902212',22,'2020-06-21 15:21:33.904434',NULL,'+',3,NULL,NULL,''),
	(22,NULL,NULL,'','',NULL,23,'2020-08-12 08:24:43.993176',NULL,'-',1,NULL,NULL,''),
	(21,NULL,NULL,'','',NULL,24,'2020-08-12 08:24:43.996482',NULL,'-',1,NULL,NULL,''),
	(20,NULL,NULL,'','',NULL,25,'2020-08-12 08:24:43.998598',NULL,'-',1,NULL,NULL,''),
	(19,NULL,NULL,'','',NULL,26,'2020-08-12 08:24:44.000731',NULL,'-',1,NULL,NULL,''),
	(18,NULL,NULL,'','',NULL,27,'2020-08-12 08:24:44.004707',NULL,'-',1,NULL,NULL,''),
	(17,NULL,NULL,'','',NULL,28,'2020-08-12 08:24:44.008040',NULL,'-',1,NULL,NULL,''),
	(16,NULL,NULL,'','',NULL,29,'2020-08-12 08:24:44.009975',NULL,'-',1,NULL,NULL,''),
	(15,NULL,NULL,'','',NULL,30,'2020-08-12 08:24:44.011314',NULL,'-',1,NULL,NULL,''),
	(14,NULL,NULL,'','',NULL,31,'2020-08-12 08:24:44.013043',NULL,'-',1,NULL,NULL,''),
	(13,NULL,NULL,'','',NULL,32,'2020-08-12 08:24:44.015330',NULL,'-',1,NULL,NULL,''),
	(12,NULL,NULL,'','',NULL,33,'2020-08-12 08:24:44.017028',NULL,'-',1,NULL,NULL,''),
	(42,NULL,NULL,'AAA','BBB','2020-08-31 17:56:37.322500',69,'2020-08-31 17:56:37.325640',NULL,'+',25,NULL,NULL,''),
	(42,NULL,NULL,'AAA','BBB','2020-08-31 17:56:37.322500',70,'2020-08-31 17:56:37.346611',NULL,'~',25,NULL,NULL,''),
	(42,NULL,NULL,'AAA','BBB','2020-08-31 17:56:37.322500',71,'2020-08-31 17:56:41.157106',NULL,'~',25,'2020-08-31',NULL,''),
	(43,NULL,NULL,'AAA','BBB','2020-08-31 17:59:58.826587',72,'2020-08-31 17:59:58.828020',NULL,'+',25,NULL,NULL,''),
	(43,NULL,NULL,'AAA','BBB','2020-08-31 17:59:58.826587',73,'2020-08-31 17:59:58.839598',NULL,'~',25,NULL,NULL,''),
	(43,NULL,NULL,'AAA','BBB','2020-08-31 17:59:58.826587',74,'2020-08-31 18:00:03.116806',NULL,'~',25,'2020-08-31',NULL,''),
	(44,NULL,NULL,'AAA','BBB','2020-09-03 11:01:43.187958',75,'2020-09-03 11:01:43.197222',NULL,'+',25,NULL,NULL,''),
	(44,NULL,NULL,'AAA','BBB','2020-09-03 11:01:43.187958',76,'2020-09-03 11:01:43.280127',NULL,'~',25,NULL,NULL,''),
	(44,NULL,NULL,'AAA','BBB','2020-09-03 11:01:43.187958',77,'2020-09-03 11:01:46.441370',NULL,'~',25,'2020-09-03',NULL,''),
	(45,NULL,NULL,'AAA','BBB','2020-09-09 06:20:54.224215',78,'2020-09-09 06:20:54.225869',NULL,'+',25,NULL,NULL,''),
	(45,NULL,NULL,'AAA','BBB','2020-09-09 06:20:54.224215',79,'2020-09-09 06:20:54.243190',NULL,'~',25,NULL,NULL,''),
	(45,NULL,NULL,'AAA','BBB','2020-09-09 06:20:54.224215',80,'2020-09-09 06:20:57.470185',NULL,'~',25,'2020-09-09',NULL,''),
	(45,NULL,NULL,'AAA','BBB','2020-09-09 06:20:54.224215',81,'2020-09-09 18:52:23.712289',NULL,'-',1,'2020-09-09',NULL,''),
	(44,NULL,NULL,'AAA','BBB','2020-09-03 11:01:43.187958',82,'2020-09-09 18:52:23.713904',NULL,'-',1,'2020-09-03',NULL,''),
	(43,NULL,NULL,'AAA','BBB','2020-08-31 17:59:58.826587',83,'2020-09-09 18:52:23.715003',NULL,'-',1,'2020-08-31',NULL,''),
	(42,NULL,NULL,'AAA','BBB','2020-08-31 17:56:37.322500',84,'2020-09-09 18:52:23.716129',NULL,'-',1,'2020-08-31',NULL,'');

/*!40000 ALTER TABLE `magnus_members_historicalmember` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_historicalmemberdetail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicalmemberdetail`;

CREATE TABLE `magnus_members_historicalmemberdetail` (
  `id` int(11) NOT NULL,
  `email_old` varchar(254) DEFAULT NULL,
  `birthday_old` date DEFAULT NULL,
  `first_name` varchar(500) NOT NULL,
  `middle_name` varchar(500) DEFAULT NULL,
  `last_name` varchar(500) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `authorization_id` int(11) DEFAULT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `gendertype` int(11) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_4f5c487e_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicalmemberdetail_id_027c6ce5` (`id`),
  KEY `magnus_members_historicalmemberdetail_member_id_1a757a29` (`member_id`),
  KEY `magnus_members_historicalmemberdetail_authorization_id_c3425722` (`authorization_id`),
  KEY `magnus_members_historicalmemberdetail_photo_id_613df410` (`photo_id`),
  CONSTRAINT `magnus_members_histo_history_user_id_4f5c487e_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_historicalmemberdetail` WRITE;
/*!40000 ALTER TABLE `magnus_members_historicalmemberdetail` DISABLE KEYS */;

INSERT INTO `magnus_members_historicalmemberdetail` (`id`, `email_old`, `birthday_old`, `first_name`, `middle_name`, `last_name`, `createdDate`, `startDate`, `endDate`, `email`, `birthday`, `member_id`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `authorization_id`, `history_user_id`, `photo_id`, `gendertype`, `telephone`)
VALUES
	(1,NULL,NULL,'Donald','','Duck',NULL,NULL,NULL,'magnusapp2019@gmail.com','2020-01-09',1,1,'2020-06-18 09:13:50.014007',NULL,'+',NULL,NULL,NULL,0,NULL),
	(1,NULL,NULL,'Donald','','Duck',NULL,NULL,NULL,'magnusapp2019@gmail.com','2020-01-09',1,2,'2020-06-18 09:13:50.019770',NULL,'~',NULL,NULL,NULL,0,NULL),
	(2,NULL,NULL,'Kwik','','Duck',NULL,NULL,NULL,'','2019-10-10',2,3,'2020-06-18 09:13:50.026367',NULL,'+',NULL,NULL,NULL,0,NULL),
	(2,NULL,NULL,'Kwik','','Duck',NULL,NULL,NULL,'','2019-10-10',2,4,'2020-06-18 09:13:50.031271',NULL,'~',NULL,NULL,NULL,0,NULL),
	(3,NULL,NULL,'Kwak','','Duck',NULL,NULL,NULL,'','2018-01-18',3,5,'2020-06-18 09:13:50.034729',NULL,'+',NULL,NULL,NULL,0,NULL),
	(3,NULL,NULL,'Kwak','','Duck',NULL,NULL,NULL,'','2018-01-18',3,6,'2020-06-18 09:13:50.038327',NULL,'~',NULL,NULL,NULL,0,NULL),
	(4,NULL,NULL,'Dirk','','Kraaijpoel',NULL,NULL,NULL,'hakraai@gmail.com','2017-01-05',4,7,'2020-06-18 09:13:50.043341',NULL,'+',NULL,NULL,NULL,0,NULL),
	(4,NULL,NULL,'Dirk','','Kraaijpoel',NULL,NULL,NULL,'hakraai@gmail.com','2017-01-05',4,8,'2020-06-18 09:13:50.048630',NULL,'~',NULL,NULL,NULL,0,NULL),
	(5,NULL,NULL,'Koen','','Aubel',NULL,NULL,NULL,'','2020-01-03',5,9,'2020-06-18 09:13:50.051911',NULL,'+',NULL,NULL,NULL,0,NULL),
	(5,NULL,NULL,'Koen','','Aubel',NULL,NULL,NULL,'','2020-01-03',5,10,'2020-06-18 09:13:50.055234',NULL,'~',NULL,NULL,NULL,0,NULL),
	(6,NULL,NULL,'Daan','','Aubel',NULL,NULL,NULL,'','2020-01-03',6,11,'2020-06-18 09:13:50.058183',NULL,'+',NULL,NULL,NULL,0,NULL),
	(6,NULL,NULL,'Daan','','Aubel',NULL,NULL,NULL,'','2020-01-03',6,12,'2020-06-18 09:13:50.061842',NULL,'~',NULL,NULL,NULL,0,NULL),
	(7,NULL,NULL,'Hidde','','Kraaijoel',NULL,NULL,NULL,'','2020-01-03',7,13,'2020-06-18 09:13:50.066573',NULL,'+',NULL,NULL,NULL,0,NULL),
	(7,NULL,NULL,'Hidde','','Kraaijoel',NULL,NULL,NULL,'','2020-01-03',7,14,'2020-06-18 09:13:50.070994',NULL,'~',NULL,NULL,NULL,0,NULL),
	(8,NULL,NULL,'Jochem','','Aubel',NULL,NULL,NULL,'','2020-01-03',8,15,'2020-06-18 09:13:50.075294',NULL,'+',NULL,NULL,NULL,0,NULL),
	(8,NULL,NULL,'Jochem','','Aubel',NULL,NULL,NULL,'','2020-01-03',8,16,'2020-06-18 09:13:50.080322',NULL,'~',NULL,NULL,NULL,0,NULL),
	(9,NULL,NULL,'Bessel','','Bakker',NULL,NULL,NULL,'','2020-01-03',9,17,'2020-06-18 09:13:50.083957',NULL,'+',NULL,NULL,NULL,0,NULL),
	(9,NULL,NULL,'Bessel','','Bakker',NULL,NULL,NULL,'','2020-01-03',9,18,'2020-06-18 09:13:50.088969',NULL,'~',NULL,NULL,NULL,0,NULL),
	(10,NULL,NULL,'Nicolette','','Mulder',NULL,NULL,NULL,'','2020-01-03',10,19,'2020-06-18 09:13:50.096179',NULL,'+',NULL,NULL,NULL,0,NULL),
	(10,NULL,NULL,'Nicolette','','Mulder',NULL,NULL,NULL,'','2020-01-03',10,20,'2020-06-18 09:13:50.101578',NULL,'~',NULL,NULL,NULL,0,NULL),
	(11,NULL,NULL,'Bas','','van Esch',NULL,NULL,NULL,'','2020-01-03',11,21,'2020-06-18 09:13:50.106321',NULL,'+',NULL,NULL,NULL,0,NULL),
	(11,NULL,NULL,'Bas','','van Esch',NULL,NULL,NULL,'','2020-01-03',11,22,'2020-06-18 09:13:50.113447',NULL,'~',NULL,NULL,NULL,0,NULL),
	(9,NULL,NULL,'Bessel2','','Bakker',NULL,NULL,NULL,NULL,'2020-01-03',9,23,'2020-06-18 09:35:48.887367',NULL,'~',NULL,1,NULL,0,NULL),
	(9,NULL,NULL,'Bessel','','Bakker',NULL,NULL,NULL,NULL,'2020-01-03',9,24,'2020-06-18 09:36:05.112351',NULL,'~',NULL,1,NULL,0,NULL),
	(12,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,12,25,'2020-06-21 06:21:13.954663',NULL,'+',NULL,3,NULL,0,NULL),
	(12,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,12,26,'2020-06-21 06:21:13.961121',NULL,'~',NULL,3,NULL,0,NULL),
	(12,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,12,27,'2020-06-21 06:21:13.968696',NULL,'~',NULL,3,NULL,0,NULL),
	(13,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,13,28,'2020-06-21 06:22:24.809291',NULL,'+',NULL,3,NULL,0,NULL),
	(13,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,13,29,'2020-06-21 06:22:24.816333',NULL,'~',NULL,3,NULL,0,NULL),
	(13,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,13,30,'2020-06-21 06:22:24.823671',NULL,'~',NULL,3,NULL,0,NULL),
	(14,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,14,31,'2020-06-21 06:24:46.209011',NULL,'+',NULL,3,NULL,0,NULL),
	(14,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,14,32,'2020-06-21 06:24:46.215150',NULL,'~',NULL,3,NULL,0,NULL),
	(14,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,14,33,'2020-06-21 06:24:46.223004',NULL,'~',NULL,3,NULL,0,NULL),
	(15,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,15,34,'2020-06-21 06:25:42.128255',NULL,'+',NULL,3,NULL,0,NULL),
	(15,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,15,35,'2020-06-21 06:25:42.139327',NULL,'~',NULL,3,NULL,0,NULL),
	(15,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,15,36,'2020-06-21 06:25:42.172751',NULL,'~',NULL,3,NULL,0,NULL),
	(16,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,16,37,'2020-06-21 06:29:34.637840',NULL,'+',NULL,3,NULL,0,NULL),
	(16,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,16,38,'2020-06-21 06:29:34.642784',NULL,'~',NULL,3,NULL,0,NULL),
	(16,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,16,39,'2020-06-21 06:29:34.651875',NULL,'~',NULL,3,NULL,0,NULL),
	(17,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,17,40,'2020-06-21 08:39:12.627701',NULL,'+',NULL,3,NULL,0,NULL),
	(17,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,17,41,'2020-06-21 08:39:12.634351',NULL,'~',NULL,3,NULL,0,NULL),
	(17,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,17,42,'2020-06-21 08:39:12.647124',NULL,'~',NULL,3,NULL,0,NULL),
	(18,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,18,43,'2020-06-21 09:59:40.026601',NULL,'+',NULL,3,NULL,0,NULL),
	(18,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,18,44,'2020-06-21 09:59:40.031328',NULL,'~',NULL,3,NULL,0,NULL),
	(18,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,18,45,'2020-06-21 09:59:40.040036',NULL,'~',NULL,3,NULL,0,NULL),
	(19,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,19,46,'2020-06-21 10:00:36.545532',NULL,'+',NULL,3,NULL,0,NULL),
	(19,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,19,47,'2020-06-21 10:00:36.552618',NULL,'~',NULL,3,NULL,0,NULL),
	(19,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,19,48,'2020-06-21 10:00:36.560740',NULL,'~',NULL,3,NULL,0,NULL),
	(20,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,20,49,'2020-06-21 10:01:26.660484',NULL,'+',NULL,3,NULL,0,NULL),
	(20,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,20,50,'2020-06-21 10:01:26.668203',NULL,'~',NULL,3,NULL,0,NULL),
	(20,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,20,51,'2020-06-21 10:01:26.678146',NULL,'~',NULL,3,NULL,0,NULL),
	(21,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,21,52,'2020-06-21 15:21:14.554109',NULL,'+',NULL,3,NULL,0,NULL),
	(21,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,21,53,'2020-06-21 15:21:14.559235',NULL,'~',NULL,3,NULL,0,NULL),
	(21,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,21,54,'2020-06-21 15:21:14.567816',NULL,'~',NULL,3,NULL,0,NULL),
	(22,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,22,55,'2020-06-21 15:21:33.913297',NULL,'+',NULL,3,NULL,0,NULL),
	(22,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,22,56,'2020-06-21 15:21:33.920202',NULL,'~',NULL,3,NULL,0,NULL),
	(22,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,22,57,'2020-06-21 15:21:33.933949',NULL,'~',NULL,3,NULL,0,NULL),
	(10,NULL,NULL,'Nicolette','','Mulder',NULL,NULL,NULL,NULL,'2020-01-03',10,58,'2020-06-23 12:11:12.878961',NULL,'~',NULL,1,NULL,0,NULL),
	(7,NULL,NULL,'Hidde','','Kraaijoel',NULL,NULL,NULL,NULL,NULL,7,59,'2020-06-23 12:11:25.666937',NULL,'~',NULL,1,NULL,0,NULL),
	(22,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,22,60,'2020-08-12 08:24:43.957949',NULL,'-',NULL,1,NULL,0,NULL),
	(21,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,21,61,'2020-08-12 08:24:43.959857',NULL,'-',NULL,1,NULL,0,NULL),
	(20,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,20,62,'2020-08-12 08:24:43.961402',NULL,'-',NULL,1,NULL,0,NULL),
	(19,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,19,63,'2020-08-12 08:24:43.963082',NULL,'-',NULL,1,NULL,0,NULL),
	(18,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,18,64,'2020-08-12 08:24:43.964623',NULL,'-',NULL,1,NULL,0,NULL),
	(17,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,17,65,'2020-08-12 08:24:43.966035',NULL,'-',NULL,1,NULL,0,NULL),
	(16,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,16,66,'2020-08-12 08:24:43.968330',NULL,'-',NULL,1,NULL,0,NULL),
	(15,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,15,67,'2020-08-12 08:24:43.974691',NULL,'-',NULL,1,NULL,0,NULL),
	(14,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,14,68,'2020-08-12 08:24:43.977557',NULL,'-',NULL,1,NULL,0,NULL),
	(13,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,13,69,'2020-08-12 08:24:43.983750',NULL,'-',NULL,1,NULL,0,NULL),
	(12,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,12,70,'2020-08-12 08:24:43.986964',NULL,'-',NULL,1,NULL,0,NULL),
	(23,NULL,NULL,'Sandra',NULL,'(Staff)','2020-08-12 08:25:07.360859',NULL,NULL,NULL,NULL,23,71,'2020-08-12 08:25:07.365136',NULL,'+',NULL,1,NULL,NULL,NULL),
	(24,NULL,NULL,'Tinus',NULL,'(Trainer)','2020-08-12 08:47:45.982524',NULL,NULL,NULL,NULL,24,72,'2020-08-12 08:47:45.985772',NULL,'+',NULL,1,NULL,NULL,NULL),
	(24,NULL,NULL,'Tinus',NULL,'(Trainer)','2020-08-12 08:47:45.982524',NULL,NULL,NULL,NULL,24,73,'2020-08-12 11:19:10.133044',NULL,'~',NULL,1,NULL,NULL,NULL),
	(25,NULL,NULL,'Tanja',NULL,'(Teamleider)','2020-08-12 11:19:31.223789',NULL,NULL,NULL,NULL,25,74,'2020-08-12 11:19:31.232514',NULL,'+',NULL,1,NULL,NULL,NULL),
	(26,NULL,NULL,'Leo',NULL,'(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,NULL,NULL,26,75,'2020-08-12 11:20:03.226391',NULL,'+',NULL,1,NULL,NULL,NULL),
	(27,NULL,NULL,'Odette',NULL,'(Ouder)','2020-08-12 11:20:17.334924',NULL,NULL,NULL,NULL,27,76,'2020-08-12 11:20:17.337144',NULL,'+',NULL,1,NULL,NULL,NULL),
	(28,NULL,NULL,'Aad',NULL,'(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,NULL,NULL,28,77,'2020-08-12 11:20:37.715596',NULL,'+',NULL,1,NULL,NULL,NULL),
	(29,NULL,NULL,'Eduard',NULL,'(Externe competitieleider)','2020-08-12 11:20:59.509181',NULL,NULL,NULL,NULL,29,78,'2020-08-12 11:20:59.511380',NULL,'+',NULL,1,NULL,NULL,NULL),
	(30,NULL,NULL,'Cor',NULL,'(Competitieleider)','2020-08-12 11:21:15.312730',NULL,NULL,NULL,NULL,30,79,'2020-08-12 11:21:15.319107',NULL,'+',NULL,1,NULL,NULL,NULL),
	(31,NULL,NULL,'Huub',NULL,'(Hulptrainer)','2020-08-12 11:21:27.230816',NULL,NULL,NULL,NULL,31,80,'2020-08-12 11:21:27.233090',NULL,'+',NULL,1,NULL,NULL,NULL),
	(24,NULL,NULL,'Tinus',NULL,'(Trainer)','2020-08-12 08:47:45.982524',NULL,NULL,NULL,NULL,24,131,'2020-08-28 13:10:06.700466',NULL,'~',NULL,27,NULL,1,NULL),
	(28,NULL,NULL,'Aad',NULL,'(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,NULL,NULL,28,157,'2020-08-28 15:12:17.541112',NULL,'~',NULL,25,NULL,1,NULL),
	(30,NULL,NULL,'Cor',NULL,'(Competitieleider)','2020-08-12 11:21:15.312730',NULL,NULL,NULL,NULL,30,158,'2020-08-28 15:12:29.618919',NULL,'~',NULL,25,NULL,1,NULL),
	(29,NULL,NULL,'Eduard',NULL,'(Externe competitieleider)','2020-08-12 11:20:59.509181',NULL,NULL,NULL,NULL,29,159,'2020-08-28 15:12:41.813963',NULL,'~',NULL,25,NULL,1,NULL),
	(31,NULL,NULL,'Huub',NULL,'(Hulptrainer)','2020-08-12 11:21:27.230816',NULL,NULL,NULL,NULL,31,160,'2020-08-28 15:12:51.133640',NULL,'~',NULL,25,NULL,1,NULL),
	(26,NULL,NULL,'Leo',NULL,'(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,NULL,NULL,26,161,'2020-08-28 15:13:02.717438',NULL,'~',NULL,25,NULL,1,NULL),
	(27,NULL,NULL,'Odette',NULL,'(Ouder)','2020-08-12 11:20:17.334924',NULL,NULL,NULL,NULL,27,162,'2020-08-28 15:13:14.931581',NULL,'~',NULL,25,NULL,2,NULL),
	(23,NULL,NULL,'Sandra',NULL,'(Staff)','2020-08-12 08:25:07.360859',NULL,NULL,NULL,NULL,23,163,'2020-08-28 15:13:27.384847',NULL,'~',NULL,25,NULL,2,NULL),
	(25,NULL,NULL,'Tanja',NULL,'(Teamleider)','2020-08-12 11:19:31.223789',NULL,NULL,NULL,NULL,25,164,'2020-08-28 15:14:07.776109',NULL,'~',NULL,25,NULL,2,NULL),
	(23,NULL,NULL,'Sandra',NULL,'(Staff)','2020-08-12 08:25:07.360859','2013-01-01',NULL,NULL,NULL,23,165,'2020-08-29 19:06:52.278889',NULL,'~',NULL,25,NULL,2,NULL),
	(23,NULL,NULL,'Sandra',NULL,'(Staff)','2020-08-12 08:25:07.360859',NULL,NULL,NULL,NULL,23,166,'2020-08-29 19:09:36.937587',NULL,'~',NULL,25,NULL,2,NULL),
	(42,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,42,167,'2020-08-31 17:56:37.333902',NULL,'+',NULL,25,NULL,0,NULL),
	(42,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,42,168,'2020-08-31 17:56:37.342542',NULL,'~',NULL,25,NULL,0,NULL),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,169,'2020-08-31 17:57:01.905524',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,170,'2020-08-31 17:57:12.854538',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,171,'2020-08-31 17:57:19.958317',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,172,'2020-08-31 17:57:26.802655',NULL,'~',NULL,25,NULL,1,''),
	(43,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,43,173,'2020-08-31 17:59:58.832121',NULL,'+',NULL,25,NULL,0,NULL),
	(43,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,43,174,'2020-08-31 17:59:58.837051',NULL,'~',NULL,25,NULL,0,NULL),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,175,'2020-08-31 18:00:23.168281',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,176,'2020-08-31 18:00:32.508746',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,177,'2020-08-31 18:00:39.647296',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,178,'2020-08-31 18:00:46.483331',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,179,'2020-08-31 18:09:52.836175',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,180,'2020-08-31 18:10:01.840712',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,181,'2020-08-31 18:10:09.544849',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,182,'2020-08-31 18:10:16.631946',NULL,'~',NULL,25,NULL,1,''),
	(44,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,44,183,'2020-09-03 11:01:43.226470',NULL,'+',NULL,25,NULL,0,NULL),
	(44,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,44,184,'2020-09-03 11:01:43.270261',NULL,'~',NULL,25,NULL,0,NULL),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,185,'2020-09-03 11:02:03.736770',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,186,'2020-09-03 11:02:09.954476',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,187,'2020-09-03 11:02:15.912512',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,188,'2020-09-03 11:02:21.254990',NULL,'~',NULL,25,NULL,1,''),
	(26,NULL,NULL,'Leo','van','(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,'',NULL,26,189,'2020-09-03 11:15:33.502635',NULL,'~',NULL,33,NULL,1,''),
	(26,NULL,NULL,'Leo','van','(Lid)','2020-08-12 11:20:03.219648','2013-01-01',NULL,'',NULL,26,190,'2020-09-03 11:15:39.325737',NULL,'~',NULL,33,NULL,1,''),
	(26,NULL,NULL,'Leo','','(Lid)','2020-08-12 11:20:03.219648','2013-01-01',NULL,'',NULL,26,191,'2020-09-03 11:15:44.845240',NULL,'~',NULL,33,NULL,1,''),
	(26,NULL,NULL,'Leo','','(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,'',NULL,26,192,'2020-09-03 11:15:49.288927',NULL,'~',NULL,33,NULL,1,''),
	(24,NULL,NULL,'Tinus','van','(Trainer)','2020-08-12 08:47:45.982524',NULL,NULL,'',NULL,24,193,'2020-09-03 11:33:59.846388',NULL,'~',NULL,27,NULL,1,''),
	(24,NULL,NULL,'Tinus','van','(Trainer)','2020-08-12 08:47:45.982524','2013-01-01',NULL,'',NULL,24,194,'2020-09-03 11:34:06.016696',NULL,'~',NULL,27,NULL,1,''),
	(24,NULL,NULL,'Tinus','','(Trainer)','2020-08-12 08:47:45.982524','2013-01-01',NULL,'',NULL,24,195,'2020-09-03 11:34:11.468664',NULL,'~',NULL,27,NULL,1,''),
	(24,NULL,NULL,'Tinus','','(Trainer)','2020-08-12 08:47:45.982524',NULL,NULL,'',NULL,24,196,'2020-09-03 11:34:16.155382',NULL,'~',NULL,27,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,197,'2020-09-03 19:46:25.363482',NULL,'~',NULL,29,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,198,'2020-09-03 19:46:31.032073',NULL,'~',NULL,29,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,199,'2020-09-03 19:46:36.650442',NULL,'~',NULL,29,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,200,'2020-09-03 19:46:41.137486',NULL,'~',NULL,29,NULL,1,''),
	(45,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,45,201,'2020-09-09 06:20:54.232599',NULL,'+',NULL,25,NULL,0,NULL),
	(45,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,45,202,'2020-09-09 06:20:54.237849',NULL,'~',NULL,25,NULL,0,NULL),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,203,'2020-09-09 06:21:11.165258',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,204,'2020-09-09 06:21:16.520113',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,205,'2020-09-09 06:21:21.579267',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,206,'2020-09-09 06:21:26.200358',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,207,'2020-09-09 07:15:56.939327',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,208,'2020-09-09 07:16:52.213031',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,209,'2020-09-09 07:17:19.039393',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,210,'2020-09-09 07:17:25.121169',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,211,'2020-09-09 07:17:30.441018',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,212,'2020-09-09 07:17:35.303019',NULL,'~',NULL,25,NULL,1,''),
	(26,NULL,NULL,'Leo','van','(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,'',NULL,26,213,'2020-09-09 07:18:28.167284',NULL,'~',NULL,33,NULL,1,''),
	(26,NULL,NULL,'Leo','van','(Lid)','2020-08-12 11:20:03.219648','2013-01-01',NULL,'',NULL,26,214,'2020-09-09 07:18:33.584954',NULL,'~',NULL,33,NULL,1,''),
	(26,NULL,NULL,'Leo','','(Lid)','2020-08-12 11:20:03.219648','2013-01-01',NULL,'',NULL,26,215,'2020-09-09 07:18:38.619426',NULL,'~',NULL,33,NULL,1,''),
	(26,NULL,NULL,'Leo','','(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,'',NULL,26,216,'2020-09-09 07:18:42.916063',NULL,'~',NULL,33,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,217,'2020-09-09 14:53:40.616294',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','van','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,218,'2020-09-09 14:53:53.905627',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148','2013-01-01',NULL,'',NULL,28,219,'2020-09-09 14:54:05.524662',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,220,'2020-09-09 14:54:13.359178',NULL,'~',NULL,25,NULL,1,''),
	(28,NULL,NULL,'Aad','','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,'',NULL,28,221,'2020-09-09 15:01:02.243593',NULL,'~',NULL,25,NULL,1,''),
	(45,NULL,NULL,'AAA','','BBB','2020-09-09 06:20:54.224215',NULL,'2020-09-09',NULL,NULL,45,222,'2020-09-09 18:52:23.702403',NULL,'-',NULL,1,NULL,0,NULL),
	(44,NULL,NULL,'AAA','','BBB','2020-09-03 11:01:43.187958',NULL,'2020-09-03',NULL,NULL,44,223,'2020-09-09 18:52:23.704501',NULL,'-',NULL,1,NULL,0,NULL),
	(43,NULL,NULL,'AAA','','BBB','2020-08-31 17:59:58.826587',NULL,'2020-08-31',NULL,NULL,43,224,'2020-09-09 18:52:23.707186',NULL,'-',NULL,1,NULL,0,NULL),
	(42,NULL,NULL,'AAA','','BBB','2020-08-31 17:56:37.322500',NULL,'2020-08-31',NULL,NULL,42,225,'2020-09-09 18:52:23.708540',NULL,'-',NULL,1,NULL,0,NULL);

/*!40000 ALTER TABLE `magnus_members_historicalmemberdetail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_historicalmembergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicalmembergroup`;

CREATE TABLE `magnus_members_historicalmembergroup` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `startDate` datetime(6) DEFAULT NULL,
  `endDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `parentMemberGroup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_698591b2_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicalmembergroup_id_02a54e71` (`id`),
  KEY `magnus_members_historicalmembergroup_location_id_fea814b0` (`location_id`),
  KEY `magnus_members_historicalme_parentMemberGroup_id_135f6e70` (`parentMemberGroup_id`),
  CONSTRAINT `magnus_members_histo_history_user_id_698591b2_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_historicalmembergroup` WRITE;
/*!40000 ALTER TABLE `magnus_members_historicalmembergroup` DISABLE KEYS */;

INSERT INTO `magnus_members_historicalmembergroup` (`id`, `description`, `createdDate`, `type`, `startDate`, `endDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `location_id`, `parentMemberGroup_id`)
VALUES
	(122,'De beste groep','2020-06-21 16:02:48.707622',1,'2020-06-21 16:02:01.696000','2020-12-31 17:02:00.000000',1,'2020-06-21 16:02:48.714874',NULL,'+',3,NULL,NULL),
	(122,'De beste groep','2020-06-21 16:02:48.707622',1,'2020-06-21 16:02:01.696000','2020-06-21 16:03:44.660000',2,'2020-06-21 16:03:45.051968',NULL,'~',3,NULL,NULL),
	(123,'de op een na beste groep','2020-06-21 16:06:11.237310',1,'2020-06-21 16:05:40.648000','2020-12-31 17:05:00.000000',3,'2020-06-21 16:06:11.238722',NULL,'+',3,NULL,NULL),
	(123,'de op een na beste groep','2020-06-21 16:06:11.237310',1,'2020-06-21 16:05:40.648000','2020-06-21 16:08:15.004000',4,'2020-06-21 16:08:15.365050',NULL,'~',3,NULL,NULL),
	(124,'TEST trainingsgroep','2020-08-12 08:40:30.139061',1,NULL,NULL,5,'2020-08-12 08:40:30.140153',NULL,'+',25,NULL,NULL),
	(125,'TEST competitiegroep','2020-08-12 08:40:52.994024',2,NULL,NULL,6,'2020-08-12 08:40:52.994860',NULL,'+',25,NULL,NULL),
	(126,'TEST externe competitie','2020-08-12 11:30:59.588403',3,NULL,NULL,7,'2020-08-12 11:30:59.591587',NULL,'+',1,NULL,NULL),
	(4,'TEST clubavond','2020-01-03 00:00:00.000000',0,NULL,NULL,8,'2020-08-12 11:31:15.634738',NULL,'~',1,NULL,NULL),
	(127,'TEST magnus team','2020-08-12 11:32:20.046182',3,NULL,NULL,9,'2020-08-12 11:32:20.047165',NULL,'+',1,NULL,126),
	(126,'TEST externe competitie','2020-08-12 11:30:59.588403',4,NULL,NULL,10,'2020-08-12 11:34:53.490036',NULL,'~',1,NULL,NULL),
	(123,'de op een na beste groep','2020-06-21 16:06:11.237310',1,'2020-06-21 16:05:40.648000','2020-06-21 16:08:15.004000',11,'2020-08-12 11:37:21.061132',NULL,'-',1,NULL,NULL),
	(122,'De beste groep','2020-06-21 16:02:48.707622',1,'2020-06-21 16:02:01.696000','2020-06-21 16:03:44.660000',12,'2020-08-12 11:37:21.063064',NULL,'-',1,NULL,NULL),
	(121,'Actieve rol','2020-01-04 00:00:00.000000',0,NULL,NULL,13,'2020-08-12 11:37:32.886062',NULL,'-',1,NULL,NULL),
	(149,'NIEUWE groep','2020-08-31 17:58:14.578743',2,NULL,NULL,68,'2020-08-31 17:58:14.580548',NULL,'+',25,NULL,NULL),
	(150,'NIEUWE groep','2020-08-31 18:01:27.155119',2,NULL,NULL,69,'2020-08-31 18:01:27.156732',NULL,'+',25,NULL,NULL),
	(151,'NIEUWE groep','2020-08-31 18:11:24.736348',2,NULL,NULL,70,'2020-08-31 18:11:24.737466',NULL,'+',25,NULL,NULL),
	(151,'NIEUWE groep','2020-08-31 18:11:24.736348',2,NULL,NULL,71,'2020-08-31 18:12:35.924241',NULL,'-',1,NULL,NULL),
	(150,'NIEUWE groep','2020-08-31 18:01:27.155119',2,NULL,NULL,72,'2020-08-31 18:12:35.925802',NULL,'-',1,NULL,NULL),
	(149,'NIEUWE groep','2020-08-31 17:58:14.578743',2,NULL,NULL,73,'2020-08-31 18:12:35.927105',NULL,'-',1,NULL,NULL),
	(152,'NIEUWE groep','2020-08-31 18:13:14.806620',2,NULL,NULL,74,'2020-08-31 18:13:14.807590',NULL,'+',25,NULL,NULL),
	(152,'NIEUWE groep','2020-08-31 18:13:14.806620',2,NULL,'2020-08-31 18:13:34.762000',75,'2020-08-31 18:13:34.771499',NULL,'~',25,NULL,NULL),
	(152,'NIEUWE groep (bewerkt)','2020-08-31 18:13:14.806620',2,NULL,'2020-08-31 18:13:34.762000',76,'2020-08-31 18:13:40.307924',NULL,'~',25,NULL,NULL),
	(153,'NIEUWE groep','2020-09-03 11:02:54.559639',2,NULL,NULL,77,'2020-09-03 11:02:54.567342',NULL,'+',25,NULL,NULL),
	(153,'NIEUWE groep','2020-09-03 11:02:54.559639',2,NULL,'2020-09-03 11:03:09.102000',78,'2020-09-03 11:03:09.121618',NULL,'~',25,NULL,NULL),
	(153,'NIEUWE groep (bewerkt)','2020-09-03 11:02:54.559639',2,NULL,'2020-09-03 11:03:09.102000',79,'2020-09-03 11:03:12.509736',NULL,'~',25,NULL,NULL),
	(154,'LEDEN groep','2020-09-04 10:30:59.407086',1,NULL,NULL,80,'2020-09-04 10:30:59.409768',NULL,'+',25,NULL,NULL),
	(155,'NIEUWE groep','2020-09-09 06:21:53.499998',2,NULL,NULL,81,'2020-09-09 06:21:53.501547',NULL,'+',25,NULL,NULL),
	(155,'NIEUWE groep','2020-09-09 06:21:53.499998',2,NULL,'2020-09-09 06:22:07.015000',82,'2020-09-09 06:22:07.064458',NULL,'~',25,NULL,NULL),
	(155,'NIEUWE groep (bewerkt)','2020-09-09 06:21:53.499998',2,NULL,'2020-09-09 06:22:07.015000',83,'2020-09-09 06:22:10.360845',NULL,'~',25,NULL,NULL),
	(155,'NIEUWE groep (bewerkt)','2020-09-09 06:21:53.499998',2,NULL,'2020-09-09 06:22:07.015000',84,'2020-09-09 18:52:48.433071',NULL,'-',1,NULL,NULL),
	(154,'LEDEN groep','2020-09-04 10:30:59.407086',1,NULL,NULL,85,'2020-09-09 18:52:48.435929',NULL,'-',1,NULL,NULL),
	(153,'NIEUWE groep (bewerkt)','2020-09-03 11:02:54.559639',2,NULL,'2020-09-03 11:03:09.102000',86,'2020-09-09 18:52:48.437510',NULL,'-',1,NULL,NULL),
	(152,'NIEUWE groep (bewerkt)','2020-08-31 18:13:14.806620',2,NULL,'2020-08-31 18:13:34.762000',87,'2020-09-09 18:52:48.438738',NULL,'-',1,NULL,NULL);

/*!40000 ALTER TABLE `magnus_members_historicalmembergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_historicalmembergrouprole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicalmembergrouprole`;

CREATE TABLE `magnus_members_historicalmembergrouprole` (
  `id` int(11) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `startDate` datetime(6) DEFAULT NULL,
  `endDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `memberGroup_id` int(11) DEFAULT NULL,
  `memberRole` int(11) NOT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_866b4d90_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicalmembergrouprole_id_f53f4779` (`id`),
  KEY `magnus_members_historicalmembergrouprole_member_id_071512ba` (`member_id`),
  KEY `magnus_members_historicalmembergrouprole_memberGroup_id_4c28847a` (`memberGroup_id`),
  CONSTRAINT `magnus_members_histo_history_user_id_866b4d90_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_historicalmembergrouprole` WRITE;
/*!40000 ALTER TABLE `magnus_members_historicalmembergrouprole` DISABLE KEYS */;

INSERT INTO `magnus_members_historicalmembergrouprole` (`id`, `createdDate`, `startDate`, `endDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `member_id`, `memberGroup_id`, `memberRole`)
VALUES
	(24,'2020-03-01 00:00:00.000000',NULL,NULL,1,'2020-06-06 13:14:22.951340',NULL,'~',1,4,5,3),
	(22,'2020-02-05 00:00:00.000000',NULL,NULL,2,'2020-06-06 13:14:35.064786',NULL,'~',1,7,6,3),
	(20,'2020-01-03 00:00:00.000000',NULL,NULL,3,'2020-06-06 13:14:40.871816',NULL,'~',1,11,5,5),
	(25,'2020-08-12 08:45:12.099709','2020-08-12 08:45:12.026873',NULL,4,'2020-08-12 08:45:12.101326',NULL,'+',25,6,124,2),
	(26,'2020-08-12 08:45:12.104916','2020-08-12 08:45:12.026873',NULL,5,'2020-08-12 08:45:12.105661',NULL,'+',25,7,124,2),
	(27,'2020-08-12 08:45:12.108699','2020-08-12 08:45:12.026873',NULL,6,'2020-08-12 08:45:12.159890',NULL,'+',25,5,124,2),
	(28,'2020-08-12 08:45:12.162995','2020-08-12 08:45:12.026873',NULL,7,'2020-08-12 08:45:12.164990',NULL,'+',25,3,124,2),
	(29,'2020-08-12 08:45:12.171376','2020-08-12 08:45:12.026873',NULL,8,'2020-08-12 08:45:12.172346',NULL,'+',25,2,124,2),
	(30,'2020-08-12 08:45:32.737039','2020-08-12 08:45:32.729040',NULL,9,'2020-08-12 08:45:32.738307',NULL,'+',25,6,125,2),
	(31,'2020-08-12 08:45:32.740508','2020-08-12 08:45:32.729040',NULL,10,'2020-08-12 08:45:32.741315',NULL,'+',25,7,125,2),
	(32,'2020-08-12 08:45:32.743649','2020-08-12 08:45:32.729040',NULL,11,'2020-08-12 08:45:32.744681',NULL,'+',25,5,125,2),
	(33,'2020-08-12 08:45:32.746863','2020-08-12 08:45:32.729040',NULL,12,'2020-08-12 08:45:32.756513',NULL,'+',25,3,125,2),
	(34,'2020-08-12 08:45:32.761310','2020-08-12 08:45:32.729040',NULL,13,'2020-08-12 08:45:32.762395',NULL,'+',25,2,125,2),
	(35,'2020-08-12 11:35:27.100348','2020-08-12 11:35:27.089593',NULL,14,'2020-08-12 11:35:27.101534',NULL,'+',25,6,127,2),
	(36,'2020-08-12 11:35:27.104046','2020-08-12 11:35:27.089593',NULL,15,'2020-08-12 11:35:27.108943',NULL,'+',25,31,127,2),
	(37,'2020-08-12 11:35:27.112895','2020-08-12 11:35:27.089593',NULL,16,'2020-08-12 11:35:27.113717',NULL,'+',25,26,127,2),
	(38,'2020-08-12 11:35:27.116196','2020-08-12 11:35:27.089593',NULL,17,'2020-08-12 11:35:27.117088',NULL,'+',25,5,127,2),
	(39,'2020-08-12 11:35:27.260486','2020-08-12 11:35:27.255425',NULL,18,'2020-08-12 11:35:27.261533',NULL,'+',25,25,127,80),
	(40,'2020-08-12 11:35:54.200173','2020-08-12 11:35:54.193036',NULL,19,'2020-08-12 11:35:54.202185',NULL,'+',25,24,124,5),
	(41,'2020-08-12 11:36:05.144882','2020-08-12 11:36:05.135566',NULL,20,'2020-08-12 11:36:05.146654',NULL,'+',25,26,124,2),
	(42,'2020-08-12 11:36:15.342346','2020-08-12 11:36:15.330320',NULL,21,'2020-08-12 11:36:15.343633',NULL,'+',25,26,125,2),
	(43,'2020-08-12 11:36:29.132718','2020-08-12 11:36:29.128336',NULL,22,'2020-08-12 11:36:29.133576',NULL,'+',25,30,125,4),
	(44,'2020-08-12 11:38:27.466149',NULL,NULL,23,'2020-08-12 11:38:27.469135',NULL,'+',1,29,126,90),
	(45,'2020-08-12 11:38:47.911483',NULL,NULL,24,'2020-08-12 11:38:47.913222',NULL,'+',1,31,124,70),
	(46,'2020-08-12 11:39:25.132544',NULL,NULL,25,'2020-08-12 11:39:25.133642',NULL,'+',1,28,4,3),
	(80,'2020-08-31 17:58:22.036287','2020-08-31 17:58:22.026672',NULL,58,'2020-08-31 17:58:22.037119',NULL,'+',25,1,149,4),
	(79,'2020-08-31 17:58:22.035807','2020-08-31 17:58:22.027567',NULL,59,'2020-08-31 17:58:22.037084',NULL,'+',25,9,149,2),
	(81,'2020-08-31 17:58:41.796298','2020-08-31 17:58:41.790960',NULL,60,'2020-08-31 17:58:41.797205',NULL,'+',25,1,149,2),
	(81,'2020-08-31 17:58:41.796298','2020-08-31 17:58:41.790960',NULL,61,'2020-08-31 18:12:35.913763',NULL,'-',1,1,149,2),
	(80,'2020-08-31 17:58:22.036287','2020-08-31 17:58:22.026672','2020-08-31 18:01:34.812637',62,'2020-08-31 18:12:35.919295',NULL,'-',1,1,149,4),
	(79,'2020-08-31 17:58:22.035807','2020-08-31 17:58:22.027567','2020-08-31 18:01:34.765939',63,'2020-08-31 18:12:35.921424',NULL,'-',1,9,149,2),
	(82,'2020-08-31 18:13:22.500592','2020-08-31 18:13:22.495711',NULL,64,'2020-08-31 18:13:22.501566',NULL,'+',25,9,152,2),
	(83,'2020-08-31 18:13:22.547864','2020-08-31 18:13:22.540386',NULL,65,'2020-08-31 18:13:22.549593',NULL,'+',25,1,152,4),
	(84,'2020-09-03 11:02:59.939942','2020-09-03 11:02:59.919069',NULL,66,'2020-09-03 11:02:59.941598',NULL,'+',25,1,153,4),
	(85,'2020-09-03 11:02:59.945411','2020-09-03 11:02:59.917318',NULL,67,'2020-09-03 11:02:59.947247',NULL,'+',25,9,153,2),
	(86,'2020-09-04 10:31:22.354695','2020-09-04 10:31:22.335554',NULL,68,'2020-09-04 10:31:22.357451',NULL,'+',25,11,154,5),
	(87,'2020-09-04 10:31:22.356447','2020-09-04 10:31:22.334351',NULL,69,'2020-09-04 10:31:22.359264',NULL,'+',25,3,154,2),
	(88,'2020-09-04 10:31:22.366603','2020-09-04 10:31:22.334351',NULL,70,'2020-09-04 10:31:22.370542',NULL,'+',25,2,154,2),
	(89,'2020-09-04 10:33:04.035019','2020-09-04 10:33:04.017867',NULL,71,'2020-09-04 10:33:04.036563',NULL,'+',25,3,154,2),
	(90,'2020-09-04 10:33:04.039731','2020-09-04 10:33:04.017867',NULL,72,'2020-09-04 10:33:04.041347',NULL,'+',25,1,154,2),
	(91,'2020-09-04 10:33:28.309860','2020-09-04 10:33:28.300223',NULL,73,'2020-09-04 10:33:28.312548',NULL,'+',25,2,154,2),
	(92,'2020-09-04 10:33:28.318795','2020-09-04 10:33:28.300223',NULL,74,'2020-09-04 10:33:28.320504',NULL,'+',25,7,154,2),
	(93,'2020-09-04 10:34:09.170574','2020-09-04 10:34:09.166472',NULL,75,'2020-09-04 10:34:09.171367',NULL,'+',25,1,154,2),
	(94,'2020-09-09 06:21:58.906523','2020-09-09 06:21:58.887029',NULL,76,'2020-09-09 06:21:58.908333',NULL,'+',25,1,155,4),
	(95,'2020-09-09 06:21:58.907284','2020-09-09 06:21:58.889874',NULL,77,'2020-09-09 06:21:58.910033',NULL,'+',25,9,155,2),
	(95,'2020-09-09 06:21:58.907284','2020-09-09 06:21:58.889874','2020-09-09 06:22:03.652992',78,'2020-09-09 18:52:48.409745',NULL,'-',1,9,155,2),
	(94,'2020-09-09 06:21:58.906523','2020-09-09 06:21:58.887029','2020-09-09 06:22:03.647564',79,'2020-09-09 18:52:48.411534',NULL,'-',1,1,155,4),
	(93,'2020-09-04 10:34:09.170574','2020-09-04 10:34:09.166472',NULL,80,'2020-09-09 18:52:48.413050',NULL,'-',1,1,154,2),
	(92,'2020-09-04 10:33:28.318795','2020-09-04 10:33:28.300223',NULL,81,'2020-09-09 18:52:48.414252',NULL,'-',1,7,154,2),
	(91,'2020-09-04 10:33:28.309860','2020-09-04 10:33:28.300223',NULL,82,'2020-09-09 18:52:48.415462',NULL,'-',1,2,154,2),
	(90,'2020-09-04 10:33:04.039731','2020-09-04 10:33:04.017867','2020-09-04 10:33:28.300223',83,'2020-09-09 18:52:48.416541',NULL,'-',1,1,154,2),
	(89,'2020-09-04 10:33:04.035019','2020-09-04 10:33:04.017867','2020-09-04 10:34:09.166472',84,'2020-09-09 18:52:48.418236',NULL,'-',1,3,154,2),
	(88,'2020-09-04 10:31:22.366603','2020-09-04 10:31:22.334351','2020-09-04 10:33:04.017867',85,'2020-09-09 18:52:48.420146',NULL,'-',1,2,154,2),
	(87,'2020-09-04 10:31:22.356447','2020-09-04 10:31:22.334351','2020-09-04 10:31:42.410367',86,'2020-09-09 18:52:48.423724',NULL,'-',1,3,154,2),
	(86,'2020-09-04 10:31:22.354695','2020-09-04 10:31:22.335554',NULL,87,'2020-09-09 18:52:48.425258',NULL,'-',1,11,154,5),
	(85,'2020-09-03 11:02:59.945411','2020-09-03 11:02:59.917318','2020-09-03 11:03:05.287102',88,'2020-09-09 18:52:48.426332',NULL,'-',1,9,153,2),
	(84,'2020-09-03 11:02:59.939942','2020-09-03 11:02:59.919069','2020-09-03 11:03:05.432286',89,'2020-09-09 18:52:48.427525',NULL,'-',1,1,153,4),
	(83,'2020-08-31 18:13:22.547864','2020-08-31 18:13:22.540386','2020-08-31 18:13:28.991375',90,'2020-09-09 18:52:48.429019',NULL,'-',1,1,152,4),
	(82,'2020-08-31 18:13:22.500592','2020-08-31 18:13:22.495711','2020-08-31 18:13:28.992273',91,'2020-09-09 18:52:48.430120',NULL,'-',1,9,152,2);

/*!40000 ALTER TABLE `magnus_members_historicalmembergrouprole` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_historicalmemberpicture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicalmemberpicture`;

CREATE TABLE `magnus_members_historicalmemberpicture` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` longtext NOT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_8287c7fc_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicalmemberpicture_id_e006702f` (`id`),
  CONSTRAINT `magnus_members_histo_history_user_id_8287c7fc_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_historicaltag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_historicaltag`;

CREATE TABLE `magnus_members_historicaltag` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` varchar(400) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_members_histo_history_user_id_a75ce12e_fk_magnus_us` (`history_user_id`),
  KEY `magnus_members_historicaltag_id_b35256ff` (`id`),
  KEY `magnus_members_historicaltag_parent_id_7883a71d` (`parent_id`),
  CONSTRAINT `magnus_members_histo_history_user_id_a75ce12e_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_member`;

CREATE TABLE `magnus_members_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_old` varchar(254) DEFAULT NULL,
  `birthday_old` date DEFAULT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `middle_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_member` WRITE;
/*!40000 ALTER TABLE `magnus_members_member` DISABLE KEYS */;

INSERT INTO `magnus_members_member` (`id`, `email_old`, `birthday_old`, `first_name`, `last_name`, `createdDate`, `endDate`, `startDate`, `middle_name`)
VALUES
	(1,NULL,NULL,'Donald','Duck',NULL,NULL,NULL,''),
	(2,NULL,NULL,'Kwik','Duck',NULL,NULL,NULL,''),
	(3,NULL,NULL,'Kwak','Duck',NULL,NULL,NULL,''),
	(4,NULL,NULL,'Dirk','Kraaijpoel',NULL,NULL,NULL,''),
	(5,NULL,NULL,'Koen','Aubel',NULL,NULL,NULL,''),
	(6,NULL,NULL,'Daan','Aubel',NULL,NULL,NULL,''),
	(7,NULL,NULL,'Hidde','Kraaijoel',NULL,NULL,NULL,''),
	(8,NULL,NULL,'Jochem','Aubel',NULL,NULL,NULL,''),
	(9,NULL,NULL,'Bessel','Bakker',NULL,NULL,NULL,''),
	(10,NULL,NULL,'Nicolette','Mulder',NULL,NULL,NULL,''),
	(11,NULL,NULL,'Bas','van Esch',NULL,NULL,NULL,''),
	(23,NULL,NULL,'Sandra','(Staff)','2020-08-12 08:25:07.360859',NULL,NULL,NULL),
	(24,NULL,NULL,'Tinus','(Trainer)','2020-08-12 08:47:45.982524',NULL,NULL,''),
	(25,NULL,NULL,'Tanja','(Teamleider)','2020-08-12 11:19:31.223789',NULL,NULL,NULL),
	(26,NULL,NULL,'Leo','(Lid)','2020-08-12 11:20:03.219648',NULL,NULL,''),
	(27,NULL,NULL,'Odette','(Ouder)','2020-08-12 11:20:17.334924',NULL,NULL,NULL),
	(28,NULL,NULL,'Aad','(Aanmeldtafel)','2020-08-12 11:20:37.712148',NULL,NULL,''),
	(29,NULL,NULL,'Eduard','(Externe competitieleider)','2020-08-12 11:20:59.509181',NULL,NULL,NULL),
	(30,NULL,NULL,'Cor','(Competitieleider)','2020-08-12 11:21:15.312730',NULL,NULL,NULL),
	(31,NULL,NULL,'Huub','(Hulptrainer)','2020-08-12 11:21:27.230816',NULL,NULL,NULL);

/*!40000 ALTER TABLE `magnus_members_member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_member_parents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_member_parents`;

CREATE TABLE `magnus_members_member_parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_member_id` int(11) NOT NULL,
  `to_member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_members_member_pa_from_member_id_to_member_39ebb25e_uniq` (`from_member_id`,`to_member_id`),
  KEY `magnus_members_membe_to_member_id_da9c3035_fk_magnus_me` (`to_member_id`),
  CONSTRAINT `magnus_members_membe_from_member_id_9f3af75f_fk_magnus_me` FOREIGN KEY (`from_member_id`) REFERENCES `magnus_members_member` (`id`),
  CONSTRAINT `magnus_members_membe_to_member_id_da9c3035_fk_magnus_me` FOREIGN KEY (`to_member_id`) REFERENCES `magnus_members_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_member_parents` WRITE;
/*!40000 ALTER TABLE `magnus_members_member_parents` DISABLE KEYS */;

INSERT INTO `magnus_members_member_parents` (`id`, `from_member_id`, `to_member_id`)
VALUES
	(5,26,27);

/*!40000 ALTER TABLE `magnus_members_member_parents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_member_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_member_roles`;

CREATE TABLE `magnus_members_member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_members_member_roles_member_id_group_id_6275d1c0_uniq` (`member_id`,`group_id`),
  KEY `magnus_members_member_roles_group_id_2ea0b319_fk_auth_group_id` (`group_id`),
  CONSTRAINT `magnus_members_membe_member_id_be54d611_fk_magnus_me` FOREIGN KEY (`member_id`) REFERENCES `magnus_members_member` (`id`),
  CONSTRAINT `magnus_members_member_roles_group_id_2ea0b319_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_member_roles` WRITE;
/*!40000 ALTER TABLE `magnus_members_member_roles` DISABLE KEYS */;

INSERT INTO `magnus_members_member_roles` (`id`, `member_id`, `group_id`)
VALUES
	(1,24,1),
	(2,30,1);

/*!40000 ALTER TABLE `magnus_members_member_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_memberdetail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberdetail`;

CREATE TABLE `magnus_members_memberdetail` (
  `member_id` int(11) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `authorization_id` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `gendertype` int(11) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `photo_id` (`photo_id`),
  KEY `magnus_members_membe_authorization_id_3667d8c5_fk_magnus_me` (`authorization_id`),
  CONSTRAINT `magnus_members_membe_authorization_id_3667d8c5_fk_magnus_me` FOREIGN KEY (`authorization_id`) REFERENCES `magnus_members_authorization` (`id`),
  CONSTRAINT `magnus_members_membe_member_id_acd536b5_fk_magnus_me` FOREIGN KEY (`member_id`) REFERENCES `magnus_members_member` (`id`),
  CONSTRAINT `magnus_members_membe_photo_id_7b3887b0_fk_magnus_me` FOREIGN KEY (`photo_id`) REFERENCES `magnus_members_memberpicture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_memberdetail` WRITE;
/*!40000 ALTER TABLE `magnus_members_memberdetail` DISABLE KEYS */;

INSERT INTO `magnus_members_memberdetail` (`member_id`, `email`, `birthday`, `authorization_id`, `photo_id`, `gendertype`, `telephone`)
VALUES
	(1,'magnusapp2019@gmail.com','2020-01-09',NULL,NULL,0,NULL),
	(2,'','2019-10-10',NULL,NULL,0,NULL),
	(3,'','2018-01-18',NULL,NULL,0,NULL),
	(4,'hakraai@gmail.com','2017-01-05',NULL,NULL,0,NULL),
	(5,'','2020-01-03',NULL,NULL,0,NULL),
	(6,'','2020-01-03',NULL,NULL,0,NULL),
	(7,NULL,NULL,NULL,NULL,0,NULL),
	(8,'','2020-01-03',NULL,NULL,0,NULL),
	(9,NULL,'2020-01-03',NULL,NULL,0,NULL),
	(10,NULL,'2020-01-03',NULL,NULL,0,NULL),
	(11,'','2020-01-03',NULL,NULL,0,NULL),
	(23,NULL,NULL,NULL,NULL,2,NULL),
	(24,'',NULL,NULL,NULL,1,''),
	(25,NULL,NULL,NULL,NULL,2,NULL),
	(26,'',NULL,NULL,NULL,1,''),
	(27,NULL,NULL,NULL,NULL,2,NULL),
	(28,'',NULL,NULL,NULL,1,''),
	(29,NULL,NULL,NULL,NULL,1,NULL),
	(30,NULL,NULL,NULL,NULL,1,NULL),
	(31,NULL,NULL,NULL,NULL,1,NULL);

/*!40000 ALTER TABLE `magnus_members_memberdetail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_memberdetail_addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberdetail_addresses`;

CREATE TABLE `magnus_members_memberdetail_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberdetail_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_members_memberdet_memberdetail_id_address__bffd78b2_uniq` (`memberdetail_id`,`address_id`),
  KEY `magnus_members_membe_address_id_3c1381b9_fk_magnus_me` (`address_id`),
  CONSTRAINT `magnus_members_membe_address_id_3c1381b9_fk_magnus_me` FOREIGN KEY (`address_id`) REFERENCES `magnus_members_address` (`id`),
  CONSTRAINT `magnus_members_membe_memberdetail_id_33bdb290_fk_magnus_me` FOREIGN KEY (`memberdetail_id`) REFERENCES `magnus_members_memberdetail` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_memberdetail_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberdetail_locations`;

CREATE TABLE `magnus_members_memberdetail_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberdetail_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_members_memberdet_memberdetail_id_location_c3dbdb3d_uniq` (`memberdetail_id`,`location_id`),
  KEY `magnus_members_membe_location_id_81e1b393_fk_magnus_sh` (`location_id`),
  CONSTRAINT `magnus_members_membe_location_id_81e1b393_fk_magnus_sh` FOREIGN KEY (`location_id`) REFERENCES `magnus_shared_location` (`id`),
  CONSTRAINT `magnus_members_membe_memberdetail_id_06d3941b_fk_magnus_me` FOREIGN KEY (`memberdetail_id`) REFERENCES `magnus_members_memberdetail` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_memberdetail_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberdetail_tags`;

CREATE TABLE `magnus_members_memberdetail_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberdetail_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_members_memberdet_memberdetail_id_tag_id_021b10d1_uniq` (`memberdetail_id`,`tag_id`),
  KEY `magnus_members_membe_tag_id_3cbf4256_fk_magnus_me` (`tag_id`),
  CONSTRAINT `magnus_members_membe_memberdetail_id_0bb59fa0_fk_magnus_me` FOREIGN KEY (`memberdetail_id`) REFERENCES `magnus_members_memberdetail` (`member_id`),
  CONSTRAINT `magnus_members_membe_tag_id_3cbf4256_fk_magnus_me` FOREIGN KEY (`tag_id`) REFERENCES `magnus_members_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_membergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_membergroup`;

CREATE TABLE `magnus_members_membergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `parentMemberGroup_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `endDate` datetime(6) DEFAULT NULL,
  `startDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_members_membe_location_id_52099213_fk_magnus_sh` (`location_id`),
  KEY `magnus_members_membe_parentMemberGroup_id_762cf530_fk_magnus_me` (`parentMemberGroup_id`),
  CONSTRAINT `magnus_members_membe_location_id_52099213_fk_magnus_sh` FOREIGN KEY (`location_id`) REFERENCES `magnus_shared_location` (`id`),
  CONSTRAINT `magnus_members_membe_parentMemberGroup_id_762cf530_fk_magnus_me` FOREIGN KEY (`parentMemberGroup_id`) REFERENCES `magnus_members_membergroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_membergroup` WRITE;
/*!40000 ALTER TABLE `magnus_members_membergroup` DISABLE KEYS */;

INSERT INTO `magnus_members_membergroup` (`id`, `description`, `createdDate`, `location_id`, `parentMemberGroup_id`, `type`, `endDate`, `startDate`)
VALUES
	(1,'Groep D1','2020-01-02 00:00:00.000000',1,4,0,NULL,NULL),
	(2,'Groep E1','2020-01-02 00:00:00.000000',NULL,3,0,NULL,NULL),
	(3,'Trainingsgroepen','2020-01-02 00:00:00.000000',NULL,NULL,0,NULL,NULL),
	(4,'TEST clubavond','2020-01-03 00:00:00.000000',NULL,NULL,0,NULL,NULL),
	(5,'Groep W1','2020-01-03 00:00:00.000000',NULL,NULL,0,NULL,NULL),
	(6,'Competitiegroep V1','2020-01-03 00:00:00.000000',NULL,NULL,0,NULL,NULL),
	(7,'Competitiegroep W1','2020-01-03 00:00:00.000000',NULL,NULL,0,NULL,NULL),
	(124,'TEST trainingsgroep','2020-08-12 08:40:30.139061',NULL,NULL,1,NULL,NULL),
	(125,'TEST competitiegroep','2020-08-12 08:40:52.994024',NULL,NULL,2,NULL,NULL),
	(126,'TEST externe competitie','2020-08-12 11:30:59.588403',NULL,NULL,4,NULL,NULL),
	(127,'TEST magnus team','2020-08-12 11:32:20.046182',NULL,126,3,NULL,NULL);

/*!40000 ALTER TABLE `magnus_members_membergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_membergrouprole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_membergrouprole`;

CREATE TABLE `magnus_members_membergrouprole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime(6) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `memberGroup_id` int(11) NOT NULL,
  `memberRole` int(11) NOT NULL,
  `endDate` datetime(6) DEFAULT NULL,
  `startDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_members_membe_member_id_9397fab5_fk_magnus_me` (`member_id`),
  KEY `magnus_members_membe_memberGroup_id_b799ad4b_fk_magnus_me` (`memberGroup_id`),
  CONSTRAINT `magnus_members_membe_memberGroup_id_b799ad4b_fk_magnus_me` FOREIGN KEY (`memberGroup_id`) REFERENCES `magnus_members_membergroup` (`id`),
  CONSTRAINT `magnus_members_membe_member_id_9397fab5_fk_magnus_me` FOREIGN KEY (`member_id`) REFERENCES `magnus_members_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_membergrouprole` WRITE;
/*!40000 ALTER TABLE `magnus_members_membergrouprole` DISABLE KEYS */;

INSERT INTO `magnus_members_membergrouprole` (`id`, `createdDate`, `member_id`, `memberGroup_id`, `memberRole`, `endDate`, `startDate`)
VALUES
	(1,'2020-01-02 00:00:00.000000',1,2,1,NULL,NULL),
	(2,'2020-01-02 00:00:00.000000',2,1,2,NULL,NULL),
	(3,'2020-01-02 00:00:00.000000',1,2,2,NULL,NULL),
	(4,'2020-01-02 00:00:00.000000',2,2,2,NULL,NULL),
	(5,'2020-01-02 00:00:00.000000',3,1,2,NULL,NULL),
	(6,'2020-01-03 00:00:00.000000',11,4,3,NULL,NULL),
	(7,'2020-01-03 00:00:00.000000',4,4,3,NULL,NULL),
	(8,'2020-01-03 00:00:00.000000',10,6,4,NULL,NULL),
	(9,'2020-01-03 00:00:00.000000',9,1,1,NULL,NULL),
	(10,'2020-01-03 00:00:00.000000',9,6,4,NULL,NULL),
	(11,'2020-01-03 00:00:00.000000',7,1,2,NULL,NULL),
	(12,'2020-01-03 00:00:00.000000',5,1,2,NULL,NULL),
	(13,'2020-01-03 00:00:00.000000',7,2,1,NULL,NULL),
	(14,'2020-01-03 00:00:00.000000',6,2,2,NULL,NULL),
	(15,'2020-01-03 00:00:00.000000',11,7,4,NULL,NULL),
	(16,'2020-01-03 00:00:00.000000',6,7,2,NULL,NULL),
	(17,'2020-01-03 00:00:00.000000',5,6,2,NULL,NULL),
	(18,'2020-01-03 00:00:00.000000',6,6,2,NULL,NULL),
	(19,'2020-01-03 00:00:00.000000',7,6,2,NULL,NULL),
	(20,'2020-01-03 00:00:00.000000',11,5,5,NULL,NULL),
	(22,'2020-02-05 00:00:00.000000',7,6,3,NULL,NULL),
	(23,'2020-03-01 00:00:00.000000',4,7,4,NULL,NULL),
	(24,'2020-03-01 00:00:00.000000',4,5,3,NULL,NULL),
	(25,'2020-08-12 08:45:12.099709',6,124,2,NULL,'2020-08-12 08:45:12.026873'),
	(26,'2020-08-12 08:45:12.104916',7,124,2,NULL,'2020-08-12 08:45:12.026873'),
	(27,'2020-08-12 08:45:12.108699',5,124,2,NULL,'2020-08-12 08:45:12.026873'),
	(28,'2020-08-12 08:45:12.162995',3,124,2,NULL,'2020-08-12 08:45:12.026873'),
	(29,'2020-08-12 08:45:12.171376',2,124,2,NULL,'2020-08-12 08:45:12.026873'),
	(30,'2020-08-12 08:45:32.737039',6,125,2,NULL,'2020-08-12 08:45:32.729040'),
	(31,'2020-08-12 08:45:32.740508',7,125,2,NULL,'2020-08-12 08:45:32.729040'),
	(32,'2020-08-12 08:45:32.743649',5,125,2,NULL,'2020-08-12 08:45:32.729040'),
	(33,'2020-08-12 08:45:32.746863',3,125,2,NULL,'2020-08-12 08:45:32.729040'),
	(34,'2020-08-12 08:45:32.761310',2,125,2,NULL,'2020-08-12 08:45:32.729040'),
	(35,'2020-08-12 11:35:27.100348',6,127,2,NULL,'2020-08-12 11:35:27.089593'),
	(36,'2020-08-12 11:35:27.104046',31,127,2,NULL,'2020-08-12 11:35:27.089593'),
	(37,'2020-08-12 11:35:27.112895',26,127,2,NULL,'2020-08-12 11:35:27.089593'),
	(38,'2020-08-12 11:35:27.116196',5,127,2,NULL,'2020-08-12 11:35:27.089593'),
	(39,'2020-08-12 11:35:27.260486',25,127,80,NULL,'2020-08-12 11:35:27.255425'),
	(40,'2020-08-12 11:35:54.200173',24,124,5,NULL,'2020-08-12 11:35:54.193036'),
	(41,'2020-08-12 11:36:05.144882',26,124,2,NULL,'2020-08-12 11:36:05.135566'),
	(42,'2020-08-12 11:36:15.342346',26,125,2,NULL,'2020-08-12 11:36:15.330320'),
	(43,'2020-08-12 11:36:29.132718',30,125,4,NULL,'2020-08-12 11:36:29.128336'),
	(44,'2020-08-12 11:38:27.466149',29,126,90,NULL,NULL),
	(45,'2020-08-12 11:38:47.911483',31,124,70,NULL,NULL),
	(46,'2020-08-12 11:39:25.132544',28,4,3,NULL,NULL);

/*!40000 ALTER TABLE `magnus_members_membergrouprole` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_memberpicture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberpicture`;

CREATE TABLE `magnus_members_memberpicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_memberrole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberrole`;

CREATE TABLE `magnus_members_memberrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_memberrole` WRITE;
/*!40000 ALTER TABLE `magnus_members_memberrole` DISABLE KEYS */;

INSERT INTO `magnus_members_memberrole` (`id`, `description`, `createdDate`)
VALUES
	(2,'Deelnemer','2020-04-24 00:00:00.000000'),
	(3,'Coördinator','2020-04-24 00:00:00.000000'),
	(4,'Competitieleider','2020-04-24 00:00:00.000000'),
	(5,'Trainer','2020-04-24 00:00:00.000000');

/*!40000 ALTER TABLE `magnus_members_memberrole` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_memberrole_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_memberrole_permissions`;

CREATE TABLE `magnus_members_memberrole_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberrole_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_members_memberrol_memberrole_id_permission_9c1616f0_uniq` (`memberrole_id`,`permission_id`),
  KEY `magnus_members_membe_permission_id_2cdd4e9d_fk_auth_perm` (`permission_id`),
  CONSTRAINT `magnus_members_membe_memberrole_id_b3387e43_fk_magnus_me` FOREIGN KEY (`memberrole_id`) REFERENCES `magnus_members_memberrole` (`id`),
  CONSTRAINT `magnus_members_membe_permission_id_2cdd4e9d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_memberrole_permissions` WRITE;
/*!40000 ALTER TABLE `magnus_members_memberrole_permissions` DISABLE KEYS */;

INSERT INTO `magnus_members_memberrole_permissions` (`id`, `memberrole_id`, `permission_id`)
VALUES
	(2,2,52),
	(3,3,48),
	(4,4,48),
	(5,5,48);

/*!40000 ALTER TABLE `magnus_members_memberrole_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_members_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_tag`;

CREATE TABLE `magnus_members_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `value` varchar(400) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_members_tag_parent_id_afa579ac_fk_magnus_members_tag_id` (`parent_id`),
  CONSTRAINT `magnus_members_tag_parent_id_afa579ac_fk_magnus_members_tag_id` FOREIGN KEY (`parent_id`) REFERENCES `magnus_members_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_members_usermember
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_members_usermember`;

CREATE TABLE `magnus_members_usermember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberIsUser` tinyint(1) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_members_userm_member_id_02dcd400_fk_magnus_me` (`member_id`),
  KEY `magnus_members_userm_user_id_a97d5d6e_fk_magnus_us` (`user_id`),
  CONSTRAINT `magnus_members_userm_member_id_02dcd400_fk_magnus_me` FOREIGN KEY (`member_id`) REFERENCES `magnus_members_member` (`id`),
  CONSTRAINT `magnus_members_userm_user_id_a97d5d6e_fk_magnus_us` FOREIGN KEY (`user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_members_usermember` WRITE;
/*!40000 ALTER TABLE `magnus_members_usermember` DISABLE KEYS */;

INSERT INTO `magnus_members_usermember` (`id`, `memberIsUser`, `createdDate`, `member_id`, `user_id`)
VALUES
	(1,1,'2020-01-02 00:00:00.000000',1,1),
	(2,NULL,'2020-01-02 00:00:00.000000',2,1),
	(3,NULL,'2020-01-02 00:00:00.000000',3,1),
	(4,NULL,'2020-01-02 00:00:00.000000',3,2),
	(5,NULL,'2020-01-03 00:00:00.000000',7,3),
	(6,NULL,'2020-01-03 00:00:00.000000',4,3),
	(7,NULL,'2020-01-03 00:00:00.000000',9,2),
	(8,0,'2020-01-11 00:00:00.000000',5,4),
	(9,0,'2020-01-11 00:00:00.000000',6,4),
	(30,NULL,'2020-04-21 00:00:00.000000',5,22),
	(31,NULL,'2020-04-22 00:00:00.000000',6,23),
	(45,1,'2020-08-12 08:29:37.391757',23,25),
	(48,1,'2020-08-12 08:50:17.216333',24,27),
	(50,1,'2020-08-12 11:25:26.525734',31,28),
	(52,1,'2020-08-12 11:25:47.955307',28,29),
	(54,1,'2020-08-12 11:26:36.105016',30,30),
	(56,1,'2020-08-12 11:26:58.177328',25,31),
	(57,NULL,'2020-08-12 11:27:24.507637',26,32),
	(58,1,'2020-08-12 11:27:24.509043',27,32),
	(60,1,'2020-08-12 11:27:42.657265',26,33),
	(62,1,'2020-08-12 11:42:07.268762',29,34);

/*!40000 ALTER TABLE `magnus_members_usermember` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_shared_city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_shared_city`;

CREATE TABLE `magnus_shared_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_shared_city` WRITE;
/*!40000 ALTER TABLE `magnus_shared_city` DISABLE KEYS */;

INSERT INTO `magnus_shared_city` (`id`, `name`, `createdDate`)
VALUES
	(1,'UTRECHT','2020-06-30 14:35:44.564293'),
	(2,'test','2020-06-30 14:35:44.560049');

/*!40000 ALTER TABLE `magnus_shared_city` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_shared_historicallocation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_shared_historicallocation`;

CREATE TABLE `magnus_shared_historicallocation` (
  `id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `parentLocation_id` int(11) DEFAULT NULL,
  `housenumber` int(11) DEFAULT NULL,
  `housenumber_suffix` varchar(10) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_shared_histor_history_user_id_7a1b63f4_fk_magnus_us` (`history_user_id`),
  KEY `magnus_shared_historicallocation_id_b3325bd0` (`id`),
  KEY `magnus_shared_historicallocation_parentLocation_id_762d43d1` (`parentLocation_id`),
  KEY `magnus_shared_historicallocation_city_id_524d8da7` (`city_id`),
  CONSTRAINT `magnus_shared_histor_history_user_id_7a1b63f4_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_shared_historicallocation` WRITE;
/*!40000 ALTER TABLE `magnus_shared_historicallocation` DISABLE KEYS */;

INSERT INTO `magnus_shared_historicallocation` (`id`, `description`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `parentLocation_id`, `housenumber`, `housenumber_suffix`, `postalcode`, `street`, `type`, `city_id`)
VALUES
	(1,'A103','2020-01-02 00:00:00.000000',1,'2020-05-06 10:01:01.530740','','+',NULL,2,1,NULL,NULL,'1',0,NULL),
	(2,'LRC','2020-01-02 00:00:00.000000',2,'2020-05-06 10:01:01.530983','','+',NULL,NULL,1,NULL,NULL,'1',0,NULL);

/*!40000 ALTER TABLE `magnus_shared_historicallocation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_shared_location
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_shared_location`;

CREATE TABLE `magnus_shared_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `parentLocation_id` int(11) DEFAULT NULL,
  `housenumber` int(11) DEFAULT NULL,
  `housenumber_suffix` varchar(10) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_shared_locati_parentLocation_id_9e473ad3_fk_magnus_sh` (`parentLocation_id`),
  KEY `magnus_shared_location_city_id_ed05e79c_fk_magnus_shared_city_id` (`city_id`),
  CONSTRAINT `magnus_shared_locati_parentLocation_id_9e473ad3_fk_magnus_sh` FOREIGN KEY (`parentLocation_id`) REFERENCES `magnus_shared_location` (`id`),
  CONSTRAINT `magnus_shared_location_city_id_ed05e79c_fk_magnus_shared_city_id` FOREIGN KEY (`city_id`) REFERENCES `magnus_shared_city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_shared_location` WRITE;
/*!40000 ALTER TABLE `magnus_shared_location` DISABLE KEYS */;

INSERT INTO `magnus_shared_location` (`id`, `description`, `createdDate`, `parentLocation_id`, `housenumber`, `housenumber_suffix`, `postalcode`, `street`, `type`, `city_id`)
VALUES
	(1,'A103','2020-01-02 00:00:00.000000',2,1,NULL,NULL,'1',0,1),
	(2,'LRC','2020-01-02 00:00:00.000000',NULL,1,NULL,NULL,'1',0,1);

/*!40000 ALTER TABLE `magnus_shared_location` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_training_chessposition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_training_chessposition`;

CREATE TABLE `magnus_training_chessposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `position` varchar(1000) NOT NULL,
  `whiteToMove` tinyint(1) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_training_ches_creator_id_c0af3ed6_fk_magnus_us` (`creator_id`),
  CONSTRAINT `magnus_training_ches_creator_id_c0af3ed6_fk_magnus_us` FOREIGN KEY (`creator_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_training_chessposition` WRITE;
/*!40000 ALTER TABLE `magnus_training_chessposition` DISABLE KEYS */;

INSERT INTO `magnus_training_chessposition` (`id`, `name`, `position`, `whiteToMove`, `createdDate`, `creator_id`)
VALUES
	(1,'Spaans','r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',1,'2020-05-10 00:00:00.000000',3),
	(2,'Van Geet','rnbqkbnr/pppppppp/8/8/8/2N5/PPPPPPPP/R1BQKBNR',1,'2020-05-10 00:00:00.000000',3),
	(3,'Koningsgambiet','rnbqkbnr/pppp1ppp/8/4p3/4PP2/8/PPPP2PP/RNBQKBNR',1,'2020-05-10 00:00:00.000000',3),
	(4,'TEST stelling','rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR w',1,'2020-08-16 06:44:43.068294',27);

/*!40000 ALTER TABLE `magnus_training_chessposition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_training_chesspositiontraining
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_training_chesspositiontraining`;

CREATE TABLE `magnus_training_chesspositiontraining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `position_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_training_ches_position_id_1e9419d4_fk_magnus_tr` (`position_id`),
  KEY `magnus_training_ches_training_id_a431340f_fk_magnus_tr` (`training_id`),
  CONSTRAINT `magnus_training_ches_position_id_1e9419d4_fk_magnus_tr` FOREIGN KEY (`position_id`) REFERENCES `magnus_training_chessposition` (`id`),
  CONSTRAINT `magnus_training_ches_training_id_a431340f_fk_magnus_tr` FOREIGN KEY (`training_id`) REFERENCES `magnus_training_training` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_training_chesspositiontraining` WRITE;
/*!40000 ALTER TABLE `magnus_training_chesspositiontraining` DISABLE KEYS */;

INSERT INTO `magnus_training_chesspositiontraining` (`id`, `order`, `createdDate`, `position_id`, `training_id`)
VALUES
	(1,1,'2020-05-30 10:15:43.603618',3,1),
	(2,0,'2020-05-30 10:15:43.606279',2,1),
	(11,0,'2020-09-09 07:38:23.275056',3,30);

/*!40000 ALTER TABLE `magnus_training_chesspositiontraining` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_training_historicalchessposition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_training_historicalchessposition`;

CREATE TABLE `magnus_training_historicalchessposition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `position` varchar(1000) NOT NULL,
  `whiteToMove` tinyint(1) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_training_hist_history_user_id_c95be416_fk_magnus_us` (`history_user_id`),
  KEY `magnus_training_historicalchess_position_id_dc20409b` (`id`),
  KEY `magnus_training_historicalchessposition_creator_id_03a27774` (`creator_id`),
  CONSTRAINT `magnus_training_hist_history_user_id_c95be416_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_training_historicalchessposition` WRITE;
/*!40000 ALTER TABLE `magnus_training_historicalchessposition` DISABLE KEYS */;

INSERT INTO `magnus_training_historicalchessposition` (`id`, `name`, `position`, `whiteToMove`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `creator_id`)
VALUES
	(1,'Spaans','r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',1,'2020-05-10 00:00:00.000000',1,'2020-05-10 06:26:11.789391',NULL,'+',3,3),
	(2,'Van Geet','rnbqkbnr/pppppppp/8/8/8/2N5/PPPPPPPP/R1BQKBNR',1,'2020-05-10 00:00:00.000000',2,'2020-05-10 16:50:08.040244',NULL,'+',3,3),
	(3,'Koningsgambiet','rnbqkbnr/pppp1ppp/8/4p3/4PP2/8/PPPP2PP/RNBQKBNR',1,'2020-05-10 00:00:00.000000',3,'2020-05-10 16:50:33.827970',NULL,'+',3,3),
	(4,'TEST stelling','rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR w',1,'2020-08-16 06:44:43.068294',4,'2020-08-16 06:44:43.069267',NULL,'+',27,27),
	(14,'NIEUWE stelling','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-08-31 18:04:55.190020',32,'2020-08-31 18:04:55.191685',NULL,'+',25,25),
	(14,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-08-31 18:04:55.190020',33,'2020-08-31 18:04:58.239402',NULL,'~',25,25),
	(14,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-08-31 18:04:55.190020',34,'2020-08-31 18:05:00.801109',NULL,'-',25,25),
	(15,'NIEUWE stelling','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-03 11:12:41.118413',35,'2020-09-03 11:12:41.119687',NULL,'+',25,25),
	(15,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-03 11:12:41.118413',36,'2020-09-03 11:12:44.074384',NULL,'~',25,25),
	(15,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-03 11:12:41.118413',37,'2020-09-03 11:12:46.644000',NULL,'-',25,25),
	(16,'NIEUWE stelling','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-03 11:38:38.287154',38,'2020-09-03 11:38:38.289280',NULL,'+',27,27),
	(16,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-03 11:38:38.287154',39,'2020-09-03 11:38:41.223215',NULL,'~',27,27),
	(16,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-03 11:38:38.287154',40,'2020-09-03 11:38:43.907548',NULL,'-',27,27),
	(17,'NIEUWE stelling','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-09 06:24:35.328644',41,'2020-09-09 06:24:35.329771',NULL,'+',25,25),
	(17,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-09 06:24:35.328644',42,'2020-09-09 06:24:38.434991',NULL,'~',25,25),
	(17,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-09 06:24:35.328644',43,'2020-09-09 06:24:40.914187',NULL,'-',25,25),
	(18,'NIEUWE stelling','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-09 07:31:18.035427',44,'2020-09-09 07:31:18.036372',NULL,'+',27,27),
	(18,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-09 07:31:18.035427',45,'2020-09-09 07:31:20.995287',NULL,'~',27,27),
	(18,'NIEUWE stelling (bewerkt)','k7/5ppp/8/8/8/8/5PPP/K7 w',1,'2020-09-09 07:31:18.035427',46,'2020-09-09 07:31:23.593456',NULL,'-',27,27);

/*!40000 ALTER TABLE `magnus_training_historicalchessposition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_training_historicalchesspositiontraining
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_training_historicalchesspositiontraining`;

CREATE TABLE `magnus_training_historicalchesspositiontraining` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `training_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `history_user_id` (`history_user_id`),
  CONSTRAINT `magnus_training_historicalchesspositiontraining_ibfk_1` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_training_historicalchesspositiontraining` WRITE;
/*!40000 ALTER TABLE `magnus_training_historicalchesspositiontraining` DISABLE KEYS */;

INSERT INTO `magnus_training_historicalchesspositiontraining` (`id`, `order`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `position_id`, `history_user_id`, `training_id`)
VALUES
	(1,0,'2020-05-30 10:15:43.603618',1,'2020-05-30 10:15:43',NULL,'+',3,3,1),
	(2,1,'2020-05-30 10:15:43.606279',2,'2020-05-30 10:15:43',NULL,'+',2,3,1),
	(2,0,'2020-05-30 10:15:43.606279',3,'2020-05-30 10:15:46',NULL,'~',2,3,1),
	(1,1,'2020-05-30 10:15:43.603618',4,'2020-05-30 10:15:46',NULL,'~',3,3,1),
	(7,0,'2020-09-03 11:13:18.811889',11,'2020-09-03 11:13:18',NULL,'+',3,25,26),
	(7,0,'2020-09-03 11:13:18.811889',12,'2020-09-03 11:13:25',NULL,'-',3,25,26),
	(8,0,'2020-09-03 11:39:19.831481',13,'2020-09-03 11:39:19',NULL,'+',3,27,27),
	(8,0,'2020-09-03 11:39:19.831481',14,'2020-09-03 11:39:26',NULL,'-',3,27,27),
	(9,0,'2020-09-09 06:25:14.404456',15,'2020-09-09 06:25:14',NULL,'+',3,25,28),
	(9,0,'2020-09-09 06:25:14.404456',16,'2020-09-09 06:25:20',NULL,'-',3,25,28),
	(10,0,'2020-09-09 07:32:05.007159',17,'2020-09-09 07:32:05',NULL,'+',3,27,29),
	(11,0,'2020-09-09 07:38:23.275056',18,'2020-09-09 07:38:23',NULL,'+',3,27,30),
	(10,0,'2020-09-09 07:32:05.007159',19,'2020-09-09 07:38:32',NULL,'-',3,27,29);

/*!40000 ALTER TABLE `magnus_training_historicalchesspositiontraining` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_training_historicaltraining
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_training_historicaltraining`;

CREATE TABLE `magnus_training_historicaltraining` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_training_hist_history_user_id_4aedcd54_fk_magnus_us` (`history_user_id`),
  KEY `magnus_training_historicaltraining_id_6632702b` (`id`),
  KEY `magnus_training_historicaltraining_creator_id_7ed02db4` (`creator_id`),
  CONSTRAINT `magnus_training_hist_history_user_id_4aedcd54_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_training_historicaltraining` WRITE;
/*!40000 ALTER TABLE `magnus_training_historicaltraining` DISABLE KEYS */;

INSERT INTO `magnus_training_historicaltraining` (`id`, `name`, `createdDate`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`, `creator_id`)
VALUES
	(1,'Koningsaanval','2020-05-23 13:57:20.866200',1,'2020-05-23 13:57:20.868647',NULL,'+',3,NULL),
	(2,'De eerste training','2020-05-24 19:43:58.761897',2,'2020-05-24 19:43:58.762942',NULL,'+',3,NULL),
	(3,'Nieuwe training','2020-05-24 19:46:36.348259',3,'2020-05-24 19:46:36.353356',NULL,'+',3,NULL),
	(1,'Koningsaanval','2020-05-23 00:00:00.000000',4,'2020-05-30 10:15:43.621427',NULL,'~',3,NULL),
	(1,'Koningsaanval','2020-05-23 00:00:00.000000',5,'2020-05-30 10:15:46.431105',NULL,'~',3,NULL),
	(13,'TEST training','2020-08-23 12:20:44.482629',24,'2020-08-23 12:20:44.483628',NULL,'+',27,NULL),
	(22,'NIEUWE training','2020-08-29 12:16:44.824684',33,'2020-08-29 12:16:44.825996',NULL,'+',25,NULL),
	(22,'NIEUWE training','2020-08-29 12:16:44.824684',34,'2020-08-29 12:17:15.280074',NULL,'-',1,NULL),
	(23,'NIEUWE training','2020-08-31 18:05:35.482026',35,'2020-08-31 18:05:35.482887',NULL,'+',25,NULL),
	(26,'NIEUWE training','2020-09-03 11:13:16.307628',36,'2020-09-03 11:13:16.309225',NULL,'+',25,25),
	(26,'NIEUWE training','2020-09-03 11:13:16.307628',37,'2020-09-03 11:13:18.828772',NULL,'~',25,25),
	(26,'NIEUWE training (bewerkt)','2020-09-03 11:13:16.307628',38,'2020-09-03 11:13:22.890259',NULL,'~',25,25),
	(26,'NIEUWE training (bewerkt)','2020-09-03 11:13:16.307628',39,'2020-09-03 11:13:25.520722',NULL,'-',25,25),
	(27,'NIEUWE training','2020-09-03 11:39:17.259901',40,'2020-09-03 11:39:17.266264',NULL,'+',27,27),
	(27,'NIEUWE training','2020-09-03 11:39:17.259901',41,'2020-09-03 11:39:19.852847',NULL,'~',27,27),
	(27,'NIEUWE training (bewerkt)','2020-09-03 11:39:17.259901',42,'2020-09-03 11:39:23.942610',NULL,'~',27,27),
	(27,'NIEUWE training (bewerkt)','2020-09-03 11:39:17.259901',43,'2020-09-03 11:39:26.356047',NULL,'-',27,27),
	(28,'NIEUWE training','2020-09-09 06:25:11.785600',44,'2020-09-09 06:25:11.786658',NULL,'+',25,25),
	(28,'NIEUWE training','2020-09-09 06:25:11.785600',45,'2020-09-09 06:25:14.412603',NULL,'~',25,25),
	(28,'NIEUWE training (bewerkt)','2020-09-09 06:25:11.785600',46,'2020-09-09 06:25:18.346655',NULL,'~',25,25),
	(28,'NIEUWE training (bewerkt)','2020-09-09 06:25:11.785600',47,'2020-09-09 06:25:20.969389',NULL,'-',25,25),
	(29,'NIEUWE training','2020-09-09 07:31:59.042485',48,'2020-09-09 07:31:59.043710',NULL,'+',27,27),
	(29,'NIEUWE training','2020-09-09 07:31:59.042485',49,'2020-09-09 07:32:05.021145',NULL,'~',27,27),
	(29,'NIEUWE training (bewerkt)','2020-09-09 07:31:59.042485',50,'2020-09-09 07:32:20.039626',NULL,'~',27,27),
	(30,'NIEUWE training','2020-09-09 07:38:20.547582',51,'2020-09-09 07:38:20.548678',NULL,'+',27,27),
	(30,'NIEUWE training','2020-09-09 07:38:20.547582',52,'2020-09-09 07:38:23.287441',NULL,'~',27,27),
	(30,'NIEUWE training (bewerkt)','2020-09-09 07:38:20.547582',53,'2020-09-09 07:38:28.763384',NULL,'~',27,27),
	(29,'NIEUWE training (bewerkt)','2020-09-09 07:31:59.042485',54,'2020-09-09 07:38:32.059029',NULL,'-',27,27);

/*!40000 ALTER TABLE `magnus_training_historicaltraining` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_training_training
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_training_training`;

CREATE TABLE `magnus_training_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magnus_training_trai_creator_id_c28603cc_fk_magnus_us` (`creator_id`),
  CONSTRAINT `magnus_training_trai_creator_id_c28603cc_fk_magnus_us` FOREIGN KEY (`creator_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_training_training` WRITE;
/*!40000 ALTER TABLE `magnus_training_training` DISABLE KEYS */;

INSERT INTO `magnus_training_training` (`id`, `name`, `createdDate`, `creator_id`)
VALUES
	(1,'Koningsaanval','2020-05-23 00:00:00.000000',1),
	(2,'De eerste training','2020-05-24 00:00:00.000000',1),
	(3,'Nieuwe training','2020-05-24 00:00:00.000000',1),
	(13,'TEST training','2020-08-23 12:20:44.482629',1),
	(23,'NIEUWE training','2020-08-31 18:05:35.482026',1),
	(30,'NIEUWE training (bewerkt)','2020-09-09 07:38:20.547582',27);

/*!40000 ALTER TABLE `magnus_training_training` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_users_appuser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_users_appuser`;

CREATE TABLE `magnus_users_appuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `accept_privacy` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_users_appuser` WRITE;
/*!40000 ALTER TABLE `magnus_users_appuser` DISABLE KEYS */;

INSERT INTO `magnus_users_appuser` (`id`, `password`, `last_login`, `is_superuser`, `email`, `is_staff`, `is_active`, `first_name`, `last_name`, `accept_privacy`)
VALUES
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-08-31 18:12:18.195258',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1),
	(2,'pbkdf2_sha256$180000$Wi8cAIcw4slY$UZAjsSmWtXKW+ihwt7g64FXE8UocZ3HGRzGpxAFrxuk=','2020-06-30 13:59:53.099137',1,'besselb@yahoo.com',1,1,'BLW','Bakker',1),
	(3,'pbkdf2_sha256$180000$XORVUX9rkZh8$yk14jrP4BkfvxEUBj+PClSXhkZIt7duOAS2GLH7Z2Bo=','2020-06-28 11:24:43.288471',0,'hakraai@gmail.com',1,1,'Dirk','Kraaijpoel',1),
	(4,'pbkdf2_sha256$180000$yCHLrwOKQTIh$UyTPqpyXaPdF2JpL12qXu4oA08mdSjsmZ3V3QIyt80s=','2020-01-11 15:09:20.000000',0,'jochem.aubel@gmail.com',1,1,'Jochem','Aubel',1),
	(22,'pbkdf2_sha256$180000$nTtNuwhTfAkB$aCcsdwMzmbkCUtdkjlO2pBjBYhPcMMe0W/NVkklOkDc=',NULL,0,'koenaubel@gmail.com',0,1,'Koen','Aubel',1),
	(23,'pbkdf2_sha256$180000$bOksCaO7qcIm$MvScgwqyoDHM7mnLeSIu2OqN93AZW9s6OGVDm8/WQWg=',NULL,0,'daanaubel@gmail.com',0,1,'Daan','Aubel',1),
	(25,'pbkdf2_sha256$180000$74y4CmWJsQBN$SFhqkR9uEmNydsNsisMB8L0y8+Ems5NtAAbtmFEb2Cc=',NULL,0,'staff@schaakclub.nl',1,1,'Sandra','(Staff)',1),
	(27,'pbkdf2_sha256$180000$AZfbZ34xXDr5$Nqqs2Fknvu3XF6dDsnPi3S8af5IBsfwa0YYHPI0xeVo=',NULL,0,'trainer@schaakclub.nl',0,1,'Tinus','(Trainer)',1),
	(28,'pbkdf2_sha256$180000$MPw7DLEL2kva$VhkHXhrKZIL9AwyQ9eXBLaDbFs8Oapmzoz6WiC+QSe8=',NULL,0,'hulptrainer@schaakclub.nl',0,1,'Huub','(Hulptrainer)',1),
	(29,'pbkdf2_sha256$180000$GbZA9Noea2M1$XagQCLDaz3Wck1sD9MWPAYu78hWt7++B5gH0ygiObnA=',NULL,0,'aanmeldtafel@schaakclub.nl',0,1,'Aad','(Aanmeldtafel)',1),
	(30,'pbkdf2_sha256$180000$sZJWTqWre7bG$8GdlCSoolzQGerzmf4IYj045fppT9XSuK+MS4ybHU3o=',NULL,0,'competitieleider@schaakclub.nl',0,1,'Cor','(Competitieleider)',1),
	(31,'pbkdf2_sha256$180000$QulD734NHW9r$8mDv4E7xzsNQO+JSZSxzkV/7i9Ok/UweIdmsD+86RyQ=',NULL,0,'teamleider@schaakclub.nl',0,1,'Tanja','(Teamleider)',1),
	(32,'pbkdf2_sha256$180000$w52baJqEDfwv$8eeP7tzkt/rZRy0QOPPSbbLoX+pX8sPri+7jADEHuG4=',NULL,0,'ouder@schaakclub.nl',0,1,'Odette','(Ouder)',1),
	(33,'pbkdf2_sha256$180000$6He60obxPtAL$ZoEI/NFxGDzesUWpV+CdqoI7FIgKBnDoDHBRNcY7a4M=',NULL,0,'lid@schaakclub.nl',0,1,'Leo','(Lid)',1),
	(34,'pbkdf2_sha256$180000$rrTexSsw1nJp$9OiTm2bKG+kRay9dSl7xMuGWRCwHKAVmFutP75RxVok=',NULL,0,'externe@schaakclub.nl',0,1,'Eduard','(Externe competitieleider)',1);

/*!40000 ALTER TABLE `magnus_users_appuser` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_users_appuser_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_users_appuser_groups`;

CREATE TABLE `magnus_users_appuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_users_appuser_groups_appuser_id_group_id_84ab84b6_uniq` (`appuser_id`,`group_id`),
  KEY `magnus_users_appuser_groups_group_id_60265971_fk_auth_group_id` (`group_id`),
  CONSTRAINT `magnus_users_appuser_appuser_id_a600dbf5_fk_magnus_us` FOREIGN KEY (`appuser_id`) REFERENCES `magnus_users_appuser` (`id`),
  CONSTRAINT `magnus_users_appuser_groups_group_id_60265971_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table magnus_users_appuser_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_users_appuser_user_permissions`;

CREATE TABLE `magnus_users_appuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magnus_users_appuser_use_appuser_id_permission_id_022aed62_uniq` (`appuser_id`,`permission_id`),
  KEY `magnus_users_appuser_permission_id_e297b20b_fk_auth_perm` (`permission_id`),
  CONSTRAINT `magnus_users_appuser_appuser_id_c8ba05e5_fk_magnus_us` FOREIGN KEY (`appuser_id`) REFERENCES `magnus_users_appuser` (`id`),
  CONSTRAINT `magnus_users_appuser_permission_id_e297b20b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_users_appuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `magnus_users_appuser_user_permissions` DISABLE KEYS */;

INSERT INTO `magnus_users_appuser_user_permissions` (`id`, `appuser_id`, `permission_id`)
VALUES
	(1,1,53),
	(2,3,67);

/*!40000 ALTER TABLE `magnus_users_appuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magnus_users_historicalappuser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magnus_users_historicalappuser`;

CREATE TABLE `magnus_users_historicalappuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `accept_privacy` tinyint(1) NOT NULL,
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `history_date` datetime(6) NOT NULL,
  `history_change_reason` varchar(100) DEFAULT NULL,
  `history_type` varchar(1) NOT NULL,
  `history_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `magnus_users_histori_history_user_id_5ecfa6a6_fk_magnus_us` (`history_user_id`),
  KEY `magnus_users_historicalappuser_id_94c2a70c` (`id`),
  KEY `magnus_users_historicalappuser_email_a1e912d4` (`email`),
  CONSTRAINT `magnus_users_histori_history_user_id_5ecfa6a6_fk_magnus_us` FOREIGN KEY (`history_user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `magnus_users_historicalappuser` WRITE;
/*!40000 ALTER TABLE `magnus_users_historicalappuser` DISABLE KEYS */;

INSERT INTO `magnus_users_historicalappuser` (`id`, `password`, `last_login`, `is_superuser`, `email`, `is_staff`, `is_active`, `first_name`, `last_name`, `accept_privacy`, `history_id`, `history_date`, `history_change_reason`, `history_type`, `history_user_id`)
VALUES
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-04 18:50:54.013239',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,1,'2020-05-06 10:01:01.825742','','+',NULL),
	(2,'pbkdf2_sha256$180000$Wi8cAIcw4slY$UZAjsSmWtXKW+ihwt7g64FXE8UocZ3HGRzGpxAFrxuk=','2020-05-04 15:22:01.895931',1,'besselb@yahoo.com',1,1,'BLW','Bakker',1,2,'2020-05-06 10:01:01.826015','','+',NULL),
	(3,'pbkdf2_sha256$180000$XORVUX9rkZh8$yk14jrP4BkfvxEUBj+PClSXhkZIt7duOAS2GLH7Z2Bo=',NULL,0,'hakraai@gmail.com',0,1,'Dirk','Kraaijpoel',1,3,'2020-05-06 10:01:01.826109','','+',NULL),
	(4,'pbkdf2_sha256$180000$yCHLrwOKQTIh$UyTPqpyXaPdF2JpL12qXu4oA08mdSjsmZ3V3QIyt80s=','2020-01-11 15:09:20.000000',0,'jochem.aubel@gmail.com',0,1,'Jochem','Aubel',1,4,'2020-05-06 10:01:01.826196','','+',NULL),
	(22,'pbkdf2_sha256$180000$nTtNuwhTfAkB$aCcsdwMzmbkCUtdkjlO2pBjBYhPcMMe0W/NVkklOkDc=',NULL,0,'koenaubel@gmail.com',0,1,'Koen','Aubel',1,5,'2020-05-06 10:01:01.826284','','+',NULL),
	(23,'pbkdf2_sha256$180000$bOksCaO7qcIm$MvScgwqyoDHM7mnLeSIu2OqN93AZW9s6OGVDm8/WQWg=',NULL,0,'daanaubel@gmail.com',0,1,'Daan','Aubel',1,6,'2020-05-06 10:01:01.826371','','+',NULL),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-09 16:23:50.620915',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,7,'2020-05-09 16:23:50.624567',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-10 21:04:10.205069',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,8,'2020-05-10 21:04:10.210164',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-15 18:47:07.736054',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,9,'2020-05-15 18:47:07.755763',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-26 12:20:50.017441',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,10,'2020-05-26 12:20:50.022032',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-26 18:31:29.045882',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,11,'2020-05-26 18:31:29.048337',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-28 11:14:17.343975',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,12,'2020-05-28 11:14:17.347028',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-05-31 08:33:54.967957',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,13,'2020-05-31 08:33:54.969926',NULL,'~',1),
	(2,'pbkdf2_sha256$180000$Wi8cAIcw4slY$UZAjsSmWtXKW+ihwt7g64FXE8UocZ3HGRzGpxAFrxuk=','2020-06-10 21:48:15.524240',1,'besselb@yahoo.com',1,1,'BLW','Bakker',1,14,'2020-06-10 21:48:15.527242',NULL,'~',2),
	(4,'pbkdf2_sha256$180000$yCHLrwOKQTIh$UyTPqpyXaPdF2JpL12qXu4oA08mdSjsmZ3V3QIyt80s=','2020-01-11 15:09:20.000000',0,'jochem.aubel@gmail.com',1,1,'Jochem','Aubel',1,15,'2020-06-10 21:49:16.905166',NULL,'~',2),
	(3,'pbkdf2_sha256$180000$XORVUX9rkZh8$yk14jrP4BkfvxEUBj+PClSXhkZIt7duOAS2GLH7Z2Bo=',NULL,0,'hakraai@gmail.com',1,1,'Dirk','Kraaijpoel',1,16,'2020-06-10 21:49:29.809741',NULL,'~',2),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-06-11 19:07:15.530488',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,17,'2020-06-11 19:07:15.532838',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-06-11 19:16:09.590530',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,18,'2020-06-11 19:16:09.592202',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-06-21 15:52:08.711193',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,19,'2020-06-21 15:52:08.716458',NULL,'~',1),
	(3,'pbkdf2_sha256$180000$XORVUX9rkZh8$yk14jrP4BkfvxEUBj+PClSXhkZIt7duOAS2GLH7Z2Bo=','2020-06-28 11:24:43.288471',0,'hakraai@gmail.com',1,1,'Dirk','Kraaijpoel',1,20,'2020-06-28 11:24:43.290766',NULL,'~',3),
	(2,'pbkdf2_sha256$180000$Wi8cAIcw4slY$UZAjsSmWtXKW+ihwt7g64FXE8UocZ3HGRzGpxAFrxuk=','2020-06-30 13:59:53.099137',1,'besselb@yahoo.com',1,1,'BLW','Bakker',1,21,'2020-06-30 13:59:53.102315',NULL,'~',2),
	(25,'pbkdf2_sha256$180000$kVqdAGwJIg2v$93P02hSdZe8Lh2kU25R8k1cUyjtex3zY3u0hzWAZVjw=',NULL,0,'staff@schaakclub.nl',0,1,'Sandra','(Staff)',1,23,'2020-08-12 08:29:37.374685',NULL,'+',NULL),
	(25,'magnusapp',NULL,0,'staff@schaakclub.nl',1,1,'Sandra','(Staff)',1,24,'2020-08-12 08:31:24.960685',NULL,'~',1),
	(27,'pbkdf2_sha256$180000$AZfbZ34xXDr5$Nqqs2Fknvu3XF6dDsnPi3S8af5IBsfwa0YYHPI0xeVo=',NULL,0,'trainer@schaakclub.nl',0,1,'Tinus','(Trainer)',1,26,'2020-08-12 08:50:17.203072',NULL,'+',NULL),
	(28,'pbkdf2_sha256$180000$MPw7DLEL2kva$VhkHXhrKZIL9AwyQ9eXBLaDbFs8Oapmzoz6WiC+QSe8=',NULL,0,'hulptrainer@schaakclub.nl',0,1,'Huub','(Hulptrainer)',1,27,'2020-08-12 11:25:26.503271',NULL,'+',NULL),
	(29,'pbkdf2_sha256$180000$GbZA9Noea2M1$XagQCLDaz3Wck1sD9MWPAYu78hWt7++B5gH0ygiObnA=',NULL,0,'aanmeldtafel@schaakclub.nl',0,1,'Aad','(Aanmeldtafel)',1,28,'2020-08-12 11:25:47.937349',NULL,'+',NULL),
	(30,'pbkdf2_sha256$180000$sZJWTqWre7bG$8GdlCSoolzQGerzmf4IYj045fppT9XSuK+MS4ybHU3o=',NULL,0,'competitieleider@schaakclub.nl',0,1,'Cor','(Competitieleider)',1,29,'2020-08-12 11:26:36.085475',NULL,'+',NULL),
	(31,'pbkdf2_sha256$180000$QulD734NHW9r$8mDv4E7xzsNQO+JSZSxzkV/7i9Ok/UweIdmsD+86RyQ=',NULL,0,'teamleider@schaakclub.nl',0,1,'Tanja','(Teamleider)',1,30,'2020-08-12 11:26:58.160747',NULL,'+',NULL),
	(32,'pbkdf2_sha256$180000$w52baJqEDfwv$8eeP7tzkt/rZRy0QOPPSbbLoX+pX8sPri+7jADEHuG4=',NULL,0,'ouder@schaakclub.nl',0,1,'Odette','(Ouder)',1,31,'2020-08-12 11:27:24.490427',NULL,'+',NULL),
	(33,'pbkdf2_sha256$180000$6He60obxPtAL$ZoEI/NFxGDzesUWpV+CdqoI7FIgKBnDoDHBRNcY7a4M=',NULL,0,'lid@schaakclub.nl',0,1,'Leo','(Lid)',1,32,'2020-08-12 11:27:42.638474',NULL,'+',NULL),
	(34,'pbkdf2_sha256$180000$rrTexSsw1nJp$9OiTm2bKG+kRay9dSl7xMuGWRCwHKAVmFutP75RxVok=',NULL,0,'externe@schaakclub.nl',0,1,'Eduard','(Externe competitieleider)',1,33,'2020-08-12 11:42:07.250754',NULL,'+',NULL),
	(25,'magnusapp',NULL,0,'staff@schaakclub.nl',1,1,'Sandra','(Staff)',1,34,'2020-08-15 07:15:14.727757',NULL,'~',1),
	(25,'magnusapp',NULL,0,'jochem.aubel@tele2.nl',1,1,'Sandra','(Staff)',1,35,'2020-08-15 07:37:13.234873',NULL,'~',1),
	(25,'pbkdf2_sha256$180000$ybNpLXzLmLjq$Qw1IgQkhmT18U6O4M3p/QOq8cyfIVyII+hu3sHaWuQ4=',NULL,0,'jochem.aubel@tele2.nl',1,1,'Sandra','(Staff)',1,36,'2020-08-15 07:38:29.372430',NULL,'~',NULL),
	(25,'magnusapp',NULL,0,'staff@schaakclub.nl',1,1,'Sandra','(Staff)',1,37,'2020-08-15 07:42:07.901670',NULL,'~',1),
	(25,'magnusapp',NULL,0,'jochem.aubel@tele2.nl',1,1,'Sandra','(Staff)',1,38,'2020-08-15 07:54:16.999810',NULL,'~',1),
	(25,'pbkdf2_sha256$180000$q4wJHSOZvRJf$BQaTW3dMhWHDZTFb9JcWwvd+fQELBhrR+M9vHmwVs9w=',NULL,0,'jochem.aubel@tele2.nl',1,1,'Sandra','(Staff)',1,39,'2020-08-15 07:58:14.758981',NULL,'~',NULL),
	(25,'magnusapp',NULL,0,'staff@schaakclub.nl',1,1,'Sandra','(Staff)',1,40,'2020-08-15 08:55:00.790033',NULL,'~',1),
	(25,'pbkdf2_sha256$180000$74y4CmWJsQBN$SFhqkR9uEmNydsNsisMB8L0y8+Ems5NtAAbtmFEb2Cc=',NULL,0,'staff@schaakclub.nl',1,1,'Sandra','(Staff)',1,41,'2020-08-15 08:55:41.141256',NULL,'~',NULL),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-08-29 12:17:05.540635',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,42,'2020-08-29 12:17:05.543114',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-08-31 08:27:27.040801',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,43,'2020-08-31 08:27:27.044547',NULL,'~',1),
	(1,'pbkdf2_sha256$180000$5P1nnZsn0cFY$tsu5jU11enmirqNjg264s2mRkk8hnHTRWfXgxtIMX/c=','2020-08-31 18:12:18.195258',1,'magnusapp2019@gmail.com',1,1,'Donald','Duck',1,44,'2020-08-31 18:12:18.197877',NULL,'~',1);

/*!40000 ALTER TABLE `magnus_users_historicalappuser` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table olaimport
# ------------------------------------------------------------

DROP TABLE IF EXISTS `olaimport`;

CREATE TABLE `olaimport` (
  `Relatienummer` int(7) DEFAULT NULL,
  `Volledigenaam` varchar(36) DEFAULT NULL,
  `Geslacht` varchar(4) DEFAULT NULL,
  `Geboortejaar` varchar(4) DEFAULT NULL,
  `Categorie` varchar(20) DEFAULT NULL,
  `Email` varchar(31) DEFAULT NULL,
  `Telefoonnummer1` varchar(13) DEFAULT NULL,
  `Telefoonnummer2` varchar(17) DEFAULT NULL,
  `Adres` varchar(26) DEFAULT NULL,
  `Postcode` varchar(7) DEFAULT NULL,
  `Plaatsnaam` varchar(11) DEFAULT NULL,
  `Landnaam` varchar(9) DEFAULT NULL,
  `Lidmaatschap` varchar(10) DEFAULT NULL,
  `Lid sinds` varchar(10) DEFAULT NULL,
  `Afgemeld per` varchar(10) DEFAULT NULL,
  `KNSB-rating` varchar(4) DEFAULT NULL,
  `FIDE-rating` varchar(4) DEFAULT NULL,
  `Jeugdrating` varchar(4) DEFAULT NULL,
  `Stappenniveau` varchar(6) DEFAULT NULL,
  `Verlengingsdatum` varchar(10) DEFAULT NULL,
  `Gebruik NAW` varchar(10) DEFAULT NULL,
  `Beeldmateriaal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `olaimport` WRITE;
/*!40000 ALTER TABLE `olaimport` DISABLE KEYS */;

INSERT INTO `olaimport` (`Relatienummer`, `Volledigenaam`, `Geslacht`, `Geboortejaar`, `Categorie`, `Email`, `Telefoonnummer1`, `Telefoonnummer2`, `Adres`, `Postcode`, `Plaatsnaam`, `Landnaam`, `Lidmaatschap`, `Lid sinds`, `Afgemeld per`, `KNSB-rating`, `FIDE-rating`, `Jeugdrating`, `Stappenniveau`, `Verlengingsdatum`, `Gebruik NAW`, `Beeldmateriaal`)
VALUES
	(8672235,'Achterberg, J.K. (Jonas)','M','2003','J','achterberg@gmx.net','06-29578795','06-43208848','Dantelaan 73','3533 VB','Utrecht','Nederland','Hoofdlid','22-11-2015','','','','1037','','','Toegestaan',''),
	(8807381,'Agoramoorthy, M. (Mukilan)','M','2011','J','agor02@gmail.com','06-84755354','','Bernadottelaan 116','3527 GB','Utrecht','Nederland','Hoofdlid','06-12-2018','','','','381','','','Toegestaan','Toegestaan'),
	(8599646,'Aken, J.W.J. van (Jelmer)','M','2002','J','famvanaken@icloud.com','030-6664031','06-36553766','Zandweg 173','3454 HC','De Meern','Nederland','Hoofdlid','17-06-2014','','1786','1790','','','','Toegestaan','Toegestaan'),
	(8892917,'Al Michael, L. (Laurens)','M','2013','J','greetjeurban@yahoo.com','06-38465529','06-43124372','Kortland 12','3451 VD','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8892785,'Al Michael, R. (Rein)','M','2013','J','greetjeurban@yahoo.com','06-38465529','','Kortland 12','3451 VD','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8640082,'Anhaus, J.L.H. (Jonas)','M','2007','J','fam.anhaus@gmail.com','030-6384517','','Valeriaanweg 27','3541 TN','Utrecht','Nederland','Hoofdlid','30-01-2016','','','','656','','','Toegestaan','Toegestaan'),
	(8640720,'Arendonk, P. van (Polle)','M','2008','J','basvana@online.nl','030-2546872','06-57549903','Ten Veldestraat 24','3454 EL','De Meern','Nederland','Hoofdlid','26-09-2015','','1757','1655','1768','','','Toegestaan','Toegestaan'),
	(8521150,'Arendse, B. (Bram)','M','2006','J','maurice.arendse@gmail.com','06-22570563','','Tjeerdsraklaan 4','3544 PC','Utrecht','Nederland','Hoofdlid','30-09-2012','','','','310','','','Toegestaan','Toegestaan'),
	(8806600,'Argoubi, A. (Amir)','M','2007','J','semra_eu@hotmail.com','06-48277140','06-57342541','Jan Greshofflaan 24','3454 VW','De Meern','Nederland','Hoofdlid','13-03-2018','','','','','','','Toegestaan','Toegestaan'),
	(8642469,'Aubel, D.H.J. (Daan)','M','2010','J','Jochem.Aubel@gmail.com','030-7551469','','Groenedijk 24','3544 AB','Utrecht','Nederland','Hoofdlid','29-05-2015','','1195','','954','','','Toegestaan','Toegestaan'),
	(7117924,'Aubel, J. (Jochem)','M','1976','S','jochem.aubel@gmail.com','06-10425990','','Groenedijk 24','3544 AB','Utrecht','Nederland','Hoofdlid','26-09-2015','','2205','2251','','','','Toegestaan','Toegestaan'),
	(8544778,'Aubel, K.C.S. (Koen)','M','2008','J','jochem.aubel@gmail.com','030-7551469','06-10425990','Groenedijk 24','3544 AB','Utrecht','Nederland','Hoofdlid','31-03-2013','','1533','','1206','','','Toegestaan','Toegestaan'),
	(8859400,'Baboeram Panday, R. (Rishaan)','M','2010','J','sbpksk@gmail.com','06-52334963','','Emmikkerboslaan 9','3454 NV','De Meern','Nederland','Hoofdlid','27-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8861380,'Baboeram Panday, S. (Shariesh)','M','2012','J','sbpksk@gmail.com','06-52334963','','Emmikkerboslaan 9','3454 NV','De Meern','Nederland','Hoofdlid','27-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8741832,'Bagita, A. (Andras)','M','2005','J','jbagita@cdpro.sk','06-38146623','06-10488670','Komijnweg 25','3541 RK','Utrecht','Nederland','Hoofdlid','19-12-2016','','','','547','','','Toegestaan',''),
	(8860489,'Bahroos, D. (Dakshh)','M','2011','J','bahroos@yahoo.com','06-12039865','','Wenenpromenade 14','3541 DG','Utrecht','Nederland','Hoofdlid','09-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8767297,'Bakouri, S. (Saladin)','M','2010','J','bakouri@soverin.net','06-30167928','','Komijnweg 19','3541 RK','Utrecht','Nederland','Hoofdlid','03-12-2018','','','','','','','Toegestaan','Toegestaan'),
	(8836157,'Bakouri, S. (Salman)','M','2012','J','bakouri@soverin.net','06-30167928','','Komijnweg 19','3541 RK','Utrecht','Nederland','Hoofdlid','03-12-2018','','','','','','','Toegestaan','Toegestaan'),
	(8863426,'Boels, P.F.T. (Philippe)','M','2009','J','sandraoudejans@hotmail.com','06-50053345','06-31963929','Madameperenlaan 45','3452 ER','Vleuten','Nederland','Hoofdlid','03-09-2019','','','','','','','Toegestaan','Toegestaan'),
	(8807216,'Bolks, S.A. (Sean)','M','2010','J','juke_nina@hotmail.com','06-21214865','','Avondrood 13','3454 SE','De Meern','Nederland','Hoofdlid','05-10-2018','','','','616','','','Toegestaan','Toegestaan'),
	(8892928,'Bollaart, O.A. (Olivier)','M','2011','J','o.a.bollaart@gmail.com','06-52622441','','Kerckeboslaan 5','3454 NR','De Meern','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Geweigerd'),
	(8538662,'Bonenkamp, J.D. (Jasper)','M','2002','J','vivianne@bonenkamp.nl','06-52556987','06-18810800','Jacques Offenbachplnts 12','3543 HK','Utrecht','Nederland','Hoofdlid','30-01-2013','','1602','1590','','','','Toegestaan',''),
	(8699416,'Boschker, D.T.J.G. (Danilyo)','M','2007','J','lasina8@hotmail.com','030-8900178','','Adikade 34','3531 WS','Utrecht','Nederland','Hoofdlid','28-03-2016','','','','720','','','Toegestaan','Toegestaan'),
	(8513472,'Bosman, S. (Sietse)','M','2005','J','sietsebosman1@gmail.com','06-24770703','06-43228568','Tweede Oosterparklaan 151','3544 AP','Utrecht','Nederland','Hoofdlid','06-06-2012','','','','844','','','Toegestaan','Toegestaan'),
	(8709217,'Boxtel, T.H.N. van (Tim)','M','2010','J','ljvanboxtel@googlemail.com','06-30879057','','Kolland 24','3452 NM','Vleuten','Nederland','Hoofdlid','27-09-2016','','','','387','','','Toegestaan',''),
	(8547220,'Brabers, M.J. (Thijs)','M','2005','J','moniqueluyendijk@kpnmail.nl','030-2342824','06-41932239','Zeilmakerslaan 48','3454 DN','De Meern','Nederland','Hoofdlid','30-04-2013','','','','476','','','Toegestaan','Geweigerd'),
	(8526771,'Brinkman, L.C.P.D. (David)','M','2005','J','eduard.brinkman@ziggo.nl','030-8797907','06-10054575','Satijnvlinder 62','3544 VX','Utrecht','Nederland','Hoofdlid','28-10-2012','','','','','','','Toegestaan',''),
	(8605014,'Brinkman, T.J.G. (Thomas)','M','2007','J','eduard.brinkman@ziggo.nl','030-8797907','06-53505697','Satijnvlinder 62','3544 VX','Utrecht','Nederland','Hoofdlid','10-09-2014','','','','','','','Toegestaan',''),
	(8848169,'Burne, J. (Jayden)','M','2009','J','burne@hotmail.com','06-45114117','','Felix Timmermanshove 23','3437 BS','Nieuwegein','Nederland','Hoofdlid','15-11-2019','','','','341','','','Toegestaan','Geweigerd'),
	(8786822,'Changur, M. (Maruti)','M','2009','J','','06-41465643','','Tweede Westerparklaan 107','3544 VP','Utrecht','Nederland','Hoofdlid','30-10-2017','','','','','','','Toegestaan','Toegestaan'),
	(8892796,'Chen, E. (Emmie)','V','2013','J','fayzf@hotmail.com','06-46091774','','Carel Willinkstraat 17','3544 MA','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Geweigerd'),
	(8772511,'Chu, C. (Chlo?)\";V','2009','J','crystaljzh@gmail.com','06-39890058','','Ivoorzwamsingel 7','3451 PS','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','248','','','Toegestaan','Toegestaan',NULL),
	(8772522,'Chu, J. (Justin)','M','2011','J','crystaljzh@gmail.com','06-39890059','','Ivoorzwamsingel 7','3451 PS','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','155','','','Toegestaan','Toegestaan'),
	(8834848,'Crince, K. (Kai)','M','2008','J','kai@taktc.nl','06-40211785','','Akkrumerraklaan 170','3544 TV','Utrecht','Nederland','Hoofdlid','17-11-2019','','','','383','','','Toegestaan','Toegestaan'),
	(8812914,'Crince, T. (Tygo)','M','2009','J','tygo@taktc.nl','06-40211785','','Akkrumerraklaan 170','3544 TV','Utrecht','Nederland','Hoofdlid','17-11-2019','','','','410','','','Toegestaan','Toegestaan'),
	(8708821,'Darmian, A. (Artur)','M','2007','J','annadar@hotmail.nl','06-23101700','','Kanaalstraat 241 bis','3531 CJ','Utrecht','Nederland','Hoofdlid','07-03-2018','','','','524','','','Toegestaan','Toegestaan'),
	(8825135,'Dijkman, S.E.H. (Sietse)','M','2009','J','pedijkman@gmail.com','030-2937242','','Burg Van der Heidelaan 40','3451 ZV','Vleuten','Nederland','Hoofdlid','05-10-2018','','','','478','','','Toegestaan','Toegestaan'),
	(8796172,'Dogan, V. (Vefa)','M','2011','J','betultaskin_gina@hotmail.com','06-34192999','06-39371453','Heivlinder 15','3544 DM','Utrecht','Nederland','Hoofdlid','08-11-2019','','','','100','','','Toegestaan','Geweigerd'),
	(8774282,'Doyle, F.F. (Finn)','M','2006','J','jeremy.doyle@ymail.com','06-58832913','+447769654533','Racinelaan 14','3533 VM','Utrecht','Nederland','Hoofdlid','18-09-2017','','','','649','','','Toegestaan',''),
	(8578548,'Duursma, W.T. (Wietse)','M','2006','J','ouders@wayam.nl','06-40046642','','Komijnweg 26','3541 RK','Utrecht','Nederland','Hoofdlid','26-01-2014','','','','481','','','Toegestaan','Toegestaan'),
	(8578229,'Duursma, Y.T. (Yorick)','M','2006','J','ouders@wayam.nl','06-40046642','','Komijnweg 26','3541 RK','Utrecht','Nederland','Hoofdlid','26-01-2014','','','','870','','','Toegestaan','Toegestaan'),
	(8658001,'Egmond, S. van (Sander)','M','1973','S','s.vanegmond@infinitodesign.nl','06-38400656','','Sierduif 49','3435 BJ','Nieuwegein','Nederland','Hoofdlid','29-09-2015','','1391','','','','','Toegestaan',''),
	(8558154,'Egmond, T.S. van (Tom)','M','2007','J','info@infinitodesign.nl','030-2888559','06-38400656','Sierduif 49','3435 BJ','Nieuwegein','Nederland','Hoofdlid','29-09-2013','','1579','1523','1379','','','Toegestaan','Geweigerd'),
	(8687327,'Eikelenboom, J. (Jeanette)','V','2009','J','claire@timetoknow.nl','030-2899738','','Scheurraklaan 6','3544 PA','Utrecht','Nederland','Hoofdlid','23-01-2016','','','','547','','','Toegestaan','Toegestaan'),
	(8687338,'Eikelenboom, S. (Salome)','V','2006','J','claire@timetoknow.nl','030-2899738','','Scheurraklaan 6','3544 PA','Utrecht','Nederland','Hoofdlid','23-01-2016','','','','460','','','Toegestaan','Toegestaan'),
	(8671366,'Eikelenboom, S.M. (Samuel)','M','2004','J','albert@jezus-komt-terug.nl','030-1899738','','Scheurraklaan 6','3544 PA','Utrecht','Nederland','Hoofdlid','15-05-2016','','','','816','','','Toegestaan',''),
	(8687294,'Eker, Q.T.A. (Quentin)','M','2008','J','quentin@eker.nl','030-2991441','06-28997330','Catharinaplaatjes 72','3453 SN','De Meern','Nederland','Hoofdlid','02-09-2017','','','','633','','','Toegestaan',''),
	(8873359,'Erbakirci, M. (Meryem)','V','2011','J','antisceptic@zoho.com','06-45719369','','Monarchvlinderlaan 152','3544 DC','Utrecht','Nederland','Hoofdlid','17-10-2019','','','','100','','','Toegestaan','Geweigerd'),
	(6971481,'Esch, S.A. van (Bas)','M','1965','S','bas_van_esch@hotmail.com','06-11723303','030-2716907','Zandweg 54 A','3454 JV','De Meern','Nederland','Hoofdlid','01-08-2015','','2178','2191','','','','Toegestaan','Toegestaan'),
	(8879409,'Flamink, E. (Eric)','M','2010','J','saskia@koroc.nl','06-11445272','06-19447310','Ivor Novellostraat 6','3543 EE','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Geweigerd'),
	(8810758,'Geer, T.J. van de (Tijn)','M','2008','J','','06-51703554','06-51507127','Ten Veldestraat 86','3454 EN','De Meern','Nederland','Hoofdlid','14-04-2018','','','','','','','Toegestaan','Geweigerd'),
	(8892884,'Georgakis, G. (Georgios)','M','2011','J','K_g_georgakis@yahoo.gr','030-8881691','','Beeldentuinlaan 61','3452 SJ','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8807183,'Georgopoulos-Karbouniaris, M. (Mylo)','M','2011','J','simalay21@yahoo.com','06-19687828','06-15003267','Sidney Joneshof 15','3543 HM','Utrecht','Nederland','Hoofdlid','12-05-2019','','','','467','','','Toegestaan','Toegestaan'),
	(8621591,'Gergin, I. (Isafara)','V','2008','J','astridanandita@gmail.com','06-13979900','','Jule Stynestraat 18','3543 DR','Utrecht','Nederland','Hoofdlid','12-12-2014','','1501','','1293','','','Toegestaan','Toegestaan'),
	(8892906,'Gerrits, C.S. (Casper)','M','2013','J','mail@roelgerrits.net','06-19006375','06-44672869','Doyenneperenlaan 84','3452 EG','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8687283,'Haaften, J. van (Jelle)','M','2010','J','hyke_bandsma@hotmail.com','06-12909978','','Gouden Koetslaan 47','3451 WD','Vleuten','Nederland','Hoofdlid','23-01-2016','','','','519','','','Toegestaan','Toegestaan'),
	(8772104,'Habernickel, B. (Bas)','M','2008','J','jim@habernickel.nl','06-10089019','06-51947087','Koldijksterraklaan 220','3544 PP','Utrecht','Nederland','Hoofdlid','01-09-2017','','','','374','','','Toegestaan','Toegestaan'),
	(8597039,'Hamoen, F.G. (Felix)','M','2006','J','m-f.hamoen@outlook.com','030-2333608','06-41058150','Verlengde Utrechtseweg 107','3544 HH','Utrecht','Nederland','Hoofdlid','10-09-2014','','','','1021','','','Toegestaan','Toegestaan'),
	(8831878,'Haneveer, M.J.W. (Max)','M','2007','J','desmond@ziggo.nl','06-42756233','030-2667846','Genialisweg 17','3453 HJ','De Meern','Nederland','Hoofdlid','07-11-2018','','','','','','','Toegestaan','Toegestaan'),
	(8596918,'Heij, M.T. de (Mees)','M','2008','J','ardeheij@hotmail.com','030-2519710','06-54661599','Operettelaan 379','3543 BR','Utrecht','Nederland','Hoofdlid','27-09-2014','','1600','1650','1450','','','Toegestaan','Toegestaan'),
	(8597677,'Helvert, J.T.E. van (Jaap)','M','2009','J','inge_coolen@hotmail.com','06-47115252','06-11336161','St.-Pietersberg 44','3453 PK','De Meern','Nederland','Hoofdlid','28-05-2014','','','','636','','','Toegestaan','Toegestaan'),
	(8672246,'Helvert, S.J.B.P. van (Stijn)','M','2010','J','inge_coolen@hotmail.com','06-47115252','','St.-Pietersberg 44','3453 PK','De Meern','Nederland','Hoofdlid','22-11-2015','','','','373','','','Toegestaan','Toegestaan'),
	(8588855,'Herngreen, W.T. (Timo)','M','2004','J','bert_herngreen@yahoo.com','030-6883384','06-40483085','Wolweverslaan 18','3454 GL','De Meern','Nederland','Hoofdlid','30-03-2014','','','','','','','Toegestaan',''),
	(8838005,'Hoogstraten, L. van (Timon)','M','2012','J','lanzhang2003@gmail.com','06-41040358','','Wolkendek 66','3454 TJ','De Meern','Nederland','Hoofdlid','17-12-2018','','','','','','','Geweigerd','Geweigerd'),
	(8740886,'Hsia, S.Y. (Sui Ying)','V','2010','J','fam.hsia@gmail.com','06-24782091','','Eerste Oosterparklaan 120','3544 AN','Utrecht','Nederland','Hoofdlid','07-12-2016','','','','','','','Toegestaan','Toegestaan'),
	(8827016,'Huisman, S. (Simon)','M','2009','J','huisman.erik@gmail.com','06-47438508','06-24417562','Komijnweg 6','3541 RK','Utrecht','Nederland','Hoofdlid','07-10-2018','','','','520','','','Toegestaan','Toegestaan'),
	(6281682,'Hurk, A.A. van den (Arie)','M','1960','S','aavandenhurk@vodafonevast.nl','06-18309413','','Wethouder Schaaplaan 39','3981 GP','Bunnik','Nederland','Hoofdlid','18-09-2017','','1998','1946','','','','Toegestaan','Toegestaan'),
	(8754240,'Huurnink, M. (Maarten)','M','2011','J','irisvangrinsven@gmail.com','06-10551337','06-19636198','Dwergbieslaan 104','3452 AL','Vleuten','Nederland','Hoofdlid','24-04-2017','','','','211','','','Toegestaan','Toegestaan'),
	(8760136,'Huurnink, P. (Pieter)','M','2009','J','hercohuurnink@gmail.com','','','Dwergbieslaan 104','3452 AL','Vleuten','Nederland','Hoofdlid','18-10-2017','','','','369','','','Toegestaan',''),
	(8831845,'Isabella, J.M.O. (Jimmy)','M','2012','J','a_m_montroos@hotmail.com','06-43233349','06-24189066','De Charmantedreef 14','3561 VB','Utrecht','Nederland','Hoofdlid','07-11-2018','','','','100','','','Toegestaan','Toegestaan'),
	(8831834,'Isabella, T.L.R. (Tommy)','M','2010','J','a_m_montroos@hotmail.com','06-24189066','06-43233349','De Charmantedreef 14','3561 VB','Utrecht','Nederland','Hoofdlid','07-11-2018','','','','100','','','Toegestaan','Toegestaan'),
	(8828457,'Jans, V.O. (Viggo)','M','2009','J','walterjans@bboc.nl','06-46056888','06-52664182','Utrechtseweg 46','3544 NA','Utrecht','Nederland','Hoofdlid','14-10-2018','','','','336','','','Toegestaan','Toegestaan'),
	(8892895,'Jansen, D. (Dorian)','M','2013','J','alyannemanon@gmail.com','06-47017445','06-12288721','Sleeswijk 3','3524 KC','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8640060,'Jansen, T.H.J. (Ties)','M','2007','J','cymhelmer@gmail.com','06-17544855','','Molierelaan 19','3533 VG','Utrecht','Nederland','Hoofdlid','14-09-2016','','','','581','','','Toegestaan','Toegestaan'),
	(8820339,'Jeuken, Y. (Yuan)','M','2009','J','frankjeuken@hotmail.com','06-13930471','','St.-Pietersberg 9','3453 PH','De Meern','Nederland','Hoofdlid','30-08-2018','','','','','','','Toegestaan','Toegestaan'),
	(8828413,'Karakaya, M.S. (Sami)','M','2011','J','muserrefcelik@gmail.com','06-23298938','06-58967718','De Milan Viscontilaan 153','3453 SR','De Meern','Nederland','Hoofdlid','14-10-2018','','','','328','','','Toegestaan','Toegestaan'),
	(8860159,'Kholmatov, S. (Shahram)','M','2010','J','shavkatabc@yahoo.com','06-15178257','','Jara Beneshof 9','3543 JR','Utrecht','Nederland','Hoofdlid','06-09-2019','','','','100','','','Toegestaan','Toegestaan'),
	(8836168,'Kisoensingh, S.Y.A. (Shiven)','M','2011','J','navin@navin.nl','06-50697333','','Augustusweg 18','3453 KS','De Meern','Nederland','Hoofdlid','03-12-2018','','','','175','','','Toegestaan','Toegestaan'),
	(8577228,'Kleibeuker, M.D. (Mika)','M','2007','J','hannekebarth@me.com','030-8889799','06-12260505','Alberdingk Thijmstraat 13','3532 VL','Utrecht','Nederland','Hoofdlid','24-01-2014','','','','864','','','Toegestaan',''),
	(8672224,'Klein, L.F.A. (Lucas)','M','2004','J','b.sam@online.nl','030-2515488','06-24233880','H?ndelstraat 86','3533 GM','Utrecht','Nederland','Hoofdlid','22-11-2015','','1634','1513','1621','','','Toegestaan','Toegestaan'),
	(8828446,'Kok, M.R. (Maikel)','M','2007','J','','06-24450095','06-18274741','Dassenburcht 42','3452 MN','Vleuten','Nederland','Hoofdlid','14-10-2018','','','','','','','Toegestaan','Toegestaan'),
	(8682487,'Kok, M.S. (Mads)','M','2007','J','irmpy1@gmail.com','030-6666663','06-27355090','Deeneplaat 5','3453 SB','De Meern','Nederland','Hoofdlid','04-01-2016','','','','578','','','Toegestaan',''),
	(8527937,'Kraaijpoel, D.A. (Dirk)','M','1974','S','hakraai@gmail.com','06-49642222','','Grietmansraklaan 15','3544 TK','Utrecht','Nederland','Hoofdlid','26-09-2015','','1795','','','','','Toegestaan','Toegestaan'),
	(8559111,'Kraaijpoel, H.D. (Hidde)','M','2007','J','hakraai@gmail.com','030-2368855','06-49642222','Grietmansraklaan 15','3544 TK','Utrecht','Nederland','Hoofdlid','29-09-2013','','','','689','','','Toegestaan','Toegestaan'),
	(8597050,'Kruize, B.S.M. (Bouwe)','M','2006','J','laurien.kruize@planet.nl','030-6770963','06-27650874','Groenedijk 41','3544 AB','Utrecht','Nederland','Hoofdlid','18-05-2017','','','','','','','Toegestaan','Toegestaan'),
	(8812254,'Kuiper, R. (Rens)','M','2008','J','janniezondervan@hotmail.com','06-47956670','06-52790369','Sapoerahof 8','3531 WJ','Utrecht','Nederland','Hoofdlid','23-04-2018','','','','619','','','Toegestaan','Toegestaan'),
	(8723825,'Lau, A.L.W. (Alex)','M','2009','J','chi.san@live.nl','06-24263856','06-28123527','Koolwitjeslaan 23','3544 VL','Utrecht','Nederland','Hoofdlid','30-09-2016','','','','313','','','Toegestaan','Toegestaan'),
	(8827005,'Lebedev, M. (Maksim)','M','2012','J','russonero13@gmail.com','06-22259302','06-40107375','Count Basiestraat 9','3543 GH','Utrecht','Nederland','Hoofdlid','07-10-2018','','','','337','','','Toegestaan','Toegestaan'),
	(8640104,'Leenen, T.N. (Teun)','M','2007','J','marleen.maarleveld@gmail.com','06-46904099','','Leidsekade 112','3531 HD','Utrecht','Nederland','Hoofdlid','26-09-2015','','','','533','','','Toegestaan',''),
	(8795567,'Loeber, I.W. (Ilco)','M','2010','J','roderickloeber@live.nl','06-24739188','06-43588574','Passiebloemweg 68','3452 CZ','Vleuten','Nederland','Hoofdlid','18-12-2017','','','','562','','','Toegestaan','Toegestaan'),
	(8860445,'Loenen, T. van (Tygo)','M','2011','J','lindadegroot_8@hotmail.com','06-20581160','','Evenaar 173','3454 SL','De Meern','Nederland','Hoofdlid','08-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8812441,'Losenoord, G. van (Gijs)','M','2011','J','B_ing_traveling@hotmail.com','06-29346440','06-43801649','Dantelaan 2','3533 VD','Utrecht','Nederland','Hoofdlid','08-06-2019','','','','255','','','Toegestaan','Toegestaan'),
	(8892807,'Lubout, D. (Dijus)','M','2010','J','d_lubout@hotmail.com','06-11534375','','Heldammersingel 20','3453 KG','De Meern','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8658023,'Manen, G. van (Gertjan)','M','1968','S','gertjan.van.manen@kersentuin.nl','030-2521428','06-51624459','Atalantahof 4','3544 VD','Utrecht','Nederland','Hoofdlid','29-09-2015','','1319','','','','','Toegestaan',''),
	(8523339,'Manen, S. van (Siebe)','M','2003','J','siebe.van.manen@gmail.com','030-2521428','06-51624459','Atalantahof 4','3544 VD','Utrecht','Nederland','Hoofdlid','30-09-2012','','1583','1488','1407','','','Toegestaan','Toegestaan'),
	(8870070,'Matveeva, I. (Iakov)','M','2012','J','gloenn@mail.ru','06-82679719','','Monarchvlinderlaan 48','3544 DA','Utrecht','Nederland','Hoofdlid','22-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8870059,'Matveeva, N. (Nina)','V','2009','J','gloenn@mail.ru','06-82679719','','Monarchvlinderlaan 48','3544 DA','Utrecht','Nederland','Hoofdlid','01-10-2019','','','','','','','Toegestaan','Toegestaan'),
	(8699405,'Meijer, J. (Joas)','M','2010','J','klaas@knjr.nl','06-21841163','','Theetuinlaan 23','3452 RJ','Vleuten','Nederland','Hoofdlid','28-03-2016','','','','351','','','Toegestaan','Toegestaan'),
	(8870081,'Monfils, M.Y. (Manu)','M','2011','J','dheymans@me.com','06-26921524','','Multatulistraat 65','3451 AR','Vleuten','Nederland','Hoofdlid','03-10-2019','','','','','','','Toegestaan','Toegestaan'),
	(8630974,'Mulder, A. (Anne)','V','2006','J','nic.mulder72@hotmail.com','030-6665724','06-57050673','Trichterberg 20','3453 PS','De Meern','Nederland','Hoofdlid','06-03-2015','','','','640','','','Toegestaan','Toegestaan'),
	(8672213,'Murugesu, A. (Arjun)','M','2006','J','suba.murugesu@gmail.com','030-2630782','06-45118750','Kamilleweg 11','3541 RN','Utrecht','Nederland','Hoofdlid','22-11-2015','','','','','','','Toegestaan','Toegestaan'),
	(8810725,'Natarajan, M. (Muhilan)','M','2012','J','natarajan.kandasamy@gmail.com','+ 31686005704','','Androsdreef 46','3562 XB','Utrecht','Nederland','Hoofdlid','27-06-2019','','','','245','','','Toegestaan','Toegestaan'),
	(8803993,'Natarajan Sangeetha, S. (Sushanth)','M','2007','J','natarajan.kandasamy@gmail.com','06-86005704','','Androsdreef 46','3562 XB','Utrecht','Nederland','Hoofdlid','30-04-2018','','','','715','','','Toegestaan','Toegestaan'),
	(8523504,'Neisingh, N.C.H. (Nils)','M','2005','J','nils@neisingh.nl','030-6564616','06-55308015','Frederik Loewestraat 7','3543 CK','Utrecht','Nederland','Hoofdlid','30-09-2012','','1793','1681','1833','','','Toegestaan','Toegestaan'),
	(8683884,'Nooteboom, B.D.Q. (Bryce)','M','2008','J','martin.nooteboom@gmail.com','06-15013156','','Purpervlinderstraat 81','3544 VZ','Utrecht','Nederland','Hoofdlid','10-01-2016','','','','803','','','Toegestaan','Toegestaan'),
	(8717918,'Oudenallen, R.M.A. van (Rozemarijn)','V','2010','J','i.pescatore@live.nl','030-2411346','','Kantbloemsingel 36','3452 CM','Vleuten','Nederland','Hoofdlid','15-09-2016','','','','568','','','Toegestaan','Toegestaan'),
	(8807392,'Praveen, A. (Avyukt)','M','2010','J','ammu.jyothi@gmail.com','06-82395737','','Van Bijnkershoeklaan 8','3527 XL','Utrecht','Nederland','Hoofdlid','05-10-2018','','','','139','','','Toegestaan','Toegestaan'),
	(8781014,'Putten, J.D. van (Jelle)','M','2010','J','dianaosna@hotmail.com','06-30412939','','Witte de Withstraat 8','3454 XK','De Meern','Nederland','Hoofdlid','05-10-2017','','','','','','','Toegestaan',''),
	(8892840,'Rajesh, R. (Rishi)','M','2012','J','mikkererajesh@gmail.com','06-11431178','','Laurierweg 137','3541 RB','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8892829,'Rajesh, S. (Sonali)','V','2012','J','mikkererajesh@gmail.com','06-11431178','','Laurierweg 137','3541 RB','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8722637,'Ramdien, R.S. (Ryan)','M','2010','J','dwsonai@hotmail.com','06-26838103','06-26916951','Frontoweg 6','3453 HB','De Meern','Nederland','Hoofdlid','27-09-2016','','','','784','','','Toegestaan','Toegestaan'),
	(8722626,'Ramdien, S.S. (Steven)','M','2008','J','dwsonai@hotmail.com','06-26838103','06-26916951','Frontoweg 6','3453 HB','De Meern','Nederland','Hoofdlid','27-09-2016','','','','1102','','','Toegestaan','Toegestaan'),
	(8772016,'Ramhiet, A. (Angelisha)','V','2009','J','sandrakhodabaks@hotmail.com','06-81976226','06-25348656','Corbulopad 10','3453 HG','De Meern','Nederland','Hoofdlid','01-09-2017','','','','201','','','Toegestaan','Toegestaan'),
	(8772027,'Ramhiet, R. (Rivano)','M','2011','J','sandrakhodabaks@hotmail.com','06-81976226','06-10655617','Corbulopad 10','3453 HG','De Meern','Nederland','Hoofdlid','27-06-2019','','','','189','','','Toegestaan','Toegestaan'),
	(8835211,'Riel, S.N. van (Sibren)','M','2012','J','bart.van.riel@gmail.com','06-81501781','06-45690473','Kolland 33','3452 NM','Vleuten','Nederland','Hoofdlid','03-12-2018','','','','105','','','Toegestaan','Toegestaan'),
	(8759377,'Roskam, L. (Luka)','M','2008','J','camiel.roskam@amsterdam.nl','06-11377713','06-24924239','Emmikkerboslaan 44','3454 NV','De Meern','Nederland','Hoofdlid','03-04-2017','','','','654','','','Toegestaan','Toegestaan'),
	(8759388,'Roskam, M. (Max)','M','2010','J','camiel.roskam@amsterdam.nl','06-11377713','06-24924239','Emmikkerboslaan 44','3454 NV','De Meern','Nederland','Hoofdlid','03-04-2017','','','','','','','Toegestaan','Toegestaan'),
	(8859147,'Sathish Kumar, M. (Mukilan)','M','2012','J','sathish.murugesan@gmail.com','06-87662129','','Claudiuslaan 99','3453 JC','De Meern','Nederland','Hoofdlid','14-11-2019','','','','119','','','Toegestaan','Toegestaan'),
	(8879365,'Schoenmakers, J. (Jan)','M','2011','J','phjschoenmakers@gmail.com','06-41237736','','Meerndijk 62','3454 HT','De Meern','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Toegestaan'),
	(8863415,'Schoonhoven, K.E. (Koen)','M','2013','J','anitakraaij@hotmail.com','06-12486118','','Paprikaweg 1','3541 SH','Utrecht','Nederland','Hoofdlid','03-09-2019','','','','','','','Toegestaan','Toegestaan'),
	(8513549,'Schoonhoven, L.J. (Laura)','V','2005','J','anitakraaij@hotmail.com','06-10633695','06-12480118','Paprikaweg 1','3541 SH','Utrecht','Nederland','Hoofdlid','06-06-2012','','1217','1056','937','','','Toegestaan',''),
	(8513560,'Schoonhoven, M.R. (Mark)','M','2004','J','anitakraaij@hotmail.com','06-16314216','06-12480118','Paprikaweg 1','3541 SH','Utrecht','Nederland','Hoofdlid','06-06-2012','','1513','1400','1453','','','Toegestaan','Toegestaan'),
	(8879354,'Selhorst, L.A. (Lars)','M','2013','J','jeroenselhorst@gmail.com','06-28884587','06-41368413','Boccacciopad 22','3543 BS','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Geweigerd'),
	(8657429,'Sietinga, T. (Tibbe)','M','2007','J','m_kleinhans@hotmail.com','06-13640918','06-24943368','Dennewitjeshof 24','3544 VN','Utrecht','Nederland','Hoofdlid','26-09-2015','','','','504','','','Toegestaan','Geweigerd'),
	(8809691,'Singaravadivelu, V. (Vishaal)','M','2010','J','singaravadivelu@gmail.com','06-34740664','','Androsdreef 32','3562 XA','Utrecht','Nederland','Hoofdlid','13-12-2018','','','','445','','','Toegestaan','Toegestaan'),
	(8834815,'Singh, A. (Aayush)','M','2010','J','ana.pandit@gmail.com','06-46283660','','Joan Mirostraat 44','3544 NS','Utrecht','Nederland','Hoofdlid','22-11-2019','','','','559','','','Toegestaan','Toegestaan'),
	(8807018,'Smeets, B. (Bent)','M','2011','J','carmen.paalman@gmail.com','06-28597488','06-14242288','Egelantierstraat 8','3551 GC','Utrecht','Nederland','Hoofdlid','19-07-2018','','','','513','','','Toegestaan','Toegestaan'),
	(8659420,'Smeets, K. (Kobe)','M','2008','J','jmhsmeets@gmail.com','06-14242288','06-28597488','Egelantierstraat 8','3551 GC','Utrecht','Nederland','Hoofdlid','18-03-2016','','1802','1755','1861','Stap 3','','Toegestaan','Toegestaan'),
	(8863668,'Smelik, S.P. (Stijn)','M','2007','J','marije.smelik@gmail.com','06-10532108','','Cole Porterplantsoen 6','3543 CD','Utrecht','Nederland','Hoofdlid','06-09-2019','','','','','','','Toegestaan','Toegestaan'),
	(8513571,'Snel, K.A. (Kasper)','M','2004','J','berend.snel@gmail.com','030-2444644','06-14541215','Pijlstaartvlinder 9','3544 DJ','Utrecht','Nederland','Hoofdlid','06-06-2012','','','','933','','','Toegestaan','Toegestaan'),
	(8828435,'Sonokromo, J.H.J. (Jordan)','M','2012','J','tamaracvm@hotmail.com','06-22827088','06-30329112','Secundusweg 7','3453 JL','De Meern','Nederland','Hoofdlid','14-10-2018','','','','175','','','Toegestaan','Toegestaan'),
	(8759905,'Stoppels, I. (Isabella)','V','2008','J','isabellastoppels@outlook.com','06-46143538','','Karl Millockerhof 7','3543 HV','Utrecht','Nederland','Hoofdlid','07-04-2017','','','','301','','','Toegestaan','Toegestaan'),
	(8759894,'Stoppels, V. (Victor)','M','2011','J','victorstoppels@outlook.com','06-46143538','','Karl Millockerhof 7','3543 HV','Utrecht','Nederland','Hoofdlid','07-04-2017','','','','330','','','Toegestaan',''),
	(8625606,'Thonon, L.G. (Liam)','M','2007','J','ivothonon@gmail.com','06-37333793','06-41507685','Byronstraat 16','3533 VX','Utrecht','Nederland','Hoofdlid','17-09-2017','','','','','','','Toegestaan','Toegestaan'),
	(6383751,'Tjiam, D.U.C. (Dharma)','M','1970','S','dtjiam@xs4all.nl','030-2676499','06-25100181','Amaliadwarsstraat 11','3522 AN','Utrecht','Nederland','Hoofdlid','01-09-2015','','2400','2399','','','','Toegestaan',''),
	(8828490,'Tran, I. (Inara)','V','2009','J','pelangi_care@yahoo.com','06-52251089','','Meredith Willsonstraat 67','3543 DM','Utrecht','Nederland','Hoofdlid','15-10-2018','','','','','','','Toegestaan','Toegestaan'),
	(8596962,'Ubbink, A.M. (Anouk)','V','2005','J','ruthubbink@hotmail.co.uk','0346-835144','06-24787216','Straatweg 74','3621 BR','Breukelen','Nederland','Hoofdlid','29-06-2016','','1351','1075','1186','','','Toegestaan','Toegestaan'),
	(8703827,'Ubbink, J.R. (Jesper)','M','2010','J','ruthubbink@hotmail.co.uk','0346-835144','06-24787216','Straatweg 74','3621 BR','Breukelen','Nederland','Hoofdlid','02-10-2017','','','','483','','','Toegestaan','Toegestaan'),
	(8732592,'Veen, E.S. van (Eva)','V','2010','J','svveenbatenburg@gmail.com','06-83224587','030-2766477','Karwijstraat 24','3544 CE','Utrecht','Nederland','Hoofdlid','17-09-2017','','','','','','','Toegestaan','Toegestaan'),
	(8751127,'Veen, N. van (Noah)','M','2007','J','haenvanveen@ziggo.nl','030-2328941','06-10655617','Beemdgrassingel 28','3452 CW','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','320','','','Toegestaan','Toegestaan'),
	(8761192,'Veling, J.J. (Jan)','M','2006','J','sanneveling@yahoo.com','06-29032151','06-51877623','Sculpturentuinlaan 16 16','3454 RG','De Meern','Nederland','Hoofdlid','03-12-2018','','','','419','','','Toegestaan','Toegestaan'),
	(8879376,'Verhoef, M.H. (Maxime)','M','2011','J','verhoefgricelda@gmail.com','06-81281102','','Jan Vogellaan 10','3451 SL','Vleuten','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Geweigerd'),
	(8879398,'Verhoef, S.A. (Sophie)','M','2012','J','verhoefgricelda@gmail.com','06-81281102','','Jan Vogellaan 10','3451 SL','Vleuten','Nederland','Hoofdlid','14-11-2019','','','','100','','','Toegestaan','Geweigerd'),
	(8812760,'Vikram, M. (Mihika)','V','2011','J','vikramdas77@gmail.com','06-49165394','06-27091316','Leo Fallplantsoen 36','3543 HH','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','224','','','Toegestaan','Toegestaan'),
	(8812771,'Vikram, M. (Mihir)','M','2011','J','vikramdas77@gmail.com','06-49165394','06-27091316','Leo Fallplantsoen 36','3543 HH','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','382','','','Toegestaan','Toegestaan'),
	(8630963,'Visscher, Y. (Yannick)','M','2005','J','sandravandenbrom@hotmail.com','030-2322173','','Achtersloot 200','3401 NZ','IJsselstein','Nederland','Hoofdlid','06-03-2015','','','','954','','','Toegestaan','Toegestaan'),
	(8880003,'Vliet, N.D. van (Niels)','M','2011','J','ndvvliet@gmail.com','06-12978452','','Parkzichtlaan 108','3544 NV','Utrecht','Nederland','Hoofdlid','18-11-2019','','','','','','','Toegestaan','Toegestaan'),
	(8838082,'Wachter, J.C.J. (Jillano)','M','2006','J','glen.ren@hotmail.com','06-49291933','06-16383129','Komijnweg 13','3541 RK','Utrecht','Nederland','Hoofdlid','18-12-2018','','','','','','','Geweigerd','Geweigerd'),
	(8835101,'Wieberdink, N. (Nout)','M','2010','J','wieberdink@hotmail.com','06-44995390','06-41320312','Japansetuinlaan 11','3452 RV','Vleuten','Nederland','Hoofdlid','14-12-2018','','','','335','','','Toegestaan','Toegestaan'),
	(8396993,'Wilschut, F. (Frank)','M','1980','S','frank.wilschut@gmail.com','06-52803732','','Averkamplaan 17','3533 SK','Utrecht','Nederland','Hoofdlid','07-07-2019','','1976','1893','','','','Toegestaan','Toegestaan'),
	(8879596,'Winkel, S.T. (Stefan)','M','2011','J','carlaroosje@gmail.com','06-16948349','','Mattenbieslaan 31','3452 AC','Vleuten','Nederland','Hoofdlid','15-11-2019','','','','100','','','Toegestaan','Geweigerd'),
	(8883292,'Xu, A. (Alex)','M','2013','J','katarina2011m@gmail.com','06-28945257','','Woerdlaan 3','3454 VH','De Meern','Nederland','Hoofdlid','21-02-2020','','','','387','','','Toegestaan','Toegestaan'),
	(8883281,'Xu, N. (Nicholas)','M','2010','J','katarina2011m@gmail.com','06-28945257','','Woerdlaan 3','3454 VH','De Meern','Nederland','Hoofdlid','21-02-2020','','','','600','','','Toegestaan','Toegestaan'),
	(8767253,'Yucel, T. (Tuna)','M','2010','J','ayhan.yucel@outlook.com','06-43006048','','Tweede Oosterparklaan 257','3544 AS','Utrecht','Nederland','Hoofdlid','20-12-2017','','','','','','','Toegestaan','Toegestaan'),
	(8614628,'Zelke, D.B.F.M. (Dagomar)','M','2007','J','m.zelke@casema.nl','030-2439070','06-31626715','Oppenheimplein 5','3551 BN','Utrecht','Nederland','Hoofdlid','01-09-2017','','','','721','','','Toegestaan','Toegestaan'),
	(8713804,'Zhang, L.X.C.R. (Robin)','M','2008','J','yvonneyu35@gmail.com','030-6668819','06-43111782','Vlambloemlaan 35','3452 BV','Vleuten','Nederland','Hoofdlid','29-06-2016','','','','418','','','Toegestaan','Toegestaan'),
	(7297884,'Ziepzeerder, M. (Matthijs)','M','1975','S','m_ziepzeerder@hotmail.com','06-46880490','','Hermelijnvlinderdijk 132','3544 ZC','Utrecht','Nederland','Hoofdlid','25-10-2019','','1557','','','','','Toegestaan','Toegestaan'),
	(8805753,'Ziepzeerder, S.J.L. (Stijn)','M','2010','J','m_ziepzeerder@hotmail.com','06-46880490','06-23389698','Hermelijnvlinderdijk 132','3544 ZC','Utrecht','Nederland','Hoofdlid','07-03-2018','','','','542','','','Toegestaan','Toegestaan'),
	(8771994,'Zwam, T.K. van (Timo)','M','2009','J','martijn77vanzwam@hotmail.com','06-51480161','','Rotstuinlaan 14','3452 SC','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','','','','Toegestaan',''),
	(8672235,'Achterberg, J.K. (Jonas)','M','2003','J','achterberg@gmx.net','06-29578795','06-43208848','Dantelaan 73','3533 VB','Utrecht','Nederland','Hoofdlid','22-11-2015','','','','1037','','','Toegestaan',''),
	(8807381,'Agoramoorthy, M. (Mukilan)','M','2011','J','agor02@gmail.com','06-84755354','','Bernadottelaan 116','3527 GB','Utrecht','Nederland','Hoofdlid','06-12-2018','','','','381','','','Toegestaan','Toegestaan'),
	(8599646,'Aken, J.W.J. van (Jelmer)','M','2002','J','famvanaken@icloud.com','030-6664031','06-36553766','Zandweg 173','3454 HC','De Meern','Nederland','Hoofdlid','17-06-2014','','1786','1790','','','','Toegestaan','Toegestaan'),
	(8892917,'Al Michael, L. (Laurens)','M','2013','J','greetjeurban@yahoo.com','06-38465529','06-43124372','Kortland 12','3451 VD','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8892785,'Al Michael, R. (Rein)','M','2013','J','greetjeurban@yahoo.com','06-38465529','','Kortland 12','3451 VD','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8640082,'Anhaus, J.L.H. (Jonas)','M','2007','J','fam.anhaus@gmail.com','030-6384517','','Valeriaanweg 27','3541 TN','Utrecht','Nederland','Hoofdlid','30-01-2016','','','','656','','','Toegestaan','Toegestaan'),
	(8640720,'Arendonk, P. van (Polle)','M','2008','J','basvana@online.nl','030-2546872','06-57549903','Ten Veldestraat 24','3454 EL','De Meern','Nederland','Hoofdlid','26-09-2015','','1757','1655','1768','','','Toegestaan','Toegestaan'),
	(8521150,'Arendse, B. (Bram)','M','2006','J','maurice.arendse@gmail.com','06-22570563','','Tjeerdsraklaan 4','3544 PC','Utrecht','Nederland','Hoofdlid','30-09-2012','','','','310','','','Toegestaan','Toegestaan'),
	(8806600,'Argoubi, A. (Amir)','M','2007','J','semra_eu@hotmail.com','06-48277140','06-57342541','Jan Greshofflaan 24','3454 VW','De Meern','Nederland','Hoofdlid','13-03-2018','','','','','','','Toegestaan','Toegestaan'),
	(8642469,'Aubel, D.H.J. (Daan)','M','2010','J','Jochem.Aubel@gmail.com','030-7551469','','Groenedijk 24','3544 AB','Utrecht','Nederland','Hoofdlid','29-05-2015','','1195','','954','','','Toegestaan','Toegestaan'),
	(7117924,'Aubel, J. (Jochem)','M','1976','S','jochem.aubel@gmail.com','06-10425990','','Groenedijk 24','3544 AB','Utrecht','Nederland','Hoofdlid','26-09-2015','','2205','2251','','','','Toegestaan','Toegestaan'),
	(8544778,'Aubel, K.C.S. (Koen)','M','2008','J','jochem.aubel@gmail.com','030-7551469','06-10425990','Groenedijk 24','3544 AB','Utrecht','Nederland','Hoofdlid','31-03-2013','','1533','','1206','','','Toegestaan','Toegestaan'),
	(8859400,'Baboeram Panday, R. (Rishaan)','M','2010','J','sbpksk@gmail.com','06-52334963','','Emmikkerboslaan 9','3454 NV','De Meern','Nederland','Hoofdlid','27-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8861380,'Baboeram Panday, S. (Shariesh)','M','2012','J','sbpksk@gmail.com','06-52334963','','Emmikkerboslaan 9','3454 NV','De Meern','Nederland','Hoofdlid','27-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8741832,'Bagita, A. (Andras)','M','2005','J','jbagita@cdpro.sk','06-38146623','06-10488670','Komijnweg 25','3541 RK','Utrecht','Nederland','Hoofdlid','19-12-2016','','','','547','','','Toegestaan',''),
	(8860489,'Bahroos, D. (Dakshh)','M','2011','J','bahroos@yahoo.com','06-12039865','','Wenenpromenade 14','3541 DG','Utrecht','Nederland','Hoofdlid','09-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8767297,'Bakouri, S. (Saladin)','M','2010','J','bakouri@soverin.net','06-30167928','','Komijnweg 19','3541 RK','Utrecht','Nederland','Hoofdlid','03-12-2018','','','','','','','Toegestaan','Toegestaan'),
	(8836157,'Bakouri, S. (Salman)','M','2012','J','bakouri@soverin.net','06-30167928','','Komijnweg 19','3541 RK','Utrecht','Nederland','Hoofdlid','03-12-2018','','','','','','','Toegestaan','Toegestaan'),
	(8863426,'Boels, P.F.T. (Philippe)','M','2009','J','sandraoudejans@hotmail.com','06-50053345','06-31963929','Madameperenlaan 45','3452 ER','Vleuten','Nederland','Hoofdlid','03-09-2019','','','','','','','Toegestaan','Toegestaan'),
	(8807216,'Bolks, S.A. (Sean)','M','2010','J','juke_nina@hotmail.com','06-21214865','','Avondrood 13','3454 SE','De Meern','Nederland','Hoofdlid','05-10-2018','','','','616','','','Toegestaan','Toegestaan'),
	(8892928,'Bollaart, O.A. (Olivier)','M','2011','J','o.a.bollaart@gmail.com','06-52622441','','Kerckeboslaan 5','3454 NR','De Meern','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Geweigerd'),
	(8538662,'Bonenkamp, J.D. (Jasper)','M','2002','J','vivianne@bonenkamp.nl','06-52556987','06-18810800','Jacques Offenbachplnts 12','3543 HK','Utrecht','Nederland','Hoofdlid','30-01-2013','','1602','1590','','','','Toegestaan',''),
	(8699416,'Boschker, D.T.J.G. (Danilyo)','M','2007','J','lasina8@hotmail.com','030-8900178','','Adikade 34','3531 WS','Utrecht','Nederland','Hoofdlid','28-03-2016','','','','720','','','Toegestaan','Toegestaan'),
	(8513472,'Bosman, S. (Sietse)','M','2005','J','sietsebosman1@gmail.com','06-24770703','06-43228568','Tweede Oosterparklaan 151','3544 AP','Utrecht','Nederland','Hoofdlid','06-06-2012','','','','844','','','Toegestaan','Toegestaan'),
	(8709217,'Boxtel, T.H.N. van (Tim)','M','2010','J','ljvanboxtel@googlemail.com','06-30879057','','Kolland 24','3452 NM','Vleuten','Nederland','Hoofdlid','27-09-2016','','','','387','','','Toegestaan',''),
	(8547220,'Brabers, M.J. (Thijs)','M','2005','J','moniqueluyendijk@kpnmail.nl','030-2342824','06-41932239','Zeilmakerslaan 48','3454 DN','De Meern','Nederland','Hoofdlid','30-04-2013','','','','476','','','Toegestaan','Geweigerd'),
	(8526771,'Brinkman, L.C.P.D. (David)','M','2005','J','eduard.brinkman@ziggo.nl','030-8797907','06-10054575','Satijnvlinder 62','3544 VX','Utrecht','Nederland','Hoofdlid','28-10-2012','','','','','','','Toegestaan',''),
	(8605014,'Brinkman, T.J.G. (Thomas)','M','2007','J','eduard.brinkman@ziggo.nl','030-8797907','06-53505697','Satijnvlinder 62','3544 VX','Utrecht','Nederland','Hoofdlid','10-09-2014','','','','','','','Toegestaan',''),
	(8848169,'Burne, J. (Jayden)','M','2009','J','burne@hotmail.com','06-45114117','','Felix Timmermanshove 23','3437 BS','Nieuwegein','Nederland','Hoofdlid','15-11-2019','','','','341','','','Toegestaan','Geweigerd'),
	(8786822,'Changur, M. (Maruti)','M','2009','J','','06-41465643','','Tweede Westerparklaan 107','3544 VP','Utrecht','Nederland','Hoofdlid','30-10-2017','','','','','','','Toegestaan','Toegestaan'),
	(8892796,'Chen, E. (Emmie)','V','2013','J','fayzf@hotmail.com','06-46091774','','Carel Willinkstraat 17','3544 MA','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Geweigerd'),
	(8772511,'Chu, C. (Chlo?)\";V','2009','J','crystaljzh@gmail.com','06-39890058','','Ivoorzwamsingel 7','3451 PS','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','248','','','Toegestaan','Toegestaan',NULL),
	(8772522,'Chu, J. (Justin)','M','2011','J','crystaljzh@gmail.com','06-39890059','','Ivoorzwamsingel 7','3451 PS','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','155','','','Toegestaan','Toegestaan'),
	(8834848,'Crince, K. (Kai)','M','2008','J','kai@taktc.nl','06-40211785','','Akkrumerraklaan 170','3544 TV','Utrecht','Nederland','Hoofdlid','17-11-2019','','','','383','','','Toegestaan','Toegestaan'),
	(8812914,'Crince, T. (Tygo)','M','2009','J','tygo@taktc.nl','06-40211785','','Akkrumerraklaan 170','3544 TV','Utrecht','Nederland','Hoofdlid','17-11-2019','','','','410','','','Toegestaan','Toegestaan'),
	(8708821,'Darmian, A. (Artur)','M','2007','J','annadar@hotmail.nl','06-23101700','','Kanaalstraat 241 bis','3531 CJ','Utrecht','Nederland','Hoofdlid','07-03-2018','','','','524','','','Toegestaan','Toegestaan'),
	(8825135,'Dijkman, S.E.H. (Sietse)','M','2009','J','pedijkman@gmail.com','030-2937242','','Burg Van der Heidelaan 40','3451 ZV','Vleuten','Nederland','Hoofdlid','05-10-2018','','','','478','','','Toegestaan','Toegestaan'),
	(8796172,'Dogan, V. (Vefa)','M','2011','J','betultaskin_gina@hotmail.com','06-34192999','06-39371453','Heivlinder 15','3544 DM','Utrecht','Nederland','Hoofdlid','08-11-2019','','','','100','','','Toegestaan','Geweigerd'),
	(8774282,'Doyle, F.F. (Finn)','M','2006','J','jeremy.doyle@ymail.com','06-58832913','+447769654533','Racinelaan 14','3533 VM','Utrecht','Nederland','Hoofdlid','18-09-2017','','','','649','','','Toegestaan',''),
	(8578548,'Duursma, W.T. (Wietse)','M','2006','J','ouders@wayam.nl','06-40046642','','Komijnweg 26','3541 RK','Utrecht','Nederland','Hoofdlid','26-01-2014','','','','481','','','Toegestaan','Toegestaan'),
	(8578229,'Duursma, Y.T. (Yorick)','M','2006','J','ouders@wayam.nl','06-40046642','','Komijnweg 26','3541 RK','Utrecht','Nederland','Hoofdlid','26-01-2014','','','','870','','','Toegestaan','Toegestaan'),
	(8658001,'Egmond, S. van (Sander)','M','1973','S','s.vanegmond@infinitodesign.nl','06-38400656','','Sierduif 49','3435 BJ','Nieuwegein','Nederland','Hoofdlid','29-09-2015','','1391','','','','','Toegestaan',''),
	(8558154,'Egmond, T.S. van (Tom)','M','2007','J','info@infinitodesign.nl','030-2888559','06-38400656','Sierduif 49','3435 BJ','Nieuwegein','Nederland','Hoofdlid','29-09-2013','','1579','1523','1379','','','Toegestaan','Geweigerd'),
	(8687327,'Eikelenboom, J. (Jeanette)','V','2009','J','claire@timetoknow.nl','030-2899738','','Scheurraklaan 6','3544 PA','Utrecht','Nederland','Hoofdlid','23-01-2016','','','','547','','','Toegestaan','Toegestaan'),
	(8687338,'Eikelenboom, S. (Salome)','V','2006','J','claire@timetoknow.nl','030-2899738','','Scheurraklaan 6','3544 PA','Utrecht','Nederland','Hoofdlid','23-01-2016','','','','460','','','Toegestaan','Toegestaan'),
	(8671366,'Eikelenboom, S.M. (Samuel)','M','2004','J','albert@jezus-komt-terug.nl','030-1899738','','Scheurraklaan 6','3544 PA','Utrecht','Nederland','Hoofdlid','15-05-2016','','','','816','','','Toegestaan',''),
	(8687294,'Eker, Q.T.A. (Quentin)','M','2008','J','quentin@eker.nl','030-2991441','06-28997330','Catharinaplaatjes 72','3453 SN','De Meern','Nederland','Hoofdlid','02-09-2017','','','','633','','','Toegestaan',''),
	(8873359,'Erbakirci, M. (Meryem)','V','2011','J','antisceptic@zoho.com','06-45719369','','Monarchvlinderlaan 152','3544 DC','Utrecht','Nederland','Hoofdlid','17-10-2019','','','','100','','','Toegestaan','Geweigerd'),
	(6971481,'Esch, S.A. van (Bas)','M','1965','S','bas_van_esch@hotmail.com','06-11723303','030-2716907','Zandweg 54 A','3454 JV','De Meern','Nederland','Hoofdlid','01-08-2015','','2178','2191','','','','Toegestaan','Toegestaan'),
	(8879409,'Flamink, E. (Eric)','M','2010','J','saskia@koroc.nl','06-11445272','06-19447310','Ivor Novellostraat 6','3543 EE','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Geweigerd'),
	(8810758,'Geer, T.J. van de (Tijn)','M','2008','J','','06-51703554','06-51507127','Ten Veldestraat 86','3454 EN','De Meern','Nederland','Hoofdlid','14-04-2018','','','','','','','Toegestaan','Geweigerd'),
	(8892884,'Georgakis, G. (Georgios)','M','2011','J','K_g_georgakis@yahoo.gr','030-8881691','','Beeldentuinlaan 61','3452 SJ','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8807183,'Georgopoulos-Karbouniaris, M. (Mylo)','M','2011','J','simalay21@yahoo.com','06-19687828','06-15003267','Sidney Joneshof 15','3543 HM','Utrecht','Nederland','Hoofdlid','12-05-2019','','','','467','','','Toegestaan','Toegestaan'),
	(8621591,'Gergin, I. (Isafara)','V','2008','J','astridanandita@gmail.com','06-13979900','','Jule Stynestraat 18','3543 DR','Utrecht','Nederland','Hoofdlid','12-12-2014','','1501','','1293','','','Toegestaan','Toegestaan'),
	(8892906,'Gerrits, C.S. (Casper)','M','2013','J','mail@roelgerrits.net','06-19006375','06-44672869','Doyenneperenlaan 84','3452 EG','Vleuten','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8687283,'Haaften, J. van (Jelle)','M','2010','J','hyke_bandsma@hotmail.com','06-12909978','','Gouden Koetslaan 47','3451 WD','Vleuten','Nederland','Hoofdlid','23-01-2016','','','','519','','','Toegestaan','Toegestaan'),
	(8772104,'Habernickel, B. (Bas)','M','2008','J','jim@habernickel.nl','06-10089019','06-51947087','Koldijksterraklaan 220','3544 PP','Utrecht','Nederland','Hoofdlid','01-09-2017','','','','374','','','Toegestaan','Toegestaan'),
	(8597039,'Hamoen, F.G. (Felix)','M','2006','J','m-f.hamoen@outlook.com','030-2333608','06-41058150','Verlengde Utrechtseweg 107','3544 HH','Utrecht','Nederland','Hoofdlid','10-09-2014','','','','1021','','','Toegestaan','Toegestaan'),
	(8831878,'Haneveer, M.J.W. (Max)','M','2007','J','desmond@ziggo.nl','06-42756233','030-2667846','Genialisweg 17','3453 HJ','De Meern','Nederland','Hoofdlid','07-11-2018','','','','','','','Toegestaan','Toegestaan'),
	(8596918,'Heij, M.T. de (Mees)','M','2008','J','ardeheij@hotmail.com','030-2519710','06-54661599','Operettelaan 379','3543 BR','Utrecht','Nederland','Hoofdlid','27-09-2014','','1600','1650','1450','','','Toegestaan','Toegestaan'),
	(8597677,'Helvert, J.T.E. van (Jaap)','M','2009','J','inge_coolen@hotmail.com','06-47115252','06-11336161','St.-Pietersberg 44','3453 PK','De Meern','Nederland','Hoofdlid','28-05-2014','','','','636','','','Toegestaan','Toegestaan'),
	(8672246,'Helvert, S.J.B.P. van (Stijn)','M','2010','J','inge_coolen@hotmail.com','06-47115252','','St.-Pietersberg 44','3453 PK','De Meern','Nederland','Hoofdlid','22-11-2015','','','','373','','','Toegestaan','Toegestaan'),
	(8588855,'Herngreen, W.T. (Timo)','M','2004','J','bert_herngreen@yahoo.com','030-6883384','06-40483085','Wolweverslaan 18','3454 GL','De Meern','Nederland','Hoofdlid','30-03-2014','','','','','','','Toegestaan',''),
	(8838005,'Hoogstraten, L. van (Timon)','M','2012','J','lanzhang2003@gmail.com','06-41040358','','Wolkendek 66','3454 TJ','De Meern','Nederland','Hoofdlid','17-12-2018','','','','','','','Geweigerd','Geweigerd'),
	(8740886,'Hsia, S.Y. (Sui Ying)','V','2010','J','fam.hsia@gmail.com','06-24782091','','Eerste Oosterparklaan 120','3544 AN','Utrecht','Nederland','Hoofdlid','07-12-2016','','','','','','','Toegestaan','Toegestaan'),
	(8827016,'Huisman, S. (Simon)','M','2009','J','huisman.erik@gmail.com','06-47438508','06-24417562','Komijnweg 6','3541 RK','Utrecht','Nederland','Hoofdlid','07-10-2018','','','','520','','','Toegestaan','Toegestaan'),
	(6281682,'Hurk, A.A. van den (Arie)','M','1960','S','aavandenhurk@vodafonevast.nl','06-18309413','','Wethouder Schaaplaan 39','3981 GP','Bunnik','Nederland','Hoofdlid','18-09-2017','','1998','1946','','','','Toegestaan','Toegestaan'),
	(8754240,'Huurnink, M. (Maarten)','M','2011','J','irisvangrinsven@gmail.com','06-10551337','06-19636198','Dwergbieslaan 104','3452 AL','Vleuten','Nederland','Hoofdlid','24-04-2017','','','','211','','','Toegestaan','Toegestaan'),
	(8760136,'Huurnink, P. (Pieter)','M','2009','J','hercohuurnink@gmail.com','','','Dwergbieslaan 104','3452 AL','Vleuten','Nederland','Hoofdlid','18-10-2017','','','','369','','','Toegestaan',''),
	(8831845,'Isabella, J.M.O. (Jimmy)','M','2012','J','a_m_montroos@hotmail.com','06-43233349','06-24189066','De Charmantedreef 14','3561 VB','Utrecht','Nederland','Hoofdlid','07-11-2018','','','','100','','','Toegestaan','Toegestaan'),
	(8831834,'Isabella, T.L.R. (Tommy)','M','2010','J','a_m_montroos@hotmail.com','06-24189066','06-43233349','De Charmantedreef 14','3561 VB','Utrecht','Nederland','Hoofdlid','07-11-2018','','','','100','','','Toegestaan','Toegestaan'),
	(8828457,'Jans, V.O. (Viggo)','M','2009','J','walterjans@bboc.nl','06-46056888','06-52664182','Utrechtseweg 46','3544 NA','Utrecht','Nederland','Hoofdlid','14-10-2018','','','','336','','','Toegestaan','Toegestaan'),
	(8892895,'Jansen, D. (Dorian)','M','2013','J','alyannemanon@gmail.com','06-47017445','06-12288721','Sleeswijk 3','3524 KC','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8640060,'Jansen, T.H.J. (Ties)','M','2007','J','cymhelmer@gmail.com','06-17544855','','Molierelaan 19','3533 VG','Utrecht','Nederland','Hoofdlid','14-09-2016','','','','581','','','Toegestaan','Toegestaan'),
	(8820339,'Jeuken, Y. (Yuan)','M','2009','J','frankjeuken@hotmail.com','06-13930471','','St.-Pietersberg 9','3453 PH','De Meern','Nederland','Hoofdlid','30-08-2018','','','','','','','Toegestaan','Toegestaan'),
	(8828413,'Karakaya, M.S. (Sami)','M','2011','J','muserrefcelik@gmail.com','06-23298938','06-58967718','De Milan Viscontilaan 153','3453 SR','De Meern','Nederland','Hoofdlid','14-10-2018','','','','328','','','Toegestaan','Toegestaan'),
	(8860159,'Kholmatov, S. (Shahram)','M','2010','J','shavkatabc@yahoo.com','06-15178257','','Jara Beneshof 9','3543 JR','Utrecht','Nederland','Hoofdlid','06-09-2019','','','','100','','','Toegestaan','Toegestaan'),
	(8836168,'Kisoensingh, S.Y.A. (Shiven)','M','2011','J','navin@navin.nl','06-50697333','','Augustusweg 18','3453 KS','De Meern','Nederland','Hoofdlid','03-12-2018','','','','175','','','Toegestaan','Toegestaan'),
	(8577228,'Kleibeuker, M.D. (Mika)','M','2007','J','hannekebarth@me.com','030-8889799','06-12260505','Alberdingk Thijmstraat 13','3532 VL','Utrecht','Nederland','Hoofdlid','24-01-2014','','','','864','','','Toegestaan',''),
	(8672224,'Klein, L.F.A. (Lucas)','M','2004','J','b.sam@online.nl','030-2515488','06-24233880','H?ndelstraat 86','3533 GM','Utrecht','Nederland','Hoofdlid','22-11-2015','','1634','1513','1621','','','Toegestaan','Toegestaan'),
	(8828446,'Kok, M.R. (Maikel)','M','2007','J','','06-24450095','06-18274741','Dassenburcht 42','3452 MN','Vleuten','Nederland','Hoofdlid','14-10-2018','','','','','','','Toegestaan','Toegestaan'),
	(8682487,'Kok, M.S. (Mads)','M','2007','J','irmpy1@gmail.com','030-6666663','06-27355090','Deeneplaat 5','3453 SB','De Meern','Nederland','Hoofdlid','04-01-2016','','','','578','','','Toegestaan',''),
	(8527937,'Kraaijpoel, D.A. (Dirk)','M','1974','S','hakraai@gmail.com','06-49642222','','Grietmansraklaan 15','3544 TK','Utrecht','Nederland','Hoofdlid','26-09-2015','','1795','','','','','Toegestaan','Toegestaan'),
	(8559111,'Kraaijpoel, H.D. (Hidde)','M','2007','J','hakraai@gmail.com','030-2368855','06-49642222','Grietmansraklaan 15','3544 TK','Utrecht','Nederland','Hoofdlid','29-09-2013','','','','689','','','Toegestaan','Toegestaan'),
	(8597050,'Kruize, B.S.M. (Bouwe)','M','2006','J','laurien.kruize@planet.nl','030-6770963','06-27650874','Groenedijk 41','3544 AB','Utrecht','Nederland','Hoofdlid','18-05-2017','','','','','','','Toegestaan','Toegestaan'),
	(8812254,'Kuiper, R. (Rens)','M','2008','J','janniezondervan@hotmail.com','06-47956670','06-52790369','Sapoerahof 8','3531 WJ','Utrecht','Nederland','Hoofdlid','23-04-2018','','','','619','','','Toegestaan','Toegestaan'),
	(8723825,'Lau, A.L.W. (Alex)','M','2009','J','chi.san@live.nl','06-24263856','06-28123527','Koolwitjeslaan 23','3544 VL','Utrecht','Nederland','Hoofdlid','30-09-2016','','','','313','','','Toegestaan','Toegestaan'),
	(8827005,'Lebedev, M. (Maksim)','M','2012','J','russonero13@gmail.com','06-22259302','06-40107375','Count Basiestraat 9','3543 GH','Utrecht','Nederland','Hoofdlid','07-10-2018','','','','337','','','Toegestaan','Toegestaan'),
	(8640104,'Leenen, T.N. (Teun)','M','2007','J','marleen.maarleveld@gmail.com','06-46904099','','Leidsekade 112','3531 HD','Utrecht','Nederland','Hoofdlid','26-09-2015','','','','533','','','Toegestaan',''),
	(8795567,'Loeber, I.W. (Ilco)','M','2010','J','roderickloeber@live.nl','06-24739188','06-43588574','Passiebloemweg 68','3452 CZ','Vleuten','Nederland','Hoofdlid','18-12-2017','','','','562','','','Toegestaan','Toegestaan'),
	(8860445,'Loenen, T. van (Tygo)','M','2011','J','lindadegroot_8@hotmail.com','06-20581160','','Evenaar 173','3454 SL','De Meern','Nederland','Hoofdlid','08-06-2019','','','','','','','Toegestaan','Toegestaan'),
	(8812441,'Losenoord, G. van (Gijs)','M','2011','J','B_ing_traveling@hotmail.com','06-29346440','06-43801649','Dantelaan 2','3533 VD','Utrecht','Nederland','Hoofdlid','08-06-2019','','','','255','','','Toegestaan','Toegestaan'),
	(8892807,'Lubout, D. (Dijus)','M','2010','J','d_lubout@hotmail.com','06-11534375','','Heldammersingel 20','3453 KG','De Meern','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8658023,'Manen, G. van (Gertjan)','M','1968','S','gertjan.van.manen@kersentuin.nl','030-2521428','06-51624459','Atalantahof 4','3544 VD','Utrecht','Nederland','Hoofdlid','29-09-2015','','1319','','','','','Toegestaan',''),
	(8523339,'Manen, S. van (Siebe)','M','2003','J','siebe.van.manen@gmail.com','030-2521428','06-51624459','Atalantahof 4','3544 VD','Utrecht','Nederland','Hoofdlid','30-09-2012','','1583','1488','1407','','','Toegestaan','Toegestaan'),
	(8870070,'Matveeva, I. (Iakov)','M','2012','J','gloenn@mail.ru','06-82679719','','Monarchvlinderlaan 48','3544 DA','Utrecht','Nederland','Hoofdlid','22-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8870059,'Matveeva, N. (Nina)','V','2009','J','gloenn@mail.ru','06-82679719','','Monarchvlinderlaan 48','3544 DA','Utrecht','Nederland','Hoofdlid','01-10-2019','','','','','','','Toegestaan','Toegestaan'),
	(8699405,'Meijer, J. (Joas)','M','2010','J','klaas@knjr.nl','06-21841163','','Theetuinlaan 23','3452 RJ','Vleuten','Nederland','Hoofdlid','28-03-2016','','','','351','','','Toegestaan','Toegestaan'),
	(8870081,'Monfils, M.Y. (Manu)','M','2011','J','dheymans@me.com','06-26921524','','Multatulistraat 65','3451 AR','Vleuten','Nederland','Hoofdlid','03-10-2019','','','','','','','Toegestaan','Toegestaan'),
	(8630974,'Mulder, A. (Anne)','V','2006','J','nic.mulder72@hotmail.com','030-6665724','06-57050673','Trichterberg 20','3453 PS','De Meern','Nederland','Hoofdlid','06-03-2015','','','','640','','','Toegestaan','Toegestaan'),
	(8672213,'Murugesu, A. (Arjun)','M','2006','J','suba.murugesu@gmail.com','030-2630782','06-45118750','Kamilleweg 11','3541 RN','Utrecht','Nederland','Hoofdlid','22-11-2015','','','','','','','Toegestaan','Toegestaan'),
	(8810725,'Natarajan, M. (Muhilan)','M','2012','J','natarajan.kandasamy@gmail.com','+ 31686005704','','Androsdreef 46','3562 XB','Utrecht','Nederland','Hoofdlid','27-06-2019','','','','245','','','Toegestaan','Toegestaan'),
	(8803993,'Natarajan Sangeetha, S. (Sushanth)','M','2007','J','natarajan.kandasamy@gmail.com','06-86005704','','Androsdreef 46','3562 XB','Utrecht','Nederland','Hoofdlid','30-04-2018','','','','715','','','Toegestaan','Toegestaan'),
	(8523504,'Neisingh, N.C.H. (Nils)','M','2005','J','nils@neisingh.nl','030-6564616','06-55308015','Frederik Loewestraat 7','3543 CK','Utrecht','Nederland','Hoofdlid','30-09-2012','','1793','1681','1833','','','Toegestaan','Toegestaan'),
	(8683884,'Nooteboom, B.D.Q. (Bryce)','M','2008','J','martin.nooteboom@gmail.com','06-15013156','','Purpervlinderstraat 81','3544 VZ','Utrecht','Nederland','Hoofdlid','10-01-2016','','','','803','','','Toegestaan','Toegestaan'),
	(8717918,'Oudenallen, R.M.A. van (Rozemarijn)','V','2010','J','i.pescatore@live.nl','030-2411346','','Kantbloemsingel 36','3452 CM','Vleuten','Nederland','Hoofdlid','15-09-2016','','','','568','','','Toegestaan','Toegestaan'),
	(8807392,'Praveen, A. (Avyukt)','M','2010','J','ammu.jyothi@gmail.com','06-82395737','','Van Bijnkershoeklaan 8','3527 XL','Utrecht','Nederland','Hoofdlid','05-10-2018','','','','139','','','Toegestaan','Toegestaan'),
	(8781014,'Putten, J.D. van (Jelle)','M','2010','J','dianaosna@hotmail.com','06-30412939','','Witte de Withstraat 8','3454 XK','De Meern','Nederland','Hoofdlid','05-10-2017','','','','','','','Toegestaan',''),
	(8892840,'Rajesh, R. (Rishi)','M','2012','J','mikkererajesh@gmail.com','06-11431178','','Laurierweg 137','3541 RB','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8892829,'Rajesh, S. (Sonali)','V','2012','J','mikkererajesh@gmail.com','06-11431178','','Laurierweg 137','3541 RB','Utrecht','Nederland','Hoofdlid','21-02-2020','','','','','','','Toegestaan','Toegestaan'),
	(8722637,'Ramdien, R.S. (Ryan)','M','2010','J','dwsonai@hotmail.com','06-26838103','06-26916951','Frontoweg 6','3453 HB','De Meern','Nederland','Hoofdlid','27-09-2016','','','','784','','','Toegestaan','Toegestaan'),
	(8722626,'Ramdien, S.S. (Steven)','M','2008','J','dwsonai@hotmail.com','06-26838103','06-26916951','Frontoweg 6','3453 HB','De Meern','Nederland','Hoofdlid','27-09-2016','','','','1102','','','Toegestaan','Toegestaan'),
	(8772016,'Ramhiet, A. (Angelisha)','V','2009','J','sandrakhodabaks@hotmail.com','06-81976226','06-25348656','Corbulopad 10','3453 HG','De Meern','Nederland','Hoofdlid','01-09-2017','','','','201','','','Toegestaan','Toegestaan'),
	(8772027,'Ramhiet, R. (Rivano)','M','2011','J','sandrakhodabaks@hotmail.com','06-81976226','06-10655617','Corbulopad 10','3453 HG','De Meern','Nederland','Hoofdlid','27-06-2019','','','','189','','','Toegestaan','Toegestaan'),
	(8835211,'Riel, S.N. van (Sibren)','M','2012','J','bart.van.riel@gmail.com','06-81501781','06-45690473','Kolland 33','3452 NM','Vleuten','Nederland','Hoofdlid','03-12-2018','','','','105','','','Toegestaan','Toegestaan'),
	(8759377,'Roskam, L. (Luka)','M','2008','J','camiel.roskam@amsterdam.nl','06-11377713','06-24924239','Emmikkerboslaan 44','3454 NV','De Meern','Nederland','Hoofdlid','03-04-2017','','','','654','','','Toegestaan','Toegestaan'),
	(8759388,'Roskam, M. (Max)','M','2010','J','camiel.roskam@amsterdam.nl','06-11377713','06-24924239','Emmikkerboslaan 44','3454 NV','De Meern','Nederland','Hoofdlid','03-04-2017','','','','','','','Toegestaan','Toegestaan'),
	(8859147,'Sathish Kumar, M. (Mukilan)','M','2012','J','sathish.murugesan@gmail.com','06-87662129','','Claudiuslaan 99','3453 JC','De Meern','Nederland','Hoofdlid','14-11-2019','','','','119','','','Toegestaan','Toegestaan'),
	(8879365,'Schoenmakers, J. (Jan)','M','2011','J','phjschoenmakers@gmail.com','06-41237736','','Meerndijk 62','3454 HT','De Meern','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Toegestaan'),
	(8863415,'Schoonhoven, K.E. (Koen)','M','2013','J','anitakraaij@hotmail.com','06-12486118','','Paprikaweg 1','3541 SH','Utrecht','Nederland','Hoofdlid','03-09-2019','','','','','','','Toegestaan','Toegestaan'),
	(8513549,'Schoonhoven, L.J. (Laura)','V','2005','J','anitakraaij@hotmail.com','06-10633695','06-12480118','Paprikaweg 1','3541 SH','Utrecht','Nederland','Hoofdlid','06-06-2012','','1217','1056','937','','','Toegestaan',''),
	(8513560,'Schoonhoven, M.R. (Mark)','M','2004','J','anitakraaij@hotmail.com','06-16314216','06-12480118','Paprikaweg 1','3541 SH','Utrecht','Nederland','Hoofdlid','06-06-2012','','1513','1400','1453','','','Toegestaan','Toegestaan'),
	(8879354,'Selhorst, L.A. (Lars)','M','2013','J','jeroenselhorst@gmail.com','06-28884587','06-41368413','Boccacciopad 22','3543 BS','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Geweigerd'),
	(8657429,'Sietinga, T. (Tibbe)','M','2007','J','m_kleinhans@hotmail.com','06-13640918','06-24943368','Dennewitjeshof 24','3544 VN','Utrecht','Nederland','Hoofdlid','26-09-2015','','','','504','','','Toegestaan','Geweigerd'),
	(8809691,'Singaravadivelu, V. (Vishaal)','M','2010','J','singaravadivelu@gmail.com','06-34740664','','Androsdreef 32','3562 XA','Utrecht','Nederland','Hoofdlid','13-12-2018','','','','445','','','Toegestaan','Toegestaan'),
	(8834815,'Singh, A. (Aayush)','M','2010','J','ana.pandit@gmail.com','06-46283660','','Joan Mirostraat 44','3544 NS','Utrecht','Nederland','Hoofdlid','22-11-2019','','','','559','','','Toegestaan','Toegestaan'),
	(8807018,'Smeets, B. (Bent)','M','2011','J','carmen.paalman@gmail.com','06-28597488','06-14242288','Egelantierstraat 8','3551 GC','Utrecht','Nederland','Hoofdlid','19-07-2018','','','','513','','','Toegestaan','Toegestaan'),
	(8659420,'Smeets, K. (Kobe)','M','2008','J','jmhsmeets@gmail.com','06-14242288','06-28597488','Egelantierstraat 8','3551 GC','Utrecht','Nederland','Hoofdlid','18-03-2016','','1802','1755','1861','Stap 3','','Toegestaan','Toegestaan'),
	(8863668,'Smelik, S.P. (Stijn)','M','2007','J','marije.smelik@gmail.com','06-10532108','','Cole Porterplantsoen 6','3543 CD','Utrecht','Nederland','Hoofdlid','06-09-2019','','','','','','','Toegestaan','Toegestaan'),
	(8513571,'Snel, K.A. (Kasper)','M','2004','J','berend.snel@gmail.com','030-2444644','06-14541215','Pijlstaartvlinder 9','3544 DJ','Utrecht','Nederland','Hoofdlid','06-06-2012','','','','933','','','Toegestaan','Toegestaan'),
	(8828435,'Sonokromo, J.H.J. (Jordan)','M','2012','J','tamaracvm@hotmail.com','06-22827088','06-30329112','Secundusweg 7','3453 JL','De Meern','Nederland','Hoofdlid','14-10-2018','','','','175','','','Toegestaan','Toegestaan'),
	(8759905,'Stoppels, I. (Isabella)','V','2008','J','isabellastoppels@outlook.com','06-46143538','','Karl Millockerhof 7','3543 HV','Utrecht','Nederland','Hoofdlid','07-04-2017','','','','301','','','Toegestaan','Toegestaan'),
	(8759894,'Stoppels, V. (Victor)','M','2011','J','victorstoppels@outlook.com','06-46143538','','Karl Millockerhof 7','3543 HV','Utrecht','Nederland','Hoofdlid','07-04-2017','','','','330','','','Toegestaan',''),
	(8625606,'Thonon, L.G. (Liam)','M','2007','J','ivothonon@gmail.com','06-37333793','06-41507685','Byronstraat 16','3533 VX','Utrecht','Nederland','Hoofdlid','17-09-2017','','','','','','','Toegestaan','Toegestaan'),
	(6383751,'Tjiam, D.U.C. (Dharma)','M','1970','S','dtjiam@xs4all.nl','030-2676499','06-25100181','Amaliadwarsstraat 11','3522 AN','Utrecht','Nederland','Hoofdlid','01-09-2015','','2400','2399','','','','Toegestaan',''),
	(8828490,'Tran, I. (Inara)','V','2009','J','pelangi_care@yahoo.com','06-52251089','','Meredith Willsonstraat 67','3543 DM','Utrecht','Nederland','Hoofdlid','15-10-2018','','','','','','','Toegestaan','Toegestaan'),
	(8596962,'Ubbink, A.M. (Anouk)','V','2005','J','ruthubbink@hotmail.co.uk','0346-835144','06-24787216','Straatweg 74','3621 BR','Breukelen','Nederland','Hoofdlid','29-06-2016','','1351','1075','1186','','','Toegestaan','Toegestaan'),
	(8703827,'Ubbink, J.R. (Jesper)','M','2010','J','ruthubbink@hotmail.co.uk','0346-835144','06-24787216','Straatweg 74','3621 BR','Breukelen','Nederland','Hoofdlid','02-10-2017','','','','483','','','Toegestaan','Toegestaan'),
	(8732592,'Veen, E.S. van (Eva)','V','2010','J','svveenbatenburg@gmail.com','06-83224587','030-2766477','Karwijstraat 24','3544 CE','Utrecht','Nederland','Hoofdlid','17-09-2017','','','','','','','Toegestaan','Toegestaan'),
	(8751127,'Veen, N. van (Noah)','M','2007','J','haenvanveen@ziggo.nl','030-2328941','06-10655617','Beemdgrassingel 28','3452 CW','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','320','','','Toegestaan','Toegestaan'),
	(8761192,'Veling, J.J. (Jan)','M','2006','J','sanneveling@yahoo.com','06-29032151','06-51877623','Sculpturentuinlaan 16 16','3454 RG','De Meern','Nederland','Hoofdlid','03-12-2018','','','','419','','','Toegestaan','Toegestaan'),
	(8879376,'Verhoef, M.H. (Maxime)','M','2011','J','verhoefgricelda@gmail.com','06-81281102','','Jan Vogellaan 10','3451 SL','Vleuten','Nederland','Hoofdlid','14-11-2019','','','','','','','Toegestaan','Geweigerd'),
	(8879398,'Verhoef, S.A. (Sophie)','M','2012','J','verhoefgricelda@gmail.com','06-81281102','','Jan Vogellaan 10','3451 SL','Vleuten','Nederland','Hoofdlid','14-11-2019','','','','100','','','Toegestaan','Geweigerd'),
	(8812760,'Vikram, M. (Mihika)','V','2011','J','vikramdas77@gmail.com','06-49165394','06-27091316','Leo Fallplantsoen 36','3543 HH','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','224','','','Toegestaan','Toegestaan'),
	(8812771,'Vikram, M. (Mihir)','M','2011','J','vikramdas77@gmail.com','06-49165394','06-27091316','Leo Fallplantsoen 36','3543 HH','Utrecht','Nederland','Hoofdlid','14-11-2019','','','','382','','','Toegestaan','Toegestaan'),
	(8630963,'Visscher, Y. (Yannick)','M','2005','J','sandravandenbrom@hotmail.com','030-2322173','','Achtersloot 200','3401 NZ','IJsselstein','Nederland','Hoofdlid','06-03-2015','','','','954','','','Toegestaan','Toegestaan'),
	(8880003,'Vliet, N.D. van (Niels)','M','2011','J','ndvvliet@gmail.com','06-12978452','','Parkzichtlaan 108','3544 NV','Utrecht','Nederland','Hoofdlid','18-11-2019','','','','','','','Toegestaan','Toegestaan'),
	(8838082,'Wachter, J.C.J. (Jillano)','M','2006','J','glen.ren@hotmail.com','06-49291933','06-16383129','Komijnweg 13','3541 RK','Utrecht','Nederland','Hoofdlid','18-12-2018','','','','','','','Geweigerd','Geweigerd'),
	(8835101,'Wieberdink, N. (Nout)','M','2010','J','wieberdink@hotmail.com','06-44995390','06-41320312','Japansetuinlaan 11','3452 RV','Vleuten','Nederland','Hoofdlid','14-12-2018','','','','335','','','Toegestaan','Toegestaan'),
	(8396993,'Wilschut, F. (Frank)','M','1980','S','frank.wilschut@gmail.com','06-52803732','','Averkamplaan 17','3533 SK','Utrecht','Nederland','Hoofdlid','07-07-2019','','1976','1893','','','','Toegestaan','Toegestaan'),
	(8879596,'Winkel, S.T. (Stefan)','M','2011','J','carlaroosje@gmail.com','06-16948349','','Mattenbieslaan 31','3452 AC','Vleuten','Nederland','Hoofdlid','15-11-2019','','','','100','','','Toegestaan','Geweigerd'),
	(8883292,'Xu, A. (Alex)','M','2013','J','katarina2011m@gmail.com','06-28945257','','Woerdlaan 3','3454 VH','De Meern','Nederland','Hoofdlid','21-02-2020','','','','387','','','Toegestaan','Toegestaan'),
	(8883281,'Xu, N. (Nicholas)','M','2010','J','katarina2011m@gmail.com','06-28945257','','Woerdlaan 3','3454 VH','De Meern','Nederland','Hoofdlid','21-02-2020','','','','600','','','Toegestaan','Toegestaan'),
	(8767253,'Yucel, T. (Tuna)','M','2010','J','ayhan.yucel@outlook.com','06-43006048','','Tweede Oosterparklaan 257','3544 AS','Utrecht','Nederland','Hoofdlid','20-12-2017','','','','','','','Toegestaan','Toegestaan'),
	(8614628,'Zelke, D.B.F.M. (Dagomar)','M','2007','J','m.zelke@casema.nl','030-2439070','06-31626715','Oppenheimplein 5','3551 BN','Utrecht','Nederland','Hoofdlid','01-09-2017','','','','721','','','Toegestaan','Toegestaan'),
	(8713804,'Zhang, L.X.C.R. (Robin)','M','2008','J','yvonneyu35@gmail.com','030-6668819','06-43111782','Vlambloemlaan 35','3452 BV','Vleuten','Nederland','Hoofdlid','29-06-2016','','','','418','','','Toegestaan','Toegestaan'),
	(7297884,'Ziepzeerder, M. (Matthijs)','M','1975','S','m_ziepzeerder@hotmail.com','06-46880490','','Hermelijnvlinderdijk 132','3544 ZC','Utrecht','Nederland','Hoofdlid','25-10-2019','','1557','','','','','Toegestaan','Toegestaan'),
	(8805753,'Ziepzeerder, S.J.L. (Stijn)','M','2010','J','m_ziepzeerder@hotmail.com','06-46880490','06-23389698','Hermelijnvlinderdijk 132','3544 ZC','Utrecht','Nederland','Hoofdlid','07-03-2018','','','','542','','','Toegestaan','Toegestaan'),
	(8771994,'Zwam, T.K. van (Timo)','M','2009','J','martijn77vanzwam@hotmail.com','06-51480161','','Rotstuinlaan 14','3452 SC','Vleuten','Nederland','Hoofdlid','01-09-2017','','','','','','','Toegestaan','');

/*!40000 ALTER TABLE `olaimport` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table token_blacklist_blacklistedtoken
# ------------------------------------------------------------

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blac_token_id_3cc7fe56_fk_token_bla` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;

INSERT INTO `token_blacklist_blacklistedtoken` (`id`, `blacklisted_at`, `token_id`)
VALUES
	(1,'2020-04-19 18:57:05.489169',5),
	(2,'2020-04-22 18:07:02.158986',18),
	(3,'2020-04-24 12:04:01.311961',34),
	(4,'2020-04-25 18:47:03.126546',51),
	(5,'2020-04-28 15:02:02.210555',73),
	(6,'2020-04-28 15:02:45.387370',74),
	(7,'2020-05-01 16:03:03.638763',80),
	(8,'2020-05-05 18:59:35.507320',84),
	(9,'2020-05-06 16:02:18.672482',88),
	(10,'2020-05-06 16:03:31.333281',89),
	(11,'2020-05-06 16:12:51.617854',90),
	(12,'2020-05-10 08:28:08.101383',98),
	(13,'2020-05-10 08:29:05.810254',100),
	(14,'2020-05-10 16:48:22.956800',101),
	(15,'2020-05-31 07:35:27.680273',115),
	(16,'2020-06-21 07:03:19.663577',126),
	(17,'2020-06-21 09:59:58.057333',175),
	(18,'2020-06-21 15:50:48.874224',186),
	(19,'2020-06-22 12:28:42.273946',214),
	(20,'2020-08-12 08:48:43.613531',226),
	(21,'2020-08-12 08:50:23.583109',228),
	(22,'2020-08-12 11:25:32.238271',229),
	(23,'2020-08-12 11:25:52.947411',230),
	(24,'2020-08-12 11:26:42.789859',231),
	(25,'2020-08-12 11:27:03.390446',232),
	(26,'2020-08-12 11:27:29.784394',233),
	(27,'2020-08-12 11:27:47.465957',234),
	(28,'2020-08-12 11:39:45.919188',227),
	(29,'2020-08-12 11:44:16.521185',237),
	(33,'2020-08-23 14:43:25.800334',313),
	(43,'2020-08-28 13:09:45.517603',533),
	(45,'2020-08-29 18:18:57.154226',676),
	(46,'2020-08-29 19:07:06.096927',677),
	(47,'2020-08-30 14:00:51.593120',699),
	(48,'2020-08-30 14:04:24.982322',700),
	(49,'2020-08-30 14:07:45.040531',680),
	(50,'2020-08-30 14:08:00.923923',704),
	(51,'2020-08-30 15:04:58.365039',711),
	(52,'2020-08-31 12:21:54.101061',717),
	(53,'2020-09-02 11:32:29.912377',777),
	(54,'2020-09-02 11:52:40.010524',781),
	(55,'2020-09-02 11:54:11.048151',784),
	(56,'2020-09-02 12:06:17.574488',783),
	(57,'2020-09-02 17:54:10.136702',785),
	(58,'2020-09-03 11:00:32.190615',796),
	(59,'2020-09-03 11:22:34.384869',801),
	(60,'2020-09-03 16:18:37.156925',880),
	(61,'2020-09-03 19:49:04.571451',844),
	(62,'2020-09-04 10:28:47.096351',900),
	(63,'2020-09-04 19:27:23.983207',901),
	(64,'2020-09-09 18:39:12.064315',926),
	(65,'2020-09-09 18:53:30.164290',1018);

/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table token_blacklist_outstandingtoken
# ------------------------------------------------------------

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_magnus_us` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_magnus_us` FOREIGN KEY (`user_id`) REFERENCES `magnus_users_appuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`)
VALUES
	(1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzMwNzcyMiwianRpIjoiMzMwYWE4NmY3MmU1NDY1ZGI0MzJlNTM2NjYwZGVhMTAiLCJ1c2VyX2lkIjozfQ.XQ31v4U3XH-8bJj9qrVdP7-RIIb4WS1q2SV3c5udalw','2020-04-18 14:48:42.316176','2020-04-19 14:48:42.000000',3,'330aa86f72e5465db432e536660dea10'),
	(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzMwNzc3OCwianRpIjoiMGRmYzI4ZGRhYzJiNGU2NGFlNjI1MmRjMGI0YmM1YzIiLCJ1c2VyX2lkIjozfQ.lJ9Lo8XhQad5pUn3FR-S6fI_J4nlJ13-M4zqGbKaAHg','2020-04-18 14:49:38.697853','2020-04-19 14:49:38.000000',3,'0dfc28ddac2b4e64ae6252dc0b4bc5c2'),
	(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzMyODE5NCwianRpIjoiZmY3MGZkYmMwMzQ5NDIwZGFlZjg0MzZjMDYyOTVhMWYiLCJ1c2VyX2lkIjozfQ.prL8u5bMA2XqYao2ac1SMiI2jyeayNwsixM5G93yQOc','2020-04-18 20:29:54.099159','2020-04-19 20:29:54.000000',3,'ff70fdbc0349420daef8436c06295a1f'),
	(4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzM4Mjc3NSwianRpIjoiZWI4MTNhN2Y3M2MxNGE5ZmFmM2IwNzZhYWNiN2IxYmMiLCJ1c2VyX2lkIjozfQ.l3k4w-ZWrm8ryFB9ORD3Uzu4npDxBGciCpW9nq25dZs','2020-04-19 11:39:35.518743','2020-04-20 11:39:35.000000',3,'eb813a7f73c14a9faf3b076aacb7b1bc'),
	(5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzM4Nzk1NSwianRpIjoiODQxZWQzM2ZmMzczNDRkNDkzYTVmYmMzZTBjOTQ2ZDUiLCJ1c2VyX2lkIjoyfQ.xGiNv78faSqlVSPXpYSk3b-kfrMkAtTvc8NyjL9HOtg','2020-04-19 13:05:55.583694','2020-04-20 13:05:55.000000',2,'841ed33ff37344d493a5fbc3e0c946d5'),
	(6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzM5NTM1NywianRpIjoiZGM0MWM1YjIwMmQ5NDE0MDlhYzYxMGQwNDU4NDcwM2QiLCJ1c2VyX2lkIjozfQ.ITxDTkRnwqpKXPGetdN3jLag733Mkv3xnklcB-wCrJY','2020-04-19 15:09:17.449343','2020-04-20 15:09:17.000000',3,'dc41c5b202d941409ac610d04584703d'),
	(7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzQwODI2OSwianRpIjoiMWY0ZDVmZWRiOTY1NDBlNmFiYWMxY2I3MDRmOGEyMWUiLCJ1c2VyX2lkIjoyfQ.IBfjHrzz2YzdkEIyB5yRDecfUqkgZ_UndmPznc6LQo4','2020-04-19 18:44:29.946170','2020-04-20 18:44:29.000000',2,'1f4d5fedb96540e6abac1cb704f8a21e'),
	(8,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzQwOTA0NCwianRpIjoiYWNlNGFmMjA3ZGE4NDMzYzg4MmYxYzllYTM2NDJlMDMiLCJ1c2VyX2lkIjoyfQ.fvLYpFyweG70-1AYCJvQxGwhZxkZvl91BHraiPUjvXw','2020-04-19 18:57:24.880022','2020-04-20 18:57:24.000000',2,'ace4af207da8433c882f1c9ea3642e03'),
	(9,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzQxNDYyOSwianRpIjoiY2QxYThjNzI5OTJmNDFlYjlkZDhlMTAzYTE3YmM1NDMiLCJ1c2VyX2lkIjozfQ.7d9bgIEJOeS48b6SCe1qrHik1g1hF0rgCUv_D6bFW8Q','2020-04-19 20:30:29.729414','2020-04-20 20:30:29.000000',3,'cd1a8c72992f41eb9dd8e103a17bc543'),
	(10,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU3OTQwNiwianRpIjoiMjVjMGQwZTZhYWM1NDhjZWE4NDBkODIxNGYyNmMwNjQiLCJ1c2VyX2lkIjozfQ.bSdiNomqpfl10vvywg_Kv_aLONgFwB4gzgF82J9YSUA','2020-04-21 18:16:46.492997','2020-04-22 18:16:46.000000',3,'25c0d0e6aac548cea840d8214f26c064'),
	(11,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU3OTcyNCwianRpIjoiMTMzN2Y5ZTg2MjE3NGUxOGI2ODQzNWZmODg1MDRhZDgiLCJ1c2VyX2lkIjozfQ.HlFarz9BqZiRPZc9UgOu0iCPgVMs6RF9jfIyNbFU5Fk','2020-04-21 18:22:04.861300','2020-04-22 18:22:04.000000',3,'1337f9e862174e18b68435ff88504ad8'),
	(12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU4MDEyMCwianRpIjoiNWMxNmY2N2Q2NTNlNGJjMWFkN2EzMTA2MzMwNmVlODAiLCJ1c2VyX2lkIjo0fQ.jqZdOZl_gwj-ZM39uLXyT42CVpWLDRLr_KSp4q9oUdw','2020-04-21 18:28:40.885196','2020-04-22 18:28:40.000000',4,'5c16f67d653e4bc1ad7a31063306ee80'),
	(13,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU4MDgyMSwianRpIjoiM2NhYjg5ODgzOWQ0NDA4Y2E2NzQxZTNmYjQ2MjcwMDkiLCJ1c2VyX2lkIjo0fQ.j9dN-ejEDOgjVrE9npd5lInyYfb3VdOPHStX8Pzoveo','2020-04-21 18:40:21.805941','2020-04-22 18:40:21.000000',4,'3cab898839d4408ca6741e3fb4627009'),
	(14,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU4MTA0MCwianRpIjoiNjRhOWFjMjFkMzNjNDRhNWI3OGE5NjIxN2JiYzI2MmEiLCJ1c2VyX2lkIjoyMn0.doXBRgSJlghDahkS_kESPf5-WUTgEO4Ny7RlBY8PPpc','2020-04-21 18:44:00.447305','2020-04-22 18:44:00.000000',22,'64a9ac21d33c44a5b78a96217bbc262a'),
	(15,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU4MjI1MywianRpIjoiZDQwNzc5OTcxOGQ0NDlhZGJmMzk4YjE3NGRlN2UzM2MiLCJ1c2VyX2lkIjozfQ.Pi4wbwcaWzh4WIw4iJpWEPcaMhug_FTsZsxRmtzKV1E','2020-04-21 19:04:13.792689','2020-04-22 19:04:13.000000',3,'d407799718d449adbf398b174de7e33c'),
	(16,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzU4NTY2NiwianRpIjoiNTBhZTk2MWRhYmM3NDRlY2I4M2E4MjJlY2I5NDM2OTEiLCJ1c2VyX2lkIjozfQ.V7YZKkFytvBDR9GYASIFKSxNFVoOUGma_4NhCq7LDT8','2020-04-21 20:01:06.710144','2020-04-22 20:01:06.000000',3,'50ae961dabc744ecb83a822ecb943691'),
	(17,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzYyMDI0MCwianRpIjoiNmFlMjA5NDAzOWFjNGIxOTljOTViNDNmYWY1NWEwMmEiLCJ1c2VyX2lkIjoyM30.rh008471K03qlf8h8sTdTmWNsNa8zTVYUpEM2TshbYo','2020-04-22 05:37:20.522997','2020-04-23 05:37:20.000000',23,'6ae2094039ac4b199c95b43faf55a02a'),
	(18,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NTA1NywianRpIjoiODNiMTk0M2MyYzNmNGY3Y2E4Y2UzZWQxMzg3MTJmODciLCJ1c2VyX2lkIjo0fQ.e6FGyVOX7ZGY4XIZ41FE8Kfu-cXUDf31niwTvWD0DzI','2020-04-22 18:04:17.672980','2020-04-23 18:04:17.000000',4,'83b1943c2c3f4f7ca8ce3ed138712f87'),
	(19,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NTA4NywianRpIjoiOGNkNTdhZDI5YmI3NGE2OWEwZTYzNmRhNDYzNGIwZDMiLCJ1c2VyX2lkIjo0fQ.A5-iFTFURkjFNOckVqUoCUl47XFHc-sH2bZIa_dwsKA','2020-04-22 18:04:47.289555','2020-04-23 18:04:47.000000',4,'8cd57ad29bb74a69a0e636da4634b0d3'),
	(20,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NTEzMywianRpIjoiZmQ3MTNlYzkxYWViNGE0MDk0ZDNjZjY2YzYxMjdlN2UiLCJ1c2VyX2lkIjo0fQ.0ae1cYF8yZe8SyMpsm1Wn8Q384gKpROnkjO2Vj5QZZI','2020-04-22 18:05:33.766471','2020-04-23 18:05:33.000000',4,'fd713ec91aeb4a4094d3cf66c6127e7e'),
	(21,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NTQ4NSwianRpIjoiZWUxNWJlMjI2NDk0NDgzNjkxNmE3Y2NlODBkMjk5YzciLCJ1c2VyX2lkIjozfQ.q89uqhdBd9OMiPC__SbbKPZ-lzz85wz2UnQ8aWvVj5w','2020-04-22 18:11:25.629212','2020-04-23 18:11:25.000000',3,'ee15be2264944836916a7cce80d299c7'),
	(22,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NTY1MCwianRpIjoiMTE1ZTc2NWVhMTlkNDA0MDkwOWQ3YzViOGMzYjc4NTciLCJ1c2VyX2lkIjozfQ.q-YBqWm2IFPuIdCfQYtbVn9_lJL4tb9Buv2Kcfn2lng','2020-04-22 18:14:10.296994','2020-04-23 18:14:10.000000',3,'115e765ea19d4040909d7c5b8c3b7857'),
	(23,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NTkyNSwianRpIjoiYjBkNTVlZjAxZjkyNDZjNzhjY2FlMTJlNjZlNzEyYTUiLCJ1c2VyX2lkIjozfQ.zXZihK2rTEAav_jNMu3ntRHjYDiLo4q0_fqaVJRz0IA','2020-04-22 18:18:45.961038','2020-04-23 18:18:45.000000',3,'b0d55ef01f9246c78ccae12e66e712a5'),
	(24,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NjA2NywianRpIjoiMjhmN2I0ZjEzYjM3NDI5N2I3NzFkM2RjZmEwMTdlNjEiLCJ1c2VyX2lkIjozfQ.POeIPsdjH_iyEI71r-k_KbRaCruFohjALpiaGtQib6o','2020-04-22 18:21:07.292011','2020-04-23 18:21:07.000000',3,'28f7b4f13b374297b771d3dcfa017e61'),
	(25,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NjM5OCwianRpIjoiZTFhNjliODQyYTc5NGJiOTk0NmQ3NTIyNzM1ZDA0MTIiLCJ1c2VyX2lkIjozfQ.fmENE4TQogpattwKmx2NZgZYF1wjJ9MZ2Vj79I0SJUY','2020-04-22 18:26:38.959020','2020-04-23 18:26:38.000000',3,'e1a69b842a794bb9946d7522735d0412'),
	(26,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2NjU0NiwianRpIjoiNjMzMzQyNzBhYzQ1NGIwOGEwOTIzNWUwMDExZGRhYTQiLCJ1c2VyX2lkIjozfQ.02p9OfxkAaFaRTjQ6-y1WchMSbt-_nUUY3eBBV8XrXE','2020-04-22 18:29:06.579342','2020-04-23 18:29:06.000000',3,'63334270ac454b08a09235e0011ddaa4'),
	(27,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2Njc3NSwianRpIjoiODE1MzJhODYzNDdhNDhiOTllYzQwNjBlYWJkYjY1MWYiLCJ1c2VyX2lkIjozfQ.nZMqN6Tk7zKU3uvEDXpwZsybFvxAu8wtF1qvZ0tMHss','2020-04-22 18:32:55.162753','2020-04-23 18:32:55.000000',3,'81532a86347a48b99ec4060eabdb651f'),
	(28,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2Njg1MCwianRpIjoiZWMxNTlmODkwMjQxNDVlZTlkNTY1OWYzZGIxNmQ2MDgiLCJ1c2VyX2lkIjozfQ.90lx0AOX8aE14G-wv_TNBRKnQs24IczWL08KpkBv6WI','2020-04-22 18:34:10.797356','2020-04-23 18:34:10.000000',3,'ec159f89024145ee9d5659f3db16d608'),
	(29,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2ODY5NiwianRpIjoiNWI2MmRkMmRiMDIxNDA2MTgwNmUyMmRmNWMxYWJiYWQiLCJ1c2VyX2lkIjozfQ.KCkMF3FEVFCvqo17l4TZVKsDPtS6o6RKm8uBOeNTPOM','2020-04-22 19:04:56.161275','2020-04-23 19:04:56.000000',3,'5b62dd2db0214061806e22df5c1abbad'),
	(30,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2ODc0NiwianRpIjoiOTU2ZGE2OWI0MDkwNDA2ZDhmMDY0YmQ3NTQyOWRlZDciLCJ1c2VyX2lkIjozfQ.7fHQZbyUN1sxuYMnBZrWvKE1vhKyFCkdyF-VKH5n5X4','2020-04-22 19:05:46.020503','2020-04-23 19:05:46.000000',3,'956da69b4090406d8f064bd75429ded7'),
	(31,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY2ODkyNCwianRpIjoiYTg0YjFiNTJkMjNmNDYyM2EyMjllMGU1ZDBhZjc2YjAiLCJ1c2VyX2lkIjozfQ.PSzERqUi9zpbEVdafQnXyCg1SVpagQ2Iu7j1PZxshM4','2020-04-22 19:08:44.159021','2020-04-23 19:08:44.000000',3,'a84b1b52d23f4623a229e0e5d0af76b0'),
	(32,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzY3MDI0OCwianRpIjoiYTc3YTAzNjE2NDlhNDY2ZmJkYTdlZWZlZDM4ZjlkN2QiLCJ1c2VyX2lkIjozfQ.t3YhHW5yWIOwX99WkEXDu_56oGAuz3n8_t1lp67eXzI','2020-04-22 19:30:48.141537','2020-04-23 19:30:48.000000',3,'a77a0361649a466fbda7eefed38f9d7d'),
	(33,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzc0ODU1NywianRpIjoiNGVkNGZhMGFiNTFkNDg2YzhkNmJjNzU1OWEyZjY3YTEiLCJ1c2VyX2lkIjo0fQ.gzB3ZvB36ZfbdDBpnz3FSG_g6fVuUejBgN3_rO9MWLQ','2020-04-23 17:15:57.080042','2020-04-24 17:15:57.000000',4,'4ed4fa0ab51d486c8d6bc7559a2f67a1'),
	(34,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzgxNjE5NywianRpIjoiMjZhMTkxZGM1OWI3NDFhODkwZTJjNDYzY2U4OTRlNTIiLCJ1c2VyX2lkIjoxfQ.gJgX8NMc8vE3a2baVPsGmgNUnF8SNuM5HZq7mbxm1NI','2020-04-24 12:03:17.012025','2020-04-25 12:03:17.000000',1,'26a191dc59b741a890e2c463ce894e52'),
	(35,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzgxODQ3MSwianRpIjoiNmU4MjFjOGEyZjJmNDZlNGIzZDllMDc5NTYzYWRjOTgiLCJ1c2VyX2lkIjozfQ.In0_WM474TyaF5aVkkj_jzwpCxNOcDMEZQ-_d0DwziM','2020-04-24 12:41:11.763154','2020-04-25 12:41:11.000000',3,'6e821c8a2f2f46e4b3d9e079563adc98'),
	(36,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg4NDE3MywianRpIjoiOTZhYmJlNWRlODA4NDNhMjliNzAzM2M0M2JhM2NlMTAiLCJ1c2VyX2lkIjozfQ.rkO_MeuwqikF9m9VEkEh_Un74TOc2CuJNCc8_BYwbNg','2020-04-25 06:56:13.341013','2020-04-26 06:56:13.000000',3,'96abbe5de80843a29b7033c43ba3ce10'),
	(37,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzAxMSwianRpIjoiZTM3N2MzYzhmZWI2NDZkZTlkZmYzMjU3YmQ0ZjZjY2EiLCJ1c2VyX2lkIjoyM30._uUGPe7axOE9F82HhmpDA1YrP9OQghsXQjSf5Yhv9cI','2020-04-25 09:23:31.522068','2020-04-26 09:23:31.000000',23,'e377c3c8feb646de9dff3257bd4f6cca'),
	(38,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzAxMSwianRpIjoiMzlkOTFlNjBiYjM0NGVkNTgzODBmOWQzMDhkMzJhMGEiLCJ1c2VyX2lkIjoyM30.LcQoERImNT4J3u0gjnW4LAb1TReD97NfDdGnaIN1F5M','2020-04-25 09:23:31.971002','2020-04-26 09:23:31.000000',23,'39d91e60bb344ed58380f9d308d32a0a'),
	(39,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzAxMiwianRpIjoiYjI3NmRhZTNlMDczNGU5MmIwMDk1OTRhZTA3ODQyZGQiLCJ1c2VyX2lkIjoyM30.oeVH8vC7bhjADLP26CZ1PCsG5rgwtld9zMH4WIhY3MY','2020-04-25 09:23:32.332948','2020-04-26 09:23:32.000000',23,'b276dae3e0734e92b009594ae07842dd'),
	(40,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzIyNCwianRpIjoiNGRmMzNhNGI1ODg5NDJmN2FiNGM3ZDZlMTBiNzY3YzUiLCJ1c2VyX2lkIjoyM30.OvtuyaLA6aPGRUSZ7Y5WGriHXolkY0wdkyvoTaewaoc','2020-04-25 09:27:04.772902','2020-04-26 09:27:04.000000',23,'4df33a4b588942f7ab4c7d6e10b767c5'),
	(41,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzMwNiwianRpIjoiNmI5MDg1Y2I3YWMwNGZmOGI5YTk4MWNiN2I3NmNjZmEiLCJ1c2VyX2lkIjoyM30.-8Ql7V7I75bAO2mTRkqBLOCLHsIBVOpTz3aXpseMpXs','2020-04-25 09:28:26.571836','2020-04-26 09:28:26.000000',23,'6b9085cb7ac04ff8b9a981cb7b76ccfa'),
	(42,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzQzNSwianRpIjoiMjAwZTk4NWY2ZmNmNDlhZTlhNDNlNDU5ZGJkZmUwODAiLCJ1c2VyX2lkIjoyM30.OyDw9oKNIIb71sCnt-xn2gCxI2lrKIkNRdw5V0u5mZA','2020-04-25 09:30:35.094137','2020-04-26 09:30:35.000000',23,'200e985f6fcf49ae9a43e459dbdfe080'),
	(43,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzY1OCwianRpIjoiMWM4ODE2NmU3YjVjNGEyMGJjOWNlZDJmMmNiODQ2M2YiLCJ1c2VyX2lkIjoyM30.UlKXqch5OfOvDnF-S1Tr9z_uZYi5O0csv7AqvEwNZRg','2020-04-25 09:34:18.258837','2020-04-26 09:34:18.000000',23,'1c88166e7b5c4a20bc9ced2f2cb8463f'),
	(44,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5MzY5NCwianRpIjoiMDU5NDFlNmQyNWE0NDQ0NmIyZTI0MjFjYmVlOGRjYWUiLCJ1c2VyX2lkIjoyM30.mX3TOu8AZrEdMLTsGPWn_-KC1ymHZGlOyvyAmBh72Z0','2020-04-25 09:34:54.889467','2020-04-26 09:34:54.000000',23,'05941e6d25a44446b2e2421cbee8dcae'),
	(45,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5Mzk2OSwianRpIjoiODExOTFjMzFlMGYxNDkxODhhNThhMDM2MTg3MzI3Y2YiLCJ1c2VyX2lkIjoyM30.QutzIUQFpJ7LIQnFzgb35AD_L2G63I2aooDaajZEsJg','2020-04-25 09:39:29.194884','2020-04-26 09:39:29.000000',23,'81191c31e0f149188a58a036187327cf'),
	(46,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5Mzk3OSwianRpIjoiNDQ4N2FlOTQ0MmExNDFmYWJiODQzNTBjMzg4N2VlNjUiLCJ1c2VyX2lkIjoyM30.RBtlEKZmmqQJN_bEXux7JnAbBpMvA-1ThHJildu1YUU','2020-04-25 09:39:39.827758','2020-04-26 09:39:39.000000',23,'4487ae9442a141fabb84350c3887ee65'),
	(47,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5NDAwMCwianRpIjoiZDQ5NjJkNjI1NGU1NDhkYmEwMTVmNzIyYTU5Yzg2MjciLCJ1c2VyX2lkIjoyM30.QyreWHgl8tN06zDU1UPRUYqYyyTr24BUYv-D27FOHvY','2020-04-25 09:40:00.922164','2020-04-26 09:40:00.000000',23,'d4962d6254e548dba015f722a59c8627'),
	(48,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5NDI4OCwianRpIjoiY2I4Njk0OTA4ODk2NGQwYmE1YjM1ZDQ2YjU3MDY1YTYiLCJ1c2VyX2lkIjoyM30.abmxSfZ_PRBZ-n-PL1SpBYXLenXs_KENUSuKGbfrLvw','2020-04-25 09:44:48.278936','2020-04-26 09:44:48.000000',23,'cb86949088964d0ba5b35d46b57065a6'),
	(49,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4Nzg5NDQyOSwianRpIjoiYWRhOTZlMzg5MmE2NDRmYzhlYzkwM2ExZWY1MWI3YTUiLCJ1c2VyX2lkIjoyM30.tVoRKdbK9L-OE3zBHR6vJ63TH6_PjyVhzHDBYoy-tJ4','2020-04-25 09:47:09.958421','2020-04-26 09:47:09.000000',23,'ada96e3892a644fc8ec903a1ef51b7a5'),
	(50,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzkyNjI3OSwianRpIjoiNWVhZGU1ZTRjYTNkNGFjNmIzZjYxNTBlYjQ1MzgyYmIiLCJ1c2VyX2lkIjozfQ.KMYmweV2cERhRdZt-k-J6OfcupkiS6sSYuLrlzTT49E','2020-04-25 18:37:59.078759','2020-04-26 18:37:59.000000',3,'5eade5e4ca3d4ac6b3f6150eb45382bb'),
	(51,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzkyNjMxNywianRpIjoiNWVmYTE2ZWJjYWQyNDFiYmJkNjZkY2YzNWFkNmQ4ODciLCJ1c2VyX2lkIjozfQ.-5nOUdTK8SaHlO8WlLiWm5o3_fTiLv4OhInU-MBKeYk','2020-04-25 18:38:37.617208','2020-04-26 18:38:37.000000',3,'5efa16ebcad241bbbd66dcf35ad6d887'),
	(52,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzkyNjQ1MSwianRpIjoiZTAwYmU0YzVlNzM5NGI1OTk5ZTE4NmZiODVlNTQ4M2UiLCJ1c2VyX2lkIjozfQ.e2-pr-E2SoyaFZ5fFTJaJe92GYMMNR32KiFZTsq1pGE','2020-04-25 18:40:51.036125','2020-04-26 18:40:51.000000',3,'e00be4c5e7394b5999e186fb85e5483e'),
	(53,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4NzkyNjgzNiwianRpIjoiNTdhZWQ1NTE4YzdjNDY3OTllZGRmMjE1YjMzMWM5MWQiLCJ1c2VyX2lkIjozfQ.bdd_xpwR0Bjj02sfiZsTXY0QaNTKitpowcEnTYSgbWY','2020-04-25 18:47:16.816053','2020-04-26 18:47:16.000000',3,'57aed5518c7c46799eddf215b331c91d'),
	(54,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODAwNDExNywianRpIjoiZTUwN2E4ZmIxZTIwNDc4NDhkYmNhMGQyZTRjMzY3NGUiLCJ1c2VyX2lkIjozfQ.QCpPAJyYcwCdZ51ZptCpn7B9R86T_6N3por6dQIVWyA','2020-04-26 16:15:17.297977','2020-04-27 16:15:17.000000',3,'e507a8fb1e2047848dbca0d2e4c3674e'),
	(55,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODAxNzY3MiwianRpIjoiNDY1OTc2MTk5OWZjNDRiZmE4MDlkOGQ3MmJjY2ViNWYiLCJ1c2VyX2lkIjozfQ.YHNKewAxDlolHmfnOU3JsN_2g8WnpP1Sr27nRdpGj7Y','2020-04-26 20:01:12.650735','2020-04-27 20:01:12.000000',3,'4659761999fc44bfa809d8d72bcceb5f'),
	(56,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1NzU3NiwianRpIjoiZTFlNjgzNWQ2ZDZjNDA2Mjg4NzBmMTQzNjg2Yzg4NmYiLCJ1c2VyX2lkIjozfQ.pI1en3mscCi0nOfP7KAwHU_TVf0gP_yBTq5HEnJqWVk','2020-04-27 07:06:16.658876','2020-04-28 07:06:16.000000',3,'e1e6835d6d6c40628870f143686c886f'),
	(57,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODUzOCwianRpIjoiNWI3MTVlMWZlOWVkNGUyYzk4ZTJhZmJhNGQ0MDllNmYiLCJ1c2VyX2lkIjozfQ.2y_PZONigGs_Y2lnpBtcBoFFzt2-s_bVG6L57Hp-zgk','2020-04-27 07:22:18.136618','2020-04-28 07:22:18.000000',3,'5b715e1fe9ed4e2c98e2afba4d409e6f'),
	(58,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0MSwianRpIjoiMjdlYWFlZTRhNDQ1NDY1NmJmZTA4YjQ1MWRjMGYwMjQiLCJ1c2VyX2lkIjozfQ.Dh4VMTvMc5G_PJjfhVsWkh8cr8KJNVHY_dWLYjAPlHw','2020-04-27 07:22:21.918641','2020-04-28 07:22:21.000000',3,'27eaaee4a4454656bfe08b451dc0f024'),
	(59,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0MywianRpIjoiYzRkNzIzZGNhODE4NGFjNWFjNWRjYWJkYmI2MDVlYzkiLCJ1c2VyX2lkIjozfQ.6NUFwbsghvGJfeaYUSc7tVsE_Q-q-_QA5Y68cg03x5Y','2020-04-27 07:22:23.028082','2020-04-28 07:22:23.000000',3,'c4d723dca8184ac5ac5dcabdbb605ec9'),
	(60,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0MywianRpIjoiZjQyMWZiYzNkZDhjNGZmODhhMDE4YTkyZmI4YzYxMDAiLCJ1c2VyX2lkIjozfQ.yLmYGqVtMKzCkz3_8crvS1qYqDzYxrq1WaHNRdhLiag','2020-04-27 07:22:23.508360','2020-04-28 07:22:23.000000',3,'f421fbc3dd8c4ff88a018a92fb8c6100'),
	(61,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0MywianRpIjoiMzJkY2QwM2MxNzk4NGUyNWE4MDc5MjFhZWQ2YjNhY2MiLCJ1c2VyX2lkIjozfQ.tG7Tzt8nD0BWkqzSzx-PJKOzWL17cF0eG70GrayFmCk','2020-04-27 07:22:23.707322','2020-04-28 07:22:23.000000',3,'32dcd03c17984e25a807921aed6b3acc'),
	(62,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NCwianRpIjoiZDkxMTUyNjkyNjU5NGRlNjg0M2YyZDUzNDY4MzEwMjMiLCJ1c2VyX2lkIjozfQ.bFWTvCPZbEpFgtH4FNUIAJXzb9THOmPn6csiWocXzAU','2020-04-27 07:22:24.431303','2020-04-28 07:22:24.000000',3,'d911526926594de6843f2d5346831023'),
	(63,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NCwianRpIjoiOTk0MDNkMmVmOTE0NGNlMTg4NWZjMWYwYWE0ODQ3MjMiLCJ1c2VyX2lkIjozfQ.WdEMhCIeF_dlmtQRmv3KX4XCSK8oFsludqnbwlKAxUg','2020-04-27 07:22:24.629694','2020-04-28 07:22:24.000000',3,'99403d2ef9144ce1885fc1f0aa484723'),
	(64,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NCwianRpIjoiYmVkOWU4NzVjNDIwNDE3M2E0NGM5ZDUzNjUwMjViNzMiLCJ1c2VyX2lkIjozfQ.3YGolw7A3uzCm8FIsaJmALQB5RrlzZC2AcqeOW6Qcyw','2020-04-27 07:22:24.602543','2020-04-28 07:22:24.000000',3,'bed9e875c4204173a44c9d5365025b73'),
	(65,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NSwianRpIjoiNDAzZWQ1NDQ3OGUzNGJiODk1MDllMTMzNGRmZjhiNjYiLCJ1c2VyX2lkIjozfQ.I857DgsujmT8tXj23s5YzkHRAjdS0eGFX8Ua9X5THB0','2020-04-27 07:22:25.386716','2020-04-28 07:22:25.000000',3,'403ed54478e34bb89509e1334dff8b66'),
	(66,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NSwianRpIjoiYzk0YTlkZGI5N2NmNDlhMDhiYmNjODE3YzdhNDA0NzMiLCJ1c2VyX2lkIjozfQ.7JcSp2duKX64qxKilzfIk8Oku18voZraY44UIezZB9A','2020-04-27 07:22:25.610307','2020-04-28 07:22:25.000000',3,'c94a9ddb97cf49a08bbcc817c7a40473'),
	(67,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NiwianRpIjoiN2UwMjZkOGQ5ZmMwNDA2NWEzODE0NmY1MDk5ZjQxZjYiLCJ1c2VyX2lkIjozfQ.2tdAJEyrEagsCl__68uT0GYVghN4vgVQRKBQ4oh9agM','2020-04-27 07:22:26.225776','2020-04-28 07:22:26.000000',3,'7e026d8d9fc04065a38146f5099f41f6'),
	(68,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU0NywianRpIjoiZTM4MDkxYmFmZWExNDYzZTllYzgzZDNjMGU5YzYwMDQiLCJ1c2VyX2lkIjozfQ.TyFTPuKFKNn3jYaM1UW2zW3MIo6LElNnUXr-7nGn28M','2020-04-27 07:22:27.870933','2020-04-28 07:22:27.000000',3,'e38091bafea1463e9ec83d3c0e9c6004'),
	(69,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU2MywianRpIjoiOTdkZGMyOTU1N2M3NGRiMTgzYTc5NGI5MmQzNGIxNTYiLCJ1c2VyX2lkIjozfQ.Poi_0RX5XSKltZVhxGrS5f6IwTkfIaex3ydZFkX6Z2g','2020-04-27 07:22:43.451010','2020-04-28 07:22:43.000000',3,'97ddc29557c74db183a794b92d34b156'),
	(70,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODU4OSwianRpIjoiODkwYTg1YzhjZjgwNGQ1Njk2ZjVkNWViMzEyMDMxNjMiLCJ1c2VyX2lkIjozfQ.tgMALreqcx-iCy_-FYbvTZTYy-EjCMYGrDHF_SUhF_Y','2020-04-27 07:23:09.384575','2020-04-28 07:23:09.000000',3,'890a85c8cf804d5696f5d5eb31203163'),
	(71,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODA1ODcxNSwianRpIjoiMGQ5Yzc5NzdhMzUyNGI0Zjg1NTgyMmIzYjA2YTFhNzIiLCJ1c2VyX2lkIjozfQ.tWYMY8MzQWdJbpBV3eVoX8j305HQx0jiUgrmN0BG1Gw','2020-04-27 07:25:15.175453','2020-04-28 07:25:15.000000',3,'0d9c7977a3524b4f855822b3b06a1a72'),
	(72,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODE1ODMwNywianRpIjoiMmQ4ZDAyYjBjZDEyNDE5ZjhjOGZjY2I3Njg2MTRmNzMiLCJ1c2VyX2lkIjozfQ.wfVBGcMkSN0WKxCCXEedhC8Yeoh5vaTWopG7zcSPy_0','2020-04-28 11:05:07.587332','2020-04-29 11:05:07.000000',3,'2d8d02b0cd12419f8c8fccb768614f73'),
	(73,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODE2MDg0NSwianRpIjoiM2E4ZDQ0YjU0MTkzNGZhMTlhMWJjZDcwODNkOThkNGEiLCJ1c2VyX2lkIjozfQ.JtpYHIX-9dMHcHhoowAGBnaD6pYTZd7o--yjFgNMMUI','2020-04-28 11:47:25.477049','2020-04-29 11:47:25.000000',3,'3a8d44b541934fa19a1bcd7083d98d4a'),
	(74,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODE2MDkzOSwianRpIjoiOTYxNmFkNGVkNjY4NGQzN2EyMjQyNzFhMDU1OTFiYzUiLCJ1c2VyX2lkIjozfQ.Mn3kdOPx3hXp0241pSwvvTCEn5ZCOUEaq8sAk16nl7I','2020-04-28 11:48:59.377793','2020-04-29 11:48:59.000000',3,'9616ad4ed6684d37a224271a05591bc5'),
	(75,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODE3MjUzOSwianRpIjoiZTMxNzdkNjJkNjJjNDgzNWJjMDhkYjFkMjk3YTU1ZmYiLCJ1c2VyX2lkIjozfQ.r69COup6D-P7Oc8uzf9p2ac30Vzd05fZH2powwDDh8Y','2020-04-28 15:02:19.317135','2020-04-29 15:02:19.000000',3,'e3177d62d62c4835bc08db1d297a55ff'),
	(76,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODE3MjU4NSwianRpIjoiNzJhZDBmNzlmZDgwNGI5YmI1NDgyYWEwZDk2OGNmNzQiLCJ1c2VyX2lkIjozfQ.KA6XR8Kr9xRB1ikMNbRNmER59bXFOtYeTkKq3onz9b4','2020-04-28 15:03:05.704667','2020-04-29 15:03:05.000000',3,'72ad0f79fd804b9bb5482aa0d968cf74'),
	(77,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODE5MzUyNiwianRpIjoiMDY4NDZkODk4MGRmNGMyOTgzN2IzMWJkZTliZjYzMjYiLCJ1c2VyX2lkIjoyfQ.yWwoloHS4-rdF7KZpbsYvBvLAgem99cNkO3p3byXbUM','2020-04-28 20:52:06.961843','2020-04-29 20:52:06.000000',2,'06846d8980df4c29837b31bde9bf6326'),
	(78,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODI3MDcwNywianRpIjoiMGM4YTNhYTVmYTdiNDYzM2FhYmU0ZTc1NzU4ZDIxMWIiLCJ1c2VyX2lkIjozfQ.3CVqnzByAtyhqEdMbvhhnTdoO7bg53AyLbwjJp8872o','2020-04-29 18:18:27.419209','2020-04-30 18:18:27.000000',3,'0c8a3aa5fa7b4633aabe4e75758d211b'),
	(79,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODI4MzQ5NywianRpIjoiNDVmZjgwYTllMWZlNDViZjgzMGIxYWRhNmMwNTBhN2QiLCJ1c2VyX2lkIjoyfQ.HWdr5ciGXuLYzaXLIfkenOuMMl8JEAS1ZGpBx1_jc9E','2020-04-29 21:51:37.646701','2020-04-30 21:51:37.000000',2,'45ff80a9e1fe45bf830b1ada6c050a7d'),
	(80,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODQzNTM2NywianRpIjoiNDg3Y2MyNDMzNzg0NGQ3YTg2ZTZjNWRkMjlhN2IzOTgiLCJ1c2VyX2lkIjo0fQ.PndWVLMHNdM3wialMSDgtNSoT-vhPLmrKT5WIZp9WQw','2020-05-01 16:02:47.510770','2020-05-02 16:02:47.000000',4,'487cc24337844d7a86e6c5dd29a7b398'),
	(81,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODQzNTM4NiwianRpIjoiYzJiOTUyYmVhZDYzNGMzNzllY2JkZTZlYzdiMjVhOTQiLCJ1c2VyX2lkIjozfQ.DAJvFWBaopsRmL5uU4R_i3DFQFECzYbJbEtHmTTBcC4','2020-05-01 16:03:06.348930','2020-05-02 16:03:06.000000',3,'c2b952bead634c379ecbde6ec7b25a94'),
	(82,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODU5NDYxOCwianRpIjoiZWU5NTg1NWQyYzVlNDczMWFiNjBhMGVlNWMwMmU5NGMiLCJ1c2VyX2lkIjozfQ.Poehoy9inq39xV_iEaj_nzVJi1Pe4zoQXmHXfRNbUuk','2020-05-03 12:16:58.525011','2020-05-04 12:16:58.000000',3,'ee95855d2c5e4731ab60a0ee5c02e94c'),
	(83,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODYxNDg1MCwianRpIjoiYjE0ZDQ0Yzc4MjJlNDNkNWIxYzVkYzNjMWEyMjgxNGUiLCJ1c2VyX2lkIjozfQ.eynuWkt9KLdIYcChLaXQrsG8-DIYC3TkKsWgtgn1fLQ','2020-05-03 17:54:10.616605','2020-05-04 17:54:10.000000',3,'b14d44c7822e43d5b1c5dc3c1a22814e'),
	(84,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODc1MzM5NywianRpIjoiMjEwN2JiY2FmNGI2NGZhZDhkNDc3NjRhODlkNjEyNmUiLCJ1c2VyX2lkIjozfQ.bV61KNBXYEsyM6gMYB7ebxcpraMmea3-LjpHB-96WPQ','2020-05-05 08:23:17.794405','2020-05-06 08:23:17.000000',3,'2107bbcaf4b64fad8d47764a89d6126e'),
	(85,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODc1MzQ2MiwianRpIjoiZTU1Y2VmOGNmZjY4NDU5YWI3MGRhZjRlN2EzMDY2MzUiLCJ1c2VyX2lkIjozfQ.2lD6EMykbL7keAXksqnv4CeteFgbVP0TbAxTdlY6PvM','2020-05-05 08:24:22.217774','2020-05-06 08:24:22.000000',3,'e55cef8cff68459ab70daf4e7a306635'),
	(86,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODc5MTQzNiwianRpIjoiY2Q5ZjJkMDcwMDViNGFkOThmY2U3NmYwNzZhNzJkZWQiLCJ1c2VyX2lkIjozfQ.pZIxeK0ixyvtQwyvWeQmoUlHRwsEnhkSuj5ZJJoqaOM','2020-05-05 18:57:16.277549','2020-05-06 18:57:16.000000',3,'cd9f2d07005b4ad98fce76f076a72ded'),
	(87,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODc5MTU3OCwianRpIjoiODdkYTlkNmFkMjU3NDc5NDlmZTNkMzMxNWY1NmJmMjYiLCJ1c2VyX2lkIjozfQ.4aNULqTib5bkHdTl_DcfZZOYspqk8lsT2eGSp7uUVsA','2020-05-05 18:59:38.501512','2020-05-06 18:59:38.000000',3,'87da9d6ad25747949fe3d3315f56bf26'),
	(88,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg1ODkzNiwianRpIjoiNDI1YzY2NGZiNTM1NGZmMzg4Nzk1ZGM4Njg1MGUyOTkiLCJ1c2VyX2lkIjozfQ._NXEUmg7AGBXC0UgWGl09O3J_7AkJcRXwecsoHSL-s4','2020-05-06 13:42:16.939274','2020-05-07 13:42:16.000000',3,'425c664fb5354ff388795dc86850e299'),
	(89,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg1ODk2NywianRpIjoiOGMwMTIzZjQxYzNlNGFmM2JiN2VhZGI2YTRkNzYwMmEiLCJ1c2VyX2lkIjozfQ.LZxdozj9SrmpcKEYfQhq96ohqQkLw6kq8gtFz91HYKo','2020-05-06 13:42:47.344088','2020-05-07 13:42:47.000000',3,'8c0123f41c3e4af3bb7eadb6a4d7602a'),
	(90,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg2NzM0MywianRpIjoiOWI1MGNkZDljNjhiNDdjNGFlYjI5ZDI2M2M5M2YxNTciLCJ1c2VyX2lkIjozfQ.RoGn3gT82qGZlK8Ht_HUwtptvNOd_B6sf0aTb6b3ExY','2020-05-06 16:02:23.563777','2020-05-07 16:02:23.000000',3,'9b50cdd9c68b47c4aeb29d263c93f157'),
	(91,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg2NzQxNywianRpIjoiYTEwOTRlZGE0NDk1NGY4NmIzZTljYTMyZmRlOGUxMWEiLCJ1c2VyX2lkIjozfQ.AUY4kd5qTVKXDZnZc9LNY_iRm3meQ7-bO3vsI1q_qLs','2020-05-06 16:03:37.286606','2020-05-07 16:03:37.000000',3,'a1094eda44954f86b3e9ca32fde8e11a'),
	(92,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg2Nzk3OCwianRpIjoiODJiN2U3Y2NiYTkwNDY1MmFhOWJkNDBjOTc4Nzc2MTciLCJ1c2VyX2lkIjozfQ.6Y0W5y5oPgt3B5lGNhbJXjLlJ3gsEJoujE5O_0yV4OI','2020-05-06 16:12:58.434305','2020-05-07 16:12:58.000000',3,'82b7e7ccba904652aa9bd40c97877617'),
	(93,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg2ODAyMywianRpIjoiZGViYWFhMmYwMjNlNDUzNThhOTM0MzllYjVhM2JmODAiLCJ1c2VyX2lkIjozfQ.8Ixmx7fI8ew_gownyOSqLSRPFZgMb7c8beUK4hzekyU','2020-05-06 16:13:43.755901','2020-05-07 16:13:43.000000',3,'debaaa2f023e45358a93439eb5a3bf80'),
	(94,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODg3MzA2NiwianRpIjoiYjJhYWQ3MmM2ZTFkNDY3NGIzMDQ5MTcyNjllODk1NTAiLCJ1c2VyX2lkIjozfQ.refbbHT3vuZEnkHYA6pUtd69yPrbMG15VzAwxfszs7w','2020-05-06 17:37:46.491449','2020-05-07 17:37:46.000000',3,'b2aad72c6e1d4674b304917269e89550'),
	(95,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4ODk2NzI1MywianRpIjoiZTU5MDg1YjY4NGZiNDUwOTllZmE4MmQyOTdlMWVlNGMiLCJ1c2VyX2lkIjozfQ.dj5eXKkDNT4hBABwgWjLXsiovlE0FQxcWgwgdHXw_Hw','2020-05-07 19:47:33.883131','2020-05-08 19:47:33.000000',3,'e59085b684fb45099efa82d297e1ee4c'),
	(96,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTA0MTc2OSwianRpIjoiZTJkNTBkYWRkMGQyNDVmNzkyNDE2ODRlNDNlYjQ5ODAiLCJ1c2VyX2lkIjozfQ.GQwhLEJAuapYx0CjRkk8gfTPKRnIHb7Onco-Lj_lM6I','2020-05-08 16:29:29.919740','2020-05-09 16:29:29.000000',3,'e2d50dadd0d245f79241684e43eb4980'),
	(97,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTE3ODIxMSwianRpIjoiNWU1N2IxZjNkYjIxNGJhYzhhYjBkYjYyYjBhY2Q3NGYiLCJ1c2VyX2lkIjozfQ.A9EsK672jjx3s5zjbzx7oa_nD31w3-1_9dBVoueC6x8','2020-05-10 06:23:31.757359','2020-05-11 06:23:31.000000',3,'5e57b1f3db214bac8ab0db62b0acd74f'),
	(98,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTE3ODI4OSwianRpIjoiM2UzMzgxNmQ0YWE2NDU2Mjg1MmY5NDljZTA2MDRkZWQiLCJ1c2VyX2lkIjozfQ.vsLdphj_S70HOlFL_Kbg_jKvpvS_0yjiCGRvgPQAN5k','2020-05-10 06:24:49.592571','2020-05-11 06:24:49.000000',3,'3e33816d4aa64562852f949ce0604ded'),
	(99,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTE3ODMyMywianRpIjoiMWQzYTM1ZDIxOTFmNDdjZTliZGFmOTZkY2M5YmEzYzMiLCJ1c2VyX2lkIjozfQ.uBn9QPo7p-5qT8FDxCga7LrE2Iz-4KhNwx2km7dR0v8','2020-05-10 06:25:23.719334','2020-05-11 06:25:23.000000',3,'1d3a35d2191f47ce9bdaf96dcc9ba3c3'),
	(100,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTE4NTY5NiwianRpIjoiNzZjMDI5NzgyMGZiNGQxNzkwYWRiNTFmYWQ5NDU5NTEiLCJ1c2VyX2lkIjozfQ.MZdMCWekVH4KqyQeRpB07mR0aQ266d61NqOfjpWDnoc','2020-05-10 08:28:16.435466','2020-05-11 08:28:16.000000',3,'76c0297820fb4d1790adb51fad945951'),
	(101,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTE4NTc1NSwianRpIjoiYWI1MmM2MWMzYzZhNGFkZWFlNmUyYTM1YWI0MGEyNGYiLCJ1c2VyX2lkIjozfQ.ArUk5B1UMokext9Li1z58mqDZAfIQzunXaZttWHeZpA','2020-05-10 08:29:15.280640','2020-05-11 08:29:15.000000',3,'ab52c61c3c6a4adeae6e2a35ab40a24f'),
	(102,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTE4NTc4MCwianRpIjoiZDkzMGU2MjhhNDkyNDU3YThlMDEyNWNkZWRjMWI4ZDgiLCJ1c2VyX2lkIjozfQ.oNeh5BKOPjf0UuF4Lcz0TZnSBu5_aPJbW9oaqi71IJY','2020-05-10 08:29:40.383518','2020-05-11 08:29:40.000000',3,'d930e628a492457a8e0125cdedc1b8d8'),
	(103,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTIxNTcxOCwianRpIjoiNjZkODEzZGZjMmQxNGJjNTk2YmYyOWQwYjkyOGU2OGYiLCJ1c2VyX2lkIjozfQ.9298-rtJOyNXxis4rly1Ybk8Y4kcZZ_giviuh1N6ubo','2020-05-10 16:48:38.651614','2020-05-11 16:48:38.000000',3,'66d813dfc2d14bc596bf29d0b928e68f'),
	(104,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU4OTIxNTg1NywianRpIjoiNGRmYjcyMGJkZDJiNGNjNTkxZmZkMDk1YTMyODBlY2MiLCJ1c2VyX2lkIjozfQ.wraBxLv6Hf6S-VA6KGiCQnXcTqPR2ggkZXH5AyUqo-0','2020-05-10 16:50:57.206407','2020-05-11 16:50:57.000000',3,'4dfb720bdd2b4cc591ffd095a3280ecc'),
	(105,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDE0MTQ4NiwianRpIjoiNWFmNjUwOGI2OTY5NGFjMzhjYTczYzllZGI2OThjZWMiLCJ1c2VyX2lkIjozfQ.4KMG8HeHKWkkDe8B4KVXKXs5xSWj-A8FrQMUWG2tdUs','2020-05-21 09:58:06.151034','2020-05-22 09:58:06.000000',3,'5af6508b69694ac38ca73c9edb698cec'),
	(106,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDMxMzgwNiwianRpIjoiZGE1MjgyYzZhYzhjNGRmZDlhNGZkYjg2ZjIzZmI3ZGIiLCJ1c2VyX2lkIjoyM30.dTqeIxGGVuYyTVPIEdQKMVoblvFqEpIiu_y_Izc5qgs','2020-05-23 09:50:06.924561','2020-05-24 09:50:06.000000',23,'da5282c6ac8c4dfd9a4fdb86f23fb7db'),
	(107,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDMyODMwMywianRpIjoiMGM4YWRmMGVjMmEwNDFmYmJkZDQ2YjExYWU1YmQ0NTciLCJ1c2VyX2lkIjozfQ.T8qPDFnmFKAo25Bl7Qqaw-R88rEtoTKjD8C5IHDXj4k','2020-05-23 13:51:43.857029','2020-05-24 13:51:43.000000',3,'0c8adf0ec2a041fbbdd46b11ae5bd457'),
	(108,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDMyODYyMywianRpIjoiMzI2YzFmNjNmNmIzNDNiYTkyZWUzMTUyMzUyNDY1OWEiLCJ1c2VyX2lkIjozfQ.bzPyssEN1g5bJjl2uW8r-MxAF8C63Dxhv0K4G9XFh4g','2020-05-23 13:57:03.800945','2020-05-24 13:57:03.000000',3,'326c1f63f6b343ba92ee31523524659a'),
	(109,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDQzNTgwMywianRpIjoiZTExMTc0YzIzNTc0NDZlZWEzYjkwNTQwMTg1MDA0ODAiLCJ1c2VyX2lkIjozfQ.kFvqDtAYy9YMd3X2UQIQfiQwRZHjmHU1mqi-5fVGV6A','2020-05-24 19:43:23.492915','2020-05-25 19:43:23.000000',3,'e11174c2357446eea3b9054018500480'),
	(110,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDQzNTk2MywianRpIjoiMzYxMTdkZDcwYzA5NDMwYzkxNjgwZTYwYmM2OWZhNmQiLCJ1c2VyX2lkIjozfQ.HudOAaMTZFaW3qNF5XlLMnX9k1jFF5ZxtYXern8WAtw','2020-05-24 19:46:03.579756','2020-05-25 19:46:03.000000',3,'36117dd70c09430c91680e60bc69fa6d'),
	(111,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDQ3OTc0OCwianRpIjoiMTNkNDIxYWRjNDkxNDAxMGFkZGEwYzllNGZkZTQyZTciLCJ1c2VyX2lkIjozfQ.wxHYWSjh7EDgFtZpRQKajoSccBumo0ra0Dga2xjJBbo','2020-05-25 07:55:48.966343','2020-05-26 07:55:48.000000',3,'13d421adc4914010adda0c9e4fde42e7'),
	(112,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDkyMDEyOSwianRpIjoiOThhNmI0ODAwY2NlNDQ3YTlmYTFiN2I0ODczZGMxMjQiLCJ1c2VyX2lkIjozfQ.TWdMRL1he81w3m3mxE0qLg-kon5ucPtbJYNpwbD7wkE','2020-05-30 10:15:29.929643','2020-05-31 10:15:29.000000',3,'98a6b4800cce447a9fa1b7b4873dc124'),
	(113,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDkyMDEzMCwianRpIjoiOWY1Zjg2OGM2NjNmNDUyODg1ZmNlOWQyMDU5OGU2NDciLCJ1c2VyX2lkIjozfQ.Wrw3_hk5DcW5LruHxkMsfqPYfcx18HM5svEwTx-nYzQ','2020-05-30 10:15:30.691676','2020-05-31 10:15:30.000000',3,'9f5f868c663f452885fce9d20598e647'),
	(114,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDkyMDIyOCwianRpIjoiZmVjMjY5YjNmM2M3NGY0OTliNjIzNGZkYmQxNmRiZGYiLCJ1c2VyX2lkIjozfQ.RAyMrIOLh6VmPT0DxNlpmtCBe2O_jZSJRrCVRAeoxhQ','2020-05-30 10:17:08.978773','2020-05-31 10:17:08.000000',3,'fec269b3f3c74f499b6234fdbd16dbdf'),
	(115,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDk5NjkwMSwianRpIjoiOWRlYWFjMmU1MDA3NDFmMTg1YmM1YWIwNmZmOWNmZDgiLCJ1c2VyX2lkIjoyM30.5x-YpkXL7sZx2CN3fPTjwTe1jeB4rUzEP_9iQnaSJkc','2020-05-31 07:35:01.572159','2020-06-01 07:35:01.000000',23,'9deaac2e500741f185bc5ab06ff9cfd8'),
	(116,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MDk5Njk4OSwianRpIjoiZmQwNmZkNzM5NjkxNGUxMjk3NzNiNTJjODMxZGIyYmEiLCJ1c2VyX2lkIjozfQ.8mEL7rtZ6_MkuB_gIiH-vpuA119FjfZ42yXWdsohV60','2020-05-31 07:36:29.717284','2020-06-01 07:36:29.000000',3,'fd06fd7396914e129773b52c831db2ba'),
	(117,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTAwMDUxMCwianRpIjoiZTliNzY0MjgyMzI1NDExNTliMzhiM2E1ZTJlYjAwMGQiLCJ1c2VyX2lkIjozfQ.Pj_PScrKKzY8acKN2oQ3sPPxP2YyzFUlOyl1VAQd68s','2020-05-31 08:35:10.960331','2020-06-01 08:35:10.000000',3,'e9b76428232541159b38b3a5e2eb000d'),
	(118,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTE4ODc2NSwianRpIjoiMDI3NTM1NTY4Yzc5NGJhNzljZmI1OTJhOWQxMjk4ZTciLCJ1c2VyX2lkIjozfQ.zpPe0goSfbIdM9sxoZe88GUzpkkD3fqxlY8_yS7usTY','2020-06-02 12:52:45.107181','2020-06-03 12:52:45.000000',3,'027535568c794ba79cfb592a9d1298e7'),
	(119,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTE5MjUzOCwianRpIjoiMDgyMjBlZDFjOTg1NGVhNWFlYTUxNWIxYjdjYzY2ZDAiLCJ1c2VyX2lkIjoyM30.XMrXqEL1VUEa_iObVvlfJpudGSGMhz_l19wK43lL4zw','2020-06-02 13:55:38.149459','2020-06-03 13:55:38.000000',23,'08220ed1c9854ea5aea515b1b7cc66d0'),
	(120,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTE5Mzc5NCwianRpIjoiNjE5MzM5ZGQ1NDlhNGMxYzg0NDAyYWEwZTAxZWE1ZmUiLCJ1c2VyX2lkIjozfQ.xy27-q2oNRecZqgWW-qKtuIuPQgFVfznWGcwy2g9zEI','2020-06-02 14:16:34.317050','2020-06-03 14:16:34.000000',3,'619339dd549a4c1c84402aa0e01ea5fe'),
	(121,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTI4NDAyNiwianRpIjoiMmFjYTkyMjIxMGE1NDY1ZmIyOTRmZGE3YWNlZTQxNGIiLCJ1c2VyX2lkIjozfQ.XVACz6lznlML3IJRExlFCfr06wCdkT7MfK4qGY_tMNg','2020-06-03 15:20:26.735240','2020-06-04 15:20:26.000000',3,'2aca922210a5465fb294fda7acee414b'),
	(122,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTI4NDAyNywianRpIjoiNjc3MDRlYjlhNTgyNGVhNWIxY2U0N2M3NTYwYzI2ZTkiLCJ1c2VyX2lkIjozfQ.bjxH6P8BUeufki0YUkI0JdXZNVv4riiKteOuatAYXGU','2020-06-03 15:20:27.865418','2020-06-04 15:20:27.000000',3,'67704eb9a5824ea5b1ce47c7560c26e9'),
	(123,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MTk4MTEzOSwianRpIjoiZDc5YjE2MmE5MzI5NDk1YTlkMDA3M2E3MTMwYjU3N2EiLCJ1c2VyX2lkIjozfQ._dFiNcMswwngLDsAXBdrqmmmEiDJ9e5HvC4-36-2PSw','2020-06-11 16:58:59.137502','2020-06-12 16:58:59.000000',3,'d79b162a9329495a9d0073a7130b577a'),
	(124,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjcyMjIwNiwianRpIjoiNTg0ZGQ3MzRiYzU0NDIyM2E1NjAwMDczNmI3ZTM5ODIiLCJ1c2VyX2lkIjozfQ.docpAz5wF0nsiwjnP0db7hSvV_KWl9rMqjHNHFKZU3Y','2020-06-20 06:50:06.872059','2020-06-21 06:50:06.000000',3,'584dd734bc544223a56000736b7e3982'),
	(125,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjcyMzY1NiwianRpIjoiZTA3ZDQ2ZGQ2NDI4NDNlODg2NTg0MmQ2MDQ1MTM5ZGUiLCJ1c2VyX2lkIjozfQ.pu1knlW1k-PocUd0YTHkCt47kzLJOVD3_LE-kpk1DD4','2020-06-20 07:14:16.341893','2020-06-21 07:14:16.000000',3,'e07d46dd642843e8865842d6045139de'),
	(126,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjcyMzcxMSwianRpIjoiMWZhNmRlYjU1YTU3NGUyMTk3ZGFkYTdhNGJkMTA4YWIiLCJ1c2VyX2lkIjozfQ.Kv3Bzcc6VFApvmAdyzUMehKiYfqCicatJKR3EtZRFT4','2020-06-20 07:15:11.064671','2020-06-21 07:15:11.000000',3,'1fa6deb55a574e2197dada7a4bd108ab'),
	(127,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMjYzMywianRpIjoiYjVjYmVlMWUyZTQ2NGViNThiZGRmNThjN2I5MWRjMzkiLCJ1c2VyX2lkIjozfQ.hcoOXbEEG7Zl1zAcovXxOIDuzdTn7P73J71IqTwtOw4','2020-06-20 09:43:53.742866','2020-06-21 09:43:53.000000',3,'b5cbee1e2e464eb58bddf58c7b91dc39'),
	(128,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMjgxOCwianRpIjoiZGI4YTNlMGYyYzRhNDI5Y2I5ZDI4ZDg3NGRhZDQxZWUiLCJ1c2VyX2lkIjozfQ.Sscm2WsFV9n1jaj6OlLzxRqe_v29DTDKnKxuoTmhCMc','2020-06-20 09:46:58.430163','2020-06-21 09:46:58.000000',3,'db8a3e0f2c4a429cb9d28d874dad41ee'),
	(129,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMzA2NCwianRpIjoiMmEwYjZiZTgxZWUyNGVhNjgyOGUyMzk5ZTQ0NjY5MzYiLCJ1c2VyX2lkIjozfQ.IoiIW7q3Uo3d7N_6DQYr6ZndwZqnpJ30CDQqsVEDicQ','2020-06-20 09:51:04.284000','2020-06-21 09:51:04.000000',3,'2a0b6be81ee24ea6828e2399e4466936'),
	(130,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMzMzMSwianRpIjoiMDhiOGJlOWViYjcwNGRkZGEwNWNjY2M0ODE5NGFlZGYiLCJ1c2VyX2lkIjozfQ.HoeqTbMcKQ1461phYmloEzUet76s_Sd6TktMR8OXRFw','2020-06-20 09:55:31.513753','2020-06-21 09:55:31.000000',3,'08b8be9ebb704ddda05cccc48194aedf'),
	(131,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMzM5OSwianRpIjoiZWNlNDMwNThjN2U0NDc4ZGIxNmFkNTE4MTQ0ZjZkYWMiLCJ1c2VyX2lkIjozfQ.FSLfrAZYomKNzZ9SM2fcdrZi2kz-73jXEJQzFnXq1pU','2020-06-20 09:56:39.994281','2020-06-21 09:56:39.000000',3,'ece43058c7e4478db16ad518144f6dac'),
	(132,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMzQzMCwianRpIjoiZTkyYTIzMGY5MzEwNGZhM2E2NTk2OGI0ZDE2YTYyMjkiLCJ1c2VyX2lkIjozfQ.CiVuH6ANTkuqy3H2uxi6Zwko1JTk3aNLkiw6RMtuoJ4','2020-06-20 09:57:10.134155','2020-06-21 09:57:10.000000',3,'e92a230f93104fa3a65968b4d16a6229'),
	(133,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMzY3NywianRpIjoiOTI5Y2NkMTZjNjZkNDZlYWE3MWZjOTZmNWE4YTNiMTMiLCJ1c2VyX2lkIjozfQ.VxVSzYc-JOuYTRzI83qeyNV7RAyUoj0ARhunig12VLw','2020-06-20 10:01:17.608518','2020-06-21 10:01:17.000000',3,'929ccd16c66d46eaa71fc96f5a8a3b13'),
	(134,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczMzg1NSwianRpIjoiMzJmZTFiNjMxNzg3NDY0ZWI4Y2JlMjk2ZWUwMzExYTQiLCJ1c2VyX2lkIjozfQ.xDoGtbNttfTiMSsgbARp-jdYPPQmpk4RpxJ9CKhYIzU','2020-06-20 10:04:15.545217','2020-06-21 10:04:15.000000',3,'32fe1b631787464eb8cbe296ee0311a4'),
	(135,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNDA1MCwianRpIjoiZmQzNmMwYmYwMzFjNDVkNDhkMWQyYWI3OGY0ZWM3YTAiLCJ1c2VyX2lkIjozfQ.0MsHDYXninXaleIzxzIEbKNIsA7pRBmExE61B4g-1wY','2020-06-20 10:07:30.417801','2020-06-21 10:07:30.000000',3,'fd36c0bf031c45d48d1d2ab78f4ec7a0'),
	(136,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNDE5OSwianRpIjoiYTE2YzU4M2I0YjdhNGUwMWE2OWRkM2YyYjk0YTZiZDUiLCJ1c2VyX2lkIjozfQ.y0GX7T3BBr-Gzaw8jnYH2dG8zORbUKOQZX8Nrtg91_A','2020-06-20 10:09:59.542637','2020-06-21 10:09:59.000000',3,'a16c583b4b7a4e01a69dd3f2b94a6bd5'),
	(137,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNDI0NSwianRpIjoiZjhmNGY2MDIxOWFmNDkwNThiOTMzMzMxODU0ZDE3ZDkiLCJ1c2VyX2lkIjozfQ.XnAXw3yd3JhnLSGXSDIVI37r0sikMHtBT9qIQcf-w8g','2020-06-20 10:10:45.384675','2020-06-21 10:10:45.000000',3,'f8f4f60219af49058b933331854d17d9'),
	(138,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNDM4MywianRpIjoiZWJiZmM3NTlhYjVjNDAwOWFmZjhkNmMxNzU4MzQ3MmYiLCJ1c2VyX2lkIjozfQ.sypwVKUzY-YIzbDFJ7rXaYPC8wGx1ibVp5NUcY7ksXA','2020-06-20 10:13:03.583128','2020-06-21 10:13:03.000000',3,'ebbfc759ab5c4009aff8d6c17583472f'),
	(139,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNDUzNCwianRpIjoiOGI5YjdjYzg2MDQ1NDY3MzllZmY3OGVkMjk1ODgwZTAiLCJ1c2VyX2lkIjozfQ.knMDB6RCQtd0fw16XwPWoRQMZWh26RYuMecDhWOwyyM','2020-06-20 10:15:34.193912','2020-06-21 10:15:34.000000',3,'8b9b7cc8604546739eff78ed295880e0'),
	(140,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNDY1OSwianRpIjoiMzZlMGY1NWQ1M2U0NDY0MjgwM2QzMWNlZmNiODg5NmYiLCJ1c2VyX2lkIjozfQ.tMMEOc0GoNCakWlarNBvY7wrqLXwr2Ya4e3bnxJS3_Y','2020-06-20 10:17:39.012663','2020-06-21 10:17:39.000000',3,'36e0f55d53e44642803d31cefcb8896f'),
	(141,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNTQ4MywianRpIjoiOWM1ZGE4Yjg1YmUwNDZiYzk1NWEzZGY1MGI2OWVmOGMiLCJ1c2VyX2lkIjozfQ.SiL9VRFZ_ONkmq2Q7mQ1ukU2JUBvLaqkSvejFCIZETI','2020-06-20 10:31:23.127299','2020-06-21 10:31:23.000000',3,'9c5da8b85be046bc955a3df50b69ef8c'),
	(142,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNTcwNSwianRpIjoiZDQwMTk5YWFhOGZlNDM5MzllZDc5NjQ4ZDYwZDJmYTgiLCJ1c2VyX2lkIjozfQ.luo4URZiwYcfRnUlvNhw3MeQTceBkqyHICxk2whLHbc','2020-06-20 10:35:05.062202','2020-06-21 10:35:05.000000',3,'d40199aaa8fe43939ed79648d60d2fa8'),
	(143,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNTk0NSwianRpIjoiMTUwODE3YjlmZWM3NDZiN2JmMzRhMDJkODllYTA5ZmYiLCJ1c2VyX2lkIjozfQ.lDgonSweLPnmUa4vGj0FRBNsP8LoaecPqgFzyc9Ygcg','2020-06-20 10:39:05.625319','2020-06-21 10:39:05.000000',3,'150817b9fec746b7bf34a02d89ea09ff'),
	(144,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjEwMSwianRpIjoiMzVhY2ZhYmYxZDhkNDgxNGIzNzM0NTUxY2IyYzJiMzgiLCJ1c2VyX2lkIjozfQ.lLX_OvWTMQPm_1ezzfARBnQL4yGRf4vPYaqCXd9IdWI','2020-06-20 10:41:41.631324','2020-06-21 10:41:41.000000',3,'35acfabf1d8d4814b3734551cb2c2b38'),
	(145,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjE2MCwianRpIjoiZjk4ZjdjOWJkMjJhNGY5MjkxNjM3ZWRjYjVjZDBiNTEiLCJ1c2VyX2lkIjozfQ.bY0-QRHY9N8kQm4TQnYzJWrFQh2mWZah1bW_nyaseRU','2020-06-20 10:42:40.222655','2020-06-21 10:42:40.000000',3,'f98f7c9bd22a4f9291637edcb5cd0b51'),
	(146,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjIyMCwianRpIjoiNDg4ODlkZWIwNGIxNGU0ODg1MzQ2ZjUxMzNmMzFiZmUiLCJ1c2VyX2lkIjozfQ._S_pKiT2KjaVITZewaroCKmk2EuqSd9XCsdzOvyxZGc','2020-06-20 10:43:40.915650','2020-06-21 10:43:40.000000',3,'48889deb04b14e4885346f5133f31bfe'),
	(147,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjMyMCwianRpIjoiM2Y2NGQ1NzViZDk2NGE0YmJjNjZlMTlmOTVhNWYzODIiLCJ1c2VyX2lkIjozfQ.cJpbY5b-cKWgRs9pyq55KBfPUhZEOO3YkP0SX36thPQ','2020-06-20 10:45:20.788313','2020-06-21 10:45:20.000000',3,'3f64d575bd964a4bbc66e19f95a5f382'),
	(148,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjU3NiwianRpIjoiOGUyZjRiMTg1NjkwNGZhMjhlZGFhZTRjOGJiOTgwZTMiLCJ1c2VyX2lkIjozfQ.DZ5Olxl6v8X-AkPxs0Zcx-JX3uS9jhJkowckSKKq9Vg','2020-06-20 10:49:36.011047','2020-06-21 10:49:36.000000',3,'8e2f4b1856904fa28edaae4c8bb980e3'),
	(149,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjYzNCwianRpIjoiMTdlNGVmYWQzZGU0NDZkYzhhNzRkYWI4MGY4NDk2Y2YiLCJ1c2VyX2lkIjozfQ.XmZx4F82lGkrmQCnfIdrgpaCcyxGdeoo5eH4aFu0XQA','2020-06-20 10:50:34.536177','2020-06-21 10:50:34.000000',3,'17e4efad3de446dc8a74dab80f8496cf'),
	(150,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjY1OSwianRpIjoiMDllNTk1ZGYwOTU2NDU3ZmIwNTk4YjE4ZGNmMGM2MGUiLCJ1c2VyX2lkIjozfQ.MezrJ28xfaUbgUKMBOSDC_yuh7Yc4za7BTxVRulw2Sg','2020-06-20 10:50:59.817643','2020-06-21 10:50:59.000000',3,'09e595df0956457fb0598b18dcf0c60e'),
	(151,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjc2MCwianRpIjoiZDJlYzk1NWJhNjdlNDA2MDlkMjg1ZTAyMTU1ZGQ2YzMiLCJ1c2VyX2lkIjozfQ.TZ4cOWmwTFd3vbUnb9y9mRC7HijozalslAGLbGi9VqM','2020-06-20 10:52:40.480749','2020-06-21 10:52:40.000000',3,'d2ec955ba67e40609d285e02155dd6c3'),
	(152,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjc5MCwianRpIjoiNDI4YmI2OTdjMzA3NDU5OTg1ZTcwYmU1ZTA1NjcxNmUiLCJ1c2VyX2lkIjozfQ.LKl89KJ-qorK3YMXDfmf5pdjHxrAEoJGqAIqpFv_dJU','2020-06-20 10:53:10.727924','2020-06-21 10:53:10.000000',3,'428bb697c307459985e70be5e056716e'),
	(153,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNjgwMSwianRpIjoiY2RjZTkzMzczNmVkNGU0YzkzMGNlYWZkZDQyNDE5MTAiLCJ1c2VyX2lkIjozfQ.CBRam4_g1ABzCOarisjh4fpD_a9lgo0653vifBEsBck','2020-06-20 10:53:21.036908','2020-06-21 10:53:21.000000',3,'cdce933736ed4e4c930ceafdd4241910'),
	(154,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjczNzAyOSwianRpIjoiMGVmMThlZjNjMTI2NDk4MTk1ZWFlMGY3YTEwNzBhMWIiLCJ1c2VyX2lkIjozfQ.S03WWC2tyI351D0HGHCqxz3MzX_pDNeoiV-2Z5IkqEU','2020-06-20 10:57:09.909996','2020-06-21 10:57:09.000000',3,'0ef18ef3c126498195eae0f7a1070a1b'),
	(155,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc0MDY3MiwianRpIjoiN2Y3YjEzNTZjZDdiNDE2ZDg2NmMyNDZmZjNhMDIzMGMiLCJ1c2VyX2lkIjozfQ.EOaKmcFMfZbyNV0_D4LmWl663yaQ37-kIMkZzm9IPJA','2020-06-20 11:57:52.889058','2020-06-21 11:57:52.000000',3,'7f7b1356cd7b416d866c246ff3a0230c'),
	(156,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc1MTE1NywianRpIjoiNzVmM2YxYWU1YjBhNGFlZjk2NzJhOGI4ZmI5OTY2MzUiLCJ1c2VyX2lkIjozfQ.rm-F_Hzn2L7JR4_R_U-X9UqWnARZpyQ7NFbVdbJZBEk','2020-06-20 14:52:37.566453','2020-06-21 14:52:37.000000',3,'75f3f1ae5b0a4aef9672a8b8fb996635'),
	(157,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc1MTc5NywianRpIjoiM2I4ODkxZWFkMjBkNGRmZjg2MmFkZWNkMThiMjgwNTQiLCJ1c2VyX2lkIjozfQ.qJ7dpGzMJa8Gd1Yd0uztetUkHxK78kdtz02EPFlZ_xs','2020-06-20 15:03:17.202619','2020-06-21 15:03:17.000000',3,'3b8891ead20d4dff862adecd18b28054'),
	(158,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc1MTg1NSwianRpIjoiNTFlM2E3NWJiNmFiNDg1NDk4Mzc3OTgxODc2ZjkwOTIiLCJ1c2VyX2lkIjozfQ.vRG4Ga7_odiIOxZanzvcJGPU0BQ0aZhzxrs2_ARyhx4','2020-06-20 15:04:15.664856','2020-06-21 15:04:15.000000',3,'51e3a75bb6ab485498377981876f9092'),
	(159,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc1MjAxOCwianRpIjoiNGJmODZjZjQzMjY0NDI5YWI1MmI4OGY0M2IxOGJmNGQiLCJ1c2VyX2lkIjozfQ.3p4tM_83CZryiFZlVa4ZHaMW7VzshTw6d6qkbi0Q5G0','2020-06-20 15:06:58.337195','2020-06-21 15:06:58.000000',3,'4bf86cf43264429ab52b88f43b18bf4d'),
	(160,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc1MjE1NSwianRpIjoiNDUyYWIzNmI2Y2IzNGIyNjk2YWFlY2IyMGI2NWM1MWYiLCJ1c2VyX2lkIjozfQ.60FLc6vvEUaR3NOo6VtG207bUeAYy6Po7UIuCzEHwno','2020-06-20 15:09:15.993591','2020-06-21 15:09:15.000000',3,'452ab36b6cb34b2696aaecb20b65c51f'),
	(161,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjc1MjM5NywianRpIjoiMDVkMDY1YmU3NzlhNGU0ODk3YjEyMjE4OGVmNWFjYWEiLCJ1c2VyX2lkIjozfQ.57hh5mm9U_Dj22cC3jxxSR4pE7zTsUl8wTflCjvT6gQ','2020-06-20 15:13:17.732765','2020-06-21 15:13:17.000000',3,'05d065be779a4e4897b122188ef5acaa'),
	(162,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNTg1NiwianRpIjoiNmY4OThjMmRhMWNmNDg3ZGJjNGQzYjMwYzkxNTU5NDciLCJ1c2VyX2lkIjozfQ.AZlzBTAcI1Fe5a6kl-NKE9_yAqaiyHO56BSf-ruxk7E','2020-06-21 06:04:16.536017','2020-06-22 06:04:16.000000',3,'6f898c2da1cf487dbc4d3b30c9155947'),
	(163,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNTg2NSwianRpIjoiODhiZGY4YTVkMjE5NDVjN2FiY2YyZGUyOTNiNDE3YzciLCJ1c2VyX2lkIjozfQ.6lAR7FjRnGZ4VIQW3oUkefUFvOYZyZmBevsy-zDXbgc','2020-06-21 06:04:25.514485','2020-06-22 06:04:25.000000',3,'88bdf8a5d21945c7abcf2de293b417c7'),
	(164,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNTg3NywianRpIjoiNDg1NDk0NTBjMzM3NGY3OWIyNDg2YTViZGM4YzI1YjIiLCJ1c2VyX2lkIjozfQ.0ObrF2-RyOdLjKPftsviUGK33Nxa3oGkGdoMvlBV52U','2020-06-21 06:04:37.389573','2020-06-22 06:04:37.000000',3,'48549450c3374f79b2486a5bdc8c25b2'),
	(165,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjA1OCwianRpIjoiZTYxODkwNmVkZjNkNGE3N2FjMDg0NTQxZjc0OWI5NGUiLCJ1c2VyX2lkIjozfQ.mWsgaIp2SN9FDGNXf1bNoZDfNTUtKW_bfJGg815nzjg','2020-06-21 06:07:38.960757','2020-06-22 06:07:38.000000',3,'e618906edf3d4a77ac084541f749b94e'),
	(166,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjIyMywianRpIjoiYTEzOTdiMjliYjI3NDA2Yzk4YTM4ZmE4ODgyNGM0ZDkiLCJ1c2VyX2lkIjozfQ.IBC0OxVJmm4CNPuvgf-ahRXFfIP0pM_5NO2eW0g9puk','2020-06-21 06:10:23.906265','2020-06-22 06:10:23.000000',3,'a1397b29bb27406c98a38fa88824c4d9'),
	(167,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjMxNiwianRpIjoiZTRlNTYyODdmOGVlNGFkOGExMzVlYmY3NTgyY2Q5ZGEiLCJ1c2VyX2lkIjozfQ.To1hMQkvMZH5_pPAv8mJLzcq5rPBZoFBtRXCUgS93Ws','2020-06-21 06:11:56.001085','2020-06-22 06:11:56.000000',3,'e4e56287f8ee4ad8a135ebf7582cd9da'),
	(168,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjQ3NCwianRpIjoiYzg4YTFkZDQwNjllNDg0NTlmZjZlYmJmM2VjMjM0OGUiLCJ1c2VyX2lkIjozfQ.-nJvZvC2an9wGHORS8bap5YgMZTvXBPZtc_YseopFLo','2020-06-21 06:14:34.363039','2020-06-22 06:14:34.000000',3,'c88a1dd4069e48459ff6ebbf3ec2348e'),
	(169,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjYzOCwianRpIjoiY2VjMzJjYTg4ZjRlNDgzNGIzN2U4MTdjZDdkODU1NDgiLCJ1c2VyX2lkIjozfQ.cpE1q3E8T3B0mgJo_4CRNS1avQuvZzPdaJGhRuK_i9Y','2020-06-21 06:17:18.156045','2020-06-22 06:17:18.000000',3,'cec32ca88f4e4834b37e817cd7d85548'),
	(170,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjcyMiwianRpIjoiNWY2Y2RmMDBkOWJkNDEzMzk3MjRhZWY0ZGY2ZDhhZGIiLCJ1c2VyX2lkIjozfQ._IUdae3aJibb2s7iT_4oDe0DhNSXr6y9cNsMWadOo7c','2020-06-21 06:18:42.938860','2020-06-22 06:18:42.000000',3,'5f6cdf00d9bd41339724aef4df6d8adb'),
	(171,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjgzNywianRpIjoiMzY1Njg0YjU5MmI0NDY5N2I2NzQyZDBlNTA4YzFhMzMiLCJ1c2VyX2lkIjozfQ.gbXhAvAXU_59D0NoJSX3GNjWsqr5fkHY217bD_n1DF0','2020-06-21 06:20:37.911829','2020-06-22 06:20:37.000000',3,'365684b592b44697b6742d0e508c1a33'),
	(172,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNjk0MCwianRpIjoiYjdhYjViODY3ZDYyNDZiZWIyYTQ5MWJiZGQzNzM4YmQiLCJ1c2VyX2lkIjozfQ.kEZYz4tuwYDnyu-nDYhtY1D9-yEx-rm93wSobnW3q4g','2020-06-21 06:22:20.295399','2020-06-22 06:22:20.000000',3,'b7ab5b867d6246beb2a491bbdd3738bd'),
	(173,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNzA4MSwianRpIjoiOTRlMDg3MTZjZTIyNDM1Y2FlMzc0Yjc1Yzc4N2Q2OTciLCJ1c2VyX2lkIjozfQ.R0NcbP6x7eikP_eOyMJ-dB9HCxO-KloA9FgSAVjk0D8','2020-06-21 06:24:41.984568','2020-06-22 06:24:41.000000',3,'94e08716ce22435cae374b75c787d697'),
	(174,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwNzM3MCwianRpIjoiZWFiYTI2ZDAyNDQ5NDcyZjk3MWYxYzkyODZmYzc2YTEiLCJ1c2VyX2lkIjozfQ.CGfGzGzhw0wR_RW8OPZNB4na62pHEzn8suCrqhTjGA8','2020-06-21 06:29:30.381409','2020-06-22 06:29:30.000000',3,'eaba26d02449472f971f1c9286fc76a1'),
	(175,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgwOTQ5OCwianRpIjoiYjUzMjhiMDI2YjhmNDE3ZDk0ZGNiYmQ3NjdmNDU5NjYiLCJ1c2VyX2lkIjo0fQ.Dh8qy4jQ3_5LYH1KN_x6UPT_wVz1O8LeGYd9_jVeDrc','2020-06-21 07:04:58.161565','2020-06-22 07:04:58.000000',4,'b5328b026b8f417d94dcbbd767f45966'),
	(176,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxMDI4MCwianRpIjoiOGM2MmNhNjNmNjI5NDZlZThkMTE5MjQ0Nzg1ODE2YmYiLCJ1c2VyX2lkIjo0fQ._-nTEyzpK5JkRfRuNqRa63SZciDYM_YA6O7o99VxGS4','2020-06-21 07:18:00.319790','2020-06-22 07:18:00.000000',4,'8c62ca63f62946ee8d119244785816bf'),
	(177,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxMDQ1MywianRpIjoiZjU1MDIxMzBjMzJlNDQ4NWJhNzBlYjg1MGVlNmZhYTAiLCJ1c2VyX2lkIjo0fQ.F9XxlcLlJqBaVYkClKcOMLd1OV--XqfXnW1oOsF7B0M','2020-06-21 07:20:53.352706','2020-06-22 07:20:53.000000',4,'f5502130c32e4485ba70eb850ee6faa0'),
	(178,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxMzcxOSwianRpIjoiNTIyYzY1NjE3YzQxNDYzNjg5MGNmMWZjN2FlYzhkNjkiLCJ1c2VyX2lkIjo0fQ.cql_YUEKjNS3kHLU0NrVn5s0USlUqtCwQ4Wn5AZaIKs','2020-06-21 08:15:19.739194','2020-06-22 08:15:19.000000',4,'522c65617c414636890cf1fc7aec8d69'),
	(179,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxNDkxMiwianRpIjoiMDI3MDEyNzRlYmRlNGU3ZGJmMTM1MjJjOGIzOTc1YzciLCJ1c2VyX2lkIjo0fQ.4m5htF9ukKJRWXMyD6VXBN6TIixbjoH1hcmoewJvtzg','2020-06-21 08:35:12.071442','2020-06-22 08:35:12.000000',4,'02701274ebde4e7dbf13522c8b3975c7'),
	(180,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxNDk3MCwianRpIjoiNWViYTViZWNhMGExNGI3ZGI2NmZhNDFlNTMxNmY5NWMiLCJ1c2VyX2lkIjo0fQ._nDNWYdVgl1QsjqqlF-XHBSpPxrdEybIXQYF7VB5PII','2020-06-21 08:36:10.592295','2020-06-22 08:36:10.000000',4,'5eba5beca0a14b7db66fa41e5316f95c'),
	(181,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxNTAzNywianRpIjoiNzdlYjA5YzFjMjcyNDViY2JjZDg5ZjAxNGYwOGUxMDMiLCJ1c2VyX2lkIjo0fQ.johFK94W1Mhy1QLRroM3uSjGNagQ_n3APIOQcO2syBo','2020-06-21 08:37:17.452192','2020-06-22 08:37:17.000000',4,'77eb09c1c27245bcbcd89f014f08e103'),
	(182,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxNTEwNSwianRpIjoiMDZiN2U0NjIxOGQ1NGE0MzhkZjA0YzhkYTA2NDRiZTUiLCJ1c2VyX2lkIjo0fQ.6EKa26oN90dPeZ49hYPUeAMPow7Hm-jbcnChsFqUDdc','2020-06-21 08:38:25.146219','2020-06-22 08:38:25.000000',4,'06b7e46218d54a438df04c8da0644be5'),
	(183,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxNTE0OCwianRpIjoiYzU1MmQxNWU3YTJmNDRmNDk3YmE3OTM0MTIzMmFjMDQiLCJ1c2VyX2lkIjozfQ.4mffV5CmFQnTx0sg8c9rZALe7tveV-kk1-9jQbtmtSQ','2020-06-21 08:39:08.456332','2020-06-22 08:39:08.000000',3,'c552d15e7a2f44f497ba79341232ac04'),
	(184,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgxOTk3NSwianRpIjoiYjdkYmQ0MTNhOWY0NDFhOWJmYjMwODRiMzY4Nzk3MDkiLCJ1c2VyX2lkIjozfQ.qNTnQhE80JqraEKtW7Vjb4172PWiCve4bxCv1cyb6TM','2020-06-21 09:59:35.799231','2020-06-22 09:59:35.000000',3,'b7dbd413a9f441a9bfb3084b36879709'),
	(185,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgyMDAxMywianRpIjoiMTY1YmYyYmE2N2IzNGFlYzg3ZWIxNzdmMDkwOWRkMmQiLCJ1c2VyX2lkIjozfQ.0tWoShRF_hkbOu2UIjfisJx0hBnsnUWQsTTaCU49sXI','2020-06-21 10:00:13.210088','2020-06-22 10:00:13.000000',3,'165bf2ba67b34aec87eb177f0909dd2d'),
	(186,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMjYxOSwianRpIjoiZGRiMTcwMTQ5ZjlhNGVhY2FiYWExMGZiYWZhOWM2MGEiLCJ1c2VyX2lkIjo0fQ.W0GlZ4iFly4h3U8eG3ZBus_HZOeirniYEOLbuce5qSQ','2020-06-21 13:30:19.676722','2020-06-22 13:30:19.000000',4,'ddb170149f9a4eacabaa10fbafa9c60a'),
	(187,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMjY1MywianRpIjoiZGYzZDQ3MzhkZDBmNGUxODg3YmEwN2M2ODAyYjk5MDgiLCJ1c2VyX2lkIjo0fQ.k9ms8Fthr-tx5EYsjV4MAQo2fVzhHqvo8Dazs-Hm2qA','2020-06-21 13:30:53.470754','2020-06-22 13:30:53.000000',4,'df3d4738dd0f4e1887ba07c6802b9908'),
	(188,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMjg4NiwianRpIjoiNTU5NWJlYmEyYjRlNDY0NmFkNDkxNDczOTBlYjc5MTUiLCJ1c2VyX2lkIjo0fQ.RT2xBtGdxt1e1xc7qO5Q_qrPKKnS9FJMRGWhBqZQgGA','2020-06-21 13:34:46.214818','2020-06-22 13:34:46.000000',4,'5595beba2b4e4646ad49147390eb7915'),
	(189,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMjkzMCwianRpIjoiZTEzOTYyNzgyMjgxNDJmMWEzNWRhOTg2Y2M0ZjQyZWMiLCJ1c2VyX2lkIjo0fQ.yYQKJIT6xY7ngLaJPS5T2icld5bRQTD0QuqDuP23H8M','2020-06-21 13:35:30.930687','2020-06-22 13:35:30.000000',4,'e1396278228142f1a35da986cc4f42ec'),
	(190,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMzExOCwianRpIjoiYmEzZDk1OWEzZjlhNDk2OGIxOWZjN2U1NjUxM2I5YTMiLCJ1c2VyX2lkIjo0fQ.TmFEF5ili2MwVJaJ6tnqYQOM87tmFVIV8uRE4G0oryo','2020-06-21 13:38:38.888276','2020-06-22 13:38:38.000000',4,'ba3d959a3f9a4968b19fc7e56513b9a3'),
	(191,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMzM3OSwianRpIjoiOGU1YTExM2JkNWI2NGM3Njk4Njg2ZTQ2ZTAxNTg0YTIiLCJ1c2VyX2lkIjo0fQ.uwKTWFJrRFa1cap_AZzosBzFnAIpnDbJITuXC-CRbk8','2020-06-21 13:42:59.804875','2020-06-22 13:42:59.000000',4,'8e5a113bd5b64c7698686e46e01584a2'),
	(192,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMzYxNCwianRpIjoiNjA0MzMyZTkyMzhiNDg2MmI5NWY0M2VmZDlkYmJhYTUiLCJ1c2VyX2lkIjo0fQ.rw7pFDVHb1IWnJJH6OzyVqFzyZewTAkVuwEGXCzHb-k','2020-06-21 13:46:54.035313','2020-06-22 13:46:54.000000',4,'604332e9238b4862b95f43efd9dbbaa5'),
	(193,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMzgxNywianRpIjoiYjBlZjNmNDZkZjk1NGUxZjkwZTI3YWQ3OGY1OGM2MGEiLCJ1c2VyX2lkIjo0fQ._Zha2iwH1Zm1asAXX8iKmVMUT2cyKjmflXs-5NxLXYM','2020-06-21 13:50:17.338387','2020-06-22 13:50:17.000000',4,'b0ef3f46df954e1f90e27ad78f58c60a'),
	(194,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMzk0MywianRpIjoiOGEzZDkxNGYxY2YxNDQ0MDk5NjdkMzM3YWQzZjc5YzciLCJ1c2VyX2lkIjo0fQ.4bXds48mewNIVEG_t0iRasK296EOeoRwKyp9VovT090','2020-06-21 13:52:23.865608','2020-06-22 13:52:23.000000',4,'8a3d914f1cf144409967d337ad3f79c7'),
	(195,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzMzk5MiwianRpIjoiOGVmYTJiNThiZDkyNDNmOWE3NzE3NzhiZWMzNGEwNDAiLCJ1c2VyX2lkIjo0fQ.WgFLe3iWnNCKkiAYyBL08H_LC2C3Ia07DdSW1TgYoN4','2020-06-21 13:53:12.792167','2020-06-22 13:53:12.000000',4,'8efa2b58bd9243f9a771778bec34a040'),
	(196,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDExOCwianRpIjoiY2Q5ZjM4MWM5NmE0NGE5NjlhNmFiMWI4MTM4NWNhMzMiLCJ1c2VyX2lkIjo0fQ.IwTfIqT34ThzIviaPssd6-P_3-ZI66LOfy__BPYXCo8','2020-06-21 13:55:18.219204','2020-06-22 13:55:18.000000',4,'cd9f381c96a44a969a6ab1b81385ca33'),
	(197,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDE0OCwianRpIjoiZWI2NTk4NTZhYTlkNDU1NjhiMTZjOTlhODA5N2QwY2UiLCJ1c2VyX2lkIjo0fQ.ta_YrdDQYirSkuZbLhpMVWrzW_uAZZHdxzAKhUmMDH4','2020-06-21 13:55:48.230297','2020-06-22 13:55:48.000000',4,'eb659856aa9d45568b16c99a8097d0ce'),
	(198,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDcxMiwianRpIjoiYmEzNmMyYjFjZTQyNGZhZThkMDdlZDFlNTQ0ZDg0MzgiLCJ1c2VyX2lkIjo0fQ.3UO47lG1_1NVcJC6wRTD26U4j40dtvjVrZh9YiKSSGo','2020-06-21 14:05:12.138650','2020-06-22 14:05:12.000000',4,'ba36c2b1ce424fae8d07ed1e544d8438'),
	(199,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDc2NCwianRpIjoiZDZmY2RmMjY0ODU0NGZiOGEwYWYxZWFkNmQyOTllZDkiLCJ1c2VyX2lkIjo0fQ.H7eMgVo2-99ooaeUfDcP47x-SB-7-zB07hAWRsmv978','2020-06-21 14:06:04.404521','2020-06-22 14:06:04.000000',4,'d6fcdf2648544fb8a0af1ead6d299ed9'),
	(200,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDgxNSwianRpIjoiOTcyNWM5ODg2ZDA4NGM2YmEwMzQ5MDFiOTIwYWJlYjYiLCJ1c2VyX2lkIjo0fQ.CsQM4624iFlLWJJES0vI9cdGskkmKbaPi_TQ18mtsEU','2020-06-21 14:06:55.926239','2020-06-22 14:06:55.000000',4,'9725c9886d084c6ba034901b920abeb6'),
	(201,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDkzMiwianRpIjoiMDg0YzI4M2E2YWVhNDFmY2JkNDIxZWZhZjBhMWU0ZjQiLCJ1c2VyX2lkIjo0fQ.wBRF2Nh8iyRXOoZSWoFK0nAixX5t3mjJElv4conAnVQ','2020-06-21 14:08:52.048623','2020-06-22 14:08:52.000000',4,'084c283a6aea41fcbd421efaf0a1e4f4'),
	(202,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNDk3NSwianRpIjoiZjAwNTg4OGUwMDMwNGM4MjgwZWExYmNkNzczY2FhNTMiLCJ1c2VyX2lkIjo0fQ.rYGvT2cSe3Piv_Ld_Rcn-FNC8DvG259veBbHro2Q0RE','2020-06-21 14:09:35.529627','2020-06-22 14:09:35.000000',4,'f005888e00304c8280ea1bcd773caa53'),
	(203,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTAzNSwianRpIjoiMzdmN2Y1M2YzZGNmNGY0ZDkyYjM3MjVkOWFiYTkzODEiLCJ1c2VyX2lkIjo0fQ.6XxpZsXmt7TeWHNgz20eHm9OombBgyaeyveKqyS97HM','2020-06-21 14:10:35.997239','2020-06-22 14:10:35.000000',4,'37f7f53f3dcf4f4d92b3725d9aba9381'),
	(204,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTEzMiwianRpIjoiOTBlYWFiN2VlOWQ3NGRjMDk4YWI1MjMyMTI1MThhZjAiLCJ1c2VyX2lkIjo0fQ.65pJbpnNedGya1PVDpbDBZlTITgV7z1PDrZaWCGYcIA','2020-06-21 14:12:12.633610','2020-06-22 14:12:12.000000',4,'90eaab7ee9d74dc098ab523212518af0'),
	(205,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTQzMSwianRpIjoiMGNjOGVkNTYyNWFlNDRkZGJhM2JkYWUzNGNjZmZjMzciLCJ1c2VyX2lkIjo0fQ.vly1qh3_YEgaQ7-sYE-noDIap0NjMH4zQfzmO24qJtY','2020-06-21 14:17:11.700415','2020-06-22 14:17:11.000000',4,'0cc8ed5625ae44ddba3bdae34ccffc37'),
	(206,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTUwNiwianRpIjoiY2I2YWQzM2M3MDc1NGVkMGE0MDg0ZWUwMjQ4NDc3YjQiLCJ1c2VyX2lkIjo0fQ.pFqtbdKcRYJDoo0-MnggIFTbNax-TOSXZ9Nn0ZnpT6M','2020-06-21 14:18:26.962950','2020-06-22 14:18:26.000000',4,'cb6ad33c70754ed0a4084ee0248477b4'),
	(207,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTU0MCwianRpIjoiZGFlYWZjZjlmMTQyNDIyN2EyNDhlZjMyNmE0YTRiYmEiLCJ1c2VyX2lkIjo0fQ.1wq71dhzeglVcyVJXepYm1TXSS0lmL5a93tuWKWPSpQ','2020-06-21 14:19:00.822680','2020-06-22 14:19:00.000000',4,'daeafcf9f1424227a248ef326a4a4bba'),
	(208,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTc5NSwianRpIjoiZTFlYTI5ZWZhOGJjNDY1N2E2MDI5M2U1NzA0NTFmODciLCJ1c2VyX2lkIjo0fQ.mXMh4pM6d9ER4j-wXL62lzqWwBYlOfVR0MP8Cid0cgk','2020-06-21 14:23:15.851951','2020-06-22 14:23:15.000000',4,'e1ea29efa8bc4657a60293e570451f87'),
	(209,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzNTgxOSwianRpIjoiODE2NjUyOTEwNDVhNDMyZGEzYzc3MWU2NWIwNzViMDIiLCJ1c2VyX2lkIjo0fQ.gVhaC1OkXJafa0K4Nxka1vLh6s0EB04wNgVVAiLYRaw','2020-06-21 14:23:39.044364','2020-06-22 14:23:39.000000',4,'81665291045a432da3c771e65b075b02'),
	(210,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzOTExMCwianRpIjoiZTJmNGRmMjIyYTE2NDkzMDgxNmQzZTI1M2NkOTBiOTAiLCJ1c2VyX2lkIjo0fQ.xfWecuYPVa_hs6H83yKC-OUEeouw1AbvF1gaBSxwDoU','2020-06-21 15:18:30.563707','2020-06-22 15:18:30.000000',4,'e2f4df222a164930816d3e253cd90b90'),
	(211,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzOTEzMSwianRpIjoiZjA5YzU2MzUyYmFmNDVmNjkyNmU2NmQxYTg0OGI3ODIiLCJ1c2VyX2lkIjo0fQ.kkHgYcz_OiyG0g-pk8Zh7pGIh4MnKznbyhZJDS6Koec','2020-06-21 15:18:51.893067','2020-06-22 15:18:51.000000',4,'f09c56352baf45f6926e66d1a848b782'),
	(212,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzOTIxOSwianRpIjoiNWY3ZTEwOTY4ZTI3NDQ4NTlkZjRjMDI0ZjY4Zjg0YzciLCJ1c2VyX2lkIjo0fQ.VlFDFdv1r0BXgky6-_ymuZ70dj5XULJcDFYx22Mo4B4','2020-06-21 15:20:19.763242','2020-06-22 15:20:19.000000',4,'5f7e10968e2744859df4c024f68f84c7'),
	(213,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjgzOTI3MCwianRpIjoiZmM1YTUzYzhkYTAzNDU1OTk4NzE5ODM3ZDNiMWRhMDYiLCJ1c2VyX2lkIjozfQ.Ipi27Alx7WcWtln0XeHqH4W_rA_sQ8zGpbnbhYDG9u8','2020-06-21 15:21:10.194541','2020-06-22 15:21:10.000000',3,'fc5a53c8da03455998719837d3b1da06'),
	(214,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjg0MTA2MSwianRpIjoiYjViZDQ1ZGFmZjI0NGJlNjgyNTRjNmU4Y2ViNmJhZmEiLCJ1c2VyX2lkIjozfQ.ZbawKZW4jaD4Xv49h1_8TQD1ZGdZhIkLMwp-s_8Zz5E','2020-06-21 15:51:01.016332','2020-06-22 15:51:01.000000',3,'b5bd45daff244be68254c6e8ceb6bafa'),
	(215,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjg0MTkzMiwianRpIjoiYTU3NDM0NDAzYWQxNDE4ZjkyMGFkNTQwZDg1OTc0N2UiLCJ1c2VyX2lkIjozfQ._CbZrenDSK4G84Bs9pVn9ViuEYNHAXC3ORlohNXTeU8','2020-06-21 16:05:32.494576','2020-06-22 16:05:32.000000',3,'a57434403ad1418f920ad540d859747e'),
	(216,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjg0MjA0NCwianRpIjoiYjlkZTZiYTZhYmQ3NDhjMmE2ZWJjYjgxNzIzNDlhMDciLCJ1c2VyX2lkIjozfQ.9-KtuV9l-yeK9x-9BZlXovMdKDLZ2xKGyOtyTvvpZxI','2020-06-21 16:07:24.277368','2020-06-22 16:07:24.000000',3,'b9de6ba6abd748c2a6ebcb8172349a07'),
	(217,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjg0MjE0NCwianRpIjoiODY2ZTM1YmMyZjQ1NDQ3ODg3YjM4YmUzOThiNzdmMmIiLCJ1c2VyX2lkIjozfQ.ZvMpDViTc5I0aACdQ7zWoedWKtxMtQ8e7gw3zOZSYFw','2020-06-21 16:09:04.472008','2020-06-22 16:09:04.000000',3,'866e35bc2f45447887b38be398b77f2b'),
	(218,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjg5OTkwNCwianRpIjoiYTA2MmVhYzBmZjNhNGU5MDg3YzI3NjYwZjk0ODQ2MGQiLCJ1c2VyX2lkIjozfQ.p64WyIXhD5xvl0ezUBoFUYc3aveQazXYAdhVyeXioQA','2020-06-22 08:11:44.764317','2020-06-23 08:11:44.000000',3,'a062eac0ff3a4e9087c27660f948460d'),
	(219,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5Mjg5OTkzOSwianRpIjoiZDMwYmVkZDJkNTUzNDBjNmI2NDg1MzQxOGYwMDZhNmIiLCJ1c2VyX2lkIjo0fQ.FGqFjUkanjFRodhyHFUmUCNQbsGM8Td3S86QzNm4tyQ','2020-06-22 08:12:19.326278','2020-06-23 08:12:19.000000',4,'d30bedd2d55340c6b64853418f006a6b'),
	(220,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MjkxNTMyOCwianRpIjoiYjBmNzA4MzZmZjY1NGJiMjlmZWE4OTIyNWEyNjQ5NGUiLCJ1c2VyX2lkIjo0fQ.s-3KUCfvsINdxRsvzElKkubaTzrK8E5zxNe2F9KezOU','2020-06-22 12:28:48.618378','2020-06-23 12:28:48.000000',4,'b0f70836ff654bb29fea89225a26494e'),
	(221,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MzEwNzI1MSwianRpIjoiNzIxZjk4YTMwNzA5NGQyYmE0NmMzY2MyOGM3ODFiYTkiLCJ1c2VyX2lkIjozfQ.woeOzfOY30nYApbPlnQiL18lAsC25bcw033flXFcGCw','2020-06-24 17:47:31.331144','2020-06-25 17:47:31.000000',3,'721f98a307094d2ba46c3cc28c781ba9'),
	(222,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MzEwNzI1MSwianRpIjoiYjAxMTI3ZTIwNWRiNDU0NDkzMTQ3MDM0OTM2M2U1YmQiLCJ1c2VyX2lkIjozfQ.Kfvg2tRkpdMaL7EL3S4T-oOdhmD5W_Vqu2JUoiF5C9k','2020-06-24 17:47:31.566269','2020-06-25 17:47:31.000000',3,'b01127e205db4544931470349363e5bd'),
	(223,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MzEwNzMwOSwianRpIjoiOTYzZjFkMjBlZjM2NDBiOWFmMjMzM2NiMzg1ZjEwZjkiLCJ1c2VyX2lkIjozfQ.PxiN7UPjAMFRFhfMT6HrezqLYQfiT04CaTqwirH6Qqw','2020-06-24 17:48:29.696363','2020-06-25 17:48:29.000000',3,'963f1d20ef3640b9af2333cb385f10f9'),
	(224,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MzEwNzY5OSwianRpIjoiYjU5OGRiMmQ2OThjNGE1M2IzOTUwZjA2M2I2ZWYxZGUiLCJ1c2VyX2lkIjozfQ.ks6aDSzOxyPzmOpYX_FKIMmfa7psCjBHMq3QJ5nkbfM','2020-06-24 17:54:59.833275','2020-06-25 17:54:59.000000',3,'b598db2d698c4a53b3950f063b6ef1de'),
	(225,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5MzcxMTIzNiwianRpIjoiOTEwZTQzMzQ1YTIwNGQwYzliMDIxM2QyNWY3YjE1ZmMiLCJ1c2VyX2lkIjoyM30.E5qrxQfBzLKtGJQWB0OpQqDy956mYe8qD-joozECBZ4','2020-07-01 17:33:56.402483','2020-07-02 17:33:56.000000',23,'910e43345a204d0c9b0213d25f7b15fc'),
	(226,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMwNzM3NywianRpIjoiZWZiY2FlYzQ1MTRmNDYxMmFmNjVhYTRkZjE2NzA1ZmEiLCJ1c2VyX2lkIjoyNX0.efIHcgcIEcdlOrli-DbiYA_5DrCjo1EFWfTT77MXVS0','2020-08-12 08:29:37.860584','2020-08-13 08:29:37.000000',25,'efbcaec4514f4612af65aa4df16705fa'),
	(227,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMwNzM4OSwianRpIjoiNDM2NDViYjg5ZjNhNGFlOGI3NDgyNDA5NzJiZmUxOWMiLCJ1c2VyX2lkIjoyNX0.y4QqVf1heXZNcUADPyNeuA8gpvsV87LhcY4bdweEesU','2020-08-12 08:29:49.907241','2020-08-13 08:29:49.000000',25,'43645bb89f3a4ae8b748240972bfe19c'),
	(228,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMwODYxNywianRpIjoiMGNkYjJiNWE1ZGY5NDg0NjhkNjIyYzQwN2MwYzNiYzYiLCJ1c2VyX2lkIjoyN30.kGrKEFmHYrO-K2u7fQmMY8LRAP6yq7elrT9GX_ZqEtg','2020-08-12 08:50:17.564908','2020-08-13 08:50:17.000000',27,'0cdb2b5a5df948468d622c407c0c3bc6'),
	(229,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxNzkyNiwianRpIjoiMmQ0YjE2MjU1Mjc4NDM4NTg5ZThmN2IyYjc1ODA0MzMiLCJ1c2VyX2lkIjoyOH0.krew3XsX2NJnBmV5Tb3YxlW314LARkCcDast-dq0oP8','2020-08-12 11:25:26.913884','2020-08-13 11:25:26.000000',28,'2d4b16255278438589e8f7b2b7580433'),
	(230,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxNzk0OCwianRpIjoiYmZhNjgzNjFkZTY3NGU4NGEzY2FjZDRjYTkyNzI1MmIiLCJ1c2VyX2lkIjoyOX0.3VC1M0UaTpYW30y84__yqcRTRS3225Cjv38oOtHrUZo','2020-08-12 11:25:48.364297','2020-08-13 11:25:48.000000',29,'bfa68361de674e84a3cacd4ca927252b'),
	(231,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxNzk5NiwianRpIjoiMDE5MjE5MjNkZmU1NDViNjg5ZTZhM2UzOTk5ZjM5MGIiLCJ1c2VyX2lkIjozMH0.hOlj721H3NQZ0VTM_6YJAttJkAdmWsNVs0C2mz7ueJ4','2020-08-12 11:26:36.886242','2020-08-13 11:26:36.000000',30,'01921923dfe545b689e6a3e3999f390b'),
	(232,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxODAxOCwianRpIjoiZGYzMWMzNWYyZjQxNDU0YWJmZTFjNTZjMmM2Y2NhMzkiLCJ1c2VyX2lkIjozMX0.p5UtvCz5jn43g4gVX5QaxbpSQkn6reXt-HPcXP9Gaj0','2020-08-12 11:26:58.673427','2020-08-13 11:26:58.000000',31,'df31c35f2f41454abfe1c56c2c6cca39'),
	(233,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxODA0NCwianRpIjoiZDBhM2U4Y2RjMzdhNGRjM2E2N2QyNDgwMjAwZjcxMmEiLCJ1c2VyX2lkIjozMn0.rAZSTm8yfns7rxLzHXZnw0EBVae3UFi3b3eUrhI6jcs','2020-08-12 11:27:24.886468','2020-08-13 11:27:24.000000',32,'d0a3e8cdc37a4dc3a67d2480200f712a'),
	(234,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxODA2MywianRpIjoiY2YxMWNjZjRiNmQxNDliZGI5YTAxNzBhMTM4YjEzNTQiLCJ1c2VyX2lkIjozM30.HbNU5ohkDCSedRhvcQIckKI0XXO7jZeXOwAaCHjKuMU','2020-08-12 11:27:43.091585','2020-08-13 11:27:43.000000',33,'cf11ccf4b6d149bdb9a0170a138b1354'),
	(235,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxODc5OSwianRpIjoiMDU5ZDA3Y2Q0MmQwNDBiYzgxMjcxNDYyYjc1MThlMDAiLCJ1c2VyX2lkIjoyOX0.C06vAK-rWRNOUzhWG4knuhPsNcWwY9yfET261FZ6FGw','2020-08-12 11:39:59.895095','2020-08-13 11:39:59.000000',29,'059d07cd42d040bc81271462b7518e00'),
	(236,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxODkyNywianRpIjoiY2QxZTVmMGM2MWE1NGYxNGIwMzA1OWQxMTcyYzcwNzkiLCJ1c2VyX2lkIjozNH0.ytrNw9Mp6KaQHqb3WCXScaG3AK9HVxqjxpt3nbiC-AY','2020-08-12 11:42:07.658259','2020-08-13 11:42:07.000000',34,'cd1e5f0c61a54f14b03059d1172c7079'),
	(237,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxODk5MiwianRpIjoiMDFiYTA2Zjc0MmZlNDc3ZDkxNTg1MDU4NDE2ZTU4NWIiLCJ1c2VyX2lkIjozNH0.0A9bJ_JeqYLTiel547tLbwhHfS1j9x2De_m6OxdrLoM','2020-08-12 11:43:12.485391','2020-08-13 11:43:12.000000',34,'01ba06f742fe477d91585058416e585b'),
	(238,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzMxOTA2MiwianRpIjoiNGFiZTY4YWNiNTc3NGM0YTgwOTcxOGZiYTlhZGQ1NmQiLCJ1c2VyX2lkIjozMX0.CaOUIUxL9zw6fpItDUFln5cM80vC622JOV37g4X1p3I','2020-08-12 11:44:22.347244','2020-08-13 11:44:22.000000',31,'4abe68acb5774c4a809718fba9add56d'),
	(239,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2MjExNCwianRpIjoiMTJiNmE0MzdjYjBiNGNkMWI3N2ZjZTY4MzFlNWZiY2QiLCJ1c2VyX2lkIjoyN30.XizkGRC-9fzTFdp3dbXsNWOtGoeNJCW26sgUkm2Dybo','2020-08-15 07:15:14.418209','2020-08-16 07:15:14.000000',27,'12b6a437cb0b4cd1b77fce6831e5fbcd'),
	(240,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2MjI5MSwianRpIjoiOGZiZjc1OWIwNzE2NDk5ZThhOGE5NTQxNzBkNzUyNWMiLCJ1c2VyX2lkIjozM30.nZVzfmbEy8kKstw4hkoH30KwDQPRJ_MovHp7GyVP0LY','2020-08-15 07:18:11.263499','2020-08-16 07:18:11.000000',33,'8fbf759b0716499e8a8a954170d7525c'),
	(241,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2Mjc0OSwianRpIjoiMzVmZGRmOGUzYzlhNDVjYmJlMTczYmVjZDRjOGM5NDUiLCJ1c2VyX2lkIjo0fQ.34nDF6jShejc62RoGr3qHnYE18VnKy4fk715mBqsl_M','2020-08-15 07:25:49.297929','2020-08-16 07:25:49.000000',4,'35fddf8e3c9a45cbbe173becd4c8c945'),
	(242,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2MjgwNCwianRpIjoiNzE1ODMxYmRiZjU2NGZmMjlmZjBiM2U5YTgwNTVkMDgiLCJ1c2VyX2lkIjoyN30.hTRUynFC_s9-FdjhFUB8kSBhJSDA0FosgkGm0_rT4G8','2020-08-15 07:26:44.644873','2020-08-16 07:26:44.000000',27,'715831bdbf564ff29ff0b3e9a8055d08'),
	(243,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2MzU2OCwianRpIjoiNGFmMGRiODNmNWNmNGUyZTkzZDU1ZWQ3NWRjMWM2OWUiLCJ1c2VyX2lkIjozM30.aX0GenR9BLqSvhs_Qvk7zhXnksFZ2iPXHdYohanz7MQ','2020-08-15 07:39:28.752301','2020-08-16 07:39:28.000000',33,'4af0db83f5cf4e2e93d55ed75dc1c69e'),
	(244,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2MzczOSwianRpIjoiOTlkNzkwMzA3OGIzNGJmN2FkMDQwNWQ2MTA4OWYzNjAiLCJ1c2VyX2lkIjoyN30.C912Wx1TVKEQEc0M1UjdRDizRIyenkk4pMgOibWIUT8','2020-08-15 07:42:19.824630','2020-08-16 07:42:19.000000',27,'99d7903078b34bf7ad0405d61089f360'),
	(245,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2NDMxNCwianRpIjoiZGI4OGMwYWRlY2Q0NGM4MDk5MDEwZGU4OTYyZjhkZGYiLCJ1c2VyX2lkIjoyN30.pI-GO-r0-W4jopIMFUUDaCDQaRzyxA75-5cpjVLTbd0','2020-08-15 07:51:54.699064','2020-08-16 07:51:54.000000',27,'db88c0adecd44c8099010de8962f8ddf'),
	(246,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2NDM2NSwianRpIjoiNzdmMTQ0YzRjYTJlNDkwMDk0YzA1MTA1MzNlNjE1YTEiLCJ1c2VyX2lkIjoyN30.y6OCA468unnE06LWAoLRTslPD_ecnqUwYGYPimabh54','2020-08-15 07:52:45.470220','2020-08-16 07:52:45.000000',27,'77f144c4ca2e490094c0510533e615a1'),
	(247,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2NDQzNywianRpIjoiYjM5NDUxMWY4ZDZiNDZhODg2YjNlZGIxMzhjNGY5M2UiLCJ1c2VyX2lkIjoyN30.rAjoZl3plRUVZh_INABHfmeNxHmIufBdDkOuizDNPTQ','2020-08-15 07:53:57.752436','2020-08-16 07:53:57.000000',27,'b394511f8d6b46a886b3edb138c4f93e'),
	(248,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2NDk0MCwianRpIjoiZGQzNTU0NDc3NWEyNDEyNjk4OTk3N2U4OWM2ODU5N2IiLCJ1c2VyX2lkIjoyN30.BJqsPzG0G7GVzAARreC70iMjDixrWOBC1pcmA-p_Fj8','2020-08-15 08:02:20.366746','2020-08-16 08:02:20.000000',27,'dd35544775a24126989977e89c68597b'),
	(249,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2NzY0MiwianRpIjoiNzUxNDA2YTRkNmQ4NDEzMDhlNjM5ZmJkZGIwYmU4MmQiLCJ1c2VyX2lkIjozfQ.cB2SJeTvB0UipI22RKOPzYIUybF6inuRYvn9jStKG2o','2020-08-15 08:47:22.458185','2020-08-16 08:47:22.000000',3,'751406a4d6d841308e639fbddb0be82d'),
	(250,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5NzU2ODE3MywianRpIjoiMGM3M2RlMjYxMGU3NGVhZDg5ODQ5YzM2NjZlNzFjM2YiLCJ1c2VyX2lkIjoyNX0.anAIsKEzafSx3sU69jGtnm6Usv7ERQ2yk0lnV3KAT_M','2020-08-15 08:56:13.324979','2020-08-16 08:56:13.000000',25,'0c73de2610e74ead89849c3666e71c3f'),
	(313,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODI4MDEyNiwianRpIjoiODhkN2ZhODM2NWQwNDI5Y2EzZTBhOWM5ZmY3NmRhNWMiLCJ1c2VyX2lkIjoyNX0.BUd8ICbdgxnDcmAcG-dOa46Fm6MeEbY9vVM0X4iXzqc','2020-08-23 14:42:06.617922','2020-08-24 14:42:06.000000',25,'88d7fa8365d0429ca3e0a9c9ff76da5c'),
	(314,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODI4MDIxNCwianRpIjoiMzVlNjBlM2JiZTg2NDg0NWJmMmZiMDJmY2YyMDZmMmIiLCJ1c2VyX2lkIjozM30.Cx8MjtcXkbWUHc-lpJFx4YR4OvWvCnIes1JwMdlDDnE','2020-08-23 14:43:34.735469','2020-08-24 14:43:34.000000',33,'35e60e3bbe864845bf2fb02fcf206f2b'),
	(533,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODY5Njc4OSwianRpIjoiNDQyMmY0NTk0ODZhNDA5YTg0MWUzNWI4Y2EzZmM5MzkiLCJ1c2VyX2lkIjoyNX0.RQP_GMqp9mdXRCjoZgf0L8nLolygdaYZ3ghR8gIx1Dw',NULL,'2020-08-29 10:26:29.000000',NULL,'4422f459486a409a841e35b8ca3fc939'),
	(534,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODcwNjU4OCwianRpIjoiNGFlM2VhYjZiOGQxNDU3Y2E0OWNkY2I4ZTg4YzY4NDQiLCJ1c2VyX2lkIjoyN30.XLJ64Z2RaykCMUBlDE7spfwln2akzs4zpJ1PyKClAFk','2020-08-28 13:09:48.215522','2020-08-29 13:09:48.000000',27,'4ae3eab6b8d1457ca49cdcb8e88c6844'),
	(675,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODcxMzkxNiwianRpIjoiNDRmNmI0Mjk2ZjVlNGM4OWFjOGI4ZDI0ODUwNjlhZmEiLCJ1c2VyX2lkIjoyNX0.xsLFM8PA-YE9GlLr15RuQWJuRyt6O4r46d3tYg_f-I4','2020-08-28 15:11:56.973029','2020-08-29 15:11:56.000000',25,'44f6b4296f5e4c89ac8b8d2485069afa'),
	(676,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODgxMTIzMCwianRpIjoiMjI5YzQ3ZTM2NTJjNGMxODhiMDA4MTJjMGQ0M2EyNTIiLCJ1c2VyX2lkIjoyNX0.qhgEOTq1C8z85PSqMLktylL6fi-KamAyrKuwU38v4i8','2020-08-29 18:13:50.644274','2020-08-30 18:13:50.000000',25,'229c47e3652c4c188b00812c0d43a252'),
	(677,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODgxMTU0MywianRpIjoiYjlmNzg5MjlhNWE0NDQ3NTkxZjQ1MDNhNGU4YTA4N2QiLCJ1c2VyX2lkIjozM30.mdRwEGZT5XtErUohTWPmzSZogNREm7NPFargwftICBk','2020-08-29 18:19:03.663538','2020-08-30 18:19:03.000000',33,'b9f78929a5a4447591f4503a4e8a087d'),
	(678,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODgxNDQwNywianRpIjoiZTY5OWY3YzAxZDE4NGI0YmFkYjE2NDVmNzZhZDE0OWQiLCJ1c2VyX2lkIjoyNX0.t7QnH422K8JcCcxW1k9pcg6kyyZrZsXZbgSlqW1S_c8','2020-08-29 19:06:47.307416','2020-08-30 19:06:47.000000',25,'e699f7c01d184b4badb1645f76ad149d'),
	(679,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODgxNDQzMiwianRpIjoiZDAyOGYwNzVjNDZkNDk2MjkzOGUxMTQxNWJkNjFjYWMiLCJ1c2VyX2lkIjoyNX0.XVdFxdcilcwWlr5NVgYBAdxkdUBJdiYqHpSFyS3sEVk','2020-08-29 19:07:12.313137','2020-08-30 19:07:12.000000',25,'d028f075c46d4962938e11415bd61cac'),
	(680,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3NjY5MiwianRpIjoiNzk2Yzk1Yzk1YjliNDQwOGIwYTBhYmIyZTVkMmU0ZDEiLCJ1c2VyX2lkIjoyNX0.WMq6xSoQDVFGmpk5cAGVdh89Z91X-xWaBDbWCCYmqNw','2020-08-30 12:24:52.166208','2020-08-31 12:24:52.000000',25,'796c95c95b9b4408b0a0abb2e5d2e4d1'),
	(681,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3NzM5NCwianRpIjoiMDJiM2I1ODU3YWIyNDQ0MWI3MWU3NGE1NzJjMmZlMzciLCJ1c2VyX2lkIjoyN30.8xLnZ6H0cIpZJTfu58YJu0Wz4R8FlU0sETkHTo0i_7o','2020-08-30 12:36:34.433646','2020-08-31 12:36:34.000000',27,'02b3b5857ab24441b71e74a572c2fe37'),
	(682,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODg2MCwianRpIjoiNGE4OTU3OTRjY2JhNDg0ZThiZTU5YzEzNDAwYjVkMDciLCJ1c2VyX2lkIjoyOH0.095_hbYLZmf1xd3B7Zcc85fU6nlGo115Px6467ZDtUw','2020-08-30 13:01:00.427238','2020-08-31 13:01:00.000000',28,'4a895794ccba484e8be59c13400b5d07'),
	(683,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODg3MiwianRpIjoiYzY2NDdjZGFiNDg0NDVlMmEwNjA0NDFjZTQ2MWFiZjMiLCJ1c2VyX2lkIjoyOH0.zv5_rV_10JooN178FMNORW3zBtadJ1dE6NLgSSllKpw','2020-08-30 13:01:12.715621','2020-08-31 13:01:12.000000',28,'c6647cdab48445e2a060441ce461abf3'),
	(684,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODg4NCwianRpIjoiY2Y5NjVmY2FlMGIwNDE4ZWI0ODMwZDU4ZjgxZDY5NjciLCJ1c2VyX2lkIjoyOH0.oo5DyM4V5EKs07EtTn67kRnbYfOlsc_1PujmhlUs8Yg','2020-08-30 13:01:24.361816','2020-08-31 13:01:24.000000',28,'cf965fcae0b0418eb4830d58f81d6967'),
	(685,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODkxMSwianRpIjoiNTBjN2EzYzJmZWFkNDNjNmI5NjdjNjhkYjBiZDFkMmIiLCJ1c2VyX2lkIjoyOH0.7JCWEylIelqYeOdrSF15UbX9nI_tMlrfldXj4Uzufps','2020-08-30 13:01:51.726338','2020-08-31 13:01:51.000000',28,'50c7a3c2fead43c6b967c68db0bd1d2b'),
	(686,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODkzOSwianRpIjoiNmIxMjczMjRhMWQzNDA1YzgzMzdlMDMwYmU3M2M4ZWMiLCJ1c2VyX2lkIjoyOH0.tSIByV4qBcwZ5-fDwmmyr0OpSJVku6nzdF4ennP1tnA','2020-08-30 13:02:19.277793','2020-08-31 13:02:19.000000',28,'6b127324a1d3405c8337e030be73c8ec'),
	(687,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODk0OSwianRpIjoiNjgyMDE0OWYzNWM2NGVmNmEzY2M3NmU4OWVkNmY3ODQiLCJ1c2VyX2lkIjoyOH0.l36uZpGHQ5gyQu5SyvSHDTrNG5k_oupHuLQ-FpOcgLQ','2020-08-30 13:02:29.605032','2020-08-31 13:02:29.000000',28,'6820149f35c64ef6a3cc76e89ed6f784'),
	(688,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODk1OSwianRpIjoiODc1MWJhNDBjYzBiNDhkNDk1Yjc1NmFhOWI1NWJjNDciLCJ1c2VyX2lkIjoyOH0.L6J5WPFqkKc7p0_EL-Sj-IoyUtcuMQ1F4doLv6gDdT4','2020-08-30 13:02:39.571869','2020-08-31 13:02:39.000000',28,'8751ba40cc0b48d495b756aa9b55bc47'),
	(689,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODk2OSwianRpIjoiYzE5Mzk5YjdhZTA3NDhlNGE1YTY1ZWVmZDBmZGM2ZDQiLCJ1c2VyX2lkIjoyOH0.mB6q27n_99c-mEs1kKExMBDQRwN1Db5eocg2PnxTsRg','2020-08-30 13:02:49.809945','2020-08-31 13:02:49.000000',28,'c19399b7ae0748e4a5a65eefd0fdc6d4'),
	(690,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3ODk4MCwianRpIjoiMTc3NDRhMTYzMmFkNGFmNTgyMmVkYWEyNWNjNzU1OTEiLCJ1c2VyX2lkIjoyOH0.ZdZbwJMHYc-FVJmcJmobxO0TSDJDy3JIPl9VKhj8Pio','2020-08-30 13:03:00.110696','2020-08-31 13:03:00.000000',28,'17744a1632ad4af5822edaa25cc75591'),
	(691,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTAwOCwianRpIjoiYjI4Mjg1YTk4ZmM5NDVkZWJhOGQ3NTk1ZjgwNjFjNDMiLCJ1c2VyX2lkIjoyOH0.tAMoDlVSeRNSgDeNNcK7_NKunvSpy16CN_DbzDSGfP4','2020-08-30 13:03:28.662018','2020-08-31 13:03:28.000000',28,'b28285a98fc945deba8d7595f8061c43'),
	(692,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTAzMywianRpIjoiNjVlOWI5ODQ5MjBiNDFlYWE2MTczYjRkNDQ2YWIwYTMiLCJ1c2VyX2lkIjoyOH0.PFsAnpHUokF8siY5fr0Df5rusz-WLpYhnundMB20_gA','2020-08-30 13:03:53.565547','2020-08-31 13:03:53.000000',28,'65e9b984920b41eaa6173b4d446ab0a3'),
	(693,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTA1OCwianRpIjoiZjQ4NGM5ZDI4NGI5NGZhOTlhNTE3ZmNlMmUzYzZmNDciLCJ1c2VyX2lkIjoyOH0._ZYjbtaZfi_9nUSUPo-vr8l9OY6MpNm4blcpA80mKF4','2020-08-30 13:04:18.469521','2020-08-31 13:04:18.000000',28,'f484c9d284b94fa99a517fce2e3c6f47'),
	(694,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTA4NCwianRpIjoiYmU0OTczODE1NmQxNDI5ZmFjYzYwMmM4NzdmZjQ2MWEiLCJ1c2VyX2lkIjoyOH0.QpZesTDUJUTGMPA8NGIrhwiJ089RzQH6d18gIuT9MYA','2020-08-30 13:04:44.035134','2020-08-31 13:04:44.000000',28,'be49738156d1429facc602c877ff461a'),
	(695,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTA5NCwianRpIjoiMzk2ODc3Zjk4Yjc5NDkzMDhjYzQ0Y2RkMGI3MDQ2MjQiLCJ1c2VyX2lkIjoyOH0.rMlAL-P1Qda_JgIgasaYjj9JsoTjlvCKSyu5xHszq6g','2020-08-30 13:04:54.153122','2020-08-31 13:04:54.000000',28,'396877f98b7949308cc44cdd0b704624'),
	(696,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTEwNSwianRpIjoiNTRkZTAxZWRkNTdjNDMxMTgyZjRmODViNDMxMDU3YWIiLCJ1c2VyX2lkIjoyOH0.POkuq3YypENZCWRE6oI0-GKAbu495DaaHn4Mp3mzpyE','2020-08-30 13:05:05.072381','2020-08-31 13:05:05.000000',28,'54de01edd57c431182f4f85b431057ab'),
	(697,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTExNSwianRpIjoiZDJmYTU2Y2Q3ODY0NGFlOGE2ODU5OThkNmExZDJkYzQiLCJ1c2VyX2lkIjoyOH0.j7s64Jy9ulI9nBKyLF8zafi8gvHO1CQeq4FaRWPGcBc','2020-08-30 13:05:15.318241','2020-08-31 13:05:15.000000',28,'d2fa56cd78644ae8a685998d6a1d2dc4'),
	(698,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg3OTEyNiwianRpIjoiZGVlZTk5ZTFhYzYzNDI4MTlhMTA4ZTVlYThkNGIwNjciLCJ1c2VyX2lkIjoyOH0.4lRWCFbZOEPUTd7RBiGbTTlfdRn3qet0V85qlD0uiuQ','2020-08-30 13:05:26.097414','2020-08-31 13:05:26.000000',28,'deee99e1ac6342819a108e5ea8d4b067'),
	(699,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4MjQ0MiwianRpIjoiYjgxYjliZjJiZGVlNGQxMWFjMTcyODJhZThmNWQ3NWUiLCJ1c2VyX2lkIjoyNX0.07mNNmMMZHA3bz2NA3vZLvT398s0vEz9goDfrwPzFTM','2020-08-30 14:00:42.065060','2020-08-31 14:00:42.000000',25,'b81b9bf2bdee4d11ac17282ae8f5d75e'),
	(700,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4MjQ1OCwianRpIjoiNzUyOTYwNGVhOTE0NDIyZWE2NWQxY2NlZjU1NWEyYmUiLCJ1c2VyX2lkIjozM30.seThya5wXaIiyi9_bSY2Yqt_xYY6ngInoFmmYXiY2FI','2020-08-30 14:00:58.242536','2020-08-31 14:00:58.000000',33,'7529604ea914422ea65d1ccef555a2be'),
	(701,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4MjYyNSwianRpIjoiZDYwZTI4OGM2MmZjNDBmYjliYjA0MzdkYzM5Y2I0NzIiLCJ1c2VyX2lkIjoyN30.RmUmazhkkss0unZkaFC9ERSMdoBz21o15PDFjhj6ABg','2020-08-30 14:03:45.446961','2020-08-31 14:03:45.000000',27,'d60e288c62fc40fb9bb0437dc39cb472'),
	(702,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4MjY3MiwianRpIjoiNDU5YWVhZjBhZjdhNDU4OThhZjYzMjAzZGYzOTdjZjMiLCJ1c2VyX2lkIjoyN30.JKcKAFfpXCpvBpdFGgUbtDevalyd4IIR__wwKSsu1MY','2020-08-30 14:04:32.659815','2020-08-31 14:04:32.000000',27,'459aeaf0af7a45898af63203df397cf3'),
	(703,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4MjcwOCwianRpIjoiYjQ5ZDM3ZDZmZTgyNGRhMDk0YzE2YzQwYTllYTUyMzMiLCJ1c2VyX2lkIjoyN30.6qg-YwXN6OHd1yPPSh7lPi1TKh2TeihNwKIQ48gqeM4','2020-08-30 14:05:08.258291','2020-08-31 14:05:08.000000',27,'b49d37d6fe824da094c16c40a9ea5233'),
	(704,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4MjgzOSwianRpIjoiYTE0NDYwNzhiZjkxNGExMzhkZjk1YmU1MGM4MDg5MDMiLCJ1c2VyX2lkIjoyN30.vBkz6D6YCZNg944s36qHylY_amjjeBedaapINfwxQXI','2020-08-30 14:07:19.722393','2020-08-31 14:07:19.000000',27,'a1446078bf914a138df95be50c808903'),
	(705,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4Mjg2OSwianRpIjoiNGVjMmZhMDRhMTgyNDZhNDg2Zjg3NDdmYTQ2Y2IyNjMiLCJ1c2VyX2lkIjoyNX0.Xd3D-CDl2AwP8I6eC28Z7dFpWo7k8_t-jB81lB7mM4Y','2020-08-30 14:07:49.811441','2020-08-31 14:07:49.000000',25,'4ec2fa04a18246a486f8747fa46cb263'),
	(706,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4Mjg4NywianRpIjoiNDA5YmE5MjY2ZjE0NDBhODhiMzlhNjE2ODk4ZmI5YmUiLCJ1c2VyX2lkIjoyNX0.Et59xjplXcsQwvuuR0D3FuNAOc49kJ4uUYA5zigq8q8','2020-08-30 14:08:07.373423','2020-08-31 14:08:07.000000',25,'409ba9266f1440a88b39a616898fb9be'),
	(707,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NDM0MCwianRpIjoiYTVkMDQwNTMyY2EzNDY2OGJhNmU2NDBlNTU4ODZhNzkiLCJ1c2VyX2lkIjoyNX0.8_MrHXxpVQfI4bwFMcdkD6fs888njiHmfbPWuMcYamQ','2020-08-30 14:32:20.514683','2020-08-31 14:32:20.000000',25,'a5d040532ca34668ba6e640e55886a79'),
	(708,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NTEwOCwianRpIjoiZTNhZDEwZjhlZTFlNDE1NDhlNjBkNGQyMDFiOTlhYmEiLCJ1c2VyX2lkIjozfQ.0KE9j6Ax4jmlPjSVHYUjXffa10N6wGu-EbOtraVD5lQ','2020-08-30 14:45:08.526279','2020-08-31 14:45:08.000000',3,'e3ad10f8ee1e41548e60d4d201b99aba'),
	(709,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NTE2OSwianRpIjoiN2ViZWNhNWFjMWQwNGZkMTk5ODUxMTNlNjY3ZmYzNWUiLCJ1c2VyX2lkIjozfQ.vcO_3pi6L6H2tepNQM0vybPZgoXMTvdTmB_mmvThN8g','2020-08-30 14:46:09.947666','2020-08-31 14:46:09.000000',3,'7ebeca5ac1d04fd19985113e667ff35e'),
	(710,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NTI1OSwianRpIjoiYjQxMzg1MDQ3ZDAwNDQ4OWJjNTBiMTM1Mjc2YTZkNDkiLCJ1c2VyX2lkIjozfQ.hVQazgsviLkgEBHzuyIvY4eGZvm_oxAeug9ctZ8QDxg','2020-08-30 14:47:39.246177','2020-08-31 14:47:39.000000',3,'b41385047d004489bc50b135276a6d49'),
	(711,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NjIzNSwianRpIjoiZmU5NWY0YzU3M2NmNDk5N2JlYjgwNDkwY2JmYWY0MDciLCJ1c2VyX2lkIjoyNX0.EjjCWN5WyQZss7b8ISaJ_DkXuMrMQhEzXKc53JS9N58','2020-08-30 15:03:55.435344','2020-08-31 15:03:55.000000',25,'fe95f4c573cf4997beb80490cbfaf407'),
	(712,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NjMyMSwianRpIjoiNzRlZWFmZjU1OWQ2NGZlZDkxNmE2ZmZhN2EwMmE1YTgiLCJ1c2VyX2lkIjoyNX0.0P1f354EsQReMjlmRIK9uRosY0RtfcYuSdTMmKgP2-k','2020-08-30 15:05:21.150957','2020-08-31 15:05:21.000000',25,'74eeaff559d64fed916a6ffa7a02a5a8'),
	(713,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NzA1NSwianRpIjoiNWFkMWQ1NmQ4MzBmNDI1YmE2YzYwZTlkMzBmYmM0OWMiLCJ1c2VyX2lkIjoyNX0.egk7RGvWWXgGKQTQy6A8r5C7ETLfAq4PJ5eRaKj2QG8','2020-08-30 15:17:35.036295','2020-08-31 15:17:35.000000',25,'5ad1d56d830f425ba6c60e9d30fbc49c'),
	(714,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4NzcyMCwianRpIjoiNmNmNWQxZDc5Yjc4NGUyZmIyZjYzZDQ1OWM0NDg3MjMiLCJ1c2VyX2lkIjoyNX0.5QVxkoP5XJXySwBLBXSrYZLF97qbz0GEjpHg7u-s704','2020-08-30 15:28:40.855223','2020-08-31 15:28:40.000000',25,'6cf5d1d79b784e2fb2f63d459c448723'),
	(715,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODg4ODE0MCwianRpIjoiZTc3M2Q0Yzc4NTY0NGI1ZGIxNTI2YTEwMWM0NDBmMDgiLCJ1c2VyX2lkIjoyNX0.ChZnWGGlmuY1J7Gyo5yNFU2obdqumT_r_Thr1KpsgZY','2020-08-30 15:35:40.760044','2020-08-31 15:35:40.000000',25,'e773d4c785644b5db1526a101c440f08'),
	(716,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk0ODg3NSwianRpIjoiMmUzMmUzMDZkMTY0NGJiNjg0OWI5YTNlMTI0NGQ5ZmYiLCJ1c2VyX2lkIjoyfQ.k135fMaICkKbsYQd4bEo4jlLJMNxXENLo9znba55T2o','2020-08-31 08:27:55.061356','2020-09-01 08:27:55.000000',2,'2e32e306d1644bb6849b9a3e1244d9ff'),
	(717,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk2MTIwMCwianRpIjoiODhlNzA0OWQzNTY2NDgzYmE5MjlmMmI4Mzg2ZGY1ZjUiLCJ1c2VyX2lkIjoxfQ.u0QdHUqxtmdP54gJWXtFEw2GVzQe1ModdH5Qd5sQhzs','2020-08-31 11:53:20.895949','2020-09-01 11:53:20.000000',1,'88e7049d3566483ba929f2b8386df5f5'),
	(718,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk2MTcwOSwianRpIjoiZGQyMDE5MWJjOThkNGJiODhiMzU3NzBiMWMwODgwMWMiLCJ1c2VyX2lkIjozfQ.tMQKSLpHMC-x-CXXBtm5P6XUvRJ_EJ7nRDkdUFfqArE','2020-08-31 12:01:49.749519','2020-09-01 12:01:49.000000',3,'dd20191bc98d4bb88b35770b1c08801c'),
	(719,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk2MjkxNSwianRpIjoiZjJhNTU2OTA5YmZjNGM2MDg3N2U1Yjg4MmJlMjMwNjYiLCJ1c2VyX2lkIjoxfQ.IGNKHGv6G82L36XZeeNhw4CF0dxh1jJYUU3IqtID5UQ','2020-08-31 12:21:55.722205','2020-09-01 12:21:55.000000',1,'f2a556909bfc4c60877e5b882be23066'),
	(720,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MjY2NywianRpIjoiMWM2NmU2OTRkMjQxNDhkMzk2ZDliZjNhM2I3ZWQwNjEiLCJ1c2VyX2lkIjoyNX0.gKCdz8BGy01oMo8z4x05NlzsoC19VCUhM9zuB8pz7Nc','2020-08-31 17:51:07.254852','2020-09-01 17:51:07.000000',25,'1c66e694d24148d396d9bf3a3b7ed061'),
	(721,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MjcxMiwianRpIjoiNmQxOTYyZDZiNDBiNGFjN2JlMTZkMzdkNmE5YmJlYzAiLCJ1c2VyX2lkIjoyNX0.rR8HsWmv4_yMKNBs5gXRbOTOeizs3i6I4UCA-9T9nCY','2020-08-31 17:51:52.835029','2020-09-01 17:51:52.000000',25,'6d1962d6b40b4ac7be16d37d6a9bbec0'),
	(722,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mjc3NiwianRpIjoiZTEwMjM5NTIzNDZiNGUxMzgwNDViYzUxYjA5Y2U2ZWUiLCJ1c2VyX2lkIjoyNX0.5N3YgMHcWdhjXvz-wp7jlYlf-qA9DGN6c06fZM8qfeQ','2020-08-31 17:52:56.328373','2020-09-01 17:52:56.000000',25,'e1023952346b4e138045bc51b09ce6ee'),
	(723,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mjg3NywianRpIjoiNTUwODMyNjFlMTIzNDY2M2E1OTI1MGFmNWUwYTc3NGYiLCJ1c2VyX2lkIjoyNX0.OQPqkHrilJxW0ItN4PyVsucv47qTRWjddorVqNpTRH0','2020-08-31 17:54:37.804273','2020-09-01 17:54:37.000000',25,'55083261e1234663a59250af5e0a774f'),
	(724,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mjk1MiwianRpIjoiYTYyZmUwY2Q0ODZmNDkyODlkMWIxODJhNTgyZGFkYjUiLCJ1c2VyX2lkIjoyNX0.iLW1tIChIQzk9m9Q2JEnYWnj-ClFijmqx21P2MbxV3E','2020-08-31 17:55:52.557539','2020-09-01 17:55:52.000000',25,'a62fe0cd486f49289d1b182a582dadb5'),
	(725,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mjk2NCwianRpIjoiYTg4Mzg5OWZkNzZlNDZkOWEzOGNhY2M4ZTU1MTljYjkiLCJ1c2VyX2lkIjoyNX0.suwaZQzsyRIjbTvs382yfRAbMJPu-8j-QHZhAEAFmzU','2020-08-31 17:56:04.324391','2020-09-01 17:56:04.000000',25,'a883899fd76e46d9a38cacc8e5519cb9'),
	(726,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mjk3NywianRpIjoiZGQ1MzUzMTI4MWZlNDA2ZWJmZTAxY2MxNjhlYTFkZjYiLCJ1c2VyX2lkIjoyNX0.s_nnCLBKKY1w0bJDfyLd1XGlmZnndCcqRgF9mIW7O5c','2020-08-31 17:56:17.192365','2020-09-01 17:56:17.000000',25,'dd53531281fe406ebfe01cc168ea1df6'),
	(727,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mjk5MSwianRpIjoiOTJmNDNkMTRhOWM1NGUzMjg0NTFjMjY3OWYxNDg5NTQiLCJ1c2VyX2lkIjoyNX0.fcV06dcIr--mGECMj7wKarjpdyTqvr7c1zaXLnzpvGQ','2020-08-31 17:56:31.639651','2020-09-01 17:56:31.000000',25,'92f43d14a9c54e328451c2679f148954'),
	(728,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzAxNSwianRpIjoiZmQ0Yjc1MDQwYjQ3NGQ0ZWFmMDQyNDk3ZmRkYjEwNTMiLCJ1c2VyX2lkIjoyNX0.3PQ6DnlYBan0LE4BQF_24Y1-st3umnl13sQDtEQ9IVY','2020-08-31 17:56:55.685145','2020-09-01 17:56:55.000000',25,'fd4b75040b474d4eaf042497fddb1053'),
	(729,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzA3NCwianRpIjoiNWQyZTJmNzRjMzc0NDcyM2IwMDllMDU5NmJmMzU4ZGEiLCJ1c2VyX2lkIjoyNX0.GHvsjUU_yqGPxRu-QkyIUSZgFZatxaYd59DAMKbzb2c','2020-08-31 17:57:54.598743','2020-09-01 17:57:54.000000',25,'5d2e2f74c3744723b009e0596bf358da'),
	(730,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzA5MCwianRpIjoiZmZhNTllNDkwNGRjNGZmMTlmZDlhYmZiMjU1OWM0ZjMiLCJ1c2VyX2lkIjoyNX0.YkIluZAT79IiD94_nO6m6apqN--e5-OlXatKpgcMnRc','2020-08-31 17:58:10.318510','2020-09-01 17:58:10.000000',25,'ffa59e4904dc4ff19fd9abfb2559c4f3'),
	(731,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzE1NSwianRpIjoiNDg0NmQyOGVlODMzNDBjYWFhMDUxMTgzMGYwMDZlZjAiLCJ1c2VyX2lkIjoyNX0.AS_WmDllD_7loS1rdSXtBLGtvyprFm-mUJgG2lcnoJE','2020-08-31 17:59:15.189668','2020-09-01 17:59:15.000000',25,'4846d28ee83340caaa0511830f006ef0'),
	(732,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzE2NiwianRpIjoiNDAzN2Y3MjQxMDQ5NDFkMjhlN2VkMGVjZDIzMzc1NWUiLCJ1c2VyX2lkIjoyNX0.G1NLrI3c3jC5sMX-H1oDLpXNryuBIOTQkjW0YaJimxg','2020-08-31 17:59:26.727827','2020-09-01 17:59:26.000000',25,'4037f724104941d28e7ed0ecd233755e'),
	(733,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzE4MCwianRpIjoiZTUyMGU4YmI4MTdlNDdhYWFlMThmMDVjOTVmOTZlOGQiLCJ1c2VyX2lkIjoyNX0.jzwOBiWHC7at4E_thWH3zntxVzuIyQGheiqwypIvsPU','2020-08-31 17:59:40.140044','2020-09-01 17:59:40.000000',25,'e520e8bb817e47aaae18f05c95f96e8d'),
	(734,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzE5MywianRpIjoiMTA2MWRmMDFlZTc0NGIzM2FhNzU3NGY0ZGMyNzZiOTMiLCJ1c2VyX2lkIjoyNX0.BCXxw_DHiyYPxHLfi7_fpzmkOXq86VmjD0g1q7lHTlE','2020-08-31 17:59:53.389019','2020-09-01 17:59:53.000000',25,'1061df01ee744b33aa7574f4dc276b93'),
	(735,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzIxNywianRpIjoiODZjY2NhOGRkZTAyNDk4N2E5NGQ4OWIzY2Q0MTg0ZjIiLCJ1c2VyX2lkIjoyNX0.3SXMVOWGWqqHoWtroffxDrYDg5v1Z5mFyccZQ2omHuQ','2020-08-31 18:00:17.125911','2020-09-01 18:00:17.000000',25,'86ccca8dde024987a94d89b3cd4184f2'),
	(736,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzI2NywianRpIjoiNWVkZWRlN2JhZDQ1NDdmZWI2MWIyM2FhZmU4ZTM2MjIiLCJ1c2VyX2lkIjoyNX0.KyHe7u6QH_4Cw37LQMAf--XgapbTD7qdqvsUM-7ayQc','2020-08-31 18:01:07.986451','2020-09-01 18:01:07.000000',25,'5edede7bad4547feb61b23aafe8e3622'),
	(737,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzI4MiwianRpIjoiNGJkZTg2NjY4NzI4NGU0ZWJmMTcyNzk0ODVkMmFjZmIiLCJ1c2VyX2lkIjoyNX0.uo9dtD2U_nbXLnq0AKvTLgHdpu5V_-gdXh5hKvADHP8','2020-08-31 18:01:22.608395','2020-09-01 18:01:22.000000',25,'4bde866687284e4ebf17279485d2acfb'),
	(738,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzMyNCwianRpIjoiNjQ0ZDg2MGE4NjUwNDczOGE2NGRhZmI3NzhmYmMyMzkiLCJ1c2VyX2lkIjoyNX0.Tc2qUYwSVBotSuOgNUCgj9_zazxyDySGtmo8KaOzsPY','2020-08-31 18:02:04.088421','2020-09-01 18:02:04.000000',25,'644d860a86504738a64dafb778fbc239'),
	(739,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzMzOSwianRpIjoiZTU4ZTIxYjI3YTYzNDE5MjlmNzZjN2JhNGFiNDVmNTAiLCJ1c2VyX2lkIjoyNX0.tOQzJZmc2Ac8oXSR623hr1HqEFRsBAtVraHDA65e-1g','2020-08-31 18:02:19.839653','2020-09-01 18:02:19.000000',25,'e58e21b27a6341929f76c7ba4ab45f50'),
	(740,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzM1MiwianRpIjoiYjVlOGNjYmNkZjM3NDVkMjg0ZTM1OTc5OGQ3YjY4MzIiLCJ1c2VyX2lkIjoyNX0.9vLi4KNbOva7dKtxcsYSt1HVRe9c33cfMBZpCgbs8pE','2020-08-31 18:02:32.073624','2020-09-01 18:02:32.000000',25,'b5e8ccbcdf3745d284e359798d7b6832'),
	(741,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzM3OSwianRpIjoiNzUzNTRjMjZmYTkxNDNjNjhjMTE3NWY0YjVmZTI4NDAiLCJ1c2VyX2lkIjoyNX0.aGm5B051S8I97wG6UEeWKDtkKKkHo23DNPMaMdU0dKs','2020-08-31 18:02:59.888530','2020-09-01 18:02:59.000000',25,'75354c26fa9143c68c1175f4b5fe2840'),
	(742,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzM5MSwianRpIjoiMjY5NjYwNDQ3OWI4NDEzM2JlNjE1M2EwODU3OTUxZjYiLCJ1c2VyX2lkIjoyNX0.louXo0XuzpKYaVvAhUf5x2Nd6skI0P7RmYmZzl13t7c','2020-08-31 18:03:11.781169','2020-09-01 18:03:11.000000',25,'2696604479b84133be6153a0857951f6'),
	(743,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQwMiwianRpIjoiZjZkZDk5MzQwZWYxNDBmMWI4ZTdiYjhmY2Q2ZjUwOTgiLCJ1c2VyX2lkIjoyNX0.zJ2r9EFk8_4U20WtYYzMM_4xekx4vcF53Ktm9OVB7EE','2020-08-31 18:03:22.581503','2020-09-01 18:03:22.000000',25,'f6dd99340ef140f1b8e7bb8fcd6f5098'),
	(744,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQxNywianRpIjoiYzlhYjU2NTg5OGI2NDZjNWI1YTEzMWQ4OTgwZjQxMGUiLCJ1c2VyX2lkIjoyNX0.93oXeWtRN8Lfrgkba4kTGH0UdeREvXPN3UsWNNvybTM','2020-08-31 18:03:37.028736','2020-09-01 18:03:37.000000',25,'c9ab565898b646c5b5a131d8980f410e'),
	(745,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQyOCwianRpIjoiNGQ2NDE0OTAxM2Y3NDQwYmE1ZTQwNjVkMWY0NDg1NTYiLCJ1c2VyX2lkIjoyNX0.-JbduU9uawBUdbYqRHB5DHy_1_JNHr4pYLEIkz4goFM','2020-08-31 18:03:48.012019','2020-09-01 18:03:48.000000',25,'4d64149013f7440ba5e4065d1f448556'),
	(746,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQ0MywianRpIjoiNzQ4N2ZmOTNhNjJiNDllZWFkZWY1OWI3MGVjZTA2OWYiLCJ1c2VyX2lkIjoyNX0.DXl6aHwkZhIwU_7UchfeHiY3oVAKuY9Qf4UGjeluc5s','2020-08-31 18:04:03.447344','2020-09-01 18:04:03.000000',25,'7487ff93a62b49eeadef59b70ece069f'),
	(747,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQ1MywianRpIjoiMjVjNmMyZWYxZWVjNDZhZTkwOThlYTg2NTlkMmQzNWYiLCJ1c2VyX2lkIjoyNX0.oc6ZYMw3hH11S0pwojpHJ1NvZCcouZ2fc6-cEO5CxEE','2020-08-31 18:04:13.157101','2020-09-01 18:04:13.000000',25,'25c6c2ef1eec46ae9098ea8659d2d35f'),
	(748,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQ2MywianRpIjoiZTMyZTVlNDZiZjM4NGIyZThkNzRjZGY4YTc5MzYzOTQiLCJ1c2VyX2lkIjoyNX0.d64RbYYbC2coXCEUOjon0FPJrHqQB_rF56DC4AfJjPg','2020-08-31 18:04:23.519469','2020-09-01 18:04:23.000000',25,'e32e5e46bf384b2e8d74cdf8a7936394'),
	(749,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQ3NiwianRpIjoiZjRkMzlkMmZjM2VhNDVlOGJiYjljZTJkZWQwNTViZjgiLCJ1c2VyX2lkIjoyNX0.DIEO7qtCcHR-0aj4e8EVxkRGMWZj1pv6rtrNlZ5NPUs','2020-08-31 18:04:36.651203','2020-09-01 18:04:36.000000',25,'f4d39d2fc3ea45e8bbb9ce2ded055bf8'),
	(750,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzQ4OCwianRpIjoiNjBkZmIxNzhjNzQ3NDA4YTk1MGJiODIwNzBiNGQyYmUiLCJ1c2VyX2lkIjoyNX0.eymry_IbJCfAdSObu_q4LZNKoG5oDA22bt6gomtlP-8','2020-08-31 18:04:48.389261','2020-09-01 18:04:48.000000',25,'60dfb178c747408a950bb82070b4d2be'),
	(751,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzUwOSwianRpIjoiNzAzY2I3ODc4ZTNiNGEyNTlmMThlNTdlNmQyNjNmMDIiLCJ1c2VyX2lkIjoyNX0.y-tGrg7R6NrtHLph8No6fg1ZX9Fb1ok_CIsCeqGpjX8','2020-08-31 18:05:09.009553','2020-09-01 18:05:09.000000',25,'703cb7878e3b4a259f18e57e6d263f02'),
	(752,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzUyMCwianRpIjoiMzZjNzUzMzYxYTNmNDdiN2IwMDhjZjFmYmFiOGRjMzQiLCJ1c2VyX2lkIjoyNX0.uAIjBB0AfHIT6Cb8kl7jf7oLXKgrI_jkSQMzyR_Qp70','2020-08-31 18:05:20.080838','2020-09-01 18:05:20.000000',25,'36c753361a3f47b7b008cf1fbab8dc34'),
	(753,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4MzUzMiwianRpIjoiZDk4ZTUzNWY0NWQwNDdlYmIxZDA0ZDM1YzgyOTk2OGYiLCJ1c2VyX2lkIjoyNX0.Mu1F7-WQQ9uzn9kcgSQ5Uhz9pN8z7dvHuDhiC7nUAz0','2020-08-31 18:05:32.021398','2020-09-01 18:05:32.000000',25,'d98e535f45d047ebb1d04d35c829968f'),
	(754,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mzc4NywianRpIjoiYzg5OWVmZjEyODQzNGRjY2JiYWU3NjMyMTU2NjBhMjUiLCJ1c2VyX2lkIjoyNX0.yT895Zx5SDwu9ER4_p5qMpCK7tUImaYW3Tk1BEC45BI','2020-08-31 18:09:47.064645','2020-09-01 18:09:47.000000',25,'c899eff128434dccbbae763215660a25'),
	(755,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mzg4MCwianRpIjoiOWQwMjA5ZjczZTg2NGE4YWE4NTQ3MTg2OTkwMTZiMDgiLCJ1c2VyX2lkIjoyNX0.df4FM84eCt3ZB-85xZwN5Umi-TJ-CWZNAliNTMei94M','2020-08-31 18:11:20.046068','2020-09-01 18:11:20.000000',25,'9d0209f73e864a8aa854718699016b08'),
	(756,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5ODk4Mzk5MCwianRpIjoiZWI5MGU1YjQzMzllNGE3OWFiYjJlNTI3YTJiNmRjYTAiLCJ1c2VyX2lkIjoyNX0.tMZbNy9BKuR1_67NNkqeeTcAFPmkMHoReV8pKq1-qp8','2020-08-31 18:13:10.157978','2020-09-01 18:13:10.000000',25,'eb90e5b4339e4a79abb2e527a2b6dca0'),
	(757,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDM4NywianRpIjoiMjE3ODRmNTA0MmNhNGNhYzk0MTY0OGVmOTIzY2IyYWIiLCJ1c2VyX2lkIjozM30.7aUQXGDtz4KQ-IV7bu-BxC4nc7e20URWYeHfvCxtSXo','2020-09-01 05:26:27.600895','2020-09-02 05:26:27.000000',33,'21784f5042ca4cac941648ef923cb2ab'),
	(758,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDM5NSwianRpIjoiY2FlMGNiYjI5OGFjNDgxN2JkOGQzZWFhMTIxNTBjNTYiLCJ1c2VyX2lkIjozM30.P3oqQQmL76obgPkA_t7kr0XISSzKc1aOccRbUqF6QYU','2020-09-01 05:26:35.630238','2020-09-02 05:26:35.000000',33,'cae0cbb298ac4817bd8d3eaa12150c56'),
	(759,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQyMSwianRpIjoiMjZlNDQ1YzBjZmI3NDc4ZGIyYjE4NGRjZDI2ODRlYjQiLCJ1c2VyX2lkIjozM30.K-ytNqEawA7cTxMN5YwO_CGNfKYmh0_NNG7z9YOCaFg','2020-09-01 05:27:01.529510','2020-09-02 05:27:01.000000',33,'26e445c0cfb7478db2b184dcd2684eb4'),
	(760,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ0NSwianRpIjoiMTgzMTgzODgyYzE3NDEyNWIyZDY4MDBhMGE2MWJjZTMiLCJ1c2VyX2lkIjozM30.FP0Xjli7B-1Bb8UQGze47HSmF-Q4Pd0hwH2Cc7BVvgY','2020-09-01 05:27:25.723232','2020-09-02 05:27:25.000000',33,'183183882c174125b2d6800a0a61bce3'),
	(761,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ1MywianRpIjoiYjA0ZDczZmJjMWQ0NDFlNThkNDM5N2I0ODM2MWVjODMiLCJ1c2VyX2lkIjozM30.TwN1F6mpcSzBNWSYdLNWTGPgO3Z5WxF4Hj0TzDedEMU','2020-09-01 05:27:33.188275','2020-09-02 05:27:33.000000',33,'b04d73fbc1d441e58d4397b48361ec83'),
	(762,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ2MSwianRpIjoiOGU4NzNjMWFjYTRiNGVhYWJmYWI2ZGI3MjQ3MGQzM2QiLCJ1c2VyX2lkIjozM30.Jabm2yKJHhpudWIZw8z4SPmYTTPO9dUE8GZYS6mhHK0','2020-09-01 05:27:41.009414','2020-09-02 05:27:41.000000',33,'8e873c1aca4b4eaabfab6db72470d33d'),
	(763,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ2NywianRpIjoiZTUyOGQ3ZDBiMDc0NDMxMDhlZTMxZjc3ZWQ3MWI2MDUiLCJ1c2VyX2lkIjozM30.oMdKT68Gr9cuTfEBDGsCJdLyDAN9ZLn8BbjO74kUrao','2020-09-01 05:27:47.780060','2020-09-02 05:27:47.000000',33,'e528d7d0b07443108ee31f77ed71b605'),
	(764,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ3NCwianRpIjoiNjY4Nzk1YzllNDQzNDY0ZDhkNzI5NjVlYmRiNTkxYWMiLCJ1c2VyX2lkIjozM30.6419ZvbgHnWNtwbhk3Fbg-neJGMvRPqB7892kM8oUQo','2020-09-01 05:27:54.589750','2020-09-02 05:27:54.000000',33,'668795c9e443464d8d72965ebdb591ac'),
	(765,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ4MSwianRpIjoiODljNDkzODIxMmVmNDY1ZGFhMDQ2NmQzOTNkYjE5YTIiLCJ1c2VyX2lkIjozM30.swMHeSwFeuDAfBUZBBlDSXV75XAs0ldzFNQTUUbFI3A','2020-09-01 05:28:01.809802','2020-09-02 05:28:01.000000',33,'89c4938212ef465daa0466d393db19a2'),
	(766,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDQ5MSwianRpIjoiZDhkMDFkM2NmZDFmNDY3ODk0MWI1MGEzMzE1YmJiMTYiLCJ1c2VyX2lkIjozM30.CZGLoJ-B-rdwcPBrHYiyz0E4uBM4ubC7YQLPfTzpLBM','2020-09-01 05:28:11.425566','2020-09-02 05:28:11.000000',33,'d8d01d3cfd1f4678941b50a3315bbb16'),
	(767,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDUxMiwianRpIjoiYTVhOWEzMmJmMGNkNDI1ZDlhMzkyMWYzMDlhZmJhZGYiLCJ1c2VyX2lkIjozM30.jm_KZaE2zl5TOyjWU5FUs7HLDCYkBo0Jx2zAhFZb70A','2020-09-01 05:28:32.056647','2020-09-02 05:28:32.000000',33,'a5a9a32bf0cd425d9a3921f309afbadf'),
	(768,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDUyMSwianRpIjoiYWRmOTdiMTkxZDIyNDUxMTg5NWEyZDQ1ODNjNmZhMmQiLCJ1c2VyX2lkIjozM30.NmXlZ-iU7B8UxY22oFhvKF3UctL3jOa7vEQyFy9fZSY','2020-09-01 05:28:41.219030','2020-09-02 05:28:41.000000',33,'adf97b191d224511895a2d4583c6fa2d'),
	(769,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDUyOSwianRpIjoiYmUxMTI3MGZjNzA4NDFjNmJhYjkzODA1NDE0MGQ1ZWMiLCJ1c2VyX2lkIjozM30.f7FpNO2KJRSy1MiWEt__4TOENkQX67jtHlgzSF-Vzb4','2020-09-01 05:28:49.983007','2020-09-02 05:28:49.000000',33,'be11270fc70841c6bab938054140d5ec'),
	(770,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDUzOCwianRpIjoiYjVlY2E4NmQzN2ZkNGZlNmI0YjIxMTJmNWQ2N2YzYTAiLCJ1c2VyX2lkIjozM30.ZNCbHTWYhYPzxM4onhxk9c6YJHnhWS5FAV3dKJKpTeM','2020-09-01 05:28:58.790413','2020-09-02 05:28:58.000000',33,'b5eca86d37fd4fe6b4b2112f5d67f3a0'),
	(771,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDU0NSwianRpIjoiZDYxMmY1NDU4NjA5NDU4Mjg4NzczMzg2NmM5MzE5YTEiLCJ1c2VyX2lkIjozM30.1wG203KquhsEU_GibmxJ-DRNPSg6zl7chuhK-u-zn7g','2020-09-01 05:29:05.401389','2020-09-02 05:29:05.000000',33,'d612f54586094582887733866c9319a1'),
	(772,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDU1MywianRpIjoiYWVlMDA3Nzg4ZTA0NDVhZDk2ZjU1MzQ2NGE4ODM5MTIiLCJ1c2VyX2lkIjozM30.zgL9PSPaxq1iH5IWq6EGdlhltQfWT1IR331L8hyI3vQ','2020-09-01 05:29:13.207177','2020-09-02 05:29:13.000000',33,'aee007788e0445ad96f553464a883912'),
	(773,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDU2MCwianRpIjoiNDMyYzQ0MTY0YjRhNGJmMThiOWY3NmZmMTE4YWE3YWQiLCJ1c2VyX2lkIjozM30.vneDR67srPKDl-bbKOXdg5gvM7mAQT5CTk_9rAmPIp0','2020-09-01 05:29:20.197271','2020-09-02 05:29:20.000000',33,'432c44164b4a4bf18b9f76ff118aa7ad'),
	(774,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDU2NiwianRpIjoiZDhlNTY0YmQ0YTA2NDMwZDk5MjUyYzYxOGNmY2ViMTMiLCJ1c2VyX2lkIjozM30.c4ooAVIe2v8edntghB-CAStUuDHy1z_-_nW3aeH01Vo','2020-09-01 05:29:26.539646','2020-09-02 05:29:26.000000',33,'d8e564bd4a06430d99252c618cfceb13'),
	(775,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTAyNDkwNSwianRpIjoiMGQ5NDE1ZTM2ZDA5NDdlZmFjNTEwMGJiMzk4ZGIxYWEiLCJ1c2VyX2lkIjozM30.CWoFmUwt1y56pzycXceKaKcgHz4ndrNcSEU2b-hgUOY','2020-09-01 05:35:05.531394','2020-09-02 05:35:05.000000',33,'0d9415e36d0947efac5100bb398db1aa'),
	(776,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMjc0NCwianRpIjoiYWQzY2YyMzNhMTkwNGE3NGFjMmU5YjJmNmRjMjc3YWUiLCJ1c2VyX2lkIjoxfQ.SeNg3ExMH-yjdLSmelmhDf4PYK4AoSJWnSNvUWGendg','2020-09-02 11:32:24.646535','2020-09-03 11:32:24.000000',1,'ad3cf233a1904a74ac2e9b2f6dc277ae'),
	(777,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMjc0OSwianRpIjoiNGYzZjdhYmY4MTQ0NDhmNWIzMjA4Y2ExMDczYTNlYTkifQ.Nb3TIf-RaE5jgpfuxqd6gTbGYG5tGbbECkLQVYWpbeE',NULL,'2020-09-03 11:32:29.000000',NULL,'4f3f7abf814448f5b3208ca1073a3ea9'),
	(778,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMjc1NCwianRpIjoiM2ZkMDc2YzliNzgxNDQ1Mzk3NmNjZTU4M2MwMTMyYWEiLCJ1c2VyX2lkIjoxfQ.IGyEEs-_Jj_XIwaO9k9_eBpk49-NH-1TNv4QQmMFmZg','2020-09-02 11:32:34.862846','2020-09-03 11:32:34.000000',1,'3fd076c9b7814453976cce583c0132aa'),
	(779,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMjc3OSwianRpIjoiOWNiZjhkNjEzYTgyNDMwMTg3NDg0MzJhZGIxOTJhYzUiLCJ1c2VyX2lkIjoyfQ.zu0xRK75tLuBR44FwT8mS3JKV-ECtAgSSTqURMNc-O8','2020-09-02 11:32:59.857956','2020-09-03 11:32:59.000000',2,'9cbf8d613a8243018748432adb192ac5'),
	(780,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMzcwMSwianRpIjoiNjUwZmI4MzcyNTU2NDNiNGI3MWNmYzBjM2U5N2I0YTEiLCJ1c2VyX2lkIjoyNX0.IvmfzSZFlR0LNRHbqTPIlZVecKpkeQ9Q83viZFkZGY8','2020-09-02 11:48:21.225946','2020-09-03 11:48:21.000000',25,'650fb837255643b4b71cfc0c3e97b4a1'),
	(781,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMzgzNCwianRpIjoiYzg2M2ZhYjIxZGJkNGMyMThjOWZlNWI1ZDMzZTQ5YzkiLCJ1c2VyX2lkIjoyNX0.Z1k0bZMhyfp7T08xPobzJSSVfrdjNSFqAyEj_qtx2H8','2020-09-02 11:50:34.571644','2020-09-03 11:50:34.000000',25,'c863fab21dbd4c218c9fe5b5d33e49c9'),
	(782,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMzg3NiwianRpIjoiNzljZDBjODllZTVhNGRkZTljMjgyNTFmYjAxZTkzYTMiLCJ1c2VyX2lkIjoyNX0.Y-pXqm_uDkHRLAHgGbd9-n3DPw28TXwJUguoY-eAWAM','2020-09-02 11:51:16.634883','2020-09-03 11:51:16.000000',25,'79cd0c89ee5a4dde9c28251fb01e93a3'),
	(783,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzMzk2NywianRpIjoiZjU3M2FlNjNmYjA2NGMxNWEwODA1ODY2Yzc4MzNhOTgiLCJ1c2VyX2lkIjoyN30.eBu3t-lg8ZyHa9xLUImx8vopj3fQ5AIyGc-lQud8gl4','2020-09-02 11:52:47.023089','2020-09-03 11:52:47.000000',27,'f573ae63fb064c15a0805866c7833a98'),
	(784,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDA1MSwianRpIjoiODA4ZmY1MTQ2NzYyNDhhZDk2OGNmYTM0ZWQ1ZDA0NTQifQ.0nGtKR2KzG9LlG3P_Judem0kWq4RY1stQ5muAIvaoS4',NULL,'2020-09-03 11:54:11.000000',NULL,'808ff514676248ad968cfa34ed5d0454'),
	(785,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDA3MCwianRpIjoiYmEzMTkxNmIzY2M4NGUwZTgwYjE4YThiNjliY2YyOWMiLCJ1c2VyX2lkIjoyN30.rvpzBhEWj4tGIAvo6KGlRbo_wK-EVxx605SI9h8Tq_M','2020-09-02 11:54:30.696481','2020-09-03 11:54:30.000000',27,'ba31916b3cc84e0e80b18a8b69bcf29c'),
	(786,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDQ4MCwianRpIjoiNzBkZDBhZDI4N2VhNDA0YmFhMjlkMGExNjM4MjM4OGIiLCJ1c2VyX2lkIjozM30.kaZdiN2g1Z8r5pL49qDFK6upUR0rQQfawsMPHHcgSIA','2020-09-02 12:01:20.766259','2020-09-03 12:01:20.000000',33,'70dd0ad287ea404baa29d0a16382388b'),
	(787,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDQ4OCwianRpIjoiNDM5NTlkNGQwYzg0NDhjNzk0OGRiZTFiOTI4NDg1ZjgiLCJ1c2VyX2lkIjozM30.Luur2ZeeGqUlrL53id14XMzyU3fPDPZqd34UkRpxTb0','2020-09-02 12:01:28.402176','2020-09-03 12:01:28.000000',33,'43959d4d0c8448c7948dbe1b928485f8'),
	(788,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDUxNCwianRpIjoiN2VkMGVhNTc2NTE1NGU2ZThmNTIzN2EzYWFkOWU2NDgiLCJ1c2VyX2lkIjozM30.Qjg-_AKs0ECrSdBt9rTy6irpFO9Dxaoa5QhyL9NBjuw','2020-09-02 12:01:54.931132','2020-09-03 12:01:54.000000',33,'7ed0ea5765154e6e8f5237a3aad9e648'),
	(789,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDUyNSwianRpIjoiMDcxYzZjYjZhNjVkNDU4NTkzN2Y2ZDQ5ZWU0NjNjOTgiLCJ1c2VyX2lkIjozM30.ib8mAWWnjaXgm3HAKE5oEvkD_U_TGJ5efEKmxoVB4TM','2020-09-02 12:02:05.624115','2020-09-03 12:02:05.000000',33,'071c6cb6a65d4585937f6d49ee463c98'),
	(790,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDUzMiwianRpIjoiMTE4ZjViZDIxNWM2NGQ0ZjhlMDc5MTQ5Y2NjZWExMzciLCJ1c2VyX2lkIjozM30.1IIcy5ImApQrdf1D1-KvcZy5up4sa1ZlmvdovBn7dLY','2020-09-02 12:02:12.465448','2020-09-03 12:02:12.000000',33,'118f5bd215c64d4f8e079149cccea137'),
	(791,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDU0MiwianRpIjoiYWNkOGEyYzA5NDM1NDE2YThhNGU5NWVhNjM0YzRlYjIiLCJ1c2VyX2lkIjozM30.HS2l50GY4MUezNCdjKbM6FDAf07zgiffw2PyYdaZvoA','2020-09-02 12:02:22.616714','2020-09-03 12:02:22.000000',33,'acd8a2c09435416a8a4e95ea634c4eb2'),
	(792,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDU1MCwianRpIjoiNDA0ODM0N2I0MWI0NDI3Yzk5NTRkNGI5ZmNmYThiN2EiLCJ1c2VyX2lkIjozM30.4pGj33LW4msCIZTa4dLAcFXcn73QzdDf2cWECs9mDj4','2020-09-02 12:02:30.688371','2020-09-03 12:02:30.000000',33,'4048347b41b4427c9954d4b9fcfa8b7a'),
	(793,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDU1OCwianRpIjoiN2RjMWExMTY4NjBiNDY1M2EwYjU5ZmM0NjZkYzQxY2IiLCJ1c2VyX2lkIjozM30.HlgylqVgRC0NYJc8MFXQsedpfjJ6ZrcfBDuxaTlJ2xY','2020-09-02 12:02:38.956010','2020-09-03 12:02:38.000000',33,'7dc1a116860b4653a0b59fc466dc41cb'),
	(794,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDU2OSwianRpIjoiNDg0N2M2NmNjYTFjNDczNzliNmY5YmNhOTg5ZDk3NGMiLCJ1c2VyX2lkIjozM30.8785j9oRhwFw5RXn6WB9uuAv18lG3E0OV0r0-tWZ4C0','2020-09-02 12:02:49.613607','2020-09-03 12:02:49.000000',33,'4847c66cca1c47379b6f9bca989d974c'),
	(795,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDU5NiwianRpIjoiZWI4ZGZlYThmNjExNGUxZDk0YjkzYTJjZDFlYzdjZjkiLCJ1c2VyX2lkIjozM30.6Qq1qmGA7hBrxyMldUd4uULHuk30B8gT9mNHJ03mcrk','2020-09-02 12:03:16.414214','2020-09-03 12:03:16.000000',33,'eb8dfea8f6114e1d94b93a2cd1ec7cf9'),
	(796,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTEzNDc4NCwianRpIjoiYzVhNWRjOTgxNjU4NDdlNDkxYmZiMzgwZDBmYzMyNDIiLCJ1c2VyX2lkIjoyNX0.Xco6FJxWvWdcNFv6H_SAwbsxOmsMXRldiATih62nm-I','2020-09-02 12:06:24.459660','2020-09-03 12:06:24.000000',25,'c5a5dc98165847e491bfb380d0fc3242'),
	(797,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTE1NTY1OSwianRpIjoiYTZhNGQzZjA0NDRkNGYxZDhlNDMxZGQ2ZGZhMjcxNDkiLCJ1c2VyX2lkIjoyN30.ZpsAe5LAkYtwBDyPRB-e6pwt6McmLAnBiGcaCYhmmcI','2020-09-02 17:54:19.260597','2020-09-03 17:54:19.000000',27,'a6a4d3f0444d4f1d8e431dd6dfa27149'),
	(798,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTE1NjQ4MiwianRpIjoiMTA3YTA0YjI5Y2UwNGUwZWFiOGEzOTFiZWRjMGE2MjAiLCJ1c2VyX2lkIjoyN30.EcstiU5j5PmahBdbK2p1ARRwxMQTTstAHQpX6hWl1CM','2020-09-02 18:08:02.439554','2020-09-03 18:08:02.000000',27,'107a04b29ce04e0eab8a391bedc0a620'),
	(799,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzE4OCwianRpIjoiNzk1MTc1MmFkZGIwNGRmMzhhZmFjZjdkNTM1MzNhOTciLCJ1c2VyX2lkIjoyOH0.yFicCPk5pgBiRlOP52o6gDvfGz-Tjsq4ac9l-OtAHDE','2020-09-03 10:59:48.164197','2020-09-04 10:59:48.000000',28,'7951752addb04df38afacf7d53533a97'),
	(800,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzIxMCwianRpIjoiNWFiYWEzMzRkODgzNGM1NThkZGE3MWNlNzQ3ZDUxM2EiLCJ1c2VyX2lkIjoyOH0.dR4DE8s8ljnES_ulyBRk8TBnzHgXdcDmFMfrrUvkPHU','2020-09-03 11:00:10.667240','2020-09-04 11:00:10.000000',28,'5abaa334d8834c558dda71ce747d513a'),
	(801,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzI0MywianRpIjoiOWEwOTI0NDAxM2RhNGRiZGIyYjFjOTNlNTNhYzJjY2EiLCJ1c2VyX2lkIjoyNX0.lCdvsR_jUpAqqpIjV0Bupd2EFT_kziKC-Q07hVid-4Q','2020-09-03 11:00:43.671924','2020-09-04 11:00:43.000000',25,'9a09244013da4dbdb2b1c93e53ac2cca'),
	(802,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzI3MiwianRpIjoiYTRjZWUxNjJmMTE0NGY1MzllZDIzNzY5ODgxMGMxOTciLCJ1c2VyX2lkIjoyNX0.ZhjKUJMaEpY3p-Wi2Qop-NfYYsdFaFTRtyXaaHICU1w','2020-09-03 11:01:12.856325','2020-09-04 11:01:12.000000',25,'a4cee162f1144f539ed237698810c197'),
	(803,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzI3OSwianRpIjoiM2ZlNTdmMWI4OTE2NDFkNjgzY2M0ZmQ5NzRiMmQ4OWUiLCJ1c2VyX2lkIjoyNX0.6qfFPfNKhhx5Hua-O-e4ujAUZx8DEsw6mJitwgvFGFg','2020-09-03 11:01:19.917420','2020-09-04 11:01:19.000000',25,'3fe57f1b891641d683cc4fd974b2d89e'),
	(804,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzI4OSwianRpIjoiMTg0OTI1ODQ0ZGNhNDViZTlmZjA2ZjIyY2Q3ZjYyZTQiLCJ1c2VyX2lkIjoyNX0.sBTdryQWf4afUoTtcj-2dAVnyVAED8NoxolBgZcv59Q','2020-09-03 11:01:29.230094','2020-09-04 11:01:29.000000',25,'184925844dca45be9ff06f22cd7f62e4'),
	(805,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzI5OSwianRpIjoiMzczNmVmZmMyYjEyNDkwNzgzODkxZDg0MDQwNTcwYTUiLCJ1c2VyX2lkIjoyNX0.CHieyZkFWx7bx7-023wq2UFO9OmzwRpzWH5SC5Jx4S4','2020-09-03 11:01:39.181236','2020-09-04 11:01:39.000000',25,'3736effc2b12490783891d84040570a5'),
	(806,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzMxNywianRpIjoiNTk5MzdmNTkyNjZkNGM5OWJhZjIyZmJmOGI4OWYwMzUiLCJ1c2VyX2lkIjoyNX0.JrO7vWWryVu3OeqtjkHbFWJrwEBe1RYr5WSXH2Fb62c','2020-09-03 11:01:57.833222','2020-09-04 11:01:57.000000',25,'59937f59266d4c99baf22fbf8b89f035'),
	(807,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzM2MCwianRpIjoiM2Y2YWM1OWQ4NDhiNGI2MmI3MWM5ZmE0MzUzZjgwNjIiLCJ1c2VyX2lkIjoyNX0.v1gT3DNgkDdMgNCf8QTClAZETYT6CsYrmEYOBnoh4YE','2020-09-03 11:02:40.508494','2020-09-04 11:02:40.000000',25,'3f6ac59d848b4b62b71c9fa4353f8062'),
	(808,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzM3MSwianRpIjoiN2YxNTExMTkyOTJhNDhlYzlhN2FiMmZiOGNmMmI0NTQiLCJ1c2VyX2lkIjoyNX0.xjvGAJmGgkkzJ0XFtdIJ04rzMhkiOMix_e3eLjry73E','2020-09-03 11:02:51.257348','2020-09-04 11:02:51.000000',25,'7f151119292a48ec9a7ab2fb8cf2b454'),
	(809,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzQwMSwianRpIjoiZGE2OTA2YjJlYmE3NGNkYWE5ZDQyY2RkOWNlN2JiZTkiLCJ1c2VyX2lkIjoyNX0.dMdxcbKNI9r7-TttxI_xz8NG86HIydRbarI2oLr_kNg','2020-09-03 11:03:21.215661','2020-09-04 11:03:21.000000',25,'da6906b2eba74cdaa9d42cdd9ce7bbe9'),
	(810,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzQxMCwianRpIjoiYmUyZjFmMmQ2OGI0NGMyOTllZDBkZmZhZTFlMzhkYzUiLCJ1c2VyX2lkIjoyNX0.8f3EQvDS6CYj03SjYIapnBA1krHaUEjuXBq-avVL-WA','2020-09-03 11:03:30.600795','2020-09-04 11:03:30.000000',25,'be2f1f2d68b44c299ed0dffae1e38dc5'),
	(811,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzQxOCwianRpIjoiYTNkMWM3YjkyMGNhNDMwNWEzZGVlNGY4ZDM0YWQxNjQiLCJ1c2VyX2lkIjoyNX0.8eQvguhIhOpjnHg34v3-RATWGxQsF22aZi8qguAtc5Q','2020-09-03 11:03:38.171936','2020-09-04 11:03:38.000000',25,'a3d1c7b920ca4305a3dee4f8d34ad164'),
	(812,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzg1MiwianRpIjoiYzkzMzgyMzExNzUzNGIzODk4MGRiYmY2YTMyODQzZGQiLCJ1c2VyX2lkIjoyNX0.9CSGsOgpMBAvNWZVTVdgCckkek3hTWrSrPnb_SSvZpU','2020-09-03 11:10:52.442058','2020-09-04 11:10:52.000000',25,'c933823117534b38980dbbf6a32843dd'),
	(813,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzg2NSwianRpIjoiNTMwYTdmOWRhZmU5NDM2ZWI4YTYxNGU1ZTBhMWY4ZTEiLCJ1c2VyX2lkIjoyNX0.F-DNCSw4XNy1NAmsJ7uD21G3CMs4WD_uHfisnSZIJPc','2020-09-03 11:11:05.166229','2020-09-04 11:11:05.000000',25,'530a7f9dafe9436eb8a614e5e0a1f8e1'),
	(814,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzg3NSwianRpIjoiYzUxNmFiNTJmZWM1NDNlMjk5NmYyZGJiZDM4ZjEwNDAiLCJ1c2VyX2lkIjoyNX0.ycfyvUfb_2MVDxoYSlCVqCyq26qb9XrgHFv3yv6-hEE','2020-09-03 11:11:15.758139','2020-09-04 11:11:15.000000',25,'c516ab52fec543e2996f2dbbd38f1040'),
	(815,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzg4NywianRpIjoiNzEwYjZkMzIxY2EzNDM1M2I4NjNhZTM5MWJlZmIwZTciLCJ1c2VyX2lkIjoyNX0.9ZUGwsCHD5ndSvDWBdMkEIrWOJDzuqnS8UiyiZDz9Ho','2020-09-03 11:11:27.920078','2020-09-04 11:11:27.000000',25,'710b6d321ca34353b863ae391befb0e7'),
	(816,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzg5NywianRpIjoiMGIwMjZlNmI4MjE2NDVmNGI1YWVmZmYyZDNjMGZmMDAiLCJ1c2VyX2lkIjoyNX0.HP4pSLjfv5YnRBGuRUxXmUH9oe1r_jTannkMRf4CQGM','2020-09-03 11:11:37.909215','2020-09-04 11:11:37.000000',25,'0b026e6b821645f4b5aefff2d3c0ff00'),
	(817,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzkxMiwianRpIjoiYjNmNDNmOThiNDYzNGZiOWI4YmE1MmM4MzdiNTA1YTgiLCJ1c2VyX2lkIjoyNX0.dXAZMF-kaK8fmJr4_Q5f7rMRWNtLhSgtZ7IoGK7MKVI','2020-09-03 11:11:52.401555','2020-09-04 11:11:52.000000',25,'b3f43f98b4634fb9b8ba52c837b505a8'),
	(818,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzkyMCwianRpIjoiMzkyMjhmNTY3YzNkNGQwODljMTg5NWFjODM1OTFiYTQiLCJ1c2VyX2lkIjoyNX0.IZsErO4WFaeNHw-iDfz6XLozU7S5MJI_tDrlqFu6sRM','2020-09-03 11:12:00.275524','2020-09-04 11:12:00.000000',25,'39228f567c3d4d089c1895ac83591ba4'),
	(819,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzkzMiwianRpIjoiYTU4YjYzZDA0YmI0NGRmYzg3OTY3MmM0ZTMyNjBiYzEiLCJ1c2VyX2lkIjoyNX0.ZQHMw7JsBFZY7CGWYk3uDwc4_WvpLmyTRp8Rt9xvq2M','2020-09-03 11:12:12.521473','2020-09-04 11:12:12.000000',25,'a58b63d04bb44dfc879672c4e3260bc1'),
	(820,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzk0NSwianRpIjoiZGFkZjA3MzIwNTBjNGNjMWExZWMyMmEyZGVkZTBhZWIiLCJ1c2VyX2lkIjoyNX0.I_858YD5ZO6b9-yWH5A5_GVX_hdX4pRej6MvV4F3kIE','2020-09-03 11:12:25.058023','2020-09-04 11:12:25.000000',25,'dadf0732050c4cc1a1ec22a2dede0aeb'),
	(821,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzk1NSwianRpIjoiMDZiMTQyZTExNWQ1NGQ2MzgwOTVkZGFmZmJjZDc2MTEiLCJ1c2VyX2lkIjoyNX0.f-deMXp2cJwQCX_ZG-7WL_WKONjY71IEULogW0H0e_0','2020-09-03 11:12:35.460449','2020-09-04 11:12:35.000000',25,'06b142e115d54d638095ddaffbcd7611'),
	(822,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzk3MywianRpIjoiNDdmZDhiOTFlMTAwNGYzY2I4MjAzZjlmMTFlMzA2MTMiLCJ1c2VyX2lkIjoyNX0.payUy82CdwSoSIFU4Q2YZiXS1PG8FqQxSUqITHVHB0U','2020-09-03 11:12:53.460173','2020-09-04 11:12:53.000000',25,'47fd8b91e1004f3cb8203f9f11e30613'),
	(823,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzk4MiwianRpIjoiY2VlNTNjZjJmNzFmNGJjYTg2YjkyOTFhODIzNzcxNzkiLCJ1c2VyX2lkIjoyNX0.AJHQSOK_r8mXOCdE7F7G-_MmLo1waqmw3vLp9y9Xigc','2020-09-03 11:13:02.762531','2020-09-04 11:13:02.000000',25,'cee53cf2f71f4bca86b9291a82377179'),
	(824,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxNzk5MywianRpIjoiNDA3MDZiYzUxM2Q5NDYxMmI1YzdmNzhhMWNkYWNiZDEiLCJ1c2VyX2lkIjoyNX0.4DhMvjR8UUZFsCGgu_8zBAO1bxCdMRudprhf6M0yh4U','2020-09-03 11:13:13.277808','2020-09-04 11:13:13.000000',25,'40706bc513d94612b5c7f78a1cdacbd1'),
	(825,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODA4MSwianRpIjoiZGRjYzE4MWM2NTIxNGVkYjk0NjE2ZjM4ZDM3NjEzYzQiLCJ1c2VyX2lkIjoyNX0.Nx31EkY_HQcQbo6mHV86ghzmWqkiQjZ6eh0gebxyqUg','2020-09-03 11:14:41.595150','2020-09-04 11:14:41.000000',25,'ddcc181c65214edb94616f38d37613c4'),
	(826,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODEyMSwianRpIjoiMjViZWZlMDcyMjE5NGIyOWJhZGUyNTE0YTM2YTI1YmUiLCJ1c2VyX2lkIjozM30.caCw_hNwtM7Wadhvu9O1dy_yHR9TncO4K5ajddeLQDA','2020-09-03 11:15:21.316805','2020-09-04 11:15:21.000000',33,'25befe0722194b29bade2514a36a25be'),
	(827,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODEyOSwianRpIjoiOWY0NTNkNWU2MTIxNGQ1Nzk3ZDU1N2Y3NmE0OTk1OWEiLCJ1c2VyX2lkIjozM30.0slSORn2kF1CV5EaQbC0hXaT7iRA8JYguXvl0GIZX4A','2020-09-03 11:15:29.261795','2020-09-04 11:15:29.000000',33,'9f453d5e61214d5797d557f76a49959a'),
	(828,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODE2NywianRpIjoiMzljZWY5MGU1Mzg3NGRmMWJjMDQwN2NiMGU5ZDUwNGMiLCJ1c2VyX2lkIjozM30.hjlcBCi1_4XymoDto9xCArvyCxGIbwjhnXBBWlBijEU','2020-09-03 11:16:07.785260','2020-09-04 11:16:07.000000',33,'39cef90e53874df1bc0407cb0e9d504c'),
	(829,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODE3NywianRpIjoiMWE0MTViMjQ2NzFhNGExOGFkODU2NjM2OGQ1ODdhYzEiLCJ1c2VyX2lkIjozM30._c7bKkc3ggjMa6UfwXVltiEu6AZUFNsln1Mc-0KAYPQ','2020-09-03 11:16:17.768969','2020-09-04 11:16:17.000000',33,'1a415b24671a4a18ad8566368d587ac1'),
	(830,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODE4NSwianRpIjoiM2FlOWRiZDMwMWY5NDJjYjhkMDNmMGEyNWQ2OTU0MWIiLCJ1c2VyX2lkIjozM30.HsZ27CV5O7h9s44TRL5UDqumSOkvCWgtv89ugvTWUGs','2020-09-03 11:16:25.125432','2020-09-04 11:16:25.000000',33,'3ae9dbd301f942cb8d03f0a25d69541b'),
	(831,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODE5MywianRpIjoiZjg4NmMyZDA1NDRkNGVmZDlmMTZjMDAwMDJlYzM0ODgiLCJ1c2VyX2lkIjozM30.q1oN2akQc1-kagOeqBDXvqHy0GYbXnRfm7LXAuIWpdQ','2020-09-03 11:16:33.221012','2020-09-04 11:16:33.000000',33,'f886c2d0544d4efd9f16c00002ec3488'),
	(832,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODIwMSwianRpIjoiYjQzNWYwNmRkNTBmNDE1NmE0NjY0OTA5OWRmMDUwZjEiLCJ1c2VyX2lkIjozM30.2hNpu1kCzJf7VcyZkSAbHzwAZE8RBifCUZDnuoNHgOU','2020-09-03 11:16:41.100800','2020-09-04 11:16:41.000000',33,'b435f06dd50f4156a46649099df050f1'),
	(833,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODIwOCwianRpIjoiOTcyNjI3YzQ0M2Y3NDhmNDk4YzkxZDlkZWE4MmNhZWUiLCJ1c2VyX2lkIjozM30.ik5eGcyHlmfP0KPmeAm-VL9sZ8BA9wfuyOuHbB8EBmE','2020-09-03 11:16:48.517727','2020-09-04 11:16:48.000000',33,'972627c443f748f498c91d9dea82caee'),
	(834,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODIxNSwianRpIjoiMTM4MTMxYThkZjMxNDVlZjliZmM5ZWNiZjFmODVhYjQiLCJ1c2VyX2lkIjozM30.3MLw2lN90EVGzlBpdchl6TzrLvKLMKMYLFRUEC-cfWs','2020-09-03 11:16:55.588634','2020-09-04 11:16:55.000000',33,'138131a8df3145ef9bfc9ecbf1f85ab4'),
	(835,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODIyNCwianRpIjoiNDI4NDQ0YzM4YzZhNGUyZDllNDJlMjdkNmNhN2Y0ODUiLCJ1c2VyX2lkIjozM30.r56I_4IiyKpEBv3HKk-59xRV0rgoQswx-ZVdvLryItQ','2020-09-03 11:17:04.617032','2020-09-04 11:17:04.000000',33,'428444c38c6a4e2d9e42e27d6ca7f485'),
	(836,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODIzMywianRpIjoiYjQ2YTAxOTMyZDVjNDEzYmIyZjE3ZmNlMjU4OWIwY2UiLCJ1c2VyX2lkIjozM30.WsRSwlD8kQRj1bIgJevwvxEtDuQiO9xEh5ObWNtzsZQ','2020-09-03 11:17:13.984912','2020-09-04 11:17:13.000000',33,'b46a01932d5c413bb2f17fce2589b0ce'),
	(837,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODI0MiwianRpIjoiOWJlOWVkM2I0ZDFkNDY2MWE5M2Y1YmRmZjA1ZjNkNWMiLCJ1c2VyX2lkIjozM30.9Wfk_isTAL1MFfAd03dJQlZYCp340MBATSGmBF4sMiw','2020-09-03 11:17:22.480518','2020-09-04 11:17:22.000000',33,'9be9ed3b4d1d4661a93f5bdff05f3d5c'),
	(838,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODI1MSwianRpIjoiOGRhMzBhMzVlNDA3NDcxNGI3ODFkMTg2ODk5ODRjNjEiLCJ1c2VyX2lkIjozM30.N1m6Byw5AmpzgsAmzBNBX_yYSjAA5XHIi3a9dzeZcBo','2020-09-03 11:17:31.832488','2020-09-04 11:17:31.000000',33,'8da30a35e4074714b781d18689984c61'),
	(839,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODI2MCwianRpIjoiODdmYjc2YTc2YThhNDVmZWEyOTJjODkxMmY5OGNkZTQiLCJ1c2VyX2lkIjozM30.hhhjlKM8YA8IQMcsy62o4BvsDU5_nukBvVf-x_cKtCc','2020-09-03 11:17:40.616047','2020-09-04 11:17:40.000000',33,'87fb76a76a8a45fea292c8912f98cde4'),
	(840,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODI2OCwianRpIjoiZDJhZDc4Yjc0MzA3NDNiMGJlNjVkYTU3MWYyOTBjM2EiLCJ1c2VyX2lkIjozM30.98lmIZaWDDjpIRUbHsJoQn1QhvIOlJpGhvw1x2rrZoI','2020-09-03 11:17:48.420283','2020-09-04 11:17:48.000000',33,'d2ad78b7430743b0be65da571f290c3a'),
	(841,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODI4NSwianRpIjoiOTM0Zjg4MzgwMzg2NGQxMTgwNDFiNmU1OTdiYTU5OGIiLCJ1c2VyX2lkIjozM30.VmnBxPOCNyZ7SrwPMpUDAqpCsI0EZSCJH9h_vNbECyE','2020-09-03 11:18:05.454564','2020-09-04 11:18:05.000000',33,'934f883803864d118041b6e597ba598b'),
	(842,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODI5NCwianRpIjoiNjBjMTY3Yzk4ZjhhNDEzYTk0MmZiMDBlYmY1ZDI5OTkiLCJ1c2VyX2lkIjozM30.3UsENstjU9IvYnihInAMhX3yvdr4fb4IwTOyP5LRTFI','2020-09-03 11:18:14.193321','2020-09-04 11:18:14.000000',33,'60c167c98f8a413a942fb00ebf5d2999'),
	(843,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODMwMSwianRpIjoiNmE2MDUwYTAyODQ0NDQ3NGIzNDQ3YjY4YzNkNjg5NGUiLCJ1c2VyX2lkIjozM30.R8NVEB4xlU5Wb54KK5yRAXclSLcCuJQU52vdheolRSs','2020-09-03 11:18:21.649200','2020-09-04 11:18:21.000000',33,'6a6050a028444474b3447b68c3d6894e'),
	(844,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxODU2MiwianRpIjoiNDY2MThmNTY1MGNiNDY4Mjg3ZTM2ZTQxYWJkYzJhMTQiLCJ1c2VyX2lkIjozM30._HIUo39PcXkWh0TH8o5TzmVXulwLjqA3d0JovoQn8OI','2020-09-03 11:22:42.452950','2020-09-04 11:22:42.000000',33,'46618f5650cb468287e36e41abdc2a14'),
	(845,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTIyNiwianRpIjoiZjI3MjU3NTE1MTlhNDA2N2JkOTA3NDAxNTYyNjQ1M2UiLCJ1c2VyX2lkIjoyN30.DU0vKKsTPznV7Yy_M5Vt06-mJ93I4f49oQE5REqELXk','2020-09-03 11:33:46.505909','2020-09-04 11:33:46.000000',27,'f2725751519a4067bd9074015626453e'),
	(846,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTIzNCwianRpIjoiNWY5MTBhOTAzNjViNDY3ZmFhZDFjNzdlYzE0YTgwZjciLCJ1c2VyX2lkIjoyN30.fkogVMeUWPDeSvDuK-TlfgR8ZZHR5u5By4vleDOpZzY','2020-09-03 11:33:54.927277','2020-09-04 11:33:54.000000',27,'5f910a90365b467faad1c77ec14a80f7'),
	(847,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTI3NCwianRpIjoiNTg1ODA0OTRhYjBhNDJmMjgwMWE5Y2VkNTgyMzM4ODAiLCJ1c2VyX2lkIjoyN30.ZmSMrrhOdF3k7eWu3sIRM_jpy-wnqewHkt2J_QSWXME','2020-09-03 11:34:34.533915','2020-09-04 11:34:34.000000',27,'58580494ab0a42f2801a9ced58233880'),
	(848,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTI4NSwianRpIjoiZmVkNDhhZGM3ZjIzNDg2Mzk2ZjgxZGEwYTMxNTIxMTIiLCJ1c2VyX2lkIjoyN30.E6sAJwy4dOEV0nOpgxoTpeUQTfLY3Z8t1NxBHWihLCY','2020-09-03 11:34:45.243745','2020-09-04 11:34:45.000000',27,'fed48adc7f23486396f81da0a3152112'),
	(849,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTI5MywianRpIjoiZjBkZTE1ODEyOGU2NGNkZGJmZTc4MjRkZDE4MjY2MjgiLCJ1c2VyX2lkIjoyN30.wJMHEw7kOAO6oP9JMuunDExqf50GHtxrWhEiOMUl-Ak','2020-09-03 11:34:53.891603','2020-09-04 11:34:53.000000',27,'f0de158128e64cddbfe7824dd1826628'),
	(850,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTMwMiwianRpIjoiZDYxM2U5MmY3MzBlNGI2N2JkYjAzMjNmZGQxM2U3NGMiLCJ1c2VyX2lkIjoyN30.2ZPrw0_uhvWqIw4Nyh8bM2Hh4BErHsoZm-Uv8pQWC_E','2020-09-03 11:35:02.719013','2020-09-04 11:35:02.000000',27,'d613e92f730e4b67bdb0323fdd13e74c'),
	(851,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTMxMSwianRpIjoiZmNiMDJlYmEyMDJmNDM1ZDk5ZTJhMWVhNzE1YWFlNDQiLCJ1c2VyX2lkIjoyN30.4bm91RjA84F41fCDWXsTpXhw8JG0QsORC7GmNssToU8','2020-09-03 11:35:11.607242','2020-09-04 11:35:11.000000',27,'fcb02eba202f435d99e2a1ea715aae44'),
	(852,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTMyMSwianRpIjoiZjI1YmFmZTFmN2QyNDJhN2IzYTNkYjE3MDg2NGM4YzkiLCJ1c2VyX2lkIjoyN30.dfInarTcpBnoZmpzNx9WQ3gJiFpgc4QAS8tQgzHxAvE','2020-09-03 11:35:21.228708','2020-09-04 11:35:21.000000',27,'f25bafe1f7d242a7b3a3db170864c8c9'),
	(853,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTMzMiwianRpIjoiZjY4OGNmMjUyYmEzNDVjNmE0NTkwY2YzNWM0NmNlMGEiLCJ1c2VyX2lkIjoyN30.jKqTOpkePELDA_vhp5AYVdzcI6_ULTHJMYrw67xeP7I','2020-09-03 11:35:32.380143','2020-09-04 11:35:32.000000',27,'f688cf252ba345c6a4590cf35c46ce0a'),
	(854,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTM0NCwianRpIjoiNWRkYzU4NDMzYjFmNGRkOTg5YWI2MzdiMjAxZTFhYTYiLCJ1c2VyX2lkIjoyN30.7MrO1Xm7F-mouS9z8ujo4J3LbcTjK-S_W1GmER5sLlk','2020-09-03 11:35:44.274249','2020-09-04 11:35:44.000000',27,'5ddc58433b1f4dd989ab637b201e1aa6'),
	(855,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTM1MywianRpIjoiYmM4OTZjZTkxZTVlNDhkZWI2NzU2NjdlYzU0ODExNTIiLCJ1c2VyX2lkIjoyN30.pVniAd_8Wa20fQvKtfSFMk4Kq55XgCNJUVJbYzS_hmk','2020-09-03 11:35:53.518883','2020-09-04 11:35:53.000000',27,'bc896ce91e5e48deb675667ec5481152'),
	(856,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTM2NCwianRpIjoiMDEwNzA2OTNiYzliNDY5MGE1ZWI1ZDQ2YTEyMTlhN2YiLCJ1c2VyX2lkIjoyN30.dSQ6iFOmhRDN8F08cUZ7UP0KEBY303GcxaNklaIxCEc','2020-09-03 11:36:04.771515','2020-09-04 11:36:04.000000',27,'01070693bc9b4690a5eb5d46a1219a7f'),
	(857,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTM3MywianRpIjoiZmRmMDEyMDU2YmEzNDdiOGE4ZjQxOTViODA3MmUyYTYiLCJ1c2VyX2lkIjoyN30.w_iytc60rzSRRFTRtsfCdQI7o-Ri7n6qfPVlupO2OaE','2020-09-03 11:36:13.166739','2020-09-04 11:36:13.000000',27,'fdf012056ba347b8a8f4195b8072e2a6'),
	(858,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTM4MiwianRpIjoiOGVhMjEwZTY1NWIzNDE5ZGFjMThlMDg2MWM2YTIyNTAiLCJ1c2VyX2lkIjoyN30.WznCrVtRAxUXmHWjxclrn7w21RXVR_zX0nKDhswbIho','2020-09-03 11:36:22.658841','2020-09-04 11:36:22.000000',27,'8ea210e655b3419dac18e0861c6a2250'),
	(859,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTM5MywianRpIjoiMjY0NTcyMzc4NDc4NDIxMWJkMWU0ODdlODMwYTBmMzIiLCJ1c2VyX2lkIjoyN30.VDUYN9VRtngFlKE4BywZpVxCsBdBmiFQbc_30uGjZ5A','2020-09-03 11:36:33.956482','2020-09-04 11:36:33.000000',27,'2645723784784211bd1e487e830a0f32'),
	(860,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQwNCwianRpIjoiODkzYmY2Yjg5NzZkNGY5MzgwYjY2MWIwM2Y3YWJiZTUiLCJ1c2VyX2lkIjoyN30.RUW2A0BC2WB7cKEK51LG9khvI94Ef72Qj0ESjtwxuUs','2020-09-03 11:36:44.038418','2020-09-04 11:36:44.000000',27,'893bf6b8976d4f9380b661b03f7abbe5'),
	(861,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQxNSwianRpIjoiOGU0N2I1MDIxMjE1NGQ3Zjg0M2RmMGQ4MjVhYzk5MzYiLCJ1c2VyX2lkIjoyN30.pcXhTHCFyDL-QzZfweWS9uJ8SnT6yGYKgy1vyo49oWA','2020-09-03 11:36:55.093478','2020-09-04 11:36:55.000000',27,'8e47b50212154d7f843df0d825ac9936'),
	(862,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQyNCwianRpIjoiY2Q2ZGMwZDkyYWFkNDQ1Mzg5OTRjZjRlMTExNmVlOWMiLCJ1c2VyX2lkIjoyN30.96N6-c86zKww9nzbd_L9o4mrT8ZpGkaqx2T_CGDD0fo','2020-09-03 11:37:04.267079','2020-09-04 11:37:04.000000',27,'cd6dc0d92aad44538994cf4e1116ee9c'),
	(863,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQzMywianRpIjoiYjQ3ODNhZTZhNzRkNGRiYTlhNWE0MGIzMDcyNzc2NzIiLCJ1c2VyX2lkIjoyN30.zXhaSo_yzPxRjpy19XEKkXKYmXwJ4zJDYqEfhG4KyX4','2020-09-03 11:37:13.110991','2020-09-04 11:37:13.000000',27,'b4783ae6a74d4dba9a5a40b307277672'),
	(864,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQ2MiwianRpIjoiYThlYTIxYzJiOTQwNDgwOTk3MzdkYmViNTU5MTRjODgiLCJ1c2VyX2lkIjoyN30.F2l0a1p1RdKo5SJwc2iiBInyhB6ztwcPcR_rXAM9Y_M','2020-09-03 11:37:42.370447','2020-09-04 11:37:42.000000',27,'a8ea21c2b94048099737dbeb55914c88'),
	(865,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQ3MiwianRpIjoiMWM3MzUxMzY4OGVhNGE4NGEwY2I3MjBkYjEzNzEzNzIiLCJ1c2VyX2lkIjoyN30.sk8uUD74Nt4-sJMMq_3gP67GjW6e30qhqM6ZXqFKlSE','2020-09-03 11:37:52.888092','2020-09-04 11:37:52.000000',27,'1c73513688ea4a84a0cb720db1371372'),
	(866,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQ4MCwianRpIjoiNDJiMDEyNzAzYzRmNGE4N2JhMDIyMmM5Y2ZkOTU5MDAiLCJ1c2VyX2lkIjoyN30.Xy1tB_vRUQsEk1mHU-d56gdFifbj3mZZVB9klXAvsfM','2020-09-03 11:38:00.904441','2020-09-04 11:38:00.000000',27,'42b012703c4f4a87ba0222c9cfd95900'),
	(867,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQ4OSwianRpIjoiMDdhYWVlNTQ0MTRjNGRiMmE3ZWM5YTIzZjVhNzBjYjQiLCJ1c2VyX2lkIjoyN30.dWblMAJO0MC2xJopAUSZbtnj9F5WATPW3vuO6L54wo0','2020-09-03 11:38:09.690390','2020-09-04 11:38:09.000000',27,'07aaee54414c4db2a7ec9a23f5a70cb4'),
	(868,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTQ5OSwianRpIjoiMzQzNjgwNDc0M2U5NDg0YmE2MTkwOGVjZGMxZTMwMDQiLCJ1c2VyX2lkIjoyN30.bOV-bM17yOxeug9FT1z04wt2eThBt_h4Epag193FfCQ','2020-09-03 11:38:19.273937','2020-09-04 11:38:19.000000',27,'3436804743e9484ba61908ecdc1e3004'),
	(869,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTUxMSwianRpIjoiNTJmOGNiYWUzYThhNDg2MmI3YjBmMTIzMjBhZWJmYTIiLCJ1c2VyX2lkIjoyN30.E1ZDSjXHOHIo111S0URJUGJmXOImYCeRBUk72jG3CYE','2020-09-03 11:38:31.808580','2020-09-04 11:38:31.000000',27,'52f8cbae3a8a4862b7b0f12320aebfa2'),
	(870,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTUzMSwianRpIjoiZTkwNDVlZWJiNGUwNGE3MjkyZjhjYmMyYjZjNGM5ZjQiLCJ1c2VyX2lkIjoyN30.Mrd5DJ5EHSjq2VC3N2Lvc73aXWdAyYWkjd0ugIcQSqg','2020-09-03 11:38:51.166040','2020-09-04 11:38:51.000000',27,'e9045eebb4e04a7292f8cbc2b6c4c9f4'),
	(871,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTU0MSwianRpIjoiZDY5YjBjMzMxY2JlNDYwMWE1MDAzMGUxNTE3YjM3ZTIiLCJ1c2VyX2lkIjoyN30.hYk-gCEeZ6cGX7bSwmKQYW9Bp4jffIyGhm9jXOJaXnI','2020-09-03 11:39:01.253095','2020-09-04 11:39:01.000000',27,'d69b0c331cbe4601a50030e1517b37e2'),
	(872,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTU1MywianRpIjoiNWMyNWQ4ZjY1ZDc3NGUzNThjY2E4MmRmMGYzYTQ2ODAiLCJ1c2VyX2lkIjoyN30._hsvSvv3uxbwUXJRWGt6xiBVPXWzNbtmcBdsC7wtPYI','2020-09-03 11:39:13.823774','2020-09-04 11:39:13.000000',27,'5c25d8f65d774e358cca82df0f3a4680'),
	(873,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIxOTU3MywianRpIjoiMTlhYTdjNDhjYjBhNDM0NThiMGFjMjVhZjRlYzEzMDkiLCJ1c2VyX2lkIjoyN30.SMg6KWsh1-eDjJPkK36Sk3B7XZjT0cUpNzbngwA0EM4','2020-09-03 11:39:33.218711','2020-09-04 11:39:33.000000',27,'19aa7c48cb0a43458b0ac25af4ec1309'),
	(874,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNDEyMiwianRpIjoiOGZiYjE1M2QwNDIzNGI5MmE0YzRhZWVkZTZkMDVmZGMiLCJ1c2VyX2lkIjoyN30.p4IZTcfK3HeYa1uZ9ud9YOPljuaAD7dvITdiUROYXVs','2020-09-03 15:42:02.067212','2020-09-04 15:42:02.000000',27,'8fbb153d04234b92a4c4aeede6d05fdc'),
	(875,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNTI1NywianRpIjoiMGE3NjY3OTgyODFkNDQwY2EzZjQ3N2U0ZjUyYWYxYjYiLCJ1c2VyX2lkIjoyOX0.UqefHLsEPsVassAYjKJpM57CWz8mPiLMFPwJqokqhPk','2020-09-03 16:00:57.235718','2020-09-04 16:00:57.000000',29,'0a766798281d440ca3f477e4f52af1b6'),
	(876,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNTUwMCwianRpIjoiZTE1NDZlNGIxYTRjNGUwNDk5MmFkMzllODZmOTlkYTMiLCJ1c2VyX2lkIjoyN30.qaKkPQeZZieCohwTJU2qdz0lrMBlLH1ePZgIoQbYPXg','2020-09-03 16:05:00.732403','2020-09-04 16:05:00.000000',27,'e1546e4b1a4c4e04992ad39e86f99da3'),
	(877,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNTUxNCwianRpIjoiMDM0NWQ0M2RjZTdlNDgwMzgyZWIxYmYyZTg0MTYyZTYiLCJ1c2VyX2lkIjoyN30.HAXl1uSskeak6iNJPJcYF4KYdMpbneA9EbVevWsOsoo','2020-09-03 16:05:14.178194','2020-09-04 16:05:14.000000',27,'0345d43dce7e480382eb1bf2e84162e6'),
	(878,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNTc0NywianRpIjoiZDhhM2RkMjQ5YzNkNGM4YWIzYzVjODk3NjQ2YzFlNDkiLCJ1c2VyX2lkIjoyN30.x9mQlfuWIWZdJysXXvJLNPd2U1aILP2so1tiMlmjpbk','2020-09-03 16:09:07.118492','2020-09-04 16:09:07.000000',27,'d8a3dd249c3d4c8ab3c5c897646c1e49'),
	(879,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNjIzMCwianRpIjoiOGQ1MDg0MTNmMzE1NGFkZTk0MWI3ZThlY2ZmNDg2YmYiLCJ1c2VyX2lkIjoyN30._EM5yidtMAMYDQor07f_C6RAa_NYtpzjkk8XNOe_Flo','2020-09-03 16:17:10.183057','2020-09-04 16:17:10.000000',27,'8d508413f3154ade941b7e8ecff486bf'),
	(880,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNjI5NSwianRpIjoiOWY5NTkwYWU2NGZlNDM1N2E4M2ZjMTJmZjhlZWNiMTIiLCJ1c2VyX2lkIjoyN30.XSB4c2NrmcruzHpN1J3kx5Da8cfLCsrhblUnNLrWdWM','2020-09-03 16:18:15.353963','2020-09-04 16:18:15.000000',27,'9f9590ae64fe4357a83fc12ff8eecb12'),
	(881,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNjM0MSwianRpIjoiNjJkZjVkZWJhOTU2NDFhOThjZWFhNDI1Y2VlZDQzZGQiLCJ1c2VyX2lkIjoyN30._xiWYKC6MMXv5ut9PVv3inKDSj36ohO8jX4YH10JNN4','2020-09-03 16:19:01.377726','2020-09-04 16:19:01.000000',27,'62df5deba95641a98ceaa425ceed43dd'),
	(882,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNjc1MiwianRpIjoiMjc4MWU3ODBiYjExNDI5Nzk1NTgwZDliNzk2YjZjODQiLCJ1c2VyX2lkIjoyN30.FLvZGFryyUZqUxU8k8P1yCM9JoFc6u-lVBlwOudBBWs','2020-09-03 16:25:52.932497','2020-09-04 16:25:52.000000',27,'2781e780bb11429795580d9b796b6c84'),
	(883,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNjkzNSwianRpIjoiMTdmMTJlZDdiOTg4NGIwMThjZDQ0NTIzZWExMDdmOGMiLCJ1c2VyX2lkIjoyN30.eEiwdG335zcRIQiQu1By47giN3kH5e20Nlzit-IHUSI','2020-09-03 16:28:55.032591','2020-09-04 16:28:55.000000',27,'17f12ed7b9884b018cd44523ea107f8c'),
	(884,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNzAwMiwianRpIjoiMjk1NTU3ZjJhODI3NDcyZmE0NTlkOGUyMzM2ZTIxNDciLCJ1c2VyX2lkIjoyN30.gjcLN-2d2qa-r-0hmM0g3YoUdQYda-SIW7xN_CFgd9I','2020-09-03 16:30:02.629461','2020-09-04 16:30:02.000000',27,'295557f2a827472fa459d8e2336e2147'),
	(885,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTIzNzAwMywianRpIjoiNTk0MjI5Y2NhYTFhNDA5MjhlZjQ4YmQ1ZjJjNWE5MTUiLCJ1c2VyX2lkIjoyN30.zh6L-xIj5qksdU1KEfDEw1gJOWS_7WjnzoE2n5aGJDQ','2020-09-03 16:30:03.157729','2020-09-04 16:30:03.000000',27,'594229ccaa1a40928ef48bd5f2c5a915'),
	(886,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0MDIwMywianRpIjoiNDBjNDkyZTlhMTczNGQ5MDhhYzZjZDk1ODAwYTAxMjAiLCJ1c2VyX2lkIjozM30.jBjPRxMNhQIYRUC6cllhWW27ZBJlxVkYrTv5ZXd2mA0','2020-09-03 17:23:23.255097','2020-09-04 17:23:23.000000',33,'40c492e9a1734d908ac6cd95800a0120'),
	(887,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0MDI2OCwianRpIjoiZjMzNjFjNTAzNGI3NDQwZDllYTBiYTc3ZDdmODg3OTYiLCJ1c2VyX2lkIjozM30.2GJVe6tXbaXtWGFwWzxkL6uJ-0OOsMKZmDz98xRveEU','2020-09-03 17:24:28.001539','2020-09-04 17:24:28.000000',33,'f3361c5034b7440d9ea0ba77d7f88796'),
	(888,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODc3MiwianRpIjoiNjYxODA4ZGI3YmI1NGZhNWJiNzAzNWY3MmI0MDAwMGQiLCJ1c2VyX2lkIjoyOX0.QtZ7c0Cyly2u1fBmERyyPVnkx2G7sQWTLRIiiJKlCfY','2020-09-03 19:46:12.899517','2020-09-04 19:46:12.000000',29,'661808db7bb54fa5bb7035f72b40000d'),
	(889,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODc4MSwianRpIjoiYzE2MDFhNDhjYWMyNGYxZjgyMDU4ZWQ4ZjYzN2NmYWUiLCJ1c2VyX2lkIjoyOX0.WBGZOwkfYii5edZ70F1mMLhM6-9yyPbkmShcrYRqC4A','2020-09-03 19:46:21.009508','2020-09-04 19:46:21.000000',29,'c1601a48cac24f1f82058ed8f637cfae'),
	(890,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODgxNiwianRpIjoiMDhlNWRkNjVmYzVmNGY0MzhjMTcxMDQxZDhmM2NjMDkiLCJ1c2VyX2lkIjoyOX0.dzS5R-MzT_yT5TWAZKdwc_hIxaEncrDtBljG5LBFsno','2020-09-03 19:46:56.633293','2020-09-04 19:46:56.000000',29,'08e5dd65fc5f4f438c171041d8f3cc09'),
	(891,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODgyNiwianRpIjoiZGY2MjIzNWZjNWVmNDNiNDhmODUzMzBmMTRmMDFlZDIiLCJ1c2VyX2lkIjoyOX0.O7tYrCvxWHxGn6qwSc6xLW_S4Wd_mxOc2lpF90qSKjM','2020-09-03 19:47:06.647651','2020-09-04 19:47:06.000000',29,'df62235fc5ef43b48f85330f14f01ed2'),
	(892,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODgzNCwianRpIjoiMDdkNTQ0MWQ5M2EzNGE1MmFmMzFkNGVmNTgxNTY0ZmIiLCJ1c2VyX2lkIjoyOX0.JSTnFk5vOBpZsP2Ky-6DDJ-nU8i30IzbjiIDOzJG9fc','2020-09-03 19:47:14.263499','2020-09-04 19:47:14.000000',29,'07d5441d93a34a52af31d4ef581564fb'),
	(893,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODg0MywianRpIjoiMWM5M2E2ZGQ1NDBmNDVkMzk5NWRiZjg1NWMzYjhiMzIiLCJ1c2VyX2lkIjoyOX0.KVwphJKoWnZ56Do5X--Tx8BxiCA9ArORaTcptmHrCho','2020-09-03 19:47:23.263965','2020-09-04 19:47:23.000000',29,'1c93a6dd540f45d3995dbf855c3b8b32'),
	(894,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODg1NCwianRpIjoiMzI3NDkxOTBmOTJkNGRkZDgzZDcxMzgyOTM5YTkxMjciLCJ1c2VyX2lkIjoyOX0.1VBvlaQSSrbsLt90ZkgQVe_g26mNBQUmaPTnp7D_6HY','2020-09-03 19:47:34.450211','2020-09-04 19:47:34.000000',29,'32749190f92d4ddd83d71382939a9127'),
	(895,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODg2NCwianRpIjoiOWNlZWQ1ZDgxNWIzNDUzNWIzMjcxZjFhNWUwMDBmMzQiLCJ1c2VyX2lkIjoyOX0.41drdJlWbIIW2oP605SfWiFXkbX-MFj8ig6SGs4PnwM','2020-09-03 19:47:44.997321','2020-09-04 19:47:44.000000',29,'9ceed5d815b34535b3271f1a5e000f34'),
	(896,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODg3NywianRpIjoiNjNiMjdmYjZmMjQ3NDU3MGJkZmFjMjFlMGUxMzRjM2YiLCJ1c2VyX2lkIjoyOX0.BQCiD7hAFr3OVvhwm3u_PsvajVaHgm5fpix8J9d_Ypg','2020-09-03 19:47:57.182183','2020-09-04 19:47:57.000000',29,'63b27fb6f2474570bdfac21e0e134c3f'),
	(897,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODg4OCwianRpIjoiMzVmYjYxYTI2MWY4NGQwMmJlYTQ4NWRhZGM2OTNjZDciLCJ1c2VyX2lkIjoyOX0.X8KNewP7BQX995_TkLVSlyUwTWX_vlMkXVYkeblyWLA','2020-09-03 19:48:08.718500','2020-09-04 19:48:08.000000',29,'35fb61a261f84d02bea485dadc693cd7'),
	(898,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODg5NSwianRpIjoiN2Q0MTIxOTEyMGUxNDJjMzkwYmUwMWNkMDRiYjIzNDkiLCJ1c2VyX2lkIjoyOX0.DLORxJpsA1hJpH05h22bHMwzoXDoUPqfTg63ZMBKeac','2020-09-03 19:48:15.722721','2020-09-04 19:48:15.000000',29,'7d41219120e142c390be01cd04bb2349'),
	(899,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODkwMiwianRpIjoiMGM0ZTdhNDY4M2NhNDJmMmEzZDJiNTY2Y2ZiYWYxZjQiLCJ1c2VyX2lkIjoyOX0.QjppJgRlr4xAANYk-0zdb8jbeG7DiUOwvQd198aiE5c','2020-09-03 19:48:22.348885','2020-09-04 19:48:22.000000',29,'0c4e7a4683ca42f2a3d2b566cfbaf1f4'),
	(900,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTI0ODk1NiwianRpIjoiYWIyYjM5MjkyYTY3NGZmYmJiNWJhM2I2MmQyNDQyMzYiLCJ1c2VyX2lkIjoyOX0.gFkqXgXK1QNapl0c6OnVdw2O_dWCqQXms12xdAYpqos','2020-09-03 19:49:16.079216','2020-09-04 19:49:16.000000',29,'ab2b39292a674ffbbb5ba3b62d244236'),
	(901,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTMwMTczMywianRpIjoiNmQ3YmYxNGYwNzRjNDMxYzkzODNjMGVkNjM0ZTczOGIiLCJ1c2VyX2lkIjoyNX0.BnMVBc0-oMl0-1PWnX9vTuUzWRSpZGo8PERcaC_RAoI','2020-09-04 10:28:53.517489','2020-09-05 10:28:53.000000',25,'6d7bf14f074c431c9383c0ed634e738b'),
	(902,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTMzNDA1MCwianRpIjoiNTMxMGVhN2QwNGFjNDI5MTljZmMyNWZkZTM2MzU2YmYiLCJ1c2VyX2lkIjozM30.43OfdPSBLfQgZl4Dh79Roo1DheeYc89gfYN0jqK85nQ','2020-09-04 19:27:30.890504','2020-09-05 19:27:30.000000',33,'5310ea7d04ac42919cfc25fde36356bf'),
	(903,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODgyMiwianRpIjoiZjEwM2QyZTUzZGRjNGU4NGE1ZjUwNTYzOGZmY2YwNjYiLCJ1c2VyX2lkIjoyNX0.MxzGszfgqd3sOGSlT_0pFQCXZtr7ednNpNYkKYthb54','2020-09-09 06:20:22.546090','2020-09-10 06:20:22.000000',25,'f103d2e53ddc4e84a5f505638ffcf066'),
	(904,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODgzMiwianRpIjoiNTIyYWQ5OTMyMDZiNDQ3YTgzMTBlMWQ0ZmZiYjM4YTgiLCJ1c2VyX2lkIjoyNX0.nfcYehW6TudcmRFkO5l8xXAnZeyj5FkH57L98-5ZoC0','2020-09-09 06:20:32.121655','2020-09-10 06:20:32.000000',25,'522ad993206b447a8310e1d4ffbb38a8'),
	(905,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODg0MSwianRpIjoiY2Q3ZjdhZWFlN2FiNDk5MDgxNmYxYjI2YWQxYWQzZjciLCJ1c2VyX2lkIjoyNX0.BW3G80bQN_Zl8MZNI5wBmzDK2ChPluyYoz-GHuB1UZk','2020-09-09 06:20:41.531797','2020-09-10 06:20:41.000000',25,'cd7f7aeae7ab4990816f1b26ad1ad3f7'),
	(906,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODg1MCwianRpIjoiZDM2NjI5YWE5YjUxNGU4MDg3YjA2ZWUwY2NjZWUzMzgiLCJ1c2VyX2lkIjoyNX0.PHnoi8LBEYFWN_AUhE9h4Zzb54hgmKHhFO69p7nlzy8','2020-09-09 06:20:50.568708','2020-09-10 06:20:50.000000',25,'d36629aa9b514e8087b06ee0cccee338'),
	(907,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODg2NiwianRpIjoiMTAyMDY1YzMyZjM1NDBjYmExMTBiNWJhNDg0NDNhMDYiLCJ1c2VyX2lkIjoyNX0.LkTRcg3KpS0fGhawll_f0MoIGgsROeM4uL1xhZ0RJ7g','2020-09-09 06:21:06.640819','2020-09-10 06:21:06.000000',25,'102065c32f3540cba110b5ba48443a06'),
	(908,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODg5OSwianRpIjoiZGIzY2EwY2EzODA3NGQ4ZWE3YzA3N2NhMjkxOWE1MjMiLCJ1c2VyX2lkIjoyNX0.H59tGdwgc9yrSCKOHG66A65n2HMAoaYjRL_f1QZP4BE','2020-09-09 06:21:39.924112','2020-09-10 06:21:39.000000',25,'db3ca0ca38074d8ea7c077ca2919a523'),
	(909,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODkxMCwianRpIjoiMDliZDMwNDVkNTc5NGI0MGFkMTI2NDQ4MGI5Y2JjMDgiLCJ1c2VyX2lkIjoyNX0.U3GT_FbLQzx2-_GaFaKHQxEDsOCLHHkpvqnETH1HgaA','2020-09-09 06:21:50.534375','2020-09-10 06:21:50.000000',25,'09bd3045d5794b40ad1264480b9cbc08'),
	(910,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODkzOCwianRpIjoiODY0Njc1ZjA2NzlhNDc3ZWFhZmJjOTA3ZDdmNTdkM2UiLCJ1c2VyX2lkIjoyNX0.5sZ0iMB_E7N_1WWxa2LkkX2GJvRUBbS188Mn4eWsuzg','2020-09-09 06:22:18.313904','2020-09-10 06:22:18.000000',25,'864675f0679a477eaafbc907d7f57d3e'),
	(911,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODk0OCwianRpIjoiYWNhMTg2YTg4M2M2NDc5Y2IwNWNmZWQ1MzhlNWUxNTgiLCJ1c2VyX2lkIjoyNX0.baAaPNCFL2E6d2ySFDYStnWITihPrB5vHFHL0fgbhWo','2020-09-09 06:22:28.598836','2020-09-10 06:22:28.000000',25,'aca186a883c6479cb05cfed538e5e158'),
	(912,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODk1NywianRpIjoiNjI5NTQ0MGQ3NjEyNGJiMmI3YzYzYTZjODI5ZjRiYWQiLCJ1c2VyX2lkIjoyNX0.XZa69H0_KnYdMzeBc3PR_38Wz0xTUgvkUsT48Iz1_MU','2020-09-09 06:22:37.240468','2020-09-10 06:22:37.000000',25,'6295440d76124bb2b7c63a6c829f4bad'),
	(913,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODk3NywianRpIjoiYjI5YWZmODQ1OTY2NGE3Yzk2MzA1YWEzOTQyODcxNGMiLCJ1c2VyX2lkIjoyNX0.JjYglyGDZiM9qti6xEtS4GrjH5xjvbVJTimNWwerP3I','2020-09-09 06:22:57.657438','2020-09-10 06:22:57.000000',25,'b29aff8459664a7c96305aa39428714c'),
	(914,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODk4OCwianRpIjoiMDVlMTU0NDFjNTY3NDI3ZmFjMjAzYTEwNWYxNzI2MTkiLCJ1c2VyX2lkIjoyNX0.3jEjDjvdQRLqoSjSraP-oG2HLGQW1yVppcSxVkwd9cE','2020-09-09 06:23:08.008522','2020-09-10 06:23:08.000000',25,'05e15441c567427fac203a105f172619'),
	(915,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxODk5NywianRpIjoiZWFmZTdkYzhjOGY4NDYyNTkwMzhjZGI2ZmI0OWVkMTgiLCJ1c2VyX2lkIjoyNX0.6bPJ8T1JiAFbL1E-Q-_zzxdoVbDlDXe_B9O5E7X1igU','2020-09-09 06:23:17.784525','2020-09-10 06:23:17.000000',25,'eafe7dc8c8f846259038cdb6fb49ed18'),
	(916,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTAwOSwianRpIjoiMzE5MzIzNDZkMGVlNDEyZDhiODgyYzhhMDhjYzE4MzAiLCJ1c2VyX2lkIjoyNX0._0kr0wxrRx-ZW-flwknnWSNhVbg1gBzsMuUQwJX1WBk','2020-09-09 06:23:29.330450','2020-09-10 06:23:29.000000',25,'31932346d0ee412d8b882c8a08cc1830'),
	(917,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTAxOCwianRpIjoiOTg3Mjg1NWU1YjQ2NDAzZmI3NzlhMWFlZjcyODQ5NGQiLCJ1c2VyX2lkIjoyNX0.APOmSelVH7FaunWYpVVDJfrARvT7oxNHcLCbQ8Keuas','2020-09-09 06:23:38.403336','2020-09-10 06:23:38.000000',25,'9872855e5b46403fb779a1aef728494d'),
	(918,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTAzMywianRpIjoiMTE4ZjAzYTUwZjdhNDk2MmE3NDkyYTkzZGQ0OGNhZjIiLCJ1c2VyX2lkIjoyNX0.nxtLLa_U0OwlgVslu8jEbqSk8VbnoatqAM0uA_IvnHo','2020-09-09 06:23:53.177286','2020-09-10 06:23:53.000000',25,'118f03a50f7a4962a7492a93dd48caf2'),
	(919,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTA0MCwianRpIjoiOTU3MTI1ZjMxYjY0NDNiMmFmNWM3ZmZiYWJlNWY2MmQiLCJ1c2VyX2lkIjoyNX0.gts65aoRVb6gFWJ-Kzuei9KF_A3M66ahxK9A6P9VKJo','2020-09-09 06:24:00.574753','2020-09-10 06:24:00.000000',25,'957125f31b6443b2af5c7ffbabe5f62d'),
	(920,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTA0OCwianRpIjoiMWIzZjliNWRjZWE3NGZkOWI2YjU2MTJjNjQ1MDE1YTMiLCJ1c2VyX2lkIjoyNX0.D3VSlHUN0N-ha144NQPyqYrzOVJa-PNRbjNXdFWwlDE','2020-09-09 06:24:08.930276','2020-09-10 06:24:08.000000',25,'1b3f9b5dcea74fd9b6b5612c645015a3'),
	(921,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTA1OSwianRpIjoiZDFmMDQ1ZDYyYjJhNGY0NTg3Y2IzODUxMWE4MWM0OWIiLCJ1c2VyX2lkIjoyNX0.QpXl5g7bVOH1awZVGmBc1BuQg9ciiysm_kR2y86aCVw','2020-09-09 06:24:19.914604','2020-09-10 06:24:19.000000',25,'d1f045d62b2a4f4587cb38511a81c49b'),
	(922,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTA2OSwianRpIjoiYjMwZmI3MDFkZmM2NDRjNjk4OWJkNmM4MmVjOGEwMWIiLCJ1c2VyX2lkIjoyNX0.FIFQYSJwRrzptWiPN3ht3W67H2th9pei9srK3U1HYnE','2020-09-09 06:24:29.962659','2020-09-10 06:24:29.000000',25,'b30fb701dfc644c6989bd6c82ec8a01b'),
	(923,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTA4OCwianRpIjoiYzk5ZTQ4NGVjZmEzNDM4Nzg5MmM4NTk3NTQzYzg5YWYiLCJ1c2VyX2lkIjoyNX0.AGwasIBB_slopTEWl_NYgofOesgtnoS-Fu0qboZlMrE','2020-09-09 06:24:48.589519','2020-09-10 06:24:48.000000',25,'c99e484ecfa34387892c8597543c89af'),
	(924,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTA5NywianRpIjoiMzJiOGJhMjM0OWIxNDVkOWJiNzNlN2YyNGQ5MThkOWUiLCJ1c2VyX2lkIjoyNX0.DCw3VjU2dQ7uc4_wpKllDHi9E3ja3_cTS5LDf5HmGRI','2020-09-09 06:24:57.828890','2020-09-10 06:24:57.000000',25,'32b8ba2349b145d9bb73e7f24d918d9e'),
	(925,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcxOTEwOCwianRpIjoiNDdlZDhlODQxZTU2NGY2OWJiYTk3MjliYjE3M2ZiMGQiLCJ1c2VyX2lkIjoyNX0.nOGeBH97ioRRNiypku8efp-m0t_zc-bK0dd7SRrq11A','2020-09-09 06:25:08.798004','2020-09-10 06:25:08.000000',25,'47ed8e841e564f69bba9729bb173fb0d'),
	(926,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjA4OCwianRpIjoiMmNhYWI0NmUwZDMzNDc2MGFkMGQ4MTBkYTk3MTZjMzUiLCJ1c2VyX2lkIjoyNX0.tRZj9ov51FeYEYMugPv_pDdCLqL2Ckr45YrOy7iEQss','2020-09-09 07:14:48.571498','2020-09-10 07:14:48.000000',25,'2caab46e0d334760ad0d810da9716c35'),
	(927,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjE0NywianRpIjoiOTc4MDBhNzZhZTkyNGJmY2EyZWFkY2MwYWUyN2FiZjAiLCJ1c2VyX2lkIjoyNX0.wnkJil5U9qhtoUEOP6qDsqUShNd7F7vSJNZaK69VZkQ','2020-09-09 07:15:47.329441','2020-09-10 07:15:47.000000',25,'97800a76ae924bfca2eadcc0ae27abf0'),
	(928,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjIzMywianRpIjoiYWQzNTI2NWNmMGQ5NGY4MjllNzc1YmNhNGZhOTg3YmIiLCJ1c2VyX2lkIjoyNX0.cydFJ2FOEPAbwJQxl1llL-tzw4LAz2CL8etW4s-0CB4','2020-09-09 07:17:13.523141','2020-09-10 07:17:13.000000',25,'ad35265cf0d94f829e775bca4fa987bb'),
	(929,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjI5NiwianRpIjoiZWM4ODZkNzM0ZDY1NGY1ODg1NmI1YjU0NDcwYjJjMDEiLCJ1c2VyX2lkIjozM30.ayiyM0ckJw4tyOhDmro0fLCRGiTcPm4LzbBDFrCQw3I','2020-09-09 07:18:16.653101','2020-09-10 07:18:16.000000',33,'ec886d734d654f58856b5b54470b2c01'),
	(930,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjMwNCwianRpIjoiY2JiZDU0ODM3NDkyNDM2MzllOWM4NjZhZGIzMTBjYWYiLCJ1c2VyX2lkIjozM30.ZsMFF0T2yjJucS9XG7SNn0aJ7fD6Q9UDJ5fSeZEFGRk','2020-09-09 07:18:24.046932','2020-09-10 07:18:24.000000',33,'cbbd5483749243639e9c866adb310caf'),
	(931,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjMzNiwianRpIjoiMDllZTYwZTU0MDUyNDUzMDkyOTU2M2QxNGJjNGRkMDgiLCJ1c2VyX2lkIjozM30.oh2vWrzvLgqUv1U8JA4n2U1_2JpwOZK7lt0IKrg5HhM','2020-09-09 07:18:56.956614','2020-09-10 07:18:56.000000',33,'09ee60e540524530929563d14bc4dd08'),
	(932,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM0NiwianRpIjoiOTUyMWMwNWFiYzcxNGYzOWI4ZWZkMWJiMTk5ZTVmZTAiLCJ1c2VyX2lkIjozM30.4eAeFFgR1HkmRHMNHjVk0xeLKjSqpyF7TZU06NfHrP0','2020-09-09 07:19:06.540410','2020-09-10 07:19:06.000000',33,'9521c05abc714f39b8efd1bb199e5fe0'),
	(933,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM1MywianRpIjoiYzQwOWE2NTVmYjgwNGM4ZTk2OWZlNGM4OTliNzZiNTAiLCJ1c2VyX2lkIjozM30.Xf9DE5npFPrAmPDQxkLxctzZ35I2S4yH2v-1YWvve1Y','2020-09-09 07:19:13.650432','2020-09-10 07:19:13.000000',33,'c409a655fb804c8e969fe4c899b76b50'),
	(934,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM2MCwianRpIjoiNzBmY2FlOTgxNmVhNDA3MGI0YTg3MjIyZDljNDJiOWMiLCJ1c2VyX2lkIjozM30.u4xStn5j5PRakhp9uw0O_MVFR7HajxRCjRH6TnQ0CzY','2020-09-09 07:19:20.467505','2020-09-10 07:19:20.000000',33,'70fcae9816ea4070b4a87222d9c42b9c'),
	(935,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM2NywianRpIjoiMWFlZjY1NjBmYTkzNGU1OThlYTZlNDliYTE0YmM2MWEiLCJ1c2VyX2lkIjozM30.LZ2dDFq24YRCADUqIHjotG7Gtb1DCFEmi2Qd8f7Ob1E','2020-09-09 07:19:27.096126','2020-09-10 07:19:27.000000',33,'1aef6560fa934e598ea6e49ba14bc61a'),
	(936,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM3MywianRpIjoiMDRhYzE1MmEyZWM4NGQyOGJlODI2YTViMGFlOTQ3ODIiLCJ1c2VyX2lkIjozM30.n0CmE5THyjn43Wn0IdzLjaldCbjUd6415aqEKxuOHBA','2020-09-09 07:19:33.437920','2020-09-10 07:19:33.000000',33,'04ac152a2ec84d28be826a5b0ae94782'),
	(937,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM4MCwianRpIjoiZmVjNTRmN2RlNjdiNDc1OTg5Y2NhNDk5OWEwNGI5MTEiLCJ1c2VyX2lkIjozM30.SvEt-omxI8f_5-3My589ZgObssJAZ9GlFlMtU9ZnO6g','2020-09-09 07:19:40.755430','2020-09-10 07:19:40.000000',33,'fec54f7de67b475989cca4999a04b911'),
	(938,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM4OSwianRpIjoiMzA0YTk2YWY2ZTlhNDQ5NmIxZTliZDk3YjBlN2UyM2QiLCJ1c2VyX2lkIjozM30.u3fiU12dKRLbnysTm8vAmmdPC5L14bCBEZ2KBtYzXvQ','2020-09-09 07:19:49.792018','2020-09-10 07:19:49.000000',33,'304a96af6e9a4496b1e9bd97b0e7e23d'),
	(939,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjM5OCwianRpIjoiYmRhNGY3MzVkMmRmNDdjNzk3NTcxYTAxODgzNzQ0NDAiLCJ1c2VyX2lkIjozM30.4QfHEwyhcVGew7dp3qMy3LZtNItppckrNwkLHqxl5kA','2020-09-09 07:19:58.647467','2020-09-10 07:19:58.000000',33,'bda4f735d2df47c797571a0188374440'),
	(940,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjYwNCwianRpIjoiODYxNmZkYTdkMzAzNGEzYWFmYjNlODM0ZTNkZDQ4M2EiLCJ1c2VyX2lkIjozM30.LNqcVVFOgOYexDphh09qEVZRy0j-YnXewZOW-VOhZAU','2020-09-09 07:23:24.237391','2020-09-10 07:23:24.000000',33,'8616fda7d3034a3aafb3e834e3dd483a'),
	(941,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjYxMSwianRpIjoiMjczNWFlZDFkNzI0NGQyZTkxZTcyZTdlOWU5ZmI5MWUiLCJ1c2VyX2lkIjozM30.NhP8BrmHur1BS8roYPQNtwHlfTRGLcElZoJjW2P5P3s','2020-09-09 07:23:31.191892','2020-09-10 07:23:31.000000',33,'2735aed1d7244d2e91e72e7e9e9fb91e'),
	(942,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjYyOSwianRpIjoiYzJhNmFiYmYyMWY1NDc4MDk0Mzc1NDJlNDIxOWU1NjUiLCJ1c2VyX2lkIjozM30.35tu5z_sNE1uinEktvy_3vl405jDTyRzbh6Y_-1Y6uE','2020-09-09 07:23:49.806120','2020-09-10 07:23:49.000000',33,'c2a6abbf21f547809437542e4219e565'),
	(943,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjY1NiwianRpIjoiNWZkOTNjNWI4MDA4NDNlZGI5OGZmZjc1YzlhNWVmMDkiLCJ1c2VyX2lkIjozM30.VjutnG5aamM5odU_AaQeYMgONQGXZ3qvRH20Tw4uP5I','2020-09-09 07:24:16.672953','2020-09-10 07:24:16.000000',33,'5fd93c5b800843edb98fff75c9a5ef09'),
	(944,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjY2MywianRpIjoiYWI1MzAxM2IyMzY4NDVkNGIxYWY1MzA3ODhlNWRjM2QiLCJ1c2VyX2lkIjozM30.Hlcp7N816KHh6hSodNVQsZRUWIaujG_6VONZX4K2Nb4','2020-09-09 07:24:23.781602','2020-09-10 07:24:23.000000',33,'ab53013b236845d4b1af530788e5dc3d'),
	(945,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjczMywianRpIjoiYjhhNzRmN2U3ZTA1NGQ4MTgzOTM4OGE1NmZlOWEzOWEiLCJ1c2VyX2lkIjozM30.WskQbtWH0k_qhe5Rx3_OV0e6pYfgIuB8BbqD7ukFy0k','2020-09-09 07:25:33.344662','2020-09-10 07:25:33.000000',33,'b8a74f7e7e054d81839388a56fe9a39a'),
	(946,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjc0NSwianRpIjoiZGU2NDVmZDcxZDc4NDg0MmEyMTgzNzQ1NTdmYjQ3NjIiLCJ1c2VyX2lkIjozM30.yE3XRNX_BKHqnrhjN6RguzEJRsS3KJgMw5nMN-Ihrcs','2020-09-09 07:25:45.061639','2020-09-10 07:25:45.000000',33,'de645fd71d784842a218374557fb4762'),
	(947,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjc1NCwianRpIjoiNzBkNzMzNDE1ZWIzNDdjY2FjMjdmYmJiYWI1MmU4MDIiLCJ1c2VyX2lkIjozM30.XnnhbG2i10OAxZfmnzVYDj-ME3UsyoP3N2geVcuOg8c','2020-09-09 07:25:54.288080','2020-09-10 07:25:54.000000',33,'70d733415eb347ccac27fbbbab52e802'),
	(948,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjgzMiwianRpIjoiN2UyZjNlNTQyMjk5NDFkYmJiZTI5ZWU2YTdkODRiYmUiLCJ1c2VyX2lkIjoyN30.polYn53_kirfmaFigYJLehR8hpMJXzLiFntRFGO3NgU','2020-09-09 07:27:12.332107','2020-09-10 07:27:12.000000',27,'7e2f3e54229941dbbbe29ee6a7d84bbe'),
	(949,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjg0NSwianRpIjoiYTk1M2M3ODIwN2M0NDI2MDllN2IyYTNiYzM1MjBlODciLCJ1c2VyX2lkIjoyN30.5w57ZTkjWpt_dh0M97mQcQzJzg30oAzImIx6ueu0-II','2020-09-09 07:27:25.049294','2020-09-10 07:27:25.000000',27,'a953c78207c442609e7b2a3bc3520e87'),
	(950,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjg1NSwianRpIjoiMDRjNTMyNzgzOTA1NDY4ODhjZWZiMTAyYWFhMjU3ZTkiLCJ1c2VyX2lkIjoyN30.U4ugCg_4u-pLheT-2RGfqZ2ug7O4khCTu-wRd_XOVJo','2020-09-09 07:27:35.608829','2020-09-10 07:27:35.000000',27,'04c53278390546888cefb102aaa257e9'),
	(951,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjg2NCwianRpIjoiODEyNTJlOGNkYzZiNDFkOWI2MTc2MTlhNjZjNWMzM2EiLCJ1c2VyX2lkIjoyN30.5gSOobmemqbZkdiyQ3rkp8H0tGvo4B6P3dVlk6Kdymc','2020-09-09 07:27:44.431590','2020-09-10 07:27:44.000000',27,'81252e8cdc6b41d9b617619a66c5c33a'),
	(952,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjg3MywianRpIjoiMTFmM2JjODRhZDAxNDYzNDk2MWViNWRiMDFlOGRlOTIiLCJ1c2VyX2lkIjoyN30.yZYHtcnRQ31LrBwpO9Fv9wJAlUnSlZZwzRKZKGj0yOM','2020-09-09 07:27:53.381348','2020-09-10 07:27:53.000000',27,'11f3bc84ad014634961eb5db01e8de92'),
	(953,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjg4MywianRpIjoiNDIyYWE5MTE5OTIyNDJhNGIxMjBjY2FhNTNhYTVkMDgiLCJ1c2VyX2lkIjoyN30.Mx_1w2r9IxOPzzbCzWrVm_taXfwp7vjlOq717UFjhnU','2020-09-09 07:28:03.506963','2020-09-10 07:28:03.000000',27,'422aa911992242a4b120ccaa53aa5d08'),
	(954,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjg5MywianRpIjoiODViNWMxMTk4NGQ1NDFkYjkyZTBlZGU0MjMwMzcwY2MiLCJ1c2VyX2lkIjoyN30.IrP401DNsfeb0m-vPIoIHmVCdWO6ikdJGEIAVkiTUtw','2020-09-09 07:28:13.662825','2020-09-10 07:28:13.000000',27,'85b5c11984d541db92e0ede4230370cc'),
	(955,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjkwNCwianRpIjoiODU5YzI3NTEyZDE1NGY1OGI1YTViOGY1ZjA1MmViNDEiLCJ1c2VyX2lkIjoyN30.ifyvfF69mTvkI1i0MpgFfEeYbONG5Wwtv52atv2BbyI','2020-09-09 07:28:24.694644','2020-09-10 07:28:24.000000',27,'859c27512d154f58b5a5b8f5f052eb41'),
	(956,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjkxNSwianRpIjoiODJjNTc0ZWVlODQxNDE5ZDljYjQ0MzZhY2RkZTU4MzEiLCJ1c2VyX2lkIjoyN30.Q9QAe6gzfpBunTXKtS9I2_reki7uQC3P7VERhzTSrNI','2020-09-09 07:28:35.891600','2020-09-10 07:28:35.000000',27,'82c574eee841419d9cb4436acdde5831'),
	(957,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjkyNCwianRpIjoiYzhkNDdhYzI2YTI3NGI5N2JmZjhhZWM3MGUxNWFlM2MiLCJ1c2VyX2lkIjoyN30.qD_3R3U4Kf-w5lSe8CN48t7JjKhKhq9eYmsu7yg6bDs','2020-09-09 07:28:44.843449','2020-09-10 07:28:44.000000',27,'c8d47ac26a274b97bff8aec70e15ae3c'),
	(958,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjkzNCwianRpIjoiOTJiODI4MWViM2Q2NDRiZjk0ZjQ0OTJmNjUzYTIyNjgiLCJ1c2VyX2lkIjoyN30.UBCk7PFagfWjOZiCpdGNHQd0rdIjByNhw8l05eZe4qk','2020-09-09 07:28:54.838559','2020-09-10 07:28:54.000000',27,'92b8281eb3d644bf94f4492f653a2268'),
	(959,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjk0MiwianRpIjoiZDUwNTA2NTdmN2MwNGVmZWFiYTE4YzA3MGFlMzgzMWQiLCJ1c2VyX2lkIjoyN30.Rzf3bBOxmuEZ4xTgNOXSq4e7LuYkNUsZxKAH9DCQsJ0','2020-09-09 07:29:02.917710','2020-09-10 07:29:02.000000',27,'d5050657f7c04efeaba18c070ae3831d'),
	(960,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjk1MSwianRpIjoiZDhhYzNjNGE3NTQ0NDMxMzgwOGY4MjNmMmRhZDIzNmUiLCJ1c2VyX2lkIjoyN30.UFnDoeDcJXzgMXo99exvQfv0PZyijmORwtSGa6K14iA','2020-09-09 07:29:11.945353','2020-09-10 07:29:11.000000',27,'d8ac3c4a75444313808f823f2dad236e'),
	(961,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjk2MiwianRpIjoiNGVhMjQzOWU4NzYyNDY2M2ExOWI5MzA2NjdjODczMWUiLCJ1c2VyX2lkIjoyN30.rXsXbPGNeX7l7rLTWGl7AUfaKq5ilpj7dZsQF-xlmb8','2020-09-09 07:29:22.847166','2020-09-10 07:29:22.000000',27,'4ea2439e87624663a19b930667c8731e'),
	(962,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjk3MywianRpIjoiMGZjZDk0OWI3ZWMzNGM3OGFkOWFjZmY4YWMzZDgzOWIiLCJ1c2VyX2lkIjoyN30.UmMgYyDJI0eW7Aw_zPHL3xD5b8vho-Naea7TW8nsOHY','2020-09-09 07:29:33.497294','2020-09-10 07:29:33.000000',27,'0fcd949b7ec34c78ad9acff8ac3d839b'),
	(963,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjk4NiwianRpIjoiZjNmYzNjMDM4ZDk2NDJhZWE0OWQyZjRmYzJhOTcwNDMiLCJ1c2VyX2lkIjoyN30.TWvgK6hxE7ji-DTBsWWuJ8cr5H0_Iq5lzbeZkh4asvE','2020-09-09 07:29:46.812311','2020-09-10 07:29:46.000000',27,'f3fc3c038d9642aea49d2f4fc2a97043'),
	(964,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMjk5NiwianRpIjoiOTY2ZTZhZDRlN2YzNDRiMGE2MGM5NjIwZWU3MDFhZjEiLCJ1c2VyX2lkIjoyN30.6uqtD2GdD57i-etPwYB9rXwLv4IWiRrJvJ3dVjhRDO0','2020-09-09 07:29:56.057180','2020-09-10 07:29:56.000000',27,'966e6ad4e7f344b0a60c9620ee701af1'),
	(965,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzAwNSwianRpIjoiNzE2MjQyYTFhMjY1NDE1NWFmMzViNTFiMjRjOWQzNDciLCJ1c2VyX2lkIjoyN30.xUq42YdH3ZsnoeCkEtiGsa4zlV2GkFp9ukznd7aRkSA','2020-09-09 07:30:05.967176','2020-09-10 07:30:05.000000',27,'716242a1a2654155af35b51b24c9d347'),
	(966,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzAyMSwianRpIjoiYzZmNmRjYjc3ZmM2NDNhZjg3Mjk1NjQyMTMzMGVmNTEiLCJ1c2VyX2lkIjoyN30.WXy5TIZeImsMYIMdUSocIHC6iHPcX61gQS8lMVrSyAU','2020-09-09 07:30:21.251743','2020-09-10 07:30:21.000000',27,'c6f6dcb77fc643af872956421330ef51'),
	(967,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzAzMiwianRpIjoiZjQxNjE2YzIzZWQyNDY1YmIwY2EwMjUzN2RkZThmOTgiLCJ1c2VyX2lkIjoyN30.Tfqf_Mc5ufLxq9naO4q38CQ9UjfJQCDInOm7_bvMXSM','2020-09-09 07:30:32.296279','2020-09-10 07:30:32.000000',27,'f41616c23ed2465bb0ca02537dde8f98'),
	(968,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzA0MCwianRpIjoiMWExMzM0MDU1ZTFkNDIzY2E1OTFkMTc3ZWRjMDc0NWYiLCJ1c2VyX2lkIjoyN30.UvA9FqGXiu95XtIinH_oX04EDrvI_yIP0nwD5uBxoec','2020-09-09 07:30:40.702591','2020-09-10 07:30:40.000000',27,'1a1334055e1d423ca591d177edc0745f'),
	(969,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzA0OSwianRpIjoiYmRhZTNmY2I1MGFiNDZiNmE5YzMwODg0NmQ4YjRmNmEiLCJ1c2VyX2lkIjoyN30.9xB8FIVbY-VTdi-hrsxrGaYpHLUzc32UI6ReD4HNO3E','2020-09-09 07:30:49.631895','2020-09-10 07:30:49.000000',27,'bdae3fcb50ab46b6a9c308846d8b4f6a'),
	(970,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzA1OCwianRpIjoiOTlhNzMzNmU4MTk0NGU4NmE3ZGU3MTc5NmMyZGI4NDgiLCJ1c2VyX2lkIjoyN30.g9uP_2ZC5hf-K8lEGTS_iEqIbCClNJ4uSipeY1IeMjc','2020-09-09 07:30:58.919337','2020-09-10 07:30:58.000000',27,'99a7336e81944e86a7de71796c2db848'),
	(971,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzA3MiwianRpIjoiYThlNjg0ODY0Njk0NGQ0MTlkZWY5NTRiZjY5OTE0YzkiLCJ1c2VyX2lkIjoyN30.NbBDvTle017YWn9G_0cPVjUbrW06tQjeL8VUz_mmqEM','2020-09-09 07:31:12.542123','2020-09-10 07:31:12.000000',27,'a8e6848646944d419def954bf69914c9'),
	(972,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzA5MCwianRpIjoiMGJhMmY1NjI1ODgwNDM3ZDk4Njk4MjIwZjUxMzVkZDQiLCJ1c2VyX2lkIjoyN30.qUB9iGa59FhbzRxPZA0BLjMd6DebqMsE9ugXcA6Gw78','2020-09-09 07:31:30.750578','2020-09-10 07:31:30.000000',27,'0ba2f5625880437d98698220f5135dd4'),
	(973,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzEwMCwianRpIjoiNDVmMjA1YzEwMWJkNDMyNjg2ZTY3M2VmZjllOTAyOTgiLCJ1c2VyX2lkIjoyN30.1IeQ2sAEiNib1mzjOgxplrbnBb-wvnwYAKZmZ6jf5g8','2020-09-09 07:31:40.425848','2020-09-10 07:31:40.000000',27,'45f205c101bd432686e673eff9e90298'),
	(974,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzExMiwianRpIjoiNmMyOTQ1ZjczNjcxNDI1Y2IxZmJhZjY2OGI4M2VhOTAiLCJ1c2VyX2lkIjoyN30.5ovktbO944q2jdGXUvWtZYVVSnTITbHQHDAQzSYYgMI','2020-09-09 07:31:52.115496','2020-09-10 07:31:52.000000',27,'6c2945f73671425cb1fbaf668b83ea90'),
	(975,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzE1OCwianRpIjoiZjM5NzIwNzg5ZjU1NGYyY2E1Mjk3ODJlMjcxODBiYTgiLCJ1c2VyX2lkIjoyN30.ZHUEvJgZitRsya-XnhG22BXu2aLrZeZAVhKwba29Z3c','2020-09-09 07:32:38.257292','2020-09-10 07:32:38.000000',27,'f39720789f554f2ca529782e27180ba8'),
	(976,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzQ5NywianRpIjoiNjkxZDU1M2JkODA5NDBhODg0MjBmZDAxMjA1YjE1YmMiLCJ1c2VyX2lkIjoyN30.muKTc1ym1Xhh7bu7zm05kOqF5lr_B2bFsC3CP0wzlTI','2020-09-09 07:38:17.322334','2020-09-10 07:38:17.000000',27,'691d553bd80940a88420fd01205b15bc'),
	(977,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzgwNywianRpIjoiOTNhODJiNDE4ZmRkNDFiYzkwODQyNjczNzRkOGRmMTEiLCJ1c2VyX2lkIjoyOH0.Sts18ao2zZMPVTUqGBinl3iR__Umc-xG9Ge7fF1PJSM','2020-09-09 07:43:27.933752','2020-09-10 07:43:27.000000',28,'93a82b418fdd41bc9084267374d8df11'),
	(978,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzgxNiwianRpIjoiMjEwNDM2MGQ3OGYxNDRkNzlhN2FkNDI1NzhlNTYzZmEiLCJ1c2VyX2lkIjoyOH0.imFdcah0ZtHxLnpfojEuUaWvngyhzL-4tPjYZtQ295I','2020-09-09 07:43:36.413574','2020-09-10 07:43:36.000000',28,'2104360d78f144d79a7ad42578e563fa'),
	(979,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzgyNywianRpIjoiNTMxZTY3N2I5MmFmNDNhMjk1OGQzZDY2OWYxOTlhMDAiLCJ1c2VyX2lkIjoyOH0.jjuZTK-FF9GYMfudklprloS27ZJOHgHzt8MW2khyVm4','2020-09-09 07:43:47.125158','2020-09-10 07:43:47.000000',28,'531e677b92af43a2958d3d669f199a00'),
	(980,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzgzNCwianRpIjoiZGI3OTJlZTg0OTVkNDExYzk2OWZmMjA0OTMyZmMyMjMiLCJ1c2VyX2lkIjoyOH0.VXj9TwUNAn6bzQVsoHYOTS1A86Puh6KRtCVg-IiMC1E','2020-09-09 07:43:54.721081','2020-09-10 07:43:54.000000',28,'db792ee8495d411c969ff204932fc223'),
	(981,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg0MiwianRpIjoiNGI1NjZjYjk0NGUyNDA1NjhhMGEwMjNjNGIxOTI0YWYiLCJ1c2VyX2lkIjoyOH0.QQRgAtskkerIhbqyuHtQ8ISFXgvViIP1zcGLotggayU','2020-09-09 07:44:02.311566','2020-09-10 07:44:02.000000',28,'4b566cb944e240568a0a023c4b1924af'),
	(982,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg0OSwianRpIjoiMTA5NTUxOTU2OWY5NDM2MmJlMDVmODc1YTFkYzAzMzciLCJ1c2VyX2lkIjoyOH0.uTztGUWlj-PShgzlNH_QpO1_WWM0uF8Y9zrabfWRDYw','2020-09-09 07:44:09.632255','2020-09-10 07:44:09.000000',28,'1095519569f94362be05f875a1dc0337'),
	(983,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg1NiwianRpIjoiZmU0YTZjYmUyNjE0NGNjYmI5YTU4YmNmMGZhYjEwY2EiLCJ1c2VyX2lkIjoyOH0.41UMnwtoYaxd-Kq5S070ffbyt7zem-4vSBFORFaVy9Y','2020-09-09 07:44:16.856499','2020-09-10 07:44:16.000000',28,'fe4a6cbe26144ccbb9a58bcf0fab10ca'),
	(984,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg2NCwianRpIjoiMDExNDlhNWUxN2E4NDI1M2ExMGNhNWI2Zjc2YmJmMzgiLCJ1c2VyX2lkIjoyOH0.-NhSpfjYDkCkquoWFrXx2JbE4rlZTUG72xkedZgXOIg','2020-09-09 07:44:24.179630','2020-09-10 07:44:24.000000',28,'01149a5e17a84253a10ca5b6f76bbf38'),
	(985,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg3MywianRpIjoiN2VjMzhkZjRjN2IyNGJiY2IyNDdjYzUzNzBiNjlhODgiLCJ1c2VyX2lkIjoyOH0.8siNwZX_DZZ0bdKBNi0ZjS1cglLZYzMpx6musJ6i9y8','2020-09-09 07:44:33.850616','2020-09-10 07:44:33.000000',28,'7ec38df4c7b24bbcb247cc5370b69a88'),
	(986,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg4MywianRpIjoiZDNjMmIzNmUwOTcyNDVlNzhiMzY5YmViNjIyM2UwNmIiLCJ1c2VyX2lkIjoyOH0.iDs3aFzaM_Nof3SgJec3oLZLyFvFEjMUm89kP2bErv4','2020-09-09 07:44:43.802376','2020-09-10 07:44:43.000000',28,'d3c2b36e097245e78b369beb6223e06b'),
	(987,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzg5NSwianRpIjoiZWZhNjFkZmFiYzEyNDRkY2EwZGY2YTRkNzVjNGQ0NjIiLCJ1c2VyX2lkIjoyOH0.KAVvUOC0tkXygbyRXQNxaXACpXIQJhDZW1tkQ0wpbfs','2020-09-09 07:44:55.310153','2020-09-10 07:44:55.000000',28,'efa61dfabc1244dca0df6a4d75c4d462'),
	(988,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzkwNCwianRpIjoiMWZmMDJjYzM1YWNlNDhkYWFiNmMxOWI0YWY4MzhmNjciLCJ1c2VyX2lkIjoyOH0.HNfqZISrBR0Mq3DjDGIp1nR_H_wBmpY4z6SPPRj7nOE','2020-09-09 07:45:04.194936','2020-09-10 07:45:04.000000',28,'1ff02cc35ace48daab6c19b4af838f67'),
	(989,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzkyNiwianRpIjoiY2QyNmJjNDQ4OGEzNGFkOThiZDVkMDRhMTBmN2NiM2UiLCJ1c2VyX2lkIjoyOH0.X4d-h5rb5SW4ZmmxHwezCLI2A6yN2TqptFyUwsvWMNo','2020-09-09 07:45:26.638200','2020-09-10 07:45:26.000000',28,'cd26bc4488a34ad98bd5d04a10f7cb3e'),
	(990,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzkzNCwianRpIjoiMTFhYTA1MjQ1MmZlNDE2ZGJkNGI3ZGMwNjE4MWUzYTIiLCJ1c2VyX2lkIjoyOH0.8c0WBOEF0It02sr2pgBLZyDd0Sh4A6a6xMPn-EBxjAc','2020-09-09 07:45:34.830745','2020-09-10 07:45:34.000000',28,'11aa052452fe416dbd4b7dc06181e3a2'),
	(991,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzk0NSwianRpIjoiMDIxYzY2NzkzMTk2NDZlNjllNTZiNmVhODQ2YjY5MWYiLCJ1c2VyX2lkIjoyOH0.UQJCC69pW7YoLU_nvfqICdHfGWpnJkJjaVOifuDYTyg','2020-09-09 07:45:45.184470','2020-09-10 07:45:45.000000',28,'021c6679319646e69e56b6ea846b691f'),
	(992,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzk1NCwianRpIjoiOWYzYmRlMDdlNDNkNDMzNzhjNzA4OWMzODlhNjgyZDIiLCJ1c2VyX2lkIjoyOH0.DcwXyNH3onNB3lcoRoSQ0Uf_EmtHl4zjEk1ebA7H0Sc','2020-09-09 07:45:54.681253','2020-09-10 07:45:54.000000',28,'9f3bde07e43d43378c7089c389a682d2'),
	(993,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyMzk2MywianRpIjoiOWQzM2E1NjMxNzExNDMzYWI1ZTFjYWQyNTQ0YjMxYTYiLCJ1c2VyX2lkIjoyOH0.B8d_GUKoTWyPg3BruC6lhw14naOGUs5BZMu5G138QeU','2020-09-09 07:46:03.262026','2020-09-10 07:46:03.000000',28,'9d33a5631711433ab5e1cad2544b31a6'),
	(994,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDY1NSwianRpIjoiZjIyNzI1MmY3OGNiNGJlNjlkNmZiNDQxZGY4MmRhZDAiLCJ1c2VyX2lkIjoyOX0.IY1WLKw-BSueAHed-SM5lw4TLL6Hxx6ebh53yzQWd8M','2020-09-09 07:57:35.238970','2020-09-10 07:57:35.000000',29,'f227252f78cb4be69d6fb441df82dad0'),
	(995,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDY2NCwianRpIjoiNWIyZTE1Y2YwMDZiNDk2ZmJjODcyOTMxODU5YTdjZmIiLCJ1c2VyX2lkIjoyOX0.HNv1yfgqFfzJ921QujFYgCqOfvJZpB6dm2n-ghZp45w','2020-09-09 07:57:44.476350','2020-09-10 07:57:44.000000',29,'5b2e15cf006b496fbc872931859a7cfb'),
	(996,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDY3NCwianRpIjoiODI3ZmI2YmIzODEzNGJhM2I2YjZiYjNlZmQ3NzNmZjciLCJ1c2VyX2lkIjoyOX0.2royctNiaZxogZ8QncS1zkZouFPutXs9iWR1Ooks3IA','2020-09-09 07:57:54.746192','2020-09-10 07:57:54.000000',29,'827fb6bb38134ba3b6b6bb3efd773ff7'),
	(997,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDY4NiwianRpIjoiY2M4ZjIxYzllNzJlNDU0OWFlNzJjZWYzN2JmMzE1ZjciLCJ1c2VyX2lkIjoyOX0.9GVcKV_xvZci46Nl2f-FuRQl-RT7QsQcxDZZqbcnwzc','2020-09-09 07:58:06.202716','2020-09-10 07:58:06.000000',29,'cc8f21c9e72e4549ae72cef37bf315f7'),
	(998,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDY5MywianRpIjoiZmFlOTBiYzYxNDdlNDA2MDk4ZmI0Mjk5OGNlOTQxZDQiLCJ1c2VyX2lkIjoyOX0.-KcDK452VGt_ShomZVbuuYByYgRIZ4ueimAI23pPA58','2020-09-09 07:58:13.633970','2020-09-10 07:58:13.000000',29,'fae90bc6147e406098fb42998ce941d4'),
	(999,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDcwMywianRpIjoiMTlhNTM3NGFhMGJlNDA1MThlMzdkOTBhMGM1NDRiYzkiLCJ1c2VyX2lkIjoyOX0.R9x5WsmaumRmEbmhssFsZ2Cpmqr5K-gcg8S2fbLjkBg','2020-09-09 07:58:23.198920','2020-09-10 07:58:23.000000',29,'19a5374aa0be40518e37d90a0c544bc9'),
	(1000,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDcxMywianRpIjoiZTg5M2NmMDM4YWJiNDEyNzgzNTdmZGM3Nzk3OTJlMzYiLCJ1c2VyX2lkIjoyOX0.RRmiIEr_lmzkCeVheYb4xl0R_PP8O8mj6Jkp9ciQc1M','2020-09-09 07:58:33.641005','2020-09-10 07:58:33.000000',29,'e893cf038abb41278357fdc779792e36'),
	(1001,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDcyNSwianRpIjoiMTNlZTg2Yzc2MTc1NGEwYTg3N2IxMTM0MjgzODQ1NmYiLCJ1c2VyX2lkIjoyOX0.6lhoCzNCPMvaK8bWosEjJTzBRHZcKhBae9It4qyproc','2020-09-09 07:58:45.589032','2020-09-10 07:58:45.000000',29,'13ee86c761754a0a877b11342838456f'),
	(1002,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDczNiwianRpIjoiYjg5ZGY1NTE2NDk3NGVmMWEyZWIxMGQ3ZDFiOGE2MTMiLCJ1c2VyX2lkIjoyOX0.KyJnQ13s1W3ug__9UwFjq6Jv6nNmC_Mhw7gbVPZmxkg','2020-09-09 07:58:56.300757','2020-09-10 07:58:56.000000',29,'b89df55164974ef1a2eb10d7d1b8a613'),
	(1003,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDc0MywianRpIjoiYjM3M2I1MjE5OTEzNDdiZjk2Nzk0MzBmNjZmOWRjYjciLCJ1c2VyX2lkIjoyOX0.pCxJtv6jY6t_VGIUe0zfh1oHH8gIlTPFvat0b-Y6tvg','2020-09-09 07:59:03.016029','2020-09-10 07:59:03.000000',29,'b373b521991347bf9679430f66f9dcb7'),
	(1004,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDc1MCwianRpIjoiMmU1MTdjZTQ5ZTY1NDg5YjkzYWJhZWEwMWQ0MTA0MjgiLCJ1c2VyX2lkIjoyOX0.vgJT2S5ZAGXls8ZtmvtnXv4dqKNY_i-aJbn85JeHYAM','2020-09-09 07:59:10.065378','2020-09-10 07:59:10.000000',29,'2e517ce49e65489b93abaea01d410428'),
	(1005,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNDkxMiwianRpIjoiMzM5ZDQ3MDhlM2JlNDI3MmE4ODEyNzllMGQ4Y2U0OTciLCJ1c2VyX2lkIjoyOX0.9wdhbO-Hf0z-rtVPGeVxy8aXYCDoRE7dzwMbzQS2N3Y','2020-09-09 08:01:52.716967','2020-09-10 08:01:52.000000',29,'339d4708e3be4272a881279e0d8ce497'),
	(1006,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTcyNTAyOCwianRpIjoiYWNhMDNmODExYWEwNDUzZjllZDVlZWQ0MmJhZWJkNjEiLCJ1c2VyX2lkIjoyOX0.FDFuAb1lIuWDem_5xfrs7YTInmyayIMoVgG-q13JQFI','2020-09-09 08:03:48.243973','2020-09-10 08:03:48.000000',29,'aca03f811aa0453f9ed5eed42baebd61'),
	(1007,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc0ODQxNSwianRpIjoiNzhlYzJjNTgyNmYzNGYxZTk4MDQ0YWY3Y2MzZGRlY2YiLCJ1c2VyX2lkIjoyNX0.TDI6xiwhxt6gFm76cT7cZ4R7JKdRI2hRJaHWyVCXKVM','2020-09-09 14:33:35.847394','2020-09-10 14:33:35.000000',25,'78ec2c5826f34f1e98044af7cc3ddecf'),
	(1008,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc0OTYxMSwianRpIjoiZGE2OGIzZDAyMzhkNDFhNjhmZGMzOWM5OWFjNzJmYWMiLCJ1c2VyX2lkIjoyNX0.jTu7LZYK6bZDuek7hOvAoFmn-7XGDkvsq7HnRMQqElY','2020-09-09 14:53:31.942722','2020-09-10 14:53:31.000000',25,'da68b3d0238d41a68fdc39c99ac72fac'),
	(1009,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc0OTkxNSwianRpIjoiNjg0ZDc5MjdlMTE0NDgzZThiNjBiNTczZDY3YWUyNGQiLCJ1c2VyX2lkIjoyNX0.IRWxCTdwXoNj7eNWGC2-9_4bzo991pFumXmYT3SMpoI','2020-09-09 14:58:35.785430','2020-09-10 14:58:35.000000',25,'684d7927e114483e8b60b573d67ae24d'),
	(1010,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc1MDAyMCwianRpIjoiMTJkNDE2Zjg1MjIwNDM1NmI4M2Y0ZDVkOWI0NWE2OTciLCJ1c2VyX2lkIjoyNX0.wcKmxz6JuC0lnKq_uLDQ7C3no5hWVNfaxLn1PlWLk7c','2020-09-09 15:00:20.888276','2020-09-10 15:00:20.000000',25,'12d416f852204356b83f4d5d9b45a697'),
	(1011,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc1MDI4OCwianRpIjoiMGEwOGFhZjJjN2VlNGIwYmFhYmQ0ZjAzODdkMGY1NmUiLCJ1c2VyX2lkIjoyNX0.QvHO4PAb-2IFywKE60Gn3JqnnLcmlqURg_pCitRkxpk','2020-09-09 15:04:48.695038','2020-09-10 15:04:48.000000',25,'0a08aaf2c7ee4b0baabd4f0387d0f56e'),
	(1012,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc1MDM4MywianRpIjoiMjEwNjFiODlhMmMxNDFlOWI3YWI5ZTQyOGI4ZmNmZmQiLCJ1c2VyX2lkIjoyNX0.JiIms55KsJcRFKknlcpsipNENxXxerKGbql2OcyR-qQ','2020-09-09 15:06:23.957840','2020-09-10 15:06:23.000000',25,'21061b89a2c141e9b7ab9e428b8fcffd'),
	(1013,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2MjE0MywianRpIjoiNWEzMzA3ZmM4ZDc3NDA3MWFjMWZkNmVjMTBlZjJhYjAiLCJ1c2VyX2lkIjozM30.oJtHBFIK_Ik7RNN0uA8ImHFLr7l1kxlmh1UO-wW3OCo','2020-09-09 18:22:23.261123','2020-09-10 18:22:23.000000',33,'5a3307fc8d774071ac1fd6ec10ef2ab0'),
	(1014,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2MjE5MCwianRpIjoiNDgzMGUxOWJjYmRiNDNlZmFmZjcwZjlhYTE2OTlmOWIiLCJ1c2VyX2lkIjoyNX0.JzJ5GqwNkAYgdcb3jlQQKUDDcce1UWL-nhhS1NxkXyc','2020-09-09 18:23:10.458241','2020-09-10 18:23:10.000000',25,'4830e19bcbdb43efaff70f9aa1699f9b'),
	(1015,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2MjI2MiwianRpIjoiNGVmNWQ1YWZmNGI3NDQ3OTk4MTg0MDcyZDFhMDI0NTQiLCJ1c2VyX2lkIjoyNX0.6FNwAvoHkKUfpAPdc9vgq1aqHAG6rXS9dYKxnwAk5Ts','2020-09-09 18:24:22.890894','2020-09-10 18:24:22.000000',25,'4ef5d5aff4b7447998184072d1a02454'),
	(1016,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2MjU3MiwianRpIjoiODc5MGUzOWJkMTYzNDU1NTgwMjkyZjJjNWY0OTA0YjQiLCJ1c2VyX2lkIjoyNX0.0mTn2MzqEEOYWalvP6rAlBCDJ022lXiq5GcRNDKUOME','2020-09-09 18:29:32.902377','2020-09-10 18:29:32.000000',25,'8790e39bd163455580292f2c5f4904b4'),
	(1017,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2Mjk4OCwianRpIjoiNTA3MWMyYzNjMmI2NDM2Mzg2ZTBmMWM3NjM1M2UzZWYiLCJ1c2VyX2lkIjoyNX0.pUcEPmYLD_f8wpSfJLm3NdSzi1piE5NvDvyALMMLCTY','2020-09-09 18:36:28.969727','2020-09-10 18:36:28.000000',25,'5071c2c3c2b6436386e0f1c76353e3ef'),
	(1018,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2MzE2OCwianRpIjoiOGFmMzk1ZDlmMDE3NDQzN2JlNDFiNjZhNzVkZTc4NTciLCJ1c2VyX2lkIjozM30.8tYrjlAaGgV37Q8oHhXO3pjIbl8TiQsSKcZkxhe-SZw','2020-09-09 18:39:28.516258','2020-09-10 18:39:28.000000',33,'8af395d9f0174437be41b66a75de7857'),
	(1019,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU5OTc2NDAyNCwianRpIjoiMjA3NTNhNzY3NjYyNDljZmI4NzQwZTk3NTdkY2JjOTUiLCJ1c2VyX2lkIjoyNX0.5TXjZ8LCpVQyM8pZOqwFKXIByflJF_17hi7jwGOtuzc','2020-09-09 18:53:44.617087','2020-09-10 18:53:44.000000',25,'20753a76766249cfb8740e9757dcbc95');

/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
