-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 04:49 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `items_selected`
--

CREATE TABLE `items_selected` (
  `id` int(30) NOT NULL,
  `table_number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `total_price` varchar(200) NOT NULL,
  `payment_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(200) NOT NULL,
  `classification` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `price`, `image`, `classification`) VALUES
(1, 'Mango Juice', 40, 'images/mango_juice.jpg', 'Beverages'),
(3, 'Scones', 20, 'images/scones.jpg', 'Starter'),
(4, 'Chicken Soup', 100, 'images/chicken_soup.jpg', 'Appetizer'),
(5, '1/4 Chicken', 150, 'images/chicken.png', 'Main meal'),
(6, 'Wet fry Fish', 200, 'images/fish.jpg', 'Main meal'),
(7, 'Pilau', 100, 'images/pilau.jpg', 'Main meal'),
(8, 'Beef fry', 170, 'images/beef.jpg', 'Main meal'),
(9, 'Pawpaw Soup', 100, 'images/pawpaw_soup.jpg', 'Starter'),
(10, 'Latte', 200, 'images/latte.jpg', 'Beverages'),
(11, 'Cappuccino', 240, 'images/cappuccino.jpg', 'Beverages'),
(12, 'Chicken Pasta Soup', 100, 'images/chicken_pasta_soup.jpg', 'Starter'),
(13, 'Chocolate Ice Cream Cake', 50, 'images/choco_icecream.jpg', 'Buffet'),
(14, 'Assorted Fruit Cakes', 50, 'images/Assorted_fruitcake.jpg', 'Buffet'),
(15, 'Black tea', 50, 'images/black tea.jpg', 'Beverages'),
(16, 'White Tea', 80, 'images/white tea.jpg', 'Beverages'),
(17, 'Ugali Plain', 70, 'images/ugali_beef.jpg', 'Main meal'),
(18, 'Ugali Beef', 120, 'images/ugali_beef.jpg', 'Main meal'),
(19, 'Ugali and steamed Kales', 100, 'images/ugali_skuma.jpg', 'Main meal'),
(20, 'Red Mexican Rice', 100, 'images/red_rice.jpg', 'Main meal'),
(21, 'Vegetable Soup', 100, 'images/veg_soup.jpg', 'Appetizer'),
(22, 'Plain Rice', 80, 'images/rice_plain.jpg', 'Main meal');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `table_number` varchar(200) NOT NULL,
  `order` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(30) NOT NULL,
  `table_number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `login_status` tinyint(200) NOT NULL DEFAULT 0,
  `status` varchar(30) NOT NULL DEFAULT 'offline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_number`, `password`, `login_status`, `status`) VALUES
(1, '1', '$2a$15$.PmD6f7gRgfr8QDtto3ypuaywwxx4B6GipraT1ZELbhsIFFzzamY2', 1, 'online'),
(2, '2', '$2a$15$hbeop.rdA2us99P0n3k/P.cFOnz0NtuXGf5GEbCTunGGzuir32sUu', 0, ' offline');

-- --------------------------------------------------------

--
-- Table structure for table `total_price`
--

CREATE TABLE `total_price` (
  `id` int(30) NOT NULL,
  `table_number` varchar(200) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_price`
--

INSERT INTO `total_price` (`id`, `table_number`, `total_price`, `payment_status`) VALUES
(1, '1', 80, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_selected`
--
ALTER TABLE `items_selected`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_price`
--
ALTER TABLE `total_price`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_selected`
--
ALTER TABLE `items_selected`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `total_price`
--
ALTER TABLE `total_price`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
