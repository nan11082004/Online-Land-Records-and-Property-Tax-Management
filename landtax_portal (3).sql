-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landtax_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `property_records`
--

CREATE TABLE `property_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mc_type` varchar(50) DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `part` varchar(50) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `property_use` varchar(50) DEFAULT NULL,
  `occupancy` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_records`
--

INSERT INTO `property_records` (`id`, `user_id`, `mc_type`, `owner_name`, `father_name`, `mobile_no`, `location`, `address`, `floor`, `part`, `length`, `width`, `property_use`, `occupancy`, `created_at`) VALUES
(1, 4, 'MC Thang', 'shreya sultania', 'ranjit sultania', '6204694257', 'katihar', 'bara bazar ', 'Floor-3', '2', 23.00, 34.00, 'Residential', 'By Owner', '2025-03-29 11:19:08'),
(2, NULL, 'MC Thang', 'shreya sultania', 'ranjit sultania', '6204694257', 'katihar', 'barsjkjhkhiuh', 'Floor-2', '2', 56.00, 34.00, 'Residential', 'By Owner', '2025-03-29 11:24:36'),
(3, NULL, 'MC Thang', 'lihjhg', 'lkjh', '1234567890', 'likugyjfhtdgrf', 'errtiyoupi;olikujyhtgrefsfdghjykuli;kl', 'Floor-2', '3', 765.00, 7.00, 'Commercial', 'By Owner', '2025-03-29 11:56:06'),
(4, NULL, 'MC Thang', 'nfdifhi', 'kdjnfkjfb', '9898989898', 'fghjkl', 'sdfghjklcgfhvjbknml', 'Floor-2', '5', 345.00, 456.00, 'Residential', 'By Owner', '2025-03-29 12:02:53'),
(5, NULL, 'MC Thang', 'sdfxgchvjbkn', 'xghvjbkn', '1234123412', 'dfghjkl;', 'gcfxhvjkcsdlvbgf', 'Floor-2', '3345', 435.00, 345.00, 'Residential', 'By Owner', '2025-03-29 12:06:15'),
(6, NULL, 'MC Thang', 'lihjhg', 'lkjh', '1234554321', 'knjfkjfkgd', 'fbdyfgyudwfgudwyfiu', 'Floor-2', '34', 4545.00, 45436.00, 'Residential', 'By Owner', '2025-03-29 12:12:05'),
(7, NULL, 'MC Thang', 'dfs', 'rsgdhf', '1231231234', 'dtyruyrteyruiyo', 'ertituytegsfv', 'Floor-2', '4', 45.00, 56.00, 'Residential', 'By Owner', '2025-03-29 12:41:35'),
(8, NULL, 'MC Thang', 'hddd', 'bddd', '1234567890', 'punjab', 'gandhi nagar', 'Floor-1', '2', 10000.00, 20000.00, 'Residential', 'By Owner', '2025-03-29 14:22:40'),
(9, NULL, 'MC Thang', 'lihjhg', 'ranjit sultania', '1231231234', 'knjfkjfkgd', 'wea5', 'Floor-1', '2345', 23.00, 345.00, 'Residential', 'By Owner', '2025-04-03 08:52:21'),
(10, NULL, 'MC Thang', 'shreya sultania', 'ranjit sultania', '6204694257', 'katihar', 'DSUYGDYUASGDIUSA', 'Floor-2', '12', 123.00, 233.00, 'Residential', 'By Owner', '2025-04-04 08:37:40'),
(11, NULL, 'MC Thang', 'dns', 'khdwi', '9471033038', 'fhdsiufhiuds', 'kdjhfiudhfiudshfiudh', 'Floor-2', '4', 343434.00, 545.00, 'Residential', 'By Owner', '2025-04-06 09:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'shreya', 'kukiagarwal789@gmail.com', '$2y$10$xF3rJeqhEHicnGs6ZD9hZ.ilDGQF5T2VhAHE8WEwu/jfwAPXf30Wa', '2025-03-29 10:32:48'),
(2, 'rishav', '12307826@neocolab.ai', '$2y$10$T190N0p0kXU16PhPe3LR3eQue.A08dQQPU.1DIDeknau2G9aPsMni', '2025-03-29 10:34:13'),
(3, 'rk', 'rk@gmail.com', '$2y$10$OP60PMvzl3Oq7p1588IiMepZcALHf7m7urXvy.IlaVQ7FL69mGhbG', '2025-03-29 10:35:23'),
(4, 'bhanu', 'kukii@gmail.com', '$2y$10$5XXs/55mygmL0Eot0lBn1ui5XatuWPWms.5R0zXbbPGUF5LHA.bIG', '2025-03-29 10:38:57'),
(5, 'rr', 'rr@gmail.com', '$2y$10$tL9DptANz5XItysgm1V3FOJV7Byt4Qe1c0Tdp0oURuZYdRF0F..UO', '2025-03-29 10:39:58'),
(6, 'sanu', '12312596@neocolab.ai', '$2y$10$2o5v80pp0TEtmfyk9xPl8OlSndi0eh5ch8d3sAZrnfFH.q14YUa/.', '2025-03-29 12:16:38'),
(7, 'anshu', 'anshu@gmail.com', '$2y$10$YhFua/lNbTamfvrZmXaZ0ub92EIcnj7O1GJRemexjRL.IX2AhEEwa', '2025-03-29 12:33:18'),
(8, 'rrr', 'rrr@gmail.com', '$2y$10$fkmb.o1EvpDxPUm.cf7BH.lPXPiCAPyUMF9KXrnvMyixjg08hBSbW', '2025-03-29 12:35:40'),
(9, 'abc', 'abc@gmail.com', '$2y$10$5YEv8D/Fk.FMfTiqrfLW7uL332Km5M9H5lqrkUNjqNytAJUP4m0qq', '2025-03-29 12:37:03'),
(10, 'xyz', 'xyz@gmail.com', '$2y$10$T3u2wVl2t8VNoapeMWH41.VhAMNn.CXGP6NBn2c.kziEegzwj9z3O', '2025-03-29 12:38:06'),
(11, 'bcd', 'cd@gmail.com', '$2y$10$Aluy7.AdMTxsy.pVAmasreuw9uRQyGcB7D/tv1OKkvv26KDJbBCWq', '2025-03-29 12:40:53'),
(12, 'Devangana Suresh', 'devanganasuresh70@gmail.com', '$2y$10$p2D5wRkBdUbKKxe9h5FD1ukl14iH7cMCDTTYjjvXMu4LGDWuLDFFy', '2025-03-29 14:18:19'),
(13, 'devu', 'sureshdevangana@gmail.com', '$2y$10$sLApr4VIPQrInsMnxFVjXOM0Hv0q.m8fdtTMlTwtcEIih.vek500e', '2025-03-29 14:19:58'),
(14, 'harshit', 'harshit@gmail.com', '$2y$10$w7PqGcXviE0O1bddDQYuY.zIZN2K0NBH7YjdRfODTsImzprezMstm', '2025-04-03 08:50:57'),
(15, 'shreya agarwal', 'kuki@gmail.com', '$2y$10$LfFg1.mzN1gP5b.Gf4oJ7epKr/H3Ut1COKANXbxZ6qWMMxL9atNcC', '2025-04-04 09:11:23'),
(16, 'abcd', '12310830@neocolab.ai', '$2y$10$kxQKvuZcd0WBBqpO99PrmeCOsK7pBh7jNQ8SE1kcwt81Y5/1wJ3.K', '2025-04-05 19:47:38'),
(18, 'kamal', 'kamal@gmail.com', '$2y$10$7qzpVPzJtFrRFCURWQi.ful246tK/qNDw864e/C8y3agC2NtmrBdu', '2025-04-05 19:50:47'),
(19, 'mkl', 'mkl@gmail.com', '$2y$10$/2zzaRXdBjKBf4ian/HV7uOOkUqs62Rss9KZgd0UhlgjaiHCHzcC.', '2025-04-05 19:53:53'),
(20, 'op', 'op@gmail.com', '$2y$10$KwJonSkE7zVfoLiplcdIruP2owsjXmnQTgj78GD53O6uaLm9E3rHa', '2025-04-05 20:06:13'),
(21, 'bhu', 'bhu@gmail.com', '$2y$10$BrKorBhPSCWA9CGr7USihuXZ/TmA3hr8MPGi3PmRzPSpKQRSuQ4Tu', '2025-04-05 20:24:09'),
(22, 'thn', 'thn@gmail.com', '$2y$10$njTdHkWP/RuUKNKxy3YMBePizdePx2UWFHtrbQM0Q0hpfRVVSkagq', '2025-04-05 20:38:02'),
(23, 'komal', 'komal@gmail.com', '$2y$10$F9.fy5ZSZIHQsXetvtHhqugEARyLjEJajsIdxlTSnHPKoezvz7Cw6', '2025-04-05 20:46:36'),
(26, 'bhn', 'bhn@gmail.com', '$2y$10$8ayw20RvIkPPlXWV7Uhk0.ZZqhJU2gvsTlQuOOG0rGRwxxwAI1tMW', '2025-04-05 20:57:54'),
(28, 'kavya', 'kavya@gmail.com', '$2y$10$mY2o20cJ1t7uEP1scjCF/eJwKNBvcqRZNkdVOeC3sShFkc2ppRqcK', '2025-04-05 21:00:16'),
(29, 'rom', 'rom@gmail.com', '$2y$10$Kd2vCPPSRodhTEnNcHXva.jyCygzHXOwpMRbuPNW3C3ud1tlswjji', '2025-04-05 21:11:08'),
(30, 'nancy', 'nancy@gmail.com', '$2y$10$bp7WFx0EH3AAS0P18Vh9B.tl0uEeflUXjpmJv/sWczRJvk1PLxvsG', '2025-04-05 21:18:14'),
(31, 'puja', 'puja@gmail.com', '$2y$10$./yFnHtvalX6u5lKkcopGOfjcbm4E7AMeSuIm/r4aDdIYS/wCufKK', '2025-04-05 21:21:46'),
(32, 'mannu', 'mannu@gmail.com', '$2y$10$msfiq49sfhW/qJzsgXk8Y..NrVW3W8HoL9nlkhLitZac7rIoxg.qa', '2025-04-06 08:12:59'),
(33, 'jani', 'jani@gmail.com', '$2y$10$V2GvnfM502X9Kggn/ljVzOqt2apmwvjWNnRhUDR3S.YyDMoE2Iriu', '2025-04-06 08:19:31'),
(34, 'p', 'p@gmail.com', '$2y$10$jRIrmXS40BqdoyHiYKtXzuIfA28B3h2y3z0f7EYpYMIF8xWB6M0Vy', '2025-04-06 09:15:17'),
(35, 'mansi', 'mansi@gmail.com', '$2y$10$TWKdpuIH46NcUhCvqHgCkugTlOd5iSmPKF/ZB.Q99QUZRBjr6AQhG', '2025-04-06 09:21:19'),
(36, 'riya', 'riya@gmail.com', '$2y$10$mwj7IfXGlcc.e8Ja9/wGpOciIwRzfEW/toeHpr7tB6PFNVlfMpGiK', '2025-04-06 09:25:31'),
(37, 'bnm', 'bnm@gmail.com', 'bnm', '2025-04-06 09:37:43'),
(38, 'ankit', 'ankit@gmail.com', 'ankit', '2025-04-06 09:43:14'),
(39, 'anuj', 'anuj@gmail.com', 'anuj', '2025-04-06 09:45:16'),
(40, 'roshan', 'roshan@gmail.com', 'roshan', '2025-04-06 09:51:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property_records`
--
ALTER TABLE `property_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property_records`
--
ALTER TABLE `property_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `property_records`
--
ALTER TABLE `property_records`
  ADD CONSTRAINT `property_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
