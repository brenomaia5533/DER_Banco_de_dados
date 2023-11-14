CREATE DATABASE  IF NOT EXISTS `consultas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `consultas`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: consultas
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id_consulta` int NOT NULL,
  `data_consulta` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `convenio` varchar(50) DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `id_paciente` int NOT NULL,
  `nome_paciente` varchar(100) DEFAULT NULL,
  `idade_paciente` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `nome_medico` varchar(100) DEFAULT NULL,
  `especialidade_medico` varchar(50) DEFAULT NULL,
  `crm_medico` varchar(20) DEFAULT NULL,
  `id_quarto` int DEFAULT NULL,
  `tipo_quarto` varchar(50) DEFAULT NULL,
  `valor_diaria_quarto` decimal(10,2) DEFAULT NULL,
  `id_consulta` int DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `valor_consulta` decimal(10,2) DEFAULT NULL,
  `convenio_consulta` varchar(50) DEFAULT NULL,
  `especialidade_consulta` varchar(50) DEFAULT NULL,
  `id_internacao` int DEFAULT NULL,
  `data_entrada_internacao` date DEFAULT NULL,
  `data_alta_internacao` date DEFAULT NULL,
  `prevista_alta_internacao` date DEFAULT NULL,
  `valor_diaria_quarto_internacao` decimal(10,2) DEFAULT NULL,
  `procedimento_internacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Fernando Amorim',25,1,'Médico 1','Gastroenterologia','CRM123',1,'Enfermaria',50.00,1,'2020-01-15',100.00,'Sim','Gastroenterologia',1,'2020-02-10','2020-02-20','2020-02-18',50.00,'Procedimento 1'),(2,'Natan de souza',30,2,'Médico 2','Pediatria','CRM456',2,'Apartamento',60.00,2,'2021-05-20',80.00,'Não','Pediatria',2,'2021-08-05','2021-08-15','2021-08-12',60.00,'Procedimento 2'),(5,'Eva',33,2,'Dr. Wilson','Ginecologia','CRM111',1,'Enfermaria',55.00,3,'2022-03-15',95.00,'Sim','Ginecologia',9,'2022-04-01','2022-04-10','2022-04-05',55.00,'Procedimento 7'),(6,'Frank',28,3,'Dr. White','Oftalmologia','CRM222',2,'Apartamento',80.00,5,'2021-07-05',100.00,'Não','Oftalmologia',10,'2021-07-20','2021-08-05','2021-08-01',80.00,'Procedimento 8'),(7,'Grace',45,1,'Dr. Taylor','Pneumologia','CRM333',4,'Apartamento',70.00,4,'2020-08-10',120.00,'Sim','Pneumologia',11,'2020-09-01','2020-09-15','2020-09-10',70.00,'Procedimento 9'),(8,'Harry',38,2,'Dr. Harris','Ortopedia','CRM444',3,'Enfermaria',50.00,1,'2022-06-20',90.00,'Sim','Ortopedia',12,'2022-07-05','2022-07-15','2022-07-10',50.00,'Procedimento 10'),(9,'Ivy',31,4,'Dr. Irving','Cardiologia','CRM555',1,'Apartamento',60.00,3,'2021-01-12',80.00,'Não','Cardiologia',13,'2021-02-01','2021-02-10','2021-02-05',60.00,'Procedimento 11'),(10,'Jack',26,3,'Dr. Jones','Dermatologia','CRM666',2,'Enfermaria',45.00,5,'2020-12-01',110.00,'Sim','Dermatologia',14,'2021-01-02','2021-01-10','2021-01-08',45.00,'Procedimento 12'),(11,'Karen',39,1,'Dr. King','Neurologia','CRM777',4,'Apartamento',65.00,2,'2020-04-15',95.00,'Não','Neurologia',15,'2020-05-01','2020-05-10','2020-05-05',65.00,'Procedimento 13'),(12,'Leo',29,2,'Dr. Lewis','Gastroenterologia','CRM888',1,'Enfermaria',55.00,4,'2022-02-10',100.00,'Sim','Gastroenterologia',16,'2022-03-01','2022-03-10','2022-03-05',55.00,'Procedimento 14'),(13,'Mia',32,3,'Dr. Miller','Oftalmologia','CRM999',3,'Enfermaria',60.00,5,'2021-09-10',85.00,'Não','Oftalmologia',17,'2021-09-25','2021-10-05','2021-10-01',60.00,'Procedimento 15'),(14,'Noah',36,1,'Dr. Nelson','Pneumologia','CRM101',2,'Apartamento',75.00,1,'2021-04-05',110.00,'Sim','Pneumologia',18,'2021-04-20','2021-05-05','2021-05-01',75.00,'Procedimento 16'),(15,'Alice',28,3,'Dr. Smith','Cardiologia','CRM789',4,'Apartamento',70.00,5,'2022-01-10',120.00,'Não','Cardiologia',7,'2022-02-15','2022-03-01','2022-02-25',70.00,'Procedimento 3'),(16,'Bob',35,1,'Dr. Johnson','Ortopedia','CRM234',2,'Enfermaria',50.00,3,'2021-08-20',90.00,'Sim','Ortopedia',6,'2021-09-01','2021-09-10','2021-09-05',50.00,'Procedimento 4'),(17,'Carol',22,2,'Dr. Davis','Dermatologia','CRM567',1,'Apartamento',60.00,4,'2020-05-12',80.00,'Sim','Dermatologia',5,'2020-06-01','2020-06-15','2020-06-10',60.00,'Procedimento 5'),(18,'David',40,4,'Dr. Brown','Neurologia','CRM890',3,'Enfermaria',45.00,2,'2021-11-05',110.00,'Não','Neurologia',8,'2022-01-02','2022-01-10','2022-01-08',45.00,'Procedimento 6');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacoes`
--

DROP TABLE IF EXISTS `internacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacoes` (
  `id_internacao` int NOT NULL,
  `data_entrada_internacao` date DEFAULT NULL,
  `data_alta_internacao` date DEFAULT NULL,
  `prevista_alta_internacao` date DEFAULT NULL,
  `valor_diaria_quarto` decimal(10,2) DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  `id_quarto` int DEFAULT NULL,
  `procedimento_intercao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_internacao`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_quarto` (`id_quarto`),
  CONSTRAINT `internacoes_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internacoes_ibfk_2` FOREIGN KEY (`id_quarto`) REFERENCES `quartos` (`id_quarto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacoes`
--

LOCK TABLES `internacoes` WRITE;
/*!40000 ALTER TABLE `internacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `internacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id_medico` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Médico 1','Gastroenterologia','CRM123'),(2,'Médico 2','Pediatria','CRM456');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Paciente 1',25),(2,'Paciente 2',30);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartos`
--

DROP TABLE IF EXISTS `quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quartos` (
  `id_quarto` int NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `valor_diaria` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_quarto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartos`
--

LOCK TABLES `quartos` WRITE;
/*!40000 ALTER TABLE `quartos` DISABLE KEYS */;
INSERT INTO `quartos` VALUES (1,'apartamentos',230.00),(2,'quartos_duplos',160.00),(3,'enfermaria',95.00);
/*!40000 ALTER TABLE `quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receituarios`
--

DROP TABLE IF EXISTS `receituarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receituarios` (
  `id_receituario` int NOT NULL,
  `id_consulta` int DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_receituario`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `receituarios_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receituarios`
--

LOCK TABLES `receituarios` WRITE;
/*!40000 ALTER TABLE `receituarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `receituarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 21:44:23
