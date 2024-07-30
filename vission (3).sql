-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 05:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vission`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_profile`
--

CREATE TABLE `brand_profile` (
  `brand_id` int(11) NOT NULL,
  `bg_img` varchar(200) NOT NULL,
  `logo_img` varchar(200) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `register_date` date NOT NULL,
  `location` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_phone` bigint(20) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `brand_descr` text NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `insta_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `website_url` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_profile`
--

INSERT INTO `brand_profile` (`brand_id`, `bg_img`, `logo_img`, `brand_name`, `category`, `register_date`, `location`, `user_name`, `user_email`, `user_phone`, `gender`, `brand_descr`, `fb_url`, `insta_url`, `youtube_url`, `website_url`, `user_id`) VALUES
(1, 'download.jfif', 'download.jfif', 'NIKE', 'Fashion', '2024-07-05', 'karachi', 'muskan', 'muskanmansoor82@gmail.com', 293748927, 'Female', 'Enter Your Brand Information', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 5);

-- --------------------------------------------------------

--
-- Table structure for table `create-creator-profile`
--

CREATE TABLE `create-creator-profile` (
  `profile_id` int(11) NOT NULL,
  `profile_img` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `marital_status` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` varchar(200) NOT NULL,
  `facebook_link` varchar(500) NOT NULL,
  `youtube_link` varchar(500) NOT NULL,
  `insta_link` varchar(500) NOT NULL,
  `twitter_link` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `category` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_type` enum('brand','influencer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `username`, `email`, `phone`, `category`, `address`, `password`, `user_type`) VALUES
(1, 'muskaa', 'muskak@gmail.com', 37787657675, 'Electronics', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$rhVcnjABhFSqJGPdkfSK4.aQAGXgLJqBTLsMIbpGJuh4hjPnUMIwa', 'brand'),
(2, 'muskannn mansoor', 'admin@example.com', 37787657675, 'Electronics', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$0fyZ.M1XnQGtkSxhJBzPKutIT8g1BNuTfo3iAQM5mQp0Vv68nQ8RC', 'influencer'),
(3, 'muskannn mansoor', 'admin@example.com', 37787657675, 'Clothing', 'Rafiqui, Sarwar Shaheed Rd, Karachi Cantonment, Karachi, Karachi City, Sindh 75510', '$2y$10$Ei0hpIDzu3fJqbXLiLfgGuK.6PLu/mHYWl/ttlU7Fam3dkcnNN2Ba', 'brand'),
(4, 'muskannn mansoor', 'admin@example.comnij', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$JJpi0uNYYsep4sdL2NDBieP.iJ4mroaVowg7P7CbSDFx7RV2ThuFe', 'brand'),
(5, 'muskannn mansoor', 'muskanmansoor82@gmail.com', 32134445747, 'Clothing', 'Rafiqui, Sarwar Shaheed Rd, Karachi Cantonment, Karachi, Karachi City, Sindh 75510', '$2y$10$8YNYDABUICYJjOrKqnL6Y.VcBcWgHWMzV1GN1OHvHj4t8y6DFYmG6', 'brand'),
(6, '', '', 0, 'Clothing', '', '$2y$10$XVuNGpTCSKf6X9.oJyzbqeOm1ozZ/f1pDSmKhqfNX8uKFrlGQCG9u', 'brand'),
(7, 'muskannn mansoor', 'muskak@gmail.com', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$vq4gRlPDaya04mhIDBVyQeX0tqKvCdEvSxO8iLZIbEqOvQcrrPkZC', 'brand'),
(8, 'muskaa', 'muskanmansoor@gmail.com', 32134445747, 'Clothing', 'karachi', '$2y$10$zBatKSp/nHehomq7/xAC0e.RiWaWaAhXe5oxvtkGD5/wWIvz/Yf2W', 'brand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_profile`
--
ALTER TABLE `brand_profile`
  ADD PRIMARY KEY (`brand_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `create-creator-profile`
--
ALTER TABLE `create-creator-profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_profile`
--
ALTER TABLE `brand_profile`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create-creator-profile`
--
ALTER TABLE `create-creator-profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand_profile`
--
ALTER TABLE `brand_profile`
  ADD CONSTRAINT `brand_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
