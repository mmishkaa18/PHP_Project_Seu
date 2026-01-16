-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 09:42 PM
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
-- Database: `f1_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(2, 'Georgia'),
(3, 'Germany'),
(4, 'France'),
(5, 'Italy'),
(6, 'Spain'),
(7, 'United Kingdom'),
(8, 'Netherlands'),
(9, 'Belgium'),
(10, 'Switzerland'),
(11, 'Austria'),
(12, 'Poland'),
(13, 'Greece'),
(14, 'Turkey'),
(15, 'United States'),
(16, 'Canada'),
(17, 'Brazil'),
(18, 'Argentina'),
(19, 'Mexico'),
(20, 'Japan'),
(21, 'China'),
(22, 'South Korea'),
(23, 'India'),
(24, 'United Arab Emirates'),
(25, 'Saudi Arabia'),
(26, 'Qatar'),
(27, 'Israel'),
(28, 'Australia'),
(29, 'New Zealand'),
(30, 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `driver_number` int(11) NOT NULL,
  `team` varchar(50) NOT NULL,
  `team_slug` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `first_name`, `last_name`, `driver_number`, `team`, `team_slug`, `image`) VALUES
(1, 'Pierre', 'Gasly', 10, 'Alpine', 'alpine', 'gasly.avif'),
(3, 'Fernando', 'Alonso', 14, 'Aston Martin', 'aston', 'alonso.avif'),
(4, 'Franco', 'Colapinto', 1, 'Alpine', 'alpine', 'colapinto.avif'),
(5, 'Lance', 'Stroll', 18, 'Aston Martin', 'aston', 'stroll.avif'),
(6, 'Max', 'Verstappen', 1, 'Red Bull Racing', 'redbull', 'verstappen.avif'),
(7, 'Lewis', 'Hamilton', 11, 'Scuderia Ferrari', 'ferrari', 'hamilton.avif'),
(8, 'Charles', 'Leclerc', 16, 'Ferrari', 'ferrari', 'leclerc.avif'),
(9, 'Carlos', 'Sainz', 55, 'Ferrari', 'ferrari', 'elMatador.avif'),
(10, 'George', 'Russel', 63, 'Mercedes', 'mercedes', 'russel.avif');

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `driver` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `team` varchar(25) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `standings`
--

INSERT INTO `standings` (`id`, `position`, `driver`, `country`, `team`, `points`) VALUES
(5, 1, 'Max Verstappen', 'Netherlands', 'Red Bull Racing', 575),
(6, 2, 'Lando Norris', 'United Kingdom', 'McLaren', 402),
(7, 3, 'Charles Leclerc', 'Monaco', 'Ferrari', 389),
(8, 4, 'Carlos Sainz', 'Spain', 'Ferrari', 348),
(9, 5, 'Oscar Piastri', 'Australia', 'McLaren', 322),
(10, 6, 'Sergio Perez', 'Mexico', 'Red Bull Racing', 285),
(11, 7, 'George Russell', 'United Kingdom', 'Mercedes', 261),
(12, 8, 'Lewis Hamilton', 'United Kingdom', 'Mercedes', 247),
(13, 9, 'Fernando Alonso', 'Spain', 'Aston Martin', 198),
(14, 10, 'Lance Stroll', 'Canada', 'Aston Martin', 172);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `firstname`, `lastname`, `birth_date`, `country`, `email`, `password`, `created_at`) VALUES
(4, '', 'sdf', 'sf', '2026-01-14', '12', 'sdf', 'sf', '2026-01-15 18:06:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standings`
--
ALTER TABLE `standings`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `standings`
--
ALTER TABLE `standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
