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
  `availability` enum('Yes','No') NOT NULL,
  `image url` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `availability`, `image url`) VALUES
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
(26, 'Gotocola', 'Vegetables', 2.99, 'Yes', 'image_url_26.jpg'),
(27, 'Bell Pepper', 'Vegetables', 1.95, 'Yes', 'image_url_27.jpg'),
(28, 'Cucumber', 'Vegetables', 0.99, 'Yes', 'image_url_28.jpg'),
(29, 'Dragon Fruit', 'Fruits', 4.49, 'Yes', 'image_url_29.jpg'),
(30, 'Broccoli', 'Vegetables', 2.25, 'Yes', 'image_url_30.jpg'),
(31, 'Pineapple', 'Fruits', 3.99, 'Yes', 'image_url_31.jpg'),
(32, 'Carrot', 'Vegetables', 1.29, 'Yes', 'image_url_32.jpg'),
(33, 'Watermelon', 'Fruits', 5.99, 'Yes', 'image_url_33.jpg'),
(34, 'Spinach', 'Vegetables', 1.75, 'Yes', 'image_url_34.jpg'),
(35, 'Avocado', 'Fruits', 2.99, 'Yes', 'image_url_35.jpg'),
(36, 'Grapes', 'Fruits', 3.79, 'Yes', 'image_url_36.jpg'),
(37, 'Zucchini', 'Vegetables', 1.49, 'Yes', 'image_url_37.jpg'),
(38, 'Kiwi', 'Fruits', 2.25, 'Yes', 'image_url_38.jpg'),
(39, 'Cauliflower', 'Vegetables', 2.49, 'Yes', 'image_url_39.jpg'),
(40, 'Banana', 'Fruits', 1.49, 'Yes', 'image_url_40.jpg'),
(41, 'Orange', 'Fruits', 1.25, 'Yes', 'image_url_41.jpg'),
(42, 'Asparagus', 'Vegetables', 3.25, 'Yes', 'image_url_42.jpg'),
(43, 'Pomegranate', 'Fruits', 4.99, 'Yes', 'image_url_43.jpg'),
(44, 'Cabbage', 'Vegetables', 1.79, 'Yes', 'image_url_44.jpg'),
(45, 'Mango', 'Fruits', 2.49, 'Yes', 'image_url_45.jpg'),
(46, 'Eggplant', 'Vegetables', 1.89, 'Yes', 'image_url_46.jpg'),
(47, 'Blueberries', 'Fruits', 3.29, 'Yes', 'image_url_47.jpg'),
(48, 'Celery', 'Vegetables', 1.99, 'Yes', 'image_url_48.jpg'),
(49, 'Cherry Tomatoes', 'Vegetables', 2.79, 'Yes', 'image_url_49.jpg'),
(50, 'Apple', 'Fruits', 1.79, 'Yes', 'image_url_50.jpg'),
(51, 'Pear', 'Fruits', 2.15, 'Yes', 'image_url_51.jpg'),
(52, 'Cilantro', 'Vegetables', 1.25, 'Yes', 'image_url_52.jpg'),
(53, 'Raspberry', 'Fruits', 4.49, 'Yes', 'image_url_53.jpg'),
(54, 'Artichoke', 'Vegetables', 3.75, 'Yes', 'image_url_54.jpg'),
(55, 'Cantaloupe', 'Fruits', 2.99, 'Yes', 'image_url_55.jpg'),
(56, 'Lemon', 'Fruits', 1.49, 'Yes', 'image_url_56.jpg'),
(57, 'Peach', 'Fruits', 2.69, 'Yes', 'image_url_57.jpg'),
(58, 'Radish', 'Vegetables', 1.15, 'Yes', 'image_url_58.jpg'),
(59, 'Blackberries', 'Fruits', 3.99, 'Yes', 'image_url_59.jpg'),
(60, 'Beets', 'Vegetables', 2.49, 'Yes', 'image_url_60.jpg'),
(61, 'Papaya', 'Fruits', 2.99, 'Yes', 'image_url_61.jpg'),
(62, 'Cucumber', 'Vegetables', 1.25, 'Yes', 'image_url_62.jpg'),
(63, 'Rambutan', 'Fruits', 3.49, 'Yes', 'image_url_63.jpg'),
(64, 'Green Beans', 'Vegetables', 1.79, 'Yes', 'image_url_64.jpg'),
(65, 'Cranberries', 'Fruits', 4.25, 'Yes', 'image_url_65.jpg'),
(66, 'Sweet Potato', 'Vegetables', 2.49, 'Yes', 'image_url_66.jpg'),
(67, 'Apricot', 'Fruits', 2.15, 'Yes', 'image_url_67.jpg'),
(68, 'Kale', 'Vegetables', 1.99, 'Yes', 'image_url_68.jpg'),
(69, 'Guava', 'Fruits', 1.89, 'Yes', 'image_url_69.jpg'),
(70, 'Cherry', 'Fruits', 3.99, 'Yes', 'image_url_70.jpg'),
(71, 'Leek', 'Vegetables', 2.75, 'Yes', 'image_url_71.jpg'),
(72, 'Plum', 'Fruits', 2.49, 'Yes', 'image_url_72.jpg'),
(73, 'Bell Pepper (Yellow)', 'Vegetables', 1.95, 'Yes', 'image_url_73.jpg'),
(74, 'Cantaloupe', 'Fruits', 3.49, 'Yes', 'image_url_74.jpg'),
(75, 'Broccolini', 'Vegetables', 2.25, 'Yes', 'image_url_75.jpg'),
(76, 'Passion Fruit', 'Fruits', 4.99, 'Yes', 'image_url_76.jpg'),
(77, 'Pumpkin', 'Vegetables', 2.75, 'Yes', 'image_url_77.jpg'),
(78, 'Lime', 'Fruits', 1.49, 'Yes', 'image_url_78.jpg'),
(79, 'Turnip', 'Vegetables', 1.79, 'Yes', 'image_url_79.jpg'),
(80, 'Mango (Green)', 'Fruits', 2.99, 'Yes', 'image_url_80.jpg'),
(81, 'Swiss Chard', 'Vegetables', 3.25, 'Yes', 'image_url_81.jpg'),
(82, 'Star Fruit', 'Fruits', 3.49, 'Yes', 'image_url_82.jpg'),
(83, 'Cauliflower (Purple)', 'Vegetables', 2.99, 'Yes', 'image_url_83.jpg'),
(84, 'Black Currant', 'Fruits', 4.25, 'Yes', 'image_url_84.jpg'),
(85, 'Brussels Sprouts', 'Vegetables', 2.75, 'Yes', 'image_url_85.jpg'),
(86, 'Persimmon', 'Fruits', 2.49, 'Yes', 'image_url_86.jpg'),
(87, 'Radish (Daikon)', 'Vegetables', 1.25, 'Yes', 'image_url_87.jpg'),
(88, 'Raspberry (Black)', 'Fruits', 3.99, 'Yes', 'image_url_88.jpg'),
(89, 'Artichoke (Baby)', 'Vegetables', 2.49, 'Yes', 'image_url_89.jpg'),
(90, 'Kiwi (Gold)', 'Fruits', 2.75, 'Yes', 'image_url_90.jpg'),
(91, 'Beetroot', 'Vegetables', 1.99, 'Yes', 'image_url_91.jpg'),
(92, 'Cranberry Beans', 'Vegetables', 2.79, 'Yes', 'image_url_92.jpg'),
(93, 'Pineapple (Golden)', 'Fruits', 4.49, 'Yes', 'image_url_93.jpg'),
(94, 'Arugula', 'Vegetables', 2.15, 'Yes', 'image_url_94.jpg'),
(95, 'Peach (White)', 'Fruits', 3.25, 'Yes', 'image_url_95.jpg'),
(96, 'Kohlrabi', 'Vegetables', 1.75, 'Yes', 'image_url_96.jpg'),
(97, 'Mango (Red)', 'Fruits', 2.99, 'Yes', 'image_url_97.jpg'),
(98, 'Squash (Butternut)', 'Vegetables', 3.49, 'Yes', 'image_url_98.jpg'),
(99, 'Gooseberry', 'Fruits', 3.79, 'Yes', 'image_url_99.jpg'),
(100, 'Escarole', 'Vegetables', 1.49, 'Yes', 'image_url_100.jpg'),
(101, 'Pineapple (Baby)', 'Fruits', 2.49, 'Yes', 'image_url_101.jpg'),
(102, 'Turnip (Baby)', 'Vegetables', 1.25, 'Yes', 'image_url_102.jpg'),
(103, 'Passion Fruit (Yellow)', 'Fruits', 3.99, 'Yes', 'image_url_103.jpg'),
(104, 'Cabbage (Red)', 'Vegetables', 1.79, 'Yes', 'image_url_104.jpg'),
(105, 'Dragon Fruit (Yellow)', 'Fruits', 4.49, 'Yes', 'image_url_105.jpg'),
(106, 'Kale (Baby)', 'Vegetables', 2.25, 'Yes', 'image_url_106.jpg'),
(107, 'Guava (Pink)', 'Fruits', 2.49, 'Yes', 'image_url_107.jpg'),
(108, 'Bell Pepper (Orange)', 'Vegetables', 1.95, 'Yes', 'image_url_108.jpg'),
(109, 'Asparagus (Purple)', 'Vegetables', 3.25, 'Yes', 'image_url_109.jpg'),
(110, 'Mango (Yellow)', 'Fruits', 2.99, 'Yes', 'image_url_110.jpg'),
(111, 'Celery (Red)', 'Vegetables', 2.49, 'Yes', 'image_url_111.jpg'),
(112, 'Peach (Yellow)', 'Fruits', 1.99, 'Yes', 'image_url_112.jpg'),
(113, 'Watermelon (Seedless)', 'Fruits', 5.49, 'Yes', 'image_url_113.jpg'),
(114, 'Cauliflower (Green)', 'Vegetables', 2.99, 'Yes', 'image_url_114.jpg'),
(115, 'Blueberries (Wild)', 'Fruits', 6.99, 'Yes', 'image_url_115.jpg'),
(116, 'Artichoke (Globe)', 'Vegetables', 3.75, 'Yes', 'image_url_116.jpg'),
(117, 'Grapes (Red Seedless)', 'Fruits', 4.99, 'Yes', 'image_url_117.jpg'),
(118, 'Cucumber (English)', 'Vegetables', 1.99, 'Yes', 'image_url_118.jpg'),
(119, 'Kiwi (Green)', 'Fruits', 1.79, 'Yes', 'image_url_119.jpg'),
(120, 'Zucchini (Yellow)', 'Vegetables', 1.49, 'Yes', 'image_url_120.jpg'),
(121, 'Pomegranate (Seeds)', 'Fruits', 3.49, 'Yes', 'image_url_121.jpg'),
(122, 'Carrot (Baby)', 'Vegetables', 1.29, 'Yes', 'image_url_122.jpg'),
(123, 'Mango (Green and Red)', 'Fruits', 3.25, 'Yes', 'image_url_123.jpg'),
(124, 'Lettuce (Iceberg)', 'Vegetables', 1.99, 'Yes', 'image_url_124.jpg'),
(125, 'Strawberry (White)', 'Fruits', 2.99, 'Yes', 'image_url_125.jpg'),
(126, 'Broccoli (Baby)', 'Vegetables', 2.15, 'Yes', 'image_url_126.jpg'),
(127, 'Cherry (Rainier)', 'Fruits', 4.25, 'Yes', 'image_url_127.jpg'),
(128, 'Squash (Acorn)', 'Vegetables', 1.95, 'Yes', 'image_url_128.jpg'),
(129, 'Cranberries (Dried)', 'Fruits', 3.49, 'Yes', 'image_url_129.jpg'),
(130, 'Cilantro (Coriander)', 'Vegetables', 1.25, 'Yes', 'image_url_130.jpg'),
(131, 'Orange (Blood)', 'Fruits', 2.75, 'Yes', 'image_url_131.jpg'),
(132, 'Brussels Sprouts (Baby)', 'Vegetables', 2.49, 'Yes', 'image_url_132.jpg'),
(133, 'Peach (White Flesh)', 'Fruits', 2.69, 'Yes', 'image_url_133.jpg'),
(134, 'Green Beans (French)', 'Vegetables', 2.25, 'Yes', 'image_url_134.jpg'),
(135, 'Raspberry (Golden)', 'Fruits', 3.79, 'Yes', 'image_url_135.jpg'),
(136, 'Sweet Potato (Japanese)', 'Vegetables', 1.99, 'Yes', 'image_url_136.jpg'),
(137, 'Blackberries (Wild)', 'Fruits', 4.49, 'Yes', 'image_url_137.jpg'),
(138, 'Radish (Watermelon)', 'Vegetables', 1.15, 'Yes', 'image_url_138.jpg'),
(139, 'Plum (Black)', 'Fruits', 2.89, 'Yes', 'image_url_139.jpg'),
(140, 'Cucumber (Persian)', 'Vegetables', 1.79, 'Yes', 'image_url_140.jpg'),
(141, 'Papaya (Red)', 'Fruits', 3.29, 'Yes', 'image_url_141.jpg'),
(142, 'Carrot (Rainbow)', 'Vegetables', 2.49, 'Yes', 'image_url_142.jpg'),
(143, 'Grapes (Green Seedless)', 'Fruits', 4.49, 'Yes', 'image_url_143.jpg'),
(144, 'Tomato (Heirloom)', 'Vegetables', 3.99, 'Yes', 'image_url_144.jpg'),
(145, 'Kiwi (Red)', 'Fruits', 2.99, 'Yes', 'image_url_145.jpg'),
(146, 'Zucchini (Green)', 'Vegetables', 1.49, 'Yes', 'image_url_146.jpg'),
(147, 'Mango (Honey)', 'Fruits', 2.79, 'Yes', 'image_url_147.jpg'),
(148, 'Avocado (Hass)', 'Fruits', 3.99, 'Yes', 'image_url_148.jpg'),
(149, 'Radish (Black)', 'Vegetables', 1.95, 'Yes', 'image_url_149.jpg'),
(150, 'Cabbage (Napa)', 'Vegetables', 2.25, 'Yes', 'image_url_150.jpg');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
