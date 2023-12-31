-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comuna`
--

DROP TABLE IF EXISTS `comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comuna` (
  `Codigo` varchar(5) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Activo` varchar(1) NOT NULL DEFAULT 'V',
  `ProvinciaID` varchar(3) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `ProvinciaID` (`ProvinciaID`),
  CONSTRAINT `Comuna_ibfk_1` FOREIGN KEY (`ProvinciaID`) REFERENCES `provincia` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comuna`
--

LOCK TABLES `comuna` WRITE;
/*!40000 ALTER TABLE `comuna` DISABLE KEYS */;
INSERT INTO `comuna` VALUES ('01101','Iquique','V','011'),('01107','Alto Hospicio','V','011'),('01401','Pozo Almonte','V','014'),('01402','Cami├▒a','V','014'),('01403','Colchane','V','014'),('01404','Huara','V','014'),('01405','Pica','V','014'),('02101','Antofagasta','V','021'),('02102','Mejillones','V','021'),('02103','Sierra Gorda','V','021'),('02104','Taltal','V','021'),('02201','Calama','V','022'),('02202','Ollag├╝e','V','022'),('02203','San Pedro de Atacama','V','022'),('02301','Tocopilla','V','023'),('02302','Mar├¡a Elena','V','023'),('03101','Copiap├│','V','031'),('03102','Caldera','V','031'),('03103','Tierra Amarilla','V','031'),('03201','Cha├▒aral','V','032'),('03202','Diego de Almagro','V','032'),('03301','Vallenar','V','033'),('03302','Alto del Carmen','V','033'),('03303','Freirina','V','033'),('03304','Huasco','V','033'),('04101','La Serena','V','041'),('04102','Coquimbo','V','041'),('04103','Andacollo','V','041'),('04104','La Higuera','V','041'),('04105','Paiguano','V','041'),('04106','Vicu├▒a','V','041'),('04201','Illapel','V','042'),('04202','Canela','V','042'),('04203','Los Vilos','V','042'),('04204','Salamanca','V','042'),('04301','Ovalle','V','043'),('04302','Combarbal├í','V','043'),('04303','Monte Patria','V','043'),('04304','Punitaqui','V','043'),('04305','R├¡o Hurtado','V','043'),('05101','Valpara├¡so','V','051'),('05102','Casablanca','V','051'),('05103','Conc├│n','V','051'),('05104','Juan Fern├índez','V','051'),('05105','Puchuncav├¡','V','051'),('05107','Quintero','V','051'),('05109','Vi├▒a del Mar','V','051'),('05201','Isla┬á┬áde Pascua','V','052'),('05301','Los Andes','V','053'),('05302','Calle Larga','V','053'),('05303','Rinconada','V','053'),('05304','San Esteban','V','053'),('05401','La Ligua','V','054'),('05402','Cabildo','V','054'),('05403','Papudo','V','054'),('05404','Petorca','V','054'),('05405','Zapallar','V','054'),('05501','Quillota','V','055'),('05502','Calera','V','055'),('05503','Hijuelas','V','055'),('05504','La Cruz','V','055'),('05506','Nogales','V','055'),('05601','San Antonio','V','056'),('05602','Algarrobo','V','056'),('05603','Cartagena','V','056'),('05604','El Quisco','V','056'),('05605','El Tabo','V','056'),('05606','Santo Domingo','V','056'),('05701','San Felipe','V','057'),('05702','Catemu','V','057'),('05703','Llaillay','V','057'),('05704','Panquehue','V','057'),('05705','Putaendo','V','057'),('05706','Santa Mar├¡a','V','057'),('05801','Quilpu├®','V','058'),('05802','Limache','V','058'),('05803','Olmu├®','V','058'),('05804','Villa Alemana','V','058'),('06101','Rancagua','V','061'),('06102','Codegua','V','061'),('06103','Coinco','V','061'),('06104','Coltauco','V','061'),('06105','Do├▒ihue','V','061'),('06106','Graneros','V','061'),('06107','Las Cabras','V','061'),('06108','Machal├¡','V','061'),('06109','Malloa','V','061'),('06110','Mostazal','V','061'),('06111','Olivar','V','061'),('06112','Peumo','V','061'),('06113','Pichidegua','V','061'),('06114','Quinta de Tilcoco','V','061'),('06115','Rengo','V','061'),('06116','Requ├¡noa','V','061'),('06117','San Vicente','V','061'),('06201','Pichilemu','V','062'),('06202','La Estrella','V','062'),('06203','Litueche','V','062'),('06204','Marchihue','V','062'),('06205','Navidad','V','062'),('06206','Paredones','V','062'),('06301','San Fernando','V','063'),('06302','Ch├®pica','V','063'),('06303','Chimbarongo','V','063'),('06304','Lolol','V','063'),('06305','Nancagua','V','063'),('06306','Palmilla','V','063'),('06307','Peralillo','V','063'),('06308','Placilla','V','063'),('06309','Pumanque','V','063'),('06310','Santa Cruz','V','063'),('07101','Talca','V','071'),('07102','Constituci├│n','V','071'),('07103','Curepto','V','071'),('07104','Empedrado','V','071'),('07105','Maule','V','071'),('07106','Pelarco','V','071'),('07107','Pencahue','V','071'),('07108','R├¡o Claro','V','071'),('07109','San Clemente','V','071'),('07110','San Rafael','V','071'),('07201','Cauquenes','V','072'),('07202','Chanco','V','072'),('07203','Pelluhue','V','072'),('07301','Curic├│','V','073'),('07302','Huala├▒├®','V','073'),('07303','Licant├®n','V','073'),('07304','Molina','V','073'),('07305','Rauco','V','073'),('07306','Romeral','V','073'),('07307','Sagrada Familia','V','073'),('07308','Teno','V','073'),('07309','Vichuqu├®n','V','073'),('07401','Linares','V','074'),('07402','Colb├║n','V','074'),('07403','Longav├¡','V','074'),('07404','Parral','V','074'),('07405','Retiro','V','074'),('07406','San Javier','V','074'),('07407','Villa Alegre','V','074'),('07408','Yerbas Buenas','V','074'),('08101','Concepci├│n','V','081'),('08102','Coronel','V','081'),('08103','Chiguayante','V','081'),('08104','Florida','V','081'),('08105','Hualqui','V','081'),('08106','Lota','V','081'),('08107','Penco','V','081'),('08108','San Pedro de la Paz','V','081'),('08109','Santa Juana','V','081'),('08110','Talcahuano','V','081'),('08111','Tom├®','V','081'),('08112','Hualp├®n','V','081'),('08201','Lebu','V','082'),('08202','Arauco','V','082'),('08203','Ca├▒ete','V','082'),('08204','Contulmo','V','082'),('08205','Curanilahue','V','082'),('08206','Los ├ülamos','V','082'),('08207','Tir├║a','V','082'),('08301','Los ├üngeles','V','083'),('08302','Antuco','V','083'),('08303','Cabrero','V','083'),('08304','Laja','V','083'),('08305','Mulch├®n','V','083'),('08306','Nacimiento','V','083'),('08307','Negrete','V','083'),('08308','Quilaco','V','083'),('08309','Quilleco','V','083'),('08310','San Rosendo','V','083'),('08311','Santa B├írbara','V','083'),('08312','Tucapel','V','083'),('08313','Yumbel','V','083'),('08314','Alto Biob├¡o','V','083'),('09101','Temuco','V','091'),('09102','Carahue','V','091'),('09103','Cunco','V','091'),('09104','Curarrehue','V','091'),('09105','Freire','V','091'),('09106','Galvarino','V','091'),('09107','Gorbea','V','091'),('09108','Lautaro','V','091'),('09109','Loncoche','V','091'),('09110','Melipeuco','V','091'),('09111','Nueva Imperial','V','091'),('09112','Padre Las Casas','V','091'),('09113','Perquenco','V','091'),('09114','Pitrufqu├®n','V','091'),('09115','Puc├│n','V','091'),('09116','Saavedra','V','091'),('09117','Teodoro Schmidt','V','091'),('09118','Tolt├®n','V','091'),('09119','Vilc├║n','V','091'),('09120','Villarrica','V','091'),('09121','Cholchol','V','091'),('09201','Angol','V','092'),('09202','Collipulli','V','092'),('09203','Curacaut├¡n','V','092'),('09204','Ercilla','V','092'),('09205','Lonquimay','V','092'),('09206','Los Sauces','V','092'),('09207','Lumaco','V','092'),('09208','Pur├®n','V','092'),('09209','Renaico','V','092'),('09210','Traigu├®n','V','092'),('09211','Victoria','V','092'),('10101','Puerto Montt','V','101'),('10102','Calbuco','V','101'),('10103','Cocham├│','V','101'),('10104','Fresia','V','101'),('10105','Frutillar','V','101'),('10106','Los Muermos','V','101'),('10107','Llanquihue','V','101'),('10108','Maull├¡n','V','101'),('10109','Puerto Varas','V','101'),('10201','Castro','V','102'),('10202','Ancud','V','102'),('10203','Chonchi','V','102'),('10204','Curaco de V├®lez','V','102'),('10205','Dalcahue','V','102'),('10206','Puqueld├│n','V','102'),('10207','Queil├®n','V','102'),('10208','Quell├│n','V','102'),('10209','Quemchi','V','102'),('10210','Quinchao','V','102'),('10301','Osorno','V','103'),('10302','Puerto Octay','V','103'),('10303','Purranque','V','103'),('10304','Puyehue','V','103'),('10305','R├¡o Negro','V','103'),('10306','San Juan de la Costa','V','103'),('10307','San Pablo','V','103'),('10401','Chait├®n','V','104'),('10402','Futaleuf├║','V','104'),('10403','Hualaihu├®','V','104'),('10404','Palena','V','104'),('11101','Coihaique','V','111'),('11102','Lago Verde','V','111'),('11201','Ais├®n','V','112'),('11202','Cisnes','V','112'),('11203','Guaitecas','V','112'),('11301','Cochrane','V','113'),('11302','O\'Higgins','V','113'),('11303','Tortel','V','113'),('11401','Chile Chico','V','114'),('11402','R├¡o Ib├í├▒ez','V','114'),('12101','Punta Arenas','V','121'),('12102','Laguna Blanca','V','121'),('12103','R├¡o Verde','V','121'),('12104','San Gregorio','V','121'),('12201','Cabo de Hornos','V','122'),('12202','Ant├írtica','V','122'),('12301','Porvenir','V','123'),('12302','Primavera','V','123'),('12303','Timaukel','V','123'),('12401','Natales','V','124'),('12402','Torres del Paine','V','124'),('13101','Santiago','V','131'),('13102','Cerrillos','V','131'),('13103','Cerro Navia','V','131'),('13104','Conchal├¡','V','131'),('13105','El Bosque','V','131'),('13106','Estaci├│n Central','V','131'),('13107','Huechuraba','V','131'),('13108','Independencia','V','131'),('13109','La Cisterna','V','131'),('13110','La Florida','V','131'),('13111','La Granja','V','131'),('13112','La Pintana','V','131'),('13113','La Reina','V','131'),('13114','Las Condes','V','131'),('13115','Lo Barnechea','V','131'),('13116','Lo Espejo','V','131'),('13117','Lo Prado','V','131'),('13118','Macul','V','131'),('13119','Maip├║','V','131'),('13120','├æu├▒oa','V','131'),('13121','Pedro┬áAguirre Cerda','V','131'),('13122','Pe├▒alol├®n','V','131'),('13123','Providencia','V','131'),('13124','Pudahuel','V','131'),('13125','Quilicura','V','131'),('13126','Quinta Normal','V','131'),('13127','Recoleta','V','131'),('13128','Renca','V','131'),('13129','San Joaqu├¡n','V','131'),('13130','San Miguel','V','131'),('13131','San Ram├│n','V','131'),('13132','Vitacura','V','131'),('13201','Puente Alto','V','132'),('13202','Pirque','V','132'),('13203','San Jos├® de Maipo','V','132'),('13301','Colina','V','133'),('13302','Lampa','V','133'),('13303','Tiltil','V','133'),('13401','San Bernardo','V','134'),('13402','Buin','V','134'),('13403','Calera de Tango','V','134'),('13404','Paine','V','134'),('13501','Melipilla','V','135'),('13502','Alhu├®','V','135'),('13503','Curacav├¡','V','135'),('13504','Mar├¡a Pinto','V','135'),('13505','San Pedro','V','135'),('13601','Talagante','V','136'),('13602','El Monte','V','136'),('13603','Isla de Maipo','V','136'),('13604','Padre Hurtado','V','136'),('13605','Pe├▒aflor','V','136'),('14101','Valdivia','V','141'),('14102','Corral','V','141'),('14103','Lanco','V','141'),('14104','Los Lagos','V','141'),('14105','M├ífil','V','141'),('14106','Mariquina','V','141'),('14107','Paillaco','V','141'),('14108','Panguipulli','V','141'),('14201','La Uni├│n','V','142'),('14202','Futrono','V','142'),('14203','Lago Ranco','V','142'),('14204','R├¡o Bueno','V','142'),('15101','Arica','V','151'),('15102','Camarones','V','151'),('15201','Putre','V','152'),('15202','General Lagos','V','152'),('16101','Chill├ín','V','161'),('16102','Bulnes','V','161'),('16103','Chill├ín Viejo','V','161'),('16104','El Carmen','V','161'),('16105','Pemuco','V','161'),('16106','Pinto','V','161'),('16107','Quill├│n','V','161'),('16108','San Ignacio','V','161'),('16109','Yungay','V','161'),('16201','Quirihue','V','162'),('16202','Cobquecura','V','162'),('16203','Coelemu','V','162'),('16204','Ninhue','V','162'),('16205','Portezuelo','V','162'),('16206','R├ínquil','V','162'),('16207','Treguaco','V','162'),('16301','San Carlos','V','163'),('16302','Coihueco','V','163'),('16303','├æiqu├®n','V','163'),('16304','San Fabi├ín','V','163'),('16305','San Nicol├ís','V','163');
/*!40000 ALTER TABLE `comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condicion_venta`
--

DROP TABLE IF EXISTS `condicion_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condicion_venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condicion_venta`
--

LOCK TABLES `condicion_venta` WRITE;
/*!40000 ALTER TABLE `condicion_venta` DISABLE KEYS */;
INSERT INTO `condicion_venta` VALUES (1,'Venta Directa'),(2,'Receta Simple'),(3,'Receta Retenida'),(4,'Receta Cheque'),(5,'Receta Retenida con Control de Existencia');
/*!40000 ALTER TABLE `condicion_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id_solicitud` int NOT NULL AUTO_INCREMENT,
  `rut_farmacia` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `email` varchar(256) NOT NULL,
  `consulta` varchar(500) NOT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `contacto_index` (`rut_farmacia`,`id_sucursal`) USING BTREE,
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`rut_farmacia`) REFERENCES `farmacia` (`rut_farmacia`),
  CONSTRAINT `contacto_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,937670022,1,'albaasddno@gmail.com','asdf'),(2,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasdf'),(3,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasdf'),(4,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasdf'),(5,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasdf'),(6,937670022,1,'zhinus.d.m.s@gmail.com','afasdfs'),(7,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasdfasdf'),(8,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(9,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasf'),(10,937670022,1,'s.maramasdbiosandoval@gmail.com','asdfasf'),(11,937670021,2,'s.marambiosandoval@gmail.com','afsasdf'),(12,937670021,2,'s.marambiosandoval@gmail.com','asdfasf'),(13,937670021,2,'s.marambiosandoval@gmail.com','asdfasdf'),(14,937670021,2,'s.marambiosandoval@gmail.com','asdfas'),(15,937670021,2,'s.marambiosandoval@gmail.com','asdf'),(16,937670021,2,'sebams.dev@gmail.com','asdfsa'),(17,937670021,2,'sebams.dev@gmail.com','asdfsa'),(18,937670021,2,'s.marambiosandoval@gmail.com','asdfas'),(19,937670021,2,'s.marambiosandoval@gmail.com','asdf'),(20,937670021,2,'s.marambiosandoval@gmail.com','ASDFASDF'),(21,937670021,2,'s.marambiosandoval@gmail.com','ASDFASDF'),(22,937670021,2,'s.marambiosandoval@gmail.com','ASDFASDF'),(23,937670021,2,'s.marambiosandoval@gmail.com','asdfasf'),(24,937670021,2,'s.marambiosandoval@gmail.com','asdfasfd'),(25,937670021,2,'s.marambiosandoval@gmail.com','asdfa'),(26,937670021,2,'s.marambiosandoval@gmail.com','asdfasdf'),(27,937670021,2,'s.marambiosandoval@gmail.com','asdffdsa'),(28,937670022,1,'s.marambiosandoval@gmail.com','asdfdsf'),(29,937670022,1,'s.marambiosandoval@gmail.com','asdfasdf'),(30,937670022,1,'s.marambiosandoval@gmail.com','asdfasdf'),(31,937670022,1,'s.marambiosandoval@gmail.com','asdfasdf'),(32,937670022,1,'s.marambiosandoval@gmail.com','asdfafd'),(33,937670022,1,'s.marambiosandoval@gmail.com','asdfafd'),(34,937670022,1,'s.marambiosandoval@gmail.com','asfads'),(35,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(36,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(37,937670022,1,'s.marambiosandoval@gmail.com','asdffds'),(38,937670022,1,'s.marambiosandoval@gmail.com','afsasdf'),(39,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(40,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(41,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(42,937670022,1,'s.marambiosandoval@gmail.com','asdfasd'),(43,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(44,937670022,1,'s.marambiosandoval@gmail.com','asdfasfd'),(45,937670022,1,'s.marambiosandoval@gmail.com','sadfasdf'),(46,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(47,937670022,1,'soporteenergizavirtual@gmail.com','asdf'),(48,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(49,937670022,1,'s.marambiosandoval@gmail.com','asdfasd'),(50,937670022,1,'s.marambiosandoval@gmail.com','asdf'),(51,937670022,1,'sebams.dev@gmail.com','asd');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlador`
--

DROP TABLE IF EXISTS `controlador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `archivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlador`
--

LOCK TABLES `controlador` WRITE;
/*!40000 ALTER TABLE `controlador` DISABLE KEYS */;
INSERT INTO `controlador` VALUES (1,'CompraController.php'),(2,'ContactoController.php'),(3,'DetalleVentaController.php'),(4,'FarmaciaController.php'),(5,'LoginController.php'),(6,'LaboratorioController.php'),(7,'LoginController.php'),(8,'LoteController.php'),(9,'Logout.php'),(10,'PasarelaController.php'),(11,'PresentacionController.php'),(12,'PDFController.php'),(13,'ProductoController.php'),(14,'ProveedorController.php'),(15,'recuperar.php'),(16,'SucursalController.php'),(17,'TipoController.php'),(18,'UsuarioController.php'),(19,'VentaController.php'),(20,'ventaProductoController.php'),(21,'prueba.php');
/*!40000 ALTER TABLE `controlador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `det_cantidad` int NOT NULL,
  `det_vencimiento` date NOT NULL,
  `id__det_lote` int NOT NULL,
  `id__det_prod` int NOT NULL,
  `lote_id_prov` int NOT NULL,
  `id_det_venta` int NOT NULL,
  `estado_activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `id_det_venta_idx` (`id_det_venta`),
  KEY `dv_index` (`id__det_lote`,`id__det_prod`,`lote_id_prov`),
  KEY `id__det_prod` (`id__det_prod`),
  KEY `lote_id_prov` (`lote_id_prov`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id__det_prod`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`lote_id_prov`) REFERENCES `proveedor` (`id_proveedor`),
  CONSTRAINT `detalle_venta_ibfk_3` FOREIGN KEY (`id__det_lote`) REFERENCES `lote` (`id_lote`),
  CONSTRAINT `id_det_venta` FOREIGN KEY (`id_det_venta`) REFERENCES `venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (2,1,'2025-01-19',3,13,1,2,0),(3,1,'2025-01-19',3,13,1,3,0),(4,1,'0000-00-00',5,23,1,3,0),(5,1,'2023-04-08',4,14,1,3,0),(6,1,'2025-01-19',3,13,1,4,0),(7,1,'0000-00-00',5,23,1,4,0),(8,1,'2025-01-19',3,13,1,5,0),(9,1,'0000-00-00',5,23,1,5,0),(10,1,'2023-05-04',13,37,1,6,0),(11,1,'2023-05-04',13,37,1,7,0),(12,1,'2023-05-04',13,37,1,8,0),(13,3,'2023-05-04',13,37,1,9,0),(14,1,'2023-05-04',13,37,1,10,0),(15,1,'2023-05-04',13,37,1,11,0),(16,1,'2023-05-04',13,37,1,30,0),(17,1,'2023-05-04',13,37,1,31,0),(18,1,'2023-05-04',13,37,1,32,0),(19,0,'2000-02-10',12,36,1,32,0),(20,1,'2029-07-11',26,36,1,32,0),(21,1,'0000-00-00',20,42,1,32,0),(22,1,'2023-05-31',21,41,1,32,0),(23,1,'2023-05-04',13,37,1,33,0),(24,1,'2029-07-11',26,36,1,33,0),(25,1,'0000-00-00',20,42,1,33,0),(26,1,'2023-05-31',21,41,1,33,0),(27,1,'2023-05-04',13,37,1,34,0),(28,1,'2029-07-11',26,36,1,34,0),(29,1,'0000-00-00',20,42,1,34,0),(30,1,'2023-05-31',21,41,1,34,0),(31,1,'2023-05-04',13,37,1,35,0),(32,1,'2029-07-11',26,36,1,35,0),(33,1,'0000-00-00',20,42,1,35,0),(34,1,'2023-05-31',21,41,1,35,0),(35,1,'2023-05-04',13,37,1,36,0),(36,1,'2029-07-11',26,36,1,36,0),(37,1,'0000-00-00',20,42,1,36,0),(38,1,'2023-05-31',21,41,1,36,0),(39,1,'2023-05-04',13,37,1,37,0),(40,1,'2029-07-11',26,36,1,37,0),(41,1,'0000-00-00',20,42,1,37,0),(42,1,'2023-05-31',21,41,1,37,0),(43,1,'2023-05-04',13,37,1,38,0),(44,1,'2029-07-11',26,36,1,38,0),(45,1,'0000-00-00',20,42,1,38,0),(46,1,'2023-05-31',21,41,1,38,0),(47,1,'2023-05-04',13,37,1,39,0),(48,1,'2029-07-11',26,36,1,39,0),(49,1,'0000-00-00',20,42,1,39,0),(50,1,'2023-05-31',21,41,1,39,0),(51,1,'2023-05-04',13,37,1,40,0),(52,1,'2029-07-11',26,36,1,40,0),(53,1,'0000-00-00',20,42,1,40,0),(54,1,'2023-05-31',21,41,1,40,0),(55,1,'2023-05-04',13,37,1,41,0),(56,1,'2029-07-11',26,36,1,41,0),(57,1,'0000-00-00',20,42,1,41,0),(58,1,'2023-05-31',21,41,1,41,0),(59,1,'2023-05-04',13,37,1,42,0),(60,1,'2029-07-11',26,36,1,42,0),(61,1,'0000-00-00',20,42,1,42,0),(62,1,'2023-05-31',21,41,1,42,0),(63,3,'2023-05-04',13,37,1,43,0),(64,1,'2029-07-11',26,36,1,43,0),(65,2,'0000-00-00',20,42,1,43,0),(66,3,'2023-05-31',21,41,1,43,0),(67,3,'2023-05-04',13,37,1,44,0),(68,1,'2029-07-11',26,36,1,44,0),(69,2,'0000-00-00',20,42,1,44,0),(70,3,'2023-05-31',21,41,1,44,0),(71,3,'2023-05-04',13,37,1,45,0),(72,1,'2029-07-11',26,36,1,45,0),(73,2,'0000-00-00',20,42,1,45,0),(74,3,'2023-05-31',21,41,1,45,0),(75,1,'2029-07-11',26,36,1,46,0),(76,1,'2029-07-11',26,36,1,47,0),(77,1,'2029-07-11',26,36,1,48,0),(78,1,'2029-07-11',26,36,1,49,0),(79,1,'2029-07-11',26,36,1,50,0),(80,1,'2023-04-08',4,14,1,51,0),(81,1,'0000-00-00',20,42,1,52,0),(82,1,'2023-05-31',21,41,1,52,0),(83,1,'2029-07-11',26,36,1,52,0),(84,1,'0000-00-00',20,42,1,53,0),(85,1,'2023-05-31',21,41,1,53,0),(86,1,'2029-07-11',26,36,1,53,0),(87,1,'0000-00-00',20,42,1,54,0),(88,1,'2023-05-31',21,41,1,54,0),(89,1,'2029-07-11',26,36,1,54,0),(90,1,'0000-00-00',20,42,1,55,0),(91,1,'2023-05-31',21,41,1,55,0),(92,1,'2029-07-11',26,36,1,55,0),(93,1,'0000-00-00',20,42,1,56,0),(94,1,'2023-05-31',21,41,1,56,0),(95,1,'2029-07-11',26,36,1,56,0),(96,1,'0000-00-00',20,42,1,57,0),(97,1,'2023-05-31',21,41,1,57,0),(98,1,'2029-07-11',26,36,1,57,0),(99,1,'0000-00-00',20,42,1,58,0),(100,1,'2023-05-31',21,41,1,58,0),(101,1,'2029-07-11',26,36,1,58,0),(102,1,'0000-00-00',20,42,1,59,0),(103,1,'2023-05-31',21,41,1,59,0),(104,1,'2029-07-11',26,36,1,59,0),(105,1,'0000-00-00',20,42,1,60,0),(106,1,'2023-05-31',21,41,1,60,0),(107,1,'2029-07-11',26,36,1,60,0),(108,1,'0000-00-00',20,42,1,61,0),(109,1,'2023-05-31',21,41,1,61,0),(110,1,'2029-07-11',26,36,1,61,0),(111,1,'0000-00-00',20,42,1,62,0),(112,1,'2023-05-31',21,41,1,62,0),(113,1,'2029-07-11',26,36,1,62,0),(114,1,'0000-00-00',20,42,1,63,0),(115,1,'2023-05-31',21,41,1,63,0),(116,1,'2029-07-11',26,36,1,63,0),(117,1,'0000-00-00',20,42,1,64,0),(118,1,'2023-05-31',21,41,1,64,0),(119,1,'2029-07-11',26,36,1,64,0),(120,1,'0000-00-00',20,42,1,65,0),(121,1,'2023-05-31',21,41,1,65,0),(122,1,'2029-07-11',26,36,1,65,0),(123,1,'0000-00-00',20,42,1,66,0),(124,1,'2023-05-31',21,41,1,66,0),(125,1,'2029-07-11',26,36,1,66,0),(126,1,'0000-00-00',20,42,1,67,0),(127,1,'2023-05-31',21,41,1,67,0),(128,1,'2029-07-11',26,36,1,67,0),(129,1,'0000-00-00',20,42,1,68,0),(130,1,'2023-05-31',21,41,1,68,0),(131,1,'2029-07-11',26,36,1,68,0),(132,1,'0000-00-00',20,42,1,69,0),(133,1,'2023-05-31',21,41,1,69,0),(134,1,'2029-07-11',26,36,1,69,0),(135,1,'0000-00-00',20,42,1,70,0),(136,1,'2023-05-31',21,41,1,70,0),(137,1,'2029-07-11',26,36,1,70,0),(138,1,'0000-00-00',20,42,1,71,0),(139,1,'2023-05-31',21,41,1,71,0),(140,1,'2029-07-11',26,36,1,71,0),(141,1,'0000-00-00',20,42,1,72,0),(142,1,'2023-05-31',21,41,1,72,0),(143,1,'2029-07-11',26,36,1,72,0),(144,1,'0000-00-00',20,42,1,73,0),(145,1,'2023-05-31',21,41,1,73,0),(146,1,'2029-07-11',26,36,1,73,0),(147,1,'0000-00-00',20,42,1,74,0),(148,1,'2023-05-31',21,41,1,74,0),(149,1,'2029-07-11',26,36,1,74,0),(150,1,'0000-00-00',20,42,1,75,0),(151,1,'2023-05-31',21,41,1,75,0),(152,1,'2029-07-11',26,36,1,75,0),(153,1,'0000-00-00',20,42,1,76,0),(154,1,'2023-05-31',21,41,1,76,0),(155,1,'2029-07-11',26,36,1,76,0),(156,1,'0000-00-00',20,42,1,77,0),(157,1,'2023-05-31',21,41,1,77,0),(158,1,'2029-07-11',26,36,1,77,0),(159,1,'0000-00-00',20,42,1,78,0),(160,1,'2023-05-31',21,41,1,78,0),(161,1,'2029-07-11',26,36,1,78,0),(162,1,'0000-00-00',20,42,1,79,0),(163,1,'2023-05-31',21,41,1,79,0),(164,1,'2029-07-11',26,36,1,79,0),(165,1,'0000-00-00',20,42,1,80,0),(166,1,'2023-05-31',21,41,1,80,0),(167,1,'2029-07-11',26,36,1,80,0),(168,1,'0000-00-00',20,42,1,81,0),(169,1,'2023-05-31',21,41,1,81,0),(170,1,'2029-07-11',26,36,1,81,0),(171,1,'0000-00-00',20,42,1,82,0),(172,1,'2023-05-31',21,41,1,82,0),(173,1,'2029-07-11',26,36,1,82,0),(174,1,'0000-00-00',20,42,1,83,0),(175,1,'2023-05-31',21,41,1,83,0),(176,1,'2029-07-11',26,36,1,83,0),(177,1,'0000-00-00',20,42,1,84,0),(178,1,'2023-05-31',21,41,1,84,0),(179,1,'2029-07-11',26,36,1,84,0),(180,1,'2023-05-04',13,37,1,85,0),(181,1,'2025-01-19',3,13,1,86,0),(182,1,'0000-00-00',5,23,1,86,0),(183,1,'2025-01-19',3,13,1,87,0),(184,1,'0000-00-00',5,23,1,87,0),(185,1,'2025-01-19',3,13,1,88,0),(186,1,'0000-00-00',5,23,1,88,0),(187,1,'2029-07-11',26,36,1,91,0),(188,1,'0000-00-00',20,42,1,91,0),(189,0,'0000-00-00',32,42,1,91,0),(190,1,'2029-07-11',26,36,1,92,0),(191,1,'0000-00-00',20,42,1,92,0),(192,0,'0000-00-00',32,42,1,92,0),(193,1,'2029-07-11',26,36,1,93,0),(194,1,'0000-00-00',20,42,1,93,0),(195,0,'0000-00-00',32,42,1,93,0),(196,1,'2029-07-11',26,36,1,94,0),(197,1,'0000-00-00',20,42,1,94,0),(198,0,'0000-00-00',32,42,1,94,0),(199,1,'2029-07-11',26,36,1,95,0),(200,1,'0000-00-00',20,42,1,95,0),(201,0,'0000-00-00',32,42,1,95,0),(202,1,'2029-07-11',26,36,1,96,0),(203,1,'0000-00-00',20,42,1,96,0),(204,0,'0000-00-00',32,42,1,96,0),(205,1,'2029-07-11',26,36,1,97,0),(206,1,'0000-00-00',20,42,1,97,0),(207,0,'0000-00-00',32,42,1,97,0),(208,1,'2029-07-11',26,36,1,98,0),(209,1,'0000-00-00',20,42,1,98,0),(210,0,'0000-00-00',32,42,1,98,0),(211,1,'2023-05-04',13,37,1,99,0),(212,1,'0000-00-00',20,42,1,99,0),(213,0,'0000-00-00',32,42,1,99,0),(214,1,'0000-00-00',20,42,1,100,0),(215,0,'0000-00-00',32,42,1,100,0),(216,1,'2029-07-11',26,36,1,100,0),(217,1,'0000-00-00',20,42,1,101,0),(218,0,'0000-00-00',32,42,1,101,0),(219,1,'2029-07-11',26,36,1,101,0),(220,1,'2029-07-11',26,36,1,102,0),(221,1,'2029-07-11',26,36,1,103,0),(222,1,'2029-07-11',26,36,1,104,0);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_tributarios`
--

DROP TABLE IF EXISTS `documentos_tributarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentos_tributarios` (
  `FOLIO` varchar(30) NOT NULL,
  `rut_emisor` int NOT NULL,
  `id_sucursal_emisor` int NOT NULL,
  `rut_receptor` int NOT NULL DEFAULT '666666666',
  `giro_receptor` varchar(45) NOT NULL DEFAULT '-',
  `razon_receptor` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '-',
  `direccion_receptor` varchar(100) NOT NULL DEFAULT '-',
  `comuna_receptor` varchar(5) NOT NULL DEFAULT '12202',
  `tipo_documento` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FOLIO`),
  KEY `facturas_datos_index` (`rut_emisor`,`id_sucursal_emisor`,`comuna_receptor`),
  KEY `comuna_receptor` (`comuna_receptor`),
  KEY `id_sucursal_emisor` (`id_sucursal_emisor`),
  KEY `index_tipo_doc` (`tipo_documento`),
  CONSTRAINT `documentos_tributarios_ibfk_1` FOREIGN KEY (`comuna_receptor`) REFERENCES `comuna` (`Codigo`),
  CONSTRAINT `documentos_tributarios_ibfk_2` FOREIGN KEY (`id_sucursal_emisor`) REFERENCES `sucursal` (`id_sucursal`),
  CONSTRAINT `documentos_tributarios_ibfk_3` FOREIGN KEY (`rut_emisor`) REFERENCES `farmacia` (`rut_farmacia`),
  CONSTRAINT `documentos_tributarios_ibfk_4` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_doc_sii` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_tributarios`
--

LOCK TABLES `documentos_tributarios` WRITE;
/*!40000 ALTER TABLE `documentos_tributarios` DISABLE KEYS */;
INSERT INTO `documentos_tributarios` VALUES ('0',937670021,1,856569071,'factura sin folio/prueba','factura sin folio/prueba','factura sin folio/prueba','09116','33','2023-06-07 17:08:28'),('13674',937670022,1,19274535,'asdf','asdf','asdfas','14106','33','2023-06-07 17:11:54'),('13690',937670022,1,19274535,'asdfasdf','asdf','asdfasdf','09119','33','2023-06-13 13:37:25'),('13708',937670022,1,19274535,'asdfasdf','asdf','asdfasdf','14103','33','2023-06-16 21:14:16'),('190753',937670022,1,666666666,'-','-','-','12202','39','2023-06-19 17:04:10'),('190755',937670022,1,666666666,'-','-','-','12202','39','2023-06-19 17:34:07'),('190818',937670022,1,666666666,'-','-','-','12202','39','2023-06-20 19:29:22');
/*!40000 ALTER TABLE `documentos_tributarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmacia` (
  `rut_farmacia` int NOT NULL AUTO_INCREMENT,
  `nombre_farmacia` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `logo_farmacia` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `estado_activo` tinyint(1) NOT NULL,
  `giro` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET',
  PRIMARY KEY (`rut_farmacia`)
) ENGINE=InnoDB AUTO_INCREMENT=937670029 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmacia`
--

LOCK TABLES `farmacia` WRITE;
/*!40000 ALTER TABLE `farmacia` DISABLE KEYS */;
INSERT INTO `farmacia` VALUES (937670021,'CRUZBRAND','',1,'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET'),(937670022,'BLUEFARMA','',1,'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET'),(937670025,'Farmacia de urgencia','',1,'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET'),(937670026,'Farmacia Montt','',1,'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET'),(937670027,'Farmacia Solufar','',1,'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET'),(937670028,'Farmacia Farmaven','',1,'VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V├ìA INTERNET');
/*!40000 ALTER TABLE `farmacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `id_laboratorio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'OPKO','lab_default.png'),(2,'Laboratorio Chile S.A.','lab_default.png'),(5,'Laboratorios Recalcine S.A.','lab_default.png'),(6,'Novartis Chile S.A.','lab_default.png'),(7,'Laboratorios Wyeth LLC.','lab_default.png'),(8,'Laboratorios Andr├│maco S.A.','lab_default.png'),(9,'Laboratorio Biotoscana Farma Ltda.','lab_default.png'),(10,'Laboratorio Biosano S.A.','lab_default.png'),(11,'Abbott Laboratories de Chile Ltda.','lab_default.png'),(12,'Laboratorio Pasteur S.A.','lab_default.png'),(13,'Bristol-Myers Squibb de Chile','lab_default.png'),(14,'Pharmaris Chile S.p.A.','lab_default.png'),(15,'Recben Xenerics Farmac├®utica Ltda.','lab_default.png'),(16,'Pharma Investi de Chile S.A.','lab_default.png'),(17,'Megalabs Chile S.A.','lab_default.png'),(18,'Laboratorios Silesia S.A.','lab_default.png'),(19,'Alpes Chemie S.A.','lab_default.png'),(20,'Gr├╝nenthal Chilena Ltda.','lab_default.png'),(21,'Ferrer Chile S.A.','lab_default.png'),(22,'AstraZeneca S.A.','lab_default.png'),(23,'AstraZeneca Farmac├®utica Chile Ltda.','lab_default.png'),(24,'Pfizer Chile S.A.','lab_default.png'),(25,'Merck S.A.','lab_default.png'),(26,'Mepro S.A.','lab_default.png'),(27,'BPH S.A.','lab_default.png'),(28,'Laboratorios Lafi Ltda.','lab_default.png'),(29,'Vitafarma Laboratorio Ltda.','lab_default.png'),(30,'Droguer├¡a Hofmann S.A.C.','lab_default.png'),(31,'Laboratorios MDK S.A.','lab_default.png'),(32,'Laboratorio Reccius Ltda.','lab_default.png'),(33,'Mintlab Co. S.A.','lab_default.png'),(34,'Eurofarma Chile S.A.','lab_default.png'),(35,'Arama Natural Products Distribuidora Ltda.','lab_default.png'),(36,'Central de Compras del Extrasistema S.A.','lab_default.png'),(37,'Sanofi-Aventis de Chile S.A.','lab_default.png'),(38,'Instituto Sanitas S.A.','lab_default.png'),(39,'Ethon Pharmaceuticals S.p.A.','lab_default.png'),(40,'Pharmamerica Ltda.','lab_default.png'),(41,'Opko Chile S.A.','lab_default.png'),(42,'Exportadora y Comercializadora de Productos F','lab_default.png'),(43,'Interpharma S.A.','lab_default.png');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lote` (
  `id_lote` int NOT NULL AUTO_INCREMENT,
  `stock` int NOT NULL,
  `vencimiento` date NOT NULL,
  `lote_id_prod` int NOT NULL,
  `lote_id_prov` int NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_lote`),
  KEY `lote_id_prod_idx` (`lote_id_prod`),
  KEY `lote_id_prov_idx` (`lote_id_prov`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON UPDATE CASCADE,
  CONSTRAINT `lote_id_prod` FOREIGN KEY (`lote_id_prod`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `lote_id_prov` FOREIGN KEY (`lote_id_prov`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (3,93,'2025-01-19',13,1,2),(4,8,'2023-04-08',14,1,2),(5,44,'0000-00-00',23,1,2),(6,11,'0000-00-00',18,1,3),(7,10,'0000-00-00',18,1,3),(8,10,'0000-00-00',34,1,9),(9,21,'2023-04-08',34,1,9),(10,10,'2023-04-15',34,1,9),(12,10,'0000-00-00',35,1,10),(13,64,'2023-05-04',37,1,1),(19,0,'2023-05-12',42,1,3),(20,32,'0000-00-00',42,1,3),(21,46,'2023-05-31',41,1,3),(22,1234121,'2023-05-26',43,1,3),(23,123123,'2023-06-10',18,1,3),(24,213123,'2023-06-02',44,1,3),(25,100000,'2023-06-03',48,1,1),(26,2147483582,'2029-07-11',36,1,1),(27,2147483647,'2027-02-19',42,1,1),(28,2147483647,'2027-10-12',41,1,1),(29,0,'2023-06-16',43,1,2),(30,0,'2023-08-19',44,1,1),(31,0,'3333-06-15',42,1,1),(32,21341234,'0000-00-00',42,1,1),(33,1234123,'3333-06-10',42,1,1),(34,1321412,'3333-06-01',41,1,1);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_reset_tokens_table',1),(11,'2019_08_19_000000_create_failed_jobs_table',1),(12,'2019_12_14_000001_create_personal_access_tokens_table',1),(13,'2023_07_18_191142_create_orders_table',2),(14,'2023_07_18_191957_create_orders_table',3),(15,'2023_07_18_192656_create_orders_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Activo` varchar(1) NOT NULL DEFAULT 'V',
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Estados Unidos','V'),(51,'Per├║','V'),(52,'M├®xico','V'),(54,'Argentina','V'),(55,'Brasil','V'),(56,'Chile','V'),(57,'Colombia','V'),(58,'Venezuela','V'),(591,'Bolivia','V'),(593,'Ecuador','V');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('jose.alvarado.mazzei@gmail.com','$2y$10$XK0jaFsGSI8srBG34w/3DezXqb8anOABZvQaFlLeodetC5L0PqIo6','2023-07-15 08:55:53');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentacion`
--

DROP TABLE IF EXISTS `presentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presentacion` (
  `id_presentacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_presentacion`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `presentacion_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentacion`
--

LOCK TABLES `presentacion` WRITE;
/*!40000 ALTER TABLE `presentacion` DISABLE KEYS */;
INSERT INTO `presentacion` VALUES (1,'Comprimidos',1),(2,'jarabe',2),(3,'capsulas blandas',2),(5,'Liquido',1);
/*!40000 ALTER TABLE `presentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `concentracion` varchar(255) DEFAULT NULL,
  `adicional` varchar(255) DEFAULT NULL,
  `precio_neto` float NOT NULL,
  `precio` float NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `prod_lab` int NOT NULL,
  `prod_tip_prod` int NOT NULL,
  `prod_present` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `bioequivalente` varchar(2) DEFAULT NULL,
  `condicion_venta` int DEFAULT '1',
  PRIMARY KEY (`id_producto`),
  KEY `prod_lab_idx` (`prod_lab`),
  KEY `prod_tip_prod_idx` (`prod_tip_prod`),
  KEY `prod_present_idx` (`prod_present`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `index_condicion_venta` (`condicion_venta`) USING BTREE,
  CONSTRAINT `prod_lab` FOREIGN KEY (`prod_lab`) REFERENCES `laboratorio` (`id_laboratorio`),
  CONSTRAINT `prod_present` FOREIGN KEY (`prod_present`) REFERENCES `presentacion` (`id_presentacion`),
  CONSTRAINT `prod_tip_prod` FOREIGN KEY (`prod_tip_prod`) REFERENCES `tipo_producto` (`id_tip_prod`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON UPDATE CASCADE,
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`condicion_venta`) REFERENCES `condicion_venta` (`id`),
  CONSTRAINT `check_precio` CHECK ((`precio_neto` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (13,'Paracetamol','500 mg','10 comprimidos ',1500,0,'prod_default.png',2,1,1,2,NULL,NULL),(14,'testSUCUasd','asd','asdasd',1,0,'prod_default.png',2,4,3,2,NULL,NULL),(15,'paracetamol','500',NULL,2500,0,'prod_default.png',2,1,1,5,NULL,NULL),(16,'paracetamol','500',NULL,2500,0,'prod_default.png',2,1,1,6,'SI',NULL),(17,'paracetamol','500',NULL,2500,0,'prod_default.png',2,1,1,7,NULL,NULL),(18,'paracetamol','500',NULL,2500,0,'prod_default.png',2,1,1,3,'SI',NULL),(19,'amoxicilina','100',NULL,1500,0,'prod_default.png',2,1,1,5,NULL,NULL),(20,'amoxicilina','100',NULL,2500,0,'prod_default.png',2,1,1,6,NULL,NULL),(21,'amoxicilina','100',NULL,500,0,'prod_default.png',2,1,1,7,NULL,NULL),(22,'amoxicilina','100',NULL,2500,0,'prod_default.png',2,1,1,8,NULL,NULL),(23,'pavedal','80 mg','comprimidos recubiertos',15000,0,'prod_default.png',2,4,3,2,NULL,NULL),(34,'amoxicilina','100',NULL,2500,0,'prod_default.png',2,1,1,9,NULL,NULL),(35,'amoxicilina','100',NULL,1500,0,'prod_default.png',2,1,1,10,NULL,NULL),(36,'Clotiazepam','null','null',10000,0,'prod_default.png',2,1,1,1,NULL,1),(37,'Nartan','100 mg','null',9000,0,'prod_default.png',2,1,1,1,NULL,2),(41,'Mamadera','10 gr','null',5000,0,'prod_default.png',2,5,3,1,NULL,1),(42,'Diclofenaco','50 mg','null',10000,0,'prod_default.png',2,6,3,1,NULL,2),(43,'Producto sin Stock','0 mg','',1000,0,'prod_default.png',2,7,3,2,NULL,NULL),(44,'Producto sin Stock','100mg','null',10000,0,'prod_default.png',2,5,3,1,NULL,5),(49,'Producto con Receta Retenida','100 mg','null',1000000,0,'prod_default.png',1,5,2,1,NULL,3),(88,'Paracetamol','500',NULL,2500,0,'prod_default.png',2,1,1,6,'SI',NULL),(89,'Ibuprofeno','400','Antiinflamatorio',3500,0,'prod_default.png',1,8,2,4,'NO',3),(90,'Omeprazol','20','Protector g├ístrico',2000,0,'prod_default.png',1,6,3,8,'SI',2),(91,'Amoxicilina','250','Antibi├│tico',3000,0,'prod_default.png',2,5,1,2,'NO',4),(92,'Loratadina','10','Antihistam├¡nico',1500,0,'prod_default.png',1,7,3,5,'SI',5),(93,'Dipirona','500',NULL,1800,0,'prod_default.png',2,1,2,3,'NO',1),(94,'Cetirizina','10','Antial├®rgico',2200,0,'prod_default.png',1,7,1,7,'NO',3),(95,'Metformina','850','Antidiab├®tico',2800,0,'prod_default.png',1,6,2,1,'SI',2),(96,'Cefalexina','500','Antibi├│tico',3200,0,'prod_default.png',2,5,3,9,'SI',4),(97,'Dexametasona','0.5','Corticosteroide',4000,0,'prod_default.png',1,3,1,10,'NO',5),(98,'Diclofenaco','50','Antiinflamatorio',2500,0,'prod_default.png',1,3,2,6,'SI',1),(99,'Amoxicilina','500','Antibi├│tico',3000,0,'prod_default.png',2,5,1,4,'NO',4),(100,'Loratadina','10','Antihistam├¡nico',1500,0,'prod_default.png',1,4,3,8,'NO',3),(101,'Dipirona','500',NULL,1800,0,'prod_default.png',2,1,2,2,'SI',2),(102,'Cetirizina','10','Antial├®rgico',2200,0,'prod_default.png',1,4,1,5,'SI',5),(103,'Metformina','850','Antidiab├®tico',2800,0,'prod_default.png',1,6,2,9,'NO',1),(104,'Cefalexina','500','Antibi├│tico',3200,0,'prod_default.png',2,5,3,7,'NO',4),(105,'Dexametasona','0.5','Corticosteroide',4000,0,'prod_default.png',1,7,1,3,'SI',3),(106,'Diclofenaco','50','Antiinflamatorio',2500,0,'prod_default.png',1,3,2,1,'NO',5),(107,'Ibuprofeno','400','Antiinflamatorio',3500,0,'prod_default.png',2,3,3,10,'SI',2),(168,'Paracetamol','500',NULL,2500,0,'prod_default.png',2,1,1,6,'SI',NULL),(169,'Ibuprofeno','400','Antiinflamatorio',3500,0,'prod_default.png',1,8,2,4,'NO',3),(170,'Omeprazol','20','Protector g├ístrico',2000,0,'prod_default.png',1,6,3,8,'SI',2),(171,'Amoxicilina','250','Antibi├│tico',3000,0,'prod_default.png',2,5,1,2,'NO',4),(172,'Loratadina','10','Antihistam├¡nico',1500,0,'prod_default.png',1,7,3,5,'SI',5),(173,'Dipirona','500',NULL,1800,0,'prod_default.png',2,1,2,3,'NO',1),(174,'Cetirizina','10','Antial├®rgico',2200,0,'prod_default.png',1,7,1,7,'NO',3),(175,'Metformina','850','Antidiab├®tico',2800,0,'prod_default.png',1,6,2,1,'SI',2),(176,'Cefalexina','500','Antibi├│tico',3200,0,'prod_default.png',2,5,3,9,'SI',4),(177,'Dexametasona','0.5','Corticosteroide',4000,0,'prod_default.png',1,3,1,10,'NO',5),(178,'Diclofenaco','50','Antiinflamatorio',2500,0,'prod_default.png',1,3,2,6,'SI',1),(179,'Amoxicilina','500','Antibi├│tico',3000,0,'prod_default.png',2,5,1,4,'NO',4),(180,'Loratadina','10','Antihistam├¡nico',1500,0,'prod_default.png',1,4,3,8,'NO',3),(181,'Dipirona','500',NULL,1800,0,'prod_default.png',2,1,2,2,'SI',2),(182,'Cetirizina','10','Antial├®rgico',2200,0,'prod_default.png',1,4,1,5,'SI',5),(183,'Metformina','850','Antidiab├®tico',2800,0,'prod_default.png',1,6,2,9,'NO',1),(184,'Cefalexina','500','Antibi├│tico',3200,0,'prod_default.png',2,5,3,7,'NO',4),(185,'Dexametasona','0.5','Corticosteroide',4000,0,'prod_default.png',1,7,1,3,'SI',3),(186,'Diclofenaco','50','Antiinflamatorio',2500,0,'prod_default.png',1,3,2,1,'NO',5),(187,'Ibuprofeno','400','Antiinflamatorio',3500,0,'prod_default.png',2,3,3,10,'SI',2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Distribuidora del sur',949917136,'dist.delsur@gmail.com','La domadura ','prov_default.png'),(4,'Distruibidora Juanita del norte',982704741,'s.marambiosandoval@gmai.com','calle platano 889','prov_default.png');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `Codigo` varchar(3) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Activo` varchar(1) NOT NULL DEFAULT 'V',
  `RegionID` varchar(2) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `RegionID` (`RegionID`),
  CONSTRAINT `Provincia_ibfk_1` FOREIGN KEY (`RegionID`) REFERENCES `region` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES ('011','Iquique┬á┬á','V','01'),('014','Tamarugal','V','01'),('021','Antofagasta','V','02'),('022','El Loa','V','02'),('023','Tocopilla┬á┬á','V','02'),('031','Copiap├│┬á┬á','V','03'),('032','Cha├▒aral┬á┬á','V','03'),('033','Huasco','V','03'),('041','Elqui','V','04'),('042','Choapa','V','04'),('043','Limari','V','04'),('051','Valpara├¡so┬á┬á','V','05'),('052','Isla de Pascua┬á┬á','V','05'),('053','Los Andes┬á┬á','V','05'),('054','Petorca','V','05'),('055','Quillota┬á┬á','V','05'),('056','San Antonio┬á┬á','V','05'),('057','San Felipe┬á┬á','V','05'),('058','Marga Marga','V','05'),('061','Cachapoal','V','06'),('062','Cardenal Caro','V','06'),('063','Colchagua','V','06'),('071','Talca','V','07'),('072','Cauquenes','V','07'),('073','Curico','V','07'),('074','Linares┬á┬á','V','07'),('081','Concepci├│n┬á┬á','V','08'),('082','Arauco','V','08'),('083','B├¡o- B├¡o','V','08'),('091','Caut├¡n','V','09'),('092','Malleco','V','09'),('101','Llanquihue','V','10'),('102','Chiloe','V','10'),('103','Osorno┬á┬á','V','10'),('104','Palena','V','10'),('111','Coihaique┬á┬á','V','11'),('112','Ais├®n┬á┬á','V','11'),('113','Capitan Prat','V','11'),('114','General Carrera','V','11'),('121','Magallanes','V','12'),('122','Ant├írtica Chilena','V','12'),('123','Tierra del Fuego','V','12'),('124','Ultima Esperanza','V','12'),('131','Santiago┬á┬á','V','13'),('132','Cordillera','V','13'),('133','Chacabuco','V','13'),('134','Maipo','V','13'),('135','Melipilla','V','13'),('136','Talagante┬á┬á','V','13'),('141','Valdivia┬á┬á','V','14'),('142','Ranco','V','14'),('151','Arica┬á┬á','V','15'),('152','Parinacota','V','15'),('161','Diguill├¡n','V','16'),('162','Itata','V','16'),('163','Punilla','V','16');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `url_img` varchar(255) DEFAULT NULL,
  `id_tecnico_validador` int DEFAULT NULL,
  `validacion` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_recetas` (`id_venta`,`id_tecnico_validador`),
  KEY `id_tecnico_validador` (`id_tecnico_validador`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `recetas_ibfk_3` FOREIGN KEY (`id_tecnico_validador`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `Codigo` varchar(2) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Activo` varchar(1) NOT NULL DEFAULT 'V',
  `PaisID` int NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `PaisID` (`PaisID`),
  CONSTRAINT `Region_ibfk_1` FOREIGN KEY (`PaisID`) REFERENCES `pais` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES ('01','Tarapac├í','V',56),('02','Antofagasta','V',56),('03','Atacama','V',56),('04','Coquimbo','V',56),('05','Valpara├¡so','V',56),('06','OHiggins','V',56),('07','Maule','V',56),('08','B├¡o B├¡o','V',56),('09','Araucan├¡a','V',56),('10','Los Lagos','V',56),('11','Ays├®n','V',56),('12','Magallanes','V',56),('13','Metropolitana','V',56),('14','Los R├¡os','V',56),('15','Arica y Parinacota','V',56),('16','├æuble','V',56);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_excepciones`
--

DROP TABLE IF EXISTS `registro_excepciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_excepciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rut_farmacia` int DEFAULT NULL,
  `id_sucursal` int DEFAULT NULL,
  `vista` varchar(100) DEFAULT NULL,
  `controlador` int DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `excepcion_index` (`controlador`,`rut_farmacia`,`id_sucursal`,`vista`),
  KEY `rut_farmacia` (`rut_farmacia`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `vista` (`vista`),
  CONSTRAINT `registro_excepciones_ibfk_1` FOREIGN KEY (`rut_farmacia`) REFERENCES `farmacia` (`rut_farmacia`),
  CONSTRAINT `registro_excepciones_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  CONSTRAINT `registro_excepciones_ibfk_3` FOREIGN KEY (`vista`) REFERENCES `vistas` (`codigo`),
  CONSTRAINT `registro_excepciones_ibfk_4` FOREIGN KEY (`controlador`) REFERENCES `controlador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_excepciones`
--

LOCK TABLES `registro_excepciones` WRITE;
/*!40000 ALTER TABLE `registro_excepciones` DISABLE KEYS */;
INSERT INTO `registro_excepciones` VALUES (1,937670021,2,'GF',4,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-06 14:55:46'),(2,NULL,NULL,NULL,NULL,'SMTP Error: Could not connect to SMTP host. Connection failed. stream_socket_enable_crypto(): SSL operation failed with code 1. OpenSSL Error messages:\nerror:0A000086:SSL routines::certificate verify failed','2023-06-12 08:52:47'),(3,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-13 17:32:56'),(4,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-13 17:33:21'),(5,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-13 17:33:43'),(6,937670022,1,'GP',13,'SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails (`farmacia`.`producto`, CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`condicion_venta`) REFERENCES `condicion_venta` (`id`))','2023-06-13 17:45:08'),(7,937670022,1,'GP',13,'SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails (`farmacia`.`producto`, CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`condicion_venta`) REFERENCES `condicion_venta` (`id`))','2023-06-13 17:45:22'),(8,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-14 15:00:14'),(9,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-14 15:01:26'),(10,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-14 15:01:30'),(11,937670022,1,'GP',13,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-14 15:02:48'),(12,937670022,1,'GP',13,'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'cv.nombre AS condicion_venta_nombre\r\n            FROM producto p\r\n           ...\' at line 14','2023-06-14 15:05:03'),(13,937670022,1,'SS',2,'SMTP Error: Could not authenticate.','2023-06-16 14:43:00'),(14,937670022,1,'SS',2,'Could not access file: /img/logo.jpg','2023-06-16 15:56:21'),(15,937670022,1,'SS',2,'Could not access file: ../img/soporte.jpg','2023-06-16 16:02:20'),(16,937670022,1,NULL,10,'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'tipo_documento\' cannot be null','2023-06-16 21:10:20'),(17,937670022,1,NULL,10,'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'tipo_documento\' cannot be null','2023-06-16 21:12:22'),(18,937670022,1,NULL,10,'SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'tipo_documento\' cannot be null','2023-06-16 21:13:30'),(19,937670022,1,NULL,10,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-19 16:50:51'),(20,937670022,1,NULL,10,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-19 16:52:21'),(21,937670022,1,NULL,10,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-19 16:56:41'),(22,937670022,1,'PC',10,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-19 16:59:53'),(23,937670022,1,'PC',10,'SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens','2023-06-19 17:01:06'),(24,937670022,1,'PC',10,'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'190752\',\'39\')\' at line 2','2023-06-19 17:03:35');
/*!40000 ALTER TABLE `registro_excepciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int NOT NULL AUTO_INCREMENT,
  `rut_farmacia` int NOT NULL,
  `nombre_sucursal` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `direccion_sucursal` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_comuna` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `codigo_sii` varchar(20) COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_sucursal`),
  KEY `rut_farmacia` (`rut_farmacia`),
  KEY `id_comuna_index` (`id_comuna`) USING BTREE,
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`rut_farmacia`) REFERENCES `farmacia` (`rut_farmacia`) ON UPDATE CASCADE,
  CONSTRAINT `sucursal_ibfk_2` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,937670022,'TEMUCO','ARTURO PRAT 580','09101','0'),(2,937670021,'LABRANZA','LAS PERDICES 1580','09101','0'),(3,937670022,'LAUTARO','O┬┤HIGGINS 1240','09108','0'),(4,937670021,'Santiago','fake street 1234','13101','0'),(5,937670025,'Buin','Bajos de matte 620, buin','13402','0'),(6,937670026,'cerrillos','Balmaceda 535, Cerrillos','13102','0'),(7,937670027,'cerrillos','fernandez Albano 535, cerrillos','13102','0'),(8,937670028,'cerrillos','los almendros 6199, cerrillos','13102','0'),(9,937670028,'cerrillos 2','los almendros 400','13102','0'),(10,937670028,'cerrillos 3','los almendros 400','13102','0'),(11,937670022,'San Fernando','calle pancito 2929','13102','0'),(26,937670022,'Valparaiso','calle platano 889','13102','0'),(27,937670022,'NAVIDAD','calle merry 289','13102','0'),(28,937670022,'PERALILLO','','13102','0');
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_usuario`
--

DROP TABLE IF EXISTS `sucursal_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal_usuario` (
  `id_sucursal_usuario` int NOT NULL AUTO_INCREMENT,
  `id_sucursal` int NOT NULL,
  `id_usuario` int NOT NULL,
  `estado_activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_sucursal_usuario`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `sucursal_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE,
  CONSTRAINT `sucursal_usuario_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_usuario`
--

LOCK TABLES `sucursal_usuario` WRITE;
/*!40000 ALTER TABLE `sucursal_usuario` DISABLE KEYS */;
INSERT INTO `sucursal_usuario` VALUES (1,2,1,1),(2,2,2,1),(9,1,7,1),(10,1,9,1),(11,3,10,1),(13,3,11,1),(15,1,10,0),(16,2,13,1),(17,9,14,1),(18,10,14,1),(19,3,15,0),(20,11,7,1),(23,1,17,0),(24,11,18,0),(25,3,19,0),(26,3,7,1),(28,26,7,0),(30,27,7,0),(31,28,7,0);
/*!40000 ALTER TABLE `sucursal_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `territorio`
--

DROP TABLE IF EXISTS `territorio`;
/*!50001 DROP VIEW IF EXISTS `territorio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `territorio` AS SELECT 
 1 AS `PaisID`,
 1 AS `Pais`,
 1 AS `RegionID`,
 1 AS `Region`,
 1 AS `ProvinciaID`,
 1 AS `Provincia`,
 1 AS `CityID`,
 1 AS `City`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipo_doc_sii`
--

DROP TABLE IF EXISTS `tipo_doc_sii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_doc_sii` (
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_doc_sii`
--

LOCK TABLES `tipo_doc_sii` WRITE;
/*!40000 ALTER TABLE `tipo_doc_sii` DISABLE KEYS */;
INSERT INTO `tipo_doc_sii` VALUES ('103','Liquidaci├│n'),('110','Factura de exportaci├│n electr├│nica'),('111','Nota de d├®bito de exportaci├│n electr├│nica'),('112','Nota de cr├®dito de exportaci├│n electr├│nica'),('30','Factura'),('32','Factura de ventas y servicios no afectos o exentos de IVA'),('33','Factura electr├│nica'),('34','Factura no afecta o exenta electr├│nica'),('35','Boleta'),('38','Boleta exenta'),('39','Boleta electr├│nica'),('40','Liquidaci├│n factura'),('41','Boleta exenta electr├│nica'),('43','Liquidaci├│n factura electr├│nica'),('45','Factura de compra'),('46','Factura de compra electr├│nica'),('48','Pago electr├│nico'),('50','Gu├¡a de despacho'),('52','Gu├¡a de despacho electr├│nica'),('55','Nota de d├®bito'),('56','Nota de d├®bito electr├│nica'),('60','Nota de cr├®dito'),('61','Nota de cr├®dito electr├│nica'),('801','Orden de compra'),('802','Presupuesto'),('803','Contrato'),('804','Resoluci├│n'),('805','Proceso ChileCompra'),('806','Ficha ChileCompra'),('807','DUS'),('808','B/L (conocimiento de embarque)'),('809','AWB (Air Will Bill)'),('810','MIC/DTA'),('811','Carta de porte'),('812','Resoluci├│n del SNA donde califica servicios de exportaci├│n'),('813','Pasaporte'),('814','Certificado de dep├│sito bolsa prod. Chile'),('815','Vale de prenda bolsa prod. Chile'),('914','Declaraci├│n de ingreso (DIN)'),('HES','Hoja de Entrada de Servicios');
/*!40000 ALTER TABLE `tipo_doc_sii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_excepcion`
--

DROP TABLE IF EXISTS `tipo_excepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_excepcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_excepcion`
--

LOCK TABLES `tipo_excepcion` WRITE;
/*!40000 ALTER TABLE `tipo_excepcion` DISABLE KEYS */;
INSERT INTO `tipo_excepcion` VALUES (1,'Error al obtener datos en BBDD'),(2,'Error al insertar datos en BBDD'),(3,'Error al actualizar datos en BBDD'),(4,'Error al subir archivo'),(5,'Error al generar archivo (\"PDF\",\"EXCEL\", u otros)\"'),(6,'Error al enviar correo'),(7,'Error generado en vista');
/*!40000 ALTER TABLE `tipo_excepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_producto` (
  `id_tip_prod` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_tip_prod`),
  KEY `tipo_producto_index` (`id_sucursal`),
  CONSTRAINT `tipo_producto_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'bioequivalente',1),(3,'suplementos deportivos',1),(4,'Nutrici├│n y Diet├®tica',2),(5,'Higiene personal',3),(6,'BIOEQUIVALENTES',3),(7,'Homeop├ítico',1),(8,'asdda',1);
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_us`
--

DROP TABLE IF EXISTS `tipo_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_us` (
  `id_tipo_us` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_us`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_us`
--

LOCK TABLES `tipo_us` WRITE;
/*!40000 ALTER TABLE `tipo_us` DISABLE KEYS */;
INSERT INTO `tipo_us` VALUES (1,'ADMINISTRADOR'),(2,'T├ëCNICO'),(3,'ROOT'),(4,'ecommerce');
/*!40000 ALTER TABLE `tipo_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_venta`
--

DROP TABLE IF EXISTS `tipo_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_venta` (
  `codigo` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_venta`
--

LOCK TABLES `tipo_venta` WRITE;
/*!40000 ALTER TABLE `tipo_venta` DISABLE KEYS */;
INSERT INTO `tipo_venta` VALUES (1,'DELIVERY'),(2,'RETIRO EN TIENDA'),(3,'LOCAL');
/*!40000 ALTER TABLE `tipo_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_us` varchar(45) NOT NULL,
  `apellidos_us` varchar(45) NOT NULL,
  `edad` date NOT NULL,
  `dni_us` varchar(45) NOT NULL,
  `contrasena_us` varchar(255) NOT NULL,
  `telefono_us` int DEFAULT NULL,
  `direccion_us` varchar(45) DEFAULT NULL,
  `correo_us` varchar(50) DEFAULT NULL,
  `sexo_us` varchar(25) DEFAULT NULL,
  `adicional_us` varchar(500) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `us_tipo` int NOT NULL,
  `estado_activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `us_tipo_idx` (`us_tipo`),
  CONSTRAINT `us_tipo` FOREIGN KEY (`us_tipo`) REFERENCES `tipo_us` (`id_tipo_us`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan','P├®rez','1990-12-09','182954322','tec123',992652945,'los yugos 01360','testingfarmacia@gmail.com','masculino','Perfil t├®cnico creado para pruebas.','avatarDefault.png',2,0),(2,'Mario','Dubo','1990-12-09','177502723','1234',949917143,'La domadura 01527','mario.dubo01@gmail.com','masculino','PERFIL DEVELOPER PARA REVISION DE DESARROLLO ','avatarDefault.png',3,1),(7,'Claudia ','Obreg├│n','2023-01-15','856569071','1',9499,'calle cuncoro 289','s.marambiosandoval@gmail.com','femenino','Perfil administrativo para pruebas','6453bce3d76e4-Screenshot_4.jpg',1,1),(9,'Camilo ','Dubo','1994-09-27','167502723','tec123',992652945,'los yugos 01360','testingfarmacia@gmail.com','masculino','perfil tecnico creado para pruebas','avatarDefault.png',2,1),(10,'Doris','Urbina','1970-10-03','106389923','tec123',992652945,'los yugos 01360','testingfarmacia@gmail.com','femenino','perfil tecnico, bajo acceso ','avatarDefault.png',2,0),(11,'David','Morales','1986-04-15','18621952k','admin123',992652945,'Rio turbio 570','testingfarmacia@gmail.com','masculino','perfil administrativo de mayor acceso','avatarDefault.png',1,1),(12,'sebita','nane','2014-04-23','123456785','1234',NULL,NULL,NULL,NULL,NULL,'avatarDefault.png',2,1),(13,'Gonzalo','Urbina','1989-01-09','17650272k','admin123',992652945,'los yugos 01360','testingfarmacia@gmail.com','masculino','perfil administrador','avatarDefault.png',1,1),(14,'camilo','Urbina','1989-01-09','178502723','admin123',992652945,'los yugos 01360','testingfarmacia@gmail.com','masculino','perfil administrador','avatarDefault.png',1,1),(15,'Sebastian ','Marambio Sandoval','1996-04-23','192745357','12345',NULL,NULL,NULL,NULL,NULL,'avatarDefault.png',2,0),(16,'Sebastian ','Marambio Sandoval','0123-02-04','12345674','123',NULL,NULL,NULL,NULL,NULL,'avatarDefault.png',2,0),(17,'Sebastian ','Marambio Sandoval','4454-12-31','1+','1',NULL,NULL,NULL,NULL,NULL,'avatarDefault.png',2,1),(18,'Sebastian','Marambio Sandoval','2023-05-25','192745357','1234',NULL,NULL,NULL,NULL,NULL,'avatardefault.png',2,0),(19,'Sebastian 4','Marambio Sandoval 4','2023-05-20','123412346','123',NULL,NULL,NULL,NULL,NULL,'avatardefault.png',2,1),(20,'Ecommerce','Placeholder','1990-01-01','00000000A','supersecreta',123456789,'Calle Ficticia, 123','ecommerce@dominio.com','No especificado','Usuario placeholder para pruebas','C:UsersJoseAOneDriveEscritoriolinked.png',4,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_ecommerce`
--

DROP TABLE IF EXISTS `usuario_ecommerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_ecommerce` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir_cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir_numero_cliente` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comuna_cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_dni_unique` (`dni`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_ecommerce`
--

LOCK TABLES `usuario_ecommerce` WRITE;
/*!40000 ALTER TABLE `usuario_ecommerce` DISABLE KEYS */;
INSERT INTO `usuario_ecommerce` VALUES (1,'257688631','Jos├® Rafael Alvarado Mazzei','+56948937755','jose.alvarado.mazzei@gmail.com',NULL,'$2y$10$nszXKvg.LXtWV24B.oSVBOj74AyAjAFT75Gk6plFjT81sIy4WFqYW','Inglaterra 730','30','09','091','09101','1992-02-02',NULL,'2023-07-15 01:33:19','2023-07-15 02:26:23'),(2,'25768862','ernesto che guevara','13123123123123','josealavrado@gmail.com',NULL,'$2y$10$xQ00JcOFET2N4gxj5y6rqe85aIqSnyFtCRUW5SOOVSQ2TdDOX1yZi','213123123','123','01','011','01101','1992-02-02',NULL,'2023-07-17 10:30:12','2023-07-17 10:30:12'),(3,'1958418151','Jose','4519519851','javicho@gmail.com',NULL,'$2y$10$E/aGYTp3ciBEbt.mHdCWDuELnjwA3hCXNEsWBp8fQSGuXktz4fsQe','231231313','123123','03','031','03103','1993-12-14',NULL,'2023-07-17 17:22:02','2023-07-17 17:22:02'),(4,'111111111','seba','21341242352','seba@seba.com',NULL,'$2y$10$7ApAqAx3MaZzet.GMp7sOu/5H9G0WDo..ecj8lMwWWp6QoCJj33um','213123123','123123','02','022','02203','1995-01-01',NULL,'2023-07-18 23:53:18','2023-07-18 23:53:18'),(5,'1212','Latin','010101','eljose@gmail.com',NULL,'$2y$10$6rrRM6J0NX4CuumjwwQz8O6v9zRzz88a/3nI/8Mz28q8KlGrfkReu','la curva de molina','32','01','011','01107','1992-02-02',NULL,'2023-07-24 00:39:18','2023-07-24 00:39:18');
/*!40000 ALTER TABLE `usuario_ecommerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `cliente` varchar(45) DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `total` float DEFAULT NULL,
  `estado_activo` tinyint(1) NOT NULL,
  `vendedor` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `tipo_venta` int DEFAULT NULL,
  `confirmacion` int DEFAULT NULL,
  `folio` varchar(10) DEFAULT '0',
  `canal_venta` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `vendedor` (`vendedor`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_sucursal_2` (`id_sucursal`),
  KEY `id_sucursal_3` (`id_sucursal`),
  KEY `id_sucursal_4` (`id_sucursal`),
  KEY `ventas_index` (`id_sucursal`,`folio`),
  KEY `folio` (`folio`),
  KEY `index_tipo_des` (`tipo_venta`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`vendedor`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`folio`) REFERENCES `documentos_tributarios` (`FOLIO`),
  CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`tipo_venta`) REFERENCES `tipo_venta` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (2,'2023-01-10 16:44:23','a',0,1500,0,12,2,3,NULL,'0',NULL),(3,'2023-04-21 15:33:50','Seba Jr',192745357,15501,0,1,2,3,NULL,'0',NULL),(4,'2023-04-21 15:52:14','Seba jr prueba 2',192745356,245565,0,1,2,3,NULL,'0',NULL),(5,'2023-04-21 16:01:42','Sebasti├ín ',192745357,200000,0,1,2,3,NULL,'0',NULL),(6,'2023-04-23 09:03:13','Sebastian ',19274635,9000,0,9,1,3,NULL,'0',NULL),(7,'2023-04-23 09:12:20','Sebastian',120,5000,0,9,1,3,NULL,'0',NULL),(8,'2023-04-23 09:26:00','s123',123,9000,0,7,1,3,NULL,'0',NULL),(9,'2023-04-23 17:43:49','Sebasti├ín ',192745356,10000,0,7,1,3,NULL,'0',NULL),(10,'2023-04-26 14:19:10','Sebasti├ín Marambio Sandoval',0,9000,0,17,1,3,NULL,'0',NULL),(11,'2023-04-26 14:45:17','Seba',0,-11000,0,17,1,3,NULL,'0',NULL),(12,'2023-04-28 14:54:30','Sebasti├ín ',19274,2500,0,11,3,3,NULL,'0',NULL),(13,'2023-05-03 09:56:09','Seba',0,2501,0,11,3,3,NULL,'0',NULL),(14,'2023-05-03 10:00:32','Compra sin rut',0,1,0,11,3,3,NULL,'0',NULL),(15,'2023-05-03 12:14:39','Seba',0,9000,0,7,1,3,NULL,'0',NULL),(16,'2023-05-03 12:16:47','Sebasti├ín',0,9000,0,7,1,3,NULL,'0',NULL),(17,'2023-05-04 15:13:47','Sebas',0,4000,0,7,1,3,NULL,'0',NULL),(18,'2023-05-05 11:52:05','sebastian',0,8000,0,7,1,3,NULL,'0',NULL),(19,'2023-05-10 17:14:09','aa',0,1,0,11,3,3,NULL,'0',NULL),(20,'2023-05-12 11:10:48','a',0,2502,0,11,3,3,NULL,'0',NULL),(21,'2023-05-12 11:10:48','a',0,2502,0,11,3,3,NULL,'0',NULL),(22,'2023-05-12 11:11:28','a',0,1,0,11,3,3,NULL,'0',NULL),(23,'2023-05-12 11:11:28','a',0,1,0,11,3,3,NULL,'0',NULL),(24,'2023-05-15 12:32:07','asd',0,1,0,11,3,3,NULL,'0',NULL),(25,'2023-05-15 12:37:21','asd',0,NULL,0,11,3,3,NULL,'0',NULL),(27,'2023-05-05 11:52:05','sebastian',0,8000,0,7,7,3,NULL,'11231',NULL),(30,'2023-05-18 15:31:10','An├│nimo',0,10710,0,7,1,3,NULL,'0',NULL),(31,'2023-05-18 15:37:57','An├│nimo',0,10710,0,7,1,3,NULL,'0',NULL),(32,'2023-05-18 16:22:18','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(33,'2023-05-19 12:59:51','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(34,'2023-05-19 13:01:24','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(35,'2023-05-19 13:06:10','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(36,'2023-05-19 13:07:03','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(37,'2023-05-19 13:09:31','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(38,'2023-05-19 13:11:17','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(39,'2023-05-19 13:11:33','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(40,'2023-05-19 13:14:38','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(41,'2023-05-19 13:18:00','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(42,'2023-05-19 13:18:31','An├│nimo',0,40460,0,7,1,3,NULL,'0',NULL),(43,'2023-05-19 16:47:41','An├│nimo',0,85680,0,7,1,3,NULL,'0',NULL),(44,'2023-05-19 16:48:07','An├│nimo',19274,85680,0,7,1,3,NULL,'0',NULL),(45,'2023-05-22 13:21:00','An├│nimo',0,85680,0,7,1,3,NULL,'0',NULL),(46,'2023-05-22 15:33:23','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(47,'2023-05-22 15:36:32','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(48,'2023-05-23 12:55:55','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(49,'2023-05-24 12:28:51','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(50,'2023-05-24 12:29:35','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(51,'2023-05-24 15:54:28','An├│nimo',0,1,0,2,2,3,NULL,'0',NULL),(52,'2023-05-24 16:56:49','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(53,'2023-05-24 16:57:20','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(54,'2023-05-25 10:52:38','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(55,'2023-05-25 10:54:54','An├│nimo',19274,29750,0,7,1,3,NULL,'0',NULL),(56,'2023-05-25 10:59:26','An├│nimo',19274,29750,0,7,1,3,NULL,'0',NULL),(57,'2023-05-25 11:00:48','An├│nimo',19274,29750,0,7,1,3,NULL,'0',NULL),(58,'2023-05-25 11:03:02','An├│nimo',19275,29750,0,7,1,3,NULL,'0',NULL),(59,'2023-05-25 11:03:34','An├│nimo',19275,29750,0,7,1,3,NULL,'0',NULL),(60,'2023-05-25 11:07:44','An├│nimo',192745357,29750,0,7,1,3,NULL,'0',NULL),(61,'2023-05-25 15:59:04','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(62,'2023-05-26 10:52:53','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(63,'2023-05-26 10:59:05','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(64,'2023-05-26 11:00:40','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(65,'2023-05-26 11:02:49','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(66,'2023-05-26 11:05:00','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(67,'2023-05-26 11:06:17','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(68,'2023-05-26 11:07:08','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(69,'2023-05-26 11:08:03','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(70,'2023-05-26 11:08:58','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(71,'2023-05-26 11:09:12','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(72,'2023-05-26 11:09:34','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(73,'2023-05-26 11:10:01','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(74,'2023-05-26 11:10:29','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(75,'2023-05-26 11:12:45','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(76,'2023-05-26 11:13:51','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(77,'2023-05-26 11:14:06','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(78,'2023-05-26 11:14:51','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(79,'2023-05-26 11:17:05','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(80,'2023-05-26 11:17:28','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(81,'2023-05-26 11:17:42','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(82,'2023-05-26 11:18:12','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(83,'2023-05-26 11:18:48','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(84,'2023-05-26 11:19:25','An├│nimo',0,29750,0,7,1,3,NULL,'0',NULL),(85,'2023-05-31 15:46:42','An├│nimo',0,10710,0,7,1,3,NULL,'0',NULL),(86,'2023-06-05 04:21:25','An├│nimo',192745357,19635,0,2,2,3,NULL,'0',NULL),(87,'2023-06-06 13:43:01','An├│nimo',0,19635,0,2,2,3,NULL,'13624',NULL),(88,'2023-06-06 14:02:25','An├│nimo',0,19635,0,2,2,3,NULL,'13625',NULL),(89,'2023-06-06 14:06:37','An├│nimo',0,19635,0,2,2,3,NULL,'13626',NULL),(91,'2023-06-07 13:11:54','An├│nimo',0,23800,0,7,1,3,NULL,'13674',NULL),(92,'2023-06-13 09:37:25','An├│nimo',0,23800,0,7,1,3,NULL,'13690',NULL),(93,'2023-06-15 10:21:14','An├│nimo',0,23800,0,7,1,3,NULL,'0',NULL),(94,'2023-06-15 10:29:56','An├│nimo',0,23800,0,7,1,3,NULL,'0',NULL),(95,'2023-06-16 17:14:16','An├│nimo',0,23800,0,7,1,3,NULL,'13708',NULL),(96,'2023-06-19 13:04:10','An├│nimo',0,23800,0,7,1,3,NULL,'190753',NULL),(97,'2023-06-19 13:34:07','An├│nimo',0,23800,0,7,1,3,NULL,'190755',NULL),(98,'2023-06-20 15:28:14','An├│nimo',0,23800,0,7,1,3,NULL,'0',NULL),(99,'2023-06-20 15:51:36','An├│nimo',0,22610,0,7,1,3,NULL,'0',NULL),(100,'2023-06-20 15:52:19','An├│nimo',0,23800,0,7,1,3,NULL,'0',NULL),(101,'2023-06-20 15:53:20','An├│nimo',0,23800,0,7,1,3,NULL,'0',NULL),(102,'2023-06-20 16:04:00','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(103,'2023-06-20 16:05:43','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL),(104,'2023-06-20 16:06:06','An├│nimo',0,11900,0,7,1,3,NULL,'0',NULL);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_detalle`
--

DROP TABLE IF EXISTS `venta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venta` (`id_venta`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `venta_detalle_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_detalle`
--

LOCK TABLES `venta_detalle` WRITE;
/*!40000 ALTER TABLE `venta_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_producto`
--

DROP TABLE IF EXISTS `venta_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_producto` (
  `id_ventaproducto` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `subtotal` float NOT NULL,
  `producto_id_producto` int NOT NULL,
  `venta_id_venta` int NOT NULL,
  PRIMARY KEY (`id_ventaproducto`),
  KEY `fk_venta_has_producto_producto1_idx` (`producto_id_producto`),
  KEY `fk_venta_has_producto_venta1_idx` (`venta_id_venta`),
  CONSTRAINT `fk_venta_has_producto_producto1` FOREIGN KEY (`producto_id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `fk_venta_has_producto_venta1` FOREIGN KEY (`venta_id_venta`) REFERENCES `venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_producto`
--

LOCK TABLES `venta_producto` WRITE;
/*!40000 ALTER TABLE `venta_producto` DISABLE KEYS */;
INSERT INTO `venta_producto` VALUES (8,1,1500,13,5),(9,1,15000,23,5),(10,1,9000,37,6),(11,1,9000,37,7),(12,1,9000,37,8),(16,1,2500,18,12),(17,1,1,41,13),(18,1,2500,18,13),(19,1,1,42,14),(20,1,9000,37,15),(21,1,9000,37,16),(22,1,9000,37,17),(23,1,9000,37,18),(24,1,1,43,19),(25,1,1,42,20),(26,1,1,43,20),(27,1,2500,18,20),(28,1,1,42,21),(29,1,1,43,21),(30,1,2500,18,21),(31,1,1,42,22),(32,1,1,42,23),(33,1,1,42,24),(34,1,1,42,25),(37,1,9000,37,30),(38,1,9000,37,31),(39,1,9000,37,32),(40,1,10000,36,32),(41,1,10000,42,32),(42,1,5000,41,32),(43,1,9000,37,33),(44,1,10000,36,33),(45,1,10000,42,33),(46,1,5000,41,33),(47,1,9000,37,34),(48,1,10000,36,34),(49,1,10000,42,34),(50,1,5000,41,34),(51,1,9000,37,35),(52,1,10000,36,35),(53,1,10000,42,35),(54,1,5000,41,35),(55,1,9000,37,36),(56,1,10000,36,36),(57,1,10000,42,36),(58,1,5000,41,36),(59,1,9000,37,37),(60,1,10000,36,37),(61,1,10000,42,37),(62,1,5000,41,37),(63,1,9000,37,38),(64,1,10000,36,38),(65,1,10000,42,38),(66,1,5000,41,38),(67,1,9000,37,39),(68,1,10000,36,39),(69,1,10000,42,39),(70,1,5000,41,39),(71,1,9000,37,40),(72,1,10000,36,40),(73,1,10000,42,40),(74,1,5000,41,40),(75,1,9000,37,41),(76,1,10000,36,41),(77,1,10000,42,41),(78,1,5000,41,41),(79,1,9000,37,42),(80,1,10000,36,42),(81,1,10000,42,42),(82,1,5000,41,42),(83,3,27000,37,43),(84,1,10000,36,43),(85,2,20000,42,43),(86,3,15000,41,43),(87,3,27000,37,44),(88,1,10000,36,44),(89,2,20000,42,44),(90,3,15000,41,44),(91,3,27000,37,45),(92,1,10000,36,45),(93,2,20000,42,45),(94,3,15000,41,45),(95,1,10000,36,46),(96,1,10000,36,47),(97,1,10000,36,48),(98,1,10000,36,49),(99,1,10000,36,50),(100,1,1,14,51),(101,1,10000,42,52),(102,1,5000,41,52),(103,1,10000,36,52),(104,1,10000,42,53),(105,1,5000,41,53),(106,1,10000,36,53),(107,1,10000,42,54),(108,1,5000,41,54),(109,1,10000,36,54),(110,1,10000,42,55),(111,1,5000,41,55),(112,1,10000,36,55),(113,1,10000,42,56),(114,1,5000,41,56),(115,1,10000,36,56),(116,1,10000,42,57),(117,1,5000,41,57),(118,1,10000,36,57),(119,1,10000,42,58),(120,1,5000,41,58),(121,1,10000,36,58),(122,1,10000,42,59),(123,1,5000,41,59),(124,1,10000,36,59),(125,1,10000,42,60),(126,1,5000,41,60),(127,1,10000,36,60),(128,1,10000,42,61),(129,1,5000,41,61),(130,1,10000,36,61),(131,1,10000,42,62),(132,1,5000,41,62),(133,1,10000,36,62),(134,1,10000,42,63),(135,1,5000,41,63),(136,1,10000,36,63),(137,1,10000,42,64),(138,1,5000,41,64),(139,1,10000,36,64),(140,1,10000,42,65),(141,1,5000,41,65),(142,1,10000,36,65),(143,1,10000,42,66),(144,1,5000,41,66),(145,1,10000,36,66),(146,1,10000,42,67),(147,1,5000,41,67),(148,1,10000,36,67),(149,1,10000,42,68),(150,1,5000,41,68),(151,1,10000,36,68),(152,1,10000,42,69),(153,1,5000,41,69),(154,1,10000,36,69),(155,1,10000,42,70),(156,1,5000,41,70),(157,1,10000,36,70),(158,1,10000,42,71),(159,1,5000,41,71),(160,1,10000,36,71),(161,1,10000,42,72),(162,1,5000,41,72),(163,1,10000,36,72),(164,1,10000,42,73),(165,1,5000,41,73),(166,1,10000,36,73),(167,1,10000,42,74),(168,1,5000,41,74),(169,1,10000,36,74),(170,1,10000,42,75),(171,1,5000,41,75),(172,1,10000,36,75),(173,1,10000,42,76),(174,1,5000,41,76),(175,1,10000,36,76),(176,1,10000,42,77),(177,1,5000,41,77),(178,1,10000,36,77),(179,1,10000,42,78),(180,1,5000,41,78),(181,1,10000,36,78),(182,1,10000,42,79),(183,1,5000,41,79),(184,1,10000,36,79),(185,1,10000,42,80),(186,1,5000,41,80),(187,1,10000,36,80),(188,1,10000,42,81),(189,1,5000,41,81),(190,1,10000,36,81),(191,1,10000,42,82),(192,1,5000,41,82),(193,1,10000,36,82),(194,1,10000,42,83),(195,1,5000,41,83),(196,1,10000,36,83),(197,1,10000,42,84),(198,1,5000,41,84),(199,1,10000,36,84),(200,1,9000,37,85),(201,1,1500,13,86),(202,1,15000,23,86),(203,1,1500,13,87),(204,1,15000,23,87),(205,1,1500,13,88),(206,1,15000,23,88),(207,1,10000,36,91),(208,1,10000,42,91),(209,1,10000,36,92),(210,1,10000,42,92),(211,1,10000,36,93),(212,1,10000,42,93),(213,1,10000,36,94),(214,1,10000,42,94),(215,1,10000,36,95),(216,1,10000,42,95),(217,1,10000,36,96),(218,1,10000,42,96),(219,1,10000,36,97),(220,1,10000,42,97),(221,1,10000,36,98),(222,1,10000,42,98),(223,1,9000,37,99),(224,1,10000,42,99),(225,1,10000,42,100),(226,1,10000,36,100),(227,1,10000,42,101),(228,1,10000,36,101),(229,1,10000,36,102),(230,1,10000,36,103),(231,1,10000,36,104);
/*!40000 ALTER TABLE `venta_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vistas`
--

DROP TABLE IF EXISTS `vistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vistas` (
  `codigo` varchar(45) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `archivo` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vistas`
--

LOCK TABLES `vistas` WRITE;
/*!40000 ALTER TABLE `vistas` DISABLE KEYS */;
INSERT INTO `vistas` VALUES ('C','Adm | Catalogo','adm_catalogo.php'),('DP','Adm | Datos Personales','editar_datos_personales.php'),('GA','Adm | Atributo','adm_atributo.php'),('GF','Adm | Gestion Farmacias','adm_farmacia.php'),('GL','Adm | Gestion Lote','adm_lote.php'),('GP','Adm | Gesti├│n Productos','adm_producto.php'),('GPROV','Adm | Gesti├│n Proveedor','adm_proveedor.php'),('GS','Adm | Gestion Sucursales','adm_sucursal.php'),('GU','Adm | Gesti├│n Usuarios','adm_usuario.php'),('L','Login','index.php'),('LV','Adm | Gesti├│n Ventas','adm_venta.php'),('PC','Adm | Compra','adm_compra.php'),('PR','Adm | Prueba','boton.html'),('RC','Recuperar Password','recuperar.php'),('SS','Adm | Soporte','contacto.php');
/*!40000 ALTER TABLE `vistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `territorio`
--

/*!50001 DROP VIEW IF EXISTS `territorio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `territorio` AS select `cty`.`Codigo` AS `PaisID`,trim(`cty`.`Nombre`) AS `Pais`,`sta`.`Codigo` AS `RegionID`,trim(`sta`.`Nombre`) AS `Region`,`cou`.`Codigo` AS `ProvinciaID`,trim(`cou`.`Nombre`) AS `Provincia`,`cit`.`Codigo` AS `CityID`,trim(`cit`.`Nombre`) AS `City` from (((`pais` `cty` join `region` `sta` on((`sta`.`PaisID` = `cty`.`Codigo`))) join `provincia` `cou` on((`cou`.`RegionID` = `sta`.`Codigo`))) join `comuna` `cit` on((`cit`.`ProvinciaID` = `cou`.`Codigo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04 15:55:10
