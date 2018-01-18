-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2013 at 03:21 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_information`
--

CREATE TABLE IF NOT EXISTS `employee_information` (
  `empID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `bdate` date NOT NULL,
  `joining` date NOT NULL,
  `position` int(2) NOT NULL,
  `created` bigint(20) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `employee_information`
--

INSERT INTO `employee_information` (`empID`, `name`, `gender`, `bdate`, `joining`, `position`, `created`, `status`) VALUES
(1, 'Talha', 'Male', '2012-11-12', '2012-11-12', 3, 1352706220, 1),
(2, 'Md. Sifat', 'Male', '0000-00-00', '2012-10-12', 3, 1353032536, 1),
(3, 'Md. Aminurr', 'Male', '2012-11-05', '2012-01-01', 1, 1353032592, 1),
(4, 'Tanvir', 'Male', '1989-03-17', '2013-04-01', 3, 1364895585, 1),
(5, 'Mahsin Ul Islam', 'Male', '1990-02-15', '2013-04-01', 3, 1364904600, 1),
(6, 'admin', 'Male', '1989-03-17', '2013-04-01', 1, 1364904745, 1),
(7, 'admin1', 'Male', '1989-03-17', '2013-04-01', 1, 1364904917, 1),
(8, 'admin1', 'Male', '1989-03-17', '2013-04-01', 1, 1364904937, 1),
(9, 'admin1', 'Male', '1989-03-17', '2013-04-01', 1, 1364905116, 1),
(10, 'admin1', 'Male', '1989-03-17', '2013-04-01', 1, 1364905466, 1),
(11, 'admin', 'Male', '1989-03-17', '2013-04-01', 1, 1364905564, 1);

-- --------------------------------------------------------

--
-- Table structure for table `office_date`
--

CREATE TABLE IF NOT EXISTS `office_date` (
  `odate` date NOT NULL,
  `month` char(2) NOT NULL,
  `year` int(4) NOT NULL,
  `generate` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_date`
--

INSERT INTO `office_date` (`odate`, `month`, `year`, `generate`) VALUES
('2012-11-01', '11', 2012, 1),
('2012-11-02', '11', 2012, 1),
('2012-11-03', '11', 2012, 1),
('2012-11-04', '11', 2012, 1),
('2012-11-05', '11', 2012, 1),
('2012-11-06', '11', 2012, 1),
('2012-11-08', '11', 2012, 1),
('2012-11-09', '11', 2012, 1),
('2012-11-10', '11', 2012, 1),
('2012-11-11', '11', 2012, 1),
('2012-11-12', '11', 2012, 1),
('2012-11-13', '11', 2012, 1),
('2012-11-15', '11', 2012, 1),
('2013-04-02', '04', 2013, 1);

-- --------------------------------------------------------

--
-- Table structure for table `punchio`
--

CREATE TABLE IF NOT EXISTS `punchio` (
  `empID` int(11) NOT NULL,
  `date` date NOT NULL,
  `in` varchar(8) DEFAULT NULL,
  `incomment` varchar(255) DEFAULT NULL,
  `out` varchar(8) DEFAULT NULL,
  `outcomment` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `punchio`
--

INSERT INTO `punchio` (`empID`, `date`, `in`, `incomment`, `out`, `outcomment`) VALUES
(1, '2012-11-14', '09:00:00', 'punch in', '00:04:29', 'punch out'),
(1, '2012-11-15', '18:02:32', 'Test out\r\n', '18:47:44', 'Punch out'),
(2, '2012-11-15', '19:03:51', 'Test in', '', ''),
(1, '2012-11-01', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-02', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-03', '09:05:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-04', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-06', '09:50:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-07', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-08', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-09', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-10', '08:55:32', 'Test out', '16:07:44', 'Punch out'),
(1, '2012-11-11', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-12', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2012-11-13', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-01', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-02', '09:25:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-03', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-04', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-05', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-06', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-09', '08:55:32', 'Test out', '16:07:44', 'Punch out'),
(2, '2012-11-10', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-11', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-12', '09:15:32', 'Test out', '17:07:44', 'Punch out'),
(2, '2012-11-13', '08:55:32', 'Test out', '17:07:44', 'Punch out'),
(1, '2013-04-02', '11:40:11', 'hello', '11:51:56', ''),
(4, '2013-04-02', '11:52:36', 'Hello', '15:10:54', ''),
(11, '2013-04-02', '15:04:35', 'hello', '15:06:45', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `empID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`empID`, `username`, `password`) VALUES
(1, 'Talha', '3dc425b84c63f07ac95973bc04534efd'),
(2, 'sifat', '44d67420cadef41722bb82e96e3a6c0c'),
(3, 'aminur', '3eb381804617eecc3011cf1cc4a07425'),
(4, 'tanvir', '5db85fe4d7c285f5b49749b7a411daf6'),
(5, 'riaydh', 'a6b553d55348f0f25c694cec5c604614'),
(11, 'admin', '21232f297a57a5a743894a0e4a801fc3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
