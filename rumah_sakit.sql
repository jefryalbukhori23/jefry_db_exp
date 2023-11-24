-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2023 pada 04.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumah_sakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rumah_sakit` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `id_rumah_sakit`, `name`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administrasi', 30000, NULL, NULL),
(2, 1, 'Obat & Alkes', 100000, NULL, NULL),
(3, 1, 'Pemeriksaan', 50000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirs`
--

CREATE TABLE `kasirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rumah_sakit` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kasirs`
--

INSERT INTO `kasirs` (`id`, `id_rumah_sakit`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ardi Kurniawan S.E', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rumah_sakit` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasiens`
--

INSERT INTO `pasiens` (`id`, `id_rumah_sakit`, `name`, `alamat`, `no_rm`, `tgl_lahir`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adi Purnama', 'Malang', '111222333', '2023-11-24', NULL, NULL),
(2, 1, 'Rio Pangestu', 'Pagelaran', '234356443', '2023-11-24', NULL, NULL),
(3, 1, 'Agus Saputra', 'Jakarta', '23434234234', '2023-11-24', NULL, NULL),
(4, 1, 'Diki Wahyudi', 'Belimbing', '564532124', '2023-11-24', NULL, NULL),
(5, 1, 'Riko', 'Jl Sawojajar', 't5643536445', '2023-11-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumah_sakits`
--

CREATE TABLE `rumah_sakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rumah_sakits`
--

INSERT INTO `rumah_sakits` (`id`, `name`, `alamat`, `telp`, `email`, `fax`, `created_at`, `updated_at`) VALUES
(1, 'RS WAVA HUSADA', 'Jl. Panglima Sudirman 99A Kepanjen', '0341-393000', 'info@wavahusada.com', '0341-393000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rumah_sakit` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pasien` bigint(20) UNSIGNED DEFAULT NULL,
  `id_kasir` bigint(20) UNSIGNED DEFAULT NULL,
  `no_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_billing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrs` date NOT NULL,
  `krs` date NOT NULL,
  `no_mava` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_lain` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `diskon` bigint(20) NOT NULL,
  `deposit` bigint(20) NOT NULL,
  `total_bayar` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `id_rumah_sakit`, `id_pasien`, `id_kasir`, `no_invoice`, `no_billing`, `mrs`, `krs`, `no_mava`, `biaya_lain`, `total`, `diskon`, `deposit`, `total_bayar`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'INV-009-3231', '2136121', '2023-11-24', '2023-11-24', '0987564579', 0, 180000, 0, 0, 180000, NULL, NULL),
(2, 1, 2, 1, '985674758', '90657689', '2023-11-24', '2023-11-24', '54675890', 0, 80000, 0, 0, 80000, NULL, NULL),
(3, 1, 3, 1, 'uyrty6456454', '645646456', '2023-11-24', '2023-11-24', '54765643', 0, 50000, 0, 0, 50000, NULL, NULL),
(4, 1, 4, 1, 'rtyyutry45645', '546456456', '2023-11-24', '2023-11-24', '54645645645', 0, 100000, 0, 0, 100000, NULL, NULL),
(5, 1, 5, 1, 'fgdhsdfsdf', 'fsdfsdfsd', '2023-11-17', '2023-11-22', '34353423', 0, 30000, 0, 0, 30000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rumah_sakit` bigint(20) UNSIGNED DEFAULT NULL,
  `id_transaksi` bigint(20) UNSIGNED DEFAULT NULL,
  `id_item` bigint(20) UNSIGNED DEFAULT NULL,
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `id_rumah_sakit`, `id_transaksi`, `id_item`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 30000, NULL, NULL),
(2, 1, 1, 2, 100000, NULL, NULL),
(3, 1, 1, 3, 50000, NULL, NULL),
(4, 1, 2, 1, 30000, NULL, NULL),
(5, 1, 2, 3, 50000, NULL, NULL),
(6, 1, 3, 3, 50000, NULL, NULL),
(7, 1, 4, 2, 100000, NULL, NULL),
(8, 1, 5, 1, 30000, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_id_rumah_sakit_foreign` (`id_rumah_sakit`);

--
-- Indeks untuk tabel `kasirs`
--
ALTER TABLE `kasirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kasirs_id_rumah_sakit_foreign` (`id_rumah_sakit`);

--
-- Indeks untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasiens_id_rumah_sakit_foreign` (`id_rumah_sakit`);

--
-- Indeks untuk tabel `rumah_sakits`
--
ALTER TABLE `rumah_sakits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_id_rumah_sakit_foreign` (`id_rumah_sakit`),
  ADD KEY `transaksis_id_pasien_foreign` (`id_pasien`),
  ADD KEY `transaksis_id_kasir_foreign` (`id_kasir`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_id_rumah_sakit_foreign` (`id_rumah_sakit`),
  ADD KEY `transaksi_details_id_transaksi_foreign` (`id_transaksi`),
  ADD KEY `transaksi_details_id_item_foreign` (`id_item`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kasirs`
--
ALTER TABLE `kasirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rumah_sakits`
--
ALTER TABLE `rumah_sakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_id_rumah_sakit_foreign` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakits` (`id`);

--
-- Ketidakleluasaan untuk tabel `kasirs`
--
ALTER TABLE `kasirs`
  ADD CONSTRAINT `kasirs_id_rumah_sakit_foreign` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakits` (`id`);

--
-- Ketidakleluasaan untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  ADD CONSTRAINT `pasiens_id_rumah_sakit_foreign` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakits` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_id_kasir_foreign` FOREIGN KEY (`id_kasir`) REFERENCES `kasirs` (`id`),
  ADD CONSTRAINT `transaksis_id_pasien_foreign` FOREIGN KEY (`id_pasien`) REFERENCES `pasiens` (`id`),
  ADD CONSTRAINT `transaksis_id_rumah_sakit_foreign` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakits` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_id_item_foreign` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `transaksi_details_id_rumah_sakit_foreign` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakits` (`id`),
  ADD CONSTRAINT `transaksi_details_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksis` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
