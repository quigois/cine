-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cine
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `ID_ACTOR` int(20) NOT NULL DEFAULT '0',
  `NOMBRE` varchar(30) DEFAULT NULL,
  `NACIONALIDAD` varchar(30) DEFAULT NULL,
  `PELIS_ACTUADAS` int(20) DEFAULT NULL,
  `PERSONAJE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_ACTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'LEONARDO DICAPRIO','ESTADOS UNIDOS',30,'JACK DAWSON'),(2,'SAM WORTHIGNTON','INGLATERRA',25,'JAKE SULLY'),(3,'ADAM RIVER','ESTADOS UNIDOS',20,'BEN SOLO'),(4,'CHRIS PRATT','MINESOTA',15,'PETER QUILL'),(5,'SCARLETT JOHANSON','NUEVA YORK',30,'NATASHA ROMANOF'),(6,'VIN DIESEL','CALIFORNIA',10,'DOMINIC TORETO'),(7,'ROBERT DOWNEY','NUEVA YORK',5,'TONY STARK'),(8,'DANIEL RADCLIFFE','LONDRES',10,'HARRY POTTER'),(9,'CHADWICK BOSEMAN','CALIFORNIA',15,'T\'CHALA'),(10,'ROSSIE HUNTINGTON','PLYMONT',20,'CARLYSPENCER'),(11,'ELIJAH WOOD','ESTADOS UNIDOS',25,'FRODO BOLSON'),(12,'DANIEL WROUGHTON','INGLATERRA',30,'JAMES BOND'),(13,'MARK WAHLBERY','BOSTON MASSACHUSETTS',25,'CODE YEAGER'),(14,'CHRISTIAN BALE','REINO UNIDO',20,'BRUCE WAYNE/BATMAN'),(15,'JOHNNY DEEP','ESTADOS UNIDOS',15,'JACK SPARROW'),(16,'FELICITY JONES','REINO UNIDO',10,'JYN ERSO'),(17,'ANDRES BUSTAMANTE','MEXICO',5,'GRU'),(18,'MIA WASIKOWSKA','AUSTRALIA',10,'ALICIA'),(19,'DWAYNE JOHNSON','CALIFORNIA',15,'DR. SMOLDER'),(20,'TOBEY MAGUIRE','CALIFORNIA',20,'PETER PARKER'),(21,'ANIMACION','ESTADOS UNIDOS',20,'ANIMACION'),(22,'LIAM NEESON','IRLANDES',15,'QUI-GON JINN');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calificacion` (
  `NUM_FUNCION` int(20) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `EDAD` int(4) DEFAULT NULL,
  `CALIFICACION` int(5) DEFAULT NULL,
  `OPINION` varchar(50) DEFAULT NULL,
  KEY `NUM_FUNCION` (`NUM_FUNCION`),
  CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`NUM_FUNCION`) REFERENCES `funciones` (`NUM_FUNCION`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (1,'2018-05-03','JUAN',15,10,'PELICULA QUE RECOMIENDO MUY AMPLIAMENTE ES MUY ENT'),(2,'2018-04-16','PEDRO',21,8,'INTERESANTE COMO DESARROLLARON LA PELICULA'),(3,'2018-05-14','MARIA',18,7,'BUENA PARA VER CON TODA LA FAMILIA'),(4,'2018-02-03','ANA',34,8,'MUY DIVERTIDA BUENA EN VARIOS SENTIDOS'),(5,'2018-01-06','SABINA',22,10,'NUNCA IMAGINE ESTUVIERA TAN PADRE'),(6,'0000-00-00','JOAQUIN',24,10,'FANTASTICAPELICULA MUY RECOMENDABLE'),(7,'2018-06-19','DAN',23,6,'ME ABURRIO UN POCO'),(8,'2018-06-11','MIGUEL',19,10,'ESTA BIEN REALIZADA LA PELICULA'),(9,'2018-11-12','ANGELICA',29,9,'ES MUY ENTRETENIDA'),(10,'2018-05-21','DANIELA',7,7,'NO LE ENTENDI MUY BIEN'),(11,'2018-05-21','JAZMIN',26,8,'BUENA PARA VER EN FAMILIA'),(12,'0000-00-00','FLOR',15,7,'NO ME GUSTO MUCHO'),(13,'2018-06-01','JACINTO',20,10,'ME HIZO RECORDAR BUENOS MOMENTOS'),(14,'2018-07-15','PERLA',16,5,'NO ME GUSTO PARA NADA'),(15,'2018-01-15','ISMAEL',31,10,'ME ENCANTA VER PELICULAS ASI');
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartelera`
--

DROP TABLE IF EXISTS `cartelera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartelera` (
  `ID_CARTELERA` int(20) NOT NULL DEFAULT '0',
  `ID_PELICULA` int(20) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_FINAL` date DEFAULT NULL,
  `TIPO_PROYECCION` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_CARTELERA`),
  KEY `ID_PELICULA` (`ID_PELICULA`),
  CONSTRAINT `cartelera_ibfk_1` FOREIGN KEY (`ID_PELICULA`) REFERENCES `pelicula` (`ID_PELICULA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartelera`
--

LOCK TABLES `cartelera` WRITE;
/*!40000 ALTER TABLE `cartelera` DISABLE KEYS */;
INSERT INTO `cartelera` VALUES (1,2,'2018-05-02','2018-06-03','NORMAL'),(2,9,'2018-05-13','2018-07-21','3D'),(3,15,'2018-04-16','2018-06-13','3D'),(4,20,'2018-02-02','2018-03-03','4D'),(5,36,'2018-01-03','2018-03-20','NORMAL'),(6,12,'2018-05-01','2018-06-13','3D'),(7,21,'2018-06-18','2018-07-15','4D'),(8,32,'2018-05-12','2018-06-11','NORMAL'),(9,40,'2018-11-12','2018-12-24','3D'),(10,43,'2018-05-21','2018-05-29','4D'),(100,1,'2018-05-01','2015-05-31','NORMAL'),(200,5,'2018-06-01','2016-05-31','3D'),(300,10,'2018-07-01','2018-07-31','4D'),(400,15,'2018-01-01','2018-01-31','NORMAL');
/*!40000 ALTER TABLE `cartelera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `ID_DIRECTOR` int(20) NOT NULL DEFAULT '0',
  `NOMBRE` varchar(30) DEFAULT NULL,
  `NACIONALIDAD` varchar(30) DEFAULT NULL,
  `PELIS_DIRIGIDAS` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID_DIRECTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (100,'JAMES CAMERON','KAPUSCASING ONTARIO',5),(200,'J.J. ABRAMS','NUEVA YORK',10),(300,'COLIN TREVORRROW','CALIFORNIA',15),(400,'JOSS WHEDON','NUEVA YORK',20),(500,'JAMES WAN','MALASIA',25),(600,'DAVID YATES','INGLATERRA',30),(700,'RYAN COOGLER','ESTADOS UNIDOS',25),(800,'RIAN JOHNSON','ESTADOS UNIDOS',20),(900,'CRIS BUCK','ESTADOS UNIDOS',15),(1000,'BILL CONDON','NUEVA YORK',10),(1100,'GARY GRAY','ESTADOS UNIDOS',5),(1200,'SHANE BLACK','ESTADOS UNIDOS',10),(1300,'PIERRE COFFIN','FRANCIA',15),(1400,'ANTHONY RUSO','ESTADOS UNIDOS',20),(1500,'MICHAEL BAY','ESTADOS UNIDOS',25),(1600,'SAM MENDES','INGLATERRA',30),(1700,'PETER JACKSON','NUEVA ZELANDA',25),(1800,'CHISTOPHER NOLAN','INGLATERRA',20),(1900,'LEE UNKRICH','ESTADOS UNIDOS',15),(2000,'GORE VERBBINSKY','ESTADOS UNIDOS',10),(2100,'GARETH EDWARS','INGLATERRA',5),(2200,'ROB MARSHALL','ESTADOS UNIDOS',10),(2300,'STEVEN SPIELBERG','ESTADOS UNIDOS',30),(2400,'ANDREW STANTON','ESTADOS UNIDOS',15),(2500,'GEORGE LUCAS','CALIFORNIA',20),(2600,'TIM BURTON','CALIFORNIA',25),(2700,'CHRIS COLUMBUS','ESTADOS UNIDOS',30),(2800,'ROB MINKOFF','ESTADOS UNIDOS',25),(2900,'JON FAVREAU','ESTADOS UNIDOS',20),(3000,'JAKE KASDAN','ESTADOS UNIDOS',15),(3100,'ANDREW ADAMSON','NUEVA ZELANDA',10),(3200,'MICKE NEWEL','INGLATERRA',5),(3300,'SAM RAIMI','ESTADOS UNIDOS',10);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funciones` (
  `NUM_FUNCION` int(20) NOT NULL DEFAULT '0',
  `ID_CARTELERA` int(20) DEFAULT NULL,
  `NUM_SALA` int(20) DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `TIPO_PROYECCION` varchar(20) DEFAULT NULL,
  `DIA_PROYECCION` date DEFAULT NULL,
  PRIMARY KEY (`NUM_FUNCION`),
  KEY `ID_CARTELERA` (`ID_CARTELERA`),
  KEY `NUM_SALA` (`NUM_SALA`),
  CONSTRAINT `funciones_ibfk_1` FOREIGN KEY (`ID_CARTELERA`) REFERENCES `cartelera` (`ID_CARTELERA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funciones_ibfk_2` FOREIGN KEY (`NUM_SALA`) REFERENCES `sala` (`NUM_SALA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,1,5,'13:15:00','NORMAL','2018-05-03'),(2,3,15,'16:25:00','3D','2018-04-16'),(3,2,10,'15:35:00','3D','2018-05-14'),(4,4,20,'15:21:23','4D','2018-02-03'),(5,5,15,'16:45:54','NORMAL','2018-01-06'),(6,6,10,'17:15:00','3D','2018-06-06'),(7,7,5,'18:00:00','4D','2018-06-19'),(8,8,10,'18:30:00','NORMAL','2018-06-11'),(9,9,15,'19:00:00','3D','2018-11-12'),(10,10,20,'19:15:00','4D','2018-05-21'),(11,10,20,'19:15:00','4D','2018-05-21'),(12,100,15,'00:19:35','NORMAL','2018-05-27'),(13,200,10,'20:20:20','3D','2018-06-01'),(14,300,5,'20:40:45','4D','2018-07-15'),(15,400,10,'21:00:00','NORMAL','2018-01-15');
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `GENERO` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`GENERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES ('ACCION'),('AVENTURA'),('CIENCIA FICCION'),('COMEDIA'),('DRAMA'),('FANTACIA'),('ROMANCE'),('SUSPENSO'),('TERROR');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `ID_PELICULA` int(20) NOT NULL DEFAULT '0',
  `PAIS_ORIGEN` varchar(30) DEFAULT NULL,
  `SUBTITULOS` varchar(30) DEFAULT NULL,
  `DURACION` time DEFAULT NULL,
  `IDIOMA` varchar(30) DEFAULT NULL,
  `FECHA_ESTRENO` date DEFAULT NULL,
  `A??O_PRODUCCION` date DEFAULT NULL,
  `URL_SITIOWEB` varchar(50) DEFAULT NULL,
  `TITULO` varchar(50) DEFAULT NULL,
  `SINOPSIS` varchar(300) DEFAULT NULL,
  `GENERO` varchar(50) DEFAULT NULL,
  `ID_DIRECTOR` int(20) DEFAULT NULL,
  `ID_ACTOR` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID_PELICULA`),
  KEY `GENERO` (`GENERO`),
  KEY `ID_DIRECTOR` (`ID_DIRECTOR`),
  KEY `ID_ACTOR` (`ID_ACTOR`),
  CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`GENERO`) REFERENCES `genero` (`GENERO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`ID_DIRECTOR`) REFERENCES `director` (`ID_DIRECTOR`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pelicula_ibfk_3` FOREIGN KEY (`ID_ACTOR`) REFERENCES `actor` (`ID_ACTOR`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:42:00','ESPA??OL','2009-12-18','2009-00-00','WWW.AVATAR.COM','AVATAR','PELICULA QUE TRATA DE UN PARALITICO EN UNA REALIDAD VIRTUAL DONDE TOMA UNA VIDA DIFERENTE Y LE ES POSIBLE CAMINAR','CIENCIA FICCION',100,2),(2,'ESTADOS UNIDOS','ESPA??OL/INGLES','03:15:00','ESPA??OL/INGLES','1997-12-19','1996-01-01','WWW.TITANIC.COM','TITANIC','PELICULA ROMANTICA DONDE UN HOMBRE ENCUENTRA EL AMOR DE SU VIDA DENTRO DE UN BARCO, LAS AVENTURAS QUE DESARROLLA DENTRO DE EL SON INESPERADAS ','ROMANCE',200,1),(3,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:16:00','ESPA??OL/INGLES','2015-12-18','2015-02-02','WWW.STARWARS.COM','STAR WARS;EL DESPERTAR DE LA FUERZA','Treinta a??os despu??s de la Batalla de Endor, la Galaxia no ha podido acabar con la tiran??a y la opresi??n.','CIENCIA FICCION',200,3),(4,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:04:00','ESPA??OL/INGLES','2015-06-12','2015-01-01','WWW.JURASSICWORLD.COM','JURASSIC WORLD','Los hermanos Zach y Gray Mitchell visitan la Isla Nublar, un lugar famoso por un desastre que ocurri?? hace veintid??s a??os, pero resucit?? con un nuevo parque tem??tico llamado Jurassic World.','AVENTURA',300,4),(5,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:23:00','ESPA??OL/INGLES','2012-05-04','2012-01-01','WWW.AVENGERS.COM','THE AVENGERS','El dios asgardiano exiliado Loki se encuentra con El Otro,un l??der de una raza extraterrestre conocida como los Chitauri. Con quienes llegan a un trato, a cambio de recuperar el Teseracto, una fuente de poderosa energ??a de potencial desconocido, el Otro promete ofrecerle a Loki un ej??rcito con el qu','ACCION',400,5),(6,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:20:00','ESPA??OL/INGLES','2015-04-01','2014-01-01','WWW.FURIOUS7.COM','FURIOUS 7','Despu??s de los acontecimientos de Fast & Furious 6, Owen Shaw queda en estado de coma en un hospital de Londres, mientras su hermano mayor Deckard Shaw comienza una caza mortal para matar al hombre y al equipo que se atrevi?? a dejar inv??lido a su hermano menor.','ACCION',500,6),(7,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:22:00','ESPA??OL/INGLES','2015-05-01','2014-01-01','WWW.AVENGERS.COM','AVENGERS: AGE OF ULTRON','En un pa??s de Europa del Este llamado Sokovia, Los Vengadores conformados por Tony Stark, Steve Rogers, Thor, Bruce Banner, Natasha Romanoff y Clint Barton atacan una fortaleza de HYDRA, con la misi??n de recuperar el Cetro de Loki de manos del Bar??n Wolfgang Von Strucker, quien ha estado experimenta','ACCION',400,7),(8,'REINO UNIDO','ESPA??OL/INGLES','02:10:00','ESPA??OL/INGLES','2011-07-15','2011-01-01','WWW.HARRYPOTTER.COM','HARRY POTTER Y LAS RELIQUIAS DE LA MUERTE 2','Tras huir de los mort??fagos viajando por Inglaterra, y luego de encontrar y destruir un Horrocrux, Harry Potter y sus amigos Ron Weasley y Hermione Granger descubren que uno est?? en Hogwarts. Mientras tanto la escuela, ahora dirigida por Severus Snape y en manos de los mort??fagos, recoge la batalla ','FANTACIA',600,8),(9,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:14:00','ESPA??OL/INGLES','2018-02-16','2017-01-01','WWW.BLACK_PANTHER.COM','BLACK PANTHER','Siglos atr??s, cuando cinco tribus africanas luchaban por un meteorito formado de Vibranium, un metal alien??gena, un guerrero-cham??n ingiri?? una hierba en forma de coraz??n afectada por el metal y adquiriendo con esto habilidades sobrehumanas','CIENCIA FICCION',700,9),(10,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:32:00','ESPA??OL/INGLES','2017-12-14','2016-01-01','WWW.STARWARS.COM','STAR WARS:LOS ULTIMOS JEDI','Tras la muerte de Han Solo y de la destrucci??n de la Base Starkiller en una batalla entre la Resistencia y la siniestra Primera Orden, Rey viaja hacia el lejano planeta oculto Ahch-To en el Halc??n Milenario para as?? encontrarse con el legendario maestro Jedi Luke Skywalker, convertirse en su aprendi','AVENTURA',800,3),(11,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:28:36','ESPA??OL/INGLES','0000-00-00','2017-01-01','WWW.AVENGERS.COM','AVENGERS: INFINITY WAR','Habiendo adquirido la Gema del Poder del planeta Xandar, Thanos y la orden oscura interceptan la nave que lleva a los sobrevivientes de la destrucci??n de Asgard.Thor, Hulk, Heimdall y Loki son incapaces de impedir que extraigan la Gema del Espacio del Teseracto, como Hulk es derrotado por Thanos y T','CIENCIA FICCION',400,7),(12,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:09:00','ESPA??OL/INGLES','2018-03-17','2017-01-01','WWW.LABELLAYLABESTIA.COM','LA BELLA Y LA BESTIA','Un Pr??ncipe franc??s est?? presentando un baile debutante en su castillo cuando una vieja mendiga aparece. Buscando refugio contra el fr??o, ofrece una sola rosa como pago, sin embargo ella es rechazada por el pr??ncipe por su aspecto andrajoso. Cuando el Pr??ncipe ignora su advertencia de no dejarse lle','ROMANCE',1000,21),(13,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:16:24','ESPA??OL/INGLES','2017-04-14','2016-01-01','WWW.RAPIDOSYFURIOSOS8.COM','RAPIDOS Y FURIOSOS 8','Ahora que Dominic Toretto y Letty est??n de Luna de Miel, Brian y Mia se han retirado del juego, y el resto del equipo ha sido exonerado, el equipo ha encontrado el camino a una vida normal. Pero cuando una misteriosa mujer llamada Cipher seduce a Dom en un mundo de crimen del cual, parece no poder e','ACCION',1100,6),(14,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:10:36','ESPA??OL/INGLES','2013-05-03','2012-01-01','WWW.IRONMAN3.COM','IRON MAN 3','En un flashback de 1999 y en plena v??spera de A??o Nuevo 2000 de en Berna, Suiza, Tony Stark da una conferencia sobre los circuitos integrados estando en estado de ebriedad. Despu??s de su presentaci??n, es abordado por un cient??fico lisiado, Aldrich Killian, quien busca la ayuda de Tony para su proyec','ACCION',1200,7),(15,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:10:36','ESPA??OL/INGLES','2015-07-10','2014-01-01','WWW.MINONS.COM','LOS MINIONS','Los minions son peque??os enanos amarillos a las que les encantan las frutas, pero sus favoritas son las bananas. Los minions tienen tipos diferentes de pelo, ojos y estatura, por lo que cada uno es en parte diferente.','COMEDIA',1300,21),(16,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:18:54','ESPA??OL/INGLES','2016-05-06','2015-01-01','WWW.CAPITANAMERICA.COM','CAPITAN AMERICA CIVIL WAR','Capit??n Am??rica: Civil War es la secuela directa de Los Vengadores: La Era de Ultr??n. En esta ocasi??n Steve Rogers lidera a los Vengadores en su tarea de proteger a la humanidad.','ACCION',1400,7),(17,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:30:20','ESPA??OL/INGLES','2011-06-23','2010-01-01','WWW.TRANFORMES.COM','TRANFORMERS: EL LADO OSCURO DE LA LUNA','En 1961, el Arca, una nave espacial cybertroniana llevando una invenci??n capaz de terminar la guerra entre Autobots y Decepticons, se estrella en el lado oscuro de la Luna terrestre. El accidente es detectado en la Tierra por la NASA, y el presidente John F. Kennedy autoriza una misi??n para poner a ','CIENCIA FICCION',1500,10),(18,'ESTADOS UNIDOS','ESPA??OL/INGLES','03:20:26','ESPA??OL/INGLES','2003-12-17','2002-02-02','WWW.ELSENORDELOSANILLOS.COM','EL SENOR DE LOS ANILLOS AL RETORNO DEL REY','La historia comienza con un recuerdo de c??mo el hobbit Smeagol lleg?? a poseer el Anillo de Poder, tras matar a su amigo D??agol, quien lo hab??a encontrado en el fondo de un r??o donde cay?? muchos a??os antes, cuando unos orcos asesinaron a Isildur, quien hab??a cortado el dedo a Sauron en el Sitio de Ba','CIENCIA FICCION',1700,11),(19,'REINO UNIDO','ESPA??OL/INGLES','02:23:15','ESPA??OL/INGLES','2012-10-23','2011-02-02','WWW.SKYFALL.COM','007 OPERACION SKYFALL','James Bond entra a una habitaci??n donde revisa un port??til al cual le hab??an sustra??do un disco duro con la informaci??n de los agentes del MI6 infiltrados en organizaciones terroristas. Tambi??n se percata de que Ronson, un agente del MI6 est?? herido, e intenta salvarlo, pero su jefa le ordena contin','ACCION',1600,12),(20,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:45:53','ESPA??OL/INGLES','2014-06-19','2013-02-03','WWW.TRANSFORMERS.COM','TRANSFORMERS: LA ERA DE LA EXTINCION','Hace 65 millones de a??os, durante el periodo Cret??cico, los seres conocidos como los Creadores llegan a la Tierra en enormes naves espaciales. En un valle, un peque??o dinosaurio psittacosaurio lucha con otros dinosaurios m??s peque??os por un pez.','CIENCIA FICCION',1500,13),(21,'REINO UNIDO','ESPA??OL/INGLES','02:45:33','ESPA??OL/INGLES','2012-07-16','2011-01-03','WWW.BATMAN.COM','EL CABALLERO OSCURO LA LEYENDA RENACE','Ocho a??os despu??s de la muerte del fiscal del distrito Harvey Dent, la ??Ley Dent?? le garantiza poderes al Departamento de Polic??a de Gotham City, que casi erradica el crimen organizado.','ACCION',1800,14),(22,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:43:25','ESPA??OL/INGLES','2010-06-18','2009-01-01','WWW.TOYSTORY3.COM','TOY STORY 3','Siete a??os despu??s de los acontecimientos de Toy Story 2, en 2006, Andy, de diecisiete a??os de edad, se prepara para ir a la universidad. Woody, Buzz Lightyear y el resto de los juguetes se preocupan por un futuro incierto puesto que deben aceptar la dolorosa realidad de que su due??o Andy ya no es u','AVENTURA',1900,21),(23,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:31:34','ESPA??OL/INGLES','2006-06-24','2005-02-02','WWW.PIRATASDELCARIBE.COM','PIRATAS DEL CARIBE EL COFRE DEL HOMBRE MUERTO','Dos a??os despu??s de la batalla en Isla de la Muerte, Will Turner y Elizabeth Swann se dispon??an a contraer matrimonio pero son detenidos por Lord Cutler Beckett, presidente de la East Indian Trading Company, por haber ayudado a escapar al capit??n Jack Sparrow la ??ltima vez.','AVENTURA',2000,15),(24,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:13:15','ESPA??OL/INGLES','2016-12-10','2015-01-01','WWW.STARWARS.COM','UNA HISTORIA DE STAR WARS','Galen Erso vive junto a su esposa Lyra y su hija Jyn en el planeta remoto Lah\'mu. Un d??a aterriza el director imperial Orson Krennic con su tropa e intenta, por la fuerza, hacer que Galen, que en el pasado fue un eminente cient??fico, trabaje nuevamente para el Imperio en la construcci??n de una nueva','AVENTURA',2100,16),(25,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:16:20','ESPA??OL/INGLES','2011-05-20','2010-01-01','WWW.PIRATASDELCARIBE.COM','PIRATAS DEL CARIBE:EN MAREAS MISTERIOSAS','Los tripulantes de un barco pesquero, en las costas de C??diz (Espa??a), sacan de las aguas el cuerpo de un hombre muy viejo que parece muerto, pero en realidad estaba vivo y que llevaba consigo un libro que contiene el mapa del lugar donde se encuentra la m??tica fuente de la eterna juventud.','AVENTURA',2200,15),(26,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:30:45','ESPA??OL/INGLES','2017-06-29','2016-02-02','WWW.MIVILLANOFAVORITO.COM','MI VILLANO FAVORITO 3','Gru, ahora un agente de la Liga Anti-Villanos (LAV), logra frustrar el robo de Balthazar Bratt del diamante m??s caro del mundo, pero no puede capturarlo. Bratt fue un ex actor infantil que retrat?? a un joven supervillano en una popular serie de televisi??n antes de que el espect??culo fuera cancelado ','COMEDIA',1300,17),(27,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:07:45','ESPA??OL/INGLES','1993-06-09','1992-01-01','WWW.PARQUEJURASICO.COM','PARQUE JURASICO','Poco despu??s de aterrizar en helic??ptero, los investigadores conocen a un ejemplar de una Brachiosaurus, encuentro que les fascina. A continuaci??n, en el interior de los laboratorios se les informa sobre la t??cnica empleada por los cient??ficos para recrear a las diferentes especies de dinosaurios.','CIENCIA FICCION',2300,4),(28,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:37:12','ESPA??OL/INGLES','2016-06-17','2015-01-01','WWW.BUSCANDOADORY.COM','BUSCANDO A DORY','Dory, la simp??tica pez azul con serios problemas de memoria a corto plazo, es la protagonista de esta nueva aventura en el oc??ano. En su nueva vida en el arrecife viviendo con Marlin y Nemo, a Dory repentinamente le llegan a la memoria recuerdos de su infancia.','AVENTURA',2400,21),(29,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:16:54','ESPA??OL/INGLES','1999-05-19','1998-02-02','WWW.STARWARS.COM','STAR WARS: LA AMENAZA FANTASMA','La Federaci??n de Comercio ha iniciado un bloqueo comercial en el planeta Naboo, gobernado por la joven Reina Amidala, tras imponerse nuevos y elevados impuestos sobre las rutas comerciales en la galaxia.','CIENCIA FICCION',2500,22),(30,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:48:03','ESPA??OL/INGLES','2010-03-05','2009-01-01','WWW.ALICIA.COM','ALICIA EN EL PAIS DE LAS MARAVILLAS',' Alicia tiene diecinueve a??os, trece m??s de los que ten??a cuando visit?? por primera vez el Pa??s de las Maravillas, aunque ella no lo recuerda. Sin embargo, esto no impedir?? que el conejo blanco vuelva a aparecer con su chaleco y su reloj para que regrese.','FANTACIA',2600,18),(31,'NUEVA ZELANDA','ESPA??OL/INGLES','03:02:13','ESPA??OL/INGLES','2012-11-28','2011-01-01','WWW.HOBBIT.COM','EL HOBBIT: VIAJE INESPERADO','Un anciano hobbit Bilbo Bols??n est?? punto de cumplir 111 a??os, y decide escribir para su sobrino Frodo la narraci??n completa sobre el inesperado viaje en el que se embarc?? hace sesenta a??os.','AVENTURA',1700,11),(32,'REINO UNIDO','ESPA??OL/INGLES','02:32:59','ESPA??OL/INGLES','2008-07-14','2007-02-02','WWW.BATMAN.COM','BATMAN EL CABALLERO DE LA NOCHE','Nueve meses despu??s de los eventos de la primera pel??cula, una banda de ladrones disfrazados con m??scaras de payasos llevan a cabo un violento robo en uno de los bancos de la mafia de Gotham City, pero los asaltantes desconocen que entre ellos se encuentra el Joker, quien les hab??a ordenado traicion','ACCION',1800,14),(33,'REINO UNIDO','ESPA??OL/INGLES','02:33:15','ESPA??OL/INGLES','2001-01-02','2000-01-01','WWW.HARRYPOTTER.COM','HARRY POTTER Y LA PIEDRA FILOSOFAL','Harry Potter es un ni??o hu??rfano que vive con sus ??nicos parientes vivos, la familia Dursley, en un barrio residencial ingl??s. En su cumplea??os n??mero 11, Harry es visitado por un misterioso individuo llamado Rubeus Hagrid, quien le revela que realmente ??l es un mago bastante popular en el mundo m??g','FANTACIA',2700,8),(34,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:38:12','ESPA??OL/INGLES','2013-07-03','2012-01-01','WWW.MIVILLANOFAVORITO.COM','MI VILLANO FAVORITO 2','El Dr. Nefario, amigo y ayudante de Gru, ha decidido dejarlo por un nuevo empleo, argumentando la renuncia de Gru al mal. Sin el Dr. Nefario, Gru a rega??adientes se asocia con Lucy e inician la b??squeda en el local comercial de Gru, el Centro Comercial Para??so, disfrazados como empleados de la panad','COMEDIA',1300,17),(35,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:28:35','ESPA??OL/INGLES','1994-06-15','1993-02-02','WWW.ELREYLEON.COM','EL REY LEON','En Pride Lands, el le??n Mufasa gobierna a todos los animales como su rey junto con su esposa Sarabi. El nacimiento de su hijo y heredero, Simba, provoca resentimiento en el hermano de Mufasa, Scar, que anhela convertirse en el nuevo rey le??n','AVENTURA',2800,21),(36,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:47:28','ESPA??OL/INGLES','2016-04-15','2015-02-02','WWW.ELLIBRODELASELVA.COM','EL LIBRO DE LA SELVA','La pel??cula se hizo acreedora de un ??scar a los mejores efectos visuales en los Premios de la Academia, celebrados el 26 de febrero de 2017.','AVENTURA',2900,21),(37,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:48:33','ESPA??OL/INGLES','2007-05-25','2004-02-02','WWW.PPIRATASDELCARIBE.COM','PIRATAS DEL CARIBE EN EL FIN DEL MUNDO','Lord Beckett posee el coraz??n de Davy Jones, condena a muerte a cualquier persona relacionada con la pirater??a y obliga a Jones a hundir todos los barcos piratas que se encuentra y traerle prisioneros para ejecutarlos, por su parte Norrington por entregar el coraz??n de Jones es ascendido a almirante','AVENTURA',2000,15),(38,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:26:45','ESPA??OL/INGLES','2010-11-19','2009-03-03','WWW.HARRYPOTTER.COM','HARRI POTTER Y LAS RELIQUIAS DE LA MUERTE 1','Al principio de la pel??cula, se observa al nuevo Ministro de Magia Rufus Scrimgeour, dando un discurso sobre la amenaza en la que se encuentra el mundo m??gico, ya que Lord Voldemort ha tomado el control, una escena despu??s, se observa a Hermione Granger borrando la memoria de sus padres mediante el ','FANTACIA',600,8),(39,'NUEVA ZELANDA','ESPA??OL/INGLES','02:41:36','ESPA??OL/INGLES','2013-12-13','2012-02-03','WWW.ELHOBBIT.COM','ELHOBBIT; LA DESOLACION DE SMAUG',' Gandalf le advierte que alguien quiere verlo muerto, y evitar que recupere su trono del reino de Erebor. Thorin decide entonces formar una compa????a para viajar a la Monta??a Solitaria, aunque Gandalf le recomienda que lleve con ??l un saqueador.','AVENTURA',1700,11),(40,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:59:02','ESPA??OL/INGLES','2017-12-22','2016-03-03','WWW.JUMANJI.COM','JUMANJI','En el a??o 1996, un hombre corre por la playa cuando encuentra el juego de mesa de Jumanji en la arena, tras haber sido arrojado al mar por Alan Parrish y Sarah Whittle en 1969. ??l se lo lleva a su hijo, Alex Vreeke, pero no muestra inter??s porque es un juego de mesa y prefiere jugar videojuegos.','AVENTURA',3000,19),(41,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:24:24','ESPA??OL/INGLES','2014-12-07','2013-01-01','WWW.ELHOBBIT.COM','EL HOBBIT LA BATALLA DE LOS 5 EJERCITOS','Bilbo Bols??n y el resto de la compa????a de Thorin Escudo de Roble contemplan desde Erebor como Smaug destruye la Ciudad del Lago, en venganza por su intento de matarle en la pel??cula anterior. Bardo el Arquero logra escapar de la celda en la que estaba encerrado, recupera la Flecha Negra con la ayuda','AVENTURA',1700,11),(42,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:40:14','ESPA??OL/INGLES','2003-05-30','2002-03-03','WWW.BUSCANDOANEMO.COM','BUSCANDO A NEMO','En un arrecife viven Marlin y Coral que son una pareja de peces payaso que esperan el nacimiento de sus m??s de 400 huevos. Viven felices hasta que aparece una barracuda que amenaza con devorarlos, Coral intenta proteger los huevos y Marlin queda inconsciente en el ataque. Al despertar, se entera de ','COMEDIA',2400,21),(43,'REINO UNIDO','ESPA??OL/INGLES','02:18:15','ESPA??OL/INGLES','2007-07-12','2006-03-03','WWW.HARRYPOTTER.COM','HARRY POTTER Y LA ORDEN DEL FENIX','La Orden del F??nix, el ej??rcito que cre?? Albus Dumbledore para derrotar al que no debe ser nombrado hace 15 a??os, ha resurgido para enfrentarse a los mort??fagos una vez m??s. Aunque el Ministerio de Magia no lo acepte, Lord Voldemort ha regresado para someter al mundo m??gico bajo su influencia.','FANTACIA',600,8),(44,'REINO UNIDO','ESPA??OL/INGLES','02:33:25','ESPA??OL/INGLES','2009-07-15','2008-05-17','WWW.HARRYPOTTER.COM','HARRY POTTER Y EL MISTERIO DEL PRINCIPE','Lord Voldemort va tomando el control tanto del mundo Muggle como del mundo m??gico, y Hogwarts ya no es el lugar seguro que sol??a ser. Harry sospecha incluso que el peligro est?? dentro del castillo. Dumbledore sabe que la batalla final se aproxima, y decide preparar a Harry.','FANTACIA',600,8),(45,'NUEVA ZELANDA','ESPA??OL/INGLES','02:59:25','ESPA??OL/INGLES','2002-12-18','2000-02-02','WWW.ELSE??ORDELOSANILLOS.COM','EL SE??OR DE LOS ANILLOS LAS DOS TORRES','Tras internarse en Emyn Muil, Frodo Bols??n y Sam Gamyi se encuentran con la criatura Gollum, que intenta quitarles el Anillo por la fuerza pero, al verse vencido, promete a los hobbits guiarlos hasta Mordor. Tras sacarlos de Emyn Muil y atravesar la Ci??naga de los Muertos, llegan al Morannon, la ??Pu','AVENTURA',1700,11),(46,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:33:02','ESPA??OL/INGLES','2004-05-19','2003-02-02','WWW.SHREK2.COM','SHREK 2','Los reyes del Reino de Muy, Muy Lejano, ya que est??n enterados de su matrimonio y est??n ansiosos de conocer a su yerno. Shrek no se muestra muy convencido de ir pero por insistencia de Fiona, los tres viajan para que ??l conozca a sus padres. Sin embargo, las cosas no salen como esperaron.','COMEDIA',3100,21),(47,'REINO UNIDO','ESPA??OL/INGLES','02:37:14','ESPA??OL/INGLES','2005-11-18','2004-01-01','WWW.HARRYPOTTER.COM','HARRY POTTER Y EL CALIZ DE FUEGO',' Harry Potter empieza a ver en sus sue??os al jardinero de los Riddle, Frank Bryce, quien escucha a Lord Voldemort conspirando junto con Peter Pettigrew, su serpiente Nagini y otro joven en la habitaci??n de una casa. Bryce es asesinado por Voldemort al asomarse.','FANTACIA',600,8),(48,'ESTADOS UNIDOS','ESPA??OL/INGLES','02:19:25','ESPA??OL/INGLES','2007-05-04','2006-02-02','WWW.SPIDERMAN3.COM','SPIDER MAN 3','Peter Parkerha comenzado a sentirse seguro en su vida, su trabajo es estable, sus estudios progresan y la gente de Nueva York ve con mejores ojos a Spider-Man y tiene la intenci??n de proponer matrimonio a Mary Jane Watson, que acaba de hacer su debut musical en Broadway. Mientras Peter y Mary Jane e','ACCION',3300,20),(49,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:32:25','ESPA??OL/INGLES','2016-05-04','2015-01-01','WWW.ZOOTOPIA.COM','ZOOTOPIA','En un mundo poblado por animales antropom??rficos en donde los humanos nunca existieron, Judy Hopps, una coneja de la ciudad rural de Bunnyburrow sue??a con convertirse en polic??a, exhibiendo su sue??o en una obra de teatro, donde ella y sus compa??eros de clase explican c??mo han cambiado los animales c','COMEDIA',3100,21),(50,'ESTADOS UNIDOS','ESPA??OL/INGLES','01:42:25','ESPA??OL/INGLES','2014-12-25','2013-01-01','WWW.FROZEN.COM','FROZEN','La historia se centra en la Princesa Elsa de Arendelle, quien tiene poderes m??gicos para generar fr??o; una habilidad que usa para jugar con su hermana menor, la Princesa Anna. En uno de sus juegos, Elsa hiere accidentalmente a su hermana. Sus padres, El Rey y La Reina de Arendelle, llevan a su hija ','ROMANCE',900,21);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocion` (
  `NUM_FUNCION` int(20) DEFAULT NULL,
  `NUM_SALA` int(20) DEFAULT NULL,
  `TIPO_DESCUENTO` varchar(40) DEFAULT NULL,
  `DESCUENTO` int(20) DEFAULT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  KEY `NUM_FUNCION` (`NUM_FUNCION`),
  KEY `NUM_SALA` (`NUM_SALA`),
  CONSTRAINT `promocion_ibfk_1` FOREIGN KEY (`NUM_FUNCION`) REFERENCES `funciones` (`NUM_FUNCION`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promocion_ibfk_2` FOREIGN KEY (`NUM_SALA`) REFERENCES `sala` (`NUM_SALA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
INSERT INTO `promocion` VALUES (1,5,'ESTUDIANTE',15,'APLICA A ESTUDIANTES CON CREDENCIAL'),(2,10,'EGRESADOS',10,'APLICA A EGRESADOS UNIVERSITARIOS'),(3,15,'BECARIOS',20,'APLICA A BECARIOS UNIVERSITARIOS'),(4,20,'INGENIEROS',25,'APLICA A INGENIEROS DE ISC');
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala` (
  `NUM_SALA` int(20) NOT NULL DEFAULT '0',
  `TOTAL_BUTACAS` int(20) DEFAULT NULL,
  `DESCRIPCION` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`NUM_SALA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (5,40,'CHICA'),(10,50,'MEDIANA'),(15,60,'GRANDE'),(20,70,'EXTRA GRANDE');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17  0:36:32
