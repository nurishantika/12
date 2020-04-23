-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 05:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum10`
--

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jkel` varchar(20) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `tptlahir` varchar(50) DEFAULT NULL,
  `tgllahir` varchar(50) DEFAULT NULL,
  `noreg` varchar(50) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `kwn` varchar(50) DEFAULT NULL,
  `berkebutuhan` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `rt` varchar(50) DEFAULT NULL,
  `rw` varchar(50) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kel` varchar(50) DEFAULT NULL,
  `kec` varchar(50) DEFAULT NULL,
  `kodepos` varchar(50) DEFAULT NULL,
  `lintang` varchar(50) DEFAULT NULL,
  `bujur` varchar(50) DEFAULT NULL,
  `tpttinggal` varchar(50) DEFAULT NULL,
  `transport` varchar(50) DEFAULT NULL,
  `kks` varchar(50) DEFAULT NULL,
  `anakke` varchar(50) DEFAULT NULL,
  `kps` varchar(50) DEFAULT NULL,
  `nokps` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`id`, `nama`, `jkel`, `nisn`, `nik`, `tptlahir`, `tgllahir`, `noreg`, `agama`, `kwn`, `berkebutuhan`, `alamat`, `rt`, `rw`, `dusun`, `kel`, `kec`, `kodepos`, `lintang`, `bujur`, `tpttinggal`, `transport`, `kks`, `anakke`, `kps`, `nokps`) VALUES
(1, 'Nurisa Rahma Shantika', 'Perempuan', '18082010025', '18082010025', 'Surabaya', '160999', '18082010025', 'Islam', 'Indonesia (WNI)', 'Tidak', 'Semolowaru', '004', '008', 'Semolowaru', 'Semolowaru', 'Sukolilo', '60119', '112233', '445566', 'Bersama Orang Tua', 'Kendaraan pribadi', '', '3', 'Tidak', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formulir`
--
ALTER TABLE `formulir`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
