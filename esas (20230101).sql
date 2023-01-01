-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 12:30 PM
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
(706, '0-ES Migration', 16710, '01', '2023', 'mp'),
(707, '0-Music Library CSD', 2916, '01', '2023', 'mp'),
(708, '1-Primeworks Distribution', 433, '01', '2023', 'mp'),
(709, '1-PWS Advertiser Content', 21838, '01', '2023', 'mp'),
(710, '1-PWS Distr Jum 30', 13, '01', '2023', 'mp'),
(711, '1-TVN Chinese', 3943, '01', '2023', 'mp'),
(712, '1-TVN Entertainment 1', 0, '01', '2023', 'mp'),
(713, '1-TVN Factual', 994, '01', '2023', 'mp'),
(714, '2-Cretive Service Dept.', 18886, '01', '2023', 'mp'),
(715, '3-Media Prima Digital', 4, '01', '2023', 'mp'),
(716, 'Content&Creative Dept', 0, '01', '2023', 'mp'),
(717, 'CSD RAW', 0, '01', '2023', 'mp'),
(718, 'DidikTV (Aktif)', 6069, '01', '2023', 'mp'),
(719, 'DIDIKTV B.BERUNIFORM', 0, '01', '2023', 'mp'),
(720, 'DIDIKTV CERGAS', 2276, '01', '2023', 'mp'),
(721, 'DIDIKTV K.SUKAN', 0, '01', '2023', 'mp'),
(722, 'DIDIKTV KAUNSELING', 0, '01', '2023', 'mp'),
(723, 'DIDIKTV KESENIAN', 0, '01', '2023', 'mp'),
(724, 'DIDIKTV KKD', 0, '01', '2023', 'mp'),
(725, 'DidikTV Re Edit 2021', 167732, '01', '2023', 'mp'),
(726, 'MPTVN DIDIK TV MAHIR', 9179, '01', '2023', 'mp'),
(727, 'OBTV', 0, '01', '2023', 'mp'),
(728, 'PWS ENT2 ABPBH 30 2017', 704, '01', '2023', 'mp'),
(729, 'PWS ENT2 JJBR  2017', 53, '01', '2023', 'mp'),
(730, 'PWS ENT3 ENEWS FEED', 6958, '01', '2023', 'mp'),
(731, 'PWS ENT3 ENEWS PGM', 0, '01', '2023', 'mp'),
(732, 'TVN BR. CONTENT LAZADA TV', 0, '01', '2023', 'mp'),
(733, 'TVN CE FSS 2022', 16480, '01', '2023', 'mp'),
(734, 'TVN CH 8ENEWS', 29491, '01', '2023', 'mp'),
(735, 'TVN CH HO CHAK', 5865, '01', '2023', 'mp'),
(736, 'TVN CH LAFS 2021', 15126, '01', '2023', 'mp'),
(737, 'TVN CH LIVING DELGHT', 4514, '01', '2023', 'mp'),
(738, 'TVN CH NEW JRNY S8', 2674, '01', '2023', 'mp'),
(739, 'TVN DIDIKTV AKTIF & KOKO', 9013, '01', '2023', 'mp'),
(740, 'TVN ENT 5R5R 2021', 204, '01', '2023', 'mp'),
(741, 'TVN ENT A.N.M.N 2021', 36, '01', '2023', 'mp'),
(742, 'TVN ENT DETIK 12 MLM `22 ', 0, '01', '2023', 'mp'),
(743, 'TVN ENT DIARI DADDY 2022', 73, '01', '2023', 'mp'),
(744, 'TVN ENT FAMILI DUO 2021', 245, '01', '2023', 'mp'),
(745, 'TVN ENT Helo Doktor 2022', 378, '01', '2023', 'mp'),
(746, 'TVN ENT HELO DR. S4 2021', 826, '01', '2023', 'mp'),
(747, 'TVN ENT IDOLA KECIL 2021', 340, '01', '2023', 'mp'),
(748, 'TVN ENT JJCM RAMADAN 2022', 101, '01', '2023', 'mp'),
(749, 'TVN ENT JJMA 2022', 372, '01', '2023', 'mp'),
(750, 'TVN ENT MM36 2021', 440, '01', '2023', 'mp'),
(751, 'TVN ENT VOKAL MANIA S1 20', 489, '01', '2023', 'mp'),
(752, 'TVN ENT1 DAPUR KONGSI `19', 943, '01', '2023', 'mp'),
(753, 'TVN ENT1 JJCM 2020', 239, '01', '2023', 'mp'),
(754, 'TVN ENT1 SNG TRHBR 2020', 7590, '01', '2023', 'mp'),
(755, 'TVN ENT2 MELODI 2017', 2478, '01', '2023', 'mp'),
(756, 'TVN ENT2 SEMBANG SAHUR 17', 58, '01', '2023', 'mp'),
(757, 'TVN FACDOC JJK RSL 2017', 0, '01', '2023', 'mp'),
(758, 'TVN FACDOC M3 2017', 2648, '01', '2023', 'mp'),
(759, 'TVN FACDOC PROJEK DAI `17', 0, '01', '2023', 'mp'),
(760, 'TVN FACTUAL BERSAMAMU `18', 1296, '01', '2023', 'mp'),
(761, 'TVN FACTUAL BK 2020', 69, '01', '2023', 'mp'),
(762, 'TVN FACTUAL DOC. HAJI', 0, '01', '2023', 'mp'),
(763, 'TVN FACTUAL JOM BBKA 2020', 372, '01', '2023', 'mp'),
(764, 'TVN FACTUAL MHI 2022', 0, '01', '2023', 'mp'),
(765, 'TVN FACTUAL NONA 2020', 2992, '01', '2023', 'mp'),
(766, 'TVN FACTUAL WHI 2020', 44, '01', '2023', 'mp'),
(767, 'TVN FCTL BREAKOUT@DDK S1', 1035, '01', '2023', 'mp'),
(768, 'TVN FCTL BRKFST@9PM S1', 1786, '01', '2023', 'mp'),
(769, 'TVN FCTL HALAQAH 2021', 212, '01', '2023', 'mp'),
(770, 'TVN FCTL JALUR GMLG 2021', 0, '01', '2023', 'mp'),
(771, 'TVN FCTL JJK RASUL 2021', 0, '01', '2023', 'mp'),
(772, 'TVN FCTL JURNAL RESIPI S1', 477, '01', '2023', 'mp'),
(773, 'TVN FCTL KUIZ PACAK 2021', 1518, '01', '2023', 'mp'),
(774, 'TVN FCTL M.CINTA `20', 1148, '01', '2023', 'mp'),
(775, 'TVN FCTL MASAK APA TU 21', 115, '01', '2023', 'mp'),
(776, 'TVN FCTL MSK APA TU 2020', 2089, '01', '2023', 'mp'),
(777, 'TVN FCTL SEMBANG VIRAL', 5627, '01', '2023', 'mp'),
(778, 'TVN FCTL SOAL DRAMA S1', 117, '01', '2023', 'mp'),
(779, 'TVN FCTL T.O.P S1', 682, '01', '2023', 'mp'),
(780, 'TVN FCTL: DIDIKTV RTS', 5025, '01', '2023', 'mp'),
(781, 'TVN ISL PEMBAWA RAHMAT  ', 0, '01', '2023', 'mp'),
(782, 'TVN ISLAMIC ADUAN JIWA', 99, '01', '2023', 'mp'),
(783, 'TVN Islamic T.Ustaz 2022', 400, '01', '2023', 'mp'),
(784, 'TVN MAGAZINE MAKAN VIRAL', 29, '01', '2023', 'mp'),
(785, 'TVN MAGAZINE TURUN PADANG', 82, '01', '2023', 'mp'),
(786, 'TVN MHI 2021', 2057, '01', '2023', 'mp'),
(787, 'TVN MUSIC LIBRARY 2019', 11211, '01', '2023', 'mp'),
(788, 'TVNFACTUALSUARAKNSMR19 ', 0, '01', '2023', 'mp'),
(789, '0-ES Migration', 16710, '08', '2022', 'mp'),
(790, '0-Music Library CSD', 2916, '08', '2022', 'mp'),
(791, '1-Primeworks Distribution', 433, '08', '2022', 'mp'),
(792, '1-PWS Advertiser Content', 21838, '08', '2022', 'mp'),
(793, '1-PWS Distr Jum 30', 13, '08', '2022', 'mp'),
(794, '1-TVN Chinese', 3943, '08', '2022', 'mp'),
(795, '1-TVN Entertainment 1', 0, '08', '2022', 'mp'),
(796, '1-TVN Factual', 994, '08', '2022', 'mp'),
(797, '2-Cretive Service Dept.', 18886, '08', '2022', 'mp'),
(798, '3-Media Prima Digital', 4, '08', '2022', 'mp'),
(799, 'Content&Creative Dept', 0, '08', '2022', 'mp'),
(800, 'CSD RAW', 0, '08', '2022', 'mp'),
(801, 'DidikTV (Aktif)', 6069, '08', '2022', 'mp'),
(802, 'DIDIKTV B.BERUNIFORM', 0, '08', '2022', 'mp'),
(803, 'DIDIKTV CERGAS', 2276, '08', '2022', 'mp'),
(804, 'DIDIKTV K.SUKAN', 0, '08', '2022', 'mp'),
(805, 'DIDIKTV KAUNSELING', 0, '08', '2022', 'mp'),
(806, 'DIDIKTV KESENIAN', 0, '08', '2022', 'mp'),
(807, 'DIDIKTV KKD', 0, '08', '2022', 'mp'),
(808, 'DidikTV Re Edit 2021', 167732, '08', '2022', 'mp'),
(809, 'MPTVN DIDIK TV MAHIR', 9179, '08', '2022', 'mp'),
(810, 'OBTV', 0, '08', '2022', 'mp'),
(811, 'PWS ENT2 ABPBH 30 2017', 704, '08', '2022', 'mp'),
(812, 'PWS ENT2 JJBR  2017', 53, '08', '2022', 'mp'),
(813, 'PWS ENT3 ENEWS FEED', 6958, '08', '2022', 'mp'),
(814, 'PWS ENT3 ENEWS PGM', 0, '08', '2022', 'mp'),
(815, 'TVN BR. CONTENT LAZADA TV', 0, '08', '2022', 'mp'),
(816, 'TVN CE FSS 2022', 16480, '08', '2022', 'mp'),
(817, 'TVN CH 8ENEWS', 29491, '08', '2022', 'mp'),
(818, 'TVN CH HO CHAK', 5865, '08', '2022', 'mp'),
(819, 'TVN CH LAFS 2021', 15126, '08', '2022', 'mp'),
(820, 'TVN CH LIVING DELGHT', 4514, '08', '2022', 'mp'),
(821, 'TVN CH NEW JRNY S8', 2674, '08', '2022', 'mp'),
(822, 'TVN DIDIKTV AKTIF & KOKO', 9013, '08', '2022', 'mp'),
(823, 'TVN ENT 5R5R 2021', 204, '08', '2022', 'mp'),
(824, 'TVN ENT A.N.M.N 2021', 36, '08', '2022', 'mp'),
(825, 'TVN ENT DETIK 12 MLM `22 ', 0, '08', '2022', 'mp'),
(826, 'TVN ENT DIARI DADDY 2022', 73, '08', '2022', 'mp'),
(827, 'TVN ENT FAMILI DUO 2021', 245, '08', '2022', 'mp'),
(828, 'TVN ENT Helo Doktor 2022', 378, '08', '2022', 'mp'),
(829, 'TVN ENT HELO DR. S4 2021', 826, '08', '2022', 'mp'),
(830, 'TVN ENT IDOLA KECIL 2021', 340, '08', '2022', 'mp'),
(831, 'TVN ENT JJCM RAMADAN 2022', 101, '08', '2022', 'mp'),
(832, 'TVN ENT JJMA 2022', 372, '08', '2022', 'mp'),
(833, 'TVN ENT MM36 2021', 440, '08', '2022', 'mp'),
(834, 'TVN ENT VOKAL MANIA S1 20', 489, '08', '2022', 'mp'),
(835, 'TVN ENT1 DAPUR KONGSI `19', 943, '08', '2022', 'mp'),
(836, 'TVN ENT1 JJCM 2020', 239, '08', '2022', 'mp'),
(837, 'TVN ENT1 SNG TRHBR 2020', 7590, '08', '2022', 'mp'),
(838, 'TVN ENT2 MELODI 2017', 2478, '08', '2022', 'mp'),
(839, 'TVN ENT2 SEMBANG SAHUR 17', 58, '08', '2022', 'mp'),
(840, 'TVN FACDOC JJK RSL 2017', 0, '08', '2022', 'mp'),
(841, 'TVN FACDOC M3 2017', 2648, '08', '2022', 'mp'),
(842, 'TVN FACDOC PROJEK DAI `17', 0, '08', '2022', 'mp'),
(843, 'TVN FACTUAL BERSAMAMU `18', 1296, '08', '2022', 'mp'),
(844, 'TVN FACTUAL BK 2020', 69, '08', '2022', 'mp'),
(845, 'TVN FACTUAL DOC. HAJI', 0, '08', '2022', 'mp'),
(846, 'TVN FACTUAL JOM BBKA 2020', 372, '08', '2022', 'mp'),
(847, 'TVN FACTUAL MHI 2022', 0, '08', '2022', 'mp'),
(848, 'TVN FACTUAL NONA 2020', 2992, '08', '2022', 'mp'),
(849, 'TVN FACTUAL WHI 2020', 44, '08', '2022', 'mp'),
(850, 'TVN FCTL BREAKOUT@DDK S1', 1035, '08', '2022', 'mp'),
(851, 'TVN FCTL BRKFST@9PM S1', 1786, '08', '2022', 'mp'),
(852, 'TVN FCTL HALAQAH 2021', 212, '08', '2022', 'mp'),
(853, 'TVN FCTL JALUR GMLG 2021', 0, '08', '2022', 'mp'),
(854, 'TVN FCTL JJK RASUL 2021', 0, '08', '2022', 'mp'),
(855, 'TVN FCTL JURNAL RESIPI S1', 477, '08', '2022', 'mp'),
(856, 'TVN FCTL KUIZ PACAK 2021', 1518, '08', '2022', 'mp'),
(857, 'TVN FCTL M.CINTA `20', 1148, '08', '2022', 'mp'),
(858, 'TVN FCTL MASAK APA TU 21', 115, '08', '2022', 'mp'),
(859, 'TVN FCTL MSK APA TU 2020', 2089, '08', '2022', 'mp'),
(860, 'TVN FCTL SEMBANG VIRAL', 5627, '08', '2022', 'mp'),
(861, 'TVN FCTL SOAL DRAMA S1', 117, '08', '2022', 'mp'),
(862, 'TVN FCTL T.O.P S1', 682, '08', '2022', 'mp'),
(863, 'TVN FCTL: DIDIKTV RTS', 5025, '08', '2022', 'mp'),
(864, 'TVN ISL PEMBAWA RAHMAT  ', 0, '08', '2022', 'mp'),
(865, 'TVN ISLAMIC ADUAN JIWA', 99, '08', '2022', 'mp'),
(866, 'TVN Islamic T.Ustaz 2022', 400, '08', '2022', 'mp'),
(867, 'TVN MAGAZINE MAKAN VIRAL', 29, '08', '2022', 'mp'),
(868, 'TVN MAGAZINE TURUN PADANG', 82, '08', '2022', 'mp'),
(869, 'TVN MHI 2021', 2057, '08', '2022', 'mp'),
(870, 'TVN MUSIC LIBRARY 2019', 11211, '08', '2022', 'mp'),
(871, 'TVNFACTUALSUARAKNSMR19 ', 0, '08', '2022', 'mp'),
(872, '0-ES Migration', 16710, '09', '2022', 'mp'),
(873, '0-Music Library CSD', 2916, '09', '2022', 'mp'),
(874, '1-Primeworks Distribution', 433, '09', '2022', 'mp'),
(875, '1-PWS Advertiser Content', 21838, '09', '2022', 'mp'),
(876, '1-PWS Distr Jum 30', 13, '09', '2022', 'mp'),
(877, '1-TVN Chinese', 3943, '09', '2022', 'mp'),
(878, '1-TVN Entertainment 1', 0, '09', '2022', 'mp'),
(879, '1-TVN Factual', 994, '09', '2022', 'mp'),
(880, '2-Cretive Service Dept.', 18886, '09', '2022', 'mp'),
(881, '3-Media Prima Digital', 4, '09', '2022', 'mp'),
(882, 'Content&Creative Dept', 0, '09', '2022', 'mp'),
(883, 'CSD RAW', 0, '09', '2022', 'mp'),
(884, 'DidikTV (Aktif)', 6069, '09', '2022', 'mp'),
(885, 'DIDIKTV B.BERUNIFORM', 0, '09', '2022', 'mp'),
(886, 'DIDIKTV CERGAS', 2276, '09', '2022', 'mp'),
(887, 'DIDIKTV K.SUKAN', 0, '09', '2022', 'mp'),
(888, 'DIDIKTV KAUNSELING', 0, '09', '2022', 'mp'),
(889, 'DIDIKTV KESENIAN', 0, '09', '2022', 'mp'),
(890, 'DIDIKTV KKD', 0, '09', '2022', 'mp'),
(891, 'DidikTV Re Edit 2021', 167732, '09', '2022', 'mp'),
(892, 'MPTVN DIDIK TV MAHIR', 9179, '09', '2022', 'mp'),
(893, 'OBTV', 0, '09', '2022', 'mp'),
(894, 'PWS ENT2 ABPBH 30 2017', 704, '09', '2022', 'mp'),
(895, 'PWS ENT2 JJBR  2017', 53, '09', '2022', 'mp'),
(896, 'PWS ENT3 ENEWS FEED', 6958, '09', '2022', 'mp'),
(897, 'PWS ENT3 ENEWS PGM', 0, '09', '2022', 'mp'),
(898, 'TVN BR. CONTENT LAZADA TV', 0, '09', '2022', 'mp'),
(899, 'TVN CE FSS 2022', 16480, '09', '2022', 'mp'),
(900, 'TVN CH 8ENEWS', 29491, '09', '2022', 'mp'),
(901, 'TVN CH HO CHAK', 5865, '09', '2022', 'mp'),
(902, 'TVN CH LAFS 2021', 15126, '09', '2022', 'mp'),
(903, 'TVN CH LIVING DELGHT', 4514, '09', '2022', 'mp'),
(904, 'TVN CH NEW JRNY S8', 2674, '09', '2022', 'mp'),
(905, 'TVN DIDIKTV AKTIF & KOKO', 9013, '09', '2022', 'mp'),
(906, 'TVN ENT 5R5R 2021', 204, '09', '2022', 'mp'),
(907, 'TVN ENT A.N.M.N 2021', 36, '09', '2022', 'mp'),
(908, 'TVN ENT DETIK 12 MLM `22 ', 0, '09', '2022', 'mp'),
(909, 'TVN ENT DIARI DADDY 2022', 73, '09', '2022', 'mp'),
(910, 'TVN ENT FAMILI DUO 2021', 245, '09', '2022', 'mp'),
(911, 'TVN ENT Helo Doktor 2022', 378, '09', '2022', 'mp'),
(912, 'TVN ENT HELO DR. S4 2021', 826, '09', '2022', 'mp'),
(913, 'TVN ENT IDOLA KECIL 2021', 340, '09', '2022', 'mp'),
(914, 'TVN ENT JJCM RAMADAN 2022', 101, '09', '2022', 'mp'),
(915, 'TVN ENT JJMA 2022', 372, '09', '2022', 'mp'),
(916, 'TVN ENT MM36 2021', 440, '09', '2022', 'mp'),
(917, 'TVN ENT VOKAL MANIA S1 20', 489, '09', '2022', 'mp'),
(918, 'TVN ENT1 DAPUR KONGSI `19', 943, '09', '2022', 'mp'),
(919, 'TVN ENT1 JJCM 2020', 239, '09', '2022', 'mp'),
(920, 'TVN ENT1 SNG TRHBR 2020', 7590, '09', '2022', 'mp'),
(921, 'TVN ENT2 MELODI 2017', 2478, '09', '2022', 'mp'),
(922, 'TVN ENT2 SEMBANG SAHUR 17', 58, '09', '2022', 'mp'),
(923, 'TVN FACDOC JJK RSL 2017', 0, '09', '2022', 'mp'),
(924, 'TVN FACDOC M3 2017', 2648, '09', '2022', 'mp'),
(925, 'TVN FACDOC PROJEK DAI `17', 0, '09', '2022', 'mp'),
(926, 'TVN FACTUAL BERSAMAMU `18', 1296, '09', '2022', 'mp'),
(927, 'TVN FACTUAL BK 2020', 69, '09', '2022', 'mp'),
(928, 'TVN FACTUAL DOC. HAJI', 0, '09', '2022', 'mp'),
(929, 'TVN FACTUAL JOM BBKA 2020', 372, '09', '2022', 'mp'),
(930, 'TVN FACTUAL MHI 2022', 0, '09', '2022', 'mp'),
(931, 'TVN FACTUAL NONA 2020', 2992, '09', '2022', 'mp'),
(932, 'TVN FACTUAL WHI 2020', 44, '09', '2022', 'mp'),
(933, 'TVN FCTL BREAKOUT@DDK S1', 1035, '09', '2022', 'mp'),
(934, 'TVN FCTL BRKFST@9PM S1', 1786, '09', '2022', 'mp'),
(935, 'TVN FCTL HALAQAH 2021', 212, '09', '2022', 'mp'),
(936, 'TVN FCTL JALUR GMLG 2021', 0, '09', '2022', 'mp'),
(937, 'TVN FCTL JJK RASUL 2021', 0, '09', '2022', 'mp'),
(938, 'TVN FCTL JURNAL RESIPI S1', 477, '09', '2022', 'mp'),
(939, 'TVN FCTL KUIZ PACAK 2021', 1518, '09', '2022', 'mp'),
(940, 'TVN FCTL M.CINTA `20', 1148, '09', '2022', 'mp'),
(941, 'TVN FCTL MASAK APA TU 21', 115, '09', '2022', 'mp'),
(942, 'TVN FCTL MSK APA TU 2020', 2089, '09', '2022', 'mp'),
(943, 'TVN FCTL SEMBANG VIRAL', 5627, '09', '2022', 'mp'),
(944, 'TVN FCTL SOAL DRAMA S1', 117, '09', '2022', 'mp'),
(945, 'TVN FCTL T.O.P S1', 682, '09', '2022', 'mp'),
(946, 'TVN FCTL: DIDIKTV RTS', 5025, '09', '2022', 'mp'),
(947, 'TVN ISL PEMBAWA RAHMAT  ', 0, '09', '2022', 'mp'),
(948, 'TVN ISLAMIC ADUAN JIWA', 99, '09', '2022', 'mp'),
(949, 'TVN Islamic T.Ustaz 2022', 400, '09', '2022', 'mp'),
(950, 'TVN MAGAZINE MAKAN VIRAL', 29, '09', '2022', 'mp'),
(951, 'TVN MAGAZINE TURUN PADANG', 82, '09', '2022', 'mp'),
(952, 'TVN MHI 2021', 2057, '09', '2022', 'mp'),
(953, 'TVN MUSIC LIBRARY 2019', 11211, '09', '2022', 'mp'),
(954, 'TVNFACTUALSUARAKNSMR19 ', 0, '09', '2022', 'mp'),
(955, '0-ES Migration', 16710, '10', '2022', 'mp'),
(956, '0-Music Library CSD', 2916, '10', '2022', 'mp'),
(957, '1-Primeworks Distribution', 433, '10', '2022', 'mp'),
(958, '1-PWS Advertiser Content', 21838, '10', '2022', 'mp'),
(959, '1-PWS Distr Jum 30', 13, '10', '2022', 'mp'),
(960, '1-TVN Chinese', 3943, '10', '2022', 'mp'),
(961, '1-TVN Entertainment 1', 0, '10', '2022', 'mp'),
(962, '1-TVN Factual', 994, '10', '2022', 'mp'),
(963, '2-Cretive Service Dept.', 18886, '10', '2022', 'mp'),
(964, '3-Media Prima Digital', 4, '10', '2022', 'mp'),
(965, 'Content&Creative Dept', 0, '10', '2022', 'mp'),
(966, 'CSD RAW', 0, '10', '2022', 'mp'),
(967, 'DidikTV (Aktif)', 6069, '10', '2022', 'mp'),
(968, 'DIDIKTV B.BERUNIFORM', 0, '10', '2022', 'mp'),
(969, 'DIDIKTV CERGAS', 2276, '10', '2022', 'mp'),
(970, 'DIDIKTV K.SUKAN', 0, '10', '2022', 'mp'),
(971, 'DIDIKTV KAUNSELING', 0, '10', '2022', 'mp'),
(972, 'DIDIKTV KESENIAN', 0, '10', '2022', 'mp'),
(973, 'DIDIKTV KKD', 0, '10', '2022', 'mp'),
(974, 'DidikTV Re Edit 2021', 167732, '10', '2022', 'mp'),
(975, 'MPTVN DIDIK TV MAHIR', 9179, '10', '2022', 'mp'),
(976, 'OBTV', 0, '10', '2022', 'mp'),
(977, 'PWS ENT2 ABPBH 30 2017', 704, '10', '2022', 'mp'),
(978, 'PWS ENT2 JJBR  2017', 53, '10', '2022', 'mp'),
(979, 'PWS ENT3 ENEWS FEED', 6958, '10', '2022', 'mp'),
(980, 'PWS ENT3 ENEWS PGM', 0, '10', '2022', 'mp'),
(981, 'TVN BR. CONTENT LAZADA TV', 0, '10', '2022', 'mp'),
(982, 'TVN CE FSS 2022', 16480, '10', '2022', 'mp'),
(983, 'TVN CH 8ENEWS', 29491, '10', '2022', 'mp'),
(984, 'TVN CH HO CHAK', 5865, '10', '2022', 'mp'),
(985, 'TVN CH LAFS 2021', 15126, '10', '2022', 'mp'),
(986, 'TVN CH LIVING DELGHT', 4514, '10', '2022', 'mp'),
(987, 'TVN CH NEW JRNY S8', 2674, '10', '2022', 'mp'),
(988, 'TVN DIDIKTV AKTIF & KOKO', 9013, '10', '2022', 'mp'),
(989, 'TVN ENT 5R5R 2021', 204, '10', '2022', 'mp'),
(990, 'TVN ENT A.N.M.N 2021', 36, '10', '2022', 'mp'),
(991, 'TVN ENT DETIK 12 MLM `22 ', 0, '10', '2022', 'mp'),
(992, 'TVN ENT DIARI DADDY 2022', 73, '10', '2022', 'mp'),
(993, 'TVN ENT FAMILI DUO 2021', 245, '10', '2022', 'mp'),
(994, 'TVN ENT Helo Doktor 2022', 378, '10', '2022', 'mp'),
(995, 'TVN ENT HELO DR. S4 2021', 826, '10', '2022', 'mp'),
(996, 'TVN ENT IDOLA KECIL 2021', 340, '10', '2022', 'mp'),
(997, 'TVN ENT JJCM RAMADAN 2022', 101, '10', '2022', 'mp'),
(998, 'TVN ENT JJMA 2022', 372, '10', '2022', 'mp'),
(999, 'TVN ENT MM36 2021', 440, '10', '2022', 'mp'),
(1000, 'TVN ENT VOKAL MANIA S1 20', 489, '10', '2022', 'mp'),
(1001, 'TVN ENT1 DAPUR KONGSI `19', 943, '10', '2022', 'mp'),
(1002, 'TVN ENT1 JJCM 2020', 239, '10', '2022', 'mp'),
(1003, 'TVN ENT1 SNG TRHBR 2020', 7590, '10', '2022', 'mp'),
(1004, 'TVN ENT2 MELODI 2017', 2478, '10', '2022', 'mp'),
(1005, 'TVN ENT2 SEMBANG SAHUR 17', 58, '10', '2022', 'mp'),
(1006, 'TVN FACDOC JJK RSL 2017', 0, '10', '2022', 'mp'),
(1007, 'TVN FACDOC M3 2017', 2648, '10', '2022', 'mp'),
(1008, 'TVN FACDOC PROJEK DAI `17', 0, '10', '2022', 'mp'),
(1009, 'TVN FACTUAL BERSAMAMU `18', 1296, '10', '2022', 'mp'),
(1010, 'TVN FACTUAL BK 2020', 69, '10', '2022', 'mp'),
(1011, 'TVN FACTUAL DOC. HAJI', 0, '10', '2022', 'mp'),
(1012, 'TVN FACTUAL JOM BBKA 2020', 372, '10', '2022', 'mp'),
(1013, 'TVN FACTUAL MHI 2022', 0, '10', '2022', 'mp'),
(1014, 'TVN FACTUAL NONA 2020', 2992, '10', '2022', 'mp'),
(1015, 'TVN FACTUAL WHI 2020', 44, '10', '2022', 'mp'),
(1016, 'TVN FCTL BREAKOUT@DDK S1', 1035, '10', '2022', 'mp'),
(1017, 'TVN FCTL BRKFST@9PM S1', 1786, '10', '2022', 'mp'),
(1018, 'TVN FCTL HALAQAH 2021', 212, '10', '2022', 'mp'),
(1019, 'TVN FCTL JALUR GMLG 2021', 0, '10', '2022', 'mp'),
(1020, 'TVN FCTL JJK RASUL 2021', 0, '10', '2022', 'mp'),
(1021, 'TVN FCTL JURNAL RESIPI S1', 477, '10', '2022', 'mp'),
(1022, 'TVN FCTL KUIZ PACAK 2021', 1518, '10', '2022', 'mp'),
(1023, 'TVN FCTL M.CINTA `20', 1148, '10', '2022', 'mp'),
(1024, 'TVN FCTL MASAK APA TU 21', 115, '10', '2022', 'mp'),
(1025, 'TVN FCTL MSK APA TU 2020', 2089, '10', '2022', 'mp'),
(1026, 'TVN FCTL SEMBANG VIRAL', 5627, '10', '2022', 'mp'),
(1027, 'TVN FCTL SOAL DRAMA S1', 117, '10', '2022', 'mp'),
(1028, 'TVN FCTL T.O.P S1', 682, '10', '2022', 'mp'),
(1029, 'TVN FCTL: DIDIKTV RTS', 5025, '10', '2022', 'mp'),
(1030, 'TVN ISL PEMBAWA RAHMAT  ', 0, '10', '2022', 'mp'),
(1031, 'TVN ISLAMIC ADUAN JIWA', 99, '10', '2022', 'mp'),
(1032, 'TVN Islamic T.Ustaz 2022', 400, '10', '2022', 'mp'),
(1033, 'TVN MAGAZINE MAKAN VIRAL', 29, '10', '2022', 'mp'),
(1034, 'TVN MAGAZINE TURUN PADANG', 82, '10', '2022', 'mp'),
(1035, 'TVN MHI 2021', 2057, '10', '2022', 'mp'),
(1036, 'TVN MUSIC LIBRARY 2019', 11211, '10', '2022', 'mp'),
(1037, 'TVNFACTUALSUARAKNSMR19 ', 0, '10', '2022', 'mp');

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
(32, 'mp_ims', '/ifs/IMS', 'IMS', 'IMS', 'mp_eng');

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
  `file_hash` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `folder_id`, `usage_size`, `month`, `year`, `price_per_gb`, `file_hash`) VALUES
