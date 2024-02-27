-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 10:35 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programista`
--
CREATE DATABASE IF NOT EXISTS `programista` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `programista`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `programista`
--

CREATE TABLE `programista` (
  `idp` int(11) NOT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `nazwisko` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programista`
--

INSERT INTO `programista` (`idp`, `imie`, `nazwisko`) VALUES
(1, 'marek', 'dudu'),
(2, 'maciej', 'purt'),
(3, 'maruś', 'duda');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `technologie`
--

CREATE TABLE `technologie` (
  `idt` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `idp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technologie`
--

INSERT INTO `technologie` (`idt`, `nazwa`, `idp`) VALUES
(1, 'sql', 1),
(2, 'html', 2),
(3, 'sql', 3),
(4, 'js', 2),
(5, 'php', 1),
(6, 'html', 3),
(7, 'mariadb', 1),
(8, 'c++', 1),
(9, 'c#', 3),
(10, 'Python', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `programista`
--
ALTER TABLE `programista`
  ADD PRIMARY KEY (`idp`);

--
-- Indeksy dla tabeli `technologie`
--
ALTER TABLE `technologie`
  ADD PRIMARY KEY (`idt`),
  ADD KEY `idp` (`idp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programista`
--
ALTER TABLE `programista`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `technologie`
--
ALTER TABLE `technologie`
  MODIFY `idt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `technologie`
--
ALTER TABLE `technologie`
  ADD CONSTRAINT `technologie_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `programista` (`idp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
