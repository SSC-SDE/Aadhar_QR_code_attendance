-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2020 at 10:43 PM
-- Server version: 10.2.33-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `development_db_cam`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `mac_id` varchar(600) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `mac_id`, `date`) VALUES
(1, '0A-00-27-00-00-1E', '2020-04-04 16:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `log_in_log`
--

CREATE TABLE `log_in_log` (
  `id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `user_id` varchar(500) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_in_log`
--

INSERT INTO `log_in_log` (`id`, `table_id`, `user_id`, `date`) VALUES
(1, 1, 'drake0306', '2020-04-04 15:59:40'),
(2, 2, 'demo123', '2020-04-04 16:02:35'),
(3, 2, 'demo123', '2020-04-04 16:03:07'),
(4, 1, 'drake0306', '2020-04-04 16:20:14'),
(5, 1, 'drake0306', '2020-04-04 18:10:58'),
(6, 1, 'drake0306', '2020-04-13 07:47:46'),
(7, 1, 'drake0306', '2020-04-14 08:11:03'),
(8, 1, 'drake0306', '2020-04-14 09:40:02'),
(9, 2, 'demo123', '2020-04-14 10:21:33'),
(10, 1, 'drake0306', '2020-04-14 10:30:00'),
(11, 1, 'drake0306', '2020-04-15 07:53:05'),
(12, 2, 'demo123', '2020-04-15 08:08:50'),
(13, 1, 'drake0306', '2020-04-15 08:09:50'),
(14, 1, 'drake0306', '2020-04-15 08:40:33'),
(15, 2, 'demo123', '2020-04-15 08:45:07'),
(16, 1, 'drake0306', '2020-04-15 08:49:11'),
(17, 2, 'demo123', '2020-04-15 08:58:25'),
(18, 1, 'drake0306', '2020-04-15 09:13:59'),
(19, 1, 'drake0306', '2020-04-16 06:17:12'),
(20, 9, 'drake123456', '2020-04-16 08:55:04'),
(21, 1, 'drake0306', '2020-04-16 09:02:58'),
(22, 10, 'dummy1', '2020-04-16 09:04:45'),
(23, 1, 'drake0306', '2020-04-16 09:09:19'),
(24, 1, 'drake0306', '2020-04-17 04:35:15'),
(25, 2, 'demo123', '2020-04-17 04:40:03'),
(26, 1, 'drake0306', '2020-04-17 07:32:40'),
(27, 1, 'drake0306', '2020-04-17 07:32:52'),
(28, 1, 'drake0306', '2020-04-17 07:36:16'),
(29, 1, 'drake0306', '2020-04-17 07:37:08'),
(30, 2, 'demo123', '2020-04-17 07:38:02'),
(31, 1, 'drake0306', '2020-04-17 07:42:10'),
(32, 1, 'drake0306', '2020-04-17 07:43:35'),
(33, 1, 'drake0306', '2020-04-17 07:44:17'),
(34, 1, 'drake0306', '2020-04-17 07:46:16'),
(35, 1, 'drake0306', '2020-04-17 07:46:17'),
(36, 1, 'drake0306', '2020-04-17 07:47:41'),
(37, 1, 'drake0306', '2020-04-17 07:47:59'),
(38, 1, 'drake0306', '2020-04-17 07:50:07'),
(39, 1, 'drake0306', '2020-04-17 07:54:28'),
(40, 1, 'drake0306', '2020-04-18 12:16:16'),
(41, 1, 'drake0306', '2020-04-19 12:59:20'),
(42, 1, 'admin', '2020-04-19 13:14:34'),
(43, 2, 'demo123', '2020-04-24 19:37:00'),
(44, 1, 'admin', '2020-04-29 13:09:43'),
(45, 1, 'admin', '2020-04-29 13:20:15'),
(46, 1, 'admin', '2020-05-02 17:27:39'),
(47, 1, 'admin', '2020-06-09 05:52:16'),
(48, 1, 'admin', '2020-06-09 14:28:39'),
(49, 1, 'admin', '2020-07-29 12:09:28'),
(50, 1, 'admin', '2020-07-29 12:52:28'),
(51, 1, 'admin', '2020-07-29 14:00:19'),
(52, 1, 'admin', '2020-07-31 13:35:10'),
(53, 1, 'admin', '2020-08-25 06:46:59'),
(54, 1, 'admin', '2020-08-25 06:47:38'),
(55, 1, 'admin', '2020-08-25 15:52:17'),
(56, 1, 'admin', '2020-08-25 16:04:11'),
(57, 1, 'admin', '2020-09-21 11:01:38'),
(58, 1, 'admin', '2020-09-27 14:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `no_of_visit`
--

CREATE TABLE `no_of_visit` (
  `id` int(11) NOT NULL,
  `uid` varchar(500) DEFAULT NULL,
  `visitor_id` varchar(500) DEFAULT NULL,
  `in_or_out` varchar(500) DEFAULT NULL,
  `visit_reason` longtext DEFAULT NULL,
  `company_details` varchar(500) DEFAULT NULL,
  `company_address` varchar(500) DEFAULT NULL,
  `company_website` varchar(500) DEFAULT NULL,
  `company_mobile` varchar(500) DEFAULT NULL,
  `whome_to_meet` varchar(500) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `department` varchar(500) DEFAULT NULL,
  `company_email` varchar(500) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `in_out` datetime DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `out_time` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_of_visit`
--

INSERT INTO `no_of_visit` (`id`, `uid`, `visitor_id`, `in_or_out`, `visit_reason`, `company_details`, `company_address`, `company_website`, `company_mobile`, `whome_to_meet`, `details`, `department`, `company_email`, `designation`, `created_at`, `in_out`, `in_time`, `image`, `out_time`) VALUES
(29, '382154172012', '15', NULL, 'work', 'Microsoft', 'laldhi,ghatshila,near panchayat bhavan', 'www', '08084342203', 'Satinal nandlala', 'work', NULL, 'www', 'CEO', '2020-03-24 16:46:09', '0000-00-00 00:00:00', '2020-03-24 04:46:09', NULL, NULL),
(31, '382154172012', '15', NULL, 'work', 'Microsoft', 'laldhi,ghatshila,near panchayat bhavan', 'www', '08084342203', 'Satinal nandlala', 'work', NULL, 'www', 'CEO', '2020-03-24 18:09:44', '0000-00-00 00:00:00', '2020-03-24 06:09:44', NULL, NULL),
(32, '382154172012', '15', NULL, 'work', 'Microsoft', 'laldhi,ghatshila,near panchayat bhavan', 'www', '08084342203', 'Satinal nandlala', 'work', NULL, 'www', 'CEO', '2020-03-24 18:10:38', '0000-00-00 00:00:00', '2020-03-24 06:10:38', NULL, NULL),
(33, '247780532648', '16', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', '1970', '08084342203', 'Satinal nandlala', 'work', NULL, 'danroy48@gmail.com', 'CEO', '2020-03-25 12:11:42', '0000-00-00 00:00:00', '2020-03-25 12:11:42', NULL, NULL),
(34, '247780532648', '16', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', '1970', '08084342203', 'Satinal nandlala', 'work', NULL, 'danroy48@gmail.com', 'CEO', '2020-03-25 12:12:23', '0000-00-00 00:00:00', '2020-03-25 12:12:23', NULL, NULL),
(35, '247780532648', '16', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', '1970', '08084342203', 'Satinal nandlala', 'work', NULL, 'danroy48@gmail.com', 'CEO', '2020-03-25 12:15:51', '0000-00-00 00:00:00', '2020-03-25 12:15:51', NULL, NULL),
(36, '247780532648', '16', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', '1970', '08084342203', 'Satinal nandlala', 'work', NULL, 'danroy48@gmail.com', 'CEO', '2020-03-25 12:16:40', '0000-00-00 00:00:00', '2020-03-25 12:16:40', NULL, NULL),
(37, '247780532648', '16', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', '1970', '08084342203', 'Satinal nandlala', 'work', NULL, 'danroy48@gmail.com', 'CEO', '2020-03-25 12:18:21', '0000-00-00 00:00:00', '2020-03-25 12:18:21', '5e7b4d155bc22.png', NULL),
(38, '382154172012', '15', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', '1964', '08084342203', 'Satinal nandlala', 'work', NULL, 'danroy48@gmail.com', 'CEO', '2020-03-25 12:41:12', '0000-00-00 00:00:00', '2020-03-25 12:41:12', '5e7b52289ffbb.png', NULL),
(39, '382154172012', '15', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', NULL, NULL, 'Satinal nandlala', 'work', NULL, NULL, 'CEO', '2020-03-25 12:47:32', '0000-00-00 00:00:00', '2020-03-25 12:47:32', '5e7b59313fc37.png', NULL),
(40, '382154172012', '15', NULL, 'work', '1964', 'LALDIH', NULL, NULL, 'Satinal nandlala', 'work', NULL, NULL, 'CEO', '2020-03-25 16:22:15', '0000-00-00 00:00:00', '2020-03-25 04:22:15', '5e7b954a5e129.png', NULL),
(41, '247780532648', '16', NULL, 'work', '1970', 'LALDIH', NULL, NULL, 'Satinal nandlala', 'work', NULL, NULL, 'CEO', '2020-03-31 07:38:34', '2020-03-31 07:44:35', '2020-03-31 07:38:34', '5e82f386f3285.png', NULL),
(42, '382154172012', '15', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', NULL, NULL, 'Satinal nandlala', 'work', NULL, 'danroy48@hotmail.com', 'CEO', '2020-04-13 08:21:30', '2020-04-13 00:00:00', '2020-04-13 08:21:30', '5e958c70efcfa.png', NULL),
(43, '382154172012', '15', NULL, 'work', '1997', 'laldhi,ghatshila,near panchayat bhavan', NULL, '08084342203', 'Satinal nandlala', 'work', 'CEO Office', 'danroy48@hotmail.com', 'CEO', '2020-04-13 08:27:33', '2020-04-13 00:00:00', '2020-04-13 08:27:33', '5e958b46915f5.png', NULL),
(44, '382154172012', '15', NULL, 'work for home info', 'FORD', 'laldhi,ghatshila,near panchayat bhavan', 'www.lication.com', '08084342203', 'Sam', 'work for home info', 'head of department of motors', 'famestar0306@gmail.com', 'cheaf exiutive', '2020-04-14 10:54:55', '0000-00-00 00:00:00', '2020-04-14 10:54:55', '5e959c560a8c5.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `edit_in_out` int(11) DEFAULT NULL,
  `read_in_out` int(11) DEFAULT NULL,
  `delete_in_out` int(11) DEFAULT NULL,
  `read_visitor` int(11) DEFAULT NULL,
  `edit_visitor` int(11) DEFAULT NULL,
  `delete_visitor` int(11) DEFAULT NULL,
  `in_entry` int(11) DEFAULT NULL,
  `out_entry` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `user_id`, `edit_in_out`, `read_in_out`, `delete_in_out`, `read_visitor`, `edit_visitor`, `delete_visitor`, `in_entry`, `out_entry`, `created_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-04-13 18:30:00'),
(2, 2, 0, 1, 0, 1, 0, 0, 1, 0, '2020-04-13 18:30:00'),
(3, 9, 0, 0, 0, 1, 1, 0, 1, 1, '2020-04-16 08:54:31'),
(4, 10, 1, 1, 0, 0, 0, 0, 1, 1, '2020-04-16 09:04:22'),
(5, 11, 1, 1, 0, 1, 0, 0, 1, 1, '2020-04-29 13:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `edit_in_out` int(11) DEFAULT 0,
  `read_in_out` int(11) DEFAULT 0,
  `delete_in_out` int(11) DEFAULT 0,
  `read_visitor` int(11) DEFAULT 0,
  `edit_visitor` int(11) DEFAULT 0,
  `delete_visitor` int(11) DEFAULT 0,
  `in_entry` int(11) DEFAULT 0,
  `out_entry` int(11) DEFAULT 0,
  `updatet_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `edit_in_out`, `read_in_out`, `delete_in_out`, `read_visitor`, `edit_visitor`, `delete_visitor`, `in_entry`, `out_entry`, `updatet_at`, `created_at`) VALUES
(6, 'Guard', 1, 1, 0, 1, 1, 0, 1, 1, NULL, '2020-04-16 07:34:20'),
(7, 'head', 1, 1, 0, 1, 0, 0, 1, 1, NULL, '2020-04-16 07:34:46'),
(9, 'sub head', 0, 0, 0, 1, 1, 0, 1, 1, NULL, '2020-04-16 07:36:42'),
(10, 'audit', 1, 1, 0, 0, 0, 0, 1, 1, NULL, '2020-04-16 09:03:52'),
(11, 'Admin', 1, 1, 0, 1, 1, 0, 1, 0, NULL, '2020-04-29 13:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `user_id` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `user_id`, `password`, `type`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin123', 0, '0000-00-00 00:00:00'),
(2, 'demo', 'demo123', '123456', 1, '0000-00-00 00:00:00'),
(9, 'drake', 'drake123456', 'drake123456', 1, '2020-04-16 08:54:31'),
(10, 'test dummy', 'dummy1', 'dummy123', 1, '2020-04-16 09:04:22'),
(11, 'Debasish Upadhyay', 'deba1234', 'deba1234', 1, '2020-04-29 13:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `uid` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `gender` varchar(256) DEFAULT NULL,
  `yob` date DEFAULT NULL,
  `co` varchar(500) DEFAULT NULL,
  `house` varchar(500) DEFAULT NULL,
  `street` varchar(500) DEFAULT NULL,
  `lm` longtext DEFAULT NULL,
  `vtc` varchar(500) DEFAULT NULL,
  `po` varchar(500) DEFAULT NULL,
  `dist` varchar(500) DEFAULT NULL,
  `state` varchar(500) DEFAULT NULL,
  `mobile_no` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `company_details` varchar(500) DEFAULT NULL,
  `company_address` varchar(500) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `company_website` varchar(500) DEFAULT NULL,
  `company_email` varchar(500) DEFAULT NULL,
  `company_mobile` varchar(500) DEFAULT NULL,
  `whome_to_meet` varchar(500) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `department` varchar(500) DEFAULT NULL,
  `pc` varchar(500) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `uid`, `name`, `gender`, `yob`, `co`, `house`, `street`, `lm`, `vtc`, `po`, `dist`, `state`, `mobile_no`, `email`, `company_details`, `company_address`, `designation`, `company_website`, `company_email`, `company_mobile`, `whome_to_meet`, `details`, `department`, `pc`, `created_date`) VALUES
(15, '382154172012', 'Abhinav Roy', 'M', '1997-09-30', NULL, '116 GOURI VILLA LALDIH NEAR PANCHAYAT BHAWAN Ghatshila Purbi Singhbhum Jharkhand', NULL, NULL, NULL, NULL, NULL, NULL, '7903826151', 'danroy48@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-24 16:46:09'),
(16, '247780532648', 'Purnima Roy', 'F', '1667-09-09', NULL, 'LALDIH', NULL, NULL, NULL, NULL, NULL, NULL, '7903826151', 'donaroy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-25 12:11:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_in_log`
--
ALTER TABLE `log_in_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `no_of_visit`
--
ALTER TABLE `no_of_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_in_log`
--
ALTER TABLE `log_in_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `no_of_visit`
--
ALTER TABLE `no_of_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
