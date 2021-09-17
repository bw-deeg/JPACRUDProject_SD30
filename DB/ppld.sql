-- MySQL dump 10.13  Distrib 5.7.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: ppld
-- ------------------------------------------------------
-- Server version	5.7.26

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

use ppld;

--
-- Table structure for table `space_alien`
--

DROP TABLE IF EXISTS `space_alien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `space_alien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `land_of_origin` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `characteristic` varchar(300) DEFAULT NULL,
  `space_ship_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alien_ship` (`space_ship_id`),
  CONSTRAINT `fk_alien_ship` FOREIGN KEY (`space_ship_id`) REFERENCES `space_ship` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space_alien`
--

LOCK TABLES `space_alien` WRITE;
/*!40000 ALTER TABLE `space_alien` DISABLE KEYS */;
INSERT INTO `space_alien` VALUES (4,'Vulcan','Vulcan','Vulcan','https://hips.hearstapps.com/digitalspyuk.cdnds.net/17/05/1486145292-mr-spock.jpg?resize=480:*','The needs of the many outweigh the needs of the few.',NULL),(5,'Cardasian','Cardasian','Cardassia Prime','https://upload.wikimedia.org/wikipedia/en/thumb/3/38/Guldukat.jpg/220px-Guldukat.jpg','Giving me a name tag that read \'Elim Garak, former Cardassian oppressor\' was hardly polite',NULL),(6,'Kardashian','Kardasian','Los Angeles','https://pbs.twimg.com/media/C9LA2dwUQAALoQb.jpg','Does this money make my butt look big?',NULL),(7,'Romulan','Romulan','Romulus','https://wiki.fed-space.com/images/thumb/d/de/RomulanCommander2266.jpg/300px-RomulanCommander2266.jpg','Humans have a way of showing up when you least expect them.',NULL),(8,'Klingon','Klingon','Qo\'noS (pronounced Kronos)','https://i2-prod.mirror.co.uk/incoming/article13304968.ece/ALTERNATES/s615/0_Star-Trek-Klingon-Worf-with-batleth-blade.jpg','Your mother has a smooth forehead!',NULL),(9,'Betazoid','Betazoid','Betazed','https://api.mbtidatabase.com/profile_images/10181.png','I am Lwaxana Troi, Daughter of the Fifth House of Betazed, Holder of the Sacred Chalice of Rixx, Heir to the Holy Rings of Betazed. Who are you?',NULL),(10,'Betazoid','Betazoid','Betazed','http://i972.photobucket.com/albums/ae209/MegiddoWiki/BetazoidAppearance.jpg','The Sacred Chalice of Rixx is an old clay pot with mold growing inside it.',NULL),(11,'Xenomorph','Xenomorph','Proteus','https://s3-us-west-2.amazonaws.com/flx-editorial-wordpress/wp-content/uploads/2017/05/18163721/Alien-Covenant-CC.jpg','Sizzzzzzzzzzzle',NULL),(12,'Borg','Borg','Delta Quadrant','https://upload.wikimedia.org/wikipedia/en/e/ea/I_Borg_Star_Trek_TNG_HD.jpg','Resistance is futile.',NULL),(13,'Human','English','Earth','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/star-trek-next-generation-jean-luc-picard-patrick-stewart-1551771928.jpg?crop=0.751xw:1xh;center,top&resize=480:*','Tea, Earl Grey, hot!',NULL),(14,'Soong-Type Android','English','Omicron Theta','http://www.treknews.net/wp-content/uploads/2017/04/star-trek-tng-data-spot-750x480.jpg','In the event of a water landing, I have been designed to serve as a flotation device.',NULL);
/*!40000 ALTER TABLE `space_alien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `space_ship`
--

DROP TABLE IF EXISTS `space_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `space_ship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space_ship`
--

LOCK TABLES `space_ship` WRITE;
/*!40000 ALTER TABLE `space_ship` DISABLE KEYS */;
/*!40000 ALTER TABLE `space_ship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-03 20:57:30
