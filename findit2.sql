-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 11:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findit2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `id` int(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`id`, `id_number`, `email`, `password`, `name`, `address`, `contact_number`) VALUES
(1, '04-2122-031653', 'admin@gmail.com', 'Marcdave_13', 'admin', 'Phinma University of Iloilo, GSD Office', '09811576901');

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `id` int(255) NOT NULL,
  `claimers_name` varchar(255) NOT NULL,
  `claimers_email` varchar(255) NOT NULL,
  `claimers_id` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `claimers_fb` varchar(255) NOT NULL,
  `item_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `claim`
--

INSERT INTO `claim` (`id`, `claimers_name`, `claimers_email`, `claimers_id`, `picture`, `contact_number`, `claimers_fb`, `item_status`) VALUES
(70, 'marc dave nakpil', 'admin@gmail.com', '04-2122-03121231', 'f7808bfa9f1b348accbc8872f527ef42.jpg', '09811576909', 'Marc Dave Nakpil', 'Claimed'),
(71, 'asdasd', 'marcdave@gmail.com', '04-2122-0311', '88056005c67709b705b3b3c6af8802df (1).jpg', '09811576909', 'Marc Dave Nakpil', 'Claimed');

-- --------------------------------------------------------

--
-- Table structure for table `found`
--

CREATE TABLE `found` (
  `id` int(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `datefound` date NOT NULL,
  `foundlocation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb_account` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `posted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `found`
--

INSERT INTO `found` (`id`, `picture`, `description`, `itemname`, `itemtype`, `datefound`, `foundlocation`, `email`, `fb_account`, `contact_number`, `posted_by`) VALUES
(3, 'flashdrives.jpg', 'usb', 'sandisk 16gb', 'Claimed', '2024-03-23', 'in the cite', 'admin@gmail.com', 'admin', '09811576901', 'admin'),
(4, 'flashdrives.jpg', 'usb', 'sandisk 16gb', 'Claimed', '2024-03-23', 'in the cafeteria', 'marcdave@gmail.com', 'marc dave nakpil', '09811576909', 'Marc dave Nakpil'),
(5, 'alcohol.jpg', 'eqwe', 'eqweqwe', 'Claimed', '2002-09-24', 'eqe', 'admin@gmail.com', 'eqeqewe', '09811576901', 'admin'),
(6, 'ballpen.webp', 'usb', 'asdasd', 'Found', '2003-02-13', 'asdawdawdaw', 'admin@gmail.com', 'daniel john salvacion', '09811576901', 'admin'),
(7, 'headphones.jpg', 'headphone', 'asdasdasdas', 'Found', '2024-03-26', 'naaam awe', 'admin@gmail.com', 'marc dave nakpil', '09811576901', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `datefound` date NOT NULL,
  `posted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `picture`, `itemname`, `description`, `itemtype`, `datefound`, `posted_by`) VALUES
(110, 'mouse pad.jpg', 'mouse pad', 'black', 'Lost', '2024-03-18', 'admin@gmail.com'),
(113, 'jacket.jpg', 'Jacket', 'black', 'Lost', '2024-03-19', 'admin@gmail.com'),
(114, 'flashdrives.jpg', 'USB', 'black, 16gb acer', 'Found', '2024-03-19', 'marcdave@gmail.com'),
(115, 'headphones.jpg', 'headphone', 'black', 'Lost', '2024-03-19', 'admin@gmail.com'),
(116, 'wallet.webp', 'wallet', 'blue', 'Lost', '2024-03-19', 'admin@gmail.com'),
(117, 'flashdrives.jpg', 'usb', 'red', 'Lost', '2024-03-19', 'admin@gmail.com'),
(118, 'mouse.jpg', 'mouse', 'black', 'Lost', '2024-01-01', 'admin@gmail.com'),
(119, 'alcohol.jpg', 'alcohol', 'green cross', 'Lost', '2024-03-19', 'admin@gmail.com'),
(120, 'ballpen.webp', 'ballpen', 'black', 'Lost', '2024-03-19', 'admin@gmail.com'),
(121, 'hair clip.jpg', 'hairclip', 'black', 'Lost', '2024-03-19', 'admin@gmail.com'),
(122, 'charger.jpg', 'charger', 'white oppo', 'Lost', '2024-03-19', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `lost`
--

CREATE TABLE `lost` (
  `id` int(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `datelost` date NOT NULL,
  `lostlocation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb_account` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `posted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lost`
--

INSERT INTO `lost` (`id`, `picture`, `itemname`, `description`, `itemtype`, `datelost`, `lostlocation`, `email`, `fb_account`, `contact_number`, `posted_by`) VALUES
(16, 'alcohol.jpg', 'alcohol', 'green cross', 'Claimed', '2024-03-23', 'in the cafeteria', 'admin@gmail.com', 'admin', '09811576901', 'admin'),
(17, 'mouse.jpg', 'mouse ', 'black', 'Claimed', '2024-03-23', 'in the cafeteria', 'admin@gmail.com', 'admin', '09811576901', 'admin'),
(18, 'flashdrives.jpg', 'usb', 'Sandisk', 'Claimed', '2024-03-23', 'near cite', 'admin@gmail.com', 'marc dave nakpil', '09811576901', 'admin'),
(19, 'headphones.jpg', 'gakdn ', 'an  kabsd ', 'Claimed', '2024-03-23', 'asd ad', 'admin@gmail.com', 'asd a', '09811576901', 'admin'),
(20, 'mouse.jpg', 'mouse', 'black lenovo', 'Lost', '2024-03-23', 'near cite', 'admin@gmail.com', 'admin', '09811576901', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `student_num` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `password`, `student_num`, `fullname`, `address`, `course`, `contact_number`) VALUES
(1, 'marcdave@gmail.com', 'Marcdave13', '4', 'Marc dave Nakpil', 'I Calle St. Leon, Iloilo', 'BSIT', '09811576909'),
(2, 'djsalvacion1@gmail.com', '@Danielgwapo1', '123', 'Daniel Salvacion', 'Sinikway', 'IT', '09123456789'),
(3, 'miatahum@gmail.com', 'Qwerty@123', '4', 'Romea Janne Tahum', 'Pavia', 'BSIT', '2147483647'),
(4, 'marcdavenakpil@gmail.com', 'Marcdave123', '2147483647', 'Marcdave', 'iloilo', 'bsit', '09212312312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `found`
--
ALTER TABLE `found`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lost`
--
ALTER TABLE `lost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin1`
--
ALTER TABLE `admin1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `claim`
--
ALTER TABLE `claim`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `found`
--
ALTER TABLE `found`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `lost`
--
ALTER TABLE `lost`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
