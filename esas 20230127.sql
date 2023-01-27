-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 07:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esas`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakdown`
--

CREATE TABLE `breakdown` (
  `id` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `usage_size` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `cust_id` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `breakdown`
--

INSERT INTO `breakdown` (`id`, `unit`, `usage_size`, `month`, `year`, `cust_id`) VALUES
(1194, '0-ES Migration', 16710, '12', '2022', 'mp'),
(1195, '0-Music Library CSD', 2916, '12', '2022', 'mp'),
(1196, '1-Primeworks Distribution', 433, '12', '2022', 'mp'),
(1197, '1-PWS Advertiser Content', 21899, '12', '2022', 'mp'),
(1198, '1-PWS Distr Jum 30', 13, '12', '2022', 'mp'),
(1199, '1-TVN Chinese', 0, '12', '2022', 'mp'),
(1200, '1-TVN Entertainment 1', 0, '12', '2022', 'mp'),
(1201, '1-TVN Factual', 994, '12', '2022', 'mp'),
(1202, '2-Cretive Service Dept.', 18217, '12', '2022', 'mp'),
(1203, '3-Media Prima Digital', 4, '12', '2022', 'mp'),
(1204, 'Content&Creative Dept', 0, '12', '2022', 'mp'),
(1205, 'CSD RAW', 0, '12', '2022', 'mp'),
(1206, 'DidikTV (Aktif)', 6069, '12', '2022', 'mp'),
(1207, 'DIDIKTV B.BERUNIFORM', 187, '12', '2022', 'mp'),
(1208, 'DIDIKTV BERSAMA IKON', 265, '12', '2022', 'mp'),
(1209, 'DIDIKTV KELAB & PERSATUAN', 3480, '12', '2022', 'mp'),
(1210, 'DIDIKTV KESENIAN', 241, '12', '2022', 'mp'),
(1211, 'DIDIKTV PROG. PEM. GURU', 0, '12', '2022', 'mp'),
(1212, 'DidikTV Re Edit 2021', 0, '12', '2022', 'mp'),
(1213, 'DIDIKTV SEMBANG AKTIF', 0, '12', '2022', 'mp'),
(1214, 'DIDIKTV SUKAN', 438, '12', '2022', 'mp'),
(1215, 'MPTVN DIDIK TV KURIKULUM', 8595, '12', '2022', 'mp'),
(1216, 'OBTV', 0, '12', '2022', 'mp'),
(1217, 'PWS ENT2 ABPBH 30 2017', 1614, '12', '2022', 'mp'),
(1218, 'PWS ENT2 JJBR  2017', 53, '12', '2022', 'mp'),
(1219, 'PWS ENT3 ENEWS FEED', 6959, '12', '2022', 'mp'),
(1220, 'PWS ENT3 ENEWS PGM', 0, '12', '2022', 'mp'),
(1221, 'TVN BR. CONTENT LAZADA TV', 0, '12', '2022', 'mp'),
(1222, 'TVN CE FSS 2022', 16271, '12', '2022', 'mp'),
(1223, 'TVN CH 8ENEWS', 39030, '12', '2022', 'mp'),
(1224, 'TVN CH HO CHAK', 4187, '12', '2022', 'mp'),
(1225, 'TVN CH LIVING DELGHT', 12353, '12', '2022', 'mp'),
(1226, 'TVN CH NEW JRNY S8', 2674, '12', '2022', 'mp'),
(1227, 'TVN DAPUR TEMPUR 2022', 0, '12', '2022', 'mp'),
(1228, 'TVN DIDIKTV AKTIF & KOKO', 9065, '12', '2022', 'mp'),
(1229, 'TVN ENT 5R5R 2021', 204, '12', '2022', 'mp'),
(1230, 'TVN ENT A.N.M.N 2021', 36, '12', '2022', 'mp'),
(1231, 'TVN ENT DETIK 12 MLM `22 ', 189, '12', '2022', 'mp'),
(1232, 'TVN ENT DIARI DADDY 2022', 111, '12', '2022', 'mp'),
(1233, 'TVN ENT Helo Doktor 2022', 381, '12', '2022', 'mp'),
(1234, 'TVN ENT IDOLA KECIL 2021', 340, '12', '2022', 'mp'),
(1235, 'TVN ENT JJCM RAMADAN 2022', 296, '12', '2022', 'mp'),
(1236, 'TVN ENT JJMA 2022', 1290, '12', '2022', 'mp'),
(1237, 'TVN ENT MM36 2021', 632, '12', '2022', 'mp'),
(1238, 'TVN ENT VOKAL MANIA S1 20', 489, '12', '2022', 'mp'),
(1239, 'TVN ENT1 DAPUR KONGSI `19', 943, '12', '2022', 'mp'),
(1240, 'TVN ENT1 JJCM 2020', 542, '12', '2022', 'mp'),
(1241, 'TVN ENT1 SNG TRHBR 2020', 7590, '12', '2022', 'mp'),
(1242, 'TVN ENT2 MELODI 2017', 2478, '12', '2022', 'mp'),
(1243, 'TVN ENT2 SEMBANG SAHUR 17', 58, '12', '2022', 'mp'),
(1244, 'TVN FACDOC JJK RSL 2017', 0, '12', '2022', 'mp'),
(1245, 'TVN FACDOC M3 2017', 2906, '12', '2022', 'mp'),
(1246, 'TVN FACTUAL BERSAMAMU `18', 1594, '12', '2022', 'mp'),
(1247, 'TVN FACTUAL BK 2020', 69, '12', '2022', 'mp'),
(1248, 'TVN FACTUAL JOM BBKA 2020', 372, '12', '2022', 'mp'),
(1249, 'TVN FACTUAL MHI 2022', 0, '12', '2022', 'mp'),
(1250, 'TVN FACTUAL NONA 2020', 3920, '12', '2022', 'mp'),
(1251, 'TVN FACTUAL WHI 2020', 75, '12', '2022', 'mp'),
(1252, 'TVN FCTL BREAKOUT@DDK S1', 1035, '12', '2022', 'mp'),
(1253, 'TVN FCTL BRKFST@9PM S1', 1786, '12', '2022', 'mp'),
(1254, 'TVN FCTL JALUR GMLG 2021', 0, '12', '2022', 'mp'),
(1255, 'TVN FCTL JJK RASUL 2021', 0, '12', '2022', 'mp'),
(1256, 'TVN FCTL JURNAL RESIPI S1', 477, '12', '2022', 'mp'),
(1257, 'TVN FCTL KUIZ PACAK 2021', 1518, '12', '2022', 'mp'),
(1258, 'TVN FCTL M.CINTA `20', 1304, '12', '2022', 'mp'),
(1259, 'TVN FCTL MASAK APA TU 21', 115, '12', '2022', 'mp'),
(1260, 'TVN FCTL MSK APA TU 2020', 2089, '12', '2022', 'mp'),
(1261, 'TVN FCTL SOAL DRAMA S1', 117, '12', '2022', 'mp'),
(1262, 'TVN FCTL T.O.P S1', 682, '12', '2022', 'mp'),
(1263, 'TVN FCTL: DIDIKTV RTS', 5025, '12', '2022', 'mp'),
(1264, 'TVN ISLAMIC ADUAN JIWA', 208, '12', '2022', 'mp'),
(1265, 'TVN ISLAMIC S. VIRAL 2022', 0, '12', '2022', 'mp'),
(1266, 'TVN Islamic T.Ustaz 2022', 543, '12', '2022', 'mp'),
(1267, 'TVN MAGAZINE MAKAN VIRAL', 29, '12', '2022', 'mp'),
(1268, 'TVN MAGAZINE TURUN PADANG', 93, '12', '2022', 'mp'),
(1269, 'TVN MHI 2021', 2062, '12', '2022', 'mp'),
(1270, 'TVN MUSIC LIBRARY 2019', 13101, '12', '2022', 'mp'),
(1271, 'TVNFACTUALSUARAKNSMR19 ', 0, '12', '2022', 'mp'),
(1272, '0-ES Migration', 16710, '02', '2023', 'mp'),
(1273, '0-Music Library CSD', 2916, '02', '2023', 'mp'),
(1274, '1-Primeworks Distribution', 433, '02', '2023', 'mp'),
(1275, '1-PWS Advertiser Content', 21899, '02', '2023', 'mp'),
(1276, '1-PWS Distr Jum 30', 13, '02', '2023', 'mp'),
(1277, '1-TVN Chinese', 0, '02', '2023', 'mp'),
(1278, '1-TVN Entertainment 1', 0, '02', '2023', 'mp'),
(1279, '1-TVN Factual', 994, '02', '2023', 'mp'),
(1280, '2-Cretive Service Dept.', 18217, '02', '2023', 'mp'),
(1281, '3-Media Prima Digital', 4, '02', '2023', 'mp'),
(1282, 'Content&Creative Dept', 0, '02', '2023', 'mp'),
(1283, 'CSD RAW', 0, '02', '2023', 'mp'),
(1284, 'DidikTV (Aktif)', 6069, '02', '2023', 'mp'),
(1285, 'DIDIKTV B.BERUNIFORM', 187, '02', '2023', 'mp'),
(1286, 'DIDIKTV BERSAMA IKON', 265, '02', '2023', 'mp'),
(1287, 'DIDIKTV KELAB & PERSATUAN', 3480, '02', '2023', 'mp'),
(1288, 'DIDIKTV KESENIAN', 241, '02', '2023', 'mp'),
(1289, 'DIDIKTV PROG. PEM. GURU', 0, '02', '2023', 'mp'),
(1290, 'DidikTV Re Edit 2021', 0, '02', '2023', 'mp'),
(1291, 'DIDIKTV SEMBANG AKTIF', 0, '02', '2023', 'mp'),
(1292, 'DIDIKTV SUKAN', 438, '02', '2023', 'mp'),
(1293, 'MPTVN DIDIK TV KURIKULUM', 8595, '02', '2023', 'mp'),
(1294, 'OBTV', 0, '02', '2023', 'mp'),
(1295, 'PWS ENT2 ABPBH 30 2017', 1614, '02', '2023', 'mp'),
(1296, 'PWS ENT2 JJBR  2017', 53, '02', '2023', 'mp'),
(1297, 'PWS ENT3 ENEWS FEED', 6959, '02', '2023', 'mp'),
(1298, 'PWS ENT3 ENEWS PGM', 0, '02', '2023', 'mp'),
(1299, 'TVN BR. CONTENT LAZADA TV', 0, '02', '2023', 'mp'),
(1300, 'TVN CE FSS 2022', 16271, '02', '2023', 'mp'),
(1301, 'TVN CH 8ENEWS', 39030, '02', '2023', 'mp'),
(1302, 'TVN CH HO CHAK', 4187, '02', '2023', 'mp'),
(1303, 'TVN CH LIVING DELGHT', 12353, '02', '2023', 'mp'),
(1304, 'TVN CH NEW JRNY S8', 2674, '02', '2023', 'mp'),
(1305, 'TVN DAPUR TEMPUR 2022', 0, '02', '2023', 'mp'),
(1306, 'TVN DIDIKTV AKTIF & KOKO', 9065, '02', '2023', 'mp'),
(1307, 'TVN ENT 5R5R 2021', 204, '02', '2023', 'mp'),
(1308, 'TVN ENT A.N.M.N 2021', 36, '02', '2023', 'mp'),
(1309, 'TVN ENT DETIK 12 MLM `22 ', 189, '02', '2023', 'mp'),
(1310, 'TVN ENT DIARI DADDY 2022', 111, '02', '2023', 'mp'),
(1311, 'TVN ENT Helo Doktor 2022', 381, '02', '2023', 'mp'),
(1312, 'TVN ENT IDOLA KECIL 2021', 340, '02', '2023', 'mp'),
(1313, 'TVN ENT JJCM RAMADAN 2022', 296, '02', '2023', 'mp'),
(1314, 'TVN ENT JJMA 2022', 1290, '02', '2023', 'mp'),
(1315, 'TVN ENT MM36 2021', 632, '02', '2023', 'mp'),
(1316, 'TVN ENT VOKAL MANIA S1 20', 489, '02', '2023', 'mp'),
(1317, 'TVN ENT1 DAPUR KONGSI `19', 943, '02', '2023', 'mp'),
(1318, 'TVN ENT1 JJCM 2020', 542, '02', '2023', 'mp'),
(1319, 'TVN ENT1 SNG TRHBR 2020', 7590, '02', '2023', 'mp'),
(1320, 'TVN ENT2 MELODI 2017', 2478, '02', '2023', 'mp'),
(1321, 'TVN ENT2 SEMBANG SAHUR 17', 58, '02', '2023', 'mp'),
(1322, 'TVN FACDOC JJK RSL 2017', 0, '02', '2023', 'mp'),
(1323, 'TVN FACDOC M3 2017', 2906, '02', '2023', 'mp'),
(1324, 'TVN FACTUAL BERSAMAMU `18', 1594, '02', '2023', 'mp'),
(1325, 'TVN FACTUAL BK 2020', 69, '02', '2023', 'mp'),
(1326, 'TVN FACTUAL JOM BBKA 2020', 372, '02', '2023', 'mp'),
(1327, 'TVN FACTUAL MHI 2022', 0, '02', '2023', 'mp'),
(1328, 'TVN FACTUAL NONA 2020', 3920, '02', '2023', 'mp'),
(1329, 'TVN FACTUAL WHI 2020', 75, '02', '2023', 'mp'),
(1330, 'TVN FCTL BREAKOUT@DDK S1', 1035, '02', '2023', 'mp'),
(1331, 'TVN FCTL BRKFST@9PM S1', 1786, '02', '2023', 'mp'),
(1332, 'TVN FCTL JALUR GMLG 2021', 0, '02', '2023', 'mp'),
(1333, 'TVN FCTL JJK RASUL 2021', 0, '02', '2023', 'mp'),
(1334, 'TVN FCTL JURNAL RESIPI S1', 477, '02', '2023', 'mp'),
(1335, 'TVN FCTL KUIZ PACAK 2021', 1518, '02', '2023', 'mp'),
(1336, 'TVN FCTL M.CINTA `20', 1304, '02', '2023', 'mp'),
(1337, 'TVN FCTL MASAK APA TU 21', 115, '02', '2023', 'mp'),
(1338, 'TVN FCTL MSK APA TU 2020', 2089, '02', '2023', 'mp'),
(1339, 'TVN FCTL SOAL DRAMA S1', 117, '02', '2023', 'mp'),
(1340, 'TVN FCTL T.O.P S1', 682, '02', '2023', 'mp'),
(1341, 'TVN FCTL: DIDIKTV RTS', 5025, '02', '2023', 'mp'),
(1342, 'TVN ISLAMIC ADUAN JIWA', 208, '02', '2023', 'mp'),
(1343, 'TVN ISLAMIC S. VIRAL 2022', 0, '02', '2023', 'mp'),
(1344, 'TVN Islamic T.Ustaz 2022', 543, '02', '2023', 'mp'),
(1345, 'TVN MAGAZINE MAKAN VIRAL', 29, '02', '2023', 'mp'),
(1346, 'TVN MAGAZINE TURUN PADANG', 93, '02', '2023', 'mp'),
(1347, 'TVN MHI 2021', 2062, '02', '2023', 'mp'),
(1348, 'TVN MUSIC LIBRARY 2019', 13101, '02', '2023', 'mp'),
(1349, 'TVNFACTUALSUARAKNSMR19 ', 0, '02', '2023', 'mp');

-- --------------------------------------------------------

--
-- Table structure for table `business_unit`
--

CREATE TABLE `business_unit` (
  `id` int(11) NOT NULL,
  `business_unit_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `business_unit_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `business_unit_desc` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `business_unit_size` int(99) NOT NULL,
  `business_unit_month` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `business_unit_year` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `folder_id` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `cust_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `cust_description` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `cust_name`, `cust_description`) VALUES
(1, 'mp', 'Media Prima', 'Media Primas'),
(2, 'jpj', 'JPJ', 'JPJ MY'),
(3, 'ipptar', 'IPPTAR', 'IPPTAR');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dept_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dept_desc` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `cust_id` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_id`, `dept_name`, `dept_desc`, `cust_id`) VALUES
(1, 'mp_arch', 'Archive', 'Media Prima Archive', 'mp'),
(2, 'mp_eng', 'Engineering', 'Media Prima Engineering', 'mp'),
(3, 'mp_news', 'News', 'Media Prima News', 'mp'),
(4, 'mp_prod', 'Production', 'Media Prima Production', 'mp'),
(9, 'jpj_prod', 'Production', '', 'jpj'),
(10, 'jpj_arch', 'Archive', '', 'jpj');

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `folder_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `folder_directory` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `folder_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `folder_desc` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dept_id` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id`, `folder_id`, `folder_directory`, `folder_name`, `folder_desc`, `dept_id`) VALUES
(12, 'mp_daletdpshare/rsu', '/ifs/Dalet/DPSHARE/RSU', 'Dalet DPSHARE/RSU', 'Dalet DPSHARE/RSU', 'mp_arch'),
(13, 'mp_daletdpshare/lsu', '/ifs/Dalet/DPSHARE/LSU', 'Dalet DPSHARE/LSU', 'Dalet DPSHARE/LSU', 'mp_arch'),
(14, 'mp_daletdpshare/esu', '/ifs/Dalet/DPSHARE/ESU', 'Dalet DPSHARE/ESU', 'Dalet DPSHARE/ESU', 'mp_arch'),
(15, 'mp_daletmediaprimashare', '/ifs/Dalet/MediaPrimaShare', 'Dalet MediaPrimaShare', 'Dalet MediaPrimaShare', 'mp_arch'),
(18, 'mp_rc_transit', '/ifs/RC_Transit', 'RC_Transit', 'RC_Transit', 'mp_arch'),
(19, 'mp_nrcs', '/ifs/NRCS', 'NRCS', 'NRCS', 'mp_news'),
(21, 'mp_asperadata', '/ifs/AsperaData', 'AsperaData', 'AsperaData', 'mp_eng'),
(23, 'mp_pwd_clean_version', '/ifs/PWD_Clean_Version', 'PWD_Clean_Version', 'PWD_Clean_Version', 'mp_prod'),
(25, 'mp_pe_transit_folder', '/ifs/PE_Transit_Folder', 'PE_Transit_Folder', 'PE_Transit_Folder', 'mp_arch'),
(26, 'mp_mxfserver', '/ifs/MXFSERVER', 'MXFSERVER', 'MXFSERVER', 'mp_prod'),
(32, 'mp_ims', '/ifs/IMS', 'IMS', 'IMS', 'mp_eng'),
(33, 'mp_data-mxfserver', '/ifs/data/MXFSERVER', 'MXFSERVER', 'data-MXFSERVER', 'mp_prod');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `cust_id`, `price`) VALUES
(1, 'mp', '0.0280'),
(2, 'jpj', '0.3000'),
(3, 'ipptar', '2400.0000');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `folder_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `usage_size` decimal(65,0) NOT NULL,
  `month` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `year` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `price_per_gb` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `file_hash` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `folder_dir` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `dir_count` decimal(65,0) NOT NULL,
  `file_count` decimal(65,0) NOT NULL,
  `ads_count` decimal(65,0) NOT NULL,
  `other_count` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `folder_id`, `usage_size`, `month`, `year`, `price_per_gb`, `file_hash`, `file_name`, `folder_dir`, `dir_count`, `file_count`, `ads_count`, `other_count`) VALUES
(248, 'mp_mxfserver', '1267456150231510', '08', '2022', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3', '', NULL, '0', '0', '0', '0'),
(249, 'mp_asperadata', '40408576', '08', '2022', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3', '', NULL, '0', '0', '0', '0'),
(250, 'mp_ims', '1536', '08', '2022', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3', '', NULL, '0', '0', '0', '0'),
(251, 'mp_daletmediaprimashare', '72521694793216', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(252, 'mp_daletdpshare/rsu', '4994084682939380', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(253, 'mp_daletdpshare/lsu', '1339095811327480', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(254, 'mp_daletdpshare/esu', '552694689076736', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(255, 'mp_nrcs', '504892803649536', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(256, 'mp_asperadata', '225176167751680', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(257, 'mp_ims', '22213242750976', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(258, 'mp_pwd_clean_version', '8998023922176', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(259, 'mp_rc_transit', '1037016247296', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(260, 'mp_pe_transit_folder', '139052598272', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d', '', NULL, '0', '0', '0', '0'),
(270, 'mp_mxfserver', '1444652121122840', '09', '2022', '0.0280', 'e284c5a158e56d31e65329c0f387391c8c780cb9', '', NULL, '0', '0', '0', '0'),
(271, 'mp_asperadata', '40408576', '09', '2022', '0.0280', 'e284c5a158e56d31e65329c0f387391c8c780cb9', '', NULL, '0', '0', '0', '0'),
(272, 'mp_ims', '1536', '09', '2022', '0.0280', 'e284c5a158e56d31e65329c0f387391c8c780cb9', '', NULL, '0', '0', '0', '0'),
(273, 'mp_daletdpshare/rsu', '5102471578366960', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(274, 'mp_daletdpshare/lsu', '1373577215858170', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(275, 'mp_daletmediaprimashare', '73526252590080', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(276, 'mp_daletdpshare/esu', '552694689265152', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(277, 'mp_nrcs', '513319011653632', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(278, 'mp_asperadata', '225476958595072', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(279, 'mp_ims', '25303588989952', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(280, 'mp_pwd_clean_version', '8998023922176', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(281, 'mp_rc_transit', '1050936826880', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(282, 'mp_pe_transit_folder', '139052172800', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93', '', NULL, '0', '0', '0', '0'),
(321, 'mp_mxfserver', '1371576251438310', '10', '2022', '0.0280', '689aa98e2dfd4e026586d27e52affc4b509eb19a', '', NULL, '0', '0', '0', '0'),
(322, 'mp_daletdpshare/rsu', '4991818369403900', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(323, 'mp_daletdpshare/lsu', '1398923564310010', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(324, 'mp_daletdpshare/esu', '552723110305280', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(325, 'mp_daletmediaprimashare', '78131510162944', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(326, 'mp_nrcs', '520548820334592', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(327, 'mp_asperadata', '219436938420224', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(328, 'mp_ims', '23986133468672', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(329, 'mp_pwd_clean_version', '8998023922176', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(330, 'mp_rc_transit', '1064677257728', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(331, 'mp_pe_transit_folder', '139051643904', '10', '2022', '0.0280', '69594f44074306f2adec94c27e243edfd15b6927', '', NULL, '0', '0', '0', '0'),
(332, 'mp_data-mxfserver', '1220000000000000', '11', '2022', '0.0280', 'd31dbcca6ef245b6f01e301c40350e515ff719ee', '', NULL, '0', '0', '0', '0'),
(333, 'mp_asperadata', '40408576', '11', '2022', '0.0280', 'd31dbcca6ef245b6f01e301c40350e515ff719ee', '', NULL, '0', '0', '0', '0'),
(334, 'mp_daletmediaprimashare', '80074200000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(335, 'mp_daletdpshare/rsu', '5010000000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(336, 'mp_daletdpshare/lsu', '1430000000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(337, 'mp_daletdpshare/esu', '553000000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(338, 'mp_nrcs', '528000000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(339, 'mp_asperadata', '232000000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(340, 'mp_ims', '24400000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(341, 'mp_pwd_clean_version', '9000000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(342, 'mp_rc_transit', '1660000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(343, 'mp_pe_transit_folder', '139000000000', '11', '2022', '0.0280', 'c9ad06c36a76f730317082046863a6c9ecca9391', '', NULL, '0', '0', '0', '0'),
(357, 'mp_data-mxfserver', '1170000000000000', '12', '2022', '0.0280', '369371c984acd87bbb2872d833ad0f908a01986a', '', NULL, '0', '0', '0', '0'),
(358, 'mp_asperadata', '40408576', '12', '2022', '0.0280', '369371c984acd87bbb2872d833ad0f908a01986a', '', NULL, '0', '0', '0', '0'),
(359, 'mp_ims', '1536', '12', '2022', '0.0280', '369371c984acd87bbb2872d833ad0f908a01986a', '', NULL, '0', '0', '0', '0'),
(360, 'mp_daletdpshare/rsu', '5130000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(361, 'mp_daletdpshare/lsu', '1460000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(362, 'mp_daletdpshare/esu', '553000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(363, 'mp_daletmediaprimashare', '74000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(364, 'mp_nrcs', '534000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(365, 'mp_asperadata', '260000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(366, 'mp_ims', '22600000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(367, 'mp_pwd_clean_version', '9000000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(368, 'mp_rc_transit', '1680000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(369, 'mp_pe_transit_folder', '139000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_role`, `email`, `fullname`) VALUES
(6, 'user_2', '$2y$10$IYb2pcsaGpMEHPC1j2.q9u8Lr73R2IfTpgg1K4yguSP7gjtvrCHmK', 'user', 'user_2@esas.com', 'User Dua'),
(8, 'user_1', '$2y$10$qtndqB/scJA/Hv3qUtiDg.Y/QVlxXXNuxmKpP5Rxmr3M8clBFPPty', 'admin', 'user_1@esas.com', 'User Satu'),
(12, 'admin_esas', '$2y$10$Vi8ZSh1IhQv5mBQWKW7hjOH/FxMgDy43sYKs6Qwx.jTMBPhCjzGZe', 'admin', 'admin@esas.com', 'Admin Esas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakdown`
--
ALTER TABLE `breakdown`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `business_unit`
--
ALTER TABLE `business_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakdown`
--
ALTER TABLE `breakdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1350;

--
-- AUTO_INCREMENT for table `business_unit`
--
ALTER TABLE `business_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
