-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2018 at 03:10 PM
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
-- Database: `klinik_apotekdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dafatarlogin`
--

CREATE TABLE `dafatarlogin` (
  `id_login` int(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dafatarlogin`
--

INSERT INTO `dafatarlogin` (`id_login`, `user`, `password`, `email`) VALUES
(1, 'luthf', '$2y$10$lon8gf9Y4ZPUgBRBOaK.MOyp.uCEATgAzAS5hIPqv3LvfWdTqxyi6', 'l@l.com'),
(2, 'luthfi', '$2y$10$GcG45l8Sj2lWXanicWlEEugVOXtFGh0h1r.R2J7.aL0k73bNdtMa2', 'l@l.com'),
(3, 'kalis', '$2y$10$cwAPt7tvQm4b2TuNGv109OTFav.xQAXtaUZ/snK/sG/otZpSZJL6y', 'l@l.com'),
(4, 'julio', '$2y$10$.7ltFbYrRsuylJIrhCaLb.sjE5ZiFIQZQwDV3YigLJes3gjcwuRoC', 'j@l.com');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `kd_dokter` char(4) NOT NULL,
  `nm_dokter` varchar(100) NOT NULL,
  `jns_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `sip` varchar(20) NOT NULL,
  `spesialisasi` varchar(100) NOT NULL,
  `bagi_hasil` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`kd_dokter`, `nm_dokter`, `jns_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telepon`, `sip`, `spesialisasi`, `bagi_hasil`) VALUES
('D001', 'dr. Subarjo Sujono', 'Laki-laki', 'Yogyakarta', '1975-12-02', 'Jl. Janti, Karang Jambe 130, Yogyakarta', '081928282811', '0101010101', 'Umum', 10),
('D002', 'dr. Sulis Tiyowati', 'Laki-laki', 'Yogyakarta', '1975-01-12', 'Jl. Condong Catur, Yogyakarta', '081971717171', '1001010101010', 'Umum', 10),
('D003', 'dr. Prasetio Hadi, S.KG', 'Laki-laki', 'Tegal', '1980-12-01', 'Jl. Yogyakarta, 130', '081981818188', '2012/00000001', 'Gigi', 10),
('D004', 'dr. Marjoko Suhendra, S.KG', 'Laki-laki', 'Tegal', '1988-01-12', 'Jl. Raya Janti', '081921212333', '2001/101010102', 'Gigi', 10),
('D005', 'Anis Ade Linis, S.KG', 'Perempuan', 'Way Jepara', '1987-04-16', 'Jl. Pramuka, Labuhan Ratu 1, Way Jepara, Lampung Timur', '08192234456322', '29289282882828', 'Gigi', 10);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kd_obat` char(5) NOT NULL,
  `nm_obat` varchar(100) NOT NULL,
  `harga_modal` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `stok` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kd_obat`, `nm_obat`, `harga_modal`, `harga_jual`, `stok`, `keterangan`) VALUES
