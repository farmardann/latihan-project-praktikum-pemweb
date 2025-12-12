-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Des 2025 pada 14.41
-- Versi server: 8.4.3
-- Versi PHP: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `email`, `password`, `username`) VALUES
(1, 'farmacodes@gmail.com', '$2y$10$HiUDB.K6v7/3P3rgosAEWuiq6riNKqXh/XnfJmS0.Vr3Dv/ZWkFB.', 'farmaardan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_categories`
--

CREATE TABLE `tb_categories` (
  `id` int NOT NULL,
  `photo` varchar(50) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_categories`
--

INSERT INTO `tb_categories` (`id`, `photo`, `categories`, `price`, `description`) VALUES
(1, '691c14258d7c1.png', 'Anggora', 15000, 'Kucing Langka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaction`
--

CREATE TABLE `tb_transaction` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomorhp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_transaction`
--

INSERT INTO `tb_transaction` (`id`, `nama`, `nomorhp`, `alamat`, `jenis`, `harga`, `status`, `tanggal`) VALUES
(1, 'Farma Ardan', '089123456', 'Jl. Abdul Ghonaim', 'Anggora', '15000', 'succes', '2025-11-18'),
(2, 'Kevin', '089754123', 'Jl. Sumbersari ', 'Anggora', '15000', 'succes', '2025-11-18'),
(3, 'Jackson', '086777777', 'Jl. Karangploso', 'Anggora', '15000', 'succes', '2025-11-18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_transaction`
--
ALTER TABLE `tb_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_transaction`
--
ALTER TABLE `tb_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
