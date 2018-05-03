-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2018 at 12:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appspp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `hp` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `tb_sekolah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenjang`
--

CREATE TABLE `tb_jenjang` (
  `id` int(11) NOT NULL,
  `jenjang` varchar(45) DEFAULT NULL,
  `tb_sekolah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nominal` int(11) DEFAULT NULL,
  `awal` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `jenis` int(11) DEFAULT NULL,
  `jenjang` varchar(100) DEFAULT NULL,
  `tb_sekolah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `kontak` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kode_pos` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sisadmin`
--

CREATE TABLE `tb_sisadmin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `alamat` text,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nisn` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tb_jenjang_id` int(11) NOT NULL,
  `tb_sekolah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa_has_tb_pembayaran`
--

CREATE TABLE `tb_siswa_has_tb_pembayaran` (
  `tb_siswa_id` int(11) NOT NULL,
  `tb_pembayaran_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `user_UNIQUE` (`username`),
  ADD UNIQUE KEY `nip_UNIQUE` (`nip`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_tb_admin_tb_sekolah1_idx` (`tb_sekolah_id`);

--
-- Indexes for table `tb_jenjang`
--
ALTER TABLE `tb_jenjang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_tb_jenjang_tb_sekolah1_idx` (`tb_sekolah_id`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tb_pembayaran_tb_sekolah1_idx` (`tb_sekolah_id`);

--
-- Indexes for table `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `nis_UNIQUE` (`nis`);

--
-- Indexes for table `tb_sisadmin`
--
ALTER TABLE `tb_sisadmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `nik_UNIQUE` (`nik`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `nisn_UNIQUE` (`nisn`),
  ADD KEY `fk_tb_siswa_tb_jenjang1_idx` (`tb_jenjang_id`),
  ADD KEY `fk_tb_siswa_tb_sekolah1_idx` (`tb_sekolah_id`);

--
-- Indexes for table `tb_siswa_has_tb_pembayaran`
--
ALTER TABLE `tb_siswa_has_tb_pembayaran`
  ADD PRIMARY KEY (`tb_siswa_id`,`tb_pembayaran_id`),
  ADD KEY `fk_tb_siswa_has_tb_pembayaran_tb_pembayaran1_idx` (`tb_pembayaran_id`),
  ADD KEY `fk_tb_siswa_has_tb_pembayaran_tb_siswa_idx` (`tb_siswa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_jenjang`
--
ALTER TABLE `tb_jenjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_sisadmin`
--
ALTER TABLE `tb_sisadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `fk_tb_admin_tb_sekolah1` FOREIGN KEY (`tb_sekolah_id`) REFERENCES `tb_sekolah` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_jenjang`
--
ALTER TABLE `tb_jenjang`
  ADD CONSTRAINT `fk_tb_jenjang_tb_sekolah1` FOREIGN KEY (`tb_sekolah_id`) REFERENCES `tb_sekolah` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `fk_tb_pembayaran_tb_sekolah1` FOREIGN KEY (`tb_sekolah_id`) REFERENCES `tb_sekolah` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `fk_tb_siswa_tb_jenjang1` FOREIGN KEY (`tb_jenjang_id`) REFERENCES `tb_jenjang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_siswa_tb_sekolah1` FOREIGN KEY (`tb_sekolah_id`) REFERENCES `tb_sekolah` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_siswa_has_tb_pembayaran`
--
ALTER TABLE `tb_siswa_has_tb_pembayaran`
  ADD CONSTRAINT `fk_tb_siswa_has_tb_pembayaran_tb_pembayaran1` FOREIGN KEY (`tb_pembayaran_id`) REFERENCES `tb_pembayaran` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_siswa_has_tb_pembayaran_tb_siswa` FOREIGN KEY (`tb_siswa_id`) REFERENCES `tb_siswa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
