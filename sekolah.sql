-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: sekolah
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guru` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` int NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_mulai_mengajar` date NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES (1,'Najwa Utami S.Kom',2,'0932 8784 054','1989-04-08','Gg. Barat No. 353, Solok 60461, Sulut','2022-09-07 19:11:16','2022-09-07 19:11:16'),(2,'Uchita Maryati',690,'0489 6053 4319','1982-07-26','Kpg. Sudirman No. 447, Tegal 46379, Banten','2022-09-07 19:11:16','2022-09-07 19:11:16'),(3,'Muhammad Sirait',837334902,'(+62) 314 8519 7051','1972-01-30','Ki. Bhayangkara No. 942, Banjar 36372, Sumut','2022-09-07 19:11:16','2022-09-07 19:11:16'),(4,'Hadi Nababan',5511050,'(+62) 28 2170 7863','1976-07-16','Ki. Tentara Pelajar No. 701, Sabang 70129, Maluku','2022-09-07 19:11:16','2022-09-07 19:11:16'),(5,'Dirja Maryadi',7682,'(+62) 848 0238 9204','2011-10-30','Jr. Tambak No. 654, Depok 81530, DIY','2022-09-07 19:11:16','2022-09-07 19:11:16'),(6,'Calista Laksmiwati',55,'(+62) 598 9232 877','2014-07-14','Kpg. Sudirman No. 542, Solok 47914, Bengkulu','2022-09-07 19:11:16','2022-09-07 19:11:16'),(7,'Violet Safitri',25,'(+62) 359 4308 591','1988-09-27','Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 754, Mataram 67571, Kepri','2022-09-07 19:11:17','2022-09-07 19:11:17'),(8,'Sadina Nasyidah',45000,'(+62) 729 5309 740','2004-10-22','Kpg. Jakarta No. 278, Banjarbaru 51641, Maluku','2022-09-07 19:11:17','2022-09-07 19:11:17'),(9,'Bajragin Rusman Pangestu',703,'0319 3581 5931','2010-08-05','Kpg. Banceng Pondok No. 819, Bandar Lampung 93723, Jateng','2022-09-07 19:11:17','2022-09-07 19:11:17'),(10,'Indra Pradana',106,'(+62) 936 4098 6801','1978-02-02','Jr. Bayam No. 239, Malang 52703, Gorontalo','2022-09-07 19:11:18','2022-09-07 19:11:18'),(11,'Siti Wijayanti',307900,'024 7908 9518','2016-10-28','Jr. Sugiyopranoto No. 560, Tidore Kepulauan 55970, Sulteng','2022-09-07 19:11:18','2022-09-07 19:11:18'),(12,'Irma Kani Yulianti S.Psi',490,'0517 5919 2651','1979-02-24','Psr. Otto No. 573, Padangsidempuan 27533, Malut','2022-09-07 19:11:18','2022-09-07 19:11:18'),(13,'Hadi Yoga Wahyudin S.Kom',8,'0833 478 695','1995-09-16','Jr. Jayawijaya No. 636, Administrasi Jakarta Timur 45622, Sulteng','2022-09-07 19:11:18','2022-09-07 19:11:18'),(14,'Erik Suryono S.Farm',7,'(+62) 444 2166 306','2008-01-05','Jln. Kyai Gede No. 679, Surabaya 60631, Bali','2022-09-07 19:11:18','2022-09-07 19:11:18'),(15,'Bella Handayani S.Farm',88928855,'(+62) 268 1894 9987','1988-07-07','Ki. Raden Saleh No. 682, Kendari 15682, Jambi','2022-09-07 19:11:19','2022-09-07 19:11:19'),(16,'Zelaya Lailasari',5037360,'0977 3415 1891','1986-05-25','Jr. Gardujati No. 696, Batam 86132, Maluku','2022-09-07 19:11:19','2022-09-07 19:11:19'),(17,'Sari Wijayanti',67420406,'0546 8779 592','2001-03-10','Dk. Bappenas No. 618, Solok 64760, Kaltara','2022-09-07 19:11:19','2022-09-07 19:11:19'),(18,'Murti Adriansyah',33264441,'(+62) 522 3704 9808','2000-09-12','Kpg. Cemara No. 99, Balikpapan 49470, Banten','2022-09-07 19:11:19','2022-09-07 19:11:19'),(19,'Bahuwirya Wasita',8822902,'(+62) 232 6813 270','1993-09-30','Jr. Asia Afrika No. 740, Surakarta 94326, Kaltim','2022-09-07 19:11:20','2022-09-07 19:11:20'),(20,'Adhiarja Wahyudin M.Pd',55603,'(+62) 817 3557 1716','1996-11-07','Jln. Flora No. 408, Padangpanjang 74387, Kalteng','2022-09-07 19:11:20','2022-09-07 19:11:20'),(21,'Nilam Usada',9,'(+62) 459 2961 9703','2021-06-24','Kpg. Basuki No. 339, Sorong 47543, Jambi','2022-09-07 19:11:20','2022-09-07 19:11:20'),(22,'Hilda Gawati Uyainah S.Gz',796,'(+62) 208 4711 4358','1989-12-01','Psr. Gegerkalong Hilir No. 229, Yogyakarta 18696, NTB','2022-09-07 19:11:21','2022-09-07 19:11:21'),(23,'Bahuwirya Ramadan',91760,'(+62) 853 170 735','2005-02-04','Jr. W.R. Supratman No. 527, Denpasar 99704, DKI','2022-09-07 19:11:21','2022-09-07 19:11:21'),(24,'Faizah Oliva Winarsih M.TI.',0,'0992 4743 856','2005-02-04','Jln. Dahlia No. 161, Mojokerto 30859, DKI','2022-09-07 19:11:21','2022-09-07 19:11:21'),(25,'Kartika Wijayanti',9188106,'(+62) 945 4730 8150','2011-02-02','Ds. Salam No. 774, Denpasar 86901, Kepri','2022-09-07 19:11:21','2022-09-07 19:11:21'),(26,'Harsana Marpaung',1368560,'028 4665 837','2021-01-03','Gg. Jakarta No. 528, Pontianak 34641, Sumut','2022-09-07 19:11:22','2022-09-07 19:11:22'),(27,'Anastasia Rahimah',523,'(+62) 387 6055 764','1973-02-09','Psr. Padma No. 738, Bukittinggi 88357, Kaltim','2022-09-07 19:11:22','2022-09-07 19:11:22'),(28,'Waluyo Saptono',5,'0369 0925 1393','2002-05-16','Dk. Mulyadi No. 574, Parepare 64543, Pabar','2022-09-07 19:11:22','2022-09-07 19:11:22'),(29,'Karya Napitupulu',92214302,'0985 7169 606','1976-02-20','Gg. Sugiyopranoto No. 683, Malang 55939, Jatim','2022-09-07 19:11:22','2022-09-07 19:11:22'),(30,'Fitriani Kuswandari',718465922,'(+62) 793 5476 442','2007-04-07','Ki. Sutoyo No. 967, Bengkulu 81360, Kaltim','2022-09-07 19:11:22','2022-09-07 19:11:22'),(31,'Rahmi Fujiati',3,'(+62) 961 6603 694','2014-12-03','Psr. Nangka No. 534, Denpasar 16494, Riau','2022-09-07 19:11:22','2022-09-07 19:11:22'),(32,'Yance Yuliarti',569115015,'(+62) 335 0264 074','2019-08-14','Psr. Pattimura No. 106, Sungai Penuh 97442, Papua','2022-09-07 19:11:23','2022-09-07 19:11:23'),(33,'Jelita Mulyani',90721942,'(+62) 885 0721 049','1998-07-11','Ki. Baja No. 692, Jayapura 90281, NTB','2022-09-07 19:11:23','2022-09-07 19:11:23'),(34,'Rahman Gilang Tampubolon',9,'0984 8643 7191','2009-10-13','Ki. Pacuan Kuda No. 236, Sukabumi 22270, Kaltim','2022-09-07 19:11:23','2022-09-07 19:11:23'),(35,'Viman Latupono',19050542,'0291 6197 390','1992-05-03','Jln. Jaksa No. 297, Pagar Alam 63943, DKI','2022-09-07 19:11:23','2022-09-07 19:11:23'),(36,'Laila Ghaliyati Yuliarti',23151,'(+62) 833 4336 8395','1983-02-26','Jr. Babakan No. 243, Parepare 69919, Sulut','2022-09-07 19:11:23','2022-09-07 19:11:23'),(37,'Harsaya Umaya Siregar M.TI.',210008134,'0252 3699 3583','2015-08-12','Ki. Diponegoro No. 447, Jambi 35020, Babel','2022-09-07 19:11:24','2022-09-07 19:11:24'),(38,'Puput Pratiwi',130087,'0314 3697 415','2011-12-13','Jr. Tangkuban Perahu No. 948, Ternate 14540, Jateng','2022-09-07 19:11:24','2022-09-07 19:11:24'),(39,'Bakidin Prasasta',11869,'(+62) 449 2061 438','1989-02-03','Kpg. Baan No. 609, Jayapura 27254, Papua','2022-09-07 19:11:24','2022-09-07 19:11:24'),(40,'Ade Laksita M.M.',3573,'023 4128 1467','2021-06-18','Jln. Padma No. 196, Denpasar 94507, Kalsel','2022-09-07 19:11:24','2022-09-07 19:11:24'),(41,'Aurora Wahyuni',99930523,'0398 4206 1000','1977-01-01','Jln. Madiun No. 430, Binjai 79944, Jambi','2022-09-07 19:11:25','2022-09-07 19:11:25'),(42,'Jelita Haryanti',650583983,'(+62) 291 1026 017','1997-10-19','Jr. Basoka Raya No. 645, Administrasi Jakarta Selatan 65822, Sultra','2022-09-07 19:11:25','2022-09-07 19:11:25'),(43,'Garang Embuh Suryono',72938,'(+62) 771 0393 728','2012-09-23','Gg. Radio No. 126, Tangerang 34219, Gorontalo','2022-09-07 19:11:25','2022-09-07 19:11:25'),(44,'Padmi Widiastuti S.H.',408089,'026 1624 0095','2001-11-20','Psr. Suharso No. 637, Parepare 80208, Banten','2022-09-07 19:11:25','2022-09-07 19:11:25'),(45,'Vanesa Fujiati',9319,'0599 1981 671','1987-02-24','Jln. Agus Salim No. 995, Pariaman 80826, Sulteng','2022-09-07 19:11:25','2022-09-07 19:11:25'),(46,'Sari Usamah',1823201,'(+62) 270 5038 399','2011-06-08','Ki. Otto No. 417, Pasuruan 60164, Jatim','2022-09-07 19:11:26','2022-09-07 19:11:26'),(47,'Jaga Putra',16,'(+62) 241 4886 4293','1986-10-22','Ds. Dago No. 330, Palembang 88961, Kaltara','2022-09-07 19:11:26','2022-09-07 19:11:26'),(48,'Shania Utami',1002,'(+62) 23 9953 506','2017-06-19','Jln. Gremet No. 913, Tebing Tinggi 28371, Malut','2022-09-07 19:11:26','2022-09-07 19:11:26'),(49,'Intan Wahyuni S.E.',8689585,'(+62) 803 2144 9587','1997-08-26','Jr. Yosodipuro No. 563, Tanjungbalai 22829, Kalbar','2022-09-07 19:11:27','2022-09-07 19:11:27'),(50,'Ulva Raisa Yolanda',487,'(+62) 249 5526 3681','2009-04-24','Gg. Ki Hajar Dewantara No. 780, Jayapura 60199, Sumut','2022-09-07 19:11:27','2022-09-07 19:11:27'),(51,'Setya Kuswoyo',22,'0788 8494 1863','2012-06-13','Psr. Mulyadi No. 173, Salatiga 55552, Bali','2022-09-07 19:11:27','2022-09-07 19:11:27'),(52,'Ian Pradana',9126,'0807 5878 835','2018-12-09','Dk. Kyai Mojo No. 217, Padangpanjang 12887, Jambi','2022-09-07 19:11:27','2022-09-07 19:11:27'),(53,'Nurul Lala Hassanah',42355257,'(+62) 438 4623 186','2005-01-08','Jln. Baja Raya No. 541, Pariaman 59686, Sulut','2022-09-07 19:11:27','2022-09-07 19:11:27'),(54,'Viktor Dabukke',8666,'(+62) 27 2568 474','1982-10-29','Kpg. Cikutra Barat No. 313, Lhokseumawe 99894, Bali','2022-09-07 19:11:28','2022-09-07 19:11:28'),(55,'Cahya Gading Tampubolon',61251,'(+62) 752 8854 891','1985-05-03','Jr. Supono No. 452, Metro 69815, Aceh','2022-09-07 19:11:28','2022-09-07 19:11:28'),(56,'Kasim Putra',4119394,'(+62) 487 5260 4556','1976-07-15','Dk. Gajah Mada No. 571, Parepare 29592, Jateng','2022-09-07 19:11:28','2022-09-07 19:11:28'),(57,'Raihan Waskita S.Sos',97,'(+62) 451 1625 068','1988-11-03','Ki. Kusmanto No. 481, Salatiga 40590, DIY','2022-09-07 19:11:29','2022-09-07 19:11:29'),(58,'Tari Rahayu',2891595,'(+62) 29 4909 9821','2017-03-09','Psr. Basmol Raya No. 417, Singkawang 33817, Papua','2022-09-07 19:11:29','2022-09-07 19:11:29'),(59,'Siska Puspita',23964074,'029 0379 7092','1975-09-05','Ki. Yogyakarta No. 391, Kendari 70284, Kaltim','2022-09-07 19:11:29','2022-09-07 19:11:29'),(60,'Rusman Haryanto',3568221,'0817 974 176','2014-04-28','Psr. Basoka Raya No. 633, Banjarmasin 21031, Kalbar','2022-09-07 19:11:29','2022-09-07 19:11:29'),(61,'Eva Putri Utami S.Farm',9,'(+62) 504 1951 3179','1981-02-07','Ds. Tambun No. 751, Mojokerto 35600, Sulteng','2022-09-07 19:11:29','2022-09-07 19:11:29'),(62,'Limar Napitupulu',32189975,'0530 2819 608','1985-08-01','Jr. Abdul. Muis No. 404, Ternate 97862, Gorontalo','2022-09-07 19:11:29','2022-09-07 19:11:29'),(63,'Emas Uwais',91765599,'(+62) 518 2736 337','1980-06-14','Psr. Ir. H. Juanda No. 975, Pangkal Pinang 89328, Jambi','2022-09-07 19:11:30','2022-09-07 19:11:30'),(64,'Eli Novitasari',267,'(+62) 893 6794 644','2004-05-24','Ds. Bakit  No. 593, Bandung 54058, Sulteng','2022-09-07 19:11:30','2022-09-07 19:11:30'),(65,'Eva Ami Rahayu',8,'(+62) 524 0965 9706','1976-11-07','Ki. Moch. Ramdan No. 862, Yogyakarta 21217, Kalteng','2022-09-07 19:11:30','2022-09-07 19:11:30'),(66,'Alika Widiastuti',2349135,'0594 1184 672','1973-06-08','Jr. Bappenas No. 527, Prabumulih 12338, Jateng','2022-09-07 19:11:30','2022-09-07 19:11:30'),(67,'Janet Nasyidah',759917,'021 3710 3942','1999-01-30','Dk. Basket No. 789, Sukabumi 49265, NTT','2022-09-07 19:11:31','2022-09-07 19:11:31'),(68,'Bahuraksa Winarno',562839162,'0378 9210 5590','2016-07-02','Jln. Ronggowarsito No. 92, Padangpanjang 96659, Sulsel','2022-09-07 19:11:31','2022-09-07 19:11:31'),(69,'Kajen Prasetyo',91,'0863 9250 895','2016-12-17','Ki. Bambon No. 613, Palu 52773, Sumbar','2022-09-07 19:11:31','2022-09-07 19:11:31'),(70,'Jelita Riyanti',7,'0873 138 858','2010-04-15','Jr. Juanda No. 574, Administrasi Jakarta Barat 14278, Sultra','2022-09-07 19:11:31','2022-09-07 19:11:31'),(71,'Asirwada Manullang',587256,'0461 2152 2903','1993-03-14','Ds. Wahidin Sudirohusodo No. 115, Pekalongan 25025, Riau','2022-09-07 19:11:31','2022-09-07 19:11:31'),(72,'Aisyah Titi Astuti M.M.',997145,'0807 513 049','1988-06-22','Dk. Wahid Hasyim No. 541, Samarinda 74027, Aceh','2022-09-07 19:11:32','2022-09-07 19:11:32'),(73,'Zelda Astuti',621299,'(+62) 869 0575 5071','1981-11-03','Gg. Achmad Yani No. 374, Batam 82686, Sulsel','2022-09-07 19:11:32','2022-09-07 19:11:32'),(74,'Jail Simbolon',0,'(+62) 938 7222 258','2000-06-01','Dk. Lembong No. 872, Mojokerto 35684, Jateng','2022-09-07 19:11:32','2022-09-07 19:11:32'),(75,'Muhammad Prasetya',380038,'024 8588 514','2007-06-18','Jr. Pattimura No. 777, Padangsidempuan 59438, Sumut','2022-09-07 19:11:32','2022-09-07 19:11:32'),(76,'Ajiman Harjo Nainggolan S.Gz',4475,'0421 7022 621','1994-08-20','Ki. Pasirkoja No. 414, Mataram 62901, Banten','2022-09-07 19:11:33','2022-09-07 19:11:33'),(77,'Yance Puspita',91,'0326 1683 486','1989-04-02','Psr. Bhayangkara No. 247, Blitar 91684, Maluku','2022-09-07 19:11:33','2022-09-07 19:11:33'),(78,'Bambang Latupono',629440,'0816 266 654','1972-03-27','Gg. Bambu No. 150, Kotamobagu 84251, Lampung','2022-09-07 19:11:33','2022-09-07 19:11:33'),(79,'Ulya Lidya Utami',42,'(+62) 241 4779 5808','1994-06-19','Psr. Suryo Pranoto No. 933, Probolinggo 15610, DIY','2022-09-07 19:11:33','2022-09-07 19:11:33'),(80,'Kania Suryatmi',443751,'0791 6726 3516','1982-03-01','Dk. Yos Sudarso No. 99, Bau-Bau 41118, Pabar','2022-09-07 19:11:33','2022-09-07 19:11:33'),(81,'Salwa Vicky Winarsih M.Kom.',386375,'(+62) 754 5953 899','1993-03-08','Gg. Sugiono No. 350, Padangsidempuan 45634, Maluku','2022-09-07 19:11:34','2022-09-07 19:11:34'),(82,'Ikhsan Widodo',9416886,'0676 2360 678','2004-02-29','Dk. Uluwatu No. 191, Cirebon 75121, Lampung','2022-09-07 19:11:34','2022-09-07 19:11:34'),(83,'Heryanto Sinaga',595,'0575 9454 4648','2003-07-08','Jln. Moch. Yamin No. 6, Sibolga 28318, DKI','2022-09-07 19:11:34','2022-09-07 19:11:34'),(84,'Natalia Yani Oktaviani M.M.',2372,'0370 1012 352','1982-05-21','Ki. Ciwastra No. 767, Binjai 71584, Pabar','2022-09-07 19:11:34','2022-09-07 19:11:34'),(85,'Jaswadi Sinaga S.Ked',926677859,'0941 7387 073','1989-05-24','Ki. Raya Setiabudhi No. 111, Lubuklinggau 39334, Jabar','2022-09-07 19:11:35','2022-09-07 19:11:35'),(86,'Lalita Hartati',186947432,'0683 1031 891','1984-10-23','Dk. Baja Raya No. 126, Tarakan 77467, Gorontalo','2022-09-07 19:11:35','2022-09-07 19:11:35'),(87,'Puspa Yuniar',30941378,'(+62) 454 4269 079','1985-12-10','Jr. Orang No. 268, Metro 55734, Gorontalo','2022-09-07 19:11:35','2022-09-07 19:11:35'),(88,'Catur Sirait S.Pt',45713,'(+62) 877 9957 0195','2021-09-11','Jln. Krakatau No. 497, Padangsidempuan 64247, DIY','2022-09-07 19:11:35','2022-09-07 19:11:35'),(89,'Mutia Juli Yuniar',71083321,'0597 3567 182','2021-10-06','Ds. Gading No. 706, Jayapura 21104, Malut','2022-09-07 19:11:35','2022-09-07 19:11:35'),(90,'Erik Saefullah',859,'(+62) 705 4232 883','2016-08-10','Psr. Gotong Royong No. 992, Surabaya 70249, Kaltara','2022-09-07 19:11:36','2022-09-07 19:11:36'),(91,'Safina Pratiwi',618332,'0664 7394 7270','1979-08-25','Dk. Ters. Kiaracondong No. 920, Gunungsitoli 42711, Kalteng','2022-09-07 19:11:36','2022-09-07 19:11:36'),(92,'Puji Hartati',1844,'(+62) 425 4175 480','2012-11-28','Ds. Siliwangi No. 603, Lubuklinggau 87271, Bengkulu','2022-09-07 19:11:36','2022-09-07 19:11:36'),(93,'Bella Fujiati',278928434,'(+62) 665 4193 4849','1971-11-06','Jln. Imam Bonjol No. 128, Metro 70056, Kalsel','2022-09-07 19:11:36','2022-09-07 19:11:36'),(94,'Mursita Manah Pratama',28,'0966 2312 035','1981-09-23','Jr. Elang No. 859, Padangpanjang 23912, Jabar','2022-09-07 19:11:36','2022-09-07 19:11:36'),(95,'Gabriella Wahyuni',7708564,'0261 2433 853','2016-12-18','Psr. Peta No. 614, Banjar 82043, Sumbar','2022-09-07 19:11:37','2022-09-07 19:11:37'),(96,'Samsul Marpaung S.Ked',885,'(+62) 864 1694 3625','1996-11-10','Kpg. Cokroaminoto No. 125, Tarakan 79688, Bengkulu','2022-09-07 19:11:37','2022-09-07 19:11:37'),(97,'Alika Aryani M.Pd',628,'0321 4903 7267','1990-10-28','Ds. Sugiyopranoto No. 513, Administrasi Jakarta Timur 95946, Babel','2022-09-07 19:11:37','2022-09-07 19:11:37'),(98,'Nasrullah Lukman Saptono',1498022,'0993 0660 3126','2015-05-31','Dk. Perintis Kemerdekaan No. 580, Bekasi 55967, Jambi','2022-09-07 19:11:37','2022-09-07 19:11:37'),(99,'Suci Rahimah',7251,'(+62) 995 0167 250','1974-09-09','Jln. Warga No. 557, Dumai 40563, Riau','2022-09-07 19:11:37','2022-09-07 19:11:37'),(100,'Anom Marbun',13,'(+62) 303 3365 3878','1994-09-27','Jln. Baabur Royan No. 628, Sorong 24045, Bali','2022-09-07 19:11:38','2022-09-07 19:11:38');
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris`
--

