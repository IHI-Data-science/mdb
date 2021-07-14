-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2019 at 05:22 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iebsweb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `16_audit_trail`
--

CREATE TABLE `16_audit_trail` (
  `auditsen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auditfr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auditformtype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `audituser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auditdate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auditaction` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auditdetail` varchar(350) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_audit_trail`
--

INSERT INTO `16_audit_trail` (`auditsen`, `auditfr`, `auditformtype`, `audituser`, `auditdate`, `auditaction`, `auditdetail`) VALUES
('2', '1', '1', 'skiware', 'September 1, 2015 8:25:pm  ', 'Updated', 'ME: Old value..,New value..'),
('2', '2', '1', 'skiware', 'September 1, 2015 8:28:pm  ', 'Updated', 'ME: Old value..,New value..'),
('2', '3', '1', 'skiware', 'September 1, 2015 8:28:pm  ', 'Deleted', 'Wrongly Entered'),
('2', '4', '1', 'skiware', 'September 1, 2015 8:28:pm  ', 'Deleted', 'Was Duplicate'),
('2', '5', '2', 'skiware', 'September 1, 2015 8:29:pm  ', 'Updated', 'N: Old value..,New value..'),
('2', '5', '2', 'skiware', 'September 1, 2015 8:29:pm  ', 'Updated', 'ME: Old value..,New value..');

-- --------------------------------------------------------

--
-- Table structure for table `16_bodypart`
--

CREATE TABLE `16_bodypart` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_cluster`
--

CREATE TABLE `16_cluster` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cr` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_cluster`
--

INSERT INTO `16_cluster` (`id`, `number`, `cr`) VALUES
(1, '1', 'cr1'),
(2, '2', 'cr2');

-- --------------------------------------------------------

--
-- Table structure for table `16_colonycode`
--

CREATE TABLE `16_colonycode` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_compound`
--

CREATE TABLE `16_compound` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_compound`
--

INSERT INTO `16_compound` (`id`, `number`, `cp`) VALUES
(1, '1', 'cp1'),
(2, '2', 'cp2');

-- --------------------------------------------------------

--
-- Table structure for table `16_custgraph`
--

CREATE TABLE `16_custgraph` (
  `id` int(11) NOT NULL,
  `pc` int(11) NOT NULL,
  `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num_split` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `p_attri` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `p_attri2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_custgraph`
--

INSERT INTO `16_custgraph` (`id`, `pc`, `location`, `num_split`, `p_attri`, `p_attri2`) VALUES
(1, 16, 'home', '2', 'ea,me', 'Enumeration area (EA),Method (ME)'),
(2, 16, 'summary', '5', 'mps,fmcm,fmcd,mpss,gsas', 'Mosquito Population Summary (MPS),Female Mosquito Caught vs Month (FMCM),Female Mosquito Caught vs Date (FMCD),Mosquito Population Summary vs site (MPSS),An. Gambiae SAS status (GSAS)');

-- --------------------------------------------------------

--
-- Table structure for table `16_custlabel`
--

CREATE TABLE `16_custlabel` (
  `id` int(11) NOT NULL,
  `pc` int(11) NOT NULL,
  `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num_split` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `p_attri` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `p_attri2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_custlabel`
--

INSERT INTO `16_custlabel` (`id`, `pc`, `location`, `num_split`, `p_attri`, `p_attri2`) VALUES
(3, 16, 'home', '5', 'me,ind,ea,cr,cp', 'Method (ME),Indoor (IND),Enumeration area (EA),Cluster (CR),Compound or plot (CP)');

-- --------------------------------------------------------

--
-- Table structure for table `16_ed1`
--

CREATE TABLE `16_ed1` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to SS',
  `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for ED1 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dt` date NOT NULL COMMENT 'date of collection (morning on which the mosquitoes were collected)',
  `ea` int(20) DEFAULT '0' COMMENT 'Enumaration area (Define geographic location within the study site)',
  `cr` bigint(13) DEFAULT '0' COMMENT 'Cluster (The smallest geographic statistical unit within enumaration area)',
  `cp` int(2) DEFAULT '0' COMMENT 'Compound or Plot (A specific physical area within an identifiable owner)',
  `tcu` bigint(11) DEFAULT '-99' COMMENT 'Hold Ten Cell Unit',
  `hh` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT 'Household (A person or group of people who live together in the same dwelling unit)',
  `sid` int(2) DEFAULT '0' COMMENT 'Structure ID (A free standing building that can have one or more room for residential or commercial use)',
  `me` int(3) NOT NULL DEFAULT '-99' COMMENT 'Method (The method by which the mosquitoes were collected or trapped)',
  `ind` int(1) NOT NULL COMMENT 'hold collection was made indoors a house or hut',
  `htr` int(3) DEFAULT NULL COMMENT 'Habitat Type (Classification of the aquatic habitat in which the collection was made)',
  `st` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Start Time (The time that the collection started in 24 time )',
  `ft` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Finish Time (The time that the collection finish in 24 time)',
  `hp` int(4) DEFAULT NULL COMMENT 'Hold Period (The period of time for which the mosquitoes were held for survival analysis after they were collected)',
  `dd` int(1) DEFAULT NULL COMMENT 'Dead Sorting classification of mosquitoes used to facilitate',
  `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
  `blk` int(3) DEFAULT '-99' COMMENT 'Block (A set of position through which treatments are rotated in a Latin)',
  `shh` varchar(200) COLLATE utf8_unicode_ci DEFAULT '-99' COMMENT 'A project specific house or experiment hut',
  `stn` int(3) DEFAULT '-99' COMMENT 'A project specific where station where a trap may be positioned',
  `vi` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Initial of person that caught the mosquitoes',
  `tr` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Treatment (Coding for the unique experimental treatment)',
  `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
  `hs` varchar(300) COLLATE utf8_unicode_ci DEFAULT '-99' COMMENT 'Number of household sampled',
  `vc` int(1) NOT NULL DEFAULT '2' COMMENT 'Legitimacy of the collection',
  `notes` text COLLATE utf8_unicode_ci COMMENT 'On site observation about the collection',
  `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
  `livestock` int(11) NOT NULL,
  `hoccupant` int(11) NOT NULL,
  `heaves` int(11) NOT NULL,
  `nss` int(11) NOT NULL,
  `nbh` int(11) NOT NULL,
  `oth` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_ed1`
--

INSERT INTO `16_ed1` (`id`, `projectregsite_id`, `sen`, `fr`, `dt`, `ea`, `cr`, `cp`, `tcu`, `hh`, `sid`, `me`, `ind`, `htr`, `st`, `ft`, `hp`, `dd`, `rnd`, `blk`, `shh`, `stn`, `vi`, `tr`, `dy`, `hs`, `vc`, `notes`, `dsen`, `livestock`, `hoccupant`, `heaves`, `nss`, `nbh`, `oth`, `created_at`) VALUES
(33, 19, 1, 3, '2019-01-07', 0, 0, 0, -99, '10', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 4, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(34, 19, 1, 4, '2019-01-07', 0, 0, 0, -99, '11', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 5, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(35, 19, 1, 5, '2019-01-07', 0, 0, 0, -99, '11', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 6, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(36, 19, 1, 6, '2019-01-07', 0, 0, 0, -99, '11', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 7, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(37, 19, 1, 7, '2019-01-07', 0, 0, 0, -99, '12', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 8, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(38, 19, 1, 8, '2019-01-07', 0, 0, 0, -99, '12', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 9, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(39, 19, 1, 9, '2019-01-07', 0, 0, 0, -99, '12', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 10, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(31, 19, 2, 1, '2019-01-07', 0, 0, 0, -99, '10', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 2, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(32, 19, 2, 2, '2019-01-07', 0, 0, 0, -99, '10', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 1, '-99', 1, NULL, 3, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(40, 19, 11, 1, '2019-01-08', 0, 0, 0, -99, '10', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 12, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(41, 19, 11, 2, '2019-01-08', 0, 0, 0, -99, '10', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 13, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(42, 19, 11, 3, '2019-01-08', 0, 0, 0, -99, '10', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 14, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(43, 19, 11, 4, '2019-01-08', 0, 0, 0, -99, '11', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 15, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(44, 19, 11, 5, '2019-01-08', 0, 0, 0, -99, '11', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 16, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(45, 19, 11, 6, '2019-01-08', 0, 0, 0, -99, '11', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 17, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(46, 19, 11, 7, '2019-01-08', 0, 0, 0, -99, '12', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 18, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(47, 19, 11, 8, '2019-01-08', 0, 0, 0, -99, '12', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 19, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(48, 19, 11, 9, '2019-01-08', 0, 0, 0, -99, '12', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 2, '-99', 1, NULL, 20, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(49, 19, 21, 1, '2019-01-09', 0, 0, 0, -99, '10', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 22, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(50, 19, 21, 2, '2019-01-09', 0, 0, 0, -99, '10', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 23, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(51, 19, 21, 3, '2019-01-09', 0, 0, 0, -99, '10', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 24, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(52, 19, 21, 4, '2019-01-09', 0, 0, 0, -99, '11', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 25, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(53, 19, 21, 5, '2019-01-09', 0, 0, 0, -99, '11', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 26, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(54, 19, 21, 6, '2019-01-09', 0, 0, 0, -99, '11', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 27, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(55, 19, 21, 7, '2019-01-09', 0, 0, 0, -99, '12', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 28, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(56, 19, 21, 8, '2019-01-09', 0, 0, 0, -99, '12', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 29, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(57, 19, 21, 9, '2019-01-09', 0, 0, 0, -99, '12', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 3, '-99', 1, NULL, 30, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(58, 19, 31, 1, '2019-01-10', 0, 0, 0, -99, '10', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 32, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(59, 19, 31, 2, '2019-01-10', 0, 0, 0, -99, '10', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 33, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(60, 19, 31, 3, '2019-01-10', 0, 0, 0, -99, '10', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 34, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(61, 19, 31, 4, '2019-01-10', 0, 0, 0, -99, '11', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 35, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(62, 19, 31, 5, '2019-01-10', 0, 0, 0, -99, '11', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 36, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(63, 19, 31, 6, '2019-01-10', 0, 0, 0, -99, '11', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 37, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(64, 19, 31, 7, '2019-01-10', 0, 0, 0, -99, '12', 0, 3, 1, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 38, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(65, 19, 31, 8, '2019-01-10', 0, 0, 0, -99, '12', 0, 3, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 39, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(66, 19, 31, 9, '2019-01-10', 0, 0, 0, -99, '12', 0, 4, 2, NULL, '1800', '0600', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, 4, '-99', 1, NULL, 40, 0, 0, 0, 0, 0, 0, '2019-01-14 19:18:43'),
(1, 19, 16781, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 4, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16782, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(2, 19, 16781, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 4, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16783, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(3, 19, 16781, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 4, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16784, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(4, 19, 16785, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 18, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16786, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(5, 19, 16785, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 18, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16787, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(6, 19, 16785, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16788, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(7, 19, 16933, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16934, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(8, 19, 16933, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16935, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(9, 19, 16933, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16936, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(10, 19, 16937, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16938, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(11, 19, 16937, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16939, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(12, 19, 16937, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16940, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(13, 19, 16941, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16942, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(14, 19, 16941, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16943, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(15, 19, 16941, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16944, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(16, 19, 16945, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16946, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(17, 19, 16945, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16947, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(18, 19, 16945, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 16948, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(19, 19, 131010, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131011, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(20, 19, 131010, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131012, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(21, 19, 131010, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131013, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(22, 19, 131014, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131015, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(23, 19, 131014, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131016, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(24, 19, 131014, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131017, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(25, 19, 131018, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131019, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(26, 19, 131018, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131020, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(27, 19, 131018, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131021, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(28, 19, 131022, 1, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131023, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(29, 19, 131022, 2, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131024, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41'),
(30, 19, 131022, 3, '0000-00-00', 0, 0, 0, -99, '0', 0, 3, 1, NULL, '1800', '1900', NULL, NULL, -99, -99, '-99', -99, NULL, NULL, -99, '-99', 1, NULL, 131025, 0, 0, 0, 0, 0, 0, '2019-01-07 12:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `16_ed1template`
--

CREATE TABLE `16_ed1template` (
  `id` int(11) NOT NULL,
  `sen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ea` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tcu` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hh` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `me` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ind` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ft` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rnd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blk` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shh` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stn` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vi` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dy` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hs` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `dsen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_ed2`
--

CREATE TABLE `16_ed2` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to SS',
  `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id (Foreign Key)',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for ED2 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `ssen` int(10) DEFAULT '-99',
  `sfr` int(4) DEFAULT '-99',
  `slc` int(14) DEFAULT '-99',
  `sbp` int(8) DEFAULT '-99',
  `sst` int(8) DEFAULT '-99',
  `ssid` int(8) DEFAULT '-99',
  `scc` int(8) DEFAULT '-99',
  `stx` int(3) NOT NULL DEFAULT '-99' COMMENT 'Store taxon code foreign key from Taxon table',
  `ssas` int(3) NOT NULL DEFAULT '-99' COMMENT 'Store sex code foreign key from SexAbdominal table',
  `ag` int(2) DEFAULT '-99',
  `n` int(10) NOT NULL COMMENT 'Store number of mosqutoes caught',
  `sd` varchar(10) COLLATE utf8_unicode_ci DEFAULT '-99' COMMENT 'started date of the experiment',
  `st` int(4) DEFAULT '-99' COMMENT 'started time of the experiment',
  `tr` int(3) DEFAULT '-99' COMMENT 'Treatment (Coding for the unique experimental treatment)',
  `vi` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'NA' COMMENT 'Initial of person that caught the mosquitoes',
  `rep` int(3) DEFAULT '-99' COMMENT 'The unique identifier for each individual replicate included in the experiment',
  `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
  `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
  `oth1` int(11) DEFAULT '-99' COMMENT 'Other Any additional experimental details',
  `oth2` int(11) DEFAULT '-99' COMMENT 'Pther Any additional experimental details',
  `oth3` int(11) DEFAULT '-99' COMMENT 'Pther Any additional experimental details',
  `va` int(1) NOT NULL COMMENT 'Valid Assay Legitimacy of the experimental assay',
  `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_ed2`
--

INSERT INTO `16_ed2` (`id`, `projectregsite_id`, `sen`, `fr`, `ssen`, `sfr`, `slc`, `sbp`, `sst`, `ssid`, `scc`, `stx`, `ssas`, `ag`, `n`, `sd`, `st`, `tr`, `vi`, `rep`, `rnd`, `dy`, `oth1`, `oth2`, `oth3`, `va`, `dsen`, `created_at`) VALUES
(1, 19, 16781, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/31/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16782, '2019-01-07 08:37:48'),
(2, 19, 16781, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/31/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16783, '2019-01-07 08:37:48'),
(3, 19, 16781, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/31/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16784, '2019-01-07 08:37:48'),
(4, 19, 16785, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/01/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16786, '2019-01-07 08:37:48'),
(5, 19, 16785, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/01/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16787, '2019-01-07 08:37:48'),
(6, 19, 16785, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/01/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16788, '2019-01-07 08:37:48'),
(7, 19, 16933, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/02/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16934, '2019-01-07 08:37:48'),
(8, 19, 16933, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/02/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16935, '2019-01-07 08:37:48'),
(9, 19, 16933, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/02/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16936, '2019-01-07 08:37:48'),
(10, 19, 16937, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/03/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16938, '2019-01-07 08:37:48'),
(11, 19, 16937, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/03/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16939, '2019-01-07 08:37:48'),
(12, 19, 16937, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/03/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16940, '2019-01-07 08:37:48'),
(13, 19, 16941, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/04/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16942, '2019-01-07 08:37:48'),
(14, 19, 16941, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/04/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16943, '2019-01-07 08:37:48'),
(15, 19, 16941, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/04/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16944, '2019-01-07 08:37:48'),
(16, 19, 16945, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/05/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16946, '2019-01-07 08:37:48'),
(17, 19, 16945, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/05/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16947, '2019-01-07 08:37:48'),
(18, 19, 16945, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/05/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 16948, '2019-01-07 08:37:48'),
(19, 19, 131010, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/29/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131011, '2019-01-07 08:37:48'),
(20, 19, 131010, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/29/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131012, '2019-01-07 08:37:48'),
(21, 19, 131010, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/29/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131013, '2019-01-07 08:37:48'),
(22, 19, 131014, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/30/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131015, '2019-01-07 08:37:48'),
(23, 19, 131014, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/30/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131016, '2019-01-07 08:37:48'),
(24, 19, 131014, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '08/30/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131017, '2019-01-07 08:37:48'),
(25, 19, 131018, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/06/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131019, '2019-01-07 08:37:48'),
(26, 19, 131018, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/06/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131020, '2019-01-07 08:37:48'),
(27, 19, 131018, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/06/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131021, '2019-01-07 08:37:48'),
(28, 19, 131022, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/07/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131023, '2019-01-07 08:37:48'),
(29, 19, 131022, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/07/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131024, '2019-01-07 08:37:48'),
(30, 19, 131022, 3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '09/07/2016', 1800, -99, 'NA', -99, -99, -99, -99, -99, -99, 0, 131025, '2019-01-07 08:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `16_ed2template`
--

CREATE TABLE `16_ed2template` (
  `id` int(11) NOT NULL,
  `sen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sbp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sst` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssas` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ag` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vi` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rnd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dy` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth1` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth2` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth3` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `va` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dsen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_edss`
--

CREATE TABLE `16_edss` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to EDSS',
  `ed1id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from Ed1',
  `ed2id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from  Ed2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `16_edss`
--

INSERT INTO `16_edss` (`id`, `ed1id`, `ed2id`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, NULL),
(4, 4, NULL),
(5, 5, NULL),
(6, 6, NULL),
(7, 7, NULL),
(8, 8, NULL),
(9, 9, NULL),
(10, 10, NULL),
(11, 11, NULL),
(12, 12, NULL),
(13, 13, NULL),
(14, 14, NULL),
(15, 15, NULL),
(16, 16, NULL),
(17, 17, NULL),
(18, 18, NULL),
(19, 19, NULL),
(20, 20, NULL),
(21, 21, NULL),
(22, 22, NULL),
(23, 23, NULL),
(24, 24, NULL),
(25, 25, NULL),
(26, 26, NULL),
(27, 27, NULL),
(28, 28, NULL),
(29, 29, NULL),
(30, 30, NULL),
(31, 31, NULL),
(32, 32, NULL),
(33, 33, NULL),
(34, 34, NULL),
(35, 35, NULL),
(36, 36, NULL),
(37, 37, NULL),
(38, 38, NULL),
(39, 39, NULL),
(40, 40, NULL),
(41, 41, NULL),
(42, 42, NULL),
(43, 43, NULL),
(44, 44, NULL),
(45, 45, NULL),
(46, 46, NULL),
(47, 47, NULL),
(48, 48, NULL),
(49, 49, NULL),
(50, 50, NULL),
(51, 51, NULL),
(52, 52, NULL),
(53, 53, NULL),
(54, 54, NULL),
(55, 55, NULL),
(56, 56, NULL),
(57, 57, NULL),
(58, 58, NULL),
(59, 59, NULL),
(60, 60, NULL),
(61, 61, NULL),
(62, 62, NULL),
(63, 63, NULL),
(64, 64, NULL),
(65, 65, NULL),
(66, 66, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `16_enumerationarea`
--

CREATE TABLE `16_enumerationarea` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ea` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_enumerationarea`
--

INSERT INTO `16_enumerationarea` (`id`, `number`, `ea`) VALUES
(1, '1', 'ea1'),
(2, '2', 'ea2');

-- --------------------------------------------------------

--
-- Table structure for table `16_fs2`
--

CREATE TABLE `16_fs2` (
  `projectregsite_id` int(10) DEFAULT NULL,
  `sen` int(10) NOT NULL COMMENT 'serial number',
  `fr` int(10) DEFAULT NULL COMMENT 'form row',
  `ssen` int(10) NOT NULL COMMENT 'Box & form serial no',
  `ns` int(10) DEFAULT NULL COMMENT 'no of samples',
  `fst` char(5) DEFAULT NULL COMMENT 'storage temp',
  `ff` int(10) DEFAULT NULL COMMENT 'crate freezer/fridge no',
  `rcn` int(10) DEFAULT NULL COMMENT 'rack or carton number'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `16_habitattype`
--

CREATE TABLE `16_habitattype` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `htr` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_habitattype`
--

INSERT INTO `16_habitattype` (`id`, `number`, `htr`) VALUES
(1, '1', 'ht1'),
(2, '2', 'ht2');

-- --------------------------------------------------------

--
-- Table structure for table `16_location`
--

CREATE TABLE `16_location` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ind` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_location`
--

INSERT INTO `16_location` (`id`, `number`, `ind`) VALUES
(1, '1', 'In'),
(2, '2', 'Out');

-- --------------------------------------------------------

--
-- Table structure for table `16_method`
--

CREATE TABLE `16_method` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `me` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_method`
--

INSERT INTO `16_method` (`id`, `number`, `me`) VALUES
(1, '1', 'HLC'),
(2, '2', 'ITT'),
(3, '3', 'CDC'),
(4, '4', 'RB'),
(5, '5', 'ERS'),
(6, '6', 'Floor'),
(7, '7', 'Entry window'),
(8, '8', 'Entry eave'),
(9, '9', 'Entry'),
(10, '10', 'Exit window'),
(11, '11', 'Exit eave'),
(12, '12', 'Exit'),
(13, '13', 'Dip'),
(14, '14', 'Sub'),
(15, '15', 'Em'),
(16, '16', 'Ovi'),
(17, '17', 'EG'),
(18, '18', 'DN');

-- --------------------------------------------------------

--
-- Table structure for table `16_replicate`
--

CREATE TABLE `16_replicate` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_sas`
--

CREATE TABLE `16_sas` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_so1`
--

CREATE TABLE `16_so1` (
  `id_` int(11) NOT NULL COMMENT 'Hold data which is auto increment',
  `sssoid` int(11) NOT NULL,
  `sen` int(11) NOT NULL,
  `ssen` int(11) NOT NULL,
  `sfr` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `rc` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sbf` int(11) DEFAULT NULL,
  `sslc` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sst` int(11) NOT NULL,
  `ssid` int(11) NOT NULL,
  `stx` int(11) DEFAULT NULL,
  `species` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `kdr` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `pf` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `pv` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `po` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `pm` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `human` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `chicken` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `goat` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `bovine` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `dog` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `cat` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `rat` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `bps` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_so1`
--

INSERT INTO `16_so1` (`id_`, `sssoid`, `sen`, `ssen`, `sfr`, `fr`, `rc`, `sbf`, `sslc`, `sst`, `ssid`, `stx`, `species`, `kdr`, `pf`, `pv`, `po`, `pm`, `human`, `chicken`, `goat`, `bovine`, `dog`, `cat`, `rat`, `bps`, `created_at`) VALUES
(31, 1, 2002, 16782, 2, 3, '4', 5, '6', 7, 1, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(1, 1, 2002, 16782, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(32, 2, 2003, 16783, 2, 3, '4', 5, '6', 7, 2, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(2, 2, 2003, 16783, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(33, 3, 2004, 16784, 2, 3, '4', 5, '6', 7, 3, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(3, 3, 2004, 16784, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(34, 4, 2005, 16786, 2, 3, '4', 5, '6', 7, 4, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(4, 4, 2005, 16786, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(35, 5, 2006, 16787, 2, 3, '4', 5, '6', 7, 5, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(5, 5, 2006, 16787, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(36, 6, 2007, 16788, 2, 3, '4', 5, '6', 7, 6, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(6, 6, 2007, 16788, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(37, 7, 2008, 16934, 2, 3, '4', 5, '6', 7, 7, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(7, 7, 2008, 16934, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(8, 8, 2009, 16935, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(9, 9, 2010, 16936, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(39, 9, 2010, 16936, 2, 3, '4', 5, '6', 7, 9, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(10, 10, 2011, 16938, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(11, 11, 2012, 16939, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(12, 12, 2013, 16940, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(13, 13, 2014, 16942, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(14, 14, 2015, 16943, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(15, 15, 2016, 16944, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(16, 16, 2017, 16946, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(17, 17, 2018, 16947, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(18, 18, 2019, 16948, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(19, 19, 2020, 131011, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(20, 20, 2021, 131012, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(21, 21, 2022, 131013, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(22, 22, 2023, 131015, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(23, 23, 2024, 131016, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(24, 24, 2025, 131017, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(25, 25, 2026, 131019, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(26, 26, 2027, 131020, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(27, 27, 2028, 131021, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(28, 28, 2029, 131023, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(29, 29, 2030, 131024, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21'),
(30, 30, 2031, 131025, 2, 3, '4', 5, '6', 7, 8, 9, '10', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', 'NRQ', '11', '2019-01-07 09:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `16_so2`
--

CREATE TABLE `16_so2` (
  `id_` int(11) NOT NULL COMMENT 'Hold data which is auto increment',
  `sssoid` int(11) NOT NULL,
  `sen` int(11) NOT NULL,
  `ssen` int(11) NOT NULL,
  `sfr` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `sbf` int(11) DEFAULT NULL,
  `sslc` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sst` int(11) NOT NULL,
  `ssid` int(11) NOT NULL,
  `stx` int(11) DEFAULT NULL,
  `ssas` int(11) DEFAULT NULL,
  `ms` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `pr` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `inf` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `os` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `wl` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `bps` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'NRQ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_so2`
--

INSERT INTO `16_so2` (`id_`, `sssoid`, `sen`, `ssen`, `sfr`, `fr`, `sbf`, `sslc`, `sst`, `ssid`, `stx`, `ssas`, `ms`, `pr`, `inf`, `os`, `wl`, `bps`, `created_at`) VALUES
(1, 1, 2002, 16782, 2, 3, 4, '5', 6, 1, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(31, 1, 2002, 16782, 2, 3, 4, '5', 6, 31, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(2, 2, 2003, 16783, 2, 3, 4, '5', 6, 2, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(32, 2, 2003, 16783, 2, 3, 4, '5', 6, 32, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(3, 3, 2004, 16784, 2, 3, 4, '5', 6, 3, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(33, 3, 2004, 16784, 2, 3, 4, '5', 6, 33, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(4, 4, 2005, 16786, 2, 3, 4, '5', 6, 4, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(34, 4, 2005, 16786, 2, 3, 4, '5', 6, 34, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(5, 5, 2006, 16787, 2, 3, 4, '5', 6, 5, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(35, 5, 2006, 16787, 2, 3, 4, '5', 6, 35, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(6, 6, 2007, 16788, 2, 3, 4, '5', 6, 6, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(36, 6, 2007, 16788, 2, 3, 4, '5', 6, 36, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(7, 7, 2008, 16934, 2, 3, 4, '5', 6, 7, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(37, 7, 2008, 16934, 2, 3, 4, '5', 6, 37, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(8, 8, 2009, 16935, 2, 3, 4, '5', 6, 8, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(38, 8, 2009, 16935, 2, 3, 4, '5', 6, 38, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(9, 9, 2010, 16936, 2, 3, 4, '5', 6, 9, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(39, 9, 2010, 16936, 2, 3, 4, '5', 6, 39, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(10, 10, 2011, 16938, 2, 3, 4, '5', 6, 10, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(11, 11, 2012, 16939, 2, 3, 4, '5', 6, 11, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(12, 12, 2013, 16940, 2, 3, 4, '5', 6, 12, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(13, 13, 2014, 16942, 2, 3, 4, '5', 6, 13, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(14, 14, 2015, 16943, 2, 3, 4, '5', 6, 14, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(15, 15, 2016, 16944, 2, 3, 4, '5', 6, 15, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(16, 16, 2017, 16946, 2, 3, 4, '5', 6, 16, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(17, 17, 2018, 16947, 2, 3, 4, '5', 6, 17, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(18, 18, 2019, 16948, 2, 3, 4, '5', 6, 18, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(19, 19, 2020, 131011, 2, 3, 4, '5', 6, 19, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(20, 20, 2021, 131012, 2, 3, 4, '5', 6, 20, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(21, 21, 2022, 131013, 2, 3, 4, '5', 6, 21, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(22, 22, 2023, 131015, 2, 3, 4, '5', 6, 22, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(23, 23, 2024, 131016, 2, 3, 4, '5', 6, 23, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(24, 24, 2025, 131017, 2, 3, 4, '5', 6, 24, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(25, 25, 2026, 131019, 2, 3, 4, '5', 6, 25, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(26, 26, 2027, 131020, 2, 3, 4, '5', 6, 26, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(27, 27, 2028, 131021, 2, 3, 4, '5', 6, 27, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(28, 28, 2029, 131023, 2, 3, 4, '5', 6, 28, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(29, 29, 2030, 131024, 2, 3, 4, '5', 6, 29, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53'),
(30, 30, 2031, 131025, 2, 3, 4, '5', 6, 30, 8, 9, '10', '11', '12', '13', '14', '15', '2019-01-07 09:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `16_sost`
--

CREATE TABLE `16_sost` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `so1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
  `so2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
  `so3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `16_ss1`
--

CREATE TABLE `16_ss1` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `bf` int(3) DEFAULT '1' COMMENT 'body part (The body type of the sample)',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `tx` int(3) NOT NULL COMMENT 'taxon identification number',
  `sas` int(3) NOT NULL COMMENT 'sex and abdominal status',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `notes` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'NA',
  `slc` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'NA',
  `st` int(4) DEFAULT '0' COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
  `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',
  `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `senfr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_ss1`
--

INSERT INTO `16_ss1` (`id`, `edssid`, `sen`, `ssen`, `sfr`, `bf`, `fr`, `tx`, `sas`, `n`, `notes`, `slc`, `st`, `ni`, `nb`, `sid01`, `sid02`, `sid03`, `sid04`, `sid05`, `sid06`, `sid07`, `nd`, `senfr`, `created_at`) VALUES
(1, 1, 16782, 16781, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 167822, '2019-01-05 14:19:28'),
(2, 2, 16783, 16781, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 167832, '2019-01-05 14:19:28'),
(3, 3, 16784, 16781, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 167842, '2019-01-05 14:19:28'),
(4, 4, 16786, 16785, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 167862, '2019-01-05 14:19:28'),
(5, 5, 16787, 16785, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 167872, '2019-01-05 14:19:28'),
(6, 6, 16788, 16785, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 167882, '2019-01-05 14:19:28'),
(7, 7, 16934, 16933, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169342, '2019-01-05 14:19:28'),
(8, 8, 16935, 16933, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169352, '2019-01-05 14:19:28'),
(9, 9, 16936, 16933, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169362, '2019-01-05 14:19:28'),
(10, 10, 16938, 16937, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169382, '2019-01-05 14:19:28'),
(11, 11, 16939, 16937, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169392, '2019-01-05 14:19:28'),
(12, 12, 16940, 16937, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169402, '2019-01-05 14:19:28'),
(13, 13, 16942, 16941, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169422, '2019-01-05 14:19:28'),
(14, 14, 16943, 16941, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169432, '2019-01-05 14:19:28'),
(15, 15, 16944, 16941, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169442, '2019-01-05 14:19:28'),
(16, 16, 16946, 16945, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169462, '2019-01-05 14:19:28'),
(17, 17, 16947, 16945, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169472, '2019-01-05 14:19:28'),
(18, 18, 16948, 16945, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 169482, '2019-01-05 14:19:29'),
(19, 19, 131011, 131010, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310112, '2019-01-05 14:19:29'),
(20, 20, 131012, 131010, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310122, '2019-01-05 14:19:29'),
(21, 21, 131013, 131010, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310132, '2019-01-05 14:19:29'),
(22, 22, 131015, 131014, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310152, '2019-01-05 14:19:29'),
(23, 23, 131016, 131014, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310162, '2019-01-05 14:19:29'),
(24, 24, 131017, 131014, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310172, '2019-01-05 14:19:29'),
(25, 25, 131019, 131018, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310192, '2019-01-05 14:19:29'),
(26, 26, 131020, 131018, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310202, '2019-01-05 14:19:29'),
(27, 27, 131021, 131018, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310212, '2019-01-05 14:19:29'),
(28, 28, 131023, 131022, 1, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310232, '2019-01-05 14:19:29'),
(29, 29, 131024, 131022, 2, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310242, '2019-01-05 14:19:29'),
(30, 30, 131025, 131022, 3, 1, 2, 3, 4, 5, '6', '7', 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, 12, 1310252, '2019-01-05 14:19:29'),
(31, 31, 2, 1, 1, 1, 1, 1, 1, 1, 'NA', 'NA', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, '2019-01-14 19:21:10'),
(32, 31, 2, 1, 1, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, '2019-01-14 19:21:10'),
(33, 31, 2, 1, 1, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, '2019-01-14 19:21:10'),
(34, 31, 2, 1, 1, 1, 4, 1, 4, 4, 'NA', 'NA', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, '2019-01-14 19:21:10'),
(35, 31, 2, 1, 1, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2019-01-14 19:21:10'),
(36, 31, 2, 1, 1, 1, 6, 1, 6, 7, 'NA', 'NA', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, '2019-01-14 19:21:10'),
(37, 31, 2, 1, 1, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, '2019-01-14 19:21:10'),
(38, 31, 2, 1, 1, 1, 8, 2, 2, 1, 'NA', 'NA', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, '2019-01-14 19:21:10'),
(39, 31, 2, 1, 1, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, '2019-01-14 19:21:10'),
(40, 31, 2, 1, 1, 1, 10, 2, 4, 1, 'NA', 'NA', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, '2019-01-14 19:21:10'),
(41, 31, 2, 1, 1, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, '2019-01-14 19:21:10'),
(42, 31, 2, 1, 1, 1, 12, 2, 6, 2, 'NA', 'NA', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, '2019-01-14 19:21:10'),
(43, 31, 2, 1, 1, 1, 37, 50, 1, 6, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 237, '2019-01-14 19:21:10'),
(44, 31, 2, 1, 1, 1, 38, 50, 6, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 238, '2019-01-14 19:21:10'),
(45, 32, 3, 1, 2, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 31, '2019-01-14 19:21:10'),
(46, 32, 3, 1, 2, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 32, '2019-01-14 19:21:10'),
(47, 32, 3, 1, 2, 1, 3, 1, 3, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, '2019-01-14 19:21:10'),
(48, 32, 3, 1, 2, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 34, '2019-01-14 19:21:10'),
(49, 32, 3, 1, 2, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 35, '2019-01-14 19:21:10'),
(50, 32, 3, 1, 2, 1, 6, 1, 6, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 36, '2019-01-14 19:21:10'),
(51, 32, 3, 1, 2, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, '2019-01-14 19:21:10'),
(52, 32, 3, 1, 2, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 38, '2019-01-14 19:21:10'),
(53, 32, 3, 1, 2, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 39, '2019-01-14 19:21:10'),
(54, 32, 3, 1, 2, 1, 10, 2, 4, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 310, '2019-01-14 19:21:10'),
(55, 32, 3, 1, 2, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 311, '2019-01-14 19:21:10'),
(56, 32, 3, 1, 2, 1, 12, 2, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 312, '2019-01-14 19:21:10'),
(57, 32, 3, 1, 2, 1, 37, 50, 1, 1, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 337, '2019-01-14 19:21:10'),
(58, 32, 3, 1, 2, 1, 38, 50, 6, 7, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 338, '2019-01-14 19:21:10'),
(59, 33, 4, 1, 3, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 41, '2019-01-14 19:21:10'),
(60, 33, 4, 1, 3, 1, 2, 1, 2, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 42, '2019-01-14 19:21:10'),
(61, 33, 4, 1, 3, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, '2019-01-14 19:21:10'),
(62, 33, 4, 1, 3, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, '2019-01-14 19:21:10'),
(63, 33, 4, 1, 3, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 45, '2019-01-14 19:21:10'),
(64, 33, 4, 1, 3, 1, 6, 1, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 46, '2019-01-14 19:21:10'),
(65, 33, 4, 1, 3, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, '2019-01-14 19:21:10'),
(66, 33, 4, 1, 3, 1, 8, 2, 2, 7, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, '2019-01-14 19:21:10'),
(67, 33, 4, 1, 3, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 49, '2019-01-14 19:21:10'),
(68, 33, 4, 1, 3, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 410, '2019-01-14 19:21:10'),
(69, 33, 4, 1, 3, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 411, '2019-01-14 19:21:10'),
(70, 33, 4, 1, 3, 1, 12, 2, 6, 7, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 412, '2019-01-14 19:21:10'),
(71, 33, 4, 1, 3, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 437, '2019-01-14 19:21:10'),
(72, 33, 4, 1, 3, 1, 38, 50, 6, 6, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 438, '2019-01-14 19:21:10'),
(73, 34, 5, 1, 4, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, '2019-01-14 19:21:10'),
(74, 34, 5, 1, 4, 1, 2, 1, 2, 12, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, '2019-01-14 19:21:10'),
(75, 34, 5, 1, 4, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 53, '2019-01-14 19:21:10'),
(76, 34, 5, 1, 4, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 54, '2019-01-14 19:21:10'),
(77, 34, 5, 1, 4, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, '2019-01-14 19:21:10'),
(78, 34, 5, 1, 4, 1, 6, 1, 6, 12, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, '2019-01-14 19:21:10'),
(79, 34, 5, 1, 4, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 57, '2019-01-14 19:21:10'),
(80, 34, 5, 1, 4, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 58, '2019-01-14 19:21:10'),
(81, 34, 5, 1, 4, 1, 9, 2, 3, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 59, '2019-01-14 19:21:10'),
(82, 34, 5, 1, 4, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 510, '2019-01-14 19:21:10'),
(83, 34, 5, 1, 4, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 511, '2019-01-14 19:21:10'),
(84, 34, 5, 1, 4, 1, 12, 2, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 512, '2019-01-14 19:21:10'),
(85, 34, 5, 1, 4, 1, 37, 50, 1, 7, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 537, '2019-01-14 19:21:10'),
(86, 34, 5, 1, 4, 1, 38, 50, 6, 6, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 538, '2019-01-14 19:21:10'),
(87, 35, 6, 1, 5, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 61, '2019-01-14 19:21:10'),
(88, 35, 6, 1, 5, 1, 2, 1, 2, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 62, '2019-01-14 19:21:10'),
(89, 35, 6, 1, 5, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 63, '2019-01-14 19:21:10'),
(90, 35, 6, 1, 5, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 64, '2019-01-14 19:21:10'),
(91, 35, 6, 1, 5, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 65, '2019-01-14 19:21:10'),
(92, 35, 6, 1, 5, 1, 6, 1, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 66, '2019-01-14 19:21:10'),
(93, 35, 6, 1, 5, 1, 7, 2, 1, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, '2019-01-14 19:21:10'),
(94, 35, 6, 1, 5, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, '2019-01-14 19:21:10'),
(95, 35, 6, 1, 5, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 69, '2019-01-14 19:21:10'),
(96, 35, 6, 1, 5, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 610, '2019-01-14 19:21:10'),
(97, 35, 6, 1, 5, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 611, '2019-01-14 19:21:10'),
(98, 35, 6, 1, 5, 1, 12, 2, 6, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, '2019-01-14 19:21:10'),
(99, 35, 6, 1, 5, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 637, '2019-01-14 19:21:10'),
(100, 35, 6, 1, 5, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 638, '2019-01-14 19:21:10'),
(101, 36, 7, 1, 6, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 71, '2019-01-14 19:21:10'),
(102, 36, 7, 1, 6, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 72, '2019-01-14 19:21:10'),
(103, 36, 7, 1, 6, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 73, '2019-01-14 19:21:10'),
(104, 36, 7, 1, 6, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 74, '2019-01-14 19:21:10'),
(105, 36, 7, 1, 6, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, '2019-01-14 19:21:10'),
(106, 36, 7, 1, 6, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, '2019-01-14 19:21:10'),
(107, 36, 7, 1, 6, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 77, '2019-01-14 19:21:10'),
(108, 36, 7, 1, 6, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 78, '2019-01-14 19:21:10'),
(109, 36, 7, 1, 6, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, '2019-01-14 19:21:10'),
(110, 36, 7, 1, 6, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, '2019-01-14 19:21:10'),
(111, 36, 7, 1, 6, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 711, '2019-01-14 19:21:10'),
(112, 36, 7, 1, 6, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, '2019-01-14 19:21:10'),
(113, 36, 7, 1, 6, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 737, '2019-01-14 19:21:10'),
(114, 36, 7, 1, 6, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 738, '2019-01-14 19:21:10'),
(115, 37, 8, 1, 7, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, '2019-01-14 19:21:10'),
(116, 37, 8, 1, 7, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, '2019-01-14 19:21:10'),
(117, 37, 8, 1, 7, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, '2019-01-14 19:21:10'),
(118, 37, 8, 1, 7, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, '2019-01-14 19:21:10'),
(119, 37, 8, 1, 7, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, '2019-01-14 19:21:10'),
(120, 37, 8, 1, 7, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, '2019-01-14 19:21:10'),
(121, 37, 8, 1, 7, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, '2019-01-14 19:21:10'),
(122, 37, 8, 1, 7, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, '2019-01-14 19:21:10'),
(123, 37, 8, 1, 7, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, '2019-01-14 19:21:10'),
(124, 37, 8, 1, 7, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 810, '2019-01-14 19:21:10'),
(125, 37, 8, 1, 7, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 811, '2019-01-14 19:21:10'),
(126, 37, 8, 1, 7, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 812, '2019-01-14 19:21:10'),
(127, 37, 8, 1, 7, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 837, '2019-01-14 19:21:10'),
(128, 37, 8, 1, 7, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 838, '2019-01-14 19:21:10'),
(129, 38, 9, 1, 8, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, '2019-01-14 19:21:10'),
(130, 38, 9, 1, 8, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, '2019-01-14 19:21:10'),
(131, 38, 9, 1, 8, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, '2019-01-14 19:21:10'),
(132, 38, 9, 1, 8, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, '2019-01-14 19:21:10'),
(133, 38, 9, 1, 8, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, '2019-01-14 19:21:10'),
(134, 38, 9, 1, 8, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, '2019-01-14 19:21:10'),
(135, 38, 9, 1, 8, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, '2019-01-14 19:21:10'),
(136, 38, 9, 1, 8, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, '2019-01-14 19:21:10'),
(137, 38, 9, 1, 8, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, '2019-01-14 19:21:10'),
(138, 38, 9, 1, 8, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, '2019-01-14 19:21:10'),
(139, 38, 9, 1, 8, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 911, '2019-01-14 19:21:10'),
(140, 38, 9, 1, 8, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 912, '2019-01-14 19:21:10'),
(141, 38, 9, 1, 8, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 937, '2019-01-14 19:21:10'),
(142, 38, 9, 1, 8, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 938, '2019-01-14 19:21:10'),
(143, 39, 10, 1, 9, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, '2019-01-14 19:21:10'),
(144, 39, 10, 1, 9, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, '2019-01-14 19:21:10'),
(145, 39, 10, 1, 9, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, '2019-01-14 19:21:10'),
(146, 39, 10, 1, 9, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, '2019-01-14 19:21:10'),
(147, 39, 10, 1, 9, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, '2019-01-14 19:21:10'),
(148, 39, 10, 1, 9, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, '2019-01-14 19:21:10'),
(149, 39, 10, 1, 9, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, '2019-01-14 19:21:10'),
(150, 39, 10, 1, 9, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, '2019-01-14 19:21:10'),
(151, 39, 10, 1, 9, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, '2019-01-14 19:21:10'),
(152, 39, 10, 1, 9, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, '2019-01-14 19:21:10'),
(153, 39, 10, 1, 9, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1011, '2019-01-14 19:21:10'),
(154, 39, 10, 1, 9, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1012, '2019-01-14 19:21:10'),
(155, 39, 10, 1, 9, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1037, '2019-01-14 19:21:10'),
(156, 39, 10, 1, 9, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1038, '2019-01-14 19:21:10'),
(157, 40, 12, 11, 1, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, '2019-01-14 19:21:10'),
(158, 40, 12, 11, 1, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, '2019-01-14 19:21:10'),
(159, 40, 12, 11, 1, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, '2019-01-14 19:21:10'),
(160, 40, 12, 11, 1, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, '2019-01-14 19:21:10'),
(161, 40, 12, 11, 1, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, '2019-01-14 19:21:10'),
(162, 40, 12, 11, 1, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, '2019-01-14 19:21:10'),
(163, 40, 12, 11, 1, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, '2019-01-14 19:21:10'),
(164, 40, 12, 11, 1, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, '2019-01-14 19:21:10'),
(165, 40, 12, 11, 1, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, '2019-01-14 19:21:10'),
(166, 40, 12, 11, 1, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, '2019-01-14 19:21:10'),
(167, 40, 12, 11, 1, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1211, '2019-01-14 19:21:10'),
(168, 40, 12, 11, 1, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1212, '2019-01-14 19:21:10'),
(169, 40, 12, 11, 1, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1237, '2019-01-14 19:21:10'),
(170, 40, 12, 11, 1, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1238, '2019-01-14 19:21:10'),
(171, 41, 13, 11, 2, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, '2019-01-14 19:21:10'),
(172, 41, 13, 11, 2, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, '2019-01-14 19:21:10'),
(173, 41, 13, 11, 2, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, '2019-01-14 19:21:10'),
(174, 41, 13, 11, 2, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 134, '2019-01-14 19:21:10'),
(175, 41, 13, 11, 2, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, '2019-01-14 19:21:10'),
(176, 41, 13, 11, 2, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, '2019-01-14 19:21:10'),
(177, 41, 13, 11, 2, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 137, '2019-01-14 19:21:10'),
(178, 41, 13, 11, 2, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, '2019-01-14 19:21:10'),
(179, 41, 13, 11, 2, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 139, '2019-01-14 19:21:10'),
(180, 41, 13, 11, 2, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1310, '2019-01-14 19:21:10'),
(181, 41, 13, 11, 2, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1311, '2019-01-14 19:21:10'),
(182, 41, 13, 11, 2, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1312, '2019-01-14 19:21:10'),
(183, 41, 13, 11, 2, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1337, '2019-01-14 19:21:10'),
(184, 41, 13, 11, 2, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1338, '2019-01-14 19:21:10'),
(185, 42, 14, 11, 3, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, '2019-01-14 19:21:10'),
(186, 42, 14, 11, 3, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, '2019-01-14 19:21:10'),
(187, 42, 14, 11, 3, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, '2019-01-14 19:21:10'),
(188, 42, 14, 11, 3, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, '2019-01-14 19:21:10'),
(189, 42, 14, 11, 3, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145, '2019-01-14 19:21:10'),
(190, 42, 14, 11, 3, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 146, '2019-01-14 19:21:10'),
(191, 42, 14, 11, 3, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, '2019-01-14 19:21:10'),
(192, 42, 14, 11, 3, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, '2019-01-14 19:21:10'),
(193, 42, 14, 11, 3, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, '2019-01-14 19:21:10'),
(194, 42, 14, 11, 3, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1410, '2019-01-14 19:21:10'),
(195, 42, 14, 11, 3, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1411, '2019-01-14 19:21:10'),
(196, 42, 14, 11, 3, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1412, '2019-01-14 19:21:10'),
(197, 42, 14, 11, 3, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1437, '2019-01-14 19:21:10'),
(198, 42, 14, 11, 3, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1438, '2019-01-14 19:21:10'),
(199, 43, 15, 11, 4, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 151, '2019-01-14 19:21:10'),
(200, 43, 15, 11, 4, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 152, '2019-01-14 19:21:10'),
(201, 43, 15, 11, 4, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153, '2019-01-14 19:21:10'),
(202, 43, 15, 11, 4, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, '2019-01-14 19:21:10'),
(203, 43, 15, 11, 4, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, '2019-01-14 19:21:10'),
(204, 43, 15, 11, 4, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, '2019-01-14 19:21:10'),
(205, 43, 15, 11, 4, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157, '2019-01-14 19:21:10'),
(206, 43, 15, 11, 4, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 158, '2019-01-14 19:21:10'),
(207, 43, 15, 11, 4, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 159, '2019-01-14 19:21:10'),
(208, 43, 15, 11, 4, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510, '2019-01-14 19:21:10'),
(209, 43, 15, 11, 4, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, '2019-01-14 19:21:10'),
(210, 43, 15, 11, 4, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1512, '2019-01-14 19:21:10'),
(211, 43, 15, 11, 4, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1537, '2019-01-14 19:21:10'),
(212, 43, 15, 11, 4, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1538, '2019-01-14 19:21:10'),
(213, 44, 16, 11, 5, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161, '2019-01-14 19:21:10'),
(214, 44, 16, 11, 5, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, '2019-01-14 19:21:10'),
(215, 44, 16, 11, 5, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163, '2019-01-14 19:21:10'),
(216, 44, 16, 11, 5, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, '2019-01-14 19:21:10'),
(217, 44, 16, 11, 5, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 165, '2019-01-14 19:21:10'),
(218, 44, 16, 11, 5, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, '2019-01-14 19:21:10'),
(219, 44, 16, 11, 5, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 167, '2019-01-14 19:21:10'),
(220, 44, 16, 11, 5, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168, '2019-01-14 19:21:10'),
(221, 44, 16, 11, 5, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, '2019-01-14 19:21:10'),
(222, 44, 16, 11, 5, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610, '2019-01-14 19:21:10'),
(223, 44, 16, 11, 5, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1611, '2019-01-14 19:21:10'),
(224, 44, 16, 11, 5, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1612, '2019-01-14 19:21:10'),
(225, 44, 16, 11, 5, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1637, '2019-01-14 19:21:10'),
(226, 44, 16, 11, 5, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1638, '2019-01-14 19:21:10'),
(227, 45, 17, 11, 6, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171, '2019-01-14 19:21:10'),
(228, 45, 17, 11, 6, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172, '2019-01-14 19:21:10'),
(229, 45, 17, 11, 6, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, '2019-01-14 19:21:10'),
(230, 45, 17, 11, 6, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, '2019-01-14 19:21:10'),
(231, 45, 17, 11, 6, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, '2019-01-14 19:21:10'),
(232, 45, 17, 11, 6, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, '2019-01-14 19:21:10'),
(233, 45, 17, 11, 6, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 177, '2019-01-14 19:21:10'),
(234, 45, 17, 11, 6, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 178, '2019-01-14 19:21:10'),
(235, 45, 17, 11, 6, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 179, '2019-01-14 19:21:10'),
(236, 45, 17, 11, 6, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1710, '2019-01-14 19:21:10'),
(237, 45, 17, 11, 6, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1711, '2019-01-14 19:21:10'),
(238, 45, 17, 11, 6, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1712, '2019-01-14 19:21:10'),
(239, 45, 17, 11, 6, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1737, '2019-01-14 19:21:10'),
(240, 45, 17, 11, 6, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1738, '2019-01-14 19:21:10'),
(241, 46, 18, 11, 7, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 181, '2019-01-14 19:21:10'),
(242, 46, 18, 11, 7, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 182, '2019-01-14 19:21:10'),
(243, 46, 18, 11, 7, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, '2019-01-14 19:21:10'),
(244, 46, 18, 11, 7, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 184, '2019-01-14 19:21:10'),
(245, 46, 18, 11, 7, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 185, '2019-01-14 19:21:10'),
(246, 46, 18, 11, 7, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186, '2019-01-14 19:21:10'),
(247, 46, 18, 11, 7, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187, '2019-01-14 19:21:10'),
(248, 46, 18, 11, 7, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188, '2019-01-14 19:21:10'),
(249, 46, 18, 11, 7, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189, '2019-01-14 19:21:10'),
(250, 46, 18, 11, 7, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1810, '2019-01-14 19:21:10'),
(251, 46, 18, 11, 7, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1811, '2019-01-14 19:21:10'),
(252, 46, 18, 11, 7, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1812, '2019-01-14 19:21:10'),
(253, 46, 18, 11, 7, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1837, '2019-01-14 19:21:10'),
(254, 46, 18, 11, 7, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1838, '2019-01-14 19:21:10'),
(255, 47, 19, 11, 8, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 191, '2019-01-14 19:21:10'),
(256, 47, 19, 11, 8, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, '2019-01-14 19:21:10'),
(257, 47, 19, 11, 8, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193, '2019-01-14 19:21:10'),
(258, 47, 19, 11, 8, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 194, '2019-01-14 19:21:10'),
(259, 47, 19, 11, 8, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195, '2019-01-14 19:21:11'),
(260, 47, 19, 11, 8, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, '2019-01-14 19:21:11'),
(261, 47, 19, 11, 8, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, '2019-01-14 19:21:11'),
(262, 47, 19, 11, 8, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, '2019-01-14 19:21:11'),
(263, 47, 19, 11, 8, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, '2019-01-14 19:21:11'),
(264, 47, 19, 11, 8, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1910, '2019-01-14 19:21:11'),
(265, 47, 19, 11, 8, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1911, '2019-01-14 19:21:11'),
(266, 47, 19, 11, 8, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1912, '2019-01-14 19:21:11'),
(267, 47, 19, 11, 8, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1937, '2019-01-14 19:21:11'),
(268, 47, 19, 11, 8, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1938, '2019-01-14 19:21:11'),
(269, 48, 20, 11, 9, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201, '2019-01-14 19:21:11'),
(270, 48, 20, 11, 9, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, '2019-01-14 19:21:11'),
(271, 48, 20, 11, 9, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203, '2019-01-14 19:21:11'),
(272, 48, 20, 11, 9, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204, '2019-01-14 19:21:11'),
(273, 48, 20, 11, 9, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, '2019-01-14 19:21:11'),
(274, 48, 20, 11, 9, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, '2019-01-14 19:21:11'),
(275, 48, 20, 11, 9, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, '2019-01-14 19:21:11'),
(276, 48, 20, 11, 9, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, '2019-01-14 19:21:11'),
(277, 48, 20, 11, 9, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, '2019-01-14 19:21:11'),
(278, 48, 20, 11, 9, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2010, '2019-01-14 19:21:11'),
(279, 48, 20, 11, 9, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2011, '2019-01-14 19:21:11'),
(280, 48, 20, 11, 9, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2012, '2019-01-14 19:21:11'),
(281, 48, 20, 11, 9, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2037, '2019-01-14 19:21:11'),
(282, 48, 20, 11, 9, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2038, '2019-01-14 19:21:11'),
(283, 49, 22, 21, 1, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, '2019-01-14 19:21:11'),
(284, 49, 22, 21, 1, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, '2019-01-14 19:21:11'),
(285, 49, 22, 21, 1, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 223, '2019-01-14 19:21:11'),
(286, 49, 22, 21, 1, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, '2019-01-14 19:21:11'),
(287, 49, 22, 21, 1, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, '2019-01-14 19:21:11'),
(288, 49, 22, 21, 1, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226, '2019-01-14 19:21:11'),
(289, 49, 22, 21, 1, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, '2019-01-14 19:21:11'),
(290, 49, 22, 21, 1, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 228, '2019-01-14 19:21:11'),
(291, 49, 22, 21, 1, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229, '2019-01-14 19:21:11'),
(292, 49, 22, 21, 1, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2210, '2019-01-14 19:21:11'),
(293, 49, 22, 21, 1, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2211, '2019-01-14 19:21:11'),
(294, 49, 22, 21, 1, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2212, '2019-01-14 19:21:11'),
(295, 49, 22, 21, 1, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2237, '2019-01-14 19:21:11'),
(296, 49, 22, 21, 1, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2238, '2019-01-14 19:21:11'),
(297, 50, 23, 21, 2, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, '2019-01-14 19:21:11'),
(298, 50, 23, 21, 2, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 232, '2019-01-14 19:21:11'),
(299, 50, 23, 21, 2, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 233, '2019-01-14 19:21:11'),
(300, 50, 23, 21, 2, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 234, '2019-01-14 19:21:11'),
(301, 50, 23, 21, 2, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, '2019-01-14 19:21:11'),
(302, 50, 23, 21, 2, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 236, '2019-01-14 19:21:11'),
(303, 50, 23, 21, 2, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237, '2019-01-14 19:21:11'),
(304, 50, 23, 21, 2, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 238, '2019-01-14 19:21:11'),
(305, 50, 23, 21, 2, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 239, '2019-01-14 19:21:11'),
(306, 50, 23, 21, 2, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2310, '2019-01-14 19:21:11'),
(307, 50, 23, 21, 2, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2311, '2019-01-14 19:21:11'),
(308, 50, 23, 21, 2, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2312, '2019-01-14 19:21:11'),
(309, 50, 23, 21, 2, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2337, '2019-01-14 19:21:11'),
(310, 50, 23, 21, 2, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2338, '2019-01-14 19:21:11'),
(311, 51, 24, 21, 3, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241, '2019-01-14 19:21:11'),
(312, 51, 24, 21, 3, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 242, '2019-01-14 19:21:11'),
(313, 51, 24, 21, 3, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 243, '2019-01-14 19:21:11'),
(314, 51, 24, 21, 3, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, '2019-01-14 19:21:11'),
(315, 51, 24, 21, 3, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245, '2019-01-14 19:21:11'),
(316, 51, 24, 21, 3, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 246, '2019-01-14 19:21:11'),
(317, 51, 24, 21, 3, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 247, '2019-01-14 19:21:11'),
(318, 51, 24, 21, 3, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, '2019-01-14 19:21:11'),
(319, 51, 24, 21, 3, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, '2019-01-14 19:21:11'),
(320, 51, 24, 21, 3, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2410, '2019-01-14 19:21:11'),
(321, 51, 24, 21, 3, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2411, '2019-01-14 19:21:11'),
(322, 51, 24, 21, 3, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2412, '2019-01-14 19:21:11'),
(323, 51, 24, 21, 3, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2437, '2019-01-14 19:21:11'),
(324, 51, 24, 21, 3, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2438, '2019-01-14 19:21:11'),
(325, 52, 25, 21, 4, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251, '2019-01-14 19:21:11'),
(326, 52, 25, 21, 4, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, '2019-01-14 19:21:11'),
(327, 52, 25, 21, 4, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 253, '2019-01-14 19:21:11'),
(328, 52, 25, 21, 4, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, '2019-01-14 19:21:11'),
(329, 52, 25, 21, 4, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, '2019-01-14 19:21:11'),
(330, 52, 25, 21, 4, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, '2019-01-14 19:21:11'),
(331, 52, 25, 21, 4, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 257, '2019-01-14 19:21:11'),
(332, 52, 25, 21, 4, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 258, '2019-01-14 19:21:11'),
(333, 52, 25, 21, 4, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 259, '2019-01-14 19:21:11'),
(334, 52, 25, 21, 4, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, '2019-01-14 19:21:11'),
(335, 52, 25, 21, 4, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2511, '2019-01-14 19:21:11'),
(336, 52, 25, 21, 4, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2512, '2019-01-14 19:21:11'),
(337, 52, 25, 21, 4, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2537, '2019-01-14 19:21:11'),
(338, 52, 25, 21, 4, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2538, '2019-01-14 19:21:11'),
(339, 53, 26, 21, 5, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 261, '2019-01-14 19:21:11'),
(340, 53, 26, 21, 5, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262, '2019-01-14 19:21:11'),
(341, 53, 26, 21, 5, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 263, '2019-01-14 19:21:11'),
(342, 53, 26, 21, 5, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264, '2019-01-14 19:21:11'),
(343, 53, 26, 21, 5, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 265, '2019-01-14 19:21:11'),
(344, 53, 26, 21, 5, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 266, '2019-01-14 19:21:11'),
(345, 53, 26, 21, 5, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267, '2019-01-14 19:21:11'),
(346, 53, 26, 21, 5, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 268, '2019-01-14 19:21:11'),
(347, 53, 26, 21, 5, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, '2019-01-14 19:21:11'),
(348, 53, 26, 21, 5, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2610, '2019-01-14 19:21:11'),
(349, 53, 26, 21, 5, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2611, '2019-01-14 19:21:11'),
(350, 53, 26, 21, 5, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2612, '2019-01-14 19:21:11'),
(351, 53, 26, 21, 5, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2637, '2019-01-14 19:21:11'),
(352, 53, 26, 21, 5, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2638, '2019-01-14 19:21:11'),
(353, 54, 27, 21, 6, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 271, '2019-01-14 19:21:11'),
(354, 54, 27, 21, 6, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 272, '2019-01-14 19:21:11'),
(355, 54, 27, 21, 6, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273, '2019-01-14 19:21:11'),
(356, 54, 27, 21, 6, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 274, '2019-01-14 19:21:11'),
(357, 54, 27, 21, 6, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 275, '2019-01-14 19:21:11'),
(358, 54, 27, 21, 6, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 276, '2019-01-14 19:21:11'),
(359, 54, 27, 21, 6, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 277, '2019-01-14 19:21:11'),
(360, 54, 27, 21, 6, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 278, '2019-01-14 19:21:11'),
(361, 54, 27, 21, 6, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 279, '2019-01-14 19:21:11'),
(362, 54, 27, 21, 6, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2710, '2019-01-14 19:21:11'),
(363, 54, 27, 21, 6, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2711, '2019-01-14 19:21:11'),
(364, 54, 27, 21, 6, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2712, '2019-01-14 19:21:11'),
(365, 54, 27, 21, 6, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2737, '2019-01-14 19:21:11'),
(366, 54, 27, 21, 6, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2738, '2019-01-14 19:21:11'),
(367, 55, 28, 21, 7, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 281, '2019-01-14 19:21:11'),
(368, 55, 28, 21, 7, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 282, '2019-01-14 19:21:11'),
(369, 55, 28, 21, 7, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 283, '2019-01-14 19:21:11'),
(370, 55, 28, 21, 7, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 284, '2019-01-14 19:21:11'),
(371, 55, 28, 21, 7, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 285, '2019-01-14 19:21:11'),
(372, 55, 28, 21, 7, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, '2019-01-14 19:21:11'),
(373, 55, 28, 21, 7, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287, '2019-01-14 19:21:11'),
(374, 55, 28, 21, 7, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 288, '2019-01-14 19:21:11'),
(375, 55, 28, 21, 7, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 289, '2019-01-14 19:21:11'),
(376, 55, 28, 21, 7, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2810, '2019-01-14 19:21:11'),
(377, 55, 28, 21, 7, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2811, '2019-01-14 19:21:11'),
(378, 55, 28, 21, 7, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2812, '2019-01-14 19:21:11'),
(379, 55, 28, 21, 7, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2837, '2019-01-14 19:21:11'),
(380, 55, 28, 21, 7, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2838, '2019-01-14 19:21:11'),
(381, 56, 29, 21, 8, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 291, '2019-01-14 19:21:11'),
(382, 56, 29, 21, 8, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, '2019-01-14 19:21:11'),
(383, 56, 29, 21, 8, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 293, '2019-01-14 19:21:11'),
(384, 56, 29, 21, 8, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 294, '2019-01-14 19:21:11'),
(385, 56, 29, 21, 8, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295, '2019-01-14 19:21:11'),
(386, 56, 29, 21, 8, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296, '2019-01-14 19:21:11'),
(387, 56, 29, 21, 8, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297, '2019-01-14 19:21:11'),
(388, 56, 29, 21, 8, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, '2019-01-14 19:21:11'),
(389, 56, 29, 21, 8, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 299, '2019-01-14 19:21:11'),
(390, 56, 29, 21, 8, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2910, '2019-01-14 19:21:11'),
(391, 56, 29, 21, 8, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2911, '2019-01-14 19:21:11'),
(392, 56, 29, 21, 8, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2912, '2019-01-14 19:21:11'),
(393, 56, 29, 21, 8, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2937, '2019-01-14 19:21:11'),
(394, 56, 29, 21, 8, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2938, '2019-01-14 19:21:11'),
(395, 57, 30, 21, 9, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, '2019-01-14 19:21:11'),
(396, 57, 30, 21, 9, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 302, '2019-01-14 19:21:11'),
(397, 57, 30, 21, 9, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 303, '2019-01-14 19:21:11'),
(398, 57, 30, 21, 9, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, '2019-01-14 19:21:11'),
(399, 57, 30, 21, 9, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 305, '2019-01-14 19:21:11'),
(400, 57, 30, 21, 9, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 306, '2019-01-14 19:21:11'),
(401, 57, 30, 21, 9, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 307, '2019-01-14 19:21:11'),
(402, 57, 30, 21, 9, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 308, '2019-01-14 19:21:11'),
(403, 57, 30, 21, 9, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 309, '2019-01-14 19:21:11'),
(404, 57, 30, 21, 9, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3010, '2019-01-14 19:21:11'),
(405, 57, 30, 21, 9, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011, '2019-01-14 19:21:11'),
(406, 57, 30, 21, 9, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3012, '2019-01-14 19:21:11'),
(407, 57, 30, 21, 9, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3037, '2019-01-14 19:21:11'),
(408, 57, 30, 21, 9, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3038, '2019-01-14 19:21:11'),
(409, 58, 32, 31, 1, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 321, '2019-01-14 19:21:11'),
(410, 58, 32, 31, 1, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 322, '2019-01-14 19:21:11'),
(411, 58, 32, 31, 1, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 323, '2019-01-14 19:21:11'),
(412, 58, 32, 31, 1, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, '2019-01-14 19:21:11'),
(413, 58, 32, 31, 1, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 325, '2019-01-14 19:21:11'),
(414, 58, 32, 31, 1, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 326, '2019-01-14 19:21:11'),
(415, 58, 32, 31, 1, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 327, '2019-01-14 19:21:11'),
(416, 58, 32, 31, 1, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 328, '2019-01-14 19:21:11'),
(417, 58, 32, 31, 1, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 329, '2019-01-14 19:21:11'),
(418, 58, 32, 31, 1, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3210, '2019-01-14 19:21:11'),
(419, 58, 32, 31, 1, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3211, '2019-01-14 19:21:11'),
(420, 58, 32, 31, 1, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3212, '2019-01-14 19:21:11'),
(421, 58, 32, 31, 1, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3237, '2019-01-14 19:21:11'),
(422, 58, 32, 31, 1, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3238, '2019-01-14 19:21:11'),
(423, 59, 33, 31, 2, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 331, '2019-01-14 19:21:11'),
(424, 59, 33, 31, 2, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332, '2019-01-14 19:21:11'),
(425, 59, 33, 31, 2, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 333, '2019-01-14 19:21:11'),
(426, 59, 33, 31, 2, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 334, '2019-01-14 19:21:11'),
(427, 59, 33, 31, 2, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 335, '2019-01-14 19:21:11'),
(428, 59, 33, 31, 2, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 336, '2019-01-14 19:21:11'),
(429, 59, 33, 31, 2, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, '2019-01-14 19:21:11'),
(430, 59, 33, 31, 2, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, '2019-01-14 19:21:11'),
(431, 59, 33, 31, 2, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, '2019-01-14 19:21:11'),
(432, 59, 33, 31, 2, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3310, '2019-01-14 19:21:11'),
(433, 59, 33, 31, 2, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3311, '2019-01-14 19:21:11'),
(434, 59, 33, 31, 2, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3312, '2019-01-14 19:21:11'),
(435, 59, 33, 31, 2, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3337, '2019-01-14 19:21:11'),
(436, 59, 33, 31, 2, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3338, '2019-01-14 19:21:11'),
(437, 60, 34, 31, 3, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 341, '2019-01-14 19:21:11'),
(438, 60, 34, 31, 3, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 342, '2019-01-14 19:21:11'),
(439, 60, 34, 31, 3, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 343, '2019-01-14 19:21:11'),
(440, 60, 34, 31, 3, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, '2019-01-14 19:21:11'),
(441, 60, 34, 31, 3, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 345, '2019-01-14 19:21:11'),
(442, 60, 34, 31, 3, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 346, '2019-01-14 19:21:11'),
(443, 60, 34, 31, 3, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 347, '2019-01-14 19:21:11'),
(444, 60, 34, 31, 3, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 348, '2019-01-14 19:21:11'),
(445, 60, 34, 31, 3, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349, '2019-01-14 19:21:11'),
(446, 60, 34, 31, 3, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3410, '2019-01-14 19:21:11'),
(447, 60, 34, 31, 3, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3411, '2019-01-14 19:21:11'),
(448, 60, 34, 31, 3, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3412, '2019-01-14 19:21:11'),
(449, 60, 34, 31, 3, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3437, '2019-01-14 19:21:11'),
(450, 60, 34, 31, 3, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3438, '2019-01-14 19:21:11'),
(451, 61, 35, 31, 4, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 351, '2019-01-14 19:21:11'),
(452, 61, 35, 31, 4, 1, 2, 1, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 352, '2019-01-14 19:21:11'),
(453, 61, 35, 31, 4, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 353, '2019-01-14 19:21:11'),
(454, 61, 35, 31, 4, 1, 4, 1, 4, 5, 'NA', 'NA', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 354, '2019-01-14 19:21:11'),
(455, 61, 35, 31, 4, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 355, '2019-01-14 19:21:11'),
(456, 61, 35, 31, 4, 1, 6, 1, 6, 8, 'NA', 'NA', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 356, '2019-01-14 19:21:11'),
(457, 61, 35, 31, 4, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 357, '2019-01-14 19:21:11'),
(458, 61, 35, 31, 4, 1, 8, 2, 2, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 358, '2019-01-14 19:21:11');
INSERT INTO `16_ss1` (`id`, `edssid`, `sen`, `ssen`, `sfr`, `bf`, `fr`, `tx`, `sas`, `n`, `notes`, `slc`, `st`, `ni`, `nb`, `sid01`, `sid02`, `sid03`, `sid04`, `sid05`, `sid06`, `sid07`, `nd`, `senfr`, `created_at`) VALUES
(459, 61, 35, 31, 4, 1, 9, 2, 3, 3, 'NA', 'NA', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 359, '2019-01-14 19:21:11'),
(460, 61, 35, 31, 4, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3510, '2019-01-14 19:21:11'),
(461, 61, 35, 31, 4, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3511, '2019-01-14 19:21:11'),
(462, 61, 35, 31, 4, 1, 12, 2, 6, 6, 'NA', 'NA', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3512, '2019-01-14 19:21:11'),
(463, 61, 35, 31, 4, 1, 37, 50, 1, 4, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3537, '2019-01-14 19:21:11'),
(464, 61, 35, 31, 4, 1, 38, 50, 6, 5, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3538, '2019-01-14 19:21:11'),
(465, 62, 36, 31, 5, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 361, '2019-01-14 19:21:11'),
(466, 62, 36, 31, 5, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362, '2019-01-14 19:21:11'),
(467, 62, 36, 31, 5, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, '2019-01-14 19:21:11'),
(468, 62, 36, 31, 5, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, '2019-01-14 19:21:11'),
(469, 62, 36, 31, 5, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 365, '2019-01-14 19:21:11'),
(470, 62, 36, 31, 5, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 366, '2019-01-14 19:21:11'),
(471, 62, 36, 31, 5, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 367, '2019-01-14 19:21:11'),
(472, 62, 36, 31, 5, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 368, '2019-01-14 19:21:11'),
(473, 62, 36, 31, 5, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, '2019-01-14 19:21:11'),
(474, 62, 36, 31, 5, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3610, '2019-01-14 19:21:11'),
(475, 62, 36, 31, 5, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3611, '2019-01-14 19:21:11'),
(476, 62, 36, 31, 5, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3612, '2019-01-14 19:21:11'),
(477, 62, 36, 31, 5, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3637, '2019-01-14 19:21:11'),
(478, 62, 36, 31, 5, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3638, '2019-01-14 19:21:11'),
(479, 63, 37, 31, 6, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 371, '2019-01-14 19:21:11'),
(480, 63, 37, 31, 6, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 372, '2019-01-14 19:21:11'),
(481, 63, 37, 31, 6, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 373, '2019-01-14 19:21:11'),
(482, 63, 37, 31, 6, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 374, '2019-01-14 19:21:11'),
(483, 63, 37, 31, 6, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, '2019-01-14 19:21:11'),
(484, 63, 37, 31, 6, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 376, '2019-01-14 19:21:11'),
(485, 63, 37, 31, 6, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 377, '2019-01-14 19:21:11'),
(486, 63, 37, 31, 6, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 378, '2019-01-14 19:21:11'),
(487, 63, 37, 31, 6, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 379, '2019-01-14 19:21:11'),
(488, 63, 37, 31, 6, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3710, '2019-01-14 19:21:11'),
(489, 63, 37, 31, 6, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3711, '2019-01-14 19:21:11'),
(490, 63, 37, 31, 6, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3712, '2019-01-14 19:21:11'),
(491, 63, 37, 31, 6, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3737, '2019-01-14 19:21:11'),
(492, 63, 37, 31, 6, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3738, '2019-01-14 19:21:11'),
(493, 64, 38, 31, 7, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 381, '2019-01-14 19:21:11'),
(494, 64, 38, 31, 7, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 382, '2019-01-14 19:21:11'),
(495, 64, 38, 31, 7, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 383, '2019-01-14 19:21:11'),
(496, 64, 38, 31, 7, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 384, '2019-01-14 19:21:11'),
(497, 64, 38, 31, 7, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 385, '2019-01-14 19:21:11'),
(498, 64, 38, 31, 7, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 386, '2019-01-14 19:21:11'),
(499, 64, 38, 31, 7, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 387, '2019-01-14 19:21:11'),
(500, 64, 38, 31, 7, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 388, '2019-01-14 19:21:11'),
(501, 64, 38, 31, 7, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 389, '2019-01-14 19:21:11'),
(502, 64, 38, 31, 7, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3810, '2019-01-14 19:21:11'),
(503, 64, 38, 31, 7, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3811, '2019-01-14 19:21:11'),
(504, 64, 38, 31, 7, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3812, '2019-01-14 19:21:11'),
(505, 64, 38, 31, 7, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3837, '2019-01-14 19:21:11'),
(506, 64, 38, 31, 7, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3838, '2019-01-14 19:21:11'),
(507, 65, 39, 31, 8, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 391, '2019-01-14 19:21:11'),
(508, 65, 39, 31, 8, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, '2019-01-14 19:21:11'),
(509, 65, 39, 31, 8, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 393, '2019-01-14 19:21:11'),
(510, 65, 39, 31, 8, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 394, '2019-01-14 19:21:11'),
(511, 65, 39, 31, 8, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 395, '2019-01-14 19:21:11'),
(512, 65, 39, 31, 8, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, '2019-01-14 19:21:11'),
(513, 65, 39, 31, 8, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 397, '2019-01-14 19:21:11'),
(514, 65, 39, 31, 8, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, '2019-01-14 19:21:11'),
(515, 65, 39, 31, 8, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 399, '2019-01-14 19:21:11'),
(516, 65, 39, 31, 8, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3910, '2019-01-14 19:21:12'),
(517, 65, 39, 31, 8, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3911, '2019-01-14 19:21:12'),
(518, 65, 39, 31, 8, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3912, '2019-01-14 19:21:12'),
(519, 65, 39, 31, 8, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3937, '2019-01-14 19:21:12'),
(520, 65, 39, 31, 8, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3938, '2019-01-14 19:21:12'),
(521, 66, 40, 31, 9, 1, 1, 1, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 401, '2019-01-14 19:21:12'),
(522, 66, 40, 31, 9, 1, 2, 1, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 402, '2019-01-14 19:21:12'),
(523, 66, 40, 31, 9, 1, 3, 1, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 403, '2019-01-14 19:21:12'),
(524, 66, 40, 31, 9, 1, 4, 1, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 404, '2019-01-14 19:21:12'),
(525, 66, 40, 31, 9, 1, 5, 1, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 405, '2019-01-14 19:21:12'),
(526, 66, 40, 31, 9, 1, 6, 1, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 406, '2019-01-14 19:21:12'),
(527, 66, 40, 31, 9, 1, 7, 2, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 407, '2019-01-14 19:21:12'),
(528, 66, 40, 31, 9, 1, 8, 2, 2, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 408, '2019-01-14 19:21:12'),
(529, 66, 40, 31, 9, 1, 9, 2, 3, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 409, '2019-01-14 19:21:12'),
(530, 66, 40, 31, 9, 1, 10, 2, 4, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4010, '2019-01-14 19:21:12'),
(531, 66, 40, 31, 9, 1, 11, 2, 5, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4011, '2019-01-14 19:21:12'),
(532, 66, 40, 31, 9, 1, 12, 2, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4012, '2019-01-14 19:21:12'),
(533, 66, 40, 31, 9, 1, 37, 50, 1, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4037, '2019-01-14 19:21:12'),
(534, 66, 40, 31, 9, 1, 38, 50, 6, 0, 'NA', 'NA', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4038, '2019-01-14 19:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `16_ss1template`
--

CREATE TABLE `16_ss1template` (
  `id` int(11) NOT NULL,
  `sen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bf` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sas` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ni` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid01` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid02` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid03` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid04` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid05` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid06` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid07` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_ss2`
--

CREATE TABLE `16_ss2` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS2 form',
  `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS2 form',
  `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS2form',
  `hw` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat wet (1: Yes, 2: No)',
  `hs` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Hold status Habitat Parameter (1: <10m, 2: 10-100m, 3: >100m)',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
  `bf` int(3) DEFAULT '-99' COMMENT 'body part (The body type of the sample)',
  `ndi01` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi02` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi03` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi04` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi05` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi06` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi07` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi08` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi09` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi10` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `notes` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'No data (-99)' COMMENT 'On site observations about collection ',
  `slc` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Unique label code for each composition of taxon plus sex and abdominal status (Sample Lable Code SLC)',
  `st` int(4) DEFAULT '0' COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
  `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',
  `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `senfr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_ss2`
--

INSERT INTO `16_ss2` (`id`, `edssid`, `sen`, `ssen`, `sfr`, `hw`, `hs`, `fr`, `tx`, `bf`, `ndi01`, `ndi02`, `ndi03`, `ndi04`, `ndi05`, `ndi06`, `ndi07`, `ndi08`, `ndi09`, `ndi10`, `n`, `notes`, `slc`, `st`, `ni`, `nb`, `sid01`, `sid02`, `sid03`, `sid04`, `sid05`, `sid06`, `sid07`, `nd`, `senfr`, `created_at`) VALUES
(1, 1, 16782, 16781, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 167822, '2019-01-05 11:53:45'),
(28, 2, 131023, 131022, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310232, '2019-01-05 11:53:46'),
(25, 3, 131019, 131018, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310192, '2019-01-05 11:53:46'),
(22, 4, 131015, 131014, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310152, '2019-01-05 11:53:46'),
(19, 5, 131011, 131010, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310112, '2019-01-05 11:53:46'),
(16, 6, 16946, 16945, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169462, '2019-01-05 11:53:46'),
(13, 7, 16942, 16941, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169422, '2019-01-05 11:53:46'),
(10, 8, 16938, 16937, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169382, '2019-01-05 11:53:46'),
(4, 9, 16786, 16785, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 167862, '2019-01-05 11:53:45'),
(7, 10, 16934, 16933, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169342, '2019-01-05 11:53:46'),
(20, 11, 131012, 131010, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310122, '2019-01-05 11:53:46'),
(5, 12, 16787, 16785, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 167872, '2019-01-05 11:53:45'),
(26, 13, 131020, 131018, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310202, '2019-01-05 11:53:46'),
(17, 14, 16947, 16945, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169472, '2019-01-05 11:53:46'),
(23, 15, 131016, 131014, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310162, '2019-01-05 11:53:46'),
(2, 16, 16783, 16781, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 167832, '2019-01-05 11:53:45'),
(14, 17, 16943, 16941, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169432, '2019-01-05 11:53:46'),
(29, 18, 131024, 131022, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310242, '2019-01-05 11:53:46'),
(11, 19, 16939, 16937, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169392, '2019-01-05 11:53:46'),
(8, 20, 16935, 16933, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169352, '2019-01-05 11:53:46'),
(3, 21, 16784, 16781, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 167842, '2019-01-05 11:53:45'),
(24, 22, 131017, 131014, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310172, '2019-01-05 11:53:46'),
(27, 23, 131021, 131018, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310212, '2019-01-05 11:53:46'),
(21, 24, 131013, 131010, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310132, '2019-01-05 11:53:46'),
(9, 25, 16936, 16933, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169362, '2019-01-05 11:53:46'),
(18, 26, 16948, 16945, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169482, '2019-01-05 11:53:46'),
(6, 27, 16788, 16785, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 167882, '2019-01-05 11:53:45'),
(15, 28, 16944, 16941, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169442, '2019-01-05 11:53:46'),
(12, 29, 16940, 16937, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 169402, '2019-01-05 11:53:46'),
(30, 30, 131025, 131022, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, -99, -99, -99, -99, -99, -99, 'No data (-99)', 0, 0, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 1310252, '2019-01-05 11:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `16_ss2template`
--

CREATE TABLE `16_ss2template` (
  `id` int(11) NOT NULL,
  `sen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hw` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hs` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bf` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi01` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi02` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi03` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi04` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi05` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi06` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi07` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi08` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi09` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndi10` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ni` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid01` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid02` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid03` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid04` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid05` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid06` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid07` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_ss3`
--

CREATE TABLE `16_ss3` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
  `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
  `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
  `sd` int(8) DEFAULT '-99' COMMENT 'Start date (The date that the experimental sorting of the specific subgroup was started)',
  `fd` int(8) DEFAULT '-99' COMMENT 'finish date (The date that the experimental sorting of the specific subgroup was completed)',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dd` int(3) DEFAULT '-99' COMMENT 'dead sorting classfication of mosquitoes',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
  `sas` int(3) NOT NULL DEFAULT '-99' COMMENT 'sex and abdominal status',
  `mt` int(3) DEFAULT '-99' COMMENT 'mating status of mosquitoes  if found couple',
  `ch` int(3) DEFAULT '-99' COMMENT 'choice. used to designated the choise made by project spefic',
  `la` int(3) DEFAULT '-99' COMMENT 'lablling of individual of mosquito',
  `ft` int(8) DEFAULT '-99' COMMENT 'finish time (The time that the experimental sorting of the specific subgroup was completed in 24 h time)',
  `bf` int(3) DEFAULT '-99' COMMENT 'body part (The body type of the sample)',
  `hp` int(2) DEFAULT '-99',
  `oth5` int(3) DEFAULT '-99' COMMENT 'other 5 (Any additional experimental sorting or observational variables)',
  `oth6` int(3) DEFAULT '-99' COMMENT 'other 6 (Any additional experimental sorting or observational variables)',
  `oth7` int(3) DEFAULT '-99' COMMENT 'other 7 (Any additional experimental sorting or observational variables)',
  `oth8` int(3) DEFAULT '-99' COMMENT 'other 7 (Any additional experimental sorting or observational variables)',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `slc` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'NA',
  `st` int(4) DEFAULT '0' COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
  `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',
  `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT '0' COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `senfr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_ss3`
--

INSERT INTO `16_ss3` (`id`, `edssid`, `sen`, `ssen`, `sfr`, `sd`, `fd`, `fr`, `dd`, `tx`, `sas`, `mt`, `ch`, `la`, `ft`, `bf`, `hp`, `oth5`, `oth6`, `oth7`, `oth8`, `n`, `slc`, `st`, `ni`, `nb`, `sid01`, `sid02`, `sid03`, `sid04`, `sid05`, `sid06`, `sid07`, `nd`, `senfr`, `created_at`) VALUES
(1, 1, 16782, 16781, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 167822, '2019-01-05 12:01:01'),
(28, 2, 131023, 131022, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310232, '2019-01-05 12:01:01'),
(25, 3, 131019, 131018, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310192, '2019-01-05 12:01:01'),
(22, 4, 131015, 131014, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310152, '2019-01-05 12:01:01'),
(19, 5, 131011, 131010, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310112, '2019-01-05 12:01:01'),
(16, 6, 16946, 16945, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169462, '2019-01-05 12:01:01'),
(13, 7, 16942, 16941, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169422, '2019-01-05 12:01:01'),
(10, 8, 16938, 16937, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169382, '2019-01-05 12:01:01'),
(4, 9, 16786, 16785, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 167862, '2019-01-05 12:01:01'),
(7, 10, 16934, 16933, 1, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169342, '2019-01-05 12:01:01'),
(20, 11, 131012, 131010, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310122, '2019-01-05 12:01:01'),
(5, 12, 16787, 16785, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 167872, '2019-01-05 12:01:01'),
(26, 13, 131020, 131018, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310202, '2019-01-05 12:01:01'),
(17, 14, 16947, 16945, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169472, '2019-01-05 12:01:01'),
(23, 15, 131016, 131014, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310162, '2019-01-05 12:01:01'),
(2, 16, 16783, 16781, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 167832, '2019-01-05 12:01:01'),
(14, 17, 16943, 16941, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169432, '2019-01-05 12:01:01'),
(29, 18, 131024, 131022, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310242, '2019-01-05 12:01:01'),
(11, 19, 16939, 16937, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169392, '2019-01-05 12:01:01'),
(8, 20, 16935, 16933, 2, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169352, '2019-01-05 12:01:01'),
(3, 21, 16784, 16781, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 167842, '2019-01-05 12:01:01'),
(24, 22, 131017, 131014, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310172, '2019-01-05 12:01:01'),
(27, 23, 131021, 131018, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310212, '2019-01-05 12:01:01'),
(21, 24, 131013, 131010, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310132, '2019-01-05 12:01:01'),
(9, 25, 16936, 16933, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169362, '2019-01-05 12:01:01'),
(18, 26, 16948, 16945, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169482, '2019-01-05 12:01:01'),
(6, 27, 16788, 16785, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 167882, '2019-01-05 12:01:01'),
(15, 28, 16944, 16941, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169442, '2019-01-05 12:01:01'),
(12, 29, 16940, 16937, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 169402, '2019-01-05 12:01:01'),
(30, 30, 131025, 131022, 3, 1, 2, 3, 4, 5, 6, 7, -99, -99, -99, 8, -99, -99, -99, -99, -99, -99, 'NA', 9, 0, 0, 10, 0, 0, 0, 0, 0, 0, 11, 1310252, '2019-01-05 12:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `16_ss3template`
--

CREATE TABLE `16_ss3template` (
  `id` int(11) NOT NULL,
  `sen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssen` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sas` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ch` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `la` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ft` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bf` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth5` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth6` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth7` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oth8` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ni` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid01` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid02` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid03` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid04` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid05` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid06` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid07` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_ssso`
--

CREATE TABLE `16_ssso` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `ss1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
  `ss2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
  `ss3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `16_ssso`
--

INSERT INTO `16_ssso` (`id`, `ss1id`, `ss2id`, `ss3id`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL),
(9, 9, NULL, NULL),
(10, 10, NULL, NULL),
(11, 11, NULL, NULL),
(12, 12, NULL, NULL),
(13, 13, NULL, NULL),
(14, 14, NULL, NULL),
(15, 15, NULL, NULL),
(16, 16, NULL, NULL),
(17, 17, NULL, NULL),
(18, 18, NULL, NULL),
(19, 19, NULL, NULL),
(20, 20, NULL, NULL),
(21, 21, NULL, NULL),
(22, 22, NULL, NULL),
(23, 23, NULL, NULL),
(24, 24, NULL, NULL),
(25, 25, NULL, NULL),
(26, 26, NULL, NULL),
(27, 27, NULL, NULL),
(28, 28, NULL, NULL),
(29, 29, NULL, NULL),
(30, 30, NULL, NULL),
(31, 31, NULL, NULL),
(32, 32, NULL, NULL),
(33, 33, NULL, NULL),
(34, 34, NULL, NULL),
(35, 35, NULL, NULL),
(36, 36, NULL, NULL),
(37, 37, NULL, NULL),
(38, 38, NULL, NULL),
(39, 39, NULL, NULL),
(40, 40, NULL, NULL),
(41, 41, NULL, NULL),
(42, 42, NULL, NULL),
(43, 43, NULL, NULL),
(44, 44, NULL, NULL),
(45, 45, NULL, NULL),
(46, 46, NULL, NULL),
(47, 47, NULL, NULL),
(48, 48, NULL, NULL),
(49, 49, NULL, NULL),
(50, 50, NULL, NULL),
(51, 51, NULL, NULL),
(52, 52, NULL, NULL),
(53, 53, NULL, NULL),
(54, 54, NULL, NULL),
(55, 55, NULL, NULL),
(56, 56, NULL, NULL),
(57, 57, NULL, NULL),
(58, 58, NULL, NULL),
(59, 59, NULL, NULL),
(60, 60, NULL, NULL),
(61, 61, NULL, NULL),
(62, 62, NULL, NULL),
(63, 63, NULL, NULL),
(64, 64, NULL, NULL),
(65, 65, NULL, NULL),
(66, 66, NULL, NULL),
(67, 67, NULL, NULL),
(68, 68, NULL, NULL),
(69, 69, NULL, NULL),
(70, 70, NULL, NULL),
(71, 71, NULL, NULL),
(72, 72, NULL, NULL),
(73, 73, NULL, NULL),
(74, 74, NULL, NULL),
(75, 75, NULL, NULL),
(76, 76, NULL, NULL),
(77, 77, NULL, NULL),
(78, 78, NULL, NULL),
(79, 79, NULL, NULL),
(80, 80, NULL, NULL),
(81, 81, NULL, NULL),
(82, 82, NULL, NULL),
(83, 83, NULL, NULL),
(84, 84, NULL, NULL),
(85, 85, NULL, NULL),
(86, 86, NULL, NULL),
(87, 87, NULL, NULL),
(88, 88, NULL, NULL),
(89, 89, NULL, NULL),
(90, 90, NULL, NULL),
(91, 91, NULL, NULL),
(92, 92, NULL, NULL),
(93, 93, NULL, NULL),
(94, 94, NULL, NULL),
(95, 95, NULL, NULL),
(96, 96, NULL, NULL),
(97, 97, NULL, NULL),
(98, 98, NULL, NULL),
(99, 99, NULL, NULL),
(100, 100, NULL, NULL),
(101, 101, NULL, NULL),
(102, 102, NULL, NULL),
(103, 103, NULL, NULL),
(104, 104, NULL, NULL),
(105, 105, NULL, NULL),
(106, 106, NULL, NULL),
(107, 107, NULL, NULL),
(108, 108, NULL, NULL),
(109, 109, NULL, NULL),
(110, 110, NULL, NULL),
(111, 111, NULL, NULL),
(112, 112, NULL, NULL),
(113, 113, NULL, NULL),
(114, 114, NULL, NULL),
(115, 115, NULL, NULL),
(116, 116, NULL, NULL),
(117, 117, NULL, NULL),
(118, 118, NULL, NULL),
(119, 119, NULL, NULL),
(120, 120, NULL, NULL),
(121, 121, NULL, NULL),
(122, 122, NULL, NULL),
(123, 123, NULL, NULL),
(124, 124, NULL, NULL),
(125, 125, NULL, NULL),
(126, 126, NULL, NULL),
(127, 127, NULL, NULL),
(128, 128, NULL, NULL),
(129, 129, NULL, NULL),
(130, 130, NULL, NULL),
(131, 131, NULL, NULL),
(132, 132, NULL, NULL),
(133, 133, NULL, NULL),
(134, 134, NULL, NULL),
(135, 135, NULL, NULL),
(136, 136, NULL, NULL),
(137, 137, NULL, NULL),
(138, 138, NULL, NULL),
(139, 139, NULL, NULL),
(140, 140, NULL, NULL),
(141, 141, NULL, NULL),
(142, 142, NULL, NULL),
(143, 143, NULL, NULL),
(144, 144, NULL, NULL),
(145, 145, NULL, NULL),
(146, 146, NULL, NULL),
(147, 147, NULL, NULL),
(148, 148, NULL, NULL),
(149, 149, NULL, NULL),
(150, 150, NULL, NULL),
(151, 151, NULL, NULL),
(152, 152, NULL, NULL),
(153, 153, NULL, NULL),
(154, 154, NULL, NULL),
(155, 155, NULL, NULL),
(156, 156, NULL, NULL),
(157, 157, NULL, NULL),
(158, 158, NULL, NULL),
(159, 159, NULL, NULL),
(160, 160, NULL, NULL),
(161, 161, NULL, NULL),
(162, 162, NULL, NULL),
(163, 163, NULL, NULL),
(164, 164, NULL, NULL),
(165, 165, NULL, NULL),
(166, 166, NULL, NULL),
(167, 167, NULL, NULL),
(168, 168, NULL, NULL),
(169, 169, NULL, NULL),
(170, 170, NULL, NULL),
(171, 171, NULL, NULL),
(172, 172, NULL, NULL),
(173, 173, NULL, NULL),
(174, 174, NULL, NULL),
(175, 175, NULL, NULL),
(176, 176, NULL, NULL),
(177, 177, NULL, NULL),
(178, 178, NULL, NULL),
(179, 179, NULL, NULL),
(180, 180, NULL, NULL),
(181, 181, NULL, NULL),
(182, 182, NULL, NULL),
(183, 183, NULL, NULL),
(184, 184, NULL, NULL),
(185, 185, NULL, NULL),
(186, 186, NULL, NULL),
(187, 187, NULL, NULL),
(188, 188, NULL, NULL),
(189, 189, NULL, NULL),
(190, 190, NULL, NULL),
(191, 191, NULL, NULL),
(192, 192, NULL, NULL),
(193, 193, NULL, NULL),
(194, 194, NULL, NULL),
(195, 195, NULL, NULL),
(196, 196, NULL, NULL),
(197, 197, NULL, NULL),
(198, 198, NULL, NULL),
(199, 199, NULL, NULL),
(200, 200, NULL, NULL),
(201, 201, NULL, NULL),
(202, 202, NULL, NULL),
(203, 203, NULL, NULL),
(204, 204, NULL, NULL),
(205, 205, NULL, NULL),
(206, 206, NULL, NULL),
(207, 207, NULL, NULL),
(208, 208, NULL, NULL),
(209, 209, NULL, NULL),
(210, 210, NULL, NULL),
(211, 211, NULL, NULL),
(212, 212, NULL, NULL),
(213, 213, NULL, NULL),
(214, 214, NULL, NULL),
(215, 215, NULL, NULL),
(216, 216, NULL, NULL),
(217, 217, NULL, NULL),
(218, 218, NULL, NULL),
(219, 219, NULL, NULL),
(220, 220, NULL, NULL),
(221, 221, NULL, NULL),
(222, 222, NULL, NULL),
(223, 223, NULL, NULL),
(224, 224, NULL, NULL),
(225, 225, NULL, NULL),
(226, 226, NULL, NULL),
(227, 227, NULL, NULL),
(228, 228, NULL, NULL),
(229, 229, NULL, NULL),
(230, 230, NULL, NULL),
(231, 231, NULL, NULL),
(232, 232, NULL, NULL),
(233, 233, NULL, NULL),
(234, 234, NULL, NULL),
(235, 235, NULL, NULL),
(236, 236, NULL, NULL),
(237, 237, NULL, NULL),
(238, 238, NULL, NULL),
(239, 239, NULL, NULL),
(240, 240, NULL, NULL),
(241, 241, NULL, NULL),
(242, 242, NULL, NULL),
(243, 243, NULL, NULL),
(244, 244, NULL, NULL),
(245, 245, NULL, NULL),
(246, 246, NULL, NULL),
(247, 247, NULL, NULL),
(248, 248, NULL, NULL),
(249, 249, NULL, NULL),
(250, 250, NULL, NULL),
(251, 251, NULL, NULL),
(252, 252, NULL, NULL),
(253, 253, NULL, NULL),
(254, 254, NULL, NULL),
(255, 255, NULL, NULL),
(256, 256, NULL, NULL),
(257, 257, NULL, NULL),
(258, 258, NULL, NULL),
(259, 259, NULL, NULL),
(260, 260, NULL, NULL),
(261, 261, NULL, NULL),
(262, 262, NULL, NULL),
(263, 263, NULL, NULL),
(264, 264, NULL, NULL),
(265, 265, NULL, NULL),
(266, 266, NULL, NULL),
(267, 267, NULL, NULL),
(268, 268, NULL, NULL),
(269, 269, NULL, NULL),
(270, 270, NULL, NULL),
(271, 271, NULL, NULL),
(272, 272, NULL, NULL),
(273, 273, NULL, NULL),
(274, 274, NULL, NULL),
(275, 275, NULL, NULL),
(276, 276, NULL, NULL),
(277, 277, NULL, NULL),
(278, 278, NULL, NULL),
(279, 279, NULL, NULL),
(280, 280, NULL, NULL),
(281, 281, NULL, NULL),
(282, 282, NULL, NULL),
(283, 283, NULL, NULL),
(284, 284, NULL, NULL),
(285, 285, NULL, NULL),
(286, 286, NULL, NULL),
(287, 287, NULL, NULL),
(288, 288, NULL, NULL),
(289, 289, NULL, NULL),
(290, 290, NULL, NULL),
(291, 291, NULL, NULL),
(292, 292, NULL, NULL),
(293, 293, NULL, NULL),
(294, 294, NULL, NULL),
(295, 295, NULL, NULL),
(296, 296, NULL, NULL),
(297, 297, NULL, NULL),
(298, 298, NULL, NULL),
(299, 299, NULL, NULL),
(300, 300, NULL, NULL),
(301, 301, NULL, NULL),
(302, 302, NULL, NULL),
(303, 303, NULL, NULL),
(304, 304, NULL, NULL),
(305, 305, NULL, NULL),
(306, 306, NULL, NULL),
(307, 307, NULL, NULL),
(308, 308, NULL, NULL),
(309, 309, NULL, NULL),
(310, 310, NULL, NULL),
(311, 311, NULL, NULL),
(312, 312, NULL, NULL),
(313, 313, NULL, NULL),
(314, 314, NULL, NULL),
(315, 315, NULL, NULL),
(316, 316, NULL, NULL),
(317, 317, NULL, NULL),
(318, 318, NULL, NULL),
(319, 319, NULL, NULL),
(320, 320, NULL, NULL),
(321, 321, NULL, NULL),
(322, 322, NULL, NULL),
(323, 323, NULL, NULL),
(324, 324, NULL, NULL),
(325, 325, NULL, NULL),
(326, 326, NULL, NULL),
(327, 327, NULL, NULL),
(328, 328, NULL, NULL),
(329, 329, NULL, NULL),
(330, 330, NULL, NULL),
(331, 331, NULL, NULL),
(332, 332, NULL, NULL),
(333, 333, NULL, NULL),
(334, 334, NULL, NULL),
(335, 335, NULL, NULL),
(336, 336, NULL, NULL),
(337, 337, NULL, NULL),
(338, 338, NULL, NULL),
(339, 339, NULL, NULL),
(340, 340, NULL, NULL),
(341, 341, NULL, NULL),
(342, 342, NULL, NULL),
(343, 343, NULL, NULL),
(344, 344, NULL, NULL),
(345, 345, NULL, NULL),
(346, 346, NULL, NULL),
(347, 347, NULL, NULL),
(348, 348, NULL, NULL),
(349, 349, NULL, NULL),
(350, 350, NULL, NULL),
(351, 351, NULL, NULL),
(352, 352, NULL, NULL),
(353, 353, NULL, NULL),
(354, 354, NULL, NULL),
(355, 355, NULL, NULL),
(356, 356, NULL, NULL),
(357, 357, NULL, NULL),
(358, 358, NULL, NULL),
(359, 359, NULL, NULL),
(360, 360, NULL, NULL),
(361, 361, NULL, NULL),
(362, 362, NULL, NULL),
(363, 363, NULL, NULL),
(364, 364, NULL, NULL),
(365, 365, NULL, NULL),
(366, 366, NULL, NULL),
(367, 367, NULL, NULL),
(368, 368, NULL, NULL),
(369, 369, NULL, NULL),
(370, 370, NULL, NULL),
(371, 371, NULL, NULL),
(372, 372, NULL, NULL),
(373, 373, NULL, NULL),
(374, 374, NULL, NULL),
(375, 375, NULL, NULL),
(376, 376, NULL, NULL),
(377, 377, NULL, NULL),
(378, 378, NULL, NULL),
(379, 379, NULL, NULL),
(380, 380, NULL, NULL),
(381, 381, NULL, NULL),
(382, 382, NULL, NULL),
(383, 383, NULL, NULL),
(384, 384, NULL, NULL),
(385, 385, NULL, NULL),
(386, 386, NULL, NULL),
(387, 387, NULL, NULL),
(388, 388, NULL, NULL),
(389, 389, NULL, NULL),
(390, 390, NULL, NULL),
(391, 391, NULL, NULL),
(392, 392, NULL, NULL),
(393, 393, NULL, NULL),
(394, 394, NULL, NULL),
(395, 395, NULL, NULL),
(396, 396, NULL, NULL),
(397, 397, NULL, NULL),
(398, 398, NULL, NULL),
(399, 399, NULL, NULL),
(400, 400, NULL, NULL),
(401, 401, NULL, NULL),
(402, 402, NULL, NULL),
(403, 403, NULL, NULL),
(404, 404, NULL, NULL),
(405, 405, NULL, NULL),
(406, 406, NULL, NULL),
(407, 407, NULL, NULL),
(408, 408, NULL, NULL),
(409, 409, NULL, NULL),
(410, 410, NULL, NULL),
(411, 411, NULL, NULL),
(412, 412, NULL, NULL),
(413, 413, NULL, NULL),
(414, 414, NULL, NULL),
(415, 415, NULL, NULL),
(416, 416, NULL, NULL),
(417, 417, NULL, NULL),
(418, 418, NULL, NULL),
(419, 419, NULL, NULL),
(420, 420, NULL, NULL),
(421, 421, NULL, NULL),
(422, 422, NULL, NULL),
(423, 423, NULL, NULL),
(424, 424, NULL, NULL),
(425, 425, NULL, NULL),
(426, 426, NULL, NULL),
(427, 427, NULL, NULL),
(428, 428, NULL, NULL),
(429, 429, NULL, NULL),
(430, 430, NULL, NULL),
(431, 431, NULL, NULL),
(432, 432, NULL, NULL),
(433, 433, NULL, NULL),
(434, 434, NULL, NULL),
(435, 435, NULL, NULL),
(436, 436, NULL, NULL),
(437, 437, NULL, NULL),
(438, 438, NULL, NULL),
(439, 439, NULL, NULL),
(440, 440, NULL, NULL),
(441, 441, NULL, NULL),
(442, 442, NULL, NULL),
(443, 443, NULL, NULL),
(444, 444, NULL, NULL),
(445, 445, NULL, NULL),
(446, 446, NULL, NULL),
(447, 447, NULL, NULL),
(448, 448, NULL, NULL),
(449, 449, NULL, NULL),
(450, 450, NULL, NULL),
(451, 451, NULL, NULL),
(452, 452, NULL, NULL),
(453, 453, NULL, NULL),
(454, 454, NULL, NULL),
(455, 455, NULL, NULL),
(456, 456, NULL, NULL),
(457, 457, NULL, NULL),
(458, 458, NULL, NULL),
(459, 459, NULL, NULL),
(460, 460, NULL, NULL),
(461, 461, NULL, NULL),
(462, 462, NULL, NULL),
(463, 463, NULL, NULL),
(464, 464, NULL, NULL),
(465, 465, NULL, NULL),
(466, 466, NULL, NULL),
(467, 467, NULL, NULL),
(468, 468, NULL, NULL),
(469, 469, NULL, NULL),
(470, 470, NULL, NULL),
(471, 471, NULL, NULL),
(472, 472, NULL, NULL),
(473, 473, NULL, NULL),
(474, 474, NULL, NULL),
(475, 475, NULL, NULL),
(476, 476, NULL, NULL),
(477, 477, NULL, NULL),
(478, 478, NULL, NULL),
(479, 479, NULL, NULL),
(480, 480, NULL, NULL),
(481, 481, NULL, NULL),
(482, 482, NULL, NULL),
(483, 483, NULL, NULL),
(484, 484, NULL, NULL),
(485, 485, NULL, NULL),
(486, 486, NULL, NULL),
(487, 487, NULL, NULL),
(488, 488, NULL, NULL),
(489, 489, NULL, NULL),
(490, 490, NULL, NULL),
(491, 491, NULL, NULL),
(492, 492, NULL, NULL),
(493, 493, NULL, NULL),
(494, 494, NULL, NULL),
(495, 495, NULL, NULL),
(496, 496, NULL, NULL),
(497, 497, NULL, NULL),
(498, 498, NULL, NULL),
(499, 499, NULL, NULL),
(500, 500, NULL, NULL),
(501, 501, NULL, NULL),
(502, 502, NULL, NULL),
(503, 503, NULL, NULL),
(504, 504, NULL, NULL),
(505, 505, NULL, NULL),
(506, 506, NULL, NULL),
(507, 507, NULL, NULL),
(508, 508, NULL, NULL),
(509, 509, NULL, NULL),
(510, 510, NULL, NULL),
(511, 511, NULL, NULL),
(512, 512, NULL, NULL),
(513, 513, NULL, NULL),
(514, 514, NULL, NULL),
(515, 515, NULL, NULL),
(516, 516, NULL, NULL),
(517, 517, NULL, NULL),
(518, 518, NULL, NULL),
(519, 519, NULL, NULL),
(520, 520, NULL, NULL),
(521, 521, NULL, NULL),
(522, 522, NULL, NULL),
(523, 523, NULL, NULL),
(524, 524, NULL, NULL),
(525, 525, NULL, NULL),
(526, 526, NULL, NULL),
(527, 527, NULL, NULL),
(528, 528, NULL, NULL),
(529, 529, NULL, NULL),
(530, 530, NULL, NULL),
(531, 531, NULL, NULL),
(532, 532, NULL, NULL),
(533, 533, NULL, NULL),
(534, 534, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `16_st1`
--

CREATE TABLE `16_st1` (
  `id_` int(11) NOT NULL,
  `projectregsite_id` int(11) NOT NULL,
  `sen` int(11) NOT NULL,
  `ssen` int(11) NOT NULL,
  `sfr` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `rc` int(11) NOT NULL,
  `sbf` int(11) DEFAULT NULL,
  `sslc` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sst` int(11) NOT NULL,
  `ssid` int(11) NOT NULL,
  `stx` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_st1`
--

INSERT INTO `16_st1` (`id_`, `projectregsite_id`, `sen`, `ssen`, `sfr`, `fr`, `rc`, `sbf`, `sslc`, `sst`, `ssid`, `stx`, `created_at`) VALUES
(1, 19, 1001, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(2, 19, 1002, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(3, 19, 1003, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(4, 19, 1004, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(5, 19, 1005, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(6, 19, 1006, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(7, 19, 1007, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(8, 19, 1008, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(9, 19, 1009, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(10, 19, 1010, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(11, 19, 1011, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(12, 19, 1012, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(13, 19, 1013, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(14, 19, 1014, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(15, 19, 1015, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(16, 19, 1016, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(17, 19, 1017, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(18, 19, 1018, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(19, 19, 1019, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(20, 19, 1020, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(21, 19, 1021, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(22, 19, 1022, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(23, 19, 1023, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(24, 19, 1024, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(25, 19, 1025, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(26, 19, 1026, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(27, 19, 1027, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(28, 19, 1028, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(29, 19, 1029, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12'),
(30, 19, 1030, 1, 2, 3, 4, 5, '6', 7, 8, 9, '2019-01-05 20:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `16_st2`
--

CREATE TABLE `16_st2` (
  `id_` int(11) NOT NULL,
  `projectregsite_id` int(11) NOT NULL,
  `sen` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `ssen` int(11) NOT NULL,
  `ns` int(11) NOT NULL,
  `fst` int(11) DEFAULT NULL,
  `ff` int(11) NOT NULL,
  `rcn` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_st2`
--

INSERT INTO `16_st2` (`id_`, `projectregsite_id`, `sen`, `fr`, `ssen`, `ns`, `fst`, `ff`, `rcn`, `created_at`) VALUES
(1, 19, 1001, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(2, 19, 1002, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(3, 19, 1003, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(4, 19, 1004, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(5, 19, 1005, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(6, 19, 1006, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(7, 19, 1007, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(8, 19, 1008, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(9, 19, 1009, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(10, 19, 1010, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(11, 19, 1011, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(12, 19, 1012, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(13, 19, 1013, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(14, 19, 1014, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(15, 19, 1015, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(16, 19, 1016, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(17, 19, 1017, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(18, 19, 1018, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(19, 19, 1019, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(20, 19, 1020, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(21, 19, 1021, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(22, 19, 1022, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(23, 19, 1023, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(24, 19, 1024, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(25, 19, 1025, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(26, 19, 1026, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(27, 19, 1027, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(28, 19, 1028, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(29, 19, 1029, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42'),
(30, 19, 1030, 1, 2, 3, 4, 5, 6, '2019-01-05 20:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `16_taxon`
--

CREATE TABLE `16_taxon` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_treatment`
--

CREATE TABLE `16_treatment` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tr` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `16_treatment`
--

INSERT INTO `16_treatment` (`id`, `number`, `tr`) VALUES
(1, '1', 'tr1'),
(2, '2', 'tr2');

-- --------------------------------------------------------

--
-- Table structure for table `bodypart`
--

CREATE TABLE `bodypart` (
  `body_code` int(3) NOT NULL COMMENT 'Store body part unique code',
  `body_name` varchar(30) NOT NULL COMMENT 'Store body party name'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bodypart`
--

INSERT INTO `bodypart` (`body_code`, `body_name`) VALUES
(-99, 'No data'),
(1, 'Intact'),
(2, 'Carcass'),
(3, 'Abdomen'),
(4, 'Head/Thorax'),
(5, 'Legs'),
(6, 'DNA'),
(7, 'Midgut (MG) homogenate'),
(8, 'Head/Thorax (htr) homogenate'),
(9, 'Midgut '),
(10, 'Ovaries'),
(11, 'Spermathecae'),
(12, 'Salivary glands'),
(13, 'Eggs'),
(14, 'Lipids/sugar/glycogen supernat'),
(15, 'Blood meal'),
(16, 'Larvae'),
(17, 'L1'),
(18, 'L2'),
(19, 'L3'),
(20, 'L4'),
(21, 'L1&L2'),
(22, 'L3&L4'),
(23, 'Pupae'),
(100, '<? echo $_POST['),
(101, '<? echo $_POST[');

-- --------------------------------------------------------

--
-- Table structure for table `breedingsite`
--

CREATE TABLE `breedingsite` (
  `projectregsite_id` double DEFAULT NULL COMMENT 'foreign key',
  `sen` double DEFAULT NULL COMMENT 'form serial number',
  `Date` char(14) DEFAULT NULL COMMENT 'record id',
  `RainInMmMonth` double DEFAULT NULL COMMENT 'userid',
  `Month` char(14) DEFAULT NULL COMMENT 'user name',
  `BSnumber` int(11) DEFAULT NULL COMMENT 'timestamp',
  `CollectionMethod` text COMMENT 'bsnumber',
  `TimeStamp` char(20) DEFAULT NULL COMMENT 'date',
  `FieldWorkerInitials` text COMMENT 'fieldworker',
  `GPSReading` mediumtext COMMENT 'skipifnobs',
  `EASTING` text COMMENT 'gpsreading',
  `NORTHING` double DEFAULT NULL COMMENT 'easting',
  `HabitatType` double DEFAULT NULL COMMENT 'northing',
  `VegetationQuantityInWaterHabitat` double DEFAULT NULL COMMENT 'haveaccess',
  `VegetationTypeInWaterHabitat` double DEFAULT NULL COMMENT 'ifnoskip',
  `ShadeOverHabitat` double DEFAULT NULL COMMENT 'habitat type',
  `HabitatSizePerimeter` double DEFAULT NULL COMMENT 'VegetationQuantityInWaterHabitat',
  `AlgalQuantityInWaterHabitat` double(10,0) DEFAULT NULL COMMENT 'VegetationTypeInWaterHabitat',
  `AlgaeType` double(10,0) DEFAULT NULL COMMENT 'ShadeOverHabitat',
  `WaterMovement` double(10,0) DEFAULT NULL COMMENT 'HabitatSizePerimeter',
  `WaterColour` double(10,0) DEFAULT NULL COMMENT 'AlgalQuantityInWaterHabitat',
  `WaterDepth` double(10,0) DEFAULT NULL COMMENT 'AlgaeType',
  `WaterType` double(10,0) DEFAULT NULL COMMENT 'WaterMovement',
  `EnvironmentAroundWaterHabitat` double(10,0) DEFAULT NULL COMMENT 'WaterColour',
  `CultivatedCrops` decimal(10,0) DEFAULT NULL COMMENT 'WaterDepth',
  `CattleGrazing` decimal(10,0) DEFAULT NULL COMMENT 'WaterType',
  `DistanceFromHomes` decimal(10,0) DEFAULT NULL COMMENT 'EnvironmentAroundWaterHabitat',
  `NumberOfDips` decimal(10,0) DEFAULT NULL COMMENT 'CultivatedCrops',
  `InitialsOfDippers` text COMMENT 'CattleGrazing',
  `CulicineLarvaePresent` text COMMENT 'DistanceFromHomes',
  `AnophelineLarvaePresent` text COMMENT 'LarvalSampling',
  `SampleLabelCode` char(14) DEFAULT NULL COMMENT 'NumberOfDips',
  `NumberOfTrapsSet` decimal(10,0) DEFAULT NULL COMMENT 'InitialsOfDippers',
  `NumberOfTrapsCollected` decimal(10,0) DEFAULT NULL COMMENT 'LarvaePresent',
  `Comments` text COMMENT 'Culicines',
  `DateLarvaeSorted` text COMMENT 'Anophelines',
  `InitialsLabAsstLarvae` char(20) DEFAULT NULL COMMENT 'SampleLabelCode',
  `AnLarvaeInst12` decimal(10,0) DEFAULT NULL COMMENT 'StickyTrapSampling',
  `AnLarvaeInst34` decimal(11,0) DEFAULT NULL COMMENT 'NumberOfTrapsSetD1',
  `TotalAnLarvae` decimal(10,0) DEFAULT NULL COMMENT 'Fill Out the Next Day',
  `TotalAnLarvaePerDip` decimal(11,0) DEFAULT NULL COMMENT 'NumberOfTrapsCollectedD2',
  `CcLarvaeInst12` decimal(10,0) DEFAULT NULL COMMENT 'CommentSection',
  `CcLarvaeInst34` decimal(10,0) DEFAULT NULL COMMENT 'Comments',
  `TotalCcLarvae` decimal(10,0) DEFAULT NULL,
  `TotalCcLarvaePerDip` decimal(10,0) DEFAULT NULL,
  `Pupae` decimal(10,0) DEFAULT NULL,
  `DateStickyTrapsSorted` decimal(10,0) DEFAULT NULL,
  `InitialsLabAsstST` decimal(10,0) DEFAULT NULL,
  `GAngambiae` decimal(10,0) DEFAULT NULL,
  `NAngambiae` decimal(10,0) DEFAULT NULL,
  `BFAngambiae` decimal(10,0) DEFAULT NULL,
  `MAngambiae` decimal(10,0) DEFAULT NULL,
  `GAnfunestus` decimal(10,0) DEFAULT NULL,
  `GAnsquamosus` decimal(10,0) DEFAULT NULL,
  `GAncoustani` decimal(10,0) DEFAULT NULL,
  `GAnziemani` decimal(10,0) DEFAULT NULL,
  `GAnRiv` decimal(10,0) DEFAULT NULL,
  `GAnMaculipalpis` decimal(10,0) DEFAULT NULL,
  `MAnMaculipalpis` decimal(10,0) DEFAULT NULL,
  `GAnOther` decimal(10,0) DEFAULT NULL,
  `GAnTotal` decimal(10,0) DEFAULT NULL,
  `GAnTotalPerTrap` decimal(10,0) DEFAULT NULL,
  `GCulex` decimal(10,0) DEFAULT NULL,
  `NCulex` decimal(10,0) DEFAULT NULL,
  `MCulex` decimal(10,0) DEFAULT NULL,
  `GAedes` decimal(10,0) DEFAULT NULL,
  `NAedes` decimal(10,0) DEFAULT NULL,
  `MAedes` decimal(10,0) DEFAULT NULL,
  `GLutzia` decimal(10,0) DEFAULT NULL,
  `NLutzia` decimal(10,0) DEFAULT NULL,
  `MLutzia` decimal(10,0) DEFAULT NULL,
  `GMansonia` decimal(10,0) DEFAULT NULL,
  `NMansonia` decimal(10,0) DEFAULT NULL,
  `MMansonia` decimal(10,0) DEFAULT NULL,
  `GCoquilotidia` decimal(10,0) DEFAULT NULL,
  `NCoquilotidia` decimal(10,0) DEFAULT NULL,
  `MCoquilotidia` decimal(10,0) DEFAULT NULL,
  `GUnknown` decimal(10,0) DEFAULT NULL,
  `NUnknown` decimal(10,0) DEFAULT NULL,
  `MUnknown` decimal(10,0) DEFAULT NULL,
  `GCcTotal` decimal(10,0) DEFAULT NULL,
  `GCcTotalPerTrap` decimal(10,0) DEFAULT NULL,
  `PhotoNumber` decimal(10,0) DEFAULT NULL,
  `ST_MorphoID_AG_sum` decimal(10,0) DEFAULT NULL,
  `ST_MorphoID_AF_sum` decimal(10,0) DEFAULT NULL,
  `ST_MorphoID_ANCOUST_sum` decimal(10,0) DEFAULT NULL,
  `ST_MorphoID_ASQ_sum` decimal(10,0) DEFAULT NULL,
  `ST_MorphoID_AN_sum` decimal(10,0) DEFAULT NULL,
  `ST_PCR_AR_sum` decimal(10,0) DEFAULT NULL,
  `ST_PCR_N_sum` decimal(10,0) DEFAULT NULL,
  `LarvaeForPCR_Stage_L1L2_sum` decimal(10,0) DEFAULT NULL,
  `LarvaeForPCR_Stage_L3L4_sum` decimal(10,0) DEFAULT NULL,
  `PCR_AR_StageL1L2_sum` decimal(10,0) DEFAULT NULL,
  `PCR_AR_StageL3L4_sum` decimal(10,0) DEFAULT NULL,
  `PCR_AR_AllStages_sum` decimal(10,0) DEFAULT NULL,
  `PCR_FUN_StageL1L2_sum` decimal(10,0) DEFAULT NULL,
  `PCR_FUN_StageL3L4_sum` decimal(10,0) DEFAULT NULL,
  `PCR_FUN_AllStages_sum` decimal(10,0) DEFAULT NULL,
  `PCR_N_StageL1L2_sum` decimal(10,0) DEFAULT NULL,
  `PCR_N_StageL3L4_sum` decimal(10,0) DEFAULT NULL,
  `PCR_N_AllStages_sum` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breedingsite`
--

INSERT INTO `breedingsite` (`projectregsite_id`, `sen`, `Date`, `RainInMmMonth`, `Month`, `BSnumber`, `CollectionMethod`, `TimeStamp`, `FieldWorkerInitials`, `GPSReading`, `EASTING`, `NORTHING`, `HabitatType`, `VegetationQuantityInWaterHabitat`, `VegetationTypeInWaterHabitat`, `ShadeOverHabitat`, `HabitatSizePerimeter`, `AlgalQuantityInWaterHabitat`, `AlgaeType`, `WaterMovement`, `WaterColour`, `WaterDepth`, `WaterType`, `EnvironmentAroundWaterHabitat`, `CultivatedCrops`, `CattleGrazing`, `DistanceFromHomes`, `NumberOfDips`, `InitialsOfDippers`, `CulicineLarvaePresent`, `AnophelineLarvaePresent`, `SampleLabelCode`, `NumberOfTrapsSet`, `NumberOfTrapsCollected`, `Comments`, `DateLarvaeSorted`, `InitialsLabAsstLarvae`, `AnLarvaeInst12`, `AnLarvaeInst34`, `TotalAnLarvae`, `TotalAnLarvaePerDip`, `CcLarvaeInst12`, `CcLarvaeInst34`, `TotalCcLarvae`, `TotalCcLarvaePerDip`, `Pupae`, `DateStickyTrapsSorted`, `InitialsLabAsstST`, `GAngambiae`, `NAngambiae`, `BFAngambiae`, `MAngambiae`, `GAnfunestus`, `GAnsquamosus`, `GAncoustani`, `GAnziemani`, `GAnRiv`, `GAnMaculipalpis`, `MAnMaculipalpis`, `GAnOther`, `GAnTotal`, `GAnTotalPerTrap`, `GCulex`, `NCulex`, `MCulex`, `GAedes`, `NAedes`, `MAedes`, `GLutzia`, `NLutzia`, `MLutzia`, `GMansonia`, `NMansonia`, `MMansonia`, `GCoquilotidia`, `NCoquilotidia`, `MCoquilotidia`, `GUnknown`, `NUnknown`, `MUnknown`, `GCcTotal`, `GCcTotalPerTrap`, `PhotoNumber`, `ST_MorphoID_AG_sum`, `ST_MorphoID_AF_sum`, `ST_MorphoID_ANCOUST_sum`, `ST_MorphoID_ASQ_sum`, `ST_MorphoID_AN_sum`, `ST_PCR_AR_sum`, `ST_PCR_N_sum`, `LarvaeForPCR_Stage_L1L2_sum`, `LarvaeForPCR_Stage_L3L4_sum`, `PCR_AR_StageL1L2_sum`, `PCR_AR_StageL3L4_sum`, `PCR_AR_AllStages_sum`, `PCR_FUN_StageL1L2_sum`, `PCR_FUN_StageL3L4_sum`, `PCR_FUN_AllStages_sum`, `PCR_N_StageL1L2_sum`, `PCR_N_StageL3L4_sum`, `PCR_N_AllStages_sum`) VALUES
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 62, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 10.6503 S    036 21.5954 E::12-5-9 at 12:59:26 (UTC)', '209093.43', 9095124.8, 4, 3, 24, 2, 3, 1, 0, 2, 1, 1, 1, 14, '1', '0', '3', '30', 'JK;DL', '0', '0', '12-5-9-BS062', '10', '0', ' ', '05/10/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '11', '0', '689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 3, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 11.4557 S    036 22.9486 E::12-5-15 at 14:40:42 (UTC)', '211589.97', 9093655.6, 3, 4, 234, 3, 3, 1, 0, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL', '1', '1', '12-5-15-BS003', '10', '10', ' ', '5/16/2012', '1', '0', '5', '5', '0', '2', '0', '2', '0', '0', '5', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '62', '3', '0', '3', '0', '0', '0', '0', '0', '24', '0', '0', '0', '0', '0', '14', '0', '0', '103', '10', '693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 5, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 11.0378 S    036 23.2469 E::12-5-15 at 15:00:29 (UTC)', '212133.06', 9094429.9, 2, 4, 234, 3, 3, 3, 2, 1, 1, 1, 1, 14, '1', '0', '1', '30', 'JK;DL', '1', '1', '12-5-15-BS005', '10', '10', ' ', '5/16/2012', '1', '0', '9', '9', '0', '4', '1', '5', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '21', '2', '696', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 6, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 11.7952 S    036 22.7189 E::12-5-15 at 14:24:03 (UTC)', '211171.88', 9093026.6, 2, 4, 234, 3, 3, 1, 0, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'JK;DL', '1', '0', '12-5-15-BS006', '10', '8', ' ', '5/16/2012', '1', '0', '0', '0', '0', '1', '3', '4', '0', '1', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '24', '3', '691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 1, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 10.5358 S    036 23.6052 E::12-5-17 at 04:59:06 (UTC)', '212785.53', 9095360, 6, 4, 234, 3, 3, 4, 124, 1, 3, 2, 1, 13, '0', '678', '3', '30', 'JK;MK', '1', '1', '12-5-17-BS001', '10', '10', ' ', '5/17/2012', '1', '1', '1', '2', '0', '11', '4', '15', '1', '0', '5', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '3', '0', '108', '2', '1', '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '41', '0', '0', '155', '16', '698', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 11, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 09.3665 S    036 23.5700 E::12-5-17 at 15:34:17 (UTC)', '212706.75', 9097516.3, 2, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'JK;MK', '1', '1', '12-5-17-BS011', '10', '10', ' ', '5/18/2012', '1', '0', '2', '2', '0', '4', '11', '15', '1', '0', '5', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '13', '1', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '7', '0', '0', '23', '2', '701', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 20, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 10.9066 S    036 23.1282 E::12-5-17 at 04:28:55 (UTC)', '211913.39', 9094670.4, 2, 4, 24, 3, 3, 1, 0, 1, 2, 1, 1, 14, '12345', '0', '1', '30', 'JK;DL', '1', '0', '12-5-17-BS020', '10', '10', ' ', '5/17/2012', '1', '0', '0', '0', '0', '3', '2', '5', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '27', '1', '2', '1', '0', '0', '1', '0', '0', '6', '0', '0', '0', '0', '0', '8', '0', '0', '43', '4', '697', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 0, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 09.1890 S    036 23.5963 E::12-5-18 at 04:37:44 (UTC)', '212753.15', 9097843.9, 2, 4, 4, 3, 3, 4, 2, 1, 1, 2, 1, 124, '1', '0', '1', '30', 'JK;MK', '1', '0', '12-5-18-BS000', '10', '10', 'Alot of green algal present', '5/18/2012', '1', '0', '0', '0', '0', '3', '34', '37', '1', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '4', '1', '0', '2', '0', '0', '2', '0', '0', '16', '2', '702', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 23, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 10.4464 S    036 25.2996 E::12-5-22 at 12:32:35 (UTC)', '215898.23', 9095544.9, 3, 3, 24, 2, 3, 1, 0, 3, 2, 2, 1, 14, '125', '0', '1', '30', 'JK;JJ', '0', '0', '12-5-22-BS023', '10', '10', ' ', '5/23/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '705', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 131.3666667, '0000-00-00', 24, 'Trimble57', '0000-00-00 00:00:00', ' ', '08 09.9653 S    036 24.8901 E::12-5-22 at 13:12:07 (UTC)', '215140.01', 9096427.5, 3, 3, 24, 2, 3, 1, 0, 2, 2, 2, 1, 134, '12', '678', '2', '30', 'JK;JJ', '0', '1', '12-5-22-BS024', '10', '10', ' ', '5/23/2012', '1', '3', '6', '9', '0', '0', '0', '0', '0', '0', '5', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '706', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 27, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 13.9608 S    036 25.1721 E::12-6-5 at 13:50:30 (UTC)', '215705.61', 9089061.7, 2, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 134, '12', '678', '1', '30', 'JK;DL', '1', '1', '12-6-5-BS027', '10', '10', ' ', '06/06/2012', '1', '28', '43', '71', '2', '7', '3', '10', '0', '2', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '17', '0', '3', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '11', '0', '0', '30', '3', '707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 39, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 15.0808 S    036 23.2979 E::12-6-5 at 14:51:34 (UTC)', '212275.62', 9086973.6, 3, 4, 234, 3, 3, 3, 4, 2, 1, 2, 1, 134, '1', '678', '3', '30', 'JK;DL', '1', '0', '12-6-5-BS039', '10', '10', ' ', '06/06/2012', '1', '0', '0', '0', '0', '7', '13', '20', '1', '1', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '1', '0', '11', '0', '0', '1', '0', '0', '13', '0', '0', '0', '0', '0', '74', '0', '0', '122', '12', '708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 61, 'Trimble57', '0000-00-00 00:00:00', 'JK', '08 10.7715 S    036 21.7054 E::12-6-6 at 14:17:36 (UTC)', '209297.12', 9094902.6, 3, 4, 24, 3, 3, 3, 2, 3, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;JJ', '1', '1', '12-6-6-BS061', '0', '0', ' ', '06/07/2012', '1', '0', '4', '4', '0', '3', '3', '6', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '9', '0', '710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 62, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 10.6655 S    036 21.5526 E::12-6-6 at 13:41:06 (UTC)', '209015', 9095096.3, 3, 4, 234, 3, 3, 2, 4, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;CH', '1', '1', '12-6-6-BS062', '10', '10', ' ', '06/07/2012', '1', '7', '12', '19', '1', '11', '18', '29', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '3', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 33, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 11.6428 S    036 24.0642 E::12-6-7 at 13:57:40 (UTC)', '213642.23', 9093323.7, 6, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 14, '13', '0', '3', '30', 'JK;DL;JJ', '1', '1', '12-6-7-BS033', '0', '0', ' ', '06/08/2012', '1', '31', '13', '44', '1', '14', '2', '16', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '3', '0', '711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 35, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 11.5496 S    036 23.7930 E::12-6-7 at 14:34:55 (UTC)', '213142.75', 9093492.5, 2, 4, 24, 3, 3, 2, 2, 1, 1, 1, 1, 14, '13', '0', '3', '30', 'JK;DL;JJ', '1', '1', '12-6-7-BS035', '0', '0', ' ', '06/08/2012', '1', '9', '11', '20', '1', '1', '4', '5', '0', '2', '6', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '2', '0', '4', '0', '0', '5', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '3', '0', '0', '17', '0', '712', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 3, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 11.4545 S    036 22.9484 E::12-6-12 at 10:57:41 (UTC)', '211589.52', 9093657.8, 3, 4, 234, 3, 3, 3, 4, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;JJ', '1', '0', '12-6-12-BS003', '10', '10', ' ', '6/13/2012', '1', '0', '0', '0', '0', '9', '18', '27', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '39', '4', '714', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 5, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 11.0456 S    036 23.2393 E::12-6-12 at 11:40:17 (UTC)', '212119.26', 9094415.4, 2, 4, 24, 3, 3, 4, 2, 1, 1, 2, 1, 134, '1', '6', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-12-BS005', '10', '10', ' ', '6/13/2012', '1', '7', '19', '26', '1', '4', '23', '27', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '3', '0', '3', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '12', '0', '2', '78', '8', '715', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 6, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 11.7911 S    036 22.7210 E::12-6-12 at 10:26:56 (UTC)', '211175.13', 9093034.8, 2, 4, 24, 3, 3, 3, 4, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'JK;DL;JJ', '1', '1', '12-6-12-BS006', '10', '10', ' ', '6/13/2012', '1', '1', '3', '4', '0', '37', '11', '48', '2', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '28', '3', '713', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 1, 'Trimble57', '0000-00-00 00:00:00', 'JK', '08 10.5273 S    036 23.5924 E::12-6-13 at 14:15:53 (UTC)', '212761.94', 9095375.6, 6, 4, 234, 3, 3, 4, 2, 1, 3, 1, 1, 13, '0', '678', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-13-BS001', '10', '10', ' ', '6/14/2012', '1', '210', '80', '290', '10', '27', '13', '40', '1', '3', '6', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '388', '0', '0', '2', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '12', '0', '0', '411', '41', '717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 20, 'Trimble57', '0000-00-00 00:00:00', 'JK', '08 10.9180 S    036 23.1357 E::12-6-13 at 13:41:36 (UTC)', '211927.31', 9094649.5, 2, 4, 234, 3, 3, 3, 4, 1, 1, 1, 1, 14, '12345', '0', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-13-BS020', '10', '10', ' ', '6/14/2012', '1', '7', '14', '21', '1', '3', '7', '10', '0', '1', '6', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2', '0', '20', '0', '1', '2', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '5', '0', '0', '29', '3', '716', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 0, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 09.1752 S    036 23.6480 E::12-6-14 at 15:43:05 (UTC)', '212847.93', 9097870, 2, 4, 24, 3, 3, 4, 2, 1, 2, 2, 1, 124, '1', '0', '1', '30', 'JK;JJ', '1', '0', '12-6-14-BS000', '10', '10', ' ', '6/15/2012', '1', '0', '0', '0', '0', '31', '26', '57', '2', '0', '6', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '40', '0', '0', '10', '0', '0', '12', '0', '0', '0', '0', '0', '1', '0', '0', '11', '0', '0', '74', '7', '719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 11, 'Trimble57', '0000-00-00 00:00:00', 'DL', '08 09.3503 S    036 23.5584 E::12-6-14 at 14:59:00 (UTC)', '212685.38', 9097546, 6, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 12, '0', '0', '1', '30', 'JK;JJ', '1', '1', '12-6-14-BS011', '10', '10', ' ', '6/15/2012', '1', '0', '4', '4', '0', '11', '1', '12', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '1', '0', '8', '0', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '31', '0', '0', '78', '8', '718', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 23, 'Trimble57', '0000-00-00 00:00:00', 'JK', '08 10.4413 S    036 25.3338 E::12-6-19 at 11:50:25 (UTC)', '215961.02', 9095554.7, 3, 2, 24, 1, 3, 1, 0, 2, 2, 2, 1, 14, '12', '0', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-19-BS023', '10', '7', ' ', '6/20/2012', '1', '4', '0', '4', '0', '3', '8', '11', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '3', '0', '720', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 24, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 09.9622 S    036 24.8920 E::12-6-19 at 13:52:34 (UTC)', '215143.29', 9096433.1, 3, 3, 24, 1, 3, 3, 2, 2, 2, 2, 1, 134, '1', '678', '2', '30', 'JK;DL;JJ', '1', '1', '12-6-19-BS024', '10', '9', ' ', '6/20/2012', '1', '0', '4', '4', '0', '9', '2', '11', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '3', '0', '0', '16', '2', '722', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 53, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 10.9059 S    036 26.7038 E::12-6-19 at 12:59:02 (UTC)', '218484', 9094714, 3, 2, 3, 3, 3, 3, 2, 2, 2, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;JJ', '1', '0', '12-6-19-BS053', '10', '10', ' ', '6/20/2012', '1', '0', '0', '0', '0', '4', '6', '10', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 52, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 11.4936 S    036 27.1135 E::12-6-20 at 14:12:36 (UTC)', '219243.8', 9093634.8, 2, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'DL;JJ', '1', '0', '12-6-20-BS052', '10', '8', ' ', '6/21/2012', '1', '0', '0', '0', '0', '16', '11', '27', '1', '0', '6', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '9', '1', '724', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(3, 1, '0000-00-00', 10.50166667, '0000-00-00', 56, 'Trimble57', '0000-00-00 00:00:00', 'MK', '08 12.3879 S    036 27.5174 E::12-6-20 at 13:11:09 (UTC)', '219996.35', 9091990.2, 2, 4, 234, 3, 3, 4, 4, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'DL;JJ', '1', '0', '12-6-20-BS056', '10', '10', ' ', '6/21/2012', '1', '0', '0', '0', '0', '13', '4', '17', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '3', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/05/2011', 0, '07/01/2011', 27, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 1, 3, 3, 2, 1, 1, 2, 1, 34, '1', '0', '1', '30', '145', '0', '0', '', '10', '10', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/05/2011', 0, '07/01/2011', 39, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 3, 234, 1, 3, 1, 0, 1, 1, 1, 1, 4, '12', '0', '3', '30', '145', '0', '0', '', '10', '10', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/06/2011', 0, '07/01/2011', 52, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 1, 3, 4, 2, 1, 1, 1, 1, 1, '0', '0', '1', '30', '125', '0', '0', '', '10', '10', ' ', '07/07/2011', '1', '5', '1', '6', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '188', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '195', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/06/2011', 0, '07/01/2011', 56, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 1, 3, 4, 4, 1, 1, 2, 1, 4, '1', '0', '1', '30', '145', '0', '0', '', '10', '10', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/07/2011', 0, '07/01/2011', 33, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 1, 3, 2, 2, 1, 1, 2, 1, 4, '5', '0', '3', '30', '135', '0', '1', '', '10', '8', ' ', '07/08/2011', '1', '0', '2', '2', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/07/2011', 0, '07/01/2011', 35, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 1, 3, 2, 2, 1, 1, 1, 1, 4, '1', '0', '3', '30', '145', '1', '1', '', '10', '10', ' ', '07/08/2011', '1', '1', '7', '8', '0', '0', '1', '1', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '07/12/2011', 0, '07/01/2011', 61, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 3, 2, 234, 3, 3, 3, 2, 2, 1, 3, 1, 4, '1', '0', '3', '30', '245', '0', '1', '', '10', '10', ' ', '07/12/2011', '4', '0', '2', '2', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '07/12/2011', 0, '07/01/2011', 62, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 3, 4, 3, 3, 3, 4, 2, 2, 1, 2, 1, 4, '1', '0', '2', '30', '123', '1', '1', '', '10', '10', ' ', '07/12/2011', '4', '0', '2', '2', '0', '0', '4', '4', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '7/13/2011', 0, '07/01/2011', 3, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 3, 4, 234, 2, 3, 1, 0, 2, 1, 2, 1, 4, '1', '0', '2', '30', '125', '0', '0', '', '10', '9', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '10', '7', '5', '0', '0', '0', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '7/13/2011', 0, '07/01/2011', 6, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 24, 1, 3, 3, 4, 1, 1, 1, 1, 4, '1', '0', '2', '30', '125', '0', '1', '', '10', '10', ' ', '7/13/2011', '1', '5', '1', '6', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '3', '0', '54', '26', '20', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '55', '6', '0', '0', '0', '2', '1', '0', '1', '2', '5', '1', '0', '0', '0', '0', '0', '0', '5', '1', 6),
(31, 1, '7/14/2011', 0, '07/01/2011', 1, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 1, 3, 3, 24, 1, 2, 1, 1, 13, '0', '678', '1', '30', '245', '1', '1', '', '10', '10', ' ', '7/14/2011', '5', '31', '24', '55', '2', '18', '78', '96', '3', '10', '7', '1', '8', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '10', '1', '61', '8', '4', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '65', '7', '0', '11', '1', '0', '0', '0', '7', '5', '0', '10', '0', '9', '9', '0', '0', '0', '0', '1', 1),
(31, 1, '7/14/2011', 0, '07/01/2011', 20, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 1, 3, 3, 4, 1, 1, 1, 1, 4, '1234', '0', '1', '30', '245', '0', '0', '', '10', '10', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '7/19/2011', 0, '07/01/2011', 23, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 5, 2, 4, 2, 3, 1, 0, 1, 1, 2, 1, 4, '12', '0', '1', '30', '145', '0', '1', '', '10', '10', ' ', '7/19/2011', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '6', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', 1),
(31, 1, '7/19/2011', 0, '07/01/2011', 24, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 3, 2, 2, 2, 3, 2, 4, 2, 1, 2, 1, 4, '1', '0', '2', '30', '145', '0', '1', '', '10', '8', ' ', '7/19/2011', '1', '3', '1', '4', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1', '0', '1', '1', '0', '0', '0', '3', '0', 3),
(31, 1, '7/20/2011', 0, '07/01/2011', 0, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 4, 1, 2, 2, 2, 1, 1, 1, 2, 1, '0', '0', '1', '20', '245', '1', '1', '', '10', '10', ' ', '7/21/2011', '1', '3', '4', '7', '0', '0', '2', '2', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '1', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '41', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '7', 7),
(31, 1, '7/20/2011', 0, '07/01/2011', 53, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 3, 2, 3, 3, 3, 4, 2, 2, 1, 2, 1, 4, '1', '0', '2', '30', '245', '0', '0', '', '10', '9', ' ', '7/21/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '7/21/2011', 0, '07/01/2011', 5, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 4, '1', '0', '1', '30', '125', '1', '1', '', '10', '10', ' ', '7/22/2011', '1', '1', '5', '6', '0', '2', '5', '7', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '2', '0', '21', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '2', '0', '0', '0', '2', '0', '0', '0', '2', '1', '5', '0', '0', '0', '0', '0', '0', '1', '5', 6),
(31, 1, '7/21/2011', 0, '07/01/2011', 11, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 23, 1, 3, 1, 0, 1, 1, 1, 1, 1, '0', '0', '1', '30', '145', '1', '1', '', '10', '10', ' ', '7/22/2011', '1', '3', '0', '3', '0', '5', '8', '13', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', '0', 3),
(31, 1, '08/02/2011', 0, '08/01/2011', 27, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 2, 3, 2, 2, 1, 2, 1, 1, 4, '123', '7', '1', '30', '1', '0', '1', '', '10', '10', ' ', '08/11/2011', '2', '19', '4', '23', '1', '0', '0', '0', '0', '0', '8', '1', '5', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '7', '1', '11', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '1', '0', '5', '0', '0', '0', '0', '4', '1', '6', '4', '4', '4', '8', '0', '0', '0', '2', '0', 2),
(31, 1, '08/02/2011', 0, '08/01/2011', 39, 'paper form', '', 'JJ', ' ', ' ', 0, 6, 3, 234, 2, 3, 1, 0, 1, 2, 2, 1, 4, '1', '0', '2', '30', '125', '1', '1', '', '10', '10', ' ', '08/11/2011', '2', '0', '0', '0', '0', '1', '7', '8', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '08/03/2011', 0, '08/01/2011', 61, 'paper form', '', 'JK', ' ', ' ', 0, 3, 3, 234, 3, 3, 3, 2, 2, 1, 3, 1, 3, '0', '7', '3', '30', '135', '1', '1', '', '10', '10', ' ', '08/11/2011', '2', '3', '4', '7', '0', '0', '5', '5', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3', '4', '0', '0', '0', '0', '0', '0', '3', '4', 7),
(31, 1, '08/03/2011', 0, '08/01/2011', 62, 'paper form', '', 'JK', ' ', ' ', 0, 3, 4, 234, 3, 3, 4, 2, 2, 1, 3, 1, 3, '0', '7', '3', '30', '135', '1', '1', '', '10', '10', ' ', '08/11/2011', '2', '2', '0', '2', '0', '3', '7', '10', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', '0', 2),
(31, 1, '08/04/2011', 0, '08/01/2011', 33, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 2, 3, 1, 0, 1, 1, 2, 1, 4, '12', '0', '3', '30', '125', '0', '1', '', '10', '10', ' ', '08/11/2011', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '1', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '4', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '17', '2', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '08/04/2011', 0, '08/01/2011', 35, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 2, 3, 1, 0, 1, 1, 2, 1, 4, '1', '0', '3', '30', '125', '0', '0', '', '10', '10', ' ', '08/11/2011', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '08/09/2011', 0, '08/01/2011', 3, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 3, 4, 234, 3, 3, 2, 4, 2, 1, 2, 1, 4, '15', '0', '2', '30', '145', '1', '1', '', '10', '10', ' ', '08/11/2011', '2', '4', '0', '4', '0', '0', '2', '2', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '1', '0', '0', '0', '0', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '26', '3', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '4', '0', '4', '0', '0', '0', '0', '0', 0),
(31, 1, '08/09/2011', 0, '08/01/2011', 5, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 4, '1', '0', '1', '30', '145', '0', '0', '', '10', '10', ' ', '08/11/2011', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '08/09/2011', 0, '08/01/2011', 6, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 34, 2, 3, 2, 2, 1, 1, 1, 1, 4, '1', '0', '2', '30', '145', '0', '1', '', '10', '10', ' ', '08/11/2011', '2', '2', '4', '6', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0', '0', '0', '0', '2', '4', 6),
(31, 1, '08/10/2011', 0, '08/01/2011', 1, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 1, 3, 2, 4, 1, 3, 1, 1, 3, '0', '7', '1', '30', '125', '1', '1', '', '10', '9', ' ', '08/11/2011', '2', '0', '7', '7', '0', '29', '27', '56', '2', '33', '8', '1', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '30', '5', '0', '0', '0', '0', '0', '0', '4', '0', '1', '0', '0', '0', '0', '0', '0', '12', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '7', '0', '5', '5', '0', '0', '0', '0', '2', 2),
(31, 1, '08/10/2011', 0, '08/01/2011', 20, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 1, 3, 2, 2, 1, 1, 2, 1, 4, '124', '0', '1', '30', '125', '1', '1', '', '10', '10', ' ', '08/11/2011', '2', '10', '5', '15', '1', '1', '0', '1', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0', '0', '0', '0', '0', '5', '5', 10),
(31, 1, '08/11/2011', 0, '08/01/2011', 0, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 34, 3, 3, 1, 0, 1, 1, 1, 1, 1, '0', '0', '3', '30', '245', '1', '1', '', '10', '10', ' ', '08/12/2011', '1', '3', '2', '5', '0', '3', '0', '3', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '3', '0', '0', '0', '0', '1', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '2', '0', '0', '0', '0', '0', '0', '3', '2', 5),
(31, 1, '08/11/2011', 0, '08/01/2011', 11, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 6, 4, 234, 1, 3, 2, 4, 1, 1, 2, 1, 1, '0', '0', '1', '30', '245', '1', '1', '', '10', '10', ' ', '08/12/2011', '1', '0', '0', '0', '0', '7', '1', '8', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '8/16/2011', 0, '08/01/2011', 23, 'paper form', '', 'JK', ' ', ' ', 0, 5, 1, 1, 2, 2, 2, 2, 1, 2, 2, 1, 3, '0', '7', '1', '20', '124', '0', '1', '', '10', '10', ' ', '8/16/2011', '1', '1', '1', '2', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', 1),
(31, 1, '8/16/2011', 0, '08/01/2011', 24, 'paper form', '', 'JK', ' ', ' ', 0, 5, 3, 24, 2, 3, 3, 2, 1, 2, 3, 1, 3, '0', '7', '2', '30', '124', '1', '1', '', '10', '10', ' ', '8/17/2011', '1', '1', '1', '2', '0', '0', '5', '5', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', 2),
(31, 1, '8/16/2011', 0, '08/01/2011', 53, 'paper form', '', 'JK', ' ', ' ', 0, 5, 2, 24, 3, 3, 3, 2, 1, 2, 2, 1, 3, '0', '7', '3', '30', '124', '1', '1', '', '10', '10', ' ', '8/17/2011', '1', '0', '2', '2', '0', '0', '16', '16', '1', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '4', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '8/17/2011', 0, '08/01/2011', 52, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 2, 24, 1, 3, 1, 0, 1, 3, 2, 1, 4, '1', '0', '1', '30', '245', '0', '1', '', '10', '10', ' ', '8/18/2011', '1', '0', '2', '2', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '21', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '2', '2', '0', '0', '0', '0', '0', 0),
(31, 1, '8/17/2011', 0, '08/01/2011', 56, 'paper form', '10/14/1582', ' ', ' ', ' ', 0, 2, 4, 234, 2, 3, 2, 2, 1, 1, 2, 1, 4, '15', '0', '1', '30', '245', '1', '1', '', '10', '10', ' ', '8/18/2011', '1', '6', '5', '11', '0', '1', '0', '1', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '13', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '3', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0', '0', '0', '0', '0', '5', '5', 10),
(31, 1, '09/06/2011', 0, '09/01/2011', 27, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 4, 234, 2, 3, 1, 0, 1, 2, 1, 1, 4, '13', '0', '1', '30', '245', '1', '1', '', '10', '8', ' ', '09/06/2011', '4', '0', '10', '10', '0', '0', '1', '1', '0', '0', '9', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '392', '1', '0', '0', '0', '0', '1', '0', '0', '10', '0', '10', '10', '0', '0', '0', '0', '0', 0),
(31, 1, '09/06/2011', 0, '09/01/2011', 39, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 3, 24, 1, 3, 1, 0, 1, 2, 2, 1, 34, '1', '6', '2', '30', '245', '1', '1', '', '10', '10', ' ', '09/06/2011', '4', '0', '1', '1', '0', '2', '6', '8', '0', '0', '9', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '12', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '1', '391', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0', '0', 0),
(31, 1, '09/07/2011', 0, '09/01/2011', 61, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 2, 34, 3, 3, 2, 2, 1, 1, 2, 1, 13, '0', '6', '3', '30', '24', '1', '1', '', '10', '9', ' ', '09/07/2011', '4', '0', '4', '4', '0', '7', '9', '16', '1', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '2', '394', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '4', 4),
(31, 1, '09/07/2011', 0, '09/01/2011', 62, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 3, 234, 3, 3, 1, 0, 2, 1, 2, 1, 13, '0', '0', '2', '30', '24', '1', '1', '', '10', '8', ' ', '09/07/2011', '4', '0', '2', '2', '0', '4', '2', '6', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '13', '20', '2', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '14', '2', '393', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '09/08/2011', 0, '09/01/2011', 33, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 4, 234, 2, 3, 1, 0, 1, 1, 2, 1, 134, '2', '6', '3', '30', '245', '0', '0', '', '10', '10', ' ', '09/09/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '6', '4', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '09/08/2011', 0, '09/01/2011', 35, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 4, 24, 2, 3, 1, 0, 1, 1, 2, 1, 13, '0', '67', '3', '30', '245', '1', '1', '', '10', '10', ' ', '09/09/2011', '1', '0', '0', '0', '0', '4', '9', '13', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '957', '88', '51', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '965', '97', '395', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '9/13/2011', 0, '09/01/2011', 3, 'paper form', '', 'JJ', ' ', ' ', 0, 3, 3, 234, 3, 3, 1, 0, 1, 2, 2, 1, 134, '25', '6', '2', '30', '234', '1', '1', '', '10', '10', ' ', '9/14/2011', '1', '0', '2', '2', '0', '1', '1', '2', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '181', '22', '7', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '186', '19', '399', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '2', '2', '0', '0', '0', '0', '0', 0),
(31, 1, '9/13/2011', 0, '09/01/2011', 5, 'paper form', '', 'JJ', ' ', ' ', 0, 6, 4, 24, 2, 2, 3, 2, 1, 2, 1, 2, 13, '0', '678', '1', '20', '124', '0', '0', '', '10', '10', ' ', '9/14/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '9/13/2011', 0, '09/01/2011', 6, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 4, 24, 1, 3, 1, 0, 1, 1, 2, 1, 13, '0', '678', '2', '30', '124', '1', '0', '', '10', '10', ' ', '9/14/2011', '1', '0', '0', '0', '0', '1', '0', '1', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '14', '3', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '2', '398', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '9/14/2011', 0, '09/01/2011', 1, 'paper form', '', 'JJ', ' ', ' ', 0, 6, 3, 234, 1, 3, 1, 0, 1, 3, 1, 1, 13, '0', '678', '1', '30', '124', '1', '1', '', '10', '10', ' ', '9/15/2011', '1', '25', '40', '65', '2', '0', '1', '1', '0', '3', '9', '1', '1', '1', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '3', '0', '30', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '3', '402', '1', '0', '0', '0', '0', '1', '0', '0', '10', '0', '2', '2', '0', '0', '0', '0', '8', 8),
(31, 1, '9/14/2011', 0, '09/01/2011', 20, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 4, 24, 1, 3, 1, 0, 1, 1, 2, 1, 4, '34', '0', '1', '30', '234', '1', '0', '', '10', '9', ' ', '9/15/2011', '1', '0', '0', '0', '0', '1', '0', '1', '0', '0', '9', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '29', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '3', '401', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '9/15/2011', 0, '09/01/2011', 0, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 4, 234, 3, 3, 2, 4, 1, 1, 1, 1, 1, '0', '0', '2', '30', '124', '1', '1', '', '10', '10', ' ', '9/16/2011', '1', '0', '1', '1', '0', '2', '1', '3', '0', '0', '9', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '136', '19', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '136', '14', '404', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', 1),
(31, 1, '9/15/2011', 0, '09/01/2011', 11, 'paper form', '', 'JJ', ' ', ' ', 0, 6, 3, 234, 1, 2, 1, 0, 1, 2, 2, 1, 13, '0', '678', '1', '20', '14', '0', '0', '', '10', '10', ' ', '9/16/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '11', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '3', '403', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '9/20/2011', 0, '09/01/2011', 23, 'paper form', '', 'JK', ' ', ' ', 0, 5, 1, 1, 2, 2, 3, 2, 1, 2, 1, 2, 3, '0', '6', '1', '20', '14', '0', '1', '', '10', '10', ' ', '9/21/2011', '1', '34', '51', '85', '4', '0', '0', '0', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '407', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '9', '9', '0', '0', '0', '0', '1', 1),
(31, 1, '9/20/2011', 0, '09/01/2011', 24, 'paper form', '', 'JK', ' ', ' ', 0, 5, 1, 1, 2, 3, 1, 0, 1, 2, 3, 1, 3, '0', '6', '2', '0', '134', '0', '0', '', '10', '7', ' ', '9/20/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '9', '1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1', '409', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '9/20/2011', 0, '09/01/2011', 53, 'paper form', '', 'JK', ' ', ' ', 0, 5, 2, 24, 3, 3, 2, 2, 1, 2, 2, 1, 3, '0', '6', '3', '0', '134', '1', '1', '', '10', '8', ' ', '9/20/2011', '1', '0', '3', '3', '0', '0', '9', '9', '0', '0', '9', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '11', '2', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '12', '2', '408', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', 3),
(31, 1, '9/21/2011', 0, '09/01/2011', 52, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 1, 1, 1, 2, 1, 0, 1, 2, 1, 2, 13, '0', '67', '2', '20', '124', '1', '1', '', '10', '10', ' ', '9/22/2011', '1', '2', '10', '12', '1', '1', '0', '1', '0', '8', '9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '412', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '1', '1', '0', '0', '0', '0', '9', 9),
(31, 1, '9/21/2011', 0, '09/01/2011', 56, 'paper form', '', 'DL', ' ', ' ', 0, 6, 3, 24, 1, 3, 2, 2, 1, 2, 1, 1, 13, '0', '678', '1', '30', '123', '1', '1', '', '10', '10', ' ', '9/22/2011', '1', '0', '1', '1', '0', '7', '8', '15', '1', '1', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '6', '0', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '24', '2', '411', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '0', '0', 0),
(31, 1, '10/04/2011', 8, '10/01/2011', 27, 'paper form', '', 'DL', ' ', ' ', 0, 6, 3, 234, 1, 3, 2, 2, 1, 2, 1, 1, 13, '0', '678', '1', '30', '124', '0', '1', '', '10', '10', ' ', '10/05/2011', '1', '4', '48', '52', '2', '0', '0', '0', '0', '2', '10', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '418', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '10/04/2011', 8, '10/01/2011', 39, 'paper form', '', 'DL', ' ', ' ', 0, 5, 1, 1, 1, 3, 1, 0, 1, 2, 2, 1, 13, '0', '67', '2', '30', '124', '0', '0', '', '10', '9', ' ', '10/05/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '419', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/05/2011', 8, '10/01/2011', 61, 'paper form', '', 'DL', ' ', ' ', 0, 3, 2, 23, 3, 3, 2, 2, 1, 1, 2, 1, 13, '0', '678', '3', '30', '124', '1', '1', '', '10', '10', ' ', '10/06/2011', '1', '0', '3', '3', '0', '0', '2', '2', '0', '0', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '3', '0', '0', '0', '0', '0', '2', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '26', '3', '422', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', 3),
(31, 1, '10/05/2011', 8, '10/01/2011', 62, 'paper form', '', 'DL', ' ', ' ', 0, 3, 3, 234, 3, 3, 3, 24, 2, 1, 2, 1, 13, '0', '67', '3', '30', '124', '0', '1', '', '10', '10', ' ', '10/06/2011', '1', '0', '3', '3', '0', '0', '0', '0', '0', '0', '10', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '40', '4', '0', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '4', '421', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '4', 4);
INSERT INTO `breedingsite` (`projectregsite_id`, `sen`, `Date`, `RainInMmMonth`, `Month`, `BSnumber`, `CollectionMethod`, `TimeStamp`, `FieldWorkerInitials`, `GPSReading`, `EASTING`, `NORTHING`, `HabitatType`, `VegetationQuantityInWaterHabitat`, `VegetationTypeInWaterHabitat`, `ShadeOverHabitat`, `HabitatSizePerimeter`, `AlgalQuantityInWaterHabitat`, `AlgaeType`, `WaterMovement`, `WaterColour`, `WaterDepth`, `WaterType`, `EnvironmentAroundWaterHabitat`, `CultivatedCrops`, `CattleGrazing`, `DistanceFromHomes`, `NumberOfDips`, `InitialsOfDippers`, `CulicineLarvaePresent`, `AnophelineLarvaePresent`, `SampleLabelCode`, `NumberOfTrapsSet`, `NumberOfTrapsCollected`, `Comments`, `DateLarvaeSorted`, `InitialsLabAsstLarvae`, `AnLarvaeInst12`, `AnLarvaeInst34`, `TotalAnLarvae`, `TotalAnLarvaePerDip`, `CcLarvaeInst12`, `CcLarvaeInst34`, `TotalCcLarvae`, `TotalCcLarvaePerDip`, `Pupae`, `DateStickyTrapsSorted`, `InitialsLabAsstST`, `GAngambiae`, `NAngambiae`, `BFAngambiae`, `MAngambiae`, `GAnfunestus`, `GAnsquamosus`, `GAncoustani`, `GAnziemani`, `GAnRiv`, `GAnMaculipalpis`, `MAnMaculipalpis`, `GAnOther`, `GAnTotal`, `GAnTotalPerTrap`, `GCulex`, `NCulex`, `MCulex`, `GAedes`, `NAedes`, `MAedes`, `GLutzia`, `NLutzia`, `MLutzia`, `GMansonia`, `NMansonia`, `MMansonia`, `GCoquilotidia`, `NCoquilotidia`, `MCoquilotidia`, `GUnknown`, `NUnknown`, `MUnknown`, `GCcTotal`, `GCcTotalPerTrap`, `PhotoNumber`, `ST_MorphoID_AG_sum`, `ST_MorphoID_AF_sum`, `ST_MorphoID_ANCOUST_sum`, `ST_MorphoID_ASQ_sum`, `ST_MorphoID_AN_sum`, `ST_PCR_AR_sum`, `ST_PCR_N_sum`, `LarvaeForPCR_Stage_L1L2_sum`, `LarvaeForPCR_Stage_L3L4_sum`, `PCR_AR_StageL1L2_sum`, `PCR_AR_StageL3L4_sum`, `PCR_AR_AllStages_sum`, `PCR_FUN_StageL1L2_sum`, `PCR_FUN_StageL3L4_sum`, `PCR_FUN_AllStages_sum`, `PCR_N_StageL1L2_sum`, `PCR_N_StageL3L4_sum`, `PCR_N_AllStages_sum`) VALUES
(31, 1, '10/06/2011', 8, '10/01/2011', 33, 'paper form', '', 'DL', ' ', ' ', 0, 6, 3, 234, 1, 3, 1, 0, 1, 2, 2, 1, 134, '5', '6', '3', '30', '124', ' ', '1', '', '10', '10', ' ', '10/07/2011', '1', '0', '3', '3', '0', '0', '0', '0', '0', '0', '10', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '35', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '4', '424', '1', '0', '0', '0', '0', '1', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', 3),
(31, 1, '10/06/2011', 8, '10/01/2011', 35, 'paper form', '', 'DL', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/11/2011', 8, '10/01/2011', 3, 'paper form', '', 'DL', ' ', ' ', 0, 5, 3, 3, 3, 3, 2, 2, 1, 1, 2, 1, 134, '25', '6', '2', '30', '245', '1', '0', '', '10', '10', ' ', '10/12/2011', '2', '0', '0', '0', '0', '2', '1', '3', '0', '0', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '132', '8', '1', '0', '0', '0', '3', '0', '0', '2', '0', '2', '0', '0', '0', '0', '0', '0', '137', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/11/2011', 8, '10/01/2011', 5, 'paper form', '', 'DL', ' ', ' ', 0, 6, 2, 3, 1, 1, 4, 2, 1, 2, 2, 3, 13, '0', '67', '1', '10', '24', '1', '1', '', '5', '4', ' ', '10/12/2011', '2', '1', '0', '1', '0', '4', '1', '5', '1', '0', '10', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '70', '0', '4', '0', '0', '0', '2', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '81', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/11/2011', 8, '10/01/2011', 6, 'paper form', '', 'MK', ' ', ' ', 0, 2, 4, 4, 1, 3, 1, 0, 1, 1, 1, 2, 14, '0', '6', '1', '30', '24', '1', '0', '', '10', '10', ' ', '10/12/2011', '2', '0', '0', '0', '0', '31', '0', '31', '1', '0', '10', '2', '4', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '5', '1', '446', '0', '3', '0', '0', '0', '4', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '454', '45', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/12/2011', 8, '10/01/2011', 1, 'paper form', '', 'DL', ' ', ' ', 0, 6, 3, 24, 1, 3, 3, 24, 1, 3, 1, 1, 13, '0', '67', '1', '30', '24', '1', '1', '', '10', '9', ' ', '10/13/2011', '2', '63', '18', '81', '3', '25', '27', '52', '2', '10', '10', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/12/2011', 8, '10/01/2011', 20, 'paper form', '', 'DL', ' ', ' ', 0, 6, 2, 2, 1, 3, 1, 0, 1, 1, 1, 2, 134, '34', '6', '1', '30', '24', '1', '1', '', '10', '10', ' ', '10/13/2011', '2', '23', '3', '26', '1', '12', '4', '16', '1', '0', '10', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '11', '1', '0', '0', '0', '0', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/13/2011', 8, '10/01/2011', 0, 'paper form', '', 'DL', ' ', ' ', 0, 2, 4, 24, 3, 2, 3, 24, 1, 2, 1, 2, 12, '0', '0', '1', '20', '24', ' ', ' ', '', '10', '10', ' ', '10/14/2011', '2', '1', '1', '2', '0', '4', '5', '9', '0', '0', '10', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '126', '0', '0', '1', '0', '0', '4', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '135', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/13/2011', 8, '10/01/2011', 11, 'paper form', '', 'DL', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/18/2011', 8, '10/01/2011', 23, 'paper form', '', 'DL', ' ', ' ', 0, 5, 1, 1, 2, 1, 1, 0, 1, 2, 1, 2, 13, '0', '67', '1', '10', '14', '0', '1', '', '5', '5', ' ', '10/19/2011', '1', '0', '2', '2', '0', '0', '0', '0', '0', '0', '10', '1', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '10', '1', '6', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '12', '2', '427', '1', '0', '0', '0', '0', '1', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '10/18/2011', 8, '10/01/2011', 24, 'paper form', '', 'DL', ' ', ' ', 0, 3, 1, 1, 2, 3, 1, 0, 1, 2, 2, 1, 13, '0', '67', '2', '30', '124', '1', '0', '', '10', '10', ' ', '10/19/2011', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '10', '1', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/18/2011', 8, '10/01/2011', 53, 'paper form', '', 'DL', ' ', ' ', 0, 5, 1, 1, 2, 3, 4, 2, 1, 3, 2, 1, 13, '0', '6', '2', '30', '124', '1', '0', '', '10', '10', ' ', '10/19/2011', '1', '0', '0', '0', '0', '19', '37', '56', '2', '4', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '170', '4', '3', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '172', '17', '428', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '10/19/2011', 8, '10/01/2011', 52, 'paper form', '', 'DL', ' ', ' ', 0, 2, 1, 1, 1, 2, 4, 24, 1, 2, 1, 2, 13, '0', '6', '2', '20', '12', '0', '1', '', '10', '10', ' ', '10/20/2011', '1', '0', '8', '8', '0', '0', '0', '0', '0', '1', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '431', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '8', 8),
(31, 1, '10/19/2011', 8, '10/01/2011', 56, 'paper form', '', 'DL', ' ', ' ', 0, 6, 1, 1, 1, 3, 3, 24, 1, 2, 1, 1, 13, '0', '67', '1', '30', '12', '0', '1', '', '10', '10', ' ', '10/20/2011', '1', '7', '9', '16', '1', '0', '0', '0', '0', '10', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '432', '0', '0', '0', '0', '0', '0', '0', '1', '9', '0', '1', '1', '0', '0', '0', '1', '8', 9),
(31, 1, '11/08/2011', 43.83333333, '11/01/2011', 27, 'paper form', '', 'DL', ' ', ' ', 0, 6, 1, 1, 1, 2, 1, 0, 1, 2, 1, 1, 13, '0', '678', '2', '20', '134', '0', '1', '', '10', '10', ' ', '11/09/2011', '1', '1', '2', '3', '0', '0', '0', '0', '0', '2', '11', '1', '9', '1', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '4', '0', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '5', '1', '441', '9', '0', '0', '0', '0', '8', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '11/08/2011', 43.83333333, '11/01/2011', 39, 'paper form', '', 'DL', ' ', ' ', 0, 6, 1, 1, 1, 2, 2, 2, 1, 2, 2, 1, 13, '0', '678', '2', '20', '134', '0', '1', '', '10', '10', ' ', '11/09/2011', '1', '0', '9', '9', '0', '0', '0', '0', '0', '1', '11', '1', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '442', '5', '0', '0', '0', '0', '4', '1', '0', '9', '0', '2', '2', '0', '0', '0', '0', '7', 7),
(31, 1, '11/09/2011', 43.83333333, '11/01/2011', 61, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 3, 24, 3, 3, 3, 2, 1, 2, 2, 1, 13, '0', '678', '2', '30', '134', '1', '1', '', '10', '10', ' ', '11/10/2011', '1', '1', '0', '1', '0', '3', '12', '15', '1', '0', '11', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '113', '11', '2', '0', '0', '0', '3', '0', '0', '12', '1', '0', '0', '0', '0', '0', '0', '0', '128', '13', '443', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/09/2011', 43.83333333, '11/01/2011', 62, 'paper form', '', 'DL', ' ', ' ', 0, 5, 3, 234, 3, 3, 3, 2, 1, 1, 2, 1, 13, '0', '678', '2', '30', '134', '1', '0', '', '10', '10', ' ', '11/10/2011', '1', '0', '0', '0', '0', '0', '4', '4', '0', '0', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '118', '7', '14', '0', '0', '0', '24', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '146', '15', '444', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/10/2011', 43.83333333, '11/01/2011', 33, 'paper form', '', 'DL', ' ', ' ', 0, 6, 1, 1, 1, 2, 1, 0, 1, 2, 2, 2, 134, '35', '678', '3', '20', '123', '1', '1', '', '10', '10', ' ', '11/11/2011', '1', '11', '0', '11', '1', '3', '4', '7', '0', '1', '11', '1', '0', '2', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '1', '0', '0', '0', '0', '0', '2', '0', '3', '0', '0', '0', '0', '0', '0', '11', '1', '446', '2', '0', '0', '0', '0', '2', '0', '11', '0', '10', '0', '10', '0', '0', '0', '1', '0', 1),
(31, 1, '11/10/2011', 43.83333333, '11/01/2011', 35, 'paper form', '', 'MK', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', 'was a swamp/marsh', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/15/2011', 43.83333333, '11/01/2011', 3, 'paper form', '', 'MK', ' ', ' ', 0, 5, 3, 3, 3, 3, 3, 2, 1, 2, 2, 1, 13, '0', '678', '3', '30', '123', '0', '1', '', '10', '10', ' ', '11/16/2011', '1', '0', '2', '2', '0', '0', '0', '0', '0', '0', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '2', '458', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '11/15/2011', 43.83333333, '11/01/2011', 5, 'paper form', '', 'MK', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', 'was a ground pool', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/15/2011', 43.83333333, '11/01/2011', 6, 'paper form', '', 'MK', ' ', ' ', 0, 2, 1, 1, 1, 2, 1, 0, 1, 2, 1, 1, 13, '0', '678', '3', '20', '123', '0', '1', '', '10', '10', ' ', '11/16/2011', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '6', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '24', '2', '457', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', '0', 3),
(31, 1, '11/16/2011', 43.83333333, '11/01/2011', 1, 'paper form', '', 'MK', ' ', ' ', 0, 6, 4, 24, 2, 3, 3, 2, 1, 3, 1, 1, 13, '0', '678', '1', '30', '123', '1', '1', '', '10', '10', ' ', '11/17/2011', '1', '211', '129', '340', '11', '9', '11', '20', '1', '9', '11', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '20', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '2', '464', '2', '0', '0', '0', '0', '0', '2', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '11/16/2011', 43.83333333, '11/01/2011', 20, 'paper form', '', 'MK', ' ', ' ', 0, 2, 1, 1, 1, 2, 1, 0, 1, 2, 1, 1, 13, '0', '678', '1', '20', '123', '0', '1', '', '10', '10', ' ', '11/17/2011', '1', '9', '13', '22', '1', '0', '0', '0', '0', '2', '11', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '12', '2', '2', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '463', '2', '0', '0', '0', '0', '2', '0', '0', '10', '0', '1', '1', '0', '0', '0', '0', '9', 9),
(31, 1, '11/17/2011', 43.83333333, '11/01/2011', 0, 'paper form', '', 'MK', ' ', ' ', 0, 2, 4, 24, 2, 3, 1, 0, 1, 2, 2, 1, 1, '0', '0', '2', '30', '123', '1', '0', '', '10', '10', ' ', '11/18/2011', '1', '0', '0', '0', '0', '9', '13', '22', '1', '0', '11', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '294', '8', '10', '0', '0', '0', '5', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '309', '31', '474', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/17/2011', 43.83333333, '11/01/2011', 11, 'paper form', '', 'MK', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', 'was a ground pool', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '473', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/22/2011', 43.83333333, '11/01/2011', 23, 'paper form', '', 'DL', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', 'was a stream pool', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '478', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/22/2011', 43.83333333, '11/01/2011', 24, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 1, 1, 2, 3, 1, 0, 1, 2, 2, 1, 13, '0', '678', '2', '30', '124', '0', '1', '', '10', '6', ' ', '11/23/2011', '1', '16', '22', '38', '1', '0', '0', '0', '0', '4', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1', '480', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '1', '1', '0', '0', '0', '0', '8', 8),
(31, 1, '11/22/2011', 43.83333333, '11/01/2011', 53, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 2, 4, 3, 3, 4, 2, 1, 3, 2, 1, 13, '0', '678', '3', '30', '124', '1', '0', '', '10', '10', ' ', '11/23/2011', '1', '0', '0', '0', '0', '33', '23', '56', '2', '8', '11', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '59', '16', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '59', '6', '479', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/23/2011', 43.83333333, '11/01/2011', 52, 'paper form', '', 'DL', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', 'was a swamp/marsh', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '11/23/2011', 43.83333333, '11/01/2011', 56, 'paper form', '', 'DL', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', 'was a ground pool', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '486', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/06/2011', 195.08, '12/01/2011', 27, 'paper form', '', 'MK', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '534', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/06/2011', 195.08, '12/01/2011', 39, 'paper form', '', 'MK', ' ', ' ', 0, 6, 1, 1, 1, 3, 3, 2, 1, 2, 3, 1, 13, '0', '678', '3', '30', '13', '0', '1', '', '10', '10', ' ', '12/07/2011', '1', '0', '3', '3', '0', '0', '0', '0', '0', '0', '12', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '6', '1', '533', '4', '0', '0', '0', '0', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', 3),
(31, 1, '12/07/2011', 195.08, '12/01/2011', 61, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 3, 3, 3, 3, 3, 2, 1, 3, 2, 1, 13, '0', '678', '3', '30', '124', '1', '0', '', '10', '10', ' ', '12/08/2011', '1', '0', '0', '0', '0', '7', '14', '21', '1', '0', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '164', '0', '0', '0', '0', '0', '2', '0', '0', '10', '1', '0', '0', '0', '0', '0', '0', '0', '176', '18', '536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/07/2011', 195.08, '12/01/2011', 62, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 4, 234, 2, 3, 3, 2, 1, 2, 2, 1, 13, '0', '678', '2', '30', '124', '1', '0', '', '10', '10', ' ', '12/08/2011', '1', '0', '0', '0', '0', '23', '18', '41', '1', '6', '12', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '134', '9', '2', '0', '0', '0', '0', '0', '0', '5', '3', '0', '0', '0', '0', '0', '0', '0', '139', '14', '535', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/08/2011', 195.08, '12/01/2011', 33, 'paper form', '', 'JJ', ' ', ' ', 0, 6, 1, 1, 1, 1, 1, 0, 1, 2, 1, 0, 134, '35', '678', '3', '5', '124', '0', '0', '', '10', '10', ' ', '12/09/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '1', '0', '0', '0', '0', '1', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '53', '5', '537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/13/2011', 195.08, '12/01/2011', 3, 'paper form', '', 'JJ', ' ', ' ', 0, 3, 3, 3, 2, 3, 1, 0, 1, 2, 2, 1, 13, '0', '678', '2', '30', '124', '1', '0', '', '10', '8', ' ', '12/14/2011', '1', '0', '0', '0', '0', '3', '4', '7', '0', '0', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '2', '563', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/13/2011', 195.08, '12/01/2011', 5, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 3, 24, 1, 2, 1, 0, 1, 2, 2, 2, 13, '0', '678', '1', '20', '124', '1', '0', '', '10', '10', ' ', '12/14/2011', '1', '0', '0', '0', '0', '9', '11', '20', '1', '0', '12', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '296', '13', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '297', '30', '564', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/13/2011', 195.08, '12/01/2011', 6, 'paper form', '', 'JJ', ' ', ' ', 0, 2, 3, 4, 1, 2, 1, 0, 1, 2, 1, 1, 13, '0', '678', '3', '20', '124', '1', '1', '', '10', '10', ' ', '12/14/2011', '1', '3', '0', '3', '0', '0', '2', '2', '0', '1', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '64', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '64', '6', '561', '0', '0', '0', '0', '0', '0', '0', '3', '0', '2', '0', '2', '0', '0', '0', '1', '0', 1),
(31, 1, '12/14/2011', 195.08, '12/01/2011', 1, 'paper form', '', 'MK', ' ', ' ', 0, 6, 4, 24, 1, 3, 4, 2, 1, 3, 2, 1, 13, '0', '678', '1', '30', '123', '1', '1', '', '10', '10', ' ', '12/15/2011', '1', '2', '12', '14', '0', '1', '2', '3', '0', '0', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '307', '3', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '308', '31', '569', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0', '0', '0', '0', '0', '0', '13', 13),
(31, 1, '12/14/2011', 195.08, '12/01/2011', 20, 'paper form', '', 'MK', ' ', ' ', 0, 2, 2, 2, 1, 2, 4, 2, 1, 2, 1, 1, 13, '0', '678', '1', '20', '123', '1', '0', '', '10', '10', ' ', '12/15/2011', '1', '0', '0', '0', '0', '1', '7', '8', '0', '0', '12', '1', '4', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '6', '1', '111', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '111', '11', '568', '4', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/15/2011', 195.08, '12/01/2011', 0, 'paper form', '', 'MK', ' ', ' ', 0, 2, 3, 234, 1, 3, 3, 2, 1, 2, 2, 1, 1, '0', '0', '2', '30', '123', '1', '0', '', '10', '10', ' ', '12/16/2011', '1', '0', '0', '0', '0', '7', '19', '26', '1', '0', '12', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '294', '8', '10', '0', '0', '0', '5', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '309', '31', '571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/15/2011', 195.08, '12/01/2011', 11, 'paper form', '', ' ', ' ', ' ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', ' ', ' ', ' ', '', '0', '0', ' ', ' ', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/19/2011', 195.08, '12/01/2011', 23, 'paper form', '', 'JK', ' ', ' ', 0, 3, 1, 1, 1, 3, 1, 0, 3, 2, 3, 1, 13, '0', '67', '1', '30', '234', '0', '0', '', '0', '0', 'sticky traps: too much rain', '12/20/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '12/19/2011', 195.08, '12/01/2011', 24, 'paper form', '', 'JK', ' ', ' ', 0, 3, 1, 1, 1, 3, 1, 0, 3, 2, 3, 1, 13, '0', '67', '2', '30', '234', '0', '0', '', '0', '0', 'sticky traps: too much rain', '12/20/2011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/03/2012', 172.92, '01/01/2012', 27, 'paper form', '', 'JK', ' ', ' ', 0, 2, 3, 24, 1, 3, 2, 2, 1, 2, 2, 1, 13, '0', '678', '2', '30', '234', '0', '1', '', '10', '10', ' ', '01/04/2012', '1', '0', '7', '7', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '577', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '8', 8),
(31, 1, '01/03/2012', 172.92, '01/01/2012', 39, 'paper form', '', 'JK', ' ', ' ', 0, 5, 3, 24, 1, 3, 2, 2, 1, 2, 2, 1, 13, '0', '678', '3', '30', '234', '0', '1', '', '10', '10', ' ', '01/04/2012', '1', '0', '10', '10', '0', '0', '0', '0', '0', '0', '1', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1', '578', '2', '0', '0', '0', '0', '2', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '9', 9),
(31, 1, '01/04/2012', 172.92, '01/01/2012', 61, 'paper form', '', 'DL', ' ', ' ', 0, 3, 3, 234, 3, 3, 3, 2, 1, 3, 2, 1, 13, '0', '67', '3', '30', '134', '1', '1', '', '10', '10', ' ', '01/05/2012', '1', '0', '6', '6', '0', '23', '17', '40', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '581', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '6', 6),
(31, 1, '01/04/2012', 172.92, '01/01/2012', 62, 'paper form', '', 'DL', ' ', ' ', 0, 3, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 13, '0', '678', '2', '30', '134', '0', '0', '', '10', '10', ' ', '01/05/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '580', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/05/2012', 172.92, '01/01/2012', 33, 'paper form', '', 'DL', ' ', ' ', 0, 6, 4, 234, 1, 3, 2, 2, 1, 1, 1, 1, 14, '0', '0', '3', '30', '134', '0', '0', '', '10', '10', ' ', '01/06/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '52', '9', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '6', '587', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/05/2012', 172.92, '01/01/2012', 35, 'paper form', '', 'DL', ' ', ' ', 0, 6, 1, 1, 1, 2, 3, 2, 1, 2, 1, 2, 1, '0', '0', '3', '20', '134', '0', '1', '', '10', '10', ' ', '01/06/2012', '1', '1', '10', '11', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '316', '17', '1', '0', '0', '0', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '322', '32', '586', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '01/10/2012', 172.92, '01/01/2012', 3, 'paper form', '', 'DL', ' ', ' ', 0, 5, 3, 23, 2, 3, 3, 2, 1, 2, 2, 1, 13, '0', '67', '2', '30', '134', '1', '0', '', '10', '10', ' ', '01/11/2012', '1', '0', '0', '0', '0', '9', '11', '20', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '2', '589', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/10/2012', 172.92, '01/01/2012', 5, 'paper form', '', 'DL', ' ', ' ', 0, 2, 4, 234, 1, 3, 3, 24, 1, 2, 2, 1, 13, '0', '67', '1', '30', '134', '1', '0', '', '10', '10', ' ', '01/11/2012', '1', '0', '0', '0', '0', '4', '1', '5', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '91', '6', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '95', '10', '590', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/10/2012', 172.92, '01/01/2012', 6, 'paper form', '', 'DL', ' ', ' ', 0, 2, 4, 234, 1, 3, 2, 2, 1, 1, 1, 1, 13, '0', '67', '2', '30', '134', '1', '0', '', '10', '10', ' ', '01/11/2012', '1', '0', '0', '0', '0', '56', '13', '69', '2', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '416', '7', '0', '0', '0', '0', '49', '0', '0', '62', '1', '1', '0', '0', '0', '0', '0', '0', '527', '53', '588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/11/2012', 172.92, '01/01/2012', 1, 'paper form', '', 'DL', ' ', ' ', 0, 6, 4, 234, 1, 3, 3, 2, 1, 3, 1, 1, 3, '0', '678', '1', '30', '134', '1', '1', '', '10', '10', ' ', '01/12/2012', '1', '7', '18', '25', '1', '10', '10', '20', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '141', '1', '0', '0', '0', '0', '2', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '154', '15', '592', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '01/11/2012', 172.92, '01/01/2012', 20, 'paper form', '', 'DL', ' ', ' ', 0, 6, 4, 234, 1, 3, 2, 2, 1, 1, 2, 1, 14, '2', '0', '1', '30', '134', '1', '1', '', '10', '10', ' ', '01/12/2012', '1', '4', '0', '4', '0', '10', '3', '13', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '11', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '37', '4', '591', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '4', '0', 4),
(31, 1, '01/12/2012', 172.92, '01/01/2012', 0, 'paper form', '', 'DL', ' ', ' ', 0, 2, 4, 234, 1, 2, 2, 2, 1, 1, 1, 1, 12, '0', '0', '1', '20', '134', '1', '0', '', '10', '10', ' ', '1/13/2012', '1', '0', '0', '0', '0', '73', '26', '99', '5', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '189', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '190', '19', '594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '01/12/2012', 172.92, '01/01/2012', 11, 'paper form', '', 'DL', ' ', ' ', 0, 6, 4, 234, 1, 3, 3, 24, 1, 1, 1, 1, 14, '2', '0', '1', '30', '134', '1', '0', '', '10', '10', ' ', '1/13/2012', '1', '0', '0', '0', '0', '37', '41', '78', '3', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '37', '1', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '43', '4', '593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '1/17/2012', 172.92, '01/01/2012', 23, 'paper form', '', 'DL', ' ', ' ', 0, 5, 1, 1, 2, 3, 1, 0, 2, 1, 2, 1, 14, '12', '6', '1', '30', '123', '1', '1', '', '10', '10', ' ', '1/18/2012', '1', '0', '4', '4', '0', '3', '4', '7', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '600', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '4', 4),
(31, 1, '1/17/2012', 172.92, '01/01/2012', 24, 'paper form', '', 'DL', ' ', ' ', 0, 3, 1, 1, 2, 3, 1, 0, 2, 1, 2, 1, 13, '0', '678', '1', '30', '123', '0', '0', '', '10', '10', ' ', '1/18/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '1/17/2012', 172.92, '01/01/2012', 53, 'paper form', '', 'JJ', ' ', ' ', 0, 5, 3, 24, 3, 3, 1, 0, 1, 2, 2, 1, 13, '0', '678', '2', '30', '124', '0', '0', '', '10', '10', ' ', '1/18/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '602', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '1/18/2012', 172.92, '01/01/2012', 52, 'paper form', '', 'DL', ' ', ' ', 0, 6, 2, 4, 1, 3, 1, 0, 1, 2, 1, 1, 13, '0', '678', '2', '30', '123', '0', '1', '', '10', '10', ' ', '1/19/2012', '1', '0', '2', '2', '0', '0', '0', '0', '0', '9', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '2', '603', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', 2),
(31, 1, '1/18/2012', 172.92, '01/01/2012', 56, 'paper form', '', 'DL', ' ', ' ', 0, 5, 4, 4, 1, 3, 1, 0, 1, 1, 2, 1, 13, '0', '6', '2', '30', '123', '1', '0', '', '10', '10', ' ', '1/19/2012', '1', '0', '0', '0', '0', '6', '3', '9', '0', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '3', '604', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '02/07/2012', 42.21238095, '02/01/2012', 27, 'Trimble57', '02/07/2012', 'DL', '08 13.9552 S    036 25.1696 E::12-2-7 at 14:53:17 (UTC)', '215700.92', 9089071.9, 6, 2, 24, 1, 3, 1, 0, 1, 2, 1, 1, 13, '0', '678', '2', '30', 'JK;DL', '1', '1', '12-2-7-BS027', '10', '10', ' ', '02/08/2012', '1', '3', '7', '10', '0', '13', '2', '15', '1', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '609', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '02/07/2012', 42.21238095, '02/01/2012', 39, 'Trimble57', '02/07/2012', 'DL', '08 15.0728 S    036 23.2994 E::12-2-7 at 15:42:45 (UTC)', '212278.06', 9086988.4, 5, 3, 234, 1, 3, 4, 2, 1, 2, 1, 1, 13, '0', '678', '3', '30', 'JK;DL', '1', '0', '12-2-7-BS039', '10', '10', ' ', '02/08/2012', '1', '0', '0', '0', '0', '4', '9', '13', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '1', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '15', '2', '610', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '02/08/2012', 42.21238095, '02/01/2012', 61, 'Trimble57', '02/08/2012', 'DL', '08 10.7651 S    036 21.7127 E::12-2-8 at 14:14:46 (UTC)', '209310.39', 9094914.5, 5, 2, 234, 2, 3, 4, 24, 1, 3, 1, 1, 13, '0', '678', '3', '30', 'JK;DL', '1', '0', '12-2-8-BS061', '10', '9', ' ', '02/09/2012', '1', '0', '0', '0', '0', '17', '11', '28', '1', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '4', '0', '0', '0', '0', '4', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '106', '12', '612', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '02/08/2012', 42.21238095, '02/01/2012', 62, 'Trimble57', '02/08/2012', 'DL', '08 10.6618 S    036 21.5464 E::12-2-8 at 13:28:31 (UTC)', '209003.6', 9095102.9, 3, 4, 234, 3, 3, 1, 0, 1, 1, 2, 1, 13, '0', '678', '3', '30', 'JK;DL', '1', '1', '12-2-8-BS062', '10', '10', ' ', '02/09/2012', '1', '11', '6', '17', '1', '2', '9', '11', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '32', '3', '611', '0', '0', '0', '0', '0', '0', '0', '11', '6', '0', '0', '0', '1', '0', '1', '10', '6', 16),
(31, 1, '02/09/2012', 42.21238095, '02/01/2012', 33, 'Trimble57', '02/09/2012', 'JK', '08 11.6543 S    036 24.0551 E::12-2-9 at 14:29:38 (UTC)', '213625.6', 9093302.5, 6, 4, 24, 1, 3, 4, 2, 1, 1, 1, 1, 14, '123', '0', '3', '30', 'JK;DL', '0', '1', '12-2-9-BS033', '10', '10', ' ', '02/10/2012', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '12', '1', '616', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '02/09/2012', 42.21238095, '02/01/2012', 35, 'Trimble57', '02/09/2012', 'JK', '08 11.5783 S    036 23.7826 E::12-2-9 at 13:58:24 (UTC)', '213124.02', 9093439.3, 2, 3, 234, 1, 3, 1, 0, 1, 2, 1, 1, 14, '1', '0', '3', '30', 'JK;DL', '1', '1', '12-2-9-BS035', '10', '9', ' ', '02/10/2012', '1', '2', '0', '2', '0', '3', '8', '11', '0', '0', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '19', '1', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '21', '2', '615', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '2/14/2012', 42.21238095, '02/01/2012', 3, 'Trimble57', '2/14/2012', 'DL', '08 11.4558 S    036 22.9480 E::12-2-14 at 14:26:05 (UTC)', '211588.87', 9093655.4, 3, 3, 23, 2, 3, 2, 24, 1, 2, 2, 1, 134, '13', '678', '3', '30', 'JK;DL', '1', '0', '12-2-14-BS003', '10', '10', ' ', '2/15/2012', '1', '0', '0', '0', '0', '42', '11', '53', '2', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '9', '0', '0', '18', '2', '618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '2/14/2012', 42.21238095, '02/01/2012', 5, 'Trimble57', '2/14/2012', 'DL', '08 11.0390 S    036 23.2424 E::12-2-14 at 14:55:39 (UTC)', '212124.8', 9094427.7, 2, 4, 234, 2, 3, 4, 24, 1, 1, 2, 1, 134, '1', '678', '1', '30', 'JK;DL', '1', '1', '12-2-14-BS005', '10', '10', ' ', '2/15/2012', '1', '0', '3', '3', '0', '0', '14', '14', '0', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '1', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '27', '3', '619', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3', 3),
(31, 1, '2/14/2012', 42.21238095, '02/01/2012', 6, 'Trimble57', '2/14/2012', 'DL', '08 11.7442 S    036 22.6966 E::12-2-14 at 13:55:36 (UTC)', '211130.36', 9093120.4, 2, 4, 234, 3, 3, 2, 2, 1, 1, 2, 1, 134, '13', '678', '3', '30', 'JK;DL', '1', '0', '12-2-14-BS06', '10', '10', ' ', '2/15/2012', '1', '0', '0', '0', '0', '33', '18', '51', '2', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '156', '0', '0', '0', '0', '0', '2', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '163', '16', '617', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '2/15/2012', 42.21238095, '02/01/2012', 1, 'Trimble57', '2/15/2012', 'DL', '08 10.5353 S    036 23.6009 E::12-2-15 at 13:53:28 (UTC)', '212777.59', 9095360.9, 6, 4, 234, 1, 3, 3, 24, 1, 3, 1, 1, 13, '0', '678', '2', '30', 'JK;DL', '1', '1', '12-2-15-BS001', '10', '10', ' ', '2/16/2012', '1', '362', '211', '573', '19', '231', '128', '359', '12', '7', '2', '1', '39', '2', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '40', '4', '30', '2', '3', '0', '0', '0', '1', '2', '0', '4', '0', '0', '0', '0', '0', '11', '0', '0', '46', '5', '620', '10', '0', '0', '0', '0', '4', '6', '0', '14', '0', '0', '0', '0', '0', '0', '0', '14', 14),
(31, 1, '2/15/2012', 42.21238095, '02/01/2012', 20, 'Trimble57', '2/15/2012', 'DL', '08 10.9012 S    036 23.1269 E::12-2-15 at 13:02:03 (UTC)', '211910.9', 9094680.4, 2, 4, 24, 1, 3, 2, 4, 1, 1, 2, 1, 14, '123', '0', '1', '30', 'JK;DL', '1', '1', '12-2-15-BS020', '10', '10', ' ', '2/16/2012', '1', '6', '13', '19', '1', '3', '3', '6', '0', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '621', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '2/16/2012', 42.21238095, '02/01/2012', 0, 'Trimble57', '2/16/2012', 'DL', '08 09.1918 S    036 23.5971 E::12-2-16 at 15:01:42 (UTC)', '212754.62', 9097838.8, 2, 3, 24, 1, 1, 2, 4, 1, 2, 1, 1, 14, '2', '0', '1', '10', 'JK;DL', '1', '0', '12-2-16-BS000', '10', '10', ' ', '2/17/2012', '1', '0', '0', '0', '0', '3', '1', '4', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '623', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '2/16/2012', 42.21238095, '02/01/2012', 11, 'Trimble57', '2/16/2012', 'DL', '08 09.3794 S    036 23.5725 E::12-2-16 at 14:17:43 (UTC)', '212711.64', 9097492.5, 6, 4, 234, 3, 3, 3, 24, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'JK;DL', '1', '0', '12-2-16-BS011', '10', '10', ' ', '2/17/2012', '1', '0', '0', '0', '0', '1', '2', '3', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1', '622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '2/21/2012', 42.21238095, '02/01/2012', 23, 'Trimble57', '2/21/2012', 'DL', '08 10.4419 S    036 25.2958 E::12-2-21 at 13:12:48 (UTC)', '215891.23', 9095553.2, 5, 1, 1, 2, 3, 4, 2, 1, 2, 1, 1, 134, '12', '678', '2', '30', 'JK;DL', '1', '1', '12-2-21-BS023', '10', '3', ' ', '2/22/2012', '1', '43', '29', '72', '2', '6', '3', '9', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '3', '1', '624', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '0', '0', '0', '0', '0', '0', '12', 12),
(31, 1, '2/21/2012', 42.21238095, '02/01/2012', 24, 'Trimble57', '2/21/2012', 'DL', '08 09.9722 S    036 24.8742 E::12-2-21 at 14:45:07 (UTC)', '215110.88', 9096414.6, 5, 2, 4, 1, 3, 2, 2, 1, 2, 2, 1, 134, '1', '678', '2', '30', 'JK;DL', '1', '0', '12-2-21-BS024', '10', '10', ' ', '2/22/2012', '1', '0', '0', '0', '0', '1', '2', '3', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '4', '0', '626', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '2/21/2012', 42.21238095, '02/01/2012', 53, 'Trimble57', '2/21/2012', 'DL', '08 10.9937 S    036 26.7508 E::12-2-21 at 13:56:29 (UTC)', '218571.47', 9094552.6, 5, 4, 3, 3, 3, 4, 24, 1, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL', '1', '1', '12-2-21-BS053', '10', '10', ' ', '2/22/2012', '1', '28', '17', '45', '2', '1', '4', '5', '0', '2', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '3', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '103', '6', '12', '108', '11', '625', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '4', '4', '0', '2', '2', '0', '5', 5),
(31, 1, '2/22/2012', 42.21238095, '02/01/2012', 52, 'Trimble57', '2/22/2012', 'DL', '08 11.4914 S    036 27.1198 E::12-2-22 at 15:32:02 (UTC)', '219255.35', 9093639, 6, 1, 1, 1, 1, 3, 24, 1, 2, 1, 3, 13, '0', '678', '2', '10', 'JK;DL', '1', '1', '12-2-22-BS052', '5', '4', ' ', '2/23/2012', '1', '9', '16', '25', '3', '2', '0', '2', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '16', '4', '628', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '2/22/2012', 42.21238095, '02/01/2012', 56, 'Trimble57', '2/22/2012', 'DL', '08 12.3582 S    036 27.5085 E::12-2-22 at 14:39:02 (UTC)', '219979.69', 9092044.8, 6, 4, 234, 1, 3, 2, 4, 1, 1, 1, 1, 134, '1', '678', '1', '30', 'JK;DL', '1', '1', '12-2-22-BS056', '10', '10', ' ', '2/23/2012', '1', '0', '1', '1', '0', '3', '9', '12', '0', '2', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '52', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '7', '0', '0', '65', '7', '627', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', 1),
(31, 1, '03/06/2012', 170.1552381, '03/01/2012', 27, 'Trimble57', '03/06/2012', 'DL', '08 13.9517 S    036 25.1742 E::12-3-6 at 15:19:50 (UTC)', '215709.36', 9089078.5, 2, 3, 234, 1, 3, 1, 0, 1, 2, 1, 1, 134, '1', '678', '2', '30', 'JK;DL', '0', '1', '12-3-6-BS027', '10', '10', ' ', '03/07/2012', '1', '0', '8', '8', '0', '0', '0', '0', '0', '2', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '630', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '8', 8),
(31, 1, '03/06/2012', 170.1552381, '03/01/2012', 39, 'Trimble57', '03/06/2012', 'DL', '08 15.0737 S    036 23.3005 E::12-3-6 at 16:02:37 (UTC)', '212280.16', 9086986.8, 5, 3, 234, 1, 3, 4, 2, 1, 2, 1, 1, 134, '1', '678', '3', '30', 'JK;DL', '1', '0', '12-3-6-BS039', '10', '10', ' ', '03/07/2012', '1', '0', '0', '0', '0', '3', '7', '10', '0', '0', '3', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '9', '0', '0', '11', '0', '0', '1', '0', '1', '23', '0', '0', '0', '0', '0', '37', '0', '0', '81', '8', '632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '03/07/2012', 170.1552381, '03/01/2012', 61, 'Trimble57', '03/07/2012', 'DL', '08 10.7637 S    036 21.7157 E::12-3-7 at 13:25:08 (UTC)', '209315.88', 9094917.1, 5, 3, 34, 3, 3, 4, 2, 1, 3, 2, 1, 14, '1', '0', '3', '30', 'JK;DL', '1', '1', '12-3-7-BS061', '10', '9', ' ', '03/08/2012', '1', '2', '0', '2', '0', '6', '19', '25', '1', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '1', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '7', '0', '0', '39', '4', '634', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '2', '0', 2),
(31, 1, '03/07/2012', 170.1552381, '03/01/2012', 62, 'Trimble57', '03/07/2012', 'DL', '08 10.6675 S    036 21.5511 E::12-3-7 at 12:52:03 (UTC)', '209012.27', 9095092.5, 3, 4, 234, 2, 3, 4, 2, 1, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL', '1', '1', '12-3-7-BS062', '10', '10', ' ', '03/08/2012', '1', '3', '2', '5', '0', '2', '0', '2', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '151', '8', '9', '0', '0', '0', '2', '0', '0', '2', '0', '0', '0', '0', '0', '2', '3', '0', '157', '16', '633', '0', '0', '0', '0', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0', '0', '2', '2', 4),
(31, 1, '03/08/2012', 170.1552381, '03/01/2012', 33, 'Trimble57', '03/08/2012', 'DL', '08 11.6506 S    036 24.0635 E::12-3-8 at 13:17:59 (UTC)', '213641', 9093309.3, 6, 4, 24, 3, 3, 4, 4, 1, 1, 2, 1, 14, '123', '0', '3', '30', 'JK;DL', '1', '0', '12-3-8-BS033', '10', '10', ' ', '03/09/2012', '1', '0', '0', '0', '0', '718', '336', '1054', '35', '8', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '834', '0', '0', '0', '0', '0', '26', '0', '0', '21', '0', '0', '0', '0', '0', '13', '0', '0', '894', '89', '636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0);
INSERT INTO `breedingsite` (`projectregsite_id`, `sen`, `Date`, `RainInMmMonth`, `Month`, `BSnumber`, `CollectionMethod`, `TimeStamp`, `FieldWorkerInitials`, `GPSReading`, `EASTING`, `NORTHING`, `HabitatType`, `VegetationQuantityInWaterHabitat`, `VegetationTypeInWaterHabitat`, `ShadeOverHabitat`, `HabitatSizePerimeter`, `AlgalQuantityInWaterHabitat`, `AlgaeType`, `WaterMovement`, `WaterColour`, `WaterDepth`, `WaterType`, `EnvironmentAroundWaterHabitat`, `CultivatedCrops`, `CattleGrazing`, `DistanceFromHomes`, `NumberOfDips`, `InitialsOfDippers`, `CulicineLarvaePresent`, `AnophelineLarvaePresent`, `SampleLabelCode`, `NumberOfTrapsSet`, `NumberOfTrapsCollected`, `Comments`, `DateLarvaeSorted`, `InitialsLabAsstLarvae`, `AnLarvaeInst12`, `AnLarvaeInst34`, `TotalAnLarvae`, `TotalAnLarvaePerDip`, `CcLarvaeInst12`, `CcLarvaeInst34`, `TotalCcLarvae`, `TotalCcLarvaePerDip`, `Pupae`, `DateStickyTrapsSorted`, `InitialsLabAsstST`, `GAngambiae`, `NAngambiae`, `BFAngambiae`, `MAngambiae`, `GAnfunestus`, `GAnsquamosus`, `GAncoustani`, `GAnziemani`, `GAnRiv`, `GAnMaculipalpis`, `MAnMaculipalpis`, `GAnOther`, `GAnTotal`, `GAnTotalPerTrap`, `GCulex`, `NCulex`, `MCulex`, `GAedes`, `NAedes`, `MAedes`, `GLutzia`, `NLutzia`, `MLutzia`, `GMansonia`, `NMansonia`, `MMansonia`, `GCoquilotidia`, `NCoquilotidia`, `MCoquilotidia`, `GUnknown`, `NUnknown`, `MUnknown`, `GCcTotal`, `GCcTotalPerTrap`, `PhotoNumber`, `ST_MorphoID_AG_sum`, `ST_MorphoID_AF_sum`, `ST_MorphoID_ANCOUST_sum`, `ST_MorphoID_ASQ_sum`, `ST_MorphoID_AN_sum`, `ST_PCR_AR_sum`, `ST_PCR_N_sum`, `LarvaeForPCR_Stage_L1L2_sum`, `LarvaeForPCR_Stage_L3L4_sum`, `PCR_AR_StageL1L2_sum`, `PCR_AR_StageL3L4_sum`, `PCR_AR_AllStages_sum`, `PCR_FUN_StageL1L2_sum`, `PCR_FUN_StageL3L4_sum`, `PCR_FUN_AllStages_sum`, `PCR_N_StageL1L2_sum`, `PCR_N_StageL3L4_sum`, `PCR_N_AllStages_sum`) VALUES
(31, 1, '03/08/2012', 170.1552381, '03/01/2012', 35, 'Trimble57', '03/08/2012', 'DL', '08 11.5758 S    036 23.7887 E::12-3-8 at 13:56:39 (UTC)', '213135.13', 9093444.1, 2, 4, 234, 1, 3, 1, 0, 1, 1, 2, 1, 14, '123', '0', '3', '30', 'JK;DL', '1', '1', '12-3-8-BS035', '10', '9', ' ', '03/09/2012', '1', '17', '6', '23', '1', '9', '213', '222', '7', '0', '3', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '173', '0', '0', '0', '0', '0', '2', '0', '0', '21', '0', '0', '0', '0', '0', '4', '0', '0', '200', '22', '647', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '10', 10),
(31, 1, '3/13/2012', 170.1552381, '03/01/2012', 3, 'Trimble57', '3/13/2012', 'DL', '08 11.4570 S    036 22.9464 E::12-3-13 at 14:31:09 (UTC)', '211586.12', 9093653.9, 5, 4, 23, 3, 3, 3, 2, 1, 1, 2, 1, 134, '1', '6', '2', '30', 'JK', '1', '0', '12-3-13-BS003', '10', '10', ' ', '3/14/2012', '1', '0', '0', '0', '0', '3', '7', '10', '0', '1', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '4', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '9', '5', '0', '27', '3', '651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/13/2012', 170.1552381, '03/01/2012', 5, 'Trimble57', '3/13/2012', 'DL', '08 11.0372 S    036 23.2418 E::12-3-13 at 15:01:39 (UTC)', '212123.68', 9094431, 6, 4, 234, 3, 3, 4, 124, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'JK;DL', '1', '0', '12-3-13-BS005', '10', '10', ' ', '3/14/2012', '1', '0', '0', '0', '0', '11', '4', '15', '1', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '1', '0', '0', '0', '0', '0', '0', '0', '15', '0', '0', '0', '0', '0', '4', '0', '0', '44', '4', '652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/13/2012', 170.1552381, '03/01/2012', 6, 'Trimble57', '3/13/2012', 'DL', '08 11.7414 S    036 22.7153 E::12-3-13 at 13:52:09 (UTC)', '211164.62', 9093125.8, 2, 4, 234, 3, 3, 3, 24, 1, 3, 2, 1, 13, '0', '678', '2', '30', 'JK', '0', '0', '12-3-13-BS006', '10', '10', ' ', '3/14/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131', '0', '0', '0', '0', '0', '1', '0', '0', '19', '0', '0', '0', '0', '0', '5', '0', '0', '156', '16', '650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/14/2012', 170.1552381, '03/01/2012', 1, 'Trimble57', '3/14/2012', 'DL', '08 10.5371 S    036 23.6070 E::12-3-14 at 15:32:07 (UTC)', '212788.85', 9095357.7, 6, 4, 234, 3, 3, 4, 2, 1, 3, 1, 1, 13, '0', '678', '1', '30', 'JK;DL', '1', '1', '12-3-14-BS001', '10', '10', ' ', '3/15/2012', '1', '106', '36', '142', '5', '13', '14', '27', '1', '23', '3', '1', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '3', '265', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '136', '0', '0', '410', '41', '654', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/14/2012', 170.1552381, '03/01/2012', 20, 'Trimble57', '3/14/2012', 'DL', '08 10.9093 S    036 23.1291 E::12-3-14 at 14:33:01 (UTC)', '211915.08', 9094665.4, 6, 4, 24, 3, 3, 1, 0, 1, 1, 2, 1, 14, '12', '0', '1', '30', 'JK;DL', '1', '1', '12-3-14-BS020', '10', '10', ' ', '3/15/2012', '1', '0', '5', '5', '0', '60', '13', '73', '2', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '5', '0', '0', '0', '0', '0', '0', '25', '3', '653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/15/2012', 170.1552381, '03/01/2012', 0, 'Trimble57', '3/15/2012', 'DL', '08 09.1917 S    036 23.5972 E::12-3-15 at 14:42:39 (UTC)', '212754.84', 9097839, 2, 4, 24, 3, 1, 1, 0, 1, 2, 2, 1, 124, '2', '0', '1', '10', 'JK;DL', '1', '1', '12-3-15-BS000', '10', '0', ' ', '3/16/2012', '1', '0', '3', '3', '0', '17', '13', '30', '3', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '662', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/15/2012', 170.1552381, '03/01/2012', 11, 'Trimble57', '3/15/2012', 'DL', '08 09.3867 S    036 23.5758 E::12-3-15 at 15:24:15 (UTC)', '212717.8', 9097479.1, 6, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'JK;DL', '1', '1', '12-3-15-BS011', '10', '6', ' ', '3/16/2012', '1', '0', '1', '1', '0', '5', '0', '5', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1', '663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/20/2012', 170.1552381, '03/01/2012', 23, 'Trimble57', '3/20/2012', 'DL', '08 10.4469 S    036 25.3018 E::12-3-20 at 12:56:36 (UTC)', '215902.32', 9095544.1, 3, 1, 1, 2, 3, 1, 0, 2, 2, 2, 1, 4, '12', '0', '2', '30', 'JK;DL;JJ', '0', '0', '12-3-20-BS023', '10', '8', ' ', '3/21/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2', '0', '664', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/20/2012', 170.1552381, '03/01/2012', 24, 'Trimble57', '3/20/2012', 'DL', '08 09.9586 S    036 24.8831 E::12-3-20 at 14:10:01 (UTC)', '215127.03', 9096439.7, 3, 3, 234, 1, 3, 3, 2, 2, 2, 2, 1, 134, '1', '678', '2', '30', 'JK;JJ', '1', '1', '12-3-20-BS024', '10', '10', ' ', '3/21/2012', '1', '0', '1', '1', '0', '4', '7', '11', '0', '4', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '665', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/21/2012', 170.1552381, '03/01/2012', 52, 'Trimble57', '3/21/2012', 'DL', '08 11.5083 S    036 27.1031 E::12-3-21 at 15:30:22 (UTC)', '219224.79', 9093607.6, 2, 2, 24, 1, 3, 1, 0, 1, 2, 1, 1, 4, '1', '0', '2', '30', 'JK;JJ', '0', '0', '12-3-21-BS052', '10', '10', ' ', '3/22/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '172', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '173', '17', '667', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '3/21/2012', 170.1552381, '03/01/2012', 56, 'Trimble57', '3/21/2012', 'DL', '08 12.3895 S    036 27.5065 E::12-3-21 at 14:37:30 (UTC)', '219976.41', 9091987.1, 6, 4, 234, 3, 3, 4, 4, 2, 1, 2, 1, 14, '12', '0', '1', '30', 'JK;JJ', '0', '0', '12-3-21-BS056', '10', '10', ' ', '3/22/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '104', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '106', '11', '666', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/03/2012', 272.3666667, '04/01/2012', 27, 'Trimble57', '04/03/2012', ' ', '08 13.9607 S    036 25.1810 E::12-4-3 at 14:39:24 (UTC)', '215721.93', 9089062, 6, 3, 234, 1, 3, 4, 2, 1, 2, 1, 1, 134, '1', '678', '2', '30', 'JK;JJ', '0', '1', '12-4-3-BS027', '10', '10', ' ', '04/04/2012', '1', '1', '3', '4', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '1', '0', '0', '0', '0', '6', '0', '0', '6', '0', '0', '0', '0', '0', '3', '0', '0', '41', '4', '668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/03/2012', 272.3666667, '04/01/2012', 39, 'Trimble57', '04/03/2012', ' ', '08 15.0819 S    036 23.2999 E::12-4-3 at 15:24:53 (UTC)', '212279.16', 9086971.6, 3, 4, 234, 3, 3, 3, 2, 1, 2, 2, 1, 134, '12', '678', '3', '30', 'JK;JJ', '0', '0', '12-4-3-BS039', '10', '10', ' ', '04/04/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '67', '0', '0', '0', '0', '0', '2', '0', '0', '22', '0', '2', '0', '0', '0', '6', '0', '0', '97', '10', '670', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/04/2012', 272.3666667, '04/01/2012', 61, 'Trimble57', '04/04/2012', ' ', '08 10.7679 S    036 21.7054 E::12-4-4 at 14:30:43 (UTC)', '209297.08', 9094909.2, 3, 4, 234, 3, 3, 3, 2, 2, 2, 2, 1, 14, '1', '0', '3', '30', 'JK;JJ', '1', '1', '12-4-4-BS061', '10', '10', ' ', '04/05/2012', '1', '0', '4', '4', '0', '4', '16', '20', '1', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0', '0', '0', '2', '0', '0', '3', '0', '0', '0', '0', '0', '7', '0', '0', '36', '4', '672', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/04/2012', 272.3666667, '04/01/2012', 62, 'Trimble57', '04/04/2012', ' ', '08 10.6668 S    036 21.5501 E::12-4-4 at 13:57:43 (UTC)', '209010.6', 9095093.8, 3, 4, 234, 3, 3, 4, 2, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;JJ', '1', '1', '12-4-4-BS062', '10', '10', ' ', '04/05/2012', '1', '0', '2', '2', '0', '5', '7', '12', '0', '1', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '1', '0', '0', '0', '0', '2', '0', '0', '13', '0', '0', '0', '0', '0', '2', '0', '0', '32', '3', '671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/05/2012', 272.3666667, '04/01/2012', 33, 'Trimble57', '04/05/2012', ' ', '08 11.6416 S    036 24.0620 E::12-4-5 at 12:39:37 (UTC)', '213638.13', 9093325.9, 6, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;JJ', '1', '1', '12-4-5-BS033', '10', '10', ' ', '04/06/2012', '1', '0', '6', '6', '0', '13', '67', '80', '3', '4', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '4', '673', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/05/2012', 272.3666667, '04/01/2012', 35, 'Trimble57', '04/05/2012', ' ', '08 11.5771 S    036 23.7970 E::12-4-5 at 13:17:46 (UTC)', '213150.47', 9093441.7, 2, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 14, '12', '0', '3', '30', 'JK;JJ', '1', '0', '12-4-5-BS035', '10', '10', ' ', '04/06/2012', '1', '0', '0', '0', '0', '27', '12', '39', '1', '1', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0', '0', '0', '0', '1', '0', '0', '16', '2', '674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/10/2012', 272.3666667, '04/01/2012', 3, 'Trimble57', '04/10/2012', ' ', '08 11.4703 S    036 22.9062 E::12-4-10 at 13:32:27 (UTC)', '211512.2', 9093628.1, 3, 4, 234, 3, 3, 1, 0, 3, 2, 2, 1, 1, '0', '0', '2', '30', 'JK;JJ', '1', '1', '12-4-10-BS003', '10', '10', ' ', '04/11/2012', '1', '0', '1', '1', '0', '6', '2', '8', '0', '3', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '2', '0', '0', '8', '1', '676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/10/2012', 272.3666667, '04/01/2012', 5, 'Trimble57', '04/10/2012', ' ', '08 11.0367 S    036 23.2400 E::12-4-10 at 14:00:53 (UTC)', '212120.36', 9094431.8, 2, 4, 234, 3, 3, 4, 2, 1, 2, 2, 1, 4, '1', '0', '1', '30', 'JK;JJ', '1', '0', '12-4-10-BS005', '10', '10', ' ', '04/11/2012', '1', '0', '0', '0', '0', '7', '11', '18', '1', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '17', '1', '0', '25', '0', '0', '0', '0', '0', '1', '0', '0', '50', '5', '677', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/10/2012', 272.3666667, '04/01/2012', 6, 'Trimble57', '04/10/2012', ' ', '08 11.7711 S    036 22.7163 E::12-4-10 at 13:08:31 (UTC)', '211166.85', 9093071, 2, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'JK;JJ', '1', '0', '12-4-10-BS006', '10', '10', ' ', '04/11/2012', '1', '0', '0', '0', '0', '27', '43', '70', '2', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '334', '0', '0', '0', '0', '0', '3', '0', '0', '2', '0', '0', '0', '0', '0', '1', '0', '0', '340', '34', '675', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/12/2012', 272.3666667, '04/01/2012', 0, 'Trimble57', '04/12/2012', ' ', '08 09.2660 S    036 23.8358 E::12-4-12 at 13:57:09 (UTC)', '213194.15', 9097704.8, 2, 4, 24, 3, 3, 3, 2, 2, 2, 2, 1, 14, '1', '0', '1', '30', 'JK;JJ', '0', '0', '12-4-12-BS000', '10', '10', ' ', '4/13/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '15', '2', '679', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/12/2012', 272.3666667, '04/01/2012', 1, 'Trimble57', '04/12/2012', ' ', '08 10.5267 S    036 23.5931 E::12-4-12 at 14:59:40 (UTC)', '212763.15', 9095376.7, 6, 4, 234, 3, 3, 4, 2, 2, 2, 2, 1, 13, '0', '678', '1', '30', 'JK;JJ', '1', '0', '12-4-12-BS001', '10', '10', ' ', '4/13/2012', '1', '0', '0', '0', '0', '112', '71', '183', '6', '9', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '3', '0', '0', '0', '0', '2', '0', '0', '2', '0', '0', '0', '0', '0', '10', '0', '0', '27', '3', '681', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/12/2012', 272.3666667, '04/01/2012', 11, 'Trimble57', '04/12/2012', ' ', '08 09.1751 S    036 23.6219 E::12-4-12 at 13:38:54 (UTC)', '212799.96', 9097869.9, 2, 4, 234, 3, 3, 4, 2, 1, 2, 2, 1, 14, '1', '0', '2', '30', 'JK;JJ', '1', '0', '12-4-12-BS011', '10', '10', ' ', '4/13/2012', '1', '0', '0', '0', '0', '1', '9', '10', '0', '1', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '3', '0', '0', '0', '0', '2', '0', '0', '4', '0', '0', '0', '0', '0', '3', '0', '0', '20', '2', '678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '04/12/2012', 272.3666667, '04/01/2012', 20, 'Trimble57', '04/12/2012', ' ', '08 10.9145 S    036 23.1289 E::12-4-12 at 14:37:37 (UTC)', '211914.81', 9094655.9, 2, 4, 234, 3, 3, 4, 2, 1, 2, 2, 1, 14, '124', '0', '1', '30', 'JK;JJ', '1', '1', '12-4-12-BS020', '30', '10', ' ', '4/13/2012', '1', '0', '1', '1', '0', '3', '1', '4', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '11', '1', '680', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '05/09/2012', 131.3666667, '05/01/2012', 61, 'Trimble57', '05/09/2012', ' ', '08 10.7178 S    036 21.6551 E::12-5-9 at 13:23:57 (UTC)', '209203.96', 9095001, 4, 3, 24, 2, 3, 1, 0, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL', '0', '0', '12-5-9-BS061', '10', '0', ' ', '05/10/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '11', '0', '1', '12', '0', '690', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '05/09/2012', 131.3666667, '05/01/2012', 62, 'Trimble57', '05/09/2012', ' ', '08 10.6503 S    036 21.5954 E::12-5-9 at 12:59:26 (UTC)', '209093.43', 9095124.8, 4, 3, 24, 2, 3, 1, 0, 2, 1, 1, 1, 14, '1', '0', '3', '30', 'JK;DL', '0', '0', '12-5-9-BS062', '10', '0', ' ', '05/10/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '11', '0', '689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/15/2012', 131.3666667, '05/01/2012', 3, 'Trimble57', '5/15/2012', ' ', '08 11.4557 S    036 22.9486 E::12-5-15 at 14:40:42 (UTC)', '211589.97', 9093655.6, 3, 4, 234, 3, 3, 1, 0, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL', '1', '1', '12-5-15-BS003', '10', '10', ' ', '5/16/2012', '1', '0', '5', '5', '0', '2', '0', '2', '0', '0', '5', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '62', '3', '0', '3', '0', '0', '0', '0', '0', '24', '0', '0', '0', '0', '0', '14', '0', '0', '103', '10', '693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/15/2012', 131.3666667, '05/01/2012', 5, 'Trimble57', '5/15/2012', ' ', '08 11.0378 S    036 23.2469 E::12-5-15 at 15:00:29 (UTC)', '212133.06', 9094429.9, 2, 4, 234, 3, 3, 3, 2, 1, 1, 1, 1, 14, '1', '0', '1', '30', 'JK;DL', '1', '1', '12-5-15-BS005', '10', '10', ' ', '5/16/2012', '1', '0', '9', '9', '0', '4', '1', '5', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '21', '2', '696', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/15/2012', 131.3666667, '05/01/2012', 6, 'Trimble57', '5/15/2012', ' ', '08 11.7952 S    036 22.7189 E::12-5-15 at 14:24:03 (UTC)', '211171.88', 9093026.6, 2, 4, 234, 3, 3, 1, 0, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'JK;DL', '1', '0', '12-5-15-BS006', '10', '8', ' ', '5/16/2012', '1', '0', '0', '0', '0', '1', '3', '4', '0', '1', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '24', '3', '691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/17/2012', 131.3666667, '05/01/2012', 1, 'Trimble57', '5/17/2012', ' ', '08 10.5358 S    036 23.6052 E::12-5-17 at 04:59:06 (UTC)', '212785.53', 9095360, 6, 4, 234, 3, 3, 4, 124, 1, 3, 2, 1, 13, '0', '678', '3', '30', 'JK;MK', '1', '1', '12-5-17-BS001', '10', '10', ' ', '5/17/2012', '1', '1', '1', '2', '0', '11', '4', '15', '1', '0', '5', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '3', '0', '108', '2', '1', '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '41', '0', '0', '155', '16', '698', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/17/2012', 131.3666667, '05/01/2012', 11, 'Trimble57', '5/17/2012', ' ', '08 09.3665 S    036 23.5700 E::12-5-17 at 15:34:17 (UTC)', '212706.75', 9097516.3, 2, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'JK;MK', '1', '1', '12-5-17-BS011', '10', '10', ' ', '5/18/2012', '1', '0', '2', '2', '0', '4', '11', '15', '1', '0', '5', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '13', '1', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '7', '0', '0', '23', '2', '701', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/17/2012', 131.3666667, '05/01/2012', 20, 'Trimble57', '5/17/2012', ' ', '08 10.9066 S    036 23.1282 E::12-5-17 at 04:28:55 (UTC)', '211913.39', 9094670.4, 2, 4, 24, 3, 3, 1, 0, 1, 2, 1, 1, 14, '12345', '0', '1', '30', 'JK;DL', '1', '0', '12-5-17-BS020', '10', '10', ' ', '5/17/2012', '1', '0', '0', '0', '0', '3', '2', '5', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '27', '1', '2', '1', '0', '0', '1', '0', '0', '6', '0', '0', '0', '0', '0', '8', '0', '0', '43', '4', '697', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/18/2012', 131.3666667, '05/01/2012', 0, 'Trimble57', '5/18/2012', ' ', '08 09.1890 S    036 23.5963 E::12-5-18 at 04:37:44 (UTC)', '212753.15', 9097843.9, 2, 4, 4, 3, 3, 4, 2, 1, 1, 2, 1, 124, '1', '0', '1', '30', 'JK;MK', '1', '0', '12-5-18-BS000', '10', '10', 'Alot of green algal present', '5/18/2012', '1', '0', '0', '0', '0', '3', '34', '37', '1', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '4', '1', '0', '2', '0', '0', '2', '0', '0', '16', '2', '702', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/22/2012', 131.3666667, '05/01/2012', 23, 'Trimble57', '5/22/2012', ' ', '08 10.4464 S    036 25.2996 E::12-5-22 at 12:32:35 (UTC)', '215898.23', 9095544.9, 3, 3, 24, 2, 3, 1, 0, 3, 2, 2, 1, 14, '125', '0', '1', '30', 'JK;JJ', '0', '0', '12-5-22-BS023', '10', '10', ' ', '5/23/2012', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '705', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '5/22/2012', 131.3666667, '05/01/2012', 24, 'Trimble57', '5/22/2012', ' ', '08 09.9653 S    036 24.8901 E::12-5-22 at 13:12:07 (UTC)', '215140.01', 9096427.5, 3, 3, 24, 2, 3, 1, 0, 2, 2, 2, 1, 134, '12', '678', '2', '30', 'JK;JJ', '0', '1', '12-5-22-BS024', '10', '10', ' ', '5/23/2012', '1', '3', '6', '9', '0', '0', '0', '0', '0', '0', '5', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '706', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/05/2012', 10.50166667, '06/01/2012', 27, 'Trimble57', '06/05/2012', 'MK', '08 13.9608 S    036 25.1721 E::12-6-5 at 13:50:30 (UTC)', '215705.61', 9089061.7, 2, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 134, '12', '678', '1', '30', 'JK;DL', '1', '1', '12-6-5-BS027', '10', '10', ' ', '06/06/2012', '1', '28', '43', '71', '2', '7', '3', '10', '0', '2', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '17', '0', '3', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '11', '0', '0', '30', '3', '707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/05/2012', 10.50166667, '06/01/2012', 39, 'Trimble57', '06/05/2012', 'MK', '08 15.0808 S    036 23.2979 E::12-6-5 at 14:51:34 (UTC)', '212275.62', 9086973.6, 3, 4, 234, 3, 3, 3, 4, 2, 1, 2, 1, 134, '1', '678', '3', '30', 'JK;DL', '1', '0', '12-6-5-BS039', '10', '10', ' ', '06/06/2012', '1', '0', '0', '0', '0', '7', '13', '20', '1', '1', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '1', '0', '11', '0', '0', '1', '0', '0', '13', '0', '0', '0', '0', '0', '74', '0', '0', '122', '12', '708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/06/2012', 10.50166667, '06/01/2012', 61, 'Trimble57', '06/06/2012', 'JK', '08 10.7715 S    036 21.7054 E::12-6-6 at 14:17:36 (UTC)', '209297.12', 9094902.6, 3, 4, 24, 3, 3, 3, 2, 3, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;JJ', '1', '1', '12-6-6-BS061', '0', '0', ' ', '06/07/2012', '1', '0', '4', '4', '0', '3', '3', '6', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '9', '0', '710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/06/2012', 10.50166667, '06/01/2012', 62, 'Trimble57', '06/06/2012', 'DL', '08 10.6655 S    036 21.5526 E::12-6-6 at 13:41:06 (UTC)', '209015', 9095096.3, 3, 4, 234, 3, 3, 2, 4, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;CH', '1', '1', '12-6-6-BS062', '10', '10', ' ', '06/07/2012', '1', '7', '12', '19', '1', '11', '18', '29', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '3', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/07/2012', 10.50166667, '06/01/2012', 33, 'Trimble57', '06/07/2012', 'MK', '08 11.6428 S    036 24.0642 E::12-6-7 at 13:57:40 (UTC)', '213642.23', 9093323.7, 6, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 14, '13', '0', '3', '30', 'JK;DL;JJ', '1', '1', '12-6-7-BS033', '0', '0', ' ', '06/08/2012', '1', '31', '13', '44', '1', '14', '2', '16', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '3', '0', '711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/07/2012', 10.50166667, '06/01/2012', 35, 'Trimble57', '06/07/2012', 'DL', '08 11.5496 S    036 23.7930 E::12-6-7 at 14:34:55 (UTC)', '213142.75', 9093492.5, 2, 4, 24, 3, 3, 2, 2, 1, 1, 1, 1, 14, '13', '0', '3', '30', 'JK;DL;JJ', '1', '1', '12-6-7-BS035', '0', '0', ' ', '06/08/2012', '1', '9', '11', '20', '1', '1', '4', '5', '0', '2', '6', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '2', '0', '4', '0', '0', '5', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '3', '0', '0', '17', '0', '712', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/12/2012', 10.50166667, '06/01/2012', 3, 'Trimble57', '06/12/2012', 'DL', '08 11.4545 S    036 22.9484 E::12-6-12 at 10:57:41 (UTC)', '211589.52', 9093657.8, 3, 4, 234, 3, 3, 3, 4, 2, 1, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;JJ', '1', '0', '12-6-12-BS003', '10', '10', ' ', '6/13/2012', '1', '0', '0', '0', '0', '9', '18', '27', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '39', '4', '714', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/12/2012', 10.50166667, '06/01/2012', 5, 'Trimble57', '06/12/2012', 'DL', '08 11.0456 S    036 23.2393 E::12-6-12 at 11:40:17 (UTC)', '212119.26', 9094415.4, 2, 4, 24, 3, 3, 4, 2, 1, 1, 2, 1, 134, '1', '6', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-12-BS005', '10', '10', ' ', '6/13/2012', '1', '7', '19', '26', '1', '4', '23', '27', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '3', '0', '3', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '12', '0', '2', '78', '8', '715', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '06/12/2012', 10.50166667, '06/01/2012', 6, 'Trimble57', '06/12/2012', 'DL', '08 11.7911 S    036 22.7210 E::12-6-12 at 10:26:56 (UTC)', '211175.13', 9093034.8, 2, 4, 24, 3, 3, 3, 4, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'JK;DL;JJ', '1', '1', '12-6-12-BS006', '10', '10', ' ', '6/13/2012', '1', '1', '3', '4', '0', '37', '11', '48', '2', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '28', '3', '713', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/13/2012', 10.50166667, '06/01/2012', 1, 'Trimble57', '6/13/2012', 'JK', '08 10.5273 S    036 23.5924 E::12-6-13 at 14:15:53 (UTC)', '212761.94', 9095375.6, 6, 4, 234, 3, 3, 4, 2, 1, 3, 1, 1, 13, '0', '678', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-13-BS001', '10', '10', ' ', '6/14/2012', '1', '210', '80', '290', '10', '27', '13', '40', '1', '3', '6', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1', '388', '0', '0', '2', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '12', '0', '0', '411', '41', '717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/13/2012', 10.50166667, '06/01/2012', 20, 'Trimble57', '6/13/2012', 'JK', '08 10.9180 S    036 23.1357 E::12-6-13 at 13:41:36 (UTC)', '211927.31', 9094649.5, 2, 4, 234, 3, 3, 3, 4, 1, 1, 1, 1, 14, '12345', '0', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-13-BS020', '10', '10', ' ', '6/14/2012', '1', '7', '14', '21', '1', '3', '7', '10', '0', '1', '6', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2', '0', '20', '0', '1', '2', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '5', '0', '0', '29', '3', '716', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/14/2012', 10.50166667, '06/01/2012', 0, 'Trimble57', '6/14/2012', 'DL', '08 09.1752 S    036 23.6480 E::12-6-14 at 15:43:05 (UTC)', '212847.93', 9097870, 2, 4, 24, 3, 3, 4, 2, 1, 2, 2, 1, 124, '1', '0', '1', '30', 'JK;JJ', '1', '0', '12-6-14-BS000', '10', '10', ' ', '6/15/2012', '1', '0', '0', '0', '0', '31', '26', '57', '2', '0', '6', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '40', '0', '0', '10', '0', '0', '12', '0', '0', '0', '0', '0', '1', '0', '0', '11', '0', '0', '74', '7', '719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/14/2012', 10.50166667, '06/01/2012', 11, 'Trimble57', '6/14/2012', 'DL', '08 09.3503 S    036 23.5584 E::12-6-14 at 14:59:00 (UTC)', '212685.38', 9097546, 6, 4, 234, 3, 3, 3, 2, 1, 1, 2, 1, 12, '0', '0', '1', '30', 'JK;JJ', '1', '1', '12-6-14-BS011', '10', '10', ' ', '6/15/2012', '1', '0', '4', '4', '0', '11', '1', '12', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '1', '0', '8', '0', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '31', '0', '0', '78', '8', '718', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/19/2012', 10.50166667, '06/01/2012', 23, 'Trimble57', '6/19/2012', 'JK', '08 10.4413 S    036 25.3338 E::12-6-19 at 11:50:25 (UTC)', '215961.02', 9095554.7, 3, 2, 24, 1, 3, 1, 0, 2, 2, 2, 1, 14, '12', '0', '1', '30', 'JK;DL;JJ', '1', '1', '12-6-19-BS023', '10', '7', ' ', '6/20/2012', '1', '4', '0', '4', '0', '3', '8', '11', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '3', '0', '720', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/19/2012', 10.50166667, '06/01/2012', 24, 'Trimble57', '6/19/2012', 'MK', '08 09.9622 S    036 24.8920 E::12-6-19 at 13:52:34 (UTC)', '215143.29', 9096433.1, 3, 3, 24, 1, 3, 3, 2, 2, 2, 2, 1, 134, '1', '678', '2', '30', 'JK;DL;JJ', '1', '1', '12-6-19-BS024', '10', '9', ' ', '6/20/2012', '1', '0', '4', '4', '0', '9', '2', '11', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '3', '0', '0', '16', '2', '722', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/19/2012', 10.50166667, '06/01/2012', 53, 'Trimble57', '6/19/2012', 'MK', '08 10.9059 S    036 26.7038 E::12-6-19 at 12:59:02 (UTC)', '218484', 9094714, 3, 2, 3, 3, 3, 3, 2, 2, 2, 2, 1, 14, '1', '0', '3', '30', 'JK;DL;JJ', '1', '0', '12-6-19-BS053', '10', '10', ' ', '6/20/2012', '1', '0', '0', '0', '0', '4', '6', '10', '0', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/20/2012', 10.50166667, '06/01/2012', 52, 'Trimble57', '6/20/2012', 'MK', '08 11.4936 S    036 27.1135 E::12-6-20 at 14:12:36 (UTC)', '219243.8', 9093634.8, 2, 4, 234, 3, 3, 4, 2, 1, 1, 2, 1, 14, '1', '0', '2', '30', 'DL;JJ', '1', '0', '12-6-20-BS052', '10', '8', ' ', '6/21/2012', '1', '0', '0', '0', '0', '16', '11', '27', '1', '0', '6', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '9', '1', '724', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0),
(31, 1, '6/20/2012', 10.50166667, '06/01/2012', 56, 'Trimble57', '6/20/2012', 'MK', '08 12.3879 S    036 27.5174 E::12-6-20 at 13:11:09 (UTC)', '219996.35', 9091990.2, 2, 4, 234, 3, 3, 4, 4, 1, 1, 2, 1, 14, '1', '0', '1', '30', 'DL;JJ', '1', '0', '12-6-20-BS056', '10', '10', ' ', '6/21/2012', '1', '0', '0', '0', '0', '13', '4', '17', '1', '0', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '3', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1', '723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `breedingsite_pdadata`
--

CREATE TABLE `breedingsite_pdadata` (
  `projectregsite_id` double DEFAULT NULL COMMENT 'foreign key',
  `sen` double DEFAULT NULL COMMENT 'form serial number',
  `ri` double DEFAULT NULL COMMENT 'record id',
  `ui` double DEFAULT NULL COMMENT 'userid',
  `u` text COMMENT 'user name',
  `ts` datetime DEFAULT NULL COMMENT 'timestamp',
  `bsno` int(11) DEFAULT NULL COMMENT 'bsnumber',
  `dt` text COMMENT 'date',
  `fw` text COMMENT 'fieldworker',
  `skp` mediumtext COMMENT 'skipifnobs',
  `gps` text COMMENT 'gpsreading',
  `e` double DEFAULT NULL COMMENT 'easting',
  `n` double DEFAULT NULL COMMENT 'northing',
  `ha` tinyint(1) DEFAULT NULL COMMENT 'haveaccess',
  `ins` mediumtext COMMENT 'ifnoskip',
  `htr` text COMMENT 'habitat type',
  `vtwh` text COMMENT 'VegetationQuantityInWaterHabitat',
  `vtw` text COMMENT 'VegetationTypeInWaterHabitat',
  `soh` text COMMENT 'ShadeOverHabitat',
  `hsp` text COMMENT 'HabitatSizePerimeter',
  `aqw` text COMMENT 'AlgalQuantityInWaterHabitat',
  `at` text COMMENT 'AlgaeType',
  `wm` text COMMENT 'WaterMovement',
  `wc` text COMMENT 'WaterColour',
  `wd` text COMMENT 'WaterDepth',
  `wt` text COMMENT 'WaterType',
  `eah` text COMMENT 'EnvironmentAroundWaterHabitat',
  `cc` text COMMENT 'CultivatedCrops',
  `cg` text COMMENT 'CattleGrazing',
  `dfh` text COMMENT 'DistanceFromHomes',
  `ls` text COMMENT 'LarvalSampling',
  `nod` int(11) DEFAULT NULL COMMENT 'NumberOfDips',
  `iod` text COMMENT 'InitialsOfDippers',
  `lp` text COMMENT 'LarvaePresent',
  `cul` text COMMENT 'Culicines',
  `ano` text COMMENT 'Anophelines',
  `slc` char(20) NOT NULL COMMENT 'SampleLabelCode',
  `sts` text COMMENT 'StickyTrapSampling',
  `nts` int(11) DEFAULT NULL COMMENT 'NumberOfTrapsSetD1',
  `fond` text COMMENT 'Fill Out the Next Day',
  `noc` int(11) DEFAULT NULL COMMENT 'NumberOfTrapsCollectedD2',
  `cs` text COMMENT 'CommentSection',
  `comments` text COMMENT 'Comments'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custed`
--

CREATE TABLE `custed` (
  `pc` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to ProjectReg',
  `ft` varchar(5) NOT NULL COMMENT 'Hold type of the form which submitted',
  `num_split` int(2) NOT NULL COMMENT 'Hold number of split of value ',
  `p_attri` varchar(300) NOT NULL COMMENT 'Hold data for column selected ',
  `p_attri2` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custed`
--

INSERT INTO `custed` (`pc`, `ft`, `num_split`, `p_attri`, `p_attri2`) VALUES
(1, 'ED1', 13, 'fr,dt,ea,hh,me,ind,st,ft,vi,dy,vc,dsen,notes', ''),
(2, 'ED1', 22, 'sen,fr,dt,ea,cr,cp,hh,sid,me,ind,htr,st,ft,hp,rnd,blk,shh,tr,dy,hs,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Enumeration area (EA),Cluster (CR),Compound or plot (CP),Household (HH),Structure ID (SID),Method (ME),Indoor (IND),Habitat type (htr),Start time (ST),Finish time (FT),Holding period (HP),Round (RND),Block (BLK),House/Hut (SHH),Treatment (TR),Experimental day (DY),No. Household Sampled (HS),Valid catch (VC),Destination Form Serial (DSEN)'),
(3, 'ED1', 10, 'sen,fr,dt,me,ind,st,ft,tr,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Treatment (TR),Valid catch (VC),Destination Form Serial (DSEN)'),
(4, 'ED1', 13, 'fr,dt,ea,hh,me,ind,st,ft,rnd,vi,dy,vc,dsen', ''),
(5, 'ED1', 9, 'sen,fr,dt,me,ind,st,ft,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Valid catch (VC),Destination Form Serial (DSEN)'),
(6, 'ED1', 15, 'fr,dt,ea,hh,me,ind,st,ft,vi,dy,oth,vc,dsen,longitude,latitude', ''),
(7, 'ED1', 15, 'fr,dt,ea,hh,me,ind,st,ft,vi,dy,oth,vc,dsen,\r\nlongitude,latitude', ''),
(8, 'ED1', 24, 'sen,fr,dt,ea,cr,cp,hh,sid,me,ind,htr,st,ft,hp,rnd,blk,shh,stn,vi,tr,dy,hs,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Enumeration area (EA),Cluster (CR),Compound or plot (CP),Household (HH),Structure ID (SID),Method (ME),Indoor (IND),Habitat type (htr),Start time (ST),Finish time (FT),Holding period (HP),Round (RND),Block (BLK),House/Hut (SHH),Station (STN),Volunteer initials (VI),Treatment (TR),Experimental day (DY),No. Household Sampled (HS),Valid catch (VC),Destination Form Serial (DSEN)'),
(10, 'ED1', 26, 'sen,fr,dt,ea,cr,cp,hh,sid,me,ind,htr,st,ft,hp,rnd,blk,shh,stn,vi,tr,dy,hs,vc,dsen,oth,notes', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Enumeration area (EA),Cluster (CR),Compound or plot (CP),Household (HH),Structure ID (SID),Method (ME),Indoor (IND),Habitat type (htr),Start time (ST),Finish time (FT),Holding period (HP),Round (RND),Block (BLK),House/Hut (SHH),Station (STN),Volunteer initials (VI),Treatment (TR),Experimental day (DY),No. Household Sampled (HS),Valid catch (VC),Destination Form Serial (DSEN),Other (OTH),Notes (Notes)'),
(11, 'ED1', 18, 'sen,fr,dt,ea,cr,cp,me,ind,st,ft,hp,rnd,blk,shh,stn,vi,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Enumeration area (EA),Cluster (CR),Compound or plot (CP),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Holding period (HP),Round (RND),Block (BLK),House/Hut (SHH),Station (STN),Volunteer initials (VI),Valid catch (VC),Destination Form Serial (DSEN)'),
(9, 'ED1', 11, 'sen,fr,dt,ea,me,ind,htr,st,ft,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Enumeration area (EA),Method (ME),Indoor (IND),Habitat type (htr),Start time (ST),Finish time (FT),Valid catch (VC),Destination Form Serial (DSEN)'),
(13, 'ED1', 14, 'fr,dt,ea,hh,me,ind,st,ft,rnd,vi,tr,dy,vc,dsen', ''),
(12, 'ED1', 15, 'fr,dt,ea,hh,me,ind,htr,st,ft,rnd,vi,dy,vc,notes,dsen', ''),
(14, 'ED1', 10, 'sen,fr,dt,me,ind,st,ft,tr,vc,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Treatment (TR),Valid catch (VC),Destination Form Serial (DSEN)'),
(16, 'ED2', 16, 'sen,fr,ssen,sfr,slc,sbp,sst,ssid,scc,stx,ssas,ag,n,sd,st,dsen', 'Serial No. (SEN),Formrow (FR),Source Form Serial No. (SSEN),Source Form Row (SFR),Sample Lable Code (SLC),Source Body Part (SBP),Source Sample Type (SST),Source Sample ID (SSID),Source Colony Code (SCC), Source Taxon (STX),Source Sex and Abdominal Status (SSAS),Age (AG),Number of Mosquitoes (N),Start Date (SD),Start Time (ST),Destination Form Serial (DSEN)'),
(16, 'ED1', 10, 'sen,fr,dt,me,ind,st,ft,vc,notes,dsen', 'Serial No. (SEN),Formrow (FR),Date of collection (DT),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Valid catch (VC),Notes (Notes),Destination Form Serial (DSEN)');

-- --------------------------------------------------------

--
-- Table structure for table `custgraph`
--

CREATE TABLE `custgraph` (
  `pc` int(11) NOT NULL,
  `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num_split` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `p_attri` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `p_attri2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custgraph`
--

INSERT INTO `custgraph` (`pc`, `location`, `num_split`, `p_attri`, `p_attri2`) VALUES
(3, 'home', '13', 'ea,cr,cp,me,ind,st,ft,hp,rnd,blk,vi,tr,vc', 'Enumeration area (EA),Cluster (CR),Compound or plot (CP),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Holding period (HP),Round (RND),Block (BLK),Volunteer initials (VI),Treatment (TR),Valid catch (VC)'),
(11, 'home', '13', 'ea,cr,cp,me,ind,st,ft,hp,rnd,blk,vi,tr,vc', 'Enumeration area (EA),Cluster (CR),Compound or plot (CP),Method (ME),Indoor (IND),Start time (ST),Finish time (FT),Holding period (HP),Round (RND),Block (BLK),Volunteer initials (VI),Treatment (TR),Valid catch (VC)');

-- --------------------------------------------------------

--
-- Table structure for table `custso`
--

CREATE TABLE `custso` (
  `pc` int(11) NOT NULL,
  `ft` varchar(5) NOT NULL,
  `num_split` int(11) NOT NULL,
  `p_attri` varchar(400) NOT NULL,
  `p_attri2` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custso`
--

INSERT INTO `custso` (`pc`, `ft`, `num_split`, `p_attri`, `p_attri2`) VALUES
(1, 'SO1', 11, 'fr,rc,ssen,sfr,sbf,sslc,sst,ssid,tx,species,pf', NULL),
(6, 'SO1', 11, 'fr,rc,ssen,sfr,sbf,sslc,sst,ssid,tx,species,pf', NULL),
(3, 'SO1', 11, 'fr,rc,ssen,sfr,sbf,sslc,sst,ssid,tx,species,pf', NULL),
(2, 'SO1', 12, 'fr,rc,ssen,sfr,sbf,sslc,sst,ssid,tx,species,pf,po', NULL),
(10, 'SO1', 13, 'fr\n,rc\n,ssen\n,sfr\n,sbf\n,sslc\n,sst\n,ssid\n,stx\n,kdr\n,pf\n,human\n,bps\n', 'Formrow (FR),Box Row Column (RC),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (SBF),Source Sample Label Code (SSLC),Sample Type (SST),Sample ID (SSID),Taxon (STX),PCR KDR (kdr),CSP ELISA Pf (pf),Bloodmeal ELISA Human (human),Body Part Stored (BPS)'),
(13, 'SO2', 16, 'sen\n,fr\n,ssen\n,sfr\n,sbf\n,sslc\n,sst\n,ssid\n,stx\n,ssas\n,ms\n,pr\n,inf\n,os\n,wl\n,bps\n', 'Serial No. (SEN),Formrow (FR),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (SBF),Source Sample Label Code (SSLC),Sample Type (SST),Source Sample ID (SSID),Taxon (STX),Sex and Abdominal Status (SSAS),Mating status (MS),Parity (PR),Infection (INF),Ovariolar stalks (OS),Wing Length (WL),Body Part Stored (BPS)'),
(13, 'SO1', 13, 'sen\n,fr\n,rc\n,ssen\n,sfr\n,sbf\n,sslc\n,sst\n,ssid\n,stx\n,species\n,kdr\n,bps\n', 'Serial No. (SEN),Formrow (FR),Box Row Column (RC),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (SBF),Source Sample Label Code (SSLC),Sample Type (SST),Source Sample ID (SSID),Taxon (STX),PCR Species (Species),PCR KDR (kdr),Body Part Stored (BPS)'),
(16, 'SO1', 13, 'sen,ssen,sfr,fr,rc,sbf,sslc,sst,ssid,stx,species,kdr,bps', 'Serial No. (SEN),SS Form Serial Number (SSEN),SS Form row (SFR),Formrow (FR),Box Row Column (RC),Body Form (SBF),Source Sample Label Code (SSLC),Sample Type (SST),Source Sample ID (SSID),Taxon (STX),PCR Species (Species),PCR KDR (kdr),Body Part Stored (BPS)'),
(16, 'SO2', 16, 'sen,ssen,sfr,fr,sbf,sslc,sst,ssid,stx,ssas,ms,pr,inf,os,wl,bps', 'Serial No. (SEN),SS Form Serial Number (SSEN),SS Form row (SFR),Formrow (FR),Body Form (SBF),Source Sample Label Code (SSLC),Sample Type (SST),Source Sample ID (SSID),Taxon (STX),Sex and Abdominal Status (SSAS),Mating status (MS),Parity (PR),Infection (INF),Ovariolar stalks (OS),Wing Length (WL),Body Part Stored (BPS)');

-- --------------------------------------------------------

--
-- Table structure for table `custss`
--

CREATE TABLE `custss` (
  `pc` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to ProjectReg',
  `ft` varchar(5) NOT NULL COMMENT 'Hold type of the form which submitted',
  `num_split` int(2) NOT NULL COMMENT 'Hold number of split of value ',
  `p_attri` varchar(300) NOT NULL COMMENT 'Hold data for column selected ',
  `p_attri2` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custss`
--

INSERT INTO `custss` (`pc`, `ft`, `num_split`, `p_attri`, `p_attri2`) VALUES
(1, 'SS1', 19, 'sen,ssen,sfr,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(2, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(3, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(4, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(5, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(6, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(7, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(8, 'SS1', 20, 'sen\n,ssen\n,sfr\n,bf\n,fr\n,tx\n,sas\n,n\n,notes\n,slc\n,ni\n,nb\n,sid01\n,sid02\n,sid03\n,sid04\n,sid05\n,sid06\n,sid07\n,nd\n', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Body Form (BF),Form row (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Notes (Notes),Sample Label Code (SLC),No. of Individuals (NI),No. of Batches (NB),No. In Batch 1 (SID01),No. In Batch 2 (SID02),No. In Batch 3 (SID03),No. In Batch 4 (SID04),No. In Batch 5 (SID05),No. In Batch 6 (SID06),No. In Batch 7 (SID07),No. Discarded (ND)'),
(10, 'SS3', 17, 'sen,ssen,sfr,fr,sd,dd,tx,sas,fd,ft,bf,hp,n,slc,st,ni,nb', NULL),
(9, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Body Form (BF),Form row (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Notes (Notes),Sample Label Code (SLC),No. of Individuals (NI),No. of Batches (NB),No. In Batch 1 (SID01),No. In Batch 2 (SID02),No. In Batch 3 (SID03),No. In Batch 4 (SID04),No. In Batch 5 (SID05),No. In Batch 6 (SID06),No. In Batch 7 (SID07),No. Discarded (ND)'),
(11, 'SS3', 10, 'sen\n,ssen\n,sfr\n,sd\n,fd\n,fr\n,tx\n,bf\n,st\n,nd\n', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Start Date (SD),Finish Date (FD),Form row (FR),Taxon (TX),Body Form (BF),Sample Type (ST),No. Discarded (ND)'),
(13, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(12, 'SS1', 20, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', NULL),
(14, 'SS1', 20, 'sen\n,ssen\n,sfr\n,bf\n,fr\n,tx\n,sas\n,n\n,notes\n,slc\n,ni\n,nb\n,sid01\n,sid02\n,sid03\n,sid04\n,sid05\n,sid06\n,sid07\n,nd\n', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Body Form (BF),Form row (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Notes (Notes),Sample Label Code (SLC),No. of Individuals (NI),No. of Batches (NB),No. In Batch 1 (SID01),No. In Batch 2 (SID02),No. In Batch 3 (SID03),No. In Batch 4 (SID04),No. In Batch 5 (SID05),No. In Batch 6 (SID06),No. In Batch 7 (SID07),No. Discarded (ND)'),
(10, 'SS1', 19, 'sen\n,ssen\n,sfr\n,bf\n,fr\n,tx\n,sas\n,n\n,notes\n,slc\n,st\n,ni\n,nb\n,sid01\n,sid02\n,sid05\n,sid06\n,sid07\n,nd\n', 'Serial No. (SEN),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (BF),Form row (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Notes (Notes),Sample Label Code (SLC),Sample Type (ST),No. of Individual (NI),No. of Batches (NB),No. In Batch 1 (SID01),No. In Batch 2 (SID02),No. In Batch 5 (SID05),No. In Batch 6 (SID06),No. In Batch 7 (SID07),No. Discarded (ND)'),
(10, 'SS2', 10, 'sen\n,ssen\n,sfr\n,hw\n,hs\n,fr\n,tx\n,bf\n,ndi09\n,ndi10\n', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Habitat Wet (HW),Habitat Size (HS),Form row (FR),Taxon (TX),Body Form (BF),Number Sampled Dipping 9 (NDI09),Number Sampled Dipping 10 (NDI10)'),
(11, 'SS1', 21, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,st,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Body Form (BF),Form row (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Notes (Notes),Sample Label Code (SLC),Sample Type (ST),No. of Individuals (NI),No. of Batches (NB),No. In Batch 1 (SID01),No. In Batch 2 (SID02),No. In Batch 3 (SID03),No. In Batch 4 (SID04),No. In Batch 5 (SID05),No. In Batch 6 (SID06),No. In Batch 7 (SID07),No. Discarded (ND)'),
(11, 'SS2', 15, 'sen\n,ssen\n,sfr\n,hw\n,hs\n,fr\n,tx\n,bf\n,ndi01\n,ndi02\n,notes\n,slc\n,st\n,ni\n,nb\n', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Habitat Wet (HW),Habitat Size (HS),Form row (FR),Taxon (TX),Body Form (BF),Number Sampled Dipping 1 (NDI01),Number Sampled Dipping 2 (NDI02),Notes (Notes),Sample Label Code (SLC),Sample Type (ST),No. of Individual (NI),No. of Batches (NB)'),
(16, 'SS1', 15, 'sen,ssen,sfr,bf,fr,tx,sas,n,notes,slc,st,ni,nb,sid01,nd', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Body Form (BF),Form row (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Notes (Notes),Sample Label Code (SLC),Sample Type (ST),No. of Individuals (NI),No. of Batches (NB),No. In Batch 1 (SID01),No. Discarded (ND)'),
(16, 'SS2', 13, 'sen,ssen,sfr,hw,hs,fr,tx,bf,ndi01,ndi02,ni,nb,nd', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Habitat Wet (HW),Habitat Size (HS),Form row (FR),Taxon (TX),Body Form (BF),Number Sampled Dipping 1 (NDI01),Number Sampled Dipping 2 (NDI02),No. of Individual (NI),No. of Batches (NB),No. Discarded (ND)'),
(16, 'SS3', 14, 'sen,ssen,sfr,sd,fd,fr,dd,tx,sas,mt,bf,st,sid01,nd', 'Serial No. (SEN),ED Form Serial Number (SSEN),ED Form row (SFR),Start Date (SD),Finish Date (FD),Form row (FR),Dead (DD),Taxon (TX),Sex and Abdominal Status (SAS),Mates (MT),Body Form (BF),Sample Type (ST),No. In Batch 1 (SID01),No. Discarded (ND)');

-- --------------------------------------------------------

--
-- Table structure for table `custst`
--

CREATE TABLE `custst` (
  `pc` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to ProjectReg',
  `ft` varchar(5) NOT NULL COMMENT 'Hold type of the form which submitted',
  `num_split` int(2) NOT NULL COMMENT 'Hold number of split of value ',
  `p_attri` varchar(300) NOT NULL COMMENT 'Hold data for column selected ',
  `p_attri2` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custst`
--

INSERT INTO `custst` (`pc`, `ft`, `num_split`, `p_attri`, `p_attri2`) VALUES
(13, 'ST2', 7, 'sen\n,fr\n,ssen\n,ns\n,fst\n,ff\n,rcn\n', 'Serial No. (SEN),Formrow (FR),Box & Form Serial Number (SSEN),No. of Samples (NS),Storage Temperature (FST),Crate/Freezer/Fridge Number (FF),Rack/Carton Number (RCN)'),
(11, 'ST2', 7, 'sen\n,fr\n,ssen\n,ns\n,fst\n,ff\n,rcn\n', 'Serial No. (SEN),Formrow (FR),Box & Form Serial Number (SSEN),No. of Samples (NS),Storage Temperature (FST),Crate/Freezer/Fridge Number (FF),Rack/Carton Number (RCN)'),
(11, 'ST1', 10, 'sen\n,fr\n,rc\n,ssen\n,sfr\n,sbf\n,sslc\n,sst\n,ssid\n,stx\n', 'Serial No. (SEN),Formrow (FR),Box Row Column (RC),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (SBF),Sample Label Code (SSLC),Sample Type (SST),Sample ID (SSID),Taxon (STX)'),
(10, 'ST2', 4, 'sen\n,fr\n,ssen\n,ns\n', 'Serial No. (SEN),Formrow (FR),Box & Form Serial Number (SSEN),No. of Samples (NS)'),
(10, 'ST1', 10, 'sen\n,fr\n,rc\n,ssen\n,sfr\n,sbf\n,sslc\n,sst\n,ssid\n,stx\n', 'Serial No. (SEN),Formrow (FR),Box Row Column (RC),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (SBF),Sample Label Code (SSLC),Sample Type (SST),Sample ID (SSID),Taxon (STX)'),
(13, 'ST1', 10, 'sen\n,fr\n,rc\n,ssen\n,sfr\n,sbf\n,sslc\n,sst\n,ssid\n,stx\n', 'Serial No. (SEN),Formrow (FR),Box Row Column (RC),SS Form Serial Number (SSEN),SS Form row (SFR),Body Form (SBF),Sample Label Code (SSLC),Sample Type (SST),Sample ID (SSID),Taxon (STX)'),
(5, 'ST2', 7, 'sen\n,fr\n,ssen\n,ns\n,fst\n,ff\n,rcn\n', 'Serial No. (SEN),Formrow (FR),Box & Form Serial Number (SSEN),No. of Samples (NS),Storage Temperature (FST),Crate/Freezer/Fridge Number (FF),Rack/Carton Number (RCN)'),
(16, 'ST2', 7, 'sen,fr,ssen,ns,fst,ff,rcn', 'Serial No. (SEN),Formrow (FR),Box & Form Serial Number (SSEN),No. of Samples (NS),Storage Temperature (FST),Crate/Freezer/Fridge Number (FF),Rack/Carton Number (RCN)'),
(16, 'ST1', 10, 'sen,ssen,sfr,fr,rc,sbf,sslc,sst,ssid,stx', 'Serial No. (SEN),SS Form Serial Number (SSEN),SS Form row (SFR),Formrow (FR),Box Row Column (RC),Body Form (SBF),Sample Label Code (SSLC),Sample Type (SST),Sample ID (SSID),Taxon (STX)');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `dis_id` int(7) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of district combine zone id, region id and district id its format is zeno_id+reg_id+dis_id last two digit represent district identifiaction number',
  `dis_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'Store region name',
  `reg_id` int(5) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of region combine region id and zone id its format is zeno_id+reg_id'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`dis_id`, `dis_name`, `reg_id`) VALUES
(0060601, 'Bagamoyo', 00606),
(0060602, 'Kibaha', 00606),
(0060603, 'Kisarawe', 00606),
(0060604, 'Mkuranga', 00606),
(0060605, 'Rufiji', 00606),
(0060606, 'Mafia', 00606),
(0060701, 'Kinondoni', 00607),
(0060702, 'Ilala', 00607),
(0060703, 'Temeke', 00607),
(0070801, 'Kilwa', 00708),
(0070802, 'Lindi Rural', 00708),
(0070803, 'Nachingwea', 00708),
(0070804, 'Liwale', 00708),
(0070805, 'Ruangwa', 00708),
(0070806, 'Lindi Urban', 00708),
(0070901, 'Mtwara Rular', 00709),
(0070902, 'Newala', 00709),
(0070903, 'Masasi', 00709),
(0070904, 'Tandahimba', 00709),
(0070905, 'Mtwara Urban', 00709),
(0070906, 'Nanyumbu', 00709);

-- --------------------------------------------------------

--
-- Table structure for table `ed1`
--

CREATE TABLE `ed1` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to SS',
  `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for ED1 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dt` date NOT NULL COMMENT 'date of collection (morning on which the mosquitoes were collected)',
  `ea` int(20) DEFAULT '0' COMMENT 'Enumaration area (Define geographic location within the study site)',
  `cr` bigint(13) DEFAULT '0' COMMENT 'Cluster (The smallest geographic statistical unit within enumaration area)',
  `cp` int(2) DEFAULT '0' COMMENT 'Compound or Plot (A specific physical area within an identifiable owner)',
  `tcu` bigint(11) DEFAULT '-99' COMMENT 'Hold Ten Cell Unit',
  `hh` varchar(100) DEFAULT '0' COMMENT 'Household (A person or group of people who live together in the same dwelling unit)',
  `sid` int(2) DEFAULT '0' COMMENT 'Structure ID (A free standing building that can have one or more room for residential or commercial use)',
  `me` int(3) NOT NULL DEFAULT '-99' COMMENT 'Method (The method by which the mosquitoes were collected or trapped)',
  `ind` int(1) NOT NULL COMMENT 'hold collection was made indoors a house or hut',
  `htr` int(3) DEFAULT NULL COMMENT 'Habitat Type (Classification of the aquatic habitat in which the collection was made)',
  `st` int(4) UNSIGNED ZEROFILL NOT NULL COMMENT 'Start Time (The time that the collection started in 24 time )',
  `ft` int(4) UNSIGNED ZEROFILL NOT NULL COMMENT 'Finish Time (The time that the collection finish in 24 time)',
  `hp` int(4) DEFAULT NULL COMMENT 'Hold Period (The period of time for which the mosquitoes were held for survival analysis after they were collected)',
  `dd` int(1) DEFAULT NULL COMMENT 'Dead Sorting classification of mosquitoes used to facilitate',
  `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
  `blk` int(3) DEFAULT '-99' COMMENT 'Block (A set of position through which treatments are rotated in a Latin)',
  `shh` varchar(200) DEFAULT '-99' COMMENT 'A project specific house or experiment hut',
  `stn` int(3) DEFAULT '-99' COMMENT 'A project specific where station where a trap may be positioned',
  `vi` varchar(5) DEFAULT NULL COMMENT 'Initial of person that caught the mosquitoes',
  `tr` int(3) DEFAULT '-99' COMMENT 'Treatment (Coding for the unique experimental treatment)',
  `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
  `hs` varchar(300) DEFAULT '-99' COMMENT 'Number of household sampled',
  `vc` int(1) NOT NULL DEFAULT '2' COMMENT 'Legitimacy of the collection',
  `notes` text COMMENT 'On site observation about the collection',
  `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
  `livestock` int(11) NOT NULL,
  `hoccupant` int(11) NOT NULL,
  `heaves` int(11) NOT NULL,
  `nss` int(11) NOT NULL,
  `nbh` int(11) NOT NULL,
  `oth` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ed2`
--

CREATE TABLE `ed2` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to SS',
  `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id (Foreign Key)',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for ED2 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `ssen` int(10) DEFAULT '-99',
  `sfr` int(4) DEFAULT '-99',
  `slc` int(14) DEFAULT '-99',
  `bf` int(8) DEFAULT '-99',
  `st` int(8) DEFAULT '-99',
  `sid` int(8) DEFAULT '-99',
  `cc` int(8) DEFAULT '-99',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'Store taxon code foreign key from Taxon table',
  `sas` int(3) NOT NULL DEFAULT '-99' COMMENT 'Store sex code foreign key from SexAbdominal table',
  `ag` int(2) DEFAULT '-99',
  `gn` int(2) DEFAULT '-99',
  `n` int(10) NOT NULL COMMENT 'Store number of mosqutoes caught',
  `sd` varchar(10) DEFAULT '-99' COMMENT 'started date of the experiment',
  `stm` int(4) DEFAULT '-99' COMMENT 'started time of the experiment',
  `tr` int(3) DEFAULT '-99' COMMENT 'Treatment (Coding for the unique experimental treatment)',
  `vi` varchar(5) DEFAULT 'NA' COMMENT 'Initial of person that caught the mosquitoes',
  `rep` int(3) DEFAULT '-99' COMMENT 'The unique identifier for each individual replicate included in the experiment',
  `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
  `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
  `oth1` int(11) DEFAULT '-99' COMMENT 'Other Any additional experimental details',
  `oth2` int(11) DEFAULT '-99' COMMENT 'Pther Any additional experimental details',
  `va` int(1) NOT NULL COMMENT 'Valid Assay Legitimacy of the experimental assay',
  `dsen` int(6) NOT NULL COMMENT 'Destination form serial number'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `edss`
--

CREATE TABLE `edss` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to EDSS',
  `ed1id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from Ed1',
  `ed2id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from  Ed2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enum`
--

CREATE TABLE `enum` (
  `_id` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `PROJECTID` varchar(30) NOT NULL,
  `STAFFID` varchar(30) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enum`
--

INSERT INTO `enum` (`_id`, `ID`, `NAME`, `PROJECTID`, `STAFFID`) VALUES
(1, 101, 'Miwani', '5', '1001'),
(2, 105, 'Tunduni', '5', '1001'),
(3, 106, 'Charawe', '5', '1001'),
(4, 202, 'Mbaleni', '5', '1001'),
(5, 303, 'Bwejuu', '5', '1001'),
(6, 404, 'Donge', '5', '1001'),
(7, 101, 'Miwani', '2', '1001'),
(8, 105, 'Tunduni', '2', '1001'),
(9, 106, 'Charawe', '2', '1001'),
(10, 202, 'Mbaleni', '2', '1001'),
(11, 303, 'Bwejuu', '2', '1001'),
(12, 404, 'Donge', '2', '1001'),
(13, 1, 'CHANGANYIKENI', '9', '1001'),
(14, 2, 'GOBA1', '9', '1001'),
(15, 3, 'GOBA2', '9', '1001'),
(16, 4, 'P.MNAZI', '9', '1001'),
(17, 5, 'ST.FLORENCE ACADEMY', '9', '1001'),
(18, 6, 'T.PACKERS', '9', '1001'),
(19, 7, 'TCAA', '9', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `fs2`
--

CREATE TABLE `fs2` (
  `projectregsite_id` int(10) DEFAULT NULL,
  `sen` int(10) NOT NULL COMMENT 'serial number',
  `fr` int(10) DEFAULT NULL COMMENT 'form row',
  `ssen` int(10) NOT NULL COMMENT 'Box & form serial no',
  `ns` int(10) DEFAULT NULL COMMENT 'no of samples',
  `fst` char(5) DEFAULT NULL COMMENT 'storage temp',
  `ff` int(10) DEFAULT NULL COMMENT 'crate freezer/fridge no',
  `rcn` int(10) DEFAULT NULL COMMENT 'rack or carton number'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fs2`
--

INSERT INTO `fs2` (`projectregsite_id`, `sen`, `fr`, `ssen`, `ns`, `fst`, `ff`, `rcn`) VALUES
(52, 23, 1, 1, 3, '-20', 3, 1),
(52, 23, 2, 2, 3, '30', 3, 2),
(52, 23, 3, 5, 1, 'RT', 2, 1),
(52, 10, 1, 12, 38, '1', 3, 4),
(52, 10, 2, 50, 30, 'rt', 2, 1),
(82, 119, 1, 109, 8, '-20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grantproject`
--

CREATE TABLE `grantproject` (
  `pid` int(11) NOT NULL COMMENT 'Store project identification number',
  `staff_id` int(10) NOT NULL COMMENT 'Hold staff identification number',
  `created_by` int(10) NOT NULL COMMENT 'Hold staff identification number which show who insert this data',
  `datecreated` datetime NOT NULL COMMENT 'Hold date time at time this data inserted into a system'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grantproject`
--

INSERT INTO `grantproject` (`pid`, `staff_id`, `created_by`, `datecreated`) VALUES
(5, 1002, 1001, '2017-01-26 12:55:57'),
(6, 1003, 1002, '2016-11-02 15:27:13'),
(16, 1001, 1001, '2019-01-02 12:51:18'),
(2, 1001, 1001, '2018-12-28 13:41:42'),
(3, 1001, 1022, '2016-12-07 00:50:44'),
(4, 1004, 1004, '2016-12-07 11:01:14'),
(2, 1005, 1001, '2018-12-28 13:32:17'),
(5, 1001, 1001, '2016-12-17 10:45:50'),
(2, 1002, 1001, '2018-12-28 13:41:08'),
(6, 1002, 1002, '2017-01-02 17:04:24'),
(7, 1003, 1003, '2017-02-07 10:41:01'),
(6, 1001, 1003, '2017-03-01 10:19:15'),
(5, 1021, 1001, '2017-10-30 19:48:01'),
(2, 1021, 1001, '2017-10-30 19:46:43'),
(6, 1010, 1003, '2017-10-11 13:46:27'),
(9, 1019, 1001, '2017-08-28 09:40:47'),
(8, 1001, 1001, '2017-05-29 15:49:55'),
(6, 1012, 1003, '2017-06-01 15:34:04'),
(8, 1013, 1001, '2017-06-12 14:14:01'),
(9, 1013, 1001, '2017-06-12 14:18:45'),
(9, 1001, 1001, '2017-06-12 14:19:26'),
(10, 1001, 1001, '2017-07-05 17:53:29'),
(11, 1014, 1001, '2017-07-06 14:31:44'),
(11, 1006, 1014, '2017-07-06 14:40:11'),
(11, 1001, 1014, '2017-07-06 14:40:38'),
(12, 1002, 1002, '2017-07-13 15:08:28'),
(5, 1005, 1001, '2017-07-29 10:53:50'),
(5, 1010, 1001, '2017-07-29 10:54:24'),
(5, 1006, 1001, '2017-07-29 10:55:09'),
(3, 1015, 1001, '2017-08-09 15:42:52'),
(6, 1004, 1003, '2017-08-09 15:50:51'),
(13, 1001, 1001, '2017-08-17 14:14:14'),
(5, 1017, 1001, '2017-08-21 12:52:32'),
(8, 1019, 1001, '2017-08-28 09:40:28'),
(5, 1018, 1001, '2017-08-21 12:57:09'),
(2, 1018, 1001, '2017-08-21 12:57:27'),
(12, 1018, 1002, '2017-08-21 13:22:07'),
(5, 1020, 1001, '2017-11-01 15:23:45'),
(2, 1020, 1001, '2017-11-01 15:23:56'),
(2, 1017, 1001, '2018-02-09 13:27:49'),
(2, 1023, 1001, '2018-04-10 11:07:38'),
(14, 1001, 1001, '2018-04-30 11:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `habitat`
--

CREATE TABLE `habitat` (
  `habi_code` int(3) NOT NULL COMMENT 'Store habitat code ',
  `habi_desc` varchar(30) NOT NULL COMMENT 'Store habitat description '
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habitat`
--

INSERT INTO `habitat` (`habi_code`, `habi_desc`) VALUES
(-99, 'No data'),
(1, 'Puddles & tire tracks'),
(2, 'Swampy areas'),
(3, 'Mangrove swamp/saltwater marsh'),
(4, 'Drain/ditch'),
(5, 'Construction pit/foundations/m'),
(6, 'Water storage container'),
(7, 'Rice paddy'),
(8, 'Raised bed agriculture'),
(9, 'Other agriculture'),
(10, 'Stream/river bed'),
(11, 'Pond'),
(12, 'Other (describe)'),
(100, 'testhab');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `action` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `date`, `action`, `data`) VALUES
(1, '2016-11-02 15:00:40', 'Login', 'Dickson samwel msaky'),
(2, '2016-11-02 15:01:02', 'Logout', 'Dickson samwel msaky'),
(3, '2016-11-02 15:03:50', 'Login', 'Tegemeo M Gavana'),
(4, '2016-11-02 15:04:04', 'Logout', 'Tegemeo M Gavana'),
(5, '2016-11-02 15:08:01', 'Login', 'Dickson samwel msaky'),
(6, '2016-11-02 15:10:54', 'Logout', 'Dickson samwel msaky'),
(7, '2016-11-02 15:11:09', 'Login', 'Tegemeo M Gavana'),
(8, '2016-11-02 15:13:58', 'Logout', 'Tegemeo M Gavana'),
(9, '2016-11-02 15:14:08', 'Login', 'Dickson samwel msaky'),
(10, '2016-11-02 15:27:26', 'Logout', 'Dickson samwel msaky'),
(11, '2016-11-02 15:27:41', 'Login', 'Tegemeo M Gavana'),
(12, '2016-11-02 15:28:00', 'Logout', 'Tegemeo M Gavana'),
(13, '2016-11-02 15:31:40', 'Login', 'Dickson samwel msaky'),
(14, '2016-11-02 15:32:16', 'Logout', 'Dickson samwel msaky'),
(15, '2016-11-02 15:32:30', 'Login', 'Dickson samwel msaky'),
(16, '2016-11-02 15:53:26', 'Logout', 'Dickson samwel msaky'),
(17, '2016-11-02 15:53:59', 'Login', 'Tegemeo M Gavana'),
(18, '2016-11-04 10:30:33', 'Login', 'Samson S Kiware'),
(19, '2016-11-06 02:05:35', 'Login', 'Samson S Kiware'),
(20, '2016-11-06 02:06:28', 'Logout', 'Samson S Kiware'),
(21, '2016-11-08 11:57:47', 'Login', 'Tegemeo M Gavana'),
(22, '2016-11-11 11:12:47', 'Login', 'Samson S Kiware'),
(23, '2016-11-11 11:14:48', 'Login', 'Samson S Kiware'),
(24, '2016-11-12 19:35:27', 'Login', 'Samson S Kiware'),
(25, '2016-11-22 13:16:58', 'Login', 'Samson S Kiware'),
(26, '2016-11-22 13:59:19', 'Logout', 'Samson S Kiware'),
(27, '2016-11-22 14:33:00', 'Login', 'Samson S Kiware'),
(28, '2016-12-03 14:45:54', 'Login', 'Tegemeo M Gavana'),
(29, '2016-12-07 00:55:14', 'Logout', 'Sam S Kiware'),
(30, '2016-12-07 00:55:23', 'Login', 'Samson S Kiware'),
(31, '2016-12-07 08:20:03', 'Login', 'Samson S Kiware'),
(32, '2016-12-07 09:23:15', 'Login', 'Samson S Kiware'),
(33, '2016-12-07 10:28:59', 'Login', 'Samson S Kiware'),
(34, '2016-12-07 10:57:15', 'Login', 'Yeromin Y Mlacha'),
(35, '2016-12-07 10:57:35', 'Logout', 'Yeromin Y Mlacha'),
(36, '2016-12-07 10:58:01', 'Login', 'Yeromin Y Mlacha'),
(37, '2016-12-07 12:01:42', 'Login', 'Yeromin Y Mlacha'),
(38, '2016-12-07 13:46:54', 'Login', 'Yeromin Y Mlacha'),
(39, '2016-12-07 20:12:13', 'Login', 'Samson S Kiware'),
(40, '2016-12-08 13:10:33', 'Login', 'Samson S Kiware'),
(41, '2016-12-10 08:43:48', 'Login', 'Samson S Kiware'),
(42, '2016-12-10 13:34:31', 'Login', 'Samson S Kiware'),
(43, '2016-12-10 14:11:41', 'Login', 'Samson S Kiware'),
(44, '2016-12-10 14:12:11', 'Logout', 'Samson S Kiware'),
(45, '2016-12-10 14:12:24', 'Login', 'Brian B Tarimo'),
(46, '2016-12-10 15:25:59', 'Login', 'Brian B Tarimo'),
(47, '2016-12-11 12:15:08', 'Login', 'Samson S Kiware'),
(48, '2016-12-11 17:31:07', 'Logout', '  '),
(49, '2016-12-11 19:49:03', 'Login', 'Samson S Kiware'),
(50, '2016-12-11 22:25:10', 'Login', 'Samson S Kiware'),
(51, '2016-12-17 10:37:55', 'Login', 'Samson S Kiware'),
(52, '2016-12-17 11:55:58', 'Login', 'Samson S Kiware'),
(53, '2016-12-18 13:32:58', 'Login', 'Samson S Kiware'),
(54, '2016-12-18 16:38:06', 'Login', 'Samson S Kiware'),
(55, '2016-12-18 19:09:34', 'Login', 'Samson S Kiware'),
(56, '2016-12-18 19:29:04', 'Logout', 'Samson S Kiware'),
(57, '2016-12-18 19:31:26', 'Login', 'Samson S Kiware'),
(58, '2016-12-18 20:53:33', 'Login', 'Samson S Kiware'),
(59, '2016-12-19 14:52:08', 'Login', 'Brian B Tarimo'),
(60, '2016-12-19 16:48:58', 'Login', 'Samson S Kiware'),
(61, '2016-12-20 12:48:32', 'Login', 'Samson S Kiware'),
(62, '2016-12-21 16:09:02', 'Login', 'Samson S Kiware'),
(63, '2016-12-21 16:11:08', 'Logout', 'Samson S Kiware'),
(64, '2016-12-21 22:31:16', 'Login', 'Samson S Kiware'),
(65, '2016-12-21 23:18:38', 'Logout', 'Samson S Kiware'),
(66, '2016-12-21 23:21:03', 'Login', 'Samson S Kiware'),
(67, '2016-12-22 00:45:53', 'Login', 'Samson S Kiware'),
(68, '2016-12-22 08:59:54', 'Login', 'Samson S Kiware'),
(69, '2016-12-23 13:34:25', 'Login', 'Samson S Kiware'),
(70, '2016-12-23 13:35:00', 'Logout', 'Samson S Kiware'),
(71, '2016-12-23 13:37:02', 'Login', 'Fredros O Okumu'),
(72, '2016-12-23 13:37:47', 'Logout', 'Fredros O Okumu'),
(73, '2016-12-23 13:38:22', 'Login', 'Samson S Kiware'),
(74, '2016-12-23 13:39:15', 'Logout', 'Samson S Kiware'),
(75, '2016-12-23 13:39:20', 'Login', 'Fredros O Okumu'),
(76, '2016-12-23 13:43:00', 'Logout', 'Fredros O Okumu'),
(77, '2016-12-23 14:52:45', 'Login', 'Fredros O Okumu'),
(78, '2016-12-23 14:55:34', 'Login', 'Samson S Kiware'),
(79, '2016-12-27 12:36:30', 'Login', 'Fredros O Okumu'),
(80, '2016-12-27 20:08:31', 'Login', 'Samson S Kiware'),
(81, '2016-12-31 18:15:09', 'Login', 'Samson S Kiware'),
(82, '2016-12-31 18:17:03', 'Logout', 'Samson S Kiware'),
(83, '2017-01-02 10:52:53', 'Login', 'Samson S Kiware'),
(84, '2017-01-02 10:53:08', 'Logout', 'Samson S Kiware'),
(85, '2017-01-02 10:54:55', 'Login', 'Tegemeo M Gavana'),
(86, '2017-01-02 10:57:26', 'Logout', 'Tegemeo M Gavana'),
(87, '2017-01-02 10:57:47', 'Login', 'Tegemeo M Gavana'),
(88, '2017-01-02 11:12:22', 'Logout', 'Tegemeo M Gavana'),
(89, '2017-01-02 11:12:35', 'Login', 'Dickson samwel msaky'),
(90, '2017-01-02 11:28:37', 'Logout', 'Dickson samwel msaky'),
(91, '2017-01-02 16:50:08', 'Login', 'Dickson samwel msaky'),
(92, '2017-01-02 17:14:27', 'Logout', 'Dickson samwel msaky'),
(93, '2017-01-02 17:14:40', 'Login', 'Tegemeo M Gavana'),
(94, '2017-01-02 17:15:44', 'Logout', 'Tegemeo M Gavana'),
(95, '2017-01-02 17:16:00', 'Login', 'Dickson samwel msaky'),
(96, '2017-01-02 22:51:12', 'Login', 'Dickson samwel msaky'),
(97, '2017-01-03 17:44:43', 'Login', 'Samson S Kiware'),
(98, '2017-01-03 18:08:08', 'Login', 'Tegemeo M Gavana'),
(99, '2017-01-04 12:42:04', 'Login', 'Tegemeo M Gavana'),
(100, '2017-01-04 20:06:38', 'Login', 'Tegemeo M Gavana'),
(101, '2017-01-04 20:09:33', 'Logout', 'Tegemeo M Gavana'),
(102, '2017-01-04 20:09:52', 'Login', 'Tegemeo M Gavana'),
(103, '2017-01-04 21:43:14', 'Login', 'Tegemeo M Gavana'),
(104, '2017-01-05 11:17:56', 'Login', 'Tegemeo M Gavana'),
(105, '2017-01-05 12:59:21', 'Login', 'Tegemeo M Gavana'),
(106, '2017-01-05 21:11:02', 'Login', 'Tegemeo M Gavana'),
(107, '2017-01-05 22:00:41', 'Logout', 'Tegemeo M Gavana'),
(108, '2017-01-05 22:00:53', 'Login', 'Samson S Kiware'),
(109, '2017-01-16 13:09:37', 'Login', 'Samson S Kiware'),
(110, '2017-01-16 13:13:44', 'Logout', 'Samson S Kiware'),
(111, '2017-01-16 13:14:00', 'Login', 'Samson S Kiware'),
(112, '2017-01-16 13:18:12', 'Logout', 'Samson S Kiware'),
(113, '2017-01-16 13:19:11', 'Login', 'Brian B Tarimo'),
(114, '2017-01-16 13:19:23', 'Logout', 'Brian B Tarimo'),
(115, '2017-01-16 13:20:07', 'Login', 'Tegemeo M Gavana'),
(116, '2017-01-16 13:20:25', 'Logout', 'Tegemeo M Gavana'),
(117, '2017-01-17 12:10:31', 'Login', 'Dickson samwel msaky'),
(118, '2017-01-17 15:33:29', 'Login', 'Dickson samwel msaky'),
(119, '2017-01-17 16:53:43', 'Login', 'Dickson samwel msaky'),
(120, '2017-01-17 18:21:19', 'Login', 'Dickson samwel msaky'),
(121, '2017-01-18 09:42:45', 'Login', 'Dickson samwel msaky'),
(122, '2017-01-18 13:34:56', 'Login', 'Dickson samwel msaky'),
(123, '2017-01-18 13:35:18', 'Logout', 'Dickson samwel msaky'),
(124, '2017-01-19 06:48:40', 'Login', 'Dickson samwel msaky'),
(125, '2017-01-19 19:19:35', 'Login', 'Tegemeo M Gavana'),
(126, '2017-01-20 15:53:19', 'Login', 'Samson S Kiware'),
(127, '2017-01-21 12:26:04', 'Login', 'Samson S Kiware'),
(128, '2017-01-22 11:31:55', 'Login', 'Brian B Tarimo'),
(129, '2017-01-22 12:21:37', 'Login', 'Samson S Kiware'),
(130, '2017-01-22 16:12:18', 'Login', 'Samson S Kiware'),
(131, '2017-01-22 18:08:44', 'Login', 'Samson S Kiware'),
(132, '2017-01-23 09:46:48', 'Login', 'Tegemeo M Gavana'),
(133, '2017-01-23 09:51:37', 'Login', 'Tegemeo M Gavana'),
(134, '2017-01-24 15:29:22', 'Login', 'Samson S Kiware'),
(135, '2017-01-25 21:26:22', 'Login', 'Samson S Kiware'),
(136, '2017-01-26 10:23:31', 'Login', 'Samson S Kiware'),
(137, '2017-01-26 12:53:20', 'Login', 'Samson S Kiware'),
(138, '2017-01-26 12:54:32', 'Logout', 'Samson S Kiware'),
(139, '2017-01-26 12:55:11', 'Login', 'Samson S Kiware'),
(140, '2017-01-26 12:56:14', 'Logout', 'Samson S Kiware'),
(141, '2017-01-26 12:56:30', 'Login', 'Dickson samwel msaky'),
(142, '2017-01-26 13:09:33', 'Logout', 'Dickson samwel msaky'),
(143, '2017-01-26 13:09:47', 'Login', 'Dickson samwel msaky'),
(144, '2017-01-31 10:51:36', 'Login', 'Samson S Kiware'),
(145, '2017-01-31 14:41:53', 'Login', 'Samson S Kiware'),
(146, '2017-02-03 15:22:28', 'Login', 'Samson S Kiware'),
(147, '2017-02-03 16:15:59', 'Login', 'Samson S Kiware'),
(148, '2017-02-04 15:38:30', 'Login', 'Samson S Kiware'),
(149, '2017-02-07 10:28:55', 'Login', 'Tegemeo M Gavana'),
(150, '2017-02-07 12:15:39', 'Login', 'Tegemeo M Gavana'),
(151, '2017-02-07 14:18:08', 'Login', 'Tegemeo M Gavana'),
(152, '2017-02-07 16:46:34', 'Login', 'Tegemeo M Gavana'),
(153, '2017-02-07 17:36:39', 'Login', 'Tegemeo M Gavana'),
(154, '2017-02-08 09:18:58', 'Login', 'Tegemeo M Gavana'),
(155, '2017-02-08 09:19:03', 'Login', 'Tegemeo M Gavana'),
(156, '2017-02-08 10:41:59', 'Login', 'Tegemeo M Gavana'),
(157, '2017-02-08 15:03:40', 'Login', 'Tegemeo M Gavana'),
(158, '2017-02-08 16:13:23', 'Login', 'Tegemeo M Gavana'),
(159, '2017-02-09 09:17:30', 'Login', 'Tegemeo M Gavana'),
(160, '2017-02-09 12:33:02', 'Login', 'Tegemeo M Gavana'),
(161, '2017-02-09 12:40:30', 'Login', 'Tegemeo M Gavana'),
(162, '2017-02-09 22:27:46', 'Login', 'Tegemeo M Gavana'),
(163, '2017-02-10 01:01:14', 'Login', 'Tegemeo M Gavana'),
(164, '2017-02-10 01:13:20', 'Logout', 'Tegemeo M Gavana'),
(165, '2017-02-10 07:08:19', 'Login', 'Tegemeo M Gavana'),
(166, '2017-02-10 09:26:17', 'Login', 'Tegemeo M Gavana'),
(167, '2017-02-10 10:05:03', 'Login', 'Tegemeo M Gavana'),
(168, '2017-02-10 10:40:34', 'Login', 'Tegemeo M Gavana'),
(169, '2017-02-10 10:53:07', 'Login', 'Tegemeo M Gavana'),
(170, '2017-02-10 12:21:15', 'Login', 'Tegemeo M Gavana'),
(171, '2017-02-10 14:18:01', 'Login', 'Tegemeo M Gavana'),
(172, '2017-02-10 22:58:03', 'Login', 'Tegemeo M Gavana'),
(173, '2017-02-11 07:21:45', 'Login', 'Tegemeo M Gavana'),
(174, '2017-02-15 16:36:54', 'Login', 'Fredros O Okumu'),
(175, '2017-02-17 10:04:20', 'Login', 'Samson S Kiware'),
(176, '2017-02-17 10:50:34', 'Logout', 'Samson S Kiware'),
(177, '2017-02-17 10:50:55', 'Login', 'Tegemeo M Gavana'),
(178, '2017-02-17 11:19:26', 'Login', 'Tegemeo M Gavana'),
(179, '2017-02-19 20:00:36', 'Login', 'Samson S Kiware'),
(180, '2017-02-19 21:47:14', 'Login', 'Tegemeo M Gavana'),
(181, '2017-02-19 21:56:19', 'Login', 'Tegemeo M Gavana'),
(182, '2017-02-19 22:35:08', 'Login', 'Tegemeo M Gavana'),
(183, '2017-02-20 08:56:00', 'Login', 'Tegemeo M Gavana'),
(184, '2017-02-23 11:01:27', 'Login', 'Tegemeo M Gavana'),
(185, '2017-02-23 15:02:12', 'Login', 'Tegemeo M Gavana'),
(186, '2017-02-23 16:32:31', 'Login', 'Tegemeo M Gavana'),
(187, '2017-02-23 20:33:05', 'Login', 'Samson S Kiware'),
(188, '2017-02-23 20:38:08', 'Login', 'Tegemeo M Gavana'),
(189, '2017-02-23 21:56:44', 'Login', 'Tegemeo M Gavana'),
(190, '2017-02-24 07:12:44', 'Login', 'Tegemeo M Gavana'),
(191, '2017-02-24 10:09:37', 'Login', 'Tegemeo M Gavana'),
(192, '2017-03-01 10:16:53', 'Login', 'Samson S Kiware'),
(193, '2017-03-01 10:18:48', 'Login', 'Tegemeo M Gavana'),
(194, '2017-03-01 10:21:31', 'Logout', 'Tegemeo M Gavana'),
(195, '2017-03-03 06:55:54', 'Login', 'Samson S Kiware'),
(196, '2017-03-06 11:26:32', 'Login', 'Samson S Kiware'),
(197, '2017-03-06 12:20:31', 'Login', 'Samson S Kiware'),
(198, '2017-03-06 12:51:30', 'Login', 'Samson S Kiware'),
(199, '2017-03-06 13:25:26', 'Login', 'Samson S Kiware'),
(200, '2017-03-06 15:24:46', 'Login', 'Samson S Kiware'),
(201, '2017-03-06 17:03:42', 'Login', 'Samson S Kiware'),
(202, '2017-03-06 18:39:21', 'Logout', 'Samson S Kiware'),
(203, '2017-03-06 20:41:18', 'Login', 'Samson S Kiware'),
(204, '2017-03-07 10:39:09', 'Login', 'Samson S Kiware'),
(205, '2017-03-07 12:37:58', 'Login', 'Samson S Kiware'),
(206, '2017-03-07 15:27:02', 'Login', 'Samson S Kiware'),
(207, '2017-03-07 15:33:28', 'Login', 'Ahmada M Ibrahim'),
(208, '2017-03-07 16:23:32', 'Login', 'Ahmada M Ibrahim'),
(209, '2017-03-07 23:24:08', 'Login', 'Samson S Kiware'),
(210, '2017-03-08 13:13:36', 'Login', 'Samson S Kiware'),
(211, '2017-03-08 15:53:04', 'Login', 'Samson S Kiware'),
(212, '2017-03-09 11:48:30', 'Login', 'Samson S Kiware'),
(213, '2017-03-10 12:20:17', 'Login', 'Samson S Kiware'),
(214, '2017-03-14 09:50:10', 'Login', 'Samson S Kiware'),
(215, '2017-03-18 10:53:31', 'Login', 'Samson S Kiware'),
(216, '2017-03-18 14:35:54', 'Login', 'Samson S Kiware'),
(217, '2017-03-30 15:08:07', 'Login', 'Samson S Kiware'),
(218, '2017-03-30 16:15:14', 'Login', 'Samson S Kiware'),
(219, '2017-03-30 16:26:56', 'Login', 'Godlove Thomas Chila'),
(220, '2017-03-30 16:29:47', 'Logout', 'Samson S Kiware'),
(221, '2017-03-30 16:30:01', 'Login', 'Tegemeo M Gavana'),
(222, '2017-03-30 17:14:19', 'Login', 'Tegemeo M Gavana'),
(223, '2017-03-30 18:52:09', 'Login', 'Godlove Thomas Chila'),
(224, '2017-03-30 21:08:18', 'Login', 'Tegemeo M Gavana'),
(225, '2017-03-30 22:24:28', 'Logout', 'Tegemeo M Gavana'),
(226, '2017-03-30 22:24:53', 'Login', 'Tegemeo M Gavana'),
(227, '2017-03-30 22:28:12', 'Login', 'Godlove Thomas Chila'),
(228, '2017-03-30 23:27:57', 'Login', 'Samson S Kiware'),
(229, '2017-03-31 11:01:56', 'Login', 'Godlove Thomas Chila'),
(230, '2017-03-31 11:05:56', 'Login', 'Godlove Thomas Chila'),
(231, '2017-03-31 11:06:21', 'Login', 'Godlove Thomas Chila'),
(232, '2017-03-31 12:06:20', 'Login', 'Samson S Kiware'),
(233, '2017-03-31 12:12:56', 'Login', 'Godlove Thomas Chila'),
(234, '2017-03-31 12:50:19', 'Login', 'Samson S Kiware'),
(235, '2017-03-31 14:08:21', 'Login', 'Samson S Kiware'),
(236, '2017-03-31 14:33:24', 'Login', 'Godlove Thomas Chila'),
(237, '2017-03-31 15:49:43', 'Login', 'Godlove Thomas Chila'),
(238, '2017-03-31 20:53:14', 'Login', 'Samson S Kiware'),
(239, '2017-03-31 21:07:07', 'Login', 'Godlove Thomas Chila'),
(240, '2017-04-01 07:12:00', 'Login', 'Samson S Kiware'),
(241, '2017-04-01 08:14:29', 'Login', 'Godlove Thomas Chila'),
(242, '2017-04-01 08:25:00', 'Login', 'Samson S Kiware'),
(243, '2017-04-01 08:56:02', 'Login', 'Godlove Thomas Chila'),
(244, '2017-04-01 12:13:12', 'Login', 'Godlove Thomas Chila'),
(245, '2017-04-01 14:29:51', 'Login', 'Samson S Kiware'),
(246, '2017-04-01 15:23:21', 'Login', 'Samson S Kiware'),
(247, '2017-04-01 16:37:40', 'Login', 'Samson S Kiware'),
(248, '2017-04-01 20:24:47', 'Login', 'Samson S Kiware'),
(249, '2017-04-02 09:15:00', 'Login', 'Godlove Thomas Chila'),
(250, '2017-04-02 13:06:51', 'Login', 'Samson S Kiware'),
(251, '2017-04-02 17:59:26', 'Login', 'Samson S Kiware'),
(252, '2017-04-02 23:41:14', 'Login', 'Godlove Thomas Chila'),
(253, '2017-04-03 08:09:42', 'Login', 'Samson S Kiware'),
(254, '2017-04-03 08:31:51', 'Login', 'Godlove Thomas Chila'),
(255, '2017-04-03 08:41:00', 'Logout', 'Samson S Kiware'),
(256, '2017-04-03 08:47:23', 'Login', 'Godlove Thomas Chila'),
(257, '2017-04-03 10:43:46', 'Login', 'Samson S Kiware'),
(258, '2017-04-03 11:03:33', 'Login', 'Godlove Thomas Chila'),
(259, '2017-04-03 17:31:45', 'Logout', '  '),
(260, '2017-04-03 17:32:54', 'Login', 'Dickson samwel msaky'),
(261, '2017-04-03 19:00:23', 'Login', 'Godlove Thomas Chila'),
(262, '2017-04-03 20:02:00', 'Login', 'Godlove Thomas Chila'),
(263, '2017-04-03 21:17:27', 'Login', 'Godlove Thomas Chila'),
(264, '2017-04-04 11:34:21', 'Login', 'Godlove Thomas Chila'),
(265, '2017-04-04 11:40:27', 'Login', 'Tegemeo M Gavana'),
(266, '2017-04-04 11:42:27', 'Logout', 'Tegemeo M Gavana'),
(267, '2017-04-04 12:22:46', 'Login', 'Dickson samwel msaky'),
(268, '2017-04-04 14:24:03', 'Login', 'Godlove Thomas Chila'),
(269, '2017-04-05 10:04:32', 'Login', 'Samson S Kiware'),
(270, '2017-04-05 10:08:17', 'Logout', 'Samson S Kiware'),
(271, '2017-04-05 12:00:30', 'Login', 'Godlove Thomas Chila'),
(272, '2017-04-05 13:54:52', 'Login', 'Godlove Thomas Chila'),
(273, '2017-04-06 09:04:43', 'Login', 'Samson S Kiware'),
(274, '2017-04-06 09:07:37', 'Logout', 'Samson S Kiware'),
(275, '2017-04-06 10:45:17', 'Login', 'Godlove Thomas Chila'),
(276, '2017-04-10 09:29:16', 'Login', 'Dickson samwel msaky'),
(277, '2017-04-10 09:29:30', 'Logout', 'Dickson samwel msaky'),
(278, '2017-04-10 09:29:41', 'Login', 'Samson S Kiware'),
(279, '2017-04-10 11:12:24', 'Login', 'Godlove Thomas Chila'),
(280, '2017-04-10 12:46:03', 'Login', 'Godlove Thomas Chila'),
(281, '2017-04-10 14:45:54', 'Login', 'Godlove Thomas Chila'),
(282, '2017-04-11 10:05:54', 'Login', 'Godlove Thomas Chila'),
(283, '2017-04-11 13:01:18', 'Login', 'Yeromin Y Mlacha'),
(284, '2017-04-11 13:01:46', 'Logout', 'Yeromin Y Mlacha'),
(285, '2017-04-11 13:02:09', 'Login', 'Samson S Kiware'),
(286, '2017-04-11 13:24:23', 'Login', 'Godlove Thomas Chila'),
(287, '2017-04-11 16:11:36', 'Login', 'Godlove Thomas Chila'),
(288, '2017-04-11 17:46:08', 'Login', 'Godlove Thomas Chila'),
(289, '2017-04-12 00:17:34', 'Login', 'Godlove Thomas Chila'),
(290, '2017-04-12 09:48:17', 'Login', 'Godlove Thomas Chila'),
(291, '2017-04-12 14:14:24', 'Login', 'Godlove Thomas Chila'),
(292, '2017-04-12 14:47:43', 'Login', 'Godlove Thomas Chila'),
(293, '2017-04-12 16:29:16', 'Login', 'Godlove Thomas Chila'),
(294, '2017-04-12 18:41:33', 'Login', 'Samson S Kiware'),
(295, '2017-04-13 09:30:11', 'Login', 'Godlove Thomas Chila'),
(296, '2017-04-13 11:41:04', 'Login', 'Brian B Tarimo'),
(297, '2017-04-13 11:42:09', 'Login', 'Brian B Tarimo'),
(298, '2017-04-13 11:43:18', 'Logout', 'Brian B Tarimo'),
(299, '2017-04-13 11:43:32', 'Login', 'Brian B Tarimo'),
(300, '2017-04-13 11:59:34', 'Login', 'Godlove Thomas Chila'),
(301, '2017-04-13 14:30:25', 'Login', 'Samson S Kiware'),
(302, '2017-04-15 08:56:36', 'Login', 'Samson S Kiware'),
(303, '2017-04-15 19:51:22', 'Login', 'Godlove Thomas Chila'),
(304, '2017-04-19 23:53:16', 'Login', 'Godlove Thomas Chila'),
(305, '2017-04-21 13:01:38', 'Login', 'Samson S Kiware'),
(306, '2017-04-21 15:53:30', 'Login', 'Godlove Thomas Chila'),
(307, '2017-04-25 09:59:52', 'Login', 'Godlove Thomas Chila'),
(308, '2017-04-25 12:38:03', 'Login', 'Godlove Thomas Chila'),
(309, '2017-04-25 15:08:45', 'Login', 'Godlove Thomas Chila'),
(310, '2017-04-25 19:55:17', 'Login', 'Godlove Thomas Chila'),
(311, '2017-05-02 09:45:27', 'Login', 'Godlove Thomas Chila'),
(312, '2017-05-02 10:29:54', 'Login', 'Godlove Thomas Chila'),
(313, '2017-05-02 11:51:58', 'Login', 'Godlove Thomas Chila'),
(314, '2017-05-03 13:34:18', 'Login', 'Godlove Thomas Chila'),
(315, '2017-05-08 11:14:50', 'Login', 'Godlove Thomas Chila'),
(316, '2017-05-15 16:49:22', 'Login', 'Samson S Kiware'),
(317, '2017-05-15 22:19:57', 'Login', 'Dickson samwel msaky'),
(318, '2017-05-16 10:20:04', 'Login', 'Samson S Kiware'),
(319, '2017-05-16 11:13:22', 'Login', 'Samson S Kiware'),
(320, '2017-05-16 14:11:32', 'Login', 'Samson S Kiware'),
(321, '2017-05-16 14:53:54', 'Login', 'Samson S Kiware'),
(322, '2017-05-16 18:58:19', 'Login', 'Samson S Kiware'),
(323, '2017-05-17 17:05:46', 'Login', 'Samson S Kiware'),
(324, '2017-05-18 18:06:14', 'Login', 'Samson S Kiware'),
(325, '2017-05-18 20:14:10', 'Login', 'Samson S Kiware'),
(326, '2017-05-24 10:31:42', 'Login', 'Samson S Kiware'),
(327, '2017-05-25 09:57:51', 'Login', 'Samson S Kiware'),
(328, '2017-05-25 14:31:35', 'Login', 'Samson S Kiware'),
(329, '2017-05-25 17:33:19', 'Login', 'Samson S Kiware'),
(330, '2017-05-27 19:21:22', 'Login', 'Samson S Kiware'),
(331, '2017-05-29 10:40:10', 'Login', 'Samson S Kiware'),
(332, '2017-05-29 15:44:20', 'Login', 'Samson S Kiware'),
(333, '2017-05-29 16:20:53', 'Logout', 'Samson S Kiware'),
(334, '2017-05-29 16:21:05', 'Login', 'Samson S Kiware'),
(335, '2017-05-29 16:31:18', 'Logout', 'Samson S Kiware'),
(336, '2017-05-29 16:31:33', 'Login', 'Samson S Kiware'),
(337, '2017-05-30 10:09:08', 'Login', 'Samson S Kiware'),
(338, '2017-05-30 10:24:08', 'Logout', 'Samson S Kiware'),
(339, '2017-05-30 10:24:20', 'Login', 'Samson S Kiware'),
(340, '2017-05-30 11:33:54', 'Login', 'Samson S Kiware'),
(341, '2017-05-30 12:29:16', 'Login', 'Samson S Kiware'),
(342, '2017-05-30 15:53:38', 'Login', 'Samson S Kiware'),
(343, '2017-05-30 16:07:40', 'Logout', 'Samson S Kiware'),
(344, '2017-05-30 16:07:55', 'Login', 'Samson S Kiware'),
(345, '2017-05-30 22:50:58', 'Login', 'Samson S Kiware'),
(346, '2017-05-31 08:20:27', 'Login', 'Godlove Thomas Chila'),
(347, '2017-06-01 09:31:04', 'Login', 'Samson S Kiware'),
(348, '2017-06-01 10:14:57', 'Login', 'Samson S Kiware'),
(349, '2017-06-01 11:43:20', 'Login', 'Samson S Kiware'),
(350, '2017-06-01 12:44:04', 'Login', 'Samson S Kiware'),
(351, '2017-06-01 13:22:14', 'Login', 'Samson S Kiware'),
(352, '2017-06-01 14:20:23', 'Login', 'Samson S Kiware'),
(353, '2017-06-01 15:30:44', 'Logout', 'Samson S Kiware'),
(354, '2017-06-01 15:32:58', 'Login', 'Samson S Kiware'),
(355, '2017-06-01 15:33:32', 'Logout', 'Samson S Kiware'),
(356, '2017-06-01 15:33:44', 'Login', 'Tegemeo M Gavana'),
(357, '2017-06-01 15:34:15', 'Logout', 'Tegemeo M Gavana'),
(358, '2017-06-01 15:38:39', 'Login', 'Prosper P Chaki'),
(359, '2017-06-01 17:05:29', 'Login', 'Samson S Kiware'),
(360, '2017-06-01 23:47:54', 'Login', 'Samson S Kiware'),
(361, '2017-06-02 10:05:41', 'Login', 'Samson S Kiware'),
(362, '2017-06-02 10:07:56', 'Logout', 'Samson S Kiware'),
(363, '2017-06-02 10:08:22', 'Login', 'Tegemeo M Gavana'),
(364, '2017-06-02 11:49:00', 'Login', 'Tegemeo M Gavana'),
(365, '2017-06-02 12:30:42', 'Logout', 'Tegemeo M Gavana'),
(366, '2017-06-02 12:30:58', 'Login', 'Tegemeo M Gavana'),
(367, '2017-06-02 12:40:34', 'Login', 'Samson S Kiware'),
(368, '2017-06-02 17:02:44', 'Login', 'Samson S Kiware'),
(369, '2017-06-02 21:07:48', 'Login', 'Samson S Kiware'),
(370, '2017-06-05 12:46:27', 'Login', 'Samson S Kiware'),
(371, '2017-06-07 19:08:41', 'Login', 'Godlove Thomas Chila'),
(372, '2017-06-09 17:03:44', 'Login', 'Godlove Thomas Chila'),
(373, '2017-06-09 17:06:13', 'Login', 'Godlove Thomas Chila'),
(374, '2017-06-12 10:43:18', 'Login', 'Samson S Kiware'),
(375, '2017-06-12 12:04:24', 'Login', 'Samson S Kiware'),
(376, '2017-06-12 12:17:07', 'Login', 'Alphonce  Alexander Assenga'),
(377, '2017-06-12 13:30:40', 'Logout', 'Samson S Kiware'),
(378, '2017-06-12 13:31:23', 'Login', 'Samson S Kiware'),
(379, '2017-07-03 09:23:40', 'Login', 'Samson S Kiware'),
(380, '2017-07-03 12:08:45', 'Login', 'Samson S Kiware'),
(381, '2017-07-03 15:36:03', 'Login', 'Samson S Kiware'),
(382, '2017-07-03 16:26:27', 'Login', 'Samson S Kiware'),
(383, '2017-07-05 15:07:18', 'Login', 'Samson S Kiware'),
(384, '2017-07-05 15:47:42', 'Login', 'Samson S Kiware'),
(385, '2017-07-05 15:58:48', 'Logout', 'Samson S Kiware'),
(386, '2017-07-05 16:01:37', 'Login', 'Samson S Kiware'),
(387, '2017-07-05 16:06:40', 'Login', 'Samson S Kiware'),
(388, '2017-07-05 17:51:34', 'Login', 'Samson S Kiware'),
(389, '2017-07-06 00:31:30', 'Login', 'Samson S Kiware'),
(390, '2017-07-06 13:54:15', 'Login', 'Samson S Kiware'),
(391, '2017-07-06 13:58:11', 'Login', 'Samson S Kiware'),
(392, '2017-07-06 14:22:47', 'Login', 'Dingani D Chinula'),
(393, '2017-07-06 14:33:05', 'Logout', 'Samson S Kiware'),
(394, '2017-07-06 14:33:17', 'Login', 'Samson S Kiware'),
(395, '2017-07-06 14:36:38', 'Logout', 'Samson S Kiware'),
(396, '2017-07-06 14:36:47', 'Login', 'Samson S Kiware'),
(397, '2017-07-06 14:36:47', 'Logout', 'Dingani D Chinula'),
(398, '2017-07-06 14:36:52', 'Login', 'Dingani D Chinula'),
(399, '2017-07-06 17:17:04', 'Login', 'Dingani D Chinula'),
(400, '2017-07-06 19:32:23', 'Login', 'Dingani D Chinula'),
(401, '2017-07-06 19:58:02', 'Login', 'Samson S Kiware'),
(402, '2017-07-06 20:07:17', 'Login', 'Samson S Kiware'),
(403, '2017-07-06 20:28:00', 'Logout', 'Dingani D Chinula'),
(404, '2017-07-06 20:28:04', 'Login', 'Dingani D Chinula'),
(405, '2017-07-06 20:30:28', 'Login', 'Dingani D Chinula'),
(406, '2017-07-06 21:11:59', 'Login', 'Samson S Kiware'),
(407, '2017-07-06 21:19:59', 'Logout', 'Samson S Kiware'),
(408, '2017-07-06 21:20:13', 'Login', 'Samson S Kiware'),
(409, '2017-07-06 21:55:52', 'Login', 'Samson S Kiware'),
(410, '2017-07-06 22:28:33', 'Login', 'Samson S Kiware'),
(411, '2017-07-07 14:28:03', 'Login', 'Samson S Kiware'),
(412, '2017-07-10 09:56:35', 'Login', 'Samson S Kiware'),
(413, '2017-07-11 11:35:11', 'Login', 'Godlove Thomas Chila'),
(414, '2017-07-13 15:06:32', 'Login', 'Samson S Kiware'),
(415, '2017-07-13 15:06:46', 'Logout', 'Samson S Kiware'),
(416, '2017-07-13 15:06:57', 'Login', 'Dickson samwel msaky'),
(417, '2017-07-25 09:15:46', 'Login', 'Samson S Kiware'),
(418, '2017-07-25 11:38:16', 'Login', 'Dickson samwel msaky'),
(419, '2017-07-25 18:48:05', 'Login', 'Samson S Kiware'),
(420, '2017-07-26 14:30:45', 'Login', 'Samson S Kiware'),
(421, '2017-07-27 12:26:33', 'Login', 'Samson S Kiware'),
(422, '2017-07-28 13:41:41', 'Login', 'Dickson samwel msaky'),
(423, '2017-07-28 18:24:57', 'Login', 'Dickson samwel msaky'),
(424, '2017-07-28 21:44:17', 'Login', 'Dickson samwel msaky'),
(425, '2017-07-29 00:46:44', 'Login', 'Dickson samwel msaky'),
(426, '2017-07-29 10:52:08', 'Login', 'Samson S Kiware'),
(427, '2017-07-29 13:10:28', 'Login', 'Dickson samwel msaky'),
(428, '2017-08-01 11:48:39', 'Login', 'Samson S Kiware'),
(429, '2017-08-01 13:34:52', 'Login', 'Samson S Kiware'),
(430, '2017-08-01 14:28:28', 'Login', 'Samson S Kiware'),
(431, '2017-08-01 15:45:34', 'Login', 'Samson S Kiware'),
(432, '2017-08-02 16:37:47', 'Login', 'Brian B Tarimo'),
(433, '2017-08-02 16:50:54', 'Logout', 'Brian B Tarimo'),
(434, '2017-08-04 15:49:17', 'Login', 'Samson S Kiware'),
(435, '2017-08-04 17:44:13', 'Login', 'Samson S Kiware'),
(436, '2017-08-04 23:09:26', 'Login', 'Samson S Kiware'),
(437, '2017-08-05 12:26:06', 'Login', 'Samson S Kiware'),
(438, '2017-08-09 15:00:37', 'Login', 'Samson S Kiware'),
(439, '2017-08-09 15:33:20', 'Login', 'Yeromin Y Mlacha'),
(440, '2017-08-09 15:33:34', 'Logout', 'Yeromin Y Mlacha'),
(441, '2017-08-09 15:33:45', 'Login', 'Yeromin Y Mlacha'),
(442, '2017-08-09 15:33:58', 'Logout', 'Yeromin Y Mlacha'),
(443, '2017-08-09 15:37:13', 'Logout', 'Samson S Kiware'),
(444, '2017-08-09 15:38:11', 'Login', 'Samson S Kiware'),
(445, '2017-08-09 15:38:29', 'Logout', 'Samson S Kiware'),
(446, '2017-08-09 15:40:56', 'Login', 'Samson S Kiware'),
(447, '2017-08-09 15:41:54', 'Login', 'Yeromin Y Mlacha'),
(448, '2017-08-09 15:43:25', 'Logout', 'Samson S Kiware'),
(449, '2017-08-09 15:43:45', 'Login', 'Samson S Kiware'),
(450, '2017-08-09 15:47:48', 'Login', 'Dickson samwel msaky'),
(451, '2017-08-09 15:48:53', 'Logout', 'Dickson samwel msaky'),
(452, '2017-08-09 15:49:32', 'Logout', 'Samson S Kiware'),
(453, '2017-08-09 15:50:35', 'Login', 'Tegemeo M Gavana'),
(454, '2017-08-09 15:51:19', 'Logout', 'Tegemeo M Gavana'),
(455, '2017-08-09 15:52:32', 'Login', 'Fauna F Photonics'),
(456, '2017-08-09 15:53:24', 'Logout', 'Fauna F Photonics'),
(457, '2017-08-09 15:56:08', 'Login', 'Fauna F Photonics'),
(458, '2017-08-09 16:00:34', 'Login', 'Samson S Kiware'),
(459, '2017-08-09 16:11:10', 'Logout', 'Fauna F Photonics'),
(460, '2017-08-09 16:11:20', 'Login', 'Samson S Kiware'),
(461, '2017-08-09 16:12:00', 'Logout', 'Samson S Kiware'),
(462, '2017-08-09 16:19:00', 'Login', 'Samson S Kiware'),
(463, '2017-08-09 17:17:09', 'Login', 'Samson S Kiware'),
(464, '2017-08-09 18:35:07', 'Login', 'Fauna F Photonics'),
(465, '2017-08-09 19:56:51', 'Login', 'Samson S Kiware'),
(466, '2017-08-10 09:37:44', 'Login', 'Samson S Kiware'),
(467, '2017-08-10 10:29:54', 'Login', 'Brian B Tarimo'),
(468, '2017-08-10 10:51:24', 'Login', 'Samson S Kiware'),
(469, '2017-08-10 11:59:54', 'Logout', '  '),
(470, '2017-08-10 12:29:57', 'Login', 'Samson S Kiware'),
(471, '2017-08-10 12:29:58', 'Login', 'Samson S Kiware'),
(472, '2017-08-10 14:45:43', 'Login', 'Samson S Kiware'),
(473, '2017-08-10 16:24:59', 'Login', 'Samson S Kiware'),
(474, '2017-08-11 11:09:22', 'Login', 'Samson S Kiware'),
(475, '2017-08-11 12:19:28', 'Login', 'Samson S Kiware'),
(476, '2017-08-11 13:11:42', 'Login', 'Samson S Kiware'),
(477, '2017-08-11 14:16:32', 'Login', 'Samson S Kiware'),
(478, '2017-08-13 20:25:22', 'Login', 'Brian B Tarimo'),
(479, '2017-08-13 20:49:53', 'Logout', 'Brian B Tarimo'),
(480, '2017-08-14 13:10:47', 'Login', 'Samson S Kiware'),
(481, '2017-08-14 16:00:33', 'Login', 'Samson S Kiware'),
(482, '2017-08-15 07:27:41', 'Login', 'Brian B Tarimo'),
(483, '2017-08-15 13:18:39', 'Logout', '  '),
(484, '2017-08-15 13:59:06', 'Login', 'Samson S Kiware'),
(485, '2017-08-15 14:56:04', 'Login', 'Samson S Kiware'),
(486, '2017-08-15 16:12:06', 'Login', 'Samson S Kiware'),
(487, '2017-08-15 16:56:54', 'Logout', 'Samson S Kiware'),
(488, '2017-08-15 17:00:03', 'Login', 'Samson S Kiware'),
(489, '2017-08-15 17:29:08', 'Login', 'Samson S Kiware'),
(490, '2017-08-15 19:32:40', 'Login', 'Samson S Kiware'),
(491, '2017-08-15 22:06:50', 'Login', 'Samson S Kiware'),
(492, '2017-08-16 11:31:25', 'Login', 'Samson S Kiware'),
(493, '2017-08-16 12:47:42', 'Login', 'Samson S Kiware'),
(494, '2017-08-16 16:27:30', 'Login', 'Samson S Kiware'),
(495, '2017-08-17 12:13:53', 'Login', 'Samson S Kiware'),
(496, '2017-08-17 14:08:07', 'Login', 'Samson S Kiware'),
(497, '2017-08-17 14:44:09', 'Logout', 'Samson S Kiware'),
(498, '2017-08-17 14:44:19', 'Login', 'Samson S Kiware'),
(499, '2017-08-18 09:25:59', 'Login', 'Yeromin Y Mlacha'),
(500, '2017-08-18 10:43:52', 'Login', 'Samson S Kiware'),
(501, '2017-08-18 12:32:36', 'Login', 'Samson S Kiware'),
(502, '2017-08-18 13:13:07', 'Login', 'Samson S Kiware'),
(503, '2017-08-18 14:38:11', 'Login', 'Samson S Kiware'),
(504, '2017-08-19 08:32:08', 'Login', 'Samson S Kiware'),
(505, '2017-08-20 12:09:19', 'Login', 'Samson S Kiware'),
(506, '2017-08-20 22:15:30', 'Login', 'Samson S Kiware'),
(507, '2017-08-21 11:03:24', 'Login', 'Revocatus Musyangi Musiba'),
(508, '2017-08-21 11:10:05', 'Login', 'Samson S Kiware'),
(509, '2017-08-21 12:31:31', 'Login', 'Samson S Kiware'),
(510, '2017-08-21 12:54:50', 'Logout', 'Samson S Kiware'),
(511, '2017-08-21 12:56:23', 'Login', 'Samson S Kiware'),
(512, '2017-08-21 12:57:36', 'Logout', 'Samson S Kiware'),
(513, '2017-08-21 13:21:10', 'Login', 'Samson S Kiware'),
(514, '2017-08-21 13:21:39', 'Logout', 'Samson S Kiware'),
(515, '2017-08-21 13:21:49', 'Login', 'Dickson samwel msaky'),
(516, '2017-08-21 13:22:18', 'Logout', 'Dickson samwel msaky'),
(517, '2017-08-21 13:22:36', 'Login', 'samwel d msaky'),
(518, '2017-08-21 13:29:20', 'Logout', 'samwel d msaky'),
(519, '2017-08-21 13:29:29', 'Login', 'Samson S Kiware'),
(520, '2017-08-21 15:08:08', 'Login', 'Samson S Kiware'),
(521, '2017-08-21 15:09:33', 'Logout', 'Samson S Kiware'),
(522, '2017-08-21 15:09:50', 'Login', 'Dickson samwel msaky'),
(523, '2017-08-21 16:03:11', 'Logout', 'Dickson samwel msaky'),
(524, '2017-08-21 16:03:21', 'Login', 'Samson S Kiware'),
(525, '2017-08-23 10:16:25', 'Login', 'Samson S Kiware'),
(526, '2017-08-24 09:47:34', 'Login', 'Samson S Kiware'),
(527, '2017-08-24 09:52:38', 'Login', 'Alphonce  Alexander Assenga'),
(528, '2017-08-24 09:58:15', 'Logout', 'Alphonce  Alexander Assenga'),
(529, '2017-08-24 15:55:28', 'Login', 'Samson S Kiware'),
(530, '2017-08-25 10:35:37', 'Login', 'Samson S Kiware'),
(531, '2017-08-27 09:58:13', 'Login', 'Samson S Kiware'),
(532, '2017-08-27 14:43:47', 'Login', 'Samson S Kiware'),
(533, '2017-08-27 17:47:51', 'Login', 'Samson S Kiware'),
(534, '2017-08-27 22:21:21', 'Login', 'Godlove Thomas Chila'),
(535, '2017-08-28 09:34:48', 'Login', 'Samson S Kiware'),
(536, '2017-08-28 09:39:30', 'Logout', 'Samson S Kiware'),
(537, '2017-08-28 09:39:47', 'Login', 'Samson S Kiware'),
(538, '2017-08-28 09:40:54', 'Logout', 'Samson S Kiware'),
(539, '2017-08-28 09:41:14', 'Login', 'Nicodem J Govella'),
(540, '2017-08-28 10:22:12', 'Logout', '  '),
(541, '2017-08-28 14:43:20', 'Login', 'Samson S Kiware'),
(542, '2017-08-29 20:36:02', 'Login', 'Yeromin Y Mlacha'),
(543, '2017-08-29 21:04:15', 'Login', 'Yeromin Y Mlacha'),
(544, '2017-08-30 17:29:00', 'Login', 'Tegemeo M Gavana'),
(545, '2017-08-30 17:32:43', 'Login', 'Tegemeo M Gavana'),
(546, '2017-08-31 13:12:33', 'Login', 'Samson S Kiware'),
(547, '2017-09-04 08:29:09', 'Login', 'Yeromin Y Mlacha'),
(548, '2017-09-05 09:31:33', 'Login', 'Tegemeo M Gavana'),
(549, '2017-09-05 09:41:10', 'Login', 'Tegemeo M Gavana'),
(550, '2017-09-05 09:44:16', 'Login', 'Tegemeo M Gavana'),
(551, '2017-09-05 10:02:59', 'Logout', 'Tegemeo M Gavana'),
(552, '2017-09-05 10:03:11', 'Login', 'Samson S Kiware'),
(553, '2017-09-05 10:08:24', 'Logout', 'Samson S Kiware'),
(554, '2017-09-05 12:08:26', 'Login', 'Alphonce  Alexander Assenga'),
(555, '2017-09-05 12:16:36', 'Logout', 'Alphonce  Alexander Assenga'),
(556, '2017-09-05 17:06:03', 'Login', 'Alphonce  Alexander Assenga'),
(557, '2017-09-05 17:08:38', 'Login', 'Samson S Kiware'),
(558, '2017-09-05 17:09:29', 'Logout', 'Samson S Kiware'),
(559, '2017-09-06 05:58:35', 'Login', 'Samson S Kiware'),
(560, '2017-09-08 08:37:35', 'Login', 'Samson S Kiware'),
(561, '2017-09-08 10:52:04', 'Login', 'Alphonce  Alexander Assenga'),
(562, '2017-09-13 10:22:30', 'Login', 'Samson S Kiware'),
(563, '2017-09-13 10:23:00', 'Logout', 'Samson S Kiware'),
(564, '2017-09-14 13:44:49', 'Login', 'Dickson samwel msaky'),
(565, '2017-09-14 14:46:31', 'Login', 'Samson S Kiware'),
(566, '2017-09-14 19:02:22', 'Login', 'Samson S Kiware'),
(567, '2017-09-15 12:06:05', 'Login', 'Samson S Kiware'),
(568, '2017-09-15 16:03:39', 'Login', 'Samson S Kiware'),
(569, '2017-09-15 21:05:45', 'Login', 'Samson S Kiware'),
(570, '2017-09-15 22:29:02', 'Login', 'Samson S Kiware'),
(571, '2017-09-16 07:54:52', 'Login', 'Godlove Thomas Chila'),
(572, '2017-09-16 08:05:44', 'Logout', 'Godlove Thomas Chila'),
(573, '2017-09-16 08:05:49', 'Login', 'Godlove Thomas Chila'),
(574, '2017-09-16 20:00:45', 'Login', 'Samson S Kiware'),
(575, '2017-09-16 20:36:48', 'Logout', 'Samson S Kiware'),
(576, '2017-09-16 20:36:58', 'Login', 'Samson S Kiware'),
(577, '2017-09-18 17:36:20', 'Login', 'Samson S Kiware'),
(578, '2017-09-19 10:03:19', 'Login', 'Samson S Kiware'),
(579, '2017-09-19 13:07:25', 'Login', 'Godlove Thomas Chila'),
(580, '2017-09-21 13:09:30', 'Login', 'Godlove Thomas Chila'),
(581, '2017-09-22 17:59:58', 'Login', 'Godlove Thomas Chila'),
(582, '2017-09-23 11:58:44', 'Login', 'Samson S Kiware'),
(583, '2017-09-24 22:58:27', 'Login', 'Samson S Kiware'),
(584, '2017-09-25 11:51:38', 'Login', 'Samson S Kiware'),
(585, '2017-09-26 10:09:20', 'Login', 'Samson S Kiware'),
(586, '2017-09-26 10:47:15', 'Login', 'Samson S Kiware'),
(587, '2017-09-27 14:32:12', 'Login', 'Samson S Kiware'),
(588, '2017-09-27 15:07:01', 'Login', 'Godlove Thomas Chila'),
(589, '2017-09-28 12:37:24', 'Login', 'Samson S Kiware'),
(590, '2017-09-28 13:19:31', 'Login', 'Samson S Kiware'),
(591, '2017-09-29 10:25:39', 'Login', 'Samson S Kiware'),
(592, '2017-09-29 10:53:06', 'Login', 'Dickson samwel msaky'),
(593, '2017-09-29 12:18:30', 'Login', 'Samson S Kiware'),
(594, '2017-09-29 12:30:47', 'Login', 'Dingani D Chinula'),
(595, '2017-09-29 13:04:57', 'Login', 'Godlove Thomas Chila'),
(596, '2017-09-29 13:37:54', 'Logout', 'Dingani D Chinula'),
(597, '2017-09-29 14:32:15', 'Logout', '  '),
(598, '2017-09-29 17:12:42', 'Login', 'Samson S Kiware'),
(599, '2017-09-29 17:52:50', 'Login', 'Samson S Kiware'),
(600, '2017-09-29 20:19:10', 'Login', 'Samson S Kiware'),
(601, '2017-10-02 14:33:41', 'Login', 'Samson S Kiware'),
(602, '2017-10-03 09:42:05', 'Login', 'Samson S Kiware'),
(603, '2017-10-04 12:41:41', 'Login', 'Samson S Kiware'),
(604, '2017-10-05 04:20:02', 'Login', 'Samson S Kiware'),
(605, '2017-10-05 12:42:46', 'Login', 'Samson S Kiware'),
(606, '2017-10-05 13:14:19', 'Login', 'Samson S Kiware'),
(607, '2017-10-05 13:46:39', 'Login', 'Samson S Kiware'),
(608, '2017-10-05 14:44:19', 'Login', 'Dickson samwel msaky'),
(609, '2017-10-06 15:07:33', 'Login', 'Samson S Kiware'),
(610, '2017-10-06 16:24:49', 'Login', 'Samson S Kiware'),
(611, '2017-10-06 21:53:42', 'Login', 'Samson S Kiware'),
(612, '2017-10-07 08:56:29', 'Login', 'Samson S Kiware'),
(613, '2017-10-07 09:46:29', 'Login', 'Samson S Kiware'),
(614, '2017-10-07 11:12:59', 'Login', 'Samson S Kiware'),
(615, '2017-10-07 11:53:27', 'Login', 'Samson S Kiware'),
(616, '2017-10-07 12:11:24', 'Login', 'Godlove Thomas Chila'),
(617, '2017-10-07 22:04:28', 'Login', 'Dickson samwel msaky'),
(618, '2017-10-08 10:30:29', 'Login', 'Samson S Kiware'),
(619, '2017-10-08 19:09:35', 'Login', 'Godlove Thomas Chila'),
(620, '2017-10-08 19:16:30', 'Login', 'Samson S Kiware'),
(621, '2017-10-08 19:20:18', 'Login', 'Samson S Kiware'),
(622, '2017-10-08 19:20:33', 'Login', 'Samson S Kiware'),
(623, '2017-10-08 19:21:07', 'Login', 'Dickson samwel msaky'),
(624, '2017-10-08 19:24:52', 'Login', 'Godlove Thomas Chila'),
(625, '2017-10-08 19:25:12', 'Login', 'Godlove Thomas Chila'),
(626, '2017-10-08 19:25:58', 'Login', 'Godlove Thomas Chila'),
(627, '2017-10-08 19:26:06', 'Login', 'Godlove Thomas Chila'),
(628, '2017-10-08 19:26:43', 'Login', 'Samson S Kiware'),
(629, '2017-10-08 19:27:53', 'Login', 'Godlove Thomas Chila'),
(630, '2017-10-08 19:33:31', 'Login', 'Samson S Kiware'),
(631, '2017-10-08 19:41:55', 'Login', 'Godlove Thomas Chila'),
(632, '2017-10-08 19:42:04', 'Login', 'Godlove Thomas Chila'),
(633, '2017-10-08 19:51:17', 'Login', 'Godlove Thomas Chila'),
(634, '2017-10-08 19:56:22', 'Login', 'Godlove Thomas Chila'),
(635, '2017-10-08 20:00:27', 'Login', 'Godlove Thomas Chila'),
(636, '2017-10-08 20:10:09', 'Login', 'Samson S Kiware'),
(637, '2017-10-09 08:46:16', 'Login', 'Samson S Kiware'),
(638, '2017-10-09 20:14:55', 'Login', 'Samson S Kiware'),
(639, '2017-10-10 12:56:44', 'Login', 'Samson S Kiware'),
(640, '2017-10-10 13:58:01', 'Login', 'Samson S Kiware'),
(641, '2017-10-11 13:43:38', 'Login', 'Samson S Kiware'),
(642, '2017-10-11 13:43:52', 'Logout', 'Samson S Kiware'),
(643, '2017-10-11 13:44:09', 'Login', 'Tegemeo M Gavana'),
(644, '2017-10-11 13:46:43', 'Logout', 'Tegemeo M Gavana'),
(645, '2017-10-11 21:13:25', 'Login', 'Samson S Kiware'),
(646, '2017-10-12 10:17:15', 'Login', 'Samson S Kiware'),
(647, '2017-10-12 10:38:36', 'Logout', 'Samson S Kiware'),
(648, '2017-10-12 13:01:11', 'Login', 'Samson S Kiware'),
(649, '2017-10-12 16:15:08', 'Login', 'Samson S Kiware'),
(650, '2017-10-13 15:54:23', 'Login', 'Samson S Kiware'),
(651, '2017-10-13 20:28:15', 'Login', 'Samson S Kiware'),
(652, '2017-10-14 09:56:20', 'Login', 'Dickson samwel msaky'),
(653, '2017-10-17 11:45:46', 'Login', 'Samson S Kiware'),
(654, '2017-10-17 12:43:07', 'Logout', 'Samson S Kiware'),
(655, '2017-10-19 10:49:17', 'Login', 'Godlove Thomas Chila'),
(656, '2017-10-20 19:13:46', 'Login', 'Samson S Kiware'),
(657, '2017-10-21 08:34:10', 'Login', 'Samson S Kiware'),
(658, '2017-10-21 11:35:00', 'Login', 'Samson S Kiware'),
(659, '2017-10-21 12:32:38', 'Login', 'Samson S Kiware'),
(660, '2017-10-22 10:51:57', 'Login', 'Dickson samwel msaky'),
(661, '2017-10-25 10:53:16', 'Login', 'Samson S Kiware'),
(662, '2017-10-27 11:52:31', 'Login', 'Samson S Kiware'),
(663, '2017-10-27 11:54:34', 'Logout', 'Samson S Kiware'),
(664, '2017-10-27 15:55:25', 'Login', 'Samson S Kiware'),
(665, '2017-10-30 19:25:42', 'Login', 'Yeromin Y Mlacha'),
(666, '2017-10-30 19:38:26', 'Login', 'Samson S Kiware'),
(667, '2017-10-30 19:40:15', 'Logout', 'Samson S Kiware'),
(668, '2017-10-30 19:42:21', 'Login', 'Samson S Kiware'),
(669, '2017-10-30 19:44:21', 'Login', 'April C Monroe'),
(670, '2017-10-30 23:36:17', 'Login', 'Yeromin Y Mlacha'),
(671, '2017-10-31 10:15:00', 'Login', 'Samson S Kiware'),
(672, '2017-11-01 10:14:17', 'Login', 'Samson S Kiware'),
(673, '2017-11-01 12:52:15', 'Login', 'Samson S Kiware'),
(674, '2017-11-01 13:22:43', 'Login', 'Kimberly Selema Mihayo'),
(675, '2017-11-01 15:23:11', 'Login', 'Samson S Kiware'),
(676, '2017-11-02 19:46:50', 'Login', 'Samson S Kiware'),
(677, '2017-11-03 15:04:50', 'Login', 'Samson S Kiware'),
(678, '2017-11-03 15:14:59', 'Login', 'Kimberly Selema Mihayo'),
(679, '2017-11-03 20:13:18', 'Login', 'Godlove Thomas Chila'),
(680, '2017-11-05 16:19:57', 'Login', 'Samson S Kiware'),
(681, '2017-11-06 10:10:40', 'Login', 'Samson S Kiware'),
(682, '2017-11-07 11:05:37', 'Login', 'Samson S Kiware'),
(683, '2017-11-07 11:41:13', 'Login', 'Samson S Kiware'),
(684, '2017-11-07 14:08:38', 'Login', 'Samson S Kiware'),
(685, '2017-11-08 23:20:13', 'Login', 'Samson S Kiware'),
(686, '2017-11-13 13:08:08', 'Login', 'Samson S Kiware'),
(687, '2017-11-14 10:11:35', 'Login', 'Samson S Kiware'),
(688, '2017-11-15 09:52:09', 'Login', 'Samson S Kiware'),
(689, '2017-11-15 12:34:16', 'Login', 'Samson S Kiware'),
(690, '2017-11-16 13:15:01', 'Login', 'Samson S Kiware'),
(691, '2017-11-17 11:36:18', 'Login', 'Samson S Kiware'),
(692, '2017-11-17 13:44:00', 'Login', 'Brian B Tarimo'),
(693, '2017-11-17 13:46:05', 'Login', 'Brian B Tarimo'),
(694, '2017-11-20 08:55:37', 'Login', 'Samson S Kiware'),
(695, '2017-11-20 12:26:31', 'Login', 'Samson S Kiware'),
(696, '2017-11-20 15:18:12', 'Login', 'Godlove Thomas Chila'),
(697, '2017-11-21 10:55:37', 'Login', 'Samson S Kiware'),
(698, '2017-11-21 16:45:31', 'Login', 'Godlove Thomas Chila'),
(699, '2017-11-21 21:06:38', 'Login', 'Samson S Kiware'),
(700, '2017-11-22 16:16:16', 'Login', 'Godlove Thomas Chila'),
(701, '2017-11-23 14:50:15', 'Login', 'Kimberly Selema Mihayo'),
(702, '2017-11-24 10:30:09', 'Login', 'Samson S Kiware'),
(703, '2017-11-24 11:58:17', 'Login', 'Samson S Kiware'),
(704, '2017-11-24 13:46:50', 'Login', 'Godlove Thomas Chila'),
(705, '2017-11-25 14:38:07', 'Login', 'Samson S Kiware'),
(706, '2017-11-25 15:13:42', 'Login', 'Samson S Kiware'),
(707, '2017-11-25 17:16:20', 'Login', 'Godlove Thomas Chila'),
(708, '2017-11-25 22:48:54', 'Login', 'Samson S Kiware'),
(709, '2017-11-26 14:26:15', 'Login', 'Godlove Thomas Chila'),
(710, '2017-11-27 11:14:02', 'Login', 'Samson S Kiware'),
(711, '2017-11-27 12:17:54', 'Login', 'Samson S Kiware'),
(712, '2017-11-27 14:59:45', 'Login', 'Godlove Thomas Chila'),
(713, '2017-11-28 11:17:57', 'Login', 'Samson S Kiware'),
(714, '2017-11-29 10:37:53', 'Login', 'Samson S Kiware'),
(715, '2017-11-29 11:17:26', 'Login', 'Brian B Tarimo'),
(716, '2017-11-29 11:27:09', 'Logout', 'Brian B Tarimo'),
(717, '2017-11-29 15:17:40', 'Login', 'Samson S Kiware'),
(718, '2017-11-30 12:52:11', 'Login', 'Godlove Thomas Chila'),
(719, '2017-11-30 12:55:34', 'Login', 'Samson S Kiware'),
(720, '2017-11-30 16:16:53', 'Login', 'Samson S Kiware'),
(721, '2017-12-01 09:37:32', 'Login', 'Samson S Kiware'),
(722, '2017-12-01 13:18:54', 'Login', 'Samson S Kiware'),
(723, '2017-12-01 15:52:13', 'Login', 'Samson S Kiware'),
(724, '2017-12-01 16:56:18', 'Login', 'Godlove Thomas Chila'),
(725, '2017-12-01 18:29:35', 'Login', 'Godlove Thomas Chila'),
(726, '2017-12-01 23:58:28', 'Login', 'Samson S Kiware'),
(727, '2017-12-02 00:20:01', 'Login', 'Samson S Kiware'),
(728, '2017-12-02 02:57:35', 'Login', 'Samson S Kiware'),
(729, '2017-12-02 13:57:43', 'Login', 'Samson S Kiware'),
(730, '2017-12-04 15:55:54', 'Login', 'Godlove Thomas Chila'),
(731, '2017-12-05 10:00:13', 'Login', 'Samson S Kiware'),
(732, '2017-12-05 10:17:35', 'Login', 'Brian B Tarimo'),
(733, '2017-12-05 11:40:47', 'Login', 'Samson S Kiware'),
(734, '2017-12-10 14:50:02', 'Login', 'Godlove Thomas Chila'),
(735, '2017-12-12 14:15:39', 'Login', 'Godlove Thomas Chila'),
(736, '2017-12-13 13:36:26', 'Login', 'Godlove Thomas Chila'),
(737, '2017-12-13 16:46:36', 'Login', 'Samson S Kiware'),
(738, '2017-12-14 10:08:24', 'Login', 'Samson S Kiware'),
(739, '2017-12-14 14:14:44', 'Login', 'Samson S Kiware'),
(740, '2017-12-14 14:15:26', 'Logout', 'Samson S Kiware'),
(741, '2017-12-14 14:16:45', 'Login', 'Samson S Kiware'),
(742, '2017-12-15 09:21:59', 'Login', 'Samson S Kiware'),
(743, '2017-12-16 09:59:36', 'Login', 'Samson S Kiware'),
(744, '2017-12-18 11:36:47', 'Login', 'Samson S Kiware'),
(745, '2017-12-18 14:21:53', 'Login', 'Samson S Kiware'),
(746, '2017-12-18 16:06:40', 'Login', 'Godlove Thomas Chila'),
(747, '2017-12-19 09:49:04', 'Login', 'Samson S Kiware'),
(748, '2017-12-19 15:59:06', 'Login', 'Godlove Thomas Chila'),
(749, '2017-12-20 09:43:58', 'Login', 'Samson S Kiware'),
(750, '2017-12-20 09:49:28', 'Logout', 'Samson S Kiware'),
(751, '2017-12-20 10:53:32', 'Login', 'Samson S Kiware'),
(752, '2017-12-20 11:01:00', 'Logout', 'Samson S Kiware'),
(753, '2017-12-22 08:58:23', 'Login', 'Samson S Kiware'),
(754, '2017-12-22 11:29:20', 'Login', 'Samson S Kiware'),
(755, '2017-12-22 17:16:32', 'Login', 'Godlove Thomas Chila'),
(756, '2017-12-23 18:44:34', 'Login', 'Godlove Thomas Chila'),
(757, '2017-12-23 23:11:50', 'Login', 'Samson S Kiware'),
(758, '2017-12-31 22:17:36', 'Login', 'Godlove Thomas Chila'),
(759, '2018-01-04 07:31:04', 'Login', 'Godlove Thomas Chila'),
(760, '2018-01-04 09:25:42', 'Login', 'Godlove Thomas Chila'),
(761, '2018-01-04 21:55:44', 'Login', 'Godlove Thomas Chila'),
(762, '2018-01-05 13:58:06', 'Login', 'Godlove Thomas Chila'),
(763, '2018-01-12 17:02:29', 'Login', 'Samson S Kiware'),
(764, '2018-01-18 17:34:04', 'Login', 'Samson S Kiware'),
(765, '2018-01-19 14:23:40', 'Login', 'Samson S Kiware'),
(766, '2018-01-19 17:30:18', 'Login', 'Samson S Kiware'),
(767, '2018-01-19 18:34:18', 'Login', 'Samson S Kiware'),
(768, '2018-01-20 13:17:49', 'Login', 'Samson S Kiware'),
(769, '2018-01-20 15:10:30', 'Login', 'Samson S Kiware'),
(770, '2018-01-21 16:29:16', 'Login', 'Samson S Kiware'),
(771, '2018-01-23 14:45:03', 'Login', 'Godlove Thomas Chila'),
(772, '2018-01-24 10:25:04', 'Login', 'Samson S Kiware'),
(773, '2018-01-26 07:34:24', 'Login', 'Samson S Kiware'),
(774, '2018-01-27 22:46:04', 'Login', 'Alphonce  Alexander Assenga'),
(775, '2018-01-31 10:59:01', 'Login', 'Samson S Kiware'),
(776, '2018-01-31 15:44:04', 'Login', 'Samson S Kiware'),
(777, '2018-01-31 18:18:18', 'Login', 'Samson S Kiware'),
(778, '2018-01-31 19:14:49', 'Login', 'Samson S Kiware'),
(779, '2018-02-01 13:32:39', 'Login', 'Godlove Thomas Chila'),
(780, '2018-02-01 13:44:25', 'Login', 'Samson S Kiware'),
(781, '2018-02-05 18:30:41', 'Login', 'Samson S Kiware'),
(782, '2018-02-05 20:40:24', 'Login', 'Samson S Kiware'),
(783, '2018-02-05 20:56:51', 'Login', 'Samson S Kiware'),
(784, '2018-02-06 17:14:00', 'Login', 'Samson S Kiware'),
(785, '2018-02-07 10:58:04', 'Login', 'Samson S Kiware'),
(786, '2018-02-07 15:48:37', 'Login', 'Samson S Kiware'),
(787, '2018-02-07 20:31:17', 'Login', 'Samson S Kiware'),
(788, '2018-02-07 23:06:03', 'Login', 'Samson S Kiware'),
(789, '2018-02-08 09:51:19', 'Login', 'Revocatus Musyangi Musiba'),
(790, '2018-02-08 10:52:34', 'Login', 'Godlove Thomas Chila'),
(791, '2018-02-08 10:59:58', 'Login', 'Godlove Thomas Chila'),
(792, '2018-02-08 11:06:13', 'Login', 'Revocatus Musyangi Musiba'),
(793, '2018-02-08 11:13:45', 'Login', 'Samson S Kiware'),
(794, '2018-02-08 12:41:21', 'Login', 'Samson S Kiware'),
(795, '2018-02-08 13:26:20', 'Login', 'Samson S Kiware'),
(796, '2018-02-08 14:48:51', 'Login', 'Samson S Kiware'),
(797, '2018-02-09 09:50:05', 'Login', 'Samson S Kiware'),
(798, '2018-02-09 13:26:40', 'Login', 'Revocatus Musyangi Musiba'),
(799, '2018-02-09 13:27:04', 'Logout', 'Revocatus Musyangi Musiba'),
(800, '2018-02-09 13:27:19', 'Login', 'Samson S Kiware'),
(801, '2018-02-09 13:28:05', 'Logout', 'Samson S Kiware'),
(802, '2018-02-09 13:28:13', 'Login', 'Revocatus Musyangi Musiba'),
(803, '2018-02-10 12:20:20', 'Login', 'Godlove Thomas Chila'),
(804, '2018-02-17 16:52:21', 'Login', 'Samson S Kiware'),
(805, '2018-02-17 18:09:19', 'Login', 'Samson S Kiware'),
(806, '2018-02-17 22:23:47', 'Login', 'Samson S Kiware'),
(807, '2018-02-22 16:55:42', 'Login', 'Samson S Kiware'),
(808, '2018-02-22 18:16:10', 'Login', 'Samson S Kiware'),
(809, '2018-02-26 17:56:50', 'Login', 'Samson S Kiware'),
(810, '2018-03-08 05:10:44', 'Login', 'Brian B Tarimo'),
(811, '2018-03-08 05:15:56', 'Logout', 'Brian B Tarimo'),
(812, '2018-03-09 10:47:33', 'Login', 'Godlove Thomas Chila'),
(813, '2018-03-10 18:34:02', 'Login', 'Samson S Kiware'),
(814, '2018-03-13 09:37:38', 'Login', 'Revocatus Musyangi Musiba'),
(815, '2018-03-14 12:45:09', 'Login', 'Samson S Kiware'),
(816, '2018-03-14 15:52:34', 'Login', 'Samson S Kiware'),
(817, '2018-03-14 15:53:22', 'Logout', 'Samson S Kiware'),
(818, '2018-03-19 12:33:17', 'Login', 'Samson S Kiware'),
(819, '2018-03-19 13:48:36', 'Login', 'Samson S Kiware'),
(820, '2018-03-19 14:40:38', 'Login', 'Samson S Kiware'),
(821, '2018-03-19 15:31:51', 'Login', 'Revocatus Musyangi Musiba'),
(822, '2018-03-21 16:12:17', 'Login', 'Godlove Thomas Chila'),
(823, '2018-03-22 13:57:22', 'Login', 'Revocatus Musyangi Musiba'),
(824, '2018-03-22 14:57:04', 'Login', 'Samson S Kiware'),
(825, '2018-03-23 19:01:47', 'Login', 'Brian B Tarimo'),
(826, '2018-03-23 19:04:32', 'Logout', 'Brian B Tarimo'),
(827, '2018-03-23 23:45:09', 'Login', 'Revocatus Musyangi Musiba'),
(828, '2018-03-23 23:47:27', 'Login', 'Revocatus Musyangi Musiba'),
(829, '2018-03-24 14:49:53', 'Login', 'Samson S Kiware'),
(830, '2018-03-24 17:33:12', 'Login', 'Samson S Kiware'),
(831, '2018-03-24 20:16:23', 'Login', 'Samson S Kiware'),
(832, '2018-03-24 22:34:05', 'Login', 'Samson S Kiware'),
(833, '2018-03-26 01:39:30', 'Login', 'Revocatus Musyangi Musiba'),
(834, '2018-03-26 17:51:25', 'Login', 'Samson S Kiware'),
(835, '2018-03-26 18:45:12', 'Login', 'Samson S Kiware'),
(836, '2018-03-27 14:17:53', 'Login', 'Samson S Kiware'),
(837, '2018-03-27 15:05:31', 'Login', 'Samson S Kiware'),
(838, '2018-03-31 14:14:22', 'Login', 'Dickson samwel msaky'),
(839, '2018-03-31 19:30:21', 'Login', 'Samson S Kiware'),
(840, '2018-03-31 22:38:25', 'Login', 'Samson S Kiware'),
(841, '2018-04-01 00:58:23', 'Logout', '  '),
(842, '2018-04-01 00:58:34', 'Login', 'Samson S Kiware'),
(843, '2018-04-01 17:12:10', 'Login', 'Samson S Kiware'),
(844, '2018-04-02 09:05:41', 'Login', 'Samson S Kiware'),
(845, '2018-04-03 23:28:11', 'Login', 'Samson S Kiware'),
(846, '2018-04-04 08:04:35', 'Login', 'Samson S Kiware'),
(847, '2018-04-04 11:37:22', 'Login', 'Samson S Kiware'),
(848, '2018-04-04 14:31:39', 'Login', 'Samson S Kiware'),
(849, '2018-04-04 21:27:10', 'Login', 'Samson S Kiware'),
(850, '2018-04-05 10:51:41', 'Login', 'Samson S Kiware'),
(851, '2018-04-06 08:45:52', 'Login', 'Samson S Kiware'),
(852, '2018-04-06 12:00:52', 'Login', 'Samson S Kiware'),
(853, '2018-04-06 14:07:38', 'Login', 'Samson S Kiware'),
(854, '2018-04-06 15:18:28', 'Login', 'Samson S Kiware'),
(855, '2018-04-06 15:28:22', 'Login', 'Revocatus Musyangi Musiba'),
(856, '2018-04-06 15:30:57', 'Login', 'Revocatus Musyangi Musiba'),
(857, '2018-04-06 15:34:06', 'Login', 'Revocatus Musyangi Musiba'),
(858, '2018-04-07 00:18:54', 'Login', 'Samson S Kiware'),
(859, '2018-04-07 08:11:56', 'Login', 'Samson S Kiware'),
(860, '2018-04-07 11:51:13', 'Login', 'Samson S Kiware'),
(861, '2018-04-07 13:29:09', 'Login', 'Samson S Kiware'),
(862, '2018-04-07 15:01:40', 'Login', 'Samson S Kiware'),
(863, '2018-04-07 23:17:50', 'Login', 'Samson S Kiware'),
(864, '2018-04-08 01:20:45', 'Login', 'Samson S Kiware'),
(865, '2018-04-08 22:22:36', 'Login', 'Samson S Kiware'),
(866, '2018-04-08 23:12:03', 'Login', 'Samson S Kiware'),
(867, '2018-04-09 16:14:06', 'Login', 'Samson S Kiware'),
(868, '2018-04-09 22:01:45', 'Login', 'Samson S Kiware'),
(869, '2018-04-10 14:11:13', 'Login', 'Brian B Tarimo'),
(870, '2018-04-10 14:33:12', 'Login', 'Revocatus Musyangi Musiba'),
(871, '2018-04-17 10:53:00', 'Login', 'Yeromin Y Mlacha');
INSERT INTO `history` (`history_id`, `date`, `action`, `data`) VALUES
(872, '2018-04-18 11:30:05', 'Login', 'Samson S Kiware'),
(873, '2018-04-19 15:09:43', 'Login', 'Samson S Kiware'),
(874, '2018-04-21 15:05:44', 'Login', 'Revocatus Musyangi Musiba'),
(875, '2018-04-23 10:55:01', 'Login', 'Samson S Kiware'),
(876, '2018-04-30 11:16:30', 'Login', 'Samson S Kiware'),
(877, '2018-04-30 13:02:54', 'Login', 'Revocatus Musyangi Musiba'),
(878, '2018-04-30 17:46:39', 'Login', 'Samson S Kiware'),
(879, '2018-04-30 21:18:40', 'Login', 'Samson S Kiware'),
(880, '2018-04-30 22:54:41', 'Login', 'Samson S Kiware'),
(881, '2018-05-01 12:08:08', 'Login', 'Samson S Kiware'),
(882, '2018-05-01 14:55:01', 'Login', 'Samson S Kiware'),
(883, '2018-05-02 13:58:18', 'Login', 'Samson S Kiware'),
(884, '2018-05-02 15:27:21', 'Login', 'Samson S Kiware'),
(885, '2018-05-03 13:54:46', 'Login', 'Samson S Kiware'),
(886, '2018-05-05 08:44:08', 'Login', 'Yeromin Y Mlacha'),
(887, '2018-05-06 16:24:30', 'Login', 'Dingani D Chinula'),
(888, '2018-05-08 07:36:05', 'Login', 'Samson S Kiware'),
(889, '2018-05-09 19:43:07', 'Login', 'Samson S Kiware'),
(890, '2018-05-10 06:15:38', 'Login', 'Samson S Kiware'),
(891, '2018-05-11 12:39:56', 'Login', 'Godlove Thomas Chila'),
(892, '2018-05-11 14:04:19', 'Login', 'Godlove Thomas Chila'),
(893, '2018-05-11 15:04:59', 'Login', 'Godlove Thomas Chila'),
(894, '2018-05-11 16:24:07', 'Login', 'Godlove Thomas Chila'),
(895, '2018-05-11 23:39:21', 'Login', 'Samson S Kiware'),
(896, '2018-05-12 02:34:14', 'Login', 'Godlove Thomas Chila'),
(897, '2018-05-12 13:36:01', 'Login', 'Samson S Kiware'),
(898, '2018-05-14 14:33:12', 'Login', 'Godlove Thomas Chila'),
(899, '2018-05-18 09:49:29', 'Login', 'Samson S Kiware'),
(900, '2018-05-18 09:54:14', 'Logout', 'Samson S Kiware'),
(901, '2018-05-18 09:54:33', 'Login', 'Tegemeo M Gavana'),
(902, '2018-05-18 17:32:47', 'Login', 'Tegemeo M Gavana'),
(903, '2018-05-21 12:01:19', 'Login', 'Samson S Kiware'),
(904, '2018-05-21 12:01:47', 'Logout', 'Samson S Kiware'),
(905, '2018-05-21 12:02:02', 'Login', 'Tegemeo M Gavana'),
(906, '2018-05-21 15:34:23', 'Login', 'Tegemeo M Gavana'),
(907, '2018-05-22 07:52:04', 'Login', 'Godlove Thomas Chila'),
(908, '2018-05-22 10:00:08', 'Login', 'Samson S Kiware'),
(909, '2018-05-22 10:00:45', 'Logout', 'Samson S Kiware'),
(910, '2018-05-22 10:00:59', 'Login', 'Tegemeo M Gavana'),
(911, '2018-05-22 11:41:03', 'Login', 'Samson S Kiware'),
(912, '2018-05-23 12:14:40', 'Login', 'Tegemeo M Gavana'),
(913, '2018-05-23 14:21:44', 'Login', 'Tegemeo M Gavana'),
(914, '2018-05-23 17:15:21', 'Login', 'Samson S Kiware'),
(915, '2018-05-24 10:58:33', 'Login', 'Tegemeo M Gavana'),
(916, '2018-05-24 11:39:41', 'Login', 'Tegemeo M Gavana'),
(917, '2018-05-24 16:50:53', 'Login', 'Samson S Kiware'),
(918, '2018-05-28 12:35:33', 'Login', 'Tegemeo M Gavana'),
(919, '2018-05-28 17:39:37', 'Login', 'Tegemeo M Gavana'),
(920, '2018-05-29 16:04:57', 'Login', 'Godlove Thomas Chila'),
(921, '2018-06-06 18:44:32', 'Login', 'Samson S Kiware'),
(922, '2018-06-13 03:21:25', 'Login', 'Samson S Kiware'),
(923, '2018-06-13 14:24:48', 'Login', 'Brian B.  Tarimo'),
(924, '2018-06-13 14:44:52', 'Logout', 'Brian B.  Tarimo'),
(925, '2018-06-13 15:32:12', 'Login', 'Brian B.  Tarimo'),
(926, '2018-08-21 14:53:59', 'Login', 'Samson S Kiware'),
(927, '2018-09-04 12:45:14', 'Login', 'Samson S Kiware'),
(928, '2018-09-04 15:15:44', 'Login', 'Samson S Kiware'),
(929, '2018-10-29 20:45:37', 'Login', 'Samson S Kiware'),
(930, '2018-11-15 10:22:30', 'Login', 'Samson S Kiware'),
(931, '2018-11-15 10:25:18', 'Login', 'Samson S Kiware');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `user_name`, `action`, `date`) VALUES
(0, 1001, 'skiware', 'Has signed out', '2018-04-09 19:10:05'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-09 19:10:16'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-09 22:00:10'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-09 23:00:33'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-10 00:28:02'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-10 00:30:40'),
(0, 1001, 'skiware', 'Has signed out', '2018-04-10 01:13:56'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-10 01:20:13'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-10 08:34:47'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 11:05:21'),
(0, 1023, 'dixon', 'Has signed out', '2018-04-10 11:05:55'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-10 11:06:17'),
(0, 1001, 'skiware', 'Has signed out', '2018-04-10 11:07:47'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 11:08:26'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 14:34:19'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 14:34:56'),
(0, 1017, 'rmusiba', 'Has signed in', '2018-04-10 14:35:22'),
(0, 1005, 'btarimo', 'Has signed in', '2018-04-10 14:36:48'),
(0, 1024, 'Kanuth', 'Has signed in', '2018-04-10 14:38:00'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 14:39:05'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 14:41:03'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 14:41:23'),
(0, 1023, 'dixon', 'Has signed in', '2018-04-10 14:41:46'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-10 14:44:31'),
(0, 1001, 'skiware', 'Has deleted user_1020', '2018-04-10 14:45:39'),
(0, 1001, 'skiware', 'Has deleted user_1011', '2018-04-10 14:45:45'),
(0, 1005, 'btarimo', 'Has signed out', '2018-04-10 15:02:21'),
(0, 1023, 'dixon', 'Has signed out', '2018-04-10 15:05:10'),
(0, 1024, 'Kanuth', 'Has signed in', '2018-04-10 17:18:29'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-11 17:20:05'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-11 20:04:20'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-18 14:07:47'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-19 13:48:10'),
(0, 1001, 'skiware', 'Has signed out', '2018-04-19 13:50:16'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-19 14:05:56'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-19 15:40:45'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-19 19:28:21'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-20 13:01:32'),
(0, 1025, 'jmfano@gmail.com', 'Has signed in', '2018-04-22 17:27:41'),
(0, 1025, 'jmfano@gmail.com', 'Has signed out', '2018-04-22 17:27:58'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-23 10:54:52'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-24 10:30:35'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-25 13:03:05'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-25 16:30:48'),
(0, 1001, 'skiware', 'Has signed in', '2018-04-25 20:06:18'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-02 12:58:40'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-04 08:34:14'),
(0, 1004, 'ymlacha', 'Has signed in', '2018-05-05 08:46:53'),
(0, 1004, 'ymlacha', 'Has signed in', '2018-05-05 09:54:32'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-09 21:13:51'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-10 06:16:30'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-11 13:45:48'),
(0, 1026, 'jlong', 'Has signed in', '2018-05-11 14:04:54'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-12 00:51:27'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-12 13:49:26'),
(0, 1001, 'skiware', 'Has signed in', '2018-05-15 15:54:41'),
(0, 1003, 'tgavana', 'Has signed in', '2018-05-21 19:10:46'),
(0, 1001, 'skiware', 'Has signed in', '2018-06-06 18:44:43'),
(0, 1001, 'skiware', 'Has signed out', '2018-06-06 19:08:13'),
(0, 1027, 'jadago', 'Has signed in', '2018-06-06 19:09:48'),
(0, 1027, 'jadago', 'Has signed in', '2018-06-10 21:44:00'),
(0, 1001, 'skiware', 'Has signed in', '2018-07-03 11:35:07'),
(0, 1001, 'skiware', 'Has signed in', '2018-07-03 15:35:19'),
(0, 1023, 'dixon', 'Has signed in', '2018-07-06 12:20:59'),
(0, 1001, 'skiware', 'Has signed in', '2018-07-10 18:19:53'),
(0, 1001, 'skiware', 'Has signed in', '2018-07-13 07:52:51'),
(0, 1001, 'skiware', 'Has signed in', '2018-08-10 10:32:35'),
(0, 1001, 'skiware', 'Has signed in', '2018-08-13 16:14:58'),
(0, 1028, 'Majambere', 'Has signed in', '2018-10-11 14:36:24'),
(0, 1028, 'Majambere', 'Has signed in', '2018-10-12 11:11:40'),
(0, 1001, 'skiware', 'Has signed in', '2018-10-24 20:18:27'),
(0, 1001, 'skiware', 'Has signed in', '2018-10-25 17:36:30'),
(0, 1029, 'Fiacre', 'Has signed in', '2018-11-15 11:59:12'),
(0, 1030, 'fabilahi', 'Has signed in', '2018-11-15 12:21:11'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-21 11:45:25'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-21 14:34:22'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-21 22:56:41'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-22 10:17:53'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-22 12:41:42'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-22 14:21:47'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-23 09:10:36'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-23 10:47:15'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-23 10:47:20'),
(0, 1001, 'skiware', 'Has deleted ea code-11', '2018-11-23 10:53:53'),
(0, 1001, 'skiware', 'Has deleted ea code-10', '2018-11-23 10:53:58'),
(0, 1001, 'skiware', 'Has deleted ea code-9', '2018-11-23 10:54:03'),
(0, 1001, 'skiware', 'Has deleted ea code-8', '2018-11-23 10:54:07'),
(0, 1001, 'skiware', 'Has added ea-code:Mimi', '2018-11-23 17:06:10'),
(0, 1001, 'skiware', 'Has deleted ea code-20', '2018-11-23 20:58:04'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-26 05:52:25'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-26 16:57:45'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-26 16:57:51'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-26 16:57:56'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-26 16:58:17'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-26 17:22:52'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-26 17:22:56'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-26 17:30:55'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-26 19:18:12'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-26 19:38:30'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-28 09:49:20'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-28 09:51:22'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-28 09:51:25'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-28 10:10:11'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-28 14:05:13'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-29 08:22:57'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-29 08:49:06'),
(0, 1001, 'skiware', 'Has signed out', '2018-11-29 08:50:39'),
(0, 1001, 'skiware', 'Has signed in', '2018-11-29 08:50:43'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:15:22'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:15:26'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:28:16'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:28:19'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:28:37'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:31:12'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:31:26'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:49:28'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:49:34'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:49:39'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:52:57'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:53:08'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:53:28'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 22:53:47'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:00:29'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:00:59'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:01:03'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:01:09'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:05:19'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:06:46'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:06:48'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:07:07'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:09:00'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-11-30 23:10:12'),
(0, 1001, 'skiware', 'Has cleared table-11_ed1template', '2018-11-30 23:17:40'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-05 09:45:59'),
(0, 1001, 'skiware', 'Has cleared table-11_method', '2018-12-05 09:49:55'),
(0, 1001, 'skiware', 'Has cleared table-11_habitattype', '2018-12-05 09:50:19'),
(0, 1001, 'skiware', 'Has cleared table-11_ed1template', '2018-12-05 10:11:40'),
(0, 1001, 'skiware', 'Has cleared table-11_ed1template', '2018-12-05 10:55:45'),
(0, 1001, 'skiware', 'Has cleared table-11_ed1template', '2018-12-05 10:56:33'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-06 09:07:15'),
(0, 1001, 'skiware', 'Has cleared table-11_taxon', '2018-12-06 15:40:53'),
(0, 1001, 'skiware', 'Has cleared table-11_ss3template', '2018-12-06 15:41:01'),
(0, 1001, 'skiware', 'Has cleared table-11_taxon', '2018-12-06 15:51:03'),
(0, 1001, 'skiware', 'Has cleared table-11_taxon', '2018-12-06 15:51:54'),
(0, 1001, 'skiware', 'Has cleared table-11_taxon', '2018-12-06 15:54:13'),
(0, 1001, 'skiware', 'Has cleared table-11_taxon', '2018-12-06 15:55:11'),
(0, 1001, 'skiware', 'Has signed out', '2018-12-07 11:26:58'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-07 11:34:15'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-11 09:02:43'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-11 10:29:39'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-11 14:14:22'),
(0, 1001, 'skiware', 'Has signed out', '2018-12-11 22:28:37'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-11 22:28:42'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-13 11:53:59'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-14 14:06:33'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-15 19:43:53'),
(0, 1001, 'skiware', 'Has signed out', '2018-12-15 19:45:31'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-15 19:45:36'),
(0, 1001, 'skiware', 'Has signed out', '2018-12-15 19:45:44'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-15 19:46:00'),
(0, 1001, 'skiware', 'Has signed out', '2018-12-15 19:46:27'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-15 19:46:39'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-15 19:50:37'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-15 19:56:24'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-17 08:02:10'),
(0, 1001, 'skiware', 'Has cleared table-11_compound', '2018-12-17 14:04:07'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-31 13:31:08'),
(0, 1001, 'skiware', 'Has signed in', '2018-12-31 18:11:53'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-01 15:14:56'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-01 20:44:10'),
(0, 1001, 'skiware', 'Has signed out', '2019-01-01 22:00:07'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-01 22:00:15'),
(0, 1001, 'skiware', 'Has signed out', '2019-01-01 22:00:22'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-01 22:00:27'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-02 08:47:28'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-03 10:55:58'),
(0, 1001, 'skiware', 'Has cleared table-16_method', '2019-01-03 12:39:32'),
(0, 1001, 'skiware', 'Has signed out', '2019-01-06 21:10:16'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-06 21:10:41'),
(0, 1001, 'skiware', 'Has deleted user_1027', '2019-01-06 21:18:04'),
(0, 1001, 'skiware', 'Has signed out', '2019-01-06 23:37:45'),
(0, 1001, 'skiware', 'Has signed in', '2019-01-06 23:37:49'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-15 20:14:06'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-15 20:33:05'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-16 11:44:20'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-16 11:45:49'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-16 14:35:31'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-16 14:35:35'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-16 15:12:21'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-16 15:12:29'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-16 15:20:12'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-16 15:20:18'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-16 16:06:19'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-16 16:06:24'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-16 16:09:31'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-16 16:09:35'),
(0, 1032, 'dixonmsaky', 'Has signed in', '2019-02-18 08:18:43'),
(0, 1032, 'dixonmsaky', 'Has signed out', '2019-02-18 08:18:51'),
(0, 1032, 'dixonmsaky', 'Has signed in', '2019-02-18 12:02:19'),
(0, 1032, 'dixonmsaky', 'Has signed out', '2019-02-18 12:02:31'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-18 12:02:38'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-18 19:52:28'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-19 15:42:06'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-19 15:52:43'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-20 12:35:22'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-21 07:57:11'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-21 08:55:35'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-25 11:38:35'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-26 07:40:39'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-26 07:41:16'),
(0, 1001, 'skiware', 'Has cleared table-16_method', '2019-02-27 15:12:11'),
(0, 1001, 'skiware', 'Has cleared table-16_method', '2019-02-27 15:13:44'),
(0, 1001, 'skiware', 'Has cleared table-16_method', '2019-02-27 15:15:31'),
(0, 1001, 'skiware', 'Has cleared table-16_method', '2019-02-27 16:18:38'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 08:58:24'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 08:58:34'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 09:08:10'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-02-28 10:00:53'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-02-28 10:00:57'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 13:17:49'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 20:59:10'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 20:59:16'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 20:59:56'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 21:00:17'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 21:01:05'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:01:10'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 21:01:26'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:01:47'),
(0, 1001, 'skiware', 'Has signed out', '2019-02-28 21:10:03'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:11:29'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:23:34'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:31:30'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:35:52'),
(0, 1001, 'skiware', 'Has signed in', '2019-02-28 21:46:44'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:09:03'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-01 08:11:49'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:11:51'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:12:23'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-01 08:12:35'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:12:41'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-01 08:21:06'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:21:26'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-01 08:26:15'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:26:54'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 08:30:46'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-01 09:11:47'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-03-01 09:15:51'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-03-01 09:18:00'),
(0, 1032, 'dixonmsaki', 'Has signed in', '2019-03-01 09:19:03'),
(0, 1032, 'dixonmsaki', 'Has signed out', '2019-03-01 09:19:08'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 09:47:16'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-01 11:02:07'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 09:45:53'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 10:16:05'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-04 10:18:34'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 10:26:28'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 15:08:21'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-04 20:21:28'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 20:21:41'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-04 20:28:04'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 20:35:55'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-04 21:02:26'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 21:06:25'),
(0, 1001, 'skiware', 'Has signed out', '2019-03-04 21:27:03'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-04 21:27:08'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-05 09:00:51'),
(0, 1001, 'skiware', 'Has signed in', '2019-03-05 12:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(1000) NOT NULL,
  `lang2` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `lang2`) VALUES
(15, 'Formrow (FR),Taxon (TX),Sex and Abdominal Status (SAS),Number Caught (N),Start Date (SD),Valid Assay (VA),Destination Form Serial (DSEN)', 'fr\n,tx\n,sas\n,n\n,sd\n,va\n,dsen\n');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ind` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `number`, `ind`) VALUES
(1, '1', 'In'),
(2, '2', 'Out');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`, `created`, `modified`, `status`) VALUES
(1, '2', 'vincy', 'vincy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, '3', 'tim_lee', 'tim', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(3, '4', 'jane', 'jane', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `method`
--

CREATE TABLE `method` (
  `meth_code` int(3) NOT NULL COMMENT 'Store methode code',
  `meth_desc` varchar(100) NOT NULL COMMENT 'Store method description',
  `meth_abbre` varchar(30) NOT NULL COMMENT 'Store methode abbreviation'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `method`
--

INSERT INTO `method` (`meth_code`, `meth_desc`, `meth_abbre`) VALUES
(-99, 'No data', ''),
(1, 'Human landing catch', 'HLC'),
(2, 'Ifakara tent trap', 'ITT'),
(3, 'CDC light trap', 'CDC LT'),
(4, 'Resting box', 'RB'),
(5, 'Existing resting sites', 'ERS'),
(6, 'Floor', 'Floor'),
(7, 'Entry window interception trap', 'Entry window'),
(8, 'Entry eave interception trap', 'Entry eave'),
(9, 'Entry', 'Entry'),
(10, 'Exit window interception trap', 'Exit window'),
(11, 'Exit eave interception trap', 'Exit eave'),
(12, 'Exit', 'Exit'),
(13, 'Dip', 'Dip'),
(14, 'Substrate', 'Sub'),
(15, 'Emergence Trap', 'Em'),
(16, 'Ovitrap', 'Ovi'),
(17, 'Electrocuting Grids', 'EG'),
(100, 'test method', 'testmethod'),
(18, 'Double Net', 'DN'),
(19, 'Mosquito electric Trap', 'MET');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `EA` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `lat` decimal(13,10) NOT NULL,
  `lon` decimal(13,10) NOT NULL,
  `1desc` decimal(14,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`EA`, `name`, `lat`, `lon`, `1desc`) VALUES
(1, 32, '-6.2446941000', '39.5325815000', '-97.3000030518'),
(2, 8, '-6.2405378167', '39.5345510662', '-492.2217729250'),
(3, 23, '-6.2451542453', '39.5326539731', '-20.7042807247'),
(4, 4, '-6.2442000416', '39.5330649636', '-12.4918917976'),
(5, 20, '-6.2454720027', '39.5329384697', '-10.3222324196'),
(6, 49, '-6.2450144581', '39.5321633652', '-11.0776830930'),
(7, 10, '-6.2443783778', '39.5331432627', '-26.6170299975'),
(8, 12, '-6.2448505929', '39.5329456801', '-2.1546489950'),
(9, 21, '-6.2455533901', '39.5327460632', '-25.3349102670'),
(10, 56, '-6.2454346870', '39.5320086551', '8.0589064034'),
(11, 39, '-6.2453987633', '39.5321719619', '-32.9415973369'),
(12, 62, '-6.2458588951', '39.5316284986', '-27.1171911545'),
(13, 28, '-6.2442984391', '39.5328268787', '-28.5345769729'),
(14, 46, '-6.2466469000', '39.5336852000', '-21.8999996185'),
(15, 65, '-6.2459930814', '39.5313878246', '-25.0484811068'),
(16, 24, '-6.2449346887', '39.5328233060', '-26.0270806253'),
(17, 33, '-6.2446887744', '39.5324050248', '-29.9634060645'),
(18, 48, '-6.2448622758', '39.5319292242', '-20.3876904221'),
(19, 68, '-6.2451379943', '39.5317980215', '-41.0641673077'),
(20, 60, '-6.2456082486', '39.5320469965', '-7.8414108176');

-- --------------------------------------------------------

--
-- Table structure for table `projectreg`
--

CREATE TABLE `projectreg` (
  `id` int(11) NOT NULL COMMENT 'This used to link to other Entity',
  `pc` varchar(15) NOT NULL COMMENT 'hold project code (unique identifier)',
  `expno` int(4) UNSIGNED ZEROFILL NOT NULL COMMENT 'Hold experiment number',
  `pn` varchar(100) NOT NULL COMMENT 'project name (short descriptive -unlimited letters)',
  `pp` varchar(100) NOT NULL COMMENT 'project protocol (metadata of the experimental protocol)',
  `eap` varchar(20) NOT NULL COMMENT 'ethics approval number  assigned to the ethical protocol',
  `rsn` int(10) NOT NULL COMMENT 'responsibilities scientist name',
  `pin` int(10) NOT NULL COMMENT 'principal investigator',
  `esd` date DEFAULT NULL COMMENT 'proposed date that collection will commence (yyyy-mm-dd)',
  `efd` date DEFAULT NULL COMMENT 'proposed date that the collection will be completed (yyyy-mm-dd)'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectreg`
--

INSERT INTO `projectreg` (`id`, `pc`, `expno`, `pn`, `pp`, `eap`, `rsn`, `pin`, `esd`, `efd`) VALUES
(13, 'LMV', 0001, 'LMV', 'project_protocal/LMV1.pdf', '1', 1001, 1001, '2017-01-01', '2018-01-01'),
(12, 'Test', 0001, 'Testing', 'project_protocal/Test01.pdf', '1', 1002, 1002, '2017-01-01', '2018-01-01'),
(11, 'DEB', 0001, 'Durable Eave Baffles', 'project_protocal/DEB1.pdf', '1', 1014, 1014, '2017-01-13', '2017-03-09'),
(10, 'WT-D', 0001, 'Wellcome Dingani', 'project_protocal/WT-D1.pdf', '12', 1001, 1001, '2016-01-01', '2017-12-01'),
(9, 'MRC-ZIKA', 0002, 'MRC-ZIKA', 'project_protocal/MRC-ZIKA1.pdf', '1', 1001, 1001, '2017-01-01', '2018-01-01'),
(8, 'MRC-ZIKA', 0001, 'MRC-ZIKA', 'project_protocal/MRC-ZIKA1.pdf', '1', 1001, 1001, '2017-01-01', '2018-01-01'),
(6, 'ACOBISREM', 0001, 'ACOBISREM', 'project_protocal/ACOBSREM1.pdf', '1', 1003, 1002, '2015-01-01', '2017-10-10'),
(5, 'eMRTZ', 0001, 'eMRTZ', 'project_protocal/eRMTZ1.pdf', '1', 1001, 1001, '2016-12-01', '2017-12-01'),
(4, 'LIDAR', 0001, 'LIDAR', 'project_protocal/LIDAR1.pdf', '1', 1004, 1004, '2016-08-08', '2017-12-12'),
(3, 'LIDAR2016', 0001, 'LIDAR2016', 'project_protocal/LIDAR1.pdf', '1', 1001, 1001, '2016-06-06', '2017-06-06'),
(2, 'MRTZ', 0001, 'MRTZ', 'project_protocal/ZRMT21.pdf', '1', 1001, 1001, '2016-10-11', '2016-12-31'),
(7, 'ACOBS', 0001, 'ACOBS', 'project_protocal/ACOBS1.pdf', '1', 1003, 1003, '2015-11-01', '2016-12-12'),
(16, 'Emal', 0001, 'EliminateMalaria', '', '1', 1002, 1002, '2019-01-01', '2019-01-05'),
(14, 'MRC-ZIKA', 0003, 'MRC-ZIKA', 'project_protocal/MRC-ZIKA1.pdf', '1', 1001, 1001, '2018-01-01', '2018-12-31'),
(15, 'MRC-ZIKA', 0004, 'MRC-ZIKA', 'project_protocal/MRC-ZIKA1.pdf', '1', 1001, 1001, '2018-01-01', '2018-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `projectregsite`
--

CREATE TABLE `projectregsite` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to ED',
  `site_id` int(5) NOT NULL COMMENT 'hold site code ',
  `projectreg_id` int(11) NOT NULL COMMENT 'Hold identification number from ProjectReg Entity'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectregsite`
--

INSERT INTO `projectregsite` (`id`, `site_id`, `projectreg_id`) VALUES
(1, 12, 2),
(2, 2, 3),
(3, 2, 4),
(4, 12, 5),
(5, 16, 1),
(6, 16, 6),
(7, 16, 7),
(8, 0, 0),
(9, 1, 8),
(10, 15, 10),
(11, 15, 11),
(12, 13, 12),
(13, 12, 12),
(14, 2, 13),
(15, 1, 9),
(16, 12, 0),
(17, 9, 12),
(18, 1, 14),
(19, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `projectshared`
--

CREATE TABLE `projectshared` (
  `id` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `psummary` varchar(9999) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `reg_id` int(5) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of region combine region id and zone id its format is zeno_id+reg_id',
  `reg_name` varchar(30) NOT NULL DEFAULT '' COMMENT 'Store region name',
  `zone_id` int(2) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store zone identinfication number'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`reg_id`, `reg_name`, `zone_id`) VALUES
(00114, 'Tabora', 01),
(00202, 'Arusha', 02),
(00203, 'Kilimanjaro', 02),
(00204, 'Tanga', 02),
(00301, 'Dodoma', 03),
(00313, 'Singida', 03),
(00411, 'Iringa', 04),
(00412, 'Mbeya', 04),
(00605, 'Morogoro', 06),
(00606, 'Pwani', 06),
(00607, 'Dar-es-salaam', 06),
(00708, 'Lindi', 07),
(00709, 'Mtwara', 07),
(00710, 'Ruvuma', 07);

-- --------------------------------------------------------

--
-- Table structure for table `sampletype`
--

CREATE TABLE `sampletype` (
  `sample_code` int(3) NOT NULL COMMENT 'Store sample code identification',
  `sample_desc` varchar(30) NOT NULL COMMENT 'Store sample description '
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampletype`
--

INSERT INTO `sampletype` (`sample_code`, `sample_desc`) VALUES
(-99, 'No data'),
(1, 'Individual'),
(2, 'Batch'),
(3, 'Pool'),
(4, 'Discarded');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `organization_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `organization_theme` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `organization_name`, `organization_theme`) VALUES
(1, 'Ifakara Health Institute', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sexabdominal`
--

CREATE TABLE `sexabdominal` (
  `sex_code` int(3) NOT NULL COMMENT 'Store sex code',
  `sex_desc` varchar(30) NOT NULL COMMENT 'Store sex description'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sexabdominal`
--

INSERT INTO `sexabdominal` (`sex_code`, `sex_desc`) VALUES
(-99, 'No data'),
(1, 'Total male'),
(2, 'Unfed'),
(3, 'Partly fed'),
(4, 'Fed'),
(5, 'Gravid/semigravid'),
(6, 'Total female'),
(100, 'testabn');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `site_id` int(5) NOT NULL COMMENT 'hold site code (unique identification)',
  `site_name` varchar(50) NOT NULL COMMENT 'hold site name'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`site_id`, `site_name`) VALUES
(1, 'Dsm'),
(2, 'Ifakara'),
(3, 'Bagamoyo/Pwani'),
(4, 'Dodoma'),
(5, 'Mwanza'),
(6, 'Mara'),
(7, 'Kagera'),
(8, 'Shinyanga'),
(9, 'Tanga'),
(10, 'Mtwara'),
(11, 'Lindi'),
(12, 'Unguja'),
(13, 'Pemba'),
(14, 'Burundi'),
(15, 'Zambia'),
(16, 'Rufiji');

-- --------------------------------------------------------

--
-- Table structure for table `so1`
--

CREATE TABLE `so1` (
  `sssoid` int(11) NOT NULL COMMENT 'Hold data from SsSo Entity which make relationship',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SO1 form which is the same sample storage content form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `sid` int(2) NOT NULL COMMENT 'Unique identifier of each sample within one SLC',
  `bd` date NOT NULL COMMENT 'Box completion date',
  `lfpd` date NOT NULL COMMENT 'Laboratory first processed date',
  `lrd` date NOT NULL COMMENT 'Laboratory receipt date',
  `lri` int(10) NOT NULL COMMENT 'Laboratory receipt initials',
  `pcr_species` varchar(3) DEFAULT 'NRQ' COMMENT 'Store PCR Species data',
  `pcr_kdr` varchar(30) DEFAULT 'NRQ' COMMENT 'Store PCR KDR data',
  `csp_pf` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Pf data',
  `csp_pv` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Pv  data',
  `csp_po` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Po  data',
  `csp_pm` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Pm  data',
  `human` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Human  data',
  `chicken` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Chicken data',
  `goat` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Goat data',
  `bovine` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Bovine data',
  `dog` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Dog data',
  `cat` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Cat data',
  `rat` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Rat data',
  `intact` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored intact data',
  `carcass` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored carcass data',
  `abdomen` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored abdomen data',
  `headthorax` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored head/thorax data',
  `legs` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored legs data',
  `dna` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored dna data',
  `mghomogenate` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored Mg Homogenate data',
  `hthomogenate` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored htr Homogenate data',
  `discard` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored discard data'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `so1_sk`
--

CREATE TABLE `so1_sk` (
  `sssoid` int(11) NOT NULL,
  `projectregsite_id` int(11) NOT NULL,
  `sen` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `rc` char(2) DEFAULT NULL,
  `ssen` int(11) NOT NULL,
  `sfr` int(11) NOT NULL,
  `sbf` int(11) DEFAULT NULL,
  `sslc` char(11) DEFAULT NULL,
  `sst` int(11) NOT NULL,
  `ssid` int(11) NOT NULL,
  `tx` int(11) DEFAULT NULL,
  `species` varchar(11) DEFAULT 'NRQ',
  `kdr` varchar(11) DEFAULT 'NRQ',
  `pf` varchar(11) DEFAULT 'NRQ',
  `pv` varchar(11) DEFAULT 'NRQ',
  `po` varchar(11) DEFAULT 'NRQ',
  `pm` varchar(11) DEFAULT 'NRQ',
  `human` varchar(11) DEFAULT 'NRQ',
  `chicken` varchar(11) DEFAULT 'NRQ',
  `goat` varchar(11) DEFAULT 'NRQ',
  `bovine` varchar(11) DEFAULT 'NRQ',
  `dog` varchar(11) DEFAULT 'NRQ',
  `cat` varchar(11) DEFAULT 'NRQ',
  `rat` varchar(11) DEFAULT 'NRQ',
  `bps` varchar(11) DEFAULT 'NRQ'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sost`
--

CREATE TABLE `sost` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `so1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
  `so2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
  `so3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ss1`
--

CREATE TABLE `ss1` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `bp` int(3) DEFAULT '1' COMMENT 'body part (The body type of the sample)',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `tx` int(3) NOT NULL COMMENT 'taxon identification number',
  `sas` int(3) NOT NULL COMMENT 'sex and abdominal status',
  `n` int(4) NOT NULL COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `notes` varchar(300) DEFAULT 'No notes' COMMENT 'notes from form',
  `st1` int(4) UNSIGNED NOT NULL COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `st2` int(2) DEFAULT NULL COMMENT 'sample type  (Designates the category of sample as either individual or batch)',
  `st2sid01` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 1',
  `st2sid02` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 2',
  `st2sid03` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 3',
  `st2sid04` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 4',
  `st2sid05` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 5',
  `st2sid06` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 6',
  `st2sid07` int(2) UNSIGNED DEFAULT '0' COMMENT 'sample type sample identification 7',
  `No_Discarded` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `slc` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Unique label code for each composition of taxon plus sex and abdominal status (Sample Lable Code SLC)',
  `nd` int(11) NOT NULL,
  `No_Batches` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ss2`
--

CREATE TABLE `ss2` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS2 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dt` date NOT NULL COMMENT 'date of collection (morning on which the mosquitoes were collected',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
  `bp` int(3) DEFAULT '-99' COMMENT 'body part (The body type of the sample)',
  `ndi1` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi2` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi3` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi4` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi5` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi6` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi7` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi8` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi9` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi10` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `st1` int(4) DEFAULT NULL COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `st2` int(2) DEFAULT NULL COMMENT 'sample type  (Designates the category of sample as either individual or batch)',
  `st2sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `st2sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `st2sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `st2sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `st2sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `st2sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `st2sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `notes` varchar(500) DEFAULT 'No data (-99)' COMMENT 'On site observations about collection ',
  `hw` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat wet (1: Yes, 2: No)',
  `hp` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Hold status Habitat Parameter (1: <10m, 2: 10-100m, 3: >100m)',
  `slc` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Unique label code for each composition of taxon plus sex and abdominal status (Sample Lable Code SLC)'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ssso`
--

CREATE TABLE `ssso` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `ss1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
  `ss2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
  `ss3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL COMMENT 'Hold ID ',
  `fname` varchar(20) DEFAULT NULL COMMENT 'Hold first name of staff',
  `mname` varchar(20) DEFAULT NULL COMMENT 'Hold middle name of staff',
  `lname` varchar(20) DEFAULT NULL COMMENT 'Hold last name of staff',
  `username` varchar(20) DEFAULT NULL COMMENT 'Hold username of staff',
  `password` varchar(100) DEFAULT NULL COMMENT 'Hold password of staff',
  `status` int(1) NOT NULL COMMENT 'Hold condition of staff if is enable or disable (Enable = 1 Disable = 2)',
  `seculevel` int(1) NOT NULL COMMENT 'Hold security level of staff (1: System Manager, 2: Power User, 3: User)',
  `mobinum` varchar(20) DEFAULT NULL COMMENT 'Hold mobile phone number of a staff',
  `email` varchar(40) DEFAULT NULL COMMENT 'Hold email address of staff',
  `register` int(1) NOT NULL COMMENT 'Hold status of registration of staff (1: Register, 2: Not register)',
  `staff_group` int(1) NOT NULL COMMENT 'Hold staff group refeence from StaffCategory Entity',
  `theme` int(11) NOT NULL DEFAULT '1',
  `valid` tinyint(4) NOT NULL DEFAULT '0',
  `staff_log` varchar(60) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `fname`, `mname`, `lname`, `username`, `password`, `status`, `seculevel`, `mobinum`, `email`, `register`, `staff_group`, `theme`, `valid`, `staff_log`, `Created`, `last_login`) VALUES
(1001, 'Samson', 'Sifael', 'Kiware', 'skiware', '$2y$10$0SpPvA0llpAbDerZpz7mD.u2Efy76Z.dpef/rjEIUY8IazvrMMOuu', 1, 1, '+2551019804553', 'skiware@ihi.or.tz', 1, 1, 1, 1, '', '0000-00-00 00:00:00', '2019-03-05 12:45:12'),
(1003, 'Tegemeo', 'M', 'Gavana', 'tgavana', '$2y$10$/5WKQOeR2jIUunUzEF/uou66dypKooMSpzy41bHQ.ifXUX/ys3ADe', 1, 3, '0787428266', 'tgavana@ihi.or.tz', 1, 1, 1, 0, '', '2016-11-02 11:35:01', '2018-05-21 19:10:46'),
(1004, 'Yeromin', 'Y', 'Mlacha', 'ymlacha', '$2y$10$AQsO3iTDtOWteGPfIxqvNekMaQ6hNYyq0QQ6vLWVhjXhpxF98jOjG', 2, 3, '0000000000', 'ymlacha@ihi.or.tz', 1, 1, 1, 0, '', '2016-12-07 07:53:18', '2018-05-05 09:54:32'),
(1005, 'Brian', 'B. ', 'Tarimo', 'btarimo', '$2y$10$fw4lAouCb3dFNsjQ5xwl5eoEogVlu7I6KzQEClvA1pTaJaqRWoGAK', 1, 3, '+255622881130', 'btarimo@ihi.or.tz', 1, 1, 2, 0, '', '2016-12-10 11:08:12', '2018-04-10 14:36:48'),
(1006, 'Fredros', 'O', 'Okumu', 'fredros', '$2y$10$IOVKMKFliLT6a6bnsCcI2ePvEQs3brykxZN0Vf71UxFCpTue9I/de', 1, 3, '+255686997269', 'fredros@ihi.or.tz', 1, 1, 1, 0, '', '2016-12-21 21:56:16', NULL),
(1010, 'Godlove', 'Thomas', 'Chila', 'gchila', '$2y$10$qA3QQAnVJyTQRLvWit0LiOHfNfyCX7XsLV2PIh38KhYC.Dri5ttl.', 2, 3, '0716722304', 'gchila@ihi.or.tz', 1, 3, 1, 0, '', '2017-03-30 13:23:09', NULL),
(1019, 'Nicodem', 'J', 'Govella', 'govella', '$2y$10$HQUrAGnu9cKZw0UGVfbK3uFONOkzKns1OlqG53Bu8rymvnhbv9t8K', 1, 2, '255686997298', 'govella@ihi.or.tz', 1, 1, 1, 0, '', '2017-08-28 06:36:13', NULL),
(1025, 'John', 'J', 'Mfano', 'jmfano@gmail.com', '$2y$10$AO6hIvlCj8sAB9l2utTw.erx0MR39q0wYBGkhHGpOaNR9Onh47U3u', 1, 3, '+255686997315', 'jmfano@gmail.com', 1, 1, 1, 0, '', '2018-04-22 14:27:25', '2018-04-22 17:27:41'),
(1012, 'Prosper', 'P', 'Chaki', 'pchaki', '$2y$10$sjd2fQwsc3EL9ujT2w4r2e3OjCu27y4Id8eJNSghA2X/E27JjPL9W', 1, 2, '255686997299', 'pchaki@ihi.or.tz', 1, 1, 1, 0, '', '2017-06-01 12:30:36', NULL),
(1013, 'Alphonce ', 'Alexander', 'Assenga', 'aassenga', '$2y$10$xMgrejQ/cWC4tyFw5niK2OlsmiydjqAOJRzpWuSQdB1lJ8lwMeNDq', 1, 3, '+255629234710', 'aassenga@ihi.or.tz', 1, 1, 1, 0, '', '2017-06-12 07:44:29', NULL),
(1014, 'Dingani', 'D', 'Chinula', 'dchinula', '$2y$10$f.amKU6dgn6CCPqXD4eSne7iIz9ROy7R5p9QrUOkzq0MVmwbWac6O', 1, 2, '+260965279594', 'dinganichinula11@gmail.com', 1, 1, 1, 0, '', '2017-07-06 11:19:32', NULL),
(1015, 'Fauna', 'F', 'Photonics', 'fphotonics', '$2y$10$g6v2Mx6levVn9I0/w2IzbOZ9vMs5yH3IWkf5rhbSGyoBIe50ejb3q', 2, 3, '0686997319', 'frta@faunaphotonics.com', 1, 1, 1, 0, '', '2017-08-09 12:38:24', NULL),
(1016, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 'busudi@gmail.com', 2, 2, 1, 0, '', '2017-08-09 13:11:50', NULL),
(1017, 'Revocatus', 'Musyangi', 'Musiba', 'rmusiba', '$2y$10$zb9kpSVG9aO5rhoA2zxjCuMU65iP1rLtxHaiNYNJYFaqC.vWBN.Qa', 1, 3, '0682831521', 'rmusiba@ihi.or.tz', 1, 1, 1, 0, '', '2017-08-17 09:14:56', '2018-04-10 14:35:22'),
(1026, 'Jessica', 'Denise', 'Long', 'jlong', '$2y$10$32cWOUyywAq81jMwDVfKUeKnhf1fsCFCT5zZ.fz0oZKt5gSFKLQG.', 1, 3, '+221783888173', 'jlong@dimagi.com', 1, 1, 1, 0, '', '2018-05-11 11:04:42', '2018-05-11 14:04:54'),
(1021, 'April', 'C', 'Monroe', 'amonroe', '$2y$10$hSgvOfrHSAaG/folcnZa7.bwo5peku4FomdBzhKxpZwMofCFU4HAG', 1, 3, '202-615-5513', 'amonro10@jhu.edu', 1, 1, 1, 0, '', '2017-10-30 16:43:07', NULL),
(1024, 'Kanuth', 'Kanuth', 'Dimoso', 'Kanuth', '$2y$10$Ai4MGRBvdJd/iT3T839VlO.qNAsCtr/t7ZEIxfTGAFqBcWzrEfhKW', 1, 3, '+255684863472', 'kanuthdimoso@gmail.com', 1, 1, 1, 0, '', '2018-04-10 11:37:24', '2018-04-10 17:18:29'),
(1028, 'Silas', 'Majambere', 'Majambere', 'Majambere', '$2y$10$ikY4xV/FaRidskU2AQUmO.wG/.xUMOb4/eA.X/jKQB/OkvM4R9eua', 1, 3, '4796802212', 'simajambere@gmail.com', 1, 1, 1, 0, '', '2018-10-11 11:36:03', '2018-10-12 11:11:40'),
(1029, 'Fiacre', 'Rodrigue', 'Agossa', 'Fiacre', '$2y$10$7G7Z4nQLCFd4wNF4p5isuO6fDou/.BYMc2ZSW53tMjh01W5D4DWzO', 1, 3, '+243828981117', 'rofargossa@yahoo.fr', 1, 1, 1, 0, '', '2018-11-15 08:58:29', '2018-11-15 11:59:12'),
(1030, 'Faraji', 'Abilahi', 'Samli', 'fabilahi', '$2y$10$Qbex6SKLpGst/Xxyp5wC4u20rNxMhDKAtGcI4/lHhNTFB87BWJVEm', 1, 3, '+255788001813', 'fabilahi@ihi.or.tz', 1, 1, 1, 0, '', '2018-11-15 09:20:46', '2018-11-15 12:21:11'),
(1031, 'Luna', 'W', 'Kamau', 'LKamau', '$2y$10$PwuFM5xpdtQOonSW2UUPzO1fvtmOSU1kczD8vfHFm0a/B/0KBeiiq', 1, 3, '+254724751333', 'lunakamau@yahoo.com', 1, 1, 1, 0, '', '2018-11-16 05:36:17', NULL),
(1032, 'Dickson', 'Samwel', 'Msaky', 'dixonmsaki', '$2y$10$nqXdyC07Kw6CdGVMS.KfKOzsUTtoQOWOVEDaXGsvTjdygt3AIf/8q', 2, 2, '0765578464', 'dixonmsaky@gmail.com', 1, 1, 1, 1, '1551344403', '2019-02-28 09:00:04', '2019-03-01 09:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `staffcategory`
--

CREATE TABLE `staffcategory` (
  `id` int(11) NOT NULL COMMENT 'Hold primary key of staff category group',
  `name` varchar(30) NOT NULL COMMENT 'Hold name of staff group',
  `description` text COMMENT 'Hold description of staff group according to the activities doing'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffcategory`
--

INSERT INTO `staffcategory` (`id`, `name`, `description`) VALUES
(1, 'Scientist', 'Perform scientist approve'),
(2, 'Supervisor', 'Perform supervision of project'),
(3, 'Volunteer', 'Help scientist/ supervisor'),
(4, 'Data Clerk', 'Perform insertion of data in the system'),
(5, 'Laboratory Technician', 'Perform laboratoy experiment ');

-- --------------------------------------------------------

--
-- Table structure for table `staff_groups`
--

CREATE TABLE `staff_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_groups`
--

INSERT INTO `staff_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'System Manager', 1, 1),
(2, 'Power user', 2, 1),
(3, 'User', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `str_id` int(11) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of district combine zone id, region id, district id, ward id and street id its format is zeno_id+reg_id+dis_id+war_id+str_id last two digit represent street identifiaction number',
  `name` varchar(20) NOT NULL COMMENT 'Hold name of street ',
  `war_id` int(9) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of district combine zone id, region id and district id its format is zeno_id+reg_id+dis_id+war_id last two digit represent ward identifiaction number'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taxon`
--

CREATE TABLE `taxon` (
  `taxon_code` int(3) NOT NULL COMMENT 'Store taxon code ',
  `taxon_name` varchar(30) NOT NULL COMMENT 'Store taxon name ',
  `taxon_desc` varchar(500) DEFAULT 'no description' COMMENT 'Store taxon description '
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxon`
--

INSERT INTO `taxon` (`taxon_code`, `taxon_name`, `taxon_desc`) VALUES
(-99, 'No data', 'no description'),
(1, 'An. gambiae s.l.', 'no description'),
(2, 'An. funestus', 'no description'),
(3, 'An. coustani', 'no description'),
(4, 'An. pharoensis', 'no description'),
(5, 'An. squamosus', 'no description'),
(6, 'An. maculipalpis', 'no description'),
(7, 'An. pretoriensis', 'no description'),
(8, 'An. paludis', 'no description'),
(9, 'An. wellcomei', 'no description'),
(10, 'An. ziemanni', 'no description'),
(49, 'Anopheles sp.', 'no description'),
(50, 'Culex sp.', 'no description'),
(60, 'Mansonia sp.', 'no description'),
(70, 'Aedes sp.', 'no description'),
(80, 'Coquilettidia', 'no description'),
(98, 'Unknown', 'no description'),
(100, 'testtaxon', 'test taxonID'),
(71, 'Ae. aegypti', 'no description');

-- --------------------------------------------------------

--
-- Table structure for table `token_key`
--

CREATE TABLE `token_key` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token_key`
--

INSERT INTO `token_key` (`id`, `token`, `email`, `time`, `valid`, `created_at`, `updated_at`) VALUES
(22, '$2y$10$krispne/t16Jn4sgRxRRVuftvyVSg30tv7fxUG.9UQCbB9qf.2ECS', 'dixonmsaky@gmail.com', '1551729912', 1, '2019-03-04 20:05:12', '2019-03-04 20:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `tzone`
--

CREATE TABLE `tzone` (
  `zone_id` int(2) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store zone identinfication',
  `zone_name` varchar(30) NOT NULL COMMENT 'Store zone name ',
  `zone_desc` varchar(500) DEFAULT 'no description' COMMENT 'Store zone description '
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tzone`
--

INSERT INTO `tzone` (`zone_id`, `zone_name`, `zone_desc`) VALUES
(01, 'Western', 'Locate in western part of United Republic of Tanzania. It contain 3 regions'),
(02, 'Northern', 'Locate in north part of United Republic of Tanzania. It contain 4 region'),
(03, 'Central', 'Locate center of United Republic of Tanzania. It contain 2 region\r\n'),
(04, 'Southern Highland', 'Locate in south of United Republic of Tanzania. It contain 3 region'),
(05, 'Lake', 'Locate at lake Victoria. It contain 3 region'),
(06, 'Eastern', 'Locate in east part of United Republic of Tanzania. It contain 3 region'),
(07, 'Southern ', 'Locate in south part of United Republic of Tanzania');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `war_id` int(9) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of district combine zone id, region id and district id its format is zeno_id+reg_id+dis_id+war_id last two digit represent ward identifiaction number',
  `war_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'Store name of ward ',
  `war_status` varchar(10) NOT NULL DEFAULT 'Rular' COMMENT 'Hold status of ward if is rular, urban or mixed',
  `dis_id` int(7) UNSIGNED ZEROFILL NOT NULL COMMENT 'Store enumeration area of district combine zone id, region id and district id its format is zeno_id+reg_id+dis_id last two digit represent district identifiaction number'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_ed1`
--

CREATE TABLE `_ed1` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to SS',
  `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for ED1 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dt` date NOT NULL COMMENT 'date of collection (morning on which the mosquitoes were collected)',
  `ea` int(20) DEFAULT '0' COMMENT 'Enumaration area (Define geographic location within the study site)',
  `cr` bigint(13) DEFAULT '0' COMMENT 'Cluster (The smallest geographic statistical unit within enumaration area)',
  `cp` int(2) DEFAULT '0' COMMENT 'Compound or Plot (A specific physical area within an identifiable owner)',
  `tcu` bigint(11) DEFAULT '-99' COMMENT 'Hold Ten Cell Unit',
  `hh` varchar(100) DEFAULT '0' COMMENT 'Household (A person or group of people who live together in the same dwelling unit)',
  `sid` int(2) DEFAULT '0' COMMENT 'Structure ID (A free standing building that can have one or more room for residential or commercial use)',
  `me` int(3) NOT NULL DEFAULT '-99' COMMENT 'Method (The method by which the mosquitoes were collected or trapped)',
  `ind` int(1) NOT NULL COMMENT 'hold collection was made indoors a house or hut',
  `htr` int(3) DEFAULT NULL COMMENT 'Habitat Type (Classification of the aquatic habitat in which the collection was made)',
  `st` varchar(6) DEFAULT NULL COMMENT 'Start Time (The time that the collection started in 24 time )',
  `ft` varchar(6) DEFAULT NULL COMMENT 'Finish Time (The time that the collection finish in 24 time)',
  `hp` int(4) DEFAULT NULL COMMENT 'Hold Period (The period of time for which the mosquitoes were held for survival analysis after they were collected)',
  `dd` int(1) DEFAULT NULL COMMENT 'Dead Sorting classification of mosquitoes used to facilitate',
  `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
  `blk` int(3) DEFAULT '-99' COMMENT 'Block (A set of position through which treatments are rotated in a Latin)',
  `shh` varchar(200) DEFAULT '-99' COMMENT 'A project specific house or experiment hut',
  `stn` int(3) DEFAULT '-99' COMMENT 'A project specific where station where a trap may be positioned',
  `vi` varchar(15) DEFAULT NULL COMMENT 'Initial of person that caught the mosquitoes',
  `tr` varchar(5) DEFAULT NULL COMMENT 'Treatment (Coding for the unique experimental treatment)',
  `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
  `hs` varchar(300) DEFAULT '-99' COMMENT 'Number of household sampled',
  `vc` int(1) NOT NULL DEFAULT '2' COMMENT 'Legitimacy of the collection',
  `notes` text COMMENT 'On site observation about the collection',
  `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
  `livestock` int(11) NOT NULL,
  `hoccupant` int(11) NOT NULL,
  `heaves` int(11) NOT NULL,
  `nss` int(11) NOT NULL,
  `nbh` int(11) NOT NULL,
  `oth` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_ed2`
--

CREATE TABLE `_ed2` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to SS',
  `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id (Foreign Key)',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for ED2 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `ssen` int(10) DEFAULT '-99',
  `sfr` int(4) DEFAULT '-99',
  `slc` int(14) DEFAULT '-99',
  `bf` int(8) DEFAULT '-99',
  `st` int(8) DEFAULT '-99',
  `sid` int(8) DEFAULT '-99',
  `cc` int(8) DEFAULT '-99',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'Store taxon code foreign key from Taxon table',
  `sas` int(3) NOT NULL DEFAULT '-99' COMMENT 'Store sex code foreign key from SexAbdominal table',
  `ag` int(2) DEFAULT '-99',
  `gn` int(2) DEFAULT '-99',
  `n` int(10) NOT NULL COMMENT 'Store number of mosqutoes caught',
  `sd` varchar(10) DEFAULT '-99' COMMENT 'started date of the experiment',
  `stm` int(4) DEFAULT '-99' COMMENT 'started time of the experiment',
  `tr` int(3) DEFAULT '-99' COMMENT 'Treatment (Coding for the unique experimental treatment)',
  `vi` varchar(5) DEFAULT 'NA' COMMENT 'Initial of person that caught the mosquitoes',
  `rep` int(3) DEFAULT '-99' COMMENT 'The unique identifier for each individual replicate included in the experiment',
  `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
  `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
  `oth1` int(11) DEFAULT '-99' COMMENT 'Other Any additional experimental details',
  `oth2` int(11) DEFAULT '-99' COMMENT 'Pther Any additional experimental details',
  `va` int(1) NOT NULL COMMENT 'Valid Assay Legitimacy of the experimental assay',
  `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_edss`
--

CREATE TABLE `_edss` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment links to EDSS',
  `ed1id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from Ed1',
  `ed2id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from  Ed2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_fs2`
--

CREATE TABLE `_fs2` (
  `projectregsite_id` int(10) DEFAULT NULL,
  `sen` int(10) NOT NULL COMMENT 'serial number',
  `fr` int(10) DEFAULT NULL COMMENT 'form row',
  `ssen` int(10) NOT NULL COMMENT 'Box & form serial no',
  `ns` int(10) DEFAULT NULL COMMENT 'no of samples',
  `fst` char(5) DEFAULT NULL COMMENT 'storage temp',
  `ff` int(10) DEFAULT NULL COMMENT 'crate freezer/fridge no',
  `rcn` int(10) DEFAULT NULL COMMENT 'rack or carton number'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_so1`
--

CREATE TABLE `_so1` (
  `sssoid` int(11) NOT NULL COMMENT 'Hold data from SsSo Entity which make relationship',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SO1 form which is the same sample storage content form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `sid` int(2) NOT NULL COMMENT 'Unique identifier of each sample within one SLC',
  `bd` date NOT NULL COMMENT 'Box completion date',
  `lfpd` date NOT NULL COMMENT 'Laboratory first processed date',
  `lrd` date NOT NULL COMMENT 'Laboratory receipt date',
  `lri` int(10) NOT NULL COMMENT 'Laboratory receipt initials',
  `pcr_species` varchar(3) DEFAULT 'NRQ' COMMENT 'Store PCR Species data',
  `pcr_kdr` varchar(30) DEFAULT 'NRQ' COMMENT 'Store PCR KDR data',
  `csp_pf` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Pf data',
  `csp_pv` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Pv  data',
  `csp_po` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Po  data',
  `csp_pm` varchar(3) DEFAULT 'NRQ' COMMENT 'Store CSP ELISA Pm  data',
  `human` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Human  data',
  `chicken` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Chicken data',
  `goat` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Goat data',
  `bovine` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Bovine data',
  `dog` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Dog data',
  `cat` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Cat data',
  `rat` varchar(3) DEFAULT 'NRQ' COMMENT 'Store Bloodmeal ELISA Rat data',
  `intact` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored intact data',
  `carcass` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored carcass data',
  `abdomen` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored abdomen data',
  `headthorax` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored head/thorax data',
  `legs` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored legs data',
  `dna` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored dna data',
  `mghomogenate` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored Mg Homogenate data',
  `hthomogenate` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored htr Homogenate data',
  `discard` varchar(3) DEFAULT 'NO' COMMENT 'Body Part Stored discard data',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_so1_sk`
--

CREATE TABLE `_so1_sk` (
  `sssoid` int(11) NOT NULL,
  `projectregsite_id` int(11) NOT NULL,
  `sen` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `rc` char(2) DEFAULT NULL,
  `ssen` int(11) NOT NULL,
  `sfr` int(11) NOT NULL,
  `sbf` int(11) DEFAULT NULL,
  `sslc` char(11) DEFAULT NULL,
  `sst` int(11) NOT NULL,
  `ssid` int(11) NOT NULL,
  `tx` int(11) DEFAULT NULL,
  `species` varchar(11) DEFAULT 'NRQ',
  `kdr` varchar(11) DEFAULT 'NRQ',
  `pf` varchar(11) DEFAULT 'NRQ',
  `pv` varchar(11) DEFAULT 'NRQ',
  `po` varchar(11) DEFAULT 'NRQ',
  `pm` varchar(11) DEFAULT 'NRQ',
  `human` varchar(11) DEFAULT 'NRQ',
  `chicken` varchar(11) DEFAULT 'NRQ',
  `goat` varchar(11) DEFAULT 'NRQ',
  `bovine` varchar(11) DEFAULT 'NRQ',
  `dog` varchar(11) DEFAULT 'NRQ',
  `cat` varchar(11) DEFAULT 'NRQ',
  `rat` varchar(11) DEFAULT 'NRQ',
  `bps` varchar(11) DEFAULT 'NRQ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_sost`
--

CREATE TABLE `_sost` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `so1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
  `so2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
  `so3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_ss1`
--

CREATE TABLE `_ss1` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
  `bf` int(3) DEFAULT '1' COMMENT 'body part (The body type of the sample)',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `tx` int(3) NOT NULL COMMENT 'taxon identification number',
  `sas` int(3) NOT NULL COMMENT 'sex and abdominal status',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `notes` varchar(500) DEFAULT 'NA',
  `slc` varchar(10) DEFAULT 'NA',
  `st` int(4) DEFAULT '0' COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
  `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',
  `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `senfr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_ss2`
--

CREATE TABLE `_ss2` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS2 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dt` date NOT NULL COMMENT 'date of collection (morning on which the mosquitoes were collected',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
  `bf` int(3) DEFAULT '-99' COMMENT 'body part (The body type of the sample)',
  `ndi1` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi2` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi3` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi4` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi5` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi6` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi7` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi8` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi9` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `ndi10` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `st1` int(4) DEFAULT NULL COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `st2` int(2) DEFAULT NULL COMMENT 'sample type  (Designates the category of sample as either individual or batch)',
  `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `notes` varchar(500) DEFAULT 'No data (-99)' COMMENT 'On site observations about collection ',
  `hw` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat wet (1: Yes, 2: No)',
  `hp` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Hold status Habitat Parameter (1: <10m, 2: 10-100m, 3: >100m)',
  `slc` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Unique label code for each composition of taxon plus sex and abdominal status (Sample Lable Code SLC)',
  `senfr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_ss3`
--

CREATE TABLE `_ss3` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
  `sen` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
  `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
  `dd` int(3) DEFAULT '-99' COMMENT 'dead sorting classfication of mosquitoes',
  `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
  `sas` int(3) NOT NULL DEFAULT '-99' COMMENT 'sex and abdominal status',
  `mt` int(3) DEFAULT '-99' COMMENT 'mating status of mosquitoes  if found couple',
  `ch` int(3) DEFAULT '-99' COMMENT 'choice. used to designated the choise made by project spefic',
  `la` int(3) DEFAULT '-99' COMMENT 'lablling of individual of mosquito',
  `fd` int(8) DEFAULT '-99' COMMENT 'finish date (The date that the experimental sorting of the specific subgroup was completed)',
  `ft` int(8) DEFAULT '-99' COMMENT 'finish time (The time that the experimental sorting of the specific subgroup was completed in 24 h time)',
  `bf` int(3) DEFAULT '-99' COMMENT 'body part (The body type of the sample)',
  `hp` int(2) DEFAULT '-99',
  `oth4` int(3) DEFAULT '-99' COMMENT 'other 4 (Any additional experimental sorting or observational variables)',
  `oth5` int(3) DEFAULT '-99' COMMENT 'other 5 (Any additional experimental sorting or observational variables)',
  `oth6` int(3) DEFAULT '-99' COMMENT 'other 6 (Any additional experimental sorting or observational variables)',
  `oth7` int(3) DEFAULT '-99' COMMENT 'other 7 (Any additional experimental sorting or observational variables)',
  `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
  `slc` varchar(10) DEFAULT 'NA',
  `st` int(4) DEFAULT '0' COMMENT 'sample type (Designates the category of sample as either individual or batch)',
  `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
  `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',
  `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
  `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
  `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
  `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
  `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
  `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
  `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
  `nd` int(3) DEFAULT '0' COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
  `senfr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_ssso`
--

CREATE TABLE `_ssso` (
  `id` int(11) NOT NULL COMMENT 'Hold data which is auto increment to links to SO',
  `ss1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
  `ss2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
  `ss3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `16_bodypart`
--
ALTER TABLE `16_bodypart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_cluster`
--
ALTER TABLE `16_cluster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_colonycode`
--
ALTER TABLE `16_colonycode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_compound`
--
ALTER TABLE `16_compound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_custgraph`
--
ALTER TABLE `16_custgraph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_custlabel`
--
ALTER TABLE `16_custlabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_ed1`
--
ALTER TABLE `16_ed1`
  ADD PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `16_ed1template`
--
ALTER TABLE `16_ed1template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_ed2`
--
ALTER TABLE `16_ed2`
  ADD PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `16_ed2template`
--
ALTER TABLE `16_ed2template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_edss`
--
ALTER TABLE `16_edss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_edss_ed1id` (`ed1id`),
  ADD KEY `fk_edss_ed2id` (`ed2id`);

--
-- Indexes for table `16_enumerationarea`
--
ALTER TABLE `16_enumerationarea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_habitattype`
--
ALTER TABLE `16_habitattype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_method`
--
ALTER TABLE `16_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_replicate`
--
ALTER TABLE `16_replicate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_sas`
--
ALTER TABLE `16_sas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_so1`
--
ALTER TABLE `16_so1`
  ADD PRIMARY KEY (`sssoid`,`ssen`,`sfr`,`ssid`),
  ADD UNIQUE KEY `id_` (`id_`);

--
-- Indexes for table `16_so2`
--
ALTER TABLE `16_so2`
  ADD PRIMARY KEY (`sssoid`,`ssen`,`sfr`,`ssid`),
  ADD UNIQUE KEY `id_` (`id_`);

--
-- Indexes for table `16_sost`
--
ALTER TABLE `16_sost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ss1id` (`so1id`),
  ADD KEY `fk_ss2id` (`so2id`),
  ADD KEY `fk_ss3id` (`so3id`);

--
-- Indexes for table `16_ss1`
--
ALTER TABLE `16_ss1`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `tx` (`tx`),
  ADD KEY `bf` (`bf`),
  ADD KEY `sas` (`sas`);

--
-- Indexes for table `16_ss1template`
--
ALTER TABLE `16_ss1template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_ss2`
--
ALTER TABLE `16_ss2`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_ss2_tx` (`tx`),
  ADD KEY `fk_ss2_bp` (`bf`);

--
-- Indexes for table `16_ss2template`
--
ALTER TABLE `16_ss2template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_ss3`
--
ALTER TABLE `16_ss3`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `16_ss3template`
--
ALTER TABLE `16_ss3template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_ssso`
--
ALTER TABLE `16_ssso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ss1id` (`ss1id`),
  ADD KEY `fk_ss2id` (`ss2id`),
  ADD KEY `fk_ss3id` (`ss3id`);

--
-- Indexes for table `16_st1`
--
ALTER TABLE `16_st1`
  ADD PRIMARY KEY (`sen`,`fr`,`rc`,`ssid`),
  ADD UNIQUE KEY `id_` (`id_`);

--
-- Indexes for table `16_st2`
--
ALTER TABLE `16_st2`
  ADD PRIMARY KEY (`sen`,`fr`),
  ADD UNIQUE KEY `id_` (`id_`);

--
-- Indexes for table `16_taxon`
--
ALTER TABLE `16_taxon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `16_treatment`
--
ALTER TABLE `16_treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bodypart`
--
ALTER TABLE `bodypart`
  ADD PRIMARY KEY (`body_code`);

--
-- Indexes for table `breedingsite_pdadata`
--
ALTER TABLE `breedingsite_pdadata`
  ADD PRIMARY KEY (`slc`);

--
-- Indexes for table `custed`
--
ALTER TABLE `custed`
  ADD PRIMARY KEY (`pc`,`ft`);

--
-- Indexes for table `custgraph`
--
ALTER TABLE `custgraph`
  ADD PRIMARY KEY (`pc`);

--
-- Indexes for table `custso`
--
ALTER TABLE `custso`
  ADD PRIMARY KEY (`pc`,`ft`);

--
-- Indexes for table `custss`
--
ALTER TABLE `custss`
  ADD PRIMARY KEY (`pc`,`ft`);

--
-- Indexes for table `custst`
--
ALTER TABLE `custst`
  ADD PRIMARY KEY (`pc`,`ft`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`dis_id`),
  ADD KEY `fk_reg_id` (`reg_id`);

--
-- Indexes for table `ed1`
--
ALTER TABLE `ed1`
  ADD PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_me` (`me`),
  ADD KEY `fk_ht` (`htr`);

--
-- Indexes for table `ed2`
--
ALTER TABLE `ed2`
  ADD PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_ed2_tx` (`tx`),
  ADD KEY `fk_ed2_sas` (`sas`);

--
-- Indexes for table `edss`
--
ALTER TABLE `edss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_edss_ed1id` (`ed1id`),
  ADD KEY `fk_edss_ed2id` (`ed2id`);

--
-- Indexes for table `enum`
--
ALTER TABLE `enum`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `grantproject`
--
ALTER TABLE `grantproject`
  ADD PRIMARY KEY (`pid`,`staff_id`),
  ADD KEY `fk_gp_staff_id` (`staff_id`),
  ADD KEY `fk_gp_created_by` (`created_by`);

--
-- Indexes for table `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`habi_code`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`meth_code`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`EA`);

--
-- Indexes for table `projectreg`
--
ALTER TABLE `projectreg`
  ADD PRIMARY KEY (`pc`,`expno`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `projectregsite`
--
ALTER TABLE `projectregsite`
  ADD PRIMARY KEY (`site_id`,`projectreg_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_projectcode` (`projectreg_id`);

--
-- Indexes for table `projectshared`
--
ALTER TABLE `projectshared`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `fk_zone_id` (`zone_id`);

--
-- Indexes for table `sampletype`
--
ALTER TABLE `sampletype`
  ADD PRIMARY KEY (`sample_code`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sexabdominal`
--
ALTER TABLE `sexabdominal`
  ADD PRIMARY KEY (`sex_code`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `so1`
--
ALTER TABLE `so1`
  ADD PRIMARY KEY (`sssoid`,`sen`,`fr`),
  ADD KEY `fk_lri` (`lri`);

--
-- Indexes for table `so1_sk`
--
ALTER TABLE `so1_sk`
  ADD PRIMARY KEY (`sssoid`);

--
-- Indexes for table `sost`
--
ALTER TABLE `sost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ss1id` (`so1id`),
  ADD KEY `fk_ss2id` (`so2id`),
  ADD KEY `fk_ss3id` (`so3id`);

--
-- Indexes for table `ss1`
--
ALTER TABLE `ss1`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `tx` (`tx`),
  ADD KEY `bp` (`bp`),
  ADD KEY `sas` (`sas`);

--
-- Indexes for table `ss2`
--
ALTER TABLE `ss2`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_ss2_tx` (`tx`),
  ADD KEY `fk_ss2_bp` (`bp`);

--
-- Indexes for table `ssso`
--
ALTER TABLE `ssso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ss1id` (`ss1id`),
  ADD KEY `fk_ss2id` (`ss2id`),
  ADD KEY `fk_ss3id` (`ss3id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_staff_group` (`staff_group`);

--
-- Indexes for table `staffcategory`
--
ALTER TABLE `staffcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_groups`
--
ALTER TABLE `staff_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`str_id`),
  ADD KEY `fk_war_id` (`war_id`);

--
-- Indexes for table `taxon`
--
ALTER TABLE `taxon`
  ADD PRIMARY KEY (`taxon_code`);

--
-- Indexes for table `token_key`
--
ALTER TABLE `token_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tzone`
--
ALTER TABLE `tzone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`war_id`),
  ADD KEY `fk_dis_id` (`dis_id`);

--
-- Indexes for table `_ed1`
--
ALTER TABLE `_ed1`
  ADD PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_me` (`me`),
  ADD KEY `fk_ht` (`htr`);

--
-- Indexes for table `_ed2`
--
ALTER TABLE `_ed2`
  ADD PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_ed2_tx` (`tx`),
  ADD KEY `fk_ed2_sas` (`sas`);

--
-- Indexes for table `_edss`
--
ALTER TABLE `_edss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_edss_ed1id` (`ed1id`),
  ADD KEY `fk_edss_ed2id` (`ed2id`);

--
-- Indexes for table `_so1`
--
ALTER TABLE `_so1`
  ADD PRIMARY KEY (`sssoid`,`sen`,`fr`),
  ADD KEY `fk_lri` (`lri`);

--
-- Indexes for table `_so1_sk`
--
ALTER TABLE `_so1_sk`
  ADD PRIMARY KEY (`sssoid`);

--
-- Indexes for table `_sost`
--
ALTER TABLE `_sost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ss1id` (`so1id`),
  ADD KEY `fk_ss2id` (`so2id`),
  ADD KEY `fk_ss3id` (`so3id`);

--
-- Indexes for table `_ss1`
--
ALTER TABLE `_ss1`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `tx` (`tx`),
  ADD KEY `bf` (`bf`),
  ADD KEY `sas` (`sas`);

--
-- Indexes for table `_ss2`
--
ALTER TABLE `_ss2`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_ss2_tx` (`tx`),
  ADD KEY `fk_ss2_bp` (`bf`);

--
-- Indexes for table `_ss3`
--
ALTER TABLE `_ss3`
  ADD PRIMARY KEY (`edssid`,`sen`,`fr`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `_ssso`
--
ALTER TABLE `_ssso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ss1id` (`ss1id`),
  ADD KEY `fk_ss2id` (`ss2id`),
  ADD KEY `fk_ss3id` (`ss3id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `16_bodypart`
--
ALTER TABLE `16_bodypart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_cluster`
--
ALTER TABLE `16_cluster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `16_colonycode`
--
ALTER TABLE `16_colonycode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_compound`
--
ALTER TABLE `16_compound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `16_custgraph`
--
ALTER TABLE `16_custgraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `16_custlabel`
--
ALTER TABLE `16_custlabel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `16_ed1`
--
ALTER TABLE `16_ed1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS', AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `16_ed1template`
--
ALTER TABLE `16_ed1template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_ed2`
--
ALTER TABLE `16_ed2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `16_ed2template`
--
ALTER TABLE `16_ed2template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_edss`
--
ALTER TABLE `16_edss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to EDSS', AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `16_enumerationarea`
--
ALTER TABLE `16_enumerationarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `16_habitattype`
--
ALTER TABLE `16_habitattype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `16_method`
--
ALTER TABLE `16_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `16_replicate`
--
ALTER TABLE `16_replicate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_sas`
--
ALTER TABLE `16_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_so1`
--
ALTER TABLE `16_so1`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `16_so2`
--
ALTER TABLE `16_so2`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `16_sost`
--
ALTER TABLE `16_sost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `16_ss1`
--
ALTER TABLE `16_ss1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO', AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT for table `16_ss1template`
--
ALTER TABLE `16_ss1template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_ss2`
--
ALTER TABLE `16_ss2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `16_ss2template`
--
ALTER TABLE `16_ss2template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_ss3`
--
ALTER TABLE `16_ss3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `16_ss3template`
--
ALTER TABLE `16_ss3template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_ssso`
--
ALTER TABLE `16_ssso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO', AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT for table `16_st1`
--
ALTER TABLE `16_st1`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `16_st2`
--
ALTER TABLE `16_st2`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `16_taxon`
--
ALTER TABLE `16_taxon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_treatment`
--
ALTER TABLE `16_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custgraph`
--
ALTER TABLE `custgraph`
  MODIFY `pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ed1`
--
ALTER TABLE `ed1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS';

--
-- AUTO_INCREMENT for table `ed2`
--
ALTER TABLE `ed2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS';

--
-- AUTO_INCREMENT for table `edss`
--
ALTER TABLE `edss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to EDSS';

--
-- AUTO_INCREMENT for table `enum`
--
ALTER TABLE `enum`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectreg`
--
ALTER TABLE `projectreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This used to link to other Entity', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `projectregsite`
--
ALTER TABLE `projectregsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to ED', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projectshared`
--
ALTER TABLE `projectshared`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `so1_sk`
--
ALTER TABLE `so1_sk`
  MODIFY `sssoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sost`
--
ALTER TABLE `sost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `ss1`
--
ALTER TABLE `ss1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `ss2`
--
ALTER TABLE `ss2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `ssso`
--
ALTER TABLE `ssso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `staff_groups`
--
ALTER TABLE `staff_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `token_key`
--
ALTER TABLE `token_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `_ed1`
--
ALTER TABLE `_ed1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS';

--
-- AUTO_INCREMENT for table `_ed2`
--
ALTER TABLE `_ed2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS';

--
-- AUTO_INCREMENT for table `_edss`
--
ALTER TABLE `_edss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to EDSS';

--
-- AUTO_INCREMENT for table `_so1_sk`
--
ALTER TABLE `_so1_sk`
  MODIFY `sssoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_sost`
--
ALTER TABLE `_sost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `_ss1`
--
ALTER TABLE `_ss1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `_ss2`
--
ALTER TABLE `_ss2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `_ss3`
--
ALTER TABLE `_ss3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';

--
-- AUTO_INCREMENT for table `_ssso`
--
ALTER TABLE `_ssso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
