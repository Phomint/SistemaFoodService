-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: db_sistemafs8
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categoria` (
  `id_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (1,'PIZZA','Cardápio'),(2,'LANCHE','Cardápio'),(3,'BATATA RECHEADA','Cardápio'),(4,'REFRIGERANTE','Bebida'),(5,'SUCOS','Bebida'),(7,'CERVEJA','Bebidas'),(8,'PIZZA DOCE','Cardapio');
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cidade`
--

DROP TABLE IF EXISTS `tbl_cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cidade` (
  `id_cidade` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(45) NOT NULL,
  `estado_cidade` char(2) NOT NULL,
  PRIMARY KEY (`id_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cidade`
--

LOCK TABLES `tbl_cidade` WRITE;
/*!40000 ALTER TABLE `tbl_cidade` DISABLE KEYS */;
INSERT INTO `tbl_cidade` VALUES (1,'CERQUEIRA CÉSAR','SP'),(2,'AVARÉ','SP'),(3,'SÃO PAULO','SP'),(5,'SOROCABA','SP'),(6,'BERNADINO DE CAMPOS','SP'),(7,'OURINHOS','SP'),(8,'PIRAJU','SP'),(9,'BOTUCATU','SP'),(10,'SANTOS','SP'),(11,'IPAUSSU','SP');
/*!40000 ALTER TABLE `tbl_cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `cpf_cliente` char(14) NOT NULL,
  `rg_cliente` varchar(15) NOT NULL,
  `end_cliente` varchar(45) NOT NULL,
  `end_n_cliente` varchar(6) NOT NULL,
  `end_b_cliente` varchar(15) NOT NULL,
  `cep_cliente` char(9) NOT NULL,
  `telefone_cliente` char(13) NOT NULL,
  `datanasc` date NOT NULL,
  `obs` varchar(100) NOT NULL,
  `tbl_cidade_id_cidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_tbl_cliente_tbl_cidade_idx` (`tbl_cidade_id_cidade`),
  CONSTRAINT `fk_tbl_cliente_tbl_cidade` FOREIGN KEY (`tbl_cidade_id_cidade`) REFERENCES `tbl_cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES (20,'PATRICK RODRIGUES DO AMARAL','445.280.938-39','41164167-0','RUA DAS JUSSARAS ','132','BELA VISTA','18760-000','(14)3714-3642','1996-06-24','',1),(21,'EDSON LIMA DO AMARAL','200.838.398-46','1321321515','RUA DAS JUSSARAS ','132','BELA VISTA','18760-000','(14)3714-3642','1973-01-07','',1),(22,'ALZIRA FARIA ','198.726.212-52','356798223 21','ROBERTO JUNIOR ','523 ','OQUIDAJARA LONS','18950-000','(34)5678-1023','1967-05-23','',11);
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contaspagar`
--