('H0001', 'Akar Zaitun', 37000, 50000, 92, 'Obat Diabetes'),
('H0002', 'Habatusauda', 85000, 100000, 92, 'untuk kesehatans'),
('H0003', 'Air Zam Zam 1 Liter ', 26000, 40000, 9, 'air zam zam'),
('H0004', 'Alat Bekam 12 Cup', 58000, 70000, 9, 'alat bekam'),
('H0005', 'Bio Skin Car', 10000, 15000, 36, 'Skin car'),
('H0006', 'Bio Xamthone', 60000, 70000, 8, 'xamtone'),
('H0007', 'Buah Merah Papua (BMW) ', 55000, 90000, 10, 'buah merah'),
('H0008', 'Cabe Jawa HIU', 27000, 45000, 6, 'cabe jawa'),
('H0009', 'Cream Jerawat Anisa Dark Spot', 55000, 85000, 9, 'untuk jerawat'),
('H0010', 'Daun Sirsak HIU', 27000, 45000, 17, 'daun sirsak'),
('H0011', 'Diabetas Binasyifa', 27500, 50000, 21, 'obat diabetes'),
('H0012', 'Etawa Emas Original', 25000, 45000, 19, 'susu etawa'),
('H0013', 'FOREDI ', 165000, 200000, 6, 'obat kuat pria'),
('H0014', 'Gamat HIU', 45000, 75000, 9, 'gamat'),
('H0015', 'Gemuk Badan Binasyifa', 22000, 40000, 16, 'herbal gemuk badan'),
('H0016', 'Habasyi Oil 210 Kps', 50000, 89000, 18, 'Habatusauda'),
('H0017', 'Habasyi Oil 75 Kps', 24000, 42500, 19, 'habatusauda'),
('H0018', 'Habasyi Plus 120 Kapsul', 20000, 26500, 17, 'habatusauda plus mnyak zaitun'),
('H0019', 'Habasyi Plus 200 Kapsul', 30500, 42000, 19, 'habatusauda plus mnyak zaitun'),
('H0020', 'Herba Sambung Nyowo HIU', 27500, 45000, 10, 'sambung nyowo'),
('H0021', 'Herbal Oil Sambung Nyowo', 50000, 75000, 20, 'sambung nyowo'),
('H0022', 'Honey Moon', 39500, 70000, 18, 'rapet wanita'),
('H0023', 'Injoy Reflexology Sandal', 90000, 150000, 10, 'sandal refleksi'),
('H0024', 'Jadied Lambung', 15000, 25000, 10, 'untuk lambung'),
('H0025', 'Joss X HIU', 27000, 45000, 10, 'keperkasaan pria'),
('H0026', 'Joss V HIU', 27000, 45000, 10, 'keperkasaan wanita'),
('H0027', 'Kapsul Jati Belanda', 27000, 40000, 10, 'jati belanda'),
('H0028', 'Keladi Tikus Toga Nusantara', 29000, 55000, 10, 'tikus'),
('H0029', 'Klorofil K-Link', 67000, 150000, 10, 'k-link'),
('H0030', 'Koyo Anti Nyamuk', 8000, 15000, 50, 'anti nyamuk'),
('H0031', 'Lamandel ', 20500, 35000, 20, 'obat amandel'),
('H0032', 'Madu Batuk Al Wadey', 18000, 26000, 10, 'obat batuk'),
('H0033', 'Madu Mesir', 47000, 75000, 10, 'madu murni'),
('H0034', 'Madu Sambung Nyowo 100 ML', 24000, 35000, 10, 'sambung nyowo'),
('H0035', 'Madu Sambung Asmoro 100 ML', 24000, 35000, 10, 'sambung asmoro'),
('H0036', 'Nama Obat Baru', 1000, 2000, 10, 'Obat Sakit gigi');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `nomor_rm` int(30) NOT NULL,
  `nm_pasien` varchar(100) NOT NULL,
  `no_identitas` varchar(40) NOT NULL,
  `jns_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `gol_darah` enum('A','B','AB','O') NOT NULL,
  `agama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `stts_nikah` enum('Menikah','Belum Nikah') NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `keluarga_status` enum('Ayah','Ibu','Suami','Istri','Saudara') NOT NULL,
  `keluarga_nama` varchar(100) NOT NULL,
  `keluarga_telepon` varchar(20) NOT NULL,
  `tgl_rekam` date NOT NULL,
  `kd_petugas` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`nomor_rm`, `nm_pasien`, `no_identitas`, `jns_kelamin`, `gol_darah`, `agama`, `tempat_lahir`, `tanggal_lahir`, `no_telepon`, `alamat`, `stts_nikah`, `pekerjaan`, `keluarga_status`, `keluarga_nama`, `keluarga_telepon`, `tgl_rekam`, `kd_petugas`) VALUES
(1, 'zainudin', '9000093', 'Laki-laki', 'B', 'islam', 'palu', '1980-12-20', '2335563', 'jl.hayamuruk', '', 'random', 'Suami', 'zainudin', '3556565', '2018-12-19', ''),
(2, 'fatimah', '456554565', 'Perempuan', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', ''),
(3, 'fatimah', '4565468654', 'Perempuan', 'A', 'islam', 'jakarta', '2018-12-21', '203131564', 'jl nangka', '', '', 'Istri', 'zaenal', '454564654', '2018-12-20', ''),
(4, 'suki', '454545', 'Laki-laki', 'AB', 'islam', 'palu', '1990-12-23', '32651212', 'jl.supri', '', 'programmer', 'Suami', 'supri', '455445', '2018-12-20', '');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `no_daftar` int(7) NOT NULL,
  `nomor_rm` int(30) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `tgl_janji` date NOT NULL,
  `jam_janji` time NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `kd_tindakan` char(4) NOT NULL,
  `nomor_antri` int(4) NOT NULL,
  `kd_petugas` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`no_daftar`, `nomor_rm`, `tgl_daftar`, `tgl_janji`, `jam_janji`, `keluhan`, `kd_tindakan`, `nomor_antri`, `kd_petugas`) VALUES
