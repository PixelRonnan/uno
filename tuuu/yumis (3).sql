-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 05:58 PM
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
-- Database: `yumis`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `available` enum('Yes','No') NOT NULL,
  `image url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `available`, `image url`) VALUES
(1, 'Saluyot', 'Vegetables', 2.99, 'Yes', 'image_url_1.jpg'),
(2, 'Lettuce', 'Vegetables', 1.49, 'Yes', 'image_url_2.jpg'),
(3, 'Talong', 'Vegetables', 1.25, 'Yes', 'image_url_3.jpg'),
(4, 'Sili', 'Vegetables', 2.75, 'Yes', 'image_url_4.jpg'),
(5, 'Tarragon', 'Vegetables', 1.99, 'Yes', 'image_url_5.jpg'),
(6, 'Bluternate', 'Vegetables', 1.79, 'No', 'image_url_6.jpg'),
(7, 'Spearmint', 'Vegetables', 2.25, 'Yes', 'image_url_7.jpg'),
(8, 'Onion chives', 'Vegetables', 3.49, 'Yes', 'image_url_8.jpg'),
(9, 'Rosell', 'Vegetables', 1.89, 'Yes', 'image_url_9.jpg'),
(10, 'Saging', 'Fruits', 2.99, 'Yes', 'image_url_10.jpg'),
(11, 'Blutamint', 'Fruits', 4.25, 'Yes', 'image_url_11.jpg'),
(12, 'Turmeric with Ginger', 'Vegetables', 2.15, 'No', 'image_url_12.jpg'),
(13, 'Mushrooms', 'Vegetables', 3.99, 'Yes', 'image_url_13.jpg'),
(14, 'Alugbati', 'Vegetables', 2.49, 'Yes', 'image_url_14.jpg'),
(15, 'Bawang', 'Vegetables', 1.75, 'Yes', 'image_url_15.jpg'),
(16, 'Sibuyas', 'Vegetables', 2.35, 'Yes', 'image_url_16.jpg'),
(17, 'Honey', 'Fruits', 3.75, 'Yes', 'image_url_17.jpg'),
(18, 'Oyster mushrooms', 'Vegetables', 1.95, 'No', 'image_url_18.jpg'),
(19, 'Onion spring', 'Vegetables', 2.65, 'Yes', 'image_url_19.jpg'),
(20, 'Iceberg lettuce', 'Vegetables', 2.05, 'Yes', 'image_url_20.jpg'),
(21, 'Oregano', 'Vegetables', 3.25, 'Yes', 'image_url_21.jpg'),
(22, 'Tangkad', 'Vegetables', 1.95, 'No', 'image_url_22.jpg'),
(23, 'Thyme', 'Vegetables', 3.49, 'Yes', 'image_url_23.jpg'),
(24, 'Strawberry', 'Fruits', 1.99, 'Yes', 'image_url_24.jpg'),
(25, 'Tarragon', 'Vegetables', 2.79, 'Yes', 'image_url_25.jpg'),
(26, 'Gotocola', 'Vegetables', 2.99, 'Yes', 'image_url_26.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'sedan@gmail.com', '123', 'serlyn'),
(2, 'Rob@gmail.com', '123', 'Rovic'),
(3, 'hannah@gmail.com', '123', 'hannah'),
(4, 'ronnan@gmail.com', '123', 'Ronnan'),
(5, 'jack@gmail.com', '123', 'jack'),
(6, 'kyle@gmail.com', '123', 'kyle'),
(7, 'kong@gmail.com', '123', 'kong'),
(8, 'tomas@gmail.com', '123', 'tomas'),
(9, 'tomas@gmail.com', '123', 'tomas'),
(10, 'tomas@gmail.com', '123', 'tomas'),
(11, 'ash@gmial.com', '123', 'ash'),
(12, 'king@gmail.com', '$2y$10$TggD5DG.OGxTEpwAIV6cH.ASzjRDDZ/LDWa7Nk5PBL98UZl9gf7pK', 'king ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
