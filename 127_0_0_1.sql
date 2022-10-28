-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 05:44 PM
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
DROP DATABASE IF EXISTS `esas`;
CREATE DATABASE IF NOT EXISTS `esas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `esas`;

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
(20, 'mp_ims', '/ifs/IMS', 'IMS', 'IMS', 'mp_eng'),
(21, 'mp_asperadata', '/ifs/AsperaData', 'AsperaData', 'AsperaData', 'mp_eng'),
(22, 'mp_amberfin_wc', '/ifs/Amberfin_WC', 'Amberfin_WC', 'Amberfin_WC', 'mp_arch'),
(23, 'mp_pwd_clean_version', '/ifs/PWD_Clean_Version', 'PWD_Clean_Version', 'PWD_Clean_Version', 'mp_prod'),
(24, 'mp_tonton_dailytransit', '/ifs/Tonton_DailyTransit', 'Tonton_DailyTransit', 'Tonton_DailyTransit', 'mp_eng'),
(25, 'mp_pe_transit_folder', '/ifs/PE_Transit_Folder', 'PE_Transit_Folder', 'PE_Transit_Folder', 'mp_eng'),
(26, 'mp_mxfserver', '/ifs/MXFSERVER', 'MXFSERVER', 'MXFSERVER', 'mp_prod'),
(27, 'mp_asperasssssaaa', '/ifs/Aspera', 'Aspera', 'Asperasssssaaa', 'mp_arch');

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
  `price_per_gb` decimal(10,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `folder_id`, `usage_size`, `month`, `year`, `price_per_gb`) VALUES
(12, 'mp_daletmediaprimashare', '63379172920832', '05', '2022', '0.0280'),
(13, 'mp_daletdpshare/rsu', '5665329242383360', '05', '2022', '0.0280'),
(14, 'mp_daletdpshare/lsu', '1294532090338810', '05', '2022', '0.0280'),
(15, 'mp_daletdpshare/esu', '611335260282368', '05', '2022', '0.0280'),
(16, 'mp_nrcs', '481850828152832', '05', '2022', '0.0280'),
(17, 'mp_asperadata', '212659262963712', '05', '2022', '0.0280'),
(18, 'mp_ims', '33945132418048', '05', '2022', '0.0280'),
(19, 'mp_pwd_clean_version', '8998023922176', '05', '2022', '0.0280'),
(20, 'mp_rc_transit', '742241550848', '05', '2022', '0.0280'),
(21, 'mp_pe_transit_folder', '139045726720', '05', '2022', '0.0280'),
(22, 'mp_amberfin_wc', '6925511168', '05', '2022', '0.0280'),
(23, 'mp_tonton_dailytransit', '102912', '05', '2022', '0.0280'),
(24, 'mp_mxfserver', '1464556350430720', '05', '2022', '0.0280'),
(25, 'mp_daletmediaprimashare', '63379172920832', '06', '2022', '0.0280'),
(26, 'mp_daletdpshare/rsu', '5665329242383360', '06', '2022', '0.0280'),
(27, 'mp_daletdpshare/lsu', '1294532090338810', '06', '2022', '0.0280'),
(28, 'mp_daletdpshare/esu', '611335260282368', '06', '2022', '0.0280'),
(29, 'mp_nrcs', '481850828152832', '06', '2022', '0.0280'),
(30, 'mp_asperadata', '212659262963712', '06', '2022', '0.0280'),
(31, 'mp_ims', '33945132418048', '06', '2022', '0.0280'),
(32, 'mp_pwd_clean_version', '8998023922176', '06', '2022', '0.0280'),
(33, 'mp_rc_transit', '742241550848', '06', '2022', '0.0280'),
(34, 'mp_pe_transit_folder', '139045726720', '06', '2022', '0.0280'),
(35, 'mp_amberfin_wc', '6925511168', '06', '2022', '0.0280'),
(36, 'mp_tonton_dailytransit', '0', '06', '2022', '0.0280'),
(37, 'mp_mxfserver', '0', '06', '2022', '0.0280'),
(90, 'mp_daletmediaprimashare', '63379172920832', '07', '2022', '0.0280'),
(91, 'mp_daletdpshare/rsu', '5665329242383360', '07', '2022', '0.0280'),
(92, 'mp_daletdpshare/lsu', '1294532090338810', '07', '2022', '0.0280'),
(93, 'mp_daletdpshare/esu', '611335260282368', '07', '2022', '0.0280'),
(94, 'mp_nrcs', '481850828152832', '07', '2022', '0.0280'),
(95, 'mp_asperadata', '212659262963712', '07', '2022', '0.0280'),
(96, 'mp_ims', '33945132418048', '07', '2022', '0.0280'),
(97, 'mp_pwd_clean_version', '8998023922176', '07', '2022', '0.0280'),
(98, 'mp_rc_transit', '742241550848', '07', '2022', '0.0280'),
(99, 'mp_pe_transit_folder', '139045726720', '07', '2022', '0.0280'),
(100, 'mp_amberfin_wc', '6925511168', '07', '2022', '0.0280'),
(101, 'mp_tonton_dailytransit', '102912', '07', '2022', '0.0280'),
(102, 'mp_mxfserver', '1464556350430720', '07', '2022', '0.0280'),
(103, 'mp_daletmediaprimashare', '63379172920832', '10', '2022', '0.0280'),
(104, 'mp_daletdpshare/rsu', '5665329242383360', '10', '2022', '0.0280'),
(105, 'mp_daletdpshare/lsu', '1294532090338810', '10', '2022', '0.0280'),
(106, 'mp_daletdpshare/esu', '611335260282368', '10', '2022', '0.0280'),
(107, 'mp_nrcs', '481850828152832', '10', '2022', '0.0280'),
(108, 'mp_asperadata', '212659262963712', '10', '2022', '0.0280'),
(109, 'mp_ims', '33945132418048', '10', '2022', '0.0280'),
(110, 'mp_pwd_clean_version', '8998023922176', '10', '2022', '0.0280'),
(111, 'mp_rc_transit', '742241550848', '10', '2022', '0.0280'),
(112, 'mp_pe_transit_folder', '139045726720', '10', '2022', '0.0280'),
(113, 'mp_amberfin_wc', '6925511168', '10', '2022', '0.0280'),
(114, 'mp_tonton_dailytransit', '102912', '10', '2022', '0.0280'),
(115, 'mp_mxfserver', '1464556350430720', '10', '2022', '0.0280'),
(116, 'mp_daletmediaprimashare', '63379172920832', '09', '2022', '0.0280'),
(117, 'mp_daletdpshare/rsu', '5665329242383360', '09', '2022', '0.0280'),
(118, 'mp_daletdpshare/lsu', '1294532090338810', '09', '2022', '0.0280'),
(119, 'mp_daletdpshare/esu', '611335260282368', '09', '2022', '0.0280'),
(120, 'mp_nrcs', '481850828152832', '09', '2022', '0.0280'),
(121, 'mp_asperadata', '212659262963712', '09', '2022', '0.0280'),
(122, 'mp_ims', '33945132418048', '09', '2022', '0.0280'),
(123, 'mp_pwd_clean_version', '8998023922176', '09', '2022', '0.0280'),
(124, 'mp_rc_transit', '742241550848', '09', '2022', '0.0280'),
(125, 'mp_pe_transit_folder', '139045726720', '09', '2022', '0.0280'),
(126, 'mp_amberfin_wc', '6925511168', '09', '2022', '0.0280'),
(127, 'mp_tonton_dailytransit', '102912', '09', '2022', '0.0280'),
(128, 'mp_mxfserver', '1464556350430720', '09', '2022', '0.0280'),
(129, 'mp_daletmediaprimashare', '63379172920832', '08', '2022', '0.0280'),
(130, 'mp_daletdpshare/rsu', '5665329242383360', '08', '2022', '0.0280'),
(131, 'mp_daletdpshare/lsu', '1294532090338810', '08', '2022', '0.0280'),
(132, 'mp_daletdpshare/esu', '611335260282368', '08', '2022', '0.0280'),
(133, 'mp_nrcs', '481850828152832', '08', '2022', '0.0280'),
(134, 'mp_asperadata', '212659262963712', '08', '2022', '0.0280'),
(135, 'mp_ims', '33945132418048', '08', '2022', '0.0280'),
(136, 'mp_pwd_clean_version', '8998023922176', '08', '2022', '0.0280'),
(137, 'mp_rc_transit', '742241550848', '08', '2022', '0.0280'),
(138, 'mp_pe_transit_folder', '139045726720', '08', '2022', '0.0280'),
(139, 'mp_amberfin_wc', '6925511168', '08', '2022', '0.0280'),
(140, 'mp_tonton_dailytransit', '102912', '08', '2022', '0.0280'),
(141, 'mp_mxfserver', '1464556350430720', '08', '2022', '0.0280'),
(142, 'mp_daletdpshare/rsu', '5665329242383360', '04', '2022', '0.0280');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
