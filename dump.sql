-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: talibhq.mysql.pythonanywhere-services.com    Database: talibhq$ttr_db
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_user`
--

DROP TABLE IF EXISTS `account_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `bio` longtext,
  `facebook_link` varchar(200) DEFAULT NULL,
  `instagram_link` varchar(200) DEFAULT NULL,
  `twitter_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_user`
--

LOCK TABLES `account_user` WRITE;
/*!40000 ALTER TABLE `account_user` DISABLE KEYS */;
INSERT INTO `account_user` VALUES (1,'pbkdf2_sha256$180000$4KoekjYeQsrO$lZxPkdkUaPhVsP7OvoYl4HgmzOzK2THl1bm2S4iyMTs=','2020-08-21 08:25:39.431443',1,'talib','','','',1,1,'2020-08-20 10:55:33.638895','','',NULL,NULL,NULL,NULL),(2,'pbkdf2_sha256$180000$iNzpkiYvXuHm$wmXxJ/2KHx08rR2W9ihJCNv7K2KdMJSERCcNq4ITi5w=','2020-08-20 10:56:46.471968',0,'shahrukh-khan91639579','','','srk@ex.com',0,1,'2020-08-20 10:56:31.000000','Shahrukh Khan','user_profiles/srk.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','http://instagram.com/','http://twitter.com/'),(3,'pbkdf2_sha256$180000$h6UsPuKtI3ul$XEarKAXretFvrHyYWxOvCsMnuLl9GuRHTDt8gZQdxeg=',NULL,0,'ranbir-kapoor77123271','','','rk@ex.com',0,1,'2020-08-20 10:59:20.000000','Ranbir Kapoor','user_profiles/rk.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','http://instagram.com/','http://twitter.com/'),(4,'pbkdf2_sha256$180000$oDUYuSm2HQno$CErHP2s7uUbIG2IkeXK2SgPIXa88xwUg+nUyr7wpZ8I=',NULL,0,'mike-price06298381','','','mike@ex.com',0,1,'2020-08-20 10:59:57.000000','Mike Price','user_profiles/mike.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','http://instagram.com/','http://twitter.com/'),(5,'pbkdf2_sha256$180000$PPl85AO0NjSV$M5HsmFUIoDkJxFkYCUXk29KoXMrEA1awcGKYCSS5ypw=',NULL,0,'leonardo-dicaprio33179718','','','leo@ex.com',0,1,'2020-08-20 11:00:34.000000','Leonardo DiCaprio','user_profiles/leo.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','http://instagram.com/','http://twitter.com/'),(6,'pbkdf2_sha256$180000$J6KwXraX30EQ$Wt6JU3PTfDRz+muH48bmhulrU3+i0alIyDMRelc7o/4=',NULL,0,'brad-pitt78934073','','','brad@ex.com',0,1,'2020-08-20 11:01:07.000000','Brad Pitt','user_profiles/brad.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','https://www.instagram.com/','https://twitter.com/'),(7,'pbkdf2_sha256$180000$sbyQ6TnqIz19$rNt3JbZIYxAZisjgwTkpOZtDtHcL6ZWg3RtCr/Pz7Ks=',NULL,0,'siddharth-malhotra72338199','','','sid@ex.com',0,1,'2020-08-20 11:01:40.000000','Siddharth Malhotra','user_profiles/sid.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','https://facebook.com/','https://instagram.com/','https://twitter.com/'),(8,'pbkdf2_sha256$180000$dPdPWLD5e1Rz$HysORGI/GBKxQE8HOA5WF6wWND2mPAM8Kmb0ng528vs=','2020-08-20 13:27:27.938418',0,'ertugrul-ghazi15283115','','','ertugrul@ex.com',0,1,'2020-08-20 11:03:12.000000','Ertugrul Ghazi','user_profiles/ertugrul.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','http://instagram.com/','http://twitter.com/'),(9,'pbkdf2_sha256$180000$CTktSsbQY12a$ILSCFCZ+xrNUc07k0d8XNPwIalm4IweERj216Hxh5yY=','2020-08-20 11:10:45.992993',0,'bruce-wayne35552728','','','batman@ex.com',0,1,'2020-08-20 11:10:32.029929','Bruce Wayne','user_profiles/batman.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','http://facebook.com/','http://instagram.com/','http://twitter.com/'),(10,'pbkdf2_sha256$180000$57f9FGaMO66L$Yb1wQpsjMIJwDsWfGxYY1JAGuqE14KbhCZ5XCil/nek=','2020-08-21 05:31:58.843605',0,'aashish38595045','','','aashishagrawal.253@gmail.com',0,1,'2020-08-21 05:21:51.435320','Aashish','user_profiles/DSC_1588-01.jpeg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `account_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_user_followers`
--

DROP TABLE IF EXISTS `account_user_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_user_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_user_followers_from_user_id_to_user_id_0a8287cd_uniq` (`from_user_id`,`to_user_id`),
  KEY `account_user_followers_to_user_id_37144574_fk_account_user_id` (`to_user_id`),
  CONSTRAINT `account_user_followers_from_user_id_e5baafe7_fk_account_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `account_user` (`id`),
  CONSTRAINT `account_user_followers_to_user_id_37144574_fk_account_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_user_followers`
--

LOCK TABLES `account_user_followers` WRITE;
/*!40000 ALTER TABLE `account_user_followers` DISABLE KEYS */;
INSERT INTO `account_user_followers` VALUES (23,2,3),(24,2,5),(25,2,6),(7,2,8),(21,3,4),(22,3,7),(8,4,6),(9,4,7),(16,5,2),(17,5,3),(18,5,4),(19,5,6),(20,5,7),(10,6,2),(11,6,3),(12,6,4),(13,6,5),(14,7,3),(15,7,4),(1,8,2),(2,8,3),(3,8,4),(4,8,5),(5,8,6),(6,8,7);
/*!40000 ALTER TABLE `account_user_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_user_groups`
--

DROP TABLE IF EXISTS `account_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_user_groups_user_id_group_id_4d09af3e_uniq` (`user_id`,`group_id`),
  KEY `account_user_groups_group_id_6c71f749_fk_auth_group_id` (`group_id`),
  CONSTRAINT `account_user_groups_group_id_6c71f749_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `account_user_groups_user_id_14345e7b_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_user_groups`
--

LOCK TABLES `account_user_groups` WRITE;
/*!40000 ALTER TABLE `account_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_user_user_permissions`
--

DROP TABLE IF EXISTS `account_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_user_user_permis_user_id_permission_id_48bdd28b_uniq` (`user_id`,`permission_id`),
  KEY `account_user_user_pe_permission_id_66c44191_fk_auth_perm` (`permission_id`),
  CONSTRAINT `account_user_user_pe_permission_id_66c44191_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `account_user_user_pe_user_id_cc42d270_fk_account_u` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_user_user_permissions`
--

LOCK TABLES `account_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `account_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_question_answer`
--

DROP TABLE IF EXISTS `ask_question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_question_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `smiles` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ask_question_answer_question_id_6a8f00d2_fk_ask_quest` (`question_id`),
  KEY `ask_question_answer_user_id_73368e30_fk_account_user_id` (`user_id`),
  CONSTRAINT `ask_question_answer_question_id_6a8f00d2_fk_ask_quest` FOREIGN KEY (`question_id`) REFERENCES `ask_question_question` (`id`),
  CONSTRAINT `ask_question_answer_user_id_73368e30_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_question_answer`
--

LOCK TABLES `ask_question_answer` WRITE;
/*!40000 ALTER TABLE `ask_question_answer` DISABLE KEYS */;
INSERT INTO `ask_question_answer` VALUES (1,'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2020-08-20 14:02:22.085705',1,2,2),(2,'If you get an error message with collectstatic, simply disable it by instructing Heroku to ignore running the manage.py collecstatic command during the deployment process.','2020-08-20 14:02:47.716023',4,5,6),(3,'Initialize Git and connect your new app (or existing one) to Heroku Git remote repository and push the application.','2020-08-20 14:03:12.244931',4,9,5),(4,'okayokay okayokayokayokayokayokayokayokayokay','2020-08-20 14:03:33.681351',1,8,10);
/*!40000 ALTER TABLE `ask_question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_question_question`
--

DROP TABLE IF EXISTS `ask_question_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_question_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(124) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext,
  `title` varchar(124) DEFAULT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ask_question_question_slug_ded58901_uniq` (`slug`),
  UNIQUE KEY `ask_question_question_title_67157045_uniq` (`title`),
  KEY `ask_question_question_user_id_311c28a0_fk_account_user_id` (`user_id`),
  CONSTRAINT `ask_question_question_user_id_311c28a0_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_question_question`
--

LOCK TABLES `ask_question_question` WRITE;
/*!40000 ALTER TABLE `ask_question_question` DISABLE KEYS */;
INSERT INTO `ask_question_question` VALUES (1,'do-you-prefer-hot-countries-or-cool-countries-when-you-go-on-holiday','2020-08-20 13:56:04.973400',7,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Do you prefer hot countries or cool countries when you go on holiday',52),(2,'do-you-think-tourism-will-harm-the-earth','2020-08-20 13:56:33.204836',3,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Do you think tourism will harm the earth?',26),(3,'what-are-the-most-surreal-places-to-visit','2020-08-20 13:56:59.184213',8,'Some of the strangest places on earth are also the most sublime: from the UFO-like dragon\'s blood trees in Yemen to a rainbow-colored hot spring in Yellowstone to a bridge in Germany that looks like a leftover prop from Lord of the Rings.','What are the most surreal places to visit?',34),(4,'why-do-you-need-to-turn-off-all-your-electronic-devices-before-an-airplane-takes-off-and-lands','2020-08-20 13:57:31.179160',2,'We\'ve been taught to fear the interference of our portable devices and an airplane\'s sensitive electronic systems. And despite being told to turn off our darn phones, four out of ten passengers, it seems, disregard these warnings, since there\'s little hard evidence behind claims that electromagnetic emissions from devices can muddle airplane computers. Still, there\'s ample anecdotal corroboration, like the flight where a 30-degree navigation error was rectified simply by asking a passenger to turn off a portable DVD player. The issue is still being debated, so if in doubt, flick that Off switch. We might, eventually, long for the days when a chatty seatmate couldn’t make an hour-long phone call.','Why do you need to turn off all your electronic devices before an airplane takes off and lands?',11),(5,'do-you-have-to-be-rich-to-travel-the-world','2020-08-20 13:57:58.437818',4,'The beauty of travel is that it’s accessible to everyone, in some form. You don\'t have to go far to experience a new culture. Plus there are several ways to make most flights affordable, whether by being flexible, searching on new websites like Skypicker and Fareness, or just by planning ahead. Know the best time to book a flight: 57 days in advance for domestic flights, 117 for international. Then again, you could just make traveling the world your 9-to-5.','Do you have to be rich to travel the world?',2),(6,'what-are-some-common-items-savvy-travelers-bring-with-them-that-less-savvy-travelers-dont','2020-08-20 13:58:30.702272',3,'Don’t forget a small power strip—ideal for sharing a crowded outlet in an airport, and a simple way to keep all devices close by once at a hotel. (Combine that with a Zolt—which powers a laptop and two devices with a charger the size of a lipstick—and it’s even handier.) Keep a photograph of your luggage and passport on your smartphone; lose either of them, and you’ll be grateful for the reference. Pack a scarf—always. And since calling Nespresso coffee is an insult to baristas everywhere, the best in-room alternate is the Aeropress, a nifty gizmo that’s portable, light, and makes killer morning joe almost anywhere.','What are some common items savvy travelers bring with them (that less-savvy travelers don’t)?',45),(7,'whats-it-really-like-to-be-a-travel-writer','2020-08-20 13:59:02.501908',5,'\"For every beautiful beach hideaway, there’s been a missed flight or delay; for every delicious meal, a nasty case of \'Delhi belly,\" says Traveler contributing editor Krisanne Fordham in her story on this very topic. In short: Traveling for a living is equal parts rewarding and challenging, satisfying and smelly. It teaches you to live—not linger, but really live—outside your comfort zone, to always pack a portable Wi-Fi hotspot, and to never check your bag again.','What’s it really like to be a travel writer?',80),(8,'what-are-some-things-airline-pilots-wont-tell-you','2020-08-20 13:59:32.336120',7,'There’s no better Bible of in-flight secrets than Air Babylon, a rollicking romp through 24 hours at an airport compiling anonymous tell-alls from a raft of staff. One sample tidbit: Aviation law decrees that after an onboard death (more common than you’d imagine), planes must land at the nearest airport. No airline wants to pay fines for being delayed, so no one is officially declared dead on board until the plane is landing at its destination.','What are some things airline pilots won’t tell you?',17),(9,'where-are-the-best-places-to-travel-alone','2020-08-20 13:59:59.626499',6,'Well, we certainly don\'t recommend Tahiti, where there\'s an all-but-constant reminder at every juncture that you are alone, a sad friendless figure lurking amid the glowing honeymooners. There are a few places, though, where visiting solo is a bonus, not a burden: notably cruises, yoga retreats, and treks across Europe.','Where are the best places to travel alone?',20),(10,'who-makes-the-best-travel-bags','2020-08-20 14:00:27.989850',9,'There’s more to in-flight baggage than a boring black rollaboard. Here are some ideas for every kind of trip, including a dapper retro case from Globetrotter worthy of David Livingstone.','Who makes the best travel bags?',40),(11,'is-india-a-good-travel-destination','2020-08-20 14:00:54.681627',8,'One of the best in the world, with a vast variety of destinations clustered together in a single country, from the Miami-esque glitz of Mumbai to the Raj-era holdovers in Kolkata, the parched landscapes and Tuscany-like city states in Rajasthan or the quiet backwaters of Kerala. Here’s some inspiration for planning the perfect first-timer’s trip, or you can pore over the site for our India-based sister magazine.','Is India a good travel destination?',123),(12,'how-do-you-pack-a-suit','2020-08-20 14:01:22.113092',5,'Don’t wear that suit if you want it to arrive wrinkle-free. Instead, heed the advice of our style editor, Jayna Maleri: \"Hold your jacket in front of you, with the front facing you, and fold length-wise in half away from you (so the buttons are on the fold and the shoulders are touching). Then carefully turn one shoulder inside out, and wrap it over the other shoulder (you\'ll know you\'re on the right track if the lining is now on the outside). Then fold the jacket one more time, in half width-wise. Fold your trousers carefully in half (use their natural crease as your guide), then place the folded jacket on top of them, near the knees. Fold the pants carefully around the jacket, and pack the bundle in the bottom of your luggage. Follow these steps and we promise, it won’t need a frantic steaming in the hotel shower.\"','How do you pack a suit?',17),(13,'whats-the-best-way-to-sleep-on-a-plane','2020-08-20 14:01:50.229168',4,'Some seasoned travelers might swear by that knockout cocktail known as an Ambientini (a sleeping pill with a vodka chaser). There are better, safer ways, though—including pre-flight exercise and a few drops of lavender essential oil.','What’s the best way to sleep on a plane?',37);
/*!40000 ALTER TABLE `ask_question_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user query',6,'add_userquery'),(22,'Can change user query',6,'change_userquery'),(23,'Can delete user query',6,'delete_userquery'),(24,'Can view user query',6,'view_userquery'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add blog',8,'add_blog'),(30,'Can change blog',8,'change_blog'),(31,'Can delete blog',8,'delete_blog'),(32,'Can view blog',8,'view_blog'),(33,'Can add category',9,'add_category'),(34,'Can change category',9,'change_category'),(35,'Can delete category',9,'delete_category'),(36,'Can view category',9,'view_category'),(37,'Can add tag',10,'add_tag'),(38,'Can change tag',10,'change_tag'),(39,'Can delete tag',10,'delete_tag'),(40,'Can view tag',10,'view_tag'),(41,'Can add blog comment',11,'add_blogcomment'),(42,'Can change blog comment',11,'change_blogcomment'),(43,'Can delete blog comment',11,'delete_blogcomment'),(44,'Can view blog comment',11,'view_blogcomment'),(45,'Can add question',12,'add_question'),(46,'Can change question',12,'change_question'),(47,'Can delete question',12,'delete_question'),(48,'Can view question',12,'view_question'),(49,'Can add answer',13,'add_answer'),(50,'Can change answer',13,'change_answer'),(51,'Can delete answer',13,'delete_answer'),(52,'Can view answer',13,'view_answer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `banner` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `blog_blog_category_id_c34d5f94_fk_blog_category_id` (`category_id`),
  KEY `blog_blog_author_id_8791af69_fk_account_user_id` (`author_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_account_user_id` FOREIGN KEY (`author_id`) REFERENCES `account_user` (`id`),
  CONSTRAINT `blog_blog_category_id_c34d5f94_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'HOW TO SPEND 48 HOURS IN OSLO','how-to-spend-48-hours-in-oslo','<p>Most budget travelers skip&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/norway-travel-tips/\" rel=\"noopener noreferrer\" target=\"_blank\">Norway</a>&nbsp;because it&rsquo;s an expensive country to visit. The capital,&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/norway-travel-tips/oslo/\" rel=\"noopener noreferrer\" target=\"_blank\">Oslo</a>, is consistently ranked as one of the most expensive cities in the world owing to its high taxes, strong currency, and high percentage of imported goods.</p>\r\n\r\n<p>Understandably, traveling here on a budget here is tricky. Yet I still encourage you to visit, even though it&rsquo;s not a budget-friendly destination. There are unique museums, beautiful parks, and stunning nature to be enjoyed. It&rsquo;s small enough that a two-day or three-day visit is usually enough to get a feel for it.</p>\r\n\r\n<p>To help you plan your trip and make the most of your time, here is my suggested 48-hour itinerary for Oslo.</p>','blog_banners/tour3.5.jpg','Oslo',2,'2020-08-20 13:28:36.020330','2020-08-21 02:48:51.867642',8,2),(2,'HOW TO ROAD TRIP AROUND OAHU','how-to-road-trip-around-oahu','<h1>Journaey Start</h1>\r\n\r\n<p>I didn&rsquo;t know much about Oahu before I visited. Everyone told me it was worth it for Pearl Harbor but to spend the rest of my time elsewhere in&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/united-states-travel-guide/hawaii/\" rel=\"noopener noreferrer\" target=\"_blank\">Hawaii</a>. Maui and Kauai were where the action was, they said.</p>\r\n\r\n<p>But Oahu was home to Honolulu&rsquo;s international airport from which I was catching an onward flight to&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/things-to-do-taiwan/\" rel=\"noopener noreferrer\" target=\"_blank\">Taiwan</a>. Since I had limited time, going to multiple islands wasn&rsquo;t feasible.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fortunately, after spending a full week on Oahu, I can say this: everyone was wrong.</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/in-defense-of-maligned-destinations/\" rel=\"noopener noreferrer\" target=\"_blank\">Maybe they just let their preconceived notions get the better of them</a>.</p>\r\n\r\n<p>Or maybe they just didn&rsquo;t give the place a chance.</p>\r\n\r\n<p>But, whatever the reason, I&rsquo;m here to tell you that Oahu has some magic to it. Sure, it&rsquo;s quite developed, has terrible traffic, and huge crowds. And yeah, maybe it&rsquo;s not as &ldquo;raw&rdquo; as the other islands (I assume that&rsquo;s why people like them).</p>\r\n\r\n<p>But there are plenty of spots in Oahu where you can live that Hawaiian dream</p>\r\n\r\n<p>I spent a week round-tripping the island (which, given how small it is, turned out to be quite easy). My plan was simple: sit on a beach as long as I could, eat my body weight in poke (diced raw fish, pronounced &ldquo;po-keh&rdquo;), and hike.</p>\r\n\r\n<p>Along the way, I also binged on shrimp, drank the best pi&ntilde;a colada of my life, and took notes so you can do even better when you visit!<br />\r\n&nbsp;</p>\r\n\r\n<h3>Driving Oahu: A Road-Trip Itinerary</h3>\r\n\r\n<p><img alt=\"Driving on the highway in Oahu, Hawaii surrounded by forests and jungle\" src=\"https://media.nomadicmatt.com/2020/hawaiiroadtrip7.jpg\" /><br />\r\nFirst, a tip: if you&rsquo;re driving around Oahu, go counterclockwise from Honolulu, since most of the food trucks you&rsquo;ll want to stop at are on the ocean side of the highway as you go up the east coast. So going in that direction just makes it easier to pull off the road and try all the food trucks that line the highway (and there are a lot). There&rsquo;s also more to do on the east side of Oahu, so it&rsquo;s best to start there.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>That said, I actually don&rsquo;t think a traditional road trip is the best idea. Oahu is smaller than you think &mdash; you can drive end to end in under two hours &mdash; so everything listed below can really be done as a day trip from one base or another, which will save you packing and unpacking, as well moving from place to place too often (especially since the east and west coasts don&rsquo;t have a lot of affordable accommodations).</p>\r\n\r\n<p>Base yourself on the North Shore for a couple of days and then in Honolulu (in the south) for a couple of days (or vice versa).<br />\r\n&nbsp;</p>\r\n\r\n<h3>Day 1: Honolulu to Kailua (28 miles)</h3>\r\n\r\n<p><img alt=\"The skyline of Honolulu, Hawaii surrounded by lush forests and jungles\" src=\"https://media.nomadicmatt.com/2020/hawaiiroadtrip1.jpg\" /><br />\r\nPick up your rental car, head out of Honolulu (you&rsquo;ll be back later), and start off at Hunauma Bay in southeast Oahu. You can spend a few hours there snorkeling and relaxing on the beach before heading to the nearby Halona Blowhole Lookout for the view and Makapu&lsquo;u Point (Oahu&rsquo;s easternmost point) for a short hike. There are also plenty of beaches, food trucks, short hikes, and viewpoints along the way to Kailua, where you&rsquo;ll want to stay the night.</p>\r\n\r\n<p><strong>Where to Eat:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Teddy&rsquo;s Bigger Burgers</li>\r\n	<li>Any of the food trucks on the way north</li>\r\n	<li>Buzz&rsquo;s Steakhouse (for dinner)</li>\r\n</ul>\r\n\r\n<p><strong>Where to Stay:</strong><br />\r\n<a href=\"http://airbnb.7eer.net/c/214481/264339/4273\" rel=\"noopener noreferrer\" target=\"_blank\">Airbnb</a>&nbsp;is the best option, since there aren&rsquo;t many hotels or hostels in Kailua. Book early though, as there isn&rsquo;t a lot to choose from.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Day 2: Kailua to Haleiwa (50 miles)</h3>\r\n\r\n<p><img alt=\"The beautiful coast of Kailua in Hawaii surrounded by water\" src=\"https://media.nomadicmatt.com/2020/hawaiiroadtrip5.jpg\" /><br />\r\nStart your morning with the famous Lanikai Pillbox hike just south of Kailua, where you can get sweeping views of the ocean and the cities and beaches on this side of the island. The hike is short (it only takes about 20-30 minutes) but steep, so wear appropriate shoes.</p>\r\n\r\n<p>If you have some time in the morning, Kailua and Lanikai beaches are both beautiful (they&rsquo;re right next to each other and on the way from the pillbox hike). Not a lot of people, white sand, blue water. They&rsquo;re heaven.</p>\r\n\r\n<p>As you leave this area to head north, visit the Ho&lsquo;oamaluhia Botanical Garden (it&rsquo;s free!), which is also home to a lake filled with tropical plants.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Afterward, drive up the east coast toward the North Shore. Along the way, you can stop at the Kualoa Ranch, where many movies have been filmed. If you do a tour, I suggest the 90-minute Hollywood Movie Sites Tour (which includes scenes from Jurassic Park!), as you don&rsquo;t need much more time than that to see the ranch. (It&rsquo;s expensive, though, so if you&rsquo;re on a budget, I&rsquo;d skip it.)</p>\r\n\r\n<p>As you keep going north, you&rsquo;ll find a ton of beaches and hikes (there are plenty of signs for everything). I really enjoyed the Hau&rsquo;ula Loop Trail especially, which is about 10 miles north of Kualoa. It&rsquo;s a really overgrown trail, so you&rsquo;ll feel like you&rsquo;re very much in the jungle (meaning you&rsquo;ll also need to bring bug spray). And like most hikes here, there&rsquo;s a scenic viewpoint!</p>\r\n\r\n<p>Then drive around the northern tip of Oahu to Haleiwa, your base of operations while on the North Shore.</p>\r\n\r\n<p><strong>Where to Eat Along the Way:</strong></p>\r\n\r\n<ul>\r\n	<li>Kalapawai Caf&eacute; and Deli</li>\r\n	<li>Fresh Catch Kaneohe</li>\r\n	<li>Shrimp Shack</li>\r\n	<li>Seven Brothers</li>\r\n	<li>Ken&rsquo;s Fresh Fish</li>\r\n	<li>Fumi&rsquo;s Shrimp</li>\r\n</ul>\r\n\r\n<p><strong>Where to Stay:</strong><br />\r\n<a href=\"http://airbnb.7eer.net/c/214481/264339/4273\" rel=\"noopener noreferrer\" target=\"_blank\">Airbnb</a>&nbsp;is again the best option, as there aren&rsquo;t many hotels or hostels in Hal&lsquo;eiwa. Book early here too.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Days 3 &amp; 4: North Shore (Base: Haleiwa)</h3>\r\n\r\n<p><img alt=\"A beautiful soft sunset on the North Shore of Oahu, Hawaii\" src=\"https://media.nomadicmatt.com/2020/hawaiiroadtrip6.jpg\" /><br />\r\nThis was my favorite part of Oahu. It was&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/united-states-travel-guide/hawaii/\" rel=\"noopener noreferrer\" target=\"_blank\">Hawaii</a>&nbsp;the way you imagine it should be: a lot quieter, less touristy, and less developed. And it had that whole &ldquo;hippie vibe&rdquo; going for it. Everyone up here was much more laid back than down south.</p>\r\n\r\n<p>You can learn to surf here (two-hour lessons begin at just $80 USD) or hike the Ka&lsquo;ena Point Trail (west of Haleiwa) and/or the &rsquo;Ehukai Pillbox (east of Haleiwa). The latter is pretty muddy, so bring appropriate shoes.</p>\r\n\r\n<p>Haleiwa itself is a sleepy little tourist town with a bunch of restaurants, shops, and parks. There&rsquo;s not much to do in the town itself than eat and window shop.</p>\r\n\r\n<p>If you do just one hike, though, I definitely recommend the Ka&lsquo;ena Point Trail, which was one of the best experiences I had. It&rsquo;s a scenic two-hour coastal walk to the northwestern tip of Oahu, where you will find a protected biological area with seals and native birds. At the tip, you can see all the way down the west side of the island &mdash; a magical view. Bring sunscreen and water, as the whole trail is exposed to the sun.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Where to Eat:</strong></p>\r\n\r\n<ul>\r\n	<li>Ted&rsquo;s Bakery</li>\r\n	<li>Sunrise Shack</li>\r\n	<li>Hale&lsquo;iwa Joe&rsquo;s</li>\r\n	<li>Matsumoto Shave Ice</li>\r\n	<li>Ray&rsquo;s Kiawe</li>\r\n	<li>Kono&rsquo;s</li>\r\n	<li>Jenny&rsquo;s Shrimp Truck</li>\r\n	<li>Giovanni&rsquo;s Shrimp</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Day 5: Dole Plantation, Oahu&rsquo;s West Side, Honolulu (60 miles)</h3>\r\n\r\n<p><img alt=\"The rugged coast of Waianae on the west coast of Oahu, Hawaii\" src=\"https://media.nomadicmatt.com/2020/hawaiiroadtrip8.jpg\" /><br />\r\nHead south (inland) and stop at the Dole Plantation. While it is super cheesy and touristy (I mean, so many useless souvenirs!), it does have a cool maze, and there&rsquo;s a train ride through the farm that, while whitewashing a lot of bad things, was an interesting look at the importance of the pineapple to Oahu. For a general overview geared to your average tourist, it was surprisingly informative.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Afterward, continue south toward Honolulu and then head west on the H1 road to the west coast for some deserted local beaches, such as Ma&rsquo;ili, Ewa, Makua, or Yokohama. Stop at Countryside Caf&eacute; for some incredible diner food. The portions are pretty large, so you can share them.</p>\r\n\r\n<p>Then head back into Honolulu, as there&rsquo;s not a lot of accommodation along the west coast. If you do want to stay longer, you&rsquo;ll find some listings on&nbsp;<a href=\"http://airbnb.7eer.net/c/214481/264339/4273\" rel=\"noopener noreferrer\" target=\"_blank\">Airbnb</a>&nbsp;and&nbsp;<a href=\"http://www.booking.com/index.html?aid=362916\" rel=\"noopener noreferrer\" target=\"_blank\">Booking.com</a>&nbsp;if you book far in advance. Otherwise, there are a few hotels in Kapolei if you don&rsquo;t want to drive all the way to Honolulu.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Days 6 &amp; 7: Honolulu</h3>\r\n\r\n<p><img alt=\"\" src=\"https://media.nomadicmatt.com/2020/hawaiiroadtrip4.jpg\" /><br />\r\nI actually liked Honolulu a lot (the main beach area of Waikiki is a tourist trap though.) While downtown is a bit bland, other neighborhoods are filled with awesome stores, breweries, bars, restaurants, and art galleries. Be sure to check out the &ldquo;hip&rdquo; Kaka&lsquo;ako part of town in particular.</p>\r\n\r\n<p>Consider going on a hike on Diamond Head, a volcanic cone on the east side of town. It offers an incredible view of the city, though it&rsquo;s one of the more popular trails in the area so if you aren&rsquo;t there early enough to beat the crowds you&rsquo;ll basically be walking in a slow-moving line up the mountain. If you are short on time, skip it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Other Things to Do:</strong></p>\r\n\r\n<ul>\r\n	<li>A free walking tour with Hawaii Free Tours (call ahead, since they only run when they have bookings).</li>\r\n	<li>Pearl Harbor &ndash; This is a must. It&rsquo;s not even up for debate. You have to go.</li>\r\n	<li>Iolani Palace, the former royal residence of Hawaii&rsquo;s monarchs.</li>\r\n	<li>Soak in the sun on Waikiki Beach or other nearby beaches, such as Ala Moana, which is popular with locals.</li>\r\n</ul>\r\n\r\n<p>There&rsquo;s also an Islamic art museum, which is supposed to be great, but I didn&rsquo;t make it there.</p>\r\n\r\n<p><strong>Where to Eat:</strong></p>\r\n\r\n<ul>\r\n	<li>The Pig and the Lady</li>\r\n	<li>Mei Sum Dim Sum</li>\r\n	<li>Shirokiya Japan Village Walk</li>\r\n	<li>Rainbow Drive-In</li>\r\n	<li>Leonard&rsquo;s Bakey</li>\r\n	<li>Ono Seafood</li>\r\n	<li>Hula Dog</li>\r\n</ul>\r\n\r\n<p><strong>Where to Stay:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FTHE-BEACH-waikiki-boutique-hostel-by-IH%2FHonolulu%2F41553\" rel=\"noopener noreferrer\" target=\"_blank\">The Beach</a>&nbsp;&ndash; This hostel is right on the beach, includes free breakfast, and has plenty of space to relax and meet other travelers.</li>\r\n	<li><a href=\"https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FPolynesian-Hostel-Beach-Club-Waikiki%2FHonolulu%2F3264\" rel=\"noopener noreferrer\" target=\"_blank\">Polynesian Hostel Beach Club Waikiki</a>&nbsp;&ndash; The accommodation here is basic, but the staff are super friendly and helpful, and they organize lots of events.</li>\r\n	<li><a href=\"https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FWaikiki-Beachside-Hostel%2FHonolulu%2F389\" rel=\"noopener noreferrer\" target=\"_blank\">Waikiki Beachside Hostel</a>&nbsp;&ndash; A fun, social hostel that hosts live music. Breakfast is included too.</li>\r\n</ul>\r\n\r\n<p>Additionally, head to the Royal Hawaiian Hotel for the best pi&ntilde;a colada of your life. It&rsquo;s not cheap ($15 USD a pop), but it is sooo good! Every one of my friends who didn&rsquo;t order one got it as their second drink. (Fun fact: My grandfather was stationed in Oahu during WWII and went back to Oahu often. The Royal Hawaiian was his favorite hotel. It&rsquo;s pretty cool that it&rsquo;s still there!)<br />\r\n&nbsp;</p>\r\n\r\n<h3>Average costs</h3>\r\n\r\n<p>How much do things cost on Oahu? Here are some typical prices (in USD):</p>\r\n\r\n<ul>\r\n	<li><strong>Airbnb</strong>&nbsp;&ndash; $100+/night for a one-bedroom or studio</li>\r\n	<li><strong>Hotel</strong>&nbsp;&ndash; $175&ndash;250/night for a mid-range boutique hotel</li>\r\n	<li><strong>Hostel dorm</strong>&nbsp;&ndash; $27</li>\r\n	<li><strong>Car rental</strong>&nbsp;&ndash; as low as $20/day, plus insurance</li>\r\n	<li><strong>Gas</strong>&nbsp;&ndash; $3&ndash;3.50/gallon</li>\r\n	<li><strong>Poke bowl</strong>&nbsp;&ndash; $12&ndash;15</li>\r\n	<li><strong>Takeout meal</strong>&nbsp;&ndash; $10&ndash;14</li>\r\n	<li><strong>Sit-down meal at a fancy restaurant</strong>&nbsp;(with drinks) &ndash; $50+</li>\r\n	<li><strong>Local lunch</strong>&nbsp;&ndash; $15</li>\r\n	<li><strong>McDonalds</strong>&nbsp;&ndash; $6 for a value meal</li>\r\n	<li><strong>Groceries</strong>&nbsp;&ndash; $75 for one person for a week</li>\r\n	<li><strong>Beer</strong>&nbsp;(at a restaurant) &ndash; $8&ndash;10 ($2&ndash;3 at the Japanese Walk!)</li>\r\n	<li><strong>Pi&ntilde;a colada</strong>&nbsp;&ndash; $10-15</li>\r\n	<li><strong>Coffee</strong>&nbsp;&ndash; $5</li>\r\n	<li><strong>Surfboard rental</strong>&nbsp;&ndash; $25/day</li>\r\n	<li><strong>Snorkel gear rental</strong>&nbsp;&ndash; $15/day</li>\r\n	<li><strong>Scuba dive prices</strong>&nbsp;&ndash; $125</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Budget Tips</h3>\r\n\r\n<p>Oahu is pretty expensive. Most everything has to be imported, so if it can&rsquo;t be grown nearby or caught in the ocean, expect to pay a lot. But it&rsquo;s not impossible to save money. Here are a few ways to cut your expenses:</p>\r\n\r\n<ul>\r\n	<li>Hike and enjoy the beaches. Nature is free!</li>\r\n	<li>Buy your own food from supermarkets so you can cook your own meals or have picnics. Sure, there are plenty of world-class restaurants here, but if you want to keep your food costs down, you should cook some meals. The poke at supermarkets is delicious anyway!</li>\r\n	<li>If you do eat out, hit the food trucks. Most cost around $10 USD for a meal &mdash; much cheaper than sit-down restaurants.</li>\r\n	<li>If you&rsquo;re going to buy alcohol, do so at Japanese markets, where you can find beer for only $2&ndash;3 USD (compared to $8 USD at bars).</li>\r\n	<li>Skip ride-sharing websites like Getaround or Turo (where you rent cars from private owners). They are usually cheaper than the big rental companies, but on Oahu, hosts charge you an added fee for dropping the car at the airport. I found the traditional car rental companies to be much cheaper, with rates as low as $20 USD a day.</li>\r\n	<li>Get your gas at Hele stations. They were consistently the cheapest on the island.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>***</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>While Oahu is often crowded and overly commercial, there were a lot of wonderful things to do and see. To me, the best parts were the food and the hiking &mdash; with so many hikes, you could spend weeks here. My favorite part of Oahu was the North Shore, so I recommend you spend a few days there at least. I certainly look forward to returning!</p>\r\n\r\n<h4>Book Your Trip to Hawaii: Logistical Tips and Tricks</h4>\r\n\r\n<p><strong>Book Your Flight</strong><br />\r\nFind a cheap flight by using&nbsp;<a href=\"http://www.anrdoezrs.net/click-3032045-12837948\" rel=\"noopener noreferrer\" target=\"_blank\">Skyscanner</a>&nbsp;or&nbsp;<a href=\"https://www.momondo.com/\">Momondo</a>. They are my two favorite search engines because they search websites and airlines around the globe so you always know no stone is left unturned.</p>\r\n\r\n<p><strong>Book Your Accommodation</strong><br />\r\nYou can book your hostel with&nbsp;<a href=\"https://prf.hn/click/camref:1101lHtj\" rel=\"noopener noreferrer\" target=\"_blank\">Hostelworld</a>. If you want to stay somewhere other than a hostel, use&nbsp;<a href=\"https://www.booking.com/index.html?aid=362916\" rel=\"noopener noreferrer\" target=\"_blank\">Booking.com</a>&nbsp;as they consistently return the cheapest rates for guesthouses and cheap hotels. My favorite places to stay in Oahu are:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FTHE-BEACH-waikiki-boutique-hostel-by-IH%2FHonolulu%2F41553\" rel=\"noopener noreferrer\" target=\"_blank\">The Beach</a></li>\r\n	<li><a href=\"https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FPolynesian-Hostel-Beach-Club-Waikiki%2FHonolulu%2F3264\" rel=\"noopener noreferrer\" target=\"_blank\">Polynesian Hostel Beach Club Waikiki</a></li>\r\n	<li><a href=\"https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FWaikiki-Beachside-Hostel%2FHonolulu%2F389\" rel=\"noopener noreferrer\" target=\"_blank\">Waikiki Beachside Hostel</a></li>\r\n</ul>\r\n\r\n<p><strong>Don&rsquo;t Forget Travel Insurance</strong><br />\r\nTravel insurance will protect you against illness, injury, theft, and cancellations. It&rsquo;s comprehensive protection in case anything goes wrong. I never go on a trip without it as I&rsquo;ve had to use it many times in the past. I&rsquo;ve been using&nbsp;<a href=\"https://www.worldnomads.com/lovedby/nomadic-matt?affiliate=nmts&amp;subId=brandlink&amp;affiliateTrackingId=0fe898ceef264503a88f74f4bbc7bb5b&amp;utm_source=nmts&amp;utm_medium=affiliate&amp;utm_campaign=Affiliate&amp;utm_content=brandlink\" rel=\"noopener noreferrer\" target=\"_blank\">World Nomads</a>&nbsp;for ten years. My favorite companies that offer the best service and value are:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.worldnomads.com/lovedby/nomadic-matt?affiliate=nmts&amp;subId=brandlink&amp;affiliateTrackingId=0fe898ceef264503a88f74f4bbc7bb5b&amp;utm_source=nmts&amp;utm_medium=affiliate&amp;utm_campaign=Affiliate&amp;utm_content=brandlink\" rel=\"noopener noreferrer\" target=\"_blank\">World Nomads</a>&nbsp;(for everyone below 70)</li>\r\n	<li><a href=\"https://www.insuremytrip.com/?linkid=GB841615\" rel=\"noopener noreferrer\" target=\"_blank\">Insure My Trip</a>&nbsp;(for those over 70)</li>\r\n	<li><a href=\"https://medjetassist.com/nomadicmatt\" rel=\"noopener noreferrer\" target=\"_blank\">Medjet</a>&nbsp;(for additional repatriation coverage)</li>\r\n</ul>\r\n\r\n<p><strong>Looking for the best companies to save money with?</strong><br />\r\nCheck out my&nbsp;<a href=\"https://www.nomadicmatt.com/travel-resources/\" rel=\"noopener noreferrer\" target=\"_blank\">resource page</a>&nbsp;for the best companies to use when you travel! I list all the ones I use to save money when I travel &ndash; and I think will help you too!</p>\r\n\r\n<p><strong>Need an affordable RV for your road trip?</strong><br />\r\n<a href=\"https://www.jdoqocy.com/click-3032045-13590660\" rel=\"noopener noreferrer\" target=\"_blank\">RVshare</a>&nbsp;lets you rent RVs from private individuals all around the country, saving you tons of money in the process. It&rsquo;s like Airbnb for RVs.</p>\r\n\r\n<p><strong>Want more information on Hawaii?</strong><br />\r\nBe sure to visit our&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/united-states-travel-guide/hawaii/\" rel=\"noopener noreferrer\" target=\"_blank\">robust destination guide on Hawaii</a>&nbsp;for even more planning tips!</p>\r\n\r\n<p>Thank You!!!!</p>','blog_banners/prague.jpg','Delhi, India',0,'2020-08-20 13:30:28.850183','2020-08-20 13:40:14.655319',2,4),(3,'I have update my travel hacking guide','i-have-update-my-travel-hacking-guide','<p><strong>Hey everybody,</strong></p>\r\n\r\n<p>Just a quick update today to let you know we just updated our amazing travel hacking guide!</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/travel-hacking-1-million-miles-per-year/\" rel=\"noopener noreferrer\" target=\"_blank\">Travel hacking</a>&nbsp;is the art of collecting frequent-flier points and miles to get free flights, hotels, tours, and more. It allows you to have those once-in-a-lifetime experiences: an over-water bungalow in&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/french-polynesia-travel-tips/\" rel=\"noopener noreferrer\" target=\"_blank\">Tahiti</a>, a first-class flight with a shower, an&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/six-of-the-greatest-safaris-in-africa/\" rel=\"noopener noreferrer\" target=\"_blank\">African safari</a>, a visit to the Gal&aacute;pagos Islands, or that dream trip to the French Riviera.</p>\r\n\r\n<p>Travel hacking is the single best way to save money on travel.</p>\r\n\r\n<p>I&rsquo;ve been travel hacking for over a decade &mdash; and it is the linchpin of all my money-saving advice. It helps me save tens of thousands of dollars on flights, accommodation, and transportation every year.</p>\r\n\r\n<p>I don&rsquo;t need to spend extra money, take special trips to earn more points, or get into debt. I do this with my normal, everyday spending.</p>\r\n\r\n<p>Sure, we can&rsquo;t travel right now but, when we can, having some points and miles for free travel will really help keep costs down!</p>\r\n\r\n<p>In this update, we:</p>\r\n\r\n<ol>\r\n	<li>Updated the rules on credit cards</li>\r\n	<li>Updated information for all our credit cards and resources</li>\r\n	<li>Added new tricks on how to redeem points and miles</li>\r\n	<li>Updated the section on using gift cards to generate free miles</li>\r\n	<li>Added more ways to manufacture spending to generate free miles (including ones not normally shared publicly)</li>\r\n	<li>Updated information on airline and hotel loyalty programs and their requirements</li>\r\n	<li>Updated everything else that needed to be updated!</li>\r\n</ol>','blog_banners/khajjar.jpg','Istanbul, Turkey',0,'2020-08-20 13:31:27.047782','2020-08-20 13:53:50.778787',9,3),(4,'12 THINGS I’D TELL ANY NEW TRAVELER','12-things-id-tell-any-new-traveler','<h3>1. Don&rsquo;t Be Scared</h3>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/how-to-overcome-your-fears/\" rel=\"noopener noreferrer\" target=\"_blank\">Fear is a powerful deterrent</a>. Taking the leap into the unknown is scary, but remember: you aren&rsquo;t the first person to travel the world. You aren&rsquo;t discovering new continents or exploring uncharted territories.</p>\r\n\r\n<p>There is a well-worn travel trail out&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/introducing-the-nomadic-network/\" rel=\"noopener noreferrer\" target=\"_blank\">there and people to help guide you along the way</a>. If millions of people can make their way around the world each year, you can too.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You&rsquo;re just as capable as anyone else. After all, you did the hardest part: deciding to go. Having the courage to make that decision is the hardest part.</p>\r\n\r\n<p>You&rsquo;ll make mistakes. Everyone does. But that&rsquo;s part of the experience.</p>\r\n\r\n<p>There will be lots of people out there to help you. You&rsquo;ll be shocked at just how helpful and kind people are. You&rsquo;ll make friends, you&rsquo;ll survive, and you&rsquo;ll be better for it.<br />\r\n&nbsp;</p>\r\n\r\n<h3>2. Don&rsquo;t Live by Your Guidebook</h3>\r\n\r\n<p>Guidebooks are useful for a general overview of a destination. They&rsquo;re a great way to learn the basics and get introduced to the cities and countries you plan to visit. But you&rsquo;ll never find the latest off-the-beaten-path attractions, bars, or restaurants in them.</p>\r\n\r\n<p>For the latest info (as well as insider tips), connect with locals. Use websites like&nbsp;<a href=\"http://meetup.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Meetup.com</a>&nbsp;or&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/how-to-crush-it-on-couchsurfing/\" rel=\"noopener noreferrer\" target=\"_blank\">Couchsurfing</a>&nbsp;to connect directly with local and expats so you can get suggesitons, advice, and tips to make the most of your trip.</p>\r\n\r\n<p>Additionally, ask other travelers you meet or the staff at your hotel/hostel. Visit the local tourist board as well. It&rsquo;s a wealth of information that often gets overlooked.</p>\r\n\r\n<p>In short, use a guidebook for the foundation of your plans but fill in the details with up-to-date info from locals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/my-current-list-of-favorite-blogs/\" rel=\"noopener noreferrer\" target=\"_blank\">You can also use travel blogs for planning tips</a>&nbsp;since they are updated more often than guidebooks.<br />\r\n&nbsp;</p>\r\n\r\n<h3>3. Travel Slow</h3>\r\n\r\n<p>This is something most new long-term travelers learn the hard way (myself included).</p>\r\n\r\n<p>I know it can be tempting to pack in as many cities and activities as possible. (This is especially true if you only have a few weeks of vacation.)</p>\r\n\r\n<p>But rushing from city to city every other day is just going to leave you exhausted and stressed out. You&rsquo;ll experience a whirlwind of activity, most of which will remain a blur when you look back on it. Sure, you&rsquo;ll have some great pictures for Instagram but is that really why you&rsquo;re traveling?</p>\r\n\r\n<p>Travel is about quality, not quantity. Don&rsquo;t worry about how much you see. Don&rsquo;t worry about trying to impress people with the number of countries you&rsquo;ve visited. Slow down and soak up your destinations. You&rsquo;ll learn more, enjoy it more, and have a much more memorable experience.</p>\r\n\r\n<p>When it comes to travel, less is more. (Plus, traveling slow helps reduce your transportation costs. It&rsquo;s cheaper to go slow!)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Pack Light</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When I went to&nbsp;<a href=\"https://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/\" rel=\"noopener noreferrer\" target=\"_blank\">Costa Rica</a>&nbsp;in 2003, I brought a bag filled with tons of stuff:&nbsp;hiking boots and pants, a fleece jacket, too much clothing, and my bodyweight in toiletries. And it all sat in my bag, mostly unused.</p>\r\n\r\n<p>I was packing for &ldquo;just in case&rdquo; and &ldquo;what if&rdquo; instead of the reality of my trip.</p>\r\n\r\n<p>While it can be tempting to bring more than you need &ldquo;just in case,&rdquo; remember this: you can buy things on the road. Socks, shampoo, jackets, new shoes &mdash; you can find it all aborad. There&rsquo;s no need to bring everything and the kitchen sink.</p>\r\n\r\n<p>So,&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/packing/\" rel=\"noopener noreferrer\" target=\"_blank\">pack light</a>. You&rsquo;ll have less to carry, saving you the hassle and stress of lugging a huge backpack around for weeks (or months) on end.</p>\r\n\r\n<p>Unless you are going somewhere cold, a bag around 40 liters will suffice. Bags around this size are easier to carry, don&rsquo;t get too unwieldy, and can fit on your flight as carry-on only if need be (a huge perk if you want to save yourself some headaches).</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-tips/choosing-the-right-backpack/\" rel=\"noopener noreferrer\" target=\"_blank\">Here&rsquo;s everything you need to know to help you find the perfect bag for your budget and your trip</a>.<br />\r\n&nbsp;</p>\r\n\r\n<h3>5. Get Travel Insurance</h3>\r\n\r\n<p>Whether you&rsquo;re a travel veteran or a brand new backpacker, don&rsquo;t leave home without making sure you&rsquo;re protected in case something goes wrong. As we learned during the COVID-19 pandemic, sudden emergencies can come out of nowhere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I&rsquo;ve had my luggage lost. I popped an eardrum in Thailand.&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/getting-stabbed-in-colombia/\" rel=\"noopener noreferrer\" target=\"_blank\">I was knifed in Colombia</a>.</p>\r\n\r\n<p>I&rsquo;ve had a friend break bones, need to be helicoptered out of the Amazon, or fly back due to a sudden death.</p>\r\n\r\n<p>Stuff happens.</p>\r\n\r\n<p>To ensure you&rsquo;re protected,&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/travel-insurance/\" rel=\"noopener noreferrer\" target=\"_blank\">buy travel insurance</a>.</p>\r\n\r\n<p>I never leave home without it because I know just how quickly things can go sideways.</p>\r\n\r\n<p>You never know what might happen. The road is filled with uncertainty. Make sure you&rsquo;re protected. It will also give you peace of mind and help you travel with confidence.</p>\r\n\r\n<p>Here are a few posts worth reading. I know it&rsquo;s not a fun or sexy topic, but it&rsquo;s an important one!</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.nomadicmatt.com/travel-blogs/is-travel-insurance-worth-it/\" rel=\"noopener noreferrer\" target=\"_blank\">Is Travel Insurance Worth it?</a></li>\r\n	<li><a href=\"https://www.nomadicmatt.com/travel-blogs/best-travel-insurance-companies/\" rel=\"noopener noreferrer\" target=\"_blank\">The 7 Best Travel Insurance Companies</a></li>\r\n	<li><a href=\"https://www.nomadicmatt.com/travel-blogs/world-nomads-review/\" rel=\"noopener noreferrer\" target=\"_blank\">World Nomads Insurance Review</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>6. Bring a Phone (and Get Local SIM Cards)</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Having a phone with data means you can look up directions on the fly, make reservations, and contact emergency services if something happens.</p>\r\n\r\n<p>Sure, there is free wifi pretty much everywhere these days so buying a local SIM card for data might seem like a waste of money (especially if you&rsquo;re on a really, really tight budget) but having that immediate access to roaming data can be a lifesaver.</p>\r\n\r\n<p>If you&rsquo;re from the US and traveling for less than 3 months,&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/t-mobile-for-travelers/\" rel=\"noopener noreferrer\" target=\"_blank\">T-Mobile has reliable data plans</a>. Google Fi is another great option too.</p>\r\n\r\n<p>Additionally, having a phone makes it easier to connect and stay in touch with travelers you meet.</p>\r\n\r\n<p>Simply put: having a phone is really helpful in this day and age.</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/travel-phone/\" rel=\"noopener noreferrer\" target=\"_blank\">Just don&rsquo;t stay glued to it all the time</a>.<br />\r\n&nbsp;</p>\r\n\r\n<h3>7. Go with the Flow</h3>\r\n\r\n<p>When every day is planned out and there are timetables to follow, you&rsquo;ll get stressed. Very stressed. You&rsquo;ll rush around and be unhappy if there are any glitches in your well-curated schedule.</p>\r\n\r\n<p>And there will be hiccups. And glitches. And all kinds of inconveniences, both major and minor. Life on the road doesn&rsquo;t always go as planned &mdash; which is both fun and frustrating.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When you plan too much, there&rsquo;s no room to experience the happy accidents of travel. There&rsquo;s no room for spontaneous choice, for incorporating new information and advice that you learn.</p>\r\n\r\n<p>When making your plan, make sure that it&rsquo;s flexible.&nbsp;<a href=\"https://www.nomadicmatt.com/travel-blogs/going-with-the-flow/\" rel=\"noopener noreferrer\" target=\"_blank\">Learn to go with the flow</a>. Plan one or two activities and let the rest of the day happen.</p>\r\n\r\n<p>It&rsquo;ll be a more enjoyable and less stressful experience. You&rsquo;ll be surprised by what happens.</p>\r\n\r\n<p>Be flexible. Let life unfold the way it should.<br />\r\n&nbsp;</p>\r\n\r\n<h3>8. Bring Some Extra Money</h3>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/the-ultimate-guide-to-traveling-when-you-have-no-money/\" rel=\"noopener noreferrer\" target=\"_blank\">Travel isn&rsquo;t as expensive as many people think</a>&nbsp;but you still need to create a budget that means your needs. The secret to long term travel is smart money management.</p>\r\n\r\n<p>However, always&nbsp;<em>overestimate</em>&nbsp;the amount you need. You never know what might come up on the road. After all, you didn&rsquo;t spend all that time saving every penny and staying home to skip those once in a lifetime activities?</p>\r\n\r\n<p>Maybe you want to try bungee jumping or you discover an amazing restaurant you can&rsquo;t pass up. Or maybe you meet some cool people and decide to scrap your plan altogether.</p>\r\n\r\n<p>No matter how well you plan, something can always come up that will throw your budget out of synch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>That&rsquo;s fine.</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/save-for-trip-advice/\" rel=\"noopener noreferrer\" target=\"_blank\">Just leave home with a little extra</a>.&nbsp;If you&rsquo;re planning says you&rsquo;ll need $2,000, bring $2,500. It will give you a buffer for emergencies and spontaneity.<br />\r\n&nbsp;</p>\r\n\r\n<h3>9. Remember Everyone is in the Same Boat</h3>\r\n\r\n<p>It takes courage to talk to strangers when you&rsquo;re new to travel, especially if you&rsquo;re an introvert like me. What do you say? Can you just invite people to join you? What if you end up alone?</p>\r\n\r\n<p>These are all questions I had when I first started traveling. The good news? Everyone is in the same boat. All around you are other solo travelers looking for friends. They want to meet new people too.</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/how-to-be-more-interesting-while-traveling/\" rel=\"noopener noreferrer\" target=\"_blank\">While there are a few tricks to learn to help you meet people</a>, it mostly just comes down to saying &ldquo;hello&rdquo; and taking that first step. Everything else will fall into place after that. You have nothing to lose and, in the process &mdash; this is how you&rsquo;ll get over your shyness, make new friends, and get better at conversation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>10. Be Adventurous</h3>\r\n\r\n<p>The only time we grow is when we&rsquo;re outside of our comfort zones. And travel is about growth. That doesn&rsquo;t mean you need to do dangerous things, but it does mean you need to push yourself beyond what you&rsquo;re used to.</p>\r\n\r\n<p>Hiking, sky diving, eating new foods, camping, rock climbing, hitchhiking &mdash; whatever taking a risk looks like to you is 100% ok. Everyone has different interests and tolerance levels. Push yours. It may be scary and uncomfortable at the time, but you&rsquo;ll be glad you did it later.</p>\r\n\r\n<p>Challenge yourself. Try new things. You&rsquo;ll walk away more self-confident.<br />\r\n&nbsp;</p>\r\n\r\n<h3>11. It&rsquo;s Ok to Change Your Mind</h3>\r\n\r\n<p>If you hate a city, leave and go to another one. If you don&rsquo;t enjoy the tour your on, cancel it early. And if you really love the place you&rsquo;re visiting, change your plans and stay longer.</p>\r\n\r\n<p>It&rsquo;s perfectly normal to change your mind on the road.</p>\r\n\r\n<p>Maybe that means extending your trip. Maybe that means going home early. There&rsquo;s nothing wrong with either choice.</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/going-home/\" rel=\"noopener noreferrer\" target=\"_blank\">Always remember you can go home if you aren&rsquo;t having fun</a>. You aren&rsquo;t stuck with your decision to travel or your decision to be in a specific place. You&rsquo;re the captain on your own ship. Never forget that!<br />\r\n&nbsp;</p>\r\n\r\n<h3>12. Remember, You&rsquo;re Not Alone</h3>\r\n\r\n<p>Wherever you go, there is a network of travelers who will be your friends, give you advice or tips, and help you out. They will guide you, point you in the right direction, and be your mentors.</p>\r\n\r\n<p>You aren&rsquo;t out there on your own.</p>\r\n\r\n<p>And you will be OK.</p>','blog_banners/attraction2.jpg','Mumbai, India',0,'2020-08-20 13:32:27.840571','2020-08-20 13:53:37.559677',3,5),(5,'CALIFORNIA ROAD TRIP: A 21-DAY SUGGESTED ITINERARY','california-road-trip-a-21-day-suggested-itinerary','<h2>CALIFORNIA</h2>\r\n\r\n<h4>California. It&rsquo;s the third-largest state in the country and home to over 40 million people and a range of environments and landscapes: dense forests in the north, rugged mountains in the east, majestic deserts in the south, world-class beaches on the coast, and the fabulous wine regions on the coast and central valley.</h4>\r\n\r\n<p>And it&rsquo;s perfect for road trips.</p>\r\n\r\n<p><a href=\"https://www.nomadicmatt.com/travel-blogs/california-road-trip-one-week-itinerary/\" rel=\"noopener noreferrer\" target=\"_blank\">I&rsquo;ve already outlined an awesome seven-day itinerary for Southern California</a>, but today I wanted to share a longer, more comprehensive route for anyone who has a few weeks to explore more of the state&rsquo;s cities and landscapes.</p>\r\n\r\n<p>Even with three weeks, you&rsquo;ll still miss a lot of great spots in this state (I mean you could spend months traveling California) but this suggested itinerary hits some of my favorite major &mdash; and not so major &mdash; places.<img alt=\"\" src=\"/media/blog_uploads/2020/08/20/tour38.jpg\" style=\"height:250px; width:400px\" /></p>','blog_banners/tour2.jpg','California, USA',1,'2020-08-20 13:34:26.545405','2020-08-20 13:54:09.211441',5,5),(6,'ESCAPING TO CHILLED OUT OAMARU','escaping-to-chilled-out-oamaru','<p>&ldquo;Oamaru? Why would you go on holiday to Oamaru?&rdquo;</p>\r\n\r\n<p>These are the words from my mate&nbsp;<a href=\"http://youngadventuress.com/\">Liz</a>&nbsp;after viewing my Snapchat story a couple weeks ago. They sum up just about everyone&rsquo;s feelings when I tell them&nbsp;<strong><em>how much I love Oamaru</em></strong><strong>.&nbsp;</strong>Even Kiwis struggle to understand why you&rsquo;d want to spend any time there, or for that matter where Oamaru is even at.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oamaru is a medium sized, coastal New Zealand town, about 1.5 hours from Dunedin and three hours from Christchurch. It&rsquo;s certainly not someplace that makes it on the usual top 5, or even top 10 list of places you need to see in New Zealand, but I reckon it should be right up there for those with a bit of a longer&nbsp;<a href=\"http://www.planitnz.com/planning-for-new-zealand/new-zealand-itineraries/\">New Zealand itinerary</a>&nbsp;to work with.&nbsp;</p>\r\n\r\n<p>I&rsquo;m not entirely sure how I ever got put onto Oamaru in the first place; I think a mate of a mate spent some time there at a really funky AirBNB, and raved about it. So, when my parents came to visit last April, I planned a road trip to get us out of Queenstown for a bit, and to give Maura some space around the house.</p>\r\n\r\n<p>As it turns out, it was a pretty poorly planned road trip &ndash; which is slightly troubling given my days spent helping other people plan New Zealand itineraries through Planit NZ. We bit off way more than we could chew; after a few too many beers at the Arrowtown Autumn Festival, we set off late the next morning for a drive from Queenstown to Hokitika. Day two saw us checking out the Hokitika Gorge (<a href=\"https://www.instagram.com/p/BExdu61hS0h/?taken-by=backpackingmatt\">which is epic</a>), before driving on past Arthurs Pass to the small blink if and you miss it settlement of Bealey. And from there, we drove all the way to Oamaru &ndash; and then back to Queenstown.</p>\r\n\r\n<p><strong>Oamaru Harbor</strong></p>\r\n\r\n<p>So on that fleeting visit where we spent more than 12 but less than 24 hours in Oamaru, I fell in love and knew I had to go back.</p>\r\n\r\n<p>Fast forward a couple weeks, and I planned a relaxed weekend away with the Missus to this often overlooked town on the East Coast of the South Island, and I remain convinced it&rsquo;s a bloody great little spot. And with that, here&rsquo;s&hellip;</p>','blog_banners/florence.jpg','Oamaru',0,'2020-08-20 13:35:14.822270','2020-08-20 13:52:43.760774',6,2),(7,'The Ultimate Berlin Guide: What to Do, See, and Eat!','the-ultimate-berlin-guide-what-to-do-see-and-eat','<p>I&rsquo;ve been living in Berlin for the past four years, on and off. So I&rsquo;m biased, yes, but once you come here and experience it for yourself, you&rsquo;ll surely also come to love the endless layers to this city &ndash; the fascinating history, the underbelly, the artistic vibes, and the cosmopolitan nature of it.</p>\r\n\r\n<p>I&rsquo;ve been living in Berlin for the past four years, on and off. So I&rsquo;m biased, yes, but once you come here and experience it for yourself, you&rsquo;ll surely also come to love the endless layers to this city &ndash; the fascinating history, the underbelly, the artistic vibes, and the cosmopolitan nature of it.</p>\r\n\r\n<h1>Things to do:</h1>\r\n\r\n<p>There&rsquo;s so much to do, &nbsp;like really so incredibly much, that chances are you&rsquo;ll have to make some tough decisions as far as what to see and what to miss. I tend to like to get off the tourist trail and to focus on things that are unique about a place. So with&nbsp;that in mind, the following are things that you can only do here:</p>','blog_banners/asia.jpg','Asia',0,'2020-08-20 13:36:20.917314','2020-08-20 13:52:15.525842',7,1),(8,'Skiing in Lech Zürs am Arlberg','skiing-in-lech-zurs-am-arlberg','<p>Skiing in Lech Z&uuml;rs am Arlberg is at the very heart of the Vorarlberg winter, and it is only right to take this rite of ski passage at least once, even as a beginner. Its mountainous altitudes of over 2000m are at the very heart of Austrian ski, with Arlberg being the home of the country&rsquo;s very first ski course over 100 years ago.</p>\r\n\r\n<p><strong>If you haven&rsquo;t tested the slopes here, in what now constitutes Austria&rsquo;s largest continuous ski area that connects with neighbouring Tyrol, then one might say you haven&rsquo;t skied in Austria at all.</strong></p>\r\n\r\n<p>While Vorarlberg and its six regions are dotted with a variety of ski areas, the Lech Z&uuml;rs am Arlberg region is&nbsp;<a href=\"https://www.lech-zuers.at/\" rel=\"noopener noreferrer\" target=\"_blank\">the place to start</a>, or aspire to, as the darling of them all.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.bordersofadventure.com/wp-content/uploads/2017/10/DSCF3814.jpg\" style=\"height:500px; width:750px\" title=\"Skiing in Lech Zürs am Arlberg\" /></p>\r\n\r\n<p>A Guide to Skiing in Lech Z&uuml;rs am Arlberg &ndash; The Darling Winter Slopes of Austria</p>\r\n\r\n<p>With pristine carved pistes, Lech is considered one of the finest ski resorts in the world and is a favourite with the Netherlands Royalty and Hollywood (<a href=\"https://www.youtube.com/watch?v=GTCKAy3buxo\" rel=\"noopener noreferrer\" target=\"_blank\">if you remember the ski scene from&nbsp;Bridget Jones: The Edge of Reason</a>). The Lech Z&uuml;rs am Arlberg ski area and its 200km of descents hold onto this title in one part due to its vast nature. Since 2013, it has been connected to the one in Warth-Schrocken with the addition of a huge cable car circuit, which means you can now ski across two major areas in one easily accessible resort.</p>','blog_banners/tour3.4.jpg','Austria',0,'2020-08-20 13:37:19.549043','2020-08-20 13:51:41.247822',2,5),(9,'SOME THOUGHTS ON KYRGYZSTAN','some-thoughts-on-kyrgyzstan','<h2>On Pre-Conceived Stereotypes</h2>\r\n\r\n<p>I think it&rsquo;s so hard to not think in stereotypes. &nbsp;And, I think the idea of stereotypes is so often correlated with racism. &nbsp;But, it&rsquo;s really not. &nbsp;I worried a lot during my stay in Kyrgyzstan that my pre-conceived ideas of the country made me a bit of a western-snob. &nbsp;However, when I came home to&nbsp;<a href=\"https://www.brendansadventures.com/travel-guides/north-america-travel-guides/canada-travel-guides/\">Canada</a>&nbsp;and thought of the stereotypes that others must imagine before coming to the country, I realized that it&rsquo;s totally normal to imagine the stereotypes of the country to be a reality. &nbsp;In fact, it&rsquo;s so often what our tourism boards promote. &nbsp;It&rsquo;s no wonder that people think Canadians ride in dog sleds, live in igloos, and have bears in their backyard; that&rsquo;s what we promote.</p>\r\n\r\n<p>I thought Kyrgyzstan was going to be wilder, more nomadic, and that everyone would be getting around on horseback. &nbsp;Essentially, I thought Kyrgyzstan was going to be&nbsp;<a href=\"https://www.brendansadventures.com/travel-guides/asia-travel-guides/far-east-asia/mongolia/\">Mongolia</a>. &nbsp;And while it was free and wild, it was totally different, more developed, and more urban than I expected. &nbsp;But, based on all the imagery of eagle hunters, nomads, and wild horses in the back country, it&rsquo;s easy to assume that&rsquo;s all there is in the country. But, there&rsquo;s so much more. And that&rsquo;s definitely not a bad thing.</p>','blog_banners/dubai3.jpg','KYRGYZSTAN',2,'2020-08-20 13:38:10.477392','2020-08-21 02:49:10.691891',8,2),(10,'Chasing my bucket list','chasing-my-bucket-list','<p>Hello my name is Aashish Agrawal and I am a travel photographer</p>','blog_banners/DSC_0088-01-01-01.jpeg','Varanasi',1,'2020-08-21 05:36:36.232658','2020-08-21 08:27:25.947818',10,4);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog_likes`
--

DROP TABLE IF EXISTS `blog_blog_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blog_likes_blog_id_user_id_2a6b7c83_uniq` (`blog_id`,`user_id`),
  KEY `blog_blog_likes_user_id_bc153396_fk_account_user_id` (`user_id`),
  CONSTRAINT `blog_blog_likes_blog_id_b7912000_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`),
  CONSTRAINT `blog_blog_likes_user_id_bc153396_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog_likes`
--

LOCK TABLES `blog_blog_likes` WRITE;
/*!40000 ALTER TABLE `blog_blog_likes` DISABLE KEYS */;
INSERT INTO `blog_blog_likes` VALUES (1,1,8),(3,2,2),(2,2,9),(4,3,4),(5,3,6),(6,3,7),(7,4,2),(8,4,4),(9,4,6),(12,5,2),(10,5,8),(11,5,9),(14,6,4),(13,6,9),(15,7,4),(16,7,5),(17,7,6),(18,7,7),(19,8,2),(20,8,4),(21,8,6),(22,8,7),(23,9,4),(24,9,5),(25,9,6),(26,9,7),(27,9,8),(28,9,9);
/*!40000 ALTER TABLE `blog_blog_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog_tags`
--

DROP TABLE IF EXISTS `blog_blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blog_tags_blog_id_tag_id_211c6be5_uniq` (`blog_id`,`tag_id`),
  KEY `blog_blog_tags_tag_id_36a3abc6_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_blog_tags_blog_id_e4cd5f6a_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`),
  CONSTRAINT `blog_blog_tags_tag_id_36a3abc6_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog_tags`
--

LOCK TABLES `blog_blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_blog_tags` DISABLE KEYS */;
INSERT INTO `blog_blog_tags` VALUES (1,1,1),(2,1,3),(3,2,4),(4,2,5),(5,2,6),(6,3,1),(7,3,3),(8,4,2),(9,4,3),(10,4,4),(11,4,5),(12,4,6),(13,5,2),(14,5,5),(15,5,6),(16,6,1),(17,6,2),(18,7,3),(19,7,4),(20,7,6),(21,8,4),(22,8,5),(23,8,6),(24,9,1),(25,9,3),(26,10,4);
/*!40000 ALTER TABLE `blog_blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogcomment`
--

DROP TABLE IF EXISTS `blog_blogcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id` (`blog_id`),
  KEY `blog_blogcomment_user_id_dc3b3111_fk_account_user_id` (`user_id`),
  CONSTRAINT `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`),
  CONSTRAINT `blog_blogcomment_user_id_dc3b3111_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcomment`
--

LOCK TABLES `blog_blogcomment` WRITE;
/*!40000 ALTER TABLE `blog_blogcomment` DISABLE KEYS */;
INSERT INTO `blog_blogcomment` VALUES (1,'Superb!!','2020-08-20 13:55:00.546126',4,3),(2,'NIce','2020-08-20 13:55:14.836642',1,2);
/*!40000 ALTER TABLE `blog_blogcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'Food & Drink','food-drink','category_banners/attraction3.jpg'),(2,'History','history','category_banners/attraction4.jpg'),(3,'Religious','religious','category_banners/religious.jpg'),(4,'Nature','nature','category_banners/Valley_of_Flowers.jpg'),(5,'Adventure','adventure','category_banners/adventure.jpg');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'Belief','belief','tag_banners/attraction6.jpg'),(2,'Action','action','tag_banners/attraction1.jpg'),(3,'Relax','relax','tag_banners/tour3.1.jpg'),(4,'Nature','nature','tag_banners/coorg.jpg'),(5,'Party','party','tag_banners/dance.jpg'),(6,'Fun','fun','tag_banners/Chail.jpg');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_userquery`
--

DROP TABLE IF EXISTS `dashboard_userquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_userquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_userquery`
--

LOCK TABLES `dashboard_userquery` WRITE;
/*!40000 ALTER TABLE `dashboard_userquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_userquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_account_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-08-20 11:04:24.414438','8','ertugrul-ghazi15283115',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(2,'2020-08-20 11:06:30.738285','4','mike-price06298381',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(3,'2020-08-20 11:07:10.709629','6','brad-pitt78934073',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(4,'2020-08-20 11:07:49.585388','7','siddharth-malhotra72338199',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(5,'2020-08-20 11:08:39.389747','5','leonardo-dicaprio33179718',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(6,'2020-08-20 11:09:20.515096','3','ranbir-kapoor77123271',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(7,'2020-08-20 11:09:55.582471','2','shahrukh-khan91639579',2,'[{\"changed\": {\"fields\": [\"Bio\", \"Followers\", \"Facebook link\", \"Instagram link\", \"Twitter link\"]}}]',7,1),(8,'2020-08-20 11:12:12.866945','1','Food & Drink',1,'[{\"added\": {}}]',9,1),(9,'2020-08-20 11:12:35.686063','2','History',1,'[{\"added\": {}}]',9,1),(10,'2020-08-20 11:12:58.382273','3','Religious',1,'[{\"added\": {}}]',9,1),(11,'2020-08-20 11:13:10.037333','4','Nature',1,'[{\"added\": {}}]',9,1),(12,'2020-08-20 11:13:26.242578','5','Adventure',1,'[{\"added\": {}}]',9,1),(13,'2020-08-20 11:14:07.662026','1','Belief',1,'[{\"added\": {}}]',10,1),(14,'2020-08-20 11:14:37.944196','2','Action',1,'[{\"added\": {}}]',10,1),(15,'2020-08-20 11:15:01.660891','3','Relax',1,'[{\"added\": {}}]',10,1),(16,'2020-08-20 11:15:18.440154','4','Nature',1,'[{\"added\": {}}]',10,1),(17,'2020-08-20 11:15:33.926860','5','Party',1,'[{\"added\": {}}]',10,1),(18,'2020-08-20 11:16:22.989821','6','Fun',1,'[{\"added\": {}}]',10,1),(19,'2020-08-20 13:30:28.867658','2','HOW TO ROAD TRIP AROUND OAHU',1,'[{\"added\": {}}]',8,1),(20,'2020-08-20 13:31:27.062156','3','I have update my travel hacking guide',1,'[{\"added\": {}}]',8,1),(21,'2020-08-20 13:32:27.872075','4','12 THINGS I’D TELL ANY NEW TRAVELER',1,'[{\"added\": {}}]',8,1),(22,'2020-08-20 13:34:26.554449','5','CALIFORNIA ROAD TRIP: A 21-DAY SUGGESTED ITINERARY',1,'[{\"added\": {}}]',8,1),(23,'2020-08-20 13:35:14.831390','6','ESCAPING TO CHILLED OUT OAMARU',1,'[{\"added\": {}}]',8,1),(24,'2020-08-20 13:36:20.929840','7','The Ultimate Berlin Guide: What to Do, See, and Eat!',1,'[{\"added\": {}}]',8,1),(25,'2020-08-20 13:37:19.562946','8','Skiing in Lech Zürs am Arlberg',1,'[{\"added\": {}}]',8,1),(26,'2020-08-20 13:38:10.491168','9','SOME THOUGHTS ON KYRGYZSTAN',1,'[{\"added\": {}}]',8,1),(27,'2020-08-20 13:40:14.676895','2','HOW TO ROAD TRIP AROUND OAHU',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(28,'2020-08-20 13:51:15.612965','9','SOME THOUGHTS ON KYRGYZSTAN',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(29,'2020-08-20 13:51:41.258566','8','Skiing in Lech Zürs am Arlberg',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(30,'2020-08-20 13:52:15.530394','7','The Ultimate Berlin Guide: What to Do, See, and Eat!',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(31,'2020-08-20 13:52:43.767115','6','ESCAPING TO CHILLED OUT OAMARU',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(32,'2020-08-20 13:53:04.074210','5','CALIFORNIA ROAD TRIP: A 21-DAY SUGGESTED ITINERARY',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(33,'2020-08-20 13:53:37.567318','4','12 THINGS I’D TELL ANY NEW TRAVELER',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(34,'2020-08-20 13:53:50.784088','3','I have update my travel hacking guide',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(35,'2020-08-20 13:55:00.557932','1','12 THINGS I’D TELL ANY NEW TRAVELER comments',1,'[{\"added\": {}}]',11,1),(36,'2020-08-20 13:55:14.838348','2','HOW TO SPEND 48 HOURS IN OSLO comments',1,'[{\"added\": {}}]',11,1),(37,'2020-08-20 13:56:04.974477','1','Do you prefer hot countries or cool countries when you go on holiday',1,'[{\"added\": {}}]',12,1),(38,'2020-08-20 13:56:33.206688','2','Do you think tourism will harm the earth?',1,'[{\"added\": {}}]',12,1),(39,'2020-08-20 13:56:59.185308','3','What are the most surreal places to visit?',1,'[{\"added\": {}}]',12,1),(40,'2020-08-20 13:57:31.181023','4','Why do you need to turn off all your electronic devices before an airplane takes off and lands?',1,'[{\"added\": {}}]',12,1),(41,'2020-08-20 13:57:58.439134','5','Do you have to be rich to travel the world?',1,'[{\"added\": {}}]',12,1),(42,'2020-08-20 13:58:30.703798','6','What are some common items savvy travelers bring with them (that less-savvy travelers don’t)?',1,'[{\"added\": {}}]',12,1),(43,'2020-08-20 13:59:02.503438','7','What’s it really like to be a travel writer?',1,'[{\"added\": {}}]',12,1),(44,'2020-08-20 13:59:32.338175','8','What are some things airline pilots won’t tell you?',1,'[{\"added\": {}}]',12,1),(45,'2020-08-20 13:59:59.627583','9','Where are the best places to travel alone?',1,'[{\"added\": {}}]',12,1),(46,'2020-08-20 14:00:27.990863','10','Who makes the best travel bags?',1,'[{\"added\": {}}]',12,1),(47,'2020-08-20 14:00:54.683991','11','Is India a good travel destination?',1,'[{\"added\": {}}]',12,1),(48,'2020-08-20 14:01:22.114214','12','How do you pack a suit?',1,'[{\"added\": {}}]',12,1),(49,'2020-08-20 14:01:50.230311','13','What’s the best way to sleep on a plane?',1,'[{\"added\": {}}]',12,1),(50,'2020-08-20 14:02:22.090766','1','Answer object (1)',1,'[{\"added\": {}}]',13,1),(51,'2020-08-20 14:02:47.718254','2','Answer object (2)',1,'[{\"added\": {}}]',13,1),(52,'2020-08-20 14:03:12.246048','3','Answer object (3)',1,'[{\"added\": {}}]',13,1),(53,'2020-08-20 14:03:33.682518','4','Answer object (4)',1,'[{\"added\": {}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'account','user'),(1,'admin','logentry'),(13,'ask_question','answer'),(12,'ask_question','question'),(3,'auth','group'),(2,'auth','permission'),(8,'blog','blog'),(11,'blog','blogcomment'),(9,'blog','category'),(10,'blog','tag'),(4,'contenttypes','contenttype'),(6,'dashboard','userquery'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-08-20 10:51:16.041297'),(2,'contenttypes','0002_remove_content_type_name','2020-08-20 10:51:16.168136'),(3,'auth','0001_initial','2020-08-20 10:51:32.096108'),(4,'auth','0002_alter_permission_name_max_length','2020-08-20 10:51:32.376237'),(5,'auth','0003_alter_user_email_max_length','2020-08-20 10:51:32.387045'),(6,'auth','0004_alter_user_username_opts','2020-08-20 10:51:32.396540'),(7,'auth','0005_alter_user_last_login_null','2020-08-20 10:51:32.405492'),(8,'auth','0006_require_contenttypes_0002','2020-08-20 10:51:32.411355'),(9,'auth','0007_alter_validators_add_error_messages','2020-08-20 10:51:32.420617'),(10,'auth','0008_alter_user_username_max_length','2020-08-20 10:51:32.430585'),(11,'auth','0009_alter_user_last_name_max_length','2020-08-20 10:51:32.441188'),(12,'auth','0010_alter_group_name_max_length','2020-08-20 10:51:32.493559'),(13,'auth','0011_update_proxy_permissions','2020-08-20 10:51:32.505362'),(14,'account','0001_initial','2020-08-20 10:52:13.370618'),(15,'account','0002_auto_20200818_1314','2020-08-20 10:52:13.879375'),(16,'admin','0001_initial','2020-08-20 10:52:27.693332'),(17,'admin','0002_logentry_remove_auto_add','2020-08-20 10:52:27.813661'),(18,'admin','0003_logentry_add_action_flag_choices','2020-08-20 10:52:27.826078'),(19,'ask_question','0001_initial','2020-08-20 10:52:41.455773'),(20,'ask_question','0002_auto_20200818_0627','2020-08-20 10:52:44.650358'),(21,'ask_question','0003_auto_20200818_0644','2020-08-20 10:52:44.755277'),(22,'ask_question','0004_question_views','2020-08-20 10:52:46.232274'),(23,'ask_question','0005_auto_20200818_1314','2020-08-20 10:52:49.933647'),(24,'ask_question','0006_auto_20200818_1317','2020-08-20 10:52:51.853595'),(25,'blog','0001_initial','2020-08-20 10:53:46.086924'),(26,'blog','0002_auto_20200814_1334','2020-08-20 10:53:46.729173'),(27,'dashboard','0001_initial','2020-08-20 10:53:57.112581'),(28,'sessions','0001_initial','2020-08-20 10:54:02.026005');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3h35d8o130yxnuden9lvfsaxeepd02ug','ODEzNGE1OTFjOWRhZDJhNTE0NGE5M2Y3YjNhOThlNjZlN2Y0MjNlNjp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGNhYTNkNzhjMjkxOTRkNzAyZWEzMDQ1OTE1YTE4NTExMDEwMGQ0MSJ9','2020-09-04 05:31:58.851829'),('hexusbvbe0ccs5nali96gabxo7q66kqh','ODEzNGE1OTFjOWRhZDJhNTE0NGE5M2Y3YjNhOThlNjZlN2Y0MjNlNjp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGNhYTNkNzhjMjkxOTRkNzAyZWEzMDQ1OTE1YTE4NTExMDEwMGQ0MSJ9','2020-09-04 05:22:06.340205'),('vocrill72tfsa4xzlteiu08n53im2k4t','ZTZlZTQ3YmJkMTI1YWFjMjc5OTk0ZWQ0YTBkODEwYjQwNDZkZjBjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYjcyYzA5MGY5ODJlNmU2YzYyNjQyOTZhOTdkZTMxOTRkNDMyZWYzIn0=','2020-09-03 11:02:25.933167');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21  8:33:56
