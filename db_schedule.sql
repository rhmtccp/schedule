-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 02:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_schedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dept_colors`
--

CREATE TABLE `tbl_dept_colors` (
  `id_dept` int(7) NOT NULL,
  `departement` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `textColor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dept_colors`
--

INSERT INTO `tbl_dept_colors` (`id_dept`, `departement`, `color`, `textColor`) VALUES
(1, 'TECHNICAL SUPPORT', '#000099\r\n', '#ffffff'),
(2, 'MARKETING SUPPORT', '#cc0000', '#ffffff'),
(3, 'IT', '#000000', '#ffffff'),
(4, 'HRD', '#ff9933', '#000000'),
(5, 'GENERAL', '#663300', '#ffffff'),
(6, 'FINANCE', '#006600', '#ffffff'),
(7, 'DATA MANAGEMENT', '#ffff66', '#000000'),
(8, 'CLAIM', '#cc0099', '#ffffff'),
(9, 'GA', '#666633', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id_event` int(7) NOT NULL,
  `venue` varchar(20) NOT NULL,
  `title` varchar(256) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `user_created` varchar(16) NOT NULL,
  `dept_created` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id_event`, `venue`, `title`, `start`, `end`, `user_created`, `dept_created`, `deleted`) VALUES
(37, 'MAIN', 'Meeting Internal', '2020-12-31 08:00:00', '2020-12-31 09:00:00', 'RAHMAT', 'IT', 1),
(38, 'SMALL', 'Infra Report', '2021-01-02 14:00:00', '2021-01-02 14:00:00', 'RAHMAT', 'IT', 1),
(39, 'MAIN', 'Developer vs DM', '2021-01-03 09:00:00', '2021-01-03 11:30:00', 'IRFAN', 'IT', 0),
(40, 'MAIN', 'Monthly Meeting', '2021-01-14 10:00:00', '2021-01-14 12:00:00', 'LIM', 'IT', 0),
(41, 'DIVISION', 'Bug Testing', '2021-01-08 16:00:00', '2021-01-08 17:00:00', 'LIM', 'IT', 0),
(42, 'DIVISION', 'Internal Meeting', '2021-01-06 09:00:00', '2021-01-06 10:00:00', 'CATUR', 'DATA MANAGEMENT', 0),
(43, 'MAIN', 'Meeting w MAG', '2020-12-31 10:00:00', '2020-12-31 11:00:00', 'CATUR', 'DATA MANAGEMENT', 0),
(44, 'MAIN', 'Meeting w SIMAS', '2021-01-02 08:30:00', '2021-01-02 10:00:00', 'CATUR', 'DATA MANAGEMENT', 0),
(45, 'DIVISION', 'Cek Kartu Kawan Lama', '2021-01-10 09:00:00', '2021-01-10 14:00:00', 'NAILI', 'DATA MANAGEMENT', 0),
(46, 'DIVISION', 'Cek Kartu AIA', '2021-01-15 09:00:00', '2021-01-15 09:45:00', 'NAILI', 'DATA MANAGEMENT', 0),
(47, 'SMALL', 'Zoom Meeting', '2021-01-07 14:00:00', '2021-01-07 16:00:00', 'NAILI', 'DATA MANAGEMENT', 0),
(48, 'MAIN', 'Meeting w SIMAS', '2020-12-31 11:00:00', '2020-12-31 12:00:00', 'GITA', 'TECHNICAL SUPPORT', 0),
(49, 'MAIN', 'Meeting w MAG', '2021-01-01 16:00:00', '2021-01-01 17:30:00', 'GITA', 'TECHNICAL SUPPORT', 0),
(50, 'DIVISION', 'Bedah Polis AXA', '2021-01-16 09:00:00', '2021-01-16 12:00:00', 'GAYUT', 'TECHNICAL SUPPORT', 0),
(51, 'SMALL', 'Webex Meeting', '2021-01-09 09:30:00', '2021-01-09 11:00:00', 'GAYUT', 'TECHNICAL SUPPORT', 1),
(52, 'MAIN', 'Sosialisasi Tudung', '2020-12-31 13:00:00', '2020-12-31 15:00:00', 'ANISA', 'CLAIM', 0),
(53, 'MAIN', 'Sosialisasi Kawan Lama', '2021-01-07 08:30:00', '2021-01-07 12:00:00', 'ANISA', 'CLAIM', 0),
(54, 'SMALL', 'Internal Meeting', '2021-01-10 16:00:00', '2021-01-10 17:00:00', 'ANISA', 'CLAIM', 0),
(55, 'DIVISION', 'Bahas COVID', '2021-01-17 09:00:00', '2021-01-17 14:00:00', 'APRI', 'CLAIM', 0),
(56, 'MAIN', 'Meeting IH', '2020-12-31 15:00:00', '2020-12-31 16:00:00', 'RIA', 'MARKETING SUPPORT', 0),
(57, 'MAIN', 'Weekly Meeting', '2021-01-03 12:00:00', '2021-01-03 17:00:00', 'RIA', 'MARKETING SUPPORT', 0),
(58, 'SMALL', 'Zoom Meeting', '2021-01-09 10:00:00', '2021-01-09 12:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(59, 'SMALL', 'Weekly Meetingsas', '2021-01-13 09:00:00', '2021-01-13 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(60, 'SMALL', 'Meeting Talento', '2021-01-06 09:00:00', '2021-01-06 12:00:00', 'NELLY', 'HRD', 0),
(61, 'MAIN', 'Meeting HR', '2021-01-02 13:00:00', '2021-01-02 15:00:00', 'NELLY', 'HRD', 0),
(62, 'MAIN', 'Meeting Internal', '2021-01-10 14:00:00', '2021-01-10 15:00:00', 'CYNDI', 'FINANCE', 0),
(63, 'DIVISION', 'Meeting Internal', '2021-01-15 10:00:00', '2021-01-15 12:00:00', 'CYNDI', 'FINANCE', 0),
(64, 'SMALL', 'Pajak', '2021-01-07 10:00:00', '2021-01-07 11:00:00', 'HASAN', 'FINANCE', 0),
(65, 'MAIN', 'Cek Pos', '2020-12-31 16:00:00', '2020-12-31 17:00:00', 'MONICA', 'GA', 0),
(66, 'MAIN', 'Cek Pos', '2021-01-09 11:00:00', '2021-01-09 12:00:00', 'MONICA', 'GA', 0),
(67, 'MAIN', 'Internal Meeting', '2021-01-08 09:00:00', '2021-01-08 12:00:00', 'SONYA', 'GENERAL', 0),
(68, 'DIVISION', 'Internal Meeting', '2021-01-16 14:00:00', '2021-01-16 15:00:00', 'SONYA', 'GENERAL', 0),
(69, 'MAIN', 'Claim Internal', '2021-01-06 08:30:00', '2021-01-06 10:00:00', 'APRI', 'CLAIM', 1),
(70, 'DIVISION', 'Potlak', '2021-02-03 15:00:00', '2021-02-03 17:30:00', 'GAYUT', 'TECHNICAL SUPPORT', 0),
(71, 'SMALL', 'Weekly Meetingx', '2021-01-15 09:00:00', '2021-01-15 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(72, 'SMALL', 'Weekly Meeting', '2021-01-15 09:00:00', '2021-01-15 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(73, '', 'Weekly Meetingsx', '2021-01-15 09:00:00', '2021-01-15 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(74, '', 'Weekly Meeting', '2021-01-14 09:00:00', '2021-01-14 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(75, 'SMALL', 'Weekly Meetingsd', '2021-01-14 09:00:00', '2021-01-14 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(76, 'SMALL', 'Weekly Meetingsx', '2021-01-14 09:00:00', '2021-01-14 11:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(77, 'SMALL', 'sdaa', '2021-01-13 09:00:00', '2021-01-13 13:30:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(78, 'MARKETING SUPPORT', 'xxxx', '2021-01-04 04:00:00', '2021-01-04 13:00:00', 'MIKHA', 'MARKETING SUPPORT', 1),
(79, 'SMALL', 'csdffff', '2021-01-14 09:00:00', '2021-01-14 13:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(80, 'SMALL', 'xxx', '2021-01-15 09:00:00', '2021-01-15 13:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(81, 'SMALL', 'asdasd', '2021-01-12 04:00:00', '2021-01-12 08:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(82, 'MARKETING SUPPORT', 'xccxc', '2021-01-05 09:00:00', '2021-01-05 13:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(83, 'MARKETING SUPPORT', 'sadasd', '2021-01-06 09:00:00', '2021-01-06 10:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(84, 'MAIN', 'sdsad', '2021-01-08 13:00:00', '2021-01-08 14:00:00', 'MIKHA', 'MARKETING SUPPORT', 0),
(85, 'MAIN', 'meeting itx', '2021-01-04 04:00:00', '2021-01-04 08:00:00', 'RAHMAT', 'IT', 0),
(86, 'MAIN', 'testing x', '2021-01-05 09:00:00', '2021-01-05 10:00:00', 'RAHMAT', 'IT', 0),
(87, 'SMALL', 'xxx tes', '2021-01-08 09:00:00', '2021-01-08 11:00:00', 'RAHMAT', 'IT', 0),
(88, 'IT', 'RAKERNAS', '2021-01-22 08:00:00', '2021-01-23 17:00:00', 'RAHMAT', 'IT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(7) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(256) NOT NULL,
  `department` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `username`, `password`, `department`, `deleted`) VALUES
(1, 'rahmat', '81dc9bdb52d04dc20036dbd8313ed055', 'IT', 0),
(2, 'lim', '81dc9bdb52d04dc20036dbd8313ed055', 'IT', 0),
(3, 'fredryk', '81dc9bdb52d04dc20036dbd8313ed055', 'IT', 0),
(4, 'richard', '81dc9bdb52d04dc20036dbd8313ed055', 'IT', 0),
(5, 'irfan', '81dc9bdb52d04dc20036dbd8313ed055', 'IT', 0),
(6, 'aldi', '81dc9bdb52d04dc20036dbd8313ed055', 'IT', 0),
(7, 'catur', '81dc9bdb52d04dc20036dbd8313ed055', 'DATA MANAGEMENT', 0),
(8, 'naili', '81dc9bdb52d04dc20036dbd8313ed055', 'DATA MANAGEMENT', 0),
(9, 'daniel', '81dc9bdb52d04dc20036dbd8313ed055', 'DATA MANAGEMENT', 0),
(10, 'nabila', '81dc9bdb52d04dc20036dbd8313ed055', 'DATA MANAGEMENT', 0),
(11, 'gita', '81dc9bdb52d04dc20036dbd8313ed055', 'TECHNICAL SUPPORT', 0),
(12, 'gayut', '81dc9bdb52d04dc20036dbd8313ed055', 'TECHNICAL SUPPORT', 0),
(13, 'dina', '81dc9bdb52d04dc20036dbd8313ed055', 'TECHNICAL SUPPORT', 0),
(14, 'sharon', '81dc9bdb52d04dc20036dbd8313ed055', 'TECHNICAL SUPPORT', 0),
(15, 'ria', '81dc9bdb52d04dc20036dbd8313ed055', 'MARKETING SUPPORT', 0),
(16, 'mikha', '81dc9bdb52d04dc20036dbd8313ed055', 'MARKETING SUPPORT', 0),
(17, 'dwi', '81dc9bdb52d04dc20036dbd8313ed055', 'MARKETING SUPPORT', 0),
(18, 'ariell', '81dc9bdb52d04dc20036dbd8313ed055', 'MARKETING SUPPORT', 0),
(19, 'arnold', '81dc9bdb52d04dc20036dbd8313ed055', 'GENERAL', 0),
(20, 'sonya', '81dc9bdb52d04dc20036dbd8313ed055', 'GENERAL', 0),
(21, 'wiwik', '81dc9bdb52d04dc20036dbd8313ed055', 'GENERAL', 0),
(22, 'kiel', '81dc9bdb52d04dc20036dbd8313ed055', 'GENERAL', 0),
(23, 'linda', '81dc9bdb52d04dc20036dbd8313ed055', 'FINANCE', 0),
(24, 'stephanie', '81dc9bdb52d04dc20036dbd8313ed055', 'FINANCE', 0),
(25, 'cyndi', '81dc9bdb52d04dc20036dbd8313ed055', 'FINANCE', 0),
(26, 'hasan', '81dc9bdb52d04dc20036dbd8313ed055', 'FINANCE', 0),
(27, 'monica', '81dc9bdb52d04dc20036dbd8313ed055', 'GA', 0),
(28, 'nelly', '81dc9bdb52d04dc20036dbd8313ed055', 'HRD', 0),
(29, 'anisa', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(30, 'dokden', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(31, 'dokber', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(32, 'apri', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(33, 'tanti', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(34, 'nandhi', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(35, 'verna', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(36, 'yusep', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(37, 'amar', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(38, 'reza', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(39, 'sony', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(40, 'hari', '81dc9bdb52d04dc20036dbd8313ed055', 'CLAIM', 0),
(41, 'rahmat', '81dc9bdb52d04dc20036dbd8313ed055', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dept_colors`
--
ALTER TABLE `tbl_dept_colors`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dept_colors`
--
ALTER TABLE `tbl_dept_colors`
  MODIFY `id_dept` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id_event` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
