-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2025 at 06:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodmenu`
--

-- --------------------------------------------------------

--
-- Table structure for table `food/price`
--

CREATE TABLE `food/price` (
  `id` int(11) UNSIGNED NOT NULL,
  `food` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food/price`
--

INSERT INTO `food/price` (`id`, `food`, `price`, `image_path`) VALUES
(1, 'Chole (chickpea) Masala', '$14.99', 'chole.jpg'),
(2, 'Biryani (Lamb)', '$20.99', 'biryani.jpg'),
(3, 'Butter Chicken (w/Naan)', '$18.99', 'bchick.jpg'),
(4, 'Veggie Samosas', '$4.99 ea.', 'samosa.jpg'),
(5, 'Haleem (Beef)', '$16.99', 'haleem.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food/price`
--
ALTER TABLE `food/price`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food/price`
--
ALTER TABLE `food/price`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
