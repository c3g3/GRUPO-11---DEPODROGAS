-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: deposito
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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcat` varchar(2) NOT NULL,
  `categoria` varchar(25) NOT NULL,
  `impuesto` int(2) DEFAULT NULL,
  PRIMARY KEY (`idcat`),
  UNIQUE KEY `idcat_UNIQUE` (`idcat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `codcliente` varchar(5) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `numeroide` varchar(15) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  PRIMARY KEY (`codcliente`),
  UNIQUE KEY `codcliente_UNIQUE` (`codcliente`),
  UNIQUE KEY `numeroide_UNIQUE` (`numeroide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento` (
  `codproducto` varchar(5) NOT NULL,
  `fechamov` date NOT NULL,
  `coddoc` varchar(2) NOT NULL,
  `tipomov` varchar(2) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `saldo` int(5) DEFAULT NULL,
  `costoprom` float DEFAULT NULL,
  `lote` varchar(20) DEFAULT NULL,
  `fechavence` date DEFAULT NULL,
  `valor` int(10) DEFAULT NULL,
  `nrodocumento` varchar(20) NOT NULL,
  PRIMARY KEY (`codproducto`,`fechamov`,`nrodocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `codproducto` varchar(5) NOT NULL,
  `codbarras` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `existencia` int(5) DEFAULT NULL,
  `costo` int(10) DEFAULT NULL,
  `pvp` int(10) DEFAULT NULL,
  `reginvima` varchar(20) DEFAULT NULL,
  `minimo` int(5) NOT NULL,
  `maximo` int(5) NOT NULL,
  `codmed` varchar(5) NOT NULL,
  `idcat` varchar(2) NOT NULL,
  PRIMARY KEY (`codproducto`),
  UNIQUE KEY `codproducto_UNIQUE` (`codproducto`),
  UNIQUE KEY `codbarras_UNIQUE` (`codbarras`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `codproveedor` varchar(5) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `numeroide` varchar(15) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  PRIMARY KEY (`codproveedor`),
  UNIQUE KEY `codproveedor_UNIQUE` (`codproveedor`),
  UNIQUE KEY `numeroide_UNIQUE` (`numeroide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `codrol` varchar(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`codrol`),
  UNIQUE KEY `codrol_UNIQUE` (`codrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipodoc`
--

DROP TABLE IF EXISTS `tipodoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodoc` (
  `coddoc` varchar(2) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`coddoc`),
  UNIQUE KEY `coddoc_UNIQUE` (`coddoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `umedida`
--

DROP TABLE IF EXISTS `umedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umedida` (
  `codmed` varchar(5) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`codmed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `codusuario` varchar(2) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `contrasena` varchar(8) NOT NULL,
  `codrol` varchar(2) NOT NULL,
  PRIMARY KEY (`codusuario`),
  UNIQUE KEY `codusuario_UNIQUE` (`codusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16  9:13:03