DROP TABLE IF EXISTS `inventaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventaris` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_satuan` int NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris`
--

LOCK TABLES `inventaris` WRITE;
/*!40000 ALTER TABLE `inventaris` DISABLE KEYS */;
INSERT INTO `inventaris` VALUES (1,'Suscipit commodi cupiditate et similique et.','2',13416,'1992-10-07','Layak Pakai','2022-09-07 19:11:38','2022-09-07 19:11:38'),(2,'Molestiae ipsum porro omnis et eveniet labore.','94',40540,'2014-02-09','Layak Pakai','2022-09-07 19:11:38','2022-09-07 19:11:38'),(3,'Illum accusamus est nihil.','43',60061,'2013-10-18','Layak Pakai','2022-09-07 19:11:38','2022-09-07 19:11:38'),(4,'Dolore dicta cupiditate sed et aut quis.','166',92980,'2010-04-15','Layak Pakai','2022-09-07 19:11:38','2022-09-07 19:11:38'),(5,'Culpa hic sit neque.','67',53972,'2017-11-29','Layak Pakai','2022-09-07 19:11:38','2022-09-07 19:11:38'),(6,'Minus quisquam iure et veritatis a.','128',67052,'2003-02-02','Layak Pakai','2022-09-07 19:11:39','2022-09-07 19:11:39'),(7,'Nesciunt laborum ipsam alias dolorem quaerat dolores repudiandae.','55',86418,'2010-05-06','Layak Pakai','2022-09-07 19:11:39','2022-09-07 19:11:39'),(8,'Voluptas in et nobis doloribus aperiam tempore.','75',85614,'1981-05-06','Layak Pakai','2022-09-07 19:11:39','2022-09-07 19:11:39'),(9,'Exercitationem et ipsum repellendus quibusdam nihil sint sed.','180',94097,'1972-05-16','Layak Pakai','2022-09-07 19:11:40','2022-09-07 19:11:40'),(10,'Autem ab suscipit voluptatibus quos ex reiciendis non illo.','183',87696,'1997-12-10','Layak Pakai','2022-09-07 19:11:40','2022-09-07 19:11:40'),(11,'Ut sequi et blanditiis iusto incidunt.','77',67791,'1980-02-01','Layak Pakai','2022-09-07 19:11:40','2022-09-07 19:11:40'),(12,'Sunt vitae qui dolorem cumque.','130',66704,'2012-06-27','Layak Pakai','2022-09-07 19:11:40','2022-09-07 19:11:40'),(13,'Nostrum nostrum voluptas ea provident eaque.','108',30283,'2016-03-17','Layak Pakai','2022-09-07 19:11:41','2022-09-07 19:11:41'),(14,'Rerum et dolores voluptatem voluptate explicabo quia et.','20',87609,'2001-12-30','Layak Pakai','2022-09-07 19:11:41','2022-09-07 19:11:41'),(15,'Molestias aperiam aliquid quia aut sed vero.','103',67928,'1984-01-15','Layak Pakai','2022-09-07 19:11:41','2022-09-07 19:11:41'),(16,'Quia suscipit ut sapiente fugiat qui.','66',95243,'2015-04-25','Layak Pakai','2022-09-07 19:11:42','2022-09-07 19:11:42'),(17,'Ea voluptas facilis voluptas illum qui provident molestiae.','31',66293,'1998-10-23','Layak Pakai','2022-09-07 19:11:42','2022-09-07 19:11:42'),(18,'Libero dolorum ex velit.','2',16612,'1988-12-27','Layak Pakai','2022-09-07 19:11:42','2022-09-07 19:11:42'),(19,'Ratione omnis delectus laborum tempore velit facilis.','27',97491,'2014-09-03','Layak Pakai','2022-09-07 19:11:43','2022-09-07 19:11:43'),(20,'Quos sint facere laborum ea ex.','84',33616,'1984-05-14','Layak Pakai','2022-09-07 19:11:43','2022-09-07 19:11:43'),(21,'Sapiente deserunt assumenda molestias.','30',66162,'2012-08-22','Layak Pakai','2022-09-07 19:11:43','2022-09-07 19:11:43'),(22,'Minus veniam non quidem in harum unde.','10',20017,'1993-11-12','Layak Pakai','2022-09-07 19:11:44','2022-09-07 19:11:44'),(23,'Voluptate dolores accusantium neque fugiat totam.','38',25285,'1999-10-18','Layak Pakai','2022-09-07 19:11:44','2022-09-07 19:11:44'),(24,'Quia natus placeat repellendus quibusdam consequatur quidem.','7',10125,'2006-09-11','Layak Pakai','2022-09-07 19:11:44','2022-09-07 19:11:44'),(25,'Qui nostrum ea amet voluptate.','62',41189,'2021-04-06','Layak Pakai','2022-09-07 19:11:44','2022-09-07 19:11:44'),(26,'Non recusandae odit rerum dicta dolorum cum.','121',40387,'2006-10-17','Layak Pakai','2022-09-07 19:11:44','2022-09-07 19:11:44'),(27,'Tenetur dolorem ut saepe aut tempore.','10',45561,'1986-01-26','Layak Pakai','2022-09-07 19:11:45','2022-09-07 19:11:45'),(28,'Atque dolores voluptatum nihil laboriosam.','78',98076,'2017-09-13','Layak Pakai','2022-09-07 19:11:45','2022-09-07 19:11:45'),(29,'Libero cumque vitae ad corporis.','141',74853,'1999-11-24','Layak Pakai','2022-09-07 19:11:45','2022-09-07 19:11:45'),(30,'Accusantium facere omnis eaque quibusdam minima maiores.','183',50904,'2020-03-23','Layak Pakai','2022-09-07 19:11:45','2022-09-07 19:11:45'),(31,'Alias aspernatur ea eligendi excepturi incidunt.','82',38176,'1986-09-01','Layak Pakai','2022-09-07 19:11:45','2022-09-07 19:11:45'),(32,'Sit natus voluptas praesentium nihil beatae et dolores.','17',15018,'1982-07-06','Layak Pakai','2022-09-07 19:11:45','2022-09-07 19:11:45'),(33,'Unde soluta voluptas non.','159',62298,'2014-09-10','Layak Pakai','2022-09-07 19:11:46','2022-09-07 19:11:46'),(34,'Et et autem repudiandae mollitia quia animi.','37',22531,'2019-11-27','Layak Pakai','2022-09-07 19:11:46','2022-09-07 19:11:46'),(35,'Quam voluptatem omnis et rerum aspernatur.','92',55146,'1974-06-21','Layak Pakai','2022-09-07 19:11:46','2022-09-07 19:11:46'),(36,'Labore sit voluptate distinctio qui sapiente cum dignissimos.','194',42235,'1983-03-27','Layak Pakai','2022-09-07 19:11:47','2022-09-07 19:11:47'),(37,'Aperiam qui et culpa rerum soluta ducimus ratione.','8',45584,'2016-09-08','Layak Pakai','2022-09-07 19:11:47','2022-09-07 19:11:47'),(38,'In quod est ut mollitia aut non aliquam.','57',77067,'1982-06-12','Layak Pakai','2022-09-07 19:11:47','2022-09-07 19:11:47'),(39,'Qui ut nisi mollitia nihil.','165',86925,'1991-03-19','Layak Pakai','2022-09-07 19:11:47','2022-09-07 19:11:47'),(40,'Rerum aut porro tempore.','126',51157,'1999-03-12','Layak Pakai','2022-09-07 19:11:47','2022-09-07 19:11:47'),(41,'Nemo ratione id voluptatem dolores.','83',51331,'2007-04-19','Layak Pakai','2022-09-07 19:11:48','2022-09-07 19:11:48'),(42,'Pariatur voluptates voluptatem dolor aperiam nulla eligendi sed.','38',74293,'1989-02-13','Layak Pakai','2022-09-07 19:11:48','2022-09-07 19:11:48'),(43,'Odit sapiente magnam atque ut animi pariatur.','171',51853,'2013-09-30','Layak Pakai','2022-09-07 19:11:48','2022-09-07 19:11:48'),(44,'Et nostrum quibusdam eos et.','174',83047,'1981-12-08','Layak Pakai','2022-09-07 19:11:49','2022-09-07 19:11:49'),(45,'Quam magni autem eaque aut harum sit hic.','8',81854,'1994-09-03','Layak Pakai','2022-09-07 19:11:49','2022-09-07 19:11:49'),(46,'Quas officiis ex totam ut.','13',41712,'2013-06-23','Layak Pakai','2022-09-07 19:11:49','2022-09-07 19:11:49'),(47,'Quia dolorem harum sequi numquam voluptatem est aut.','103',13606,'1973-01-19','Layak Pakai','2022-09-07 19:11:49','2022-09-07 19:11:49'),(48,'Ducimus reprehenderit sint qui esse ut vitae consequatur rerum.','146',99922,'1982-06-03','Layak Pakai','2022-09-07 19:11:49','2022-09-07 19:11:49'),(49,'Et molestias rerum illum ut similique.','146',59882,'1973-04-10','Layak Pakai','2022-09-07 19:11:49','2022-09-07 19:11:49'),(50,'Suscipit deserunt ipsam repudiandae incidunt perspiciatis minima sit et.','56',66389,'1988-03-29','Layak Pakai','2022-09-07 19:11:50','2022-09-07 19:11:50'),(51,'Meja Guru edited','200',400000,'2022-09-05','Layak Pakai','2022-09-07 19:15:42','2022-09-07 19:26:38');
/*!40000 ALTER TABLE `inventaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karyawan`
--

DROP TABLE IF EXISTS `karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `karyawan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` int NOT NULL,
  `no_telp` bigint unsigned NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karyawan`
--

LOCK TABLES `karyawan` WRITE;
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kelas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'X MPLB','2022-09-07 19:11:50','2022-09-07 19:11:50'),(2,'X AKL','2022-09-07 19:11:51','2022-09-07 19:11:51'),(3,'X PPLG 1','2022-09-07 19:11:51','2022-09-07 19:11:51'),(4,'X PPLG 2','2022-09-07 19:11:51','2022-09-07 19:11:51'),(5,'XI AKL','2022-09-07 19:11:51','2022-09-07 19:11:51'),(6,'XI OTKP','2022-09-07 19:11:51','2022-09-07 19:11:51'),(7,'XI RPL 1','2022-09-07 19:11:52','2022-09-07 19:11:52'),(8,'XI RPL 2','2022-09-07 19:11:52','2022-09-07 19:11:52'),(9,'XII AKL','2022-09-07 19:11:52','2022-09-07 19:11:52'),(10,'XII OTKP','2022-09-07 19:11:52','2022-09-07 19:11:52'),(11,'XII RPL 1','2022-09-07 19:11:52','2022-09-07 19:11:52'),(12,'XII RPL 2','2022-09-07 19:11:53','2022-09-07 19:11:53');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_08_29_070621_create_siswa_table',1),(6,'2022_08_29_071033_create_guru_table',1),(7,'2022_08_29_071045_create_karyawan_table',1),(8,'2022_08_29_071056_create_inventaris_table',1),(9,'2022_08_29_071223_create_permission_tables',1),(10,'2022_09_04_070717_create_kelas_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
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
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siswa` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint unsigned NOT NULL,
  `nisn` int NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'Uli Maya Rahimah',12,8,'(+62) 464 5919 549','SMP Cinta Kasih Tzu Chi','Jr. Gardujati No. 11, Ambon 16345, Sumut','2022-09-07 19:10:46','2022-09-07 19:10:46'),(2,'Wirda Safitri',12,18,'(+62) 814 5391 357','SMP Cinta Kasih Tzu Chi','Gg. Fajar No. 815, Semarang 80730, Sumbar','2022-09-07 19:10:47','2022-09-07 19:10:47'),(3,'Elma Hastuti',6,794,'0245 2260 568','SMP Cinta Kasih Tzu Chi','Dk. Sam Ratulangi No. 143, Cimahi 23760, Kalteng','2022-09-07 19:10:47','2022-09-07 19:10:47'),(4,'Elisa Farida',11,31,'0746 0990 684','SMP Cinta Kasih Tzu Chi','Gg. Gardujati No. 619, Mojokerto 13430, Sumbar','2022-09-07 19:10:47','2022-09-07 19:10:47'),(5,'Hafshah Pertiwi',5,8,'0543 4874 538','SMP Cinta Kasih Tzu Chi','Jr. Sugiyopranoto No. 934, Magelang 55896, Sumsel','2022-09-07 19:10:47','2022-09-07 19:10:47'),(6,'Oliva Handayani',9,47,'(+62) 928 9717 044','SMP Cinta Kasih Tzu Chi','Dk. Untung Suropati No. 24, Bima 56706, NTB','2022-09-07 19:10:47','2022-09-07 19:10:47'),(7,'Prayogo Tirta Hutasoit S.Farm',3,497617,'(+62) 467 3583 288','SMP Cinta Kasih Tzu Chi','Jln. Merdeka No. 216, Bandung 51256, Sumsel','2022-09-07 19:10:48','2022-09-07 19:10:48'),(8,'Umay Hakim S.Psi',5,74999,'0617 4097 385','SMP Cinta Kasih Tzu Chi','Kpg. Rumah Sakit No. 681, Surabaya 35085, Jateng','2022-09-07 19:10:48','2022-09-07 19:10:48'),(9,'Qori Ami Farida M.M.',10,5,'026 3462 701','SMP Cinta Kasih Tzu Chi','Gg. Bakau Griya Utama No. 340, Administrasi Jakarta Timur 24740, Kalsel','2022-09-07 19:10:48','2022-09-07 19:10:48'),(10,'Gandi Irawan',4,93707470,'(+62) 718 9966 2104','SMP Cinta Kasih Tzu Chi','Dk. Gatot Subroto No. 694, Ambon 11915, NTT','2022-09-07 19:10:49','2022-09-07 19:10:49'),(11,'Jayeng Putra S.Sos',1,407292876,'(+62) 598 5603 989','SMP Cinta Kasih Tzu Chi','Jln. Baladewa No. 85, Cilegon 20786, Kalteng','2022-09-07 19:10:49','2022-09-07 19:10:49'),(12,'Ibrani Najmudin',12,4160583,'(+62) 979 0695 784','SMP Cinta Kasih Tzu Chi','Ds. Basoka No. 32, Sungai Penuh 25778, Papua','2022-09-07 19:10:49','2022-09-07 19:10:49'),(13,'Sari Agustina',5,54754,'0661 4788 430','SMP Cinta Kasih Tzu Chi','Gg. Kebangkitan Nasional No. 774, Palu 60899, Sultra','2022-09-07 19:10:49','2022-09-07 19:10:49'),(14,'Kania Laila Suartini S.E.I',4,85498,'0866 9287 598','SMP Cinta Kasih Tzu Chi','Ds. Wahid No. 96, Solok 44434, Bengkulu','2022-09-07 19:10:49','2022-09-07 19:10:49'),(15,'Indah Oktaviani',6,425454,'0572 5896 5127','SMP Cinta Kasih Tzu Chi','Psr. Rajawali Barat No. 749, Madiun 43296, Kalteng','2022-09-07 19:10:50','2022-09-07 19:10:50'),(16,'Emin Saputra',12,29324,'0986 9848 1523','SMP Cinta Kasih Tzu Chi','Jr. Jakarta No. 727, Bima 60280, Sumut','2022-09-07 19:10:50','2022-09-07 19:10:50'),(17,'Latif Alambana Pranowo M.TI.',6,681111,'(+62) 509 9109 128','SMP Cinta Kasih Tzu Chi','Gg. Gajah No. 386, Madiun 96346, Sulteng','2022-09-07 19:10:50','2022-09-07 19:10:50'),(18,'Rudi Siregar S.Psi',10,88959,'(+62) 29 9440 0706','SMP Cinta Kasih Tzu Chi','Jr. BKR No. 992, Metro 17904, Kaltara','2022-09-07 19:10:50','2022-09-07 19:10:50'),(19,'Ian Cahyanto Situmorang',1,846925,'0794 8360 3533','SMP Cinta Kasih Tzu Chi','Ki. Babakan No. 208, Pematangsiantar 48397, Bali','2022-09-07 19:10:51','2022-09-07 19:10:51'),(20,'Lamar Damanik',5,5,'0987 4754 488','SMP Cinta Kasih Tzu Chi','Kpg. Otista No. 82, Bogor 18865, Sumbar','2022-09-07 19:10:51','2022-09-07 19:10:51'),(21,'Mulya Pratama S.E.I',9,6766,'(+62) 604 9748 7177','SMP Cinta Kasih Tzu Chi','Jln. Setiabudhi No. 933, Singkawang 86220, Kalsel','2022-09-07 19:10:51','2022-09-07 19:10:51'),(22,'Puspa Prastuti S.I.Kom',1,7,'0348 4537 2876','SMP Cinta Kasih Tzu Chi','Kpg. Bakhita No. 188, Jayapura 25489, Sumsel','2022-09-07 19:10:51','2022-09-07 19:10:51'),(23,'Aisyah Lailasari S.E.',8,11112545,'0242 4358 3753','SMP Cinta Kasih Tzu Chi','Ki. Urip Sumoharjo No. 641, Solok 85879, Sultra','2022-09-07 19:10:52','2022-09-07 19:10:52'),(24,'Genta Rahmawati S.E.',11,68627,'(+62) 984 7871 529','SMP Cinta Kasih Tzu Chi','Dk. Siliwangi No. 921, Banjar 12471, Bali','2022-09-07 19:10:53','2022-09-07 19:10:53'),(25,'Prasetyo Hutagalung S.Gz',5,91512,'(+62) 894 0464 008','SMP Cinta Kasih Tzu Chi','Gg. Astana Anyar No. 861, Kotamobagu 36607, Banten','2022-09-07 19:10:54','2022-09-07 19:10:54'),(26,'Muhammad Harimurti Thamrin',10,589963,'0538 3783 209','SMP Cinta Kasih Tzu Chi','Jr. Qrisdoren No. 743, Samarinda 11510, DKI','2022-09-07 19:10:54','2022-09-07 19:10:54'),(27,'Jayadi Hakim M.Ak',2,58156,'(+62) 675 3310 0236','SMP Cinta Kasih Tzu Chi','Jr. Bakhita No. 561, Bau-Bau 55961, Babel','2022-09-07 19:10:54','2022-09-07 19:10:54'),(28,'Asmianto Jabal Iswahyudi',12,696470,'0281 9398 2703','SMP Cinta Kasih Tzu Chi','Jln. Panjaitan No. 661, Ternate 91264, NTT','2022-09-07 19:10:54','2022-09-07 19:10:54'),(29,'Darimin Lamar Wibisono',10,2,'0559 6006 282','SMP Cinta Kasih Tzu Chi','Ds. Rumah Sakit No. 447, Kupang 83087, Sumbar','2022-09-07 19:10:55','2022-09-07 19:10:55'),(30,'Queen Purnawati',2,70360,'0267 9466 124','SMP Cinta Kasih Tzu Chi','Jr. Sudiarto No. 186, Probolinggo 97003, Kalteng','2022-09-07 19:10:55','2022-09-07 19:10:55'),(31,'Sari Laksita',12,6,'0809 9277 9528','SMP Cinta Kasih Tzu Chi','Psr. Basket No. 778, Sibolga 86037, Papua','2022-09-07 19:10:55','2022-09-07 19:10:55'),(32,'Ilyas Siregar',3,6931,'(+62) 408 2534 323','SMP Cinta Kasih Tzu Chi','Ds. Ahmad Dahlan No. 982, Bandar Lampung 78303, Pabar','2022-09-07 19:10:56','2022-09-07 19:10:56'),(33,'Nasab Tasnim Prabowo M.Ak',4,506350954,'(+62) 816 6457 076','SMP Cinta Kasih Tzu Chi','Gg. Tambun No. 731, Bekasi 28668, Sultra','2022-09-07 19:10:56','2022-09-07 19:10:56'),(34,'Putri Mardhiyah',9,27,'(+62) 23 9145 5748','SMP Cinta Kasih Tzu Chi','Dk. Bayam No. 550, Tebing Tinggi 80152, Sumsel','2022-09-07 19:10:56','2022-09-07 19:10:56'),(35,'Hamima Paris Hasanah S.Gz',2,328304,'0879 0561 446','SMP Cinta Kasih Tzu Chi','Ki. Peta No. 542, Tidore Kepulauan 19982, Bengkulu','2022-09-07 19:10:56','2022-09-07 19:10:56'),(36,'Wasis Prayoga Samosir',10,713,'0825 9264 224','SMP Cinta Kasih Tzu Chi','Gg. Nanas No. 394, Pagar Alam 11257, Kaltim','2022-09-07 19:10:57','2022-09-07 19:10:57'),(37,'Kenari Saputra',10,79191507,'(+62) 918 9271 818','SMP Cinta Kasih Tzu Chi','Jr. Eka No. 885, Yogyakarta 75939, Jatim','2022-09-07 19:10:57','2022-09-07 19:10:57'),(38,'Talia Wahyuni',12,2106019,'(+62) 749 8932 157','SMP Cinta Kasih Tzu Chi','Ds. Wahid No. 229, Tasikmalaya 13244, Sulut','2022-09-07 19:10:57','2022-09-07 19:10:57'),(39,'Balijan Waskita',9,559541265,'(+62) 26 9201 667','SMP Cinta Kasih Tzu Chi','Jr. Sutarjo No. 47, Cirebon 80026, Sultra','2022-09-07 19:10:57','2022-09-07 19:10:57'),(40,'Daryani Wacana',1,2998,'0712 1360 667','SMP Cinta Kasih Tzu Chi','Kpg. Nangka No. 747, Bima 30906, Aceh','2022-09-07 19:10:57','2022-09-07 19:10:57'),(41,'Nadine Haryanti',10,84958292,'0218 2190 5137','SMP Cinta Kasih Tzu Chi','Ki. Gardujati No. 894, Pekanbaru 48745, DIY','2022-09-07 19:10:58','2022-09-07 19:10:58'),(42,'Vicky Laksita',3,0,'0818 9966 320','SMP Cinta Kasih Tzu Chi','Kpg. Bawal No. 213, Surakarta 62827, Sumbar','2022-09-07 19:10:59','2022-09-07 19:10:59'),(43,'Diana Ratna Winarsih S.Gz',8,24157364,'(+62) 21 9078 054','SMP Cinta Kasih Tzu Chi','Ki. Setia Budi No. 490, Sabang 39700, Bengkulu','2022-09-07 19:10:59','2022-09-07 19:10:59'),(44,'Taswir Maulana',9,59857,'(+62) 462 1863 3363','SMP Cinta Kasih Tzu Chi','Psr. Bakit  No. 238, Bau-Bau 43333, Kaltim','2022-09-07 19:10:59','2022-09-07 19:10:59'),(45,'Salimah Nurdiyanti',9,74953,'(+62) 833 099 518','SMP Cinta Kasih Tzu Chi','Dk. Laksamana No. 143, Padangsidempuan 55531, Bali','2022-09-07 19:10:59','2022-09-07 19:10:59'),(46,'Cayadi Haryanto S.Ked',7,93,'(+62) 329 9164 865','SMP Cinta Kasih Tzu Chi','Jln. Qrisdoren No. 352, Bima 70782, Bengkulu','2022-09-07 19:11:00','2022-09-07 19:11:00'),(47,'Ihsan Rendy Utama',5,664888620,'0861 7891 338','SMP Cinta Kasih Tzu Chi','Ds. Cut Nyak Dien No. 504, Tasikmalaya 44446, Maluku','2022-09-07 19:11:00','2022-09-07 19:11:00'),(48,'Ellis Diana Wulandari',7,5520700,'(+62) 350 4332 790','SMP Cinta Kasih Tzu Chi','Jln. Pasteur No. 518, Administrasi Jakarta Barat 98211, Riau','2022-09-07 19:11:01','2022-09-07 19:11:01'),(49,'Farah Uyainah',1,2815866,'0241 5369 105','SMP Cinta Kasih Tzu Chi','Psr. S. Parman No. 3, Sorong 42175, Gorontalo','2022-09-07 19:11:01','2022-09-07 19:11:01'),(50,'Vanya Rahmawati',9,9301894,'0243 1058 6528','SMP Cinta Kasih Tzu Chi','Ki. Umalas No. 255, Dumai 78844, Banten','2022-09-07 19:11:01','2022-09-07 19:11:01'),(51,'Wakiman Irawan',5,593,'(+62) 775 1639 969','SMP Cinta Kasih Tzu Chi','Ds. S. Parman No. 664, Dumai 25906, Kaltara','2022-09-07 19:11:02','2022-09-07 19:11:02'),(52,'Harsana Sihotang',4,77,'0856 9514 375','SMP Cinta Kasih Tzu Chi','Dk. Uluwatu No. 409, Surabaya 16213, Malut','2022-09-07 19:11:02','2022-09-07 19:11:02'),(53,'Kusuma Ardianto',3,5,'(+62) 247 6686 9424','SMP Cinta Kasih Tzu Chi','Ki. Moch. Toha No. 317, Sungai Penuh 39737, Jabar','2022-09-07 19:11:02','2022-09-07 19:11:02'),(54,'Iriana Farida',4,436,'0650 5068 986','SMP Cinta Kasih Tzu Chi','Jln. Supomo No. 299, Pangkal Pinang 88448, Sumbar','2022-09-07 19:11:02','2022-09-07 19:11:02'),(55,'Yuni Mandasari',5,644367,'(+62) 25 4329 1682','SMP Cinta Kasih Tzu Chi','Dk. Bakti No. 618, Pematangsiantar 76944, Banten','2022-09-07 19:11:03','2022-09-07 19:11:03'),(56,'Kemba Wasita',12,468864817,'0910 9497 1800','SMP Cinta Kasih Tzu Chi','Gg. Dipenogoro No. 889, Singkawang 82091, NTB','2022-09-07 19:11:03','2022-09-07 19:11:03'),(57,'Faizah Wani Pertiwi S.Pd',1,56713093,'(+62) 245 1815 718','SMP Cinta Kasih Tzu Chi','Jln. Achmad Yani No. 792, Padangpanjang 79284, Papua','2022-09-07 19:11:04','2022-09-07 19:11:04'),(58,'Luwes Kusumo',4,8,'0790 5188 7351','SMP Cinta Kasih Tzu Chi','Ds. Barasak No. 626, Jambi 25795, Sulut','2022-09-07 19:11:04','2022-09-07 19:11:04'),(59,'Hasan Januar',5,1608,'0818 0092 1285','SMP Cinta Kasih Tzu Chi','Ds. Pacuan Kuda No. 807, Binjai 32367, Sumsel','2022-09-07 19:11:04','2022-09-07 19:11:04'),(60,'Garang Bakiadi Kurniawan',10,474,'0569 2838 695','SMP Cinta Kasih Tzu Chi','Ki. Pelajar Pejuang 45 No. 884, Batam 78979, Pabar','2022-09-07 19:11:04','2022-09-07 19:11:04'),(61,'Hasta Ajimin Nugroho M.Kom.',9,636897014,'0825 4338 728','SMP Cinta Kasih Tzu Chi','Ki. Ciumbuleuit No. 361, Bitung 30839, Gorontalo','2022-09-07 19:11:04','2022-09-07 19:11:04'),(62,'Viman Damanik S.Kom',5,134227,'(+62) 21 2141 776','SMP Cinta Kasih Tzu Chi','Ki. Salak No. 283, Padangsidempuan 69674, Jatim','2022-09-07 19:11:05','2022-09-07 19:11:05'),(63,'Danang Danang Gunarto S.H.',9,29,'0991 0018 9034','SMP Cinta Kasih Tzu Chi','Dk. Cikutra Timur No. 704, Prabumulih 80745, Kaltara','2022-09-07 19:11:05','2022-09-07 19:11:05'),(64,'Rama Mustofa S.Gz',5,805002945,'(+62) 602 8770 9022','SMP Cinta Kasih Tzu Chi','Jr. Sampangan No. 567, Cimahi 16004, Riau','2022-09-07 19:11:06','2022-09-07 19:11:06'),(65,'Julia Silvia Mardhiyah',7,30,'(+62) 398 6536 2474','SMP Cinta Kasih Tzu Chi','Jln. Setiabudhi No. 160, Administrasi Jakarta Selatan 24411, Sulteng','2022-09-07 19:11:06','2022-09-07 19:11:06'),(66,'Lantar Mangunsong M.Farm',8,99008,'0698 4680 5705','SMP Cinta Kasih Tzu Chi','Ds. Baja No. 747, Bitung 35998, Jateng','2022-09-07 19:11:06','2022-09-07 19:11:06'),(67,'Galur Maulana S.Kom',7,143763,'(+62) 835 4559 3620','SMP Cinta Kasih Tzu Chi','Jln. Thamrin No. 119, Mojokerto 71981, Bali','2022-09-07 19:11:06','2022-09-07 19:11:06'),(68,'Mahesa Pranowo',8,1,'(+62) 219 6702 849','SMP Cinta Kasih Tzu Chi','Jr. Rajiman No. 23, Madiun 15835, Sulbar','2022-09-07 19:11:07','2022-09-07 19:11:07'),(69,'Warsita Budiyanto',1,631980,'(+62) 755 6165 7892','SMP Cinta Kasih Tzu Chi','Ki. Ikan No. 140, Jambi 55501, Kalsel','2022-09-07 19:11:07','2022-09-07 19:11:07'),(70,'Mutia Puspasari S.Pd',9,1156632,'0722 6574 0852','SMP Cinta Kasih Tzu Chi','Psr. Bawal No. 400, Langsa 91682, Malut','2022-09-07 19:11:07','2022-09-07 19:11:07'),(71,'Marsudi Situmorang',3,211,'(+62) 232 6618 9043','SMP Cinta Kasih Tzu Chi','Gg. Ters. Jakarta No. 481, Mojokerto 87742, Sulsel','2022-09-07 19:11:08','2022-09-07 19:11:08'),(72,'Halima Padma Rahayu S.Pd',10,85896495,'(+62) 356 2476 199','SMP Cinta Kasih Tzu Chi','Psr. Gotong Royong No. 819, Payakumbuh 24416, Kalteng','2022-09-07 19:11:08','2022-09-07 19:11:08'),(73,'Jamal Taswir Sitorus',4,2442543,'(+62) 873 555 418','SMP Cinta Kasih Tzu Chi','Kpg. Gedebage Selatan No. 273, Surakarta 50879, Bali','2022-09-07 19:11:08','2022-09-07 19:11:08'),(74,'Maimunah Nabila Mayasari S.Gz',10,43,'0889 3140 8980','SMP Cinta Kasih Tzu Chi','Jln. Cut Nyak Dien No. 519, Tebing Tinggi 48621, Sultra','2022-09-07 19:11:08','2022-09-07 19:11:08'),(75,'Lembah Winarno',4,87,'(+62) 21 9501 3129','SMP Cinta Kasih Tzu Chi','Ds. Astana Anyar No. 301, Batam 51041, Sultra','2022-09-07 19:11:08','2022-09-07 19:11:08'),(76,'Gawati Kuswandari',11,11,'0718 9568 7988','SMP Cinta Kasih Tzu Chi','Gg. Gegerkalong Hilir No. 424, Banjarbaru 59646, Sulut','2022-09-07 19:11:09','2022-09-07 19:11:09'),(77,'Clara Winarsih',1,905,'0840 293 391','SMP Cinta Kasih Tzu Chi','Jln. Bak Mandi No. 45, Pagar Alam 53749, Sultra','2022-09-07 19:11:09','2022-09-07 19:11:09'),(78,'Maida Safitri',12,81098,'(+62) 828 200 167','SMP Cinta Kasih Tzu Chi','Psr. Kalimalang No. 682, Surakarta 17398, Sumut','2022-09-07 19:11:09','2022-09-07 19:11:09'),(79,'Gangsar Prabowo',5,4524369,'0910 6671 5824','SMP Cinta Kasih Tzu Chi','Jln. Bagas Pati No. 774, Ambon 60584, Bengkulu','2022-09-07 19:11:09','2022-09-07 19:11:09'),(80,'Jayadi Mariadi Wibisono',4,878292572,'(+62) 227 6950 3771','SMP Cinta Kasih Tzu Chi','Gg. Rumah Sakit No. 799, Gunungsitoli 31067, Kepri','2022-09-07 19:11:10','2022-09-07 19:11:10'),(81,'Zelaya Pia Yuliarti M.Kom.',4,2790094,'(+62) 979 4313 0741','SMP Cinta Kasih Tzu Chi','Kpg. Tambak No. 350, Pagar Alam 89004, Bali','2022-09-07 19:11:10','2022-09-07 19:11:10'),(82,'Natalia Purnawati S.Ked',7,118719,'(+62) 29 6304 5595','SMP Cinta Kasih Tzu Chi','Jr. Ters. Pasir Koja No. 301, Batam 39145, Aceh','2022-09-07 19:11:10','2022-09-07 19:11:10'),(83,'Eka Puspita',4,899046,'0447 8903 8857','SMP Cinta Kasih Tzu Chi','Ki. Tambak No. 958, Tegal 26719, Jabar','2022-09-07 19:11:10','2022-09-07 19:11:10'),(84,'Emil Sinaga',9,0,'(+62) 221 7786 7427','SMP Cinta Kasih Tzu Chi','Ds. Baladewa No. 806, Tanjung Pinang 16816, Pabar','2022-09-07 19:11:10','2022-09-07 19:11:10'),(85,'Eva Wulandari',6,309,'026 9080 3587','SMP Cinta Kasih Tzu Chi','Gg. Gambang No. 494, Mataram 24405, Papua','2022-09-07 19:11:11','2022-09-07 19:11:11'),(86,'Iriana Gasti Puspita M.Pd',3,0,'0779 9718 918','SMP Cinta Kasih Tzu Chi','Psr. Setia Budi No. 498, Pagar Alam 48333, Babel','2022-09-07 19:11:11','2022-09-07 19:11:11'),(87,'Clara Puspasari',6,159,'0942 6913 237','SMP Cinta Kasih Tzu Chi','Gg. Bayan No. 738, Salatiga 49816, Babel','2022-09-07 19:11:11','2022-09-07 19:11:11'),(88,'Kamila Puspita',5,6,'(+62) 918 1276 0387','SMP Cinta Kasih Tzu Chi','Ds. Ters. Buah Batu No. 19, Tanjung Pinang 98737, Maluku','2022-09-07 19:11:11','2022-09-07 19:11:11'),(89,'Adhiarja Aslijan Wijaya',3,17917,'0669 7219 5591','SMP Cinta Kasih Tzu Chi','Kpg. Babadan No. 526, Denpasar 15082, Maluku','2022-09-07 19:11:12','2022-09-07 19:11:12'),(90,'Halima Sudiati',5,8533514,'0462 2274 710','SMP Cinta Kasih Tzu Chi','Ki. Monginsidi No. 810, Madiun 79180, Maluku','2022-09-07 19:11:12','2022-09-07 19:11:12'),(91,'Saiful Candra Wasita M.Kom.',12,592685320,'(+62) 26 5817 3839','SMP Cinta Kasih Tzu Chi','Jr. Bak Mandi No. 128, Pasuruan 56262, Sulbar','2022-09-07 19:11:12','2022-09-07 19:11:12'),(92,'Nasrullah Prasetyo',4,3702949,'(+62) 23 3198 1264','SMP Cinta Kasih Tzu Chi','Gg. Abdul. Muis No. 974, Jambi 61288, Jambi','2022-09-07 19:11:13','2022-09-07 19:11:13'),(93,'Caraka Habibi',6,5885822,'0628 8591 1888','SMP Cinta Kasih Tzu Chi','Jr. Bagis Utama No. 753, Tanjung Pinang 65229, Sultra','2022-09-07 19:11:13','2022-09-07 19:11:13'),(94,'Bagas Maheswara',4,5,'(+62) 553 1964 1411','SMP Cinta Kasih Tzu Chi','Jr. Yohanes No. 749, Pekanbaru 16948, Kalbar','2022-09-07 19:11:13','2022-09-07 19:11:13'),(95,'Kamaria Halimah',7,50,'0859 9083 237','SMP Cinta Kasih Tzu Chi','Dk. Gotong Royong No. 691, Padang 11096, Kaltim','2022-09-07 19:11:14','2022-09-07 19:11:14'),(96,'Darmana Situmorang',1,4,'0873 101 245','SMP Cinta Kasih Tzu Chi','Gg. Cikutra Timur No. 618, Bontang 56572, Lampung','2022-09-07 19:11:14','2022-09-07 19:11:14'),(97,'Salsabila Wastuti',7,3,'0540 9886 204','SMP Cinta Kasih Tzu Chi','Jr. Otista No. 219, Kendari 96839, Malut','2022-09-07 19:11:15','2022-09-07 19:11:15'),(98,'Wasis Situmorang S.E.I',5,866,'(+62) 516 0887 048','SMP Cinta Kasih Tzu Chi','Jln. Dr. Junjunan No. 214, Gorontalo 88723, Riau','2022-09-07 19:11:15','2022-09-07 19:11:15'),(99,'Paulin Usamah',6,85083,'0687 7721 350','SMP Cinta Kasih Tzu Chi','Dk. Bakti No. 6, Kediri 42965, Kepri','2022-09-07 19:11:15','2022-09-07 19:11:15'),(100,'Lintang Septi Utami M.Ak',11,466717,'0886 998 108','SMP Cinta Kasih Tzu Chi','Kpg. S. Parman No. 551, Kotamobagu 43319, Sumsel','2022-09-07 19:11:15','2022-09-07 19:11:15');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Henry Salim','henry@email.tes','$2y$10$pyyQm3BXZml.Fjh4KXmeLu3l0QW262aDXDx.T3YzND6JLzVR4hlxu','dHbsfCHzUAvz9bIu1vZIRDtp9dOJlEsDNN6ayIsVQTvKYiditJjmmdJmZilL','2022-09-07 19:11:53','2022-09-07 19:11:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-09  7:21:40
