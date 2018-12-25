-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2018 at 11:58 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `E-vent`
--

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(30) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `judul` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `kontak` varchar(40) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `gambar`, `judul`, `location`, `tanggal`, `kontak`, `deskripsi`) VALUES
(0, 'saya', 'pawang meraj', 'bantul', '2018-11-07', '889988', 'mendekatu');

-- --------------------------------------------------------

--
-- Table structure for table `upload_post`
--

CREATE TABLE `upload_post` (
  `id_upload` int(30) NOT NULL,
  `gambar` varchar(30) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `kontak` int(30) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_post`
--

INSERT INTO `upload_post` (`id_upload`, `gambar`, `judul`, `location`, `tanggal`, `kontak`, `deskripsi`) VALUES
(21, 'hrg_diri-951x298.png', 'progammer handal', 'maguwo', '2018-12-20', 2147483647, ''),
(22, 'kedua-951x298.png', 'jalan-jalan', 'maguwo', '2018-12-21', 54545455, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur accusamus sint hic doloremque laborum repellendus, ab vel sunt soluta aliquam quia fugit minima assumenda inventore nam cum. Facilis assumenda, quis repudiandae optio consequatur, temporibus nostrum ipsam itaque rem modi molestiae quasi voluptatem saepe doloremque similique? Eos, fugit ea animi qui quaerat consectetur laboriosam? Ea maiores unde fugiat. Ad dolores sequi veniam unde sunt qui dolorum excepturi similique corporis, consectetur at nihil ex ipsum id ab provident totam, ipsa iure dolorem nam rerum consequuntur rem quaerat. '),
(23, 'Screenshot from 2018-08-09 20-', 'latihan', 'bantul', '2018-12-13', 9878777, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur accusamus sint hic doloremque laborum repellendus, ab vel sunt soluta aliquam quia fugit minima assumenda inventore nam cum. Facilis assumenda,'),
(24, 'Screens-951x298.png', 'bukan latihan', 'bantul', '2018-12-21', 9883443, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur accusamus sint hic doloremque laborum repellendus, ab vel sunt soluta aliquam quia fugit minima assumenda inventore nam cum. Facilis assumenda,');

-- --------------------------------------------------------

--
-- Table structure for table `User_Login`
--

CREATE TABLE `User_Login` (
  `id_user` int(30) NOT NULL,
  `nama` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat_1` text NOT NULL,
  `alamat_2` text NOT NULL,
  `kota` varchar(30) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `kode_pos` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_Login`
--

INSERT INTO `User_Login` (`id_user`, `nama`, `email`, `password`, `alamat_1`, `alamat_2`, `kota`, `negara`, `kode_pos`) VALUES
(1, 'alut', 'a@gmail.com', 'ijijijhihugu', 'hhfhjfhjhcfhj', 'ihugugg', 'Solo', 'indonesia', 89889);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_post`
--
ALTER TABLE `upload_post`
  ADD PRIMARY KEY (`id_upload`);

--
-- Indexes for table `User_Login`
--
ALTER TABLE `User_Login`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `upload_post`
--
ALTER TABLE `upload_post`
  MODIFY `id_upload` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `User_Login`
--
ALTER TABLE `User_Login`
  MODIFY `id_user` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
