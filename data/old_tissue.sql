DROP TABLE IF EXISTS `Tissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tissue` (
  `TissueID` int(3) NOT NULL,
  `Stage` enum('Adult','Larval') DEFAULT NULL,
  `Sex` enum('Male','Female','Both') DEFAULT NULL,
  `TissueName` varchar(30) NOT NULL,
  `Abbreviation` char(2) NOT NULL,
  `UniTissueID` int(2) NOT NULL,
  `Reference` enum('Yes','No') NOT NULL,
  `Replicates` int(11) NOT NULL DEFAULT '0',
  `RNAseq` enum('Ed','Py') DEFAULT NULL,
  `ProfileAL` tinyint(1) NOT NULL,
  `ProfileLO` tinyint(1) NOT NULL,
  `ProfileMA` tinyint(1) NOT NULL,
  `ProfileFA` tinyint(1) NOT NULL,
  `ProfileAT` tinyint(1) NOT NULL,
  `ProfileAO` tinyint(1) NOT NULL,
  PRIMARY KEY (`TissueID`),
  KEY `UniTissueID` (`UniTissueID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tissue`
--

LOCK TABLES `Tissue` WRITE;
/*!40000 ALTER TABLE `Tissue` DISABLE KEYS */;
INSERT INTO `Tissue` VALUES (1,'Adult','Male','Head','Hd',1001,'No',3,'Ed',1,0,1,0,0,1),(2,'Adult','Female','Head','Hd',1001,'No',3,'Ed',0,0,0,1,0,0),(3,'Adult','Male','Eye','Ey',1002,'No',2,'Ed',0,0,1,0,0,0),(4,'Adult','Female','Eye','Ey',1002,'No',2,'Ed',0,0,0,1,0,1),(5,'Adult','Male','Brain','Br',1003,'No',3,'Ed',0,0,1,0,0,1),(6,'Adult','Female','Brain','Br',1003,'No',3,'Ed',0,0,0,1,0,0),(7,'Adult','Male','Thoracicoabdominal ganglion','Tg',1004,'No',2,'Ed',0,0,1,0,0,1),(8,'Adult','Female','Thoracicoabdominal ganglion','Tg',1004,'No',2,'Ed',1,0,0,1,0,0),(9,'Adult','Male','Crop','Cr',1005,'No',2,'Ed',1,0,1,0,1,0),(10,'Adult','Female','Crop','Cr',1005,'No',2,'Ed',0,0,0,1,1,1),(11,'Adult','Male','Midgut','Mg',1006,'No',3,'Ed',0,0,1,0,1,1),(12,'Adult','Female','Midgut','Mg',1006,'No',3,'Ed',1,0,0,1,1,0),(13,'Adult','Male','Hindgut','Hg',1007,'No',3,'Ed',1,0,1,0,1,0),(14,'Adult','Female','Hindgut','Hg',1007,'No',3,'Ed',0,0,0,1,1,1),(15,'Adult','Male','Malpighian Tubules','Tu',1008,'No',3,'Ed',0,0,1,0,1,1),(16,'Adult','Female','Malpighian Tubules','Tu',1008,'No',3,'Ed',1,0,0,1,1,0),(17,'Adult','Male','Fat body','Fb',1009,'No',3,'Py',1,0,1,0,0,0),(18,'Adult','Female','Fat body','Fb',1009,'No',3,'Py',0,0,0,1,0,1),(19,'Adult','Male','Salivary gland','Sg',1010,'No',2,'Ed',0,0,1,0,0,1),(20,'Adult','Female','Salivary gland','Sg',1010,'No',2,'Ed',1,0,0,1,0,0),(21,'Adult','Male','Heart','Ht',1011,'No',3,'Py',1,0,1,0,0,0),(22,'Adult','Female','Heart','Ht',1011,'No',3,'Py',0,0,0,1,0,1),(23,'Adult','Male','Carcass','Cs',1012,'No',3,'Ed',0,0,1,0,0,0),(24,'Adult','Female','Carcass','Cs',1012,'No',3,'Ed',0,0,0,1,0,0),(25,'Adult','Male','Rectal pad','Rp',1013,'No',3,'Ed',0,0,1,0,1,1),(26,'Adult','Female','Rectal pad','Rp',1013,'No',2,'Ed',1,0,0,1,1,0),(27,'Adult','Male','Testis','Ts',1014,'No',3,'Ed',1,0,1,0,0,1),(28,'Adult','Male','Accessory glands','Ag',1015,'No',3,'Ed',1,0,1,0,0,1),(29,'Adult','Female','Ovary','Ov',1016,'No',3,'Ed',1,0,0,1,0,1),(30,'Adult','Female','Virgin Spermatheca','Vs',1017,'No',3,'Py',0,0,0,1,0,1),(31,'Adult','Female','Mated Spermatheca','Ms',1018,'No',3,'Py',1,0,0,1,0,1),(32,'Larval','Both','CNS','Ns',1003,'No',3,'Ed',1,1,0,0,0,0),(33,'Larval','Both','Midgut','Mg',1006,'No',3,'Ed',1,1,0,0,0,0),(34,'Larval','Both','Hindgut','Hg',1007,'No',3,'Ed',1,1,0,0,0,0),(35,'Larval','Both','Malpighian Tubules','Tu',1008,'No',3,'Ed',1,1,0,0,0,0),(36,'Larval','Both','Fat body','Fb',1009,'No',3,'Ed',1,1,0,0,0,0),(37,'Larval','Both','Salivary gland','Sg',1010,'No',3,'Ed',1,1,0,0,0,0),(38,'Larval','Both','Trachea','Tr',1019,'No',3,'Ed',1,1,0,0,0,0),(39,'Larval','Both','Carcass','Cs',1012,'No',3,'Ed',0,1,0,0,0,0),(100,'Adult','Male','Whole body','Wb',1020,'Yes',3,'Ed',0,0,0,0,0,0),(200,'Adult','Female','Whole body','Wb',1020,'Yes',3,'Ed',0,0,0,0,0,0),(300,'Larval','Both','Whole body','Wb',1020,'Yes',3,'Ed',0,0,0,0,0,0),(53,'Larval','Both','Garland cells','Ga',1050,'No',3,'Py',0,1,0,0,0,0);
/*!40000 ALTER TABLE `Tissue` ENABLE KEYS */;
UNLOCK TABLES;
