-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 08:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speedtest`
DROP database if exists speedtest;

create database if not exists speedtest;

use speedtest;
--

-- --------------------------------------------------------

--
-- Table structure for table `bestscores`
--

CREATE TABLE `bestscores` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `scores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bestscores`
--

INSERT INTO `bestscores` (`id`, `userid`, `scores`) VALUES
(3, 33, 42),
(4, 32, 50);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `uid` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`uid`, `email`) VALUES
(44, 'vaishnavi@gmail.com');


-- --------------------------------------------------------

--
-- Table structure for table `typerdata`
--

CREATE TABLE `typerdata` (
  `id` int(11) NOT NULL,
  `data` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typerdata`
--

INSERT INTO `typerdata` (`id`, `data`) VALUES
(1, "Developing writers can often benefit from examining an essay, a paragraph, or even a sentence to determine what makes it effective. On the following pages are several paragraphs for you to evaluate on your own, along with the Writing Center's explanation."),
(2, "We all have been affected by the current COVID-19 pandemic. However, the impact of the pandemic and its consequences are felt differently depending on our status as individuals and as members of society."),
(3, "The Classic fairytale story of Cinderella-a young girl, mistreated by her step-mother and step-sisters, who finds out that dreams really can come true.The main moral or lesson that 'Cinderella' teaches about how to behave in the world, is that kindness will be rewarded, whereas selfishness will not.");

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(32, 'vaishnavi', '12345', 'vaishnavi@gmail.com'),
(33, 'tanmayee', '12345', 'tanmayee@gmail.com'),
(34, 'shivani', '12345', 'shivani@gmail.com'),
(35, 'vinith', '12345', 'vinith@gmail.com'),
(36, 'likith', '12345', 'likith@gmail.com');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `bestscores`
--
ALTER TABLE `bestscores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typerdata`
--
ALTER TABLE `typerdata`
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
-- AUTO_INCREMENT for table `bestscores`
--
ALTER TABLE `bestscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `typerdata`
--
ALTER TABLE `typerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
