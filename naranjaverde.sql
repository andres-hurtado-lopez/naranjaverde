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
INSERT INTO `equipos` VALUES ('F002','MOTOR AC 240','2018-01-17 12:59:00','fhfhj',0.000,0.000,'X','fghj','prueba','fhj','dfgh',NULL,NULL),('F003','Cubicadora 2000','0000-00-00 00:00:00','None',0.000,0.000,'','None','None','None','None',NULL,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0\"\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�k\�շ��X\�H\�`\r\�\�K\�2\�dYc!FX�/ֱZ)\�Ԙ[̦Y\"�a��S\�y��xm�\�6��º\�\�޸�9b��m�\�\��\0$a\�%ͧ����D̪��,7(9��;�$r�\���`Mc\�\�3\�Z1�`g\�\�v��F,\�\�	�y\�A\�ڭb�ڴt\�\��{Wk\��\�\�\Z��ڞ2)Q�ŀR}:��\r<+�2\�6r\�a��}+*h�\�V�V�y��\�.0�\Z�Q�t��V\�i\�(FE\����x���rWi��v�\�\�%{��7�F\��I��v\�\�w���`ke�:�Dp[\��\�ca8GF`\�d^���\�\�9-�[K{i%�&r�\�\�\��qޒ\�T璶��\�O���5n�Lv\�\�\�\�;�\�\0��\��Kl�2�9=*�q�N�[<;��FM��zUG]h\�B[̒F2�\�ߎ�V��8��\�5\�ץ\�\�i\�\�\�K�dFt�6E\�����&eU�	a�@a\���\r�\�5\��j�\�<XG]��\�M�I乶\�h��e�p3\�i,T\�.�\0�\�}\�U�Z\Z3\��\��r�a�W�\rFݯE�1iNs��ǭc\�\�ȓ\�\�l\�I!v�d\�\�{\�\�V\�+��\"\�\��0fX�	=ǭD1\Z\�Yv\�e�ܟi+_\�ў�\�\�h!�\���%aGp�!$(=N=*z�\��\����y\�ڄ�s�wIe�;~�\������\�}\�\�ǝ�=�\�\0۞\��\�E\'��vط,p��J�Z,�vPJ�\����n�/l\�\� ���͟���*��\�Yh�\�\�y\�nD��c\�\�c4�Մ�\�6�[\�f�\�мC��\�+Em_R��]\r	/�Kw�\�ʼt\�U%\0~|\�i7\�\�6\�y~^�����u��� �9D\Z|�}2$�G��k3KK�\�I���\\Cp��2\�	$\��h\�Vk\�9�\�7�����a�)~�G��([�f����\�!\�\�}�s�U��`\�i�\�h�\�\�D�\��\��\�\�\�$Ӭ\�\�\�M�\�3\�S\� ��\�{%}�\0�I��ױ��\�\�X�Dx���T1\��=�֝u�Y\�\�Ef\�Zy.\�۞��W;=�\�#�\�|\�pעQp�\�R���o�ix�\�\�Y���d0β�\�	`@�M5N: s��\�sj�\�m-e��\Z�#\�ڢ��3c\r\�ю\�J�\�\�`g�\�\�gk\�\�\�lP2�\�ea�rr;Q�[����kG���2�H�\�$pv������\�\�sKԖ���\�\�a�\�\0\\Ցyja�\�>Q8߼mϦk��ϼo@�o*\�2<;\��\�\���VZZ\\\�ڄh�Q�����G�A\0UJ�uw&3��\�\�\����r\�q<q��i�\�A\�lu\�dxo\�S\�;6�gj\�\�[\\ͳd\�\�`\��9<\�g=�zt2\�m}�Y\�\�\��M���t�\0��\�\��2C�\�\�\��\0`\��ݶ��\�H�H̃p8<�H�J\�\�\�\�4R�nz-g\�\�E�\�\�\�\�0\�>6�%\�,�=0�\�+\���:n�}�_i�Q�\�#�_}��R�\\)C\��.ns\�1R�$��\�OH�z$�#�|So�Bmf�\�w��\�Đ�\0ŝ\� \�=�5�\0i\Z����yo�����\"yK���\�\\�3\�k;\�\�-���=���\�ͽ�N����Eހ)ڣ$dcڏ��\'�ud\�\�a��\�P�Q�u\��\��a�(迮���E�ս\�w6�\�q�),NXz�84]\�[\�[�\�\�\�V� \�\�+�U\��)�}\�]\�Eq3@�2#�#�\�O#�o\�Z\�h��Q\�#�9c{<�#u9Vك�\���-K\��h\�K�T�T��\�t�C>���y���\�\�>$��\�\��ݥh��[����\�8��R\�4�FB\�b�-\�\�ڵ\�\�3DyS�;gQ�m\�巃�M�G��X\�\�6m��h\�U\09�`H\�zP��\�����Nִ�Q\�M?S��h����$)��8��\'\�\���]XA�\�y�\�!�M\�d\��\�0Xs��5\�xVF\�\�:M\�骳��\�tnt�iLv��\0a�q\�t\�\�m\�t�\�v\�\Z]\���5�\�V��\�1\"��\\9\�)\�U�u�\�C�:��\�$\��\�E�K��v��a9\�@\�\\��P\�4�2d�P\�,m%�e{���\�	�<\�ῂ\�V\�Γ�Iqs�%\�2\�j\�De��d�A\�J\��rKc�^j\ZE��.�,Q��\�c\\\�\�m(�\0�\�\�w\�\r%�\�\��V��\�C�(�B\�\�\�\�&\�*(9\�{�\�\�\�(��QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0P\���?Z�\�\�\�<Ս\�r+##�z2��\�*�y\'�\'�T\��i�\�1}2\�l�I\�!\'u|9S\�a�s\�]?�4�M\�z���B��/�Apm\�\��\�R�t�3�Ji_+�\�\\\�	�\�fxoXME�\�ⅡI�a\�1_\�ZM�OҼW�餬>]/�$�~\�n�woX7��/`�\�\�P�v�\�k��]B\����\�Q��\�{k\��w��6sӞx�o\�\����\�zE�Օ��I\�\�sspv�CP�n?�����&4�\�\�S�\r�$���qN�4�F�Pt��;�Ҭ�C\�+hu�d�Q\���	?�̜��oz\�)u\�M\�)f�A{g�k�b�(P\"���׌\�4�w\��\0�Ѕf\�\��\'����k	��\0g�m\�v��\�il�}��:�o[xn�\0A�����\�D�\�(\��3gv\�[~��NռM�\�/�cky�\'lA�F`��\�\'�\�\��\0]�̦\�o\��u\��C$x] �~\�\'#\�\\�����׋4��h��oo\�,�A�l�dt\��-�G9���`�=.��.��\��\�Xj7\Z��Օ�n�h�_\"b[2���`֎�&��x\�[�\�f�w5��\�_ڱ!w\�2/\\ax\�&�\�\��?\����\0��G�K�ZŪ��;�u<O2.ӂ�T����\�^5\��7m\�/Q׬�V\�\�\�t�{�AF��$u\����\0���#�[��2\�Am=>\�څ��[o\�ݍ��_n\�g�LsI=�\�������=�\���焖�\��~�=y����/�t�\�\�խe�\n�B\��#.A$�ޤ���L\�,t�Ai�Z\�kn���%ڠ��Uw]�[��)(��\0(��\0�� k��)�\�v+d�>�*z(�\�`��(\0�������8\�g\�!E\0�`�u8\0gڥ��\n\�o\nh���JKie�Y|\��.ex\��\0�#,P�\�\�\�<��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(�R\�\�\�d�I\�k��3\�@s�GP>�5y�����q\�E�\�\�5� ���A��B\�6\�Fz�\�Ӟ\�\�\��^\���^�P�]\�C\�rg�\��.\�3��s��\�\�Kߧ\�8�\�Z\��z+�\�5��\�� �\�4S\�R\�2�Ń�`�\�$ܞz\�\�\n�}I�u{�KT�\�=F\�5�\�B����X;H���՝�b���ms��6���ާ�\�_ϱ��\�\�20{�W�\�����\�^6\�Z�\�g��\�HL7F%.\"$nN�\�=jomYi_C\�(�\�\�u�c\��w�W\�ku�\�ss�\��L�E�*A\�sq��\�ْ\�A�\�\�\�\\��NuI-I�;\�bys�V��D�s����\rCT��ks�]\�#x�\�K,7M\�A\�m�Fp\0\��8�7z���h�-��\�.�\Zu\�1\�sp\�i �E��ym���掗����\��\��G�_\�\�aeqy9\"x\�W�\�ڣ\'�Qcu���\�9�#YSp�\�\�#?�rwz}���u�,��\�D˧JI��k�F\��\0I>\��\��\��?[C}5�����\�spҪ�,d\��~�{SKV���\�&\����\�J=Z\�M^m!.��%�\�\�xBpq���v�\�\ni_f�\�\�V\�\�M3�w7n\�\�y�;C�\0�)-Z^��\��o�\�\�\�=�\�\�\�Z�\�\�\��D�hl53m-�2Y�`�&x<��\rw�H�C�IGP\�OpEUpz;��_Ie\��\�<���$B��lCv\'��\�)>�u?���\�Z\�(�<M%���\�#y>k���\�\\\�еi[���\���o�=N�\��wr����\�{\�u;;�\�\�M���e�2rN99#un\�\�R���=^\�+(�\�Hv�\�8U*z��\�\�ݽ\�M-�\�4j\�d9�\�\�EO^}�\�\�\�\�\�\�h�n但��1o%����3ln\�q�sY�>�r-�3�G�\�\�꺝\�\�yd�\�i\�\�(��yx\�\0\�\�sB\�\�v�C���\0\�*����\�j%�\�4�m;Td\�Uy.5q�$)�Z��G\�rn��q�\0<�`��\�y\�\�\�\�T�\�\�-�N�ť�W&$x\�[�2�����\�=1S\'e�\�\�Ǩ�*\�s&vH��>�f�wwoe�\�d�2\�g8���\�I�O^=Ԛf�h�B\�4\�r]5W�@�\n>\�;\�#��g\�L�\�\��\0j��\�ȘKhf�;��ʁ���	\�	\�y�k];\��z+��\�sԨ�\�W\�\��k�_\�\��W\��3\�/�T�;|�\�S$(\�l�\�|\ro�\�.���\�sZ�\� �kǋ��ZFU$gg=i-o�v�\02��SEa�\�ܯ�uy,\����H\�&*��\����KH�^�\�\�d=��\�%\�&&e�\�n�[�s\'?�\��\�\\\�,uk�\�\�K[�$�.#�@�lb2#�=*d��{\�,\�d71�\���*�@$zʹ?\n2i\�-����/\Zf�;����d9\�\\�ɪ�\�\�\�^���B�\�v��Қ=\�\�&G2����\�Nh\���=;KMV\�\�S�\�\�/\�\��~vW\�=��\�\��\�^;\�-��K�>\�	�6��Ya,7�\�\����K\�\�k�i\���\\\�Ԁh\��~ �v���Fꚅ���\�}/�k\���\�>�jʐ\�t#\"�j�}���\\X]�k{�(\�\rs�<��\�\"\�o%����K{���c\"mb\0o\�\��W>�\�Q^nu;\�\���Z�\�ն�\�K�%�d�\�E�<\�\�m8<\�⺝A�\�N$\�\�5\�\n$i\�\�r29(K|����?\�~!���\�\�:\�ϧ\�	\�W�\�)u8a\�*\�q��0[k�My-\����\�p\�qp\�˰\0Te�b+�\�o��xGU:�\�ơ�ޕ��7m\�(\�\�C���:g���\�\'������c&�6��\0\�\�\��m<!88\�_z�\\d4��3@��+mu������t�<\��؁�z��\�3{>�\�K\��mN\�M\�)��Hռ�\�)��	\�\Z>ʗ�\�b�\�5\���4�/,�8Գ1\�\0䚋O��\�l`��r��$���ܤd�k��\�מ�\�\�m�Z\�Eh6�W����oi�O�\�iz-\�弱\�W\�Emra\r*4J�\�\0$`�\�Go�ܮĚi?\�]\�\�^juI4\�T\�ng\�.\��\�\�Z�_�R.\�G�\�\�-\�\'�?A�Z�E�V�uAgsk2\�m<��\�A�5ly\�#$\������uu\��\0���T�����PZ]\�\�\�\�\�̓F�іC�N}AW#\�\�a�mKF�:�W\�\n4\�.��K��\0\�K�+�U?��6v�WsE{w%\�7���y/\�e8���\�cv0s���u\��\�A����\�#եҵa�E\�K>oMY�2�1m\�F^\�9\�\�t�ּS\�	.�-QV\��8\��\�\"�W\�F�U �z板���\�\���zUޥigwgi<�\'�vHi;\�T��O8�uR\�N������I�\�\�HH=	R��cI�\�\ZLQ˨]\�m�,H\�69\�)�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP\�4\�#Io��-�\�PFW`��(]�c��~��i�\\-�ckg̖�,jO�\0\n\�|y�\�\'\��^-&\�+%�\�XD8Ϙ�t\�]ӵK\�Z\��\�cUk\�[K�[�!Dxԗ@fG�\�\��w�ס\�YhZ>�t�VZU��\�\�t�ۢ;g�H5n\�\�\�\�-��fg+\Z�\�<w\'�k��ֿ�?��m.e\�\�\�-%�&\�-����H)\�s��\�=*���\�|\�\�\�R�W7pj�rZ\�j��\���iFP���9\�;m�u���\���\�5�s�h�W\�}s�X\�x�\�<�\�\�t\��\�u\�~m>\�^�W�<\�\�,\�6R�q.\�n<�\��k^�=潬\�\�ߨ\�JG[Al\�#��L�)\�>@8\�<T�{?\����k���=��\�\�;��&��J��uS��z�p?*�Q\�l5H\Z���\� \�\�D�.}pA�Sė�$��6\�\��\�xt�\"��)�૆\��T�\�tk��t�K�n�\��+-\�оo{\0g\�\�#L�\�ht\�8\��A,Q�\n7@\�T\�il�;��*�� B>o^8\�`x\���\�\�K�N�k9oum^e�]�9�`Fx��9�G�\�z^�k-\�ww�\�ZAy,J�,\�^\�p>]\���\�\��\�=-�w�\0&u��\�l�\�\�G\�\�\��ʶD��\r�\��5f+K\�I��\�e1Bʋ���UO��\�W5�\\j�\�$��\�\���m�ڢ��#I`m\� \r�t##�\�j�\�ȴ�\�Y����Cl\�\��\�q����O=q\�LqB�� z^W;���iړD\��}�\�BwDg�d(}W#����\�\�\�zŏ���\�\�/��5��-\ZX���\0Yщ\�\�h\�\�K�=懢^\�%\�旧OxVY�Ѥ\�Б�+N�={N�����y\Z\�姙apSˊ��h�Q�A\�s�\��~,\�\�!��\��\�\�\\\�)nf�l�m\�\�\�\�2\�@\�<)�J�\�~���S��\�\�+sogow91\�\Zȹ���}k\�Zv�a�\�C����\�\\�t�S�s�\�0sן�`X��X\�\�-i\�\�\�\Z���W71Į\�&ѵ���\�\�U\�:\���f�\�P�\�&Ӆ\�p\�\�lF~B����\�8�=)\��\0��ߘ���\0����C���ӭ\�\�\�\�X��Q�([\�f�{�M\�q�Z.\�	 \�ʸG\�|Q��{S��\�\\A\r�\��p�\�VY\�&+�\�\��n\��\�\����&�)\� \"i\"H\�d�a\0��ѻ��\\���\�\�\�\�4ȵ\�cӬ\���k��D�\�\�\�Qg𾛮e�G�\�.x\�1Gq.�\�\�mמ�?D�ox�\�}^\�s��\�$~������񴎟Z����F��\�UCQ\�4�RD�Q\�\�o>�-\�B�B�\�{�\�˥\�^&�R�-l�\�\�i�Bx\�Q��s\�`\��/e\��?\�iV�\�\�m���S�\������V\�\�(Z\���\0+�\��\0\�[��\�Z�F���ex��[�@�L���\�F\�\�d��͟g�Ǘ�\�n1�j�5e�U��\0b0I�⹯j\Z��ޑ�\�\�k`�\�i\�Ʋ2�`��\�㻸8\0�G�.\�\�:>�o`\�|:m�vO�\�\��\�z\�@\�?N\�4�*�cmg	;�[ı�>�P9�w]�\���=\'L�Wio5+߳��\��tK���P�ˁ�ޱ\�5\�r\�uM\�K�K�(PX#\�\�\�+���\'�c�\��ߗ���?���\"$�\�Ȫ\���VzPCag\��Z[\��G\�\�\�8��W���\�^j�!�N�e����G��ͻ��Mj���B#\0d2�\�\�zqZZV�\�[?Z\�\�:��6��Z �\�8�\�y�E*�\'vW�8\�I\�o\�[\����y�\�u\rLܛ}>\�Q�!�\��=W�{u�\�iZN�q\�XY]\�\����\�\�\�\�W;\�Ȧ��?�,\��SG%��\�Q\�\�$\�1�\��j���/ĭc\�\�\�aŝ��H�9R�\�9���z�\�4���mp{6v��\�I���v\���q����\0�|\�sS�,h��`(\0zV^���j�Q�\� ��Y[\�0If�\\p�O ��V�\0յ�\�\�\�A�H0�ʁ���<\Z��\0���C�����v,�Z\�aQ�+�`յUE\n�*��\0���\0�4�9u�.�h/\�\�nD+\�\���~5\�Zx �[\�7\�6\�o+L�e\�R\�I��MĶ<q\�5\�\�B\�Pz�\���;Rh��\0O��hN\���\�p~��\�\��V�;v�Z��\�J|\�\0~>a�9�4PEƆ���N\�\�`!\�\��8m�<\09\�\0c�洍�\rr�&\�\�)E��ܪH$\��ǰ�h�\n�iz|�\�C5���\\���\�R��\0\�9<O����-\�\�[+}*\�I�\�A�,o�P0\ZТ�)\�N��F\�\�}��9\�-�+c\�\nH�2-E��\�4�~\Z\�`Q)��3Wh�\n�i+��\0i.�b/󟴋t�\�g��P\�[�$\�\�Q\�;��\0261�=\�\0�T�PP]\�\�ޢ%ݴ7�$U��aцz\�S\�@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@qxGD�N�\��\�3\�\\�2��R\�[i\��\�Č\�\�\�4�	og��\�^{�qm)bHx�\'i^�\�{w�Ԍv�oA�\��Ҽ+�\�Z�Oe�\�1�^\�Y<�ۨUf!A\�`:U�<9�\�\�\�Z\�i�>c=���|���\�r~�pr9�����ƌ|C8�j\�\�,�����1誸�\�\�U�\�\�\�i�xm���\�p�\�UC�\���\�O]�>�if���\�\��6zm��^%̓\�u9�@�0\�G�\�\�\�O��WE\�o~\�uh�\0j*��y!gQ\�1F�\�5�|M�\�W&�s6��B.pEwo.������pL�p�$c��\�jV�Ƨg�\�\�\�Mڬ�cs;\\9P\�U�c\���\�=�R��)\�ΧV�ޗ�\���\�D���\�Xr��c�9�+K{Hm-!Hm\�@�ƃTt��ycorbxLѬ�923�=ES\���\�M�i6}�\�.Gݴ0\�\�M\�hJ�W,j\Zm���o�\�\�}�u��\�#l��=O��MK�j+-�H��\�\\�\�B�	�\��\�Xw\\�G@\��=5a���E��\�F�Vfv�\0S�<�\�\�Z���ů\�w\�}c2��%��S�\"�\�y���#���v���\0�>��\0\��\0�M�\�\�V�fm>\�\��c̑\�y]�\�9\'�\�)�~\Z\�luYu;[g�\�Vg}�\�\�o�\�^\�>�\�e�<i%���X\�\�:F�;Ƅ3\�1b8\��S\�k\�YM-��g=���FQ�n\�+\�@\\�8\�T���\�\�o\�\��kYd�\�&*�2����\�Ym�\�=+r�/x\�\�K\�Y-\�ln\�#��\�h\�r�\�eS��1����\�֒\�w\�\�c�\��-#WX�\�\"?軙&Y\���|\���q\�8\�\�<1�\�\�i\��|yQ\�\ȓ?��\�\�����\\��5}gS\��[i���Zv�l\�\�4\�\�,�b\�\�0@\\Aɭ	u}by\�\�tU��\�i�\\\�Mx�\�\�*(R9�I$�ۊ�\�\����uK�\��d\�߆��\��\�MN\�nmm3\�of�\�1�c�0[\�<�R\����\�z�Pݫ\��\��\�vb\�!\'p\�p9\�5\'\�?�t,��\"U\���\�\�:z\�\���A,j>f=$�Q\�\�z�+6�y&:\�\�zM��q�f�\�\�>lwI>�1\�؞ý7E�Γ�\�,�}��4ȱ�\�q$��\�\0.\�\0d�*�W����yu\�X\�Ҳn�\�!�\��%��\�M�G��sᎃq���q���\�\� \�p-_\�,\�$\�\�C\�s��\n]_�\�4�=�\�\�֖S\�\�o\�o$\�ۉ\��B\�\�\n\��7VM3U��+uxuK�\��+�A-�f#$�\�*i�zg��Wkak\r����X\�@�	�����\��C�\03bo\�3j�\�ri\�n��c�\�\��c\�\�\�\�f��N��S�RX�y4Kɸ�I\�V=�\�?\�\rM\�nd��Y\�ݛo�-�̒ʪ�YĪ<�=HS���k���\�<3+\�jv16�Hq\r\���q\�h\�\����jKd�\�\�\�\�~��i\�\�	�l&X\�|d3#�z�)O\�ջ[�\�\�a����d������Դ5\�\�c\�\�*KW�̿��Y\�\��`\�Ł�<Qm\�m\�\�YCe�~З\'2;3J�Y��\�A�=+f�\�\�cQ\�\�,Kl0�[��nR3�\�mz2���隫�\�[y��\�j\�{.br/u*9\�V.4\�K��;��\�-�����*O^x$sT<=���%㤾g\�L_Ìl�c�\0\�s�\�\�6�ؕv�2��\�q����\�/\�(�g@�znU![� i�����V�+��g7Q(A,S\�*v�\��{�\�< |G\'����Ԭ$���VT�4�#\�C�ɔ��<\���\�x�Y�\��^�\��\�Vwmn�6�\0�:��[H;G9!q\�h]-\���\0Í�����\�5\rN\�o�on\�V[�/l\��،�p\ZФ ް\�\�n\�\�i\"�:i�k\r��~�\�q�OƋ\���\�\��Z��W��\�F\�\�t\�o5�d�W�\'x\�b�¨py�5 �-�6�ZZ.�&��cnf6\�꥚N\�Wh\�\'�՝��\���K��K�\�#<g��T�\�ҟ^\�\�ۭ2o\Z\�귖\�\�sy\�0�!6��\�\�N3�J�\�_j:Ρ�ir=�\�Cl��r�Sۡ\�Xa��\�8#9Ԗ�u�\0��_�\�\�(�\�\�\�i\�:��g=�wwa\�[\�\�\�eaÙ\���z�uMR�N�lC\�_\�Ɏ\�\�I6v�LG�æq����K������\�Q\\d�:�\�R�\��4U�od�\Z��$�Y�{��܎)6�ҹ\�y\�y\�O��n\�\�7\r\�\�zS\�\�a���\�?P�:t7�xu\'�.\"v�\�L\�P\�\�I�ˏ��\��H.m,n��Mm-\�o�,#!�J�����k�[/\�D�\0S���\�S���|-\�u+y ���n\"��9\���(	VBpݜw����*uK�9ٕLf\��Ź\�\'ߊ_\�\�+\���\rJ+\'Ś�Α\�CR�H\�{XL��T�\�\��\�X\��\�K[�\�4\��\�%����bf.�=7\0�>����}\��)n!�/�-\�\�ѮD�I$\�\�\"	G\�]\�\01M�Ӭ�>)ܛ;Xm\�ƕ\�\�\�]\�f\�:�zij��=����\�Q\\^��Y[�H�\�\�6�\�ur�Bi�\0y1q\�\�)t�,i\"F\�\"��إ�-��\��\��\�j\r\�\n\r2KX\�\���\�3�X\�B�O\�*�ώ\�-�`&��j\�R}5��\�\��.\�o;G9={\��~6��\�\�郞k�����/���*\�΢;���\�9ՆrQ�A�ڶu�F=#H�ԦVh\�!y�W�\n	���z+�-tE\�+�Ю|G<Q\�\Z�iqY\���{x\�2Ǒ��\�{\�Ec\��,֞V���\Z>�p�\�[��C\�\�fbv�p2\0\�zv\�½\�\�\�Q^as\�\�g�\�Mk\Z]N\� s��\�ߍ\�9�sS�w��Y���])m\�\�\�c�ᑜ�b+�\�\�J�ek�\0]���=��\�j�\�R_\�O�����e��O2)$RKW\0�8�SZ?$\�\"\�\�M��\�\�t�|l\�\�ʁpU��Q\�GU�\��\���7����\0�\�Q\\w���m\�\rZF����#<�[\����y����=���֫\�	˩joi}?\�\�-�\�nrn���Nx������u1��eX�D8%P���p���a\�\�ԭ<�l��\�\\Ccqh�GXȘu\�N\���\�\�<���\�\��.�r�8ٟ,�b\�\�\�\�\�~([\��\��Bn\����\03��D�1�\����i\�\�>�\�\�)���\�Z\r��\��\�+�|\��� �RA��������QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE#�I\�h``x[J�\�\�\�O�&��e�p\�<a\�-�I��8\�U�<\rci}k<Z���k;����i��\�\�\�ݏ��\�ޓ��mF\�_]M#ͩ�\�F\\\�\0O���3�I\�I4X�\�\�Zg�\�~���b\�\�\��\�`9\�v�\�s�i�\�=�o\����X\�<\'�w\�^j��־z\��&�<�\������n�_�V�NmF\�SԴˋ��\�\�r�Y�����q\�F\rU��]\���.��=:ԭ�\�)��\�9�K�[	+\�#8�>#��k�\�w�QEe)�Pn>ѨGo#7m�\�z񚕲�gn�j��p1�\�\�\�7Q_Y[\�@I�\�5�	ʰ\��uO[���6d�x7I,\�\\���l�\�\\�8<qM\�;2U�tR�u2�\�\�\������\�4,3�9\�=A�~\0\�u15[�L\�\'�����%�T\"�\�\�\�\�����\��sH��YuM^v[X\�\�\�\�\��Y۠\0I�J4�{U\�mu�Uҡ�S��`1㱷(m\�O/#��\�R\�����\0�7���o�\0�\��\0C�4�i}|��X\�k3�E\�,vaA\�ORi�W��\�u��5Am\�\�6M\"��\�6\�\�I\�\�d\�o^\\]�\�\�\�ܘ�(��\�\���\r\�mH\��5O�\Z��u;i_R��0��3��λd`\'�\�z\�U�+vz]��r�~���}���\r�\�л�\�9\�iC\�(Xe�$\�W1o\�MKR���H\�\�\�\�\�\�\�u=؇s�\�\�]�X�$d�K}�\�]s�VZ�\�\�\��\0Q��|b;\�\�dP�\0|���\�8��/	\�\�\�As���u\�δ�CI\�Xu鑚\�n5\�KD�_��\"Ӿ\�aj�\�N~ձ\�A\'b!�\�\�GJ\���-t�\�lmŌ�\�n.I��KD~\��\�c��R)io\��\�>�ח��\�4�4]&\�L�2-c��\��֭ȉ\"2H�\�\��2��Q|n��v�6���\�\�ۙDj�>�w\�\0\0\�Q�sm�\�7�\�P\�^�	�%ǘ��w%��تz�{��\�N\�S�\�:f�\�Z}�ZGủU3�d/\�^���t]6I�\�-\�G�\�%�\ZBp\0\�\�X�x�\�\�.5��.x�̊�q��\�\�	R\�\�F$㓎�\n��\�\��N\�U\�����_$)r%I�\�h�`�wim\�o������r;X�\�-o��.�i��ަ#\0cn\���\�{R?�\��\0����/���� ��|��d.\�T��Q\���\�\�4KO�c�R\�\�y�\���;q�~�\0^:t��k%�׵�{�6���cc�\�M��hp�\��\�9$v�f��~�ºj��\0\�\�H�)\r��-厩�\�G4\�|��J�L����RF{\�#5|h:W��\�\�c�\�\'�od\0c\�\�v�\0�qZUB�Y\����m/u+Kk��\�E,ʏ&N\�NO<R]��={E�[��	�n\�\�\�p\�\��l\�O\0�\�\�T�\���\�i�Oso\�\�m&\��x?�.��i�BF���id�\�L��>�\'���C)�Gz:\�\�i�Rm1\���<&\"��d7���i�>���\�i�M<\�۠E�w\�#ܞ晬k\Z~�l�\Z�\�\��D,\�1誣%���)�\�7�U\�ݦ�<\Z\�\�o\�C\�\�s.=}\'+&�-��Ep�\�\�ѣ\�n�닋�A,fmZI#�۞c)�.\�w8��o��7Zn��mpg�P�\'�Ѵ�8Vڿ(\�\0\�Vwk�\�+\�r\��j�ٵkmGP�k�Y.-��|��@PX$p\08#8���M��Y\Z\��l\�R\�\�0�K�\�+��@$�{TI-<O\�]?헳\�[���n�d��\�\�8.I\�\�u�\��[�\�Gf\�v\�?f��P�n	\r��`\�YA��H�\�/\�o�{;��a\�~\Z�V���/���\�\�h<\�GP\�9*���\�i5?C�]Ț����[��\�q\\��\�,\0���&�\�\�D�)2:�\� �Z\�{N�\�م߅l�ˋ\�k.9\����/\����µ�\�\��\0��M]�Gpn\��K��\'$�&\�}\�\�\����/p9��a���\�]^_\�JE�y\�D�\�(R�U@\�\�\��֍\���N}JMKP�����\�Fv��@{�ִ�h\'�\�\�-\�0\�K�r*Q��G#�x{N\�,$�7ײ\\��/(4��6Ī\�ze�|\��~BkK\�~�K\�\'��\�5o4�J\�M\"��\�6\�\�I\�\�sL\�<)�r�c�jq\�F\�\�`eV�s�Wv9\��]q^\�<Ky�k6�v6mm\�\�\��u�\�\��7�\�$rH\�B\�\�C{\\\�k�\��\r�j\�\��܉�\�R(╕���c8\��\�~誷7��\�.�\�Z\�Y���0m�\�<r��\�s�\�\���^\�ʋA��W]M\ZU�l��L��0ۺc9�\n\��\0�.\�=?I���\�-eґ����D�B�\��*A��Ժ\�oa\�$\�4�(_\�Gm��\�\�	B\�\�9c�\�N�\�CR��Q�]\�\'1�P�\��\�&:�\�ہ\�9#���y��\"\�\��\��;K\�\�\��4�\�][\�Zw���2X\�@�aVt-!�{v�\�w�\��Sv\�\�\0\0mU�rjk\�\�\�#\�\�\�\�̩\r ��\�\�r\�\�*��$�\�\�sk:��Q� E�\�\�Dۈ	���%�:Q}\�m��B\�-B\�\�\�pL7�O��X`�\0:\�\�|�\�7�}�ϱ�6hY�ޤ\�sq\�g<���[\�\�u��0\�<rl��>�6\0?k#@�\�~ \Z4�\�,\�ȏe��\�HʾJG�z�[�\0��\��\������֠����P�xbu�ٝ��RzpE&�\�uZ\�TK\�\��c0��ud{�m`\�x\�\�\�U4O\�\�܍o�@�lw2۵\�\���\�b��\�z�\�W9\��\0\�\Z��7\�tҚ\\:�6\�|n��2Ί،W9\\\��([�W�\0�\��\0�\���\��5�,\�7w�WVl\�\rū��\�a�)\�Z���\nF]\�(�w�\�6;�z}s�ǈ.���\���3�B�\0\��D�\�\�d\�\�c�A�\0��\�<ɵ�\0ŭ\\\�]}��\�\�ȹ�kF@\�x\��Xt�X�3J:4zhk�1\�����	\�$ɿ�\�\'�1\�1Y&�\�c�����Atd�7�cϖ:�Ӝ�Z\�\�(k�K�%���+\�4wb(\�t}��#pq\�/\�v5t�:M6�MJ����y�l��\�Q�­][\�wm-�\�k$2�GF\�\�F5\�C�9|7�j�\�f\�%X�+{��)m\�RP0G\�\�\�v\�\�\�j�k�p\�\�\�mE㈧�\�H�\�T\�S��\"�\��H�oE�\�\��F!\�5Y�\"R�\�\�J�.0v\� v\�\Z�a\��:\�\�\�U���\�\�C-����9\�F3\�N$�Q\�~*\�\'լ��=l#���\��X���܇P�i\��\�f��6\�PԬaX�ť��D��op	\�\�������O[��\0\�\�-,�xbɼ;w�n>\�tҳ�\�\�<\�.\�8\�V8\�Y\�փS�\��FC,���IEO���Q\�<\�E��Iw�\�\�֥m\'Lg�ό]b\�I^x9\�uU6Mz������u\�[+�X\�\�}\�Q\�yF\�\�7h\�1�l\��1\�J��\0\��j:�E\�\�\�\��\�K�6�`\��\0�lqҲ�cyk��jJ�/m$�6w`\�kǰ�L�\�\�^��w�\�\Zf�a�\�}w�6	.<�P�\�\�o_J{���:\n\�v�-&�\�:M�\�\�\r\�:I%\�.�0FUTʪG\�KfѮ4��CPԭ�\n��wǷ\�\�(��<���\�dk�_\�ͳ[J�\�г1ȌU�GQ�֝�\�\�G�\�o#\�Y�\�o�n�#\�\�\��?Z\�o�\0�+�\0� ����iui{�\�\Z��\�~S\�|\��. mU\�S�Ut�\�iz������v֐��\�J��#c aC�:�ҡiE̶\�\�\�\�isu-\ny.�T)䓃�Ӿi�W�/\'\�쬵]�\�\�\�Y��\�\�*\���s�G^hZ꿭�\0\��]���Ş�{q\���DF�\�\�\�\��n\�\�\��̀1\�z߮gD���\�\�\��4	�\�s-�\\=\�\�>F*H�\'���axS_h�=kJ��k�E��\�\��6�\�F�l�\�?�u���\0/�=.��\0\���z\�j7��|A\�\�\�Ic��)\�/*�쐅L�l\�:��*}sĚ���4�3G��e�7�^\�\�\�\�ہ�N~�tL,t\�W*\�17V�3i\Zs^^jЙ\�ID+j\�탌\0\�֗���5\�5�Eq-��	|��\�`ddzQn���Efx�X�B\�e����*G\n`4�\�Tg�I\�1�\�kS�\�W7�tV\�I�\�b��H\�\�xO�=\�zw�oo\�k�\��oc����\�W7:v��f\�\�A�\����Ѵ���\�3�1\�;D���\�\�\��4	�\�s-�\\=\�\�>F*H�\'�����\0\�\����\����ͬ\�~\�+6�\Z\�k2����\�	\0�+j\�\�w�\�zn����\��L�]#Fa�*��X\��\0\�慪�u�\�\�\\w��oX\�\��O��1\�\\�^觘\�[��\��u#\�W�/_\�I�XG�\�q�ޫ�ٖ\�F��\�d)�r�\��M\0tTW\'\'��n}Li�}�\�\�X\�fҁ�b\�1�\�\�q\���7��v�\0U\�tX\�\0\"\�&\��\�ۼ��N1\�:\�lttV=����!�J��\�g\�\�\�$*\����\�.�\�MGí<�ZV�\�\�Ś4f*�\��@a��͎\�u�_K�\0Z�UQ@Q@Q@!=\r-\�x6\��F�\�A��sihŬ��d�����e\�}�j���.\�\�\�ƴ��i�mumlmx���L��y�\Z\�(�\��G\'�xN�Zԡ�\�U��4+<!,\0��+f\��\�\�\�%\�\�SX�\�t�Z+?�k�g�\n]@]\��)S�\�8\�]E-\�j\r��q�\�\�(�k\�V�kK���+�;��\�[KF�dlwF���H?Z��\�\�S[\�u1.����\�ggU�Ww�I(29\�*(Z_�\��@����ns�\�/<=ٝMnt\�-�xM�Ǐs\�>\�#��\�t��q��ir\�,\�խ~ui�f\�@$���\�CE\0�\n\�\��֧�\�]>��%��\�\�q%��bm�\�/��.<\���k����#���ڛ\�\�\�� X\�g\�\�e3\�\�\�\�\�.~\�o�iz�Z^%�ZLf�\�2/\�%w$�z\�h���������\�uO\\ލ2\�\rS캾���t�\�\�\�\Z<�8\0\�c�3Q�\�ֳ�\�[k\Z��\�\�^�ӕ�ؒ�\�y{g=r~�\�\�@��!���{��\0h\�4��%�]��ɔ�X��C\0@#�\�#�\��),�\�zޥ��uuhl�G\0�#�\�-\�\'$\�\�]=_���\�+�\rSN��\�\��-6\�\�m��Smm��o;�:W-��/\�jZ�Gg}*Msk%��,)\���\�B��\�CE;\�qYF�\�#��H̽($T�R\�a�`���\�r��J(�\n���c�Z���i\r\����a�Q��ު\�Ze�ͭ�\�\��0\�Gq1�B1�)o�ğlV���k�\\\��\����\�i~w��H3n\��\�2q�\�\r@�\�u�\�55m6�w�kF��\�F8�wL�\�o\�]W\�\�m,s\�^[��\�W�\�/_j�{m\�\�\�\�6\�CU�<-}�\�>��C�=ɸ{Y섬��\\$��9\�3]M���1/�/�jz�]\�~}�d��R\��\�v�\�\�-��[\�.\�m-�\�u\'\�\�3#�� ۑzǃ\�\ZԢ����\�]\�:Mť���ů]\"1�;���K5�\�=�^:\\4&1r\r�o\�L\�U�(\�`)\���6:]��\�\�\�\\D�d�u\nd>��r�(n\����\�}�\�\�7�����\�\�J�\\\�\�k��\nv�\���5\�\�G[�\�\�xY�\�b�æ�utn���8.X��Q&xB\�\�\��]�\�(\�`\�s�\�|;wq��WI\�O��\�[N$��\�%~]\�CO9\�L>��\n�k\�ڐ,B\� 2�CmϨf�Z(\�`\�s�\�q�>�j\�\��n\r�\�\�?�c\��?���\�W�:�\�൤\"\� q�i�2B\�=NMvP?��\�X^\�\�:\�w��6\�\00\����\���zTt/\�\�ڮ�yu�[\\E�[=�\�b %[h\�\��w���:\����_C+Ú?�%��\��\�\�Mq�f\�y�[\�\�f�/<u/�ik��t�\�V�\�^\�;+��$���\�8ɮҊ�}�\�\n\���\�\\k)�i:��}���y|\��\�;�+�9�{\�AE\0a6�sq�蚍栒\�i�`\� \�&2.8�\�~5�q\��7J6���uG\�⑭â�30VB~`7\�v<W_E\���\�\����8\��=\��N�kw�\�\�\Z�\�J�\�i\�{6�o=Bz���ǆ༼կ���K{\�0YIoy|\�J��N\��\�\�QC\�[�\�ߐ-?�;�m\�{Mb�\0\�v3\�K{saac,mޘ\�G.P\��\��@�z\�|?\��H-�\�\�I�\'ʷ�\��y\�����s\�uS����\�\'�xN�Zԡ�\�U��4+<!,\0��+f\��\�\�\�\�QE%���\�\��F��啼p\���\�\�\�;�&�������FG$c\"�m\n\�\�S\�5\�A%�\�D�\�A�Ld\\p7��kv��exwG�Ŷ��\��\�w5\�vm\�\�9m�Nq�f�\�:/�$\ZΚ.Z\�\�\�\�:�\�+Gq\�Z\�P\�Ձh\�r_�\�[�T	\�\�Ig�p1\�\0�X����=:��I�\�\Z���G�:&�\���f\�g �́��:�]E_���B\�\��\�exsG�Ĳ�\�\���۩�7lۏ1\�c=3�\�\Zxm\�5=C\���\�Iw\�\�\��к\��ӏQ\�#\�\�B\�o\���y_֦��+�R\�M��\�\����\�#�\�#+�\�wn��П��\�xO\��d\�\"\�N\�\��>��mQG�����{�hO\�7\��\0c���~�ۥŶ��I\"67�NFH���\�\��\�\�g�I.n.��a\"l<��*	\�H\�\�8���/����\�--wI�\�Yd�qWIc\�\�\�X2�ϡ��/\�Z\�֭�\�\�\�\�\�o��\�|���\�\'\�l�������z\�s�>�y�\�\�jj\�m\�\�r֍o�q&\�\�\�ƭ�sG�Ĳ�\�\���۩�7lۏ1\�c=3�֭\�\��9kO_i��Ϧ\�\�ŧOrn\�{!+)c�	&\�Nz��ԗ~\�\"\�n�=Y[�\nna�\�O����̥N0$t���\0\�\��+�Z\�Nxum�i�	\�0Fm�[)��{�Pj>\�.\�M��XHu�%t�P�9U�L{�p���1]%\�\��\�\r�6�\�s5�_\�]<C2\�$W?( \0v�9\�z\���qom�\��V�2\�x���v�mPI\�Wh��V��\�|5\�g\�tYd��\�u&@�dp�	6;�>\�տ\�^]kz��5f�i\�mmm\�\�$\�lt,Ĝv\0WIEU������(�0��(\0��(\0��(\0��(\0��(\0��(\0��꺽��r_LѬ�U6\�\�I\0�zjo\�Vw�^�\�\�2��&\�FA\�\0H=�\�ڧ�;\\\�Q�\�̢\�\�j\�Y\�\Z曨G;\�܌[�҉�d\�H`�+.\�\��j>\"����\�j�\�\�!0�䂻J�#�\�49\�MJXz��\�\�s���t\re�[�I7G\�\�ʫ\Z���@�s���f_x�\��A&�a�!\n���\�\�M\�X�\r�^>�\�玔�֞eGQ\�\�\�+����d\�Xx�\�JV�#D\�\�\�*�0\0����`�\�Y\���;Jt�\�r�:�����ub�\�2�\��.�Z�sF�ͻ״�K[k�n\�\�s\�Z��N3�O\�OúؽЮ5K�TA\���H4v�\�_�(\�W���NN{i{|��\0#z��\��\�P��\�\�A$(tp\��jz�&�vaEP ��\'״\�{���i#��F\�\��~6\��j;\�i7�Z\\ݘ\�o�|�)\r��sS\�檅W�_}�\Z�V^�\�/K�X.\�e1��H^L&q��\�\�\�wn\�lY����0H�*W\�}1O�k�.�\�M�g�=��\�F\�\�N��\0d7:�y!�U��|�\�;pNq\�r\�V��k��\�#�,k,Ų+gi\�Nv�(\�]J��r\����=�U\r/Y�\�|�g9v�\�ѣu\�BU�8>��\�88\�E\�\"Q�]��Ţ�4CP�\�uKA�]\�0�l��.\�Af�t�\Z\�^x��OV�C!�ZR]ۈc�J��JKO3IP�o\�\'�v�\03j�̽\��\��i4\�\�d�	%\�M\�T\��j��\�84}B\�\�H���\���v�\�ڧ\'#�\�\�\�\�#��&��\�Sr������\�2\�\�\�ȅ\�0~5��g�\�\�Z�ͮ���om�PO/$�hrHQ�9l�\����:*+6\�P��\�\�\�W��� �,�j\�\�I\�\�J]?[�\�V��P�.�i`�%\�P\�>d\'Jj\�\�.�U��\r\Z+3M\���N\�ȴ�/.\�\�\Z7M\��\�,\�\�3D:��6�,\�-\�,��B\��P���	��wF�m8�<�:+�OZ�\0o]i�\r\��a\�\�f\�İ \�x7C��U\�C\�:V�pmH�3�8��ʂ}qIN-^\�<=T\�y]�\�Ԣ��A�Gz\�յ\�3G�4��13�q�ݰ��I*H\��\�m-\�\�	M�\�]�TVlZ\�6���K#ۣ\�m��ul\�1�<�Q��M�\�~�j-�$Jά�2;2�<�1ގeܯcS�_m��4��:ō�SK��B7Hf�\��럜84\�7]\��7+i$τ\��\�Ee�\�~s.\�\�TW�^�\�iQX��ڭ֤���\�\�U�DR\� R��Á\�Ҭ�sN]>[�s�hd1;ll�\r��\�g;�\�B�j\�\Z��-�\��\�Ѣ��\�Zu��\�\�d�8��\�\\�B��+L�A�GzOb%	E&Փ���\�\�:RFדl2�\�\�Q�\��*�O\�Q���.�5Cv�Ȑ�	\�\'�\�x\�3�9�r�)�����4h�ص\�:K	\�\��\�x^,~?�g\�>\"�R\�/\�o�{X\�̑4EX�\�N\�0.ut�R\�\�jR�\��\�tTVf��\�z�Ǒir^]�\�4n�\��\�X\r\�\�f�o\�2\��\�pM,��1���3��n\�ǽ>e\�N�Et\���5h���\�o6+4�:\�#o.	�b\�v��5�Bi\�D�(|J�Eg\�z֟�<iw9Y%\�H\�6�\��*�q\�mλ�Z\�\�\�\�3�\\�\0�Q��\�x@7~���r�\Z�\�E붆��.��æ��,̖\�v�h�36q��ݜ�\�jm>�\�Q�\�ld(i�\"x\�?F\0��u{	Ӛ\\\�;���dQ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@\�\�5����!0\�,�fUh�s\�^H�K�]�^�f���+/�y\�?|a$�lt\�\�\�Y{}ga\Z\�yw�1ڭ4�>�������\�2Moyo4Q\�YT�� �Y8E�\�마��-6�ns7:>��ͪ\\\�\�f��<\�EȮ\�I-���1\�:\�M�C�\�\��}\�\�l����o9Y��6\�\�)\�t6w\�w�l\�์�@\�L�\�OZ\�k\��u�ͭ\�o�J�J\�T�\0\����_J9b�\��\��\�j�Y��練}{.�\"��P��F�2ش�w\�&�\�T-���Rrzv�\�Y\\G\�F�\�ż\�\�\">G,��1\���;E\�b\�\�X<��\�@�,7)(��\�~\�\�\�n�\��\"\�[K���\��\�_$#q$l^	f\�\�2(�U����\�((\�d����ۢ,��\��j\�V�efo���B�*6@ pG�gkZM�\�ډgyq�\�\�k~m䉔�\���\�\�\�=\�i����\�\�c�<�ѳ\�E\�o��S\�99�������׷��\�\�\nf�P\�C�e��\0��\n�i��z�\�\���9Ӥ\�\�r\���n�\�Gk����y��eY�	`�ޭ�~\��\�\�\�B[%�Kq2[<�A\�\�ʥ�Gq[W�vv\�\�\�\� 8Ē\�Nzrx�:����5�(\�I�@\�\�.\�bg\�3O�*M_��*�gN\�:]k���o\��˚Q�m:\�\�[%��X\�l\n\�}U�d3Eq\nM�,N7+�V����\�䓻aEP#�\�4�r�\�d�\��\��K\�x�n�����@\�<�.Ρ6�\�7\�_kH�24��1c,	\�\�zW`uM8^��\�\����xy\�\�z�\�\�k\�\�PxZ\�\�\�\�\�C\",�ar:�:V>\�6�\�F8��8t\�~\�\�.�\�\�+\�P[\�X��$Z<q��tr2w\�Z�\�\�}7�\�w������mX�EV%�ǰ]\����H��Y/.�m�\�M�\�H�\�\�	\�թb�v�\�H\�f�IA(\�\�\"��\�\��\0W�/�\�\�\�����_CźE\������^��<����l\�ڲ-�-�G�j0�,w}�]\�%��l�9\�+�ѵ��+K�-�\�sAH:p@\�\�\�j�\\۫ȍ<A\�P\�\�QNpO�\��\�i8E�n\�X�\�W��ߣ�\03J����\�\�呱_���B\�+��ŋ��;}k��!��v\�H\�KMBю\�\n\�*9�\�EAk\�\�\�t��\�l��>Q\�%R\�j\�YlcRJo\�ѭ-o�w)\���X��Q�X4�w\�&��[Wi�\��\�\r-�\Z���cԭ�Z�	m�\�\�C\�\�\�FFnx�:&�sy�Y\�\�\�m5�\"��9�[r\��_\�N�֢�֮��\r��oc,w(\�$(9\\z��m55��)6ⴊO\�\�\�}62<Ae�Jk�O����B\�\�s\Z\�&lly������\��\�I���R\�\\y�B��(\�v� p[<�Ѽ\�t\�R+\�B\�\�G\�RY�}5SW���^ZZ\�]Cܱ<��Z\��͓�$c>���[��B5*\�\�(^\��\�Zϯn\�t)x�\�{�\��\��\�:��lc,�O/\�\�\r\�֬��N��>}68\�}:u�8Y��iR�\�px>դ�\�\�!�So:�-\�\�V����\�::�\�2B�\r�bO�\�\���8\�m-n�\0��\�(Jv�$voO7ӾȇU�\�\�|5�\�*K[�`h\�I�b\�U$\�\�\�[N�Q��Μ�#�{cc\��\�ڤ�Ծ\��Ogu`\"�\�\�*�\�\�c�,�M?Pg[+�[��\�fW+��\���\����\�R6�m\�尿�{����R�	�4��.-�eI�\�M\�`��\����P�\�5�\���o\�爛\�饸���^\\e#\���\�+��Ԭ/d�;K\�k�#�\��\�~�) \�4뛧���\�[�\���eg\\u\�\"�H��\�^&�\�\���\�k\�\�\�d\��c\�{�\�}9�-�\�∲J�bdf\�C��힕��h7k�jr5������\0F\�~P�]7(#���q[�\��^\�M{�X\�/\��đ�s��9\�.�+9��\��\�	e��,��\�@O5<��߸\�ZԤ�\�Z]�Z[g\�̖\����Ԭq�E\�\0kZ\�V\�\0�\\YIa-��#\0��Ѐ3짵]����p\�7z]��7I$A�\�`sNY4}(��Z|nI�\"\�c\��\�\�s|F4\�\����\�\��\0�0n��f85�$�&\��\�HgX\�\r�V\�\�r;�x4\�/G��N\�\�I��;ɕ����W�\�\"��7r	�\�ji�\0b�wۭ~\��\0=�\���\�\�gi�_Z\\Z��n��\�L� d�\�\�\�S�~��Y��n^�}-\�\�\�`\�v��G�Eymr�&  ���9%c��K�?)\�|Ğ�\�\r\�j����[]\�i+	E\�\�LU�6�ʒB��	����J\�PWk+\�k��|\�*�߮\�M[M��\�\�-.$�e\�)�ʏp\�RiܙV��ӆ�\���\0�\�̻h5j-�Og~bo=e@\"ڻHe\'\'�`j�\��x����\0bKp���pϜ�1\��|�\Z\�\�u��y�V!���\"K\r\�J$g8_��5t\�ًV�7v�\0gBU��\� \��zu\�\�B�]�\�n�Zrk�[%�i�9KA�]cS��/�\�/\�?�6�`�*\�Au烊\�m�K{h��J\�\ZPNp\0�梺Ԭ-&��\�h%�\�$����<\�k\�h��\rsw�\�\�;\�t�D�4F<�	+:�*�\�[y�\�\��5�[\���\rZ\�\�\�DRC$EF\�\�;���\��85�����	ѠQus�%\����|\�b3�8\'�\�iz\r�\\\�i��x\�X����\��\�-~\��0��7y\��Lz\�\�G\"\��\0\��\0�Q\�N)(�\�\�{_M�\�(\�\�5-%��\�\�,s\"9¹G\r��|b�d\��=j}nK�\'Ӆ\�Z\�\�J��䟐�>a]-���\�A$��ֳ\�ߒ)U�{�A��:n���]Y\�Moqm\r�r���8,\����8\�?:R�d\�\��\0\��\0AҩV�\ZQ\�[�\�~��ҥK�y�t��g���\�6�n#\�\0�\\���i�^\�\�\�M����\Z\�y\0\�\�\�3)\�؊�i�X^\�$v��\�G�\�)U\��@<SW\�\Z�Y��fn�ǒ\']��ۜ\�$�N\�U�V�\�]�\�k��s���\�\"֚m+O���.CO!����L�\�c$�b=\09\�k���P��\�;[4�\�Fas+H\�1��M:MWM��l�\�-\��C�z|�\�\\�1Ih\�R��g8��\�\�~�{P�\�,�FukK�\�5�ۼi\"���bA��3\�Rk�Oke3h��r��k�\�\�\�6\�GQ�>�=߈m�|E��{=��&\�L�M(B\�\\�ѓ���\�5\�\r%��5�\�T@dU$nOA��\�T\�<�\��\0�\�S��C[i��޽�\���g�\��j�ko\�\�m�b�#�0	\�\��U\�3�;\�\�G�\�k:\�~n<\��q;�\�#�\�\�8\'9�:գ�i\"\�n��d-��,�zlf�8ϵ+jsg,�K\�_\�m\�.\0\\��6=����Ȕ\�J..6M�ޗ\����\0\�gX\�\��gR|����G\\���\n\�\�\\$\�-\�QEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0`x�\�\�\r1<BYD��r�0��$W=s\���kmF\�i.\"�\0�G�],d��v$�\�>���\�\�M�u\�\�N�Q[/�\�\�cu�O�\\iv3\�C>��eD`3K�A\�px>�\�6��?��\�-�{�\�e�o6\�ĪĦ60\�Bk��3jI�k��ؽ\�RJ<\0�F?�\�9i\��\��\��Ԧ�Tzw��FE�I�x�TI,���慡�(KG\�m;�p�#�X��u�~�;[��\�	!O��3�\�\��\�iY\����E�\�F\�\��=�\'\�\�_k�\�\�\�\�\�\�1$�\��Ԓ%�u�\�d�N\�Y\���.S�iGW�\�\���\�!%���\�kiq<�\�)��\�\�FӴrG�\�[�\�!�H5��\�cF��K�C�YY�r9�5\�I|Q�\�\�\\��6�\�X�\Zc3v\'<U���\0[1.��\�\�\�+\��8�ӗJm�\�\�\�ֶ�G��\�,L\�J���^w\�p<)z\'Ӧ1��2F�k�3���\�==먪:>������mI\�\�%�Qȓ~���3�=V\�kW��\���\�{?*\�\�c�\�g\\4^\�U\�(�I>f\�QEy涺�\�\�\�\r�=F6�(l�Ĳ.\��\���zb�Ux�\��Ybt��\�\�R$�˷.��Xn�\�N:W�Ux,m�\�n��l\�EL���\�F���\�\�=c��;--\�\����gq\"\��%�F\�\�P\�d�E�\�\�Y��\�\�\�Չ\"�Ӽe�\�J_\�m�E\�L{\�\�?\�*\���\�\r�\0���b�K\�?s9\�:u���������=\�ږh��I\'\�T\�t\�\��\�x��]6���\��\�?\�\���t�\�\�o)�6�H�n>�IS�V*\�\Z�\�^��V�\\K\��m�w-��O]���Ȯ\�I\�a\�lR�\�dXd,x\0���\�q�\�W):jO���8�\�^\�\�U�\�\���Ƈ\\��\�R���\�\�\�$,&�\�e�19\�y\�q�\�]=Cyl�v\��ȯ��24l9\�\�AB\�B���\'K�NFNB\�3���6\�V���5\'\Z��v{.�y\�ϲyl<[��\�wf;慡�8Y�\�6�\�8\\ދ\��w�V�\�]Kmqd o	�k�3�c��ⴴ�e59\�\��\�uk5�*ȓ�\�\�21��t�\�Ԧ��=ʘ�Y<\�6{\�x\�I-�4�\����Rz�����[\�K%��uy�\�^\�}* xZ\�\�oq����:\�9ڴ|N���.�l��-�KN�FduS/A\�\0�Һ:�u}�Ŭ�]9� rB�?N�\�e�_\�Kۍ�{&�V�\��_^��8�ڤ�ͩ�\�D�!G]\�J�Fq�)\�!��\�\�H�\�է�L�W6��\�FO�w \�ڶ.,��.m�f�t���&,@RF	\�C\�z\�K}z\�]�ZI\r��\'6@b��g�8\�r(ikw�/�!\n�(�F�n��K}\��3�\�\�\�|)�%���\�m\�&�x\�\�S©?�\\\�4\�&�\�ݭ�i\rԶ�4\��\�x\�V�\�R\�TG{G��0x�2?\0\�\���_\��d���\�R��\��[�\�\�{mF\�v�׎\�\�AŔpD��\n\�T�����Vi�^k:4��_��ݧ�\�8!R�\�B�Ñ�G9�B��g��Ú�u\�O�uoM���\0\��\�\�t\�]\\Kau4v�rAndP\�ϐ\�/\�&���2c�k|5O�_\��\�\�\�.\�`I(̄��\�o�_\�b�L�H\�\0\�\�?�Vi{4\��\�T�\���\�/�\�k\�DV�y�\�\�F���\�d�\�9\�M��d[��C.�4^y�r���l�x\�jս\�-\�.Zw�\�cf\�V\�cQ\�eV\0U�D��G$�($\�V��\�$\�J<�\0�:��\���Fh�+MIm-fH\�ղ\�\�c,%.�F\���Tz^��\��\"��\rNKK��e?e�l@XFta�\�q޻�*}��K\Z}u\�\�k����\0/�)�Iuq�mymq5����ʹ\�\�6\�\�\�H�\0u�xQ�`�K(`��M�k�o$D3����S]uJi܉bn��w���\0\rc��i4\�j�%�ו|д2\�	h�M�sw�鴫ӯɣ���H��]E\�\�\�\0\�\'\�\�\�К\�\�\�\�\�\�\"\�\�#l\�KՓ�\�qV\�(\'fW\�e	7ml�ܴ~��\�\Zd\�Z\��j�f�\�彝�\\+��6�Q�9\�9�\�\�/\"\�C��\�Ws�が�z��/tK{˖�\�ٱ���X\�q\�U�F<�R���g��|��n\�w��h�\�3Q�\�k\�(#�!�\�ѻm\��\'�FGL\�H\�.�\0\�h�\�*$��\\Ek�-&e8*:q�Gl\�ech�V\�\�E�\�Jҷ��Ě�G�\��\0\�G�[�QKoѷ��>-\�\�\�A�KQ.%�I @��\��\�X�\�}R\�\��\�\�\��5 �\�n\�����@\�@\�w5F-I$\�n4����x!�㴥M7�_��Q\�N0i+\�_\��9�X#jV����S\�@\�#���\���\0npG\'�k[\�_g\�\�3\��Sˇ\�\�\��y�o\�T�grj\�Dշ�\��8�\�\Z��K���\�^��b\� 4�6\�y\'\�+����\��\�\�,n\'K�ei�\\�8\�zf�QDcʭrjWU\Zn;/\�\��\0�9��<\��\�y&�2\�6�\�\�x�Õ\�L\�g=�\����g<�6�\�I!�ϙ�K\0��\�t��S�\Zu��m\���g˷M\�\�\�ެ�ܡ�FFpz\�\�[[�h�3J.\�&��\0\��4\Z\�\�3Ces��2\�\�[2l*G$u��gJ�J\�ﭶ1�--bY���+*�${�\�\'�t\�Q\�\�\��mb&\\��\�\��ns~�X4xt��;�.-+�aeC��\�׊\�(��++V�\�&\�k_P��)��Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@ǌl�\�o4[9�$�Y\�_�|� ��\�aq�\�\�tE\�\��]�bİ$��{\�9=MzM���o������h�\���?�amo����;�#;>ӓ��\�m\��\�4xu4\�7�c\�\�f gxl�<�y\�ׯ5\�V[�\"\�`�b\�|񼉁\��y�\0�\n=�M7�o�e�q\�J)=W+k��ߡ\�hM�\�~*\��а\�}��khUv�\���9\�-���K\�Q\�ӭY�&Rb��\��j\�-5Kˋ�-\�-��\�\\���s׏J��k�v�t��?�˿dp��.q��sG*ѷ�.�YJJ1|\�$�V\�n�~&�O\�<W�j�\�\r�H&K���\�C7\�q�\��i�\�\�څ͌Zc\�)�{\�^HK�wck���y\�J\�d\�m#\�!\�\�`.�F�8���GS��\�\��2�C\��ҵ\�\��4�u\�\� ��/Ǯ]�\�m\�\rp\�O\'\�\�\��\0q��w¢\�|}�w�w�tsrb\�\�w�\�]�Uӯ\�\�ay�\�I^#�c\�V*QG\'��\��X�:v�ѧ��^\�\�\��lA\�ϱ�\0aX�\0g��c�W\��3�n8\�kF�+S�r\�aEPI\�:\�\�SkR\\Ӭ�u�H�0��C�\�ݐ6�\�#&��?�牅�\�J�}��|\��_^9\�\�t�J�V�l6���\�m!��1Wh\����v�\�R���YYk杯m��8�U���Hm�\�&�\0d!>nx�qݷ�NkH^j\�m�s\'��\�-�>g\�\�\�	�\nA?Jպ�K��43\�Mp��0��k义�b�n�\�\�Sӵh^\�\�\�\�\\L\�f\�C* #ib�rx\�	\�W-\���\0?�b�!Z\nQvV~Z\'�]�\�\��S趺\��\�ͤ ��2.\�Ak\�Ԯ�\�n\�\�\�3��\�Wm!\�#l\�ˏUrx\�k��U����\�\�5�R�\�!أ�\�\�GZ�\�\�\��=�\�S\�\�\'���9�w\"�S�R��\��[\�\�a�\0��\��\��\0eO3\�ϕ\�\�?w<go\\{f���$�\�1\�[X\�i\�dx\�9\� g��vv\�jK�%���5�\�\�\��2B�`3ޮ:$�j��NM٥��{w�CN����ku2\�5\�@\�\��G���אj	��x妑a���\�\�\�\�\�y[�]�(\��\�*\�M\ZI\�\�-v��<�\0\�ͦ\�\��a�L#A��u�J�\�\�y9鎽\�hx\�\�Kk\�Qԭ �:ϲ\�I�*\�hc鸏l\�aT.��+\�,�$�&�`��\�\�19�\�\�x<f�\�V�\���C&\�ʛqMh�Zݴ��9��\�[\��Kn�bt\�\�\�]\�v��L��T>\"��L�Йbw\��˘\�ʪ[je@\�A�kv�M��\�\�\�f�6rQK+�\�`N*\�S�w~�����k�r\�]\��鿧^\�\�|A�X\�^֥\�oq�\�\�o�v��\��xt\�_I�YGo-�\�Ю�oS\�t�Rt\�{�V��\0\�Kʔ`���\�mݎ����U�{-N\�\�H\����G$�9�s�\�r3ɪ:]\�W#\�n\�\Zu�\��n.-mі\�T�\�JI���G8\�zm��\�F\�w&\�\�\���k����=ŧ�\�|mv����_h�-\�X�]ϸ�\�\�\�\��\�Y�\"�g���efIQg%\�3*m\��\�9�\�kҨ�\�[\�!�q���\�m�[k�m�\"�I#��%�͑QCI�o8\�\�޹/i?\�z\�VJ#�3@\�ro�\r�\�=y��\�:�\�备\\���\�G,�ǫ!?�[��k{q�r\�\�	̲*��@�\\�ϣF4�{	{X�\�\���p\�I��\�vB\�\�\�F�\�b\�KAn�U�2�\�\�ہ�I�-����\�\���N;�Ea`��d��\�F{��\�TT{.淚~�\�\�\�\�=��k��\0Վ+³\�5��ko��q\��\�f|�\�n@\�\�\�=G5�_O�T66�\�׌m\�k� A`\�Ps�=z�\��+���B\�2e�RSV~���\r#�ЛM\��U�\�a��KB\�Ъ\�\r�;G~s��=��U�\�B6�=\�\�ݏ�[�\���\r��*﨣\�\��i\�2\�r��]z�d\�5�)?�5H�[\�+2v�).\���Sh\��\�\�s^�h�Gk\nK/�\"���\�q\�ǽKY��u�\�\�I�yk\�\"�(YW�VBZ#O1T�\�\�7d��.�\�?��\����l�\0\�d��\�\��]��\0\r\�\���W���y�\�MU\�H[-lfP<\�#8\�lWsc\��\�9\�廐�dUV?��?J�K\�ݷ�t*8�H\�)_��\�F�\�M�9\�v�g��\"\�\�>\�\�\\���\�-\�\�c�\��\�XvB\�]x��&\"\��d~Wٺ	s\'���\�Q*Ww����\�`\�\��~i\�\�p��mZ\�{-N\�\�H\\[[\�\��g˹\�\��\�Z~\�t���S�\�\'���a���\�\�\�u�S�4�}�W*��\�\�ע��%}\�>�}6\�\�O6\�V\�[\�[��\�H/\\��\�g�]�\�kc}ce1q5\�2ŵ	\'\'�^��b\�EZ�\�2z+o�t\���>5Ӭ�|?5դ3Kok+D� c\�NA\�\�~U�\�(�\�\�46����Ge���\0 l\�\�A�\rt:Ί��\�-�\�02\�UI�\r�O�V�h�F��\n����\�{�\��<G��,\�f�WV�2|%q\r΃o$Kg,��FT\�eOQ\�zآ�\�lrԒ���P��( (��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0\�<\\�\�i6�\\\\C���Ȕ\�\�DN\�2\�s\�kմ�;P���\�eH\��\�\'�\�\�C�V\�\0c>��z�\�$�\�$H\�&6e�#�ۂE!��/+�\"-2���p3�}G\'�6\�i\��Gm,\\a��\��\0��5�֕>�o�\�O\Zo\�T\�)�\�.Hq\�\�\��{Ѥ\�\�\�\�\"X5;��>�34�ܙy\�|�\�\�\�q\�vV6v�\� �����0��\\\n���a�*[\�Y\�\�N��\�\n���7�\�E���\0[�\0�\�_֢ԔS\�\�\�\��\�̯2\���\\\�\��gDxL)qp\�69�bOZ�\�I�Oj�g�`�P\�P	-!��^>\�A\�]\���\�\�q\�\�\�{jv6�I\��^��%\�敧\\��W6V����tG��\'�O\�O�f�\�\�ܹS��_u��\��1�LX�\�I�\�w\�t��\�\�$\"\��w<\n�\�+�\��\0g\�6\�u�YbU\�\Z\�\�bH,U�c���\�u\�i�\���v�\�ȐN\�\�V\n}3\�ޟw�X^đ]\�\�\\E\�IbW�qJPmY�\"1\�rZ�o\�G���|�\�:n���4��\�\�c�\�]�F��I<c8�H\���5\�ĳ݃u�\�A��}޽�]�}�Ū\�Ogo-�\�,/�t��OM6K�\�+��<Mq���\�:\�4r{\�\���,J�>T��~]\��\r\��ǳ�^�?(m�v\�K\�M^�CV�0ƑD�j�(UQ\�\0\�O�N9�ɰ��($\�e�\�]{�F\�\�\�\�K�Hd��*�\�#xr\�<�\��&>&�mV\�\�}91iW�,0r�Ďs\�؍#L�m\Zu��\�\�?\�]��݌\�ohZ\��M�\�$���\�\�Wx�:����\�T\�\�\�=*x�~\�.K��\�t�\��w\��4�[�vY\\��fc�ʷ_ƴ<K��=\�\�Ճ\�\"����\�G;W�%̺F\"\�/籒I@����=>CבIy�\�q.���ര�\�\�\n\��\��\0����$�̗W�I�\�p�9\�\����\0�?XG�\�z�F�Eu\nB\�\�U$��\�+*i\�мN�\�\�푋�my�Q�SЄ\�\��ɮ�\�\�T�du���bU���	��)m\�l\�m����ۜ\�(\�\n�=xT�wm��\0��F�\�(E)+�\��\��_3�\�..���GL\�\�z�[٤�\�2�2P��#�*�����46�{\��yk����\�%\�\�?/@8\�5\�\�X\�\�Fc���\�69+a>�\'�\�>\�\�G\�\�\�\�m�\�8\�\\g�5�w\�����\\m4��/\�m<Ȣ����{(\�#{�\0ib\�@zf�;�e�\�^\�Q�����\�R-o��9 \��y\�FO<\����\�K��%�P\�p:d�8�\�H\�\�\�F�f.�\��~}wc4\�[i�R�\nm\�_\���\�\�Au$\�\�\�M�\�Zϧ&- �\�\�1\�@#vX�\�zb��M ��W\0h@Y�\�r�\��hZ\��M�\�$���\�\�Wx�:����}̺F\"\�/籒I@����=>CבP�\�\�\��l\���*\��^VK�\��sEdP\���� \�\ZuGo6Ф0D�D�\n��UG�*J\��ݯ�QE(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0��U\��R\�\�}\�\�=̲d�\\��3��QXp\�\�ݮ�u\��\�\nٔy�	\�4\�kQ��\�>�\�Og\���\�\�-��M�6��Oׂz\�3\�6-v\�\�,�lE�pĐ\��\�A������\�Վ\�X�Q�����\�\�\�n��KB�T����\�6�y��G�Q��Wk�#��\�Ze���~-\�^�Sk֚\�v\�Dsv\��{\�t:~��\�\�Ζ\�\��Jdv��c%�${t�4�G\�\�[X|��-�5iݶ�FB�1\0t\�(\�\��\0��\0\�}\��b��ʵk�\�K|�[��.�\�\�z����\�9bo5���&Im�3�\�(t��|q��\�S���60�P����\��۞y&�)t]>]Mu6��\�\0oYCc�\�\r���Geo\�ש.&EG|�Us���\�i�=/\���x���\�Ke���\0#�9`�\�1.#�B<1�\�*�¶\�ܞO5��꯯����\�Hm�fkX�wbā�5�\�6�瞢��M\"\�VX�\�%\�,Z6Y\Z6RFH==\�+�L\�-qn\�\�]�Ȓ�n\�r�H�i8J\�C�^�\�sWi[em�{�\�\�c}�\\��G\�f�iw��Mr\�\�*6�9Q�\�=p)�K��\�\�it�r.n��t\�7\�GN�\�/4=:�\�\�\�\�ܲ[c\�a#+�\��\�\�ߚ,��6-*M:\�%k\'ޒ\'�_;�\�NrNy���7\��\0O�%^��ʕ�Oe\�\�w�̟J�[�����\���PC\�\0\�T6v�}�6���\��B\"N\��S֧\�rmQA\'\'-��k��\�\�.�\�\�\�V\�\�o\�ȇ\0+>+\�8���jү�nm5g��G\nB�earX�<\�c+u�9�Iy�� �\��<ݭ<�7\�9ٻns\�J�\�Y\�6����j@cY|\�E\'.�\r�pk	F|�ǥN�R7]�\�ۮ���/�0xvV{j�q\�Z�\"\���^^(̑\�Dk�\�<(�I\�*\�PӢ���J���\�He\�A ������\0\�V�[I\�ҫ\�\�\��\'9��NOj\�I�\�u\�!:r\�R�7���\0�moMm?\�:.�\�����\�[��ά{�1ϧCTa��Ҵ\r~;h�\0��R�8\�\�v\�Y6(e#�Kq�һmKM�\� ^C\�\"�u\�eaІ}��ɣi6zuͳA��9�\�r�a<|\�ē۩�t\�\�_\�\�\��q\�Q�m\�\�\�[��/\�m�D\�n�{�\�oi���K���,�}\�Đs\�y\�W�:�i�\�\�6P\�\�l\�/m����eA�{�z\�,t-:\�)㷁��]��\�\�\�1�71\'\0x�Ӵ7M�k�h\�e\�\�K+\��}rp=�R�M<L$������\��\�\�h��héu�e���\�\�}�\�\�5;˫;6�U�1[\���!�\nς\�\��\��tivV��Σn\�UVY2r�zq\��\�\�*Kϵ\��\'�\�\�i\�)�9\�\�\�s�zSjN\�Ɣ\�A�mS]��\0\�\�\�\�u-ZU�\rͦ�l\�\��\�HQ��#K��c�]�)��e`7��	\'�\�/��-g�\�\�:B��M�e�]�|�6=��+�*\�PӢ���J���\�He\�A ���\�Ww��\���$�ךz+\�\�[�K�T6�\�Z[\�oac\n\�̒O\�SV\���\n(��Q@Q@Q@Q@Q@Q@Q@Q@R;*)g`��$��\0-�\�\�He# ��E-\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0a��S��6QX6\�\��Y����#�\�V=��u�\�-ŵ��E-Z\�c܈L�(l�\��#����\�\�+��+�\�ٻIR0IR�<zUot+\�/�5�ڑ��\�ٰ���r\'9���\�\�Վ\�Uh(�\�?\��\0\�̓\�7\�K\�j�[K-����\�C*��AR�\���֭�?���56�\��3�kn�6dǐrN{r1���OZD.\�\�\�7�]E\�\�%ӆc? �\0OAL\�|7\r��7o��h\"haK��58\�PO\�I��M��\0[�\0�/\�Q��.��Ӷ�\�B��D\�k:�7\�γD�I��,��flvVmΕu��\��;\�Ӯ!��D�\�\�\"3?\����[\����\�\re�Hn\�\��]�tQ��r\����\"�C�C�s��9�\�4��#h\nX�q\�\�4r_��?\�_YQ����_=/�3�f�\�\ZSJ-�9a�!*��F� ��NO�4��\0�\�5s�\�,j�\�&�I-f�q (:I�\rkj�4Z��\���[�fc\�\�\r\�r �*+\�+���㽽��H�FxCH��0 �\�ON�8\�\�]�\0�\�P�E��w\���L\�׵;\�ҭ\�\�!����\�]���P�F\�	$���Q\��x�\Z�1�/z.�����\�o\��;\�\nĴf���\�\��\�7\\\�A8ȥ�\� �\�&\�R{�I�\��3�!.Ic�\0$���\\\��?\�%V��劶���\Z-\�\�v\�5�D�e��P7|g�Y�\�u�i�Y\�$�$(<��\�\���5�\�;9;QA\'.�\����3\�ec�$Q\\C&��\�\�I7$�\�	\�\�\���>�q�\�\�c[\�\�3=\�O!bņ\0V\\}ږ\�ñ\�\\�.uBX\�ajΞX`r?�v3W�ӡ�U�\�U��\"e$mK�:�ǽd�-/�i�gl�QZ\�kn\�^\�����3\���4\�bKk\�)m>\�nc�	d?�}\n��К\�ͷ��5\�\�[��h\0��^I\�>�c^\�l�\�\�\��\�	<\�1�	\�T�\0�GT^!��\�_M��,\���e�l��̫��,��\rJ\��\���AEї*k\�\�\�\��3\�{�\�z>�n�I�^I��\�\�\�H͎O�qY�$ԯ.�;�\���\0���\0^,�\�\�T\�\�\����\�\��\\\Z�\�3\�\� �)am��\��	�\�PoY>�ye$�R5㬓ܻ�+2��\���\�(q��\�֎\"���?��~���-�����j#Y�I\�ūN-\�\�R۫*�ݴ��I\�8\�\�{U=n��c�Ey�I\'�\�9�X#�3�e\�;v\�i\�h\�Isx&������)b�$ �FO�֪\�0j>!�\�o,Z\�\r�[�o*;1\�[\�$\�\�w���\0_�sB\�嵚^Wzl��M�\0AXt���\0]d�W�P\��\\\�]^Os��+�^]Z=Q\�\�\�\�q\�g�aq�z\�<5eso\�\�\�~]\�\�\�\�\�H%T|��p�~uwL\�a\�Eȅ�o�\\=\�\� ᛨ)(�f�\0�W�1_X�&⵵�\�\�\��\�R\�Y���\0��$�\�nr8�h�6���<npF<��RK\�6�\0N���X\�\�<R�\�<ŚR~�\�\'ݸ��h\�\�=R=�\�Rfi�.P\'\�\����\�-��!��\�/�٨b0QNA<u�\08��\�D��\'�\0\0�����_/Dr��7��!֮5Zh�7+h\�	�6\�rO�l\�Ki%\��/\�x$�B.$�7��U\0;�\�lg�5\�\\\�\�\�VW\�\�	m�0\�w�x��\�\�[y�tR�G��\Z%M�/22+�\�\�w~Z��ɘWZ�\�O�m/ X\�D�\�@pH\�SЎƭ6�t5�B\�8U��I\�Q\�;�q�9\�>Q۽6[��6�qwywk\"�{�\��\��0:\�;O��Y\�u;j�71,&Y�w*�\�n\��ǚ�s9]Z3>j<���\��_�~�?B\�\�5(�\�Ւ̐{X\�)\�o}\�\�2\0�{moP�E�5��Iql�]\�\"\�r	X\�#\�]=����\�\�w�׳�Zk�O�[\�\����x\�-��X���Zt�\�\�71A���\��Q�\�~_����\�\�h�?#}1O����v�-䳒\�_\��\"�����x\�Y�\�\�o��m&��fan��jc��?ø3s\�v��Bںje��\��.Fݥ�\�9\�\�i0B��+\�E��$�#�T)\�0\\Ժo�\�\��\�(b\����K^��\��\�\�\�o�������\�<\�M\�ib\�\�=y<\�^1�X��	\�oⵔO\�-�J�U\�\�1毿�be%��k%���G�\�K\'{r�LU�\�\�7VS]\\\�=��#\�W/�`\�یb��ռ�\0RUZQ��}\Z�\�\��0��-[M�\�O\"�\���_���\�y��ps�ߞ���#X�M��\�\�O7/\�2[�@��]�\�^AgTӡ\�\�\�	\�ET�9AB\�0a\�2*\��4\�g]5x��\�\�\�\�/\�\�\�k��+ؠ�\r���ƥ����9$\�Z~��j�_\�[jKf\�hna{td(Fܫ\'?|r1ҭZxj\�\�\�\�\�//M�\�o��J\�9\��\�\�MZ�G��\�\�\�^R�6\�o$`�ےx\��N�%+\��\0[\��5�R�s\�v\��~;��:\�\�ڸ��\�Hb�\�\"����?!/�G<\�֪i�m潩��\�\'X�\ZI\�Hb]�pW\��p��z\�C�-Z]B\�\�L\�$�u�`\0\�I\�B:U�?N�\�Kǉ�cw9��p\��\�O�T\�K��\0�T�1\\\�[��[\�cP\��c6�&�\r��Ҹ�gݾf��p�\�&��\�o\�t�m+챋\�V��.cgڣn�?7�M��b\��\�\�csy]\0.a�P�80�=8\������o��kz��\�h#E�M�W�?\�\�e\��\��.��K[v�\�\�]�,k���\�B\�Ic�{�\�F�}���|�{�zV����\�\��a�E�\�@\�!\0@$�\�z���>��Y�\�\�hB\�m\�\�I\�\�\�iG�\�:��i$`\�e,�N\�M)\'_\�O��T�*j6�\��\"�F�>��\�^\�$o2\n$�Y��z\�.��j\�[\�5E�iƛ%\�S[+*�`�X�>\�9�� \�&��ؙͣ��DH�$�y\n\�I,p3�j\�>\Z�H\��w�S^@m\�wR\�ʸ\0��\�֦q������Q�嫻�Ӗ\��3�7�\�V�i�u���+�:�YJ\�\n\n�$\��}*-+\�z���U��vMc�\�\��]d��`��Ha��ӭoG�[\�qc:��\�m\�\�0H�R$�\�\��\�{K\r9�9\�\�{R\�%�ʭNI�G\'�8\�S\�\����\0�^҄�)\�+�\0�[~[EV��QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0dx�X�J�of�R\�;(V�\�\0*3��\�k6\�\�\"M:\�\�}=\���9�M��g�����GM׺}\�H\�H\�P�D���\�{=\�>�\��\\��ټ�� XV(\��\r%H\�y#�v�������\�I\�R�׾�������%kc}�dl紶�QX\����2���`�\�Z\�\�W~-\�\r倲F��\�Ǚ����\0`�ǯZ���\�\�ɫ\���{�o��H�J��p�\'�Ns�NЯ�\�-�ouU��<(��\�W�;�O\�:J\�m_�\���6*\\����t�\��\�\�\�K�kp\�,�4SFJ�:4ܙ\�|��\�Y�\�\Z����]-������<8Vf�\�\���������5��=\�\Z�����\�\r\�\�qC��Q���6�ƬA��:\�ޥ\�g\�\���\�\�,s��ޝ��\�\��D�jq��km�z_�3n�n\���\"[K�ˬ�\�)%\�\�ל��_�T:V�,m\Z\�E\�گ\�@$� \�����i\�\�Y^YދK�B���U��+�\�;\�\�̺�\�6z�[ݴ+\�Kq,r��܂$�=\�jv�%A����\��~]����~\�o���bn�/\�iV7�F��\�1f�\�@\�\�<%uu�\0\�\�\�@�ܭ\�\��%����3W/�[�\�\�\�\��m�Th�\� 2H����G\0�x�\�z<�~�=�\�s3K\'\�V-�]\�9�О��\�\�o\���֡)P�\\���w��-m�/i\�\�ua�\�k4�\�f\�P�f�\�m:	�l �\�宦��̻K�\\U�\�㝹��\n(��N~\�\�7�\�Ɵme[i��L�A%\�qӕ烑���Y�\Zĺn��\�r�H�\��@,\0+gQ��֥\�:�gY�h\�\�Q&\�c\�\"��\�|�r\�S�\��>^߻��\�s\�wzv��>��;�\�\'�Z���k�קK�DM��:��P�BZ}�eߐ�8\��<~t\�}l7��\�mͺy\�\�[q�G8��Σ�7�S^K`n^\�\�b�r^&x��c�ئx�\�Kȴ\�*\�\�p�{*�|\�\�d�_Ƈ\�g�|�\0\�Q�r��|�\�\�܂\��\�G\�4Ĺ�[\�V��X\�LfFːX\�j�\�\��CĚ\��~ա{f�\�,��d�e\�>gR�\\�G�\�]��J;v�\�\�]Z\�&�`��� �pA#Vd\�{�3R�\�P/}�:<�>H\n6�\�A�^\�\Z��lkF�eR{\��{�ַ\�\�\�/X��\�f\�o�E�\�D\'EY�ԑ	\�C``���Z5\���M���M\�m\�\Zݙ�A��((�\'=j݆�=�\�ƫvo�>R�Pyj��[j�I$�S\�Ut��P�E֦��v�\�\� \�����\�\0#�j����\0_�Z��╬�\�\��K3\�u\�\�K(e� ���.�پTS\�\�\�=�srx��./^=i%��Qkxt���${�\���\'vq\�t~�fmGS��\��劤�U�$�zp	�\0�U�J]/\�\��\�ԗٴ�㝽Nq\�IE�?\�\�W��I�\�\'k/�\���\�g��\�\�A���\�H�?1�ެs\�dd|ߘ\�XԵ��o�\����\��y��J��{\�n~aکj���\�S�\�P��(\�N�ډXav���c�\��Z�\�8լ���\0�\�l��6�\�\�y\�x��=\�\\\�\��o�\0\0��e�����\�[�\�o�ub\�K��\�\�\�\��}�\�\�6���rA<c\�՝KY�Ӭ�m6���[t�.�@NpK��ݫ�\�����e�� �%�P����`q\�dt��\Z=\�\�6��9&��[�\�o�8\0��\�q׮M;J\�\��\\P��%�w\�\���J\�\�Im�\�\�_\�k��B%�Ҹs���rq�it/E�\\\�Z�[	��M�[��F^�x�b;��\�\�Q\�.��\\��t�Ό��\�T)\�y@J��X_\�\�}}ɑv��\�C��I��J�\�~\�\�9<7#�\�\�\�~;��V\�5x`��L�\�\�x�\�\��V��\�\�1�\�:�n5��Y@�\�\�M\�3FA#\�o˒={֞�a���Y\�y�o٢X�\�ۻ\�N+.?]I�\�\�W����1S��G�}\�#��*\�2h�\�nz%\�?\�Mޝ����\�\��&�ie�F�\�\�B o�\�6�\�\�=9�\'��mf;��:\�,&3i�mf\�w篶+7\�:޷\�B��\�f\�a\�<��\�p���\�r��PT��xխ\��o�y��Uۭͦ�\�\�ϙ��X�\�cۮk��\�/o��+cfK�\'�\�\�q�yE\�\�\�J\�Դ;��㾰\�����4�X|\�3�\�\�y\�z�|1q���:�\�>�D�Io\�	(+�c��K\�\�\��V7�,<l\�ן򵯫�\�z��ּ)�]�\�\�Y	��W����\�F\�\��+R	/$�ݳۨ�\�\��d\�<��\'v\�\�CM�\�b�Ѯ��g�f��\Z\�b\0gg�\��\�=�]\��O�[[�\���l�yd(瓓\�\�4��\�߭\�\�N�-�\�\�-v��̽\'X6��Vt�v�ݜ�\�ow �\�\�g�\\Ri\�)�}LY\�\�l<\� 2%ǘ��\�\�\�\�\�\����\�1\�w�)\������|4A�<�\�63�����X\'���O./\"G�EX\�\�FS�\�s\�J�\�/ti)a�+\�w+=t\�O\�\�Ӽuk{}i�\�Ay\'�K\�y�9\�^!ʃ�S��\�F\����\r}l/H�\�3�s��\�f��^i/\�Q˧C�/j<���\�\�\��\��[~TfO3\�]�\0\�\�?�\\9���!\�\��\�\�\�\�\�T�=�\�qou�\'�\�X#B\��6 |�\�PG\�[��m������K��k���\�]\�~f8=�N\��\�5;�R\�\�<r^�yD&|�C0\�\�T�*\�ށp�ku�j?a�ۭ����\"\�i#2y�\�Q�ο\��\0��\�,���잝���\05ٍ�\�\�f��\�i�f\�MJO.(\�\�\�B�;�M�t�^)��\�\�E�\�\�+��fP�oUP�\���F/Co��ǦHd�q��e9<`�\�ՍwG�YK8\�u\�ܬ쌛Ā6�����j_��?\��5(B��\�]u�[ymn�y5\�aЮ�y�\���c-�\��0\�\�\�\������\�\�\��z�ŭ�����k�:\�\0$�\�\�\�֝e�\�i\�76vz�HKj$�\�6\��~e�`q�̗\�\�\�\��\�T����d�m��$+`�\�z\�ҦNi6�c��֛�o��%׿\�˚W�n.n\�\�\��\�fo�3[:O櫀*~PA�\�ޣO��E�\��\�h���YdR#|xr\�pi�Я�m\�|g{[]�B �\�n\�\�\�ߊ�O�\�R\�\���\�\��b�\�dl�g\r\�\�<\�\��\�z�w��)�*r����\��\�̻�}w2\�\�Z\�g\���\�\�\�)\�m]� �#8�:׍m�\�\�d�\�O��\�y����\�4<���犻�cu1\�uU�\�y�\�o-��k1\�mm\�\0�Pz\�\\h7I�\\\�i��v\�솚)��\�X\07/\�8\�T��\���o\�Q����k[O�\�?M\r�i㺶�\�#�\�@\�}A-\"�(���<�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0dZx�F�Ү5H��Y\����ј�\�X#�;\��_\�z\�t��#Ï27�\�u�*\�\�5\�\�\�\�/?\�(�a�M\���ݢ\�\�d�R\�J�g(G#޴tK=V�\�sk���t\�[!g\r2H�����A\�y=(Z�\0^_\�=���\0\�\�\�%��4K�O�:\�\�\���\�G�8\��v�\�ˮ�e\�\�\�\\�\�\�4=\�Bi �c\�!��\�d\�;ʒy<��na4ZK�\�:v�u\�ܦ�%��m\�c*0|\�m\�y\���\�\�<M�賈�\�*�٥h\�����_Ċ\�\�<9�?���U�\�\�κ/!_1>h�\�\�vs��\��4_jwZ\�)m�^\�\\\�\�E���E	(Cy�]w\��.8\��W�\�~��O���\�<W�\�	o}v\�+\�\��\�Iqq�\�S�\�j[�\0h�}��\�\�\�.��s4�6F~E@Kq\��l�k��S\r\��.����\���>J\�9\�ߥaX\�z����%z�1\�\\\��r\�\�fncG]\�N\�fm�py\�i�o\�\���\�Jm����\��\�`�)\�F�\��X��-\��6�vx\�3Kk\�}\Z\�L�\�c�U��$\\4�ѴDs�V�\�pG9�?\�4��\0�B\��\�2��\�\���;�J�\�RU<��:�]��D4=a��\��O}�e��Ԅ�\\*�\�`�\�\�\�:��?\�\Z\��\�ΏG\�,5�/ؚ\��X\�\�Z\�^�ޣ=;V�r��\�m���;\�t���h�\�#�u~w|\�NW\�\�MuG88\�C2!�>�6�4�q*^32\"Ko,k#/P�\���\�\'��qe�#Y\�ׁ�$��t]\�(e/�����9�KĒ\�\Z,����-ͥ��\��MA^Փk�c�\����9�/t?C�\�h0\�i�mT^��\\F�\�%!Ոm\�px�n��m�\0\�	i{[�\0��\�\�x\�\�@\��(b�ƫ\r�Kk\��vo*\\�\���u\�3K��:�\�[���\\P��F[jB�\��k\�ZF��U���uu\��\�\�\Z_\��p\�dq�Fz�(\�|7�G�\�jqY\�\�B\�|V�\�c�Ibt$\�;\�:�޼b���\�\��\0\��\0\��\0꯼Q�\�\�Z_M|�\�}�č+M\�~U@X�\�8��\�\�\��\�p\��\�㈄\���r�\�q���t\�O\�:>��\�a\�˧�ҙPJU�Wc��FO �k[��\�\Z=�\�-M���Iur��\0�$g��[�\��\�e�tfƩ��\�y2\�\�Ĺ\"8\�F?����\�?\�x�H��\�\�u�a$�i�\�$e\n�z�k~\�?6	#Ԯ~���#J\�n|?�/�װ�==�\�\�\�#ch )\�~@��\��\��\0\0�\�\�c�\��U�kw&\�O�\�\�Uh\�=\�nM�o_uȭ�\�t\�\roQ\�4;�CI].���y\�\��g\��\�\�v\�M.��3\�Ś%��\�sݻݣt�\�I�d�QHS�\"�WŚ�{�;\���`��\�\�@�.\�@}X�\�\�\�\��7w�Yǡ��ku}%\�wp\\D�	$H�A\��\�\�@[U\��\�[�Ac�ǨA��Rs: ��\�dH��A늝l�����\����\0�o\�/д��i{x\�9Ep�o$�\r�����A�\�{Tw^7���\�ڎ �F�\'X$a�H[\nv�Hv0k*\��\�i4W�)��\�NX�GPd�ݝ�A\�;s\�~\rg\��\r��h�5($�\�K]B	�9Sr��\n鎼��8\�O��\�}\�]�?����x\�\�|1u�\�s�\Z2ѡ�\�vX\�8�w��H�kL\���\�\��i�\"u���)q }\�\0�9�\�u��M\n�\�x�\�DiO\'\�٘\�Т8\�\�=y\�xTjO\�\���KK}>k{t��I�.\r�\�q\���]����\Z\�_\�_x�\�\�\�e�\�Cq\r\���ȏo*��\�]�+�\�A\\��\�V�ѭ4}KH{_�۬B\�ύ\�b�eB�\�#�@���V���\�S�\��[\�[\�7\�ncM#OclĮ^y�`�U\�=\�>�m�G����mw�-\�\�#yo�˸.\�c\'\�`28��̺f���~\��w-w-��\�<�d;���X�>�z\���\�\������Ž殗�ޥ\�j��b;V`\�H\��J:\�\�~j�\0�\�9i{w�5�\�����\�L�6W7��P\�6\�\�P��)۟|S��\�Z+\��\�$��u�8^W\�:�\��=H\�s�,ӵvծ/4*�I�UK�{ȖH\�&�\�\�H\�I\�CQx�\���x�5�����k$��=?Qk9#u$\�|\�N\��9�\�l\�,�\�\�!���&��C\�\"��O\�7W\�ZL�\�,�J\�K�x&�i�\�z%���ZG\ZgȒ_5�$�Al��O9�*�����k^Xt�\��oɲ�\�\�e\�AE�\�V9\'�\0�\�f�\�\�S_d�wkX�\�\�֓#�9�\n\�g5�4��/\r\��C\�G,S�\��B�+l$�\�1�\�/�5�W\��s=�Y�Zu�M�9H;\�<�$�3�KWo\�m\��W��7|�ˮ\�\�73=�4WR\�1K\�S�e�\r�3\�*��\�{-[W�\��\�yCr ��\�>lV˒�NIb8\0���Ů��\�����c5�\���q\�,ɳk�B�\�\�\�c�=\�4\�5m\'\�\Z�\ZK\�X\�WI:\�\�<abZ�RCd\�sB\�z~:�\�\��\��\�\�>�\�m\'E�E�\�,9P\��\�+F��e�T��$V\�yώ4_jwZ\�)m�^\�\\\�\�E���E	(Cy�]w\��.8\�&Ƒ\�k�\'\�tB�\�\�\�X̑\�O+\�BB��+7D�}�~\�uMn\�%\��@��&v����x�UI�\�gH\�R�\�Φ�\ZdVr\�\�B铑��T\�\��U4\�[\�l|+{�/.t\�9-nl\�dW��\�\�\�$�\�pi\�\��Snޟ\��\0����S\��%{�\�$wW$P)��1	����\�^�t:\��ݽ\�\����]MaT�\�\�\�F\�H\0\�gx\��\�G�\Z����\��\�\�\�.�Q^B���\��5\�\�\�\������D$\0I\�+#K�>��\�5��ĿiT�<��䅙s�\�F\�\�5{TK�4˴��b�h\\@\�2�v�\�W\�ZOiw\�\�:�_f��;��u�W��sv�T�\0\n�ⅿ�\�7�:}3\�Z�{���y�\�\"\����~�Fe\n\��\�Me��\�Zr5��xRK� p wE\�\"�R�\�i<���xsV�\�|#m-�\���E��_1��K\�s\�\�^z\�K\�\�\��Z:G\�`�U�~���3�Hubp��)����\0\��\�)l\��o�K\�;j�h�,��\�%\�$\�ɝ�+�Us�\�\r.�\�M+Bhb\�\��O\"	O#m[j�B��=\�3U�\0�����8s�j\�cf8���?��궺��⹵�?K�Պ\�\�-�5�\"x��?9\0�\�\�9㡩\�_\�\���|�{�\0i\Z}����m��<H\������\'�O�隍��h.�L�\"Hl/d�\�ҹ\�V\Zg�-\n$��޴�E�2I�g�\\+��\�/\��*\�\�\\[\�w�\�F$��x��C8R@�\��Y\���\���ՠ�\�+qG\nPbVrI=ح�\��N�گ��M=&XZ\�\�HČp�J��\�Rݓe%v�[J�~��\�-��\�\�3�H�\�ʋ\"��������/\�\��\rb-\��6��¢	��U�?�(\�9\�8\�s:6�y}\�\�\�L[\'�\�\'\�9��c	\��\�\�\�\�oZ\�\�o�u;�\�\Z\�\�T�\�RdQE*ە�c؍�\�Y^��	M�\��h ����F�\��-�q�\"YN坙�\�Fц\�rpx���K�5m;\�w\Z������\�01�x\�\�\�\�r�\�\�!�d�Һ�Ka�ٕ�x�J\�\�\�JK6|���\��\�B -�\�e\��+[뛗H�� _\"C$��aw��V^�g�\��.\Z�����\�B\�HRd�X��`˼� 瑑\�Suh5�5M\�V�;M5�3C>�g�H�M�ebv6�\�CK��\�M�\�6�e��\���.��OO!f\0�6��\ns�\�j8�k\�\��-o\"9I�/\�av\�`\�\��A\�X\Z��O7O���X\���\��\�Qʤ[$���\�9#8\�$�棹����\�Aan�\�\����\��&\�H%%\�\�r�\�j:�\��~\�\��\0\0\�\�hZ��\�W�3A�\�[\��8%T�[�$:\�\�\�n]wN���\�٢��!�X���,�0l�1T�\�\r��\�I�VG��\�\�<�:�$�e�n>�8\�֗\�����\�\�s\�\�WW\�\�\�|�&ͮ\nW;������w\����\0�?\���\�m^�O�=\�m\rȂ��q�[.Ja9$a�\�޺�\�4\�5m\'\�\Z�\ZK\�X\�WI:\�\�<abZ�RCd\�s]]dXVf��i�\"\�\�\�:+�A�\�Y��;\��\�.����^\�\�\�s���ܑ#`\�\�U 7\�\\�\0�\�u��f!�R�Ҿ\�W\�\�\�\�\�m\�y�eܸ�\�x\�M��Z��p�\�UΎ�]\�\�\\F@);\��\��\�vs\�z����E��,��LcG봩9\0�둚Oi\�ZO�t�>�?.\�\�Ipm�\�#�Z�����e5\�\�\��*^I\�NVWD\�\�̥\�c�sG���0O���rb�	W_���V�s~��-k���	5��DN0ѫ�T\�\��>\�JlQE�QE\0QE\0QE\0QE\0QE\0QE\0QE\0T��[{Y����P\�{Ա\\\�,FE�2e�`B�k��k-I��\�e�2+&��>g�K��\�\�\�k,+�\�\�\��*�6ۭ��\0�F\�\\\�Z�+4Lʫ*\�r�Ñ\�)#��G)�\�V\�>��=\�\�i��Q��}�Gii$b��\�\� ����=��\�*m�GG�i~���v���\rQ�\�}�\�3\"�\�X\'ӯZ�\�»�,cg-�/\�Ҳ��m�i%k�)m�\��u\�I\�m��\\��d\\��_J���7%v�\�\�o�\�|�W��q{.��$\�˻lC<z\�k�-Y��]J\�\�\���\�p��=��\�\�}\�l\'\�\�b,�Ք�=y�%��ib\�m$�D\�^�<�;\��\�Ny+h�\�\�%U��4��;;k!�\�!��0UE�\��PL%�I�C��T��\�\'H-�\��#&\�N=*����o!-\�I#\n]v\�\�P+iV�d\��&�z��|\�?���Ȍ\�4l�Ճ4Lʫ*\�r�Ñ\�+w�k��\�\�x<���w7қd�\�sl\r�\�yP\�:\�g\�ԬT\�.�\0�\�}\�U�Z\Z3\��\��r�a�W�\rFݯE�1iNs��ǭc\�\�ȓ\�\�l\�I!v�d\�\�{\�\�V\�+��\"\�\��0fX�	=ǭD1\Z\�Yv\�e�ܟi+_\�ў�\�\�h!�\���%aGp�!$(=N=*z�\��\����y\�ڄ�s�wIe�;~�\������\�}\�\�ǝ�=�\�\0۞\��\�E\'��vؾ\�K1�j���\�x�#$\�sg\��銡��\�Z ��\�{��n�X��\�.�a\'�M����t/\�\�:�\�A[^��\'};\Z_,�\�%��x錪J\0���\�o��l#������wg8\�QirA,r�4�l�dI�w�\�f��_ؓ\�f��\�cp$e\�I�\r�\�ʬנs;�oCuo;2\�<R2�\��	\\P�v\�#+q	�C���Z\�t�Y\Z���\�\�\��\�6�1\���\�5��\�I�Y��[�g��\�A=A��J��\0Z�\��cwUբ���I;H�c\�7\0{\�:\�X����͜��0]�3�=	��v{)\�G����\�D�\�cܥ3�\�\�J\�����Y\\\�a�ew���\�:�j�t@\�-�\�\�\�\�\�Z\�p�\0v5,G��E�f\�����Aø�\�A��\�פ7�\�ؠe7�\�\� \�\�v�\\�a}cp֏ukex�7�H\�\�\�Q++�)\�\�B早-\�]˲$\�%�\0��\"�\�\�\��|�q�x۟L\�/��x\��V\�U\�rdxv\r\�s�\�\�\�V����ӵ\�.�i�q�\��\0��8\�\�Lg-�ۻ\�[8\�\�x\�D\�8\'���\�\�\��߈�\�$vm�\�\�\�̶��fɣ���9Rrx#�\�{�\�e�\���\0T��\�\�\�/,\�\�{\�=���d�/-��\�W���\'K�mB\'U��(��\�py\\�>����\�h�x\��#m\"\�QK�!X�@=pO�����(��(�n\�m\�m\�\�\�� �a\��px5��\�ip�4�k8I\�R\�%�I���Q@Q@Q@Q@Q@Q@Q@\�koķ�O0Q$��3\�OS�٩���\n(��\nl����r\"�n\n��\�`z�)\�P7G\����\0ٺm�����\�ǻ\�\�\�(��(��(��(��(��(��(��,qʅ%Et=U�E>�\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0�{R\�|\�\��\�r��}��[���P8\0`QErS�\0x��2�\0��\"Z(��\�B�(��(��(�]c�oG��\�=�+j�+I|1����&QEfXQE\0QE�\'>.�qhH���j�+I\�OՑ\�\�� ��+2¢�\�\ZV�\�i�|�\�2q\�\��j(�o��\0 \�KEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP�\�');
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
INSERT INTO `hoja_ruta` VALUES ('D0310','2222eeeeee',22.00,22.00,0),('D0616','333',11.00,1.00,1),('D203','banano mitades',900.00,NULL,0),('Prueba','prueba',1000.00,10.11,0);
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
  PRIMARY KEY (`idmat`,`operacion`,`componente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoja_ruta_componentes`
--

LOCK TABLES `hoja_ruta_componentes` WRITE;
/*!40000 ALTER TABLE `hoja_ruta_componentes` DISABLE KEYS */;
INSERT INTO `hoja_ruta_componentes` VALUES ('123','1','Deshidratacion','MQ',213423.000,'un',150.000),('123','2','fresa','MP',12345.000,'kg',120.000),('123','3','operario','MO',123.000,'kg',12.000),('D0616','1','fresa  fresca','MP',2200.000,'kg',11.110),('D0616','1','jefe de almacén de materia prima','MO',5285.000,'h',0.018),('D0616','2','agua','IN',8.000,'l',0.700),('D0616','2','desinfectante','IN',33.260,'ml',1.000),('D0616','2','desmoldeante','IN',20.000,'ml',0.260),('D0616','2','operario','MO',5285.000,'h',2.000),('D0616','3','horno deshidratador','MQ',2763.000,'kg',1.000),('D0616','4','operario','MO',176.000,'kg',1.000),('D0616','5','operario','MO',1321.000,'kg',1.000),('D0616','6','operario','MO',250.000,'kg',1.000),('D0616','7','empaque bolsas y cajas','IN',50.000,'kg',1.000),('D0616','7','operario','MO',150.000,'kg',1.000),('D203','1','adecuacion','MO',264.000,'kg',1.000),('D203','1','agua','MP',50.000,'l',22.000),('D203','1','Banano','MP',2941.000,'kg',5.880),('D203','2','horno','MQ',2763.000,'kg',1.000),('D203','3','desenbandejado','MO',132.000,'kg',1.000),('D203','4','seleccion','MO',377.000,'kg',1.000),('D203','5','detector de metales','MQ',88.000,'kg',1.000),('pruebas','4','2','MO',111.000,'kg',1.000);
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
INSERT INTO `hoja_ruta_operaciones` VALUES ('D0616','2','Adecuacion',15.800,'TUR',4,1,'ADECUADO'),('D0616','3','Deshidratacion',93.750,'MAQ',1,1,'DESHIDRATADO'),('D0616','4','Desembandejado',30.000,'TUR',2,0,''),('D0616','5','seleccion',4.000,'TUR',5,0,''),('D0616','6',' Molienda',30.000,'TUR',1,0,''),('D0616','7','empaque',50.000,'TUR',3,0,'TERMINADO'),('D203','1','adecuacion',3.400,'TUR',8,0,''),('D203','2','deshidratacion',20.000,'MAQ',1,0,''),('D203','3','desenbadejado',30.000,'TUR',8,0,''),('D203','4','seleccion',14.000,'TUR',8,0,''),('D203','5','detector de metales',60.000,'MAQ',1,0,'');
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
INSERT INTO `materiales` VALUES ('01','Piña','MPP','','www','www','kg',0.000),('02','Banano','MPF','','',NULL,'kg',0.000),('03','Mango','MPF','','',NULL,'kg',0.000),('04','Papaya','MPF','','',NULL,'kg',0.000),('05','Uchuva','MPF','','',NULL,'kg',0.000),('06','Fresa','MPF','','',NULL,'kg',0.000),('07','Pitahaya','MPF','','',NULL,'kg',0.000),('08','Ciruela','MPF','','',NULL,'kg',0.000),('09','Mora','MPF','','',NULL,'kg',0.000),('10','Kiwi','MPF','','',NULL,'kg',0.000),('100','Coco Hojuela Blanco Cuticula 0%','MPP','','',NULL,'kg',0.000),('101','Espinaca Molida','MPP','','',NULL,'kg',0.000),('102','Paprika Molida','MPP','','',NULL,'kg',0.000),('103','Uchuva Deshidratada','MPP','','',NULL,'kg',0.000),('104','Mango Deshidratado','MPP','','',NULL,'kg',0.000),('105','Piña Deshidratada','MPP','','',NULL,'kg',0.000),('106','Linaza Molida','MPP','','',NULL,'kg',0.000),('109','Bolsas 3 Kg','Insu','','',NULL,'kg',0.000),('11','Chontaduro','MPF','','',NULL,'kg',0.000),('110','Bolsas 5 Kg','Insu','','',NULL,'kg',0.000),('111','Bolsas 10 Kg','Insu','','',NULL,'kg',0.000),('112','Carambolo','MPF','','',NULL,'kg',0.000),('113','Bolsas Azules','Insu','','',NULL,'kg',0.000),('114','Manzana Deshidratada','MPP','','',NULL,'kg',0.000),('115','Mora Rodajas Deshidratada','MPP','','',NULL,'kg',0.000),('116','Aceite Desmoldeante','Insu','','',NULL,'kg',0.000),('118','Cilantro Deshidratado En Hojas','MPP','','',NULL,'kg',0.000),('119','Pimenton Rojo Escamas','MPP','','',NULL,'kg',0.000),('12','Borojo','MPF','','',NULL,'kg',0.000),('120','Piel de Uva Granular','MPP','','',NULL,'kg',0.000),('121','Pitahaya Rodajas','MPP','','',NULL,'kg',0.000),('122','Curcuma Polvo','MPP','','',NULL,'kg',0.000),('123','Fresa Deshidratada','MPP','','',NULL,'kg',0.000),('124','Noni En Polvo','MPP','','',NULL,'kg',0.000),('125','Ahuyama en Escamas','MPP','','',NULL,'kg',0.000),('126','Tomate Deshiadratado En Polvo','MPP','','',NULL,'kg',0.000),('127','Limon Granular','MPP','','',NULL,'kg',0.000),('128','Toronja Granular','MPP','','',NULL,'kg',0.000),('129','Banano Deshidratado Trozos','MPP','','',NULL,'kg',0.000),('13','Noni','MPF','','',NULL,'kg',0.000),('130','Cilantro Deshidratado Polvo','MPP','','',NULL,'kg',0.000),('131','Servicio De Maquila','MPP','','',NULL,'kg',0.000),('132','Remolacha Granular','MPP','','',NULL,'kg',0.000),('133','Ciruela En polvo','MPP','','',NULL,'kg',0.000),('134','Cajas pequeñas','Insu','','',NULL,'kg',0.000),('135','Borojo Deshidratado','MPP','','',NULL,'kg',0.000),('136','Naranja Rodajas','MPP','','',NULL,'kg',0.000),('137','Guayaba Rodajas','MPP','','',NULL,'kg',0.000),('138','Cajas medianas','Insu','','',NULL,'kg',0.000),('139','Cajas grandes','Insu','','',NULL,'kg',0.000),('14','Cereza almibar','MPP','','',NULL,'kg',0.000),('140','Cajas de exportación','Insu','','',NULL,'kg',0.000),('141','Cajas de barras dispensadoras','Insu','','',NULL,'kg',0.000),('142','Cajas de barras maestro','Insu','','',NULL,'kg',0.000),('143','Desinfectante','Insu','','',NULL,'kg',0.000),('15','Breva en almibar','MPP','','',NULL,'kg',0.000),('16','Guayaba','MPF','','',NULL,'kg',0.000),('17','Toronja','MPF','','',NULL,'kg',0.000),('18','Limon','MPF','','',NULL,'kg',0.000),('19','Naranja','MPF','','',NULL,'kg',0.000),('20','Agraz','MPF','','',NULL,'kg',0.000),('21','Feijoa','MPF','','',NULL,'kg',0.000),('22','Guanabana','MPF','','',NULL,'kg',0.000),('23','Melon','MPF','','',NULL,'kg',0.000),('24','Maracuya','MPF','','',NULL,'kg',0.000),('25','Arandano','MPP','','',NULL,'kg',0.000),('26','Datiles','MPF','','',NULL,'kg',0.000),('27','Chachafruto','MPF','','',NULL,'kg',0.000),('28','Piel de Uva','MPF','','',NULL,'kg',0.000),('29','Uva Pasa','MPP','','',NULL,'kg',0.000),('30','Lulo','MPF','','',NULL,'kg',0.000),('31','Manzana','MPF','','',NULL,'kg',0.000),('32','Pera','MPF','','',NULL,'kg',0.000),('33','Durazno','MPF','','',NULL,'kg',0.000),('34','Aguacate','MPF','','',NULL,'kg',0.000),('35','Tomate Chonto','MPF','','',NULL,'kg',0.000),('36','Azucar','MPP','','',NULL,'kg',0.000),('37','Coco Hojuelas Blanco Cuticula','MPP','','',NULL,'kg',0.000),('38','Cascara de Piña','MPF','','',NULL,'kg',0.000),('39','Cascara de Mango','MPF','','',NULL,'kg',0.000),('40','Araza','MPF','','',NULL,'kg',0.000),('41','Anon','MPF','','',NULL,'kg',0.000),('42','Coco Hojuela Acaramelado','MPP','','',NULL,'kg',0.000),('43','Curuba','MPF','','',NULL,'kg',0.000),('44','Frambruesa','MPF','','',NULL,'kg',0.000),('45','Granadilla','MPF','','',NULL,'kg',0.000),('46','Mandarina','MPF','','',NULL,'kg',0.000),('47','Mangostan','MPF','','',NULL,'kg',0.000),('48','Papayuela','MPF','','',NULL,'kg',0.000),('49','Zapote','MPF','','',NULL,'kg',0.000),('50','Almendras','MPP','','',NULL,'kg',0.000),('51','Lechuga','MPF','','',NULL,'kg',0.000),('52','Calabacin (Zuchini)','MPF','','',NULL,'kg',0.000),('53','Acelga','MPF','','',NULL,'kg',0.000),('54','Cohombro','MPF','','',NULL,'kg',0.000),('55','Habichuela','MPF','','',NULL,'kg',0.000),('56','Repollitas','MPF','','',NULL,'kg',0.000),('57','Berro','MPF','','',NULL,'kg',0.000),('58','Semilla de amapola','MPP','','',NULL,'kg',0.000),('59','Remolacha','MPF','','',NULL,'kg',0.000),('60','Uva','MPF','','',NULL,'kg',0.000),('61','Champiñones','MPF','','',NULL,'kg',0.000),('62','Pimenton','MPF','','',NULL,'kg',0.000),('63','Ahuyama','MPF','','',NULL,'kg',0.000),('64','Espinaca ','MPF','','',NULL,'kg',0.000),('65','Zanahoria','MPF','','',NULL,'kg',0.000),('66','Berenjena','MPF','','',NULL,'kg',0.000),('67','Guatila','MPF','','',NULL,'kg',0.000),('68','Rabano','MPF','','',NULL,'kg',0.000),('69','Aji','MPF','','',NULL,'kg',0.000),('70','Arverja','MPF','','',NULL,'kg',0.000),('71','Alcachofa','MPF','','',NULL,'kg',0.000),('72','Platano Harton','MPF','','',NULL,'kg',0.000),('73','Puerro','MPF','','',NULL,'kg',0.000),('74','Brocoli','MPF','','',NULL,'kg',0.000),('75','Apio','MPF','','',NULL,'kg',0.000),('76','Coliflor','MPF','','',NULL,'kg',0.000),('77','Esparragos','MPF','','',NULL,'kg',0.000),('78','Pepino','MPF','','',NULL,'kg',0.000),('79','Yacon','MPF','','',NULL,'kg',0.000),('80','Ñame','MPF','','',NULL,'kg',0.000),('81','Repollo','MPF','','',NULL,'kg',0.000),('82','Papa','MPF','','',NULL,'kg',0.000),('83','Albahaca','MPP','','',NULL,'kg',0.000),('84','Laurel','MPP','','',NULL,'kg',0.000),('85','Oregano','MPP','','',NULL,'kg',0.000),('86','Paprika 0%','MPP','','',NULL,'kg',0.000),('87','Ajo','MPP','','',NULL,'kg',0.000),('88','Comino Molido','MPP','','',NULL,'kg',0.000),('89','Cilantro','MPP','','',NULL,'kg',0.000),('90','Perejil','MPP','','',NULL,'kg',0.000),('91','Pimienta Molida (Blanca)','MPP','','',NULL,'kg',0.000),('92','Nuez Moscada','MPP','','',NULL,'kg',0.000),('93','Jengibre','MPP','','',NULL,'kg',0.000),('94','Cebolla','MPP','','',NULL,'kg',0.000),('95','Tomillo','MPP','','',NULL,'kg',0.000),('96','Semillas de Cilantro Molida','MPP','','',NULL,'kg',0.000),('97','Estragon','MPP','','',NULL,'kg',0.000),('98','Canela','MPP','','','','kg',0.000),('99','Curcuma','MPP','','',NULL,'kg',0.000),('D0310','mango trozos','MPP','','','','kg',14188.000),('D0616','fresa trozos','MPP','','','','kg',30867.000),('D203','Banano mitades','MPP','','','','kg',8283.000),('Prueba','Prueba','MPP','','','','kg',30642.000);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (2,'91499686-5','D203',200,'121','2018-05-19 00:00:00',2000000.000,0.000,'2018-05-20 00:00:00','abierta',NULL,NULL),(3,'98473570-2','D0616',100,'66558','2018-05-20 00:00:00',4600000.000,0.000,'2018-05-18 00:00:00','en proceso','2018-05-26 00:00:00',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_costos_indirectos`
--

LOCK TABLES `ordenes_costos_indirectos` WRITE;
/*!40000 ALTER TABLE `ordenes_costos_indirectos` DISABLE KEYS */;
INSERT INTO `ordenes_costos_indirectos` VALUES (1,'energia',150000.000,'2018-05-01','2018-05-31','niguno'),(2,'agua',3000.000,NULL,NULL,'');
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
INSERT INTO `ordenes_estado` VALUES (2,'2018-05-20 16:14:34','abierta'),(2,'2018-05-19 15:25:01','cerrada'),(2,'2018-05-19 15:10:38','en proceso'),(3,'2018-05-27 11:45:15','en proceso');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_produccion`
--

LOCK TABLES `ordenes_produccion` WRITE;
/*!40000 ALTER TABLE `ordenes_produccion` DISABLE KEYS */;
INSERT INTO `ordenes_produccion` VALUES (7,2,'1',20,1,'2018-05-19 11:39:35'),(8,2,'1',20,1,'2018-05-19 11:39:39'),(9,3,'2',20,0,'2018-05-27 11:50:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_registro`
--

LOCK TABLES `ordenes_registro` WRITE;
/*!40000 ALTER TABLE `ordenes_registro` DISABLE KEYS */;
INSERT INTO `ordenes_registro` VALUES (1,2,'1','adecuacion',3.5000000000,924.0000000000,'','2018-05-19 10:55:46'),(2,3,'2','agua',450.0000000000,3600.0000000000,'','2018-05-20 14:00:39'),(3,3,'2','agua',760.0000000000,6080.0000000000,'','2018-05-20 22:00:11'),(4,3,'2','operario',32.0000000000,169120.0000000000,'','2018-05-20 16:26:42');
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
INSERT INTO `registro_turnos` VALUES ('2018-04-21','1','70950653','2018-04-21 06:00:00','2018-04-21 14:00:00'),('2018-05-25','1','29136530','2018-05-20 12:02:00','2018-05-24 00:00:00'),('2018-05-25','1','860712584-0','2018-05-25 12:02:00','2018-05-26 00:00:00'),('2018-05-25','1','91499686-5','2018-05-25 12:02:00','2018-05-26 00:00:00');
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
INSERT INTO `terceros` VALUES ('10092678-3','FRANCISCO HUBERTO VALENCIA GRAJALES',0.00,NULL,'EMPL'),('10102428-3','CARLOS ARTURO BEDOYA RAMIREZ',333.00,'None','PROV'),('10108974-0','HUGO DE JESUS SALADARRIAGA RODRIGUEZ',0.00,NULL,'PROV'),('10283685-5','EDUARDO VELEZ ARBELADEZ',0.00,NULL,'PROV'),('11259559-8','CARLOS ROJAS',0.00,NULL,'PROV'),('12533246-6','LEONARDO PERDOMO SALAS',0.00,NULL,'PROV'),('19220832-6','FABIAN LOZADA',0.00,NULL,'PROV'),('29136530','LUZ MIRELLA MEJIA',0.00,NULL,'PROV'),('42087028','CLAUDIA INES GONZALEZ LOPEZ',0.00,NULL,'PROV'),('42112353-9','GLORIA MILENA LOPEZ BEDOYA',0.00,NULL,'PROV'),('70950653','RAUL VILLEGAS',0.00,NULL,'EMPL'),('75046659-4','HECTOR DIEGO GOMEZ MEJIA',0.00,NULL,'PROV'),('79131530-1','CARLOS JULIO TORRES GARAY',0.00,NULL,'EMPL'),('80096454-3','FREDY ANDRES GUTIERREZ CABUYO(DIEGO BOGOTA)',0.00,NULL,'PROV'),('860026759-4','CARTONES AMERICA SA CAME',0.00,NULL,'PROV'),('860511541-6','COMESTIBLES ALFA LTDA',0.00,NULL,'PROV'),('860712584-0','MATEO MARQUEZ SANCHEZ',0.00,NULL,'PROV'),('900124107-7','CINDY COCO SAS',0.00,NULL,'PROV'),('900124794-7','ALIMENTOS SUQA SAS',0.00,NULL,'PROV'),('900380814-2','DIPSA FOOD ENERGY REPRESENTACIONES SAS',0.00,NULL,'PROV'),('900409034-2','TERRAFERTIL COLOMBIA SAS',0.00,NULL,'PROV'),('900473144-6','CONNPLANTS SAS',0.00,NULL,'PROV'),('900543350-8','FAIR FRUITS SAS',0.00,NULL,'PROV'),('900560551-3','SERO COLOMBIA S.A.S',0.00,NULL,'PROV'),('900687446-4','PACIFICOCO COLOMBIA SAS',0.00,NULL,'PROV'),('900767263-7','FLP PROCESADOS SAS',0.00,NULL,'PROV'),('900830404-8','COMERCIALIZADO DE PRODUCTOS AGRICOLAS DF SAS',0.00,NULL,'PROV'),('91499686-5','AGRO BARBOSA',0.00,NULL,'CLNT'),('98473570-2','ELKIN FERNANDO ORREGO ZULUAGA (INDUBOLSAS)',0.00,NULL,'CLNT');
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
INSERT INTO `users` VALUES ('admonanv','$2b$12$GFx7nQ/hrJ2aabsY2fBwYegyeFdbJVt3GJMHDpi7W5v10IHRVxGhW','Juan David Osorio','contabilidad@narnajaverde.com','','3218527363','','1','R',NULL,NULL,NULL,NULL,'3218527363','',NULL),('ahurtado','$2b$12$9ka/b3u6AhTQhBjQ3RFkKOfa16xmxoWihhlw5eFAvUm2RIZ9A.Zhm','Andres Hurtado Lopez','andres.hurtado.lopez@gmail.com','Calle 12 # 23-16','+57 6 3443804\n+57 313 746 6668','prueba de las notas','1','R','a812b7a0-9961-4f89-b217-dda9a615be00',NULL,NULL,NULL,'+57 6 3443804\n+57 313 746 6668','',NULL),('chenao','$2b$12$tNcgLs.J2W2mZrrctMua/uSGe577G7xKgizqiRqDXIZlcrpUrKqUm','Consuel Henao','','','3226547063','','1','R',NULL,NULL,NULL,NULL,'3226547063','',NULL),('cvalencia','$2b$12$fDTZMOY7Mee/OgZoYSgrzeIzpMig8dgt8a/dmSCqHa3rwPVCs1lji','carlos alberto valencia','','','','','1','R',NULL,NULL,NULL,NULL,'','',''),('ggaviria','$2b$12$h0RWsLZF/X/pOiFEBiFteeQjaeljWGgDfGDxFUZgZcUzkKjX7BnhS','german gaviria ','','','','','1','R','06ed702e-673b-4119-97e1-3ce2db946996',NULL,NULL,NULL,'','','mantenimiento '),('hviscue','$2b$12$KA1tNTMfZHfOfEGMPOsJIupEwXAozj9goKR9T5MN9.rI3GbZqPOGS','hector viscue','ddjasd@hotmail.com','','','','1',NULL,'09b68f34-7d3c-4076-aad8-7a0345bbf03f',NULL,NULL,NULL,NULL,NULL,''),('jcarmona','$2b$12$P7kIWd8T31EwVLc3MKBPceNFdpupqY9CRNlmFviwFMXCUqcqb3ryy','Julian Carmona','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('jgrisales','$2b$12$47ja/TNjSKS9gLKIT4A4MObqOKmFFZPy6RvxXnL7TvrKMMvR0CSGK','jacqueline grisales rodriguez','j.grisales@naranjaverde.com','','','','1','R','a6bab65e-9315-473e-909b-b993343d3bca',NULL,NULL,NULL,'','','mantenimiento'),('jrojas','$2b$12$KGCKfxFxlhxOQl/RWUtCu.2KHdzL2Evl2OpPFeevmVMW0tZYPIDmW','Janeth Rojas','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('lmartinez','$2b$12$y2oIWGvqv/WmGhLbEKneWOPZsjGmmlFjxzJFnTbVcfI70yDuC72Iy','Luisa Fernanda Martinez','produccion@naranjaverde.com','','3218527661','','1','R','fa72a2e2-10b5-4115-b20b-7f77878cb025',NULL,NULL,NULL,'3218527661','',NULL),('mmejia','$2b$12$J7cNC42K8w44bROH5zK1kOiHHT9zX6Onm7spYknSKFCmEoVZcGpIy','Martin Mejia','gerencia@naranjaverde.com','','','','1','R','830100e1-c845-4337-8acf-663ffdf7360f',NULL,NULL,NULL,'','',NULL),('pcastaño','$2b$12$KtpjOgo9b5ECLKmQrjcaeO7/0zVvDn//WXV6LvI1ShZbvWY5mcP8C','Paola Castaño','desarrollo@naranjaverde.com','','','','1','R','4f28cfdf-650a-4a08-aec4-4df36df3feec',NULL,NULL,NULL,'','',NULL),('ttttt',NULL,'ttt','tt','tt','222','22','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cca'),('vmarin','$2b$12$vZFEfijLim/HnIvTA5EYZ.uaZcHnSwwQndJgcxfWpemPQlgrWjJ1S','Viviana Marín','','','3226547063','','1','R','92166341-4b47-45d9-84c0-93f653e327ea',NULL,NULL,NULL,'3226547063','',NULL),('xherera',NULL,'Xiomara Herrera','calidad@naranjaverde.com','','','','1','R',NULL,NULL,NULL,NULL,'','',NULL);
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

-- Dump completed on 2018-05-27 16:27:26
