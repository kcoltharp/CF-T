-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2016 at 04:07 AM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CarolinaFirearms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Charges`
--

CREATE TABLE `Charges` (
  `charge_ID` int(5) NOT NULL AUTO_INCREMENT,
  `ChargeName` varchar(50) NOT NULL,
  PRIMARY KEY (`charge_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE `Classes` (
  `class_id` int(5) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `class_cost` decimal(5,0) NOT NULL DEFAULT '80',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`class_id`, `class_name`, `class_cost`) VALUES
(1, 'SC Concealed Weapons Class', '80'),
(2, 'NRA Basical Pistol', '95'),
(3, 'NRA Home Firearm Safety', '40');

-- --------------------------------------------------------

--
-- Table structure for table `Instructors`
--

CREATE TABLE `Instructors` (
  `instrctor_ID` varchar(15) NOT NULL,
  `instructor_first_name` varchar(50) NOT NULL,
  `instructor_last_name` varchar(75) NOT NULL,
  `nra_member` char(2) NOT NULL DEFAULT 'Y',
  `nra_number` varchar(9) NOT NULL,
  `nra_instructor` char(2) NOT NULL DEFAULT 'Y',
  `nra_instructor_number` varchar(9) NOT NULL,
  `sc_concealed_weapons_instructor` char(2) NOT NULL DEFAULT 'Y',
  `sc_concealed_weapons_instructor_number` varchar(9) NOT NULL,
  `classes_held` int(5) NOT NULL COMMENT 'key item',
  PRIMARY KEY (`instrctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Instructors`
--

INSERT INTO `Instructors` (`instrctor_ID`, `instructor_first_name`, `instructor_last_name`, `nra_member`, `nra_number`, `nra_instructor`, `nra_instructor_number`, `sc_concealed_weapons_instructor`, `sc_concealed_weapons_instructor_number`, `classes_held`) VALUES
('2016-0201', 'Kenny', 'Coltharp', 'Y', '215657305', 'Y', '215657305', 'Y', '201501996', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `student_ID` int(13) NOT NULL AUTO_INCREMENT,
  `student_first_name` varchar(50) NOT NULL,
  `student_middle_name` varchar(75) NOT NULL,
  `student_last_name` varchar(75) NOT NULL,
  `student_sex` char(1) NOT NULL DEFAULT 'M',
  `student_date_of_birth` date NOT NULL,
  `student_home_address` varchar(50) NOT NULL,
  `student_home_address2` varchar(50) NOT NULL,
  `student_home_city` varchar(50) NOT NULL,
  `student_home_state` char(2) NOT NULL,
  `student_home_zipcode` varchar(5) NOT NULL,
  `student_drivers_lic_num` varchar(25) NOT NULL,
  `student_drivers_lic_st` char(2) NOT NULL,
  PRIMARY KEY (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
