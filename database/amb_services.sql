-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2024 at 07:26 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amb_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `amp` varchar(30) NOT NULL,
  `rdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `appoint` (
  `id` int(11) NOT NULL,
  `uname` varchar(12) NOT NULL,
  `doctor` varchar(20) NOT NULL,
  `adate` varchar(15) NOT NULL,
  `atime` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(70) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `nutrition_details` (
  `id` int(30) NOT NULL,
  `apid` varchar(60) NOT NULL,
  `patient` varchar(60) NOT NULL,
  `doctor` varchar(60) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `meal_plan` varchar(1000) NOT NULL,
  `rdate` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `hname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `husname` varchar(60) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `contact1` varchar(20) NOT NULL,
  `contact2` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blood_grp` varchar(10) NOT NULL,
  `disease` varchar(50) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `ph_branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pimage` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `ph_doctor_register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Specialization` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `ph_register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `damount` double NOT NULL,
  `otp` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `ph_service` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `Hospital_name` varchar(30) NOT NULL,
  `Patient_name` varchar(20) NOT NULL,
  `In_date` varchar(20) NOT NULL,
  `In_time` varchar(20) NOT NULL,
  `ECG` varchar(30) NOT NULL,
  `BP` varchar(20) NOT NULL,
  `Heart_Beat` varchar(20) NOT NULL,
  `Doctor_name` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `schemes` (
  `id` int(12) NOT NULL,
  `scheme_name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `rdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

