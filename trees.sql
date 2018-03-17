-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2018 at 08:22 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trees`
--

-- --------------------------------------------------------

--
-- Table structure for table `kolkata`
--

CREATE TABLE `kolkata` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kolkata`
--

INSERT INTO `kolkata` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('ppp', 'ppp', 'ppp@cc', 'ppp', 'Kolkata', 'ppp', 'ppp');

-- --------------------------------------------------------

--
-- Table structure for table `mumbai`
--

CREATE TABLE `mumbai` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mumbai`
--

INSERT INTO `mumbai` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('dion', 'dion', 'dion@gmail.com', 'Maha', 'Mumbai', 'plm', 'Mulund'),
('Shyam', 'shyam', 'shyam@gm', 'Maha', 'Mumbai', 'abcd', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('Anto', 'anto', 'anto@gmail.com', 'Maha', 'Thane', '1234', 'Thane'),
('ppp', 'ppp', 'ppp@cc', 'ppp', 'Kolkata', 'ppp', 'ppp');

-- --------------------------------------------------------

--
-- Table structure for table `thane`
--

CREATE TABLE `thane` (
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thane`
--

INSERT INTO `thane` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('Anto', 'anto', 'anto@gmail.com', 'Maha', 'Thane', '1234', 'Thane');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('aaaa', 'aaaa', 'aaaa@gmail', 'aaa', 'aaa', '1234', 'aaaa'),
('Anto', 'anto', 'anto@gmail.com', 'Maha', 'Thane', '1234', 'Thane'),
('dion', 'dion', 'dion@gmail.com', 'Maha', 'Mumbai', 'plm', 'Mulund'),
('ijiji', 'hihih', 'ihihi@jjj', 'ihih', 'jkihjhi', '1234', 'ihihi'),
('ppp', 'ppp', 'ppp@cc', 'ppp', 'Kolkata', 'ppp', 'ppp'),
('Shyam', 'shyam', 'shyam@gm', 'Maha', 'Mumbai', 'abcd', 'Mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mumbai`
--
ALTER TABLE `mumbai`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `thane`
--
ALTER TABLE `thane`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
