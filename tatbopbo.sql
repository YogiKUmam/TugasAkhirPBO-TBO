-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 04:30 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tatbopbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookinglist`
--

CREATE TABLE `bookinglist` (
  `id` varchar(10) NOT NULL,
  `NamaCostumer` varchar(20) NOT NULL,
  `NoWA` varchar(15) NOT NULL,
  `idKamar` varchar(10) NOT NULL,
  `jamBooking` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `idKamar` varchar(10) NOT NULL,
  `RoomType` varchar(20) NOT NULL,
  `Qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordermakanan`
--

CREATE TABLE `ordermakanan` (
  `id` varchar(10) NOT NULL,
  `order` varchar(30) NOT NULL,
  `idKamar` varchar(10) NOT NULL,
  `Qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordermakanan`
--

INSERT INTO `ordermakanan` (`id`, `order`, `idKamar`, `Qty`) VALUES
('123', 'dasfgds', '321', 3),
('123', 'kentang', '321', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rekap`
--

CREATE TABLE `rekap` (
  `idRekap` int(10) NOT NULL,
  `id` varchar(11) NOT NULL,
  `idKamar` varchar(10) NOT NULL,
  `orderMakan` varchar(30) NOT NULL,
  `TotalBayar` varchar(30) NOT NULL,
  `Tanggal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekap`
--

INSERT INTO `rekap` (`idRekap`, `id`, `idKamar`, `orderMakan`, `TotalBayar`, `Tanggal`) VALUES
(1, '123', '12312', 'sfdfsd', '5000', '7-06-2019'),
(2, '312', 'wsqrqw', 'qwerqw', '6000', '8-11-2019'),
(3, '', '', '', '', ''),
(4, '123', '301', 'kentang', '450000', '11-11-2019'),
(5, '123', '301', 'kentang', '450000', '11-11-2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idKamar`),
  ADD UNIQUE KEY `RoomType` (`RoomType`);

--
-- Indexes for table `rekap`
--
ALTER TABLE `rekap`
  ADD PRIMARY KEY (`idRekap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rekap`
--
ALTER TABLE `rekap`
  MODIFY `idRekap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