(1, 4, '0000-00-00', '0000-00-00', '00:00:09', 'sakit kepala', 'TI05', 2, ''),
(2, 3, '2018-12-20', '2018-12-21', '00:00:09', 'sakit kepala', 'TI05', 3, ''),
(3, 1, '2018-12-14', '2018-12-16', '00:00:00', 'sakit perut', 'TI05', 4, ''),
(4, 1, '2018-12-04', '2018-12-16', '13:04:00', 'muntah', 'TI05', 4, ''),
(5, 3, '2018-12-13', '2018-12-18', '14:30:00', 'pusingg pala', 'TI07', 21, ''),
(6, 4, '2018-12-28', '2018-12-12', '14:04:00', 'pusing', 'TI05', 234, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_penjualan` char(7) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `uang_bayar` int(12) NOT NULL,
  `kd_petugas` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_penjualan`, `tgl_penjualan`, `pelanggan`, `keterangan`, `uang_bayar`, `kd_petugas`) VALUES
('JL00001', '2014-01-08', 'Pelanggan', 'dengan Resep Obat', 400000, 'P001'),
('JL00002', '2014-01-09', 'Pelanggan', 'dengan Resep Obat', 300000, 'P001'),
('JL00003', '2014-01-10', 'Pelanggan', 'dengan Resep Obat', 250000, 'P001'),
('JL00004', '2014-01-11', 'Pelanggan', 'dengan Resep Obat', 200000, 'P001'),
('JL00005', '2014-01-11', 'Pelanggan', 'dengan Resep Obat', 250000, 'P001'),
('JL00006', '2014-01-20', 'Pelanggan', 'dengan Resep Obat', 260000, 'P001'),
('JL00007', '2014-01-21', 'Pelanggan', 'dengan Resep Obat', 150000, 'P001'),
('JL00008', '2014-02-08', 'Pasien', 'Pengobatan Herbal', 200000, 'P001');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_item`
--

CREATE TABLE `penjualan_item` (
  `no_penjualan` char(7) NOT NULL,
  `kd_obat` char(5) NOT NULL,
  `harga_modal` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `jumlah` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_item`
--

INSERT INTO `penjualan_item` (`no_penjualan`, `kd_obat`, `harga_modal`, `harga_jual`, `jumlah`) VALUES
('JL00001', 'H0001', 37000, 50000, 2),
('JL00001', 'H0002', 85000, 100000, 3),
('JL00002', 'H0013', 165000, 200000, 1),
('JL00002', 'H0022', 39500, 70000, 1),
('JL00003', 'H0005', 10000, 15000, 4),
('JL00003', 'H0010', 27000, 45000, 1),
('JL00003', 'H0017', 24000, 42500, 1),
('JL00003', 'H0018', 20000, 26500, 3),
('JL00004', 'H0013', 165000, 200000, 1),
('JL00005', 'H0011', 27500, 50000, 4),
('JL00005', 'H0012', 25000, 45000, 1),
('JL00006', 'H0015', 22000, 40000, 4),
('JL00006', 'H0002', 85000, 100000, 1),
('JL00007', 'H0001', 37000, 50000, 1),
('JL00007', 'H0002', 85000, 100000, 1),
('JL00008', 'H0001', 37000, 50000, 1),
('JL00008', 'H0002', 85000, 100000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kd_petugas` char(4) NOT NULL,
  `nm_petugas` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'Kasir'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kd_petugas`, `nm_petugas`, `no_telepon`, `username`, `password`, `level`) VALUES
