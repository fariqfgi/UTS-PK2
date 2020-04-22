-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2020 at 03:38 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts-pk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `user`, `password`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-04-19 08:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perumahan`
--

CREATE TABLE `tb_perumahan` (
  `id` int(11) NOT NULL,
  `perumahan` varchar(32) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` int(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pengembang` varchar(32) NOT NULL,
  `tipe` varchar(7) NOT NULL,
  `brosur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_perumahan`
--

INSERT INTO `tb_perumahan` (`id`, `perumahan`, `alamat`, `telp`, `email`, `pengembang`, `tipe`, `brosur`) VALUES
(1, 'Perumahan A', 'Tegal', 888, 'email@email.com', 'Dodi', 'Tipe A', 'brosur.pdf'),
(2, 'Perumahan B', 'Slawi', 999, 'admin@email.com', 'Ariasas', 'Tipe A', 'brosur.jpg'),
(4, 'Perumahan A', 'Tegal', 888, 'email@email.com', 'Dodi', 'Tipe A', 'brosur.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_perumahan`
--
ALTER TABLE `tb_perumahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_perumahan`
--
ALTER TABLE `tb_perumahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
