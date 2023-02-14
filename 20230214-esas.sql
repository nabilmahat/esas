-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 05:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

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
(1349, 'TVNFACTUALSUARAKNSMR19 ', 0, '02', '2023', 'mp'),
(1350, '0-ES Migration', 16710, '01', '2023', 'mp'),
(1351, '0-Music Library CSD', 2916, '01', '2023', 'mp'),
(1352, '1-Primeworks Distribution', 433, '01', '2023', 'mp'),
(1353, '1-PWS Advertiser Content', 21937, '01', '2023', 'mp'),
(1354, '1-PWS Distr Jum 30', 13, '01', '2023', 'mp'),
(1355, '1-TVN Chinese', 0, '01', '2023', 'mp'),
(1356, '1-TVN Entertainment 1', 0, '01', '2023', 'mp'),
(1357, '1-TVN Factual', 994, '01', '2023', 'mp'),
(1358, '2-Cretive Service Dept.', 18392, '01', '2023', 'mp'),
(1359, '3-Media Prima Digital', 4, '01', '2023', 'mp'),
(1360, 'Content&Creative Dept', 0, '01', '2023', 'mp'),
(1361, 'CSD RAW', 0, '01', '2023', 'mp'),
(1362, 'DidikTV (Aktif)', 6069, '01', '2023', 'mp'),
(1363, 'DIDIKTV B.BERUNIFORM', 255, '01', '2023', 'mp'),
(1364, 'DIDIKTV BERSAMA IKON', 265, '01', '2023', 'mp'),
(1365, 'DIDIKTV KELAB & PERSATUAN', 3480, '01', '2023', 'mp'),
(1366, 'DIDIKTV KESENIAN', 680, '01', '2023', 'mp'),
(1367, 'DIDIKTV PROG. PEM. GURU', 0, '01', '2023', 'mp'),
(1368, 'DidikTV Re Edit 2021', 0, '01', '2023', 'mp'),
(1369, 'DIDIKTV SEMBANG AKTIF', 0, '01', '2023', 'mp'),
(1370, 'DIDIKTV SUKAN', 454, '01', '2023', 'mp'),
(1371, 'MPTVN DIDIK TV KURIKULUM', 9511, '01', '2023', 'mp'),
(1372, 'OBTV', 0, '01', '2023', 'mp'),
(1373, 'PWS ENT2 ABPBH 30 2017', 1632, '01', '2023', 'mp'),
(1374, 'PWS ENT2 JJBR  2017', 53, '01', '2023', 'mp'),
(1375, 'PWS ENT3 ENEWS FEED', 6959, '01', '2023', 'mp'),
(1376, 'PWS ENT3 ENEWS PGM', 0, '01', '2023', 'mp'),
(1377, 'TVN BR. CONTENT LAZADA TV', 0, '01', '2023', 'mp'),
(1378, 'TVN CE FSS 2022', 682, '01', '2023', 'mp'),
(1379, 'TVN CH 8ENEWS', 42189, '01', '2023', 'mp'),
(1380, 'TVN CH HO CHAK', 4545, '01', '2023', 'mp'),
(1381, 'TVN CH LIVING DELGHT', 13950, '01', '2023', 'mp'),
(1382, 'TVN CH NEW JRNY S8', 2674, '01', '2023', 'mp'),
(1383, 'TVN DAPUR TEMPUR 2022', 0, '01', '2023', 'mp'),
(1384, 'TVN DIDIKTV AKTIF & KOKO', 9065, '01', '2023', 'mp'),
(1385, 'TVN ENT 5R5R 2021', 204, '01', '2023', 'mp'),
(1386, 'TVN ENT A.N.M.N 2021', 36, '01', '2023', 'mp'),
(1387, 'TVN ENT DETIK 12 MLM `22 ', 265, '01', '2023', 'mp'),
(1388, 'TVN ENT DIARI DADDY 2022', 111, '01', '2023', 'mp'),
(1389, 'TVN ENT Helo Doktor 2022', 401, '01', '2023', 'mp'),
(1390, 'TVN ENT IDOLA KECIL 2021', 340, '01', '2023', 'mp'),
(1391, 'TVN ENT JJCM RAMADAN 2022', 323, '01', '2023', 'mp'),
(1392, 'TVN ENT JJMA 2022', 1337, '01', '2023', 'mp'),
(1393, 'TVN ENT MM36 2021', 632, '01', '2023', 'mp'),
(1394, 'TVN ENT VOKAL MANIA S1 20', 489, '01', '2023', 'mp'),
(1395, 'TVN ENT1 DAPUR KONGSI `19', 943, '01', '2023', 'mp'),
(1396, 'TVN ENT1 JJCM 2020', 542, '01', '2023', 'mp'),
(1397, 'TVN ENT1 SNG TRHBR 2020', 7590, '01', '2023', 'mp'),
(1398, 'TVN ENT2 MELODI 2017', 2478, '01', '2023', 'mp'),
(1399, 'TVN ENT2 SEMBANG SAHUR 17', 58, '01', '2023', 'mp'),
(1400, 'TVN FACDOC JJK RSL 2017', 0, '01', '2023', 'mp'),
(1401, 'TVN FACDOC M3 2017', 2994, '01', '2023', 'mp'),
(1402, 'TVN FACTUAL BERSAMAMU `18', 1633, '01', '2023', 'mp'),
(1403, 'TVN FACTUAL BK 2020', 69, '01', '2023', 'mp'),
(1404, 'TVN FACTUAL JOM BBKA 2020', 372, '01', '2023', 'mp'),
(1405, 'TVN FACTUAL MHI 2022', 0, '01', '2023', 'mp'),
(1406, 'TVN FACTUAL NONA 2020', 4054, '01', '2023', 'mp'),
(1407, 'TVN FACTUAL WHI 2020', 76, '01', '2023', 'mp'),
(1408, 'TVN FCTL BREAKOUT@DDK S1', 1035, '01', '2023', 'mp'),
(1409, 'TVN FCTL BRKFST@9PM S1', 1786, '01', '2023', 'mp'),
(1410, 'TVN FCTL JALUR GMLG 2021', 0, '01', '2023', 'mp'),
(1411, 'TVN FCTL JJK RASUL 2021', 0, '01', '2023', 'mp'),
(1412, 'TVN FCTL JURNAL RESIPI S1', 477, '01', '2023', 'mp'),
(1413, 'TVN FCTL KUIZ PACAK 2021', 1518, '01', '2023', 'mp'),
(1414, 'TVN FCTL M.CINTA `20', 1345, '01', '2023', 'mp'),
(1415, 'TVN FCTL MASAK APA TU 21', 115, '01', '2023', 'mp'),
(1416, 'TVN FCTL MSK APA TU 2020', 2089, '01', '2023', 'mp'),
(1417, 'TVN FCTL SOAL DRAMA S1', 117, '01', '2023', 'mp'),
(1418, 'TVN FCTL T.O.P S1', 682, '01', '2023', 'mp'),
(1419, 'TVN FCTL: DIDIKTV RTS', 5025, '01', '2023', 'mp'),
(1420, 'TVN ISLAMIC ADUAN JIWA', 208, '01', '2023', 'mp'),
(1421, 'TVN ISLAMIC S. VIRAL 2022', 0, '01', '2023', 'mp'),
(1422, 'TVN Islamic T.Ustaz 2022', 547, '01', '2023', 'mp'),
(1423, 'TVN MAGAZINE MAKAN VIRAL', 29, '01', '2023', 'mp'),
(1424, 'TVN MAGAZINE TURUN PADANG', 93, '01', '2023', 'mp'),
(1425, 'TVN MHI 2021', 2063, '01', '2023', 'mp'),
(1426, 'TVN MUSIC LIBRARY 2019', 13100, '01', '2023', 'mp'),
(1427, 'TVNFACTUALSUARAKNSMR19 ', 0, '01', '2023', 'mp'),
(1428, '0-ES Migration', 16710, '12', '2021', 'mp'),
(1429, '0-Music Library CSD', 2916, '12', '2021', 'mp'),
(1430, '1-Primeworks Distribution', 433, '12', '2021', 'mp'),
(1431, '1-PWS Advertiser Content', 21937, '12', '2021', 'mp'),
(1432, '1-PWS Distr Jum 30', 13, '12', '2021', 'mp'),
(1433, '1-TVN Chinese', 0, '12', '2021', 'mp'),
(1434, '1-TVN Entertainment 1', 0, '12', '2021', 'mp'),
(1435, '1-TVN Factual', 994, '12', '2021', 'mp'),
(1436, '2-Cretive Service Dept.', 18392, '12', '2021', 'mp'),
(1437, '3-Media Prima Digital', 4, '12', '2021', 'mp'),
(1438, 'Content&Creative Dept', 0, '12', '2021', 'mp'),
(1439, 'CSD RAW', 0, '12', '2021', 'mp'),
(1440, 'DidikTV (Aktif)', 6069, '12', '2021', 'mp'),
(1441, 'DIDIKTV B.BERUNIFORM', 255, '12', '2021', 'mp'),
(1442, 'DIDIKTV BERSAMA IKON', 265, '12', '2021', 'mp'),
(1443, 'DIDIKTV KELAB & PERSATUAN', 3480, '12', '2021', 'mp'),
(1444, 'DIDIKTV KESENIAN', 680, '12', '2021', 'mp'),
(1445, 'DIDIKTV PROG. PEM. GURU', 0, '12', '2021', 'mp'),
(1446, 'DidikTV Re Edit 2021', 0, '12', '2021', 'mp'),
(1447, 'DIDIKTV SEMBANG AKTIF', 0, '12', '2021', 'mp'),
(1448, 'DIDIKTV SUKAN', 454, '12', '2021', 'mp'),
(1449, 'MPTVN DIDIK TV KURIKULUM', 9511, '12', '2021', 'mp'),
(1450, 'OBTV', 0, '12', '2021', 'mp'),
(1451, 'PWS ENT2 ABPBH 30 2017', 1632, '12', '2021', 'mp'),
(1452, 'PWS ENT2 JJBR  2017', 53, '12', '2021', 'mp'),
(1453, 'PWS ENT3 ENEWS FEED', 6959, '12', '2021', 'mp'),
(1454, 'PWS ENT3 ENEWS PGM', 0, '12', '2021', 'mp'),
(1455, 'TVN BR. CONTENT LAZADA TV', 0, '12', '2021', 'mp'),
(1456, 'TVN CE FSS 2022', 682, '12', '2021', 'mp'),
(1457, 'TVN CH 8ENEWS', 42189, '12', '2021', 'mp'),
(1458, 'TVN CH HO CHAK', 4545, '12', '2021', 'mp'),
(1459, 'TVN CH LIVING DELGHT', 13950, '12', '2021', 'mp'),
(1460, 'TVN CH NEW JRNY S8', 2674, '12', '2021', 'mp'),
(1461, 'TVN DAPUR TEMPUR 2022', 0, '12', '2021', 'mp'),
(1462, 'TVN DIDIKTV AKTIF & KOKO', 9065, '12', '2021', 'mp'),
(1463, 'TVN ENT 5R5R 2021', 204, '12', '2021', 'mp'),
(1464, 'TVN ENT A.N.M.N 2021', 36, '12', '2021', 'mp'),
(1465, 'TVN ENT DETIK 12 MLM `22 ', 265, '12', '2021', 'mp'),
(1466, 'TVN ENT DIARI DADDY 2022', 111, '12', '2021', 'mp'),
(1467, 'TVN ENT Helo Doktor 2022', 401, '12', '2021', 'mp'),
(1468, 'TVN ENT IDOLA KECIL 2021', 340, '12', '2021', 'mp'),
(1469, 'TVN ENT JJCM RAMADAN 2022', 323, '12', '2021', 'mp'),
(1470, 'TVN ENT JJMA 2022', 1337, '12', '2021', 'mp'),
(1471, 'TVN ENT MM36 2021', 632, '12', '2021', 'mp'),
(1472, 'TVN ENT VOKAL MANIA S1 20', 489, '12', '2021', 'mp'),
(1473, 'TVN ENT1 DAPUR KONGSI `19', 943, '12', '2021', 'mp'),
(1474, 'TVN ENT1 JJCM 2020', 542, '12', '2021', 'mp'),
(1475, 'TVN ENT1 SNG TRHBR 2020', 7590, '12', '2021', 'mp'),
(1476, 'TVN ENT2 MELODI 2017', 2478, '12', '2021', 'mp'),
(1477, 'TVN ENT2 SEMBANG SAHUR 17', 58, '12', '2021', 'mp'),
(1478, 'TVN FACDOC JJK RSL 2017', 0, '12', '2021', 'mp'),
(1479, 'TVN FACDOC M3 2017', 2994, '12', '2021', 'mp'),
(1480, 'TVN FACTUAL BERSAMAMU `18', 1633, '12', '2021', 'mp'),
(1481, 'TVN FACTUAL BK 2020', 69, '12', '2021', 'mp'),
(1482, 'TVN FACTUAL JOM BBKA 2020', 372, '12', '2021', 'mp'),
(1483, 'TVN FACTUAL MHI 2022', 0, '12', '2021', 'mp'),
(1484, 'TVN FACTUAL NONA 2020', 4054, '12', '2021', 'mp'),
(1485, 'TVN FACTUAL WHI 2020', 76, '12', '2021', 'mp'),
(1486, 'TVN FCTL BREAKOUT@DDK S1', 1035, '12', '2021', 'mp'),
(1487, 'TVN FCTL BRKFST@9PM S1', 1786, '12', '2021', 'mp'),
(1488, 'TVN FCTL JALUR GMLG 2021', 0, '12', '2021', 'mp'),
(1489, 'TVN FCTL JJK RASUL 2021', 0, '12', '2021', 'mp'),
(1490, 'TVN FCTL JURNAL RESIPI S1', 477, '12', '2021', 'mp'),
(1491, 'TVN FCTL KUIZ PACAK 2021', 1518, '12', '2021', 'mp'),
(1492, 'TVN FCTL M.CINTA `20', 1345, '12', '2021', 'mp'),
(1493, 'TVN FCTL MASAK APA TU 21', 115, '12', '2021', 'mp'),
(1494, 'TVN FCTL MSK APA TU 2020', 2089, '12', '2021', 'mp'),
(1495, 'TVN FCTL SOAL DRAMA S1', 117, '12', '2021', 'mp'),
(1496, 'TVN FCTL T.O.P S1', 682, '12', '2021', 'mp'),
(1497, 'TVN FCTL: DIDIKTV RTS', 5025, '12', '2021', 'mp'),
(1498, 'TVN ISLAMIC ADUAN JIWA', 208, '12', '2021', 'mp'),
(1499, 'TVN ISLAMIC S. VIRAL 2022', 0, '12', '2021', 'mp'),
(1500, 'TVN Islamic T.Ustaz 2022', 547, '12', '2021', 'mp'),
(1501, 'TVN MAGAZINE MAKAN VIRAL', 29, '12', '2021', 'mp'),
(1502, 'TVN MAGAZINE TURUN PADANG', 93, '12', '2021', 'mp'),
(1503, 'TVN MHI 2021', 2063, '12', '2021', 'mp'),
(1504, 'TVN MUSIC LIBRARY 2019', 13100, '12', '2021', 'mp'),
(1505, 'TVNFACTUALSUARAKNSMR19 ', 0, '12', '2021', 'mp'),
(1506, '0-ES Migration', 16710, '01', '2022', 'mp'),
(1507, '0-Music Library CSD', 2916, '01', '2022', 'mp'),
(1508, '1-Primeworks Distribution', 433, '01', '2022', 'mp'),
(1509, '1-PWS Advertiser Content', 21937, '01', '2022', 'mp'),
(1510, '1-PWS Distr Jum 30', 13, '01', '2022', 'mp'),
(1511, '1-TVN Chinese', 0, '01', '2022', 'mp'),
(1512, '1-TVN Entertainment 1', 0, '01', '2022', 'mp'),
(1513, '1-TVN Factual', 994, '01', '2022', 'mp'),
(1514, '2-Cretive Service Dept.', 18392, '01', '2022', 'mp'),
(1515, '3-Media Prima Digital', 4, '01', '2022', 'mp'),
(1516, 'Content&Creative Dept', 0, '01', '2022', 'mp'),
(1517, 'CSD RAW', 0, '01', '2022', 'mp'),
(1518, 'DidikTV (Aktif)', 6069, '01', '2022', 'mp'),
(1519, 'DIDIKTV B.BERUNIFORM', 255, '01', '2022', 'mp'),
(1520, 'DIDIKTV BERSAMA IKON', 265, '01', '2022', 'mp'),
(1521, 'DIDIKTV KELAB & PERSATUAN', 3480, '01', '2022', 'mp'),
(1522, 'DIDIKTV KESENIAN', 680, '01', '2022', 'mp'),
(1523, 'DIDIKTV PROG. PEM. GURU', 0, '01', '2022', 'mp'),
(1524, 'DidikTV Re Edit 2021', 0, '01', '2022', 'mp'),
(1525, 'DIDIKTV SEMBANG AKTIF', 0, '01', '2022', 'mp'),
(1526, 'DIDIKTV SUKAN', 454, '01', '2022', 'mp'),
(1527, 'MPTVN DIDIK TV KURIKULUM', 9511, '01', '2022', 'mp'),
(1528, 'OBTV', 0, '01', '2022', 'mp'),
(1529, 'PWS ENT2 ABPBH 30 2017', 1632, '01', '2022', 'mp'),
(1530, 'PWS ENT2 JJBR  2017', 53, '01', '2022', 'mp'),
(1531, 'PWS ENT3 ENEWS FEED', 6959, '01', '2022', 'mp'),
(1532, 'PWS ENT3 ENEWS PGM', 0, '01', '2022', 'mp'),
(1533, 'TVN BR. CONTENT LAZADA TV', 0, '01', '2022', 'mp'),
(1534, 'TVN CE FSS 2022', 682, '01', '2022', 'mp'),
(1535, 'TVN CH 8ENEWS', 42189, '01', '2022', 'mp'),
(1536, 'TVN CH HO CHAK', 4545, '01', '2022', 'mp'),
(1537, 'TVN CH LIVING DELGHT', 13950, '01', '2022', 'mp'),
(1538, 'TVN CH NEW JRNY S8', 2674, '01', '2022', 'mp'),
(1539, 'TVN DAPUR TEMPUR 2022', 0, '01', '2022', 'mp'),
(1540, 'TVN DIDIKTV AKTIF & KOKO', 9065, '01', '2022', 'mp'),
(1541, 'TVN ENT 5R5R 2021', 204, '01', '2022', 'mp'),
(1542, 'TVN ENT A.N.M.N 2021', 36, '01', '2022', 'mp'),
(1543, 'TVN ENT DETIK 12 MLM `22 ', 265, '01', '2022', 'mp'),
(1544, 'TVN ENT DIARI DADDY 2022', 111, '01', '2022', 'mp'),
(1545, 'TVN ENT Helo Doktor 2022', 401, '01', '2022', 'mp'),
(1546, 'TVN ENT IDOLA KECIL 2021', 340, '01', '2022', 'mp'),
(1547, 'TVN ENT JJCM RAMADAN 2022', 323, '01', '2022', 'mp'),
(1548, 'TVN ENT JJMA 2022', 1337, '01', '2022', 'mp'),
(1549, 'TVN ENT MM36 2021', 632, '01', '2022', 'mp'),
(1550, 'TVN ENT VOKAL MANIA S1 20', 489, '01', '2022', 'mp'),
(1551, 'TVN ENT1 DAPUR KONGSI `19', 943, '01', '2022', 'mp'),
(1552, 'TVN ENT1 JJCM 2020', 542, '01', '2022', 'mp'),
(1553, 'TVN ENT1 SNG TRHBR 2020', 7590, '01', '2022', 'mp'),
(1554, 'TVN ENT2 MELODI 2017', 2478, '01', '2022', 'mp'),
(1555, 'TVN ENT2 SEMBANG SAHUR 17', 58, '01', '2022', 'mp'),
(1556, 'TVN FACDOC JJK RSL 2017', 0, '01', '2022', 'mp'),
(1557, 'TVN FACDOC M3 2017', 2994, '01', '2022', 'mp'),
(1558, 'TVN FACTUAL BERSAMAMU `18', 1633, '01', '2022', 'mp'),
(1559, 'TVN FACTUAL BK 2020', 69, '01', '2022', 'mp'),
(1560, 'TVN FACTUAL JOM BBKA 2020', 372, '01', '2022', 'mp'),
(1561, 'TVN FACTUAL MHI 2022', 0, '01', '2022', 'mp'),
(1562, 'TVN FACTUAL NONA 2020', 4054, '01', '2022', 'mp'),
(1563, 'TVN FACTUAL WHI 2020', 76, '01', '2022', 'mp'),
(1564, 'TVN FCTL BREAKOUT@DDK S1', 1035, '01', '2022', 'mp'),
(1565, 'TVN FCTL BRKFST@9PM S1', 1786, '01', '2022', 'mp'),
(1566, 'TVN FCTL JALUR GMLG 2021', 0, '01', '2022', 'mp'),
(1567, 'TVN FCTL JJK RASUL 2021', 0, '01', '2022', 'mp'),
(1568, 'TVN FCTL JURNAL RESIPI S1', 477, '01', '2022', 'mp'),
(1569, 'TVN FCTL KUIZ PACAK 2021', 1518, '01', '2022', 'mp'),
(1570, 'TVN FCTL M.CINTA `20', 1345, '01', '2022', 'mp'),
(1571, 'TVN FCTL MASAK APA TU 21', 115, '01', '2022', 'mp'),
(1572, 'TVN FCTL MSK APA TU 2020', 2089, '01', '2022', 'mp'),
(1573, 'TVN FCTL SOAL DRAMA S1', 117, '01', '2022', 'mp'),
(1574, 'TVN FCTL T.O.P S1', 682, '01', '2022', 'mp'),
(1575, 'TVN FCTL: DIDIKTV RTS', 5025, '01', '2022', 'mp'),
(1576, 'TVN ISLAMIC ADUAN JIWA', 208, '01', '2022', 'mp'),
(1577, 'TVN ISLAMIC S. VIRAL 2022', 0, '01', '2022', 'mp'),
(1578, 'TVN Islamic T.Ustaz 2022', 547, '01', '2022', 'mp'),
(1579, 'TVN MAGAZINE MAKAN VIRAL', 29, '01', '2022', 'mp'),
(1580, 'TVN MAGAZINE TURUN PADANG', 93, '01', '2022', 'mp'),
(1581, 'TVN MHI 2021', 2063, '01', '2022', 'mp'),
(1582, 'TVN MUSIC LIBRARY 2019', 13100, '01', '2022', 'mp'),
(1583, 'TVNFACTUALSUARAKNSMR19 ', 0, '01', '2022', 'mp');

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
  `folder_short_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `folder_desc` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dept_id` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id`, `folder_id`, `folder_directory`, `folder_name`, `folder_short_name`, `folder_desc`, `dept_id`) VALUES
(12, 'mp_daletdpshare/rsu', '/ifs/Dalet/DPSHARE/RSU', 'Dalet DPSHARE/RSU', 'RSU', 'Dalet DPSHARE/RSU', 'mp_arch'),
(13, 'mp_daletdpshare/lsu', '/ifs/Dalet/DPSHARE/LSU', 'Dalet DPSHARE/LSU', 'LSU', 'Dalet DPSHARE/LSU', 'mp_arch'),
(14, 'mp_daletdpshare/esu', '/ifs/Dalet/DPSHARE/ESU', 'Dalet DPSHARE/ESU', 'ESU', 'Dalet DPSHARE/ESU', 'mp_arch'),
(15, 'mp_daletmediaprimashare', '/ifs/Dalet/MediaPrimaShare', 'Dalet MediaPrimaShare', 'MediaPrimaShare', 'Dalet MediaPrimaShare', 'mp_arch'),
(18, 'mp_rc_transit', '/ifs/RC_Transit', 'RC_Transit', 'RC_Transit', 'RC_Transit', 'mp_arch'),
(19, 'mp_nrcs', '/ifs/NRCS', 'NRCS', 'NRCS', 'NRCS', 'mp_news'),
(21, 'mp_asperadata', '/ifs/AsperaData', 'AsperaData', 'AsperaData', 'AsperaData', 'mp_eng'),
(23, 'mp_pwd_clean_version', '/ifs/PWD_Clean_Version', 'PWD_Clean_Version', 'PWD_Clean_Version', 'PWD_Clean_Version', 'mp_prod'),
(25, 'mp_pe_transit_folder', '/ifs/PE_Transit_Folder', 'PE_Transit_Folder', 'PE_Transit_Folder', 'PE_Transit_Folder', 'mp_arch'),
(26, 'mp_mxfserver', '/ifs/MXFSERVER', 'MXFSERVER', 'MXFSERVER', 'MXFSERVER', 'mp_prod'),
(32, 'mp_ims', '/ifs/IMS', 'IMS', 'IMS', 'IMS', 'mp_eng'),
(37, 'mp_strawberry', '/ifs/strawberry', 'Strawberry', 'strawberry', 'Strawberry', 'mp_prod');

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
(369, 'mp_pe_transit_folder', '139000000000', '12', '2022', '0.0280', 'd6bf29562d0062bd38ccf60d49d26ce2b5e2d4e0', '', NULL, '0', '0', '0', '0'),
(429, 'mp_mxfserver', '1160000000000000', '01', '2023', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', '/ifs/MXFSERVER', '748819', '5495774', '605061', '6695'),
(430, 'mp_asperadata', '40408576', '01', '2023', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', '/ifs/AsperaData', '6', '10', '8', '0'),
(431, 'mp_ims', '1536', '01', '2023', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', '/ifs/IMS', '1', '0', '0', '0'),
(432, 'mp_daletdpshare/rsu', '5150000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/Dalet/DPSHARE/RSU', '99', '491202', '0', '0'),
(433, 'mp_daletdpshare/lsu', '1490000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/Dalet/DPSHARE/LSU', '131', '1942650', '0', '0'),
(434, 'mp_daletdpshare/esu', '553000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/Dalet/DPSHARE/ESU', '10', '16542', '0', '0'),
(435, 'mp_daletmediaprimashare', '77000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/Dalet/MediaPrimaShare', '58783', '1170331', '0', '0'),
(436, 'mp_nrcs', '542000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/NRCS', '1', '62460', '0', '0'),
(437, 'mp_asperadata', '288000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/AsperaData', '5', '14741', '0', '0'),
(438, 'mp_ims', '22500000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/IMS', '243364', '10899', '0', '0'),
(439, 'mp_pwd_clean_version', '9000000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/PWD_Clean_Version', '2', '355', '0', '0'),
(440, 'mp_rc_transit', '1880000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/RC_Transit', '2152', '14904', '0', '0'),
(441, 'mp_pe_transit_folder', '139000000000', '01', '2023', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', '/ifs/PE_Transit_Folder', '3500', '11782', '0', '0'),
(442, 'mp_mxfserver', '1160000000000000', '12', '2021', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', '/ifs/MXFSERVER', '748819', '5495774', '605061', '6695'),
(443, 'mp_asperadata', '40408576', '12', '2021', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', '/ifs/AsperaData', '6', '10', '8', '0'),
(444, 'mp_ims', '1536', '12', '2021', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', '/ifs/IMS', '1', '0', '0', '0'),
(468, 'mp_mxfserver', '1160000000000000', '01', '2022', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', 'MXFSERVER', '748819', '5495774', '605061', '6695'),
(469, 'mp_strawberry', '85900000000000', '01', '2022', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', 'strawberry', '6239', '49111', '56', '0'),
(470, 'mp_asperadata', '40408576', '01', '2022', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', 'AsperaData', '6', '10', '8', '0'),
(471, 'mp_ims', '1536', '01', '2022', '0.0280', '23919283b21b3a9c66d54908d04f7ada3fc655a3', '4. directories_ESAS_316797_1675257257', 'IMS', '1', '0', '0', '0'),
(472, 'mp_daletdpshare/rsu', '5150000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'RSU', '99', '491202', '0', '0'),
(473, 'mp_daletdpshare/lsu', '1490000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'LSU', '131', '1942650', '0', '0'),
(474, 'mp_daletdpshare/esu', '553000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'ESU', '10', '16542', '0', '0'),
(475, 'mp_daletmediaprimashare', '77000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'MediaPrimaShare', '58783', '1170331', '0', '0'),
(476, 'mp_nrcs', '542000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'NRCS', '1', '62460', '0', '0'),
(477, 'mp_asperadata', '288000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'AsperaData', '5', '14741', '0', '0'),
(478, 'mp_ims', '22500000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'IMS', '243364', '10899', '0', '0'),
(479, 'mp_pwd_clean_version', '9000000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'PWD_Clean_Version', '2', '355', '0', '0'),
(480, 'mp_rc_transit', '1880000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'RC_Transit', '2152', '14904', '0', '0'),
(481, 'mp_pe_transit_folder', '139000000000', '01', '2022', '0.0280', '8e967565949917a1bfeeba63cc4c51e5edc016e0', '5. directories_ESAS-DM_10881_1675257104', 'PE_Transit_Folder', '3500', '11782', '0', '0');

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
(12, 'admin_esas', '$2y$10$Vi8ZSh1IhQv5mBQWKW7hjOH/FxMgDy43sYKs6Qwx.jTMBPhCjzGZe', 'admin', 'admin@esas.com', 'Admin Esas'),
(13, 'admin_2', 'admin123', 'admin', 'admin2@esas.com', 'Admin Esas 2');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1584;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
