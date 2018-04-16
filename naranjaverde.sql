-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: naranjaverde
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
INSERT INTO `equipos` VALUES ('F002','MOTOR AC 240','2018-01-17 12:59:00','fhfhj',0.000,0.000,'X','fghj','fhj','fhj','dfgh',NULL,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0\0�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�\Z�.#�\�H��[�ZÚ\�EK�\�ÉE\�w�\�����!/\�\��S�\"\"�\n�\�q\�\�Ζ=YI-:�͘�����\0\�\�\�In\�K�3Jci��\��4��O���|\�\�\�\\�?�j�\�%�ߍ�\�W���\03q\�cB\��Tu$\�\nU!�09�k̗:\�$���d7\�\0���\�V-\ZW���Gڄ��qO��O\�7��\�R�\��\0\�\�\�\� A\0�\�\Z�i�L~\�.J��e$/\�͞\�\�\�S�A\�\r�	\��\�vlF��1\Z�\0;��5\��\�^\�\�\�\�\�K��ZV��\�y\�\�&E䍤1Y\�d�pVi\�\�\� \�\���jW�8u\�Һ�0`8�\�b\\�$�M���\�.��Z+�\�\�\�\�{ǁ�\�El\�ӽI-܋r�4� ��\��\0�x\�\���j�o\�{u\r�\�W1c? $d�t�Q<�C�\�5ԑE\"1y\��:\�\�\"�]�g\�c��\�֧\�ɨ��u�\�J�3V������YOB� ӫ;Btm.2�\��ɬ\�	�i\�\�O\�e׈�B�J�\�\�Ϡ�\�r\�~F��4T��g\�%��#��\\�ČT�\�;�2\�m`\�Gխ�\�\�ycrA\��\��\0���Y:\�e\��\0}���V\�6�oB\\�\�ڪ\�vn^i�A8	��3\��hf[��϶\�Z43��F6��\�5gX�!\�4�euHǙ�c�8���\�g�ipsѴnQ\\\�s\�j�5���lo�|\�ϯ�A�rSC����I�V-�[����Rm_�\��@\�$\�u5^\���\'�\"K@�#\�0�\�\r�\�Z�T�[\���\�S\���Z$6�C�E%ü|L��\�Z��d\���I[�\0�\�E4S1H�\�;XJ�k�a<0\r�W�nef\�\��\�p�v\�T|$Х�\�1:|��Cd\�\�\�Rh�\0隦��T7��^��\'��\Z�iz�TW-�\�<z�ku{,\�,�#hnF}�u��\��\�g��h���F�\���\�񦨶\�\'U$\�\�Se�b�\�s�@X�r���&�Tt���쑣ƨ�\\�\�Gz5;����/$��\�^j�}�G#���P�^ڏ\�Y\�\�MN\��Ɇo���_/\\z�U\�\�Q�|<�N\�!W̊�\n�;����\��b!��@oL?j\�\�\��\���N�o\�R#WM{~�]EsV���U��	�\�\�̰8\��^jMy��\�o\�gŒ�P�����t�M�-T�H\�I�wtI�>��\�ҳ���>�.��j��@�\r\���`\�G|f�xtZ\�\�z�J�&ϟ%�9 ��sEi<!�izf�7T\�\�\�;[��.�w\�\�|d8\�Z�Fҷ��Q�\�\�\�\�Q^_\�\�n%�\�\Z\�\��DC\�6\�]�P`\�)�Ďr8\�f݋J\�\�\Z���=��)/e�mԩ;\�\���\�k��{(��S$1�X\�9�,\�RH\�x���x[W7א�^Z\�6.�bd`s�3�䞤S�(\�\�\��v\��X���\�\�r�\�2\'i\0\�=#M[\�\��d�u+�goEQ\�\�m,��K��cN���\�鹉?�k\�U\��>\n\�n-�d��D`K�eEt\��CZ�=\�\\\\X_k�V��^\�ڍ�i䷟\�\nBK\rÐ3\�\"�i\Z\�\�\�~Xu�)��d�Vb�\��Xg�	nO=hZ�\0^�\�&\��z�\�\�+U�\�~\��b\�\�m&\�\�θ\�=��#D�m3\�v��\�\�^M{q\"[]\�\�FKiIB�0�2:\�LqM�\�\�����7��\�a[��\ZXՃG�NCq��\�_�\�/\�r\�?\��\0#\�\��#1\�M-p\�!s�x\�m.�V�\�\�!ӄ�\�orm��0bX`�\�\�\�\�J�;/\�Ǝ�Gԭ��.\�Q�,m\�PIჃ\�*\�x�����\Z�>�m/�kwf\�#}���\�P6���\�u\'\�^+rc�\�>�S��36��y\� �i�\�L\�G\�\�*�H�ޭ�w\��ؔ\�K�\�z%\�x.\�}^MW[k�^\�\�\�e�e\�Acn�\�\�s\�b�x\�\�{O\�7\�<3\�i#$�\�YN:�\�Խ\�Z��W�\�֚��\�<O�jRZ\�\�\�Iqxӫ�-���O!\�ryǵP\���˝{DլZ\�?R�xY\'\�Z}\�U\�m�r0r:\ZkV�7ѳ\�j��K\�\�\�d2�H��2� z�θBy��K}�\�\�]XI|��Z�U�\�\n�In7u#q9\�\n�ĺ]��������K���/\�nS��\�2H\�2i-m\��W\��\0\�S���\�\�7Z�Ǌ\�ѭ�Y,�OY�\�\�d\�1by��d�\�{\�\�5cP\Z�\�<%�j:��\�\��ɺ�\�੕r0è��I\�\��v�lO\�\�\�ET\�,#\�m�s]L���\�v���\0i�5n�\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n\r\Z\0CM4\�M4\0\�Q=Jj\'�\n�\���\0C�\�\�k~Z�\��\0\�\���M\0u�m\�\�43�\0x�\'�\�y<ǂ&\��u\�xgE\�|Is�\�\�y�C�My�sl��Pg\�\�\�\�5]S\\���$�:�z|\Z 0#�ȌHL��\ns�����卮ן�\�9Sv�\�\�%��Ē\�r��<��O\�\'\��>Q��=+�\��C{\�#-\�[\\hi| *>Y�9\�xt��=k]լ<j�ZO��,�7�3@\���\�\�U{5}��\0��\0\�Z7�vO�=d0\�\�,q\�\�n\0���6\�\�\�c�8\�\�a@{מk7z���]7w\�VF\�\�Ya�\0�X\�/ ��#ۃ\�EuV:M�\�Z\�M~�W�4\�3Co�1��\�\�A\��R⭶\�~!eu��\rK5\�\�\�f�\�u\�H6�q\�G�o�%�\�Q#6рT��\0\�k���ſ��ķ�s��AB��TAQh\Z��i�\�ɨj��A�\�vU\��6�D\�R�d��\�\��O���\�ы�Y]Z�ۛh�i�#\']\�:Y`�b�#�\�YA\�y\��\'������kW[\�-\�D���\��FђO�z5W\"���\0\ZlG$\�\�\�l\�в�EW�{	��Ja�\�E\��rBg�>+�\�uMr\�\�ē\�\�\�\��\�@���\'\"1!2\�)\�\�:f���k\�4���\�d\�&�\�\�;�%?4�\�C�1��\�%���\0�k�)�g�uK�=\nx\�\��\��1�\�j�ߞ2\�Y]\�\�\�y�dЦ\�F�\�\�9�O{\��\0Y\�Kz�3L����Q�\�d#l�\�kc=?\Z\�<C�\��>�\�\�!7z�\�\�=��7��	X�a0��=(p�\�\�d+#\�b�s\�Ey\�@\�2\�\�\�\�&\�\�x�\�\\��p;�\\+k�&\��7�\�\�\�o�Xc���HQ����\"\�\�p�\�#\�\�^�o\��\�W7�,{U��1�M�\�y�6j�Ih\n\�\n\�\��`�2y��]�\�\"�Z_6Idi�\�$�W%�\�\��->y\�\�n\�o�\�\�<p�f�n$ l�\�\\s\�Q�jz\�> �\�\�Z����M\"Cm�X�\�8䨎U���`x<SOKw��;9�\�gp�[C#��\�	�:{x.$�\�*��Cֳ�MD��\�\�T�4\�l\�\�L`\�\�7\\���5��\"m-�DIm\�tO�����S���h\�r\����\��������t�\�w��\0i\�\�(\�\�\�ol\�~�@�\�~�c\�V~�k��~�\��&�\�\��o+9�\�;YX�X�7\�\�m�\�\�ŭ��� �Bz\�m��\�\�!hR\����O\�V�nRm[e���k��;PDE��d�\�����lIE��)\'\�`�\�VR�\� �����Ҿɤ�72#�)2#q�\0Ǉ\�G��)4jZ�Q�$��yUBB�3\�\\e�Z����?w�\��\�mԠ5C�\�	�rF3�\�Z9\�\�o���\�+5�lw�Y\�\�)�;hRC�k�{I%�^\������\��\�\��\�x{^�\�㸷\�n�\�\��\nɝ�|ĮrNy\�Qˮk�.���\\����,~�\���m�\��7Ϝ\�Jk������W���\0�\�mn\�B\�D\�@��\����\�[N��\�\�\"�\�����?ֵ\�\�k\�͞���4�q%�Β9@��\�ႜ\�\����\�w��O�Y�\�-g�̍�ad esߞ)&ڸ4�a�Y\�\�\Z\�%�.��U��AO0Ba�LQ�X\�ͣn>�%]��\�-��#\���9ϗ�m\�Ҝ`�\�d1Fd+��Q�����(�\�,�\�i�P��+;x\�te�A�+7M𦋦kW:���\\\�\"��\�ET\�rW\0[w<�[tP\�z���\\��<\'���\�zzں�m5$���$ž\\��<f��)\�i��;��\�\�\�qk�)�d���ґt\���\�[+ae�g\�\�K\�\��یcڭQC\����>\�M�\�v��H�\�5\�\�p*���Q\�-\�Ji\�}�r��\r\�#9\�:ֵЩ�iz~�E�\�Z\�\�\�s-�+c\�@��д{���Ҭ-�_;��\�\�=r@ɭ\n(:\�AѬ�\��\�I���l\�h��\�\�jc�i\���S��\�!�v��y\�\�^[��\n��i:n�\ZG�i����*���O�\r\\��)Ϥ\�a>�i-��\�\�V�\�\nF)��u���\�m\�\�\��_\"8�c�\�6��\Z�E\0Gmo\r�\�\�\�0ơR8\�*�\0�(���\�	-\�!�hdR��Xzx\"���\"�\�\�Y!�H\"w����1�0J�\�8�Q\�\Z,W�\0\�\�\Zz^\�-���A&O}\�\�kJ�\0\���ѿ�?��,>ݻw\�~̞n}wc9��-/N\�bX�[\�\�\�U��d\0���պ(����\�6�\�\�i�wPE��9�WT�0*Qad\���KS�\�\\Dq��/�;\Z�E\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0\Z(4\0��iƚh��z�\�O@\�\r_�>���\�\������\0\�\��\0s��\0վ�}���5��1\�<S\��7�`��U𖅫\�����K9P�D��@:U 8�\rp\�=������-[Q7vZ�\�\�Ir\��,�<�-�\�8ps�\�\��q�A�\�V�]�l4\�\��73�ÕUZ!�>l�\��\�_\�\�\��\�U�xkI֞��c$\nR9!�\�uS\�w!t\�O����jt\��O\�\�d�÷\�Ն\�\���c\���w��OZm=\"��Q�]�G�Qf\�OQ�zzտ��j�h���\�\�n\r��I�6fbe@�*\�Ǩ\�#�*��\��������\0�\���\�\�X\�Y%���\�\�xؖd$�r{\��ҙ�hZ~�ç\�,q�2$��\\c��8Ê��\�7�/�\�}GS\�#�2�Qi/�I<(�9vlg�j��\�^MJ+��ϱ�Dd�	!YP��r|\�y\��%\�\�~e\�O\nh�b�m\�\Z8\�\�x\��l!��\�݅\�O\��Ţ\��Ma4v��\��\�\�o�PG^xU\�\��Rk:�zF�{�L�\�\�B�2�R��VN�s\�9\�P՛K�\�H|߳\�\�!�<��\\�\�\n)^\����\0���?\�\Zw�nWĖZ���m���\�p\�\�y|\�!�nF>l��\��]?Ś\�ã\�ז\�G\�\����|�l\�N\�\�@\�YW>;�&{��ֱ�\�\�R1�8��\��\�s�q�\�OkG���Ws�ռ%�j��l��\�T+�#���\�H�F�\�MY�K�\�GiR/$4wE��#\0G��=O\�~!\Z���lZcZh\�E+\�:?�0d.@p\�S�q�5f�\�Z�\�\�k���/\�K7��o#y6(	��Yy��{Qn�\�_�!~�\�O���o�\�X[\�xv\�LT�vyW.�(v)\�銩�xN\�/\��T�;\�\�A�\�/�\�R9\\pA\�P�7����7��+�y%�,\�$	��ys�þsP����<\"��iD^\�u�yZ\�G��\�D	\n\�\�o^��F�����\�Y�wK�\�n4\�im.3\�\�s3Ͽ#�$\��E�ޗ�\�\�\�<e�f$��U\�b�\�e\�\�����\�,\�\���ȃy)a���YK3�3�w���\�j\�����\�\\���Yb09�cw\�\��\��GV\r?\ri6:�����\�s+3�\�\��\�7\�o/v̟\\f�����g\�V��\�b�y�2ʱ�\�J�1U<������\�ux\�kmN\�d0\n\�Kaو\�\'�\�\��,֞V���\Z>�p�\�[��C\�\�fbv�p2\0\�zD������\�uRh�t�\�Z\�ک\�a���n9NH\�q�\�5�\\�-ע{\�@Ŧ��g��\0g�!NT�����\�.6�5\�жO�\���ݯ\�\�c\�\�ҵ{�\�\��Tq�K$7s@Bg8�w���֓{�\�Y\\�,�Z�\�]�e�c<�%ݿ<���\�\���m $_gM7\�a�w\�\�W\�1�\��\��.\���Z;{h\��6�\�\r�� �C��\�w�\��\��\0Tí��\0�GP�L:~�&��[\�\n�l���m\�\�K��I9\�E\�\r	|7\�\�-!gi�Τ$�p9�\�\�zV/�%�վ]O\�x\�G�H����0\�M�S�\�q\�56��\\h�\0�\�\�!�Ζ�����\\�3\�z�u�~�\�\��T����r\"�8*\�\� �\�X�O�4=�/,l\�)�\Z8�q#�jq��\�UG��<S�ikpk�\�\�&�b�\�%��k\"\�iV-��\��\�\'Z�\n��L�\�\�L�YnmcpД\��f!��\0PJK}?��\0ɉ�5���\04jYxGA�Ԇ�m��\\�3�\��l\�x��I\�Z��9���ͣZf���ʾc�\�\�\r�9\�\�A�㎕�\\T�-��C\�\�6�m��,m�?5\'\��\�c\�\�-쿭W\�a���\0��oU𮋪\���\�\��\�T#K�BΣ�b�7�jί�i�մ���\�E�4j\�\�k�C��kU��SV\�\�\�c\�\Z\�E�9^)\��\�\�!r�����K��R\�m/\�Gs\nJ�����΅�?2\�\��L�T�G�}6\�po�\�M�3*�V^=G9qVu}WZ\�l��Fm>\�W\�n�\��O6�,˽�\�)\�N:RN�\0}�/��\�\�\\�\0���\��OJ\�c�\�sG�K`\�9Q\�*@bJ�#\'�Zܞ3,F�<EԨt\�\�\�\�2\�\�M�%\��b)Sŗ)�\�z���o�\�Kˆ�\r\�\�n\�nݷ��:\�mGK�[1f�\�x\�Di#\��	\\�\�\�\\Dď�V�J�`K[w\�m#y0\0��[�お;�\�t�x\�T\�~���q[Mq\r\�>�b$�`�)�=A\�Bz\\vդze\�j�ޫ&��i\�7آk�i.Z[�\�@��8\n���������O�菥i�\�\�]�\�,\�g<\� Ld��˜��;��N��\�\�x�\�O	˨^�4\�ĸ6\���ys�2Dv\�w\��\�}*���\�[Bէ�\�	\�\�\�ⴄ�R\�\�+K�ad�\�L\�N:\��_x\��3)�H�P��dn\���\�f\�`�ִ�����M&�lѣW�\�\��\�\�\�#9�\����\\:j�jN�n�OKia��l�;|�r7\0��כ�\0!w��/�:�(���Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@�\r\0!��q��\0i���5\�ykW�\0���\��5�-`j�\0��?\����,E\�k�w��Q�Ѯ\��\�2H�G�[~HU@n@$��\�X.59�MOR\�..���ʡf\�0V\�5��M�x�\���\�X:u��\�\�[\�m�`���;0\'�\�jmW\�\�Vך�i�+\�\�i@پ\�#*v\�+\Z�w����qI;$Y��hv�\�V�\�qC*M�0Y#�z0$��=j;�\0��\�?\��w�(\�\�i.�Ճ+\�\02�\�J�\�|w5�\�qi�J^\�\����\�\�\�\�\�6\�<drs\�z\Z��[��4e�ђk\�I\�C�~Z\�Вo\�\�p)���@ӹ�W�\\6wz��<\�N.a�iO�(^��\�jƁ�E�\�{(������d�k���\n}\�P8�eI\�@��S\Zl�l��2\�4���Lo���\�:\Z�}\�;�@�\�u\�:?%�c��(��\0e�P/\'��h���O�k�_\�\��ռ7v\�\�\\F�C*tn��`�X\�/�WG�1��\�i��\�\�Tx�q�3�q�X\�o��u�u}i$6�\�\�\�\�@i��x�\'B(pq�\�sV�!\�K�B.�\�e��\�xo\�\��\�@�kc�\�\�1E��\�\�l<�Y]\�J�W�\�\�\�e���`\�@\�<�\�x\��$��*\�xbɼ;w�n>\�tҳ�\�\�<\�.\�8\�V8\�xo\�w^ �� ӭc��W�B\��\�DT��ó\�\�\�\�i�m\����}ix�č`$��\�	A!P\�YE\�\�&���\���\�o\��)I\�ˍK\�\� ���P�\�o\�-�E[�T\�,=8\�y5\��\0aٍR\�P�|ocn�\�Ƅ\�z�g��\��\�;\�?P\�\"�\�՞��\�w7\�\�8V]Ģ;��!W5/܍E4�L]B\�Z�ܦ[�\"8\�bB�c�\�;u��\��\���\r_w���\��mfKY\�\�\�\��Ա�\�\�\�H��a\� ���A\�C貶���֨�#\��X�?9�<�i�\�R�oV\Z\�c��&w�\�-�n{g�E\�=l\�\�ڬ6�yyy8���8M\�A<���\0I8=(j\�wԂ\�\�\�\�_\������ޙLX\0(Q�\0��&�\�\�t���A\�o\�n#X�{�B��U\�=�\\���Es{\�\�[Kf�\Z��𬰤��\�T��2\�\�;�]�\���Zm#T\���@.cT�$����\�F<��\��\0_��ؚ\�\�pi��֡m}|�\�H\�\�g�L\r#\0cn\�{\�N\��\Zu�ݴ�u-���[[f\rsʌg��H\�蚆��6ԭ�X�\�\�c\�ė\�x#P\�~U1�\�z��KK��c�jV0�Vb\��\"MB7�\�ix\0ʃ�RFF@��[�\��\0��\0�\r\�<#�ɧ_X����\�\�!���\��>_���y����jZ��\�zF��66\�\�[�\�\�;�Nb\�b�t\�#$U=oW���ll,,\�&��\�i9/bR3b6\�FH\0g9\�_e�m�HW�nk\�~\Z�V���/���\�\�h<\�GP\�9*���\�i�ᄷ\���2\�V\�\�\"�M��:nq�\�\� �UW_�Mƕ�\�i�\�Z�\�\�&\\\�\���,�Er�{d��\�\�\�5\rB\�A��\r)�/\�5o�E(\�1\�T9�\��Q\�:��\��=c�\�\�)\�\�o?�fi�/)��䑎NO@+=<m�\0�\�ڞ�sg �SΑD�AURq�\�\�]�A\��\�Ad\'%N:q\�L�7B\�Sd��\�\�݉��g܀N(\��\�S3Q\�,\�.��!�\�K��\�l\\�c�\�N\�3�\��\'\�\�Z/Zjq\�YX\�IQ\�7p\��b�	\�tP�OwE��o\��T\�e�\�\�M��Q\�\�#B#\�\0�\�>�G\�\�!\�\��\�;MZ\�\�\�+ĕ[γXJ��f�~2����Z��W�\��l\Z���\�o�=�k\�X]\�O0�Ԡ���K��\�<�%R\�\n�2Tgt�cE�v�%ޓw4\�g�O5�Z*A\ZM�\��32\����v���N���V�w�\�?wD�\�{�\�\08 F�\�,y8 4�]�\��\Z3x6\�T�G�n//5M:�`@�Ӣ�ʄÆ,=8\�y5\��v�G((\�\"(\�R�\���I\�\'ð\�$\�-$�RF\�_Ȍ\�\�,�#�iy \�Vlk\�E���IatҤnU�\�\�]X2��\�\rQ��7�TvW���q,3	\�yO��J���c�\�\�\�\�\�\Z\�[�Ƕ�R\�M\�$��>i2\0�}���\��\�R�M\���ȡ%��\�#E\�\�yX<��l`�\�@v:MA�\�E\�G=\�\�\�Ӊ\'��p\�J@�\�\0\0\0\�\0\0��>\�k4d�y�ɾ3�\\�dZ\��\�W�S�z\�ΪRR�n`Hd��FED#ב�j��n/5mG\�:�wN��wج��ѧ�gې\\�퐣��yvԳ\�\��\0`%�6�֧5��lKi�^?\�1�g�_�k��?B�\�\��t\�T\��\�-b��.]�\�\�\�P\�.\�\�\�5WA\�o%������\�\�ד���\�)3D�v\�\�|�<>i\��\�7�/\rC{�.���X\�yK�e�B̊I�)\�I\�`�Ks\�+����\�mD�\�a�\�\n\r�pp{\�k&]\�zf��]Raeu1+�i1Ƞ�\��\�8\������\�\�\�]\n\�u->�I7�al�\���[nKq\�\�1ޙ��~\�Y�\�v�����,`��p� nr \�dzV�ak��Ɵ}e�\��\���\�DLnflr�\0\�hn\���\�\�}�[Y]j:��[L.!�2(�$�\�]�	یT�2\�\�:��\�\�\��ԝd�k�Q&\�\0)R���c�`xc\�W:w�岒\�S�\�nm\��\���\\�B�q\�t�;�Ig�k\�iF-GJh\�kA8eo0���c�s\�n��/�\0�����&��\�X�\�˶\�u;˫�u�3\\H�\�H\�UG �99�\�</���q�\�:�\�140�ۡ��s�Nj����\�b\�t\�O�ڋ\�O\�\�wr�j�\�H�O\�-��f\�Nxl��#i 6ڌw,6���T|��z��慾�\��\0�D\�o\�\��\�Z\�\�k���\�ݼ�q�m˘�/B�؞��E(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(4Ph\r4Ӎ4\�MD�)���+\�X\Z��}�?���kW�\0���\��4i<5�Xjr\�\�\�\�\�\�\�n%��\�M�\�\�m\�nz\��\�E��F\�\��R}?Z{mT{\�ą�݅�bF\�T\0x=3Ud��J���\�j�}�\�ls�X\�h\�mݒ8穭mG\�	e�2+R\�/�E�H��ā�\�\����K���\�\�</gg�Kq�9m͵�[\�a�X�d�?0\�b���\0\�:��m��­\�ҽ\�Y�#�\�\�e\�?��|\�8�+oĺ\�喫�\�^\�\�\�\�F�\� �H\�\�\"b\\2�3�\rI\�~�\��}�\�V\\��1D́\n�iH;�NXQ���\�\�o\�\�\�q�`��}9�{�\��\�\���H�p���\�\0s����\�\�\�\�L\�|\�Ir��ǍѺ�ea�Bfx�\\\�\"�\�����\�\\�p3I\0\0�0��it\�>\�jA��Jr�\�4B\�)�`;�\�˜Ig֎�\��~\�\���Gi:f�k\r\�\�\�\�\�2:m�HlD&3\�\�F㻷�\�h�����\���m=ȁ��\0E�\�fH9�\�m\�c��ɫZ�,��\�\��L�\�!<�^��,D8*\��OCڢ\�<am�\�V\�?ٚ��]\�\�\�\�u*ʋ���$}\�\��u���\�{_\�b�xN�Yjڎ�m3ٻ<f\�#kɼ\�y\�\0\�\\մˏ[\�:n��S�\�e�\�\�Y#\���m9\�<�\�]s�\�M�\�X\�\���\��\�6�˜m-��H��{зI]��מ�Sx���o�\����8��z�\�sڰ�Ois�\�\�\�s\�Ix�k/��=\�S*\�oB8$�N0jY<[6�\�\�Gwk�\�\���n�\�\�W�\�LybA ��	⵼e�]Zxr[�&;\�� 3-\�Pʰ(��\�9\�3J[_�\��\0�\Z\�\�\�O��i�:W�t��\�s�,��\�lr*_h�Y�\�\�v\�w�s��k���8r�\�	du�.|Moie�8����\�\"Amo\Z�\\m���T�\�\��&ZX\��\�.���\�e1f\�\�\�<����c�\�Z\�߿\��d\�\�E�\�y�k^j\�]KUh\�k�nW\�#b�{�{<�j���\�XjW:ޫ�J�\��	\�\�yJ�����\�$�ܟJ�uۙ4��ѡj�\�\0�m\�X��{�I��H\�T|\�{�WÐj:��uh���\�\�~T�d�\n\�\�\�\������\�W\�Z]kƗz�\�ﭬWNKL\�[�,\�\�3� �9�>�\���$\�j�K�ۓ\�[\�dʼ\�|\�\���\��\�C\\	$ZN�mm$^lW	I\�\�䌃�@��\�7:\�\�i-�i#L�b\'\r\�+w#�=���\�\�\��\�eC\�OM��}\\Kk�\�\�KY\�\�\�]�_cn\\y�խA��\�,uM7R[\�H\�t��r:>\�A]\�\�Ts[\�\���^\�4\�oH��N�\�7wio%Բd�\�\��\�#oV��d�/\�\�VK\�\rS\�\�\�u+nb\�<wZp�Y�\�oO�5!\�.`��z��\�Z\�w\�C�\�\��\��\�\�\�i\�\�z^��8�I�RGVy�q�B,A���\�?��H��[[Io��y\�W�;T��T\�1\�@ǭ-\�\�_�#\�\�x\��$�\�\�3��\�x���Y\�\�U��\"��	#��Sؕ\�\��Ȯ\�Ƿ�\�ܛ{H\�⸞\�\�pf�\�eQ926\�8�5\�x{S�\�#��\�D\�\��\��(\�9\�	��t\�\�=IZ��.\�\�5m?Tԭ\�\��\'�I;C��\�\�n9\�c�Ѽ)uk�Z]\�\�jB\���O���+`r	\�\�\0g�׎k�$\0I\�+��m\�\�ƻqp\�d�b�V�\0�¤�\�f\�}��\�zw����\�\�Wy�6s=���+#s�4���\�8��R\�\��\�3\�.�>\�<�y�4��\�ш\�wq�X\�\�\'\�5�\���L�ԗJ�\rE���̀*�\�Y�zv�$Ui�n&�i��\�\�ZAt-d�\�\�gI���C��bI�Qke�[\�_\����Q$`�B��\�\�Xދ�7\\\� 77zc�kp@3\�\���\�\�\�\�R�\�S�Ӵ`�|�5\�㴵b����7`�p77>��%�׬m�\�N�I�\�\�$\�\�%�\��\n0:���\�\�\Z]��B��Z�}�PJ\'�\�\�\�̒�|�\�:�\�\�2Fq\�V�\�^m0E��h�\�M\�h[\�\��\�\�O㺱�?\Z����\�\"���t��G|���E,@\�\'#�$iXM?��*^\�X�\\\�-\�E8n>G$�c~�ڵГ��Mt\�\�\rh�\�&�V\�n���6�w�@��\Z\�0;�ԓZ:�.�\�;m*�����\�Ĥe��bMէ\��e��/���>\��\�q�\�kj��zg1\�?j��+Y5[+�E\�\��h\�\�Wg2�X�I\�>\�7��;\�R\�\�W\�㺶��\��\r����\n]�\�1\�]9\�d\��x\�k�\�1C=����\�Mo7�u�<��\�L\��=;;݅�f��i{�x�\�7�h��)�\�e|�LT�U��O|\n�Ĳ\�\�z-��Y#k���\�+G\�����\�����x\�\�:\�\�]��\�\�eTk���y��2܅\�c�Y���\�.�;���=A�Q��Ԭ5�j6a\�%hD�\��ܬ��\�e��\���v���֕e\�5\�\��\r\�9H8ؘe\����\Z\����6��X\�\�k5\�+#\���Ӛ-}���B�|,z46�\0\�\�jP_I�Ex�\�*\�\�,�ʐ\�c?��&K\�\'W��U3j:�\�\�݋p��26�ǻ�\0?\�O$\��\0x�xj\r6\�G�;i\�R�&\�2�I#��z�)�~��]\�ך��l��66����\�\����O\�\�\���mt�\0��\0\�j��\���Q\�5���A������\03���ߧj<?�\�\\��z\�ֱG�5��^\�,\�N=f��\�ݏ�����\�\�6r;xV-�#9�A\�\�\��\�\�Iw�jP��\�}40\�>Y�NN0s�)\�\�\�[��\�\��\��\�\�\���뷷\�\�\�g<h�Y�XH\�����\0�m:+\n}B\�<mg�,���O�f�h\�\�H�9\�z1\�ޗT��\�\��\0�\�\�W\�\�\�i\�\�z^��8�I�RGVy�q�B,A����\�謿k�h6Z��\�n-s��!�{\��Y?5[�\"\�G�\�\�_S�9\"�\0��we\08\�\�U5go�-UΪ�\�O�lI\�u	�/\�m5\�n\�d�D\�n\��\�+���x�_\\�j\�\�\�\�\\\\\�h.ϔiRHU���3ǽ/\��V�\�\��r\r\�y\0[�\�\�D\"P��)ą�\00x\�A\�b\�ƶWV�����\�k\�\"	��9\�\�	PcB\��\�\�h��SΫ=����]%�\�\�{��<�ߌ��q��\�\�]N\�Nтi�\�o\'�\�Պ�\�\�\�݃��\�\��Q\�\�\r�+V�Z]����Wڍ�����TM�\0�,\�:����m)�\�)�RD]C\�\02\�t8\�4%UkU�\�tٵ\�a@d\"\�f$\�(\�$\0=\��\�i^\'�\��_C}�\���dS����\�}υ,:ߵkh�.�\�\�a�k-B\�K��\�\�\��\�2S� \�\�\������\0\�W��\��:\Z+�\�<sa�\\\�\�,5+ho�㵹�$L˜�*ă�d\�u\�]>\�\�U6�\�e\�\�k�x\�\�\�	ݸ\���{\�7�\�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0Ph�\�\Zi�\Zi���\�SQ=\0W��5��\�S[�\�!�JH\�\�8\�\�k���}(��2\�&XN[h\�\�ў:�#�L�\�m&\�/\�j\��}�{8m\�A;\�#9$�c0\�Y�>#�^#M4�H^\�9��Ղ\�$\��Î~�����C\�/>\�~�N3����\�A�B\�[�\�V\��kq�/\�/5k;3��yey\�K9\"7*O\�\�FA<�j?i:��ᔶv��TIb�\034;\�8�lc8�)�&�}���\�V��\�0\���M�A]�C��G89\�Z7:��k�èM��o1\����\�=c�t=@��\���/�a�\�uM�\�V[K{������\�DUe�9eRO>��?��A\�itӦ%\�GPI�uB��\�\��\�ִ�mrk�\nͭ�r�\�D�7�u\�.\�\�\�\�2�l�sӞ+WE���\0G���*\�qo�`\�	Ƿ4\�_�\�o\�;|�\0K��?\�\r�\�\�r\�\�\�8,/4�f\�2^2ر\�\0aߵs\�ԯu�\ZiL\�\Z]\�:v�4oq�;�e�����v\�h\'��J�\�8$x\�i]T��H\�:x\�ް4�_ͮ���h\�a<�\�sGt\'VU`6m?0�������\0͊KO\�\���\�\�u\�\rjKK\�+��^]�\�\�\��Њ\�\�4aq��<ҵ4�\�\�z\�X\�i-�l\��\�	N܂R�+�����#�QB\�\��F�\�\��[^}6M1m5���\�\�� \n�	pN2¤�m��\�\�M�\�z�;i�okd�\�M�\0I8\���V�\�\Z�c[�T\�\�\�\"\���vc��\����\�iZ,7�E.$Ft�8�V��\"=\�2�u\��L������G;��:mV\�÷B\�N��ӭD2Y\�(LNW<�J�+��\�Ve��\�\�\�\�Jҵ+�yV\�M�8p\�)\�N	\�j}Ŗ\�\��U֮B\�_D�,q3�������Ǡ�\Z��-υ�ּ9ye\"��JM\�.\��\�J�F9\�\�W7fߟ\�r ��/\�X���=fY�\�s<�rIeZ\�𞛯\�\Z2i7k�\�\r���m,rHL�p�Ԩ\n1\�ք:ȏ\���\�\�6^\�&u�\'~YA�U��\�[x�K��Xn!�\�YeF��Qs\�]�+�\�՛_\��\0\�37\�\Z\��\�t޴:v�dbe�\�O�I\"�BA��U1��G9\�X���޽\�����h-�E>j��=1\��;ťx�HկZ\�\�\�_�*y�T\��B̹\�\��p\�q�أ�w\n\�|_�k����\�l\ZcAct�y���\�p��\�\�¬��\��m��4˥I�S��F\�%\0$ <���<L��\�~.�\����{뭢C>͑\�\n]�$\�\'�\�]\ZtE�h�\�\�CZ\�\�N�T�b\�\��p��,���I �p@\����\�\�&\�A}\"{Y�����Au�#�Y0_%A*w\0Gҵ�[�j\Z5�Z��\�-��o���\�\��d=��\�q�܍\�X\�D`\�\�2�\�\Z\�_\�\����5�94�n\��u+Ǹ\�刲��r\��T\�\�=jO�b\�\���\�\�n!�U��ɇv\��me\\𣞀uU\�\��]\�J�[��\�v\�9&�\�P\�Bf��ЌW-\�C6�i/�\�\�\'\�\�X�*vOc\�n�\�uV��\�M/VY�\�Y�B�c�\�\�»}C:�Gҙ���E\�.�\�czd���CD�ud,\0q\�u�?�t�X\��ڍ��s=ܧλ�����b�\0v\�\�\�&�\��CX�;�;�\�[\��\0���_\��\�\�q�\�\r���5\��\�-&{m>\�+�\�\�2�6�\��q�q�[�:TO\�uF\�EĲ],�&[K\"#��ΪUO#��hտ��\�\��\0\��&u\��M�!Z[�m�[cp��t�TP�\��Q\�\�#Z\�u;��O�\�\���KK���K6~R\�cmʽ@=�=h\�\�+\�4{�m}{\�ʪ\�\����.T�ݱF�\�#F�\�\��M�$�\'���\�\�B��)^\�>\�\��\�>�����(\�\�N�ws�\�6\�O�U���\�3�$I\0	��H;}i\�=�xK\��\�z���\�q-\�\�k0\�\��#O`=z�V��\\k\���V���dr��I����]]\�E�����`�\�9\�\�\n�I\�9{�_/\�\�(\�+�2\�\�M\�\�PA\�\��\�\�s\�b\���Q\�\�[Rִ���F\�(\�R%�F��XA�_\r\�<�\�z\�\�_��\�=�[\�Z���\�h\�YC#��)��޷����e*z�\�t\�\�.��\�\\X���\�}�	c/\�\�v\�e#j\�w$�t�\�}R�\\{\�H�\�\�ZC��\�!!�c\�\�@z\�\�<qe>��\�\�E\���/\�\�}�������}\�i-\�\��\0\�\��gA,z\��2G=�ф%���\�\\�A\��N{Z�ִ��\��\\\�d\�\"T��Ip�0O,�\0|�8$r:\�\�ǋt+mH\��߅���\�Ǝz+H\�nG�\�V�\�uk/i�s��麀�j�\\M\��߃��8�+�\0_1\�\�\�\�<)|��\�\�A�jV\�i\�c�}L�T��\�B�K03�\�t\�\�\�<=c�\�q��m�\�s�\�3\�A\�P�?�m�?�\�vr�q\'\�%*\���l]�r6)\�r�\�9�\�1Z:��k�èM��o1\����\�=c�t=@��7�Z�k;_օO\�-���[w�\��\'�9\�C\��P0r~a�\�\�\Z=\�n\�\r\�M�+b\�\�\n����T�rN8\�ZzV�g�\�\�{a:\�o&v�r �#5�uxt-\"\�Q�7�E���ޑ؅U\�(\�A\�s6\� ���\�_N6\�o<6������#\�]�\\n\�MM��wV:j1i���[<\n�N�<��;2/\�1�0y\�W<3\�\�/�4��Hmo\"�L�E\�\�\�\"n*Hp*��1��|9�\�I�\�\Z.�\��\"�$��՞\�\��#\�{\�[\��\��l�\�\�s_�R4\��\\\�ث���T�\0���\n\�5�XM|\�:\�4\�Z�Y\�.��du* �㿨���V/\�\Z:\�:\r��%�M�a\�\�7�$�\�l�j�����Z\�Om4\�}�\��+��ʏ�<eA#��tU7wpZhq\�i�\�֚��\�ۻ��+��Ȇ(U\�$�ǜOJ�\�v�w�>��Jf��e�)\n���l��y�[�]����\�xwG\�t�n���\�\�&��e�dq81m�v\�\�\�w\�Y�#\�w��K��v\�\�\�򚀌�\��%vcp\�\�\�P�\���xgX��\�\���X:\�#B\�yV\�\�R2�P��\�\�\�U˯��|B��\�\�\�\�OO:\\��@\��+�����\�s��{��+��\�,jvMs<�M�\�褎\��\�\\\�>�>�.�\0U���J�\�y��0�1\�\�\�\�KE+ia��SJ�\�}.\�k\�V�!F�%<#�7�5K\�z;\�,�p\� �G422\�U�:\�w\�\�ޮ\�Z#�\��{�jmu�-ƣ�-�R<�p\\\�;��Ӟ�>��k�\Z��y�M��Ңt�Z&ge\n]����Fy=k���\���\06\�\��G�xJ�\�E�͓\�ldү�\�\�Y�\�|\�\�\��\�;\�(|m5{��\��\�gqv\�h�B.cۙxB8$��*)\�[�\0]?\��ׯ����z\�j:ki\�ZGd�7\�Re%\�1�Lt9��\0\�V�R\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�\�A�4\�N4\�@\r5Ԧ�z\0�-q\��\0p�k���\��~�\�ϧ]��\��5�6q\�\��\�n;H�g=�V��붗~$�\�I�P�]\0�\�tA1�Ȑ7%F26�\�\�\�k�5�\�\�\�j�]1\0C-\�+�z\r�皒�W\�4�\��Q���n#�i\����\nVV��\�\�;\�\�\�5�Q�Ӽ0l :��,�d�H���\"h\�R\��\��\"�E�\�0\�3�e�.olm/R�H�?xr��+��\�t}:qo}�\�\�\�Sx�{�F\�\�s�:\�\�\��\�{��Q��\��+p�*\�\�\�\'�w�}ĕ��c��ׇ\�\��F��\�\�%�\�\�f4�a+���\�\�	\�瓓Z�mIt[kMKJ�\�[Hc�\�9�T\�a8w��u\�i�&�.�=\�/j�Z\"��\�	\n��18\�\n��k�V�j�6:��\�Q�ehgW�1�Ɲ��~\���Kwo,V�I>tʌR-�w�8<�\�<��R\�k:�z�\��\�K4\r\Zȍd,v\�ɮ�N\�4\�QM:�\��\�f��d\n}	RqR\�\�Z\�<\�os\��r�n\�\�\�lt>ƕ�\��\�\�:\�+\��*m*+tѯͩ��Dр�Pw\�\r\�\0pzפ\�T�\��\�u\�\�\�l\���\�N�F�.riߠy���2\�<�Ԯ\�\�-J\�X�\�\�\�2�d{n�{�zMb\�V\��Qq�Xi�T��\�m^8\�H䅕��7�\n�\��+sV\�4M<�:���\�\�*]N��}EI�izlQ\��Y\�E\'(�α�}	<\�\�\�޿��;�\�O�dp\�:�\Z?�e6�ϦZ��ͥ����\�\�\�H��^A89��M\�B�CR��\�\�\�}Af/\�\�\�\�u+��sg<��\�\�4�4�\�&Ԭ\�|�y\�D\�\�\�\rJ���X�缷[2���*��\�8\�9j�}P���C£Rŧ\�Z\\�|\��\�n\��B�\�p8\�Y\��\�6��\�}4\�^Y\�-\�h\�I\0°\0�\�C�]6��麬o.��Z^Ƈk5�\� S\�J���\��\��:\�\���\��\\��2;�N^�m���QGK[���cC֓\��U����٭&�\�{\�EnU\�m�ơ\�\�J�\�^\�W�\�\0\�8�|=\�(u۽J;o������\�oy\�`FrB����J/}?��\0\���d\�cX�ƺM�w=��M̳���0@i``\� L\�?x3P��֮4\�R�\�u\�M�l`�aC2\�\0rq�s�Z\�W]\�\�P�\�]V�\�goم\�y��ۜѨk�F�2C�j�6�\�2�=\�F\���\�]\�\��ٲ�g�\�z��	��F\nyv� \0\0,H\0\0*\�z���ܔ[�\��P4�?0���ǦqZM5�^,M-���3 B\�\�T\'�\��g�ax�\�Z.��E<�W�;)����,͸\0\�ǌA,3�\�&�~\���n����74��\�4�Kǁ\�\�\��\��\0z2��\�f�x\�\�\�R�ci�sqk$q&\�71R\0\�\�~5��3���ƻ���1�MA.rv�\�Ac�1\�F�\�\����N�\�\�\�*��V9�1\�\�P�\�rOZs���ڱ��\�2\�~�\���,��!X�9\�l\�;\�-x�9�-S�����.g\�\�\�!�\nDhd$=Tc��j��h���C-p��qγ��F�\rӵ:\�\\\�.�\�\�U��\�<\�;�ir�\�b���Ē\�I>��k��\0��ii-�����\�f9#āH]\���\�\�W/�\�n=ƅ�\�\�<�j�Ț\�\�2;DI`\�G�9\�Mt>�:\�ޥ�\�^\�\�UH緼�q0#9!O\�\�F�^�W\�!\�O�Q�K\���\�:�\�ɤ�i��\0/�\��\0\��8mg\�\�\�b\�\�KS�\�\n�,�Sk��D.��y\�\��s�jZ��\�+ImB\�]6;%.e�\�-���7<\�#�t�:\�iz�W:��o��Ip�!\�L)9�Z�\0�t��\�\�P���K\�\��ɑ<�\�\�{d�.W�4����ߨy�\0]�\0A|�\�\�>Ҭ/c\�\�۪H��moL�\rA\�]*\�P�\�\�l����\�\�Nm���Ы#�O\0\�3\��iuo{mͤ�\\A \�K�V��\r2�\0P�\�m\�\��彤\0\�\�<�\Z\�\�$✵wb���9�\0\��6WZ��s�Ǧ�Ɖ �FV�b�6�;~\\�N@⺆���\�W�\�,�,�\�kyo=�	�Y0:��♧j�v�ɧ\���\�p\�o2\��	\�]\�\�xE�B�\�S���i[��N��N\���\�\�\�\"���\����y�}�h�[\��.#1J�A�\��\�#�\�\�kz\��\�i�i�ބ�\�+�i�Pp3E���+\�\�\�Zӧ�BU#�\����\0y\�o\��	�f��N\Z/]C}{a�\�z��\��\�\'�\�\�(v;\��\�2T�)\�t�+�Ԇ��j�u�_��e�%H܇L�8#֮i�#�P�%\�lme�\�\�4W��\�C#F\�ǩ�����i�$:��ci,�(�\�$l\�@H\�d��\�}Y�\�MN\��R��7\�]�\���S!���לUoE�\�0\�3�e�.olm/R�H�?xr��+�Ե}3JD}GQ��Y�\'X\�}7�\���-4kk�岸�\�\�A\�\����YY�\0�\�^(�\00��+�=\�\�4�\nh/�巖K\�\�X\�J\�\�]\�	\�\�^MZ�s�x~kk2�kG�xC�+<n�=�ۏƵ\�m\�\�\�\�\�x��1��W\n�=\�\�T\�\�l�y\�c\�-\����L@��P�\0+~\0�\�s^\�.ǈ�\�.4h�X\�Z\�h�K�$s�*2q�sԜT����\�S֭N\�{d\�\�}ٜ;3�=�$.}s]��i��M.�ky��\�\�YBT��q\�H\�cE\�0=�\���\0ð\����2Eq�\�>�\�|F�V���sr�FW\�\�B@$\��\0��A��}[MMAt\�\�m��V\�̢R=�9�\�E\�+?R\�4�)\�5V\�\�\�eV\�\�#${n\"��+��0ea�A\�\"����\�v\Z\\}F�\�\�\�D��jO�X�i[R�K\���[-��\�eQ=wg�TW?\��\0[\�7ZюkV�\�\�T�\�)C#��\\�l\�H�*+\�_\�\�����\�֖Ir�qά�K0`\�\0s�\��~�}/�v:Z+\��\�\�\�%�X\�DI\�%0\�%º�\�\'#�ub\�]\�\�\�\�\�U���L���w\\uʃ�@\ZV}ι�Zޭ�Ϋc\r\�\�l\\\"\�s\�\nNkB�\n*���izQ�j:�����\�\'X�\�7�/��/M�9��+;H���<\�\Z�Г\�\0^�����{yc�\�6�=Ai\�:EI#*\"��1�Ԛ6\�VEοb���\�v�\�i�f�EܪN	Rqғ\�^!�״�y�\�l\�0��\�\�\�&`	�\�\�\���-.<R�%��W\�v�H\�/�pc1�8\�\'�+J]_L�PM>]F\�/�\�۴\�$o�\�&�.\�Tu-gJҊ\rKS��2}ϴN�\��n#5��x�F\�\�4\�k\�\�h\�����E�X�l��v\�>�P�\r�ս\�w6�\�q�),NXz�85Gĺ����{�N�TX\�RU����B�H\�p(zn]�J+;L\�4�V\�\�lu;��\0\�\�N�#\�?1�Ʀӵ=?T��\�\�o#S��\�U�\�H&�	;\�[��\�\Z��ڀ\�Ư`o�m\�\�<\�}6\�9�f�J]_L�PM>]F\�/�\�۴\�$o�\�&�s�i�\�cs�\�\�x�\�����\0Т�\�:����6�kf��n&X\�A�3N�Ԭ4\�au}}mknHY�TC����\0�Ebk^&\��\���ݍ\�eO\��yQ\����!;s���\�\�ֶ�*귲\�mo䬮\�2\�\\���8<�އ�\�`\�_��|3\�\'ĶP\�X^[��\�%�̍, �u\�\�\�[M\�d�;B\�\�HN$X&W(}�<~4\�`�r�\�\Z��ڀ\�Ư`o�m\�\�<\�}6\�9������\�F�\�[�\�9e3.\�\�c�4��EGU\��\�&%{��KM���e�y�<\�nڂԽA�E�E�ǅt\�oV��Ӗ�5l\�0D{\�ڧ\�|K�\�\��\�\�PIj�E%_ߜ	8bpp7�\�]��M5�a�\�\Z�������\�B��x\��.3�p?\Z�\�\�6hz���\�Y߭�/\'\�&Yr�8%I\�J��G޵����z\��\�,5\�>	�\�l\�0��\�\�\�&`	�\�԰\�:U\�\�6���\�q\�<έ\"\�T�Sj\�\�N\�\�\�\���+Rc����\�!d�)#\�\�u-xO�?\�3�{��	�Z�Y�nǯ�oM+\�/\�\\\�`K{C$�}��ʒ9�z\�|C�\\\�K�i\rh\�\�aOa�\�v�@��ِ��\�sֽN�\�\�zXh\��\��p�\�\�Mh�g�y�\��3.x��8黥f\�i\�:hЯ\�{˛9�ѭ\�iy��A2F\�@ p\�ר\�O����\�\�-t;\��x�\�4��7�]Mce\"�h�\�ʻz)\'\'�T\��\�<I\�K�M3N\�m��\�2C=��\�\n\�]T8\�p\�Ns]\�g\�Z���%�\�$�l\�\Z\�݀\n\�\�\� �q\�4Z�z~\�\���ς,!:\�֦%\�\�\�\�`u�\�\�\�H\�FƁ�\�x5�៳}�Z�4)�\��Y�%�0�\���}G���]R�t\�2\��к\�B�HPN?J4�\�\�t\�K\�B�s\nJ��\�\�O��\�o\�е^H<?;j\Z�����\\\�Mp�Zi�K��\�;\�,��\�W�����Ŧ}�촐��\�\"\�+����7�^��j_\��\0�����jr\�i\�O�:�\��e\�Νi,�e� 1��\�)u]=�<y�N\�f[Xl�U�ǹ��h\'\�\�\�k��wڕ��͕�\�VK\�L0��傖�8SB\�\�\���\015����\�\�Yjm|A�\�ri�\�i��\�\�m����\�q\��d3XgF�o]F4\�\�\�[�\�\�\�\�\�C�\n\�\�3\�<צ\�B\���ު\�\�\�#��R\"��\�/��\������M�G\�I��,{;��=�ⷨ��\�=�\�<w���u\�S�;[\�\r�<Cjm\�\�\�\�B\�:au�\�6��\�4ɍ\��$B\�0��μgwr8\�j狒[z�P\�-5)u9b�^\�\Z\�\�\�h�G�\�\�$�Pk\�裢]�\�/\�:�\��\�q:ķZ_�#\�\�\�o���Ҿ\�\�c��R�݂�\\c�\�\ZU\��+Y��\�\��̐�D�2�\�\�F&�\Z�?\��o�W����\�vos\�j\�\�٥�\�$\�\Znfb�\0\�ֽ��1FbU�\�\�R�\�\�Y���c\��3����\�Z_Yj�[\�D�\�Gff\�RN���\�ix2\�\�+k-1<;�\�AG�,Y#R\��\�ml�\��]uW\�\���A\�q\�{K�x\�YIt\�\���v��vx�\�*ۘ.�+���\rCM\�\�^��u&�I-4���@_r?�\�B\�c�+\�褴i�\0]?\��u�h�]\���M�cqi�cc#�\'\�q\�\r��\�G\�\�\\%������7�I&IUL,�\��3�]���\���%}>\�.좸��G\��\�꧑�\�)�:d��Ц�	\'D\�-٣�?1�|\�\�}������i���\�p��f�n\"��\�\"\��\�S�⎩��\�\�\��G�\�h������\�KӮ��/�-��\�\�\�0�o�\�6�\�s�G5�\�-:\'��ԒMq�Z\�[�_\�\�h�d�\0X\�q��ֻ�)5�_\�\���^�l��E%���lv�4[d\r��F3�\�-<\'=���\�m)�줒\�[$S�\�{�\� cשQM�\\\�i�\��\�K\�\�8\�M�\�|�\�u\���:ټ\�Kv�l�]\�6\�� �<qY�.Ilu\�\�CH�ԥ\�\�5xLk�[��\�`�<�N\�=A�C���v*��\�\�|e\�F\�R�-NU-J+[\�\��\�\�\���\��\�\�$�Ե���$\�\�z�[\�#ZD2U������<~\�QF\��g\�i�[Ӵ}J-+P�\�\�PYn���d�\�+\r\�6\0�\� \�\�\�\��\�\�\�\�\�VZMݽ��5���kr�9B�I<�dg\�g\�ɯS��\��\0^_\�\���������\�\rFxl\�I�\��#\�\�N�\0G�1]ER\�`\�s��\�\�~&�[V�e�W�\�=�\�ɌeOq�G�\�_iwgO\�4?\�;�5��P\�A�|\�\�e3t]�\�3�05\�\�P����\��A�\0��\0�\�[\�\�\'\�F\�\�̼M��&x���ɸF3\�\��\�\0\0\0ږ�\��9Oϩ\�&���t�\����K!u4d�!�\'9;N?\Z\���&�/\�˦\�\�\�Y\�]Kh�\�%�ϵ�X\�\0�\��P���\��\���_�\�\�z��\�lt��\�\�uy㵚\�۵\�H#�+\�kz�5�\�p��4Եm\"�\�\���!�\0I�k}\�\�`3�G\"�z(Z^VW_\�{�w�]7Tִ��>�7�P�\�)��y\r\0G\�1�=��\���\�[\�\n��2h�-�\'3��VH\�a6K�+׎�\�\�SOo+~z\�\��\0�\��ʝ7L�ӯ����\�k�\�/�\�Z)Q���z��9\��`�F���Ԥ��[��\�_2\�W�_�\�2\��+n�\�)[%�����g\�yu#�\�nR�=%�X�\�Zr\�;\�N\n0*�Wn?��^+;@\�/D\�\�\�\"\�\�\�n��DL`(|��\�f�&��ׯ��\�\�\�|g5��{m%��蚕ц6B�Feb�A�;S� X]j^�����I�n�h\�EgA�PF;����;y[�\�\���p��j�\����h��6rh�i\�\�l`{��b�C�v�3�����\�W�Ė�5\�4���{�F���1��\00ݞ�y�H��v��\��ק�����?�UPLw��:��\\���\�j\Zn�\��ms�5\�Ii�\�,R���\�,�0Xcq^���cG\�5\�-m\\]:��$�I6�rB�b\�ؤ�����=n�U]\�\Z\�\�\�\�|\"�-ս�]lEL4d(%>l��9��2G/\�\�V-:\�\�;�,\�CyR6�\�\�N�Һ�(較�_O�K�(�#�h\�DsDcu��\�~5�\�{	�?\��V\�y�Zȱ\'vm�\0{\�\����]�\�Yi|C\��\�\�4��䅠i�n-��U��p���OḚ�\�7:���u�\�\�`Kw\�\�\�(|�\���\�qߊ\�(������)YX+���mt\�ƹ��gmJ\�@d�k2�V\�gt>�\�\�K�\��<�x~v\�5\r7Wmz6�Ԛ\�$�\�\�)}\��w�Y,1�8���`x\�N}\Z�R�\�x\�ڙ9����\'$�t�U��\�m���\��0�\�\�\�w\�^	����ow��\��CN\�\�%�ƍ�[]\�zMޱh�Z��7%%\\���\��>n�rj�Ic\�G�ǪC�Yx\�\�\�}�vp��6@R�\����)�\�Ϳ\�KO\�\�\�\'b���\�+\�ot����\�?+\�ߝ�a$�n	\�5?�.N�\�hl�����\�\� �/-�,�Ln0\�\�8���\Z�k����\�\�G�\�Q\�]�<�ði��:�:c[��٢C ]�Y\�d�\�hV\��\�>�O\�n���\�Y#�y�AP \�\�7ddqך�:)\�[�\0]\�V\�\�\�O�9o\�\�N�k�/&vԮ�H��S+nFpGC\�\\���ܧ��\��\�n�w�\�>\��eS��,_�ѯJ�\�?CӴ\�ۋ\�x_\�W\�%�W���\��ڹ=�%�^_����~f�p\�!�\��\�}J�H�\�l�4\�m\�ڛ��b�����8\�]\�����\�3�5�7�\��׶\�\�	�ob.n `� �lg\'\'i\�\�Ri\Z5��\0�\�8Z\�\�{\�m\�K�fb�f\�\�Z�\r9k1--\�q\�\Z�\�σ�$\�t�ȯ\�ɻ�h\�\�mV\��}���oM�����<�G�\�%Ύ\"Y.�\�4���\�\nC`\�\\f�P\�M\��au%\��o\rZ\�u��jK=\Z\�\��.\�㽚\�խĄ��\��n\�A��\�m�kW���=�\Z�\�C�3\�B4\��	��+0_��W9\�J��Q=6\�.o\�{�\�\�)^Z��]f\�\�\�\�㔉�}\�\�{ĵ\�\�Ǉ\�uk���m\�SaW�2rNr}}*\�Tt\�́��u	4};\�\�ܖ\�5���\�}�@\��Չ����z\�\�y5W\��%ϊ���\�KM�#\Z|��ҹX��Y+\�x\'8\�\�{�Z%ئ�l��G,Z}�s\���R%W��-�\�\�Pk�����\�jw\�ŵ��r�X���\��)�}D���kY�L�\�ֲrb�\�̠�\�*0{���\�)�\�\�G\�\�\�P\�n�-�A�1�\�\Zr1\�p_�8��\��6\�Y\Z�\�Aco\"\\\�CR#`\�bA�r~���C)H\�#�����_��v���~��[�1�\�k\�@�tW7y&\�\r���-�{\�\�\�e\�?�|7�\0\�\�\�ſ�\r�%>\�\���\����V��v��\����\��G�\�\Zn��\�\�6V6\��\�-\�O$Q�i\�9b:�O\�\\{ڛ\�^ǩ\�:n���\0in������\0w\�?��\\\�\'<�^�c\�m��\�g\�u\�\�WH\�Ee�9��Q\�\0d犛U�6��\�%�\�Ă\�\�\��I�.q��S�g�\�%�O�\�\��Mn����\0	��<m\�yX��7\��<��6\�\�߿9\�ҧ��a�<\�\�o\�\�$ӣ�\�<�U�\��}\�\�z�W��5\r\�ݽ��E<\��\�Ĭp]�N��\'�\�$\�\�1xv\�B\�^\�R\�m4؝�\�\�\�خF\���g ��5\�x\n\�\��\�6�Z\�\�\��+:,1c8b7! eOQ�\�]\rPֵ�-\�\�ߴ\�\08-��m\����H�\��\�ױ~��\�\�+�Xn`}�̂Dl�# \��T�5`\�(��\��>��t���\�*�Eo$�}\�̪Us\�E\0lQER�V��U�ҥ�}t�$Qm?2�\�9\�^\�.\�Yz��4\�7Q�\�\�\�;��T��FFf$�.\�x<Z�y�QEQ�\�-��o\�!/\�\�ȱ͕�\�T0ǯP\�(�-.\�\�bimfI�Wh\�!\��>��(z(��\n(��\n*���X趂\�Q�@]c\�T���\0\�槻��\�\�[��R\"R�H\�\n�:�hj)��e9R2\�K@Q@GK\�m�_�����%\�\�I�q�3�niu]Z\�G�o\�	4\�d�;��pZ\0�EPECws���W2�0D�\�\��\�I�U��e9R2\�@EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP\Zi��i�\Z�\�cQ=\0V��\��~�\�K\\@��\�\"�\�\n��28Q�\�k���ؾ�\�Iu�j��7�\�P^Ij�R6\n�\0\�\�5��\\뺧�5\�;{\�j\�B5�Vk1(\�1�\�J��8\�Z�\�m�\��ia�(䝃JȀ\�\�\0}*���\�:�\�&��Y^<q� I\n�	����\��\�\�ڷ�\�o\�R\�\�\�O3Ggx\�ŵ\�\�\�@?*�z�1PXjw\�\��/Q\�/-��{\�{��1K;E)X\�\�9\�ܓ\�N\���\�\�\�H\"Y�U\ZE@�s�ORN��\�\��]ő��M��б!\�V�q$���g$��\��޴ڿ\����Wp\�Kt��K3+O\Z�\�H\�9 \� \�\�u�Ɓ\�+��P��Wo�k\�\�Fe�9}�)\' `u�\�wQ[[\�l�\�Av\�J� _Lt\�V�\���:a�\�l\�b��bA��\�\�\�M��~\�S��\�\�|o�A�\\4�qK�\���\�~\�&~�fE!H\���+W\�?f�v�\�k�jm��\�E$���c�Z��\�Z:n��\�FC�i�vF_��x=�\0]�f�����y�\�\�^w�%h\�)���\�\�}\�;�\���Z\�V\�|K\�ٮ�%+im8	2����r�p�8\�{Q-��ܽ\����B<��Q�z�2x�4��7�h�\�2\�\�_\�mw\rΏj\�\Z�[�b��X@\"N:\��=*ߌm ���u�\�\�\�{�I\Z+�!U\�2F\�X�29\�\�v:���\�,چ�ay*+\�[���$\Z�y�\�_Z}��\�\�\�ۏ\�\��q\�\�#�\�w����3��M\�\��>�fח2ݳ�d\Z���>m�Y��\�8���\���\�Mq/ey\��\�O5��\�|\r\�g\�a6��\�a�\�]��Q}\�w�C\Z}�\na:N�mmj�[X\�\�0���*4�\�\0��CWMw\Zvi� ��\�Ҽ�\�m�;�08�Z��_f�\��\0E\�f\�\���\0J�M\�\�w>���ZZv��ik\"\���k)\�\�\��9�8&������ɳ��\�-ŶD�$\�\�\�\�\�M�%+E\"z\��[E\�_\�.�\"\�ڊ�\r3+~\�3�\�~�Şޕ׍gJmD\�S�7\��]�\�\���\�\���0\�[�$\�CQ�;VD\0\�\�,GS�O�J\��\0\�A��y���\�5�SJk�\�S�\�F�Um�D���\n\�9<\��\�\�t\�h?n��ߴ$\�%\���chN\�О&��\��9y�3\�a�O�ƫ)/m:�\�nF\�8\��R\�\�\�\�Z\���M*�\�N�\0�\�\�\�\�\�9�\�OC��(��ݳ\'\��Ʊ�vv�DCX�b\���\�9�j��u;\�մ=>\�\�R\��L\�\�~lĮ�v��U�\�\�\�^1]�ͅ�ݙ�����Ѐ�	#\rA��b��G\�\�\�\�N�M�{\�m�1�\�t���\0~��_\�\�pw3kV:�e�j\�E�֪`��\��\��ې\�P\�UN\��.\��֯\�\�h�5�A\r\�\�1�\�[e�c+�ܧW<�Nk�ӭ�K�.K+[\'ӑ\��HTDNv\�sڬ\�\�^��B\�\�\��q1\�R\��I�Mu\�O��D\�\��w�\0?��\�%�	!fuY�1�F\0�0\�q\\\�{;[+������\�\�ż��2�J\�\�e��9\�y\�z\rR�H\�\"\�[Q�N�K\�\�V��c56��\��S�\�գ\�n\��]N�b��y�G�\��E\�<�u\0t\�9�T�P\�\Ze����\�֑^\��\�Y\��d\�ګ\�O/\�|a��{Y\�\�{�kk��\�I��\��\'<~��\�y-\�o/|#�^\�z�,�\\�\\�n\�\'�ErΧq�\�޻��\�\���\�\�O��I�ħ\�Q\�6G\�O֤6�\�q���\���B�r)\�@=@8{\n��o�Y4\�o\�o�\'�\�\�\rk�{\�J9t��%[\�A#z\�\r��[8�?\�\���<w:\�m$�\�\�\�	\nxm�\��\�_]X�4۶����\�\�Je�1�c֟e�\�XZK++kkc�\�J�\�_�sCWM\r;4\�+[�h��е��q���y��fPX3�\��r\\U�[\�j�\r=\�R\�@�b:�ߺɟ��HR3\�##�\�t}/N�Xlt\�;X��\0X�@���\0s�\�v\�v��Assiac�Ŵ\�;�\�\0��\�\�9������\�fX��w8R@�5\�\�>�r-�3�G�\�\�꺝\�\�yd�\�i\�\�(��yx\�\0\�\�s^�m<WV�\\@\�\����d\Z���m��\�m�C�N�ٕg�3�O��sI+K_\����G���6\�\�Z���w��\"[\�-\��%\�l1tm��q�ʺ\�v�=\n]Z\�B\�\��PAy,q�*��V\nN	\�\�\�B\�\�P:�\�V+|NMȷA)>���\�����لj\��\�\�j���l`\�n\��kNU\�ߠ=[~�=\�\�R\�\�+�E1�\�lD\� \��\�\�3Tb�@/\0g\'4]\�j��t�oY6�ݤ�j���g�\���\\n$�G\�\�n���qjv6wh\�K��A�`��N�L\�\�,E�\�6�Y�\n-\�%h�\�1Ih�s��j>k[\�_\\�K(v��G$)�Y�e����[����\�\�\�W\�K\"#���\�6�\�71\�=�hYi��\�\�\�\�\�\�\�0\��s\�\�\�7J\�t�tӴ�K5�\�qo\n\����f��]��Tw3\�ko-\�\�#�%.\�z*��h��+�x� p�ʁчFR2\r$��(\0��(\0����jz~�\nϨ\�Z\�Dʹ=ī\Z�\�b9\�\��)�I\�$�:\��eu9BqO��(���n\�\�\�\�r��7��+\�z���X# g�@��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\04\�N4\�@\r5Ԧ�z\0�-yU\��U��wjʛZ\�D\r2n�͸zgkդ�\r�\�Rmn�\�\�\��R\�<z\��\r]7f&\"��\�ڝ\�\�ޗk}$v\�\�n�\�\r�\�\����g� �\0pz\����ƥ\�+�*\�Y�M����\�������\�\�|��i\�\�=]P\�dx\�\�Ď\�\�I\Z���X+;�Z)�ZG�˩,X��%�\�\�yE$��\�\�\�\��\0֟\�7\�\�ֿ\�s\�����$\��[=ZK続i��\�ܡ@>��>�\�M\�.5t\�t_\�j\��\�4�\�m#���*��[\'���tr\�֒\�Pj/n\�\�x��q�U��c89\�:�T\Zև�\�E�o\��-�7Y\Z7��ʺ�ÏCK����\�\�\�Me|%~~\������o\�%Āʋ�i\�8n�2+�\�,�l��/5i�c�y��\nt\�*��\�wд;}&\r)���\�fF�/0�d\r�Ns�ۆz�\�5�y�\��\�P\��y�^MF=3\Z���q\�\�\��\"\�\�p�dt�F\�qTtMN\�l�Ŧ[-����`b~f9\'$�W\�`p\ZW��[���2]\�P�h.�\�A�@��c�Tt\�J�.��ĺ��5r\�\�Zб�[\�\�FDO��\�>s�\�+��������6,�	+N�O\'��\�{�rz�e�9���ͣZf���ʾc�\�\�\r�9\�\�A�㎔\�\�\��\���\�)y[�\0���WW\�u�5�=���HtXb�+v��\�1�`\�\�8\�b�\�<Eyo�&�>��=�޽���\�V\�\�\0g#\0\��V\��-��\�}cT\�\�K�.��k<�\�.H��a�psZ����MZ�#w.\�j.	y\�\�I\\�<T\�K[2��\0ח����&��\�xR\�\�\�->\�X��y\�A\��`eQ[#$��\0h��Ѵ]Y\�\�. \�\�b4Ye�b\0g�J\�\�<+�\\i6�T�\nl\�1�u\�\�c�Wp>��E\�*+[ka�����͸�FYGF\�\�I�����\�\�\��oЃ���:��5;�B+�v\�\�8T\�O,p�ܷ9\��m\\#\��\�+B\�,�(}@ ��pEV�Ҭ�.�.m`�q$�Y���\�s�}H=\�\�\'�և�\�H�+[���)��\0N�\r���7�\'�\�8�־(Ԥ��qks�\�\�ڕ\�[�]Z�%v�&\\I�_\��\�{�i֚e�[\�\�\�D\�<�w\�;c\�=I&��|�Z_Cy���Jf�̾Tns��\�\�:���u~�\�ۭ\�\�>)\�>&\�\�%\�\�V\�M�IJ\��\����5/�G�|(�@fy8\��\�V��\�\�+W�����f��c�9�&\0�H%\�\��~��\�\�B���I\�1x�%x�	8d ��z�^W�\�}[��9\�z\����])o\�Hl\�\�\�\�y$ff`3\�0F\���OQ\�?�<K{\'��{����^[\�5ܫr>c*�;�\�����S𾏪}�\�ڱ�\�<���y\"�W\�z�b=��_�kH\�,ml��K\�i�!���G���=��h��?\�\�L\0Et�\�bK\����E\�\�0\�o��N�\�u\Zݮ�h/�b���Ǚs�YO��}*+/\�v:<�E��,f$��g/�;�\�I$\��H��\�,�\�4\�;{E�J��c�$�~h�\0��\n߯\�G\�K�\�=�\�[>ˈme�6�8`����\�l����BnCC�Kq8��p�s�>�\�`s]k�Ȍ����\n��Ebi>д{Լ��x\�Dh\�\�q+�jz�Vb�8\0�u��?�_pީ[�\�\��=�k\�j�����W��\�[W��V?��J2�\�lI\�i.�\�[\�k��\��\�隣[\r=\�\��\�:��7\��\�\�vI�h�v\�m��\"�\�6\�\Zf�d!�d\�\�\�����x\�GP\�5H#���Q���HcPH)�2�\�z\�V��\��\0���\0�3�q\�=F\�mI�K�P˥ۉn\"�\��F\�\\	���3��*�Ƨ�k^ �\�,u�F4侖T�$�B\�@U\�\0c��y��xCC\�.�����\�:\�1\\K�G\08F�\�\�ڧ�t}Um�ݡ-j�a�9^)#_@\�Cc�����\0��\0\�����\0�q�=\�.�9��^\�ڥͼw{�`R\�\�{(\�v���]n�uu��K�\�&t�CZ$j$\�\����g���ɩ\�\�t\�d\�\�X��m�\�w(a�I;�=sSiZU���XC\�C$�)�3\�\'h\'\n3\�`{S\�\'��C{i\�6\�`��\�\�Y���)0��&�\n\�3����^j�\'_\�5\rD\�h\�,��\�Фo���\0 �g�ֻ��+mF\�k;\�{i�l��\�aY\�w��]6\�\�k<%\�ys�%yE�K1-�\�x�j\�\�o�Ԩ�4�\0��\0�r��մ��+cs�B\�U�8�\�Dkr���@%q�ݓӚ�wmsa�F�\�\�\�ob�R�\��H�0Eu@�\�\�OJ\�\�|)�\�wh��d�\��If�fD�\�c�{\n���\���\�Tտ���\�\�e�m]ݤ2`e�(�:�jܓ��S4�z\���\�ڝ\�\�ޗk}$v\�\�n�\�\r�\�\����g� �\0pz\�\�\�u\�\��6�\�i6\�Y�=���L΁�1p@^p09�\�e�.�u?�<wl\�Ghn$�]�BȬ���j\�ѵ{�ywj�\0j�Άy v_BQ�#\�ԭ�)\�\�\�6�k�����ro`\�Gk�2 ܇�\��l�W�N<Cc�\�\�\\\�ܢ9�0C\���T`�\�gljz��\�Cc{nd�V�:�2��\�j�iW6V��Gs\�Z\�\�)y2:\�]X1�I���-\�\�?\���\�\Z,3G�K�dy��E&\�\�d\0maЌ��\0j0\�Z%\�\��۪&�F\�1ڻT�NH�<U�+L�\�,�\�\�\nI\n	$�rI\'$�{�iڍ���e5��	=�\�k\�\��Z\�\�s\�b\�5y�|S�\�m|\��\�1�a�a�:���������Y�ޭ�M\�k+�P\����\�O#[��X*+�잜\�Oc\�=\�\�~M��n\��&i\�e��|��v$OOZ]&�?�af\�7�\�	%�I�S��]�\�\�1Mu���\0����\�x{\\\�\�>\�/5sw�w%���o\Z�\�6�e�\�:��Ӯ�C�.��x�=J4���kq�yU\�IDd�\�\�Q���\Z\��\�okak�\�t���\�\�9�\�\�\�9\��\��\�栛\�:گ���z�� ���\�4���󰷹���\��\0o��\���\����n��Mfm6\�\�\�)�\0sN\�\�\�K�q򎕟\�+\�7�\�\��;��\�,��+X\�$K#���#h\\�r+�M:\�=N]Ib\�\�\�,/&\�\�)$gX�\�K��Z���E��\�H\�}\�\�U\�Tc8\�ߝM��\0\�c�O\�\\xwL��u�\\\\\\D�\��д��.\�\�D�b�\'�\'��\�S�־kR\�jZ\�\�/-ؼj�vnPYT�pq��\�\\xKD���\�\�\�$�\�4sȒF\�IrX0\�\'#8�zf��izs\����m\\�:;��\�}\�KNs\�\�\�\�\�\�4\�$\�FG\�_�4����\0@\�\�O�xQ\�\�\�{Kw�P�b���&��\�\���D��Zy$\0\�\�h��$i,m���\n��\� �UT|͵Ԙ.[\'\�\�|)⻍Rɯb��N���y.a��\"leL^S�=0\�\�sQ\�^!ծ�^|9>�Gc$���\Z�|1�v�M\�>\�x\�Mt\�G�t}\Zv�O��P�Qs+\"�\�_�\n�?\r\�[X[\�f=>_:\�0d~rwg\'99\�9\�9�\��\��~_�[CO�{O��qIu���\�|\�\�A�~��*bMT״\�ۏ�:g��\�Zy�<��o,��\��9<q�\��o\�Z�ݽ\�\�5Ÿ+�\��0�A(FF@\�\�R\�^\��Ɓ�vy-\�1I\��z�\�A�\�3It�\��cz�\�o\���(��$Vv��\0]���\��:�I)`�E\n��x94� ��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\04\�N4\�@\r5T��j\0�%pR\�V\Z�\�wi̧�A zf�\�+���4�[�a$�]_\�&3\�7t�\�\�M�Po4eo�\�?\�z\�\�\�c5\�ƺ�0H�c�\�kS��\�z\�ii\�\�D\0L�[̗\r�H� &��Mtri�k�\�%\��L6\�l�\�U�X�1�\�Gz\�\��c�\�\�\\}�P�[\�T��\�`�܀07�	q� �R�d�=?\�{�/�&֗{��\�_\��\��Cu�#?�C\�\rN=C�ԥ\�m�i1�\��8�]�\�\�P$Q�DU(\0\n��v�w�*\�(�X�\�Mz\�8�p�\'\'s�{ӕ��tZ����\�\�^�OԛU�Ye,�{\�f,�\���\�/Ԭt�ao�mf\�t���\�\�,�\�\�\��ےJ��dd���X\�-�se���~\�t�Q�d�\�\0\�9�W>\�n\�X[�:E\�]$�o\�\�EUR��6�ߚw\�\���ɇo\��P�V��&�k�ŧ\�}m���m-��\�\��YK8\�A\�Q\�>-\���Z�i\�o��-��tm\��8\�\�c�\�=�\\x&\�\�u�\��\���\�uq*��?*\�B�������{\�\"\��\�N�����<@�,�\�9c\�.�\0ׯ����\�h^=\�5K\�:e�a0O&;�$\�\�\�1[�\�:�N+k\�_�3���/1��P��\�,l\�!_�\�ս#\��(\�:���l̖Uh9\�ewc����.�w�\0	6��_C\���;[@X1�gw�\�\�py\�U+]}�\0\���\��Z�^ڏ�\��\0b��[\�V����\�\�#>����5��[O���̚���7d ˜\0�\�O\�[�\�\����ˏ�\�6F�\�Zȁn\�\�\�\�����~�\�{\�\�o!\��;	��e�$E\�9�ܧ��4����k�����_\�\�:G�\�5I�2\�(�T�\�\�\nr\�7��)\�M\�\�:c�V�ź�\�Km�\�ϭ���H\�ƨ�1�\'\n;�ٹ�~�%��ii%֞t\�~\�=��IF�眃�m��l-\�,\�>\�{(���\�\�\�^IrI݅�\�ONo/�+���i�h�\0[��[Z��׬&kum6O+ώ7h\\W\r�p`pq�\�Z\����g�\�=V\�\�\�\�b\���\�q&\��c�\�\�\n\�\�{k;\�N\�\ZF}I\�\�W �*�\0^:`w\�Q\�|+m�ZKb���Z{\�aKK����7N9\'��l�\�fR\�_���n\�\�|;j\��#\�\�$���9VQy\�|\�{TW�6��il9�\�m�̞�t�DP�\�\�*m���N�kx���u�8Z\�\�+��ld(\'\�\�=*Oi�v�S�\�b�Ǚ��b���5\�$}\��5N\�\�y�z~�	4���\��\0^eM;W��{w6�4\�m2\�\�\�\�c�If(\�vYB�\�\�Wִ\�+���\�\�V\�M2�&#\0n=�ZM\�(c\�g��\�uM8\\\�\�O��\�H�\���q\�\�3V��\0��Ig9�����fhn-]U\�p\��H �jKD�\�\�\Z���\�\�4m\r,KkU��k\�vS��*(R?�rsǡ�\�O�\�\�.<4\�(�\�#��B�Y�x�0� cvz�����xV\�P��\�5J\�� �;\�Zʪ�G\�� �8\"�s\��6K\r6\�\�[�<\���{WH�0ܰ \�<\�д_ן�\0�����<]�ͧĖ\���Q�\�\�ӭˆ\"\�\��\�Iڇ�FO�3��j�j0�k�X�#w�ᄘ\��)��=;ֵS�Zr試�\�d�kĻ�@�&$�\�<�1�zU�\'\�I����Z��-Π�廕�2�\n\�\�\�M%�\�\���ɉ\�\��K\�ܷo�jQ\�\�O{,\Z�\�\"i\�,B��ÁLӤ\Z��u�Q��\�`1�yĒ�\��\�j\�\�\�ḯ�\�P\�u;<\���\r+�\n�\��\�q���/J�J�\�\�(�t\�\�.���1f��\�[��\0���\��G&��kw~կ\�-:\�Q[����M�؝�#�\0ǽO?\�\rM\�nd��Y\�ݛo�-�̒ʪ�YĪ<�=HS���kz\��\�w�RŨj_e��\�mbҩ�& �2���\r\�\�G\�Hm�)o,uMN\�9��崂U�d|\�2�3\�i��~_�\�\�\��\0�\��\�CT�uƓ?�!��2\�\�,UAuq�A\�\�\r�c���\�ܛ+sx#F52��\n\�$�z\�\�|/�\�:���݉|�=� F\�\�\� 8\� 0=\�m\�[_ר\�\�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP\0i)i\r\04\�mR���\0W�W�ɫ=��kg=�-.\�\�}\�T*\�Ш\�?Z���E�\�q�èL�;۩X�\'\�Bx/�\�q\�j\0�\�A�^\�x�\�v�Ҕ����.h;�����\�\����5-6\��S\�.��Eg#���\�PS<��\�\�Ӯc\�\�/�~�W�N\�\Z\�f�\�3`�\�A�\�O\\Ǐ\�_\��2h�\�\'���\�-�-+�V\�;Tq����u��l�\�[\�5�\�h`��\�\ZKp\�\�\�\�F\�\'�u9�/�Gu�\�z���Ag䲬q�v% �*\��\�u\�X\�,\�\Z$1\�,֨\�\�p\�\���`�m#;qϭX����ͧ\�$�*\�,x\��V� Rw\���\0\���\�-k�	m�c%���\Z}��	e�%\�r \��\�\�w\�Vt�]\\\��\�\Z:Y��팱\���J�	q���=}x\�z�/��K\�S\�5-b\��@aIa��I\�\�ޝ*\�\�-\�u\r:\�?*�\��J�\��h�1s�9\�(w\�U��f�}:\�}\��}Na\r�ٜ3�s��x�Cc�OQ�TQk&ojv\�Y\�i\r�.��\�@�\�\�x\�G,@\�zNjK\�l�u��\�\�h�d\�kKCnԌ\�&~`�\�\�g5��h\�\��i��Y�\�$\�k\�UbAS�v����\0Jz]]:�\0�����\0��\�?���>�{eVR�\�\�\Z�v�1#vؑ�.pG�\��\�\�\�+\�+{\�	0\�F��#Vι\�\�ަ�y�\�\Z�Vn*\�\�f.����\�R�\0\�qҺdQTぎ([k�=\�ok�\��\0\��Z؋˫���\�M\�(;Y�[\n{U=k\�R�E�\�W������Ȋz<���ZVU\n0	\'�ik:?��\�s\��_\��_h۳w��2\�9�\�\�=*?hC\\��	t֗v�	\�\�T��#�<0 �E-\�O�!\�\��\��\0\0�\��[\�Kk�_X��!�A!eʑ*�C\�?.FC\�\�\��|�+�Z\��� ��M\�DV�v\��\0鎦��\��F\�.\'ԧ\Z��wb\�\�\�b�p3=OZ\�\��\�\�\�\�yewo�\�\�8Q.\"0\�ʱmf\�y�2;S}m\���t�q<;�\n\�W\�\���b��\�\��\�m�\�Yv���T|��#�\�hh~#\��׆\�\�DEѦb#��\�,����D�q\�X\Z�@\�5M5\�;\�^\�H\��\�~\�#�\�p\�\'�3Ph~\�46�\�\�\\F\�\�rc��\�4��\��(a\�<eI��ŭ�1k&ojv\�Y\�i\r�.��\�@�\�\�x\�G,@\�zNi�#��k�\�w�QEe)�Pn>ѨGo#7m�\�z�\�\�4��	\�4\�Y,\�h�\�󃪱 �ܻO\�G�Ay\�{\�\�/5#V�\�\�\�Z\�\�\�Pr�\�T\�\0z�:T�\�|\�Ռ��\\�\�i�i�\�Id��<��7\�\�pr\��:u���\Z�\�= \�\�^#���|RB\�=Y=�\�h\�\���T�\�ҵU��{am8�\�M�	+�\�R$�zX �\�~�\�\\\�\�!�:�����J b�OzS�eo\���/\��O5׃tI\�%�i����I�1*2I<�Sx�W�D\�\�Qu4�\�q4�X-#�l�CP�\Z	�|�Aq�\��J�ȥYHQ�A\�\Z��\�?\��A\��>U\�7�nϖ\��\�u\�3ڮ��\0QG\�����\��\�.t�d\��D\�\�Jʓː�c\rӮG�JMƫ�k\�F��\�y\��iW©C\��\�5wP�\�\�ʎ-�\�\�\�͡�0�\�X38#�\�=�\'5GB�}ޝ�iח:���\�\�\�mp؈	V\�2\�9���\�G��\0��\0\�^_\�\��I|7⻯_ʐiֱ\�E+\�!k\�n\"*H�\�\��\�\�t5R-c\�\�\�N\�;9m!��\�7�(Y\�o�\��A�\�\�YO	\�\�\�-[Q\�m�{7g��`!��my7��=\0��z��~\�!:ƙ�%�\�Aq��puV$;�i��\���t	u����\�?���>�{eVR�\�\�\Z�v�1#vؑ�.pG�\��-C\���I�\��俗S�k�̷B�k��\�\�?8\�\�\�ަ�y�\�\Z�Vn*\�\�f.����\�R�\0\�qҴ�\�|\�\����\�v��\����9\�\�\�\�[+�\0Z?\��~\�\�$��\�\�H.s$I\'��}`g\�Kywmcm%\�\��[\�\�2�\�\�UG�<\n��讥]C)\�\�40F{j�O����*\�\��\0\�L�\���\�ą\�\�j�F���\�%�M,\�.�-.b1L��v��\�d{ջ\����\�9\�W\�\�-X#�988\�=?\Z�F����\�kD�i?\�\�ļ��\�o\�Ѐ�<�LJFB)lz\�W	�|C���\�\\\�+��\0fc\"^��\��۰g�A\�޻���\�$�8ޥs��\�/�\�MK\�\�h\�{i�\�@L `@<\���N2z\�[붟�A\���\0�+\�\�6\Z��w\�\�MYME~\�7�ys�O��sSj~+��į�\�\�\�\�\\GH~\�|-́���v6�c��5B��WKy\Z�1\�^_-����y��W K�q�\���\�\�\�x�Kl���v\0ri\�Yb=\�97��\�S[+�VC\�-W]�ּ?�mn�\�ܔq%ɏ\�>[��\�l/\0\�\�1ޤ����\�1jW���5�\�aq�fe�\\��\�k������K���ӦA<�����He\�\�C\�\�\Z���ν\Z�E�X��\�E�h�W\�\�h�t\�c\�\�\�Z_\�~E8|y\rǅ$֭\�\�ic�[6�;�d2�T�\n��\�\�N\�\�i\Z�\�RSO�\�@\�E�\�\�z��q��\��\0]jZZu\�\\-\�S��[lV\� |\�q�q��Z\�*��\�����U$�5\�xͨ\�K\�K��y�2Z(˝��	�\�W�q\�=I&��20z\Z\��i}�Gs�\�\�9��b\�W@��B\�HC\�2�>\�4��\0_\��8\�\�\���\"+}�L��\�\�6l\\�}�v|�9\�ߛ\�t\�U]Gss+\��&\�Q�ϖ\�n��_pP\�^߻�şj,|wgu�\�5�}+M�k�kck�\�$7\�d\�\�\��ՙ�\�i:��\���\�Lj����\�}�\�\�\�\�x\�Қ�����\0�)y[�\0�#\�|_i�\�\�����\�R9.�a$\�˻\�B�l\0�U�\�cN\�\�\�M�\�\�?5\r梶��\0���\�$jğ\��֧\��\Z�\�}\�[\�\�l���\�!��$\0G#8lf�o�\��\��H��\�\�셈K�Ar�P9���\�>�=?�\��\�i\�\���\�5�\��Yt�:K\�\�b#,\� �\"���8 pI\��k�\�\�iz\r\�:o��Bf	q\�\"�\�\�m�Ƕ*\�~\n�\�J\�!�\�Z\�Q\�\�h���+��Z2y�F:՝G\�7ZΟam�j�Omz�NV\�bJ��\�\�,q��\��U}���\0���׷\�6?]k\�\�|��J\�-VI\�:�Y�\0G�{�\'*�\�\rn�\��\�@.��K�\�3�7(`q���y�b�DmBo\�\�d�M��ȩ�\'r�\0�G�Ehi\Zf�m\�jZ��瘛\�d +\�$�\�9\�ӥK\�o\�O\��\0!��+�j��\�\�h\�Zi�1y�K�\�2L�M��\0�k��\�\r\�_\�z\r��\�y�\0d�b�6\�ݎ�\�\�\�ZUN\�\�J�\�\�/�\'\�Z\�΂;6����4�ڄkpHm�\�2\��$@��K\�:�k�\��N�\r\�ۥĒMy\�(X\00���\�\�\�\�n�3麴1i\�ܛ���\�J\�X\�\�I�`��\�5��\�x�\�Y����X\����wc1\�s\�wt\�jKe�\��c}m�k�E=k_��\���.\�J�\���&+%ה��۟�k\�Ԛ��o\�\�M��IK�f�O���D��\�ɷ� ��\�ۭ\�$�\�<��d��+fwo(s�񍞝\�\rB�Q��Դ�C\�\Z��tIZ*2>7+&Fz�\�.��\��\0\0�<h\�s\�cM�\��b\�[6�\r�	��\�>`s���lXCQ���Yӡ��M�]�w)�\�T���\�#�\���m9�{����\�\�\��A\"��A\0�\�ֺ{�L0I(�\�(��F2́\�{\�v�����n\n�\����9\�\�s\�\�\�ܾ�:\�\��\�\�7\�*O|f�j\�!�\�B������\0T�\�xAϒ�B�܅��]\r7\�$QE!�Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@i�S�\r\0D\�\\��eֻ+��\\�}h\�׍t�k�T\�_���y�\� m\�;H\'v\�pHR\�S\�(�\�Vm.\r+R\�n��\�\�#!�\0�\�\���r\0�M^\��\0��;�\�\�]�\�\�/��\�6\�^�\�N	\"��m\"x�_}���\��\�\�n�	\�\�$c��z\��\0֟\����\�n�\�H���+1�j������!`��Ė`7����ᰆ\�I�j}|	�\�8ѧ�b~m���\�\�S\�4���Y�\�\��{[Y\�u$\�,\��\�1��Px�HԦ\���gG{Syh�B\�\�X\����(%H*CޗE�w�\0�\0\�0\�W\�﬈\�$�[���,�\�yeI\�:\�޴t�J]F$�K�\�\���\�63W4\��o\�k%ͳ\�7��z�\�\r\�\"Tb��8\n�\�}+�=8�\��\�[���\��f{O�l\�v\�\�<{.��\�*q�zV�f�~=b=?n�5�׾c�֪U6g\��\��\�ZT��+[��\�\�؄z����\�C\�,��6+5�\�\��tw\�tZ��\�ү�\�3Q�եH~\����\�n$\�\�jMI�ӵ=r\�g���\�OBI\n#D\�duʞ��?V��{�\�\�a\�nL�\�t��Ē�c�\�\�#\0.ц��)�_�\��_\�\�E{�\�G\�7L\"\�\�\�h�\044W,6C\�޻zco?�\'�\�u-?S\�.-59�����\�k_*2�������\�\rO\�}\'S�Դ�WI6�u����\�\�\�\�i���=)|S�j:�����ڦ�eu\�YY�N\�\�r �q�P����\�_5�5�v\r\"Kh\r�\�\�\�\�o&\�\�H\�~�\�\0\�\�\�U�4�\�7�#ܛE��\�X�\�\'�1\�k;\�\��כJ\�n-4{�B\�dIl\�Im\"�:6\����o��xR\�t�8\���F��X]���\�7ٝ�*A;A\�O\\u(^ֿ\�\����?����_T���\��\�4�\�\�\0��)I�I\'�z\�Qq#C�,O3\"�Ǎ\�Ga�O��\�M+S��\�/�_����\�J#���P,j�YT����\�Q\�z/\�H\�\��r\r\�y\0[�\�\�D\"P��)ą�\00x\�A\�=���\�ۻh\�\��+[\�V��\�	\�g�9\�88$\0q\�3ú>��\�w�\���.�5\��,�#����m+�o�;�\n\�\��\'��:>�{s`t}\"\�&�X���ϖ��m\\dd�s�\�G���\�����\0�;�\�5O\Z\�麍��\�ڜ駪5\�\�+G\n�\�\'\�\�F98S]=y���\��\0�|ec��\0g�W1\�\�4�,��\rUPCpO�Ե\�5n�g�e.����\�l�\�Ƞh\�``\�9�?\Z\�o؝/I��\��\��`M��H�k`d\�,`�T\�|3�i��7z\�M\�i�N�+\�0QH*\�[��\�Q�_\�\�\�#DkSkH\�\�.\�5\r*�^p\r7n�֯��*�\��\�~�\��z�\�J\�\�\�5y&\�\�KL �\�\�\�cv\�p?����k��\�W(.m���ɞ\�\�\�`pH\�A�\�\��t]\�\��)\�\�\��\�\�\� X�՘b\0\�q[Z.�qa�뷲�F-Bx\�);�,J�wrL\�[?\��}?��\0�\r[�㵶�\�f\�H]\��$\�N�\�1���=+Q���/:+���G\"�mrFA\� V���\�\�!�J��O��q�v�;ÞԬu�.d�N\�,$�\�\�O�W�gb0�UP�~\�\�<\�\�\�\��\�׷vѭ��V���oe�,�\�\ns�ppH\0㊣/č2)�G\�uQfL\�\"B�#�\�y>�v�`3\�J�O𞶐\��E\�́\�􋄚)b\�\�\�>Z���q��	\�;S\��D��^�\���\�-\�p\�\�>\�I�2`��\�x=8��\0�\��������,�뛘V\�P�[4w-�A�\�����s�\�\�\�\�\�\�\�*�F�k�\�|+\�׺�\Z^��G}��u4`�S���T�9\�]\�)ooF�\�\ZTA�P\0҅���� \�`\�\�2[]]Kw7�6\�\��[���=MCq\�H�4��o4\�B\�Y��a�dF�G\�B��Ns�qN\����KP\�\�!x�,/>\�(rA+\�\�p:\�\\U_xh��\�\�c�=����+�\��*\�Ђy\�qK��\0\r?\���\��\��%��#�\���\�/�\�`B\�c\"�̤�����G9\r\��\�|�k�g�޵q�-�Z����[�<\�2�\�@��ֿ��#�\�ב�#G\�\'�\�ۧd�`%T\�$��^\�.��	X\�n`�\�\�\�a\'$\�\\.=\�}��/��n[!��\�I��[[I�\�\�FE8\�6�# \�+n�\�xkS\�5\�z\�\�\�e���K=>y$�i	>\�UT\�\�\�\�\�zx�R�\0�\��\0I�¿�\�bd1�r3�\�\�v�w\�\�U\�[\�V:e\�տ\����U{ɭ��##y$\�8PH\�\�+Z��T�ƕ��,WV\�\�\�Ԏ���eڧ<9\�\�Z\�MB\�n��\�<[\�Qg�\0fk�\��-\�`��\0H|��\Z�m���3�\��\�\�Cиx�P\�\�x`FA�⃩/��\�Gb����r1\�ۃ��h�\�\�c\�\�\�i��ֶ��\�X&YUG�#8�ǽjUI+�\n-\�\�\�\�A��My\�\�\rV_\0kz�WR*\�t~�\��	U9݆<�\0z�O_\�aᛡjq{vV\�\�|\��\��u\��ς?\�Ӛ(\�EQ�I�e<\�\�})-\��y��xme�_\�O���\�\�_�ݽޙ.��x�QU�Df|��\�Q\�1���Ky,���\�\�\�\\\"���\'�pppzT:���յm^Y�D�\�4���I2+r[\�>aު\�x{^����֦ӂ\��\�n-�3�l\���\�1�#<���vo�\��\0\�����\��\0];\�.�}qm�n�n��\�lQ.|�p\�\� q\�|U˯\Z\��\�2���{(\'�_�@\�\�&v�N\�\�\���ި\�෋B\� O��J\�\�+s/��-\�/\�s\�Q��&\�W�\�\�6wmq��\�\"\�0͹��!���H��V\�w��K�\0]\��u;�;F�\�Q��;KV*k�cvss\�W?�-\�\�[Ge��c�L�Fһ���\��\�c\�\�\�\���\�\�E�7\�\�K�A��\0��?]\����HYэ��=�Y\�\rۼk�v\�eeV\��m_\�OĮ�w��Z�����\�Z��m�\�g��\�֐�y�\0�nA`�~�nA\�\r6{+��\�}��XyMY!����x\�;g�3X��W\\Ӭ�*lN�\�E�H�Y\�t���\\�\nO\�ojCF�v��j\rU� 2g\�w`�x\�^��\��_�\�\�\�\���ll_��O��\�g�+��D�\�QIvp�l矾:⟥��-FK\�q�\�\�\�q�Z\�\�du9\�T�*rA{�\\W?q\�=oP\��G\�\�\�^\��0̋�\�\� �b�\��\�]:E\�~0�\�\��ylc�U\�ܮ\�I\�0ýJ[_�\��\��]�\0\�\��W��\rr\r\�y.\'O��B;\0�\�\0�\��U\�_\�]X\���\rȏV��\0e\\�\0\�-\�\�=3ګ�gJִ[��)?�\�\�d��\�%YN<\�/��ݼy\�ӵdi�׭%\�,$�M}+H�{�\�8�ЇJm\�\�\�wjO��}~�\r\�\�Wp_h�f�/�uv7�\�\�`A�C�\�\0��*]G\�0Z\�r鶺v��\�@�ӭ�jD!�]\�̣$s�I�zG�M�u�j=`\�\"]>\�y\�\���Rͤk\�f��\�:!Ӯ Ԋ<\�\�;\�c�T.U�[ �8#�Z\����5\�������\�S��\�n\�u� ���\�k6�\"�[q$���p\r�+W]\�\��y-`6\�W��E��kT\r#�c\�\0�\�#���)\�5[M\�\�\�\�SP���\�,�\�\'e\�\0�O8�*���\�\�\�Zշ�r\�֑\�\�\�#�#\��.\�AU9\�\�GKy�����_\�Y�\��l\�v7(�?\�w�\�\�h¼3s�pO�\�3\��\���M�Ma\��\�R$S|�.\�T $��v\����у�ݫk_ڃUbC���\���\�=�M�\0�GV��\�\Z�k+k���n\��;4�\��ۻr� �\��_��{\��o�\0\0�B\�\�/jq=��i:tR%�\�Eb\�\�,0\�r\0{v��\�5=WR֭u;,\�\�X\�\"�����f\�O=��j=J\�\�W�ή�rI5�v\���\�\�fl�\�1�\�9�xoM�\r���k�F\r--�Gaou#�e(\04jq���\����\0�����\"ޣ�]����\"\�]��2]\���\�1�\"�8\�x\�\��ɍ��i6��\�oඓP�5+y�7��*H\��?�\0\�\�P\�<@ܭ\�\�٭��1�(�/��5�{\�-x[ϤZK���6��\�Y]\�x��%d\��\�����\�@�\�\�֟\�n\��/�\�n��[B�Y({�mb�\���İ$\�(\'r\�\�67\Z�Ӑ��f��)˒&$eNs\�㸮_X�<����\0S�K\�5H\�ʻ.��\n\�`�� ��{\��\0xN\�U�\��\0���O�\�6�s�\�\�.\�U�\�0\n�Ȥ�o?\���Ȯ�\��ܹw�\�k^	�T��O\��3\�y��rA\�\�\�s���\"�\�\�\���\�֣���\�\�[t	(���\�\0�����*�\�(��C\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\nJZ(�W,:\�gL���|\�q;�\�a\�1]�|��*\�\�mz�\�)XZ���nCM+���o킳xW�\�\�xoJ�ڬpj3�s\"�jg\�{�\�T�\��|����\�J$\��*K�[\�uy\�[�K�U\\\0�u\�yr��i5S\��\���v1�\�\��\���\�p,�Y�\�\�\�c\��\�rjV�\��6O�v�U�+�d�\��O�%�\��\�\r�\�f�\�7y��3Z�՜�Tz�}�\05<�Z�,\�jpCe��a\"�\�<�ˊX�KY-\�c!\n�o�[�j�63�\0d\\[2��ي�G��Cww�\�m%��\�T.\\6\�}:t�\�\�+}�ҳ\�[��4\�]{\�t2��\04I���\�\�^e\�A$\"6q��\�c\�\�\�T�\��ay,��YxB�\�\r�>�\r��u+\���rۆ\�Ў�VoW\�E[-�k��Y��Q.�����Y��!fL\�\0\�ץG\�\���\�\�!\�z�={\�\�Zr^Y*ڛUx\�\�,�pO\\u�\\\�s�.��L�\�7�\�=y��J�Fn�\�}�z�\�&��\0��,\\j�򈥙U\�l���H\�P,�3\'ϳ\�\�\���˫K���b�%K�>r\�l��\�qeu�<��o\�\��~j^\"�M�\�\������5<���r����pG3LI�O\�֫\�\�d\�\�j�Y\�r�F�}*���,eH�I B�\�:��5�7V�[G�}�37\�\�ҥծ\�\�d�=���_N��M�}?῭�7?k�K��7q�\�\�5�;^��n�r�6�\�=\�H��\��\r\Z:\\Cf�O�c�\�������ދ$z���;��a��0��q�ֻ�7(��\ZA�\�\�\�g\�\�J����*�\�\�X�G�֙i�\�Z\\G,O8X�V#!(1�z\�\Z7�f��T7��^���Ҏ�M�X�s�\��\�g�\�	{�R\��\�qP\�{{�mj\�\�\�\\n\�@m\�<�^\�GL��ح\�W�D�P�g�\�M�[ݛ\�\�X\�ܶ\���\'#MR�S_\�O�Mɦ[�\�\�\n��\�2\�	?����\�}���79�	\r�O5�wo~����\�\'im���\��z�=E@�M흮��ƷZ3��8\\\��\'҅\�]����5έb��tn\0�\\�b�\�zc5KN\�E\�w���6\�\�\�W\�\�5J-*�t\�\�_�Ctg�K��zg�j\�\r\�j\�\�Y��\"�}�қ�b\�k�\�[\��\�8$�\�hvHc\�\�\'�u�\�Ґ_K&�\�Q���|�A\�c\�\n���\�\�-ݡ�7�\�\�dV8\��Ӽ6�,\Z���\�R\�=�p)E&\�\�jM���\�\�\�&��,w\�\�\nq�לb�5{��\��f\�]�H>�\�e\�Y\�0j(a�{[R\�ʍ8�2?\�A�����\�\�J����<r}�T\�M��\�8^\��D\�$��\�ֳ�\�\\y\�BJ1�T�S�Rj����N�3!h\��\�ӵg\�\�sO��C�n\"E�\�1{��\�.l/\�O��2Y�w_0)C�����\r5���\�\�$�\r&k�E�\�1���\�q�V����ؾ\����?M���\�\\�VCX_���Z���\r\�F$U\�=M0h��d��q��w��\�?\�\�L\�8����Le5�~�\�j\�2Z=\�N\Z8f\nI_�\�E<j��\"K���\�`�[ۑ��.\�\��5ԯ\Z\�<���\�\�=Z~��\�i&{s\Z\�(�eR-�T��T�F\�R��u�gJՆ�-\�y\"\����ݫ\�#ռAs�\�t\�UХfH�7?�R��,�\�$�;\�<^\�SP�U��}<\�\�S�5N\�c\�k����\�\�0���͡\�[ȳj����\�p\��\�;1\�F9��Ji-��n-�ҫ���#�{���\��)kr��	�\0\"?��\�m�\0���������O�\0a$�\0\�Kjܬ?\�_\��\0�O�$��\�\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0+�~#\�r��_�	�߫�~\"�\0\�r��_�	���2\��\�(�����(\0��(\0�\��?Ҋ+9b�(�\n\n(��\n(��\n(���\��V?�\�	�\��\0�\Z(�#�?�\�D�%�6h��̰��(\0��(���\0 �\��\��\0\�\�z����\��\0*(�>\�̇�G�袊̰��(\0��(\0��(\0��(\0�?ȏ\�\��\�襢�\0<=�\0!�\0\�I?��ڷ(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n�/��������\0Bj(��\�\�c�\�'),('F003','Cubicadora 2000','0000-00-00 00:00:00','None',0.000,0.000,'','None','None','None','None',NULL,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0\"\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�k\�շ��X\�H\�`\r\�\�K\�2\�dYc!FX�/ֱZ)\�Ԙ[̦Y\"�a��S\�y��xm�\�6��º\�\�޸�9b��m�\�\��\0$a\�%ͧ����D̪��,7(9��;�$r�\���`Mc\�\�3\�Z1�`g\�\�v��F,\�\�	�y\�A\�ڭb�ڴt\�\��{Wk\��\�\�\Z��ڞ2)Q�ŀR}:��\r<+�2\�6r\�a��}+*h�\�V�V�y��\�.0�\Z�Q�t��V\�i\�(FE\����x���rWi��v�\�\�%{��7�F\��I��v\�\�w���`ke�:�Dp[\��\�ca8GF`\�d^���\�\�9-�[K{i%�&r�\�\�\��qޒ\�T璶��\�O���5n�Lv\�\�\�\�;�\�\0��\��Kl�2�9=*�q�N�[<;��FM��zUG]h\�B[̒F2�\�ߎ�V��8��\�5\�ץ\�\�i\�\�\�K�dFt�6E\�����&eU�	a�@a\���\r�\�5\��j�\�<XG]��\�M�I乶\�h��e�p3\�i,T\�.�\0�\�}\�U�Z\Z3\��\��r�a�W�\rFݯE�1iNs��ǭc\�\�ȓ\�\�l\�I!v�d\�\�{\�\�V\�+��\"\�\��0fX�	=ǭD1\Z\�Yv\�e�ܟi+_\�ў�\�\�h!�\���%aGp�!$(=N=*z�\��\����y\�ڄ�s�wIe�;~�\������\�}\�\�ǝ�=�\�\0۞\��\�E\'��vط,p��J�Z,�vPJ�\����n�/l\�\� ���͟���*��\�Yh�\�\�y\�nD��c\�\�c4�Մ�\�6�[\�f�\�мC��\�+Em_R��]\r	/�Kw�\�ʼt\�U%\0~|\�i7\�\�6\�y~^�����u��� �9D\Z|�}2$�G��k3KK�\�I���\\Cp��2\�	$\��h\�Vk\�9�\�7�����a�)~�G��([�f����\�!\�\�}�s�U��`\�i�\�h�\�\�D�\��\��\�\�\�$Ӭ\�\�\�M�\�3\�S\� ��\�{%}�\0�I��ױ��\�\�X�Dx���T1\��=�֝u�Y\�\�Ef\�Zy.\�۞��W;=�\�#�\�|\�pעQp�\�R���o�ix�\�\�Y���d0β�\�	`@�M5N: s��\�sj�\�m-e��\Z�#\�ڢ��3c\r\�ю\�J�\�\�`g�\�\�gk\�\�\�lP2�\�ea�rr;Q�[����kG���2�H�\�$pv������\�\�sKԖ���\�\�a�\�\0\\Ցyja�\�>Q8߼mϦk��ϼo@�o*\�2<;\��\�\���VZZ\\\�ڄh�Q�����G�A\0UJ�uw&3��\�\�\����r\�q<q��i�\�A\�lu\�dxo\�S\�;6�gj\�\�[\\ͳd\�\�`\��9<\�g=�zt2\�m}�Y\�\�\��M���t�\0��\�\��2C�\�\�\��\0`\��ݶ��\�H�H̃p8<�H�J\�\�\�\�4R�nz-g\�\�E�\�\�\�\�0\�>6�%\�,�=0�\�+\���:n�}�_i�Q�\�#�_}��R�\\)C\��.ns\�1R�$��\�OH�z$�#�|So�Bmf�\�w��\�Đ�\0ŝ\� \�=�5�\0i\Z����yo�����\"yK���\�\\�3\�k;\�\�-���=���\�ͽ�N����Eހ)ڣ$dcڏ��\'�ud\�\�a��\�P�Q�u\��\��a�(迮���E�ս\�w6�\�q�),NXz�84]\�[\�[�\�\�\�V� \�\�+�U\��)�}\�]\�Eq3@�2#�#�\�O#�o\�Z\�h��Q\�#�9c{<�#u9Vك�\���-K\��h\�K�T�T��\�t�C>���y���\�\�>$��\�\��ݥh��[����\�8��R\�4�FB\�b�-\�\�ڵ\�\�3DyS�;gQ�m\�巃�M�G��X\�\�6m��h\�U\09�`H\�zP��\�����Nִ�Q\�M?S��h����$)��8��\'\�\���]XA�\�y�\�!�M\�d\��\�0Xs��5\�xVF\�\�:M\�骳��\�tnt�iLv��\0a�q\�t\�\�m\�t�\�v\�\Z]\���5�\�V��\�1\"��\\9\�)\�U�u�\�C�:��\�$\��\�E�K��v��a9\�@\�\\��P\�4�2d�P\�,m%�e{���\�	�<\�ῂ\�V\�Γ�Iqs�%\�2\�j\�De��d�A\�J\��rKc�^j\ZE��.�,Q��\�c\\\�\�m(�\0�\�\�w\�\r%�\�\��V��\�C�(�B\�\�\�\�&\�*(9\�{�\�\�\�(��QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0P\���?Z�\�\�\�<Ս\�r+##�z2��\�*�y\'�\'�T\��i�\�1}2\�l�I\�!\'u|9S\�a�s\�]?�4�M\�z���B��/�Apm\�\��\�R�t�3�Ji_+�\�\\\�	�\�fxoXME�\�ⅡI�a\�1_\�ZM�OҼW�餬>]/�$�~\�n�woX7��/`�\�\�P�v�\�k��]B\����\�Q��\�{k\��w��6sӞx�o\�\����\�zE�Օ��I\�\�sspv�CP�n?�����&4�\�\�S�\r�$���qN�4�F�Pt��;�Ҭ�C\�+hu�d�Q\���	?�̜��oz\�)u\�M\�)f�A{g�k�b�(P\"���׌\�4�w\��\0�Ѕf\�\��\'����k	��\0g�m\�v��\�il�}��:�o[xn�\0A�����\�D�\�(\��3gv\�[~��NռM�\�/�cky�\'lA�F`��\�\'�\�\��\0]�̦\�o\��u\��C$x] �~\�\'#\�\\�����׋4��h��oo\�,�A�l�dt\��-�G9���`�=.��.��\��\�Xj7\Z��Օ�n�h�_\"b[2���`֎�&��x\�[�\�f�w5��\�_ڱ!w\�2/\\ax\�&�\�\��?\����\0��G�K�ZŪ��;�u<O2.ӂ�T����\�^5\��7m\�/Q׬�V\�\�\�t�{�AF��$u\����\0���#�[��2\�Am=>\�څ��[o\�ݍ��_n\�g�LsI=�\�������=�\���焖�\��~�=y����/�t�\�\�խe�\n�B\��#.A$�ޤ���L\�,t�Ai�Z\�kn���%ڠ��Uw]�[��)(��\0(��\0�� k��)�\�v+d�>�*z(�\�`��(\0�������8\�g\�!E\0�`�u8\0gڥ��\n\�o\nh���JKie�Y|\��.ex\��\0�#,P�\�\�\�<��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(�R\�\�\�d�I\�k��3\�@s�GP>�5y�����q\�E�\�\�5� ���A��B\�6\�Fz�\�Ӟ\�\�\��^\���^�P�]\�C\�rg�\��.\�3��s��\�\�Kߧ\�8�\�Z\��z+�\�5��\�� �\�4S\�R\�2�Ń�`�\�$ܞz\�\�\n�}I�u{�KT�\�=F\�5�\�B����X;H���՝�b���ms��6���ާ�\�_ϱ��\�\�20{�W�\�����\�^6\�Z�\�g��\�HL7F%.\"$nN�\�=jomYi_C\�(�\�\�u�c\��w�W\�ku�\�ss�\��L�E�*A\�sq��\�ْ\�A�\�\�\�\\��NuI-I�;\�bys�V��D�s����\rCT��ks�]\�#x�\�K,7M\�A\�m�Fp\0\��8�7z���h�-��\�.�\Zu\�1\�sp\�i �E��ym���掗����\��\��G�_\�\�aeqy9\"x\�W�\�ڣ\'�Qcu���\�9�#YSp�\�\�#?�rwz}���u�,��\�D˧JI��k�F\��\0I>\��\��\��?[C}5�����\�spҪ�,d\��~�{SKV���\�&\����\�J=Z\�M^m!.��%�\�\�xBpq���v�\�\ni_f�\�\�V\�\�M3�w7n\�\�y�;C�\0�)-Z^��\��o�\�\�\�=�\�\�\�Z�\�\�\��D�hl53m-�2Y�`�&x<��\rw�H�C�IGP\�OpEUpz;��_Ie\��\�<���$B��lCv\'��\�)>�u?���\�Z\�(�<M%���\�#y>k���\�\\\�еi[���\���o�=N�\��wr����\�{\�u;;�\�\�M���e�2rN99#un\�\�R���=^\�+(�\�Hv�\�8U*z��\�\�ݽ\�M-�\�4j\�d9�\�\�EO^}�\�\�\�\�\�\�h�n但��1o%����3ln\�q�sY�>�r-�3�G�\�\�꺝\�\�yd�\�i\�\�(��yx\�\0\�\�sB\�\�v�C���\0\�*����\�j%�\�4�m;Td\�Uy.5q�$)�Z��G\�rn��q�\0<�`��\�y\�\�\�\�T�\�\�-�N�ť�W&$x\�[�2�����\�=1S\'e�\�\�Ǩ�*\�s&vH��>�f�wwoe�\�d�2\�g8���\�I�O^=Ԛf�h�B\�4\�r]5W�@�\n>\�;\�#��g\�L�\�\��\0j��\�ȘKhf�;��ʁ���	\�	\�y�k];\��z+��\�sԨ�\�W\�\��k�_\�\��W\��3\�/�T�;|�\�S$(\�l�\�|\ro�\�.���\�sZ�\� �kǋ��ZFU$gg=i-o�v�\02��SEa�\�ܯ�uy,\����H\�&*��\����KH�^�\�\�d=��\�%\�&&e�\�n�[�s\'?�\��\�\\\�,uk�\�\�K[�$�.#�@�lb2#�=*d��{\�,\�d71�\���*�@$zʹ?\n2i\�-����/\Zf�;����d9\�\\�ɪ�\�\�\�^���B�\�v��Қ=\�\�&G2����\�Nh\���=;KMV\�\�S�\�\�/\�\��~vW\�=��\�\��\�^;\�-��K�>\�	�6��Ya,7�\�\����K\�\�k�i\���\\\�Ԁh\��~ �v���Fꚅ���\�}/�k\���\�>�jʐ\�t#\"�j�}���\\X]�k{�(\�\rs�<��\�\"\�o%����K{���c\"mb\0o\�\��W>�\�Q^nu;\�\���Z�\�ն�\�K�%�d�\�E�<\�\�m8<\�⺝A�\�N$\�\�5\�\n$i\�\�r29(K|����?\�~!���\�\�:\�ϧ\�	\�W�\�)u8a\�*\�q��0[k�My-\����\�p\�qp\�˰\0Te�b+�\�o��xGU:�\�ơ�ޕ��7m\�(\�\�C���:g���\�\'������c&�6��\0\�\�\��m<!88\�_z�\\d4��3@��+mu������t�<\��؁�z��\�3{>�\�K\��mN\�M\�)��Hռ�\�)��	\�\Z>ʗ�\�b�\�5\���4�/,�8Գ1\�\0䚋O��\�l`��r��$���ܤd�k��\�מ�\�\�m�Z\�Eh6�W����oi�O�\�iz-\�弱\�W\�Emra\r*4J�\�\0$`�\�Go�ܮĚi?\�]\�\�^juI4\�T\�ng\�.\��\�\�Z�_�R.\�G�\�\�-\�\'�?A�Z�E�V�uAgsk2\�m<��\�A�5ly\�#$\������uu\��\0���T�����PZ]\�\�\�\�\�̓F�іC�N}AW#\�\�a�mKF�:�W\�\n4\�.��K��\0\�K�+�U?��6v�WsE{w%\�7���y/\�e8���\�cv0s���u\��\�A����\�#եҵa�E\�K>oMY�2�1m\�F^\�9\�\�t�ּS\�	.�-QV\��8\��\�\"�W\�F�U �z板���\�\���zUޥigwgi<�\'�vHi;\�T��O8�uR\�N������I�\�\�HH=	R��cI�\�\ZLQ˨]\�m�,H\�69\�)�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP\�4\�#Io��-�\�PFW`��(]�c��~��i�\\-�ckg̖�,jO�\0\n\�|y�\�\'\��^-&\�+%�\�XD8Ϙ�t\�]ӵK\�Z\��\�cUk\�[K�[�!Dxԗ@fG�\�\��w�ס\�YhZ>�t�VZU��\�\�t�ۢ;g�H5n\�\�\�\�-��fg+\Z�\�<w\'�k��ֿ�?��m.e\�\�\�-%�&\�-����H)\�s��\�=*���\�|\�\�\�R�W7pj�rZ\�j��\���iFP���9\�;m�u���\���\�5�s�h�W\�}s�X\�x�\�<�\�\�t\��\�u\�~m>\�^�W�<\�\�,\�6R�q.\�n<�\��k^�=潬\�\�ߨ\�JG[Al\�#��L�)\�>@8\�<T�{?\����k���=��\�\�;��&��J��uS��z�p?*�Q\�l5H\Z���\� \�\�D�.}pA�Sė�$��6\�\��\�xt�\"��)�૆\��T�\�tk��t�K�n�\��+-\�оo{\0g\�\�#L�\�ht\�8\��A,Q�\n7@\�T\�il�;��*�� B>o^8\�`x\���\�\�K�N�k9oum^e�]�9�`Fx��9�G�\�z^�k-\�ww�\�ZAy,J�,\�^\�p>]\���\�\��\�=-�w�\0&u��\�l�\�\�G\�\�\��ʶD��\r�\��5f+K\�I��\�e1Bʋ���UO��\�W5�\\j�\�$��\�\���m�ڢ��#I`m\� \r�t##�\�j�\�ȴ�\�Y����Cl\�\��\�q����O=q\�LqB�� z^W;���iړD\��}�\�BwDg�d(}W#����\�\�\�zŏ���\�\�/��5��-\ZX���\0Yщ\�\�h\�\�K�=懢^\�%\�旧OxVY�Ѥ\�Б�+N�={N�����y\Z\�姙apSˊ��h�Q�A\�s�\��~,\�\�!��\��\�\�\\\�)nf�l�m\�\�\�\�2\�@\�<)�J�\�~���S��\�\�+sogow91\�\Zȹ���}k\�Zv�a�\�C����\�\\�t�S�s�\�0sן�`X��X\�\�-i\�\�\�\Z���W71Į\�&ѵ���\�\�U\�:\���f�\�P�\�&Ӆ\�p\�\�lF~B����\�8�=)\��\0��ߘ���\0����C���ӭ\�\�\�\�X��Q�([\�f�{�M\�q�Z.\�	 \�ʸG\�|Q��{S��\�\\A\r�\��p�\�VY\�&+�\�\��n\��\�\����&�)\� \"i\"H\�d�a\0��ѻ��\\���\�\�\�\�4ȵ\�cӬ\���k��D�\�\�\�Qg𾛮e�G�\�.x\�1Gq.�\�\�mמ�?D�ox�\�}^\�s��\�$~������񴎟Z����F��\�UCQ\�4�RD�Q\�\�o>�-\�B�B�\�{�\�˥\�^&�R�-l�\�\�i�Bx\�Q��s\�`\��/e\��?\�iV�\�\�m���S�\������V\�\�(Z\���\0+�\��\0\�[��\�Z�F���ex��[�@�L���\�F\�\�d��͟g�Ǘ�\�n1�j�5e�U��\0b0I�⹯j\Z��ޑ�\�\�k`�\�i\�Ʋ2�`��\�㻸8\0�G�.\�\�:>�o`\�|:m�vO�\�\��\�z\�@\�?N\�4�*�cmg	;�[ı�>�P9�w]�\���=\'L�Wio5+߳��\��tK���P�ˁ�ޱ\�5\�r\�uM\�K�K�(PX#\�\�\�+���\'�c�\��ߗ���?���\"$�\�Ȫ\���VzPCag\��Z[\��G\�\�\�8��W���\�^j�!�N�e����G��ͻ��Mj���B#\0d2�\�\�zqZZV�\�[?Z\�\�:��6��Z �\�8�\�y�E*�\'vW�8\�I\�o\�[\����y�\�u\rLܛ}>\�Q�!�\��=W�{u�\�iZN�q\�XY]\�\����\�\�\�\�W;\�Ȧ��?�,\��SG%��\�Q\�\�$\�1�\��j���/ĭc\�\�\�aŝ��H�9R�\�9���z�\�4���mp{6v��\�I���v\���q����\0�|\�sS�,h��`(\0zV^���j�Q�\� ��Y[\�0If�\\p�O ��V�\0յ�\�\�\�A�H0�ʁ���<\Z��\0���C�����v,�Z\�aQ�+�`յUE\n�*��\0���\0�4�9u�.�h/\�\�nD+\�\���~5\�Zx �[\�7\�6\�o+L�e\�R\�I��MĶ<q\�5\�\�B\�Pz�\���;Rh��\0O��hN\���\�p~��\�\��V�;v�Z��\�J|\�\0~>a�9�4PEƆ���N\�\�`!\�\��8m�<\09\�\0c�洍�\rr�&\�\�)E��ܪH$\��ǰ�h�\n�iz|�\�C5���\\���\�R��\0\�9<O����-\�\�[+}*\�I�\�A�,o�P0\ZТ�)\�N��F\�\�}��9\�-�+c\�\nH�2-E��\�4�~\Z\�`Q)��3Wh�\n�i+��\0i.�b/󟴋t�\�g��P\�[�$\�\�Q\�;��\0261�=\�\0�T�PP]\�\�ޢ%ݴ7�$U��aцz\�S\�@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@qxGD�N�\��\�3\�\\�2��R\�[i\��\�Č\�\�\�4�	og��\�^{�qm)bHx�\'i^�\�{w�Ԍv�oA�\��Ҽ+�\�Z�Oe�\�1�^\�Y<�ۨUf!A\�`:U�<9�\�\�\�Z\�i�>c=���|���\�r~�pr9�����ƌ|C8�j\�\�,�����1誸�\�\�U�\�\�\�i�xm���\�p�\�UC�\���\�O]�>�if���\�\��6zm��^%̓\�u9�@�0\�G�\�\�\�O��WE\�o~\�uh�\0j*��y!gQ\�1F�\�5�|M�\�W&�s6��B.pEwo.������pL�p�$c��\�jV�Ƨg�\�\�\�Mڬ�cs;\\9P\�U�c\���\�=�R��)\�ΧV�ޗ�\���\�D���\�Xr��c�9�+K{Hm-!Hm\�@�ƃTt��ycorbxLѬ�923�=ES\���\�M�i6}�\�.Gݴ0\�\�M\�hJ�W,j\Zm���o�\�\�}�u��\�#l��=O��MK�j+-�H��\�\\�\�B�	�\��\�Xw\\�G@\��=5a���E��\�F�Vfv�\0S�<�\�\�Z���ů\�w\�}c2��%��S�\"�\�y���#���v���\0�>��\0\��\0�M�\�\�V�fm>\�\��c̑\�y]�\�9\'�\�)�~\Z\�luYu;[g�\�Vg}�\�\�o�\�^\�>�\�e�<i%���X\�\�:F�;Ƅ3\�1b8\��S\�k\�YM-��g=���FQ�n\�+\�@\\�8\�T���\�\�o\�\��kYd�\�&*�2����\�Ym�\�=+r�/x\�\�K\�Y-\�ln\�#��\�h\�r�\�eS��1����\�֒\�w\�\�c�\��-#WX�\�\"?軙&Y\���|\���q\�8\�\�<1�\�\�i\��|yQ\�\ȓ?��\�\�����\\��5}gS\��[i���Zv�l\�\�4\�\�,�b\�\�0@\\Aɭ	u}by\�\�tU��\�i�\\\�Mx�\�\�*(R9�I$�ۊ�\�\����uK�\��d\�߆��\��\�MN\�nmm3\�of�\�1�c�0[\�<�R\����\�z�Pݫ\��\��\�vb\�!\'p\�p9\�5\'\�?�t,��\"U\���\�\�:z\�\���A,j>f=$�Q\�\�z�+6�y&:\�\�zM��q�f�\�\�>lwI>�1\�؞ý7E�Γ�\�,�}��4ȱ�\�q$��\�\0.\�\0d�*�W����yu\�X\�Ҳn�\�!�\��%��\�M�G��sᎃq���q���\�\� \�p-_\�,\�$\�\�C\�s��\n]_�\�4�=�\�\�֖S\�\�o\�o$\�ۉ\��B\�\�\n\��7VM3U��+uxuK�\��+�A-�f#$�\�*i�zg��Wkak\r����X\�@�	�����\��C�\03bo\�3j�\�ri\�n��c�\�\��c\�\�\�\�f��N��S�RX�y4Kɸ�I\�V=�\�?\�\rM\�nd��Y\�ݛo�-�̒ʪ�YĪ<�=HS���k���\�<3+\�jv16�Hq\r\���q\�h\�\����jKd�\�\�\�\�~��i\�\�	�l&X\�|d3#�z�)O\�ջ[�\�\�a����d������Դ5\�\�c\�\�*KW�̿��Y\�\��`\�Ł�<Qm\�m\�\�YCe�~З\'2;3J�Y��\�A�=+f�\�\�cQ\�\�,Kl0�[��nR3�\�mz2���隫�\�[y��\�j\�{.br/u*9\�V.4\�K��;��\�-�����*O^x$sT<=���%㤾g\�L_Ìl�c�\0\�s�\�\�6�ؕv�2��\�q����\�/\�(�g@�znU![� i�����V�+��g7Q(A,S\�*v�\��{�\�< |G\'����Ԭ$���VT�4�#\�C�ɔ��<\���\�x�Y�\��^�\��\�Vwmn�6�\0�:��[H;G9!q\�h]-\���\0Í�����\�5\rN\�o�on\�V[�/l\��،�p\ZФ ް\�\�n\�\�i\"�:i�k\r��~�\�q�OƋ\���\�\��Z��W��\�F\�\�t\�o5�d�W�\'x\�b�¨py�5 �-�6�ZZ.�&��cnf6\�꥚N\�Wh\�\'�՝��\���K��K�\�#<g��T�\�ҟ^\�\�ۭ2o\Z\�귖\�\�sy\�0�!6��\�\�N3�J�\�_j:Ρ�ir=�\�Cl��r�Sۡ\�Xa��\�8#9Ԗ�u�\0��_�\�\�(�\�\�\�i\�:��g=�wwa\�[\�\�\�eaÙ\���z�uMR�N�lC\�_\�Ɏ\�\�I6v�LG�æq����K������\�Q\\d�:�\�R�\��4U�od�\Z��$�Y�{��܎)6�ҹ\�y\�y\�O��n\�\�7\r\�\�zS\�\�a���\�?P�:t7�xu\'�.\"v�\�L\�P\�\�I�ˏ��\��H.m,n��Mm-\�o�,#!�J�����k�[/\�D�\0S���\�S���|-\�u+y ���n\"��9\���(	VBpݜw����*uK�9ٕLf\��Ź\�\'ߊ_\�\�+\���\rJ+\'Ś�Α\�CR�H\�{XL��T�\�\��\�X\��\�K[�\�4\��\�%����bf.�=7\0�>����}\��)n!�/�-\�\�ѮD�I$\�\�\"	G\�]\�\01M�Ӭ�>)ܛ;Xm\�ƕ\�\�\�]\�f\�:�zij��=����\�Q\\^��Y[�H�\�\�6�\�ur�Bi�\0y1q\�\�)t�,i\"F\�\"��إ�-��\��\��\�j\r\�\n\r2KX\�\���\�3�X\�B�O\�*�ώ\�-�`&��j\�R}5��\�\��.\�o;G9={\��~6��\�\�郞k�����/���*\�΢;���\�9ՆrQ�A�ڶu�F=#H�ԦVh\�!y�W�\n	���z+�-tE\�+�Ю|G<Q\�\Z�iqY\���{x\�2Ǒ��\�{\�Ec\��,֞V���\Z>�p�\�[��C\�\�fbv�p2\0\�zv\�½\�\�\�Q^as\�\�g�\�Mk\Z]N\� s��\�ߍ\�9�sS�w��Y���])m\�\�\�c�ᑜ�b+�\�\�J�ek�\0]���=��\�j�\�R_\�O�����e��O2)$RKW\0�8�SZ?$\�\"\�\�M��\�\�t�|l\�\�ʁpU��Q\�GU�\��\���7����\0�\�Q\\w���m\�\rZF����#<�[\����y����=���֫\�	˩joi}?\�\�-�\�nrn���Nx������u1��eX�D8%P���p���a\�\�ԭ<�l��\�\\Ccqh�GXȘu\�N\���\�\�<���\�\��.�r�8ٟ,�b\�\�\�\�\�~([\��\��Bn\����\03��D�1�\����i\�\�>�\�\�)���\�Z\r��\��\�+�|\��� �RA��������QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE#�I\�h``x[J�\�\�\�O�&��e�p\�<a\�-�I��8\�U�<\rci}k<Z���k;����i��\�\�\�ݏ��\�ޓ��mF\�_]M#ͩ�\�F\\\�\0O���3�I\�I4X�\�\�Zg�\�~���b\�\�\��\�`9\�v�\�s�i�\�=�o\����X\�<\'�w\�^j��־z\��&�<�\������n�_�V�NmF\�SԴˋ��\�\�r�Y�����q\�F\rU��]\���.��=:ԭ�\�)��\�9�K�[	+\�#8�>#��k�\�w�QEe)�Pn>ѨGo#7m�\�z񚕲�gn�j��p1�\�\�\�7Q_Y[\�@I�\�5�	ʰ\��uO[���6d�x7I,\�\\���l�\�\\�8<qM\�;2U�tR�u2�\�\�\������\�4,3�9\�=A�~\0\�u15[�L\�\'�����%�T\"�\�\�\�\�����\��sH��YuM^v[X\�\�\�\�\��Y۠\0I�J4�{U\�mu�Uҡ�S��`1㱷(m\�O/#��\�R\�����\0�7���o�\0�\��\0C�4�i}|��X\�k3�E\�,vaA\�ORi�W��\�u��5Am\�\�6M\"��\�6\�\�I\�\�d\�o^\\]�\�\�\�ܘ�(��\�\���\r\�mH\��5O�\Z��u;i_R��0��3��λd`\'�\�z\�U�+vz]��r�~���}���\r�\�л�\�9\�iC\�(Xe�$\�W1o\�MKR���H\�\�\�\�\�\�\�u=؇s�\�\�]�X�$d�K}�\�]s�VZ�\�\�\��\0Q��|b;\�\�dP�\0|���\�8��/	\�\�\�As���u\�δ�CI\�Xu鑚\�n5\�KD�_��\"Ӿ\�aj�\�N~ձ\�A\'b!�\�\�GJ\���-t�\�lmŌ�\�n.I��KD~\��\�c��R)io\��\�>�ח��\�4�4]&\�L�2-c��\��֭ȉ\"2H�\�\��2��Q|n��v�6���\�\�ۙDj�>�w\�\0\0\�Q�sm�\�7�\�P\�^�	�%ǘ��w%��تz�{��\�N\�S�\�:f�\�Z}�ZGủU3�d/\�^���t]6I�\�-\�G�\�%�\ZBp\0\�\�X�x�\�\�.5��.x�̊�q��\�\�	R\�\�F$㓎�\n��\�\��N\�U\�����_$)r%I�\�h�`�wim\�o������r;X�\�-o��.�i��ަ#\0cn\���\�{R?�\��\0����/���� ��|��d.\�T��Q\���\�\�4KO�c�R\�\�y�\���;q�~�\0^:t��k%�׵�{�6���cc�\�M��hp�\��\�9$v�f��~�ºj��\0\�\�H�)\r��-厩�\�G4\�|��J�L����RF{\�#5|h:W��\�\�c�\�\'�od\0c\�\�v�\0�qZUB�Y\����m/u+Kk��\�E,ʏ&N\�NO<R]��={E�[��	�n\�\�\�p\�\��l\�O\0�\�\�T�\���\�i�Oso\�\�m&\��x?�.��i�BF���id�\�L��>�\'���C)�Gz:\�\�i�Rm1\���<&\"��d7���i�>���\�i�M<\�۠E�w\�#ܞ晬k\Z~�l�\Z�\�\��D,\�1誣%���)�\�7�U\�ݦ�<\Z\�\�o\�C\�\�s.=}\'+&�-��Ep�\�\�ѣ\�n�닋�A,fmZI#�۞c)�.\�w8��o��7Zn��mpg�P�\'�Ѵ�8Vڿ(\�\0\�Vwk�\�+\�r\��j�ٵkmGP�k�Y.-��|��@PX$p\08#8���M��Y\Z\��l\�R\�\�0�K�\�+��@$�{TI-<O\�]?헳\�[���n�d��\�\�8.I\�\�u�\��[�\�Gf\�v\�?f��P�n	\r��`\�YA��H�\�/\�o�{;��a\�~\Z�V���/���\�\�h<\�GP\�9*���\�i5?C�]Ț����[��\�q\\��\�,\0���&�\�\�D�)2:�\� �Z\�{N�\�م߅l�ˋ\�k.9\����/\����µ�\�\��\0��M]�Gpn\��K��\'$�&\�}\�\�\����/p9��a���\�]^_\�JE�y\�D�\�(R�U@\�\�\��֍\���N}JMKP�����\�Fv��@{�ִ�h\'�\�\�-\�0\�K�r*Q��G#�x{N\�,$�7ײ\\��/(4��6Ī\�ze�|\��~BkK\�~�K\�\'��\�5o4�J\�M\"��\�6\�\�I\�\�sL\�<)�r�c�jq\�F\�\�`eV�s�Wv9\��]q^\�<Ky�k6�v6mm\�\�\��u�\�\��7�\�$rH\�B\�\�C{\\\�k�\��\r�j\�\��܉�\�R(╕���c8\��\�~誷7��\�.�\�Z\�Y���0m�\�<r��\�s�\�\���^\�ʋA��W]M\ZU�l��L��0ۺc9�\n\��\0�.\�=?I���\�-eґ����D�B�\��*A��Ժ\�oa\�$\�4�(_\�Gm��\�\�	B\�\�9c�\�N�\�CR��Q�]\�\'1�P�\��\�&:�\�ہ\�9#���y��\"\�\��\��;K\�\�\��4�\�][\�Zw���2X\�@�aVt-!�{v�\�w�\��Sv\�\�\0\0mU�rjk\�\�\�#\�\�\�\�̩\r ��\�\�r\�\�*��$�\�\�sk:��Q� E�\�\�Dۈ	���%�:Q}\�m��B\�-B\�\�\�pL7�O��X`�\0:\�\�|�\�7�}�ϱ�6hY�ޤ\�sq\�g<���[\�\�u��0\�<rl��>�6\0?k#@�\�~ \Z4�\�,\�ȏe��\�HʾJG�z�[�\0��\��\������֠����P�xbu�ٝ��RzpE&�\�uZ\�TK\�\��c0��ud{�m`\�x\�\�\�U4O\�\�܍o�@�lw2۵\�\���\�b��\�z�\�W9\��\0\�\Z��7\�tҚ\\:�6\�|n��2Ί،W9\\\��([�W�\0�\��\0�\���\��5�,\�7w�WVl\�\rū��\�a�)\�Z���\nF]\�(�w�\�6;�z}s�ǈ.���\���3�B�\0\��D�\�\�d\�\�c�A�\0��\�<ɵ�\0ŭ\\\�]}��\�\�ȹ�kF@\�x\��Xt�X�3J:4zhk�1\�����	\�$ɿ�\�\'�1\�1Y&�\�c�����Atd�7�cϖ:�Ӝ�Z\�\�(k�K�%���+\�4wb(\�t}��#pq\�/\�v5t�:M6�MJ����y�l��\�Q�­][\�wm-�\�k$2�GF\�\�F5\�C�9|7�j�\�f\�%X�+{��)m\�RP0G\�\�\�v\�\�\�j�k�p\�\�\�mE㈧�\�H�\�T\�S��\"�\��H�oE�\�\��F!\�5Y�\"R�\�\�J�.0v\� v\�\Z�a\��:\�\�\�U���\�\�C-����9\�F3\�N$�Q\�~*\�\'լ��=l#���\��X���܇P�i\��\�f��6\�PԬaX�ť��D��op	\�\�������O[��\0\�\�-,�xbɼ;w�n>\�tҳ�\�\�<\�.\�8\�V8\�Y\�փS�\��FC,���IEO���Q\�<\�E��Iw�\�\�֥m\'Lg�ό]b\�I^x9\�uU6Mz������u\�[+�X\�\�}\�Q\�yF\�\�7h\�1�l\��1\�J��\0\��j:�E\�\�\�\��\�K�6�`\��\0�lqҲ�cyk��jJ�/m$�6w`\�kǰ�L�\�\�^��w�\�\Zf�a�\�}w�6	.<�P�\�\�o_J{���:\n\�v�-&�\�:M�\�\�\r\�:I%\�.�0FUTʪG\�KfѮ4��CPԭ�\n��wǷ\�\�(��<���\�dk�_\�ͳ[J�\�г1ȌU�GQ�֝�\�\�G�\�o#\�Y�\�o�n�#\�\�\��?Z\�o�\0�+�\0� ����iui{�\�\Z��\�~S\�|\��. mU\�S�Ut�\�iz������v֐��\�J��#c aC�:�ҡiE̶\�\�\�\�isu-\ny.�T)䓃�Ӿi�W�/\'\�쬵]�\�\�\�Y��\�\�*\���s�G^hZ꿭�\0\��]���Ş�{q\���DF�\�\�\�\��n\�\�\��̀1\�z߮gD���\�\�\��4	�\�s-�\\=\�\�>F*H�\'���axS_h�=kJ��k�E��\�\��6�\�F�l�\�?�u���\0/�=.��\0\���z\�j7��|A\�\�\�Ic��)\�/*�쐅L�l\�:��*}sĚ���4�3G��e�7�^\�\�\�\�ہ�N~�tL,t\�W*\�17V�3i\Zs^^jЙ\�ID+j\�탌\0\�֗���5\�5�Eq-��	|��\�`ddzQn���Efx�X�B\�e����*G\n`4�\�Tg�I\�1�\�kS�\�W7�tV\�I�\�b��H\�\�xO�=\�zw�oo\�k�\��oc����\�W7:v��f\�\�A�\����Ѵ���\�3�1\�;D���\�\�\��4	�\�s-�\\=\�\�>F*H�\'�����\0\�\����\����ͬ\�~\�+6�\Z\�k2����\�	\0�+j\�\�w�\�zn����\��L�]#Fa�*��X\��\0\�慪�u�\�\�\\w��oX\�\��O��1\�\\�^觘\�[��\��u#\�W�/_\�I�XG�\�q�ޫ�ٖ\�F��\�d)�r�\��M\0tTW\'\'��n}Li�}�\�\�X\�fҁ�b\�1�\�\�q\���7��v�\0U\�tX\�\0\"\�&\��\�ۼ��N1\�:\�lttV=����!�J��\�g\�\�\�$*\����\�.�\�MGí<�ZV�\�\�Ś4f*�\��@a��͎\�u�_K�\0Z�UQ@Q@Q@!=\r-\�x6\��F�\�A��sihŬ��d�����e\�}�j���.\�\�\�ƴ��i�mumlmx���L��y�\Z\�(�\��G\'�xN�Zԡ�\�U��4+<!,\0��+f\��\�\�\�%\�\�SX�\�t�Z+?�k�g�\n]@]\��)S�\�8\�]E-\�j\r��q�\�\�(�k\�V�kK���+�;��\�[KF�dlwF���H?Z��\�\�S[\�u1.����\�ggU�Ww�I(29\�*(Z_�\��@����ns�\�/<=ٝMnt\�-�xM�Ǐs\�>\�#��\�t��q��ir\�,\�խ~ui�f\�@$���\�CE\0�\n\�\��֧�\�]>��%��\�\�q%��bm�\�/��.<\���k����#���ڛ\�\�\�� X\�g\�\�e3\�\�\�\�\�.~\�o�iz�Z^%�ZLf�\�2/\�%w$�z\�h���������\�uO\\ލ2\�\rS캾���t�\�\�\�\Z<�8\0\�c�3Q�\�ֳ�\�[k\Z��\�\�^�ӕ�ؒ�\�y{g=r~�\�\�@��!���{��\0h\�4��%�]��ɔ�X��C\0@#�\�#�\��),�\�zޥ��uuhl�G\0�#�\�-\�\'$\�\�]=_���\�+�\rSN��\�\��-6\�\�m��Smm��o;�:W-��/\�jZ�Gg}*Msk%��,)\���\�B��\�CE;\�qYF�\�#��H̽($T�R\�a�`���\�r��J(�\n���c�Z���i\r\����a�Q��ު\�Ze�ͭ�\�\��0\�Gq1�B1�)o�ğlV���k�\\\��\����\�i~w��H3n\��\�2q�\�\r@�\�u�\�55m6�w�kF��\�F8�wL�\�o\�]W\�\�m,s\�^[��\�W�\�/_j�{m\�\�\�\�6\�CU�<-}�\�>��C�=ɸ{Y섬��\\$��9\�3]M���1/�/�jz�]\�~}�d��R\��\�v�\�\�-��[\�.\�m-�\�u\'\�\�3#�� ۑzǃ\�\ZԢ����\�]\�:Mť���ů]\"1�;���K5�\�=�^:\\4&1r\r�o\�L\�U�(\�`)\���6:]��\�\�\�\\D�d�u\nd>��r�(n\����\�}�\�\�7�����\�\�J�\\\�\�k��\nv�\���5\�\�G[�\�\�xY�\�b�æ�utn���8.X��Q&xB\�\�\��]�\�(\�`\�s�\�|;wq��WI\�O��\�[N$��\�%~]\�CO9\�L>��\n�k\�ڐ,B\� 2�CmϨf�Z(\�`\�s�\�q�>�j\�\��n\r�\�\�?�c\��?���\�W�:�\�൤\"\� q�i�2B\�=NMvP?��\�X^\�\�:\�w��6\�\00\����\���zTt/\�\�ڮ�yu�[\\E�[=�\�b %[h\�\��w���:\����_C+Ú?�%��\��\�\�Mq�f\�y�[\�\�f�/<u/�ik��t�\�V�\�^\�;+��$���\�8ɮҊ�}�\�\n\���\�\\k)�i:��}���y|\��\�;�+�9�{\�AE\0a6�sq�蚍栒\�i�`\� \�&2.8�\�~5�q\��7J6���uG\�⑭â�30VB~`7\�v<W_E\���\�\����8\��=\��N�kw�\�\�\Z�\�J�\�i\�{6�o=Bz���ǆ༼կ���K{\�0YIoy|\�J��N\��\�\�QC\�[�\�ߐ-?�;�m\�{Mb�\0\�v3\�K{saac,mޘ\�G.P\��\��@�z\�|?\��H-�\�\�I�\'ʷ�\��y\�����s\�uS����\�\'�xN�Zԡ�\�U��4+<!,\0��+f\��\�\�\�\�QE%���\�\��F��啼p\���\�\�\�;�&�������FG$c\"�m\n\�\�S\�5\�A%�\�D�\�A�Ld\\p7��kv��exwG�Ŷ��\��\�w5\�vm\�\�9m�Nq�f�\�:/�$\ZΚ.Z\�\�\�\�:�\�+Gq\�Z\�P\�Ձh\�r_�\�[�T	\�\�Ig�p1\�\0�X����=:��I�\�\Z���G�:&�\���f\�g �́��:�]E_���B\�\��\�exsG�Ĳ�\�\���۩�7lۏ1\�c=3�\�\Zxm\�5=C\���\�Iw\�\�\��к\��ӏQ\�#\�\�B\�o\���y_֦��+�R\�M��\�\����\�#�\�#+�\�wn��П��\�xO\��d\�\"\�N\�\��>��mQG�����{�hO\�7\��\0c���~�ۥŶ��I\"67�NFH���\�\��\�\�g�I.n.��a\"l<��*	\�H\�\�8���/����\�--wI�\�Yd�qWIc\�\�\�X2�ϡ��/\�Z\�֭�\�\�\�\�\�o��\�|���\�\'\�l�������z\�s�>�y�\�\�jj\�m\�\�r֍o�q&\�\�\�ƭ�sG�Ĳ�\�\���۩�7lۏ1\�c=3�֭\�\��9kO_i��Ϧ\�\�ŧOrn\�{!+)c�	&\�Nz��ԗ~\�\"\�n�=Y[�\nna�\�O����̥N0$t���\0\�\��+�Z\�Nxum�i�	\�0Fm�[)��{�Pj>\�.\�M��XHu�%t�P�9U�L{�p���1]%\�\��\�\r�6�\�s5�_\�]<C2\�$W?( \0v�9\�z\���qom�\��V�2\�x���v�mPI\�Wh��V��\�|5\�g\�tYd��\�u&@�dp�	6;�>\�տ\�^]kz��5f�i\�mmm\�\�$\�lt,Ĝv\0WIEU������(�0��(\0��(\0��(\0��(\0��(\0��(\0��꺽��r_LѬ�U6\�\�I\0�zjo\�Vw�^�\�\�2��&\�FA\�\0H=�\�ڧ�;\\\�Q�\�̢\�\�j\�Y\�\Z曨G;\�܌[�҉�d\�H`�+.\�\��j>\"����\�j�\�\�!0�䂻J�#�\�49\�MJXz��\�\�s���t\re�[�I7G\�\�ʫ\Z���@�s���f_x�\��A&�a�!\n���\�\�M\�X�\r�^>�\�玔�֞eGQ\�\�\�+����d\�Xx�\�JV�#D\�\�\�*�0\0����`�\�Y\���;Jt�\�r�:�����ub�\�2�\��.�Z�sF�ͻ״�K[k�n\�\�s\�Z��N3�O\�OúؽЮ5K�TA\���H4v�\�_�(\�W���NN{i{|��\0#z��\��\�P��\�\�A$(tp\��jz�&�vaEP ��\'״\�{���i#��F\�\��~6\��j;\�i7�Z\\ݘ\�o�|�)\r��sS\�檅W�_}�\Z�V^�\�/K�X.\�e1��H^L&q��\�\�\�wn\�lY����0H�*W\�}1O�k�.�\�M�g�=��\�F\�\�N��\0d7:�y!�U��|�\�;pNq\�r\�V��k��\�#�,k,Ų+gi\�Nv�(\�]J��r\����=�U\r/Y�\�|�g9v�\�ѣu\�BU�8>��\�88\�E\�\"Q�]��Ţ�4CP�\�uKA�]\�0�l��.\�Af�t�\Z\�^x��OV�C!�ZR]ۈc�J��JKO3IP�o\�\'�v�\03j�̽\��\��i4\�\�d�	%\�M\�T\��j��\�84}B\�\�H���\���v�\�ڧ\'#�\�\�\�\�#��&��\�Sr������\�2\�\�\�ȅ\�0~5��g�\�\�Z�ͮ���om�PO/$�hrHQ�9l�\����:*+6\�P��\�\�\�W��� �,�j\�\�I\�\�J]?[�\�V��P�.�i`�%\�P\�>d\'Jj\�\�.�U��\r\Z+3M\���N\�ȴ�/.\�\�\Z7M\��\�,\�\�3D:��6�,\�-\�,��B\��P���	��wF�m8�<�:+�OZ�\0o]i�\r\��a\�\�f\�İ \�x7C��U\�C\�:V�pmH�3�8��ʂ}qIN-^\�<=T\�y]�\�Ԣ��A�Gz\�յ\�3G�4��13�q�ݰ��I*H\��\�m-\�\�	M�\�]�TVlZ\�6���K#ۣ\�m��ul\�1�<�Q��M�\�~�j-�$Jά�2;2�<�1ގeܯcS�_m��4��:ō�SK��B7Hf�\��럜84\�7]\��7+i$τ\��\�Ee�\�~s.\�\�TW�^�\�iQX��ڭ֤���\�\�U�DR\� R��Á\�Ҭ�sN]>[�s�hd1;ll�\r��\�g;�\�B�j\�\Z��-�\��\�Ѣ��\�Zu��\�\�d�8��\�\\�B��+L�A�GzOb%	E&Փ���\�\�:RFדl2�\�\�Q�\��*�O\�Q���.�5Cv�Ȑ�	\�\'�\�x\�3�9�r�)�����4h�ص\�:K	\�\��\�x^,~?�g\�>\"�R\�/\�o�{X\�̑4EX�\�N\�0.ut�R\�\�jR�\��\�tTVf��\�z�Ǒir^]�\�4n�\��\�X\r\�\�f�o\�2\��\�pM,��1���3��n\�ǽ>e\�N�Et\���5h���\�o6+4�:\�#o.	�b\�v��5�Bi\�D�(|J�Eg\�z֟�<iw9Y%\�H\�6�\��*�q\�mλ�Z\�\�\�\�3�\\�\0�Q��\�x@7~���r�\Z�\�E붆��.��æ��,̖\�v�h�36q��ݜ�\�jm>�\�Q�\�ld(i�\"x\�?F\0��u{	Ӛ\\\�;���dQ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@\�\�5����!0\�,�fUh�s\�^H�K�]�^�f���+/�y\�?|a$�lt\�\�\�Y{}ga\Z\�yw�1ڭ4�>�������\�2Moyo4Q\�YT�� �Y8E�\�마��-6�ns7:>��ͪ\\\�\�f��<\�EȮ\�I-���1\�:\�M�C�\�\��}\�\�l����o9Y��6\�\�)\�t6w\�w�l\�์�@\�L�\�OZ\�k\��u�ͭ\�o�J�J\�T�\0\����_J9b�\��\��\�j�Y��練}{.�\"��P��F�2ش�w\�&�\�T-���Rrzv�\�Y\\G\�F�\�ż\�\�\">G,��1\���;E\�b\�\�X<��\�@�,7)(��\�~\�\�\�n�\��\"\�[K���\��\�_$#q$l^	f\�\�2(�U����\�((\�d����ۢ,��\��j\�V�efo���B�*6@ pG�gkZM�\�ډgyq�\�\�k~m䉔�\���\�\�\�=\�i����\�\�c�<�ѳ\�E\�o��S\�99�������׷��\�\�\nf�P\�C�e��\0��\n�i��z�\�\���9Ӥ\�\�r\���n�\�Gk����y��eY�	`�ޭ�~\��\�\�\�B[%�Kq2[<�A\�\�ʥ�Gq[W�vv\�\�\�\� 8Ē\�Nzrx�:����5�(\�I�@\�\�.\�bg\�3O�*M_��*�gN\�:]k���o\��˚Q�m:\�\�[%��X\�l\n\�}U�d3Eq\nM�,N7+�V����\�䓻aEP#�\�4�r�\�d�\��\��K\�x�n�����@\�<�.Ρ6�\�7\�_kH�24��1c,	\�\�zW`uM8^��\�\����xy\�\�z�\�\�k\�\�PxZ\�\�\�\�\�C\",�ar:�:V>\�6�\�F8��8t\�~\�\�.�\�\�+\�P[\�X��$Z<q��tr2w\�Z�\�\�}7�\�w������mX�EV%�ǰ]\����H��Y/.�m�\�M�\�H�\�\�	\�թb�v�\�H\�f�IA(\�\�\"��\�\��\0W�/�\�\�\�����_CźE\������^��<����l\�ڲ-�-�G�j0�,w}�]\�%��l�9\�+�ѵ��+K�-�\�sAH:p@\�\�\�j�\\۫ȍ<A\�P\�\�QNpO�\��\�i8E�n\�X�\�W��ߣ�\03J����\�\�呱_���B\�+��ŋ��;}k��!��v\�H\�KMBю\�\n\�*9�\�EAk\�\�\�t��\�l��>Q\�%R\�j\�YlcRJo\�ѭ-o�w)\���X��Q�X4�w\�&��[Wi�\��\�\r-�\Z���cԭ�Z�	m�\�\�C\�\�\�FFnx�:&�sy�Y\�\�\�m5�\"��9�[r\��_\�N�֢�֮��\r��oc,w(\�$(9\\z��m55��)6ⴊO\�\�\�}62<Ae�Jk�O����B\�\�s\Z\�&lly������\��\�I���R\�\\y�B��(\�v� p[<�Ѽ\�t\�R+\�B\�\�G\�RY�}5SW���^ZZ\�]Cܱ<��Z\��͓�$c>���[��B5*\�\�(^\��\�Zϯn\�t)x�\�{�\��\��\�:��lc,�O/\�\�\r\�֬��N��>}68\�}:u�8Y��iR�\�px>դ�\�\�!�So:�-\�\�V����\�::�\�2B�\r�bO�\�\���8\�m-n�\0��\�(Jv�$voO7ӾȇU�\�\�|5�\�*K[�`h\�I�b\�U$\�\�\�[N�Q��Μ�#�{cc\��\�ڤ�Ծ\��Ogu`\"�\�\�*�\�\�c�,�M?Pg[+�[��\�fW+��\���\����\�R6�m\�尿�{����R�	�4��.-�eI�\�M\�`��\����P�\�5�\���o\�爛\�饸���^\\e#\���\�+��Ԭ/d�;K\�k�#�\��\�~�) \�4뛧���\�[�\���eg\\u\�\"�H��\�^&�\�\���\�k\�\�\�d\��c\�{�\�}9�-�\�∲J�bdf\�C��힕��h7k�jr5������\0F\�~P�]7(#���q[�\��^\�M{�X\�/\��đ�s��9\�.�+9��\��\�	e��,��\�@O5<��߸\�ZԤ�\�Z]�Z[g\�̖\����Ԭq�E\�\0kZ\�V\�\0�\\YIa-��#\0��Ѐ3짵]����p\�7z]��7I$A�\�`sNY4}(��Z|nI�\"\�c\��\�\�s|F4\�\����\�\��\0�0n��f85�$�&\��\�HgX\�\r�V\�\�r;�x4\�/G��N\�\�I��;ɕ����W�\�\"��7r	�\�ji�\0b�wۭ~\��\0=�\���\�\�gi�_Z\\Z��n��\�L� d�\�\�\�S�~��Y��n^�}-\�\�\�`\�v��G�Eymr�&  ���9%c��K�?)\�|Ğ�\�\r\�j����[]\�i+	E\�\�LU�6�ʒB��	����J\�PWk+\�k��|\�*�߮\�M[M��\�\�-.$�e\�)�ʏp\�RiܙV��ӆ�\���\0�\�̻h5j-�Og~bo=e@\"ڻHe\'\'�`j�\��x����\0bKp���pϜ�1\��|�\Z\�\�u��y�V!���\"K\r\�J$g8_��5t\�ًV�7v�\0gBU��\� \��zu\�\�B�]�\�n�Zrk�[%�i�9KA�]cS��/�\�/\�?�6�`�*\�Au烊\�m�K{h��J\�\ZPNp\0�梺Ԭ-&��\�h%�\�$����<\�k\�h��\rsw�\�\�;\�t�D�4F<�	+:�*�\�[y�\�\��5�[\���\rZ\�\�\�DRC$EF\�\�;���\��85�����	ѠQus�%\����|\�b3�8\'�\�iz\r�\\\�i��x\�X����\��\�-~\��0��7y\��Lz\�\�G\"\��\0\��\0�Q\�N)(�\�\�{_M�\�(\�\�5-%��\�\�,s\"9¹G\r��|b�d\��=j}nK�\'Ӆ\�Z\�\�J��䟐�>a]-���\�A$��ֳ\�ߒ)U�{�A��:n���]Y\�Moqm\r�r���8,\����8\�?:R�d\�\��\0\��\0AҩV�\ZQ\�[�\�~��ҥK�y�t��g���\�6�n#\�\0�\\���i�^\�\�\�M����\Z\�y\0\�\�\�3)\�؊�i�X^\�$v��\�G�\�)U\��@<SW\�\Z�Y��fn�ǒ\']��ۜ\�$�N\�U�V�\�]�\�k��s���\�\"֚m+O���.CO!����L�\�c$�b=\09\�k���P��\�;[4�\�Fas+H\�1��M:MWM��l�\�-\��C�z|�\�\\�1Ih\�R��g8��\�\�~�{P�\�,�FukK�\�5�ۼi\"���bA��3\�Rk�Oke3h��r��k�\�\�\�6\�GQ�>�=߈m�|E��{=��&\�L�M(B\�\\�ѓ���\�5\�\r%��5�\�T@dU$nOA��\�T\�<�\��\0�\�S��C[i��޽�\���g�\��j�ko\�\�m�b�#�0	\�\��U\�3�;\�\�G�\�k:\�~n<\��q;�\�#�\�\�8\'9�:գ�i\"\�n��d-��,�zlf�8ϵ+jsg,�K\�_\�m\�.\0\\��6=����Ȕ\�J..6M�ޗ\����\0\�gX\�\��gR|����G\\���\n\�\�\\$\�-\�QEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0`x�\�\�\r1<BYD��r�0��$W=s\���kmF\�i.\"�\0�G�],d��v$�\�>���\�\�M�u\�\�N�Q[/�\�\�cu�O�\\iv3\�C>��eD`3K�A\�px>�\�6��?��\�-�{�\�e�o6\�ĪĦ60\�Bk��3jI�k��ؽ\�RJ<\0�F?�\�9i\��\��\��Ԧ�Tzw��FE�I�x�TI,���慡�(KG\�m;�p�#�X��u�~�;[��\�	!O��3�\�\��\�iY\����E�\�F\�\��=�\'\�\�_k�\�\�\�\�\�\�1$�\��Ԓ%�u�\�d�N\�Y\���.S�iGW�\�\���\�!%���\�kiq<�\�)��\�\�FӴrG�\�[�\�!�H5��\�cF��K�C�YY�r9�5\�I|Q�\�\�\\��6�\�X�\Zc3v\'<U���\0[1.��\�\�\�+\��8�ӗJm�\�\�\�ֶ�G��\�,L\�J���^w\�p<)z\'Ӧ1��2F�k�3���\�==먪:>������mI\�\�%�Qȓ~���3�=V\�kW��\���\�{?*\�\�c�\�g\\4^\�U\�(�I>f\�QEy涺�\�\�\�\r�=F6�(l�Ĳ.\��\���zb�Ux�\��Ybt��\�\�R$�˷.��Xn�\�N:W�Ux,m�\�n��l\�EL���\�F���\�\�=c��;--\�\����gq\"\��%�F\�\�P\�d�E�\�\�Y��\�\�\�Չ\"�Ӽe�\�J_\�m�E\�L{\�\�?\�*\���\�\r�\0���b�K\�?s9\�:u���������=\�ږh��I\'\�T\�t\�\��\�x��]6���\��\�?\�\���t�\�\�o)�6�H�n>�IS�V*\�\Z�\�^��V�\\K\��m�w-��O]���Ȯ\�I\�a\�lR�\�dXd,x\0���\�q�\�W):jO���8�\�^\�\�U�\�\���Ƈ\\��\�R���\�\�\�$,&�\�e�19\�y\�q�\�]=Cyl�v\��ȯ��24l9\�\�AB\�B���\'K�NFNB\�3���6\�V���5\'\Z��v{.�y\�ϲyl<[��\�wf;慡�8Y�\�6�\�8\\ދ\��w�V�\�]Kmqd o	�k�3�c��ⴴ�e59\�\��\�uk5�*ȓ�\�\�21��t�\�Ԧ��=ʘ�Y<\�6{\�x\�I-�4�\����Rz�����[\�K%��uy�\�^\�}* xZ\�\�oq����:\�9ڴ|N���.�l��-�KN�FduS/A\�\0�Һ:�u}�Ŭ�]9� rB�?N�\�e�_\�Kۍ�{&�V�\��_^��8�ڤ�ͩ�\�D�!G]\�J�Fq�)\�!��\�\�H�\�է�L�W6��\�FO�w \�ڶ.,��.m�f�t���&,@RF	\�C\�z\�K}z\�]�ZI\r��\'6@b��g�8\�r(ikw�/�!\n�(�F�n��K}\��3�\�\�\�|)�%���\�m\�&�x\�\�S©?�\\\�4\�&�\�ݭ�i\rԶ�4\��\�x\�V�\�R\�TG{G��0x�2?\0\�\���_\��d���\�R��\��[�\�\�{mF\�v�׎\�\�AŔpD��\n\�T�����Vi�^k:4��_��ݧ�\�8!R�\�B�Ñ�G9�B��g��Ú�u\�O�uoM���\0\��\�\�t\�]\\Kau4v�rAndP\�ϐ\�/\�&���2c�k|5O�_\��\�\�\�.\�`I(̄��\�o�_\�b�L�H\�\0\�\�?�Vi{4\��\�T�\���\�/�\�k\�DV�y�\�\�F���\�d�\�9\�M��d[��C.�4^y�r���l�x\�jս\�-\�.Zw�\�cf\�V\�cQ\�eV\0U�D��G$�($\�V��\�$\�J<�\0�:��\���Fh�+MIm-fH\�ղ\�\�c,%.�F\���Tz^��\��\"��\rNKK��e?e�l@XFta�\�q޻�*}��K\Z}u\�\�k����\0/�)�Iuq�mymq5����ʹ\�\�6\�\�\�H�\0u�xQ�`�K(`��M�k�o$D3����S]uJi܉bn��w���\0\rc��i4\�j�%�ו|д2\�	h�M�sw�鴫ӯɣ���H��]E\�\�\�\0\�\'\�\�\�К\�\�\�\�\�\�\"\�\�#l\�KՓ�\�qV\�(\'fW\�e	7ml�ܴ~��\�\Zd\�Z\��j�f�\�彝�\\+��6�Q�9\�9�\�\�/\"\�C��\�Ws�が�z��/tK{˖�\�ٱ���X\�q\�U�F<�R���g��|��n\�w��h�\�3Q�\�k\�(#�!�\�ѻm\��\'�FGL\�H\�.�\0\�h�\�*$��\\Ek�-&e8*:q�Gl\�ech�V\�\�E�\�Jҷ��Ě�G�\��\0\�G�[�QKoѷ��>-\�\�\�A�KQ.%�I @��\��\�X�\�}R\�\��\�\�\��5 �\�n\�����@\�@\�w5F-I$\�n4����x!�㴥M7�_��Q\�N0i+\�_\��9�X#jV����S\�@\�#���\���\0npG\'�k[\�_g\�\�3\��Sˇ\�\�\��y�o\�T�grj\�Dշ�\��8�\�\Z��K���\�^��b\� 4�6\�y\'\�+����\��\�\�,n\'K�ei�\\�8\�zf�QDcʭrjWU\Zn;/\�\��\0�9��<\��\�y&�2\�6�\�\�x�Õ\�L\�g=�\����g<�6�\�I!�ϙ�K\0��\�t��S�\Zu��m\���g˷M\�\�\�ެ�ܡ�FFpz\�\�[[�h�3J.\�&��\0\��4\Z\�\�3Ces��2\�\�[2l*G$u��gJ�J\�ﭶ1�--bY���+*�${�\�\'�t\�Q\�\�\��mb&\\��\�\��ns~�X4xt��;�.-+�aeC��\�׊\�(��++V�\�&\�k_P��)��Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@ǌl�\�o4[9�$�Y\�_�|� ��\�aq�\�\�tE\�\��]�bİ$��{\�9=MzM���o������h�\���?�amo����;�#;>ӓ��\�m\��\�4xu4\�7�c\�\�f gxl�<�y\�ׯ5\�V[�\"\�`�b\�|񼉁\��y�\0�\n=�M7�o�e�q\�J)=W+k��ߡ\�hM�\�~*\��а\�}��khUv�\���9\�-���K\�Q\�ӭY�&Rb��\��j\�-5Kˋ�-\�-��\�\\���s׏J��k�v�t��?�˿dp��.q��sG*ѷ�.�YJJ1|\�$�V\�n�~&�O\�<W�j�\�\r�H&K���\�C7\�q�\��i�\�\�څ͌Zc\�)�{\�^HK�wck���y\�J\�d\�m#\�!\�\�`.�F�8���GS��\�\��2�C\��ҵ\�\��4�u\�\� ��/Ǯ]�\�m\�\rp\�O\'\�\�\��\0q��w¢\�|}�w�w�tsrb\�\�w�\�]�Uӯ\�\�ay�\�I^#�c\�V*QG\'��\��X�:v�ѧ��^\�\�\��lA\�ϱ�\0aX�\0g��c�W\��3�n8\�kF�+S�r\�aEPI\�:\�\�SkR\\Ӭ�u�H�0��C�\�ݐ6�\�#&��?�牅�\�J�}��|\��_^9\�\�t�J�V�l6���\�m!��1Wh\����v�\�R���YYk杯m��8�U���Hm�\�&�\0d!>nx�qݷ�NkH^j\�m�s\'��\�-�>g\�\�\�	�\nA?Jպ�K��43\�Mp��0��k义�b�n�\�\�Sӵh^\�\�\�\�\\L\�f\�C* #ib�rx\�	\�W-\���\0?�b�!Z\nQvV~Z\'�]�\�\��S趺\��\�ͤ ��2.\�Ak\�Ԯ�\�n\�\�\�3��\�Wm!\�#l\�ˏUrx\�k��U����\�\�5�R�\�!أ�\�\�GZ�\�\�\��=�\�S\�\�\'���9�w\"�S�R��\��[\�\�a�\0��\��\��\0eO3\�ϕ\�\�?w<go\\{f���$�\�1\�[X\�i\�dx\�9\� g��vv\�jK�%���5�\�\�\��2B�`3ޮ:$�j��NM٥��{w�CN����ku2\�5\�@\�\��G���אj	��x妑a���\�\�\�\�\�y[�]�(\��\�*\�M\ZI\�\�-v��<�\0\�ͦ\�\��a�L#A��u�J�\�\�y9鎽\�hx\�\�Kk\�Qԭ �:ϲ\�I�*\�hc鸏l\�aT.��+\�,�$�&�`��\�\�19�\�\�x<f�\�V�\���C&\�ʛqMh�Zݴ��9��\�[\��Kn�bt\�\�\�]\�v��L��T>\"��L�Йbw\��˘\�ʪ[je@\�A�kv�M��\�\�\�f�6rQK+�\�`N*\�S�w~�����k�r\�]\��鿧^\�\�|A�X\�^֥\�oq�\�\�o�v��\��xt\�_I�YGo-�\�Ю�oS\�t�Rt\�{�V��\0\�Kʔ`���\�mݎ����U�{-N\�\�H\����G$�9�s�\�r3ɪ:]\�W#\�n\�\Zu�\��n.-mі\�T�\�JI���G8\�zm��\�F\�w&\�\�\���k����=ŧ�\�|mv����_h�-\�X�]ϸ�\�\�\�\��\�Y�\"�g���efIQg%\�3*m\��\�9�\�kҨ�\�[\�!�q���\�m�[k�m�\"�I#��%�͑QCI�o8\�\�޹/i?\�z\�VJ#�3@\�ro�\r�\�=y��\�:�\�备\\���\�G,�ǫ!?�[��k{q�r\�\�	̲*��@�\\�ϣF4�{	{X�\�\���p\�I��\�vB\�\�\�F�\�b\�KAn�U�2�\�\�ہ�I�-����\�\���N;�Ea`��d��\�F{��\�TT{.淚~�\�\�\�\�=��k��\0Վ+³\�5��ko��q\��\�f|�\�n@\�\�\�=G5�_O�T66�\�׌m\�k� A`\�Ps�=z�\��+���B\�2e�RSV~���\r#�ЛM\��U�\�a��KB\�Ъ\�\r�;G~s��=��U�\�B6�=\�\�ݏ�[�\���\r��*﨣\�\��i\�2\�r��]z�d\�5�)?�5H�[\�+2v�).\���Sh\��\�\�s^�h�Gk\nK/�\"���\�q\�ǽKY��u�\�\�I�yk\�\"�(YW�VBZ#O1T�\�\�7d��.�\�?��\����l�\0\�d��\�\��]��\0\r\�\���W���y�\�MU\�H[-lfP<\�#8\�lWsc\��\�9\�廐�dUV?��?J�K\�ݷ�t*8�H\�)_��\�F�\�M�9\�v�g��\"\�\�>\�\�\\���\�-\�\�c�\��\�XvB\�]x��&\"\��d~Wٺ	s\'���\�Q*Ww����\�`\�\��~i\�\�p��mZ\�{-N\�\�H\\[[\�\��g˹\�\��\�Z~\�t���S�\�\'���a���\�\�\�u�S�4�}�W*��\�\�ע��%}\�>�}6\�\�O6\�V\�[\�[��\�H/\\��\�g�]�\�kc}ce1q5\�2ŵ	\'\'�^��b\�EZ�\�2z+o�t\���>5Ӭ�|?5դ3Kok+D� c\�NA\�\�~U�\�(�\�\�46����Ge���\0 l\�\�A�\rt:Ί��\�-�\�02\�UI�\r�O�V�h�F��\n����\�{�\��<G��,\�f�WV�2|%q\r΃o$Kg,��FT\�eOQ\�zآ�\�lrԒ���P��( (��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0\�<\\�\�i6�\\\\C���Ȕ\�\�DN\�2\�s\�kմ�;P���\�eH\��\�\'�\�\�C�V\�\0c>��z�\�$�\�$H\�&6e�#�ۂE!��/+�\"-2���p3�}G\'�6\�i\��Gm,\\a��\��\0��5�֕>�o�\�O\Zo\�T\�)�\�.Hq\�\�\��{Ѥ\�\�\�\�\"X5;��>�34�ܙy\�|�\�\�\�q\�vV6v�\� �����0��\\\n���a�*[\�Y\�\�N��\�\n���7�\�E���\0[�\0�\�_֢ԔS\�\�\�\��\�̯2\���\\\�\��gDxL)qp\�69�bOZ�\�I�Oj�g�`�P\�P	-!��^>\�A\�]\���\�\�q\�\�\�{jv6�I\��^��%\�敧\\��W6V����tG��\'�O\�O�f�\�\�ܹS��_u��\��1�LX�\�I�\�w\�t��\�\�$\"\��w<\n�\�+�\��\0g\�6\�u�YbU\�\Z\�\�bH,U�c���\�u\�i�\���v�\�ȐN\�\�V\n}3\�ޟw�X^đ]\�\�\\E\�IbW�qJPmY�\"1\�rZ�o\�G���|�\�:n���4��\�\�c�\�]�F��I<c8�H\���5\�ĳ݃u�\�A��}޽�]�}�Ū\�Ogo-�\�,/�t��OM6K�\�+��<Mq���\�:\�4r{\�\���,J�>T��~]\��\r\��ǳ�^�?(m�v\�K\�M^�CV�0ƑD�j�(UQ\�\0\�O�N9�ɰ��($\�e�\�]{�F\�\�\�\�K�Hd��*�\�#xr\�<�\��&>&�mV\�\�}91iW�,0r�Ďs\�؍#L�m\Zu��\�\�?\�]��݌\�ohZ\��M�\�$���\�\�Wx�:����\�T\�\�\�=*x�~\�.K��\�t�\��w\��4�[�vY\\��fc�ʷ_ƴ<K��=\�\�Ճ\�\"����\�G;W�%̺F\"\�/籒I@����=>CבIy�\�q.���ര�\�\�\n\��\��\0����$�̗W�I�\�p�9\�\����\0�?XG�\�z�F�Eu\nB\�\�U$��\�+*i\�мN�\�\�푋�my�Q�SЄ\�\��ɮ�\�\�T�du���bU���	��)m\�l\�m����ۜ\�(\�\n�=xT�wm��\0��F�\�(E)+�\��\��_3�\�..���GL\�\�z�[٤�\�2�2P��#�*�����46�{\��yk����\�%\�\�?/@8\�5\�\�X\�\�Fc���\�69+a>�\'�\�>\�\�G\�\�\�\�m�\�8\�\\g�5�w\�����\\m4��/\�m<Ȣ����{(\�#{�\0ib\�@zf�;�e�\�^\�Q�����\�R-o��9 \��y\�FO<\����\�K��%�P\�p:d�8�\�H\�\�\�F�f.�\��~}wc4\�[i�R�\nm\�_\���\�\�Au$\�\�\�M�\�Zϧ&- �\�\�1\�@#vX�\�zb��M ��W\0h@Y�\�r�\��hZ\��M�\�$���\�\�Wx�:����}̺F\"\�/籒I@����=>CבP�\�\�\��l\���*\��^VK�\��sEdP\���� \�\ZuGo6Ф0D�D�\n��UG�*J\��ݯ�QE(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0��U\��R\�\�}\�\�=̲d�\\��3��QXp\�\�ݮ�u\��\�\nٔy�	\�4\�kQ��\�>�\�Og\���\�\�-��M�6��Oׂz\�3\�6-v\�\�,�lE�pĐ\��\�A������\�Վ\�X�Q�����\�\�\�n��KB�T����\�6�y��G�Q��Wk�#��\�Ze���~-\�^�Sk֚\�v\�Dsv\��{\�t:~��\�\�Ζ\�\��Jdv��c%�${t�4�G\�\�[X|��-�5iݶ�FB�1\0t\�(\�\��\0��\0\�}\��b��ʵk�\�K|�[��.�\�\�z����\�9bo5���&Im�3�\�(t��|q��\�S���60�P����\��۞y&�)t]>]Mu6��\�\0oYCc�\�\r���Geo\�ש.&EG|�Us���\�i�=/\���x���\�Ke���\0#�9`�\�1.#�B<1�\�*�¶\�ܞO5��꯯����\�Hm�fkX�wbā�5�\�6�瞢��M\"\�VX�\�%\�,Z6Y\Z6RFH==\�+�L\�-qn\�\�]�Ȓ�n\�r�H�i8J\�C�^�\�sWi[em�{�\�\�c}�\\��G\�f�iw��Mr\�\�*6�9Q�\�=p)�K��\�\�it�r.n��t\�7\�GN�\�/4=:�\�\�\�\�ܲ[c\�a#+�\��\�\�ߚ,��6-*M:\�%k\'ޒ\'�_;�\�NrNy���7\��\0O�%^��ʕ�Oe\�\�w�̟J�[�����\���PC\�\0\�T6v�}�6���\��B\"N\��S֧\�rmQA\'\'-��k��\�\�.�\�\�\�V\�\�o\�ȇ\0+>+\�8���jү�nm5g��G\nB�earX�<\�c+u�9�Iy�� �\��<ݭ<�7\�9ٻns\�J�\�Y\�6����j@cY|\�E\'.�\r�pk	F|�ǥN�R7]�\�ۮ���/�0xvV{j�q\�Z�\"\���^^(̑\�Dk�\�<(�I\�*\�PӢ���J���\�He\�A ������\0\�V�[I\�ҫ\�\�\��\'9��NOj\�I�\�u\�!:r\�R�7���\0�moMm?\�:.�\�����\�[��ά{�1ϧCTa��Ҵ\r~;h�\0��R�8\�\�v\�Y6(e#�Kq�һmKM�\� ^C\�\"�u\�eaІ}��ɣi6zuͳA��9�\�r�a<|\�ē۩�t\�\�_\�\�\��q\�Q�m\�\�\�[��/\�m�D\�n�{�\�oi���K���,�}\�Đs\�y\�W�:�i�\�\�6P\�\�l\�/m����eA�{�z\�,t-:\�)㷁��]��\�\�\�1�71\'\0x�Ӵ7M�k�h\�e\�\�K+\��}rp=�R�M<L$������\��\�\�h��héu�e���\�\�}�\�\�5;˫;6�U�1[\���!�\nς\�\��\��tivV��Σn\�UVY2r�zq\��\�\�*Kϵ\��\'�\�\�i\�)�9\�\�\�s�zSjN\�Ɣ\�A�mS]��\0\�\�\�\�u-ZU�\rͦ�l\�\��\�HQ��#K��c�]�)��e`7��	\'�\�/��-g�\�\�:B��M�e�]�|�6=��+�*\�PӢ���J���\�He\�A ���\�Ww��\���$�ךz+\�\�[�K�T6�\�Z[\�oac\n\�̒O\�SV\���\n(��Q@Q@Q@Q@Q@Q@Q@Q@R;*)g`��$��\0-�\�\�He# ��E-\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0a��S��6QX6\�\��Y����#�\�V=��u�\�-ŵ��E-Z\�c܈L�(l�\��#����\�\�+��+�\�ٻIR0IR�<zUot+\�/�5�ڑ��\�ٰ���r\'9���\�\�Վ\�Uh(�\�?\��\0\�̓\�7\�K\�j�[K-����\�C*��AR�\���֭�?���56�\��3�kn�6dǐrN{r1���OZD.\�\�\�7�]E\�\�%ӆc? �\0OAL\�|7\r��7o��h\"haK��58\�PO\�I��M��\0[�\0�/\�Q��.��Ӷ�\�B��D\�k:�7\�γD�I��,��flvVmΕu��\��;\�Ӯ!��D�\�\�\"3?\����[\����\�\re�Hn\�\��]�tQ��r\����\"�C�C�s��9�\�4��#h\nX�q\�\�4r_��?\�_YQ����_=/�3�f�\�\ZSJ-�9a�!*��F� ��NO�4��\0�\�5s�\�,j�\�&�I-f�q (:I�\rkj�4Z��\���[�fc\�\�\r\�r �*+\�+���㽽��H�FxCH��0 �\�ON�8\�\�]�\0�\�P�E��w\���L\�׵;\�ҭ\�\�!����\�]���P�F\�	$���Q\��x�\Z�1�/z.�����\�o\��;\�\nĴf���\�\��\�7\\\�A8ȥ�\� �\�&\�R{�I�\��3�!.Ic�\0$���\\\��?\�%V��劶���\Z-\�\�v\�5�D�e��P7|g�Y�\�u�i�Y\�$�$(<��\�\���5�\�;9;QA\'.�\����3\�ec�$Q\\C&��\�\�I7$�\�	\�\�\���>�q�\�\�c[\�\�3=\�O!bņ\0V\\}ږ\�ñ\�\\�.uBX\�ajΞX`r?�v3W�ӡ�U�\�U��\"e$mK�:�ǽd�-/�i�gl�QZ\�kn\�^\�����3\���4\�bKk\�)m>\�nc�	d?�}\n��К\�ͷ��5\�\�[��h\0��^I\�>�c^\�l�\�\�\��\�	<\�1�	\�T�\0�GT^!��\�_M��,\���e�l��̫��,��\rJ\��\���AEї*k\�\�\�\��3\�{�\�z>�n�I�^I��\�\�\�H͎O�qY�$ԯ.�;�\���\0���\0^,�\�\�T\�\�\����\�\��\\\Z�\�3\�\� �)am��\��	�\�PoY>�ye$�R5㬓ܻ�+2��\���\�(q��\�֎\"���?��~���-�����j#Y�I\�ūN-\�\�R۫*�ݴ��I\�8\�\�{U=n��c�Ey�I\'�\�9�X#�3�e\�;v\�i\�h\�Isx&������)b�$ �FO�֪\�0j>!�\�o,Z\�\r�[�o*;1\�[\�$\�\�w���\0_�sB\�嵚^Wzl��M�\0AXt���\0]d�W�P\��\\\�]^Os��+�^]Z=Q\�\�\�\�q\�g�aq�z\�<5eso\�\�\�~]\�\�\�\�\�H%T|��p�~uwL\�a\�Eȅ�o�\\=\�\� ᛨ)(�f�\0�W�1_X�&⵵�\�\�\��\�R\�Y���\0��$�\�nr8�h�6���<npF<��RK\�6�\0N���X\�\�<R�\�<ŚR~�\�\'ݸ��h\�\�=R=�\�Rfi�.P\'\�\����\�-��!��\�/�٨b0QNA<u�\08��\�D��\'�\0\0�����_/Dr��7��!֮5Zh�7+h\�	�6\�rO�l\�Ki%\��/\�x$�B.$�7��U\0;�\�lg�5\�\\\�\�\�VW\�\�	m�0\�w�x��\�\�[y�tR�G��\Z%M�/22+�\�\�w~Z��ɘWZ�\�O�m/ X\�D�\�@pH\�SЎƭ6�t5�B\�8U��I\�Q\�;�q�9\�>Q۽6[��6�qwywk\"�{�\��\��0:\�;O��Y\�u;j�71,&Y�w*�\�n\��ǚ�s9]Z3>j<���\��_�~�?B\�\�5(�\�Ւ̐{X\�)\�o}\�\�2\0�{moP�E�5��Iql�]\�\"\�r	X\�#\�]=����\�\�w�׳�Zk�O�[\�\����x\�-��X���Zt�\�\�71A���\��Q�\�~_����\�\�h�?#}1O����v�-䳒\�_\��\"�����x\�Y�\�\�o��m&��fan��jc��?ø3s\�v��Bںje��\��.Fݥ�\�9\�\�i0B��+\�E��$�#�T)\�0\\Ժo�\�\��\�(b\����K^��\��\�\�\�o�������\�<\�M\�ib\�\�=y<\�^1�X��	\�oⵔO\�-�J�U\�\�1毿�be%��k%���G�\�K\'{r�LU�\�\�7VS]\\\�=��#\�W/�`\�یb��ռ�\0RUZQ��}\Z�\�\��0��-[M�\�O\"�\���_���\�y��ps�ߞ���#X�M��\�\�O7/\�2[�@��]�\�^AgTӡ\�\�\�	\�ET�9AB\�0a\�2*\��4\�g]5x��\�\�\�\�/\�\�\�k��+ؠ�\r���ƥ����9$\�Z~��j�_\�[jKf\�hna{td(Fܫ\'?|r1ҭZxj\�\�\�\�\�//M�\�o��J\�9\��\�\�MZ�G��\�\�\�^R�6\�o$`�ےx\��N�%+\��\0[\��5�R�s\�v\��~;��:\�\�ڸ��\�Hb�\�\"����?!/�G<\�֪i�m潩��\�\'X�\ZI\�Hb]�pW\��p��z\�C�-Z]B\�\�L\�$�u�`\0\�I\�B:U�?N�\�Kǉ�cw9��p\��\�O�T\�K��\0�T�1\\\�[��[\�cP\��c6�&�\r��Ҹ�gݾf��p�\�&��\�o\�t�m+챋\�V��.cgڣn�?7�M��b\��\�\�csy]\0.a�P�80�=8\������o��kz��\�h#E�M�W�?\�\�e\��\��.��K[v�\�\�]�,k���\�B\�Ic�{�\�F�}���|�{�zV����\�\��a�E�\�@\�!\0@$�\�z���>��Y�\�\�hB\�m\�\�I\�\�\�iG�\�:��i$`\�e,�N\�M)\'_\�O��T�*j6�\��\"�F�>��\�^\�$o2\n$�Y��z\�.��j\�[\�5E�iƛ%\�S[+*�`�X�>\�9�� \�&��ؙͣ��DH�$�y\n\�I,p3�j\�>\Z�H\��w�S^@m\�wR\�ʸ\0��\�֦q������Q�嫻�Ӗ\��3�7�\�V�i�u���+�:�YJ\�\n\n�$\��}*-+\�z���U��vMc�\�\��]d��`��Ha��ӭoG�[\�qc:��\�m\�\�0H�R$�\�\��\�{K\r9�9\�\�{R\�%�ʭNI�G\'�8\�S\�\����\0�^҄�)\�+�\0�[~[EV��QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0dx�X�J�of�R\�;(V�\�\0*3��\�k6\�\�\"M:\�\�}=\���9�M��g�����GM׺}\�H\�H\�P�D���\�{=\�>�\��\\��ټ�� XV(\��\r%H\�y#�v�������\�I\�R�׾�������%kc}�dl紶�QX\����2���`�\�Z\�\�W~-\�\r倲F��\�Ǚ����\0`�ǯZ���\�\�ɫ\���{�o��H�J��p�\'�Ns�NЯ�\�-�ouU��<(��\�W�;�O\�:J\�m_�\���6*\\����t�\��\�\�\�K�kp\�,�4SFJ�:4ܙ\�|��\�Y�\�\Z����]-������<8Vf�\�\���������5��=\�\Z�����\�\r\�\�qC��Q���6�ƬA��:\�ޥ\�g\�\���\�\�,s��ޝ��\�\��D�jq��km�z_�3n�n\���\"[K�ˬ�\�)%\�\�ל��_�T:V�,m\Z\�E\�گ\�@$� \�����i\�\�Y^YދK�B���U��+�\�;\�\�̺�\�6z�[ݴ+\�Kq,r��܂$�=\�jv�%A����\��~]����~\�o���bn�/\�iV7�F��\�1f�\�@\�\�<%uu�\0\�\�\�@�ܭ\�\��%����3W/�[�\�\�\�\��m�Th�\� 2H����G\0�x�\�z<�~�=�\�s3K\'\�V-�]\�9�О��\�\�o\���֡)P�\\���w��-m�/i\�\�ua�\�k4�\�f\�P�f�\�m:	�l �\�宦��̻K�\\U�\�㝹��\n(��N~\�\�7�\�Ɵme[i��L�A%\�qӕ烑���Y�\Zĺn��\�r�H�\��@,\0+gQ��֥\�:�gY�h\�\�Q&\�c\�\"��\�|�r\�S�\��>^߻��\�s\�wzv��>��;�\�\'�Z���k�קK�DM��:��P�BZ}�eߐ�8\��<~t\�}l7��\�mͺy\�\�[q�G8��Σ�7�S^K`n^\�\�b�r^&x��c�ئx�\�Kȴ\�*\�\�p�{*�|\�\�d�_Ƈ\�g�|�\0\�Q�r��|�\�\�܂\��\�G\�4Ĺ�[\�V��X\�LfFːX\�j�\�\��CĚ\��~ա{f�\�,��d�e\�>gR�\\�G�\�]��J;v�\�\�]Z\�&�`��� �pA#Vd\�{�3R�\�P/}�:<�>H\n6�\�A�^\�\Z��lkF�eR{\��{�ַ\�\�\�/X��\�f\�o�E�\�D\'EY�ԑ	\�C``���Z5\���M���M\�m\�\Zݙ�A��((�\'=j݆�=�\�ƫvo�>R�Pyj��[j�I$�S\�Ut��P�E֦��v�\�\� \�����\�\0#�j����\0_�Z��╬�\�\��K3\�u\�\�K(e� ���.�پTS\�\�\�=�srx��./^=i%��Qkxt���${�\���\'vq\�t~�fmGS��\��劤�U�$�zp	�\0�U�J]/\�\��\�ԗٴ�㝽Nq\�IE�?\�\�W��I�\�\'k/�\���\�g��\�\�A���\�H�?1�ެs\�dd|ߘ\�XԵ��o�\����\��y��J��{\�n~aکj���\�S�\�P��(\�N�ډXav���c�\��Z�\�8լ���\0�\�l��6�\�\�y\�x��=\�\\\�\��o�\0\0��e�����\�[�\�o�ub\�K��\�\�\�\��}�\�\�6���rA<c\�՝KY�Ӭ�m6���[t�.�@NpK��ݫ�\�����e�� �%�P����`q\�dt��\Z=\�\�6��9&��[�\�o�8\0��\�q׮M;J\�\��\\P��%�w\�\���J\�\�Im�\�\�_\�k��B%�Ҹs���rq�it/E�\\\�Z�[	��M�[��F^�x�b;��\�\�Q\�.��\\��t�Ό��\�T)\�y@J��X_\�\�}}ɑv��\�C��I��J�\�~\�\�9<7#�\�\�\�~;��V\�5x`��L�\�\�x�\�\��V��\�\�1�\�:�n5��Y@�\�\�M\�3FA#\�o˒={֞�a���Y\�y�o٢X�\�ۻ\�N+.?]I�\�\�W����1S��G�}\�#��*\�2h�\�nz%\�?\�Mޝ����\�\��&�ie�F�\�\�B o�\�6�\�\�=9�\'��mf;��:\�,&3i�mf\�w篶+7\�:޷\�B��\�f\�a\�<��\�p���\�r��PT��xխ\��o�y��Uۭͦ�\�\�ϙ��X�\�cۮk��\�/o��+cfK�\'�\�\�q�yE\�\�\�J\�Դ;��㾰\�����4�X|\�3�\�\�y\�z�|1q���:�\�>�D�Io\�	(+�c��K\�\�\��V7�,<l\�ן򵯫�\�z��ּ)�]�\�\�Y	��W����\�F\�\��+R	/$�ݳۨ�\�\��d\�<��\'v\�\�CM�\�b�Ѯ��g�f��\Z\�b\0gg�\��\�=�]\��O�[[�\���l�yd(瓓\�\�4��\�߭\�\�N�-�\�\�-v��̽\'X6��Vt�v�ݜ�\�ow �\�\�g�\\Ri\�)�}LY\�\�l<\� 2%ǘ��\�\�\�\�\�\����\�1\�w�)\������|4A�<�\�63�����X\'���O./\"G�EX\�\�FS�\�s\�J�\�/ti)a�+\�w+=t\�O\�\�Ӽuk{}i�\�Ay\'�K\�y�9\�^!ʃ�S��\�F\����\r}l/H�\�3�s��\�f��^i/\�Q˧C�/j<���\�\�\��\��[~TfO3\�]�\0\�\�?�\\9���!\�\��\�\�\�\�\�T�=�\�qou�\'�\�X#B\��6 |�\�PG\�[��m������K��k���\�]\�~f8=�N\��\�5;�R\�\�<r^�yD&|�C0\�\�T�*\�ށp�ku�j?a�ۭ����\"\�i#2y�\�Q�ο\��\0��\�,���잝���\05ٍ�\�\�f��\�i�f\�MJO.(\�\�\�B�;�M�t�^)��\�\�E�\�\�+��fP�oUP�\���F/Co��ǦHd�q��e9<`�\�ՍwG�YK8\�u\�ܬ쌛Ā6�����j_��?\��5(B��\�]u�[ymn�y5\�aЮ�y�\���c-�\��0\�\�\�\������\�\�\��z�ŭ�����k�:\�\0$�\�\�\�֝e�\�i\�76vz�HKj$�\�6\��~e�`q�̗\�\�\�\��\�T����d�m��$+`�\�z\�ҦNi6�c��֛�o��%׿\�˚W�n.n\�\�\��\�fo�3[:O櫀*~PA�\�ޣO��E�\��\�h���YdR#|xr\�pi�Я�m\�|g{[]�B �\�n\�\�\�ߊ�O�\�R\�\���\�\��b�\�dl�g\r\�\�<\�\��\�z�w��)�*r����\��\�̻�}w2\�\�Z\�g\���\�\�\�)\�m]� �#8�:׍m�\�\�d�\�O��\�y����\�4<���犻�cu1\�uU�\�y�\�o-��k1\�mm\�\0�Pz\�\\h7I�\\\�i��v\�솚)��\�X\07/\�8\�T��\���o\�Q����k[O�\�?M\r�i㺶�\�#�\�@\�}A-\"�(���<�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0dZx�F�Ү5H��Y\����ј�\�X#�;\��_\�z\�t��#Ï27�\�u�*\�\�5\�\�\�\�/?\�(�a�M\���ݢ\�\�d�R\�J�g(G#޴tK=V�\�sk���t\�[!g\r2H�����A\�y=(Z�\0^_\�=���\0\�\�\�%��4K�O�:\�\�\���\�G�8\��v�\�ˮ�e\�\�\�\\�\�\�4=\�Bi �c\�!��\�d\�;ʒy<��na4ZK�\�:v�u\�ܦ�%��m\�c*0|\�m\�y\���\�\�<M�賈�\�*�٥h\�����_Ċ\�\�<9�?���U�\�\�κ/!_1>h�\�\�vs��\��4_jwZ\�)m�^\�\\\�\�E���E	(Cy�]w\��.8\��W�\�~��O���\�<W�\�	o}v\�+\�\��\�Iqq�\�S�\�j[�\0h�}��\�\�\�.��s4�6F~E@Kq\��l�k��S\r\��.����\���>J\�9\�ߥaX\�z����%z�1\�\\\��r\�\�fncG]\�N\�fm�py\�i�o\�\���\�Jm����\��\�`�)\�F�\��X��-\��6�vx\�3Kk\�}\Z\�L�\�c�U��$\\4�ѴDs�V�\�pG9�?\�4��\0�B\��\�2��\�\���;�J�\�RU<��:�]��D4=a��\��O}�e��Ԅ�\\*�\�`�\�\�\�:��?\�\Z\��\�ΏG\�,5�/ؚ\��X\�\�Z\�^�ޣ=;V�r��\�m���;\�t���h�\�#�u~w|\�NW\�\�MuG88\�C2!�>�6�4�q*^32\"Ko,k#/P�\���\�\'��qe�#Y\�ׁ�$��t]\�(e/�����9�KĒ\�\Z,����-ͥ��\��MA^Փk�c�\����9�/t?C�\�h0\�i�mT^��\\F�\�%!Ոm\�px�n��m�\0\�	i{[�\0��\�\�x\�\�@\��(b�ƫ\r�Kk\��vo*\\�\���u\�3K��:�\�[���\\P��F[jB�\��k\�ZF��U���uu\��\�\�\Z_\��p\�dq�Fz�(\�|7�G�\�jqY\�\�B\�|V�\�c�Ibt$\�;\�:�޼b���\�\��\0\��\0\��\0꯼Q�\�\�Z_M|�\�}�č+M\�~U@X�\�8��\�\�\��\�p\��\�㈄\���r�\�q���t\�O\�:>��\�a\�˧�ҙPJU�Wc��FO �k[��\�\Z=�\�-M���Iur��\0�$g��[�\��\�e�tfƩ��\�y2\�\�Ĺ\"8\�F?����\�?\�x�H��\�\�u�a$�i�\�$e\n�z�k~\�?6	#Ԯ~���#J\�n|?�/�װ�==�\�\�\�#ch )\�~@��\��\��\0\0�\�\�c�\��U�kw&\�O�\�\�Uh\�=\�nM�o_uȭ�\�t\�\roQ\�4;�CI].���y\�\��g\��\�\�v\�M.��3\�Ś%��\�sݻݣt�\�I�d�QHS�\"�WŚ�{�;\���`��\�\�@�.\�@}X�\�\�\�\��7w�Yǡ��ku}%\�wp\\D�	$H�A\��\�\�@[U\��\�[�Ac�ǨA��Rs: ��\�dH��A늝l�����\����\0�o\�/д��i{x\�9Ep�o$�\r�����A�\�{Tw^7���\�ڎ �F�\'X$a�H[\nv�Hv0k*\��\�i4W�)��\�NX�GPd�ݝ�A\�;s\�~\rg\��\r��h�5($�\�K]B	�9Sr��\n鎼��8\�O��\�}\�]�?����x\�\�|1u�\�s�\Z2ѡ�\�vX\�8�w��H�kL\���\�\��i�\"u���)q }\�\0�9�\�u��M\n�\�x�\�DiO\'\�٘\�Т8\�\�=y\�xTjO\�\���KK}>k{t��I�.\r�\�q\���]����\Z\�_\�_x�\�\�\�e�\�Cq\r\���ȏo*��\�]�+�\�A\\��\�V�ѭ4}KH{_�۬B\�ύ\�b�eB�\�#�@���V���\�S�\��[\�[\�7\�ncM#OclĮ^y�`�U\�=\�>�m�G����mw�-\�\�#yo�˸.\�c\'\�`28��̺f���~\��w-w-��\�<�d;���X�>�z\���\�\������Ž殗�ޥ\�j��b;V`\�H\��J:\�\�~j�\0�\�9i{w�5�\�����\�L�6W7��P\�6\�\�P��)۟|S��\�Z+\��\�$��u�8^W\�:�\��=H\�s�,ӵvծ/4*�I�UK�{ȖH\�&�\�\�H\�I\�CQx�\���x�5�����k$��=?Qk9#u$\�|\�N\��9�\�l\�,�\�\�!���&��C\�\"��O\�7W\�ZL�\�,�J\�K�x&�i�\�z%���ZG\ZgȒ_5�$�Al��O9�*�����k^Xt�\��oɲ�\�\�e\�AE�\�V9\'�\0�\�f�\�\�S_d�wkX�\�\�֓#�9�\n\�g5�4��/\r\��C\�G,S�\��B�+l$�\�1�\�/�5�W\��s=�Y�Zu�M�9H;\�<�$�3�KWo\�m\��W��7|�ˮ\�\�73=�4WR\�1K\�S�e�\r�3\�*��\�{-[W�\��\�yCr ��\�>lV˒�NIb8\0���Ů��\�����c5�\���q\�,ɳk�B�\�\�\�c�=\�4\�5m\'\�\Z�\ZK\�X\�WI:\�\�<abZ�RCd\�sB\�z~:�\�\��\��\�\�>�\�m\'E�E�\�,9P\��\�+F��e�T��$V\�yώ4_jwZ\�)m�^\�\\\�\�E���E	(Cy�]w\��.8\�&Ƒ\�k�\'\�tB�\�\�\�X̑\�O+\�BB��+7D�}�~\�uMn\�%\��@��&v����x�UI�\�gH\�R�\�Φ�\ZdVr\�\�B铑��T\�\��U4\�[\�l|+{�/.t\�9-nl\�dW��\�\�\�$�\�pi\�\��Snޟ\��\0����S\��%{�\�$wW$P)��1	����\�^�t:\��ݽ\�\����]MaT�\�\�\�F\�H\0\�gx\��\�G�\Z����\��\�\�\�.�Q^B���\��5\�\�\�\������D$\0I\�+#K�>��\�5��ĿiT�<��䅙s�\�F\�\�5{TK�4˴��b�h\\@\�2�v�\�W\�ZOiw\�\�:�_f��;��u�W��sv�T�\0\n�ⅿ�\�7�:}3\�Z�{���y�\�\"\����~�Fe\n\��\�Me��\�Zr5��xRK� p wE\�\"�R�\�i<���xsV�\�|#m-�\���E��_1��K\�s\�\�^z\�K\�\�\��Z:G\�`�U�~���3�Hubp��)����\0\��\�)l\��o�K\�;j�h�,��\�%\�$\�ɝ�+�Us�\�\r.�\�M+Bhb\�\��O\"	O#m[j�B��=\�3U�\0�����8s�j\�cf8���?��궺��⹵�?K�Պ\�\�-�5�\"x��?9\0�\�\�9㡩\�_\�\���|�{�\0i\Z}����m��<H\������\'�O�隍��h.�L�\"Hl/d�\�ҹ\�V\Zg�-\n$��޴�E�2I�g�\\+��\�/\��*\�\�\\[\�w�\�F$��x��C8R@�\��Y\���\���ՠ�\�+qG\nPbVrI=ح�\��N�گ��M=&XZ\�\�HČp�J��\�Rݓe%v�[J�~��\�-��\�\�3�H�\�ʋ\"��������/\�\��\rb-\��6��¢	��U�?�(\�9\�8\�s:6�y}\�\�\�L[\'�\�\'\�9��c	\��\�\�\�\�oZ\�\�o�u;�\�\Z\�\�T�\�RdQE*ە�c؍�\�Y^��	M�\��h ����F�\��-�q�\"YN坙�\�Fц\�rpx���K�5m;\�w\Z������\�01�x\�\�\�\�r�\�\�!�d�Һ�Ka�ٕ�x�J\�\�\�JK6|���\��\�B -�\�e\��+[뛗H�� _\"C$��aw��V^�g�\��.\Z�����\�B\�HRd�X��`˼� 瑑\�Suh5�5M\�V�;M5�3C>�g�H�M�ebv6�\�CK��\�M�\�6�e��\���.��OO!f\0�6��\ns�\�j8�k\�\��-o\"9I�/\�av\�`\�\��A\�X\Z��O7O���X\���\��\�Qʤ[$���\�9#8\�$�棹����\�Aan�\�\����\��&\�H%%\�\�r�\�j:�\��~\�\��\0\0\�\�hZ��\�W�3A�\�[\��8%T�[�$:\�\�\�n]wN���\�٢��!�X���,�0l�1T�\�\r��\�I�VG��\�\�<�:�$�e�n>�8\�֗\�����\�\�s\�\�WW\�\�\�|�&ͮ\nW;������w\����\0�?\���\�m^�O�=\�m\rȂ��q�[.Ja9$a�\�޺�\�4\�5m\'\�\Z�\ZK\�X\�WI:\�\�<abZ�RCd\�s]]dXVf��i�\"\�\�\�:+�A�\�Y��;\��\�.����^\�\�\�s���ܑ#`\�\�U 7\�\\�\0�\�u��f!�R�Ҿ\�W\�\�\�\�\�m\�y�eܸ�\�x\�M��Z��p�\�UΎ�]\�\�\\F@);\��\��\�vs\�z����E��,��LcG봩9\0�둚Oi\�ZO�t�>�?.\�\�Ipm�\�#�Z�����e5\�\�\��*^I\�NVWD\�\�̥\�c�sG���0O���rb�	W_���V�s~��-k���	5��DN0ѫ�T\�\��>\�JlQE�QE\0QE\0QE\0QE\0QE\0QE\0QE\0T��[{Y����P\�{Ա\\\�,FE�2e�`B�k��k-I��\�e�2+&��>g�K��\�\�\�k,+�\�\�\��*�6ۭ��\0�F\�\\\�Z�+4Lʫ*\�r�Ñ\�)#��G)�\�V\�>��=\�\�i��Q��}�Gii$b��\�\� ����=��\�*m�GG�i~���v���\rQ�\�}�\�3\"�\�X\'ӯZ�\�»�,cg-�/\�Ҳ��m�i%k�)m�\��u\�I\�m��\\��d\\��_J���7%v�\�\�o�\�|�W��q{.��$\�˻lC<z\�k�-Y��]J\�\�\���\�p��=��\�\�}\�l\'\�\�b,�Ք�=y�%��ib\�m$�D\�^�<�;\��\�Ny+h�\�\�%U��4��;;k!�\�!��0UE�\��PL%�I�C��T��\�\'H-�\��#&\�N=*����o!-\�I#\n]v\�\�P+iV�d\��&�z��|\�?���Ȍ\�4l�Ճ4Lʫ*\�r�Ñ\�+w�k��\�\�x<���w7қd�\�sl\r�\�yP\�:\�g\�ԬT\�.�\0�\�}\�U�Z\Z3\��\��r�a�W�\rFݯE�1iNs��ǭc\�\�ȓ\�\�l\�I!v�d\�\�{\�\�V\�+��\"\�\��0fX�	=ǭD1\Z\�Yv\�e�ܟi+_\�ў�\�\�h!�\���%aGp�!$(=N=*z�\��\����y\�ڄ�s�wIe�;~�\������\�}\�\�ǝ�=�\�\0۞\��\�E\'��vؾ\�K1�j���\�x�#$\�sg\��銡��\�Z ��\�{��n�X��\�.�a\'�M����t/\�\�:�\�A[^��\'};\Z_,�\�%��x錪J\0���\�o��l#������wg8\�QirA,r�4�l�dI�w�\�f��_ؓ\�f��\�cp$e\�I�\r�\�ʬנs;�oCuo;2\�<R2�\��	\\P�v\�#+q	�C���Z\�t�Y\Z���\�\�\��\�6�1\���\�5��\�I�Y��[�g��\�A=A��J��\0Z�\��cwUբ���I;H�c\�7\0{\�:\�X����͜��0]�3�=	��v{)\�G����\�D�\�cܥ3�\�\�J\�����Y\\\�a�ew���\�:�j�t@\�-�\�\�\�\�\�Z\�p�\0v5,G��E�f\�����Aø�\�A��\�פ7�\�ؠe7�\�\� \�\�v�\\�a}cp֏ukex�7�H\�\�\�Q++�)\�\�B早-\�]˲$\�%�\0��\"�\�\�\��|�q�x۟L\�/��x\��V\�U\�rdxv\r\�s�\�\�\�V����ӵ\�.�i�q�\��\0��8\�\�Lg-�ۻ\�[8\�\�x\�D\�8\'���\�\�\��߈�\�$vm�\�\�\�̶��fɣ���9Rrx#�\�{�\�e�\���\0T��\�\�\�/,\�\�{\�=���d�/-��\�W���\'K�mB\'U��(��\�py\\�>����\�h�x\��#m\"\�QK�!X�@=pO�����(��(�n\�m\�m\�\�\�� �a\��px5��\�ip�4�k8I\�R\�%�I���Q@Q@Q@Q@Q@Q@Q@\�koķ�O0Q$��3\�OS�٩���\n(��\nl����r\"�n\n��\�`z�)\�P7G\����\0ٺm�����\�ǻ\�\�\�(��(��(��(��(��(��(��,qʅ%Et=U�E>�\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0�{R\�|\�\��\�r��}��[���P8\0`QErS�\0x��2�\0��\"Z(��\�B�(��(��(�]c�oG��\�=�+j�+I|1����&QEfXQE\0QE�\'>.�qhH���j�+I\�OՑ\�\�� ��+2¢�\�\ZV�\�i�|�\�2q\�\��j(�o��\0 \�KEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP�\�');
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
  PRIMARY KEY (`idmat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta`
--

LOCK TABLES `hoja_ruta` WRITE;
/*!40000 ALTER TABLE `hoja_ruta` DISABLE KEYS */;
INSERT INTO `hoja_ruta` VALUES ('01','datos piña hoa de ruta',50323.00);
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
  `tipo` varchar(4) NOT NULL,
  `operarios` int(11) NOT NULL,
  `costo` decimal(9,3) NOT NULL,
  `cantidad` decimal(9,3) NOT NULL,
  `mil_std` varchar(1) NOT NULL,
  PRIMARY KEY (`idmat`,`operacion`,`componente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta_componentes`
--

LOCK TABLES `hoja_ruta_componentes` WRITE;
/*!40000 ALTER TABLE `hoja_ruta_componentes` DISABLE KEYS */;
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
  `tipo` varchar(4) NOT NULL,
  `operarios` int(11) NOT NULL,
  PRIMARY KEY (`idmat`,`operacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta_operaciones`
--

LOCK TABLES `hoja_ruta_operaciones` WRITE;
/*!40000 ALTER TABLE `hoja_ruta_operaciones` DISABLE KEYS */;
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
INSERT INTO `materiales` VALUES ('01','Piña','MPF','','','','kg',0.000),('02','Banano','MPF','','',NULL,'kg',0.000),('03','Mango','MPF','','',NULL,'kg',0.000),('04','Papaya','MPF','','',NULL,'kg',0.000),('05','Uchuva','MPF','','',NULL,'kg',0.000),('06','Fresa','MPF','','',NULL,'kg',0.000),('07','Pitahaya','MPF','','',NULL,'kg',0.000),('08','Ciruela','MPF','','',NULL,'kg',0.000),('09','Mora','MPF','','',NULL,'kg',0.000),('10','Kiwi','MPF','','',NULL,'kg',0.000),('100','Coco Hojuela Blanco Cuticula 0%','MPP','','',NULL,'kg',0.000),('101','Espinaca Molida','MPP','','',NULL,'kg',0.000),('102','Paprika Molida','MPP','','',NULL,'kg',0.000),('103','Uchuva Deshidratada','MPP','','',NULL,'kg',0.000),('104','Mango Deshidratado','MPP','','',NULL,'kg',0.000),('105','Piña Deshidratada','MPP','','',NULL,'kg',0.000),('106','Linaza Molida','MPP','','',NULL,'kg',0.000),('109','Bolsas 3 Kg','Insu','','',NULL,'kg',0.000),('11','Chontaduro','MPF','','',NULL,'kg',0.000),('110','Bolsas 5 Kg','Insu','','',NULL,'kg',0.000),('111','Bolsas 10 Kg','Insu','','',NULL,'kg',0.000),('112','Carambolo','MPF','','',NULL,'kg',0.000),('113','Bolsas Azules','Insu','','',NULL,'kg',0.000),('114','Manzana Deshidratada','MPP','','',NULL,'kg',0.000),('115','Mora Rodajas Deshidratada','MPP','','',NULL,'kg',0.000),('116','Aceite Desmoldeante','Insu','','',NULL,'kg',0.000),('118','Cilantro Deshidratado En Hojas','MPP','','',NULL,'kg',0.000),('119','Pimenton Rojo Escamas','MPP','','',NULL,'kg',0.000),('12','Borojo','MPF','','',NULL,'kg',0.000),('120','Piel de Uva Granular','MPP','','',NULL,'kg',0.000),('121','Pitahaya Rodajas','MPP','','',NULL,'kg',0.000),('122','Curcuma Polvo','MPP','','',NULL,'kg',0.000),('123','Fresa Deshidratada','MPP','','',NULL,'kg',0.000),('124','Noni En Polvo','MPP','','',NULL,'kg',0.000),('125','Ahuyama en Escamas','MPP','','',NULL,'kg',0.000),('126','Tomate Deshiadratado En Polvo','MPP','','',NULL,'kg',0.000),('127','Limon Granular','MPP','','',NULL,'kg',0.000),('128','Toronja Granular','MPP','','',NULL,'kg',0.000),('129','Banano Deshidratado Trozos','MPP','','',NULL,'kg',0.000),('13','Noni','MPF','','',NULL,'kg',0.000),('130','Cilantro Deshidratado Polvo','MPP','','',NULL,'kg',0.000),('131','Servicio De Maquila','MPP','','',NULL,'kg',0.000),('132','Remolacha Granular','MPP','','',NULL,'kg',0.000),('133','Ciruela En polvo','MPP','','',NULL,'kg',0.000),('134','Cajas pequeñas','Insu','','',NULL,'kg',0.000),('135','Borojo Deshidratado','MPP','','',NULL,'kg',0.000),('136','Naranja Rodajas','MPP','','',NULL,'kg',0.000),('137','Guayaba Rodajas','MPP','','',NULL,'kg',0.000),('138','Cajas medianas','Insu','','',NULL,'kg',0.000),('139','Cajas grandes','Insu','','',NULL,'kg',0.000),('14','Cereza almibar','MPP','','',NULL,'kg',0.000),('140','Cajas de exportación','Insu','','',NULL,'kg',0.000),('141','Cajas de barras dispensadoras','Insu','','',NULL,'kg',0.000),('142','Cajas de barras maestro','Insu','','',NULL,'kg',0.000),('143','Desinfectante','Insu','','',NULL,'kg',0.000),('15','Breva en almibar','MPP','','',NULL,'kg',0.000),('16','Guayaba','MPF','','',NULL,'kg',0.000),('17','Toronja','MPF','','',NULL,'kg',0.000),('18','Limon','MPF','','',NULL,'kg',0.000),('19','Naranja','MPF','','',NULL,'kg',0.000),('20','Agraz','MPF','','',NULL,'kg',0.000),('21','Feijoa','MPF','','',NULL,'kg',0.000),('22','Guanabana','MPF','','',NULL,'kg',0.000),('23','Melon','MPF','','',NULL,'kg',0.000),('24','Maracuya','MPF','','',NULL,'kg',0.000),('25','Arandano','MPP','','',NULL,'kg',0.000),('26','Datiles','MPF','','',NULL,'kg',0.000),('27','Chachafruto','MPF','','',NULL,'kg',0.000),('28','Piel de Uva','MPF','','',NULL,'kg',0.000),('29','Uva Pasa','MPP','','',NULL,'kg',0.000),('30','Lulo','MPF','','',NULL,'kg',0.000),('31','Manzana','MPF','','',NULL,'kg',0.000),('32','Pera','MPF','','',NULL,'kg',0.000),('33','Durazno','MPF','','',NULL,'kg',0.000),('34','Aguacate','MPF','','',NULL,'kg',0.000),('35','Tomate Chonto','MPF','','',NULL,'kg',0.000),('36','Azucar','MPP','','',NULL,'kg',0.000),('37','Coco Hojuelas Blanco Cuticula','MPP','','',NULL,'kg',0.000),('38','Cascara de Piña','MPF','','',NULL,'kg',0.000),('39','Cascara de Mango','MPF','','',NULL,'kg',0.000),('40','Araza','MPF','','',NULL,'kg',0.000),('41','Anon','MPF','','',NULL,'kg',0.000),('42','Coco Hojuela Acaramelado','MPP','','',NULL,'kg',0.000),('43','Curuba','MPF','','',NULL,'kg',0.000),('44','Frambruesa','MPF','','',NULL,'kg',0.000),('45','Granadilla','MPF','','',NULL,'kg',0.000),('46','Mandarina','MPF','','',NULL,'kg',0.000),('47','Mangostan','MPF','','',NULL,'kg',0.000),('48','Papayuela','MPF','','',NULL,'kg',0.000),('49','Zapote','MPF','','',NULL,'kg',0.000),('50','Almendras','MPP','','',NULL,'kg',0.000),('51','Lechuga','MPF','','',NULL,'kg',0.000),('52','Calabacin (Zuchini)','MPF','','',NULL,'kg',0.000),('53','Acelga','MPF','','',NULL,'kg',0.000),('54','Cohombro','MPF','','',NULL,'kg',0.000),('55','Habichuela','MPF','','',NULL,'kg',0.000),('56','Repollitas','MPF','','',NULL,'kg',0.000),('57','Berro','MPF','','',NULL,'kg',0.000),('58','Semilla de amapola','MPP','','',NULL,'kg',0.000),('59','Remolacha','MPF','','',NULL,'kg',0.000),('60','Uva','MPF','','',NULL,'kg',0.000),('61','Champiñones','MPF','','',NULL,'kg',0.000),('62','Pimenton','MPF','','',NULL,'kg',0.000),('63','Ahuyama','MPF','','',NULL,'kg',0.000),('64','Espinaca ','MPF','','',NULL,'kg',0.000),('65','Zanahoria','MPF','','',NULL,'kg',0.000),('66','Berenjena','MPF','','',NULL,'kg',0.000),('67','Guatila','MPF','','',NULL,'kg',0.000),('68','Rabano','MPF','','',NULL,'kg',0.000),('69','Aji','MPF','','',NULL,'kg',0.000),('70','Arverja','MPF','','',NULL,'kg',0.000),('71','Alcachofa','MPF','','',NULL,'kg',0.000),('72','Platano Harton','MPF','','',NULL,'kg',0.000),('73','Puerro','MPF','','',NULL,'kg',0.000),('74','Brocoli','MPF','','',NULL,'kg',0.000),('75','Apio','MPF','','',NULL,'kg',0.000),('76','Coliflor','MPF','','',NULL,'kg',0.000),('77','Esparragos','MPF','','',NULL,'kg',0.000),('78','Pepino','MPF','','',NULL,'kg',0.000),('79','Yacon','MPF','','',NULL,'kg',0.000),('80','Ñame','MPF','','',NULL,'kg',0.000),('81','Repollo','MPF','','',NULL,'kg',0.000),('82','Papa','MPF','','',NULL,'kg',0.000),('83','Albahaca','MPP','','',NULL,'kg',0.000),('84','Laurel','MPP','','',NULL,'kg',0.000),('85','Oregano','MPP','','',NULL,'kg',0.000),('86','Paprika 0%','MPP','','',NULL,'kg',0.000),('87','Ajo','MPP','','',NULL,'kg',0.000),('88','Comino Molido','MPP','','',NULL,'kg',0.000),('89','Cilantro','MPP','','',NULL,'kg',0.000),('90','Perejil','MPP','','',NULL,'kg',0.000),('91','Pimienta Molida (Blanca)','MPP','','',NULL,'kg',0.000),('92','Nuez Moscada','MPP','','',NULL,'kg',0.000),('93','Jengibre','MPP','','',NULL,'kg',0.000),('94','Cebolla','MPP','','',NULL,'kg',0.000),('95','Tomillo','MPP','','',NULL,'kg',0.000),('96','Semillas de Cilantro Molida','MPP','','',NULL,'kg',0.000),('97','Estragon','MPP','','',NULL,'kg',0.000),('98','Canela','MPP','','','','kg',0.000),('99','Curcuma','MPP','','',NULL,'kg',0.000);
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
  `precio_venta` decimal(12,3) DEFAULT NULL,
  `p_uso_hornos` decimal(5,3) NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `estado` enum('abierta','cerrada','en proceso') DEFAULT NULL,
  PRIMARY KEY (`orden`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (3,'10031188','100',233,'23432','2018-04-19 21:04:00',2357743.000,34.000,'2018-04-26 15:05:00','abierta'),(4,'10031188','100',233,'23432','2018-04-19 21:04:00',2357743.000,34.000,'2018-04-26 15:05:00','abierta'),(6,'10031189','123',21,'32332','2018-04-04 12:23:00',25000000.000,34.000,'2018-04-06 18:25:00','abierta');
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
  `descripcion` int(50) NOT NULL,
  `valor` decimal(12,3) NOT NULL,
  `desde` datetime NOT NULL,
  `hasta` datetime NOT NULL,
  PRIMARY KEY (`idind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_costos_indirectos`
--

LOCK TABLES `ordenes_costos_indirectos` WRITE;
/*!40000 ALTER TABLE `ordenes_costos_indirectos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes_costos_indirectos` ENABLE KEYS */;
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
INSERT INTO `registro_turnos` VALUES ('2018-04-04','1','10031187','2018-04-04 06:00:00','2018-04-04 14:23:00'),('2018-04-04','1','42147451','2018-04-04 06:00:00','2018-04-04 14:00:00');
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
INSERT INTO `terceros` VALUES ('10031187','pedrito perez',123123123.00,'','EMPL'),('10031188','fulanito de tal',0.00,'','CLNT'),('10031189','andres hurtado lopez',0.00,'','CLNT'),('10092678-3','FRANCISCO HUBERTO VALENCIA GRAJALES',0.00,NULL,'PROV'),('10102428-3','CARLOS ARTURO BEDOYA RAMIREZ',0.00,NULL,'PROV'),('10108974-0','HUGO DE JESUS SALADARRIAGA RODRIGUEZ',0.00,NULL,'PROV'),('10283685-5','EDUARDO VELEZ ARBELADEZ',0.00,NULL,'PROV'),('11259559-8','CARLOS ROJAS',0.00,NULL,'PROV'),('12533246-6','LEONARDO PERDOMO SALAS',0.00,NULL,'PROV'),('19220832-6','FABIAN LOZADA',0.00,NULL,'PROV'),('29136530','LUZ MIRELLA MEJIA',0.00,NULL,'PROV'),('42087028','CLAUDIA INES GONZALEZ LOPEZ',0.00,NULL,'PROV'),('42112353-9','GLORIA MILENA LOPEZ BEDOYA',0.00,NULL,'PROV'),('42147451','Liliana Herrera Ramirez',0.00,'','EMPL'),('70950653','RAUL VILLEGAS',0.00,NULL,'PROV'),('75046659-4','HECTOR DIEGO GOMEZ MEJIA',0.00,NULL,'PROV'),('79131530-1','CARLOS JULIO TORRES GARAY',0.00,NULL,'PROV'),('80096454-3','FREDY ANDRES GUTIERREZ CABUYO(DIEGO BOGOTA)',0.00,NULL,'PROV'),('860026759-4','CARTONES AMERICA SA CAME',0.00,NULL,'PROV'),('860511541-6','COMESTIBLES ALFA LTDA',0.00,NULL,'PROV'),('860712584-0','MATEO MARQUEZ SANCHEZ',0.00,NULL,'PROV'),('900124107-7','CINDY COCO SAS',0.00,NULL,'PROV'),('900124794-7','ALIMENTOS SUQA SAS',0.00,NULL,'PROV'),('900380814-2','DIPSA FOOD ENERGY REPRESENTACIONES SAS',0.00,NULL,'PROV'),('900409034-2','TERRAFERTIL COLOMBIA SAS',0.00,NULL,'PROV'),('900473144-6','CONNPLANTS SAS',0.00,NULL,'PROV'),('900543350-8','FAIR FRUITS SAS',0.00,NULL,'PROV'),('900560551-3','SERO COLOMBIA S.A.S',0.00,NULL,'PROV'),('900687446-4','PACIFICOCO COLOMBIA SAS',0.00,NULL,'PROV'),('900767263-7','FLP PROCESADOS SAS',0.00,NULL,'PROV'),('900830404-8','COMERCIALIZADO DE PRODUCTOS AGRICOLAS DF SAS',0.00,NULL,'PROV'),('91499686-5','AGRO BARBOSA',0.00,NULL,'PROV'),('98473570-2','ELKIN FERNANDO ORREGO ZULUAGA (INDUBOLSAS)',0.00,NULL,'PROV');
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
INSERT INTO `users` VALUES ('admonanv','$2b$12$GFx7nQ/hrJ2aabsY2fBwYegyeFdbJVt3GJMHDpi7W5v10IHRVxGhW','Juan David Osorio','contabilidad@narnajaverde.com','','3218527363','','1','R',NULL,NULL,NULL,NULL,'3218527363','',NULL),('ahurtado','$2b$12$9ka/b3u6AhTQhBjQ3RFkKOfa16xmxoWihhlw5eFAvUm2RIZ9A.Zhm','Andres Hurtado Lopez','andres.hurtado.lopez@gmail.com','Calle 12 # 23-16','+57 6 3443804\n+57 313 746 6668','prueba de las notas','1','R','7651b581-a052-4a07-ae77-360c0fcf30f3',NULL,NULL,NULL,'+57 6 3443804\n+57 313 746 6668','',NULL),('chenao','$2b$12$tNcgLs.J2W2mZrrctMua/uSGe577G7xKgizqiRqDXIZlcrpUrKqUm','Consuel Henao','','','3226547063','','1','R',NULL,NULL,NULL,NULL,'3226547063','',NULL),('cvalencia','$2b$12$fDTZMOY7Mee/OgZoYSgrzeIzpMig8dgt8a/dmSCqHa3rwPVCs1lji','carlos alberto valencia','','','','','1','R',NULL,NULL,NULL,NULL,'','',''),('ggaviria','$2b$12$h0RWsLZF/X/pOiFEBiFteeQjaeljWGgDfGDxFUZgZcUzkKjX7BnhS','german gaviria ','','','','','1','R','06ed702e-673b-4119-97e1-3ce2db946996',NULL,NULL,NULL,'','','mantenimiento '),('jcarmona','$2b$12$P7kIWd8T31EwVLc3MKBPceNFdpupqY9CRNlmFviwFMXCUqcqb3ryy','Julian Carmona','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('jgrisales','$2b$12$47ja/TNjSKS9gLKIT4A4MObqOKmFFZPy6RvxXnL7TvrKMMvR0CSGK','jacqueline grisales rodriguez','j.grisales@naranjaverde.com','','','','1','R','a6bab65e-9315-473e-909b-b993343d3bca',NULL,NULL,NULL,'','','mantenimiento'),('jrojas','$2b$12$KGCKfxFxlhxOQl/RWUtCu.2KHdzL2Evl2OpPFeevmVMW0tZYPIDmW','Janeth Rojas','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('lmartinez','$2b$12$y2oIWGvqv/WmGhLbEKneWOPZsjGmmlFjxzJFnTbVcfI70yDuC72Iy','Luisa Fernanda Martinez','produccion@naranjaverde.com','','3218527661','','1','R','fa72a2e2-10b5-4115-b20b-7f77878cb025',NULL,NULL,NULL,'3218527661','',NULL),('mmejia','$2b$12$J7cNC42K8w44bROH5zK1kOiHHT9zX6Onm7spYknSKFCmEoVZcGpIy','Martin Mejia','gerencia@naranjaverde.com','','','','1','R','540765f1-e751-4b37-adff-af3cc97e614e',NULL,NULL,NULL,'','',NULL),('pcastaño','$2b$12$KtpjOgo9b5ECLKmQrjcaeO7/0zVvDn//WXV6LvI1ShZbvWY5mcP8C','Paola Castaño','desarrollo@naranjaverde.com','','','','1','R','22b677e4-47bb-4241-8dd2-85aa668fbf4f',NULL,NULL,NULL,'','',NULL),('vmarin','$2b$12$vZFEfijLim/HnIvTA5EYZ.uaZcHnSwwQndJgcxfWpemPQlgrWjJ1S','Viviana Marín','','','3226547063','','1','R','92166341-4b47-45d9-84c0-93f653e327ea',NULL,NULL,NULL,'3226547063','',NULL),('xherera',NULL,'Xiomara Herrera','calidad@naranjaverde.com','','','','1','R',NULL,NULL,NULL,NULL,'','',NULL);
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

-- Dump completed on 2018-04-12 20:48:35
