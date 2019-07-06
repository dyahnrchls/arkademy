-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 05:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arkademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Shopping'),
(2, 'Media Sosial'),
(3, 'Game'),
(4, 'Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `hobby`
--

CREATE TABLE `hobby` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobby`
--

INSERT INTO `hobby` (`id`, `name`, `id_category`) VALUES
(1, 'Koleksi Tas', 1),
(2, 'Insta Story', 2),
(3, 'Mobile Legend', 3),
(4, 'Futsal', 4),
(5, 'Basket', 4),
(6, 'PUBG', 3);

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE `name` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_hobby` int(10) NOT NULL,
  `id_category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`id`, `name`, `id_hobby`, `id_category`) VALUES
(1, 'Novi', 1, 1),
(2, 'Vita', 2, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tableviews`
-- (See below for the actual view)
--
CREATE TABLE `tableviews` (
`Name` varchar(255)
,`Hobby` varchar(255)
,`Category` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `test-table`
--

CREATE TABLE `test-table` (
  `name` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `tableviews`
--
DROP TABLE IF EXISTS `tableviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tableviews`  AS  select `name`.`name` AS `Name`,`hobby`.`name` AS `Hobby`,`category`.`name` AS `Category` from ((`name` left join `hobby` on(`name`.`id_hobby` = `hobby`.`id`)) left join `category` on(`name`.`id_category` = `category`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobby`
--
ALTER TABLE `hobby`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CategoryHobby` (`id_category`);

--
-- Indexes for table `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_HobbyName` (`id_hobby`),
  ADD KEY `FK_CategoryName` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hobby`
--
ALTER TABLE `hobby`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `name`
--
ALTER TABLE `name`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hobby`
--
ALTER TABLE `hobby`
  ADD CONSTRAINT `FK_CategoryHobby` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);

--
-- Constraints for table `name`
--
ALTER TABLE `name`
  ADD CONSTRAINT `FK_CategoryName` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_HobbyName` FOREIGN KEY (`id_hobby`) REFERENCES `hobby` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
