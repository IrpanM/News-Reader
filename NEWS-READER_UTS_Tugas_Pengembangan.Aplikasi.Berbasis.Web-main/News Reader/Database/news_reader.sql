-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2021 pada 02.32
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_reader`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_artikel`
--

CREATE TABLE `tabel_artikel` (
  `Id_Artikel` int(5) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL,
  `Gambar` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Hits` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_galeri`
--

CREATE TABLE `tabel_galeri` (
  `Id_Galeri` int(5) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Gambar` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_halaman`
--

CREATE TABLE `tabel_halaman` (
  `Id_Halaman` int(5) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_komentar`
--

CREATE TABLE `tabel_komentar` (
  `Id_Komentar` int(5) NOT NULL,
  `Id_Artikel` int(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Komentar` text NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `Id_Menu` int(5) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Link` varchar(50) NOT NULL,
  `Urutan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pesan`
--

CREATE TABLE `tabel_pesan` (
  `Id_Pesan` int(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Pesan` text NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_submenu`
--

CREATE TABLE `tabel_submenu` (
  `Id_Submenu` int(5) NOT NULL,
  `Id_Menu` int(5) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Link` varchar(50) NOT NULL,
  `Urutan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `Id_User` int(5) NOT NULL,
  `Ussername` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_artikel`
--
ALTER TABLE `tabel_artikel`
  ADD PRIMARY KEY (`Id_Artikel`);

--
-- Indeks untuk tabel `tabel_galeri`
--
ALTER TABLE `tabel_galeri`
  ADD PRIMARY KEY (`Id_Galeri`);

--
-- Indeks untuk tabel `tabel_halaman`
--
ALTER TABLE `tabel_halaman`
  ADD PRIMARY KEY (`Id_Halaman`);

--
-- Indeks untuk tabel `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  ADD PRIMARY KEY (`Id_Komentar`);

--
-- Indeks untuk tabel `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`Id_Menu`);

--
-- Indeks untuk tabel `tabel_pesan`
--
ALTER TABLE `tabel_pesan`
  ADD PRIMARY KEY (`Id_Pesan`);

--
-- Indeks untuk tabel `tabel_submenu`
--
ALTER TABLE `tabel_submenu`
  ADD PRIMARY KEY (`Id_Submenu`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`Id_User`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_artikel`
--
ALTER TABLE `tabel_artikel`
  MODIFY `Id_Artikel` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_galeri`
--
ALTER TABLE `tabel_galeri`
  MODIFY `Id_Galeri` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_halaman`
--
ALTER TABLE `tabel_halaman`
  MODIFY `Id_Halaman` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  MODIFY `Id_Komentar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `Id_Menu` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_pesan`
--
ALTER TABLE `tabel_pesan`
  MODIFY `Id_Pesan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_submenu`
--
ALTER TABLE `tabel_submenu`
  MODIFY `Id_Submenu` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `Id_User` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
