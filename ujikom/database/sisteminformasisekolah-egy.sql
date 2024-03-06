-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 09:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisteminformasisekolah-egy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `kd_agama` varchar(150) NOT NULL,
  `nama_agama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bagi kelas`
--

CREATE TABLE `bagi kelas` (
  `kelas` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `no_presensi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(150) NOT NULL,
  `marital` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `nama_pt` varchar(255) NOT NULL,
  `ijazah` varchar(100) NOT NULL,
  `lulus` varchar(100) NOT NULL,
  `golongan` varchar(150) NOT NULL,
  `kel` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kelas` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `hari` datetime NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kd_kelas` varchar(100) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` varchar(100) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `tahun` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `nil_b_indo` varchar(50) NOT NULL,
  `nil_matematika` varchar(50) NOT NULL,
  `nil_agama` varchar(50) NOT NULL,
  `nil_ipa` varchar(50) NOT NULL,
  `nil_pkn` varchar(50) NOT NULL,
  `nil_ips` varchar(50) NOT NULL,
  `nil_sbk` varchar(50) NOT NULL,
  `nil_penjas` varchar(50) NOT NULL,
  `nil_b_ing` varchar(50) NOT NULL,
  `nil_mulok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `agama` varchar(150) NOT NULL,
  `ayah` varchar(255) NOT NULL,
  `ibu` varchar(255) NOT NULL,
  `pekerjaan_ayah` varchar(200) NOT NULL,
  `pekerjaan_ibu` varchar(200) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tahun ajaran`
--

CREATE TABLE `tahun ajaran` (
  `id_tahunajaran` varchar(100) NOT NULL,
  `tahun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indexes for table `bagi kelas`
--
ALTER TABLE `bagi kelas`
  ADD PRIMARY KEY (`kelas`,`tahun`,`nis`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`agama`,`nip`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kelas`,`tahun`,`mapel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nis`,`tahun`,`kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`,`agama`);

--
-- Indexes for table `tahun ajaran`
--
ALTER TABLE `tahun ajaran`
  ADD PRIMARY KEY (`id_tahunajaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
