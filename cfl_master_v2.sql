-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2019 at 03:09 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capital_first_uat_2802`
--

-- --------------------------------------------------------

--
-- Table structure for table `cfl_master_v2`
--

CREATE TABLE `cfl_master_v2` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cfl_master_v2`
--

INSERT INTO `cfl_master_v2` (`id`, `type`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'DOC_TYPE_NAME', 'OTHERS', 'NA', '2019-01-28 00:00:00', '2019-01-28 00:00:00'),
(2, 'DOC_TYPE_NAME', 'PAN', 'NA', '2019-01-29 00:00:00', '2019-01-29 00:00:00'),
(3, 'DOC_TYPE_NAME', 'AADHAAR', 'NA', '2019-01-29 00:00:00', '2019-01-29 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cfl_master_v2`
--
ALTER TABLE `cfl_master_v2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cfl_master_v2`
--
ALTER TABLE `cfl_master_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
