-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08 Iun 2017 la 22:35
-- Versiune server: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tw`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `maps`
--

CREATE TABLE `maps` (
  `idCutremur` varchar(10) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `maps`
--

INSERT INTO `maps` (`idCutremur`, `link`) VALUES
('C1', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.31625952153!2d85.29111316473102!3d27.708955944389654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600%2C+Nepal!5e0!3m2!1sen!2sro!4v1496946815778'),
('C2', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1815859.3150629108!2d85.53204741292373!3d27.263064791547684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e93479cf445b65%3A0xc1ceb492bfa96d3d!2sSagarmatha%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953476899'),
('C3', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1817947.1665413268!2d86.71276262612005!3d27.134948416210783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e5e00683216f5b%3A0x9f29cd3ec600640e!2sMechi%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953575588'),
('C4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.31625952146!2d85.291113164731!3d27.708955944389654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953617073'),
('C5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114086.591151113!2d87.1951588201519!3d26.67389422718349!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ef6c66e80fbfa9%3A0x38094d1a7c974283!2sItahari%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953693036'),
('C6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3675629.485413996!2d83.55932602597512!3d25.886523544432094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ed5844f0bb6903%3A0x57ad3fed1bbae325!2sBihar%2C+India!5e0!3m2!1sen!2sro!4v1496953737284'),
('C7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114086.591151113!2d87.19515882015187!3d26.67389422718348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ef6c66e80fbfa9%3A0x38094d1a7c974283!2sItahari%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953768986'),
('C8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55511.26650977378!2d80.19588167760257!3d29.59048125455919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39a125c00088dd51%3A0x2b781d30a1523c63!2sPithoragarh%2C+Uttarakhand%2C+India!5e0!3m2!1sen!2sro!4v1496953810704\" width=\"600\" height='),
('C9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.31625952153!2d85.29111316473102!3d27.708955944389654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953843487'),
('C10', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28256.73833001561!2d85.48182951106659!3d27.714436598474762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb042a0ccee203%3A0x89e3729ae87697a6!2sNagarkot%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953909561'),
('C11', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14085.965781803736!2d82.32338892530109!3d28.0400153724827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39978cf7c0791741%3A0x5853f18879350127!2sKothari%2C+Duruwa+22412%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953936466\" width=\"600\" height='),
('C12', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14085.965781803736!2d82.32338892530109!3d28.0400153724827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39978cf7c0791741%3A0x5853f18879350127!2sKothari%2C+Duruwa+22412%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953936466\" width=\"600\" height=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD KEY `idCutremur` (`idCutremur`);

--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `maps_ibfk_1` FOREIGN KEY (`idCutremur`) REFERENCES `cutremur` (`idCutremur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
