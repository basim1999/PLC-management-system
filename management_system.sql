-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 09:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `acadimic`
--

CREATE TABLE `acadimic` (
  `ID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `studentName` varchar(45) DEFAULT NULL,
  `Grammar` int(11) DEFAULT NULL,
  `Reading` int(11) DEFAULT NULL,
  `Writing` int(11) DEFAULT NULL,
  `Listening` int(11) DEFAULT NULL,
  `Speaking` int(11) DEFAULT NULL,
  `Tassessment` int(11) DEFAULT NULL,
  `TotalS` int(11) DEFAULT NULL,
  `TotalP` int(11) DEFAULT NULL,
  `Attendance` int(11) DEFAULT NULL,
  `TRecom` varchar(45) DEFAULT NULL,
  `Progress` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acadimic`
--

INSERT INTO `acadimic` (`ID`, `studentID`, `studentName`, `Grammar`, `Reading`, `Writing`, `Listening`, `Speaking`, `Tassessment`, `TotalS`, `TotalP`, `Attendance`, `TRecom`, `Progress`) VALUES
(1, NULL, 'A', 20, 20, 20, 20, 20, 20, 20, 20, 20, '66', '56'),
(2, NULL, 'B', 20, 20, 20, 20, 20, 20, 20, 20, 20, '66', '56'),
(5, NULL, 'c', 20, 20, 20, 20, 20, 20, 20, 20, 20, '66', '56'),
(6, NULL, NULL, 45, 45, 67, 57, 756, 56, 56, 45, 45, '345', '345');

-- --------------------------------------------------------

--
-- Table structure for table `authintication`
--

CREATE TABLE `authintication` (
  `idAuthintication` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `user_type` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authintication`
--

INSERT INTO `authintication` (`idAuthintication`, `UserName`, `Password`, `user_type`) VALUES
(1, 'admin', 'admin', 'admin'),
(4, 'Faten', '1234', 'acadimic');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `staffName` varchar(45) NOT NULL,
  `staffPosition` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `studentName` varchar(45) DEFAULT NULL,
  `studentNationality` varchar(45) DEFAULT NULL,
  `studentPic` blob DEFAULT NULL,
  `studentMStatus` varchar(45) DEFAULT NULL,
  `studentSex` varchar(45) DEFAULT NULL,
  `studentDateOfBirth` date DEFAULT NULL,
  `studentPassportNo` varchar(45) DEFAULT NULL,
  `studentICNo.` varchar(45) DEFAULT NULL,
  `studentAddress` varchar(45) DEFAULT NULL,
  `studentPostCode` varchar(45) DEFAULT NULL,
  `studentCity` varchar(45) DEFAULT NULL,
  `studentState` varchar(45) DEFAULT NULL,
  `studentCountry` varchar(45) DEFAULT NULL,
  `studentMobile` varchar(45) DEFAULT NULL,
  `studentMobileW` varchar(45) DEFAULT NULL,
  `studentHouseNo.` varchar(45) DEFAULT NULL,
  `studenEmail` varchar(45) DEFAULT NULL,
  `studentPEmail` varchar(45) DEFAULT NULL,
  `studentHow` varchar(45) DEFAULT NULL,
  `studentProgram` varchar(45) DEFAULT NULL,
  `studentStart` date DEFAULT NULL,
  `studentEnd` date DEFAULT NULL,
  `studentIntroducer` varchar(45) DEFAULT NULL,
  `studentCouncelor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `studentName`, `studentNationality`, `studentPic`, `studentMStatus`, `studentSex`, `studentDateOfBirth`, `studentPassportNo`, `studentICNo.`, `studentAddress`, `studentPostCode`, `studentCity`, `studentState`, `studentCountry`, `studentMobile`, `studentMobileW`, `studentHouseNo.`, `studenEmail`, `studentPEmail`, `studentHow`, `studentProgram`, `studentStart`, `studentEnd`, `studentIntroducer`, `studentCouncelor`) VALUES
(1, 'faten', 'yemen', NULL, 's', 'f', '2022-12-22', '1234', NULL, '', NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(2, 'faten', 'yemen', NULL, 's', 'f', '2022-12-22', '1234', NULL, '', NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acadimic`
--
ALTER TABLE `acadimic`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `authintication`
--
ALTER TABLE `authintication`
  ADD PRIMARY KEY (`idAuthintication`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acadimic`
--
ALTER TABLE `acadimic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `authintication`
--
ALTER TABLE `authintication`
  MODIFY `idAuthintication` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acadimic`
--
ALTER TABLE `acadimic`
  ADD CONSTRAINT `acadimic_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
