-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 23. Jun 2020 um 08:48
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `suppliers`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `CompanyName` varchar(60) DEFAULT NULL,
  `ContactName` varchar(60) DEFAULT NULL,
  `ContactTitle` varchar(50) DEFAULT NULL,
  `Adress` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Regi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Adress`, `City`, `Regi`) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', ''),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O Box 78934', 'New Orleans', 'LA'),
(3, 'Grandma Kellys Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd', 'Ann Arbor', 'MI'),
(4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashin', 'Tokyo', ''),
(5, 'Cooperativa de Quesos Las Cabras', 'Antonio del Valle Saavendra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Astur'),
(6, 'Mavumis', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Cho-ku', 'Osaka', ''),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie P', 'Melbourne', 'Victor');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
