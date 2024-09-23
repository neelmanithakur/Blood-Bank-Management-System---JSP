-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 04:01 PM
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
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `name` varchar(20) NOT NULL,
  `mobilenumber` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`name`, `mobilenumber`, `email`, `bloodgroup`, `status`) VALUES
('Ashwath', '7829191655', 'ashwathsgr165@gmail.com', 'o+', 'completed'),
('Nikhil', '7829278989', 'nikhil@gmail.com', 'A+', 'completed'),
('nikill', '782919160', 'nikil@gmail.com', 'A+', 'completed'),
('sagar', '7829199999', 'ashwath@gmail.com', 'O+', 'completed'),
('vibha', '1234567890', 'vibha@gmail.com', 'A+', 'completed'),
('sam', '1234567890', 'vibha@gmail.com', 'O+', 'completed'),
('ashwa', '1234567890', 'ashwathsgr165@gmail.com', 'A+', 'completed'),
('Nikhil', '1234567890', 'nikil@gmail.com', 'B+', 'completed'),
('asshwath', '7829191655', 'ashwathsgr165@gmail.com', 'O+', 'completed'),
('ash', '2345678901', 'sgr@gmail.com', 'O+', 'pending'),
('fsd', '123468900', 'asdb@gmail.com', 'A-', 'pending'),
('asdfdb', '12345678', 'asdf@gmail.com', 'B-', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `father` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `mobilenumber` varchar(10) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bloodgroup` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `father`, `mother`, `mobilenumber`, `gender`, `email`, `bloodgroup`, `address`) VALUES
(2, 'sagar', 'manju', 'yyyy', '1234567890', 'Male', 'sgr@gmail.com', 'A+', 'kjkim');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `bloodgroup` varchar(100) NOT NULL,
  `units` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`bloodgroup`, `units`) VALUES
('A+', '105'),
('A-', '100'),
('B+', '150'),
('B-', '100'),
('O+', '100'),
('O-', '100'),
('AB+', '100'),
('AB-', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
