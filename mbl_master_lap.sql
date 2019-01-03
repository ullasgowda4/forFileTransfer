-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2019 at 06:12 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capital_first_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `mbl_master_lap`
--

CREATE TABLE `mbl_master_lap` (
  `id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `scheme_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sch_id` int(11) NOT NULL,
  `max_amt_fin` int(11) NOT NULL,
  `min_amt_fin` int(11) NOT NULL,
  `min_int_rate` double NOT NULL,
  `max_int_rate` double NOT NULL,
  `min_tenure` int(11) NOT NULL,
  `max_tenure` int(11) NOT NULL,
  `tenure` int(11) NOT NULL,
  `min_irr` int(11) NOT NULL,
  `max_irr` int(11) NOT NULL,
  `scheme_start_date` datetime NOT NULL,
  `scheme_end_date` datetime NOT NULL,
  `lsm_lww_workflow_id_c` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rest_fico_sch_flag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `node` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loan_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_flag` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mbl_master_lap`
--

INSERT INTO `mbl_master_lap` (`id`, `scheme_id`, `scheme_desc`, `sch_id`, `max_amt_fin`, `min_amt_fin`, `min_int_rate`, `max_int_rate`, `min_tenure`, `max_tenure`, `tenure`, `min_irr`, `max_irr`, `scheme_start_date`, `scheme_end_date`, `lsm_lww_workflow_id_c`, `rest_fico_sch_flag`, `created_at`, `updated_at`, `node`, `loan_type`, `product_flag`) VALUES
(1, 6329, 'PRAGATI MBL-PLUS', 314, 1050000, 100000, 8, 36, 12, 120, 120, 0, 45, '2018-12-27 05:24:29', '2019-11-28 14:40:51', 'HL_FICO_WFL', 'Y', '2018-12-27 00:00:00', '2018-12-27 00:00:00', 'LAP', 'M', 'LAP'),
(2, 5509, 'PRAGATI MICRO BUSINESS LOAN - SECURED', 314, 1050000, 200000, 10, 36, 12, 120, 240, 0, 45, '2018-12-28 08:37:32', '2020-06-01 20:21:09', 'HL_FICO_WFL', 'Y', '2018-12-27 00:00:00', '2018-12-27 00:00:00', 'LAP', 'M', 'LAP'),
(3, 5307, 'PRAGATI MBL–UPTO 5 LACS REGISTERED GPA DELHI', 314, 525000, 200000, 10, 36, 12, 48, 48, 0, 45, '2018-12-28 10:29:29', '2019-05-04 05:10:44', 'HL_FICO_WFL', 'Y', '2018-12-27 00:00:00', '2018-12-27 00:00:00', 'LAP', 'M', 'LAP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mbl_master_lap`
--
ALTER TABLE `mbl_master_lap`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mbl_master_lap`
--
ALTER TABLE `mbl_master_lap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
