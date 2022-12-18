-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: examen
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

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
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignatura` (
  `id_asignatura` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `creditos` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_asignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Matematica',2,'44'),(2,'Ingles',3,'2'),(3,'Etica',1,'8');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decano`
--

DROP TABLE IF EXISTS `decano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decano` (
  `id_decano` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_decano`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decano`
--

LOCK TABLES `decano` WRITE;
/*!40000 ALTER TABLE `decano` DISABLE KEYS */;
INSERT INTO `decano` VALUES (1,'Juan',65786983,'0912345Y'),(2,'Pepe',36768768,'8765445R');
/*!40000 ALTER TABLE `decano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictar`
--

DROP TABLE IF EXISTS `dictar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictar` (
  `id_docente_aux` int(11) DEFAULT NULL,
  `id_asignatura_aux` int(11) DEFAULT NULL,
  KEY `id_docente_aux` (`id_docente_aux`),
  KEY `id_asignatura_aux` (`id_asignatura_aux`),
  CONSTRAINT `dictar_ibfk_1` FOREIGN KEY (`id_docente_aux`) REFERENCES `docente` (`id_docente`),
  CONSTRAINT `dictar_ibfk_2` FOREIGN KEY (`id_asignatura_aux`) REFERENCES `asignatura` (`id_asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictar`
--

LOCK TABLES `dictar` WRITE;
/*!40000 ALTER TABLE `dictar` DISABLE KEYS */;
INSERT INTO `dictar` VALUES (2,1),(3,2),(1,3);
/*!40000 ALTER TABLE `dictar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `id_facultad_aux` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Sara',65786983,'0942345Y',2),(2,'Sandra',364468768,'87986445R',3),(3,'Antonio',2173281,'111111U',1),(4,NULL,NULL,NULL,2),(5,NULL,NULL,NULL,3),(6,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `nrol` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Santiago','Labastida 1','111'),(2,'Jose','Labastida 2','2222'),(3,'Guillermo','Labastida 3','3333'),(4,'Fresh','Labastida 4','444'),(5,'Francisco','Labastida 5','555'),(6,'Alejandra','Labastida 6','666'),(7,'Orion','Labastida 7','777');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultad` (
  `id_facultad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `ubicacion` varchar(15) DEFAULT NULL,
  `id_decano_aux` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_facultad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` VALUES (1,'Medicina',2,'Izquierda',1),(2,'Periodismo',3,'Centro',2),(3,'Arquitectu',1,'Derecha',2);
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscribir`
--

DROP TABLE IF EXISTS `inscribir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscribir` (
  `id_estudiante_aux` int(11) DEFAULT NULL,
  `id_asignatura_aux` int(11) DEFAULT NULL,
  KEY `id_estudiante_aux` (`id_estudiante_aux`),
  KEY `id_asignatura_aux` (`id_asignatura_aux`),
  CONSTRAINT `inscribir_ibfk_1` FOREIGN KEY (`id_estudiante_aux`) REFERENCES `estudiante` (`id_estudiante`),
  CONSTRAINT `inscribir_ibfk_2` FOREIGN KEY (`id_asignatura_aux`) REFERENCES `asignatura` (`id_asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscribir`
--

LOCK TABLES `inscribir` WRITE;
/*!40000 ALTER TABLE `inscribir` DISABLE KEYS */;
INSERT INTO `inscribir` VALUES (1,2),(2,2),(3,1),(4,1),(5,3),(6,3);
/*!40000 ALTER TABLE `inscribir` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 18:42:57