DROP TABLE IF EXISTS `tbl_contaspagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contaspagar` (
  `id_contaspagar` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataconta` varchar(45) NOT NULL,
  `valorconta` float NOT NULL,
  `statusconta` varchar(10) NOT NULL,
  `obsconta` varchar(45) NOT NULL,
  `tbl_fornecedor_id_fornecedor` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_contaspagar`),
  KEY `fk_tbl_contaspagar_tbl_fornecedor1_idx` (`tbl_fornecedor_id_fornecedor`),
  CONSTRAINT `fk_tbl_contaspagar_tbl_fornecedor1` FOREIGN KEY (`tbl_fornecedor_id_fornecedor`) REFERENCES `tbl_fornecedor` (`id_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contaspagar`
--

LOCK TABLES `tbl_contaspagar` WRITE;
/*!40000 ALTER TABLE `tbl_contaspagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contaspagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fornecedor`
--

DROP TABLE IF EXISTS `tbl_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fornecedor` (
  `id_fornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `razaosocial` varchar(45) NOT NULL,
  `nome_contato` varchar(45) NOT NULL,
  `tel_fornecedor` char(13) NOT NULL,
  `cnpjcpf_fornecedor` varchar(20) NOT NULL,
  `observacao` varchar(100) NOT NULL,
  `ie_fornecedor` varchar(20) NOT NULL,
  `end_fornecedor` varchar(45) NOT NULL,
  `end_n_fornecedor` varchar(6) NOT NULL,
  `end_b_fornecedor` varchar(15) NOT NULL,
  `tbl_cidade_id_cidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_fornecedor`),
  KEY `fk_tbl_fornecedor_tbl_cidade1_idx` (`tbl_cidade_id_cidade`),
  CONSTRAINT `fk_tbl_fornecedor_tbl_cidade1` FOREIGN KEY (`tbl_cidade_id_cidade`) REFERENCES `tbl_cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fornecedor`
--

LOCK TABLES `tbl_fornecedor` WRITE;
/*!40000 ALTER TABLE `tbl_fornecedor` DISABLE KEYS */;
INSERT INTO `tbl_fornecedor` VALUES (5,'ELIAS DIAS RAMOS & CIA LTDA','CLAUDETE','(14)3714-1611','15.651.661/0001-12','COMPRA DE FRIOS','132.151.632.133','RUA JUVENAL COINBRA','155','CENTRO',1);
/*!40000 ALTER TABLE `tbl_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_itens_venda`
--

DROP TABLE IF EXISTS `tbl_itens_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_itens_venda` (
  `id_item_venda` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tbl_vendas_id_vendas` int(11) NOT NULL,
  `tbl_produto_id_produto` int(10) unsigned NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_unitario` float DEFAULT NULL,
  `total_item` float DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_item_venda`),
  KEY `fk_tbl_vendas_has_tbl_produto_tbl_produto1_idx` (`tbl_produto_id_produto`),
  KEY `fk_tbl_vendas_has_tbl_produto_tbl_vendas1_idx` (`tbl_vendas_id_vendas`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_itens_venda`
--

LOCK TABLES `tbl_itens_venda` WRITE;
/*!40000 ALTER TABLE `tbl_itens_venda` DISABLE KEYS */;
INSERT INTO `tbl_itens_venda` VALUES (7,46,2,1,0,20,''),(8,46,5,1,0,24,''),(9,54,1,1,NULL,NULL,''),(10,54,2,1,0,20,''),(11,54,4,1,0,21,'');
/*!40000 ALTER TABLE `tbl_itens_venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `produto_insere` AFTER INSERT ON `tbl_itens_venda` FOR EACH ROW UPDATE tbl_produto
set `quantidade` = `quantidade` - new.quantidade where id_produto = new.tbl_produto_id_produto */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `produto_delete` AFTER DELETE ON `tbl_itens_venda` FOR EACH ROW UPDATE tbl_produto
set `quantidade` = `quantidade` + old.quantidade where id_produto = old.tbl_produto_id_produto */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbl_logs`
--

DROP TABLE IF EXISTS `tbl_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_logs` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acao_log` varchar(80) NOT NULL,
  `tbl_usuarios_id_usuarios` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `fk_tbl_logs_tbl_usuarios1_idx` (`tbl_usuarios_id_usuarios`),
  CONSTRAINT `fk_tbl_logs_tbl_usuarios1` FOREIGN KEY (`tbl_usuarios_id_usuarios`) REFERENCES `tbl_usuarios` (`id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logs`
--

LOCK TABLES `tbl_logs` WRITE;
/*!40000 ALTER TABLE `tbl_logs` DISABLE KEYS */;
INSERT INTO `tbl_logs` VALUES (1,'2015-06-02 15:08:53','Logou no Sistema',1),(2,'2015-06-02 15:11:11','Logou no Sistema',1),(3,'2015-06-02 15:12:07','Logou no Sistema',1),(4,'2015-06-02 15:40:21','Logou no Sistema',1),(5,'2015-06-02 22:24:27','Logou no Sistema',1),(6,'2015-06-02 22:25:18','Logou no Sistema',1),(7,'2015-06-02 22:29:50','Logou no Sistema',1),(8,'2015-06-02 22:30:39','Logou no Sistema',1),(9,'2015-06-02 22:37:46','Logou no Sistema',1),(10,'2015-06-02 22:40:46','Logou no Sistema',1),(11,'2015-06-02 22:42:41','Logou no Sistema',1),(12,'2015-06-02 22:45:24','Logou no Sistema',1),(13,'2015-06-02 22:48:26','Logou no Sistema',1),(14,'2015-06-02 22:49:47','Logou no Sistema',1),(15,'2015-06-02 22:50:31','Logou no Sistema',1),(16,'2015-06-02 22:57:28','Logou no Sistema',1),(17,'2015-06-02 22:59:56','Logou no Sistema',1),(18,'2015-06-02 23:01:32','Logou no Sistema',1),(19,'2015-06-02 23:09:14','Logou no Sistema',1),(20,'2015-06-02 23:11:31','Logou no Sistema',1),(21,'2015-06-02 23:12:01','Logou no Sistema',1),(22,'2015-06-02 23:14:07','Logou no Sistema',1),(23,'2015-06-02 23:38:04','Logou no Sistema',1),(24,'2015-06-02 23:41:04','Logou no Sistema',1),(25,'2015-06-03 18:47:19','Logou no Sistema',1),(26,'2015-06-03 19:08:04','Logou no Sistema',1),(27,'2015-06-03 19:10:00','Logou no Sistema',1),(28,'2015-06-04 00:27:35','Logou no Sistema',1),(29,'2015-06-04 01:24:39','Logou no Sistema',1),(30,'2015-06-04 14:19:43','Logou no Sistema',1),(31,'2015-06-04 14:23:24','Logou no Sistema',1),(32,'2015-06-04 14:24:29','Logou no Sistema',1),(33,'2015-06-04 14:25:11','Logou no Sistema',1),(34,'2015-06-05 14:16:35','Logou no Sistema',1),(35,'2015-06-07 14:58:43','Logou no Sistema',1),(36,'2015-06-07 14:59:35','Logou no Sistema',1),(37,'2015-06-07 15:06:53','Logou no Sistema',1),(38,'2015-06-07 15:14:04','Logou no Sistema',1),(39,'2015-06-08 15:06:16','Logou no Sistema',1),(40,'2015-06-08 15:11:48','Logou no Sistema',1),(41,'2015-06-08 15:13:21','Logou no Sistema',1),(42,'2015-06-08 15:14:45','Logou no Sistema',1),(43,'2015-06-08 15:16:47','Logou no Sistema',1),(44,'2015-06-08 15:18:06','Logou no Sistema',1),(45,'2015-06-08 15:31:07','Logou no Sistema',1),(46,'2015-06-08 15:31:38','Logou no Sistema',1),(47,'2015-06-08 15:35:23','Logou no Sistema',1),(48,'2015-06-08 15:38:09','Logou no Sistema',1),(49,'2015-06-08 15:40:21','Logou no Sistema',1),(50,'2015-06-08 15:42:52','Logou no Sistema',1),(51,'2015-06-08 15:46:10','Logou no Sistema',1),(52,'2015-06-08 15:47:20','Logou no Sistema',1),(53,'2015-06-08 15:52:37','Logou no Sistema',1),(54,'2015-06-08 22:25:20','Logou no Sistema',1),(55,'2015-06-08 22:27:38','Logou no Sistema',1),(56,'2015-06-08 22:30:21','Logou no Sistema',1),(57,'2015-06-08 22:31:02','Logou no Sistema',1),(58,'2015-06-08 23:06:22','Logou no Sistema',1),(59,'2015-06-08 23:11:05','Logou no Sistema',1),(60,'2015-06-08 23:35:58','Logou no Sistema',1),(61,'2015-06-08 23:36:47','Logou no Sistema',1),(62,'2015-06-08 23:45:30','Logou no Sistema',1);
/*!40000 ALTER TABLE `tbl_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mesa`
--

DROP TABLE IF EXISTS `tbl_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mesa` (
  `id_mesa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ocupada` varchar(5) DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mesa`
--

LOCK TABLES `tbl_mesa` WRITE;
/*!40000 ALTER TABLE `tbl_mesa` DISABLE KEYS */;
INSERT INTO `tbl_mesa` VALUES (1,'False',NULL),(2,'False',NULL),(3,'False',NULL),(4,'False',NULL),(5,'False',NULL),(6,'False',NULL),(7,'False',NULL),(8,'False',NULL),(9,'False',NULL),(10,'False',NULL),(11,'False',NULL),(12,'False',NULL),(13,'False',NULL),(14,'False',NULL),(15,'False',NULL);
/*!40000 ALTER TABLE `tbl_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produto` (
  `id_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(45) NOT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `cob_barra` varchar(45) DEFAULT NULL,
  `tbl_categoria_id_categoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `fk_tbl_produto_tbl_categoria1_idx` (`tbl_categoria_id_categoria`),
  CONSTRAINT `fk_tbl_produto_tbl_categoria1` FOREIGN KEY (`tbl_categoria_id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (1,'ALHO','True',94,20,NULL,1),(2,'ATUM','True',93,20,NULL,1),(3,'ATUM ESPECIAL','True',93,22,NULL,1),(4,'ALICHE','True',96,21,NULL,1),(5,'A MODA CASA','True',95,24,NULL,1),(6,'BAIANA','True',99,19,NULL,1),(7,'BACON','True',100,21,NULL,1),(8,'BACON ESPECIAL','True',100,23,NULL,1),(9,'BAURU','True',99,20,NULL,1),(10,'BRÓCOLIS','True',100,20,NULL,1),(11,'CALABRESA','True',100,18,NULL,1),(12,'CALABRESA ESPECIAL','True',100,20,NULL,1),(13,'CHAMPIGNON','True',100,20,NULL,1),(14,'CHAMPIGNON ESPECIAL','True',100,22,NULL,1),(15,'CATUPIRY','True',99,19,NULL,1),(16,'CARBONARA','True',100,22,NULL,1),(17,'CAIPIRA','True',100,23,NULL,1),(18,'CINCO QUEIJOS','True',100,23,NULL,1),(19,'DIPLOMATA','True',100,24,NULL,1),(20,'DOIS QUEIJOS','True',100,20,NULL,1),(21,'DO CHEFE','True',100,25,NULL,1),(22,'ESCAROLA','True',100,20,NULL,1),(23,'EXAGERADA','True',100,23,NULL,1),(24,'FRANCATU','True',100,22,NULL,1),(25,'GREGA','True',100,24,NULL,1),(26,'JARDINEIRA','True',100,24,NULL,1),(27,'LOMBO','True',100,20,NULL,1),(28,'LOMBO ESPECIAL','True',100,22,NULL,1),(29,'MARGUERITA','True',100,21,NULL,1),(30,'MILHO','True',99,19,NULL,1),(31,'MILHO ESPECIAL','True',100,21,NULL,1),(32,'MUSSARELA','True',100,19,NULL,1),(33,'MEXICANA','True',100,20,NULL,1),(34,'MADRI','True',100,22,NULL,1),(35,'NAPOLITANA','True',100,21,NULL,1),(36,'PAULISTANA','True',100,24,NULL,1),(37,'PALMITO','True',100,21,NULL,1),(38,'PALMITO ESPECIAL','True',100,23,NULL,1),(39,'PERUANA','True',100,23,NULL,1),(40,'PORTUGUESINHA','True',100,22,NULL,1),(41,'PORTUGUESA','True',99,24,NULL,1),(42,'PRESUNTO','True',100,21,NULL,1),(43,'PRIMUS','True',100,25,NULL,1),(44,'QUATRO QUEIJOS','True',100,22,NULL,1),(45,'RÚCULA','True',100,24,NULL,1),(46,'SEIS QUEIJOS','True',100,24,NULL,1),(47,'STROGONOFF DE CARNE','True',100,24,NULL,1),(48,'STROGONOFF DE FRANGO','True',100,24,NULL,1),(49,'SUIÇA','True',100,24,NULL,1),(50,'TROPICAL','True',100,23,NULL,1),(51,'TOSCANA','True',100,21,NULL,1),(52,'TOMATE SECO','True',100,23,NULL,1),(53,'TRÊS QUEIJOS','True',100,21,NULL,1),(54,'BANANA','True',99,20,NULL,8),(55,'BRIGADEIRO','True',99,20,NULL,8),(56,'CHOKITO','True',100,21,NULL,8),(57,'PRESTIGIO','True',100,21,NULL,8),(58,'SENSAÇÃO','True',100,21,NULL,8),(59,'ATUM','True',100,8.5,NULL,3),(60,'À MODA DA CASA','True',100,9.5,NULL,3),(61,'BAURU','True',100,8,NULL,3),(62,'CALABRESA','True',100,7.5,NULL,3),(63,'CATUPIRY','True',100,7.5,NULL,3),(64,'DOIS QUEIJOS','True',100,7.5,NULL,3),(65,'TRÊS QUEIJOS','True',100,8,NULL,3),(66,'QUATRO QUEIJOS','True',100,8.5,NULL,3),(67,'CINCO QUEIJOS','True',100,9,NULL,3),(68,'ESCAROLA','True',100,7.5,NULL,3),(69,'FRANGO','True',100,8.5,NULL,3),(70,'FRANGO COM MILHO','True',100,9,NULL,3),(71,'LOMBO',NULL,100,8.5,NULL,3),(72,'MILHO','True',100,7.5,NULL,3),(73,'PALMITO','True',100,7.5,NULL,3),(74,'STROGONOFF DE CARNE','True',100,8.5,NULL,3),(75,'STROGONOFF DE CARNE','True',100,8.5,NULL,3),(76,'TOMATE SECO','True',100,9.5,NULL,3),(77,'BACON','True',100,8.5,NULL,3),(78,'PORTUGUESA','True',100,9.5,NULL,3);
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `id_usuarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_usuario` varchar(45) NOT NULL,
  `senha_usuario` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'Admin','123','Administrador',''),(4,'patrickra','123','Gerente','Patrick'),(5,'FUNCIO','123','Funcionário','FUNCIONARIO DO ANO');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vendas`
--

DROP TABLE IF EXISTS `tbl_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_vendas` (
  `id_vendas` int(11) NOT NULL AUTO_INCREMENT,
  `data_venda` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_item_produto` float NOT NULL,
  `desconto` float DEFAULT NULL,
  `porcentagem_garcon` float DEFAULT NULL,
  `total_final` float DEFAULT NULL,
  `ativo` varchar(5) DEFAULT 'True',
  `tbl_cliente_id_cliente` int(10) unsigned DEFAULT NULL,
  `tbl_mesa_id_mesa` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_vendas`),
  KEY `fk_tbl_vendas_tbl_cliente1_idx` (`tbl_cliente_id_cliente`),
  KEY `fk_tbl_vendas_tbl_mesa1_idx` (`tbl_mesa_id_mesa`),
  CONSTRAINT `fk_tbl_vendas_tbl_cliente1` FOREIGN KEY (`tbl_cliente_id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_vendas_tbl_mesa1` FOREIGN KEY (`tbl_mesa_id_mesa`) REFERENCES `tbl_mesa` (`id_mesa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vendas`
--

LOCK TABLES `tbl_vendas` WRITE;
/*!40000 ALTER TABLE `tbl_vendas` DISABLE KEYS */;
INSERT INTO `tbl_vendas` VALUES (33,'2015-06-08 15:11:53',0,NULL,NULL,NULL,'False',NULL,1),(34,'2015-06-08 15:13:24',0,NULL,NULL,NULL,'False',NULL,1),(35,'2015-06-08 15:14:51',0,NULL,NULL,NULL,'False',NULL,1),(36,'2015-06-08 15:16:50',0,NULL,NULL,NULL,'False',NULL,1),(37,'2015-06-08 15:18:10',0,NULL,NULL,NULL,'False',NULL,1),(38,'2015-06-08 15:31:10',0,NULL,NULL,NULL,'False',NULL,1),(45,'2015-06-08 15:46:33',0,NULL,NULL,NULL,'False',NULL,3),(46,'2015-06-08 15:47:34',0,NULL,NULL,44,'False',NULL,1),(47,'2015-06-08 15:47:48',0,NULL,NULL,NULL,'False',NULL,1),(49,'2015-06-08 22:25:36',0,NULL,NULL,NULL,'False',NULL,3),(50,'2015-06-08 22:27:42',0,NULL,NULL,NULL,'False',NULL,1),(52,'2015-06-08 22:31:16',0,NULL,NULL,NULL,'False',NULL,2),(54,'2015-06-08 23:46:22',21,0,NULL,21,'False',NULL,3);
/*!40000 ALTER TABLE `tbl_vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-08 20:46:37
