-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 11:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `astudent`
--

CREATE TABLE `astudent` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `languages` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `astudent`
--

INSERT INTO `astudent` (`id`, `name`, `languages`) VALUES
(3, 'dastgir', 'php,javascript'),
(4, 'dastgir', 'php,javascript'),
(5, 'aman', 'php,javascript'),
(6, 'tausif', 'php,javascript,ruby');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `password` varchar(150) NOT NULL,
  `company_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `emailid`, `password`, `company_name`) VALUES
(3, 'tausif', 'dastgir333@gmail.com', 'aman2358', 'wipro'),
(12, 'alham', 'alham1233@gmail.com', 'sadia123578', 'infotech.IT');

-- --------------------------------------------------------

--
-- Table structure for table `just`
--

CREATE TABLE `just` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `course` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `just`
--

INSERT INTO `just` (`id`, `name`, `gender`, `course`) VALUES
(1, 'aman', 'male', ''),
(2, 'sadia', 'female', ''),
(3, 'sadia', 'female', ''),
(4, 'aman', 'male', ''),
(5, 'aman', 'male', 'bba'),
(6, 'sadia', 'female', 'mba'),
(7, 'sadia', 'female', 'mba');

-- --------------------------------------------------------

--
-- Table structure for table `nstudent`
--

CREATE TABLE `nstudent` (
  `sid` int(11) NOT NULL,
  `sname` varchar(150) NOT NULL,
  `saddress` varchar(150) NOT NULL,
  `sclass` int(11) NOT NULL,
  `sphone` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nstudent`
--

INSERT INTO `nstudent` (`sid`, `sname`, `saddress`, `sclass`, `sphone`) VALUES
(2, 'dastgir akhtar', 'jannat nagar', 2, '963189733'),
(3, 'dastgir akhtar', 'azad road khunti', 4, '963189733'),
(4, 'dastgir akhtar', 'jannat nagar', 2, '963189733'),
(6, 'dastgir akhtar', 'azad road khunti', 2, '963189733'),
(7, 'Salman Khan khan', 'azad road khunti', 4, 'azad road khunti'),
(8, 'Tausif Aman', 'main road murhu khunti', 4, '963189731'),
(9, 'Tausif Aman', 'main road murhu khunti', 4, '963189731'),
(10, 'anam', 'jannat nagar', 2, '963189733');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `course` varchar(100) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `role`, `name`, `contact`, `email`, `address`, `gender`, `course`, `remarks`) VALUES
(5, 133, 'dastgir', '9631897878', 'dastgir333@gmail.com', 'jannnat nagar', 'Male', 'MCA', 'selected sure'),
(6, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'BCA', 'selected'),
(12, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'not selected'),
(13, 133, 'tausif', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(15, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(18, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(24, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(25, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(30, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(31, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(32, 133, 'alham', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'B.TECH', 'selected'),
(33, 133, 'alham raza1', '9631897878', 'alham123@gmail.com', 'jannnat nagar', 'Male', 'MCA', 'selected'),
(34, 182, 'aman', '963189736', 'aman1234@gmail.com', 'ckp', 'Male', 'B.TECH', 'nice'),
(35, 200, 'ali', '9631897878', 'sadia12356@gmail.com', 'ckp', 'Male', 'BCA', 'seleted');

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

CREATE TABLE `studentclass` (
  `cid` int(11) NOT NULL,
  `cname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`cid`, `cname`) VALUES
(1, 'BCA'),
(2, 'MBA'),
(3, 'MCA'),
(4, 'B.TECH');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`) VALUES
(1, 'aman', 'ali'),
(2, 'dastgir', 'akhtar'),
(3, 'rani', 'perween'),
(4, 'sana', 'tabassum'),
(5, 'alham', 'raza'),
(6, 'anam', 'raza'),
(7, 'tausif', 'ali'),
(8, 'aman', 'ali'),
(9, 'sadia', 'tabassum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`CustomerID`, `CustomerName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo', 'Avda. de la Construction 2222', 'Mexico D.F.', '5021', 'Mexico'),
(3, 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', '5023', 'Mexico'),
(4, 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(6, 'Wolski Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland'),
(7, 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(8, 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
(9, 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(10, 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
(11, 'Paul Henriot', '2, rue du Commerce', 'Reims', '51100', 'France'),
(12, 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
(13, 'Karin Josephs', 'Luisenstr. 48', 'Butte', '59801', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `astudent`
--
ALTER TABLE `astudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `just`
--
ALTER TABLE `just`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nstudent`
--
ALTER TABLE `nstudent`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentclass`
--
ALTER TABLE `studentclass`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `astudent`
--
ALTER TABLE `astudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `just`
--
ALTER TABLE `just`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nstudent`
--
ALTER TABLE `nstudent`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `studentclass`
--
ALTER TABLE `studentclass`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
