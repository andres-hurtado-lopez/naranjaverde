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
INSERT INTO `averias` VALUES (2,'F002','2017-08-05 06:28:22','ElÃ©ctrico','AV002','','prueba de una veria. Se le daÃ±o la chumacera derecha al motor y toco cambiarla','ahurtado',NULL,NULL,NULL,NULL),(3,'F002','2017-08-05 17:03:27','ElÃ©ctrico','AV001','','asdf','ahurtado','adfasd','cvalencia','2017-03-03 00:00:00','2017-03-04 00:00:00'),(5,'F002','2017-09-06 15:49:40','','AV002','','regulador ','mmejia','','ggaviria','0000-00-00 00:00:00','2017-03-04 00:00:00');
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
INSERT INTO `documentos_material` VALUES (1,'2017-09-09 08:29:23','10092678-3','06',5921.0000,'','','Canastilla','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',8000.0000,1250000.0000,'','',323,'E','0001',NULL,NULL,NULL,'kg','MPF',39.0000,NULL,NULL,NULL),(2,'2017-09-09 10:26:53','79131530-1','06',430.0000,'852','125','Canastilla','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','pcastaÃ±o','','',2000.0000,2000.0000,'','',125,'E','0001',NULL,NULL,NULL,'kg','MPF',120.0000,NULL,NULL,NULL),(3,'2017-09-09 11:19:20','','',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','',NULL,NULL,NULL,'','',0.0000,'A','A','A'),(4,'2017-09-09 11:19:20','','',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','',NULL,NULL,NULL,'','',0.0000,'A','A','A'),(5,'2017-09-09 11:19:20','','',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'','MPF',0.0000,'A','A','A'),(6,'2017-09-09 11:19:20','','06',0.0000,'','','','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'','MPF',0.0000,'A','A','A'),(7,'2017-09-09 11:24:47','10092678-3','06',0.0000,'','','','C','C','N','A','N','A','A','A','A','','A','A','A','A','A','ahurtado','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'kg','MPF',0.0000,'N','A','N'),(8,'2017-09-09 11:32:16','12533246-6','01',350.0000,'01','547','Canastilla','C','C','C','C','C','C','C','C','C','','A','A','A','A','A','pcastaÃ±o','','',1500.0000,500.0000,'','',125,'E','0001',NULL,NULL,NULL,'kg','MPF',150.0000,'C','C','C'),(9,'2017-09-19 08:18:04','12533246-6','01',3620.4000,'','','Granel','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','pcastaÃ±o','','',6500.0000,0.0000,'Llego muy madura','',0,'E','0001',NULL,NULL,NULL,'kg','MPF',0.0000,'A','A','A'),(10,'2017-09-19 16:32:29','FDF LATÃN AMERICA','118',0.0000,'','Fac# 10785','Guacal','A','A','A','A','A','A','A','A','A','','A','A','A','A','A','pcastaÃ±o','','',1998.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'kg','MPF',0.0000,'A','A','A'),(11,'2017-09-19 16:41:36','Universidad tecnolÃ³g','CÃ¡scara de platano',59.4000,'','','Bulto','A','A','A','A','A','C','C','C','C','','A','A','A','A','A','pcastaÃ±o','','',0.0000,0.0000,'Cliente sin factura y sin datos \n','',0,'E','0003',NULL,NULL,NULL,'kg','MPP',0.0000,'A','A','A'),(12,'2017-09-19 16:41:36','Universidad tecnolÃ³g','CÃ¡scara de platano',59.4000,'','','Bulto','A','A','A','A','A','C','C','C','C','','A','A','A','A','A','pcastaÃ±o','','',0.0000,0.0000,'Cliente sin factura y sin datos \n','',0,'E','0003',NULL,NULL,NULL,'kg','MPP',0.0000,'A','A','A'),(13,'2017-09-19 16:41:36','Universidad tecnolÃ³g','CÃ¡scara de platano',59.4000,'','','Bulto','A','A','A','A','A','C','C','C','C','','A','A','A','A','A','pcastaÃ±o','','',0.0000,0.0000,'Cliente sin factura y sin datos \n','',0,'E','0003',NULL,NULL,NULL,'kg','MPP',0.0000,'A','A','A'),(14,'2017-10-09 11:19:01','10108974-0','01',300.0000,'','','Granel','C','C','C','C','C','C','C','C','C','Pintona','A','A','A','A','A','lmartinez','','',0.0000,0.0000,'','',0,'E','0001',NULL,NULL,NULL,'','MPF',0.0000,'C','C','C');
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
INSERT INTO `equipos` VALUES ('F002','MOTOR AC 240','2018-01-17 12:59:00','fhfhj',0.000,0.000,'X','fghj','prueba','fhj','dfgh',NULL,NULL),('F003','Cubicadora 2000','0000-00-00 00:00:00','None',0.000,0.000,'','None','None','None','None',NULL,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ÿ\Û\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ÿÀ\0\"\Ğ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ök\ëÕ·µšX\ÊH\Ñ`\r\Ğ\ç½K\Ì2\ÄdYc!FX†/Ö±Z)\æ²Ô˜[Ì¦Y\"²aˆúS\à¶y¤¹xm\Ş6·òÂº\ì\ÜŞ¸¯9bªómº\Û\ïÿ\0$a\í%Í§õ©²³DÌª²¡,7(9¢’;˜$r‘\Ï¸ş`Mc\é\ë3\ŞZî¶š1º`g\Ø\Ôv–’F,\ì\î²	›y\ØA\ßÚ­b¦Ú´t\æ—\ë{Wk\Ûú\Ğ\Õ\Z§Ú2)QÅ€R}:õ«\r<+¿2\Æ6r\Ùaòı}+*h–\ßV’V±y¢‘\ß.0À\Z‡QtùV\Úi\Ê(FE\Èõô¨xªƒrWi¾şvû\ì‡\Ï%{š·7‘F\ËI™—v\Ø\×w´ø®`keœ:¤Dp[\å°\ïca8GF`\Ëd^¬ \ë\Í9-¥[K{i%Š&rğ\í\É\äğqŞ’\ÅTç’¶‹ü\ìOµ•ö5n¯Lv\Æ\â\İ\á;Š\È\0õ©\à˜Kl“2†9=*©q¦N[<;•€FM„œzUG]h\ŞB[Ì’F2º\íß V²­8¶÷\Ñ5\ë×¥\Ë\æi\ß\È\ÖKˆdFtš6E\êÁ…š&eU•	a¹@a\Èõ\r»\Ï5\ÓÁjö\Ñ<XG]»›\éM²Iä¹¶\Şh¼¨ep3\ìi,T\î—.ÿ\0ğ\à}\âUšZ\Z3\ê¥\Üñ´r«a²Wğ§\rFİ¯E¢1iNsÀÇ­c\Ù\ÛÈ“\Ø\Æl\äI!vód\Ù\Ã{\î\ïV\î¤+«Á\"\Ú\Üˆ0fX	=Ç­D1\Z\æ—Yv\éeúÜŸi+_\ĞÑò\Ö\Şh!\æ¥¸%aGp­!$(=N=*zÀ\×ş\Íı·¡y\ÚÚ„¾sùwIe³;~ó\Ùş¸«÷\Ú}\Í\ÍÇ£=¾\Õ\0Û\äõ\éE\'¹»vØ·,p’³JˆZ,•vPJú\àöªún /l\ã\Æ Œ“ÍŸ”§¦*†¯\çYh‚\×\Ïy\înDº±c\Ï\Ğc4ºÕ„Ÿ\Ù6°[\Äf\İĞ¼C«¨\ê+Em_Rô]\r	/–Kw’\ÃÊ¼t\ÆU%\0~|\Òi7\ß\Ú6\İy~^üü»³Œu¨´¹ –9D\Z|¶}2$„G»ük3KK¯\ìIô¿³\\Cp±¸2\á	$\àüh\åVk\Ğ9\Ó7¡º·™a)~ğG®([»f•¸„‰\Ô!\Ç\Ì}­sºU¬`\Ñiò\ÚhŠ\Î\î›D‡\ãû\Üóš‚\Æ\Ş\í$Ó¬\Ş\Î\áM­\Ã3\ÈS\ä  \Õ{%}ÿ\0­Iö×±»ª\ê\ÑX„Dx¤¤T1\ï€=ñÖu¬Y\Ú\ŞEf\ÎZy.\ÔÛ„úW;=”\é#À\Ú|\Ïp×¢Qp±\îR™ş÷o¥ix\Ø\ŞYˆ¬®d0Î²»\Ç	`@÷M5N: s–¿\×sjò\ám-e¸»\Z–#\×Ú¢‚ú3c\r\ÕÑ\ØJ \á\Ü`g \É\Ågk\Ò\È\ìlP2›\Éea‚rr;Q®[°¾±¸kGºµˆ2¼H›\È$pv÷¨Œ•ú”\ä\ï¡sKÔ–öÁ®\å\Ùa’\Ü\0\\Õ‘yjaó…\Ì>Q8ß¼mÏ¦k—şÏ¼o@«o*\ì¹2<;\â¹ş\é\ëô«VZZ\\\éÚ„h—Q´øÀ¸ˆGóA\0UJœuw&3–Š\Æ\í\İõ­œr\Éq<qˆ¢iœ\ÈA\Élu\Ådxo\ÄS\ë’;6‰gj\ë\æ[\\Í³d\Ñ\à`\à©9<\Ğg=„zt2\Ím}ªY\È\å\áòM¿—–tó\0½÷\Õ\Îø2C‰\Ï\Ã\í«ÿ\0`\Å¥İ¶¡ª\ÚH”HÌƒp8<®HŸJ\É\Æ\Ò\å4R¼nz-g\Ü\ëšE­\ê\Ø\Ü\ê¶0\Ş>6Á%\Â,‡=0¤\æ´+\Çõ•:n™}§_iƒQ¸\×#œ_}˜´R£\\)C\æô.ns\Æ1R¾$¿­\ÑOH¶z$¾#|So¡Bmf‘\ãw˜‹\ÈÄ\0Å\Ç \ç=©5ÿ\0i\Zı…¡yo··÷“\"yKµö\É\\®3\êk;\Å\Ë-—ˆü=¬­…\ÕÍ½³N“ı’–EŞ€)Ú£$dcÚ¬\'‡ud\Ó\î®a´¼\ÏP•Q¢u\ÎÁ\ÉÁa(è¿® úúE¥Õ½\í´w6“\Åqƒ),NXz‚84]\İ[\Ù[½\Å\İ\ÄVğ \Ë\É+„U\äğ)º}\Ê]\ÙEq3@2#š#¯\ÕO#ñ¬o\ÚZ\Şh¨—Q\ê#9c{<ù#u9VÙƒ¸\ã‡ -K\ßğh\çK›TT±–\Æt¸C>…³€yûŠ¯\á¯\é>$±Š\â\Âöİ¥h„²[‰‘¤„\Î8ª—R\Ô4FB\Ób‰-\æ’\ĞÚµ\Â\í3DyS;gQğm\İå·ƒ“MƒG¼‡X\Ó\ì6mºµh\ã’U\09À`H\ìzPô¿\Ëõ­§NÖ´­Q\äM?S²¼h¾ø·$)õÁ8¬½\'\Æ\Ú«©]XA©\Ùyğ\Î!M\Ìd\Ü \æ0Xs¨5\ÊxVF\ã\Æ:M\ìéª³¥Œ\Étnt±iLvŠÁ\0aq\Ët\ë\Ím\è®tŸ\ëv\×\Z]\é÷‰5µ\ÄV¬ğ\í1\"œ¸\\9\Î)\ÛUıuô\×C¨:‚\Ã$\Æú\ØE¾K¹•v¬™a9\á²@\Ç\\š‹P\×42d‡P\Õ,m%e{„›\è	¯<\Ôá¿‚\×V\ĞÎ“©Iqs®%\ä2\Åj\ïDeòd€A\ÇJ\ĞñrKc¯^j\ZE¦¥.§,Q«À\Úc\\\Ú\İm(ó\0ı\Ù\ä‚w\ê\r%²\Ö\ËõV¿­\ÏCò(¦B\Î\Ğ\Æ\Ò&\Ç*(9\Ú{Œ\Ó\è\Ô(¢ŠQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0P\Ñõ?Z\æ\Ó\î<Õ\Ìr+##£z2°§\ê*ıy\'‰\'‹T\Óüi«\Ø1}2\ål I\×!\'u|9S\Üa•s\í]?‡4ûM\Çz›¦B¶¶/§Apm\ã\á›\äRÀt€3Ji_+ƒ\Ñ\\\í	À\ÍfxoXME·\Ôâ…¡I÷a\äŒ1_\éZM÷OÒ¼WÁé¤¬>]/ü$«~\ßnòwoX7¾ñ/`¸\Æ\ïŒPµvµ\Ïk¢¸]B\Òõøš\ëQ±‚\î{k\è–™w€†6sÓx®o\â…\å´ú±\ÌzEÕ•¢›I\î\ãsspv–CP¸n?‹¢¦ú&4®\Ù\ëSÁ\rÂ…š$›†qN4‰F¡Pt ¯;»Ò¬¼C\ã+hu‹d»Q\áõ”	?…Ìœ°ôoz\Ì)u\á¿M\â)f—A{gûk±b(P\"óˆş½×Œ\ã4ùw\ëÿ\0¯Ğ…f\ï\åú\'ú®k	£ÿ\0gï…¤ûm\äv‹´\ãilò}¸­:óo[xnÿ\0Ağı¦œ\ÚDš\Ü(\ÑÀ3gv\á[~·‹NÕ¼M¥\Ú/•cky‘\'lA¡F`£°\É\'ô\Ò\Ñÿ\0]¿Ì¦\ío\ë¿ùu\ÎüC$x] ~\Ç\'#\é\\µ—†¢ğ×‹4›‹h …oo\æ,ŒAölùdt\Æõ-G9©¾¶`ö=.Šñ.ş¯\è—ö\ë¤Xj7\Z‹¥Õ•´n·h…_\"b[2û£œ`Ö¡&§x\Ú[’\Úf·w5ú³\È_Ú±!w\Ô2/\\ax\Ï&š\Ö\Şğ?\Ì—òÿ\0ƒşG¥K©ZÅªÁ¦;‘u<O2.Ó‚ªTŸø«•\ç^5\Óü7m\ã/Q×¬¬V\Ê\â\Öt–{˜AF”ö$u\Ú÷¬ÿ\0­¼¾#µ[û2\ßAm=>\ÄÚ…´’[o\Éİ®_n\Ìg·LsI=õ\ßüƒ«ş»=¤\Í²¦ç„–Œ\äğ~•=y½ş›º/‚t»\Û\ÅÕ­e½\nòB\Ï•#.A$Ş¤ô®÷L\Ó,t›Ai§Z\Åkn¤°%Ú ¼Uw]„[¢Š)(¢Š\0(¢Š\0­ kµ»)™\Õv+dğ>*z(¢\á`¢Š(\0¨¡·‚•¡†8\Úg\ß!E\0»`œu8\0gÚ¥¢€\n\Äo\nh¯©JKie¹Y|\åó.ex\Õÿ\0¼#,P \â¶\è£\Ì<‚Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( R\ê\İ\îdµI\âkˆ”3\Ä@s‚GP>•5y±¸¼²øq\âEŸ\È\Ô5¹ ¸¹¹AŸ³B\ìª6\ç²Fzú\äÓ\â\â\Â÷^\Òô^÷Pµ]\îC\Érg’\Ş˜.\Ù3‘¸sŒö\È\ÅKß§\è®8û\ÛZ\Øôz+„\Ò5‡½\Öü °\ê4S\éR\É2¬Åƒ¸`°\Ï$Üz\Ô\Ş\n±}I®u{½KT’\â=F\æ5\í’B¤Œª¾X;HÀô¦Õ½b®¯ımsµª6š­µŞ§§\Ä_Ï±òü\ì®\Î20{ñW«\Êõ¸ \Ä^6\ÔZ»\Óg´‚\ŞHL7F%.\"$nN\È=jomYi_C\Õ(®\é\ïu­c\Âöw·W\Öku¦\Ëss­\ÃÀL EÁ*A\ãsqšµ\âÙ’\ÆAƒ\í\Ó\Ü\\³ùNuI-I¹;\æbysŸÂ›Vş¾D§s²¢¼®\rCT¼ğ¦•ks¨]\Ç#x€\ØK,7M\æ´A\ÜmóFp\0\İÁ8«7z¦§¢h¾-µ¶\Ô.¥\Zu\Ü1\Ãsp\Æi ŠEŒ»ym¡˜Œæ—şº˜ú\Ûú\ëşG¢_\İ\Åaeqy9\"x\ÚWÀ\ÉÚ£\'ùQcuõ•½\ä9ò®#YSpÁ\Ú\Ã#?rwz}…Ÿ…u¹,õ›\İDË§JI¸¿k€F\Ãó\0I>\Ø\á¦\Ñõ?[C}5®¥¤´’\ÃspÒªº,d\İ÷~ñ{SKV¿®¿\ä&\ì“şº™\è•J=Z\ÆM^m!.¿†%™\â\ÚxBpq¾õv¸\È\ni_f\ï\îV\Ú\ëM3ùw7n\é\æy¸;C±\0ô)-Z^¿•\Æöoú\Ü\ì\è¯=ñ›\Ü\Ø\ëZ\å\å\äúD¡hl53m-¦2YŒ`&x<œñ€\rwğH“C¨IGP\ÊOpEUpz;¢¹_Ie\ã«\İ<“ı¥$B±»lCv\'ƒŒ\×)>§u?‡­¼\İZ\î(®<M%´“¥\Ó#y>k¡Á\È\\\ĞĞµi[¥úƒ\Óúòoô=NŠ\ãüwrºˆ´\Û{\Ùu;;\ì²\ÜM½·²e£2rN99#un\é\çR¿±=^\Î+(­\ÛHv‘\Ô8U*zôü\è\å¥İ½\ìM-¬\É4j\íd9”\á‡\ÔEO^}ğ\Ş\Æ\Î\Ö\Ê\îh¯nä½†öò1o%üŒ§¶3ln\ÆqsYš>§r-¼3«G®\İ\İêº\â\Åydó\îi\İ\æ(‹¢yx\ê\0\é\ÎsB\Ö\ŞvüC¿•ÿ\0\Õ*®©—¦\İj%„\Ñ4²m;Td\àUy.5q¬$)§Z¶šG\Írnˆqÿ\0<ö`óş\Õy\çŒ\Ü\ê‹\ãT¿\Õ\ï-ŸN·Å¥œW&$x\Ì[·2õ›˜°\ç=1S\'e \Ò\ÖÇ¨Á*\Ïs&vH¡—>„f™wwoe–\êd†2\ëg8˜€£\êI¸O^=Ôšfh·B\í4\ár]5W±@§\n>\è;\Û#¡g\ëLú\ß\Âÿ\0jš•\İÈ˜Khf’;‡ˆÊ™¶	\î	\èy«k];\Ûñ±z+ö¿\ásÔ¨®\ÆW\è\Ú›k¤_\Ì\Ö÷W\ë÷3\ê/¹T©;|ö\ŞS$(\ÏlñŒ\æµ|\ro«\Û. š…\ÌsZ™\Û ¿kÇ‹™ZFU$gg=i-oıvÿ\02‡SEaø\ÜÜ¯„uy,\æ–˜­H\Ş&*À¨\İÁö®KHñ^¡\â\é–d=½³\Í%\ä&&eó\ínŠ[s\'?÷\Í»\Ñ\\\ï,ukû\Ë\ÛK[$ö.#¸@¤lb2#=*d»·{\É,\Öd71¢\Èñó*’@$zÊ¹?\n2i\Ş-ñ–÷÷/\Zf‚;»·•¾d9\Ú\\“Éª¤\é\ã\â^«öBş\Övó şÒš=\Ä\É&G2£— \ÏNh\ê—õ°=;KMV\Ú\ïS¿\Ó\â/\ç\Øù~vW\ç=ø«\Õ\åší¤Ÿ\Û^;\Õ-õûK­>\Ú	¡6÷ˆYa,7 \á\ÇÁ©¯K\Ó\æk‹i\ß¥‰\\\ãÔ€h\é÷~ ôvş¿­Fêš…®“§\Ï}/•k\ï‘ö–\Ú>€jÊ\Êt#\"«jš}¾«§\\X]©k{„(\à\rsş<»š\Ú\"\Õo%°´¼¾K{›˜Ÿc\"mb\0o\á\ÜÁW>ô\ÕQ^nu;\Ë\ÆööZ¥\ÍÕ¶™\ëK¹%ód\ÌE™<\Ã\Ëm8<\äŒâºA†\ßN$\ß\ê³5\Ü\n$i\ï\år29(K|‡«Š?\à~!±¥¤\ê\Ö:\ÄÏ§\Ü	\ãŠW…\Ø)u8a\È*\íq¾º0[k–My-\Äöº•\Äp\Çqp\ÒË°\0Te‰b+›\Ño¦˜xGU:ı\íÆ¡©Ş•¼·7m\å(\Ø\åCª€:gŠ¶ó·\â\'¥ü¯ø“­c&¯6—\0\ß\Ã\Ìñm<!88\Ç_z»\\d4¯‰3@÷÷+mu¦™ü»›·tó<\Ü¡Ø€z•\â3{>£\ãK\ÈõmN\ŞM\Ú)­§HÕ¼¢\ç)¬	\ä\Z>Ê—¯\çb­\ï5\éú“4©/,¬8Ô³1\è\0äš‹O½·\Ôl`½µrö÷$Š•Ü¤dük˜ñ•\ä×²\Ó\ãm·Z\ãEh6öWş³üoi©O©\Úiz-\Õå¼±\éW\ÛEmra\r*4J™\ä\0$`ñ\ÍGo—Ü®Äši?\ë]\ß\Ñ^juI4\İT\Óng\Ô.\Ïö\Â\ØZ³_´R.\äG§\Î\à¹-\Ï\'µ?A›ZŸEñV–uAgsk2\Çm<÷†\àA¾5ly\Ì#$\à‘‘ø£uu\Úÿ\0—ù‡TŸõ¿ùPZ]\Û\Ş\Ä\Ò\ÚÌ“F®Ñ–CN}AW#\à\Ùa–mKF¸:¤W\ë\n4\Ë.¨÷K±·\0\ÑK»+œîœU?†ö6v¶WsE{w%\ì7·‘‹y/\äe8•±˜\Ëcv0sŒóšŸu\Ãü\ÏA¢¼§Á\×#Õ¥Òµa¨E\æK>oMYœ2ó¾1m\å…F^\Ø9\äš\èt»Ö¼S\â	.µ-QV\Æò8\àŠ\É\"W\ÊFÁU ’zæ¿¯»ü\Ä\ßõızUŞ¥igwgi<»\'½vHi;\ÙT±€O8«uR\ïN¶»»²º™I–\Í\ÚHH=	R§ôcI©\ê–\ZLQË¨]\Åm²,H\Ò69\è)¹EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP\É4\İ#Io´ˆ-´\èPFW`ªœ(] cŠ~¦iú\\-ckgÌ–ñ,jO©\0\n\ã|y \éš\'\Ãı^-&\Ò+%”\ÂXD8Ï˜ t\Í]ÓµK\íZ\Õô\ícUk\Û[K¿[©!DxÔ—@fGú\Ñ\çıwŸ×¡\ĞYhZ>Ÿt÷VZU…µ\Ë\çt°Û¢;g®H5n\Ú\Ú\Ş\Õ- Šfg+\Z‰\É<w\'’kƒğÖ¿¬?‰¬m.e\Ô\æ°\Ô-%š&\Ô- ‰²»H)\ås‚\ã=*¿‡µ\Í|\Ã\á\ÍRóW7pj÷rZ\Ëjöñª\Çş³iFPƒ©9\Í;mıu°®¬\ßõ±\é5Ÿs¡h÷W\Ë}s¥X\Íx¸\Û<–\è\Òt\Ãš\á¯u\İ~m>\ë^‡Wû<\ê¢\É,\Ş6R‚q.\Ìn<\Çık^ñ=æ½¬\Ù\è±ß¨\ÓJG[Al\é#”™L®)\Î>@8\É<T§{?\ë§ù¡õkúş´=­­\Ş\æ;–‚&¸J¤¥uSŒ€z€p?*‹Q\Ól5H\Z…•µ\ä \î\ÜD².}pA®SÄ—¾$û6\à\ë¶\İxtø\"¸š)¸à«†\ÊTš\êtk¨¯t«K˜nş\Ù±+-\ÆĞ¾o{\0g\Ó\ì#L‚\Şht\ë8\à‚A,Q¤\n7@\ÜT\éil;¥¼*÷˜ B>o^8\çµ`x\æúş\Î\ÛK‡N¼k9oum^e]•9À`Fxô¬9üG¬\éz^¿k-\Üww¶\ĞZAy,J¿,\Ş^\Õp>]\ç¦À£\ë\Óü\Ğ=-ıwÿ\0&uö\Ñl„\â\ÓG\Ó\í\ÅÂ”›Ê¶Dóõ\r\Èö5f+K\ĞI½¾\ëe1BÊ‹˜—€UOğ\ĞW5¦\\jö\Ş$ºğ\í\æ®÷¾m‡Ú¢»ò#I`m\Û \r¤t##±\ÎjŸ\ÃÈ´ù\ç“Y»š¾»Cl\Ñ\Â›\Îq¸²O=q\ÏLqBş¿ z^W;ª§¥iÚ“D\×ú}¥\ÛBwDg…d(}W#ƒô«•\Â\İ\êzÅ‰¤ş\Ø\Ô/´ı5®‘-\ZX¤µ‘\0YÑ‰\È\çh\éŠ\éK=æ‡¢^\ß%\Íæ—§OxVY­Ñ¤\ãĞ‘+N¸={N½¸ø“¦y\Z\İå§™apSËŠòÀhQ¹A\ês“\Ç«~,\Ô\ï!»·\Òô\Ë\í\\\ê)nf‘l­m\ä\Ê\ç\ä2\á@\È<)óJş\ê~¿¯ùS¨¿\Ó\ìµ+sogow91\Ï\ZÈ¹õÁ¬}k\ÂZv¥a§\ØC­­•\â\\›t¶Ss”\Ú0s×Ÿ¥`Xø‹X\×\í¼-i\â\é\×\Z¥œ—W71Ä®\ß&Ñµ² ’\Ù\äU\Å:\ì¶‰f–\ëP¸\Ö&Ó…\Ìp\Å\ælF~B’©¼„\Ç8ô=)\ìÿ\0®ß˜¯¥ÿ\0­›üC±±³Ó­\Ö\Ú\Æ\ÖX‘„Qø([\ëf¿{™M\Ôq‰Z.\á	 \ÌÊ¸G\×|Q¥ø{S’ú\ã\\A\r•\Õôp«\âVY\Ö&+ò“\Ù\â­øn\Òö\Ë\â©ö§&£)\Ó \"i\"H\Èdœa\0½»Ñ»ş»\\²ş»\Ø\ê\ã\Ò4Èµ\ÔcÓ¬\Òùøk•D§\ê\Ø\ÍQgğ¾›®e›G´\Ö.x\É1Gq.ñ\æ\Ím×ø?D¸oxŠ\æ}^\æs Š\ë$~û¡—‘Œñ´ŸZöş¿­Fö¹\èUCQ\Ñ4RD“Q\Ò\ìo>®-\ÒB¿BÀ\â¸{¿\ëË¥\ê^&R-l¯\Ú\ÜiBx\ÒQşøs\Ô`\ã§¶/e\Õõ?\İiVš\Ì\Úm­µŒSş\æœ—V\ã\å(Z\Ù÷ÿ\0+ƒ\Òÿ\0\×[£¢\éZ¢Fš†™ex‘«[ˆ@ŸLƒŠ—\ìF\Ç\ìd·ûÍŸgòÇ—·\Ón1j5eUœ»\0b0Iõâ¹¯j\ZöŞ‘¡\é\×k`÷\âi\èÆ²2¬`¨­\Æã»¸8\0ñG.\æ\Ì:>—o`\Ú|:mœvO\Ö\éˆ\Îz\å@\Å?N\Ó4ı*cmg	;Š[Ä±©>¸P9®w]¸\Õô›=\'L‹Wio5+ß³›ù\àtKµ›…P·Ë‘Ş±\ï5\Ír\ÑuM\ê†K«Kû(PX#\å\Î\Ê+›€\'œc‘\Åğß—ù‡ü?õ÷‡\"$ˆ\ÑÈª\èÀ†VzPCag\ÂñZ[\ÆğG\ä\Ä\É8øùWÀ\ã^jş!ñN—e¨ıºúG¸şÍ»¸ˆMj‘˜šB#\0d2\Ü\äzqZZV¡\â[?Z\Ú\ê:”÷6—’Z š\Ö8ü\Äy¢E*£\'vW8\éšI\ßo\ë[\Óúùyµ\Ñu\rLÜ›}>\ëQ²!»\å€õ=W®{u§\ßiZN¥q\ßXY]\Ï\Í‘£\ç¨\È\È\äW;\àÈ¦µñ?Š,\æ¹ûSG%»ù\ÍQ\È\å£$\î1ª\îüj•¶™/Ä­c\Ë\×\ïaÅ¼˜H 9Rò\á9Œü£zó\É4ú¥ımp{6v¯§\ÙIö­öv\íöµq˜”ùÀ\0ü|\ÃsS¢,h¨Š`(\0zV^¬š‹jšQ´\Õ ´¶Y[\í0If¹\\pªO ¼Vµ\0Õµ½\å»\Û\İAğH0ñÊ•‡¸<\Z–Š\0§—§C§¶Ÿ…¬v,¥Z\ÙaQ¨+Œ`ÕµUE\n *€\0À–Š\0¦4­9u©.Ÿh/\È\ÚnD+\æ‘\Ó±œ~5\ÍZx [\ë7\×6\Éo+L¿e\ÓR\ŞI‚’MÄ¶<q\Ï5\Ø\ÑB\ÓPz«\ïô­;Rhšÿ\0O´»hN\èŒğ¬…ª\äp~”÷\Ó\ì¤ûVû;vûZ…¸\ÌJ|\à\0~>a9«4PEÆ†³øƒN\Ô\Ú`!\Ó\à’8m–<\0ï¿9\ì£\0c¹æ´¼\rr·&\Í\Â)E”¨ÜªH$\×Ç°©h \n“iz|ğ\ÜC5…¬‘\\¶ù‘\áR²¶\0\Ë9<O ¨­ô-\Ú\Ê[+}*\ÂI¿\ÖAº,oõP0\ZĞ¢€)\éºN›¥F\Ñ\éº}¥’9\Ë-¼+c\î\nHô2-Eµô\ë4¾~\Z\å`Q)ú¶3Wh \n¢i+¨ÿ\0i.—b/óŸ´‹tó\ï¬gõ«P\Û[Á$\Ò\ÃQ\É;•‘\0261–=\Î\0úT´PP]\Ù\ÚŞ¢%İ´7$U•…aÑ†z\ëS\Ñ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@qxGDN¹\Óş\Í3\Û\\•2¬·R\È[i\Êü\ÌÄŒ\Ø\Õ\é4‹	og¼’\Ù^{‹qm)bHx\'i^Ÿ\Ä{w«ÔŒv©oAš\îÁÒ¼+ \éZŠOe­\Ô1^\îY<¨Û¨Uf!A\Ç`:U¨<9¤\Û\Ú\ØZ\Åi¶>c=²ù|·ù¹\Îr~ópr9¬‡­ÆŒ|C8¨j\ä\Ï,‡’©“²1èª¸õ\É\ïUô\ï\ß\İi¼xm„šµ\á‚pª\ØUC•\çƒò¹\ïO]½>ñifúµ\Ü\êºñ¸6zm³^%Ì“\Ãu9’@Œ0\àG¼\à\Ü\×OªøWE\Õo~\Ûuhÿ\0j*¥†y!gQ\Ğ1F‡\×5Š|Mª\ÂW&™s6¦B.pEwo.û´Àù£—pLp¸$cš§\âjVúÆ§g¥\Û\Æ\ÃMÚ¬cs;\\9P\ÅU¢c\à–\Ï=±Rš²)\îÎ§VğŞ—«\Ë—‘\ÜDòÁŠ\îXr¾‡cş9­+K{Hm-!Hm\á@‘ÆƒTt‹ƒycorbxLÑ¬†923‚=ES\Öô•\ÕMi6}’\é.Gİ´0\Ç\ëM\İhJ³W,j\Zm¦£öoµ\Ã\æ}šu¸‹\æ#l‹œ=OŠ‚MK”j+-šHº‘\í\\–\áB	À\à˜\éXw\\øG@\Ğô=5a¸¾E³\çF¸Vfv’\0SÀ<ú\Ò\éZ†»ªÅ¯\éw\é‹}c2À³%¼S«\"±\Êy›³†#†¤övş¶ÿ\0€>ªÿ\0\Öÿ\0ğM\Ã\ÚV„fm>\Ø\ÆócÌ‘\åy]€\è9\'°\Î)–~\Z\ÒluYu;[gŠ\êVg}³\É\å–o¼\Ş^\í™>¸\Íeü<i%ğöX\í\í¥:F ;Æ„3\Ã1b8\é»ñS\á»k\ÓYM-ö¡g=¨¼ºFQn\á+\È@\\8\ïTô•…\Ğ\í«o\è“\êúkYd”\Ê&*÷2˜·ƒ\ŞYm™\Ï=+r¸/x\Ş\ãK\ÖY-\îln\í#ºŠ\Şh\Îrñ\îeS™Á1†³´\éÖ’\İw\Ù\ßc§\×ô-#WX¦\Õ\"?è»™&Y\ŞŒó|\èÀ€q\Ï8\â¢\Ô<1¢\ê†\Şi\à“|yQ\Í\rÌ‘?—ı\Ò\èÀ°ú“\\¯5}gS\Òü[i§­„Zv›l\Ğ\Ü4\ê\í,¬b\Ü\Û0@\\AÉ­	u}by\â\ÑtU°Œ\Ûi‘\\\ÜMx®\à\î*(R9ùI$“ÛŠ›\è\ßõ³ıuKú\éşd\Úß† ¼\Ñô\ËMN\Ónmm3\äof„\Ä1€c’0[\×<óR\è³´ğ¢\èz¤Pİ«\Ìó\È¶\Õvb\ß!\'p\Æp9\ã5\'\Ã?ùt,õû\"U\ïø\Ç\Ã:z\Ş\ßù¥A,j>f=$…Q\î\Äz¹+6…y&:\Û\ÃzM¾™q¦f–\Î\ç>lwI>ş1\ÕØÃ½7EğÎ“¡\Ï,ú}¼‰4È±»\Éq$¤¨\Î\0.\Ç\0dğ*¼Wšõö‹yu\äX\éÒ²nµ\İ!¹\Âõ%ö•\ÇM¬G¹®sáƒq‡­õqı—ö\ë\Û \Ép-_\Í,\Ã$\Ê\ÆC\æs›\n]_õ\Ü4²=ª\Ù\éÖ–S\İ\Ïo\Éo$\ÎÛ‰\ŞÁB\ç“\Ç\n\Íü7VM3U·’+uxuKˆ\ÜÀ+¶A-‡f#$ô\Î*iözg‹¼Wkak\rµºµ©X\â@ª	Œ“À¦—\åşCÿ\03bo\è3j¿\Úri\ênŒ‚cû\Ç\Òc\Î\Â\Ş\äf´“N´S—RX±y4KÉ¸òŠI\ÇV=»\×?\Ä\rM\ïnd±±Y\Ûİ›o³-…Ì’ÊªûYÄª<µ=HSœk ñ‰\î<3+\İjv16Hq\r\Âù¨q\Èh\ß\çû¤ŸjKdÁ\î\Ñ\Ó\Ö~µ¢i\Ú\ä	£l&X\Û|d3#£z«)O\ĞÕ»[ˆ\î\ía¹„±Šd…”©Á‘øÔ´5\Ü\ìc\è\ï¤*KWšÌ¿™¶Y\ä‘\Ãö`\ìÅˆ<Qm\ám\Ö\ÄYCeˆ~Ğ—\'2;3J¬Yœ\ÌA©=+fª\ê\ÖcQ\Ò\ï,Kl0¼[±œnR3ú\Òmî†’z2¾§ éš«»\ß[y¬ö\ïj\Ç{.br/u*9\ëV.4\ëK›‹;‰¢\İ-“·°•*O^x$sT<= ¦‹%ã¤¾g\ÚL_ÃŒl‰cÿ\0\Ùsø\Ö\Í6’Ø•vµ2§ğ\î•q¬¦°ö\ì/\Ğ(óg@ÁznU![ş iº§†´Vş+û»g7Q(A,S\É*v¶\Æ†{Š\ç< |G\'ˆµõ¸Ô¬$·†ıVTû4™#\ÊCˆÉ”„<\ä÷¦\İx¿Y\Ò÷^Š\ÚÀ\èVwmnñ6ÿ\0´:¬[H;G9!q\Èh]-\ë÷ÿ\0Ãõû¿¯¸\ë5\rN\Ôo¬on\íV[›/l\åˆòØŒ€p\ZĞ¤ Ş°\ä\Ön\Å\Ói\"û:i¿k\rƒ¿~ò¸\ÎqŒOÆ‹\Ûúò¿\è\ëıZ›´WŠµ\İF\ÇÂ‚\Ét\Øo5¨d–Wš\'x\Ób†Â¨py÷5 ñ§-„6±ZZ.¹&¦úcnf6\êê¥šN\ÌWh\È\'¦Õ¿­\íù‡KªK\è’#<g ‚Tõ\çÒŸ^\á\ËÛ­2o\Z\İê·–\Ü\Ãsy\Â0€!6¤\î\ÇN3ŸJ¹\á_j:Î¡©ir=«\ÜCl“Ár¶SÛ¡\ÜXa¢\î8#9Ô–¿uÿ\0Šı_õ\Ğ\í(®\á\äº\ëi\×:†¡g=œwwa\Ô[\É\æ\åeaÃ™\Ç÷ªzuMR÷N™lC\Ø_\ÌÉ\Â\äI6v»LG–Ã¦q¼Š¶Kú¸ö¿õ±\è´Q\\d:†\ÃR¼\Óõ4U™od‚\Z¡$‘Yò{—‘Ü)6Ò¹\Øy\Ñy\ŞO˜n\İ\Û7\r\Ø\éœzS\ë\Ìa¼ñ¡\â­?P±:t7óxu\'™.\"vŒ\æL\íP\É\êI­Ë´¾\ÑõH.m,nµ±Mm-\Ño—,#!J¦¬µşµkô[/\ëDÿ\0S²¢¼\ëSñ©®|-\Õu+y ´»n\"™–9\à›(	VBpİœw»¦ª¶*uK›9Ù•Lf\Ú‹Å¹\Û\'ßŠ_\×\Ş+\íóü\rJ+\'ÅšÎ‘\á½CR´H\Ş{XLª²T\É\È™\ïX\Ğø\ÖK[µ\Ó4\Å¾\Û%½Á•bf.˜=7\0¹>†ù}\Æø)n!ñ/Š-\î\ÖÑ®D°I$\Ö\É\"	G\İ]\ß\01M±Ó¬¬>)Ü›;Xm\ÍÆ•\æ\Ë\å ]\îf\å:Ÿzij—ò¸=›ş·±\ÚQ\\^µ§Y[üHğ\İ\ì6°\Çur·Bi•\0y1q\ïŠ\í)t,i\"F\Ò\"¼™Ø¥€-¸\éõ\Äø\Ôj\r\ã\n\r2KX\î\Úöµ\Ê3 X\ÎBO\æ*½Ï\ï-´`&µ„j\ãR}5ü¸\ä–\ê .\Ão;G9={\Ñı~6¿¯\ë\Ğï¨®kÁšõş°/¢¿¶*\ÖÎ¢;…´š\Ú9Õ†rQ¸A“Ú¶uF=#H½Ô¦Vh\í!y™W©\n	Àü¨z+±-tE\Ê+Ğ®|G<Q\ê\Z³iqY\É›ö{x\ä2Ç‘–\Ã{\áEc\éş,ÖV¼¶°\Z>¯p\Å[üøC\ç\Ëfbv¶p2\0\Ïzv\ÖÂ½\Õ\Ñ\İQ^as\ã¿\Âg¸\éMk\Z]N\Å sˆŠ\îß\Ç9•sSñwˆ—Y¹µ°])m\Ö\í\ícóá‘œ·b+À\ë\ÏJekÿ\0]Š¶¶=Šó\íjú\çR_\ëO™µ¹º¶e…–O2)$RKW\0€8ÁSZ?$\Õ\"\Ñ\íM»†\Ü\ët“|l\Ì\ÄÊpU—Q\ÎGU´\Öı\íù™7ü¯ùÿ\0‘\ØQ\\w½m\à\rZF¿²‘Á#<°[\Éòöy„«µ’=©÷úÖ«\á¿	Ë©joi}?\î’\İ-­\äŒnrnùœNxô¯¿õ¸ûu1¥eXšD8%P‘–®pºµa\Õ\åÔ­<øl¬\Ú\\CcqhŒGXÈ˜u\é‚N\Ã”š\ä\Ş<ğôú\Ñ\Óó.Ÿrñ¥¢8ÙŸ,•b\Ä\î\í\È\Ç~([\Ûú\ëşBn\Ëúòÿ\03¿D1\Õö’§i\Î\ê>´\ê\äŒ)¢øş\ØZ\r–ú\Üµ\Ä+÷|\èö‘ ‰RAõÀ®¶‰¨QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE#ªI\èh``x[J¾\Ğ\ä¼\ÓO—&’®e²p\ß<a\É-ŠIÁô8\íU­<\rci}k<Z†¥ök;†¹·²iÁ¶\ì\ã\åİ™¸\İŞ“À¦mF\Ê_]M#Í©’\ÑF\\\ì†\0O–Š½3I\êI4Xø\Ã\íZg‡\ï~Á³ûb\ä\Û\ìó³\å`9\Îvü\ßs§iö\ï =Ÿo\ëúş¬X\Ô<\'¥w\æ^jú¤Ö¾z\Ïö&‘<\ÊÁ€û›ğn§_øVNmF\ÓSÔ´Ë‹€¢\ã\ìr¨Y¶ŒÁ•†q\ÆF\rU¶ñ]\Õ÷‰.ô›=:Ô­¤\â)Œ÷\Â9ñ€K¬[	+\Ï#8ª>#ø‹k£\êw¶QEe)°Pn>Ñ¨Go#7m‰\çzñš•²µgn£j’p1“\Ô\Ò\Ô7Q_Y[\Ş@I†\â5•	Ê°\ÈşuO[²¼¼6d¹x7I,\Û\\®øÀl©\Ç\\’8<qM\İ;2U­tRñ¦œu2•\å\Í\Ä¬°µœñ\Ã4,3ó«9\ß=Aª~\0\Ñu15[­L\Î\'¿¹„¸•%•T\"¨\Ş\È\ä\àğ¼Š‘µ\ÏøsH³¹YuM^v[X\Ô\Í\Ì\Ò\à’YÛ \0I§J4ı{U\Õmu›UÒ¡ƒS°•`1ã±·(m\ÂO/#¿»\ÔR\Úöş¶ÿ\0€7­¯ıoÿ\0½\áÿ\0C 4«i}|ö¬X\Çk3«E\æ,vaA\êORiºW†¡\Òu®­5Am\æ•\æ6M\"˜¹\Ë6\î\êI\Æ\ìd\Õo^\\]ø\Æ\å\ÓÜ˜œ(»¹\Ş\îÁ˜\r\ÒmH\ë·ğ5OÀ\Z·ˆu;i_R´µ0«”3‹²Î»d`\'–\Îz\ãµU­+vz]r·~²¸š}º–§\r¥\ÅĞ»–\Î9\ÉiC\Ï(Xe€$\ÕW1o\âMKR¿¸H\Ñ\æ\Æ\Ú\à\Û\Ëu=Ø‡s©\Ã\ì]¬X™$dŠK}ö\Ô]sÁVZµ\Å\ì\Âÿ\0Q±û|b;\È\ídP—\0|Á•¹\Ç8©µ/	\Ú\Ş\ÜAsõşŸu\ÛÎ´‘CI\è¬Xué‘š\æn5\íKDñ_‹¯\"Ó¾\İaj–\ÒN~Õ±\âA\'b!¸\É\ÆGJ\Öñ-t›\èlmÅŒ“\Én.I½¿KD~\èÀ\îcƒÀR)io\ëú\î>¿×—ü£\Ñ4¸4]&\ÓLµ2-c¡\åˆ§Ö­È‰\"2Hª\è\Ã¬2÷®Q|n—ºv6“§½\íî¬®\ĞÛ™Dj>ùw\ä\0\0\çµQñ®§sm¥\è7º\ÌP\é¾^±	˜%Ç˜Šƒw%¶¯Øªz½{ş¶\ÛN\ÇS§\è:f—\ÔZ}¢ZGuÌ‰U3Œd/\İ^½€©t]6I´\Ó-\ÚG†\Ö%‰\ZBp\0\Ï\áXòx­\à\Ğ.5«.x­ÌŠ–qıõ\Î\â	R\Í\ÌF$ã“•\nøº\ê\ÛûN\ßU\Òı‹_$)r%I£\ÎhÁ`Œwim\ëoò¯±£§ør;Xº\Ô-o¯‘.¤i¥³Ş¦#\0cn\ìñı\ì{R?†\áÿ\0„õ¨/¯­¥” |©öd.\àT‡Q\Ûø\Î\Ô4KO²cûR\Í\î·yŸ\êö„;q~ÿ\0^:t¬Ÿk%¼×µ›{»6¶‚õccö\ÒMºùhpƒ\Êú\ç’9$v§f»~Âºjıÿ\0\á\ÍHü)\r¾¥-å©©\ÙG4\Ş|¶J¾Lœ“†RF{\í#5|h:Wö³\ê\Íc—\í€\'od\0c\å\Îvÿ\0ÀqZUB÷Y\Òôû¨m/u+Kk™ñ\åE,Ê&N\ĞNO<R]û²={E‡[·‚	®n\í\Ö\Òp\Ö\Òùl\ÅO\0\ã\ÔTš\î•·¤\Üi³Oso\ê\Ém&\Éx?….©¬išBFú£id²\ÜL±†>ƒ\'šº¬C)Gz:\Î\åi¬Rm1\ì³ª<&\"¹Œd7÷½ıiº>“¥\ÛiñM<\ÑÛ E’w\ß#Üæ™¬k\Z~‹l·\Z\Ê\Ã¸D,\Ò1èª£%°ª)¬\ê7šU\íİ¦‹<\Z\æ\İo\ÜC\ç\çs.=}\'+&Á-‘»Ep¢\Ö\æÑ£\Önüë‹‹›A,fmZI#™Ûc)¶.\ßw8÷­o‡÷7Zn¢—mpgƒP\'ó®¾Ñ´‚8VÚ¿(\Î\0\ÇVwkú\ì+\ér\êøjµÙµkmGP¶k‡Y.-¢‘|™™@PX$p\08#8ª“øMòY\Z\êıl\æ¸R\é\ë0òKœ\î+Œò@$‚{TI-<O\â]?í—³\Û[µ¹‰n®dœ¦\è\É8.I\ä\Öu÷\Äû[ù\ĞGf\Öv\×?f•›Pn	\rµ™`\ÆYA÷€H–\é/\ëoø{;ıa\ë~\ZƒV¾Šı/¯´û\È\âh<\ëGP\Ï9*Á•\ç¦i5?C¤]Èší½Á[ñ™\çq\\”Á\ã,\0÷­¨&Š\â\ç‚D’)2:«\È ÷Z\á{N¥\àÙ…ß…lôË‹\Ûk.9\Ñî¢•±‚€/\Ş‘ƒòŸÂµ¿\á\Òÿ\0±“M]«Gpn\ÖğKş\'$“&\ì}\ã“\Û\ã®Š/p9˜¼aı›©\Ù]^_\ŞJE–y\æ‘D›\Ô(R¥U@\Æ\Õ\ÇªÖ\á¸ô½N}JMKP¿»š€½\ÛFv¢’@{“Ö´µh\'¹\Ò\ï-\í¥0\ÜK¤r*QŠG#¨x{N\Ô,$¼7×²\\¬¦/(4Œû6Äª\İzeƒ|\æ…ı~BkK\é~‡K\Ô\'¹µ\Ô5o4’J\ÖM\"˜¹\Ë6\î\êI\Æ\ìsL\Ò<)rcªjq\ÙF\Ì\É`eVsWv9\È±]q^\Ö<Ky¯k6÷v6mm\ê\Æ\Çí¤›uò\Ğ\á”7õ\Ï$rH\íB\Ş\ŞC{\\\ík˜\Õü\r£j\Ó\êóÜ‰ü\İR(â••Àòöc8\àğ¹\Î~èª·7–´\ß.\ï¡Z\İY¯¼ğ0mŒ\Â<r¸\ÎsÁ\â»\Íº¸^\ÌÊ‹A´‹W]M\ZU•l…L‚0Ûºc9ü\n\Îÿ\0„.\Æ=?Iµ¶½\Ô-eÒ‘£¶ºŠDóB°\Ã•*AÀşÔº\ïˆoa\Õ$\Ò4(_\İGmö‰\Ù\î	B\à\í9cƒ\ÆNµ\ÊCR¶øQ¡]\Ä\'1¬P½\Äğ\ß&:€\ÈÛ\Ï9#Š½ıy¿ø\"\Ù\Ûú\ÙÀ;K\Ø\Ú\èš4’\Ü][\ŞZw†÷2X\å@¯aVt-!´{v„\êw÷\ëÀSv\è\Å\0\0mUırjk\Ë\á\Í#\í\æ\ß\ÎÌ©\r ±\Æ\çr\Õ\Î*¼$’\Ç\Ãsk:¥œQ„ E•\Ï\ÚDÛˆ	µ¶¯%:Q}\Çm­B\Ò-B\Æ\â\ÊpL7´O»X`ÿ\0:\Å\Ò|¤\é7ú}í¨›Ï±³6hYŞ¤\çsq\Ëg<ñ÷[\Ñ\ïu«Ÿ0\êš<rl½ó‰>Œ6\0?k#@ñª\ê~ \Z4ğ\Ø,\ÏÈe¨­\ØHÊ¾JG¯zú[ÿ\0Áô\×ú\Ûş¨ş‡şÖ ¾¾¶šP‚xbuò§Ù»RzpE&«\á¸uZ\ßTK\ë\ë¸c0—µud{ƒm`\Êx\È\íƒ\ïU4O\êš\ÍÜo£@šlw2Ûµ\Ã\Şşó\äb¤ˆ\Âz\ïW9\âÿ\0\ê\Z™7\ØtÒš\\:œ6\Í|n¶»2ÎŠØŒW9\\\îü([«Wÿ\0‡\ìÿ\0«\Ã¿\áø5©,\ç7w–WVl\Í\rÅ«ªº\îaó)\íZ°§•\nF]\ä(¡w¹\Ë6;Ÿz}súÇˆ.­õ„\Ñô3ûBÿ\0\ÉûD¡\ç\Çd\à\Øc’AÀ\0ô£\È<Éµÿ\0Å­\\\Ù]}¾ö\Æ\æÈ¹†kF@\Ãx\Ã¹Xt•Xø3J:4zhk¥1\Ïö¥»´	\É$É¿û\Ç\'¶1\Æ1Y&½\Öcñ„šúAtd³7…cÏ–:¾Óœ»Z\Ö\Ş(k¯K«%¬óÁ+\Ã4wb(\ãt}¬¸#pq\Í/\ë¸v5t:M6ŠMJöı™·y—l…‡\ÕQÂ­][\Ãwm-µ\Äk$2¡GF\è\ÊF5\ÇCñ9|7«j¢\Êf\Ó%X+{µ–)m\ÚRP0G\Í\é\Æv\Û\Å\Ïj±kšp\Ó\ç\ÓmEãˆ§ó\ÒH\îT\íSœ©\"‡\çıH‘oEğ\Ê\èòF!\Ö5Y­\"R‘\Ù\ÜJ.0v\î v\Ë\Z­a\à:\Ê\î\ÚUº¿–\Ö\ÎC-­Œ³‚9\åF3\ÆN$ñQ\é~*\Ô\'Õ¬¬µ=l#½¶’\æûX•‚¦Ü‡P£i\Ã„\Öf—ñ6\ÇPÔ¬aX¬Å¥ôşDš„op	\Î\Òğ•¤ŒŒO[®ÿ\0\×\ê-,ûxbÉ¼;w¡n>\ËtÒ³¾\å\Ş<\Ç.\Ø8\ÇV8\â¬Y\è–ÖƒS¼\ÇûFC,»ˆùIEO—˜Q\×<\ÖE·Šî¯¼Iw¤\Ù\éÖ¥m\'Lg¾ÏŒ]b\ØI^x9\ÅuU6Mz¯À­Ÿ¡…u\á[+ŸX\è\Ş}\ÔQ\ØyF\Ş\â7h\Ú1…l\ãü1\ÏJ–ÿ\0\Ãğj:öE\í\İ\ä\ëò·\ÚK6õ`\Êù\0‚lqÒ²¼cyk¬øjJ–/m$¦6w`\ÃkÇ°†Lı\á\Í^ñ½w¥\ê\Zfa¦\Ç}w¨6	.<•PŠ\ä\ío_J{«ùş:\n\Övò-&‡\è—:Mõ\å\æ¡\r\Ê:I%\Ë.ò¬0FUTÊªG\áKfÑ®4›ıCPÔ­¦\nº‘wÇ·\î\í(«‚<œŠ·\á­dkº_\ÚÍ³[J’\ÉĞ³1ÈŒU†GQ‘Ö¯\ê\ÇG‚\Öo#\ÎY®\á¶oŸnÁ#\İ\Ğ\ç?Z\çoø\0¿+ÿ\0Á ±ğòÁiui{©\ê\Z­½\Ì~S\Ç|\èÀ. mU\êS“Ut\Ûizµ÷ö§vÖ´ñ\İJ±#c aCº:“Ò¡iEÌ¶\í\ç\Ø\Çisu-Â’\ny.ªT)ä“ƒ‘Ó¾iúWŠ/\'\Ôì¬µ]´\ã¨\Ä\ÒY¸¸\ï\Ú*\àµ°sG^hZê¿­ÿ\0\àƒ]õ·üÅ—{q\â‰õDF‘\Û\Æ\Ö\Ö£n\Â\È\ÇûÍ€1\Øzß®gDñ©¬\İ\È\Öú4	¦\Çs-»\\=\ï\ï>F*HŒ\'¨şõaxS_hµ=kJ³·kıEõ™\Ù\ãó6¬\åF÷l¸\É?‰u²òÿ\0/ó¸=.üÿ\0\Ïü¬z\Éj7—ñ|A\Ñ\í\åIc³)\Ö/*ôì…L‘l\ê:»ü*}sÄš…º43Gşe³7^\ï\É\Â\îÛò¶N~”tL,t\ÔW*\Ş17Vš3i\Zs^^jĞ™\â‚ID+j\âíƒŒ\0\äÖ—…µ©5\İ5î¥´“Eq-¼‘	|À©\Ã`ddzQn‚¹±EfxXB\Òe¿’œ«*G\n`4\ÌTg¦I\×1¢\ßkSø\ßW7štV\×I¥\Âbµ†H\Ø\ï“xO—=\Êzw¡oo\ëk\è¯ıocº¢¹‡\×W7:v¢·f\à\ÜA¨\Ï‰®¾Ñ´‚¶¯\Ê3€1\Å;Dñ©¬\İ\È\Öú4	¦\Çs-»\\=\ï\ï>F*HŒ\'¨şõ¾ÿ\0\ë\ï¦¢¸\ï‰ö·ó Í¬\í®~\Í+6¡\Z\Ük2ÁŒ²ƒ\î	\0+j\ï\Äwò\ëzn‰£­û\ÙûL³]#Fa¸*¬X\ãğ\0\Èæ…ª¸u±\Ò\Ñ\\w‹õoX\ê\Ş‡O´¶1\İ\\‘^è§˜\Ş[“ı\ÙÂŒ¸u#\ïWõ/_\ÙI§XG¤\Çq¬Ş«¿Ù–\ëF©\Ìd)œr£\îòM\0tTW\'\'øn}Li²}²\Ş\ìX\ËfÒ¶b\á1¿\Ç\Ìq\Ğô«7úî¯¥øvÿ\0U\ÔtX\í\0\"\Ã&\èø\ÜÛ¼±‚N1\Î:\ĞlttV=®¸·!›J‚ğ\Ãg\Ë\Ü\à$*\ãÂ“œş›\á³.‘\âMGÃ­<“ZVö\Ì\ÊÅš4f*ñ\äò@a‘Í\Ôu°_Kÿ\0ZUQ@Q@Q@!=\r-\Íx6\ÒûF\çA¹¶sihÅ¬®d…˜‡¸e\è}°j…‚.\ì\î´\ØÆ´¯¥i·mumlmx¤†ùL›¹yş\Z\í(£\Ì·G\'­xNûZÔ¡š\ïU¶û4+<!,\0¸Œ+f\ßÀ\ã\å\É%\ç…\ïSX¼\ÔtZ+?·kˆg³\n]@]\Ëó)S€\ê8\é]E-\Ìj\r¨ªqÀ\Ç\ê( k\ÇV¢kK¤’ö+»;•š\Ş[KFºdlwF¼²H?Z¥ğ\î\×S[\Ôu1.ûû°ñ´¶\ßggUWw–I(29\â»*(Z_ú\íş@õ·õınsş\Ğ/<=ÙMnt\Ô-öxM¾Çs\Ã>\ã»# ¤\Ğtıöq¬’ir\Ï,\âÕ­~ui±f\î@$Ÿ»ø\×CE\0õ\n\å\áğÖ§¦\ß]>®%µ\Ô\íq%¬öbm®\Ç/±·.<\àƒ‚k¨¢·#š¼ğ¯Ú›\Ä\Ç\í»· X\Õg\É\Äe3\×\æ\ë\Õ\ï….~\Ûo¨iz¢Z^%ªZLfµ\Ç2/\İ%w$òz\êh£úş¾ğş¿¯¸\çuO\\Ş2\î\rSìº¾¬©t–\à\Æ\á€\Z<ô8\0\äc­3Qğ\ÍÖ³§\Ø[k\Z…½\Ó\Û^¥Ó•³Ø’ª\äy{g=r~•\Ò\Ñ@¯ü!«ı‹{¢ÿ\0h\Ì4ö‘%±]¹’É”†X“¹C\0@#\Ç#£\ìü),—\×zŞ¥ı£uuhl·G\0#„\ä-\É\'$\ç°\é]=_ –‡\á+û\rSN»½\Ö\Òö-6\Õ\ím£Smm¼»o;ˆ:W-ôû/\ŞjZ²Gg}*Msk%®ö,)\Úû†\ĞB \×CE;\ëqYFğ\Å#«¼HÌ½($T”R\ÉaŠ`±£\ÓrƒŠJ( \nš™c«Zµ®£i\r\Ô’ aŸQ‡Şª\éšZe­Í­½\İ\ãÁ0\ÂGq1˜B1Œ)o›ÄŸlV­šºk¸\\\Îğ\î—ı‰ \Øi~wŸöH3n\İø\Î2qù\Õ\r@¼\Òu‹\ëˆ55m6òw¹kF·ù\ÖF8“wLŒ\ão\ã]W\Ö\ám,s\ë ^[ø\çW²\Õ/_j¶{m\å\Ê\×\Ü6\äCU­<-}¦\ê>›«C=É¸{Yì„¬¥\\$›†9\ê3]M–€õ1/ü/§jzƒ]\ê~}òdµR\Öñ\àv\î“\ß-šŸ[\Ó.\ïm- \Óu\'\Ò\Ì3#–Š Û‘zÇƒ\Ğ\ZÔ¢€¡®\Ù]\ê:MÅ¥ úuÌŠ]\"1ò;¾ŸK5¼\ï¦=²^:\\4&1r\rŒo\ÇL\çœUª(\é`)\èö·6:]µ­\å\ë\ß\\Dd¹u\nd>¤•rŠ(n\à•‚¹\ë}ş\Ë\Ä7š…–¬‘\Ù\ßJ“\\\Ú\Ék½‹\nv¾\á´£¨5\Ğ\ÑG[\Æ\ÜxY¾\ÓbºÃ¦…utn¦±û8.X¶öQ&xB\Ü\ã\äó]\âŠ(\é`\ës\Ö|;wq«WI\ÕO»’\Ü[N$·ó\ã•%~]\ÊCO9\ïL>¼\nk\ÇÚ,B\ä 2CmÏ¨fºZ(\é`\ës´\íqô³>µj\×\Ûòn\r‡\î\Ù?ºc\ßúî¬«?Á…©\é·W™:„\âàµ¤\"\İ q·i2B\à¨=NMvP?‹«\ÜX^\Ø\ë:\Üw¶÷6\í\00\Ùù»†\ŞÀœzTt/\İ\éÚ®yuª[\\E§[=´\Ãb %[h\Ë\äò€w®ºŠ:\ßúşµ_C+Ãš?ö%”ö\ŞŸ\æ\İMq»f\Üy[\É\éœf°/<u/ik­ˆt‰\ïVõ\í^\Ô;+‰„$›†°\Î8É®ÒŠ–}\êš\n\çõ\İ\\k)¬i:§ö}÷“öy|\Èñ\Ë;€+•9œ{\×AE\0a6…sq©èšæ ’\Üi¢`\å \Ø&2.8\Ü~5›q\àŸ7J6‹¨™uG\Ôâ‘­Ã¢»30VB~`7\Ôv<W_E\Ö÷ü\Ã\Ëúşµ8\Æğ=\ÄúN·kwª\Ä\×\Z´\ÑJò\Ãi\å¤{6€o=Bz÷«úÇ†à¼¼Õ¯®¤–K{\Í0YIoy|\ìJœòN\ì\Õ\ÒQC\Õ[ú\Úß-?¯;m\á{Mbÿ\0\Åv3\ŞK{saac,mŞ˜\ÖG.P\Ã¹\Âò@z\è|?\á‹ıH- \Õ\â—I·\'Ê·–\È•y\Âù¡º÷s\ÅuS¿õøŠ\Ç\'­xNûZÔ¡š\ïU¶û4+<!,\0¸Œ+f\ßÀ\ã\å\É\ÖQE%¢°ú\Ü\ÇñFˆúå•¼p\İı’\æ\Ö\æ;˜&òüÀ®§Œ®FG$c\"¢m\n\æ\ãS\Ñ5\ÍA%¸\ÓDÁ\ÊA°Ld\\p7¸ükvŠ€exwGşÅ¶º‡\Ïó¾\Ñw5\Övm\Û\æ9m½Nqœf“\Å:/ü$\ZÎš.Z\Õ\å\Ú\É:®\ã+Gq\ëZ\ÔP\ÕÕh\îr_ô\Ë[T	\Ù\êIgöp1\å\0»Xƒ­…=:ŒóšŸIğ½\ä\Z•î«¬Gû:&\Í¸‹f\àg ÍŒğ:ñ]E_úş½B\ß\×õ\èexsGşÄ²\Û\ÏóüÛ©®7lÛ1\Ëc=3Œ\Ö\Zxm\î®5=C\ìú«\ßIw\Ò\Ã\ÑĞº\îùÓQ\Ï#\Ø\ÑB\Óo\ëú°y_Ö¦ˆ´+R\ïM¾±\Ô\ÆúÁœ\Ç#Á\ç#+®\ÖwnôôĞŸş¬\ËxO\ìñd\È\"\ÆN\í\Åó>Ÿ­mQGõúõú{©hO\á½7\Ãÿ\0c½¿û~›Û¥Å¶˜÷I\"67NFHõµğ\â\Æú\Ç\ÃgûI.n.§¸a\"l<…*	\ÚH\ç\ã8®¢Š/¸­±›\â--wI–\ÂYd‡qWIc\Æ\è\İX2°Ï¡³ô/\êZ\İÖ­©\ê\Ñ\ß\Ü\Ïo¸ò\í|€ª¬\Ç\'\ælœ±ô®ŠŠƒz\èsú>y¤\ë\×jj\Úm\ä\ïrÖoó¬Œq&\î™\Æ\ßÆ­øsGşÄ²\Û\ÏóüÛ©®7lÛ1\Ëc=3ŒÖ­\Ã\×ó9kO_iº„Ï¦\ê\ĞÅ§Orn\Ö{!+)c—	&\á€NzƒŒÔ—~\Ô\"\Önõ=Y[½\nnaš\ÔO²¡‡Ì¥N0$t®–Š\0\Â\×ô+Z\ßNxum¨ió	\ã¸0Fm¥[)‘Á{ñPj>\Ô.\ÛM¾XHu›%tûPµ9Uñ¹L{ºp¸ù²1]%\Ê\Â¿\Ø\r§6 \ïs5ò_\Ü]<C2\È$W?( \0v€9\àz\Öö³qom¦\Î÷V÷2\ìx ¦vŒmPI\ëWh¤õV£¹\È|5\Ğg\ÑtYd¼ó¾\Óu&@Ÿdp¨	6;„>\äÕ¿\Ú^]kzˆ5fµi\Ñmmm\ß\Ò$\îlt,Äœv\0WIEUõ¸­¥‚Š(¤0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢¨êº½‘r_LÑ¬ŒU6\Æ\ÎI\0“Â‚zjo\éVw‘^§\Ù\í€2»«&\ĞFA\Ã\0H=ˆ\ëÚ§š;\\\ÑQ¨\ãÌ¢\í\èj\ÑY\Ö\Zæ›¨G;\ÛÜŒ[Ò‰£d\ÎH`ı+.\×\Äğj>\"³´°˜\Éjö\Ò\Ë!0ºä‚»J–#“\Ó49\ÇMJXzş\ë\Ós¥¢±t\reµ[­I7G\å\ÛÊ«\Zˆ¥@¥só‡Ÿ¥f_x\éüA&—a²!\n®÷\Æ\âM\ÎXŒ\r ^>ñ\àç”œÖeGQ\É\Æ\Û+³­¢±d\ÖXxš\ÛJVŒ#D\å\Ã\Ã*³0\0„`ó\ÍY\Ôõ½;Jt\îr²:–‘´´ub¹\âŸ2µ\Èö.’ZµsFŠÍ»×´»K[k™n\Ô\Ås\ÌZ´†N3òª‚O\ÕOÃºØ½Ğ®5K¹TA\ÓüûH4vÁ\Ç_º(\çW°ı…NN{i{|õÿ\0#zŠ‚\Æò\ßP³†\î\ÖA$(tp\Èújz£&švaEP ¢³\'×´\Û{õ±ši#™œF\Â\áƒ~6\äıj;\ßi7’Z\\İ˜\å‹o˜|§)î›œ\r«ŸsS\Íæª…W´_}º\ZôV^¥\â/K¸X.\îe1ù¸H^L&q¸•\Ü\Õ\Ñwn\ÖlY‘­¼¿0H§*W\Î}1O™k©.œ\ÒM§g±=¢\ëF\ê\ÃN’ÿ\0d7:€y!‰U±°|À\Ï;pNq\ßr\ãV°¶k•\å#û,k,Å²+gi\ÏNv(\æ]J•©r\Ûú½¿=´U\r/Y°\Õ|Ág9v‹\ÑÑ£u\ÏBU€8>¸«\Ç88\ëE\ïª\"Q”]¤¬Å¢±4CP¸\ÔuKA­]\ì0¯lƒ.\îAfşt¶\Z\Ë^xŠóOVŒC!•ZR]Ûˆc–JúšJKO3IPšo\É\'òvÿ\03jŠÌ½\×ô\Û³i4\Ò\ÔdŠ	%\ØM\ÛT\íüj¶»\â84}B\Â\ÖH¦´¹\Éµv±\ÈÚ§\'# \ç\Ğ\ç\Ô#‡«&’‹\×SrŠ®—½—\Û2\Ë\Â\äÈ…\Ô0~5‹ˆg\Ã\ÖZ…Í®û»÷om·PO/$ıhrHQ£9lº\Ûúûµ:*+6\ßP¹Š\Ê\â\ëWµŠÁ ‹,şj\í\ÆI\Î\ĞJ]?[°\ÔV·’P‘.÷i`’%\ë—P\ãµ>d\'Jj\î\Ú.«U÷­\r\Z+3M\×ô½N\ãÈ´¹/.\İ\ê\Z7M\ëı\å,\á\î3D:ö›6 ,\Ò-\É,ª²B\è¯P¬Àü	£™wF¢m8½<:+OZÿ\0o]i\r\Èªa\Ö\Öf\ÜÄ° \áx7C¼U\İC\Ä:V›pmî®¶H 38Œ…Ê‚}qIN-^\å<=T\Ôy]÷\ØÔ¢ÀAGz\ÎÕµ\í3G’4¿¸13©qˆİ° €I*H\äú\Óm-\Ì\á	Mò\Å]šTVlZ\æŸ6œ÷ñK#Û£\ìm°¹ul\ã1»<úQ»¦M§\Ï~—j- $JÎ¬†2;2<1ŞeÜ¯cSù_mºö4¨ª:ÅôSK’ªB7Hf\âÀëŸœ84\Í7]\Óõ7+i$Ï„\Ş­\äEeõ\Ê~s.\à\éTW¼^›\èiQXº²Ú­Ö¤›£ò\í\åUDR\Ç R¹ùÃ\ÏÒ¬sN]>[ós‹hd1;ll‡\r´®\Üg;¸\éB’j\ã•\Z‘—-µ\Óñ\ØÑ¢²õ\éZuÁ‚\ê\ëdŠ8³Á\è\\€B®+LÀAGzOb%	E&Õ“Š¥©\ê\Ö:RF×“l2¶\Ø\ÕQ\Üû*‚O\åQ¶¹¦.”5Cv†ÈŠ	\É\'À\Îx\Æ3š9—r•)´š‹³ò4h¬Øµ\İ:K	\ïŒ\Ï´\ëx^,~?…g\é>\"‹R\×/\âŠoô{X\äÌ‘4EX—\ÜN\à0.ut®R\Ã\ÔjR¶\Ûş\ætTVf›¯\ézÇ‘ir^]»\Ô4n›\×û\ÊX\r\Ã\Üf›o\â2\æ÷\ìpM,’‡1’¶ò3‘¿n\ŞÇ½>e\ÜNEt\âôò5h¬³¯\é¿o6+4:\È#o.	b\ávƒõ5©Bi\ìD¡(|JÁEg\êzÖŸ¥<iw9Y%\ÉH\Ò6‘\Ø¤*‚q\ïŠmÎ»§Z\Ú\Û\Ü\Í3ª\\ÿ\0©Q´\Æx@7~”¹—r•\Z\ÍEë¶†•Ÿ.µ§Ã¦¦¡,Ì–\Îv©hœ36q€˜İœö\Æjm>ş\ßQ€\Íld(ió\"x\È?F\0÷§u{	Óš\\\Í;¨¢ŠdQ@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@\Ú\æŸ5ö¡¤²!0\Ã,†fUhs\Ï^H¬K¿]¢^Áf¢Š+/³y\Î?|a$•lt\Ï\ã\×Y{}ga\Z\Éyw²1Ú­4>€ô–ú…•\Ô2Moyo4Q\ã‘YT¹ ñY8E·\Üë§ˆ««-6üns7:>¥®Íª\\\Ü\Ûf›<\ÙEÈ®\ÌI-¹¶’1\Î:\ç­M§Cª\Ü\ëú}\Õ\æ”l¢³´’o9Y˜¦6\à\ç)\êt6w\Öwñl\îà¹Œ†@\àLŠ\ÌOZ\Ük\ÖúuÍ­\Ìo²JñJ\ÆT¨\0\àñ÷_J9bš\×ú\×ü\ÙjµY§“ï¦–}{.·\"¶ƒP±ñF¡2Ø´öw\æ&ó\ÖT-«´†Rrzv¬\ÚY\\G\âFõ\ãÅ¼\Ö\Ğ\">G,¥ò1\×ø…;E\Öb\Õ\æ½X<††\Ş@‰,7)(œ\á~\ï\Ğ\Ön¡\âø\"\Ö[K²ûò\Æ˜\Ó_$#q$l^	f\ã‘\Æ2(¼Uı–´\å((\ëdŸ¢µºÛ¢,ø‚\Úøj\ÚV§efo¯š²B²*6@ pG­gkZMó\ëŸÚ‰gyqö\É\Åk~mä‰”“\É¡‡\Í\ë\Æ=\ëiµ¨¿·\â\Òcû<Ñ³\ÊE\Êo‰†S\Ş99«—º…–ª×·–ö\Ê\ç\nf•P\í“CŒe­ÿ\0­…\nµiò¥z¦\ï\Ñ÷ô9Ó¤\Ü\ér\è÷ºnš\ÒGk½™œyˆ«eY	`óŞ­ø~\Öş\Ë\Ã\×B[%’Kq2[<ŠA\Ü\ìÊ¥†Gq[Wövv\â\â\ê\î 8Ä’\ÈNzrxª:°º™5ô†(\âI¥@\ê\ß.\Äbg\è3O–*M_£ı*µgN\î:]k®»»o\æüËšQ¸m:\Ø\İ[%¬şX\ßl\n\Æ}Uªd3Eq\nM‰,N7+£V ´ú\Ğä“»aEP#„\Õ4rò\îdš\Şö\áòK\Ëx«n°¬ŠÀ·@\İ<óš.Î¡6µ\â»7\í_kH¢24¨‰1c,	\É\ç€zW`uM8^ı„\ß\Úı³şxy\Ë\æzı\Ü\æ¢k\í\ÓPxZ\ê\Â\é\Ê\îC\",²ar::V>\Î6µ\ÏF8ª›8t\Ó~\é\ß.š\Ã\İ+\ÅP[\ÚX¾£$Z<q²¢tr2w\ÇZ’\ê\Æ}7Á\Úw‡™Á»¾‘mX§EV%¤Ç°]\Ãò®ò÷H°¼Y/.¬m®\äMŠ\ÓHˆ\ì¹\è	\äŒÕ©b·v\æH\âf„IA(\äƒ\Û\"«–\é\İÿ\0W¹/ı\Ö\ã\Ùú´´ü_CÅºE\İõ®Ÿš¡^¶<¸ l\ãÚ²-ü-©G¦j0,w}]\Æ%†lò9\î+§Ñµˆõ+K™-š\ïsAH:p@\ãª\à\ã¶jó\\Û«È<A\âP\î¥\ÆQNpO \àó\ìi8E¾n\âXš\ÔW²¶ß£ÿ\03J¶¿ºñ\Ú\Åå‘±_²­²B\Ò+»üÅ‹¤€;}k ª!ô½v\ÊH\ÖKMBÑ\×\n\Ë*9Á\ÆEAk\á\Í\Êt¸µ\Òl¢>Q\Ò%R\×j\éYlcRJo\ßÑ­-oów)\ÚÁ¨Xø£Q”X4öw\æ&¤¨[Wi¤\äô\ì\r-ô\Z…¯ŠcÔ­¬Zò	m³\ì•\ÆC\î\É\ÜFFnx«:&­sy¨Y\İ\Ù\Çm5“\"·—9•[r\î•_\åN²Ö¢½Ö®´ø\r¼‰oc,w(\í»$(9\\zš•m55”ª)6â´ŠO\Ò\Ê\İ}62<Ae©JkO»Šõ•B\İ\Ås\Z\Å&lly‘Â“†¯ø†\Öù\ßI½µ¶R\Ù\\y’B°(\Êv– p[<šÑ¼\Õt\ëR+\ÍB\Ò\ŞG\åRY•}5SWñ›¤^ZZ\Ş]CÜ±<ª¾Z\àÍ“À$c>´šŠ[õıB5*\É\Å(^\É÷\ÕZÏ¯n\Ût)x¢\â{­\ÚÀ\Âö\×:¬«lc,‘O/\È\ã„\r\ÓÖ¬ø‡N¹–>}68\Ş}:u–8Y¶‰iR¹\ìpx>Õ¤¦\Ê\í!¾So: -\ã\ÉV÷•›ˆ\à::½\Ì2B—\rˆbO\ä\Ë€–8\íšm-nÿ\0¥·\â(Jv$voO7Ó¾È‡Uş\Ò\Ö|5ª\Û*K[‰`h\âI£b\äU$\Ä\Õ\í[N“QğõÎœ®#’{cc\Ğ¸\çÚ¤°Ô¾\Õ³Ogu`\"û\Â\è*ñ\ë\Äcñ©,µM?Pg[+û[–\ïˆfW+õÁ\â‡»§\ÕŸù\çR6´m\Êï¦½½{÷‡´™Rú	¯4»ø.-¢eI¦\ÔM\Ä`¥\ÉÁ÷¥P±\Ò5·\Ôô©o\íï¤\Úé¥¸¹’õ^\\e#\İòõ\Â+±´Ô¬/d’;K\Ûk‰#û\ëª\å~ ) \Õ4ë›§µ‚ş\Ö[”\Îø’eg\\u\È\"H¶\Í^&­\å\îôó\Ñk\ç\ç\èd\Ï£c\â{‹\ë}9¯-®\íâˆ²JŠbdf\ÎC‘†í••©h7k¬jr5…õı¥ûÿ\0F\Ô~P¥]7(#¼ğq[‹\âû^\ãM{ûX\å„/\Ìó Ä‘°s÷†9\â´.µ+9£†\êö\Ú	eû‰,ª¬\ß@O5<±’ß¸\ÕZÔ¤½\İZ]õZ[g\é·Ì–\Ú·¶ŠÔ¬q E\ç\0kZ\ÑV\Ö\0™\\YIa-¼’#\0Á™Ğ€3ì§µ]½ğö‹p\×7z]œó¾7I$A˜\à`sNY4}(­¶Z|nI\"\ëc\ßŒ\Õ\És|F4\ç\Èù©¶\å\éÿ\0ô0n´½f85²$ª&\Ôü\æHgX\ä–\rŠV\Ï\Êr;x4\İ/G¸N\×\ïI¹š;É•£µ¸ºW•\Ô\"ƒ™7r	ö\Ójiÿ\0bûwÛ­~\Çÿ\0=ü\åòú\ã\ïgiğ_Z\\Z›¨n –\ØL© dÀ\ë\È\â¥S~†¿Yª£n^¾}-\ç\å\ê`\èvú²G¨Eymrö&  ¶½9%cƒ¹K©?)\à|Ä´\Ï\r\Új–šˆŒ[]\Úi+	E\İ\ÂLUò6ˆÊ’B	ôÀ­ûJ\ÃPWk+\Ûk Ÿ|\Ã*¾ß®\ÛM[M½•\â´\Ô-.$Œe\Ò)•Êp\ÔRiÜ™V¨ùÓ†û\èôÿ\0ƒ\æÌ»h5j-‹Og~bo=e@\"Ú»He\'\'§`j”\Úóx”¢¢ÿ\0bKpº„‡pÏœ£1\×…|û\Z\Ø\Ñu˜µy¯V!¡·\"K\r\ÊJ$g8_»ô5t\ßÙ‹Vº7vÿ\0gBU¥ó\Å \à‚zu\ã\ëBŒ]Ÿ\ÌnµZrk—[%øió9KA»]cS‘¬/¯\í/\Ø?ú6 `ò…*\é¹AuçƒŠ\ìm¡K{h J\Ç\ZPNp\0Àæ¢ºÔ¬-&›\Ûh%—\î$’ª³ı<\Õk\ßh·÷\rsw¥\Ù\Ï;\ãt’D4F<¿	+:ª*­\Ò[yô\ê\í÷5»[\èõ›\rZ\Î\Ó\í¾DRC$EF\Ã\í;”¶ğ\àò85›ı‡¨	Ñ Qusª%\ëÀ®‰|\Õb3À8\'óŠ\è”iz\rˆ\\\ÚiöŠx\ÉXõÀ©\Şò\Õ-~\Ö÷0­¶7y\ÅÀLz\î\éG\"\Şÿ\0\Öÿ\0¡Q\ÄN)(­\Ñ\Û{_Mü\Ê(\Ó\î5-%¢µ\Ó\Ç,s\"9Â¹G\r´Ÿ|b±d\Òõ=j}nK‹\'Ó…\å‚Z\Ç\æJóäŸ>a]-®§§\ŞA$ö·Ö³\Ãß’)U•{òAÀª:n½§­]Y\ÚMoqm\r¼r‰¡8,\ÌÀŒ8\Ú?:RŒd\ì\Şÿ\0\äÿ\0AÒ©Vœ\ZQ\Û[ö\Õ~©¾Ò¥Kûy¯t»øg¶‚\Í6¢n#\É\0Š\\õ¥iø^\Ê\â\ÃM–˜ü¹\Z\êy\0\Ü\Ê\Ò3)\ãØŠ½i©X^\É$v—¶\×G÷\Ö)U\Êı@<SW\Ó\ZğY®£fn‰Ç’\']ùôÛœ\Õ$“N\äU«V¥\Ó]»\ék÷¿s¸²\Õ\"Öšm+Oº³ó.CO!¹­¦L\Ìc$°b=\09\êk ½ŸPú\Æ;[4š\ÖFas+H\Ä1Á¾M:MWMŠñl¤\Ô-\éˆ™C’z|¹\Í\\¢1Ih\ÅR¬¥g8ôó\×\Ï~{P¶\Ô,¼FukK·\Å5²Û¼i\"¤‘•bAˆò3\ØRk°Oke3h÷r…˜k¨\ãš\Ø\ã6\àGQ’>µ=ßˆm¬|Eı›{=­´&\ÔL²M(B\Ì\\®Ñ“‚§\×5\ë\r%»5ó\äT@dU$nOAœ“\ØT\Ú<»\éÿ\0ü\ÍSª¥C[i¾ªŞ½¿\à™g¨\Üøjµko\î\ÖmÁb#–0	\Ø\ÛÁU\Ş3‚;\Õ\ïGª\Çk:\ê~n<\ßôq;£\Ê#À\á\Ù8\'9ü:Õ£­i\"\Õn§d-¶,¾zlfô8Ïµ+jsg,ºK\Ú_\Ém\Ú.\0\\÷”6=©¤“½È”\êJ..6MıŞ—\Ñ¨¬ÿ\0\êgX\Ñ\íµ’gR|½û¶òG\\ôô­\n\Ğ\æœ\\$\ã-\ĞQEQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0`x–\Å\ïµ\r1<BYD³r 0¸ş$W=s\áû»kmF\Êi.\"Š\0ÀG°],dù€v$\Ó>‚½Š\É\ÒM¶u\Ò\ÆNšQ[/ó¹\Ã\Ícu«O­\\iv3\ØC>›öeD`3K’A\Úpx>¾\Õ6«?ˆô\É-´{«\í¬eŠo6\ÔÄªÄ¦60\İBk²ª3jI±k¦˜Ø½\ÄRJ<\0…F?ñ\ê9i\ßú\×ü\ËúÔ¦œTzwò¶½ôFEƒI§x³TI,®¼«æ…¡–(KG\Âm;˜p¸#½X³´uñ~©;[°‰\í 	!O•˜3ƒ\ë\Èü\ÅiY\ß«‹¸E½\ÌF\Ù\Â–=«\'\Ê\âª_k±\Ú\ê\Â\Û\É\Ö1$‚\İˆÔ’%˜uÁ\àdñN\ÉY\ßú±.S›iGWŸ\Ê\Úş£\â!%¦»£\êkiq<ù\É)·ˆ\È\ë¹FÓ´rG™\â[“\â!¨H5³\ÍcFµ³K†C’YY®r9·5\ÖI|Q‚\È\Û\\–š6“\ÍXó\Zc3v\'<Uººÿ\0[1.š\ã\Ò\ß+\ßó8¦Ó—Jm±\Ş\ß\éÖ¶òGµ¡\ß,L\ÛJ±Œğ^w\Ãp<)z\'Ó¦1¼·2F‹kº3±´ô\È==ë¨ª:>¤š¥´“¤mI\ä‡\ç%®QÈ“~ô±3=V\ÍkWú°\Ğü¿\ì{?*\É\ìcò†\Ûg\\4^\ÄU\ê(­I>f\ØQEyæ¶º¥\í\ä‘\Ï\rğš=F6‚(l„Ä².\Ìœ\íŸ˜zb—Ux¤\ÕüYbt»›\Ù\îR$‹Ë·.¡ŒXn‹\ÎN:W¡Ux,m­\î®n¢l\×EL­¸\ÛF•²\Ò\×=c’û;--\Ş\éş¾gq\"\éş%†F\Î\ãP\ìdE†\Ü\ÎY·œ\ä\Ç\ÔÕ‰\"½Ó¼e¤\ÊJ_\Şm³E\ÎL{\É\ã?\ì¦*\ë°\Ô\rÿ\0—ş”bòK\î?s9\Æ:u¤¸²¶¸¹¶¹š=\ÒÚ–h˜±I\'\ëT\át\ï\×ò½\Éx¸¾]6³ù¤\íò¾\ç?\â\Ë¸­tŸ\ìˆ\Ëo)6õHñ²n>ISøV*\é\Z¼\Ú^¬·Vó\\K\Öğm½w-¸O]ÀŸ©È®\ßI\Ôa\ÕlRö\İdXd,x\0°Œõ\èq‘\íW):jOšûŠ8¹\Ò^\Í\ÇU÷\è\ïùœÆ‡\\ø–\ëR¶°\Æ\È\Ú$,&„\Âe19\Úy\àq“\ë]=Cyl—v\Ï¼È¯Œ´24l9\ì\ÊAB\×B·´\'K­NFNB\É3©ú«6\ãV“†5\'\Z¾óv{.»y\ÜÏ²yl<[ª¬\Öwf;æ…¡š8Y£\á6\Ì8\\Ş‹\ÒúwŒVô\Ù]Kmqd o	“k‰3óc§©â´´e59\î\íş\Éuk5£*È“„\Ï\Ì21µ˜t«\ßÔ¦±û=Ê˜£Y<\æ6{\îx\éI-µ4”\ä¤ù£öRzô²³ü[\ÄK%±uy¦\Û^\É}* xZ\Ä\Íoqòøù:\ã9Ú´|N’¬ú. l¦-®KNFduS/A\É\0‘Òº:­u}­Å¬±]9 rB–?N¤\áe¿_\ÔKÛ£{&¾V·\àŒ_^™¼8°Ú¤°Í©º\ÚD²!G]\çJFqü)\Ş!±–\Ş\ÛH\ÆÕ§L¸W6ñı\ãFO”w \ãÚ¶.,­®.m®ft¶¥š&,@RF	\ÇC\Æz\ÕK}z\Â]ûZI\r½‘\'6@b Œg®8\îr(ikwı/ø!\n(òFönş¯K}\Ëó3õ\Ë\Æ\Ö|)¬%­•ú\Èm\İ&¶x\Ù\ÉSÂ©?•\\\Õ4\é&ğ\Õİ­Œi\rÔ¶¦4\Úü\Ûx\íVô\ÍR\ÓTG{G‘‚0x2?\0\Õ\Ú“ó_\çşdº²¦\ÔRµ\ìş[ı\Ç\á{mF\Òvş×\â\ÒAÅ”pD €\n\îT¹Á™ªViª^k:4÷‘_¸®İ§‹\ì8!R®\ÙBüÃ‘üG9¯B¢g¶»Ãšıu\ŞO—uoMü¼ÿ\0\àœ\Ä\Ìt\ß]\\Kau4vğ¤rAndP\êÏ\Ø/\Ş&±µ2c­k|5O³_\íò\Ş\Î\Í.\Ó`I(Ì„÷œ\×oô_\Íb¬Lğ¢H\ã\0\Ù\Ç?ğVi{4\Öı\ÅT©\Êüº\Ù/º\Ök\îDV‘y°\Â\ÜFŠ»Ÿ\ïdû\×9\âMõd[²²C.4^yr£Œlğx\ÏjÕ½\Ñ-\ï.Zwº\Ôcf\ÆV\écQ\ÇeV\0U»D²·G$ò($\îšV•¿\ï¦$\ÕJ<ÿ\0:ª“\çƒ÷½Fhõ+MIm-fH\äÕ²\ì–\Şc,%.ˆF\æ‡¿Tz^²\èş\"ö\rNKK›…e?eò¦l@XFtaı\ŞqŞ»ª*}—ŸK\Z}u\Ú\Ék¦¾–ÿ\0/ø)¡Iuq§mymq5ˆ„¬Í´\Ò\ä6\ä\Ù\ÆHÁ\0u¦xQ®`¿K(`º“Mk»o$D3€ƒ·S]uJiÜ‰bn¤¹wş¯ÿ\0\rcš°i4\ïj‰%•×•|Ğ´2\Å	høM§sw¬é´«Ó¯É£­´‡H¸»]E\æ\Ç\È\0\å¢\'\Ô\È\ãĞš\ê\ì\ï…\Õ\Å\Ü\"\Ş\æ#l\áKÕ“Œ\åqV\é(\'fW\Öe	7ml—Ü´~§Ÿ\ë\Zd\ÇZ\ÖøjŸf¿\Ûå½š\\+¦À6’Q™9\î9®\î\Ò/\"\ÖC»ˆ\ÑWsıãŒŸz–³/tK{Ë–\îµÙ±•†úX\Ôq\ÙU€F<›Rº¬”g¥»|——n\æwˆ¢hµ\Í3Qš\Êk\Û(#•!ˆ\ÊÑ»m\Úû\'€FGL\ÖH\Ó.ÿ\0\áhş\Ã*$ú²\\Ek³-&e8*:q’Gl\×ech–V\â\äE\ÓJÒ·ıôÄš±G³\Öÿ\0\×Gú[‚QKoÑ·ú˜>-\Ó\Ş\çA–KQ.%ŠI @œŠ\à²û\äX†\Ú}R\ç\Ä¦\Ø\Ü\Ù5 ˆ\Ín\Öû¤ùò@\ì@\Íw5F-I$\Ön4Á†˜¾x!‹ã´¥M7¯_ò Q\ÄN0i+\Û_\Å’9X#jV“¿ö¼S\Ú@\È#¸²\Ô»•\0npG\'¦k[\Â_g\Ó\æ3\ÚùSË‡\ã\Ú\Äy¥o\ÑT¡grj\âDÕ··\áó8™\Ö\Zô§Kµ½”\Ü^‹b\É 4‰6\Şy\'\è+¨½¿’\Öú\Æ\Ù,n\'K–ei£\\¤8\Ëzf¯QDcÊ­rjWU\Zn;/\ë\îÿ\0‡9»­<\Üø\Ây&´2\Û6—\å\ïxò…¼Ã•\ÏL\ãµg=•\Ùğ¯g<—6¦\ÚI!òÏ™µK\0§œ\àt®¯S½\ZuŒ·m\ÅÀŒgË·M\î\Ü\ãŞ¬©Ü¡°FFpz\Ò\ä[[¶h±3J.\Ú&¿ÿ\0\åõ4\Z\Ô\Ú3Ces¿Ÿ2\É\ç[2l*G$u§øgJ“J\Ôï­¶1…--bY¼½«+*°${ô\Ï\'µt\ÔQ\ì\Õ\ïımb&\\š\Ú\Öüns~’X4xt»‹;¸.-+™aeCóº\İ×Š\é(¢­++V©\í&\çk_P¢Š)™…Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@ÇŒl£\Ôo4[9‘$Y\å_¦|— ş¹\Óaq¤\Ø\êºtE\Â\Å‹]‹bÄ°$‰™{\ä…9=MzM“¤›o¿ù´±²§h¿\Î÷ı?‡amoşı‹û;#;>Ó“Ÿ\ím\ëø\Ï4xu4\â7ûc\Ï\Øf gxl¦<Ày\İ×¯5\èV[ø\"\Ô`°b\Ş|ñ¼‰\Æ€yÿ\0\n=šM7ıoşeıq\ÉJ)=W+k¦¶ß¡\ÍhM¦\è~*\ÕôĞ°\Ù}¥¡khUv‰\Ì£¿9\Í-¦‰¥K\ãQ\äÓ­Y’&Rb–\çŸj\é-5KË‹¨-\æ-«ˆ\æ\\±±œs×J¯¨kºvt¶·?Ë¿dp¼„.q“´sG*Ñ·±.µYJJ1|\Í$şV\×n©~&ˆO\Ò<W¤jó\Ç\r²H&K‹’¸\ËC7\àqš\Íñi\ã\ÄÚ…ÍŒZc\Ú)¶{\è^HK’wck¨½y\ÇJ\íd\Ôm#\Ô!\Ó\Ş`.§F’8öŸ™GS\ê\İŸ2°C\éò¶Òµ\ï\Òı4ùu\Ğ\à¯ ¶‚/Ç®]‹\İm\ä\rp\á„O\'\Ë\å—\äÿ\0qõwÂ¢\Å|}»wöw™tsrb\Ş\ßwô\é]…UÓ¯\à\Ôay­\ËI^#¸c\æV*QG\'¼ü\ÓıX§:v³Ñ§¾^\Ö\Ñ\ëølA\áÏ±ÿ\0aXÿ\0gùŸcòW\Éó3»n8\ÎkFŠ+Sr\æ“aEPI\æ:\İ\äSkR\\Ó¬µu£Hö0¼‘Cª\îİ6•\Ï#&¾ú?öç‰…ñ\ÚJ‘}„®|\Ğş_^9\Î\ìt¯JªVšl6º…õ\ìm!–ğ¡1Wh\Ç•‡²vµ\ÏRø®YYkæ¯m´ó8U´¿øHm—\Å&ÿ\0d!>nx—qİ·¯NkH^j\ßm–s\'ö•\Ò-´>g\ß\Ü\íµ	÷\nA?JÕºŸK²ñ43\ÜMp—·0­¬kä¹‰bÀn€\Ù\ÏSÓµh^\é°\Ş\İ\Ù\\L\Òf\ÎC* #ib¥rx\ì	\ÅW-\Óóÿ\0?òb!Z\nQvV~Z\'¢]›\Ü\æüSè¶º\éñ–’\ÕÍ¤ òñ2.\àAk\ÌÔ®´\ín\â\ç\Î3Àö\ÖWm!\İ#l\ÊËUrx\ìk¼‡U°šÁ¯\Ö\ê5´RÀ\Í!Ø£©\å±\ÆGZš\Ò\ê\Úö=­\ÄS\Â\İ\'§ñœ9›w\"©S‚R†©\ïó½[\Â\ßaÿ\0„†\ïû\Øÿ\0eO3\ËÏ•\ç\î?w<go\\{fºú£$ğ\ê1\Ü[X\êi\Ädx\â9\î g¨ªvv\×jK%¸¹–5ó\Õ\Ò\Ü½2B `3Ş®:$ŒjşöNMÙ¥³»{w±CN¾¶²ñ–³ku2\Å5\Û@\Ö\èüG—ƒ·×j	™ xå¦‘a²Šö\Ï\Â\í\Ë\æy[‘]…(\ìû\ë*\ïM\ZI\ë\Ù-vòó<ÿ\0\ÅÍ¦\Ú\ë·—a¨L#AıŸu¸J¸\é\äy9é½\Åhx\Ò\ÓKk\ÍQÔ­ û:Ï²\âI£*\ßhcé¸l\×aT.õ›+\è,®$‘&¸`±ş\å\Ê19À\Ş\Ğx<f¥\ÓV³\ïúšC&\ãÊ›qMhúZİ´·ü9—­\Ş[\ÛøKnŒbt\Ö\Ï\Ê]\Îv‚¿L“øT>\"´L°Ğ™bw\ÓôË˜\ÌÊª[je@\ë‚Aıkv÷M†ö\î\Ê\âf“6rQK+“\Ç`N*\åS‹w~Ÿ†¿™”k¨r\Û]\Ûùé¿§^\ì\æ|A¬X\ê^Ö¥\Óoq³\å\âoºvô\éôxt\Ï_I¡YGo-¡\ÚĞ®›oS\Ít”Rt\ï{õVüÿ\0\ÌKÊ”`´½÷\ßmİÁ–ö§U‚{-N\Ã\ÌH\í¶öòG$9—s·\Ìr3Éª:]\ÜW#\Òn\á\Zu¥\ä÷n.-mÑ–\áT«\äJIù¹øG8\Åzm½\ŞF\ïw&\Ö\ê\Ûúùk¿®›œ=Å§‡\ì|mvú­”_h†-\ÚX†]Ï¸©\Ç\Ş\Î\Ü÷\éY¾\"‰gñ©«efIQg%\Ü3*m\ÂÁ\Ô9À\ÎkÒ¨¤\è«[\Ô!q’•\ímû[k§mµ\"´I#µ…%—Í‘QCIŒo8\ä\ãŞ¹/i?\Ûz\äVJ#ó3@\Òro\r‘\È=y­û\İ:ú\âå¤‡\\¼µŒ\ãG,«Ç«!?­[±‚k{q÷r\İ\È	Ì²*«Á@¥\\£Ï£F4ª{	{X´\ß\Ïü¬p\ÓI›£\êvB\Ò\Ù\ìF­\äb\áKAn…U·2\á\İÛ“I¢-¼¾ñ©\Ô\à‚ÀN;›Ea`¢´d¹\ÎF{•\èTT{.ï¥~½\î\Ú\Ú\İ=ú«k¶ÿ\0Õ+Â³\Ø5¶­ko•¼q\Â—\Úf|·\Èn@\ì\ë\×=G5‚_OƒT66‘\é×Œm\Ékû A`\âPs†=zœ\àğ+º¢©B\Í2e‹RSV~÷Ÿü\r#Ğ›M\ĞüU«\é¡a²ûKB\ÖĞª\í\r˜;G~sš¡=¼£U›\ÂB6û=\Õ\à¾İ”[½\×şş\r¿ğ*ï¨£\Ù\íıi\Ø2\Òr¶¶]z¥d\Ï5ñ)?ˆ5Hõ[\ë+2v‹).\à‘™Sh\æ \Ù\Îs^‹h’Gk\nK/›\"¢†“\Şq\ÉÇ½KY—ºuõ\Å\ËI¹yk\Æ\"(YWVBZ#O1T¯\í\ã7d—ù.Š\æ?‹¾\Éı­¦lÿ\0\Èd»÷\ç\Êó¾]›ÿ\0\r\Ø\Ï¬–W“Á­y¦\ÂMU\ÔH[-lfP<\í#8\ÏlWsc\Öö\â9\îå»™dUV?‚€?J±K\Ùİ·ıt*8¾H\Æ)_•÷\ÓFö\ÓM÷9\évúg†®\"\Ò\í>\Ï\Ë\\­ª\Æ-\Ë\æcı\Üô\íXvB\Ì]x‰¼&\"\Çöd~WÙº	s\'ı®•\è”Q*Wwş¶°©\ã`\â\Õş~i\êº\ìp·´mZ\Ş{-N\Ã\ÌH\\[[\Û\É’gË¹\Û\æ¹\ëZ~\Òtù£—S–\Ò\'¾·¸a—‘€\ç\é\Åu”S4š}…W*—µ\Õ\í×¢¾š%}\Ï>¹}6\Ë\ÅO6\ëV\æ[\Õ[†–\ìH/\\¢õ\Çg“]\î­kc}ce1q5\ë2Åµ	\'\'µ^¢œb\â¬EZñª\×2z+o÷t\éø˜>5Ó¬¯|?5Õ¤3Kok+Dò c\ÚNA\í\Ğ~U‘\â(¬\ä\Ñ46¼¾³€Ge†ôÿ\0 l\È\ÎAı\rt:ÎŠº¸\Ù-ı\ì02\ä†UIõ\rO·V”h±F± \nŠ¨€¤\á{ù\Ûğ¹¥<G³Œ,\ïfşWVó2|%q\rÎƒo$Kg,«§FT\àeOQ\ÇzØ¢Š\ÑlrÔ’”œ—P¢Š( (¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0\ç<\\·\Üi6\\\\Cö‰¤È”\Æ\ÌDN\Ê2\îs\ßkÕ´­;P¶ú\åeH\ìŒò\Ë\'˜\Ö\æC¶V\ç\0c>ƒµz\Å$‘\É$H\ï&6e¡#ƒÛ‚E!¶·/+˜\"-2…”p3€}G\'ó¬6\Ûi\ïşGm,\\a¥ù\Şÿ\0–‡5õÖ•>µo¥\ßO\Zo\ÚT\Ë)œ\Ã.Hq\É\ä\àú{Ñ¤\Û\Û\Ç\â\"X5;›ñ>Ÿ34’Ü™y\Ì|\î\ç\Ğq\ÅvV6v¬\í ¶Œœ•†0€Ÿ\\\n«¦a©*[\ÚY\Û\ßNŒÀ\Ç\n«º‚7\êEš«ÿ\0[ÿ\0Ÿ\à_Ö¢Ô”S\Û\ï\Ò\Úş\ÕÌ¯2\Ùøƒ\\\Ó\ÚògDxL)qp\Ò69ÁbOZ‚\ÓI‚OjŒg¾`‚P\îP	-!Á¹^>\ïA\é]\Ùô»\Ë\ãq\ä\Ù\Ï{jv6«I\ëŒõ^¿­%\İæ•§\\ù—W6V·€»¥tGƒ\'’O\çO—fú\í\äÜ¹S¼’_uµù\Ûñ1õLXø\ÇI›\íw\Åt³‰\î\Ê$\"\íÂ“´w<\n£\â+«\ë¯ÿ\0g\Å6\Ëu´YbU\Ô\Z\Ó\ÌbH,U‹cœ÷\Íu\Ñi—\Í•ôv—\àÈN\É\ÇV\n}3\×ŞŸw¦X^Ä‘]\Ø\Û\\E\ÜIbWôqJPmY\"1\årZ¥o\ÇGú¬¯|ò\è:n¯©´4´³\Ú\Îcó\ä]»Fñƒ÷I<c8«H\ãğ•ú5\äÄ³İƒu¿\æA½¾}Ş½ó]ú}•Åª\ÚOgo-²\à,/²tÂ‘Š‹OM6K‚\Æ+±«<Mq€™†\Æ:\ç4r{\Ï\Ñş,J•>T­ª~]\Ïğ\r\ËşÇ³ò¯^ú?(m¹v\ËK\îM^¦CVğ¤0Æ‘Dƒj¢(UQ\è\0\éO­N9»É°¢Š($\â®e–\Ã]{­F\ê\æ\â\ÖKµHdµ¾*°\ä€#xr\ç©<óŠ­\â©&>&šmV\ê\Ö}91iW,0r²Äs\ÓØ#LŸm\Zu˜»\Î\ï?\È]ùõİŒ\ÕohZ\å”ñM¿\Ú$‰£\á\áWx²:ŒóúŠ\ÂT\å\Ê\Ò=*xª~\Ò.K²¿\Ítü\í÷w\Îñ4€[øvY\\ı¡fcÊ·_Æ´<K¨›=\æ\âÕƒ\Í\"ˆ­öœ\æG;W‰%ÌºF\"\Ò/ç±’I@¶™=>C×‘Iy¢\Ãq.˜±˜à´°—\Î\é\n\Ì…\éÀ\0œôô­$¯Ì—WşI˜\Æp÷9\Ö\×ù­ÿ\0Œ?XG§\èz›F²Eu\nB\Ó\İU$—õ\ï’+*i\ç·Ğ¼N»\ã†\ëí‘‹‰my‰QöSĞ„\Î\ì÷É®ñ\Ö\ËTµdu·¼¶bU”…‘	£‚)m\ìl\ímµ½¬Ûœ\æ(\ã\n‡=xTºwm÷ÿ\0şF\Æ(E)+´\ïø\ßú_3—\Ó..´»­GL\Ó\Ìzš[Ù¤ğ\ã2–2PÁÀ#¾*—†„¶ş46Ÿ{\Ìúyk‰§òò\ï¿%\Î\×?/@8\Ç5\Ú\ÙX\Ù\ØFc²´‚\Ú69+a>¸\'‘\Ú>\Ñ\åG\ç\ì\Ù\æm¶\ç8\Ï\\gµ5šw\Ûşùş¼\\m4£ñ/\ëm<È¢¿´šö{(\î#{¨\0ib\æ@zf¹;™e°\×^\ëQº¹¸µ’\íR-oŠ¬9 \Ş€y\êFO<\â»¶·\âK„‚%P\Èp:dõ8ª\ãH\Ó\ç\ÛFf.ó»\Ïò~}wc4\Ü[i™R«\nm\é£_\×õ÷\Ü\ã¼Au$\Ç\Ä\ÓMª\İZÏ§&- Š\à\Â1\å†@#vX‘\ÎzbµüM ş–W\0h@Y˜\àr­\×ñ­hZ\å”ñM¿\Ú$‰£\á\áWx²:ŒóúŠ}ÌºF\"\Ò/ç±’I@¶™=>C×‘P¢\Ó\×\Ëğl\èöğ’‡*\Ú÷^VKü\ßõsEdP\èÁ”ô \ä\ZuGo6Ğ¤0D‘Dƒ\nˆ¡UG°*J\Øóİ¯ QE(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0ÀñU\ÍüR\é¶\Ú}\Ó\Û=Ì²d\\±3†©QXp\ë\Úİ®u\ÔÁ\ï\nÙ”y¡	\ä4\çkQô\Ï>µ\ÚOg\Äöó\Ë\é-˜¼M’6’¥O×‚z\Ô3\é6-v\Ó\Û,ŸlEpÄ\ê¹À\ÇAŒ•“„®\ÚÕ\ÚXŠQŠŒ£’½\ï\È\çnµKB›T¶¸¹ş\Ò6úy½ŠGQ”‚WkÀ#Œô\ÏZe•½ô~-\Ò^÷SkÖš\Âv\ÊDsv\í{\ç¥t:~‡¦\é\ÑÎ–\Ö\ÃŒJdv‘œc%‰${t¨4ıG\Ò\ï’[X|»-–5iİ¶¦FB«1\0t\è(\ä•\Õÿ\0­ÿ\0\à}\Åıb•¥Êµk²\×K|¾[”¼.’\Û\ëzı¬³ù\æ9bo5¢‹&ImŠ3ø\Õ(t¹®|q©³\êS–ğ60¶P³œ¡\ÂñÛy&º)t]>]Mu6……\Ø\0oYCc¦\å\rŒ÷¬Geo\ì×©.&EG|UsŸ\Äiò=/\Óüˆx”œ¥\ÚKeºµÿ\0#ú9`ñ¾’\æ1.#B<1ş\ì*©Â¶\İÜO5½ªê¯¯¾™§‹\ÄHm–fkX¡wbÄŸ5€\Ú6öç¢·õM\"\ÇVX…\ì%\Ì,Z6Y\Z6RFH==\ê+ıL\Ô-qn\Å\à]‘È’¼n\ÓrHüi8J\ÖC§^’\åsWi[emô{«\é§\âc}¿\\»—G\Óf”iw—òMr\êˆ\í”*6¨9Q\Ù=p)şK…ğ\Í\ìit«r.n€¸t\æ7\ÌGN¼\â¶/4=:ö\Ö\Ş\Ú\âÜ²[c\Éa#+§\áÁ\İ\Óßš,ô½6-*M:\Ú%k\'Ş’\'˜_;‰\ÜNrNy£‘ó7\äÿ\0O¸%^›§Ê•µOe\ç\çw¾ÌŸJ§[«”º¸ò\Æù£PC\ê\0\â­T6vú}œ6–±ˆ\à…B\"N\ÔóSÖ§\ÚrmQA\'\'-ö§k®¸\Ô\ï.¬\ì\Ú\áV\Ø\Åo\ÛÈ‡\0+>+\Ç8•³©jÒ¯ˆnm5g¤G\nBŒearX°<\àc+uü9¥Iyö¹ ‘\äó<İ­<…7\ç9Ù»ns\ÏJ©\âY\ë6·ªj@cY|\×E\'.ğ§\rpk	F|®Ç¥N½R7]–\ÊÛ®›²/Ÿ0xvV{j’q\ê­Z¾\"\Ô—¢^^(Ì‘\ÆDkı\ç<(üI\ë½*\×PÓ¢³¾ˆJ‰´ğ\ÅHe\èA ûŠ©¢´ÿ\0\ÙV°[I\ÄÒ«\È\Ì\í´ƒ\'9ù°NOj\ÒIû\Éu\äŒ!:r\äRû7¿¦ÿ\0ğmoMm?\Ã:.“\Ëöˆ‘­\Ë[£‚Î¬{ó1Ï§CTa»¸Ò´\r~;hÿ\0³®Rò8\Ö\ßv\ä´Y6(e#ŒKqŒÒ»mKM´\Õ ^C\æ\"°u\ÃeaĞ†}ÁªÉ£i6zuÍ³Aµ¸9Ÿ\Îrşa<|\ÌÄ“Û©¨t\İ\Û_\Ö\Æ\Ôñq\äQšm\Ş\ï\Ï[÷ı/\çmŸD\Ún¯{¤\Éoiö–·K´À,¸}\ÌÄs\Îy\ÍWğ­Œ:¡i¥\İ\é6P\ß\Él\Å/m›··eA{z\è,t-:\Â)ã·€¸]²³\Ê\î\ì1€71\'\0x¤Ó´7M¸k›h\Ïe\Ù\æK+\ÊÁ}rp=…RƒM<L$§¾¶ù´·\ßğ\×\äh‰¤hÃ©uÁe‘™\Ê\Ë}©\Ú\ë®5;Ë«;6¸U¶1[\Æöò!À\nÏ‚\Ê\Äñ\Î¥tivVúÎ£n\îUVY2rÁzq\Óòª¯\á\Í*KÏµ\É\'™\æ\íi\ä)¿9\Î\Í\ÛszSjN\ÌÆ”\éA¾mS]–ÿ\0\ã\Ø\Â\Öu-ZUñ\rÍ¦¢l\â\Òˆ\áHQŒ¬#Kƒœc¥]ñ)ó‡e`7¶¡	\'ª\Õ/‰ü-g¬\Ú\Ş:B©¨Meó]œ|»Âœ6=Á­+½*\×PÓ¢³¾ˆJ‰´ğ\ÅHe\èA ûŠˆ\ÆWwòü\Íıµ$ ×šz+\ì—\Ï[½KôT6–\ÑZ[\Çoac\n\ËÌ’O\ãSV\Çµô\n(¢Q@Q@Q@Q@Q@Q@Q@Q@R;*)g`ª£$“€\0-Š\Ê\êHe# ƒE-\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0aø›S¾°6QX6\á\ÜY”Ÿ #®\ÜV=§‹u¦\Ï-Åµ´—E-Z\İcÜˆLü(l“\Ğõ#¯ ®¦\î\Â+«»+™\ÃÙ»IR0IR§<zUot+\Ù/5¾Ú‘«€\ØÙ°’¬¤r\'9ö“Œ\î\ÚÕ\ÚUh(¨\Î?\Õÿ\0\ÈÌ“\Ä7\ÚK\êjñ[K-µ™½\íC*º‚ARœ\ãœ÷ªÖ­«?‹ô©56²\Şö3´kn¬6dÇrN{r1ô­›OZD.\Í\Ì\×7ò]E\ä\Ë%Ó†c? À\0OAL\Ó|7\r…ô7o¿¹h\"haK‰–58\ÈPO\İI£–M«ÿ\0[ÿ\0À/\ÛQŠ—.öí¾–Ó¶¿\×B§…D\Ñk:ü7\ÜÎ³DòIº‡,€ôflvVmÎ•u«ø\Òö;\ÆÓ®!¶†Dš\Ù\Ø\"3?\İùğ[\éÀ®\è‘\reõHn\î\à’]¾tQºùr\íôô\"¬C§C©s¨«9š\â4‰#h\nXŒq\×\æ4r_–ı?\È_YQ”§«Š_=/ù3õf‹\Ç\ZSJ-9a™!*®²F© ûNOû4šÿ\0ˆ\î­5s¦\Ù,jñ\Â&’I-f¸q (:Iü\rkjú4Z¤–\Ó››[‹fc\Ö\ì\r\Ãr ı*+\í+«˜®ã½½´»H„FxCH£œ0 ƒ\ÎONô8\Ê\Ö]ÿ\0¯\ÄP«Eòº¾w\ÓğüL\å×µ;\åÒ­\ì\í!µ¾¼…\ç”]£•‰P€F\Ş	$‘œQ\àóx¾\Z¼1¬/z.®¶ƒ‘“\Ìo\Ç­;\í\nÄ´f»»Š\ê\Ğ\ê7\\\ÎA8È¥±\Ñ ²\Ò&\ÓR{–I¼\Âó3!.Ic\0$ö£–\\\Íù?\Ğ%V—³åŠ¶«õı\Z-\é\Ív\Ö5úD—eš±P7|gµYª\ÚušiöY\Ç$²$(<­¹\Û\Éõ«5©\Ç;9;QA\'.º\íùñ–3\Ëecœ$Q\\C&û„\ã\æI7$ó\Æ	\ê\Í\İş¯>¿q¦\é\Íc[\Û\Ç3=\ÄO!bÅ†\0V\\}Ú–\ëÃ±\Ş\\‰.uBX\ÂajÎX`r?‡v3W¢Ó¡‹U¸\ÔU¤ó§‰\"e$mK:üÇ½d£-/ıişglªQZ\Åkn\Ú^\ëô¾÷õ3\îõ¹4\íbKk\ï)m>\Änc”	d?¼}\n‘øĞš\ÅÍ·„¶5\ã\à[™Œh\0‘•^I\ç>µc^\Ğlµ\è\í\Òó\Ì	<\Å1¶	\ìTÿ\0²GT^!±¸\Ô_M´,\Ùı¥eºl€§Ì«§,§¥\rJ\Ïú\ßü¿AEÑ—*k\×\å\Û\×ó3\á{¿\èz>›n‘I©^I°¼\Ä\ì\ÒHÍOñqY¾$Ô¯.¼;­\é÷‰\0¾²–\0^,ˆ\ä\êT\à\ä\àŒ•\Ö\êú\\\Z¬\Ç3\Ë\Å –)am¯\àı	ñ\ÍPoY>™ye$÷R5ã¬“Ü»ƒ+2‘´\çÀÀ\Æ(q–¶\ØÖ\"’’©?Š÷~·½ı-¥»†—©j#Y›I\ÔÅ«N-\Å\ÌRÛ«*•İ´‚¬I\È8\ï\Î{U=n­üc¨EyöI\'\Î9X#‘3†e\ì;v\Åi\Øh\é¦Isx&º¿½‘ù—)b£$ ÀFO§Öª\é0j>!¹\Õo,Z\Å\rª[¤o*;1\Ì[\å$\È\Òwüÿ\0_øsB\Óåµš^Wzl·°Mÿ\0AXt¸­ÿ\0]dùWòP\Çş\\\Ò]^Os¨›+^]Z=Q\ã…\Ê\Ö\Ëq\Ãg÷aqŸz\ë<5eso\í\Õ\ì~]\İ\í\Ë\Ê\êH%T|¨¹p ~uwL\Óa\ÓEÈ…¤o´\\=\Ã\ï á›¨)(·fÿ\0­Wü1_X…&âµµ’\í\ç\ê›û\ÎR\ãY¾·ÿ\0„¦$µ\Ônr8h6Áû•<npF<şµRK\Ï6ÿ\0NŠöóX\Ø\Ú<Rª\Ù<ÅšR~ñ\ç\'İ¸®Àh\Ö\Â=R=ò\ãRfi¹.P\'\Ë\Çù¤±\Ñ-¬¯!º‰\æ/¢Ù¨b0QNA<uÿ\08¤©\ËDü¿\'ÿ\0\0µŠ¤–‹_/Dr—·7©†!Ö®5Zh¦7+h\Ò	€6\îrO¯l\æ­Ki%\ïõ/\íx$˜B.$´7‰™U\0;³\Èlg¯5\Ô\\\é°\Ü\êVW\î\Ò	m‚0\Úw€xö©î \ê\Ú[y—tR¡G Œ\Z%Mµ/22+’\Ê\Öw~Z·§É˜WZŒ\ÚOƒm/ X\ÚDŠ\İ@pH\ÃSĞÆ­6©t5½B\Æ8U·³I\ãQ\Ã;±q·9\Æ>QÛ½6[®6•qwywk\"„{®\èÀ\è¨0:\ç¥;OğúY\Íu;j÷71,&Yw*Œ\ãn\ÕüÇš¹s9]Z3>j<²¾®\ïó_ğ~ó?B\Ö\ï5(®\ÕÕ’Ì{X\á’)\áo}\í\È2\0¬{moP›Eğº5¾¥Iql²]\É\"\í˜r	X\ç¯#\ë]=¯‡¢†\ï\íw÷×³ˆZk†O‘[\Æ\Õƒ“šx\Ğ-¦Xù“ùZt‘\É\Ü71A»\Ï©Q•\Ó~_™··¡\ì¿\àhı?#}1OŒ¢´ûv¨-ä³’\á_\Ìñ\"›‚x\éYš\Å\î°oõøm&ºòfan…±jcˆ?Ã¸3s\êv­§BÚºje¤ó\Ò€.Fİ¥ƒ\Ó9\È\éi0Bš‚+\ÊEü$¹#‚T)\Ç0\\Ôºo–\Ë\Ïş\à(b\ãœµ²K^÷¿\éó\Ø\Ç\Óo§¹ñ—™¤ò¦\Ò<\æM\Çib\É\Î=y<\Ô^1¸Xõ	\îoâµ”O\æ-›JˆU\Û\Ä1æ¯¿†be%¾£k%¥¨µGˆ\ÆK\'{rLUµ\Ñ\ã7VS]\\\Ï=#\ÈW/¼`\îÂÛŒb­¦Õ¼ÿ\0RUZQšš}\Zó\Ù\Ûô0­õ-[Mğ\ÃO\"»\Ì÷¢_¶ƒ¿\Êy¡psƒß™­¯#X“M¸Š\â\çO7/\Â2[¸@½Á]ù\Ï^AgTÓ¡\Ô\í\Ò	\ÚET–9AB\Ê0a\Ô2*\åš4\Ìg]5x¤\Û\Û\Ò\Ç/\á\ë\ãkğú+Ø ‰\r½£ºÆ¥Šü»°9$\ãZ~¬j²_\Ù[jKf\Ëhna{td(FÜ«\'?|r1Ò­Zxj\Ş\Ö\Æ\î\Å//M\ÄoJ\Â9\Ùò\ç¹\êMZ‹G·Š\æ\Â\á^Rö6\ío$`©Û’x\ëòNô%+\İÿ\0[\ßô5©R‹s\ëv\ßù~;˜:\Û\êÚ¸ö\ÎHb½\Û\"ù“û´?!/òG<\çÖªişmæ½©‰¢\×\'Xõ\ZI\éHb]ªpW\Ì’p§¯z\è“C-Z]B\Û\ÈL\Î$šuò¤`\0\ÉI\èB:U?N†\ÂKÇ‰¤cw9÷p\Ä\ÇO”T\ÆKôÿ\0€T±1\\\Ò[´º[\×cP\Öõc6«&Ÿ\r™µÒ¸•gİ¾f‚p¼\É&¦º\Öo\î¯t»m+ì±‹\ÛVºó.cgÚ£n‡?7­M¨øb\Òú\æ\âcsy]\0.a‚P©80Á=8\àŒŠ½ı—oı£kz»‘\í¡h#EÀM¬W¶?\Ù\Ôe\×ú\ßş.¥“K[vò\ë\ß]«,kº¾‘\å¤B\ÆIc²{©\ËFø}¬£ó|¿{¾zV·‡µ«\è®\ÒñaûE¥\Ã@\Í!\0@$‘\Ãzš¶ö>©¢Yü\è\áhB\äm\Ú\ÅI\í\×\åiG£\Ë:‹÷i$`\Øe,¡N\ÒM)\'_\ÏOÀ‰T¥*j6³\ïó\"ñF¥>“¡\Ü^\Û$o2\n$®Y‚óŒz\Ö.§©j\Ó[\Ò5E¶iÆ›%\ÄS[+*²`©X’>\ç9« \Ñ&“ÁÍ£Ø™§‘DH$ƒy\n\êI,p3€j\Ä>\Z¶H\ï„÷w—S^@m\äwR\ëÊ¸\0¤ô\ëÖ¦q”®—õ¡­Q§å«»õÓ–\Ïó3ü7¨\êVòišuø´’+‹:YJ\ì\n\n°$\ç†Œ}*-+\Äz´–úUıôvMc¨\Ï\ä…]d‰‰`¤’HaòóÓ­oG£[\Çqc:¼¥\ìm\Ú\Ş0HÁR$ñ\×\å\ëÂ{K\r9õ9\î\Ú{R\Ò%«Ê­NIÁG\'¹8\ÍS\æ\æş»ÿ\0‘^Ò„£)\É+ÿ\0û[~[EV‡šQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0dx‡X›J«of·R\Ü;(V—\Ë\0*3“œ\Êk6\×\Æ\"M:\â\æ}=\ã•Š”9”Mş¬g§©­­GM×º}\ÃH\ÚH\îP®D›‘“\ß{=\ë>ó\Âğ\\µöÙ¼„ XV(\Âù\r%H\ìy#Œv¬Ÿ´»·õ¡\ÛI\á¹Rš×¾½öû¿«ˆ%kc}¯dlç´¶ûQX\å¬‘ò2§œŒ`\â¨Z\ß\êW~-\Ó\rå€²F²\ÑÇ™»˜şğ\0`Ç¯Z¿†š\ä\ŞÉ«\Şı¶{»o²–H„J‘òp£\'’NsÂ—NĞ¯ \Õ-¯ouU¼°<(·ò\ÛW–;O\Ê:J\Óm_ú\ßş§6*\\¶½¼ûtù\ï\Ï\Ü\İKªkp\Ş,‰4SFJŸ:4Ü™\Â|«\íY—\Û\ZŸ‹®­]-­¢ŒªÁ©<8Vfù\Î\Ôù˜…û§§5ºº=\Ì\Zôú­ú\Ç\r\Ö\ÃqC¸±Qµ²6ñÆ¬A¦ù:\İŞ¥\çg\í\Ç—·\î\ì,sœóŞ©ò·\Ë\åşDûjq”§kmôz_õ3n®n\ãñ–‹\"[K«Ë¬«\à)%\ã\Ù×œº“_ñT:V ,m\Z\àE\æ¿Ú¯\Ù@$€ \åúš»­i\ß\İY^YŞ‹K»Bû¢óU•†+‘\è;\Ô\ÚÌº‚\ê6z‚[İ´+\ÆKq,r’Ü‚$ô=\èjv²%Aò¹öµµ\Şı~]º¯Š~\Ùo¦¶—bn®/\ãiV7”F±ª\à1fÁ\î@\à\Ó<%uuÿ\0\å\å\Ë@òÜ­\Í\Ó™%„òı3W/´[™\Ş\Æ\î\ŞımõThü\ï 2H­À¦G\0ğx§\éz<ú~‹=Š\ßs3K\'\ÚV-»]\É9“Ğ™¢\Ò\æo\ÉşŸÖ¡)Pö\\±¶­wóü-mµ/i\Ó\Íua÷\Ík4ˆ\áf\ÜPúf¬\Õm:	­l ‚\âå®¦¼Ì»KŸ\\Uš\Ôã¹¶\n(¢‚N~\Û\Ä7š\ÕÆŸme[i¼¹L·A%\ÇqÓ•çƒ‘š–÷Y¾\ZÄºnŸ¦\ÅrğÂ“Hò\Üù@,\0+gîšƒQğõÖ¥\×:„gY£h\È\ÈQ&\îc\Ç\"´¡\Ó|­r\ëSó³\çÁ>^ß»´±\Îs\Îwzv¬—>—ı;™\Û\'‡Z¤›k½×§KöDM¬¬:¼¶PˆBZ}©eßÀ8\éü<~t\Û}l7†¶\îmÍºy\à\Æ[q‚G8‘Î£ñ7‡S^K`n^\Ù\âb‘r^&xúğcØ¦xš\ÚKÈ´\í*\Û\Ïp{*‰|\Ä\Ğd…_Æ‡\Ígø|ÿ\0\ÈQr®½|’\ß\ïÜ‚\Öş\ïG\Ğ4Ä¹[\íVõ€X\ÚLfFËX\çj¨\Ï\Ğ•CÄš\Ô÷~Õ¡{f´\Ô,¥…d‰e\Ü>gR¥\\G°\ï]·¥J;v†\à\Û]Z\Ê&‚`¡‚¶ ¯pA#Vd\Ş{3R†\ãP/}¨:<·>H\n6´\ÏA^\çš\Z–©lkF­eR{\Şı{ıÖ·\Î\å\İ/X¸¸\Ôf\Óo¬E\âD\'EY¼Ô‘	\ÆC``ƒÁªZ5\ÕññMı½üM\Ém\Ë\Zİ™¢A’¿((¸\'=jİ†•=\åÆ«vo¯>RùPyj±‚[j®I$ŸS\éUt‡—PñEÖ¦¶—vö\Â\Í \æ‰™÷³\Î\0#šj÷üÿ\0_øZ¦â•¬»\ï¦\×ıK3\Íu\â\ËK(e‘ ³®.±Ù¾TS\ë\Ñ\Î=…srxŠù./^=i%¼‹Qkxt½‘“${À\èñÁ\'vq\Åt~‚fmGS¹…\âšúåŠ¤ŠU–$ùzp	ÿ\0U½J]/\í‡\Ìµ\ÍÔ—Ù´®ã½Nq\ëIE»?\ë§\èWµ¥I¸\É\'k/ó\èúü\ìgø—\Ä\ÇA—Š\ÎH–?1ƒŞ¬s\ßdd|ß˜\ÍXÔµ«ˆo¬\ì´û»š\ê˜y“ùJª»{\ín~aÚ©jşšö\ãS’\ÛPŠõ(\ÂN²Ú‰Xavü¸c\ÜóZŸ\Ù8Õ¬¯„ÿ\0ñ\ëlöû6ı\í\Åy\Îxû½=\è\\\í\ëıoÿ\0\0—õeµ«³¾û\Ù[ñ¾\ÆoŠub\ÏK±–\Ú\Ş\æ’\â˜}£\î’\ê6ƒ³rA<c\ĞÕKY¿Ó¬­m6¼º¹[t….‰@NpK”Ÿİ«š\î™ı­§›eœÁ ‘%P»¶º°`q\Üdtª·\Z=\İ\ì6öş9&´»[’\éo°8\0¸\Üq×®M;J\ï\åú\\Pó%£w\ß\åòüJ\Ç\ÅIm¥\ß\İ_\Úk‹„B%¶Ò¸sƒ¸rqit/Eª\\\İZ²[	 „M›[µ¸F^Ÿx‚b;Š’\ë\ÃQ\İ.ª²\\¸ûtñÎŒŠ…\ÑT)\Îy@Jµ§X_\Ã\é}}É‘v©Š\ÔC·®IùJŸ\Ş~\×\â9<7#²\×\ç¦\Û~;øV\Ô5x`»“LŠ\Ş\Êxü\È\äûV÷Á\é•\Ú1ù\Ô:ˆn5›—Y@–\È\îM\Ğ3FA#\æ‹oË’={Ö‹aı—¤Y\Øy¾oÙ¢X÷\íÛ»\ÆN+.?]I¬\Ú\êWº„½³1S ŠG‡}\Ç#˜*\ß2h›\Ğnz%\Û?\ÏMŞ†¹û\ß\Ï»&“ie“FŠ\ç\íB où\æ6\Ø\Ç=9­\'³ºmf;Á¨:\Ú,&3i°mf\Îwç¯¶+7\Ä:Ş·\æB÷ö\éf\àa\Ì<‘\åpÁ÷Á\År¶„PT”¿xÕ­\ç£ùoùy—›UÛ­Í¦ù\ê\íÏ™¿®X®\ÜcÛ®k›»\Ö/o¯¼+cfK¨\'“\ì\Íq±yE\ê\Ø\çJ\ÚÔ´;™¯ã¾°\Ô­À·û4†X|\å‘3‘\Æ\á‚y\Ïz¬|1q¾Š¶:’\Ã>—D²Io\æ	(+¸c§­K\æ\Ò\ïşV7£,<l\î®×Ÿòµ¯«¶\Äz…ğÖ¼)¨]µ\Ø\İY	ƒ¤W¨§\ÈF\á\Ğú+R	/$ğİ³Û¨š\é\í“ıd\Æ<’£\'v\Ö\ç¿CM²\Ğb·Ñ®ôùg’f¼ó\Z\âb\0ggû\Ç\ì=ª]\ÆóO²[[»\ä»ª¤l°yd(ç““\ï\Å4·\ê—ß­\Ì\êNŸ-£\Ñ\İ-vş¼Ì½\'X6¾‹Vtv†İœ¬\Óow ‘\Ë\àg§\\Ri\Ş)}LY\Ş\é«l<\Ù 2%Ç˜ˆ\È\Æ\Ñ\Æ\Ó\×ô¥‡\Ã1\èwš)\Õ¬¥£€|4A‰<\ß63‚´®´X\'¾³¹O./\"G’EX\Ç\ï‹FS“\ëŒs\ÏJ—\í/ti)a¯+\ëw+=t\ÓO\Ä\ÄÓ¼uk{}i\ØAy\'—K\Äy9\Ú^!ÊƒSŒŒ\âºF\Ôôõ¿\r}l/H«\æ3÷sœ\Öf¡^i/\êQË§C‘/j<À½—\Ì\İ\Ûı\Üñ[~TfO3\Ë]ÿ\0\Ş\Ç?\\9­©–!\Ğ\çı\Ú\Ò\İ\ß\êŒTñ=¢\Ïqouˆ\'\âX#B\Ùó6 |ô\ãƒPG\â[»¡m†“ö‹—´K¹£k€‹¿\İ]\Û~f8=‡N\Õ¯\à¸5;R\à\Ş<r^ªyD&|†C0\ç\ÛT*\åŞp·ku¥j?a”Û­´ «\"\çi#2y÷\éQûÎ¿\Öÿ\0­\Ù,­¿ìµ¶ÿ\05Ù—\Ä\Şf¥\İiöf\âMJO.(\ä“\Ë\ÚB±;M¤tª^)¾š\Ş\ËE»\Ô\Ò+š”fP³oUP\Øü«F/Co²Ç¦Hd—q”•e9<`’\ÄÕwGYK8\åu\ÛÜ¬ìŒ›Ä€6‘ù÷ªj_Šı?\àŠ5(B¢²\Ó]u¿[ymn…y5\éaĞ®õy´\é’†øc-û\É³0\Ç\É\ë\ß“”¶º\İ\Ã\è÷zÅ­¨†Œ±›k±:\È\0$Œ\í\é\ïÖe£\İi\Ö76vz‰HKj$‹\Ì6\ãºò~eô`qšÌ—\Ã\Ó\Ø\éšô\æT¸º½´dò­m¼”$+`„\åz\çÒ¦Ni6»c‡•Ö›«o¶Ÿ%×¿\äËšWˆn.n\ì\í\ïô\áfo¡3[:Oæ«€*~PAÁ\ÓŞ£O¯E¥\ÍŸ\ï¥h‘ ½YdR#|xr\îpi¾Ğ¯öm\î§|g{[]B ò¼¢\Ên\ä’\Ø\íßŠOğ”\ÖR\é\Éı£\Ù\éób\ì¡dl†g\r\Ï\Ş<\í\æ©ó\İzùwş¶)¬*r½¶óµõ\Ûğ\ßÌ»·}w2\é\ÚZ\Íg\Æ¸–\ã\Ë\Ë)\Ãm]§ õ#8ª:×mô\Û\ë»d\ÖO±\çy·‰“Œ\â4<¹ÁöçŠ»‡cu1\ÓuU‚\ÒyŒ\Ío-°“k1\Ëmm\Ã\0ŸPz\Ò\\h7I©\\\ŞiºŒv\Âì†š)­„\ÊX\07/\Ì8\ÔTşò\Ëşõo\ÄQú²Ÿ½k[O‹\Ë?M\r«iãº¶Š\â#˜\å@\ê}A-\"Œ(‚–¶<öQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0dZx›F»Ò®5H¯Y\Û³¼ŠÑ˜ˆ\êX#‚;\Óô_\éz\á™tû“#Ã27‰\âu¡*\à\Ç5\Ë\ê\Ş\Õ/?\á(òaM\Íõ­İ¢\È\ãdşR\ÆJœg(G#Ş´tK=Vû\Åskú†št\Ä[!g\r2Hòû‹„€A\Îy=(Zÿ\0^_\ç =¿®ÿ\0\å©\Õ\Ö%¿‹4KOû:\Ş\í\ç¸‰Š\ŞGŒ8\êvø\ÖË®ôe\É\È\í\\ƒ\ã\×4=\ãBi ¶c\Ô!¸‹\Ëd\É;Ê’y<÷¡na4ZK©\ê:v«u\åÜ¦§%¥¾m\İc*0|\Ìm\Üy\àœš\Û\Ö<M¤è³ˆµ\å‡*¿Ù¥h\ÔŒ³ª•_ÄŠ\å\î<9«?‡õ»U´\Í\ÅÎº/!_1>h¼\è\ÛvsÂ“ƒ\Ï4_jwZ\Ì)m©^\Ú\\\Û\ìE¦ °E	(Cy¨]w\å¹ş.8\Å÷Wõ\Ñ~£ûO·ü«\Ö<W¢\è·	o}v\ë+\Å\ç\ŞIqq¸\ìS\îj[ÿ\0hú}­\å\Å\ê˜.ñös4­6F~E@Kq\Ï²l´kø¼S\r\ä³.ˆ¶Œû\Ôşô>J\ã9\éß¥aX\éz·‡¬¼%zö1\Ü\\\éör\Ú\ÏfncG]\ÛN\äfm§py\èiµo\ë\×ü—\ŞJmôş¬¿\àı\Ç`)\ÑFş\×ÀXù†-\í«6»vx\Æ3Kk\â}\Z\ëLº\Ôc¾Uµ´$\\4¨Ñ´Ds†V\äpG9¯?\Ó4›ÿ\0øB\Şú\Ò2Á­\Ü\Şıš;³J¥\äRU<»‚:ó]Ÿ¡D4=a¦ğ\İûO}µeµ½Ô„ò\\*Œ\æ`¸\É\Ç\Ì:”º?\ë¢\Z\ßú\îÎG\×,5‘/Øš\àùX\İ\çZ\Ë^˜Ş£=;V•r·\×m®¯ú;\Øt½‰öh¯\î#u~w|\èNW\Æ\âMuG88\ëC2!ñ>‘6¬4±q*^32\"Ko,k#/P¬\Êº„\Ö\'‹üqe§#Y\é×õ$»‚t]\Ò(e/¶“Á9¬KÄ’\ë\Z,º•®¥-Í¥ù\êòMA^Õ“k€c‹\Ë÷‡ğ9©/t?C§\İh0\éi‚mT^¥ú\\Fª\Î%!Õˆm\Ãpx¡n¯ımÿ\0\î	i{[ÿ\0Àû\Í\ïx\Î\Ã@\Óõ(b»Æ«\r«Kk\Ê°vo*\\Ÿ\ïš¿u\â3K´²:•\Ñ[‹ˆ¾\\P¼®F[jBó\×®k\ÄZF»ñUµ†’uu\èó\Ñ\Ï\Z_\Ê•p\ädqFz(\Ö|7©G­\ÛjqY\ß\ßB\Ú|V²\Åc©Ibt$\ç;\Ô:Ş¼b’½¾\ï\×ş\0\Şÿ\0\éÿ\0ê¯¼Q¢\Ø\ØZ_M|¦\Ì}œÄ+M\Æ~U@Xñ\è8ª¾\Ö\å\×ô‰\ï¤p\ëö\Ùãˆ„\Ùûµrƒ\Îqµt\ÍO\ê:>ò\Ça\ĞË§½Ò™PJU‰Wc´FO ğk[À–\Ö\Z=À\Ô-M¬÷·IurŠò\0•$g±ª[¿\ëªı\ïeıtfÆ©™§\Ïy2\È\ÑÄ¹\"8\ÚF?ğş•\á?\Úx‡H†ğ¤\Ö\Òua$¤i‘\Î$e\nÀz‚k~\â?6	#Ô®~¢¸#J\Ön|?…/´×°’==­\ì\Ï\Ç#ch )\Ü~@©»\×ú\ïÿ\0\0®\ß\×c¡\ÑüU¢kw&\ÛO½\Ì\ÌUh\Ş=\éœnMÀo_uÈ­š\ât\Ë\roQ\×4;­CI].·’y\î\Èğœg\æÁ\é\Åv\ÕM.„¯3\ëÅš%®¤\Úsİ»İ£t‚\ŞI„dôQHSõ\"WÅš‘{ö;\ëõŠ`¡œ\İ\Ä@ô.\Ê@}XŠ\Ç\Ñ\á\Öü7w¨YÇ¡¾£ku}%\Ôwp\\D„	$H®A\Êô\È\Î@[U\Òõ\Û[¿Ac¤Ç¨A®€Rs: €˜\ÄdH’£AëŠl¿¯—üº\Ûúõÿ\0€o\ê¾/Ğ´‹Ái{x\é9Ep©o$ƒ\r¼ª‘’AÀ\ê{Tw^7ğí¥­­\ÔÚ ºF’\'X$aµH[\nv€Hv0k*\ÃÁ\Òi4W­)´‚\×NX§GPd–İA\É;s\Ç~\rg\éş\r½¹h­5($†\ÒK]B	9Srù·\né¼•ô8\ïO­½\à}\â]ı?¯‘¿«x\Â\É|1uª\és‰\Z2Ñ¡–\ÖvX\ä8•w¨’H½kL\êñÁ\á\Øõió\"u”ı)q }\Õ\0¶9ô\àu¬‹M\nğ\Øx²\ÒDiO\'\ÙÙ˜\ÊĞ¢8\é\È=y\â­xTjO\á\ØôıKK}>k{t·¦I„.\r¤\àq\ß“ø]·²üµ\Z\İ_\Ì_x¦\ß\Ä\Úeµ\ÂCq\r\ÃÀ²Èo*¢“\Ù]”+ş\×A\\¿€\ÓV°Ñ­4}KH{_°Û¬B\ãÏ\Òb¼eB\Ã#@®¢ªV¾„«\ÛSŸ\Òõ[\İ[\Ä7\ëncM#OclÄ®^yğ`öU\Î=\É>•müG¤¥¤÷mwˆ-\î¾\É#yoòË¸.\Üc\'\æ`28÷¬Ìºf±¬ø~\èùw-w-õ¾\î<ød;²¾»X•>œz\Ö¥¡\ë\é¥£Á¤µÅ½æ®—ñŞ¥\Äjˆb;V`\ÙH\àñJ:\Û\Ñ~jÿ\0¯\Ü9i{wü5·\é÷†¥\âL¾6W7›•P\ï6\Ò\ÌP…¶)ÛŸ|SõŸ\éZ+\Çõ\Ë$’©u8^W\Ú:¶\Ô€=H\Ås,ÓµvÕ®/4*şI£UKû{È–H\è&‰\Ï\ÌH\áI\ÇCQx\Ãú£x‘5„´½¿k$·š=?Qk9#u$\ä|\êN\ãÁ9¥\Ğl\î,®\í\ï­!»µ™&·™C\Ç\"†¡O\Ä7W\ÖZL³\é°,÷J\ÈK€x&iğ\éz%¥œ²ZG\ZgÈ’_5£$’AlœòO9­*§¾„­Œk^Xt»\ëıoÉ²Š\Ú\âe\ŞAEò•\ÈV9\'’\0ú\çŠf\â\ÍS_dwkX„\Ò\ÆÖ“#„9Á\n\Êg54ùµ/\r\Í»C\çG,Sª\ÌûB’+l$ô\Î1ø\Ö/…5W\â¯s=ƒY´Zu¼M9H;\ä<”$½3šKWo\ëm\ÆôWş·7|­Ë®\é\×73=»4WR\Â1K\ÕSÀe\r‚3\Æ*–…\ã{-[W¾\Óş\ÏyCr …¾\Å>lVË’˜NIb8\0÷¥ğÅ®«¤\êúµœúc5•\Õô·q\ß,É³k€B•\Î\ì\äc¦=\é4\È5m\'\Å\Z¸\ZK\ÜX\êWI:\İ\Ç<abZ£RCd\ìsB\İz~:Á\×\×ğ\×ş\Õ\Ö>±\âm\'EœE¨\Ï,9P\Åş\Í+F œeTªş$V\ÅyÏ4_jwZ\Ì)m©^\Ú\\\Û\ìE¦ °E	(Cy¨]w\å¹ş.8\Å&Æ‘\Ök\'\ÒtB‘\İ\İ\íXÌ‘\ÇO+\ÄBBû+7Dñ}¬~\ÑuMn\è%\Åü@…Š&v‘±“µxôUI´\ígH\ÖR´\ÒÎ¦—\ZdVr\Å\è’Bé“‘¼€T\î\çœñU4\İ[\Ñl|+{œ/.t\Ë9-nl\ÖdWö\È\Ä\í$Á\äpi\í\ë¿üSnŞŸ\åÿ\0¿£ø—S\Ôü%{ª\Ù$wW$P)‰€1	¶Œ¨Á\È^t:\Õõİ½\Ë\ßÀ°º]MaT®\è\Õ\ÈF\äH\0\ç¥gx\Âú\ÃG¸\Z…©µ\âö\â\ã\É.®Q^BÀ¤Œ\àö5\Ñ\Ñ\Û\Óüƒ¿«ıD$\0I\è+#Kñ>‘ª\Ş5­Ä¿iTó<©­ä…™s‚\ÊF\á\ã5{TK¹4Ë´°‘b¼h\\@\î2ğv“\íœW\á­ZOiw\×\Ö:¤_f´š;™¯u¹W‘¶sv‚Tÿ\0\nöâ…¿õ\æ7¢:}3\ÆZ«{ñy¥\Ü\"\ß‘¬¥~ğFe\n\ØÁ\èMeø¿\ÇZr5xRK¸ p wE\İ\"†Rø\Øi<š§¥xsV·\Ğ|#m-¦\ÙôıE¦¹_1–„K\Îs\Ï\Ş^z\ÕK\İ\Ä\é÷Z:G\Ú`›U©~—ª„3‰HubpÁ)ı¤¼ÿ\0\Ëş\Ü)l\íıoşK\ï;jóhº,—±\Ç%\ì’$\ÑÉ¯+°Us“\ì\r.±\âM+Bhb\Ô\îöO\"	O#m[j‚Bû=\ë3Uÿ\0‰·ô­8s—j\Şcf8‡şŒ?€¦ê¶º¾›â¹µ­?KşÕŠ\ê\É-š5\"x™ˆ?9\0©\İ\Î9ã¡©\é_\ë\ïõı|{ÿ\0i\Z}µü÷Šm®ˆ<H\Òù¤Œ¡\'€O­éš¶©h.­L¦\"Hl/d²\àÒ¹\êV\Zg„-\n$¯§Ş´÷EŒ2Iœg€\\+ºª\î/\ëó*\ê\Ó\\[\éw“\ÚF$¹Šx‚C8R@À\äóY\Ú¥¨\Ïö÷Õ Š\Ú+qG\nPbVrI=Ø­º\ËñNÚ¯†µM=&XZ\æ\ÚHÄŒpªJ‘“\íRİ“e%v‘[Jñ~‡«\Ş-¥\ã\É3£H€\ÛÊ‹\"¥”„õ¨¼/\â\Öõ\rb-\Ğù6’¢Â¢	¡•U—?¼(\ç9\Æ8\Ås:6¡y}\ã\Ş\ëL[\'²\Ó\'\æ9”‚c	\Âñ\Æ\ì\é\ÅoZ\Ú\êºou;”\Ó\Z\æ\ÃTò\ÚRdQE*Û•ˆcØ \ÕY^¿ğ	M´\ïıh ñ½’ø¢óF’\Şğ-¼q‘\"YNå™\áFÑ†\èrpx®®¹K¸5m;\Æw\Z¥¦’ú…¥\í¤01x\Ğ\Â\È\îrÁ\È\È!ûdñÒººKa½Ù•­x‹J\Ñ\ï\îJK6|¸£‰\å‘À\êB -\ëŠe\ç‰ô‹+[ë›—H® _\"C$‡®awşœV^­gª\éş.\Zõ†›ı©\ÖB\ÒHRdXŠ¹`Ë¼… ç‘‘\ĞSuh5‰5M\ÄVú;M5´3C>gŒH‚M¸ebv6ó\ÏCK§õ\æM\è6úe¶¤\×û­.œ¤OO!f\0’6ª’\ns‘\Æj8¼k\á\é´ùï£¿-o\"9I»/\Âav\î`\Ù\à€A\íX\Z…õO7O¸º¶X\Ìúµ\Íõ\ÌQÊ¤[$ºŸ\â9#8\Ï$öæ£¹ğ…õ­\ÛAanò\Ù\Ãı”\Èò&\æH%%\É\är \Ïj:ı\ßğ~\à\çÿ\0\0\é´\ßhZ Ÿ\ìW3A™\Ô[\Ê 8%T®[‚$:\Ñ\à\ín]wN¹¹™\íÙ¢º–!ŠXöª,€0l1T´\ß\r¾“\â‹I­VG°\Ò\è<²:’$–e“n>ö8\íÖ—\Ãº®“«\ê\Ös\éŒ\ÖWW\Ò\İ\Ç|³&Í®\nW;³‘˜÷§w\ìşûÿ\0?\×ğ°š\ìµm^ûOû=\äm\rÈ‚ûøq±[.Ja9$aˆ\àŞºº\å4\È5m\'\Å\Z¸\ZK\ÜX\êWI:\İ\Ç<abZ£RCd\ìs]]dXVfµ¯iú\"\Æ\×\ï:+‚AŠ\ÚY€©;\í÷\Å.£¢Á¨^\Û\İ\ËsÁ‚«Ü‘#`\ç\æU 7\ã\\ÿ\0‹\ìu»f!ƒR»Ò¾\ÌW\È\Ó\ï–\Õ\Öm\ßy‰eÜ¸À\Æx\çŠM±›Z†©pö\ÚUÎ±]\Û\Ş\\F@);\Æ°\äú\Ôvs\ëz„¡¸E–µ,ö¼LcGë´©9\0ôë‘šOi\×ZO„t­>ö?.\æ\ŞIpm§\Ó#ƒZºõ®›e5\í\ì\É´*^I\àNVWD\Æ\îÌ¥\ácûsGŠõ¡0O¹¢rb•	W_ÀƒøV­s~¶-k»ˆ	5¹¯DN0Ñ«¶T\Ø\íÁ>\æºJlQE†QE\0QE\0QE\0QE\0QE\0QE\0QE\0T¾½[{Y¥Œ¤P\İ{Ô±\\\Ã,FE–2eˆ`Bık¢k-I…¼\Êe2+&¥>gšK—†\Ù\í\ãk,+®\Í\Í\ëŠó–*¯6Û­¾ÿ\0òF\Ò\\\ÚZ›+4LÊ«*\Ãr€Ã‘\ê)#¹‚G)ñ»\áV\Ö>³=\å®\ëi£ÀQ‹¦}Gii$bÁş\Î\ë ™·„=ıª\Ö*m«GGşi~·ùµv½¿­\rQ©\Ú}©\à3\"•\ÜX\'Ó¯Z°\ÓÂ»ó,cg-–/\×Ò²¦‰mõi%kš)mò\ã¨u\çI\ï•m¦\\¢„d\\_J‡Š©7%v›\ï\ço¾\È|òW¹«q{.¨©$\ÎË»lC<z\Õkû-Y´Š]J\Ê\Ê\îù“\íp«„=şğ\à\Ö}\ìl\'\è\Ìb,‹Õ”=y§%´«ib\ïm$±D\Î^¹<;\Òú\ÕNy+h¿\Î\×%U•ö4¤;;k!’\Ş!±0UE˜\ãğ«PL%¶IˆC•T…¸\Ó\'H-\ÊÀ#&\ÂN=*£‰®´o!-\æI#\n]v\ï\ÇP+iVœd\Şú&½zô¹|\Í?‘¬—ÈŒ\é4l‹Õƒ4LÊ«*\Ãr€Ã‘\ê+wk§‚\Õ\í¢x<°»w7Ò›d“\Ésl\r¼\ÑyP\Ë:\àg\ØÔ¬T\î—.ÿ\0ğ\à}\âUšZ\Z3\ê¥\Üñ´r«a²Wğ§\rFİ¯E¢1iNsÀÇ­c\Ù\ÛÈ“\Ø\Æl\äI!vód\Ù\Ã{\î\ïV\î¤+«Á\"\Ú\Üˆ0fX	=Ç­D1\Z\æ—Yv\éeúÜŸi+_\ĞÑò\Ö\Şh!\æ¥¸%aGp­!$(=N=*zÀ\×ş\Íı·¡y\ÚÚ„¾sùwIe³;~ó\Ùş¸«÷\Ú}\Í\ÍÇ£=¾\Õ\0Û\äõ\éE\'¹»vØ¾\ÌK1Â’j›¨\Ûxñˆ#$\ãsg\å©éŠ¡«ù\ÖZ µó\Ş{›†n¬Xóô\Í.µa\'öM¬ñ£·t/\ê\ê:Š\ÑA[^¬‡\'};\Z_,–\ï%‡•xéŒªJ\0üù¤\Òo¿´l#ºòü½ùùwg8\ëQirA,rˆ4ùlúdIwø\Öf–—_Ø“\éf¸†\ácp$e\ÂIÀ\rø\ÑÊ¬× s;¦oCuo;2\Ã<R2ı\à	\\P·v\Ì#+q	¨C˜úZ\çt«Y\ZşÁ¢\Ó\å´\Ñ\İ6‰1\Ç÷¹\ç5½\ÚI§Y½Â›[†g§\ÈA=AªöJûÿ\0Z“\í¯cwUÕ¢±ˆñI;H¨c\Ş7\0{\ã­:\ëX³µ¼ŠÍœ´ò0]¨3·=	ô®v{)\ÒG´ù\á¯D¢\ácÜ¥3ı\î\ßJ\Òñ±¼³Y\\\ÈaewÀ\î:šjœt@\ç-®\æ\Õ\å\Â\ÚZ\Ëpÿ\0v5,G¯µEôf\Æ«£°•AÃ¸À\ÏA“Š\Î×¤7‘\ØØ e7’\Ê\Ã \ä\äv£\\·a}cpÖukex‘7H\à\í\ïQ++õ)\É\ßBæ—©-\íƒ]Ë²$\Ã%¸\0¹«\"ò\Ô\Ã\ç˜|¢q¿xÛŸL\×/ıŸx\ŞV\ŞU\Ùrdxv\r\Åsı\Ó\×\éV¬´´¹Óµ\Ñ.£iñq\æ‚\0ª•8\ê\îLg-Û»\ë[8\å’\âx\ãD\Ó8\'ƒ’\Ø\ëŠ\Èğßˆ§\×$vmş\Î\Õ\×Ì¶¹›fÉ£ÀÁÀ9Rrx# \Î{ô\èeš\Úúÿ\0T³‘\Ë\Ã\ä›/,\è\æ{\î=«ğd†/-Ÿ‡\ÛWşÁŠ\'K»mB\'U´(‘™\àpy\\>•“¥\Êh¥x\Üô#m\"\ÈQK¨!X@=pO¢Š’‚Š( Š( n\ím\ïm\Ş\Ú\î® a\â•«px5¦\Øip˜4ûk8I\ÜR\Ş%IõÀ­Q@Q@Q@Q@Q@Q@Q@\ÇkoÄ·ÁO0Q$Š€3\ã¦OSÙ©¨¢€\n(¢€\nl±¤±´r\"¼n\n²°\È`z‚)\ÔP7G\Òôÿ\0Ùºm—™÷ş\ÏÇ»\ë´\Õ\ê( Š( Š( Š( Š( Š( Š( ™,qÊ…%Et=U†E>Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0¯{R\Â|\È\Ññ\ÓrƒŠ}ªª[¢ª…P8\0`QErSÿ\0xŸ¢2ÿ\0—Ÿ\"Z(¢º\ÍBŠ( Š( Š( ]coG‘½\Î=ğ+jŠ+I|1şº¾&QEfXQE\0QE‹\'>.ˆqhHöù«jŠ+I\íOÕ‘\å\ëú ¢Š+2Â¢†\Ş\ZV†\ãiŸ|…\í€2q\Ô\àŸj(¡oòÿ\0 \èKEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPÿ\Ù');
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
INSERT INTO `hoja_ruta_componentes` VALUES ('123','1','Deshidratacion','MQ',213423.000,'un',150.000),('123','2','fresa','MP',12345.000,'kg',120.000),('123','3','operario','MO',123.000,'kg',12.000),('D0616','1','fresa  fresca','MP',2200.000,'kg',11.110),('D0616','1','jefe de almacÃ©n de materia prima','MO',5285.000,'h',0.018),('D0616','2','agua','IN',8.000,'l',0.700),('D0616','2','desinfectante','IN',33.260,'ml',1.000),('D0616','2','desmoldeante','IN',20.000,'ml',0.260),('D0616','2','operario','MO',5285.000,'h',2.000),('D0616','3','horno deshidratador','MQ',2763.000,'kg',1.000),('D0616','4','operario','MO',176.000,'kg',1.000),('D0616','5','operario','MO',1321.000,'kg',1.000),('D0616','6','operario','MO',250.000,'kg',1.000),('D0616','7','empaque bolsas y cajas','IN',50.000,'kg',1.000),('D0616','7','operario','MO',150.000,'kg',1.000),('D203','1','adecuacion','MO',264.000,'kg',1.000),('D203','1','agua','MP',50.000,'l',22.000),('D203','1','Banano','MP',2941.000,'kg',5.880),('D203','2','horno','MQ',2763.000,'kg',1.000),('D203','3','desenbandejado','MO',132.000,'kg',1.000),('D203','4','seleccion','MO',377.000,'kg',1.000),('D203','5','detector de metales','MQ',88.000,'kg',1.000),('pruebas','4','2','MO',111.000,'kg',1.000);
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
INSERT INTO `materiales` VALUES ('01','PiÃ±a','MPP','','www','www','kg',0.000),('02','Banano','MPF','','',NULL,'kg',0.000),('03','Mango','MPF','','',NULL,'kg',0.000),('04','Papaya','MPF','','',NULL,'kg',0.000),('05','Uchuva','MPF','','',NULL,'kg',0.000),('06','Fresa','MPF','','',NULL,'kg',0.000),('07','Pitahaya','MPF','','',NULL,'kg',0.000),('08','Ciruela','MPF','','',NULL,'kg',0.000),('09','Mora','MPF','','',NULL,'kg',0.000),('10','Kiwi','MPF','','',NULL,'kg',0.000),('100','Coco Hojuela Blanco Cuticula 0%','MPP','','',NULL,'kg',0.000),('101','Espinaca Molida','MPP','','',NULL,'kg',0.000),('102','Paprika Molida','MPP','','',NULL,'kg',0.000),('103','Uchuva Deshidratada','MPP','','',NULL,'kg',0.000),('104','Mango Deshidratado','MPP','','',NULL,'kg',0.000),('105','PiÃ±a Deshidratada','MPP','','',NULL,'kg',0.000),('106','Linaza Molida','MPP','','',NULL,'kg',0.000),('109','Bolsas 3 Kg','Insu','','',NULL,'kg',0.000),('11','Chontaduro','MPF','','',NULL,'kg',0.000),('110','Bolsas 5 Kg','Insu','','',NULL,'kg',0.000),('111','Bolsas 10 Kg','Insu','','',NULL,'kg',0.000),('112','Carambolo','MPF','','',NULL,'kg',0.000),('113','Bolsas Azules','Insu','','',NULL,'kg',0.000),('114','Manzana Deshidratada','MPP','','',NULL,'kg',0.000),('115','Mora Rodajas Deshidratada','MPP','','',NULL,'kg',0.000),('116','Aceite Desmoldeante','Insu','','',NULL,'kg',0.000),('118','Cilantro Deshidratado En Hojas','MPP','','',NULL,'kg',0.000),('119','Pimenton Rojo Escamas','MPP','','',NULL,'kg',0.000),('12','Borojo','MPF','','',NULL,'kg',0.000),('120','Piel de Uva Granular','MPP','','',NULL,'kg',0.000),('121','Pitahaya Rodajas','MPP','','',NULL,'kg',0.000),('122','Curcuma Polvo','MPP','','',NULL,'kg',0.000),('123','Fresa Deshidratada','MPP','','',NULL,'kg',0.000),('124','Noni En Polvo','MPP','','',NULL,'kg',0.000),('125','Ahuyama en Escamas','MPP','','',NULL,'kg',0.000),('126','Tomate Deshiadratado En Polvo','MPP','','',NULL,'kg',0.000),('127','Limon Granular','MPP','','',NULL,'kg',0.000),('128','Toronja Granular','MPP','','',NULL,'kg',0.000),('129','Banano Deshidratado Trozos','MPP','','',NULL,'kg',0.000),('13','Noni','MPF','','',NULL,'kg',0.000),('130','Cilantro Deshidratado Polvo','MPP','','',NULL,'kg',0.000),('131','Servicio De Maquila','MPP','','',NULL,'kg',0.000),('132','Remolacha Granular','MPP','','',NULL,'kg',0.000),('133','Ciruela En polvo','MPP','','',NULL,'kg',0.000),('134','Cajas pequeÃ±as','Insu','','',NULL,'kg',0.000),('135','Borojo Deshidratado','MPP','','',NULL,'kg',0.000),('136','Naranja Rodajas','MPP','','',NULL,'kg',0.000),('137','Guayaba Rodajas','MPP','','',NULL,'kg',0.000),('138','Cajas medianas','Insu','','',NULL,'kg',0.000),('139','Cajas grandes','Insu','','',NULL,'kg',0.000),('14','Cereza almibar','MPP','','',NULL,'kg',0.000),('140','Cajas de exportaciÃ³n','Insu','','',NULL,'kg',0.000),('141','Cajas de barras dispensadoras','Insu','','',NULL,'kg',0.000),('142','Cajas de barras maestro','Insu','','',NULL,'kg',0.000),('143','Desinfectante','Insu','','',NULL,'kg',0.000),('15','Breva en almibar','MPP','','',NULL,'kg',0.000),('16','Guayaba','MPF','','',NULL,'kg',0.000),('17','Toronja','MPF','','',NULL,'kg',0.000),('18','Limon','MPF','','',NULL,'kg',0.000),('19','Naranja','MPF','','',NULL,'kg',0.000),('20','Agraz','MPF','','',NULL,'kg',0.000),('21','Feijoa','MPF','','',NULL,'kg',0.000),('22','Guanabana','MPF','','',NULL,'kg',0.000),('23','Melon','MPF','','',NULL,'kg',0.000),('24','Maracuya','MPF','','',NULL,'kg',0.000),('25','Arandano','MPP','','',NULL,'kg',0.000),('26','Datiles','MPF','','',NULL,'kg',0.000),('27','Chachafruto','MPF','','',NULL,'kg',0.000),('28','Piel de Uva','MPF','','',NULL,'kg',0.000),('29','Uva Pasa','MPP','','',NULL,'kg',0.000),('30','Lulo','MPF','','',NULL,'kg',0.000),('31','Manzana','MPF','','',NULL,'kg',0.000),('32','Pera','MPF','','',NULL,'kg',0.000),('33','Durazno','MPF','','',NULL,'kg',0.000),('34','Aguacate','MPF','','',NULL,'kg',0.000),('35','Tomate Chonto','MPF','','',NULL,'kg',0.000),('36','Azucar','MPP','','',NULL,'kg',0.000),('37','Coco Hojuelas Blanco Cuticula','MPP','','',NULL,'kg',0.000),('38','Cascara de PiÃ±a','MPF','','',NULL,'kg',0.000),('39','Cascara de Mango','MPF','','',NULL,'kg',0.000),('40','Araza','MPF','','',NULL,'kg',0.000),('41','Anon','MPF','','',NULL,'kg',0.000),('42','Coco Hojuela Acaramelado','MPP','','',NULL,'kg',0.000),('43','Curuba','MPF','','',NULL,'kg',0.000),('44','Frambruesa','MPF','','',NULL,'kg',0.000),('45','Granadilla','MPF','','',NULL,'kg',0.000),('46','Mandarina','MPF','','',NULL,'kg',0.000),('47','Mangostan','MPF','','',NULL,'kg',0.000),('48','Papayuela','MPF','','',NULL,'kg',0.000),('49','Zapote','MPF','','',NULL,'kg',0.000),('50','Almendras','MPP','','',NULL,'kg',0.000),('51','Lechuga','MPF','','',NULL,'kg',0.000),('52','Calabacin (Zuchini)','MPF','','',NULL,'kg',0.000),('53','Acelga','MPF','','',NULL,'kg',0.000),('54','Cohombro','MPF','','',NULL,'kg',0.000),('55','Habichuela','MPF','','',NULL,'kg',0.000),('56','Repollitas','MPF','','',NULL,'kg',0.000),('57','Berro','MPF','','',NULL,'kg',0.000),('58','Semilla de amapola','MPP','','',NULL,'kg',0.000),('59','Remolacha','MPF','','',NULL,'kg',0.000),('60','Uva','MPF','','',NULL,'kg',0.000),('61','ChampiÃ±ones','MPF','','',NULL,'kg',0.000),('62','Pimenton','MPF','','',NULL,'kg',0.000),('63','Ahuyama','MPF','','',NULL,'kg',0.000),('64','Espinaca ','MPF','','',NULL,'kg',0.000),('65','Zanahoria','MPF','','',NULL,'kg',0.000),('66','Berenjena','MPF','','',NULL,'kg',0.000),('67','Guatila','MPF','','',NULL,'kg',0.000),('68','Rabano','MPF','','',NULL,'kg',0.000),('69','Aji','MPF','','',NULL,'kg',0.000),('70','Arverja','MPF','','',NULL,'kg',0.000),('71','Alcachofa','MPF','','',NULL,'kg',0.000),('72','Platano Harton','MPF','','',NULL,'kg',0.000),('73','Puerro','MPF','','',NULL,'kg',0.000),('74','Brocoli','MPF','','',NULL,'kg',0.000),('75','Apio','MPF','','',NULL,'kg',0.000),('76','Coliflor','MPF','','',NULL,'kg',0.000),('77','Esparragos','MPF','','',NULL,'kg',0.000),('78','Pepino','MPF','','',NULL,'kg',0.000),('79','Yacon','MPF','','',NULL,'kg',0.000),('80','Ã‘ame','MPF','','',NULL,'kg',0.000),('81','Repollo','MPF','','',NULL,'kg',0.000),('82','Papa','MPF','','',NULL,'kg',0.000),('83','Albahaca','MPP','','',NULL,'kg',0.000),('84','Laurel','MPP','','',NULL,'kg',0.000),('85','Oregano','MPP','','',NULL,'kg',0.000),('86','Paprika 0%','MPP','','',NULL,'kg',0.000),('87','Ajo','MPP','','',NULL,'kg',0.000),('88','Comino Molido','MPP','','',NULL,'kg',0.000),('89','Cilantro','MPP','','',NULL,'kg',0.000),('90','Perejil','MPP','','',NULL,'kg',0.000),('91','Pimienta Molida (Blanca)','MPP','','',NULL,'kg',0.000),('92','Nuez Moscada','MPP','','',NULL,'kg',0.000),('93','Jengibre','MPP','','',NULL,'kg',0.000),('94','Cebolla','MPP','','',NULL,'kg',0.000),('95','Tomillo','MPP','','',NULL,'kg',0.000),('96','Semillas de Cilantro Molida','MPP','','',NULL,'kg',0.000),('97','Estragon','MPP','','',NULL,'kg',0.000),('98','Canela','MPP','','','','kg',0.000),('99','Curcuma','MPP','','',NULL,'kg',0.000),('D0310','mango trozos','MPP','','','','kg',14188.000),('D0616','fresa trozos','MPP','','','','kg',30867.000),('D203','Banano mitades','MPP','','','','kg',8283.000),('Prueba','Prueba','MPP','','','','kg',30642.000);
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
INSERT INTO `users` VALUES ('admonanv','$2b$12$GFx7nQ/hrJ2aabsY2fBwYegyeFdbJVt3GJMHDpi7W5v10IHRVxGhW','Juan David Osorio','contabilidad@narnajaverde.com','','3218527363','','1','R',NULL,NULL,NULL,NULL,'3218527363','',NULL),('ahurtado','$2b$12$9ka/b3u6AhTQhBjQ3RFkKOfa16xmxoWihhlw5eFAvUm2RIZ9A.Zhm','Andres Hurtado Lopez','andres.hurtado.lopez@gmail.com','Calle 12 # 23-16','+57 6 3443804\n+57 313 746 6668','prueba de las notas','1','R','a812b7a0-9961-4f89-b217-dda9a615be00',NULL,NULL,NULL,'+57 6 3443804\n+57 313 746 6668','',NULL),('chenao','$2b$12$tNcgLs.J2W2mZrrctMua/uSGe577G7xKgizqiRqDXIZlcrpUrKqUm','Consuel Henao','','','3226547063','','1','R',NULL,NULL,NULL,NULL,'3226547063','',NULL),('cvalencia','$2b$12$fDTZMOY7Mee/OgZoYSgrzeIzpMig8dgt8a/dmSCqHa3rwPVCs1lji','carlos alberto valencia','','','','','1','R',NULL,NULL,NULL,NULL,'','',''),('ggaviria','$2b$12$h0RWsLZF/X/pOiFEBiFteeQjaeljWGgDfGDxFUZgZcUzkKjX7BnhS','german gaviria ','','','','','1','R','06ed702e-673b-4119-97e1-3ce2db946996',NULL,NULL,NULL,'','','mantenimiento '),('hviscue','$2b$12$KA1tNTMfZHfOfEGMPOsJIupEwXAozj9goKR9T5MN9.rI3GbZqPOGS','hector viscue','ddjasd@hotmail.com','','','','1',NULL,'09b68f34-7d3c-4076-aad8-7a0345bbf03f',NULL,NULL,NULL,NULL,NULL,''),('jcarmona','$2b$12$P7kIWd8T31EwVLc3MKBPceNFdpupqY9CRNlmFviwFMXCUqcqb3ryy','Julian Carmona','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('jgrisales','$2b$12$47ja/TNjSKS9gLKIT4A4MObqOKmFFZPy6RvxXnL7TvrKMMvR0CSGK','jacqueline grisales rodriguez','j.grisales@naranjaverde.com','','','','1','R','a6bab65e-9315-473e-909b-b993343d3bca',NULL,NULL,NULL,'','','mantenimiento'),('jrojas','$2b$12$KGCKfxFxlhxOQl/RWUtCu.2KHdzL2Evl2OpPFeevmVMW0tZYPIDmW','Janeth Rojas','','','3218527661','','1','R',NULL,NULL,NULL,NULL,'3218527661','',NULL),('lmartinez','$2b$12$y2oIWGvqv/WmGhLbEKneWOPZsjGmmlFjxzJFnTbVcfI70yDuC72Iy','Luisa Fernanda Martinez','produccion@naranjaverde.com','','3218527661','','1','R','fa72a2e2-10b5-4115-b20b-7f77878cb025',NULL,NULL,NULL,'3218527661','',NULL),('mmejia','$2b$12$J7cNC42K8w44bROH5zK1kOiHHT9zX6Onm7spYknSKFCmEoVZcGpIy','Martin Mejia','gerencia@naranjaverde.com','','','','1','R','830100e1-c845-4337-8acf-663ffdf7360f',NULL,NULL,NULL,'','',NULL),('pcastaÃ±o','$2b$12$KtpjOgo9b5ECLKmQrjcaeO7/0zVvDn//WXV6LvI1ShZbvWY5mcP8C','Paola CastaÃ±o','desarrollo@naranjaverde.com','','','','1','R','4f28cfdf-650a-4a08-aec4-4df36df3feec',NULL,NULL,NULL,'','',NULL),('ttttt',NULL,'ttt','tt','tt','222','22','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cca'),('vmarin','$2b$12$vZFEfijLim/HnIvTA5EYZ.uaZcHnSwwQndJgcxfWpemPQlgrWjJ1S','Viviana MarÃ­n','','','3226547063','','1','R','92166341-4b47-45d9-84c0-93f653e327ea',NULL,NULL,NULL,'3226547063','',NULL),('xherera',NULL,'Xiomara Herrera','calidad@naranjaverde.com','','','','1','R',NULL,NULL,NULL,NULL,'','',NULL);
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
INSERT INTO `users_secobjs` VALUES ('admonanv','20'),('admonanv','21'),('ahurtado','0'),('ahurtado','1'),('ahurtado','18'),('ahurtado','19'),('ahurtado','2'),('ahurtado','20'),('ahurtado','21'),('ahurtado','22'),('ahurtado','23'),('ahurtado','24'),('ahurtado','25'),('ahurtado','26'),('ahurtado','27'),('ahurtado','28'),('ahurtado','29'),('ahurtado','30'),('ahurtado','31'),('ahurtado','32'),('ahurtado','33'),('ahurtado','35'),('ahurtado','36'),('ahurtado','9'),('cvalencia','15'),('cvalencia','58'),('cvalencia','59'),('cvalencia','60'),('ggaviria','15'),('ggaviria','58'),('ggaviria','60'),('jgrisales','0'),('jgrisales','1'),('jgrisales','10'),('jgrisales','11'),('jgrisales','12'),('jgrisales','13'),('jgrisales','14'),('jgrisales','15'),('jgrisales','16'),('jgrisales','17'),('jgrisales','18'),('jgrisales','19'),('jgrisales','2'),('jgrisales','20'),('jgrisales','21'),('jgrisales','22'),('jgrisales','23'),('jgrisales','24'),('jgrisales','25'),('jgrisales','26'),('jgrisales','27'),('jgrisales','28'),('jgrisales','29'),('jgrisales','3'),('jgrisales','30'),('jgrisales','31'),('jgrisales','32'),('jgrisales','33'),('jgrisales','34'),('jgrisales','35'),('jgrisales','36'),('jgrisales','37'),('jgrisales','38'),('jgrisales','39'),('jgrisales','4'),('jgrisales','40'),('jgrisales','41'),('jgrisales','42'),('jgrisales','43'),('jgrisales','44'),('jgrisales','45'),('jgrisales','46'),('jgrisales','47'),('jgrisales','48'),('jgrisales','49'),('jgrisales','5'),('jgrisales','50'),('jgrisales','51'),('jgrisales','52'),('jgrisales','53'),('jgrisales','54'),('jgrisales','55'),('jgrisales','56'),('jgrisales','57'),('jgrisales','58'),('jgrisales','59'),('jgrisales','6'),('jgrisales','60'),('jgrisales','61'),('jgrisales','62'),('jgrisales','63'),('jgrisales','64'),('jgrisales','65'),('jgrisales','7'),('jgrisales','8'),('jgrisales','9'),('lmartinez','1'),('lmartinez','10'),('lmartinez','11'),('lmartinez','12'),('lmartinez','13'),('lmartinez','14'),('lmartinez','15'),('lmartinez','16'),('lmartinez','17'),('lmartinez','18'),('lmartinez','19'),('lmartinez','2'),('lmartinez','21'),('lmartinez','22'),('lmartinez','23'),('lmartinez','24'),('lmartinez','25'),('lmartinez','26'),('lmartinez','27'),('lmartinez','29'),('lmartinez','3'),('lmartinez','30'),('lmartinez','31'),('lmartinez','32'),('lmartinez','33'),('lmartinez','34'),('lmartinez','35'),('lmartinez','36'),('lmartinez','37'),('lmartinez','38'),('lmartinez','39'),('lmartinez','4'),('lmartinez','40'),('lmartinez','42'),('lmartinez','43'),('lmartinez','47'),('lmartinez','48'),('lmartinez','49'),('lmartinez','50'),('lmartinez','51'),('lmartinez','52'),('lmartinez','53'),('lmartinez','54'),('lmartinez','55'),('lmartinez','56'),('lmartinez','57'),('lmartinez','58'),('lmartinez','59'),('lmartinez','6'),('lmartinez','60'),('lmartinez','61'),('lmartinez','62'),('lmartinez','63'),('lmartinez','64'),('lmartinez','65'),('lmartinez','7'),('lmartinez','8'),('lmartinez','9'),('mmejia','0'),('pcastaÃ±o','0'),('pcastaÃ±o','10'),('pcastaÃ±o','12'),('pcastaÃ±o','13'),('pcastaÃ±o','14'),('pcastaÃ±o','15'),('pcastaÃ±o','17'),('pcastaÃ±o','24'),('pcastaÃ±o','25'),('pcastaÃ±o','26');
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
