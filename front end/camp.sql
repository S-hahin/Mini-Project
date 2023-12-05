-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 10:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `district` text NOT NULL,
  `uname` text NOT NULL,
  `pword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `email`, `phone`, `district`, `uname`, `pword`) VALUES
(1, 'Admin', 'admin@camp.com', '8547692354', 'Trivandrum', 'admin', 'admin'),
(2, 'Sam', 'sam@gmail.com', '7855986745', 'Ernakulam', 'camp007', 'sam'),
(3, 'shahin', 'shahin@gmail.com', '8976543211', 'ernakulam', 'shahin', 'shahin'),
(4, 'Abhi', 'abhi@gmail.com', '9633512167', 'Kasargod', 'camp014', 'abhi'),
(5, 'Ravan', 'ravan@gmail.com', '9768594823', 'Kasargod', 'Ravan', 'ravan');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `cid` int(11) NOT NULL,
  `cname` text NOT NULL,
  `dist` text NOT NULL,
  `taluk` text NOT NULL,
  `village` text NOT NULL,
  `ward` text NOT NULL,
  `address` text NOT NULL,
  `location` text NOT NULL,
  `caname` text NOT NULL,
  `canum` text NOT NULL,
  `max` int(11) NOT NULL,
  `bed` text NOT NULL,
  `bath` text NOT NULL,
  `kitchen` text NOT NULL,
  `booking` int(11) DEFAULT 0,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`cid`, `cname`, `dist`, `taluk`, `village`, `ward`, `address`, `location`, `caname`, `canum`, `max`, `bed`, `bath`, `kitchen`, `booking`, `status`) VALUES
(1, 'School', 'Ernakulam', 'karamana', 'kummil', 'madathara', 'madathara, kummil p.o', 'https://maps.app.goo.gl/PMNpPy1QASeCrGru7', 'camp007', '8965432256', 150, '150', '15', '3', 6, NULL),
(2, 'Kasargod, Kuruppumthudathil (h, Kerala', 'Kasargod', 'kuruppumthudathil', 'Ayyampuzha', 'madathara', 'Ayyampuzha, madathara P.O', 'https://maps.app.goo.gl/S8iwrLcrJVJWkqaa7', 'camp007', '9867462378', 200, '200', '20', '5', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` text NOT NULL,
  `uemail` text NOT NULL,
  `adhar` text NOT NULL,
  `uphone` text NOT NULL,
  `district` text NOT NULL,
  `taluk` text NOT NULL,
  `ward` text NOT NULL,
  `address` text NOT NULL,
  `location` text NOT NULL,
  `cname` text DEFAULT NULL,
  `cid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `adhar`, `uphone`, `district`, `taluk`, `ward`, `address`, `location`, `cname`, `cid`) VALUES
(1, 'shahin', 'shahin@gmail.com', '765543220091', '8976543211', 'ernakulam', 'madathara', 'kummil', 'madathara,kummil', 'https://maps.app.goo.gl/Bf6d6ZADxHYJc8C79', 'School', '1'),
(2, 'Ravan', 'ravan@gmail.com', '89776688493011', '9768594823', 'Kasargod', 'kuruppumthudathil', 'madathara', 'ayyampuzha, kasargod', 'https://maps.app.goo.gl/PMNpPy1QASeCrGru7', 'Kasargod, Kuruppumthudathil (h, Kerala', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
