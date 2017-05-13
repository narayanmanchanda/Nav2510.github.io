-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 10:06 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 */SET NAMES utf8;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `teacher_signup`
--

CREATE TABLE `teacher_signup` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_signup`
--

INSERT INTO `teacher_signup` (`name`, `pass`, `email`) VALUES
('zcn znc ', 'sdkjnsj', 'cmxb@ndn.ndj'),
('ds cs dcn', 'cjsdnckjs', 'jscx@bsjd.csnk'),
('sdfds', 'sdfsdf', 'sdfnk@dsknL.vsdm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher_signup`
--
ALTER TABLE `teacher_signup`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
