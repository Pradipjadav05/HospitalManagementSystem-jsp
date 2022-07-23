-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 01:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hssra`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `p_id`, `name`, `email`, `mobile`, `date`, `time`, `doctor_id`, `message`, `status`) VALUES
(14, 2, 'Keyur', 'kbhut865@rku.ac.in', 6353342209, '2021-09-23', '1:00 TO 3:00 PM', 1, 'dsgf', '0'),
(21, 1, 'Pradip', 'pjadav669@rku.ac.in', 9033372216, '2021-09-17', '4:00 TO 7:15 PM', 2, 'asdfsd', '1'),
(22, 1, 'Pradip', 'pjadav669@rku.ac.in', 9033372216, '2021-09-18', '1:00 TO 3:00 PM', 1, 'asdfa', '1'),
(23, 1, 'Pradip', 'pjadav669@rku.ac.in', 9033372216, '2021-09-18', '1:00 TO 3:00 PM', 1, 'asdfa', '0');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Sr` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Sr`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Pradip', 'pjadav669@rku.ac.in', 'Other', 'HIi.....');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(5) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `department` text NOT NULL,
  `degree` text NOT NULL,
  `city` text NOT NULL,
  `password` varchar(8) NOT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `fname`, `lname`, `email`, `mobile`, `department`, `degree`, `city`, `password`, `photo`) VALUES
(1, 'Pradip', 'Jadav', 'pjadav669@rku.ac.in', 9033372216, 'Cardiac Surgery', 'MBBS', 'Surendranagar', '123', NULL),
(2, 'keyur', 'Bhut', 'kbhut456@rku.ac.in', 6353435399, 'GI Surgery', 'PHD', 'Rajokot', '456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sr` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `complain` varchar(25) NOT NULL,
  `serviceRate` int(11) DEFAULT NULL,
  `cleannessRate` int(11) DEFAULT NULL,
  `suggestion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sr`, `name`, `email`, `complain`, `serviceRate`, `cleannessRate`, `suggestion`) VALUES
(1, 'Pradip', 'pjadav669@rku.ac.in', 'good', 5, 5, 'dfg');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `gender` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `distric` text DEFAULT NULL,
  `zipcode` int(6) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `password` varchar(8) NOT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `name`, `email`, `mobile`, `gender`, `city`, `distric`, `zipcode`, `address`, `password`, `photo`) VALUES
(1, 'Pradip', 'pjadav669@rku.ac.in', 9033372216, NULL, 'Rajkot', 'Rajkot', 360025, 'Srdhar', '123', NULL),
(2, 'Keyur', 'kbhut865@rku.ac.in', 6353342209, 'Male', 'Rajkot', 'Rajkot', 360020, 'Srdhar', '789', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `p_id` int(5) NOT NULL,
  `p_name` text NOT NULL,
  `d_id` int(11) NOT NULL,
  `doctor` text NOT NULL,
  `treatment` varchar(500) NOT NULL,
  `medicine` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`p_id`, `p_name`, `d_id`, `doctor`, `treatment`, `medicine`) VALUES
(1, 'Pradip', 2, 'keyur Bhut', 'Take Rest', 'Stopec'),
(1, 'Pradip', 1, 'Pradip Jadav', 'Take Rest', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Sr`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
