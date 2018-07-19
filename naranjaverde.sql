-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: naranjaverde
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacenes` (
  `idalm` varchar(20) NOT NULL,
  `descripcion` text,
  `data_group` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`idalm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES ('0001','Materia Prima',NULL),('0002','Producto en Proceso (fresco)',''),('0003','Semi-Elaborados (deshidratado)',''),('0004','Desperdicios',NULL),('0005','Empaque',NULL),('0006','Producto Terminado',NULL);
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asociados`
--

DROP TABLE IF EXISTS `asociados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asociados` (
  `idasoc` varchar(20) NOT NULL DEFAULT '',
  `descripcion` varchar(100) DEFAULT NULL,
  `grupo1` varchar(4) DEFAULT NULL,
  `grupo2` varchar(4) DEFAULT NULL,
  `grupo3` varchar(4) DEFAULT NULL,
  `grupo4` varchar(4) DEFAULT NULL,
  `activo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idasoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociados`
--

LOCK TABLES `asociados` WRITE;
/*!40000 ALTER TABLE `asociados` DISABLE KEYS */;
INSERT INTO `asociados` VALUES ('10092678-3','FRANCISCO HUBERTO VALENCIA GRAJALES','PROV','','',NULL,NULL),('10102428-3','CARLOS ARTURO BEDOYA RAMIREZ','PROV','','',NULL,NULL),('10108974-0','HUGO DE JESUS SALADARRIAGA RODRIGUEZ','PROV','','',NULL,NULL),('10283685-5','EDUARDO VELEZ ARBELADEZ','PROV','','',NULL,NULL),('11259559-8','CARLOS ROJAS','PROV','','',NULL,NULL),('12533246-6','LEONARDO PERDOMO SALAS','PROV','','',NULL,NULL),('19220832-6','FABIAN LOZADA','PROV','','',NULL,NULL),('29136530','LUZ MIRELLA MEJIA','PROV','','',NULL,NULL),('42087028','CLAUDIA INES GONZALEZ LOPEZ','PROV','','',NULL,NULL),('42112353-9','GLORIA MILENA LOPEZ BEDOYA','PROV','','',NULL,NULL),('70950653','RAUL VILLEGAS','PROV','','',NULL,NULL),('75046659-4','HECTOR DIEGO GOMEZ MEJIA','PROV','','',NULL,NULL),('79131530-1','CARLOS JULIO TORRES GARAY','PROV','','',NULL,NULL),('80096454-3','FREDY ANDRES GUTIERREZ CABUYO(DIEGO BOGOTA)','PROV','','',NULL,NULL),('860026759-4','CARTONES AMERICA SA CAME','PROV','','',NULL,NULL),('860511541-6','COMESTIBLES ALFA LTDA','PROV','','',NULL,NULL),('860712584-0','MATEO MARQUEZ SANCHEZ','PROV','','',NULL,NULL),('900124107-7','CINDY COCO SAS','PROV','','',NULL,NULL),('900124794-7','ALIMENTOS SUQA SAS','PROV','','',NULL,NULL),('900380814-2','DIPSA FOOD ENERGY REPRESENTACIONES SAS','PROV','','',NULL,NULL),('900409034-2','TERRAFERTIL COLOMBIA SAS','PROV','','',NULL,NULL),('900473144-6','CONNPLANTS SAS','PROV','','',NULL,NULL),('900543350-8','FAIR FRUITS SAS','PROV','','',NULL,NULL),('900560551-3','SERO COLOMBIA S.A.S','PROV','','',NULL,NULL),('900687446-4','PACIFICOCO COLOMBIA SAS','PROV','','',NULL,NULL),('900767263-7','FLP PROCESADOS SAS','PROV','','',NULL,NULL),('900830404-8','COMERCIALIZADO DE PRODUCTOS AGRICOLAS DF SAS','PROV','','',NULL,NULL),('91499686-5','AGRO BARBOSA','PROV','','',NULL,NULL),('98473570-2','ELKIN FERNANDO ORREGO ZULUAGA (INDUBOLSAS)','PROV','','',NULL,NULL);
/*!40000 ALTER TABLE `asociados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `averias`
--

DROP TABLE IF EXISTS `averias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `averias` (
  `raveria` int(11) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `atendida` varchar(1) DEFAULT NULL,
  `descripcion` text,
  `user` varchar(20) DEFAULT NULL,
  `accion_correctiva` text,
  `responsable` varchar(20) DEFAULT NULL,
  `fecha_inicio_reparacion` datetime DEFAULT NULL,
  `fecha_fin_reparacion` datetime DEFAULT NULL,
  PRIMARY KEY (`raveria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `averias`
--

