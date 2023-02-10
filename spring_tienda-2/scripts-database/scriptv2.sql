-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: tiendav2
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `Detalle_Pedido`
--

DROP TABLE IF EXISTS `Detalle_Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalle_Pedido` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `precio` double NOT NULL,
  `total` double NOT NULL,
  `codigo_pedido` bigint NOT NULL,
  `codigo_producto` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigo_pedido` (`codigo_pedido`),
  KEY `codigo_producto` (`codigo_producto`),
  CONSTRAINT `Detalle_Pedido_ibfk_1` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo`),
  CONSTRAINT `Detalle_Pedido_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalle_Pedido`
--

LOCK TABLES `Detalle_Pedido` WRITE;
/*!40000 ALTER TABLE `Detalle_Pedido` DISABLE KEYS */;
INSERT INTO `Detalle_Pedido` VALUES (12,2,12,24,7,1);
/*!40000 ALTER TABLE `Detalle_Pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigo` int NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `vip` bit(1) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,'Hermoso','','','','Luis','',_binary '\0'),(4,'Segovia Lopez','','52345','','Antonio','12312',_binary '\0');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (8);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `codigo` bigint NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `total` double NOT NULL,
  `cliente_codigo` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FKily4j6ymnwg9wiff282uv17wl` (`cliente_codigo`),
  CONSTRAINT `FKily4j6ymnwg9wiff282uv17wl` FOREIGN KEY (`cliente_codigo`) REFERENCES `cliente` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (7,'2023-01-23 10:11:55.629000',24,2);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `codigo` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `image` longblob,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'',_binary 'RIFF8”\0\0WEBPVP8X\n\0\0\0\0\0\0\0¢\0ALPH+\0\0\00ÿ\ÂL\Û6ePþhK`÷\Ñÿ	ÿ{\å.,ÿñÿñÿñÿ½Z\Âÿ\æ	\0VP8 \æ“\0\0°\Ä*£>1‰C¢!¡\'%6‰¨\à	in\áv\ì­{ö¶¦>»ó\ê({_\íc±|«ºCÍü\Ï\\_ª¿ò{‡þ¸\Ïý€ø7ÿ\Ø_›\ÛÛu_Mÿ\Ý=F¿­¨\ëŸô7ý¹ôðöþ¿ÿo÷\Úgÿ¦²O\Ï|¤ýù?ó~\nþSô\âÿ¼~\Ü÷ÿ[¿\ÏX~\Óú‰ü»\ï\è\É~\äþný\èþ“ý\Ïú\È\ßH~*ÿ_þC÷sü\Ï\ÈG\ä\ËÀÿxý©ÿûö+÷?øûŠ7ôŸù?\Îûû1ó\ßñ\ß\ß\Ëÿ\Íÿû\Ãõ÷\ßúýý\×ý_ý¯¸¯°\éÿ\Ú\Øƒý\×ÿÿÿÿ_\á?ô<)ÿ7ÿ÷\'\àú¯÷ø\ß\ãÿ\Ð\äÿOô\ÑýWýÿóÿ\êÿm=\ÍýÿSü—û/Û¯°\Ï\æÿ\Öÿ\Ùÿ}ÿ;ÿü\Çÿÿþ{_ù}\Üþ\íõ÷rý²ÿ\ÞCO\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\î\Óc\Ðß».Hp\Ìr\Z÷e\ÉùŽCC~\ì¹$•*1:9YŸcI˜[wwwwwwwwwwwg%-ì¸Ž\03ûF‚…¥p& \Ç#´x¬,J[!]mñW™\"a/{’\rQz”ù‹¯ù...\ÛŠžsH\éRRöx‡’\á\Ð?*ªª©\íMA³\ÉX€H\ï$J×¢¢>P?\ä\ÙyY7Ug\âHê©³5#\Ò;]EË‰\rú\ïE!aH½7·\Ñ\æð¥€h“\ç2gn¤»»»»»»…\ÊRBj\Zhª†E\ës›«_%°S¥C \å˜<Ü¢f¾\Èr\àR¼\Ä+\Æ`‹…¶¸ö¾7\É07¨\ã\"\0±A»Ä¶“)@;_»ä®…Žp!{,ôŽe\Û$l\rg\Ú\íƒ.=_%÷F]¡\ÓKXº$\Ã3330§\Ý	%;…\Z\ã×¯A=2>–ˆ!´¿\Ø%ƒ•þ|\áß¤Ï¢Wm®ùPcIù”\×6jýÿ\ÙJü\rœ\Éj&vv¶,\Í?\Ç\"ª¡\é\Ö`j\ê»\âZJþù\Ò;~g\å4‹®\Å‡¬;¦ffff]ºyR¤_,¦¨¿:0	xm¿÷\ÎÅŒ_;w^\Ôx¸£%\×66ˆ(VtEB\ãr\Zµ¯¨¤\îr7©ö-\ÑÁ-Ww‡\Þ3\îs±\Ä7mô.Ä—ry½Œ^\ì\ÑÞŒEû¨,ŠÆ€@E_  ?É€F¥§Aµ,“›\å\Ç^_–Z>6Ø–\'¬%@å¡Œ\Þ£qn]VWi»‡%¿»’D¦Q‡¢¨\ç\ëôÀe·\Z\ë¸}¸&\ngÅ¶‚‘\Ýj\Ï^ž­Ib\ïü†v­..V\Ê; Ÿ8­e2u\åÇ“Ž¾ðNœ»\æoy3‡\àv·ð©¦:Ë¦fff^#\ä1½§À]•·s\í[U\éÜ°¯c\È\'Ï¶x¥#þ\çLJ\ã9}JbNX\ÃZ?8Ž\Ûmf¯)FHO2¬y:9~?]Z¨¯,<\Ô\Ã\Í2Tµi}ó0\ãÀ¨\Û›–\ÌnŸ5¼ô\Ãwo\Þ?\ê€\ÙfM·õ\Ù\ÆB\Æ~œ¹œwwwwwwpû¼ô\"\Ø¶[\ZUÿ3™ž†Nž\Û\ßf™\çœJ»\ä,KYUü\Ò2¶lù†q\ÚE‹\0–\ç*p6\Äü“$ô[J\êùœ¸9È¢OÁø*ŒUKC\à/‹ðBJ\áSYV\ÆNŠqý±Žq\ê°D\Å<e\ê)OöO\ÜpM®ˆh‘‹c´žyiŸ¯>^Ó Ú–I:d—\ÔÊ\È}\Îø(¿÷‘\äb\éÅ¾æ®«(’…¥©°j)¼{`_mÄ²–\ì\ÅaR¡`¯üZ©§\Ð2ø¿‡º®¨´¦ù\äz%\Ñ;ûH€¼\è\r^Õœ\Ý*ã­•ˆø× ˜p¿÷\Õw\ÆŸPð^d)\Ù-X\Ö\åÕ‡?\\?góc¼öD!Ÿr\îW}^¬±\Ü` \Í^œ@\0=s”ÿWf\ÇlW\Zaª_	f±•õ+ªB3F÷5ªp’3\è`¬±9Pju\Â\ÙZ\r•ó\æ;|%`‹t>9óóa\ÔZ§ý×°*ùh\ç»z¾\Íó.òªª!Á\Þ\ÌC7osVý¤\Øþ;n\Âþ9\î\×*°T”0Á(JT·o\Ó\ÓkôJ+\Éò\í|H»8¼·7\î’)\Öe½iŽ\Ñò»%÷³ª¥ò·\í}$\îS\r{«EHút\ìE7÷)p\ã{r@©gd‘[[Re\'=!¦\í+²L3333Z}Iý\á\Ñ\êò9Wª™\Ó$©xÜ¿ 9\Z†e‰`:±T5}¡QnòÑ‹RšOF~Š`¤²5:¢\Ýt28VR¤½:i3‰ž;/+½K¡\ä1g=~¶\r58÷?ÿ\Ú9{pŸ3¥´v}‚qy\×\ËX»XöÔ²I›\Ý\'„\rA¼ŸdN²¸{=)öó‡œ\áJ\Z	„n\Z7-¸üf¤¸{|\ß}ND™ª&¬\Þ\ÝKŠ\Ü,œMu|šJ\Ó6’\Ò³\Ñ÷lþ%c\âû1cQ0\Ãnk•Ÿ¨\Ûƒ\êUk\×6–6&­‡@üªªz]\êüI\ÓO\ÏÁ\Í( §Tj[U;¢Oÿ1-ï¤¿\Û@\î\rekÎ¿[\éˆjs±°eh\Í>‡Fr€\î\ß%¼Œ‚6o-øÑ¥6%þ\éÿ©ò@¢\Ë$£\ßd¿ªZ\æý\Þcµ]DÈ¢•Ö¦\å\Ó30Œ\êŠòÀ,Õs:&K?\rs—\Õ\ïy™zzR\ÓöÿCûEn„š“¥vºM\í°\Ü\ß\â\ß{_ˆÿnBv\Ú\ïñ+w¡\Ñõ\ÖÿAQ]^}-ŽÎžc0·R‘P\Ððø—\ì»\'´\ï>g\Ú\"¬O\ïIŸ_À8vûÝ‰lv„&\ïí—L\ÌË½\Âd 7‚†\ÏX\æ’5×»¾=E.RH‚	4{}£vaX ýô½ª\ÊÐ¡‚†J{´A\Ø<\Ìd¤¥”˜\'¥7?.¡Ešf…¦1˜\Ñj\Ð%\Â\Û\Ô×¶¬¼—mV\ZQ[0òr›/¥s\Òi‡8\îD0\ß5%.\Ö\n\âC\çþ•’¤1ÀÄ‚zó™\Ï,f±¡_)òœ>p~Zùv\Î>´ò\ïJú‰xgóf˜\é\Ù7(08¥j\\ÀKM3—Á\Æm]zqÉ¡¯PŽ<Ô½šŒW\Ì\Ü\Ç\r;\éM–L³Ö¡P]@!N0qú(}\è~E\ïŒXg\ç\Þ-.4	#öšÿ\nE•gxa’”~\Õ\â:•Y€q\çÜŸ|\í\Ü\ÔS}•\rI¬J\\n*7w+\ÏW\ïÖŠ\Øo…ƒrcÈ¸{\Ók´\Ë\"xù´>\épPDü¤]þœÆ¾¦ùXg&Â„/ƒ7»·-o‚\ËK€y§|‘/9™d•£LvUO\Ïb	FT±\æ\n¿ú˜\è©4F\Ê\Öõ[¾\Ø\rÿQ\ä»G”fŸ¥\Ç8’<”ß–93¯I’\ã’\Å\Çÿ«A¡¹‰B\ÅI-´n&Lz%\Í0M\É+9\íÓ©oö\×~¿õt=º\Ö\Åô$«:\ß\ç\à\í,\îü\ÃòpW\ÃJ›	\Ø\"_/A€DQ Gz\èú\×8¥\è™±´ô\âÿ\Z‚€m\é\êrb²X…}ŒY~0¹©\Æ\Ü\Ü\Õ8ò\ÍX\Ðg\çGS\ï#D|{t?\ß\à2‰ù\éú}\ç \rú\ë*k©&/\áµ?E\ÈÀ†ù¹K–v¶u¡þ\ËS¦\æ4÷\Ùÿÿø Kü\âS\r\Ö>+Cò\éß¹ÿÿU¢¾\Ë2š«&? ¶µôºgEh’\í\å¦<ª\Ò+-\äm\çj`p>\é-ºœõ\ë˜\'ÿÿLšóÿ\Ï\éR^.úý\å~T’T<s\Í}Ü†^¹u1%÷ò˜`\å‘wÿ\í~DL—®\êY¸ƒ\í\ËBÿµRIþnhfKö,\Êgma÷\æOo´\é€xºüAv\ÝyicsAú:ÿ\îw¨*EŽ\Ùu6€ep\Ó\Êµy,6µ_.E§\Óþ€Fz\íA‚–H\Ö~\ZŒ<\Ïm\\AõÀ~\ÙÿDdÀS•UUUG„n\âL¨.MÉ†\Z{ñò÷ÿu\Ö\Ý@÷¤ƒnúôR`¦´v‚\Éma…ð\ïh³ñ²û\í¬º÷eQQõ›N•d\îQ£lŸ\àwEAD\å^|@\çS\Ô#øñh²˜fu›¯¹\à÷e‚QU\ÏÊ‹wù	\ÉuK¤¯0\Ì\Ì\ÌÌšq\ëÁRL\àºTË“\ãý‘Qý¶\ì\ä/\ËÿjSL1ö\á\Þ\ÝQ\Ì¾\ÔÒ²(l\ÅU<k÷5V³\Û$º xý\ç^P\á§]T5¦±úþz\\\ÜôK\n’¦©†ûÿÿ¦E$ö}\î\æOz6¥’a™™™4§¦ÿƒrµr°¢ðúò\áÕ’\Í\Óv”’\Âþy§AW\"P\ÅXJNÓ¯ ¬•,\åŒ|`š1ƒƒ\éþ\Ô\ç\Ñ_\ÙuCÿø\ìºP‹lV,“\Ì\Ì\Ì\Ì\Â\Æ\ØG\0\"\äKð‡™ -š\ï6±õ\Û\nÇ­zÊ­¹\ÌS/·H\í\ç+ÿ:–\ßSÿ\Ä\ÈþµEXu©söU‘\êL‹®¢o\âZV:\än\ä\ÚÇŸ€YLMi Nšb\Ùa¿\×Dû¹\Ð\Û\Ö¨¨:\åUUUUUUUUTk®\Â\0¼\\sñ¯a¥Sñÿþ¨6?\0\Ô]Nxfffffffffffff@\ìM\"ý¡Ÿ¦»&\å\Ó333333/†¹\r\rû²\ä‡	ü\Ç!¡¿v\\\á ÿ˜\ä47\îË’‹3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333332€\0þÿð\Ð\0\0\0\0\0\0\0\0\0?¦÷ÿÿ\é€;\Ä+vžüHöº¦\É)	^q½-4:¦«öž¥:rp€Zn1Dò\Ê\Ö/1«ù‡ÿ¹²—ðHO \ÉúM\Æø\ï­-S\Í#Á‡¶–ù\0Ý‡\Éô\ÜK«„Iâ¥¡-g¦*k\ë+ù\ÑA|M_È\Æ{]\íŒõsý\ß@\";l\ãù²\Û\æ\0\ç:r[öZÁ¦¨\Ñ\×ñÝ®M8i;»‡`¶­\É^\0\ß`!ÿ\Â ó<š\Ãÿ9Ï„‡¨,R^!\ëddô”,9\nC?\ä¦X\Ì\å\Zo\Í;U[k¡G^\ÑdŽ\Û\í¢h9\'õAT\Ö\çšdd…€e>®Í‰;\ê)\×ú¶\æk	\']u5ž\ZV\Êe’9\Õ\Ñþ\çˆnYƒ\â\ç4\ìŒ\í†r\å \ÅV\È>\Ê](-Z\éGýØ¸Gv0‚ôX‹†\Ä ºQ/”ºsmq^Wb0Šö·OÂ‚U`(Hž!DýE¥l\Î\'iöHþ\Ú\ëvÁdÀ‚¸”Ç¤G ˆðII\n\"•µ\Þ»É·J{Œ¥Šý—jÉ‘\È\â\Ûÿƒó|I\à~Nž@œ;¬a;j‘¸o-úQ/ ±›Jwƒx|#ºg:H­ðö¤\Ø8o\Ë3GJLOj›\Èö\n]O*xœ\Z!;\äAŠ‰“xk™›ý\Õ÷ö²j3û÷ò\èÃ½0>\íõvv§©tÁÈ’Å»~&H<\ÚPžo\í*‰™=)2¢;`‡a\Øv;¿O¥Ždfz\Õ«ª]ø—ƒ	\Íû!®\Zl\â;\Ä\0\ÇZ\à¤UpÀ\Èù*DÐ¨Žv|{\é0\ë+/)`\×w&+4\ê\à\ÈkT\Å•oÕ©nz«ºü8k.¯\Êø\âUvY\rI5š»ø¹…\Ò>¼®Pv\ã\0½Ù¨oŒWj~¶•l\Ä\ß^\ì¤[¬k¸-M)û\ß\àk\ìd\Ïq\ï‘gs´´\Ìc\äe Ö¾yü\æ=oJ”U\ß\Ï\î¥w•`\àµ\0R®\Ü\àdz\Ç\ê\â»ñB_ûnW†hR-­\Ð\ÏhŠ\È+´$Uc™&$\Ûc\Z\Õ\Ô>\à\Ì-r›^\áƒ‡³‹4)þƒ\æØ•1s‰wžZ\ï\ÅO\Ëxûy®3Û½N\ì¹\neYŽ+ˆH‹\ÅhTnB\â\ë‰\ÈðS\Æm¡\ÖE¹Æ~ÁxÁ‚·À9D\Î\Ã(ðjA•	j\Í³•†\îî–®ºq\é\çÿ=ßŠPz°Gœ+&\ÑWù»öG	‡ÑŒÀž}É¸}‚tŒ\ä	-ˆJÂ‹¬ÁŽ RÝ«ýy²–`h@sRä™£EH~¾\âI\àñ°ø‹¹\re.	q²âƒ¥@M—\Ûð;–U\ê&:\Ô\ïÇŽd¬\é“@’÷ûQGj$\ët\èP­E4g#¸Lm…\Û™ó¥ó`¢\ÖdÄ’ñ“µl|ÀEžrZªS\Ò\0qµ±\Ø\Ü©S¾N\'¬»Š…\"`×©¤’°…\Î\É\Ð\éé‹¬\Å5Ÿzò\Ç\Ë\Ü\Ù\âI$\Ô(K\nª«?\ï\áe\n’\ë¾ô\ë²t\é€F³—0µô\Ç\nÍº|ª¢L«Œm(•GV\ÅþŽb€\ß^©=´Y\r(YºV\Ä\Ûp¨c„›*)˜|Ng¸Î \ÉJ\ÚÀ5­Ä„›Ã<8‡/\ë\ÛXP\Å@M…±}¿X±V?EL\Ùm\ržl«ÿùg…p…±\à£Ñ¾Y®|k\n\ßª\ç\ï\Ø\æy\';¶%J\n\ÛÝk^V#‡þn…’\à|\Ív³fÔ·_¡—³’V\Ú\êB\æ\×\r\á²*k%*¯§^eYÒŸ\0\ÎÜ¿XxK†dô\\tˆðr\î±4¥‚}A·(·¼Á»„ò\ËH\Æ÷˜V®|¹q!«<#YŒ\à”\â\Ñâ—¶ÿ¡4–\à>–š*£´zm]\ØAk“fô\ÜÁ…©6Ÿ³óFµ\Ñ(òøŒ0¨ tœóF¾\'  \Ö4\\_\á\ë\ß\r!4\Z\ß\à\êj—¥$©«¤\ÆS´\Ç\ÄÝ¹\ÆË“:d7eH\Û.\ÈP\ÑRN\Ãõ^Ï´‰\×T\0šŸ\às\ÞËŽt\Ë ¬ieðCEX\r\áxóJ<Ï¶üð9mbr\Û\Ì\È%=5­&	Ÿ\Ù|gaKIŠM»\åþFŽ\Ë.`\Ù\Ï\ÐÞ†ú&\è\ÍY%—k]öd¨m”\"\\‡pJ\íŽ;hÉ§?ô·ˆ‚Àp\éTM¿\î\r	›œ5²K^–&»i;_\ÊGmm\\vñHg\Ù0,Ñºx¾©½§’÷Ttx\ï$Ó+. \á£Á(\á\Ê4·ï›¬­ñª@±$\Âs9ô•zQ\Z…ø¹hºi3è·ˆ+•f3ðZýæµ•¼#:r\Å\É÷o@FtFñ=†e ¾™èºŸŸ\"\Ë\ÄytDŠøw¾\Åq˜u[KT/u&3E†˜©d$ˆ@m\ÊQb\ÜUD‘Xnh\Ó&øòÂ•\ã\ïG®ž‚7x\å&9™s) \êŸDNgüJ\âù\n•\Äû¸£º\å¼8‡j\é\å¶üÄ¹¿«¶©cýŒc8z¢\ÓôAÁ2£m\î	us¼ñ\ËrG\àÀŒÐ”®ò:^|¼r\éõ\í8ó\ïe¬[ž\árþ\Þ5q\"¤1\ê8?JÃ—\Ø\ì0™?•H~®a„ñµžÃ¹n9ôÎ²¼’\ìµø\Êû¥B¶\Ç\ÎÜ»\é¾\ä÷€t l­zi\î°-\ÙÁÑº&Œv\æ\06HGxóâˆ¾\Ö\ïg’\ã\Êþß¾6m”À†˜Uó\á\Âñ“qw…Àp\ß\Éa¤;\à}\\Ã©a\Ú\á\Î\Ç³v\Æ À\ç\"JUúÓ›\Ð\éaq\rŽõò\ÚX\ß@#Žn^/Pû%±´™-7—\Þ\\õùÀj}Û´z>¶\Âþ©\å³4ü\ÈTÙªqð\Åû\ÈI\ãIS‚rG•‹²\Ã\nW›scƒÊ¾\ìrü\'+ñ²^\"¿Yµ¬s\ZÍ©\0ö´ô3wÀ\È,–+\Í\Úóü\Ë\ã\Ò4aÉ¡d¢ã­û/\å®\åŽ\ÆÁ³²`J\ß>>Ã…F\Þ\á$ã§¹\âX mùÖ‘dS>ÄˆUSP`¥{%…§£~\Ôö_(o\Ù\è|™\Õl\åP¤z\ß\Ë<{<U¾üH¸.{eG\×}Vµ!•(O4€a4¹<f=†šFLÿ(´e¨ó|\é\àÔˆú\Ê\ëGª¡\'vŽ\Ïf»\Ã2\éU\êe·Y{	<þ\â½P\ìÿ¦#SI¨`\ËA\çT¾ÿ\Ø@Ä·ª\ÝY\\;×´Iß‡\":Í˜K\æ\í Þ©š÷ ¢aúCaÈ8÷¥rQM\r\èlXÄžYy\åZ \Ø;Ê—´^É ô±`‡†œóª»Šb7üúòx)\Ç\×@ B04P*ú\ì\'£\Ðkü+ø*%›˜\åÄ­X¦\æRPq\â©v²W\ê³9M~¡1«\Ü<žÅ¬¯i)¤ûG\êû\ã\ïþv.&&C†½¾tO‡\Z\ÛÁ\àqù‘U§a¦/\n\'!¼Ã“´\"Š™R¾\ì\â—X2³3R˜\íœJÇ³:\Ë\ßN\Ê\Ò\Ø/0\Ã[q	 l£\è{\ßb\ÈM\Øe9={ƒ£\ÃÙ‹P»\Z”91®w\í9ÿ\"\r¬»\'þœ\Í9‰+ H¨…,I\Ä\å,‚\ÂV´j\åM<G\Õ\ÎZ7™Ï¯\å‰ñ\×PšwôýZ \ÒM3™>µ$ŽDùy.Í¹	O3±ô\ä\â¢¿H²€\Ò]5\å,ó9Š¾N²\Ý a¥\ã*\Â-W\Z|\Ì, ¼‡\'EETC“`›\Ñý~‘\æ\ï”#*±¾H(G¡…ñö–›˜Ë\ç\ÛJ”ÿ³ðK°û\'¡Œl\"Ü¢od‹÷¹d¡y2ƒ_¯¬(ÀVÿ8‹B›Dh§)U9B\ìz™z²¢ºð\ç„6Á\ÅKœ,™¤sˆ8û€:Tµ\ÐM<$\Ú3\Í\ésF\Ò†)/,ª´¨sc“x~=¹8Ša\Õ=,\ì³¢ª%Q–±}\è\Ô¹ž};ƒù-‡–†\×œpÀ\äAIM•xm¹mP¢\Ô>}­(b6\ÛDÅŒl°¶|ù.˜oŸŠö°Q-\âo\ÑHEÈðm\ÈEc¦²–öŠ™ô=`-“¦\ï¹À;’\'yY20A<Ž%5\â¨PÍ±\Ú÷ðcú\ÕZ\'*Oö±B\Z€E‹xš	´^\Éýr>\ßpS)\â‘\Ã \Æó³wj¯ýec|/‰\ÔJ8iœ3¸v?õO#\àß“t‹¬Vš†¿‹V\îTœS7u\Âsó*…h\ÄucDü1’N»Ö„[£\Û\â\à&kl²=¥‹‰K\é\ãý“¢û\Ú¶{ ?\Ó\áB5\â\Çö þ‡‰nÝ¨}\ë\"Ö»®\Í|\Ð1\ê\ÂÂ´´KûÒ9¾G‘:\ZEmf\éû\àl\áW\Í\ç>ž²e\Þú÷Cýµ ­ò\ï2=•_ñ*SÔ‘®\àP-ò_þ*\È\Ô,Á}\Z\\Pü\0!²®\är‘”i3qº\á	™\ÕH.Ð’[Iù\Ì½—Š\Ò\Z2ˆ\0¼\Ò+£b\0\Õ\á\ÏÿŠ;R\nŸ:5÷F©\ë\Zz(\Ö\Ã\ãy¬\è\í&Q¿·Û¬?ýã¦¬\Ö\0a\ë\Ý;\Ü\n\ì{\Í\è¹¾›\0<yŒ= x\'Xþ ª‘öŸ%ƒ)]‹\ró\Ì6\Ì~”qòT\ÞyÕ¡N²\×ë¼«¡\Ï¬¡\ÜQ\æ‚\à—\Ò\0{òMk€ˆiT°\\{N\Ïf¦O: :ŽbŽû\ßôKD>¤\Ú\n\èb=Éš*…Dñ?‘`E\éƒs(\Øö\n#ù\Ø\Ïvƒ£ªÁH€ù$þ#´\ÄžÃ\ê»)q¶ –U¸/(t\rZš#&¶´\ÔA\é¶¢Ý­À\ã\"\ÉO±„¦\Íô)Cn\ÙAm“÷\'Àøþ¢\ã#8WŠ\ÄZ\Ò9¨ùÀþ`ò&\ÜEge0´Àl-@m¼\àbu\Ù}z+n\Ù{þwGi‚rXý1)A¹kž\Ï¯ÐŽ>ˆ©„ÿ™ºq‹¥\É(‹,\Ì\ÓL5¿lî³ˆ;‹z‡*Ò¾½°e¦\é\Ý\\¼P\Õ=@`w#\ï”6¿aT,>Á„o\ä)lO$\ØDz\ßm—´ò\Õò†‘\áº<…½§£~tiûU0•f!ÿ<ˆ\ï·xý’M\â¨$\ZuGõ1.\Øva\ë„^Ÿ\Âu¿(nT¹DÁ¨°YVy \Ë\ç;9^nt§\Éúf©#&\ä!Ý“\\(ößŒp\Ç\Ü\äqMQ\â$‹4\íž\è\ÞR*O9=!¸e\Ýs¤¥\\<(¨“l±V¨%aF\Ãc½nLÊ½`\ë\Â\í/N\ÏüN »¡ÿa1Ðª\'?ª!Ú¾”F¶ß˜•\'\î¿\r¨QÌÏ”\â+˜NPö\n¬™\Ô/k\0ÿñkù³úL„!ŠT˜¶?=\É\ÖÊ›¡!, \r cõ:d®õ\í÷\å„\ÙiS\"„å´žöE©\è\Ò\Ï,\×~T\ãgBxz\Û|sf(.\'¤GQÌ¿¾Rš\'\Ú÷U\\\Æ\Ýiû\Èm	–tù7>·\íL-¯[w#\á…ðV·7\Ë_BŸt\ì\ÌBEÑ±ÿ_Ž†\çz\Ô\\Z\é\ì£l4³¾\"d4Ë\Ã\ãºc\Ã1ú8¿„…i±qÅ»Nžu\Û\Ãý«B\àas‡¢N[Oš\á5s„ªj™¿˜\íº\àZš%Ä§\ï5Ýˆ\\\Ç‹\Ý#Tùxv©[œ´\ÜÀ\ï\Zý>|n:ŠšeªqƒyAø\ÔMuhõ \'³úžÌXY¢¥fI5\Ã\Ö\ØÙ’\Z *\ï\Ò5býmH™°\É\×8S[\íl\×?©´Ô–cšþÿE±’@tc¿±û>œÐ 7²µh\êk\î{(\Ý\åhBvt`°c\áX^¥Ä½ò8\ÔSr6¼=9õ\Ãsò±Ë¿\ïó\ÉhÍ_\æú.!\ß\È„ÓŒ\ïZÃ·86Ú„”}\Í\Î6#i%\\*Ý®Ëµ\ä²8©\Ölž\nªl„cS øb…\Å{9\Ém8A™X|­\ÕÆ†=“)ñ\Ñj;\Æ\Ùz)l£œõŒ\ãRÅ¥•\ì{® •\í j\\Ý‹‡\0®aÁ/jl.\Þhi	óxdð\ìhDÔ»D¡\r\Ó\Í\Ð\ÝTøÚ°\'‡úòfŸŽ¡ Ô¯9ù\Äg¶+EfŽXHnÆ…TË›ÿ€\Ðóxšï˜¹\n¨\ßQ\ÝK=®Maÿõ»$=ƒoaA3y{d:\Ð?\r«\à›R—%ûÛ¦R\çÝ¨À@0üo}‚Q„\ì~øc\éD\×d\é\Ç\Í9d@ž=¿¹ˆ\Ãõ­Q1\r¤òüIü7üb’ƒŠ\r\èp³³\Ëaa\å\è›`—£±R\\LF·O\Û-\Õb«Ùo\ÍQ\Ãø\Âÿ£g3Ž\'Ÿ¤bNO\éÓ€	©i¦\ÏÝ¨\È4IÁR‰\ÍŸ¹Nnœþ¿;¿µ.RyO\è+„\0£¥\å|¨–ß“PÁk—²\Þq\Â|P…Ò–¡\í‹k(GE“Wûˆf\ÏñÁ\ßú¨}{Kø¤Š\Ñ=€\æ\Ï$ôª/•\ÊE´_R¢\Å\r\Ýú\ìÈš‚Z\Åa/Ö¡ÁƒfX\'¿A¡ò‡h¸yúŸ™8\Ì\ÞZ5ó\"Ztº2Š¼ƒSþ“Æ€žR™µ½„\íy<À˜\Þlœ@I¬§˜¸Žxða¹dõ`\Î*’\ßé±¿—„Ù–ôW…\ÃO}Ÿ–W\ìšø)\Çvk-sLi\×•\ßûõR3\Êj8±¬d.ÚŸj\ÖM6\îÙ¨\Ób\×9w{ƒ\Ç.	\Ù\0§h£“\Â\ê\Óø.¿\Îof+\ï)¸\ÛÚˆñkÐ½q\Ãd\èZ\Í‚\à§Í–d†@\È\Ï\ê\ËÙ¼DLk\Äü‘“»¯ÀýÃ©±ø÷]fõ\Õ0‹o]¨oÀ³%ÿ…\Ð\ÓuS¸½ùi<*\åBbeóA\Ç\ã¶\Ñ^\ï¤&{Áÿ\æ½¶\Õ\ÖÉ™‰**\0€V\ËH°\Üe\ç\ïÍ—C`eÁŸ+,/f\Ó*_c\ë&¶¸ˆ›º¢À”\äÙ¢üû\ÇSG\ì%j‘€pð=-¦ó†¿A:ô×±›)¤xø\î´ÿ•‹\\6}£«\Ê\é\äUô^p\è{M¢‹øAòÛ™ò\Ðt²¨\å¬hÀkm\íX	uòB±±\î°:˜±Z\Ä*†J…º¨Œ­VªÐ¿L\Ê\Ï\Î.X‰\Øbµ9× ÇŠ\ì\Ï\0c\Ä*T¼˜$J˜\ÞÀ~~©y®-ø§úù\Ñl0V\àmŸdWõ\ÑsÀŠxKˆ~\éK;+œu\Ê\ä\Åût‚Žº”ó_–£ŽÁ\ÄLw§\àxu7U5\Ê/@Õ‡;¨Af[jš\á\æE\ßÄ½(3³‘<i%»}\Äöûx»M»m]oþr\î «G\äG—›Ð¸|Dk+\éf¯W˜mþ\Þt»œ3!wx¨\ã ó\Ø\ê\Ø\Îú\Ø]³Z\ÚÖ‰F\Îu?ö¤F{w@ƒ\Æòš¯õ¹}º4¿!¦\Í9=¦\ËÀ\rs\ÏE\â‡\â\ÌP4š;Š$‡¤^Žü\Ð\à¯8”¶p\\}t½jm\ÜõH¥œ{Ûšyÿ¢–Å—\è\ÍWÞ­P¤<fkTÃ¾\n\0­\îU—¸\ÄÀ™ð¥­··ó¡¨nGyŒ¥\ä\êž8MbeM¿Z\àô”\é­<d	X\é\É\åq\â¹\êxwc:œHo8¤1\rþÀ{z–º}Š/Oª`q¡>ü¦9‘ütz@ \æ\Èb\Âïž›GœB4 !\á1Ñ‘\â\Â4LnP#\âgŠ.\êg\\\èlW\Z«\×\á5þ\áóò¬\Ä\×<k\á[óŽ‡yL›¥Ô¬yM \'\Í\è\ï˜ôQÁ-!²\é„\Ï%,@„ù9¬;±Ç¢n\Ò‡Ž\Ãq°yakˆ³÷*\'(\ã²N°ýe\×\É\ë’ªøN)=ŸSðg\Ã®\ì²ò\Ê§U‹O\\\ãò¼Ui–Û‚p§\ë`¼„*\Í\ì.¨1\á$hL›\ê\íF\ÙgµO\Í\Å}=ˆy>cYS´P\Æý\Û\ÓZgb\Ð\Ú\ÛüýU\æÙ£°i:¶‡qò§¾Jþi‚Œ#õ7*—IûaBø™–w¼X€ºøo\Ëj\â\ìLRO\ÎEß·\"œ_§õ8fÁ \Ä]\ï©\Îƒó\ïSU\Þð\ç\Û)\ÒW\ç{—Cµù\Ãc±\æAº\È\È?K\ê¬P¯…p\Ô:\ZGõ˜\ß_-K\áAš(&Ñ•{*\Ü›”®x]81PR\'ËŽtq—\çjz‡û\ËpørŽ­‘€Þ“nt\0ù?–\ç¡^r‹/Ø£°Ui.\ìp\rÍù\å2f«as›D“\"V\ÖP‡uX\Èb¯\âo\ÍŸ<Dv¨ \Ê\ï\'\\“Ë¯þ*¥ó\Üý‚«÷\ÓFØ½Q\Í\'–lv¡\ÔN\'ó\Ãs•¸“e‰¶úù\Ü\Ò\Æ9AôXÿ:p°)P´	…ú\Í\ì]ü1z[\Çh>k\×B¤\ê0\Ô\È7°\ÊA\ãô(\ÖN\Ôx~:\Z‰m.À\r€€§\è)>ª;¨yI	¢)|3s\×O\Ëh#»òu¡Ôªÿ9yý©#ù\×OÀqyW\Ý\Óôk­È¯3\ëA#\ãÎ‚\í¸™7D\Ù\æf\Éø\í§g\ëSC{Z\ÝøBvee=kó¡^\Õw\äL›`Xñ¶€ˆNIu\Z²\Z%³\'p+i9“öPrÈœð\rs\ßUÔ¸î™›¶©xp:eGù%mcœ\ç\á\Êpÿ9§M\ÂNl¦[óS•\rMüV\ÕChÔ\Ýùö—œ°8¶,óXl,Jiñ\ßÿ÷P¬)P¦¿\ÃF¼]r \Å3\ï§mW\Û[\â¥w³ò\ë\Ç\èÿ$…6§\Ök(p)\05üVfŸC~gCX Dú˜_SBœY\Ê™Wo\ÇH\ßE`F½Ó±d¢O£#‡‚P\ÑÍC\î8Û—¯\Ç³&]z{KT_³;ƒ9ðq°OzN:uv¢e7|ë‰€ ó\Êa™5ó˜\Ú‡jõJTÅ©g5°\Í\Ï\ì„\î\\p ¶|óp\Ð\0_“P\èW\àc¿¦HŽT^5e¼ÿ\Ýþ‡e‰6s\êúb§‡Â‹Sª/\ZC\Äg{šQøÃ®ù\ãu\ßñqg›\ã±%\ÖÒ–ˆ\"„û’9S\'&I#Dy\ÝÜ¾%˜Î§¸ú>H›aJÌ„¤;	\Í?‘?5¬˜sÿ¼\ÝÇ‹\×°\×M\ÂôŠ&o†N»EX‡ù=/ˆ&\Ð¸(>.ú»°[”3G\æ\Õü±K’:WQ¸p‚\ÑT2OZS\Üy(÷ˆ¾\ÚtWaý‘¨\ï\écþ£-r,\ÌX\Ô\ß)\îñz\ä~\é¡ù!NIg´w\â\é÷9‹šV&<j­	\ÓrDÿ#¸1±ñSe\Å‡±\ÛyIX\ÙZ‡=\'õ%\ÄZ\Ð\È»!\rX\\%žPú3¬\Ó[„[¡|Àº°7·´\å»\â´\â\Í,K}£U‚w¬^&²™*¥!„\ÛóWbpÝ¸u›\î™\åS\æt\Ø\ã\Ü!šŽ\"\â¨ýŠ—¦ú¹x¿¢§\È\ì\Ò7pø\r–¯`ˆ\Þk›0¤\Û\ÝK\r‡\ëòÛ¦B\ë\Ö ¸\0QŸ0\ÊwÃšV,vE)°E—™p\ç*\ÂC&n\È\ê\ç\åKûO{¥Ë¬¶\âµ¶\Ì\Â]Áª=ôØœj\ËC¶nSöƒ…\Ï2\Úypò¤ˆ*íœ›À³y¸on‹F=¥ú‘ ?±\rrL©¼ T\è¤\áÇ¶\íŽÑº\ê\Å\ÈÑ¶q\Z\'£²#¬›œ+hr8y\Ã-H\ïmI]\ãlÎ¨qþú”\n†\\\Õ\ëYfL\ÑÎ›ø\îU©‘;Kvz5¾\ã\ïóŒVÁ\âcF:ò±QRÒ›bòI·P\rl\ZùúBò\r©`«ˆñÈ¿\Ó\ï_`\âS’&ZU\0Ö©‘gV+·¶\\K*þ\ØkŸð†\ï\à†¦#¨ \ÑÌ¾\Ü\éb;\âp½¾\ØUó:Ïª0NÌ” ü\'  h¡\äjCsd\ÅP©Œ\Ø\Ç\Zƒ¡.ÁŒ\ßÔ‡Z,\ã\Ý\Èú0þD¨\Æ\Ù\á\"\Î\Âˆ’¬PÅ©\Znv£™TƒP±¹T\\HQ­®e˜Ÿ¢*b÷Ä­_/÷\rö²‰(þ¡òÁ\0+§	\"J\\R‰ø¡™œ‹F-3Z‚š»ø\Õ\Í…Ž§7£@µ:¾\èÉ¦o<1\Êùp{0s\Âq\ì\ZÆ’°QÁ-\Ì,u\Ú\Ó\Í/\'4î€…Í–(©Õ®D£ò¯õ1«ÿ†Ó±²õýC%¡>\Õ‘£&ˆ± ùf\ä;GRýN(¼\î+\ì\Æ\È\ÚúÁsY–55YÍ²‡÷5\Ø>p†\"È£º\àV:R÷C\ã\Îþž[\Ðik½®LaµSÃ­\ã<\ï£)±u^üré»¤8ým-}\ïGE,o¡ò«*rDüYÛþ\åžù”\Ð:\ên\íÔŸ\0.‹ßˆ+€\n\àƒ+\Ô\ršŒø…;X\îÞ©J—‰/3«fo¯Z¶ƒÕ¨\åY{\\Ú«\ÂG.k±¬/ž\íTb\ß\Ä=1\Æv\Ù\ÖNi¨V“„Y	´3+\Í7™ ™°5\ïþ€W4\rœº\'0ôžö\\»¦“^\çq+jl4\æ\åHþ\Ú\èp$.ÿº›¿|P¨\ÊþF­¤¿$\ÅC—W®v\änú\Ùxo³½<5/b›Z\Ä(7	Nyútd“Ä‹µhŸoÛ¶V›\Êy¶up\Zzÿø¢Î²:×³\å\íw\ãL\ãd\Ë\ÖnW0¦°ñ¬\ÚlG\å	7·a\á\0M­\ë/T¶tg¥¨Nt6JN¾¡$2AFÃ›l4\ë\ËF›\rî›¼\Ô\Æ\0ŽP\n;Qˆa«7{¾\æ\Ç\ãï…ß¤\Ø\å5\èUKzIÏ“ñv?[—­B ]ZÂ¨™=‡}¶\Z¿!ù,6?¼(\îºMú@¡\äq’\ÂW¹n\ì¤wPc\Ênª\ÞAXðýq>C\ï\Ã\"øôü::\Ìy­¡o(½™pp«š\Ì\Ãu\ËU~zŒ\ÉZk$f^i=°\ÉpÍ¿7\"\Äõ”	†\Ç\Ó><\Ë9C¦ý\Í\Zû ´w„ym\Ü\ÆE0Wm±Dª†¢®E\Ö%\éð\È\Êp\\%[F~3•¼œ»¤\ZI7\Ý\Ï(’aœÉ„.i»\Æ\Û%?Wº¾[)\ëÿQ›u\Ç3<~g\åø\â;š\à\Õ-\Æu1¢$.ÐŒI‡4…QTÿ£$’\Ý|Ào|8.\Ê\ç\ï¸ý\Ï\ÈÃ¥ý§Yk?••\î<± hˆ\àˆ[³UZû{Äˆlø|º˜\ï•\n{\Õ\ãK¸ù\\ñ\Ë5\Ýÿ^kGª\ê<%bg€É±RC+`$™ýò\åÿò\Ô[::\Û\ÌònÞ´.‘ž>.—+,<ú–\çýþ:ò³½]!\nDºkv–kõƒ›ºU\Èû\Ö‹c ²”Ò¨\Õ÷:¤+oÎ›MZ«º%‰=k³j\Î\Ã\ÓR*­&\á\àÙ¬÷h›TN\ÑCn\Çe]&Ô›Q\äC\Ëó»oÿÍ¦	>¿þ‚/+\ï\'ƒÿf¬\Ìù>´\Ø\'(Ð•«@ö·üc#h\ÝWñ>B\Õ{\Ú†]jÀ\Ì\î?½ˆ >°‹3ƒXƒ¶\ß\ã#Û˜\Éž^=aK¥\È{ILŸ¡©U\é\Årµ§W\ÒD\ÅÃ¦’Áòš\Ö=v´žmgU¸u\á]®o\áA\È=û{\Î`\0²lóY*dž\ÏZUG¿@‹0	vf*\æÁƒË¬\×}±ü!_¢\é/ñ\ë±†\ÕO\åY\Ñ ~’Ào@2¢³\ÏB\ÙB9y\Å\ï\Ñ;D’Š’º@G¢\ç\ÉM9l¶”ŸG\\\Þ9“\Ì\ã\É\ã\n\àQ5™\ÏL­þ\Þ_\Õg3\Ýkýâ‡‰ùaa™SÁK\Ãõ+È®\Î^U\Õñ¡\È\Ðr\Éq\'\Ù )ö˜l˜\ÌW‹ïº°\î\ÄÈˆºÑ©D\ny7ˆÉ’Kt\Ê\ÉKû®;™\Ó\ÕLh9Xj…˜Jt\êº”M¢#w« ðWµò\ÉÌH\Çb\å»4\ÈYa˜`Aƒªy*ñÀh\È\Æ\Æ7bcö¦XRisKi%¯\à\Ò\ÓE\ßû\ÓÖ¨\"ö¶-_\0k\Ä&¾S¸ª\Õht„ó\Z¨‡\Õ\â\Ì8š¿\â\ã3ú†D=“…\n·†fR^\0œV\Ä,P«ýn\×if]~@\ã/ƒË»k\"Hcv½­›·9RÚ‰Aý)t¼\ë3\"ÿ)$mµ|qðw,_1¬“.#´\Å×ªb›PXXgJ+©?o‰„¤v3v´¤B\Û\Ñü \Ò\à\ÐÁR’}4o’\í8¡Ð‹\×|\ÔÞ­úÿ•\Ëûs\é{\"c\è,E–ü\Z]cf_s\ê©\Â&KkŸõXmô¸c\ÔeŽ~š\Ûo½™T:\ß\ÓQbW\Ê+\Óù%ô¸ˆ¸\Ô\0¶\0m&¿\ÇSŽ³eôŸ0\ÓA\Â+&cRÅ©—ž¥ñk÷\È]r¿Œ©+MÁE¾E¿¨]¡ÿo_ê¼¥õ¾úM‡k\Ù\çVFFé¡¹öK¤ýv\Ò\ëy¬dwf|ø–Ye]F\Æ]qôe \\D£n,+»4e]»gó_œq“\Í\Ñ\ìmDª\ãz!k%´\n5N\Åq†]\è¬\ègZˆ½\ã/i¨\Ö(J¶¾L3¾¡‡“‚ž7¯¿HØ™+ŸL\êGvrN\ëñ\É\Ñ\ìn”–\ï$sq:A°W<\ÚjòErµÅ¾c\ÎÁyoÉ¢D\Ü\Ö!\ÞÆ½C½aˆ\Û\ïp@\â\Ï÷+pC¢\'.Á7±„Q\rÿ%\â¦A>_?\åa\"•\È^™=m®\ÐY¤–\Í.\ËÎ:öŸ\ìGm\îƒÚ°œ\Ò:­\ä\érR#\Öõu\ê\Çü5¡:»\ê\r‰}\ÈJWÿ@\Öø®\é¤i!5‹¾S³r	GÒm\ä>1„“‘ˆÀô$¶Û°#Z\äB·3AõýT,^m®›£¨\Ò9\\\è/=ÁpKQÿ5¾\Ä_\Ûñ k\Z¿3%B!\ÓÝ«‚\ZtiÁ3²\íg\ÈÐ¯¯F>fZd\Ç\è`½kK_&|¸½ôAš\×\í›AI\Ã\ÈH«Ã•)%s\Ú‘—³\ë~’Ë‰ã¦»ø\âHk²W\í{\Ö*œ\'‰Ll?6­\ëœbS¯«xB\nO\ìs(t\áM^eb¯Pp\ã\Ê\ÓrD/ÈŒ\äùø\ÐLµ¯I©÷¾-z·\ï3b<‚\äy\í.\Ó\Ù‘ý\Ö\ï7R#x)µ$\nhñ\Ó\ãGW©D\ï\åw–ž²û1\Ðdv9‰f\Îg\à\Ãóù†\Òÿ¡,O\×+S9Ž”.¥Z`½\ëv@ð\à™póøñf ‡%û8\ÎI\Ë-§½ž·Žl\Øt\ç¨\Í\Í;³šcAÀòÿT´G’v{¥¸žv\ÆS*\ÖY$n÷X\ËcôM¼ò–2!\rw\"ŽØ±\èt\"\'†\Ös4Q(I\ä¯;ÚŒ¤—¤6y•\ây\ß}—ÿ@›³\Å\×<zK_¾—Ê»!\à‡·Eþ®(ó3µêƒµ­­•W\ív¾õƒp\És–óX\Ó÷>a\ÛX!ªš‘Žˆ\ë\ä‰Àþ\ÙJø\Ì\"h\ávÞ´{®+g=²Ô³\ÏÙ•Ñ³ùœ\Ñ\ã24\'Už\áÜª_£÷¤÷<\ì\ÑL\âµs*\èì·…ñ\è+zG\Êýš¹ 3t¶Ÿ}\ÄÀ™\ç8/|\ÄP\ïôžªI:—±*ýå¢¥¶Dxò˜,a„0À…&^´„I)\Ñ9cü)™ ‡œ@=Ã¼\Ì<Y[\ã\ïX\Æ6\Ì\ÑDqp\Åü/…`-\Þzhø-¿¾m£V…£g3?ÝŠ\Zc\Ü\Ã+¿\\Z<\á^N¹3Ü‰)\áq.Ò¥Ð¸ZÑƒS²N«ùZ¹¦8[÷(ó\Âc}¡\àN\Î\Øõ3¦@Œ¢¤\Ð>æ’½Àý\'wªD\æ\ì*;ƒHL¹\n\ä©cŽöŽ\Ýy9Ò!¤l\Üy(¤	º‚Â³^\Øñ\î-ÀR1o\×jZmÆ—Kò_}«©í„–1\ØyÂ²Oø}Ô€j$T\n.X¾\n˜VX#ò°ŽZ\0nŒ…+œôfo‘\×$ùV„÷\ìdÓ•\æQ)¯K)V<¤\íA®u[~:\é÷}\×\ß\Ó\Ó$O†NA\ÒC Ä®œÌª\Ù\âÐž\à\0l\Þ\ä\Ñ\ÚdüM‹\Ù)\Ãw¡ñŽ!>u_¼ž\åeS‰q¨L\ÛE€¢÷\æE£)?h(\Z~”^²õ\íM|{\Ö³\ì\ÂÌ–õ1\è\Û\ÎME\ÃÛ˜”\ÜOz0\ç»2ø¨¥­Ì–\Ë\ádmR\ËHƒ\Û}gôv(°ß„\Ü\n®ˆeŸ:d/\ã¢\åGEF\èS;‡¾„þÀ\ß(1§šh\î‹\"Ð¼ñ™\"*Z\ÒN}\áH.ñ>ƒrº‡ù\É9«”½)\×¤\Ø2\îù¢\Éuœ*¡¾Ó˜\à;”ø\Ãú=\\I\Ðµbj©/’,\Å®`\Í©-b\ês^\î>nX`ug\Øó\Ø\Ê*\ß\Ë\ç\á\Ø\Ì\ÖVg\Îs4\Ör˜s*|\ÂYþüq«7V\Âù\Ðô9Umü¶ù:¿A\Ù\äLÏ‚šª™^4c—³<h²‰ü\×rPöÖˆGpø>-E<¶¼}ÀHŸi¸ ²«‘\à¯\ã›5ñ\ÉMe\"GÎ³“Ÿ‰”8UzkM]!»\Ô÷Š¼~žë‘¥Ñ†L‘Á¢KD˜j\Ê\çž8\ËH|ˆ²\æ›\Èu¡>l|\×t\ÓCB* ‹ ;\ÒQ‚v°Â…ˆT=J\ï¦8\ÜÝŸýòE/´Y¬\ãq\'€À\è)\àSò¸X\Ëø„*ùa\ZüÃ—„øA2™º\ì”m#¡3\Ùzb`\Ô/\â\ï‰\Z>\î!ó	“øÔ€ú|\Òv?\âR<aÙ£l¹»	A7%—s¿‡„Ë™F¹\Öl\çµc¼ñ’õ;o\\@j(\ÅöÍ€Y\Ü*=™¿$zDl\èÿF\nôBŒ\çšT\nz*Xõ\rÝ²Q‘\'FP¯½K¼+…±\Ý\É\áGð§\ä\ãe	%\È\ÊP¾Šm¢¶2\é®û\é‰\Î\ÎG¼NC¼8 \àµ\îýž;Âš€x\Âß­ë”¤ýtYS¯L\èKwŽ¼!\â\È.M\è½/aJ?t@&ð:ËˆV\ZÖ°ŠöI’§7`±=k.>:§!Æ²Â°3Ü½ýÀmÿ*¸•\êª/€ \Ùk/‹–ý6–\Ìw\ß#·µ²˜r§œ\ÊF¯<7$C!ó8wˆt_<^(ž#¨OW’	{\ëŸ\É\Ò¯\Ã\Æ4LB\ÉýC©«yø?;\Ä\ê4¥‚ºý÷\ì­\ÌIV„x|!P\Å²³Y3Ÿš‚\Z•¼|¹YO\\lAd[\Ô\É\Ó\åóÝ/0^¬„\ícÁD%½]F¬Ìœ<\Æ>£^º±[§¶\ÌÁŽU\Ê} ™_¡:õE‹\é“pD‡\Ñ`\r*ù\ïW9À½-“\Z\Ît…½\×@-\Î\Ó\\\âB§\à\ìúGz\Â\àoˆ\è\æþjJ2D8ÿ\Ñ`¸v§*\ÓñŠoûºö\Ó\ä\ì÷¼½0­‘üµ‹¢€‡\î÷žcxE\Ò\ß\nv®{\ã•+=>Ê‰£\ÃOÿK´G¦[(r\Zh\Ëj}n\Öks\ì\"wø*X§?÷E\å\nU\á=¾œ\r…-¸@M\èŸ]‰¾³7Z~@”$ö1¦b0?\Ù\È{s\Îÿ¹\â÷\ÊZ¢VBvT¼\Þô\ä@˜!ªJŽ\ë!\ÈlD’¯i¹Xy\ìŽñ†œ¾\í“\'\ä(t\Ø\Ç_%«ô_~8÷–b\ì»\ãô(ƒMm8!e6¹Ž\ß\é>¾\î‡\r$s¾›õ 	:N\\w4¥:°^ý†ž[\í\àôbg2$¨XH“.\ì¼@.y•\Õýtv	4ÿg#Ï³fJ\ÓR{iÇ•†­}›\ß\çÈ©&;Z\ètagX@\È.j¾fv¤q\Zó^\ÜÕ›Ö„¯\åŒÇ¬\Z\é	\\é…Œ:-kSy-v!ž‚\Ð*ô\ZL¥®\ítõŒJB|§þ¹úï’µ/Œ›}²™S?‚aLS–Hz]\×q):ñ~ƒ\ëNbú¾öG[W_½c–õ¤\Õw±\r‘p^Z}0iV\Î\×ÍŸ`¸%Æ üNù$ñ\âA+\ß\èDþƒfb\ÌO\Î|%\ä\à,e^ÿ_˜û,&ÀEÆ¯y¤\Äcñ\\/8c6”•ø\'\ÒF\ÅZ\á9vF+D~¹\0ŸÛ†^u\á}©ðQ~úb\çEþÎ’½©û(Žyýa/¤õ±Gc˜O’3“f\ÂXÿ\é\×K›¿üª	ñ»U\æAa\Å Îº4\rV|óŠ\È\ÛDnºSA •&\î\Õ$,It\éSN¹a¿\Å\ÊßŒ/*\Úÿ#«¬ªÒ­pv`˜÷c\'ô\ÚY4Ú©˜UÔ¯7UA€õOi˜\Ï\Z	\Ê5(øÏ¥;<\ëH* <)D—PT®\îy¢M+Ng\Ê\Þs\É\âCqŸ\ÊüG\Þ±\à,ý2\í¡(­¹?Ê•\Z²K)	ƒ\ã|p\ê\\d`ÿM%\Ø\Â[ª–\r \Ö\âÍ°¯ð{,O/\èd·Wõž‚‡2hq¼7Ñ›zs–¥/\Ã)¬!\Ð\nzLÀ8¥3ŽœÀ;½–?\ÃY\Ï2mba	s›cm§\ïZ\í	`F‰\å™r€†Œ\é\ÍM”%\rz‰£\ë/\Ù÷¢\r\Ï\0|eHO^vê·ŒúA<¨\ä(Z­X\Íÿ\Ålý\Ü\rO+\Æó\nT\ä\Ð|¹ñ:Ÿa`C‰º–=Nõ«Å ¶eF_Oœdÿ. ñ[\êòŠ• $ŒÎ¾\ÎlŠ~ažoaù˜\ì.\Ë8µ\íôrÁ[o»þ?G[\ÛxºN7Ü‹—T\á^\æ ðTD—\å#l_)©O0T\äf¤\É1)\Ze4ª\î%ð¦†OR>¤³/\ì!¹QEý7\Õ1=\Ü\ïÏŸ~Òµ¦°Pº9\ÅO\Å[>Ó¶·|\ï…w¾”\æª2•I\ÄÖœ˜–5LJz\Ù\è\Ò\Ìú»UMÅt*²`e›R‹\ÌT\Ê m\0`\"(X>S—¬B\Ø[þª\Ý[0O\äX*\á\Ç\ÛJxRT<\r\Ñ¢\ì›\åfÙ™=”jò3Dñ3¡b\Ìú„ÏˆNh\ã%¬¿p·-ƒv‡#ˆ¤\Ö2\Þ4 \0¬\å?\Ð\Ò\Ú3¬‰(\å7©ønf¤\Ãú7=_OeºÏ¨\íñ½p5Rýœw\à\Þ\é¡\ÅUR¸†‰Z\Ä\ÊTÝ¶\Ù_\Ê\Æc\Z¾\Í!˜•|ý‡h\ãöLXŽ—SôyrVa\îj§%\àeª¦RˆN/\Êob]šE–ƒ\ÒAl¹®£lD1\0µ˜FR	xC»‹¾Hx–\Ë]\×V¤«V\í@\ãP\Ûz\0\Ê\ãÍ¿¥\ç[\ÝW\Ã\à^]2B\ÜÆ½òv\Ú+\åÿ%\îZºno\ÎÓ´À·\Ðq5—˜ö\Ñ¼Œr€­Ý&E÷\Æf„6A š\ä•\áù{ýZ´bˆ¤|^\ã1\ÎH\Ð\àq‘\È2¾\îö®\ÌO[\Þ\ìH¬jo™Ÿ/-,%„_¨ÁwlLvžs\Õ\ÞÄ™¹”I±õ\ã8­6\Äó\á®™÷\Z(~pôØ‡\ì\ìÀ\à\Ó^_Á§%Lÿ¨\ÊON\Zga\Ð\Zi\ÅtZ¨#Z¦‰¼W·¹3[lY5©\Ä	ø€ù(@¨°0?{~‰0±óbš›œT\â€þÜ™V‚:½/Ç‚ûJ\ë\Ûòü“»{6©c­+P{TG:ZD\é\æ†}G§\\”,Vz±5—\ÆK÷bÁHŽF\'\êœA{¶\æ~\ÃwSZp{–]|ˆz\Ì\àüiý\çy%*ðF·\ÐN	}?¶AüÐOÁ»]‹[òšü¶²¿\ë\Í$™\\YÍ–JgŽ½fS\ì¿v«ƒšÿ\Þ\ÐñûØ‰{pLFS\íqt˜\Ä\\vš«\Âòg¯®tº …ýXvûHUg\Å\Ã\Ïs\ÙxŠ÷D>»Ñ‰!¬y\Ê×„\Ç#·Fc‡Dñ…q3\Û`RxE R\Ö4RpY“ ÆŽ¤\Íò\ë\Â\Ûv\Ñ\é1št\ç\ÝP/=N9„2®g?yý÷‹Ž\\&:~ÿa\Âù¸ô.Y	ˆö¾HpÛ­¨@4;Z+­×¨(\'«\Ò7®\Ði¬›II\"0ˆU¥­j{\ÏB‘Š#(\Ê}*3ñ\ÈN´oõ®\Ý~«Ë—5¡}¡m)\åú©3¶‹{\ì\ç\ZaVÞ½»©\0\'u°ið\Ñ0^ \ç_Þ–A·\ÓE¶\'Œ<GŒ­ƒ¨k‰ßž.f“ªfÜ½€ˆ;(\ìÇ‚nWW\ãiX\Û\ëÀ@#—¥\âL±pX\Êg\ßÀ²?-†\äB4¹\ï*1Í¾dºGƒ0‚ý{Ž‚¨8·±Wºc6Yò\Ù4,\åwH\Æ² •€/<\\‰\è \â\ßüö,[y\ï\r\"™J¿+r^;š!¹éª±¹)¶…v\È8ªl`¯½²‰\":Z…% \îÕ‰‹ö\å^‡På¯™\ËÁ\ç,…EŸ«\Ó.k(ù#\0N„L_D³üOC\ÇRW³	±\á_\å\ÏGžòò»`û(¶\Éd\ìrR;J6Q‘Ÿ=¶–±òg]€i†Ñ¥\Ì=o\åhóÈ‚ñb—»Á\ç·\æyq®ø\"©=Y\n\Ç8v£¨•BŒ\Çû\Ç3R1Éµ®Ov\ß\Æÿ¹*\î5kò…©$ð­9RÑ‚¢ò¥kÌŒ\à\ÆP÷!h»}q\Ú\Ö\Æbû\Õ\ÑÁzR\è28““\×3¤bø~^Ku0b›A÷’˜_±\Ø;U>NrqNºJa¥Gi;ºç©†\r\Î_“U™¾4\â­L¿•PœP·’g\íû.K*ó½õýXð¨Ð´÷GaÉœ~“˜\ã¢öz\Å\ïn\ÄP.\íA\Ë\0\"Ž\å=KHm/½J	Ùƒ\Î¶sƒ\Ï\ÔCÀ4 ¥<Hh^WÏœ¹\å|1uÑ¼·“\âs%Ìº²É†Pi\Ð\È‚­\Â…·µm\à§;[	hL\Äh¤µL>6|M\ÛÀ\r\è’|m\Ñh×‚-ª6\êpz%¦\Ó\ä%Gg\ç(\È<½õ·é¢­%®(ü\'¿TÈ $\ÒT]Žü§\ìV¯š{¸4+ø„aFÿ\ã†\å\É{þø1p.\n\×OÜž†ø\ZIŒØ£„µþ‰–-\"G]\Ø¶\Z\ÒÕ•‚Ÿ0\ë¥¡]ƒ•\ïw÷\æ\ÎvÀ®F#¿T?\Ïx\ëÚ‚œ.@®ÿ2\Òñ¢M]\re@{Â¨¹½Žon%\å‹\Õ4µ]{¼|\r<e¤c¥Ÿ\Åmû¥(»òIWŽI¦\ß.K0A1]\Z@Z\ÆC{`\08B¡|ž’x\Þ.ð\Ë\'cñ\ì8\Ñ@“gþˆ\r(±X{o)™S_‚šh}\ÞA´Û‡¹KÙ¼w“Á>ñÛ‘©ô¾ö‚I `3fýóñd½dje/Ug,\í(\\Js‘\r>‚\ÎzÍ«Á¸Ds3D˜i[ù]««\Ô\0-0\åW–\×\ã¨~\ÜJ?6>\ÍWŽe5\Ã(Ø­Ž\ä\\ô\ãú¥õž)õ8\ài\0Žhz(x2ø*q\Ô\Ü>ñÒ°\n¯‰X“\Za\Î\0¹1\È\Ú7¯é“”£\Âgý\Æ\Ï\Ì\îBl\éo+¼q\âÆ„^6;\Èz\Ð\'û\Ô\ÆF\â\Z”\Ò•þwÝ¢„÷\îûŸ6\Î\Ð1t…wC‘\Å\Úhi^8o¡\nb\æÀ|Ðž \ËAœ9¡%òDÕ­b‘¸Ž1\ÒTÑƒ4ItT\ÌR\ìzi\æ\r\×\r5ôy‹¦‘˜\Ê\Z\àŒ\ØU\Ó\é\Ù\ÄYá©Œ\Ã\ì«\áGš©\ÜX­\Ç:\Æ8§S£óƒ©˜\Øwõ\ÖS\é^s‡µ¶H“\ê”\Æ\àÛ—W$uv	õ²\ršÂ¨¤Ž;¢Ž\Îñ÷(0cox‘ô°„«UÍ¾\Ø\'½\â\ØÎ‡\Ý[\Ê\Ù&‚\Új«j´&4J\ï\ÅX•©ºó\èŽ±\'¶¨«\á.|›`gð–\ë¬Þ½¥H{a’\n\Û-\r\Ze\æ°V¡kÁmj\×\'\"ë‡SK\å™^ñ1œP´7‡Ï†&?žnŸ\\tJhB[nM%¡xQ>Û¯\ÙÒ–\é\ç\Ü\ÕÚª\Úˆ{·›@vg€cý\Üab¿³E$·¿†wo=@zŠýFž0‹óÿJŒfp\çÅ¬nðVÔj¯®!©Ÿª«Rò\Â\Ö3÷ú„Ç¯\Üw#yq\Ï\\ÿZw\ËÁ\×ø\ãQ\Í\ì0\áU–5Cf§l„@\Ãs¯M&02\ÞÏº–r\ZQ \ìˆ;\ÛC\â\'$Iñ[SD¬i\äö5uÄ·avÿ+ñ¼\Äü¦-ež\n‚kkV2$m5‚\Z£(\0®ŸªŠüC£è¡…h£\Õ\à\ÜJ\"z\Í\'\å\"\îÏ§„=]Í¢H8#/\ëIRFÿo¹®\Ì.3n8Gƒ\Úö;+™ú\à\ë\ZV#\î\\ñ\ã»q\Ï\í\Ñ~\ÓV\0–\r{ú´ÿ¸\é¹\ãÿ•\ÓQfO_þbLG{…8·†¢g\\Žj\â©\ï\ß~hŠ\Ý\çC\ÇGôP\Ç\Ûev\Ò\\·¶3\\\'\Í^\é\Ð\ìs±¢\r€ó;’\â$ \ÈÄš/³f£w$Ð©+É‡ÚƒÙ–&ú’\\O(M\Ý\ÖA\è\Øf{c¾¶A\ëúS\äD…G[g½\Ûh‡­¦\ã®uB\ÊÅ‹¥•KK\Ü\åb…š*|reÁ\á;\\™—¯¡I\0Á˜‘š‰ö?\0\á\Ú)\Æ\Í\ÔKþh—K\Õzcÿ„–¦f\ÐPõb¡ù+eÒ‚\ê\ë\×3^A‹ƒ\Óß‘\Ü\Ñ\áõv\'…­ q¢/-N}\Üj”P\â /i‹£ö9Ü³fEþ\Û\Ë\î–d½=‡ò¾Jr\é`¤\0HDT³p€Ëš\n¤‹[²´Ãˆw7\"\Ò÷3U4\n“\È\Ñk†MÊµfŒ¬\çJK0\éL„·\Ò\ì8\Ö)€\r»Q.ø\Ê\Æûª ˆb†\'(ª\Ù\Ï.ýñ¤Á‹7›4›ð“ij\îAŠ\í—[B\ÐË§¡\ÛDpQ Xc¸\Ôÿ\ï¬d\0¿\Ì8\\\Ù%½&¥Q\ßc-\ãÌ€ó—\'(.—gr©®„(\"¿¶A;ô\Æ*\ÃtÉ¯\Û+%o±/\àU¬\Þ\'v\Ä¹MK¦­cô\ÐVn)×ž^x†+\ËJ\"ƒ82?‚mkw­–\'\Õ0$õ¨Z &\Ìe\Ûw\Ç>p\ÈBŠ‘O¤-ü‡³tüõŸš!l\0Mÿ\Ý^®-ºlX/±7Žÿ:sÊ¿\Zc¨¬„òO;9\'^fv[F\Ó\nGi”\Ã\×\ã\Ó{\êË³5”\è\'M ¤—Z\ÚC:_\ï‚\ï\n\á±y©$¦e˜\ØPô‡F‚\Îo.u\Ò)ý—)wÕ·\É\ïø\àù;¡\Z³Tcuy{\Â=\×@S~PE~¬ªù\Å/½­yo¤hŸ¬F7GO\ÇÝŸ)“…dVŽ6`Vž{\ê#\Þ\0ö\é%¼( £ej\Úc“\ìt2\ætD°¿¦,\nÏ¢\ìþD\èGø·1¬(^\âex1\Ô\ë1\ÐO\ç\r3g‰\Ìw£\Çß¾\Íøm¯ÿ\Ýg\"\Î2ð¿q³·\"Yñs‰Þ–C\ß©‚¼\Ì\Äh„óYÓÆ‰½®xdžm\É\à\ïQŸ“C\Ò\Ï%/\ÚN;K\\„p\é\r§ýhAF\ÜJ\"t\"³\Ã#1Æ«9ö^p\Ë\Þi»\Û{=3~if^ý#—4Ï©!òom¹Ê\í{›ò@\ÜSôÁl`višÿ/\ä}¬\Øxðd\Å@Ö¢UÁŒÇqXÿ{vûe£¥g¾¾ˆ§$ö¿\à\'q\âúÓ„V¦¶!—Ë¤ak¸´ùs€ ™½7+\È\Õl—ÿ3‰\É>Q•Á&l÷.+\Ð\ï?lùU+IRŽ‰¯!)\é\Íq¹û\ß(÷†ŒHs\ÂPý3u\Æ:$¾\Ô@×Ž~¶ND\ç–9·_‚GòfS\É#†Œ\ÄÐœLq\ã/H\ç×¤e¸=¤\â¹\ï<q‹?}{\Ç\í»WÉŠ“&C„=\\3\n‹­\Ó6%›O3€P\ÎõõýˆO;£C\'tô•o\ÕU*û®¡0Ð™X:\Ç)Ê£›n]ŠcC’\Ö&zd\ë&!MLU¼\ë“[ñX´Pcˆ\ÓwQHt\ÆhŸsžª\Ì\íË»º\rš~VE†c¶l…§¹\Û\Ø6Ëˆ©|A›9ƒ\Ä\á6iW ²¿\Ä-5LšaGLˆÀ<\Ø|@\íZŒ\0Ž¯Áž<Nô\Úõ\Ä\å¿\á×¡]…Ø°xºZ\Ísµ\Ù÷\á\Ç)P˜Rº\ê¸95`\Ô\Æ8I €„—hw\Üd\Æ,ÞŠ>´.\Ýñ«§‚|ý\rcùõù\Ð\Òk¼\Âù\ÄT «*&\ï²d„!J\îˆ¥ñZÇ¤\Ðy[AªŸ\ì\Ïyj>€µY:+\Äßš\Æ\ëóZµÛ¶\Ð	ÁÙ…6úU‹†æ‘”!\ìs£f“bZS?‹ø\ãIj\Û#^>\ÎÁ‡µ9G\æ‡+\ÃVtÅ‹-;›?\ç& \éŒ\åñrª’M\Ãi˜gg/‰-2”4)\ÝÑ \r\é\ËM\áµ¥\íVM\Ú)\æ>]9W\í®K\\óª4}\és“hþ\æz¡ò™\ê~l\Ðð­‚\å@\ì\Í\âwn°dÀ©:3\é\Ó»\ä¸ZPÀ’Ž5¤-¢¨ñýb8P©#e2\nlº2Œ™þþ\ë\ä¤SZÓ“)õ@¯\Î#rW2F¨%ˆß¢` pN\æ]Šµ7®|\äIñúž%\'\Ù($S\Zo„\Þ\r½óS\ã\ÛUS‰8‚Œ{q®¦‹ü,›m¡Ä¼/²·Á¡a\Ä\à\è’*§Ý€‡/Ì•7¾ÑŒ\ç]É²\0P\â\ÎIb³~\åLz6]GýÁ4+¢S\Ð\r>¬õl¹ùEwv\ä\Û9´§I°\âöÁ\r\Ðâ•™Ý€¾\ájs+ÿ/\"”¾²Z?ýQi½¢N\nRKŠºt&^\' 1ŸA\âó®t{\ã\Þ\×\É‚žº=°••›\á\Ä&Z\ÚY\á\ÖoH¯Ò“|-½\Ýªo5‹\á\ïU\ãE\Ì&*\í#´Â¥2M~-Î’Eú\ÅFV!úŠ“tL(Y\0³\ÎjDó™ñ\æ(\Ïó×¶ˆgŒ/*%\à\Z\Ñó(,rõlˆi¬ÿ7“Žh\ä›þ\ä‰b\Í\Æu\åsðÏ‡Û‚\ë¬tx¿¤J±#Y\Zÿ„›:¨Š]D‘˜o\í >\Æ^\á+¹–†\é~ÿKrC¸K\Ìß’žõ5\ÃWð÷£\à\Â\át_=êº¶v\Þ-7©\ášYYkù\"fŒ8>b~§*TgS\ïU\Ý8ž·K˜ƒšD\Âiý$—\'\Ê{>õm\é\"û	\Î\Å\ßÿø•°\íº—ñ\êßŽ7fS\Ã\Ã1ýP\ÉK^(ÿr¾¿PcGqøLZÁ|\Z\n§·N\åZS\×xÃ‡üi­|Q~Q“0ò@:\Ñ\Íy/õ§\â\êx\Âo\Ë\Ë:Uy\×Â¨	/ÀôÇ¹QŸ?ô„m9Fµ\×y\È\'Æ„\ÜD€Arú9\çð˜\êŽ|\È\ïTZ1¬,{˜ö½™\ëEVLƒj?Cÿ~yd*“\æh5Å¾·ÿñu\î¢ú´ojbkU\ä)}‰{™SRžVC©3\ÆCš^‚V°Wõ4W>œú\Ö\í[I\ã\n\Þû“3¬Ua9H|\0ˆ%?£ð2]\ä³\É	LY9\Î\Ôtø\ÝRµ8\Æ&ö†@MšE•\Å	¸ñ\0\Íý÷Z\Î7F{\Ëj\éOl,V\Î\î>ôZº\"ñ-ð2»q­ŠöÁ±MH£cu•‹i\ÓB¢\Ì^Éˆ\Õ`)‰]\0\ÓÙ˜bÆœD	\Z(\nT\Ë¦}Q\âHþ\ÌøÊ›\ÄÖ\Ø\ßó«–T°5\áË…	Â•­þMsˆŽ \Û2ƒ\ÙkŠc˜<¾V²¥t\"O¢=·\ånôU@)ù…“$Zó­\Ú\Í\Í|¬\ØCx0_¦®…\ëI\r™‰b3\"«`jc¬{ÐšS\èÿ×›±\ÍI,kÁÑ„ˆ5pF\ßo\\ú\äŽL²Su)r\æþz“04•B\ÎA\Ðæˆˆ\Ê\Ø÷›˜Q1ƒK«óüä°•©\Éb\ïÊ”™+0õX\ê÷mÝ«‡\Ýuðt®9\ïÁ\ã´Ù¼ª¹ó\ã\Í\ÅZ0\íXl²4¼ø¨ P¹^x£–p”BtX‚¨S\Ö\Í\Ä÷cpŠ[0B\ÔY\Ã\'Š©AþÀp@ \Z®V7\íd7}Ä‘\r¹m.\Ï5;n¿ó\Ñ8’\è„I§\ÍPKnMÀ‹Ê‚µƒ\0š…“þ:ñÀœ«+¸\Ës\'F´\Z|¡)\Ð\í˜1Xç¯`\àaG\ÒqE`Z´\Ò\àeª=ª_Pžüµ=‘!_g:uX«°\nP\ØÀú™\Ô\â-Y‡§´Ž*…n.“Š\Ù\nöxö\ÑG\Ä\ròò–Àƒ2`½	g\Øý\Ó;Z¼,V·€Hõ\×ü].&–“\ì·j\äœl\Ò§\r‚Æ¬½)C>\"¾°\"£	}´‡\r‹°.*\'Ä®˜ðH:ðñT^œ.‰\íq\ã„ñÚ†A\éÄ½Ú¡‚b“Pý\Þò8“¸´#†:ZJ:ì²Œm\ç\0p‡¼\êI{¤Ÿ€yŠu²0.u\ÉW\à™ª\0v‚\Ê\Ë\0$Œ\ÓW\àa°±!\êR\"B\ë¾F¡\èjùt²t.¬ð¤\Éò\ÙûŒ\â³\ÑFF8\êT‘}µ¡­\äS’\í)Œ6Ž•,\ÏwT—\Öz–?rcYF·J£·¤\Í\Æ$§,Þ¯þ\ä\ç‡,:ºŽµ¢_²v\êo\\(\Ã9ú~;*þt²e»ú¥oG”LB3½\Ø)n\Ü\åÒ¼ƒ°¼O\Ë>¾¼š\Øh¯•¶KY±9™@÷Z¡üÁh ‚Z\Ëþ\È0\Ç/„9\Ã\ZF7”;fËž&œH |\Ñ\\\Ô\Å÷!³&¿F8\">X2B\×P_1œ6\Ê\ÔWÄðW‹•’Í’W<a _Q ™!ÿ„Ž©\Ñ\â\ç†ð7±öne€Œˆ32–f\Õ\ã\èVqO\Z£ZqMb^+\ì+ÿ#·©¸‰\'Ÿ;N_ ›b´ª§;X„»lµñS \Z1\ïˆù’-^>DÖ½²±\Ø\Ô\Ú;\Ý&\Ú\ì\ÑTÖµô±€„\Î9’õ­lt\ã7{\"¼\âÏ¾\Ë\Ó\êm²\ÃO‘\í\nŸ„\r	f´º±Ge\ì`òN	\×L0üŒ\ÜM6«mU+h…\ß\Ç`®¯\à\Ål«\ÊÞf\àž`„¨X’.Ö„\ãFööŒ²A#\Æ8PŸy6:„!ôQ±BRJ´ü\Ùù6\Î* \Û\ï d“¹û\r\×e/H€\Óhjµ2\"B\äjD¤\Äùvœ7ó\Ë\"À\ç\Üx…\Z_7¾ŠS\ÔÁ;t&;t«\Î\"\Âp\É();\æ9ÁºF°µ¯„\èI<œl|ü˜‹f:\ß(Il\'ardÁ7ƒ\Ë\n™\"\ïOÂ½dõ;\Ód\Ç\ÛôÛ’²uü¡„&/\Ò^$–û\Û\ã¼Fõž\Ëk›Í³\ê\í<óø8ˆ£)\Õr¥\n—*À\"²®”Sxý4;’\ì·\ï\Ü\"=|Q¾h§\çd\\·q¦‚®U$8hùˆˆ ;68\ãŸ\Üwú˜AYC¥\ê›ù\î÷ù--\Ê%\Ú\ÎÝ¿?ù²%L*XŽ\âó\èÂª\í@XO•rõ\Îø€\Ås‡L…Še>-\æK>ü—š\Ò*Â’ˆN\Ú8Œ‹ú¡N¥fQin%’	3¶®]g©\×f†&\ã_Ž=^\Ï+(wLe@\Ýö…%‚ œv‰\éŽñ¦¾\ÐÁ‡ºRu5ò6¸õ@9‹cú\ÚL|ú¡\à/ˆÛ›{ø\ã‚uxe‰l˜ŽSþ±„\ï\Ëu\ÉC¿SùÒ’—¢A‰›H$ß¥\Ö)\Ó\à¶|\"\'\ÓÏ¤føuŸ%\Â5]}ýJ	‰Á	\æ’0ÿÈ±[#\íAJ\Ë1˜O•UöIô¤ß§²z%fF›³§ñd‡Ž¿±¼(/ýL\ênM\Ö\ZMO\n¨U4n\èV2\ÂD–\Úgÿ„};®riÈ–mWŸÎ®—G-•(\Ì\ç]ô\'ò­jÿÀô4´ÁKWX	/UJt£¾ƒŠ\Îûœñ\Ç\é‰\nncÃ³m‚mœ2\Úbò`˜4`ë‡!¡}ð¡\Ï÷+ \à\ÔT;h9\êµD‰3\ÂvH¶\ì;Ú”„$\ÂõuˆŸ·TS‡	‹s˜¤5\ÏSæ¿³T8	„ýI\"¬h¨µˆ\ÔqH\× \0ÀS]P3jÉœ[ù›÷mI,g\Õ%%=R3\Ünsœ$Nª3\'0\Ý\00rºƒ¨rp\ÓA\'wú}¸\0TW`\ï\Õ\Ï5µ‰¤d\ßnA\è—¡2ku*Á¥ù§\ëL\îÔˆó K\ê\Õ,ñ\'™~\0˜L\êˆÿ\çÊ±°µWA‡÷[£\Ä\Å;‡(\Ðò+l‹\Êv\ÑÙµl~\ÙPHœ1Üµ\ì~B\Ì	y[”]G+ j\áMuþ?(Pÿ›h¥¶Y\ÞM\n,ø\ê?\ì\ÏE\Âk€B\ÌL\Üø\ê	±õ8¿;eŽ,§\Ý£õ\ro/B\Ì&/\ÈÇ‹\Ëó¬°z…G_è‰¾ \Z%?\Ü!5÷¯ÐŽ9ô•P`±e\ÆA‚&Ÿ\\ý£A\í\ÞFm˜YRY\ÉÃ˜þÀQwø\à\Û\Ä\Év\n#&R\Ïô\Çú\ß\ë•\Èü\ås+^N\Îò¨V\Ø\ç\ÕÀD³‡\ä\íy÷À }\0À6,£µ°RI\É\è¢I¿9öw¤sµ\êd©o÷6\n\Ö\Ê`ûó¹”eM¹‚ÿ\ÓÁNg•\Å\àtÅ“©\çR›\ãÒ„LS>Xgû5\ÐX3\×m\ÇUÇ±–\ïµû\Èók˜;$ûÈ–ƒ+¯% 1|\Ð\Ò\"HÖ·\ì³Û\êò\ák\âVL®°\n?C\Ü¾9Ÿ1¤¦/\Ñg\án6M\å£\Æ/ª!\í¿üû\Úm¾T>8§X\È\Êö\åXz/ªõyÍƒ\';¼Bó\èk± ©oô\Û\Ñ\Ìb-‡¢Ý·? Œ[6ÄŒo>pÿ£÷û?9šŒ0N\'Éž\Ü\Ò&\Z&\ßpªŸd“p4\èž,pyù\"ò‘\Û{z^99(VO}\Í_E)²•\Ñb‚”\Ã\"U+÷\È\'Jœ|€(\×r\ÔY\å\Þz6\êXtÀGñh\ã\'Ä™\åCø\å\ëgº·Z?\èÿ©ÿn%1ò\Å\ÛRþIô–t»¸#É¶_M\"S\í\Éú\nÁ”“dt%©\'l›«<C=ƒxÎ±±Ö•[!†³%-ô\×bv7VòIU_´=\êû4“\Í›\Ë\ç&\É;Fñ)D•[‚¢®²!x	=¬ü\Î\Ù\ãf˜û\ã`u_‘2Yü\çl‡¦­~ý/ê¥º£:S”	:k)¥Vòûý¶“&÷/¥šWk©\Þ,Á¨ªüþ÷;ˆ\Òv\ZT\Úq\×Pò\Â\ÒÀ[ ÿIV³ö¯þ\Â\í¢g¨¿Oyú*‡¢#Yv·½lLuUÆ˜§!\ÅF\Ý\\4tÁðAjò2f7º\\W \'e{”r\êk°<²{yV\ëNX µ\èr-l­\'¦*!	GP«}K\Èø\ÝHj\Ë\èF\ÏÀ\ZZ\\\Z\å™Iúbh%8\ÓûŽr)\nX²T’Ö€‹\ç&µ\Ëaša\'\â\ÐMe:Å¥L6•COÿ\î9o\Ç÷R-\Ô\\Àzð‹\ì»›€óMD¹ ­HDñ°t¸žò¨¸c%\æL\Å]€u\Ç\Û10ô‚¹+ðÍ‰­Œv\æ\ãI[›\Ã@ù›|pú÷Ùº\'%\à÷\ÎOHp–»\ê\Ö–)Ó¾Jü\Ö\ÇýŒ[P\ÈK\Äú>¸Õ³?‚·<\ZeÎ…–vŽŸÞªþ\îòyc3\Z\ç£K]£òa©¡Þ°\'H7’\0Œ+\àð_OC:,ó¡\Ø\Í\ÞZl\È\éPE\ÑT’Bš=ù#Ëƒˆ˜žnôZe\ævnD¢ÿ½wW\é\É\ã6\áþZijq\çó€€?ÿ“÷!Ù¨*Zy\é\àÔ„@á‚°>*öÀ\ìW¥\äÿw=TVÐˆ}\æ\Õ\êX-¦y¿Òº‡ß¢x×’všôžœO[\\3\ÐA\Â%bk\ÑFc\0GÀ\Í\Ø`sBÌœ4Kq¡ah\Ï.f‰t\',À8•z¶}:O‹D&\n4\Ñz?O\á\rŠ jx›i&¨	½–ÀIƒ›\\Ý»€ª?Q³L˜Ãª¡®\Ìû‘r4¬;_‚\Ðit÷\Ä4ý’\Ûed_p)LJ\Ñ\ÙZ+&‘:0\Ôd²’ÿ“H\Z¹µR|Û´H>¥#¸\'aÓŸ\Ë\ìp	·\à”dÅ§ª²ÊÌ¶ñ‡š0\É\ß,\êù“h\áO-!\Ö2r\"hõÁ/\×J^Ð–X†‡\Z¤Ÿ\áž{\Ó\Ä2ÿ}\Ú\Ù	ª2Ã¾=t5z\ä\Ù\êX(f÷\Ú1Ä«¢ž˜Ì¥^\\S-2jOspP}., öP»•t),\ÍW\Û&q\Û²uLÖ½\Õý0R¨(n){ ¿\àŠX²U#‘¹Lý@™ÿ\îÍµm\éœ\ÉJ3£M\íh\ÎC”ñ\î\ÎpÀ\î—gl&\î¢-ªªolƒþ¼µXCÚ·\r\êd~oÕº\Z»\ÙÑ³Ž\Ó\rM\Ã;K\å\ä—o\Ñ,µ«\à}\0\Ü¸Df\Z5Ò·\Z‰È–\'K±ŒA‚N±½\Æo\ÜMÒ—ÿÁ?yôÀª\'uûù\Ö\èw}\Éô)ÊŸd\ëŒB›Áµð\Î\Ô\Þñ\ã\áð\ÚU\ê.¾\ÞH4\êxÔ„´\\%_nHšÒ·`Þ“¹¶µ\ÐÀ¢\Å\Û0€\ë\ÓAø\È\Â2\åY!\Ø\ëóOu¦k»\È0!ôeu	O@)\é\Ü\í\è\ßOL_Ìµ²\nôiˆnP2\Åþ\Ôîœ±’hÿ‘£j(¸€\Ë?	\âü\ï!Ÿ\Ì\è~¿©\Â\ê\\*k\è°WGoú\Ë’¿\'BsB¦#\ÑBŸ5R*œa\rÊ—ÿ\r\'h?\Æ\ëµ00$‹KqB#ˆgY„\ß0£\ÒuUUõ\"j£\Zœ\ë_¿\ÕFÀ¼—–\n‘&þºSt’Õ¡\Ý{}T\Âe?¶\Ë\àÎ‚£]šE\Ü\à›½\ë6óš{§	z¸]9$‹O J\ÛTð2C\Ö\ãp›Üƒ“‰hl´\ÏLŸÿö|Np\Þ\0ñÐ—I \n–¿«9dªw\Ô\æô\rI°Aw9Xª“7œE›DL>×¹V±õÔ¤l\È\î\Å6^§,ŠP\"eh“)ð»\Úq>Q+M–\é¾l±M-qü„/CÁø¶WX¥«\ÈÕµw‚ôSž•\Þ7VEŒ\ÅS\Ë÷Á	½öŸl\\\\šv·¥s\æ1Ò¾H\ÙÀš\Ä^v^v2±ù°žÁŒ‡ö\àFÞ¤ªð\Ý\êE+llÎ¡9w\ØZ‘¬\Å_6\ÅÞˆ=7ûB\n\åÿ4—\0&\rùt\ÖÁDK\"¨ûö;¯o1\Õ4Y\æ\Ý\à<\Þ{·)fŸ³È©3d\é\Ë\r´þiù$\Êq`b/jšÀe4¢ó,\Ë5u\Ôl2\ãÀ\ç§þqUF	k\îºÌ“\0ˆ›ElA\Õ:\Z1¢&<uôEŸõ„¼kp0¥\êÕ½åƒ°@§\åX\ZÄ½ÿl=L\Ìÿ“(z©-Î‰\Ý\\\0÷þ\Þ]xü\Þ\ï\æ5\Û]ñ°±¸b(û“(\ÒoÑ\ísy—O˜»gHVZ‘¼\åº8ôU&ÿs \Ü\Å!G­‚¢\ßV°Y:H–ng¶õŠ„ü\ï2\î¿{M_œð\Æö­m\ß4–¬o“É©Í·øK”…|.\ÒøÄ›¦ZŠl\Ì>E	pú\æ³¡Lq\åb\Ë=\Æñ‚\æ \É÷\éô…ûŠ©\á¾\í70øŒ\Ìh¤£¤->S\ÌN\â\0µUY´Õ®\ã\ÜE¨d)³y(ešl\äúË¹Ui!tS\á?ªý[V\ÒMi Ml*¬5\ÎP…/\Ô\0(Jþó…’›\ÑpT\ã7¶­i\îNžR&¢/\ÓHûÛ„“§…}½,E\Ç)“t£\èn<b(§¢;\Ð&¦¨Ý¥(óoœûo-QXŠbðr\ÜF»\èöœ<„	Gj\ìfWÿIø>£E\Ìetv–\Ñ\Ú$óÿŸlé¼£À÷I3°\ãQª¹,µ ùoµ^i’ |%\ÝKÐ”@¾¶±3ÁÒ•F \ëc›¸ú\î\å‹v1\Õa\ßø¦g\Z2Š\É\ZJ´ÿ\ïœr\Ö÷\Ð87)z¿Wc¾o\ÅJ.Ãª\è3{³ÁAŠ\ï7ûR\Ì!jþšÓ¢¸òuñ©8(”\Ø\æ\Òw\Ügt¯(\â3\ÔõŽ6\Ö\Åx\ÑÀ`©Ú¥ZKO\Ò\ÊVj„\Òz\Ýôb•\çþ\Üw1õ£Š7æ£©Õ˜³>§º\à|AË© ô5ñJ\íþ4@	¹M®û¨=\Öß…\é\0ö#w&ò~e\'>\É\ï\Æ|\ã\èc„¹5@Þ®Á¾q3hViP¹S—«\nÞ¬<p^\0.‰¸O0mf\ã®bb*ú(³NÆ¾õE\ê“ú.\Ê\'`˜\à.õi¼%–l\r\Ð/Ê©”H®\à\Ï\Ì0½\èôO:ˆ•\á\Þ\ê\Í\é­wq‡?œMF/\çCÊ¦­e¶£´\Þm›:9fš˜ŒÑ‚RŠF\ì\à\Ññ¼q¨5+G\'\Ã	öc\ÇAÈ–´?¹H	.$\ÊTW\nªS—µ\î\ï=Ÿ\êþ;q_Y¶“9v0\Þ;S²ª6‡‚\n\\*v\ë¦q\É\Í=œEÿMWBˆñ3Q\Ü-s\ÎGoF³µf\Æö\æT\r\'\Õ\âÂŸ\Ö\ç3\Íb“] 1†ÁG\ë\êö~d… 0\Ú\çt\Ê\ÅPbšVwÃ­-7Qž`_Ú¼®\Ø©B\Öa^Õ0Ä…\á7c:ov\ÖÅ»JÃ¿+\nÃ”3®4\"9f\î\ÑcK…	\ï6’É£\Ç\èMÁœ\å\Ùg±\Ð/½‰Œ\ï\è˜ÿÞ¢d{\Ôl\à£	À\0ûf³jÜ¦\Ã(¯=¶“G\ÜòI‡6S\Ñ\ãQ\á.¥>—Hoxÿ\â\é“oöN9÷\rÆ¡\Þ\ÂD\Ê\n®:\Ói¢®\Ä^9­þ0Õ“%\â®=](Æ·´•\Ï\Ò\"|ƒIz°/d± F\é\×s3H]yÊ”\Âfþ\ã”\è\Æý0\Üöµ™v›S³\Ñ9\Ð25\Ó\Z^\áj€/\ïòF\ZÇ¤\Ñÿ`\Þ:¶\ËDÉ¤\0‹&Žh\îó*\Ô#V™IŸ¡Ô”00º\Ó©ú»²¦˜øT`abf)i	UÄ—¤p\áú®”…Œ\ÔOc\èN¾_ð¨$—v¶HŽ®\È:þg÷„™±\àiˆ™x&Š°\\_\ãŽ\Èüh$ˆ[q,½{P\ÅY-¶¬Qù\ÚˆÀ\Ó\n0\ãØ€FÊ¦\í[Š†ø,gRX\áJ#®h‘Lÿö¦5·|xˆh¤†šn,·#œ1>\éX*<–g:\\T7Š\ç\n»XüV÷\Þ)‚:\âÿ•#ŒÿR±‰-Ÿ½\æ\ÒWŠ:\ÉQ\éuw\áÙº\ê^t€\áñ¡A•\åV†Å­\î\íº\å\ËI\æBŒ²\Ú,Du“Þ¶³Ï’ƒ÷´{\à “R”YVkùjs#\ã±\ÚÃŠz\äVHWk\Å@u˜kõ\"ƒ¹\Ó[)°\Ô\Îƒ<D÷ª†y.FRœ¬Ÿ5\áE\ç\å}Å‚K\åLó\Ý\"\Ñÿ~Á-w\í‚\îø\í\×\Ö\Å\ë«ö‡\è¤ðÒ†x\ÖQ¾K+¸\ã\ßg«\ÔW<A…\î\ê\Ç.Ž™°r\ãZŒ\æ!T‰\ËsG.I[÷~ê°²—ªcü	X\Ãõ\Ôÿ¸_\ê§G“;òÒ¾\Ñ&”\î\éM­n‰!\Í\Å÷p¨£™\ÚO„y!\ë\ì$\Ý\Ü\"µ¤a·z”~VXüu¸di|f\Öô®˜X°pBS®\îÿŸ3\Ûu^:žN[§¿>Í‰„=\É@ø³ýˆË¼\ïù¦ú®á—\ë>\ÔD\ÈJ#FU5£\'t»7®\ãMw‘\ÊJN\åd\'e\ÂÃ¾¼\ÅÑ“€\æGö*	\í ]m\Õj¬Î†n,y\Ú\â—\Æ\â½?¡ô\Ç\çnG¼\ã~\â˜û\ËR|­ý,\Ì\èÓ¸y‡u3¨\Æó>A\È#C\ïi‘¦\Ö÷„P\è‘]\à$‚u®È‡’‡¸k¹qþl§úˆ‚¹›.@¬50¿†L¤9ž\Çfï¸–}ü»`\È\äZ®1`t¢<\\“až¶\æ:r¯ú#§|h\0\æúó\ë\æÈœ›±å‚’qÄÛ„\Ë\êT(m¬\0\åðŽ3ñ£CV/J„xÌ°\áW\ä	\Öw\â€öWº .\ÅÁÁJ.Œ#™,\ÌSƒC€ú£Zhö¡”\×Æ¨\ãú_zN‹úŽ~ø\Ø\ê´\ìgôŒfZQ%oþOÐ±*] 69â ¤“\Ì\â\ÉA-\Îq\ë&3¡FvsKû+£\Ôl­ÃgZ‘9óš´«º\Ø?I9\ÇQ|Ä å¬†R\ÅÜ©´€fÿóB½RôFµZ—®\äk-£õù\à\ËC\ã3\0—{¤\ë¢r-†M¡\ÅœºK2ŒºOõK\éºóó¸ø<\å¬\ë)9<¬6z¡=Áö’0f„À!hýR\àI7\æ\Çö´¿\Î_¡	–Êª@Nkm`¨\Ílô\é´Ñ ¯Uv2G,¨•c\ËRº¾cö´–\ê¹\ì\Êt»Š3 }ñ 6Jf\Â\Ä\ß{òð\ÂÀZ2K“\ëƒ\ÞY^oûh\Õ_sš(Xþn<3€*»§˜cû\Ø\í±\Ô=\Òut«?\Ö@J÷ü¥SR\ärŒFòi\Äg\ç\ÙzõEŽ±¼,\ç°\ã¯³–\ÆE¤œt2\Ò^.p€^ñ	BL$[z\ÍýCe\Ã\ÊÙ¶5X¿\Ø ¿\É3½b\Ô\ãgm1¼#,¹#\È×9^„›W·E¬H.³lS<4«}i\ï\0ó¡2á³¤\ËzZ\å\î†\n\ßyB¿\Ó\Î\Ê$\ÅP*ƒJ(ñDfy\ßq°Pj#A\rðúõgG\\Ÿ³[­z‡ø±¿\æ»ò\ÔEKT\Ü\ÎC\Ø)­~Q1«Ë¥\rQ\nf\ÔugÁ\\COHs\ZVje»t,_;‹Ø«@k­b!y„\×<+\Óì¸%Š\ä¦ÿH\å\é8\î€\Å\ã!>&R«\É]˜`\àºb	ûBŠ@{R¸]Õ±\È\\^M\ÂA\È6R›Uô\ï+b¨|³\æK\å9w\í«µ²@#±\Æ¬:su\î«\0N	c\å5»\×õ\ßk\ïº–?17ú\Ö3\Ø*~A<\ÏpE¡uo\Êf-¦u”\ÝVOH:”\ËHÑ¤\ã:Ä¸l\ÞRd³L÷`ûE“š‚./f\ß\ÎÐ°rV|\ç\áQ¹*÷!\Ó\ï\Ê\äÞª”	UÀH©º\çvÁ&\á\\ƒa™ˆ§ÔžwòkjO={\ÐÊ»\×)|Lx6¾š`ùPV7.}ðJ”À\à!o6_{\Ü’ü7™a\Ý!\è‹0U²µôm‘\ÜTò~ÿS°.‰™Ÿ‰&w\Ô Þ¾o\×\Äq\ã6)±?2\'„nôøžA™\Ì~P\Üø|%$ÿd\Þ\Ù\åÁB˜jg\àe	\n\Ý½\Í¶\ä\Õ\ÊM¢qHR\é{\Üñô:ˆø\rf\ÊOƒ==\ÎqöÈšJ\Þi\É\Þ\Ò;qjL±nS\0jbX*ë°‹ÿL÷(iAa\Î\æþX¥2[\È\r¸*kšc«Ið-A¿£-\n‚\Ñ¶C”\Ü\Å#t\Ïz\ÑV\Öa}KÄ¤1÷=¼ÿó\Û\ç§\î‹.¼¤”L²ñ:7Î†\0‡¯Á#\Æ\î“ay{KW(\Â_m\ì¥fÁñ\É+À\É9ho—Wl™k€\Ï\în\î\â\"~6O\ë†!š§rhˆÍ‰r\ØNö5gn¨2Wñº ûV\î/1ÏŸ‘¸^¢“\Ú\Ø;q\0ÁR\'¾¸q´l)¿ICŸ?ž_	©+‡j”7Š\ÌSšPM>\Ìr\ÚrÔŠÕ¡B\é€\ïD°YsG%v›\í\ì\åCGwRX@u²\r+ÁUBD€0\ÂW\Æ`#F*W>™ß’R·”]}´•„A¸sõd•(\ç\ÜRK\ÝJŠ/¼·ô[‡\Ëb\ëcñÁ\×9]\Z¦<—¥ùaˆs\ÖfÿT$\éñõgnB[²-¤t¶iO*jG^5ƒ/\Î_^4ZÁ£\Ô~\\µ†y›±sšö÷–±1¾òPÍ“ö‘Ÿ%_-UxÁOæ¶‹š¡\ê\Òö\à=JÈŒ\ãŠ=\Çÿ¹nµB4%\ÌBûºq\ê.vù²¸;\Îå›²‘\Ñ~]\Ó\Ð\ëI¨v\nð€ð1±ƒ\Î\":\Ì\â\Þ5þ1¥ »?i\n\ï¥\Ø6«\Ð\Ä\Önò\Õ\Ñc…\î \Ñ-Ó§m \ê)ZiÒŠ9_L›wÆŒËœ\ìO\äl˜qÓ¿]gó„a\Ý}\Ë#\Ë{ƒ¤3¡û„™•\á)½r	Â ¡\Ö8I¤|I®)q;«ŠŸ\Ðo#Ÿ´&<B\É4›‡3—\Ù\Zoÿ–•J+vp\'ê‰¯%\â¶²[\Ó9)nt<£Yc‰\áL\ÊÜ¹ªm\á$ u+\ã‰ŠŠ‰ø¼‘`®ðüÊ»ý«c¯\ä?H\à\âC	|\Úd0\ã\äJW\êä½°dÕ“Gx‹8=Da\Úc\â¤I\Â¸\ã\Æ\ì\í>e61rt,±›Á½P/qÔ£ò=B\Ô|/Q\Z\î\Íu\à\îÂ“\Æ\Öp\Zs[À†„Ñ¼F¡\ÜZV§\ë2?;P\Í\îa \Útaß˜na\ß\ãw\á”Z…?	7S9 ,\éoªBù5#=»I\0;Õ“\Ä\åF(Y;:CC²)e#)\ÚIn_m\ÔV?c\ÌP\Z«=	†SQk\ÇJR#yòò\Ú$r\ÌÍ—Œ\Î\ï=p¹r\0\Ü\Îõ}K)Gtœ\Õ}¿Á&¢\ìj¯¢j½z\á¸\æñ\n\ÖtBQ\Ï\Ã\ážy†¢3-ÚžmdQŸ1–\ßm7û\nšA¼:]¥ =8\Æg\îqh #÷ªÒ…Iß\Ô!c¸NiÑ½jS>\ï\Ñc\áZ\àŒŸ§Ã»\ëN†AY •[/´hc>˜¢ú\ïÿBÿ³ÿ‘þ\ÜÞ®P¤¤ÿŠ\á\ÍYnbS#\äšYòL4J|\è)b²¿4 \îðýM¤9¬\ßpQJ4\ë\ÌRˆ:£?f†¦\0!õµñ\Ô5hÚ­}“\×\Ãùa\èžda\Î\á¨\ß\Ûm\Ç~\"5\Ö\È‚	GŽZN\Ê\ÏkTa\"w™–Íš\ìžG*¯+t’\í^d0Q¬Yd€\íL|@Y\àeD\è‰\Ä8Ú¦N\\Ó€YmY\î`¾“¬ý\Ê1C„J e\r\Ò\æžs}°³û˜.k(@¸¡‹—Ë•†Àz¼8kM\r\Í÷€j(\æa\àYó­Xq»³ü\ÏñZ\áNÁ\Ó\â€5\0ôÁ	ú¸ø¼1FN­•ŠO\Âq\\l¬›F²b9¾\rù\Ù:Z\ÇRG\']n‘¢8\Ç\àX=\ÖX0˜^	ùX^Y!§µ7\Ñûö\âôÇ­@\\÷-	!ý(t\ÍZý,ñ\"eñƒ“V\Õp\ÇÐ²Ke%\È#\ì-õ\ëŠuU:\Ù1]Á2\×ô°k\nñ‰€ši]^\Ú\\ÿ\0¼~2{˜(V%T\ê\èw?d\Û0[¼K±+†>\å+\ç\ì@ý	1—rž R\å7T;\Êj}$»Y\ï¥nŸOŒXU\Z!\äxn\ë2ý4Ö®m»Q––\ë•2¡‡®¿ `ü\ÉM¯\Ê |Ÿy1(UC\íQñ+)ˆ\É\Åøû\ÆF(HK¯­p\È1ÁiƒPQ3þv‡§\ÅW\æÀœÇ¸¹\æ¹Ù“\"\ë›’&û«b!¨°G‡]Hrù›k‡Õ‚ýWT\Ã7I—/\×\ËI?Z?j.¹7\Ûh1\Ø\Ýq<\æõ¤›Ù¡(ªE¿­(U$\ã\Ø+\Ð5;°*ú\Ä\Ýtl0\Î\r³	ù+eG†D\ÅùE|9Ž“\'–1^ø\\\Ö	LW²\Ë!—‡@\reû2Ú©;6J+’\raUÁ¡2)¶û¼÷«b£\ë„ªùƒ¢§%+ neKA8r\Ù\×\ÝOT|1›oM»ª§¤H#W\âT±^”üŠL\Ï5\ÏÁ\Í|Q%{&¯¼ ß…\Úò\ÝðŠ[¼o5h7G\Ôww\Íñƒ‡\é\æKüù\åG‡yº\Ì4z\Ô\Æ=\Ú4¢Ù›¿2\Í\'\Þ\ÕQN\å1\ïu«eLÏ¸þ\âÁqN&d\æ^\ÔÆ—\ÄN\å[¦U»\Ø“	y\É?Ý•K-\Üuš¤|ºØ’˜Þ£fª\àh¤û7\Õ\èð†\Ó\Øa\â¬òg\Ú7±v÷\ÓNõÿxð×¤öûû­|K´÷$ò¬+\Z\â\ã0ðŸqù0P@„SqVŽL?˜ø\ë‡Á‰/ý\ÌhGgCº\ËÙ©°ª¢_…2G \Ùg¥\Ýú\Øh=Õ¯\ï©zþ[O)\É[\ß\"8Òv–¹™\íecdXk[p¼ø\n\Ã6¬i¶dò0\å\'\áX\èl%\èZAjCö¸œU\à\nó¤7\Óe÷õGžXi4\ìô:‚?X]\Å\ân\î\'‰’\á†_c“\ÓøÜ¹ýšlù{nŒ­»@†¨\Zk\Ô:\Í [#‘$•GÀO\è·$Öªl•g\ÃW\\™\ç®uº“D)\×^Nª¡Ï¡ÿú@mqû>q¸“þ{SòJ*«\n\Í	&Êºj1ƒ\Ó~Ÿ[Ÿ=\ê[Q8´=\ê¨XƒŽ	öí–‡2%«‘&˜Ï“Š!\Ýÿm,A`¹\ï\ÍT]$:B¬h\ÈÍ¶Ä£l£*£3W{¯\à3œ_2Kde\Èm\â¤J½b†…õ{•Lòxo\æ>ÂºN\îÀ™µ^{ý·­]¥\ß(f¬˜\ìÑ¬”Œ\àÖˆ\ì|¤\Ü\æ\Äv\Û,Ÿ\ÎG\îa„÷!\ã¨N\Ý%“œ\ÇÀö‚¯‰\ÄV&¦±À%\é@»\Z¿++¬\ËÀAy\ãS\çöCf\çÂ”-#?Â}\è¡eŸ„f\'\×\Z\àbñ3ˆ¤ò‚ý\Zõú³x\ën´D(SJb”„\Ýâ>)‰\ä^²Kgö3A€E\æ%E›.;_E”\×\r#žöžŽ³9/xf0˜\ZPÿî—§”nR=!t÷Q³nX‚\00mªþ\ÈmRÞg‰°k+œ©dYs\ï¯Á¯n@–~ v;­BñVrÀ&$SD\ÔA÷e\èIWòôÆ¾f\í$“O\Zt»b\å\í#u·§\Ô›/\0¢±\á;\Ïuó#º\írÁ•—‹¶@˜ÿ\\atÓ¤\Ö\ÇA\Óe¤‚M­nõ©O^÷¯\å¼T\æô‘ŸQ=ä³Ÿ˜J~“\è_\å€Q\Ç\Ã%Jx­a\Z|o\rv1VŸ	h¬¦…\íx\r\Åp^²\×\í†8ºš8­h\ãv\Í\ãUþ\Û0rzmùB¿\ëg,iôè†šq?Œy’tE\r\Ë\Õeûˆñv\ÜÀ$òW¹F§¸{´†z\Ê\ÓÖƒ€c\Ä\n¦{*¤\ÓÀ¨\n.¯ekf°L\Ûú|…h\Ì\å‚úH\Ø\ZL÷II…Ž_Ø“e\r\Õ\âõ»³[\"DöH?\ìn	‘öXš7gF\à¯a\çd`^#i\â\èóŠIp\Zea\Þb©$\Í\Â\Ó\Zkr\ê\\€bBÜ¼žòº¡µ\\>Gö{ú\Ã ú\ËX\í…ø¢‘\ØƒóS	\Þmt¾t11\'©3]—\Ò\î\ÛZP_fe‹1C­|à¼´ó¿T‹¨\ÉÿÄ†W4X\Íx€\Æ\ã¼üõÚ–nYüÓ£L\"\ê	œ@Y\riÇ›bq{(/€¾OQ¹g£\êoó²€\Õn\×b4~ø\Û{¾7¦´²Œ\è,ò«€\Ý&2g4{\ÇN\è	¶Áø\"nÊ‘JÑŽh|\Ú+§õo­\Þ\è¡\Üý-›KúXÁY	úkŒdi>\ÅR§†Í»\Ñ}b\×\'N\ßr+˜•l÷˜¹õŽ¡®H›®¯_u\rD\"|¯3Á“\Æ\îþ\í©.\È:M1d\é\í/;*\ß\Ö6ž\Ì\î+¹Tƒ³\Ýl¦Ý˜:c‘\ÉS@\r6\ÉHŒú\á5À<¨•‘Àp\ÎNó1-p¨~@þ\ÈB½d÷ønV½<\í³§\Z˜\Ä÷\'Ó¥»`A›ò\Ä«\Ð(\Ým\ç kË¹n\Ì0A\Z\×zA\Í\Úh$ú¾\ë\Ôr\ßhÄ°wÁ›¶YBsÍ°øi–°†ƒ}©˜ò\í›0£-H}\ç\ì\ÊMFx¦¹\ã\ÄIÝ„þsÕ±1²vƒò,£j\Ç\Å	û_›n¦u\Ù%\ß3*H©wzhm•·\Üü$â¿¾Šþœ¢öµŒ9õj€ˆÂ 1“¾\Ù~¿øfz«S4FJ\ØòË¬,|0“ôÃ¥ù&\Ì<\î ³^öI:¹²Ž‡¤.\î\â\èxmozÒ©x\ãŽ\ïÛ‹nÙ¢Û­ž«Q.¼~\ã²\è<\'ƒd¨úŒ+ò\Ì\Ä\ÅÃ¬Â£\Ú[·8ž‘˜Lð\\[öH\Ây7´^÷\Ï“?U»¥hò]¥¡v\r¤Å·\í¯X¹ý}¥±\Øö-¦v\Äte+\Ém\ê‹a¨­ò€#\ÕJZÀ9\à¶Â‰£\É 4ýO7 ´aŠ;‚—¡VVÅ–þ\ßþ ´\"wN„ý/	g\Ñ`¬ñQÁ\á\ÜN‹@PŠý«ÿ±LO6šK¨õ\Øp\0[Î¬‹\ÏZ™\Ú-S´œ(|uÕœE!ÿ\ß\Íøò\ï¾ÀŒNªÑ¶À\ì„\ÔÀ\âQP0\í-\Ù4w‹½\ÑxvLEö”\"\ÇÔ£?5>œ³7û#S\ÜœO\ZD~Ë‡e#fóG¹›:üœ.p«\nK\n¬óIo˜‹S`¬;\çx\Æ\×J	\É-Yû³4Ê‡]$]\àm¦c:Vøž\×ô˜Y\â\Ð|\É\\¥§_ú@¥`Ul±z1°ˆ`‡\ï\Ú\Ìù€™Ç½c\Ä\È}\'ñF†¸ú\ähŸ§o\Ò\åÂ›J±\ç—	ššTCú5r¸lsfÚ¬Q¬‘I[\ê¡÷²Z\\h>5\êªo3\ãZ´Œ3y\ê\á\Ë\ëu„K\Çüoñ*\'¦ÿ5B¢jcV½A½@\Ö–Ð„¾>\ØV\ã27\Ík¾…\ÊÀ¢uW\Ä\ái-n\ÉøZVW„z’»ó™Œñ¤‡‘ˆHºC‡§‹n\Ò¹½¨k\Ãõ©›Sw†\áÈ¥\Ü\è\ë¦\èLb\\\ï1±4i\î#cqC„Ü«3d¼PEn’©“>\ÔßŠ\å*¥ñ€½\ÞjÎ”\Ã;+\"*ñ ¥\ßwÁJLuÓ•iËª(\n;K\Ã^,<kb54C›\Í\ÇT÷¾\ÉM\ÝÍ§(¼”i…\Èk¥\î@R¸\ï,ˆ¾ötxf±\ì\Ï8ÿ¤-¼5\ÔW^\ÐÀôÅ¾*º\ß¾¿\×!nE¥‰V\ëDÁ\Ã\nCxxóÜ°„¡C-%\'2‘\Èøt7\çX|¦\ÃÐ³C E\0X\ë]ŒUõÀ`ÿ(+À0\Ì\Z\ÉÀU\Æ_±±\\„·f\È)WNjo_HÑ¼Á5“‡\Ç(\r^\\f\çõÆ£•\Ñ&cP\0‹K¿Õ—s„µ\ÄM’\Ñ\È\Í\æl·T8\ÈI\ÒeCF\Î\Ë\êm±t‰óñË–\0tÝº¾t¿\ì»S]+n&­\Éx\Ãë¤²t\Ï	\Æ#ÁºjÆ‹KýÂž1˜À\ÏÖ‡™D‘©`:\Å[R€R	v½/°öšˆ-Õ“/\Ä\ê\È\Z˜Ýˆ«y\Õvq\ç^(B\Ö\Ã\Ý\â¤±Ifž&\Õ[³3ÝœI\Î#¸:?‘›L\æ{\Éô:‰*÷<ÿ\Å>µ_WýÁ\ØË›nô\Ë:Dð0?$\Ëp‹VJ\Ûr}þ³ù9nj¨\×Q\ÐðŠ\"´\Æ!ˆ˜ŒƒŠp4¼™³X\ÉB\Ó\ÜKü´\Û(\Ü\Í,\Ç\áE¬ƒ2EFQ\ßpzøÊ¨z\çþú’aŒ‹M¿! \ÛVÀM\07Fý\ç\ÒRCWp\ëöÑ—;üÚ½Ý©,BV\è~n9iùP3ï«¤»x~‰ÿ¸Á8ec’G}`!\ÆqÙ‡·Cøo8EÜ»ÿ®Át|ªfQ²3j}Bµ…\Ó\ê.zn¾?}\r’\ãk\ë\Öõ\ß,„B~òþ‘\×\0\ÖnoÒ¯oós3°b\Ðõ´ã°¥]b\ÃwÀkf˜þw¬Ä¦_–q‡¡R2:ÊŸýõ\È]pv(KR¤Uó\Ä;^<	=¶²*Ž\nÎwÝˆbmÌˆ\î/\Ã-M\Å@U_MB\Ûp\ãô\Û\Ë\ë\äðc|ü\n\ç5~¬ž6’M%\\”\Õs\×\Òj\ánÏ\ÞhÏ¬…0\ßwFx\èkŸ\n\ÜX`\ä^”Š~RT!‡\ä™9Vcp\Ï÷Œ¸m-œòƒºL7\Þ41,!«/º\Ë\ìF’s¹€\Ú\rH}“\Û<\è+f;úbme\ÂOò\ÒE\ã\ÈŽC1	õµ\Ý\í\æ\ï¼JŽx@ð\ï-’\Ø\èÃŠº\Òs¾9w…<tV°nJJa½vŒºDù·I1x=œþV\Î\áwR¬¨7P˜\Å\Ç\ãIÑŒd‡w¼ß\ÎF½¦y\Ã0P«4qVÝ¨\è¡IŽ€ã˜Ÿ¶+Õ£Ñ£:`l\Ä\æ\nü@Pš¡Ið\Ïk\âG‹ˆ™\Ño‡~\ß\ÕxÕššWõ\ÄÜ¨÷Á\Ô\ën\â\äc\ã|-\\øð\é<(¡!´$\Âñ\È\ÂÝ“Ÿ¼ªO@D‚1gšLþ«»‡CC\ïôþ\á\×JóW\îL9\Í$¹\àr\Ï\îªJü\ÆC\Ü\ì\ä£\ß\îÅ²£K~aw§úµQÖ‘“³\ÄU)L´v­¥qŽpù¢e.\Í\ÃA\Í2a˜®sý\å\Íg{0{^•ð—\î‡\ÌE“\Úh>z¯i¦\Å1ý\é\Ñ<Ny\Ì\ì9x´i3\'^ºø\Ø¤m\È\È\n›©{\Ïÿ‰ $‰þ\ÂNjiVžª\ç»xj\æ\ÞBÌ¢l;±I?£MT“Á+\èiœV)l(z\\(ûN$\ëz\ïk1{{\ßg÷W)E&;]ì³‹^hAi¨–\Ø\ì\ng÷ú\â ë¦•#¥D’\ÜYk8&2«ÀKÒ°!{\ë¬–¬öM™0\È\ÍK_›ˆØ‡\Å\æñô\íø·Zµ[de=ž\×õ\ï\0\ÚQ‡2”\0Eq\æwKmO\Ú\è\É^%*\ÈN6FV‹B>’•8\ìƒI½*˜¸Až\Ân<€Î«‹f=[<¢ùDuø#=¥#_ó	õˆT	HoVD‰\È7R\Ê\çÀ\Ô\Ð0B¢æ¿ˆ\ì!8‚÷\à‡£É‹‹,`[\ÈLBSv»€€¢Ö¨\ÓA¦t—\Õˆ>¤€Zp¸b±\Ï0»÷)žõE m’ƒb\í\×p£‚\0}‘i\Ëñ¿•QL	Qš\n½Š>…­¤0“<Al\ä\Êe\È7µ\ndNö7\Z[d\\¹r|\çðO4`kq*$\n¥\Å\×\á²Y†ž\ßÐ¹¹´_\ÃG\ë€=ÿ˜€J4#ý²ú›r¯µ–òÍžôJ\ç\')\È\\—\×k\Óð\r)ó<Bf\×h¥_]©,(“@\å\Ñ¸¬+\Ð!v$\ìù‡1´\á—\0MJP[eðÓz\Ðõ*‡¨Yø\\\ä]*7¾¤DuM\Ù6Qšu}T¥z©H\ë—Uý»‰\é\'”Šlž^*\n\ÜC\ßXmE\á8¸byQrzù/t´+G; ½Ïš\Z\Ç\ÊP­Qû\É\ÉLõo\Ón\Éu?\à?Rw¹x5\Þ\0û:¾wGü‡˜\ãY\Ú.D¸\0eª]ŸK,b±kAoU­r\'·\0þF÷Æ®itöbò\ï¾\ÅÿOV\ê\È\ëŒ|ù.V’\É\í=œez`3Ðœ\ä\æ\î—^@0ó\ßJ£Á\Øõ¸Z‚¾-Ï¢JÔ–…Ÿ›bTA\Ë\Ô>k)¥I¾¥t,±ºtô—°z[yZ…¨_V/QL\'%i¦\Ì.°[Sf¾3‘´Lg\Þ~A?-°·ƒ:¤³ôƒL82ƒn Ÿ\áÿ—‡¿\äwUø\âõ\Z­ƒo ÷9\Ó¾²I„…žŽÔ€ø2´šuóºš@g‚«\Ü\ÂË„÷eb\Ê C©**dF|Qe¿­Jøis\Í\Õ Ç\áš£üs\ÐH;¦2G•N_‰\Ò\êGýCÄ§V? ™“z :j\Ó£6zS³Ò¾\ìž\ÍU[Š‚\Î\ÏÁ‘yY™/<Š\Éò‘ôö?\ØT9‹þ·\Ú&\áG}\å5»Í‰”±\à¬\Ðø1å½¨\éxe,¶¯cú»“\êrÿi*–‹Ù¥v”ƒÁL•€ml\Þ\Ò\âb\ÑÝ«¸H\Ö?ôO\0ÿ?¡\ÍOú?=7–!§ü%\äcˆjù7”“a>Xò\Ös\Ô\éôû,¦™:r,ñ¢£\è·ù¿\ë«\æ4ˆº_ô+®\nÿýXq’3©e\Ñ;‡\í¿h™­\"¼¯³SõI©µ©	w\î:+K\Þ~ŒR¹PûU½¹7=uAQ!L‡Š\ÇP)U°Ü˜Œ\Ã4\'.\Ýp\'õXi€¾(¤B?$ûÈ¬$\íµ\Éh\àB@1Ï®l\0\0\0‚¸\Ó\ïþþp\íU¥šý·jned\ß;\Í5I‘uµ\éN\â§\é\Õ\é\è›R‹‡n±K\Ñ\Ãþ†x«ue6NÅ¤FUc%\ÂK•\\\É&©t&\ZvÍˆ\Ñø“¼¡y4\Â\áù\Ê\Ä\r®RbüJK4º€\àó\ä3Æ¸f±(\Âq\"p=‡Û¯6=«ô€f¹	¾D¥\Â:v©bÁº\Ð\ÞsNÒ¶¹°3«cU°\Æ\Âs– ÔŸò­T¾[Õ\ÜC·›\ã“r¼a\è›Z:°«ðÖX¾¨\Ì9¢Yýò¦¶48=®iA²Ê£\Ò\îµ\Òqš»ñm\ä\Ã\r\Ó4\ÌY»ýHûZZ™¥’J{Ò–H\n\æ-\Ó.2\í •,õ\Ì\ÔU†¨Zõ8:¥ÿ¸y$º›÷‘’\ê\ä\Ö+=E*x·ž^Y\Ú®\Ú\Ôd,«¿\0º)v!zc\îYh\Ýð²\"çŒ°8}ˆ]K\Æ}tñTwöì¶¯9\ï°H57Œ[€ñC\å‹X/ð\èi)m)W\îG@š>‹È„›\ëP“,\Ïóö}Ð½ú´„È›I@“””Þ§EJ¹\ZÇ”\í\Õ Ó†Ë‘zš_žd\Ò_™ŽQÌ¥JúrI~N‰G\ÌÂ…=fW‹,+¦BÀ!õ\î\Æ1Ø€\Ê\Óg>Í‰}›[\àT¶ý\ÈE\\7k~†\ÛDAˆ§x\Íi˜œ\Ã\ÞlW?&v°­S\Ïµ‘\Å!\rD\ëc\èLw}vµJ[‹ª)ò%[ò§?§4Cµýz\Ü-dÀ\"!³†¤9os½\n)\Ýg°\×m›•¾L\àJ‰?Ä™Ü¨S\Ö\ÒqIÀzvúSc\"¼\à9O\Ô\ì„ñý÷\é¶Z–BeÒ¿\ê0\ìš\é\Ã\å|‰ñºnÙ”§{\'©aÊ4XÀQ\àñ•_\è¥p¾†\É\Õ\Ù\ì\Í)Ô¶K\ÒG˜²SD\íúÿ ã„¦\á5\ÂE1E\0G¾N9“¾~.h°\n­i\ä\Ó†\ã0¼N\Ø§\0\Ú\í¥§‚+ôƒGT\r¬\Õ\à\×z\Ô`K\Z®\çÎ©°,0H“\Í\âY\0j¢‰²¸\Ýx¥j\äe¿„c\Ù\ï\ë‹\î4Ž0‹’\'l\\E\ã\à\ãòš¦¯w‡lq¸òQô]Ê˜–\Ó5P´M\ÈÝ“\Ê9c¦·)+aúA12ŠóµK8Z\ÔÙšó1Xw3G´\\*a$\Ø`O¿pWl/&þ_\áVe·6£„À½]¢\å%m\Ýû¢[{¿\áp\Ýn¬š\\H¸S‚®÷öµ½#ó£\Ï\ì\ÌG¿R=Àþªó\çÆ“\ÛMyÄG9\â\Ò\çð$¹hÀ¨o1w½\âUüŸ¤µoš\Ô`\Õƒó´ tó÷Í´@*ü\Åû*“»ýav·‡\Â|!d™3”F.÷H\Úa¨ô—ª{\ÊQ@Nc\ÑP‹±‹igX}¢\à¹1\Ôz~‘>}Q\çbÏ„i\å‚	YŸD²s˜t8¼\å»#\ß*4&oŽ•;xlð\ÅR\àÄ¶Æ \Ï\Ø/\Ûc™Á\ÃDûózÐµ\í©©\Ä\ìñk\ÄR¤)I¸\í\Â°õÁ©\'þò.\È.2[S±1`¹~\ëñZ/T,u~6pUPˆb³*¿‰¨\çû5ž\\³¹ò	œ[H3Ó‰aU\äo¼ø\ís*?uû°ÙŠ\íu‚~ý°©«\í¦M\r¥>½a\âxcZj\ÛÁ%e[üõõ\ìN\æ\ÜÀ\Ä\Ù3\\E2‡ƒ©¾Ù­\Ü!¿r\n#§\Ö[«\Èi(\ëª\02¡\â»VWŸDö\0\03R‡ }¼Ÿ`B¥{T¡I\ÂAÆaÒ”!YfòDS·Sð<\Í€žNŠ\É;\ë\ìµnB¸jÀó˜ø\í³Vð Wkg÷˜EÙƒ\ÍùC°\Ç\Z¡\Í<”a	\'~\é1.’§ltÚ¨\áŠU<0óªÆ„›ug [ZÌ°Ïµ‘¢*¬|\á\ë^öX\à&su\Þ`Œô‹\âp`‚\0 \Âù~û¹\Ìl»¦\ãV÷³>hf\ÝGDn\'7eY b\ÂùƒD\ì¼oM_û*Ç‘’\Î-ð\Ì\Èýp\Ä;\èÞ“\'<€R»óe?\ä\è\Ø\Ô\á\Ä+^»õ£m=À\Ã\Ô²öD0¸}ñDwøkn\n‘žc·\ØM\Ð\09Ÿ\Å5\ë::ò9E†[\æi\é^,¨X¨?sW¾O{\ß\Ù\åjŸ\Ði€“9«l\ÎC_~\çrÔ‡^9n\Èú\á$ž\â\ë±\rò€†,½”xv§C“ôð”IŸo¿r\ßK¼™%œ…1\×À’­¿¾²‰h;Å¨\n—Q‹§_P\0.i„¿ˆÈš\ë	FJ$P\ÈMhœ–¹m\ÙyÀ°ª\ÃLÖ— \ê€Ä‘	ˆ]¢fx6\'\ì¿Ñ âº«ýå‚3K\Æ%¢´q\ß89G¾s¦+¯ñ[òv½+Iò†­½~ke\í\Å!Ë¹L¶\Ò)\Z;|I\Øõ\ÅM›FE\èó¦Vó \Ã//Þƒi?U#L‘wH\"»Ã ô£[µJU7Ÿ\r\áûÿ‚\Ä6@/„>T›\Û0JQQì²’ùc	Ë\Ó>\èp^c59¤ü\'¢G­\rØ¥Ô«È’ðD\ÔA -\Û\ï$ü\ÉC;_Ž¾# |P#\Ë\Ì,¼Q_Ö‚/\ç\äV\Âo¿s±\ÓQö¸_\×tdAµ;\áOW¡6 |ƒ\è½§M„?„Ö»\"A¯C\ÓzUe\îI7üˆf\ãq/ò++I£M¸‚-ã”RJú\åeŸ„\î\é„ðWZ¶mHšrý>=>IEJŒ†”\à\Óýbš´Nb@R\Ço=(g…\íÀ9x\Ð4Aô:l(u˜3©T$Q\'–\ì:?\Øÿ\0°ýºs\ï•}ª*ƒt<*frjBDšg™b*^#°‡2ÿžXxŠ‘MŒ\ãô\ÈùI‘\Â\îNB£PÀr{+ö \Õ˜l\î\0\0R\ìTüY\'aƒ\à¤Y¨W\Û\æ\Éb<ñAÀ\r»¹\Çºó\á(w\ÉK\nˆW\Ýfšg\Ø\ì\Å\Ê\ëÏŽ?U%$•›½˜.]!´£M0™¾?W<\"ñPß‰<õò“Švÿ±\á\áº\ÉN\'»”\ØH¹žg‘dXžýü¿&\æû½D\É\Ã	¶ƒð´‡ú~³V£fPÀ°M/\0*£+¦¼)0¬`ÚŠ(4©\0	2Œp\í)n\á\ã‡\Ã\ï\ßÍ˜¼Q3\Ô\Â‹\Ô\ÍU`”ƒx›·\à@~\ï \Ø\ã*¹».-jOÀÕ«D÷)\Í_y‡m¾\ÛaüyUÀ\0¦”˜\åÁ­\0oónI½;ø‹(gOr.\í\í\à¿S ŸÀˆL›õ* ¨&ÿH\ÞuåªœŽq\×ôYI§”\×\í¯P8½Ö¥Zn,\å$6 ‚š¥\éžnbN\é\èm\àUöŒ‰œ*¬dO\ë\î+”ñ\ÏÁmCü\Þ\ì{}>f$*\Ò\îÎŸzÏ™™ühùzUz…l¡­I*\Í^\Ì`\Ï)Ô³A\ëiw¤‹Ü’÷©¿4	£0kY\Ö*õ·®	7+\èPªt0ôvPD\Ø\0/…\Í×„D\Ðf\ì 3^¡&–!Õ†y‡À½\ë=7(@¢T\è_‡6„3\ÕÿÔ€\r%FF‡8©\È,,[ \0\0\0œ:\ä\ã\Ô8^“X«¿Wþ¼•¸\\\r\Ò~¿¹8\îª6{õüƒ‰`\ã€\ØÉ©°»@ws7¹*\Zi<†\Õ2*$\á\Í<\ëG\â\Ü\Ú&3 —+Œ½:@\Ñ¾\ÛÏ·7ªógÈŽ\×k\Õc>’ª\Ã/\Î\ÉS*\ïð_\r\Õ(`F*\ë¿‚q„\ï›\á¯\×1¾õc\\^v)|F\ç\Îf\Ý|ú]cr\n; ð¯\è·#Q´\\Dz\Ïf>ÿÀG\Îi\Ã\ç•ö/\çWdH}th²Wdóñj\ç\Ñ\ÍØµ\èÝ´ÅœTð\Æ\ë\é:ÇŠ©Ç§x°û„T‰~¨õò\ßBww! ‹\È~´Z1›]ü…ot\ï\0\ßY•ÿ\æÀÿ\ÇOGl\×:E--|’N9©R7L©NE(lû\×<âƒ«$\ÈK!”;œ\é\ê\Ø\Îay¸x\Ã\ëøŸVj\ácD%ø\áÑ¦_\é\Â<\åôÈ´³7n\Zñ¤\ØSC>`\È\n\î­@6ð\ç}6!ÿ1\ßK\Z€\Ò\ì\ß\Ðx²ññ&ý$\Û]K>ž(\0¯Mù¢þ\ïš`þ‚ºk,=U\é)M\à‰¤†˜\ç4\Ú\Çeˆ,\"ltu\é\Â\É>\Ïs\ë5¦\Â[…fu§\ÝÜªDp³÷‡[ò¶£3jü§7_\\\0X“n­\â\æ6™–\îw†­q\Úh4¨4óöñ\É\â©^X˜\âóµA­MEoµƒ?$WNa5N\â\Ã\Êie´ov\ìZ\ç&.H\Ù¯Á÷\äý\Âk²\Ñ8CúôÁúµÂ”$ÁR\Í&<ð*ž–\ÙENýóH\ë|™#»`¥iÐ\ï·x:h…\ãòIö³\ìDº0<>†\àº\Ê>\à² \çKR»Vn\Ë)1\Þ4‰ˆ\'§’\'¯±„\ì\Æ}\í\n´k\ážŸ\ÙÏ‹½²ûø\ë%s9.\É-L	’«¥€\ï¡­wo![l®ª®vºpC\æÀ)95±/\0}²\'µ\\ªR\\‚û\Ó%–}>\ÎLt{\ì\\¾kBxú„\Ùõ´ŠžY\Çzûü\Ã[¼j;\ÕTŸ/·‹v§\ä€iD\å_º3hd¼8\\sÐ¡i\Ýd´;‘\çÐ±—˜\ÎB6k\")¾‘7w¡fÃ‡C	u\ç\Ù6ð´P>\ÉRžcÿ\È- JÇ¿À¨Å½B¶ÑŽ¿äœ\Ä\å\Ïn8XøT¥baNKƒû\Ä/mÿ\ïÌž¨xV\0ð£oo\È\ÇMú\Ú\äðš6`­J™™úa*\";^oÆ \×\æ\0²…¶Žq7òs•¦¡´\\\ÚRúS9¯\"£¢,Ö½¬ø-@º˜\Z}0\ç8ð½U¥ŒºT\ìD8\Ô1¤¹6X\ÜxA\n\Ùmª\éœ\Ð<UXS`\Ý\âq\nýo#µ^­\àŠ&÷\Ì]7\Î1z\Þ?tø!=Pû6M\ÞR\"#Ð­2”TŽ«²ÿ—\Ú÷S‰\×\Ïkhh½\æœ8\Ðùc\Ý[Ó®\Öw\åŒÀ\ßf\ëv¬\\-³$\â\ÇW„ó\íÁ6\í@‡}Šµ\\¿*\ÌA\ï1 \Ð,& o/–!\'¥Ð¿a\Z¥d3žð\Ìe\Ó÷¡\Ó%‹fnÎ³Qm\ÛòŠB¸\é>¦<ÿ³ÌŸõ¹¹]V\Ó|fž=ƒLVe\Ý\Þ6÷õ\æñ:=£4·\î¥Â½R²{Œ\Ãüd\ï\âŸ¯ÿ8s\àb±S\Ø\0\03Z4Ä Š\Ö0Øˆ7L¡\à\0m\áD·\È$ðM¬wé®²ŠLe·Š\Ò^m)^h\Ð\0\0\é½ÿÿú8À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','fsadf',12);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `codigo` int NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `vip` bit(1) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 12:11:50
