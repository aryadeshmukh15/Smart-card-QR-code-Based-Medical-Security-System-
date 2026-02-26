-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 06:18 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dentista`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `apdate` varchar(255) NOT NULL,
  `aptime` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '0',
  `doctor` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `SmartCardNo`, `username`, `apdate`, `aptime`, `status`, `doctor`) VALUES
(4, 'CH20192026', 'raju', '2019-12-30', '11:10', 'Accept', 'dd'),
(5, 'CH201920241', 'jaggu', '2020-02-05', '18:30', '0', ''),
(6, 'CH20192028', 'yash', '2020-01-08', '11:30', 'Accept', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `checkup`
--

CREATE TABLE IF NOT EXISTS `checkup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ha` varchar(255) NOT NULL,
  `gaa` varchar(255) NOT NULL,
  `hb` varchar(255) NOT NULL,
  `gab` varchar(255) NOT NULL,
  `hc` varchar(255) NOT NULL,
  `gac` varchar(255) NOT NULL,
  `dva` varchar(255) NOT NULL,
  `dca` varchar(255) NOT NULL,
  `dvb` varchar(255) NOT NULL,
  `dcb` varchar(255) NOT NULL,
  `dvc` varchar(255) NOT NULL,
  `dcc` varchar(255) NOT NULL,
  `dvd` varchar(255) NOT NULL,
  `dcd` varchar(255) NOT NULL,
  `dve` varchar(255) NOT NULL,
  `dce` varchar(255) NOT NULL,
  `dvf` varchar(255) NOT NULL,
  `dcf` varchar(255) NOT NULL,
  `dvg` varchar(255) NOT NULL,
  `dcg` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `checkup`
--

INSERT INTO `checkup` (`id`, `SmartCardNo`, `username`, `ha`, `gaa`, `hb`, `gab`, `hc`, `gac`, `dva`, `dca`, `dvb`, `dcb`, `dvc`, `dcc`, `dvd`, `dcd`, `dve`, `dce`, `dvf`, `dcf`, `dvg`, `dcg`, `others`) VALUES
(1, 'CH20192091', 'dd', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa'),
(2, 'CH20192026', 'dd', '36(71.1)', '43(20.5)', '154(73.3)', '144(68.6)', '20(9.5)', '23(11.0)', '439(38)', '455(70.54)', '312(27)', '312(48.37)', '277(24)', '96(14.88)', '35(3)', '91(14.11)', '23(2)', '71(11)', '23(25)', '35(5.12)', '46(4)', '15(2.33)', '25(3.87)');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pfname` varchar(100) NOT NULL,
  `plname` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `specialist` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `pfname`, `plname`, `age`, `gender`, `specialist`, `address`, `email`, `mobile`, `username`, `password`) VALUES