LOCK TABLES `averias` WRITE;
/*!40000 ALTER TABLE `averias` DISABLE KEYS */;
INSERT INTO `averias` VALUES (2,'F002','2017-08-05 06:28:22','Eléctrico','AV002','','prueba de una veria. Se le daño la chumacera derecha al motor y toco cambiarla','ahurtado',NULL,NULL,NULL,NULL),(3,'F002','2017-08-05 17:03:27','Eléctrico','AV001','','asdf','ahurtado','adfasd','cvalencia','2017-03-03 00:00:00','2017-03-04 00:00:00'),(5,'F002','2017-09-06 15:49:40','','AV002','','regulador ','mmejia','','ggaviria','0000-00-00 00:00:00','2017-03-04 00:00:00');
/*!40000 ALTER TABLE `averias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `averias_equipo`
--

DROP TABLE IF EXISTS `averias_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `averias_equipo` (
  `idaveria` varchar(20) NOT NULL,
  `descripcion` text,
  `grupo1` varchar(10) DEFAULT NULL,
  `grupo2` varchar(20) DEFAULT NULL,
  `grupo3` varchar(20) DEFAULT NULL,
  `grupo4` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idaveria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `averias_equipo`
--

LOCK TABLES `averias_equipo` WRITE;
/*!40000 ALTER TABLE `averias_equipo` DISABLE KEYS */;
INSERT INTO `averias_equipo` VALUES ('AV001','Falla mecanica',NULL,NULL,NULL,NULL),('AV002','Falla Electrica',NULL,NULL,NULL,NULL),('AV003','Falta Lubricacion',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `averias_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogos`
--

DROP TABLE IF EXISTS `catalogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogos` (
  `catalogo` varchar(20) NOT NULL,
  `opcion` varchar(50) NOT NULL,
  `descripcion_opcion` text,
  PRIMARY KEY (`catalogo`,`opcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogos`
--

LOCK TABLES `catalogos` WRITE;
/*!40000 ALTER TABLE `catalogos` DISABLE KEYS */;
INSERT INTO `catalogos` VALUES ('C1','OP1','OPCION1'),('C1','OP2','OPCION2'),('C2','OP3','OPCION3'),('C2','OP4','OPCION4'),('C2','OP5','OPCION5');
/*!40000 ALTER TABLE `catalogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datagroups`
--

DROP TABLE IF EXISTS `datagroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datagroups` (
  `data_group` varchar(36) NOT NULL,
  `description` text,
  PRIMARY KEY (`data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datagroups`
--

LOCK TABLES `datagroups` WRITE;
/*!40000 ALTER TABLE `datagroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `datagroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_material`
--

DROP TABLE IF EXISTS `documentos_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_material` (
  `docmat` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idasoc` varchar(20) DEFAULT NULL,
  `idmat` varchar(20) DEFAULT NULL,
  `cantidad_kg` decimal(15,4) DEFAULT NULL,
  `lote_material_proveedor` varchar(20) DEFAULT NULL,
  `factura_proveedor` varchar(20) DEFAULT NULL,
  `tipo_empaque` varchar(10) DEFAULT NULL,
  `dotacion_personal` varchar(1) DEFAULT NULL,
  `elementos_extranos` varchar(1) DEFAULT NULL,
  `est_unid_empaque` varchar(1) DEFAULT NULL,
  `libre_infest_plag` varchar(1) DEFAULT NULL,
  `insp_mat_prim` varchar(1) DEFAULT NULL,
  `insp_mat_color` varchar(1) DEFAULT NULL,
  `insp_mat_olor` varchar(1) DEFAULT NULL,
  `insp_mat_sabor` varchar(1) DEFAULT NULL,
  `insp_mat_elem_extra` varchar(1) DEFAULT NULL,
  `insp_mat_madurez` varchar(12) DEFAULT NULL,
  `insp_epm_color` varchar(1) DEFAULT NULL,
  `insp_epm_olor` varchar(1) DEFAULT NULL,
  `insp_epm_selle` varchar(1) DEFAULT NULL,
  `insp_epm_calibre` varchar(1) DEFAULT NULL,
  `insp_epm_elem_extra` varchar(1) DEFAULT NULL,
  `autor` varchar(20) DEFAULT NULL,
  `factura_recibida` varchar(30) DEFAULT NULL,
  `producto_aprobado` varchar(1) DEFAULT NULL,
  `cantidad_kg_factura` decimal(15,4) DEFAULT NULL,
  `precio_factura` decimal(15,4) DEFAULT NULL,
  `observaciones` text,
  `acciones_correctivas` text,
  `orden` int(11) DEFAULT NULL,
  `tipo_documento` varchar(4) DEFAULT NULL,
  `idalm` varchar(20) DEFAULT NULL,
  `idlote` varchar(20) DEFAULT NULL,
  `data_group` varchar(36) DEFAULT NULL,
  `idinsumos` varchar(36) DEFAULT NULL,
  `unidad` varchar(5) DEFAULT NULL,
  `sub_tipo_documento` varchar(4) DEFAULT NULL,
  `otros_pesos_tara` decimal(15,4) DEFAULT NULL,
  `estado_vehiculo_piso` varchar(1) DEFAULT NULL,
  `estado_vehiculo_paredes` varchar(1) DEFAULT NULL,
  `estado_vehiculo_techo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`docmat`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_material`
--

LOCK TABLES `documentos_material` WRITE;
/*!40000 ALTER TABLE `documentos_material` DISABLE KEYS */;
INSERT INTO `documentos_material` VALUES (1,'2017-09-09 08:29:23','10092678-3','06',5921.0000,'','','Canastilla','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',8000.0000,1250000.0000,'','',323,'E','0001',NULL,NULL,NULL,'kg','MPF',39.0000,NULL,NULL,NULL),(2,'2017-09-09 10:26:53','79131530-1','06',430.0000,'852','125','Canastilla','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','pcastaño','','',2000.0000,2000.0000,'','',125,'E','0001',NULL,NULL,NULL,'kg','MPF',120.0000,NULL,NULL,NULL),(3,'2017-09-09 11:19:20','','',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','',NULL,NULL,NULL,'','',0.0000,'A','A','A'),(4,'2017-09-09 11:19:20','','',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','',NULL,NULL,NULL,'','',0.0000,'A','A','A'),(5,'2017-09-09 11:19:20','','',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'','MPF',0.0000,'A','A','A'),(6,'2017-09-09 11:19:20','','06',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'','MPF',0.0000,'A','A','A'),(7,'2017-09-09 11:24:47','10092678-3','06',0.0000,'','','','C','C','N','A','N','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'kg','MPF',0.0000,'N','A','N'),(8,'2017-09-09 11:32:16','12533246-6','01',350.0000,'01','547','Canastilla','C','C','C','C','C','C','C','C','C','','A','A','A','A','A','pcastaño','','',1500.0000,500.0000,'','',125,'E','0001',NULL,NULL,NULL,'kg','MPF',150.0000,'C','C','C'),(9,'2017-09-19 08:18:04','12533246-6','01',3620.4000,'','','Granel','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','pcastaño','','',6500.0000,0.0000,'Llego muy madura','',0,'E','0001',NULL,NULL,NULL,'kg','MPF',0.0000,'A','A','A'),(10,'2017-09-19 16:32:29','FDF LATÍN AMERICA','118',0.0000,'','Fac# 10785','Guacal','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','pcastaño','','',1998.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'kg','MPF',0.0000,'A','A','A'),(11,'2017-09-19 16:41:36','Universidad tecnológ','Cáscara de platano',59.4000,'','','Bulto','A','A','A','A','A','C','C','C','C','','A','A','A','A','A','pcastaño','','',0.0000,0.0000,'Cliente sin factura y sin datos \n','',0,'E','0003',NULL,NULL,NULL,'kg','MPP',0.0000,'A','A','A'),(12,'2017-09-19 16:41:36','Universidad tecnológ','Cáscara de platano',59.4000,'','','Bulto','A','A','A','A','A','C','C','C','C','','A','A','A','A','A','pcastaño','','',0.0000,0.0000,'Cliente sin factura y sin datos \n','',0,'E','0003',NULL,NULL,NULL,'kg','MPP',0.0000,'A','A','A'),(13,'2017-09-19 16:41:36','Universidad tecnológ','Cáscara de platano',59.4000,'','','Bulto','A','A','A','A','A','C','C','C','C','','A','A','A','A','A','pcastaño','','',0.0000,0.0000,'Cliente sin factura y sin datos \n','',0,'E','0003',NULL,NULL,NULL,'kg','MPP',0.0000,'A','A','A'),(14,'2017-10-09 11:19:01','10108974-0','01',300.0000,'','','Granel','C','C','C','C','C','C','C','C','C','Pintona','A','A','A','A','A','lmartinez','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'','MPF',0.0000,'C','C','C');
/*!40000 ALTER TABLE `documentos_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_material_pesos`
--

DROP TABLE IF EXISTS `documentos_material_pesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_material_pesos` (
  `docmat` int(11) NOT NULL DEFAULT '0',
  `estiba` varchar(5) NOT NULL DEFAULT '',
  `bruto` decimal(15,4) DEFAULT NULL,
  `tara` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`docmat`,`estiba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_material_pesos`
--

LOCK TABLES `documentos_material_pesos` WRITE;
/*!40000 ALTER TABLE `documentos_material_pesos` DISABLE KEYS */;
INSERT INTO `documentos_material_pesos` VALUES (1,'1',1000.0000,10.0000),(1,'2',2000.0000,10.0000),(1,'3',3000.0000,20.0000),(2,'1',560.0000,10.0000),(8,'1',2000.0000,1500.0000),(9,'1',384.2000,7.8000),(9,'2',614.2000,7.4000),(9,'3',599.4000,10.0000),(9,'4',622.4000,43.2000),(9,'5',566.2000,7.6000),(9,'6',561.2000,10.0000),(9,'7',367.2000,8.4000),(11,'1',67.8000,8.4000),(12,'1',67.8000,8.4000),(13,'1',67.8000,8.4000),(14,'1',310.0000,10.0000);
/*!40000 ALTER TABLE `documentos_material_pesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `equipo` varchar(50) NOT NULL,
  `descripcion` text,
  `fecha_adquisicion` datetime NOT NULL,
  `proveedor` varchar(20) DEFAULT NULL,
  `capacidad_kg` decimal(9,3) NOT NULL,
  `horas_operacion` decimal(9,3) NOT NULL,
  `horno` varchar(1) NOT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `lote_fabricacion` varchar(50) DEFAULT NULL,
  `informacion_tecnica` text,
  `numero_activo` varchar(50) DEFAULT NULL,
  `catalogo` blob,
  `foto` blob,
  PRIMARY KEY (`equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES ('M001','HORNO #1\r\n54 BANDEJAS DE ACERO  INOXIDABLE\r\nMEDIDAS DEL EQUIPO LARGO 8,74 X ALTO 4,0 X ANCHO 1,72','2006-11-01 08:00:00','ABRAHAM BELLO',0.000,0.000,'X','','','MOTOR ELECTRICO TRIFASICO MARCA EBERLE DE 7,5 HP A 220 V\r\nCHUMACERAS (2) SFK  SY-508 PARA EJE DE 1-1/2\"\r\nPOLEAS DE HIERRO TIPO B MOTOR DIA 5\" EJE DIA 7\"\r\nCORREAS (2) B- 48\r\nQUEMADOR A GAS WAYNE CAPAC. 250000-400000 BTU/H MODELO HSG 400\r\nVALVULA DE GAS AMERICAN METER COMPANY 1213B2 ORIF 1/4\" 24V 60HZ\r\nREGULADOR DE GAS MANEJADO POR ESCALA DE 250 BTU/H DE 1 A 10\r\nREGULADOR DE TEMPERATURA TERMOSTATO AUTONICS TK-45 TERMOCUPLA TIPO J\r\nTERMOMETRO ANALOGO 20 EN 20 HASTA 240°F / 20 EN 20 HASTA 110°C\r\nVENTILADOR CON ROTOR DE 222 DIAM\r\nCAJA DE CONTROL: 1 CONTACTOR CHINT NC1-3210, 2 ON-OFF, 1 BRAKE DE 30A','',NULL,NULL),('M002','HORNO #2\r\n50 BANDEJAS DE ACERO INOXIDABLE\r\nMEDIDAS DEL EQUIPO LARGO 4,92 X ALTO 2,80 X ANCHO 3,25','2006-11-01 08:00:00','',0.000,0.000,'X','','','MOTOR ELECTRICO TRIFASICO MARCA EBERLE DE 5,0 HP A 220 V\r\nCHUMACERAS (2) P-207 PARA EJE DE 32 mm\r\nPOLEAS DE HIERRO TIPO B (2)\r\nCORREAS (2) B-42\r\nQUEMADOR A GAS WAYNE CAPAC. 250000-400000 BTU/H MODELO HSG 400\r\nVALVULA DE GAS AMERICAN METER COMPANY 1213B2 ORIF 1/4\" 24V 60HZ\r\nREGULADOR DE GAS MANEJADO POR ESCALA DE 250 BTU/H DE 1 A 10\r\nREGULADOR DE TEMPERATURA TERMOSTATO AUTONICS TK-45 TERMOCUPLA TIPO J\r\nTERMOMETRO ANALOGO 20 EN 20 HASTA 240°F / 20 EN 20 HASTA 110°C\r\nVENTILADOR CENTRIFUGO #22\r\nCAJA DE CONTROL: 1 CONTACTOR CHINT NC1-3210, 2 ON-OFF, 1 BRAKE SCHNEIDER C16 22OV, TEMPORIZADOR TYC TH 3A Y TERMICO CHINT NR2.25','',NULL,NULL),('M003','HORNO # 3\r\n50 BANDEJAS DE ACERO INOXIDABLE\r\nMEDIDAS DEL EQUIPO LARGO 4,8 m X ALTO 2,83 m X ANCHO 1,90 m','2008-11-01 08:00:00','ABRAHAM BELLO',0.000,0.000,'X','','','MOTOR ELECTRICO TRIFASICO MARCA EBERLE DE 5,0 HP A 220 V\r\nCHUMACERAS (2) P-207 PARA EJE DE 32 mm\r\nPOLEAS DE HIERRO TIPO B MOTOR DIA 4\" EJE DIA 6\"\r\nCORREAS (2) B-42\r\nQUEMADOR A GAS WAYNE CAPAC. 250000-400000 BTU/H MODELO HSG 400\r\nVALVULA DE GAS AMERICAN METER COMPANY 1213B2 ORIF 1/4\" 24V 60HZ\r\nREGULADOR DE GAS MANEJADO POR ESCALA DE 250 BTU/H DE 1 A 10\r\nREGULADOR DE TEMPERATURA TERMOSTATO AUTONICS TK-45 TERMOCUPLA TIPO J\r\nTERMOMETRO ANALOGO 20 EN 20 HASTA 240°F / 20 EN 20 HASTA 110°C\r\nVENTILADOR CON ROTOR DE 222 DIAM\r\nCAJA DE CONTROL: 1 CONTACTOR CHINT NC1-3210, 2 ON-OFF, 1 BRAKE MERLIN GERIN C16 DE 63A, TEMPORIZADOR MAXTERCH/RFTH 3A, TERMICO LR2 D13 0-32A','',NULL,NULL),('M004','HORNO #4\r\n42 BANDEJAS DE ACERO INOXIDABLE\r\nMEDIDAS DEL EQUIPO LARGO 4,9 m X ALTO 3,06 m X ANCHO 1,94 m','2008-12-01 08:00:00','ABRAHAM BELLO',0.000,0.000,'X','','','MOTOR ELECTRICO TRIFASICO MARCA EBERLE DE 5,0 HP A 220 V\r\nCHUMACERAS (2) P-207 PARA EJE DE 32 mm\r\nPOLEAS DE HIERRO TIPO B MOTOR DIA 5\" EJE DIA 5-1/2\"\r\nCORREAS (2) B-44\r\nQUEMADOR A GAS WAYNE CAPAC. 250000-400000 BTU/H MODELO HSG 400\r\nVALVULA DE GAS AMERICAN METER COMPANY 1213B2 ORIF 1/4\" 24V 60HZ\r\nREGULADOR DE GAS MANEJADO POR ESCALA DE 250 BTU/H DE 1 A 10\r\nREGULADOR DE TEMPERATURA TERMOSTATO DIGITAL EBCHQ 58008 TERMOCUPLA TIPO J\r\nTERMOMETRO ANALOGO 20 EN 20 HASTA 240°F / 20 EN 20 HASTA 110°C\r\nVENTILADOR CON ROTOR DE 222 DIAM\r\nCAJA DE CONTROL: 1 CONTACTOR LC1 D25, 2 ON-OFF, 1 BRAKE SCHNEIDER C-63, TEMPORIZADOR MAXTERCH/RFTH 3A, TERMICO LR2 D13 0-32A','',NULL,NULL),('M005','HORNO #5\r\n3 ESCABILADEROS','2018-06-01 08:00:00','INGELGAS',0.000,0.000,'X','','','','',NULL,NULL),('M006','MOLINO DE CUCHILLAS\r\nMEDIDAS LARGO 0,60 M, ALTO 1,60 M  ANCHO 1,0 M','2008-11-01 08:00:00','ABRAHAM BELLO',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO DE 6,0 HP A 220V\r\nPOLEAS EN HIERRO (2) TIPO C \r\nCORREAS DENTADAS (2) DONGIL 22610\r\nCHUMACERAS CERRADAS SKF-511-609\r\nRODAMIENTOS (2) 1211K\r\nCUCHILLAS MOVILES (5) EN ACERO INOX 23 X 6 X 1,5 CM\r\nCUCHILLAS FIJAS (2) EN ACERO INOX \r\nCRIBAS (4) CON GRANULOMETRIA 20,12, 10, 8\r\n','',NULL,NULL),('M007','MOLINO DE MARTILLOS\r\nMEDIDAS DEL EQUIPO: LARGO  1,10 M ALTO  1,50 M ANCHO 0,50 M','2006-01-18 08:00:00','ABRAHAM BELLO',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO DE 6,6 HP A 220 V\r\nPOLEAS TIPO B DOBLE CANAL, CORREAS (2)  B-47\r\nCHUMACERAS (2) P-207 EJE 1-1/4\"\r\nMARTILLOS MOVILES (32)','',NULL,NULL),('M008','MOLINO DE UVA\r\nMEDIDAS DEL EQUIPO: LARGO 0,81 M ALTO 0,65 M ANCHO 0,42 M','2011-08-01 08:00:00','CI TALSA',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO DE 1,5 HP A 220 V ','',NULL,NULL),('M009','MOLINO DE UVA #1\r\nMEDIDAS DEL EQUIPO: LARGO 0,81 M ALTO 0,65 M ANCHO 0,42 M','2018-01-02 08:00:00','INTERMAQUINAS',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO DE 2 HP A 220V','',NULL,NULL),('M011','TAMIZ\r\nMEDIDAS DEL EQUIPO LARGO 1,90 M ALTO 1,40 M ANCHO 0,56 M','2014-01-02 08:00:00','',0.000,0.000,'','','','MOTOR TRIFASICO MARCA TRAINCOL DE 1 HP A 220V A 1380 RPM\r\nPOLEAS (2) TIPO B DE 1 CANAL  DIAM POLEA MOTOR 3\", DIAM POLEA EJE 9\"\r\nCORREA (1) B-45\r\nCHUMACERAS (2) P-205 PARA EJE DE 1\"','',NULL,NULL),('M013','PELADORA DE PIÑA','2017-08-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M014','DESCORAZONADOR\r\nMEDIDAS DEL EQUIPO: LARGO 0,34 M ALTO 0,70 M ANCHO 0,29 M','2014-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M015','CORTADOR CABEZA Y COLA\r\nMEDIDAS DEL EQUIPO: LARGO 0,50 M ALTO 0,23 M ANCHO 0,34 M','2014-01-02 08:00:00','IMA',0.000,0.000,'','','','','',NULL,NULL),('M016','CUBICADORA KRONEN KUJ V\r\nMEDIDAS DEL EQUIPO: LARGO 1,15 M ALTO 1,50 M ANCHO 0,80 M','2015-01-02 08:00:00','KRONEN NAHRUNGSMITTE',0.000,0.000,'','','','','',NULL,NULL),('M017','PROCESADOR DE ALIMENTOS\r\nMEDIDAS DEL EQUIPO: LARGO 0,42 M ALTO 0,52 M ANCHO 0,26 M','2014-02-02 08:00:00','JAVAR',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO DE 1,0 HP A 220V\r\nCORREA (1) M-18\r\nDISCO PLASTICO (1)\r\nDISCOS DE CORTE (4)','',NULL,NULL),('M018','CUTTER\r\nMEDIDAS DEL EQUIPO: LARGO 0,84 M  ANCHO  0,63 M ALTO 1,10 M','2012-06-14 08:00:00','JAVAR',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO DE 7 HP A 220V\r\nCORREAS (2)  A-29\r\nEJE CON 3 CUCHILLAS EN ACERO INOXIDABLE','',NULL,NULL),('M019','EQUIPO DE LAVADO\r\nMEDIDAS DEL EQUIPO: LARGO 3,10 M ALTO 1,90 M ANCHO 0,80 M','2015-01-02 08:00:00','INDUSTRIAS IMA',0.000,0.000,'','','','LAVADORA DE INMERSION: MOTO REDUCTOR TRIFASICO DE 0,4 HP A 220 V\r\nTANQUE PARA ASPERSION: CAPACIDAD 180 LT, BOMBA TRIFASICA DE 1 HP, 8 ASPERSORES TIPO CORTINA A 40 PSI, BLOWER DE 2HP A 220V\r\nBANDA PROCESAMIENTO DE FRUTA: MOTOR TRIFASICO DE 0,17 HP  A 220V VELOC 80 RPM','',NULL,NULL),('M020','EMPACADORA FLOW PACK\r\nMEDIDAS DEL EQUIPO: LARGO 3,70 M ALTO 1,30 M  ANCHO 1,0 M','2016-08-04 08:00:00','',0.000,0.000,'','','','MOTORES ELECTRICOS (2) DE  1/4 HP Y 1/2 HP A 220 V  ','',NULL,NULL),('M021','ANALIZADOR DE HUMEDAD\r\nMEDIDAS DEL EQUIPO: LARGO 0,36 M ALTO 0,19 M ANCHO 0,152 M','2010-06-01 08:00:00','OHAUS',0.000,0.000,'','','','ALIMENTACIÓN ELECTRICA 120 VCA 50/60 HZ','',NULL,NULL),('M022','INCUBADORA PETRI FILM\r\nMEDIDAS DEL EQUIPO: LARGO 0,30 M ALTO 0,54 M ANCHO 0,24 M','2011-11-01 08:00:00','QUIOS LTDA',0.000,0.000,'','','','POTENCIA 100W \r\nMONOFASICO A 110V  50-60HZ\r\nRESOLUCIÓN 0,1 °C\r\nUNIFORMIDAD PROMEDIO +- 3°C\r\nSENSIBILIDAD DE CONTROL +- 0,2°C\r\nTEMPERATURA  HASTA 60°C','',NULL,NULL),('M023','INCUBADORA\r\nMEDIDAS DEL EQUIPO: LARGO 0,32 M  ALTO 0,40 M ANCHO 0,33 M','2014-11-01 08:00:00','',0.000,0.000,'','','','POTENCIA 90 W\r\nVOLTAJE 110V 60 HZ\r\nRANGO DE TEMPERATURA  HASTA 60°C\r\nRESOLUCION 0,1 °C\r\nUNIFORMIDAD PROMEDIO +- 3°C\r\nSENSIBILIDAD DE CONTROL +- 0,2 °C\r\n','',NULL,NULL),('M025','BALANZA LEXUS DE 1000KG\r\nMEDIDAS DEL EQUIPO: LARGO 0,25 M ALTO 0,16 M ANCHO 0,11 M\r\nPLATAFORMA: 1,20 M X 1,20 M','2013-01-02 08:00:00','LEXUS ELECTRONIC SCA',0.000,0.000,'','','','ALIMENTACION: 110 V AC 60 HZ\r\nDISPLAY: 6 DIGITOS\r\nTEMPERATURA DE OPERACION: 0 - 40 °C\r\nMAX HUMEDAD RELATIVA: 90%\r\nUNIDADES: Kg y Lb\r\nCAPACIDAD MAXIMA: 1000 KG\r\nDIVISION: 20 gr\r\nESCALA DE VERIFICACIÓN: 50 gr','',NULL,NULL),('M026','BASCULA 2000 KG\r\nMEDIDAS DEL EQUIPO:LARGO 0.22 M ALTO 0,15 M  ANCHO 0,10 M\r\nPLATAFORMA: 1,20 M X 1,20 M','2017-01-02 08:00:00','BAUNKER INGENIERIA S',0.000,0.000,'','','','ALIMENTACIÓN: 110 V AC 60 HZ\r\nDISPLAY: 6 DIGITOS\r\nTEMPERATURA DE OPERACIÓN: 0 - 40 °C\r\nMAX HUMEDAD RELATIVA: 90%\r\nUNIDADES: Kg y Lb\r\nCAPACIDAD MAXIMA: 2000 KG\r\nDIVISIÓN: 20 gr\r\nESCALA DE VERIFICACIÓN: 50 gr','',NULL,NULL),('M027','BASCULA BERNALO 300KG \r\nMEDIDAS DEL EQUIPO: LARGO 0,40 M ALTO 0,87 M ANCHO 0,63 M\r\nPLATAFORMA: 0,40 M X 0,63 M','2017-09-01 08:00:00','MAKRO',0.000,0.000,'','','','ALIMENTACIÓN: 110 V AC  60 HZ\r\nDISPLAY: 6 DIGITOS\r\nTEMPERATURA DE OPERACIÓN: 0 - 40 °C\r\nMAXIMA HUMEDAD RELATIVA: 80%\r\nUNIDADES: Kg y Lb\r\nCAPACIDAD MAXIMA: 300 Kg\r\nDIVISIÓN: 1 gr\r\nCARGA MINIMA: 100 gr','',NULL,NULL),('M028','BALANZA LEXUS 150 KG\r\nMEDIDAS DEL EQUIPO: LARGO 0,40 M ALTO 0,85 M  ANCHO 0,63 M','2013-01-02 08:00:00','',0.000,0.000,'','','','ALIMENTACIÓN: 110 V AC  60 HZ\r\nDISPLAY: 6 DIGITOS\r\nTEMPERATURA DE OPERACIÓN: 0 - 40 °C\r\nMAXIMA HUMEDAD RELATIVA: 80%\r\nUNIDADES: Kg y Lb\r\nCAPACIDAD MAXIMA: 300 Kg\r\nDIVISIÓN: 1 gr\r\nCARGA MINIMA: 100 gr','',NULL,NULL),('M029','BALANZA TEK 40 KG SM-101 \r\nMEDIDAS DEL EQUIPO: LARGO 0,34 M ALTO 0,50 M ANCHO 0,37 M\r\n','2014-01-02 08:00:00','',0.000,0.000,'','','','ALIMENTACIÓN: 110 V AC  60 HZ\r\nDISPLAY: LCD\r\nUNIDADES: Kg y Lb\r\nCAPACIDAD MAXIMA: 40 Kg\r\nDIVISIÓN: 5 gr\r\nCARGA MINIMA: 200 gr','',NULL,NULL),('M030','BALANZA 30 KG SIPESA\r\nMEDIDAS DEL EQUIPO: LARGO 0,35 M ALTO 0,12 M ANCHO 0,34 M','2016-01-02 08:00:00','',0.000,0.000,'','','','ALIMENTACIÓN: 110 V AC  60 HZ\r\nDISPLAY: LCD\r\nUNIDADES: Kg y Lb\r\nCAPACIDAD MAXIMA: 30 Kg\r\nDIVISIÓN: 2 gr\r\nCARGA MINIMA: 40 gr','',NULL,NULL),('M032','BALANZA MAXI HOUSE 7000 gr\r\nMEDIDAS DEL EQUIPO: LARGO ALTO ANCHO','2108-01-02 08:00:00','',0.000,0.000,'','','','ALIMENTACIÓN:  2 PILAS AA\r\nDISPLAY: LCD\r\nUNIDADES: gr\r\nCAPACIDAD MAXIMA:  7000 gr\r\nDIVISIÓN: 1 gr\r\nCARGA MINIMA: 1 gr','',NULL,NULL),('M034','SELLADORA\r\nMEDIDAS DEL EQUIPO: LARGO 0,70 M ALTO 1,16 M ANCHO 1,0 M','2014-02-02 08:00:00','INDUSTRIAS METALMECA',0.000,0.000,'','','','VOLTAJE: 110 V\r\nSELLADORA DE PLASTICO CON PEDAL MANUAL, RESISTENCIA RECUBIERTA CON TEFLON\r\nPOSICIÓN DE SELLADO: HORIZONTAL\r\nMATERIAL A SELLAR: POLIETILENO Y POLIPROPILENO\r\n','',NULL,NULL),('M035','SELLADORA # 2\r\nMEDIDAS DEL EQUIPO: LARGO 0,70 M ALTO 1,16 M ANCHO 1,0 M','2014-02-02 08:00:00','JORES TECHNOLOGY',0.000,0.000,'','','','VOLTAJE: 110 V\r\nSELLADORA DE PLASTICO CON PEDAL MANUAL, RESISTENCIA RECUBIERTA CON TEFLON\r\nPOSICIÓN DE SELLADO: HORIZONTAL\r\nMATERIAL A SELLAR: POLIETILENO Y POLIPROPILENO\r\n','',NULL,NULL),('M036','EQUIPO AIRE ACONDICIONADO\r\nMEDIDAS DEL EQUIPO: LARGO 0,90 M ALTO 0,30 M ANCHO 0,20 M','2015-01-02 08:00:00','ELECTROLUX',0.000,0.000,'','','','VOLTAJE 220V\r\nCAPACIDAD DE ENFRIAMIENTO: 9000 BTU/H\r\n','',NULL,NULL),('M037','AIRE ACONDICIONADO MOVIL\r\nMEDIDAS DEL EQUIPO: LARGO 0,44 M ALTO 0,76 M ANCHO 0,40 M','2017-01-01 08:00:00','COMFORT STYLE',0.000,0.000,'','','','VOLTAJE 110 V\r\nPOTENCIA 1415 W\r\nCAPACIDAD DE ENFRIAMIENTO 12000 BTU/H','',NULL,NULL),('M038','VENTILADORES\r\nMEDIDAS DEL EQUIPO: DIAMETRO 0,60 M  ANCHO 0,40 M','2014-01-02 09:00:00','',0.000,0.000,'','','','VOLTAJE 110 V\r\nPOTENCIA 150 W\r\nFRECUENCIA 60 HZ','',NULL,NULL),('M039','EXTRACTORES\r\nMEDIDAS DEL EQUIPO: DIAMETRO 0,43 M','2014-01-02 08:08:00','',0.000,0.000,'','','','VOLTAJE: 220 V\r\nASPAS DE ALUMINIO','',NULL,NULL),('M040','EXTRACTOR EOLICO\r\nMEDIDAS DEL EQUIPO: DIAMETRO 0,80  ALTURA 1,20 M','2014-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M041','ATRAPA INSECTOS\r\nMEDIDAS DEL EQUIPO: LARGO 0,54 M ALTO 0,20 M ANCHO 0,513 M','2014-01-02 08:00:00','FUMICONTROL',0.000,0.000,'','','','VOLTAJE 110 V\r\nFRECUENCIA 60 HZ','',NULL,NULL),('M042','ATRAPA INSECTOS\r\nMEDIDAS DEL EQUIPO: LARGO  0,47 M ALTURA 0,25 M  ANCHO 0,20 M','2014-01-02 08:00:00','FUMICONTROL',0.000,0.000,'','','','VOLTAJE 110 V\r\nFRECUENCIA  60 HZ','',NULL,NULL),('M043','COMPRESOR DE AIRE KARSON\r\nMEDIDAS DEL EQUIPO: LARGO 0,55 M ALTO 0,56 M ANCHO 0,33 M','2015-01-02 08:00:00','HOMECENTER',0.000,0.000,'','','','VOLTAJE: 110 V\r\nPOTENCIA: 1,5 HP\r\nVELOCIDAD: 3400 RPM\r\nCAUDAL:106 LT/MIN\r\nACCESORIOS: PISTOLA, AEROGRAFO, MANGUERA DE 10 M','',NULL,NULL),('M044','COMPRESOR DE AIRE\r\nMEDIDAS DEL EQUIPO: LARGO 1,05 M ALTO 2,10 M ANCHO 0,60 M','2017-09-01 08:00:00','SUPERCOMPRESORES',0.000,0.000,'','','','MOTOR ELECTRICO TRIFASICO SIEMENS 4 HP A 220V \r\nVELOCIDAD 1700 RPM\r\nCABEZOTE 3080\r\nGUARDAMOTOR: CONTACTOR CHINT NC1-1810, TERMICO CHINT NR2-25 \r\n18 AMP. BRAKE EBCHQ EP 06 C16\r\nCAPACIDAD DEL TANQUE 120 GL\r\nNIVEL DE RUIDO: MENOR DE 100 DB\r\nTRANSMISION: 2 CORREAS TIPO B-75\r\n','',NULL,NULL),('M045','ASPIRADORA\r\nMEDIDAS DEL EQUIPO:  DIAMETRO 0,44 M ALTURA: 0,60 M','2015-01-02 08:00:00','',0.000,0.000,'','','','VOLTAJE: 110 V\r\nCAPACIDAD: 12 GLN O 45,4 LTS\r\nMATERIAL DE ABSORCION: LIQUIDOS Y SOLIDOS','',NULL,NULL),('M046','COSEDORA\r\nMEDIDAS DEL EQUIPO: LARGO 0,375 M ALTO 0,40 M ANCHO 0,27 M','2012-10-01 08:00:00','CERRADORAS Y ACCESOR',0.000,0.000,'','','','VOLTAJE: 110 V\r\nPOTENCIA: 90 W\r\nVELOCIDAD: 1250 RPM\r\nMATERIAL QUE PUEDE COSER: PAPEL KRAFT, POLIETILENO, POLIPROPILENO, TELA TEJIDA, ALGODON Y YUTE\r\nAGUJA: DN X 1 #25','',NULL,NULL),('M047','ASPERSOR\r\nMEDIDAS DEL EQUIPO: DIÁMETRO 0,20 M, ALTURA 0,41 CM','2010-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M048','FOGMASTER O NEBULIZADOR\r\nMEDIDAS DEL EQUIPO: LARGO  0,27 M ALTO 0,25 M ANCHO 0,10 M','2010-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M049','HIDROFLOW\r\nMEDIDAS DEL EQUIPO: LARGO 1,07 M ALTO 0,90 M ANCHO 0,55 M','2015-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M050','TANQUE DE ACERO INOXIDABLE\r\nMEDIDAS DEL EQUIPO: DIAMETRO 1,10 M ALTURA 1,85 M','2014-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M051','TRANSPORTADOR DE CANASTILLAS PLANA\r\nMEDIDAS DEL EQUIPO: LARGO 0,61 M ALTO 1,0 M  ANCHO 0,76 M','2013-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL),('M052','TRANSPORTADOR  DE CANASTILLAS CARULLERA\r\nMEDIDAS DEL EQUIPO: LARGO  0,71 M ALTO 1,0 M ANCHO 0,56 M','2014-01-02 08:00:00','',0.000,0.000,'','','','','',NULL,NULL);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_personal`
--

DROP TABLE IF EXISTS `eventos_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos_personal` (
  `rpersonal` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `turno` varchar(1) DEFAULT NULL,
  `evento` varchar(1) DEFAULT NULL,
  `idpersonal` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rpersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_personal`
--

LOCK TABLES `eventos_personal` WRITE;
/*!40000 ALTER TABLE `eventos_personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoja_ruta`
--

DROP TABLE IF EXISTS `hoja_ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoja_ruta` (
  `idmat` varchar(20) NOT NULL,
  `descripcion` text NOT NULL,
  `cif` decimal(9,2) NOT NULL,
  `rendimiento` decimal(5,2) DEFAULT NULL,
  `reempaque` int(11) NOT NULL,
  PRIMARY KEY (`idmat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta`
--

LOCK TABLES `hoja_ruta` WRITE;
/*!40000 ALTER TABLE `hoja_ruta` DISABLE KEYS */;
INSERT INTO `hoja_ruta` VALUES ('D110','Piña en cubos de 1.5 cm x 1.5 cm',2500.00,6.00,0);
/*!40000 ALTER TABLE `hoja_ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoja_ruta_componentes`
--

DROP TABLE IF EXISTS `hoja_ruta_componentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoja_ruta_componentes` (
  `idmat` varchar(20) NOT NULL,
  `operacion` varchar(50) NOT NULL,
  `componente` varchar(50) NOT NULL,
  `tipo` enum('MO','MP','MQ','LP','IN') NOT NULL,
  `costo` decimal(9,3) NOT NULL,
  `unidad` enum('kg','l','g','m','cm','lb','un','h','ml') NOT NULL,
  `cantidad` decimal(9,3) NOT NULL,
  `ordenamiento` int(11) NOT NULL,
  PRIMARY KEY (`idmat`,`operacion`,`componente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta_componentes`
--

LOCK TABLES `hoja_ruta_componentes` WRITE;
/*!40000 ALTER TABLE `hoja_ruta_componentes` DISABLE KEYS */;
INSERT INTO `hoja_ruta_componentes` VALUES ('123','1','Deshidratacion','MQ',1422.820,'un',150.000,0),('123','2','fresa','MP',102.875,'kg',120.000,0),('123','3','operario','MO',10.250,'kg',12.000,0),('D0616','1','fresa  fresca','MP',198.020,'kg',11.110,0),('D0616','1','jefe de almacén de materia prima','MO',293611.111,'h',0.018,0),('D0616','2','agua','IN',11.429,'l',0.700,0),('D0616','2','desinfectante','IN',33.260,'ml',1.000,0),('D0616','2','desmoldeante','IN',76.923,'ml',0.260,0),('D0616','2','operario','MO',2642.500,'h',2.000,0),('D0616','3','horno deshidratador','MQ',2763.000,'kg',1.000,0),('D0616','4','operario','MO',176.000,'kg',1.000,0),('D0616','5','operario','MO',1321.000,'kg',1.000,0),('D0616','6','operario','MO',250.000,'kg',1.000,0),('D0616','7','empaque bolsas y cajas','IN',50.000,'kg',1.000,0),('D0616','7','operario','MO',150.000,'kg',1.000,0),('D110','1','AGUA','IN',0.900,'l',174.400,12),('D110','1','CARGAR HORNO','MO',11012.000,'h',0.012,13),('D110','1','CUBICADO','MO',5506.000,'h',0.190,11),('D110','1','DESCARGUE','MO',5506.000,'h',0.006,0),('D110','1','DESCORONAR','MO',5506.000,'h',0.018,0),('D110','1','DESINFECTANTE','IN',1625.000,'kg',0.040,0),('D110','1','EMBAMDEJADO','MO',11012.000,'h',0.072,0),('D110','1','PELADO','MO',11012.000,'h',0.100,0),('D110','1','PIÑA','MP',14161.000,'kg',1.000,0),('D110','2','HORNO','MQ',2763.000,'kg',1.000,0),('D110','3','DESEMBANDEJADO','MO',5506.000,'h',0.160,0),('D110','4','SELECCION','MO',5506.000,'h',0.110,0),('D110','6','EMPAQUE','MO',5506.000,'h',0.020,0),('D203','1','adecuacion','MO',264.000,'kg',1.000,0),('D203','1','agua','MP',2.273,'l',22.000,0),('D203','1','Banano','MP',500.170,'kg',5.880,0),('D203','2','horno','MQ',2763.000,'kg',1.000,0),('D203','3','desenbandejado','MO',132.000,'kg',1.000,0),('D203','4','seleccion','MO',377.000,'kg',1.000,0),('D203','5','detector de metales','MQ',88.000,'kg',1.000,0),('pruebas','4','2','MO',111.000,'kg',1.000,0);
/*!40000 ALTER TABLE `hoja_ruta_componentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoja_ruta_operaciones`
--

DROP TABLE IF EXISTS `hoja_ruta_operaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoja_ruta_operaciones` (
  `idmat` varchar(20) NOT NULL,
  `operacion` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `capacidad_kg_h` decimal(9,3) NOT NULL,
  `tipo` enum('TUR','MAQ') DEFAULT NULL,
  `operarios` int(11) NOT NULL,
  `fresco` int(11) NOT NULL,
  `clase` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idmat`,`operacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta_operaciones`
--

LOCK TABLES `hoja_ruta_operaciones` WRITE;
/*!40000 ALTER TABLE `hoja_ruta_operaciones` DISABLE KEYS */;
INSERT INTO `hoja_ruta_operaciones` VALUES ('D0310','1','ADECUACIÓN',0.000,'TUR',0,0,''),('D0310','2','DESHIDRATACIÓN',0.000,'TUR',0,0,''),('D0310','3','DESEMBANDEJO',0.000,'TUR',0,0,''),('D0310','4','SELECCIÓN',0.000,'TUR',0,0,''),('D0310','5','EMPAQUE',0.000,'TUR',0,0,''),('D0310','6','DETECTOR DE METALES',0.000,'TUR',0,0,''),('D0616','2','Adecuacion',15.800,'TUR',4,1,'ADECUADO'),('D0616','3','Deshidratacion',93.750,'MAQ',1,1,'DESHIDRATADO'),('D0616','4','Desembandejado',30.000,'TUR',2,0,''),('D0616','5','seleccion',4.000,'TUR',5,0,''),('D0616','6',' Molienda',30.000,'TUR',1,0,''),('D0616','7','empaque',50.000,'TUR',3,0,'TERMINADO'),('D110','1','ADECUACIÓN',35.000,'TUR',1,1,'ADECUADO'),('D110','2','DESHIDRATACIÓN',155.600,'MAQ',1,0,''),('D110','3','DESEMBANDEJO',10.000,'TUR',1,0,''),('D110','4','SELECCIÓN',9.000,'TUR',1,0,''),('D110','5','energia',3.000,'TUR',5,0,'TERMINADO'),('D110','6','EMPAQUE',45.000,'TUR',3,0,'TERMINADO'),('D110','7','energia',11.000,'TUR',2,1,'DESHIDRATADO'),('D110','sde12','energiacccc',3.000,'TUR',3,0,'DESHIDRATADO'),('D203','1','adecuacion',3.400,'TUR',8,0,''),('D203','2','deshidratacion',20.000,'MAQ',1,0,''),('D203','3','desenbadejado',30.000,'TUR',8,0,''),('D203','4','seleccion',14.000,'TUR',8,0,''),('D203','5','detector de metales',60.000,'MAQ',1,0,'');
/*!40000 ALTER TABLE `hoja_ruta_operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicadores`
--

DROP TABLE IF EXISTS `indicadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicadores` (
  `dia` date NOT NULL,
  `produccion_acumulada` decimal(8,2) DEFAULT NULL,
  `costo_acumulado` decimal(12,2) DEFAULT NULL,
  `ordenes_activas` int(11) DEFAULT NULL,
  `ordenes_espera` int(11) DEFAULT NULL,
  `ordenes_cerradas` int(11) DEFAULT NULL,
  PRIMARY KEY (`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicadores`
--

LOCK TABLES `indicadores` WRITE;
/*!40000 ALTER TABLE `indicadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `idalm` varchar(20) NOT NULL DEFAULT '',
  `idmat` varchar(20) NOT NULL DEFAULT '',
  `cantidad` decimal(12,4) DEFAULT NULL,
  `unidad` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idalm`,`idmat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES ('0001','01',4270.4000,'kg'),('0001','06',6351.0000,'kg'),('0001','118',0.0000,'kg');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_fisico`
--

DROP TABLE IF EXISTS `inventario_fisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_fisico` (
  `rinventario` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idalm` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rinventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_fisico`
--

LOCK TABLES `inventario_fisico` WRITE;
/*!40000 ALTER TABLE `inventario_fisico` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_fisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_fisico_items`
--

DROP TABLE IF EXISTS `inventario_fisico_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_fisico_items` (
  `rinventario` int(11) NOT NULL AUTO_INCREMENT,
  `idmat` varchar(20) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `unidad` varchar(5) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rinventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_fisico_items`
--

LOCK TABLES `inventario_fisico_items` WRITE;
/*!40000 ALTER TABLE `inventario_fisico_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_fisico_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `idmat` varchar(20) NOT NULL DEFAULT '',
  `descripcion` varchar(100) DEFAULT NULL,
  `grupo1` varchar(4) DEFAULT NULL,
  `grupo2` varchar(4) DEFAULT NULL,
  `grupo3` varchar(4) DEFAULT NULL,
  `grupo4` varchar(4) DEFAULT NULL,
  `unidad` varchar(5) DEFAULT NULL,
  `costo` decimal(9,3) NOT NULL,
  PRIMARY KEY (`idmat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES ('02','Banano','MPP','','','','kg',650.000),('03','Mango','MPP','','','','kg',1000.000),('04','Papaya','MPF','','',NULL,'kg',0.000),('05','Uchuva','MPF','','',NULL,'kg',0.000),('06','Fresa','MPF','','',NULL,'kg',0.000),('07','Pitahaya','MPF','','',NULL,'kg',0.000),('08','Ciruela','MPF','','',NULL,'kg',0.000),('09','Mora','MPF','','',NULL,'kg',0.000),('10','Kiwi','MPF','','',NULL,'kg',0.000),('100','Coco Hojuela Blanco Cuticula 0%','MPP','','',NULL,'kg',0.000),('101','Espinaca Molida','MPP','','',NULL,'kg',0.000),('102','Paprika Molida','MPP','','',NULL,'kg',0.000),('103','Uchuva Deshidratada','MPP','','',NULL,'kg',0.000),('104','Mango Deshidratado','MPP','','',NULL,'kg',0.000),('106','Linaza Molida','MPP','','',NULL,'kg',0.000),('109','Bolsas 3 Kg','Insu','','',NULL,'kg',0.000),('11','Chontaduro','MPF','','',NULL,'kg',0.000),('110','Bolsas 5 Kg','Insu','','',NULL,'kg',0.000),('111','Bolsas 10 Kg','Insu','','',NULL,'kg',0.000),('112','Carambolo','MPF','','',NULL,'kg',0.000),('113','Bolsas Azules','Insu','','',NULL,'kg',0.000),('114','Manzana Deshidratada','MPP','','',NULL,'kg',0.000),('115','Mora Rodajas Deshidratada','MPP','','',NULL,'kg',0.000),('116','Aceite Desmoldeante','Insu','','',NULL,'kg',0.000),('118','Cilantro Deshidratado En Hojas','MPP','','',NULL,'kg',0.000),('119','Pimenton Rojo Escamas','MPP','','',NULL,'kg',0.000),('12','Borojo','MPF','','',NULL,'kg',0.000),('120','Piel de Uva Granular','MPP','','',NULL,'kg',0.000),('121','Pitahaya Rodajas','MPP','','',NULL,'kg',0.000),('122','Curcuma Polvo','MPP','','',NULL,'kg',0.000),('123','Fresa Deshidratada','MPP','','',NULL,'kg',0.000),('124','Noni En Polvo','MPP','','',NULL,'kg',0.000),('125','Ahuyama en Escamas','MPP','','',NULL,'kg',0.000),('126','Tomate Deshiadratado En Polvo','MPP','','',NULL,'kg',0.000),('127','Limon Granular','MPP','','',NULL,'kg',0.000),('128','Toronja Granular','MPP','','',NULL,'kg',0.000),('129','Banano Deshidratado Trozos','MPP','','',NULL,'kg',0.000),('13','Noni','MPF','','',NULL,'kg',0.000),('130','Cilantro Deshidratado Polvo','MPP','','',NULL,'kg',0.000),('131','Servicio De Maquila','MPP','','',NULL,'kg',0.000),('132','Remolacha Granular','MPP','','',NULL,'kg',0.000),('133','Ciruela En polvo','MPP','','',NULL,'kg',0.000),('134','Cajas pequeñas','Insu','','',NULL,'kg',0.000),('135','Borojo Deshidratado','MPP','','',NULL,'kg',0.000),('136','Naranja Rodajas','MPP','','',NULL,'kg',0.000),('137','Guayaba Rodajas','MPP','','',NULL,'kg',0.000),('138','Cajas medianas','Insu','','',NULL,'kg',0.000),('139','Cajas grandes','Insu','','',NULL,'kg',0.000),('14','Cereza almibar','MPP','','',NULL,'kg',0.000),('140','Cajas de exportación','Insu','','',NULL,'kg',0.000),('141','Cajas de barras dispensadoras','Insu','','',NULL,'kg',0.000),('142','Cajas de barras maestro','Insu','','',NULL,'kg',0.000),('143','Desinfectante','Insu','','',NULL,'kg',0.000),('15','Breva en almibar','MPP','','',NULL,'kg',0.000),('16','Guayaba','MPF','','',NULL,'kg',0.000),('17','Toronja','MPF','','',NULL,'kg',0.000),('18','Limon','MPF','','',NULL,'kg',0.000),('19','Naranja','MPF','','',NULL,'kg',0.000),('20','Agraz','MPF','','',NULL,'kg',0.000),('21','Feijoa','MPF','','',NULL,'kg',0.000),('22','Guanabana','MPF','','',NULL,'kg',0.000),('23','Melon','MPF','','',NULL,'kg',0.000),('24','Maracuya','MPF','','',NULL,'kg',0.000),('25','Arandano','MPP','','',NULL,'kg',0.000),('26','Datiles','MPF','','',NULL,'kg',0.000),('27','Chachafruto','MPF','','',NULL,'kg',0.000),('28','Piel de Uva','MPF','','',NULL,'kg',0.000),('29','Uva Pasa','MPP','','',NULL,'kg',0.000),('30','Lulo','MPF','','',NULL,'kg',0.000),('31','Manzana','MPF','','',NULL,'kg',0.000),('32','Pera','MPF','','',NULL,'kg',0.000),('33','Durazno','MPF','','',NULL,'kg',0.000),('34','Aguacate','MPF','','',NULL,'kg',0.000),('35','Tomate Chonto','MPF','','',NULL,'kg',0.000),('36','Azucar','MPP','','',NULL,'kg',0.000),('37','Coco Hojuelas Blanco Cuticula','MPP','','',NULL,'kg',0.000),('39','Cascara de Mango','MPF','','',NULL,'kg',0.000),('40','Araza','MPF','','',NULL,'kg',0.000),('41','Anon','MPF','','',NULL,'kg',0.000),('42','Coco Hojuela Acaramelado','MPP','','',NULL,'kg',0.000),('43','Curuba','MPF','','',NULL,'kg',0.000),('44','Frambruesa','MPF','','',NULL,'kg',0.000),('45','Granadilla','MPF','','',NULL,'kg',0.000),('46','Mandarina','MPF','','',NULL,'kg',0.000),('47','Mangostan','MPF','','',NULL,'kg',0.000),('48','Papayuela','MPF','','',NULL,'kg',0.000),('49','Zapote','MPF','','',NULL,'kg',0.000),('50','Almendras','MPP','','',NULL,'kg',0.000),('51','Lechuga','MPF','','',NULL,'kg',0.000),('52','Calabacin (Zuchini)','MPF','','',NULL,'kg',0.000),('53','Acelga','MPF','','',NULL,'kg',0.000),('54','Cohombro','MPF','','',NULL,'kg',0.000),('55','Habichuela','MPF','','',NULL,'kg',0.000),('56','Repollitas','MPF','','',NULL,'kg',0.000),('57','Berro','MPF','','',NULL,'kg',0.000),('58','Semilla de amapola','MPP','','',NULL,'kg',0.000),('59','Remolacha','MPF','','',NULL,'kg',0.000),('60','Uva','MPF','','',NULL,'kg',0.000),('61','Champiñones','MPF','','',NULL,'kg',0.000),('62','Pimenton','MPF','','',NULL,'kg',0.000),('63','Ahuyama','MPF','','',NULL,'kg',0.000),('64','Espinaca ','MPF','','',NULL,'kg',0.000),('65','Zanahoria','MPF','','',NULL,'kg',0.000),('66','Berenjena','MPF','','',NULL,'kg',0.000),('67','Guatila','MPF','','',NULL,'kg',0.000),('68','Rabano','MPF','','',NULL,'kg',0.000),('69','Aji','MPF','','',NULL,'kg',0.000),('70','Arverja','MPF','','',NULL,'kg',0.000),('71','Alcachofa','MPF','','',NULL,'kg',0.000),('72','Platano Harton','MPF','','',NULL,'kg',0.000),('73','Puerro','MPF','','',NULL,'kg',0.000),('74','Brocoli','MPF','','',NULL,'kg',0.000),('75','Apio','MPF','','',NULL,'kg',0.000),('76','Coliflor','MPF','','',NULL,'kg',0.000),('77','Esparragos','MPF','','',NULL,'kg',0.000),('78','Pepino','MPF','','',NULL,'kg',0.000),('79','Yacon','MPF','','',NULL,'kg',0.000),('80','Ñame','MPF','','',NULL,'kg',0.000),('81','Repollo','MPF','','',NULL,'kg',0.000),('82','Papa','MPF','','',NULL,'kg',0.000),('83','Albahaca','MPP','','',NULL,'kg',0.000),('84','Laurel','MPP','','',NULL,'kg',0.000),('85','Oregano','MPP','','',NULL,'kg',0.000),('86','Paprika 0%','MPP','','',NULL,'kg',0.000),('87','Ajo','MPP','','',NULL,'kg',0.000),('88','Comino Molido','MPP','','',NULL,'kg',0.000),('89','Cilantro','MPP','','',NULL,'kg',0.000),('90','Perejil','MPP','','',NULL,'kg',0.000),('91','Pimienta Molida (Blanca)','MPP','','',NULL,'kg',0.000),('92','Nuez Moscada','MPP','','',NULL,'kg',0.000),('93','Jengibre','MPP','','',NULL,'kg',0.000),('94','Cebolla','MPP','','',NULL,'kg',0.000),('95','Tomillo','MPP','','',NULL,'kg',0.000),('96','Semillas de Cilantro Molida','MPP','','',NULL,'kg',0.000),('97','prueba borrador','MPP','','','','kg',7.000),('98','Canela','MPP','','','','kg',0.000),('99','Curcuma','MPP','','',NULL,'kg',0.000),('D0616','fresa trozos','MPP','','','','kg',30867.000),('D110','piña cubos','MPP','','','','kg',16000.000),('D203','Banano mitades','MPP','','','','kg',8283.000);
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidas_variables_proceso`
--

DROP TABLE IF EXISTS `medidas_variables_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medidas_variables_proceso` (
  `id` varchar(13) NOT NULL,
  `variable` varchar(20) DEFAULT NULL,
  `valor` decimal(12,4) DEFAULT NULL,
  `observaciones` text,
  `tiempo_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidas_variables_proceso`
--

LOCK TABLES `medidas_variables_proceso` WRITE;
/*!40000 ALTER TABLE `medidas_variables_proceso` DISABLE KEYS */;
/*!40000 ALTER TABLE `medidas_variables_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mil_std`
--

DROP TABLE IF EXISTS `mil_std`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mil_std` (
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `muestras` int(11) NOT NULL,
  KEY `desde` (`desde`,`hasta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mil_std`
--

LOCK TABLES `mil_std` WRITE;
/*!40000 ALTER TABLE `mil_std` DISABLE KEYS */;
/*!40000 ALTER TABLE `mil_std` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes` (
  `orden` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(20) NOT NULL,
  `idmat` varchar(20) NOT NULL,
  `cantidad_kg` decimal(9,0) NOT NULL,
  `pedido_cliente` varchar(50) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `precio_venta` decimal(12,3) NOT NULL,
  `p_uso_hornos` decimal(5,3) NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `estado` enum('abierta','cerrada','en proceso') DEFAULT NULL,
  `fecha_despacho` datetime DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  PRIMARY KEY (`orden`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (2,'91499686-5','D203',200,'121','2018-05-19 00:00:00',2000000.000,0.000,'2018-05-20 00:00:00','abierta',NULL,NULL),(3,'98473570-2','D0616',100,'66558','2018-05-20 00:00:00',4600000.000,0.000,'2018-05-18 00:00:00','cerrada','2018-05-26 00:00:00',NULL),(5,'91499686-5','119',50,'2','2018-07-04 00:00:00',42000.000,1.000,'2018-07-10 00:00:00','abierta','2018-07-08 00:00:00','2018-07-10 00:00:00'),(6,'98473570-2','101',650,'','2018-07-08 00:00:00',23000.000,0.000,'2018-07-25 00:00:00','abierta','2018-07-10 00:00:00','2018-07-25 00:00:00'),(7,'91499686-5','104',500,'1','2018-07-05 00:00:00',45000.000,2.000,'2018-07-20 00:00:00','abierta','2018-07-08 00:00:00','2018-07-30 00:00:00'),(8,'900380814','D110',500,'47772','2018-07-17 00:00:00',18500000.000,0.000,'2018-07-31 00:00:00','abierta',NULL,NULL);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_consumo_insumos`
--

DROP TABLE IF EXISTS `ordenes_consumo_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_consumo_insumos` (
  `idconsumo` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(11) NOT NULL,
  `idmat` varchar(20) NOT NULL,
  `cantidad` decimal(9,3) NOT NULL,
  `unidad` varchar(5) NOT NULL,
  `costo` decimal(12,3) NOT NULL,
  PRIMARY KEY (`idconsumo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_consumo_insumos`
--

LOCK TABLES `ordenes_consumo_insumos` WRITE;
/*!40000 ALTER TABLE `ordenes_consumo_insumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes_consumo_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_costos_indirectos`
--

DROP TABLE IF EXISTS `ordenes_costos_indirectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_costos_indirectos` (
  `idind` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `valor` decimal(12,3) DEFAULT NULL,
  `desde` date DEFAULT NULL,
  `hasta` date DEFAULT NULL,
  `doc_ref` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idind`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_costos_indirectos`
--

LOCK TABLES `ordenes_costos_indirectos` WRITE;
/*!40000 ALTER TABLE `ordenes_costos_indirectos` DISABLE KEYS */;
INSERT INTO `ordenes_costos_indirectos` VALUES (1,'energia',150000.000,'2018-05-01','2018-05-31','niguno'),(2,'agua',3000.000,NULL,NULL,''),(3,'ARRENDAMIENTO',7650000.000,'2018-07-01','2018-07-31','CUANTA DE COBRO');
/*!40000 ALTER TABLE `ordenes_costos_indirectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_estado`
--

DROP TABLE IF EXISTS `ordenes_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_estado` (
  `orden` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`orden`,`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_estado`
--

LOCK TABLES `ordenes_estado` WRITE;
/*!40000 ALTER TABLE `ordenes_estado` DISABLE KEYS */;
INSERT INTO `ordenes_estado` VALUES (2,'2018-05-20 16:14:34','abierta'),(2,'2018-05-19 15:25:01','cerrada'),(2,'2018-05-19 15:10:38','en proceso'),(3,'2018-05-31 02:37:08','cerrada'),(3,'2018-05-27 11:45:15','en proceso'),(4,'2018-07-02 23:41:13','en proceso');
/*!40000 ALTER TABLE `ordenes_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_pedido`
--

DROP TABLE IF EXISTS `ordenes_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_pedido` (
  `orden` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_recepcion` datetime DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `terminado` varchar(1) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `idmat` varchar(20) DEFAULT NULL,
  `cantidad_prod_kg` decimal(15,4) DEFAULT NULL,
  `producido_kg` decimal(15,3) DEFAULT NULL,
  `rendimiento` decimal(5,2) DEFAULT NULL,
  `idasoc` varchar(20) DEFAULT NULL,
  `observaciones` text,
  `orden_stock` varchar(1) DEFAULT NULL,
  `finalizada` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`orden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_pedido`
--

LOCK TABLES `ordenes_pedido` WRITE;
/*!40000 ALTER TABLE `ordenes_pedido` DISABLE KEYS */;
INSERT INTO `ordenes_pedido` VALUES (1,'2017-09-27 00:00:00','2017-09-27 00:00:00','','ahurtado','106',45.0000,0.000,23.00,NULL,NULL,NULL,NULL),(3,'2017-10-09 00:00:00','2017-10-09 00:00:00','','mmejia','01',400.0000,0.000,7.00,'10102428-3','None','',''),(4,'2017-10-09 00:00:00','2017-10-09 00:00:00','','mmejia','',200.0000,0.000,0.00,'','kdflklkdflkfd  fdlk fdl lk  fdl l kfdl k lf lkdf lk klfd lkf lkfdlk','','X');
/*!40000 ALTER TABLE `ordenes_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_pedido_tercero`
--

DROP TABLE IF EXISTS `ordenes_pedido_tercero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_pedido_tercero` (
  `orden` int(11) DEFAULT NULL,
  `idasoc` varchar(20) DEFAULT NULL,
  `cantidad_prod_kg` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_pedido_tercero`
--

LOCK TABLES `ordenes_pedido_tercero` WRITE;
/*!40000 ALTER TABLE `ordenes_pedido_tercero` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes_pedido_tercero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_produccion`
--

DROP TABLE IF EXISTS `ordenes_produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_produccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(11) DEFAULT NULL,
  `operacion` varchar(45) DEFAULT NULL,
  `cantidad_kg` decimal(9,0) DEFAULT NULL,
  `producto_terminado` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_produccion`
--

LOCK TABLES `ordenes_produccion` WRITE;
/*!40000 ALTER TABLE `ordenes_produccion` DISABLE KEYS */;
INSERT INTO `ordenes_produccion` VALUES (7,2,'1',20,1,'2018-05-19 11:39:35'),(8,2,'1',20,1,'2018-05-19 11:39:39'),(9,3,'2',20,0,'2018-05-27 11:50:33'),(10,4,'2',20,0,'2018-05-31 04:42:20'),(11,4,'2',20,0,'2018-05-31 04:42:28'),(12,4,'2',20,0,'2018-05-31 04:42:35'),(13,4,'2',20,0,'2018-05-31 04:42:48'),(14,4,'2',20,0,'2018-05-31 04:43:22'),(15,4,'3',20,0,'2018-05-31 05:11:34'),(16,4,'3',20,0,'2018-05-31 05:11:40'),(17,4,'3',20,0,'2018-05-31 05:11:47'),(18,4,'3',20,0,'2018-05-31 05:11:53'),(19,4,'3',20,0,'2018-05-31 05:12:01'),(20,4,'3',20,0,'2018-05-31 05:12:09'),(21,4,'3',20,0,'2018-05-31 05:12:16'),(22,4,'6',20,0,'2018-05-31 05:12:26'),(23,4,'6',20,0,'2018-05-31 05:12:33');
/*!40000 ALTER TABLE `ordenes_produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_registro`
--

DROP TABLE IF EXISTS `ordenes_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_registro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(11) NOT NULL,
  `operacion` varchar(50) NOT NULL,
  `componente` varchar(50) NOT NULL,
  `cantidad` decimal(20,10) NOT NULL,
  `costos` decimal(20,10) NOT NULL,
  `notas` text NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_registro`
--

LOCK TABLES `ordenes_registro` WRITE;
/*!40000 ALTER TABLE `ordenes_registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `id_personal` varchar(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tarifa` decimal(14,2) DEFAULT NULL,
  `notas` text,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES ('10031189','Andres Hurtado Lopez',0.00,NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pruebas_laboratorio`
--

DROP TABLE IF EXISTS `pruebas_laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pruebas_laboratorio` (
  `idprlab` varchar(20) NOT NULL,
  `descripcion` text,
  `unidad` varchar(5) DEFAULT NULL,
  `min` decimal(12,4) DEFAULT NULL,
  `max` decimal(12,4) DEFAULT NULL,
  `catalogo` varchar(20) DEFAULT NULL,
  `objetivo` decimal(12,3) DEFAULT NULL,
  `cliente` varchar(20) DEFAULT NULL,
  `tipo_producto` varchar(20) DEFAULT NULL,
  `tipo_prueba` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idprlab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pruebas_laboratorio`
--

LOCK TABLES `pruebas_laboratorio` WRITE;
/*!40000 ALTER TABLE `pruebas_laboratorio` DISABLE KEYS */;
INSERT INTO `pruebas_laboratorio` VALUES ('PR001','Granulometriapina tamiz #1','Gr',0.0000,23.0000,'C2',0.000,NULL,'None','None'),('PR002','otra prueba sin catalogo','Kg',0.0000,200.0000,NULL,50.000,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pruebas_laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_turnos`
--

DROP TABLE IF EXISTS `registro_turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_turnos` (
  `fecha_turno` date NOT NULL,
  `turno` enum('1','2','3') NOT NULL,
  `idtercero` varchar(20) NOT NULL,
  `desde` datetime NOT NULL,
  `hasta` datetime NOT NULL,
  PRIMARY KEY (`fecha_turno`,`turno`,`idtercero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_turnos`
--

LOCK TABLES `registro_turnos` WRITE;
/*!40000 ALTER TABLE `registro_turnos` DISABLE KEYS */;
INSERT INTO `registro_turnos` VALUES ('2018-04-21','1','70950653','2018-04-21 06:00:00','2018-04-21 14:00:00'),('2018-05-25','1','29136530','2018-05-20 12:02:00','2018-05-24 00:00:00'),('2018-05-25','1','860712584-0','2018-05-25 12:02:00','2018-05-26 00:00:00'),('2018-05-25','1','91499686-5','2018-05-25 12:02:00','2018-05-26 00:00:00'),('2018-07-04','1','1017157243','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','1087996315','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','1088034581','2018-07-04 08:30:00','2018-07-04 17:00:00'),('2018-07-04','1','1088268716','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','1088273740','2018-07-04 06:00:00','2018-07-04 17:00:00'),('2018-07-04','1','1088282465','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','1088335694','2018-07-04 06:00:00','2018-07-04 14:00:00'),('2018-07-04','1','1094942347','2018-07-04 08:30:00','2018-07-04 17:00:00'),('2018-07-04','1','42018774','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','42125663','2018-07-04 06:00:00','2018-07-04 14:00:00'),('2018-07-04','1','42157275','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','42161012','2018-07-04 08:00:00','2018-07-04 16:30:00'),('2018-07-04','1','42161890','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','1','64558088','2018-07-04 06:00:00','2018-07-04 18:00:00'),('2018-07-04','2','1090076731','2018-07-04 11:00:00','2018-07-04 21:00:00'),('2018-07-04','2','1093226385','2018-07-04 11:00:00','2018-07-04 21:00:00'),('2018-07-04','2','1114210478','0018-07-04 09:00:00','2018-07-04 21:00:00'),('2018-07-04','2','42126025','2018-07-04 11:00:00','2018-07-04 21:00:00'),('2018-07-04','2','42145615','2018-07-04 13:00:00','2018-07-04 21:00:00'),('2018-07-04','2','42156782','2018-07-04 11:00:00','2018-07-04 21:00:00'),('2018-07-04','3','1097407334','2018-07-04 21:00:00','2018-07-04 06:00:00'),('2018-07-04','3','1097721153','2018-07-04 21:00:00','2018-07-04 06:00:00'),('2018-07-04','3','42019522','2018-07-04 21:00:00','2018-07-04 06:00:00'),('2018-07-04','3','42147686','2018-07-04 21:00:00','2018-07-04 06:00:00');
/*!40000 ALTER TABLE `registro_turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_variables`
--

DROP TABLE IF EXISTS `registro_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_variables` (
  `rvariable` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `variable` varchar(20) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `observaciones` text,
  `user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rvariable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_variables`
--

LOCK TABLES `registro_variables` WRITE;
/*!40000 ALTER TABLE `registro_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_laboratorio`
--

DROP TABLE IF EXISTS `resultados_laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados_laboratorio` (
  `muestra` int(11) NOT NULL AUTO_INCREMENT,
  `idprlab` varchar(20) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `unidad` varchar(5) DEFAULT NULL,
  `catalogo` varchar(20) DEFAULT NULL,
  `valor_catalogo` varchar(50) DEFAULT NULL,
  `descripcion_catalogo` text,
  `fecha` datetime DEFAULT NULL,
  `docmat` int(11) DEFAULT NULL COMMENT 'Almacena los resultados de las pruebas de laboratorio',
  `tipo_resultado` varchar(1) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`muestra`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_laboratorio`
--

LOCK TABLES `resultados_laboratorio` WRITE;
/*!40000 ALTER TABLE `resultados_laboratorio` DISABLE KEYS */;
INSERT INTO `resultados_laboratorio` VALUES (5,'PR002',234,'','','','','2017-07-22 00:00:00',0,'N','sdfsd','ahurtado'),(6,'PR001',0,'','C2','OP3','','2017-07-22 00:00:00',0,'C','fjf','ahurtado'),(7,'PR001',0,'','C2','OP3','','2017-07-22 00:00:00',0,'C','asdfasdf','ahurtado'),(8,'PR002',43,'','','','','2017-07-22 00:00:00',0,'N','asdf','ahurtado'),(9,'PR001',0,'','C2','OP4','','2017-07-22 00:00:00',0,'C','dghd','ahurtado'),(10,'PR001',0,'','C2','OP4','','2017-07-22 00:00:00',0,'C','dghdfg','ahurtado'),(11,'PR001',0,'','C2','OP4','','2017-07-22 06:06:06',0,'C','dghdfg','ahurtado'),(12,'PR001',0,'','C2','OP5','','2017-07-22 21:32:20',0,'C','asfdads','ahurtado'),(13,'PR001',0,'','C2','OP4','','2017-07-22 09:09:09',0,'C','dghdfg','ahurtado'),(14,'PR001',0,'','C2','OP4','','2017-07-22 08:08:08',0,'C','dghdfg','ahurtado'),(15,'PR001',0,'','C2','OP4','','2017-07-22 07:07:07',0,'C','dghdfg','ahurtado');
/*!40000 ALTER TABLE `resultados_laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terceros`
--

DROP TABLE IF EXISTS `terceros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terceros` (
  `idtercero` varchar(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `salario` decimal(14,2) DEFAULT NULL,
  `notas` text,
  `tipo` varchar(4) NOT NULL,
  PRIMARY KEY (`idtercero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terceros`
--

LOCK TABLES `terceros` WRITE;
/*!40000 ALTER TABLE `terceros` DISABLE KEYS */;
INSERT INTO `terceros` VALUES ('10068815','FRANCISCO LEÓN SAMIR CASTAÑO BARDAWIL',0.00,'','CLNT'),('10092678','FRANCISCO HUBERTO VALENCIA GRAJALES',0.00,'','PROV'),('10102428','CARLOS ARTURO BEDOYA RAMIREZ',0.00,'','PROV'),('10108974','HUGO DE JESUS SALADARRIAGA RODRIGUEZ',0.00,'','PROV'),('1017157243','YURANI ANDREA SEPULVEDA DUQUE ',825347.00,'','EMPL'),('10261561','GERMAN GAVIRIA VILLA',0.00,'','CLNT'),('10274014','CARLOS ALBERTO VALENCIA RENDON',825348.00,'','EMPL'),('10283685','EDUARDO VELEZ ARBELADEZ',0.00,'','PROV'),('10292728','ALEJANDRO ALVAREZ QUINTERO',0.00,'','CLNT'),('1053800308','LUISA FERNANDA MARTINEZ PEREZ ',1444105.00,'','EMPL'),('1087996315','YENY ESMERALDA MARULANDA VALLEJO',914137.00,'','EMPL'),('1087997558','VIVIANA MARCELA GALLEGO LOAIZA ',825347.00,'','EMPL'),('1088034581','BRAYAN ANDRES HERRERA BUSTAMANTE ',825348.00,'APRENDIZ CALIDAD','EMPL'),('1088035690','XIOMARA ANDREA HERRERA MURILLO ',1444105.00,'','EMPL'),('1088267877','JOSE ALEJANDRO FLOREZ ARCILA ',0.00,'','CLNT'),('1088268716','LEYDY JOHANA GAÑAN GAÑAN',825347.00,'','EMPL'),('1088273740','JULIAN DAVID CARMONA REYES ',835322.00,'','EMPL'),('1088282465','MARIA YENY DIAZ ARIAS ',825347.00,'','EMPL'),('1088316251','MARIA BERLADIS SUAREZ LOPEZ ',825347.00,'','EMPL'),('1088335694','ANGELICA MARIA ARENAS LOPEZ ',825348.00,'','EMPL'),('1090076731','MARIBEL HINCAPIE VELASCO',825347.00,'','EMPL'),('1093226385','LUISA FERNANDA GIRALDO LOPEZ ',914136.00,'','EMPL'),('1094903413','SANDRA VIVIANA MARIN OSORNO ',1035450.00,'','EMPL'),('1094942347','ERIKA CAMILA CASTAÑO VERA',825348.00,'APRENDIZ PROYECTO','EMPL'),('1097407334','ANGELA VANESSA GUEVARA ROSSO ',825348.00,'','EMPL'),('1097721153','MARTHA CECILIA JURADO GRISALES ',825347.00,'','EMPL'),('1114210478','YESENIA MARIN NIETO',825347.00,'','EMPL'),('11259559','CARLOS ROJAS',0.00,'','PROV'),('1193520056','JUAN DAVID ORTEGA ROMERO',390621.00,'APRENDIZ ETAPA LECTIVA','EMPL'),('12533246','LEONARDO PERDOMO SALAS',0.00,'','PROV'),('19220832','FABIAN LOZADA',0.00,'','PROV'),('25249023','LEYDY JHOJANA RESTREPO VARGAS',825347.00,'','EMPL'),('29136530','LUZ MIRELLA MEJIA',0.00,NULL,'PROV'),('33965713','ROSA ENEIDA QUINAYAS JACOY ',825347.00,'','EMPL'),('34065622','DIANA LISBETH MONTOYA ALZATE ',825348.00,'','EMPL'),('34066043','MILEVIS LUZ MONTESINO VILLADIEGO ',825347.00,'','EMPL'),('42018774','ANA LILIA PINEDA ZAPATA',825348.00,'','EMPL'),('42019522','OLGA LUCIA ORTIZ NIETO',825347.00,'','EMPL'),('42019624','JESSICA LISBETH GAVIRIA RAMIREZ ',0.00,'','CLNT'),('42077259','ROSA AMELIA PINEDA LOPEZ ',0.00,'','CLNT'),('42087028','CLAUDIA INES GONZALEZ LOPEZ',0.00,NULL,'PROV'),('42112353','GLORIA MILENA LOPEZ BEDOYA',0.00,'','PROV'),('42125663','MARICELY GUZMAN ARIAS',825347.00,'','EMPL'),('42126025','SANDRA MILENA GUAPACHA ORTIZ',825347.00,'','EMPL'),('42128075','JACQUELINE GRISALES RODRIGUEZ ',1544105.00,'','EMPL'),('42132543','ANA MARCELA MANTILLA BETANCOURT',0.00,'','CLNT'),('42145615','GLADIS CORRALES VILLADA',825348.00,'','EMPL'),('42147686','LUZ ADRIANA TAFUR GIRALDO ',825347.00,'','EMPL'),('42156782','LINA MARCELA ARIAS BEDOYA',825347.00,'','EMPL'),('42157275','YENIRLADI GAÑAN GAÑAN ',825347.00,'','EMPL'),('42158465','LIDA MAYERLY LANCHEROS MUÑOZ ',825347.00,'','EMPL'),('42161012','LINA MARIA RANGEL ORTIZ ',825347.00,'APRENDIZ PROYECTO','EMPL'),('42161890','MARÍA ELVIA TORO ARBOLEDA ',825347.00,'','EMPL'),('64558088','SILVIA ELENA VITOLA GOMEZ ',825347.00,'','EMPL'),('70906190','HENRY ALONSO ARCILA OROZCO',825347.00,'','EMPL'),('70950653','JOSE RAUL VILLEGAS',0.00,'PIÑA','PROV'),('75046659','HECTOR DIEGO GOMEZ MEJIA',0.00,'FRESA','PROV'),('76381181','NATURAL NUTRITION SPA ',0.00,'','CLNT'),('79131530','CARLOS JULIO TORRES GARAY',0.00,'','PROV'),('800024095','MANITOBA LIMITADA ',0.00,'','CLNT'),('800146643','CONGRUPO SA ',0.00,'','CLNT'),('800200243','DISPRONAT SAS',0.00,'','CLNT'),('800251370','LA DESPENSA NATURAL SAS ',0.00,'','CLNT'),('80096454','FREDY ANDRES GUTIERREZ CABUYO(DIEGO BOGOTA)',0.00,'','PROV'),('811036030','COMPAÑÍA NACIONAL DE CHOCOLATES SAS ',0.00,'','CLNT'),('815000624','DEL ALBA SA',0.00,'','CLNT'),('817000705','COLOMBINA DEL CAUCA SA ',0.00,'','CLNT'),('830006735','ALIMENTOS POLAR COLOMBIA SAS ',0.00,'','CLNT'),('830058415','ANTARDICO SA',0.00,'','CLNT'),('860026759','CARTONES AMERICA SA CAME',0.00,'','PROV'),('860511541','COMESTIBLES ALFA LTDA',0.00,'','PROV'),('860712584','MATEO MARQUEZ SANCHEZ',0.00,'','PROV'),('890301884','COLOMBINA SA ',0.00,'','CLNT'),('890326050','AGRICOLA HIMALAYA SA ',0.00,'','CLNT'),('890900535','KELLLOGG DE COLOMBIA SA ',0.00,'','CLNT'),('900086102','FRUDESCOL LTDA',0.00,'','CLNT'),('900099819','DISTRIBUIDORA HISTRA SAS ',0.00,'','CLNT'),('900124107','CINDY COCO SAS',0.00,'','PROV'),('900124794','ALIMENTOS SUQA SAS',0.00,'','PROV'),('900151019','CI XPOFRUITS LTDA ',0.00,'','CLNT'),('900285758','CI NUTREO SAS ',0.00,'','CLNT'),('900371519','COALUM SAS',0.00,'','CLNT'),('900380814','DIPSA FOOD ENERGY REPRESENTACIONES SAS',0.00,'','CLNT'),('900409034','TERRAFERTIL COLOMBIA SAS',0.00,'','CLNT'),('900467903','VITAMARKET SAS ',0.00,'','CLNT'),('900473144','CONNPLANTS SAS',0.00,'','PROV'),('900521807','GLOBAL OPERADORA HOTELERA SAS ',0.00,'','CLNT'),('900543350','FAIR FRUITS SAS',0.00,'','PROV'),('900560551','SERO COLOMBIA S.A.S',0.00,'','PROV'),('900594245','SERVICIO Y TECNOLOGIA EN ALIMENTOS SAS ',0.00,'','CLNT'),('900687446','PACIFICOCO COLOMBIA SAS',0.00,'','PROV'),('900767263','FLP PROCESADOS SAS',0.00,'','PROV'),('900830404','COMERCIALIZADO DE PRODUCTOS AGRICOLAS DF SAS',0.00,'','PROV'),('900932269','ALIFRUIT SAS',0.00,'','CLNT'),('901072727','PYF INVERSIONES SAS ',0.00,'','CLNT'),('901127618','UBA PARAISO FRUTAL SAS ',0.00,'','CLNT'),('91499686','AGRO BARBOSA',0.00,'','CLNT'),('98473570','ELKIN FERNANDO ORREGO ZULUAGA (INDUBOLSAS)',0.00,'','PROV'),('9860095','URIEL OSWALDO GUARIN SALGUERO',825347.00,'','EMPL');
/*!40000 ALTER TABLE `terceros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajo_mantenimiento`
--

DROP TABLE IF EXISTS `trabajo_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajo_mantenimiento` (
  `tmant` int(11) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(50) DEFAULT NULL,
  `solicitado` datetime DEFAULT NULL,
  `programado` datetime DEFAULT NULL,
  `iniciado` datetime DEFAULT NULL,
  `finalizado` datetime DEFAULT NULL,
  `duracion` decimal(10,0) DEFAULT NULL,
  `detalles` text,
  `user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tmant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajo_mantenimiento`
--

LOCK TABLES `trabajo_mantenimiento` WRITE;
/*!40000 ALTER TABLE `trabajo_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajo_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajo_mantenimiento_materiales`
--

DROP TABLE IF EXISTS `trabajo_mantenimiento_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajo_mantenimiento_materiales` (
  `tmant` int(11) NOT NULL AUTO_INCREMENT,
  `idmat` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `unidad` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`tmant`,`idmat`,`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajo_mantenimiento_materiales`
--

LOCK TABLES `trabajo_mantenimiento_materiales` WRITE;
/*!40000 ALTER TABLE `trabajo_mantenimiento_materiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajo_mantenimiento_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajo_mantenimiento_tareas`
--

DROP TABLE IF EXISTS `trabajo_mantenimiento_tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajo_mantenimiento_tareas` (
  `tmant` int(11) NOT NULL AUTO_INCREMENT,
  `tarea` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `horas` decimal(10,0) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`tmant`,`tarea`,`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajo_mantenimiento_tareas`
--

LOCK TABLES `trabajo_mantenimiento_tareas` WRITE;
/*!40000 ALTER TABLE `trabajo_mantenimiento_tareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajo_mantenimiento_tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_history`
--

DROP TABLE IF EXISTS `user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_history` (
  `log_id` varchar(36) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `data` longtext,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_history_user` (`user`),
  KEY `user_history_action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_history`
--

LOCK TABLES `user_history` WRITE;
/*!40000 ALTER TABLE `user_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `full_name` mediumtext,
  `email` varchar(255) DEFAULT NULL,
  `contact_address` mediumtext,
  `telephone` mediumtext,
  `notes` mediumtext,
  `status` varchar(1) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `session_key` varchar(128) DEFAULT NULL,
  `session_stamp` int(11) DEFAULT NULL,
  `session_data` text,
  `password_recover_id` varchar(128) DEFAULT NULL,
  `data_group` varchar(36) DEFAULT NULL,
  `user_data_group` varchar(36) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user`),
  KEY `session_key` (`session_key`),
  KEY `password_recover_id` (`password_recover_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admonanv',NULL,'Leidy','contabilidad@narnajaverde.com','','3218527363','','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),('ahurtado','$2b$12$9ka/b3u6AhTQhBjQ3RFkKOfa16xmxoWihhlw5eFAvUm2RIZ9A.Zhm','Andres Hurtado Lopez','andres.hurtado.lopez@gmail.com','Calle 12 # 23-16','+57 6 3443804\n+57 313 746 6668','prueba de las notas','1','R','35050a05-95d7-4a50-a36e-09c8ca343302',NULL,NULL,NULL,'+57 6 3443804\n+57 313 746 6668','',NULL),('cvalencia','$2b$12$fDTZMOY7Mee/OgZoYSgrzeIzpMig8dgt8a/dmSCqHa3rwPVCs1lji','carlos alberto valencia','','','','','1','R',NULL,NULL,NULL,NULL,'','',''),('hviscue','$2b$12$KA1tNTMfZHfOfEGMPOsJIupEwXAozj9goKR9T5MN9.rI3GbZqPOGS','hector viscue','ddjasd@hotmail.com','','','','1',NULL,'d2efaaea-265d-4455-a59e-ac9e81dd19a1',NULL,NULL,NULL,NULL,NULL,''),('jcarmona','$2b$12$P7kIWd8T31EwVLc3MKBPceNFdpupqY9CRNlmFviwFMXCUqcqb3ryy','Julian Carmona','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('jgaviria','$2b$12$RIf8GLO0OYKVbKhg1GDU2.Q372WbApKdyJPh1XTLSguaoLMLL3YyG','Jessica Gaviria ','recursoshumanos@naranjaverde.com','','3014205045','','1',NULL,'3bb7c264-49a2-4c7d-98fc-3e338bbcc559',NULL,NULL,NULL,NULL,NULL,''),('jgrisales','$2b$12$ljOE9dMrwGukgooAa8e5A.31A8Qdq5oLxcu4c9Y/MZqffUfYasjsG','jacqueline grisales rodriguez','j.grisales@naranjaverde.com','','','','1','R','7232d6d6-01d8-4667-bfe4-067d420a0869',NULL,NULL,NULL,'','','mantenimiento'),('lmartinez','$2b$12$XfOCXIVaYYoSSCupWrTU8OtBN4OBvpJJDBO/QtAxArq4VTaOMfbPm','Luisa Fernanda Martinez','produccion@naranjaverde.com','','3218527661','','1','R','47f3f3bd-d0fc-44ff-9256-62dd6a769e34',NULL,NULL,NULL,'3218527661','',NULL),('mmejia','$2b$12$J7cNC42K8w44bROH5zK1kOiHHT9zX6Onm7spYknSKFCmEoVZcGpIy','Martin Mejia','gerencia@naranjaverde.com','','','','1','R','ef34b36c-fc22-497e-b4c7-b0d529168de0',NULL,NULL,NULL,'','',NULL),('pcastaño','$2b$12$KtpjOgo9b5ECLKmQrjcaeO7/0zVvDn//WXV6LvI1ShZbvWY5mcP8C','Paola Castaño','desarrollo@naranjaverde.com','','','','1','R','b54c3191-dbe6-428e-92a9-c703999e64a4',NULL,NULL,NULL,'','',NULL),('vmarin','$2b$12$vZFEfijLim/HnIvTA5EYZ.uaZcHnSwwQndJgcxfWpemPQlgrWjJ1S','Viviana Marín','','','3226547063','','1','R','92166341-4b47-45d9-84c0-93f653e327ea',NULL,NULL,NULL,'3226547063','',NULL),('xherera',NULL,'Xiomara Herrera','calidad@naranjaverde.com','','','','1','R',NULL,NULL,NULL,NULL,'','',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_datagroups`
--

DROP TABLE IF EXISTS `users_datagroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_datagroups` (
  `user` varchar(20) NOT NULL,
  `data_group` varchar(36) NOT NULL,
  `view` tinyint(4) DEFAULT NULL,
  `update` tinyint(4) DEFAULT NULL,
  `create` tinyint(4) DEFAULT NULL,
  `delete` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user`,`data_group`),
  KEY `user_datagroup` (`user`,`data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_datagroups`
--

LOCK TABLES `users_datagroups` WRITE;
/*!40000 ALTER TABLE `users_datagroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_datagroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_secobjs`
--

DROP TABLE IF EXISTS `users_secobjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_secobjs` (
  `user` varchar(20) NOT NULL,
  `secobj` varchar(36) NOT NULL,
  PRIMARY KEY (`user`,`secobj`),
  KEY `user` (`user`,`secobj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_secobjs`
--

LOCK TABLES `users_secobjs` WRITE;
/*!40000 ALTER TABLE `users_secobjs` DISABLE KEYS */;
INSERT INTO `users_secobjs` VALUES ('admonanv','20'),('admonanv','21'),('ahurtado','0'),('ahurtado','1'),('ahurtado','18'),('ahurtado','19'),('ahurtado','2'),('ahurtado','20'),('ahurtado','21'),('ahurtado','22'),('ahurtado','23'),('ahurtado','24'),('ahurtado','25'),('ahurtado','26'),('ahurtado','27'),('ahurtado','28'),('ahurtado','29'),('ahurtado','30'),('ahurtado','31'),('ahurtado','32'),('ahurtado','33'),('ahurtado','35'),('ahurtado','36'),('ahurtado','9'),('cvalencia','15'),('cvalencia','58'),('cvalencia','59'),('cvalencia','60'),('ggaviria','15'),('ggaviria','58'),('ggaviria','60'),('jgrisales','0'),('jgrisales','1'),('jgrisales','10'),('jgrisales','11'),('jgrisales','12'),('jgrisales','13'),('jgrisales','14'),('jgrisales','15'),('jgrisales','16'),('jgrisales','17'),('jgrisales','18'),('jgrisales','19'),('jgrisales','2'),('jgrisales','20'),('jgrisales','21'),('jgrisales','22'),('jgrisales','23'),('jgrisales','24'),('jgrisales','25'),('jgrisales','26'),('jgrisales','27'),('jgrisales','28'),('jgrisales','29'),('jgrisales','3'),('jgrisales','30'),('jgrisales','31'),('jgrisales','32'),('jgrisales','33'),('jgrisales','34'),('jgrisales','35'),('jgrisales','36'),('jgrisales','37'),('jgrisales','38'),('jgrisales','39'),('jgrisales','4'),('jgrisales','40'),('jgrisales','41'),('jgrisales','42'),('jgrisales','43'),('jgrisales','44'),('jgrisales','45'),('jgrisales','46'),('jgrisales','47'),('jgrisales','48'),('jgrisales','49'),('jgrisales','5'),('jgrisales','50'),('jgrisales','51'),('jgrisales','52'),('jgrisales','53'),('jgrisales','54'),('jgrisales','55'),('jgrisales','56'),('jgrisales','57'),('jgrisales','58'),('jgrisales','59'),('jgrisales','6'),('jgrisales','60'),('jgrisales','61'),('jgrisales','62'),('jgrisales','63'),('jgrisales','64'),('jgrisales','65'),('jgrisales','7'),('jgrisales','8'),('jgrisales','9'),('lmartinez','1'),('lmartinez','10'),('lmartinez','11'),('lmartinez','12'),('lmartinez','13'),('lmartinez','14'),('lmartinez','15'),('lmartinez','16'),('lmartinez','17'),('lmartinez','18'),('lmartinez','19'),('lmartinez','2'),('lmartinez','21'),('lmartinez','22'),('lmartinez','23'),('lmartinez','24'),('lmartinez','25'),('lmartinez','26'),('lmartinez','27'),('lmartinez','29'),('lmartinez','3'),('lmartinez','30'),('lmartinez','31'),('lmartinez','32'),('lmartinez','33'),('lmartinez','34'),('lmartinez','35'),('lmartinez','36'),('lmartinez','37'),('lmartinez','38'),('lmartinez','39'),('lmartinez','4'),('lmartinez','40'),('lmartinez','42'),('lmartinez','43'),('lmartinez','47'),('lmartinez','48'),('lmartinez','49'),('lmartinez','50'),('lmartinez','51'),('lmartinez','52'),('lmartinez','53'),('lmartinez','54'),('lmartinez','55'),('lmartinez','56'),('lmartinez','57'),('lmartinez','58'),('lmartinez','59'),('lmartinez','6'),('lmartinez','60'),('lmartinez','61'),('lmartinez','62'),('lmartinez','63'),('lmartinez','64'),('lmartinez','65'),('lmartinez','7'),('lmartinez','8'),('lmartinez','9'),('mmejia','0'),('pcastaño','0'),('pcastaño','10'),('pcastaño','12'),('pcastaño','13'),('pcastaño','14'),('pcastaño','15'),('pcastaño','17'),('pcastaño','24'),('pcastaño','25'),('pcastaño','26');
/*!40000 ALTER TABLE `users_secobjs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uso_equipos`
--

DROP TABLE IF EXISTS `uso_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uso_equipos` (
  `ruso` int(11) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `inicial` varchar(1) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ruso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uso_equipos`
--

LOCK TABLES `uso_equipos` WRITE;
/*!40000 ALTER TABLE `uso_equipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `uso_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variables_proceso`
--

DROP TABLE IF EXISTS `variables_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variables_proceso` (
  `variable` varchar(20) NOT NULL,
  `descripcion` text,
  `min` decimal(12,4) DEFAULT NULL,
  `max` decimal(12,4) DEFAULT NULL,
  `alarma` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variables_proceso`
--

LOCK TABLES `variables_proceso` WRITE;
/*!40000 ALTER TABLE `variables_proceso` DISABLE KEYS */;
INSERT INTO `variables_proceso` VALUES ('TH001','Temperatura Horno #1',25.0000,80.0000,'');
/*!40000 ALTER TABLE `variables_proceso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-19  1:11:14
