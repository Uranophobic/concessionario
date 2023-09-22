CREATE DATABASE  IF NOT EXISTS `concessionario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `concessionario`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: concessionario
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `acquirente`
--

DROP TABLE IF EXISTS `acquirente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquirente` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `età` varchar(45) NOT NULL,
  `indirizzo` varchar(45) NOT NULL,
  `patente` varchar(45) NOT NULL,
  `anno_patente` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquirente`
--

LOCK TABLES `acquirente` WRITE;
/*!40000 ALTER TABLE `acquirente` DISABLE KEYS */;
INSERT INTO `acquirente` VALUES ('alessia@gmail.com','a','Alessia','Crispo','27','Via Caserta','B','2015'),('marco@gmail.com','marco456','Marco','Rossi','28','Via Roma','B ','2014'),('roberta@gmail.com','rb789','Roberta','Verdi','18','Via delle rose','B','2023');
/*!40000 ALTER TABLE `acquirente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amministratore`
--

DROP TABLE IF EXISTS `amministratore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amministratore` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `ruolo` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amministratore`
--

LOCK TABLES `amministratore` WRITE;
/*!40000 ALTER TABLE `amministratore` DISABLE KEYS */;
INSERT INTO `amministratore` VALUES ('admin@gmail.com','admin','admin','admin','admin'),('amm1@gmail.com','amm1','amm1','amm1','amministratore delegato');
/*!40000 ALTER TABLE `amministratore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id_feedback` int NOT NULL AUTO_INCREMENT,
  `testo` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `id_auto` int NOT NULL,
  `email_utente` varchar(45) NOT NULL,
  `valutazione` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_feedback`),
  KEY `email_acq_idx` (`email_utente`),
  KEY `id macchina_idx` (`id_auto`),
  CONSTRAINT `email_ut` FOREIGN KEY (`email_utente`) REFERENCES `acquirente` (`email`),
  CONSTRAINT `id macchina` FOREIGN KEY (`id_auto`) REFERENCES `macchina` (`id_auto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Mi sono trovato molto bene ad acquistare con ','2023-09-20',2,'marco@gmail.com','5');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestione_richiesta`
--

DROP TABLE IF EXISTS `gestione_richiesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestione_richiesta` (
  `idgestione_richiesta` int NOT NULL AUTO_INCREMENT,
  `id_amministratore` varchar(45) NOT NULL,
  `id_richiesta` int NOT NULL,
  `chiusa` tinyint NOT NULL DEFAULT '0' COMMENT '0 = aperto, 1 = chiuso',
  PRIMARY KEY (`idgestione_richiesta`),
  KEY `id_amm_idx` (`id_amministratore`),
  KEY `id richiesta_idx` (`id_richiesta`),
  CONSTRAINT `id richiesta` FOREIGN KEY (`id_richiesta`) REFERENCES `richiesta` (`id_richiesta`),
  CONSTRAINT `id_amm` FOREIGN KEY (`id_amministratore`) REFERENCES `amministratore` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestione_richiesta`
--

LOCK TABLES `gestione_richiesta` WRITE;
/*!40000 ALTER TABLE `gestione_richiesta` DISABLE KEYS */;
INSERT INTO `gestione_richiesta` VALUES (1,'admin@gmail.com',1,0),(2,'amm1@gmail.com',2,1);
/*!40000 ALTER TABLE `gestione_richiesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestione_ticket`
--

DROP TABLE IF EXISTS `gestione_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestione_ticket` (
  `idgestione_ticket` int NOT NULL AUTO_INCREMENT,
  `id_amministratore` varchar(45) NOT NULL,
  `id_ticket` int NOT NULL,
  `chiuso` tinyint NOT NULL DEFAULT '0' COMMENT '0 = aperto, 1 = chiuso',
  PRIMARY KEY (`idgestione_ticket`),
  KEY `id amministrat_idx` (`id_amministratore`),
  KEY `id tick_idx` (`id_ticket`),
  CONSTRAINT `id amministrat` FOREIGN KEY (`id_amministratore`) REFERENCES `amministratore` (`email`),
  CONSTRAINT `id tick` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestione_ticket`
--

LOCK TABLES `gestione_ticket` WRITE;
/*!40000 ALTER TABLE `gestione_ticket` DISABLE KEYS */;
INSERT INTO `gestione_ticket` VALUES (1,'admin@gmail.com',1,1),(2,'admin@gmail.com',2,1);
/*!40000 ALTER TABLE `gestione_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `macchina`
--

DROP TABLE IF EXISTS `macchina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `macchina` (
  `id_auto` int NOT NULL AUTO_INCREMENT,
  `modello` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `anno_prod` varchar(45) NOT NULL,
  `cilindrata` int NOT NULL,
  `carburante` varchar(45) NOT NULL,
  `colore` varchar(45) NOT NULL,
  `stato_veicolo` varchar(45) NOT NULL,
  `prezzo` double NOT NULL,
  `kilometraggio` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `posti` int NOT NULL,
  `tipo_cambio` varchar(45) NOT NULL,
  `kW` int NOT NULL,
  `descrizione` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_auto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `macchina`
--

LOCK TABLES `macchina` WRITE;
/*!40000 ALTER TABLE `macchina` DISABLE KEYS */;
INSERT INTO `macchina` VALUES (1,'Mazda RX4','mazda','2018',1200,'diesel','nero','km0',10,99,'berlina',4,'manuale',60,''),(2,'Mazda RX4 Wag','mazda','2020',1500,'benzina','bianco','km0',22.2,85,'berlina',4,'automatico',71,''),(3,'Hornet 4 Drive','hornet','2008',2500,'benzina','grigio','km0',19.44,20,'berlina',4,'automatico',121,''),(4,'Hornet Sportabout','hornet','2005',1500,'benzina','nero','km0',17.02,35,'berlina',4,'automatico',71,''),(5,'Duster 360','dacia','2007',2000,'benzina','nero','km0',16.24,75,'suv',4,'automatico',85,''),(6,'Merc 240D','mercedes','2002',1200,'diesel','bianco','nuovo',20,0,'coupe',2,'manuale',60,''),(7,'Merc 230','mercedes','2000',2000,'diesel','bianco','nuovo',22.9,0,'coupe',2,'manuale',85,''),(8,'Merc 280','mercedes','2005',1500,'diesel','bianco','nuovo',18.3,0,'coupe',4,'manuale',71,''),(9,'Merc 280C','mercedes','2004',1200,'diesel','bianco','nuovo',18.9,0,'coupe',4,'manuale',60,''),(10,'Merc 450SE','mercedes','2012',1500,'diesel','bianco','nuovo',17.4,0,'suv',2,'manuale',71,''),(11,'Merc 450SL','mercedes','2013',1200,'benzina','bianco','nuovo',17.6,0,'sportiva',4,'manuale',60,''),(12,'Merc 450SLC','mercedes','2018',2000,'benzina','bianco','nuovo',18,0,'sportiva',4,'manuale',85,''),(13,'Fiat panda','fiat','2016',1200,'benzina','nero','usato',15,5,'berlina',4,'manuale',60,''),(14,'Toyota Corolla','toyota','2005',2000,'benzina','grigio','usato',19.9,10,'berlina',1,'automatico',85,''),(15,'Toyota Corona','toyota','2006',1200,'benzina','grigio','usato',20.2,15,'berlina',1,'automatico',60,''),(16,'Dodge Challenger','dodge','2015',1500,'benzina','grigio','usato',25,35,'suv',2,'automatico',71,''),(17,'Porsche 914-2','porsche','2006',2500,'benzina','nero','km0',135,10,'sportiva',2,'automatico',121,''),(18,'Lotus Europa','lotus','2012',2500,'benzina','grigio','usato',75,10,'sportiva',2,'manuale',121,''),(19,'Ferrari Dino','ferrari','2005',2500,'diesel','rossa','usato',230,20,'sportiva',6,'manuale',121,''),(20,'Maserati Bora','maserati','2006',2500,'diesel','nero','nuovo',130,30,'sportiva',8,'manuale',121,''),(21,'Volvo 142E','volvo','2012',1200,'benzina','bianco','nuovo',18.6,0,'coupe',2,'manuale',60,'');
/*!40000 ALTER TABLE `macchina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richiesta`
--

DROP TABLE IF EXISTS `richiesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `richiesta` (
  `id_richiesta` int NOT NULL AUTO_INCREMENT,
  `tipo_richiesta` varchar(45) NOT NULL COMMENT 'noleggio / acquisto',
  `data` date NOT NULL,
  `messaggio` varchar(45) NOT NULL,
  `status` enum('rifiutato','in attesa','accettato') NOT NULL,
  `email_utente` varchar(45) NOT NULL,
  `id_auto` int NOT NULL,
  PRIMARY KEY (`id_richiesta`),
  KEY `email_acq_idx` (`email_utente`),
  KEY `id macc_idx` (`id_auto`),
  CONSTRAINT `email_acq` FOREIGN KEY (`email_utente`) REFERENCES `acquirente` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richiesta`
--

LOCK TABLES `richiesta` WRITE;
/*!40000 ALTER TABLE `richiesta` DISABLE KEYS */;
INSERT INTO `richiesta` VALUES (1,'Acquisto','2023-09-20','prova','in attesa','alessia@gmail.com',1),(2,'Noleggio','2023-08-20','prova 2','accettato','marco@gmail.com',2),(3,'Acquisto','2023-08-20','asasssa','accettato','alessia@gmail.com',3),(4,'Acquisto','2023-08-20','sdsd','accettato','alessia@gmail.com',4),(5,'Acquisto','2023-08-20','sddsds','accettato','alessia@gmail.com',5);
/*!40000 ALTER TABLE `richiesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id_ticket` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(45) NOT NULL,
  `messaggio` varchar(45) NOT NULL,
  `risposta` varchar(45) NOT NULL,
  `email_utente` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `email_utente_idx` (`email_utente`),
  CONSTRAINT `email_utente` FOREIGN KEY (`email_utente`) REFERENCES `acquirente` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'Aiuto Email','Posso avere un email a cui contattarvi?','No :(','alessia@gmail.com'),(2,'Elicottero','E\' possibile essere raggiunto da un elicotter','Siamo in fase di valutazione','roberta@gmail.com');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'concessionario'
--

--
-- Dumping routines for database 'concessionario'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-22 16:04:59
