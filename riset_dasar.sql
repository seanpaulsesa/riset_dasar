-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 07:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riset_dasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_users`
--

CREATE TABLE `data_users` (
  `id` int(20) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `no_nik` int(20) NOT NULL,
  `jensi_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `alamat_1` varchar(255) NOT NULL,
  `alamat_2` varchar(255) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `data_ktp` varchar(255) NOT NULL,
  `tahun_masuk_organisasi` varchar(255) NOT NULL,
  `tahun_mpab` varchar(255) NOT NULL,
  `tahun_mabim` varchar(255) NOT NULL,
  `tahun_ikk` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `status_aktif_tidak_aktif` varchar(255) NOT NULL,
  `kampus` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `status_aktif_sudah_selesai` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(20) NOT NULL,
  `username` int(255) NOT NULL,
  `email_verified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_akses`
--

CREATE TABLE `tbl_informasi_akses` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `status_akses` varchar(255) NOT NULL,
  `hak_akses` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_arsip`
--

CREATE TABLE `tbl_informasi_arsip` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `kode_arsip` varchar(255) NOT NULL,
  `jenis_arsip` varchar(255) NOT NULL,
  `nomor_arsip` varchar(255) NOT NULL,
  `tanggal_arsip` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_biaya`
--

CREATE TABLE `tbl_informasi_biaya` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `biaya_kegiatan` varchar(255) NOT NULL,
  `sumber_dana` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_dokumen`
--

CREATE TABLE `tbl_informasi_dokumen` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `judul_dokumen` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_kegiatan`
--

CREATE TABLE `tbl_informasi_kegiatan` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_lainya`
--

CREATE TABLE `tbl_informasi_lainya` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `agenda_kegiatan` varchar(255) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_peserta`
--

CREATE TABLE `tbl_informasi_peserta` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `jumlah_peserta` varchar(255) NOT NULL,
  `target_peserta` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi_waktu_dan_tempat`
--

CREATE TABLE `tbl_informasi_waktu_dan_tempat` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `tempat_kegiatan` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lokasi_penyimpanan`
--

CREATE TABLE `tbl_lokasi_penyimpanan` (
  `id` int(20) NOT NULL,
  `kesekjanan` varchar(255) NOT NULL,
  `media_penyimpanan` varchar(255) NOT NULL,
  `lokasi_fisik` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `upadated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penanggung_jawab`
--

CREATE TABLE `tbl_penanggung_jawab` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(255) NOT NULL,
  `kontak_penanggung_jawab` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_kegiatan`
--

CREATE TABLE `tbl_status_kegiatan` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `status_kegiatan` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `no_urut` int(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id` int(20) NOT NULL,
  `kesekjenan` varchar(255) NOT NULL,
  `no_urut` varchar(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `bpom` varchar(255) NOT NULL,
  `pirt` varchar(255) NOT NULL,
  `halal` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(20) NOT NULL,
  `username` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_akses`
--
ALTER TABLE `tbl_informasi_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_arsip`
--
ALTER TABLE `tbl_informasi_arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_biaya`
--
ALTER TABLE `tbl_informasi_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_dokumen`
--
ALTER TABLE `tbl_informasi_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_kegiatan`
--
ALTER TABLE `tbl_informasi_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_lainya`
--
ALTER TABLE `tbl_informasi_lainya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_peserta`
--
ALTER TABLE `tbl_informasi_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi_waktu_dan_tempat`
--
ALTER TABLE `tbl_informasi_waktu_dan_tempat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lokasi_penyimpanan`
--
ALTER TABLE `tbl_lokasi_penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penanggung_jawab`
--
ALTER TABLE `tbl_penanggung_jawab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status_kegiatan`
--
ALTER TABLE `tbl_status_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_users`
--
ALTER TABLE `data_users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_akses`
--
ALTER TABLE `tbl_informasi_akses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_arsip`
--
ALTER TABLE `tbl_informasi_arsip`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_biaya`
--
ALTER TABLE `tbl_informasi_biaya`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_dokumen`
--
ALTER TABLE `tbl_informasi_dokumen`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_kegiatan`
--
ALTER TABLE `tbl_informasi_kegiatan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_lainya`
--
ALTER TABLE `tbl_informasi_lainya`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_peserta`
--
ALTER TABLE `tbl_informasi_peserta`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_informasi_waktu_dan_tempat`
--
ALTER TABLE `tbl_informasi_waktu_dan_tempat`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lokasi_penyimpanan`
--
ALTER TABLE `tbl_lokasi_penyimpanan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_penanggung_jawab`
--
ALTER TABLE `tbl_penanggung_jawab`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_status_kegiatan`
--
ALTER TABLE `tbl_status_kegiatan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