(235, 'mp_mxfserver', '1267456150231510', '01', '2023', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3'),
(236, 'mp_asperadata', '40408576', '01', '2023', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3'),
(237, 'mp_ims', '1536', '01', '2023', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3'),
(238, 'mp_daletmediaprimashare', '72521694793216', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(239, 'mp_daletdpshare/rsu', '4994084682939380', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(240, 'mp_daletdpshare/lsu', '1339095811327480', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(241, 'mp_daletdpshare/esu', '552694689076736', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(242, 'mp_nrcs', '504892803649536', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(243, 'mp_asperadata', '225176167751680', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(244, 'mp_ims', '22213242750976', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(245, 'mp_pwd_clean_version', '8998023922176', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(246, 'mp_rc_transit', '1037016247296', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(247, 'mp_pe_transit_folder', '139052598272', '01', '2023', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(248, 'mp_mxfserver', '1267456150231510', '08', '2022', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3'),
(249, 'mp_asperadata', '40408576', '08', '2022', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3'),
(250, 'mp_ims', '1536', '08', '2022', '0.0280', '4a4c54b603d91b542b4fcaeb1143e51a14b8f0f3'),
(251, 'mp_daletmediaprimashare', '72521694793216', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(252, 'mp_daletdpshare/rsu', '4994084682939380', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(253, 'mp_daletdpshare/lsu', '1339095811327480', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(254, 'mp_daletdpshare/esu', '552694689076736', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(255, 'mp_nrcs', '504892803649536', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(256, 'mp_asperadata', '225176167751680', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(257, 'mp_ims', '22213242750976', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(258, 'mp_pwd_clean_version', '8998023922176', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(259, 'mp_rc_transit', '1037016247296', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(260, 'mp_pe_transit_folder', '139052598272', '08', '2022', '0.0280', '5b43661151b83659053d3c3ef510439fc94cfa0d'),
(270, 'mp_mxfserver', '1444652121122840', '09', '2022', '0.0280', 'e284c5a158e56d31e65329c0f387391c8c780cb9'),
(271, 'mp_asperadata', '40408576', '09', '2022', '0.0280', 'e284c5a158e56d31e65329c0f387391c8c780cb9'),
(272, 'mp_ims', '1536', '09', '2022', '0.0280', 'e284c5a158e56d31e65329c0f387391c8c780cb9'),
(273, 'mp_daletdpshare/rsu', '5102471578366960', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(274, 'mp_daletdpshare/lsu', '1373577215858170', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(275, 'mp_daletmediaprimashare', '73526252590080', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(276, 'mp_daletdpshare/esu', '552694689265152', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(277, 'mp_nrcs', '513319011653632', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(278, 'mp_asperadata', '225476958595072', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(279, 'mp_ims', '25303588989952', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(280, 'mp_pwd_clean_version', '8998023922176', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(281, 'mp_rc_transit', '1050936826880', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(282, 'mp_pe_transit_folder', '139052172800', '09', '2022', '0.0280', '09a986af82cc6d45c4387367a972ebffc59b5c93'),
(283, 'mp_mxfserver', '1371576251438310', '10', '2022', '0.0280', 'b3b49d2dbe846429ab8cf2c41e4016c4e93ba84c'),
(284, 'mp_daletdpshare/rsu', '4991818369403900', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(285, 'mp_daletdpshare/lsu', '1398923564310010', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(286, 'mp_daletdpshare/esu', '552723110305280', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(287, 'mp_daletmediaprimashare', '78131510162944', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(288, 'mp_nrcs', '520548820334592', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(289, 'mp_asperadata', '219436938420224', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(290, 'mp_ims', '23986133468672', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(291, 'mp_pwd_clean_version', '8998023922176', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(292, 'mp_rc_transit', '1064677257728', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22'),
(293, 'mp_pe_transit_folder', '139051643904', '10', '2022', '0.0280', '61693cf2147d93c1a1cb2dafb71745be994f0e22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_role`) VALUES
(1, 'user_esas', 'user_123', 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
