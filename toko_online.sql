-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2019 pada 11.16
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu merek nike plus', 'Pakaian Pria', 300000, 4, 'sepatu.jpg'),
(2, 'Kamera', 'Kamera Plus', 'Elektronik', 3000000, 3, 'kamera.jpg'),
(3, 'Smartphone', 'Samsung A7', 'Elektronik', 2500000, 2, 'hp.jpg'),
(4, 'Laptop', 'Laptop Asus', 'Elektronik', 7000000, 7, 'laptop.jpg'),
(9, 'Baju Wanita', 'Top Seller', 'Pakaian Wanita', 700000, 7, 'baju21.jpg'),
(10, 'Baju Ank', 'Top Seller', 'Pakaian Anak-anak', 200000, 6, 'bajuanak1.jpg'),
(11, 'Barbel 7KG', 'Top Seller', 'Peralatan Olahraga', 1500000, 20, 'barbel7kg_php.jpg'),
(13, 'Jam Tangan', 'Top Seller', 'Pakaian Pria', 700000, 35, 'jam12.jpg'),
(14, 'Baju Wanita', 'Top Seller', 'Pakaian Pria', 700000, 2, 'baju211.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Gela Zulwikri', 'Ciawi, Bogor', '2019-07-15 00:02:59', '2019-07-16 00:02:59'),
(2, 'Asep', 'jakarta', '2019-07-15 00:07:46', '2019-07-16 00:07:46'),
(3, '', '', '2019-07-17 23:23:44', '2019-07-18 23:23:44'),
(4, '', '', '2019-07-17 23:23:56', '2019-07-18 23:23:56'),
(5, '', '', '2019-07-17 23:25:14', '2019-07-18 23:25:14'),
(6, '', '', '2019-07-17 23:26:25', '2019-07-18 23:26:25'),
(7, '', '', '2019-07-17 23:29:09', '2019-07-18 23:29:09'),
(8, '', '', '2019-07-18 02:13:14', '2019-07-19 02:13:14'),
(9, '', '', '2019-07-18 07:42:35', '2019-07-19 07:42:35'),
(10, '', '', '2019-07-26 00:25:05', '2019-07-27 00:25:05'),
(11, '', '', '2019-07-26 00:40:17', '2019-07-27 00:40:17'),
(12, 'Asep', 'jakarta', '2019-07-26 00:51:02', '2019-07-27 00:51:02'),
(13, 'Asep', 'jakarta', '2019-07-26 13:46:25', '2019-07-27 13:46:25'),
(14, '', '', '2019-09-18 09:28:09', '2019-09-19 09:28:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu', 1, 300000, ''),
(2, 1, 2, 'Kamera', 1, 3000000, ''),
(3, 1, 3, 'Smartphone', 1, 2500000, ''),
(4, 1, 4, 'Laptop', 1, 7000000, ''),
(5, 2, 3, 'Smartphone', 1, 2500000, ''),
(6, 3, 1, 'Sepatu', 1, 300000, ''),
(7, 4, 1, 'Sepatu', 1, 300000, ''),
(8, 5, 2, 'Kamera', 2, 3000000, ''),
(9, 6, 2, 'Kamera', 3, 3000000, ''),
(10, 7, 2, 'Kamera', 1, 3000000, ''),
(11, 8, 1, 'Sepatu', 1, 300000, ''),
(12, 9, 1, 'Sepatu', 1, 300000, ''),
(13, 10, 1, 'Sepatu', 1, 300000, ''),
(14, 11, 5, 'Jam Tangan', 1, 1500000, ''),
(15, 12, 13, 'Jam Tangan', 2, 700000, ''),
(16, 13, 1, 'Sepatu', 1, 300000, ''),
(17, 13, 2, 'Kamera', 1, 3000000, ''),
(18, 14, 10, 'Baju Ank', 1, 200000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Asep', 'asepman', '123', 2),
(4, 'Muhamad Iqbal', 'iqbal', '12345', 2),
(5, 'Asep', 'asep', '12345', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
