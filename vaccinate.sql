-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2021 at 12:49 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccinate`
--

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
CREATE TABLE IF NOT EXISTS `children` (
  `chid` varchar(20) NOT NULL,
  `pid` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`chid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
CREATE TABLE IF NOT EXISTS `citizen` (
  `NIC` varchar(12) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `Snotes` text NOT NULL,
  PRIMARY KEY (`NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`NIC`, `Fname`, `Lname`, `address`, `occupation`, `phone`, `email`, `dob`, `gender`, `Snotes`) VALUES
('614567924v', 'Nishantha', 'Ranaweera', '15B  Riddemaliyadda', 'pensioner', '0715263270', 'Nishantha@gmail.com', '1961.01.01', 'Male', 'cs'),
('628100897v', 'Ranasinghe', 'Rathnayaka', '75/9  Riddemaliyadda', 'Police', '0765260220', 'ranasinghe@gmail.com', '1962.07.01', 'Male', 'abc'),
('634567924V', 'Kamal', 'Perera', '03A Rideemaliyadda', 'Teacher', '0772456109', 'kamal@gmail.com', '1963-10-7', 'Male', 'sdf'),
('638100897v', 'Mala', 'Rathnayaka', '98 Riddemaliyadda', 'House Wife', '0735260270', 'mala@gmail.com', '1963.11.21', 'Female', 'def'),
('638912673V', 'Sumudu', 'Rajasinghe', '30D Rideemaliyadda', 'Nourse', '0713509267', 'sumudu@gmail.com', '1963-07-31', 'Female', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `dose1`
--

DROP TABLE IF EXISTS `dose1`;
CREATE TABLE IF NOT EXISTS `dose1` (
  `vaccinatedId` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `vaccineid` varchar(50) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  PRIMARY KEY (`vaccinatedId`),
  KEY `NIC` (`NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dose2`
--

DROP TABLE IF EXISTS `dose2`;
CREATE TABLE IF NOT EXISTS `dose2` (
  `vaccinatedId` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `vaccineid` varchar(50) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  PRIMARY KEY (`vaccinatedId`),
  KEY `NIC` (`NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `infected`
--

DROP TABLE IF EXISTS `infected`;
CREATE TABLE IF NOT EXISTS `infected` (
  `Infected_no` int(12) NOT NULL AUTO_INCREMENT,
  `NIC` varchar(12) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `infected_date` varchar(10) NOT NULL,
  PRIMARY KEY (`Infected_no`),
  KEY `NIC` (`NIC`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infected`
--

INSERT INTO `infected` (`Infected_no`, `NIC`, `Fname`, `Lname`, `address`, `phone`, `infected_date`) VALUES
(1, '638100897v', 'Mala', 'Senewirathna', '98 Riddemaliyadda', '0735260270', '2021-07-04'),
(2, '614567924V', 'Nishantha', 'Ranaweera', '15B  Riddemaliyadda', '0715263270', '2021-07-01'),
(3, '642093567V', 'Sugath', 'Senanayaka', '30 Rideemaliyadda', '0772055671', '2021-7-3'),
(11, '633612673V', 'Ajith ', 'Banadarasena', '6 Rideemaliyadda', '0712350825', '2021-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `receivedvac`
--

DROP TABLE IF EXISTS `receivedvac`;
CREATE TABLE IF NOT EXISTS `receivedvac` (
  `lotid` varchar(50) NOT NULL,
  `vaccineid` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `receavedate` date NOT NULL,
  PRIMARY KEY (`lotid`),
  KEY `vaccineid` (`vaccineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `user_type`) VALUES
(1, 'admin', '123', 'Admin'),
(2, 'officer', '456', 'Officer'),
(3, 'PHI', '789', 'PHI');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinated`
--

DROP TABLE IF EXISTS `vaccinated`;
CREATE TABLE IF NOT EXISTS `vaccinated` (
  `vaccinated_id` int(3) NOT NULL AUTO_INCREMENT,
  `vaccineid` varchar(60) NOT NULL,
  `vaccine_name` varchar(30) NOT NULL,
  `place` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `dose_type` int(2) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  PRIMARY KEY (`vaccinated_id`),
  KEY `vaccineid` (`vaccineid`,`vaccine_name`),
  KEY `NIC` (`NIC`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccinated`
--

INSERT INTO `vaccinated` (`vaccinated_id`, `vaccineid`, `vaccine_name`, `place`, `date`, `dose_type`, `NIC`) VALUES
(1, 'SYN011', 'Synaphorm', 'Rideemaliyadda MOH', '2021-07-07', 1, '628100897v'),
(2, 'SYN011', 'Synaphorm', 'Rideemaliyadda MMMV', '2021-07-05', 1, '614567924V'),
(20, 'SYN011', 'Synaphorm', 'Rideemaliyadda MOH', '2021-07-08', 1, '634567924V'),
(30, 'SYN012', 'Synaphorm', 'Rideemaliyadda Main Temple', '2021-07-12', 1, '638912673V');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

DROP TABLE IF EXISTS `vaccine`;
CREATE TABLE IF NOT EXISTS `vaccine` (
  `lotid` varchar(50) NOT NULL,
  `mfd` date NOT NULL,
  `exd` date NOT NULL,
  `name` varchar(30) NOT NULL,
  KEY `lotid` (`lotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vac_details`
--

DROP TABLE IF EXISTS `vac_details`;
CREATE TABLE IF NOT EXISTS `vac_details` (
  `mfd` varchar(20) NOT NULL,
  `exd` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `dose_type` varchar(10) NOT NULL,
  `vaccineid` varchar(20) NOT NULL,
  `lotid` varchar(20) NOT NULL,
  PRIMARY KEY (`vaccineid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vac_details`
--

INSERT INTO `vac_details` (`mfd`, `exd`, `quantity`, `name`, `dose_type`, `vaccineid`, `lotid`) VALUES
('2021-07-01', '2022-07-06', '500', 'Synaphorm', '1', 'SYN011', 'L10'),
('2021-07-04', '2022-07-03', '1000', 'Synaphorm', '1', 'SYN012', 'L21');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dose1`
--
ALTER TABLE `dose1`
  ADD CONSTRAINT `dose1_ibfk_1` FOREIGN KEY (`NIC`) REFERENCES `citizen` (`NIC`);

--
-- Constraints for table `dose2`
--
ALTER TABLE `dose2`
  ADD CONSTRAINT `dose2_ibfk_1` FOREIGN KEY (`NIC`) REFERENCES `citizen` (`NIC`);

--
-- Constraints for table `receivedvac`
--
ALTER TABLE `receivedvac`
  ADD CONSTRAINT `receivedvac_ibfk_1` FOREIGN KEY (`vaccineid`) REFERENCES `receivedvac` (`lotid`);

--
-- Constraints for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`lotid`) REFERENCES `receivedvac` (`lotid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
