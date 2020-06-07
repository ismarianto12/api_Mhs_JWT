-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 07, 2020 at 04:39 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `kode_jurusan` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `create_at` date DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

DROP TABLE IF EXISTS `mhs`;
CREATE TABLE IF NOT EXISTS `mhs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jurusan_id` int(30) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`id`, `nama`, `email`, `jk`, `jurusan_id`, `updated_at`, `created_at`) VALUES
(1, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:01:35', '2020-06-07 08:01:35'),
(2, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:02:07', '2020-06-07 08:02:07'),
(3, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:02:44', '2020-06-07 08:02:44'),
(4, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:04:20', '2020-06-07 08:04:20'),
(5, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:05:35', '2020-06-07 08:05:35'),
(6, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:05:46', '2020-06-07 08:05:46'),
(7, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:06:20', '2020-06-07 08:06:20'),
(8, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:07:53', '2020-06-07 08:07:53'),
(9, 'rian', 'testing@app.com', 'L', 1, '2020-06-07 08:12:23', '2020-06-07 08:12:23'),
(10, '.', 'testing@app.com', 'L', 1, '2020-06-07 08:12:39', '2020-06-07 08:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'rian@aasda.com', '$2y$10$ktdWFH2IxCBeXnGTCqdiKOiYcFjIXD9W1nTUrvIfXVMduiBHW/aFq', 'rian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'uzumaki_naruto@konohagakure.co.jp', '$2y$10$Ob2ypYBxZmIGa5rbwF4xv.AziBbsW17/nqUk378ZM8p6QG90MJ36.', NULL, '2020-06-07 07:27:45', '2020-06-07 07:27:45'),
(3, 'uzumaki_naruto@konohagakure.co.jp', '$2y$10$hW9cYMvVOZ8RdETTt5rvg.Sww2DE5U3DyKDrv8TCJKK93Z97n5suO', NULL, '2020-06-07 07:29:21', '2020-06-07 07:29:21'),
(4, 'uzumaki_naruto@konohagakure.co.jp', '$2y$10$MFxqwkdYJiwqOYRh.sPtquk.UA53Oi7RRuCyKOD/gtwrdoUAq4c.q', NULL, '2020-06-07 07:31:17', '2020-06-07 07:31:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