(1, 'aa', 'aa', 22, 'Male', 'aa', 'aa', 'aa', '455665', 'aa', 'aa'),
(3, 'Dk', 'Dk', 24, 'male', 'orthodontist', 'Shivajinagar', 'pp@gmail.com', '8948282829', 'dk', '11'),
(4, 'dd', 'dd', 22, 'female', 'orthodontist', 'Shivajinagar', 'dd@gmail.com', '8948282829', 'dd', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hname`, `sname`, `specialist`, `address`, `email`, `contact`, `username`, `password`) VALUES
(1, '', '', '', '', '', '', 'hh', 'hh'),
(4, 'Sahyadri Hospital', 'Superspeciality', 'general', 'Deccan, Pune', 'sahyadri.spc@gmail.com', '9281938391', 'sahyadri', '1919'),
(5, 'City Hospital', 'Superspeciality', 'orthodontist', 'Shivajinagar', 'city.hospital@gmail.com', '9812345320', 'city', '1212');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE IF NOT EXISTS `insurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `cname`, `sname`, `domain`, `address`, `email`, `contact`, `username`, `password`) VALUES
(1, 'LIC', 'Insurance', 'Medical', 'Mumbai', 'lic.life.insurance@gmail.com', '9478823109', 'lic', 'lic');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SmartCardNo` varchar(255) NOT NULL,
  `pfname` varchar(200) NOT NULL,
  `pmname` varchar(200) NOT NULL,
  `plname` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `bloodgroup` varchar(200) NOT NULL,
  `refdoc` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ppicture` varchar(255) NOT NULL DEFAULT '0',
  `SecretKey` varchar(255) NOT NULL,
  `QRCode` varchar(255) NOT NULL,
  `regDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `SmartCardNo`, `pfname`, `pmname`, `plname`, `dob`, `age`, `gender`, `bloodgroup`, `refdoc`, `address`, `city`, `email`, `mobile`, `username`, `password`, `ppicture`, `SecretKey`, `QRCode`, `regDate`) VALUES
(22, 'CH20192091', 'Om', 'pp', 'Patil', '2019-12-02', 34, 'male', 'B', 'Jadhav', 'Shivajinagar', 'Pune', 'kapadnis.insrc@gmail.com', '8948282829', 'om', '11234', 'patient.jpg', 'Hks1L6g223', '1rXoJBLnoEC3NSb5yt7BpZjEr8nBroULLOO2PnUw7Ca93xBuo4rT1c4i0eVOdp3274sYzHNO3Ddj\r\navu9nUfacQ==', '2019/12/17 17:56:39'),
(25, 'CH201920241', 'Jagga', 'K', 'Jadhav', '2019-11-24', 36, 'female', 'B', 'Karan', 'Sangvi', 'Pune', 'jagruti.insrc@gmail.com', '8945800000', 'jaggu', '1515', 'Hrithik2.jpg', 'RI1iO6hxk3', 'Ebwi/yytnMH2rR25sPOe20CjEBV6LmwL/d584FhG3y1bQscORbl8lpZFn7HZRBzbfWj4wudmMTP\r\nYZRPHp3HA==', '2019/12/18 11:52:31'),
(27, 'CH20192026', 'Raju', 'pp', 'Patil', '1997-10-27', 23, 'male', 'A', 'Karan', 'Sangvi', 'Pune', 'santosh.insrc@gmail.com', '8948282829', 'raju', '1010', 'patient.jpg', 'aJ1aywfwYp', 'bIs0ur3ZZ3NwEl1JV01iH766vUNOdJtl46s1YZiL5O93xBuo4rT1c4i0eVOdp3274sYzHNO3Ddj\r\navu9nUfacQ==', '2019/12/18 12:17:49'),
(28, 'CH20192028', 'Yash', 'Raj', 'Amrut', '1990-11-24', 45, 'female', 'A', 'Deshmukh', 'Chnchwad', 'Pune', 'yash.insrc@gmail.com', '9923856663', 'yash', '4545', 'rani.jpg', 'ceR7m2dECg', 'VFtmRhgxyRi8eNgHqQYCnzeVej0ax/TX1h3KYXAqot0aQHa/KD0YCG8n6rvP6t1/kTko5x9u8VGn\r\njeZkbaWNkw==', '2019/12/19 16:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tab` varchar(255) NOT NULL,
  `syrup` varchar(255) NOT NULL,
  `taba` varchar(255) NOT NULL,
  `syrupa` varchar(255) NOT NULL,
  `cleaner` varchar(255) NOT NULL,
  `clips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `SmartCardNo`, `username`, `tab`, `syrup`, `taba`, `syrupa`, `cleaner`, `clips`) VALUES
(1, 'CH20192091', 'dd', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `tblinsurance_details`
--

CREATE TABLE IF NOT EXISTS `tblinsurance_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SmartCardNo` varchar(255) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Policy_No` varchar(255) DEFAULT NULL,
  `Policy_Name` varchar(255) DEFAULT NULL,
  `Policy_Tenue` varchar(255) DEFAULT NULL,
  `Base_Premium` varchar(255) DEFAULT NULL,
  `Coverage_Info` varchar(255) DEFAULT NULL,
  `Policy_Amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblinsurance_details`
--

INSERT INTO `tblinsurance_details` (`id`, `SmartCardNo`, `Company_Name`, `Contact`, `Email`, `Policy_No`, `Policy_Name`, `Policy_Tenue`, `Base_Premium`, `Coverage_Info`, `Policy_Amount`) VALUES
(1, 'CH20192028', 'LIC Insurance', '9478823109', 'lic.life.insurance@gmail.com', 'AD34526', 'Healthy U', '10', '10000', 'Up to 2 Member', '10Lac');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `prescription` varchar(255) NOT NULL,
  `checkup` varchar(255) NOT NULL DEFAULT 'Null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `SmartCardNo`, `username`, `prescription`, `checkup`) VALUES
(7, 'CH20192026', 'dd', 'Prescription.pdf', 'Checkup.pdf'),
(13, 'CH20192028', 'dd', 'PrescriptionOm.pdf', 'CheckupOm.pdf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