('P001', 'Bunafit Nugroho', '081192345111', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
('P002', 'Fitria Prasetya', '081192244563', 'fitria', 'ef208a5dfcfc3ea9941d7a6c43841784', 'Klinik'),
('P003', 'Septi Suhesti', '081193342223', 'septi', 'd58d8a16aa666d48fbcc30bd3217fb17', 'Apotek');

-- --------------------------------------------------------

--
-- Table structure for table `rawat`
--

CREATE TABLE `rawat` (
  `no_rawat` char(7) NOT NULL,
  `tgl_rawat` date NOT NULL,
  `nomor_rm` char(6) NOT NULL,
  `hasil_diagnosa` varchar(100) NOT NULL,
  `uang_bayar` int(12) NOT NULL,
  `kd_petugas` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rawat`
--

INSERT INTO `rawat` (`no_rawat`, `tgl_rawat`, `nomor_rm`, `hasil_diagnosa`, `uang_bayar`, `kd_petugas`) VALUES
('RP00001', '2014-01-05', 'RM0001', 'sakit gigi', 0, 'P001'),
('RP00002', '2014-01-11', 'RM0002', 'gigi kotor', 175000, 'P001'),
('RP00003', '2014-01-11', 'RM0003', 'tambal gigi', 100000, 'P001'),
('RP00004', '2014-01-11', 'RM0004', 'sakit gigi', 125000, 'P001'),
('RP00005', '2014-11-01', 'RM0005', 'Sakit gigi', 150000, 'P001'),
('RP00006', '2014-01-11', 'RM0006', 'sakit gigi', 250000, 'P001'),
('RP00007', '2014-11-01', 'RM0004', 'sakit gigi', 350000, 'P001'),
('RP00008', '2014-11-01', 'RM0008', 'bongkar tambalan', 150000, 'P001'),
('RP00009', '2014-01-24', 'RM0011', '', 150000, 'P001'),
('RP00010', '2014-02-09', 'RM0005', 'sakit gigi', 160000, 'P001');

-- --------------------------------------------------------

--
-- Table structure for table `rawat_tindakan`
--

CREATE TABLE `rawat_tindakan` (
  `id_tindakan` int(7) NOT NULL,
  `tgl_tindakan` date NOT NULL,
  `no_rawat` char(7) NOT NULL,
  `kd_tindakan` char(4) NOT NULL,
  `harga` int(10) NOT NULL,
  `kd_dokter` char(4) NOT NULL,
  `bagi_hasil_dokter` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rawat_tindakan`
--

INSERT INTO `rawat_tindakan` (`id_tindakan`, `tgl_tindakan`, `no_rawat`, `kd_tindakan`, `harga`, `kd_dokter`, `bagi_hasil_dokter`) VALUES
(1, '2014-01-05', 'RP00001', 'T001', 50000, 'D001', 10),
(2, '2014-01-05', 'RP00001', 'T022', 100000, 'D001', 10),
(3, '2014-01-05', 'RP00001', 'T023', 125000, 'D002', 10),
(4, '2014-01-05', 'RP00001', 'T023', 125000, 'D002', 10),
(5, '2014-01-11', 'RP00002', 'T002', 175000, 'D001', 10),
(6, '2014-01-11', 'RP00003', 'T005', 100000, 'D002', 10),
(7, '2014-01-11', 'RP00004', 'T022', 100000, 'D003', 10),
(8, '2014-01-11', 'RP00004', 'T023', 125000, 'D002', 10),
(9, '2014-11-01', 'RP00005', 'T024', 150000, 'D002', 10),
(10, '2014-01-11', 'RP00006', 'T001', 50000, 'D004', 10),
(11, '2014-01-11', 'RP00006', 'T025', 200000, 'D001', 10),
(12, '2014-11-01', 'RP00007', 'T024', 150000, 'D001', 10),
(13, '2014-11-01', 'RP00007', 'T011', 200000, 'D001', 10),
(14, '2014-11-01', 'RP00008', 'T001', 50000, 'D002', 10),
(15, '2014-11-01', 'RP00008', 'T007', 100000, 'D001', 10),
(16, '2014-01-12', 'RP00003', 'T024', 150000, 'D002', 10),
(17, '2014-01-12', 'RP00001', 'T009', 150000, 'D002', 10),
(20, '2014-01-24', 'RP00009', 'T003', 200000, 'D002', 10),
(21, '2014-02-09', 'RP00010', 'T023', 100000, 'D002', 10),
(22, '2014-02-09', 'RP00010', 'T001', 55000, 'D002', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `kd_tindakan` char(4) NOT NULL,
  `nm_tindakan` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`kd_tindakan`, `nm_tindakan`, `harga`) VALUES
('T001', 'KONSULTASI / PREMEDIKASI ', 55000),
('T002', 'SCALLING - Pembersihan Karang Gigi - Sedikit', 175000),
('T003', 'SCALLING - Pembersihan Karang Gigi - Sedang', 200000),
('T004', 'SCALLING - Pembersihan Karang Gigi - Banyak', 250000),
('T005', 'PENAMBALAN - Penambalan Sementara', 100000),
('T006', 'PENAMBALAN - Preparasi (Sterilisiasi Saluran Akar)', 125000),
('T007', 'PENAMBALAN - Bongkar Tambalan (Open Bur)', 100000),
('T008', 'PENAMBALAN - Pengisian Saluran Akar', 150000),
('T009', 'PENAMBALAN - Tambal Amalgam', 150000),
('T010', 'PENAMBALAN - Tambal Puji (GIC) - Anak', 175000),
('T011', 'PENAMBALAN - Tambal Puji (GIC) - Dewasa', 200000),
('T012', 'PENAMBALAN - Tambal Sinar (Composite) - Kecil', 175000),
('T013', 'PENAMBALAN - Tambal Sinar (Composite) - Sedang', 200000),
('T014', 'PENAMBALAN - Tambal Sinar (Composite) - Besar', 250000),
('T015', 'PENAMBALAN - Tambal Sinar (Composite) - Selubung/Dibentuk', 300000),
('T016', 'PENAMBALAN - Pengisian Saluran Akar + Tambal Puji', 300000),
('T017', 'PENAMBALAN - Pengisian Saluran Akar + Tambal Sinar', 350000),
('T018', 'PENAMBALAN - Pengisian Saluran Akar + Tambal Metode Sandwich', 400000),
('T019', 'PENAMBALAN - Pasak', 150000),
('T020', 'PENAMBALAN - Inlay/Onlay dari Bahan Metal + Cetak', 1000000),
('T021', 'PENAMBALAN - Inlay/Onlay dari Bahan Metal Porselin + Cetak', 1500000),
('T022', 'PENCABUTAN GIGI - Gigi Susu dg Anestesi Chlor Ethyl (Tanpa Suntik)', 100000),
('T023', 'PENCABUTAN GIGI - Gigi Susu dg Anestesi PH Cain (Dengan Suntik)', 125000),
('T024', 'PENCABUTAN GIGI - Gigi Dewasa (Sisa Akar / Akar Satu)', 150000),
('T025', 'PENCABUTAN GIGI - Gigi Dewasa (Lebih dari Satu Akar)', 200000),
('T026', 'PENCABUTAN GIGI - Gigi Dewasa dg Faktor Penyulit (Komplikasi)', 400000),
('T027', 'Batal Setelah Anestesis', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penjualan`
--

CREATE TABLE `tmp_penjualan` (
  `id` int(10) NOT NULL,
  `kd_obat` char(5) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `kd_petugas` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_rawat`
--

CREATE TABLE `tmp_rawat` (
  `id` int(10) NOT NULL,
  `kd_tindakan` char(4) NOT NULL,
  `harga` int(12) NOT NULL,
  `kd_dokter` char(4) NOT NULL,
  `bagi_hasil_dokter` int(4) NOT NULL,
  `kd_petugas` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dafatarlogin`
--
ALTER TABLE `dafatarlogin`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`kd_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kd_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`nomor_rm`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`no_daftar`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_penjualan`);

--
-- Indexes for table `penjualan_item`
--
ALTER TABLE `penjualan_item`
  ADD KEY `nomor_penjualan_tamu` (`no_penjualan`,`kd_obat`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indexes for table `rawat`
--
ALTER TABLE `rawat`
  ADD PRIMARY KEY (`no_rawat`);

--
-- Indexes for table `rawat_tindakan`
--
ALTER TABLE `rawat_tindakan`
  ADD PRIMARY KEY (`id_tindakan`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`kd_tindakan`);

--
-- Indexes for table `tmp_penjualan`
--
ALTER TABLE `tmp_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_rawat`
--
ALTER TABLE `tmp_rawat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dafatarlogin`
--
ALTER TABLE `dafatarlogin`
  MODIFY `id_login` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `nomor_rm` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `no_daftar` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rawat_tindakan`
--
ALTER TABLE `rawat_tindakan`
  MODIFY `id_tindakan` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tmp_penjualan`
--
ALTER TABLE `tmp_penjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tmp_rawat`
--
ALTER TABLE `tmp_rawat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
