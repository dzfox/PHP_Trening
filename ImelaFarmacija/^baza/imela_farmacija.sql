-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2017 at 12:37 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imela_farmacija`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakture`
--

CREATE TABLE `fakture` (
  `FakturaID` int(11) NOT NULL,
  `KomitentID` int(11) DEFAULT NULL,
  `BrFakture` int(11) DEFAULT NULL,
  `MIsp_Adresa` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MIsp_Grad` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MIsp_PostanskiBr` int(11) NOT NULL,
  `MIsp_Zemlja` varchar(255) CHARACTER SET utf8 NOT NULL,
  `DatumIsp` date NOT NULL,
  `Valuta` date NOT NULL,
  `Osnovica` float(12,2) DEFAULT NULL,
  `PDV` float(12,2) DEFAULT NULL,
  `Iznos` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komitenti`
--

CREATE TABLE `komitenti` (
  `KomitentID` int(11) NOT NULL,
  `Naziv` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Adresa` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Grad` varchar(255) CHARACTER SET utf8 NOT NULL,
  `PostanskiBr` int(11) NOT NULL,
  `Zemlja` varchar(255) CHARACTER SET utf8 NOT NULL,
  `TelefonskiBr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Rabat` tinyint(100) DEFAULT '0',
  `Odlozeno` int(3) NOT NULL DEFAULT '0',
  `DatumReg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komitenti`
--

INSERT INTO `komitenti` (`KomitentID`, `Naziv`, `Adresa`, `Grad`, `PostanskiBr`, `Zemlja`, `TelefonskiBr`, `Rabat`, `Odlozeno`, `DatumReg`) VALUES
(1, 'NS Pharm', 'Djordja Zlicica 12', 'Novi Sad', 21000, 'Srbija', NULL, 15, 14, '2017-08-05 12:00:00'),
(2, 'Phoenix', 'Bore Stankovica 154', 'Beograd', 11000, 'Srbija', NULL, 12, 21, '2017-08-05 12:00:00'),
(3, 'Farmalogist', 'Viline Vode bb', 'Beograd', 11000, 'Srbija', NULL, 12, 30, '2017-08-09 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `narudzbine`
--

CREATE TABLE `narudzbine` (
  `NarudzbinaID` int(11) NOT NULL,
  `BrFakture` int(11) NOT NULL,
  `ProizvodID` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `Cena` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

CREATE TABLE `proizvodi` (
  `ProizvodID` int(11) NOT NULL,
  `Naziv` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Cena` float(7,2) NOT NULL,
  `BarCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`ProizvodID`, `Naziv`, `Cena`, `BarCode`) VALUES
(1, 'Hiper Hama Gel', 242.00, 12),
(2, 'Hiper Jeko-Zink', 276.00, 34),
(3, 'Hiper Urea', 280.00, 56),
(4, 'Hiper Nocurak', 287.00, 78),
(5, 'Hiper Venin', 310.00, 90),
(6, 'Hiper Hemorin', 340.00, 91);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Ime` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Prezime` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Zaposlen` tinyint(1) NOT NULL DEFAULT '0',
  `Username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Pass` varchar(255) CHARACTER SET utf8 NOT NULL,
  `DatumReg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Ime`, `Prezime`, `Zaposlen`, `Username`, `Pass`, `DatumReg`) VALUES
(1, 'Ljubomir', 'Dzigurski', 1, 'Ljubomir', 'Solaris', '2017-08-04 12:00:00'),
(2, 'Marija', 'Siriski', 0, 'Marija', 'srebromrak', '2017-08-03 12:00:00'),
(3, 'Aleksandra', 'Siriski', 1, 'Aleksandra', 'itaci', '2017-08-01 12:00:00'),
(4, 'Zoran', 'Siriski', 1, 'Zoran', 'itaci2', '2017-08-01 12:00:00'),
(5, 'Lenka', 'Siriski', 0, 'Lenka', 'itaci', '2017-08-01 12:00:00'),
(6, 'Aleksandar', 'Dzigurski', 0, 'Sasa', 'cembrva', '2017-08-01 12:00:00'),
(11, 'Milorad', 'Dujin', 0, 'Teca', 'traktor', '2017-08-15 12:00:00'),
(17, 'Ljubinka', 'DÅ¾igurski', 0, 'Ljuba', 'paradajz', '2018-08-10 12:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakture`
--
ALTER TABLE `fakture`
  ADD PRIMARY KEY (`FakturaID`),
  ADD UNIQUE KEY `BrFakture` (`BrFakture`),
  ADD KEY `KomitentID` (`KomitentID`);

--
-- Indexes for table `komitenti`
--
ALTER TABLE `komitenti`
  ADD PRIMARY KEY (`KomitentID`),
  ADD UNIQUE KEY `Ime` (`Naziv`);

--
-- Indexes for table `narudzbine`
--
ALTER TABLE `narudzbine`
  ADD PRIMARY KEY (`NarudzbinaID`),
  ADD KEY `BrFakture` (`BrFakture`),
  ADD KEY `ProizvodID` (`ProizvodID`);

--
-- Indexes for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD PRIMARY KEY (`ProizvodID`),
  ADD UNIQUE KEY `Naziv` (`Naziv`),
  ADD UNIQUE KEY `BarCode` (`BarCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `USERNAME` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakture`
--
ALTER TABLE `fakture`
  MODIFY `FakturaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komitenti`
--
ALTER TABLE `komitenti`
  MODIFY `KomitentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `narudzbine`
--
ALTER TABLE `narudzbine`
  MODIFY `NarudzbinaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proizvodi`
--
ALTER TABLE `proizvodi`
  MODIFY `ProizvodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fakture`
--
ALTER TABLE `fakture`
  ADD CONSTRAINT `fakture_ibfk_1` FOREIGN KEY (`KomitentID`) REFERENCES `komitenti` (`KomitentID`);

--
-- Constraints for table `narudzbine`
--
ALTER TABLE `narudzbine`
  ADD CONSTRAINT `narudzbine_ibfk_1` FOREIGN KEY (`BrFakture`) REFERENCES `fakture` (`BrFakture`),
  ADD CONSTRAINT `narudzbine_ibfk_2` FOREIGN KEY (`ProizvodID`) REFERENCES `proizvidi` (`ProizvodID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
