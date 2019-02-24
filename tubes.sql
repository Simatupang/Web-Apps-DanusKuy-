-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mei 2018 pada 17.31
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayar`
--

CREATE TABLE `bayar` (
  `id` int(50) NOT NULL,
  `event` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `ukm` varchar(250) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama_produk` varchar(250) NOT NULL,
  `penjelasan` varchar(250) NOT NULL,
  `stok` int(250) NOT NULL,
  `harga` int(12) NOT NULL,
  `chart` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bayar`
--

INSERT INTO `bayar` (`id`, `event`, `icon`, `ukm`, `gambar`, `nama_produk`, `penjelasan`, `stok`, `harga`, `chart`) VALUES
(2, 'Parama Budaya', '10957258_1063556920326481_1768840582_a.jpg', 'Ukm Djawa', 'baju-batik-pria.jpg', 'Baju Batik Pria', 'ini adalah baju batik', 50, 100000, 2),
(3, 'Parama Budaya 2018', '10957258_1063556920326481_1768840582_a.jpg', 'Ukm Djawa', 'gelang_gunung___gelang_tali_prusik.jpg', 'Kalung', 'ini Kalung', 20, 10000, 1),
(4, 'tes', '10957258_1063556920326481_1768840582_a.jpg', 'tes', 'gelang_gunung___gelang_tali_prusik.jpg', 'tes', 'tes', 1111, 1111, 3),
(5, 'kudakuda', 'sashimi.jpg', 'kbms', 'beach-style-blue-background-1080p_qyvzckhb__F0000.png', 'tes', 'tes', 10, 10000, 1),
(6, 'Teater', 'jawa.jpg', 'jawa', 'soba.jpg', 'Baju Adat', 'ini baju adat', 100, 90000, 1),
(7, 'Anniversary', 'kbms.jpg', 'KBMS', 'sushi.jpg', 'Sushi', 'ini Sushi', 11, 100000, 3),
(8, 'Anniversary', 'kbms.jpg', 'KBMS', 'sushi.jpg', 'Sushi', 'ini Sushi', 11, 100000, 1),
(9, 'Parama Budaya 2019', 'jawa.jpg', 'jawa', 'sushi.jpg', 'pda suatu har', 'pada suatu hari', 100, 1000000, 2),
(10, 'apakah', 'kbms.jpg', 'KBMS', '30762961_1597473560322147_7198864081401077233_n.jpg', 'recipe', 'recipe mandiri', 12, 1234546, 2),
(11, 'asddsa', 'jawa.jpg', 'jawa', 'diytailoring.jpg', 'saddsasad', 'asddsadsa', 0, 123123, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `imageurl` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `subtitle` varchar(20) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `target` int(20) NOT NULL,
  `terkumpul` int(20) NOT NULL,
  `tercapai` int(5) NOT NULL,
  `hari` int(5) NOT NULL,
  `linkfb` varchar(50) NOT NULL DEFAULT 'http://www.facebook.com',
  `linkig` varchar(50) NOT NULL DEFAULT 'http://instagram.com',
  `linktwitter` varchar(50) NOT NULL DEFAULT 'http://twitter.com',
  `about` varchar(1000) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `user_id`, `imageurl`, `title`, `subtitle`, `kategori`, `content`, `target`, `terkumpul`, `tercapai`, `hari`, `linkfb`, `linkig`, `linktwitter`, `about`, `date`, `time`, `location`) VALUES
(1, 1, 'assets/img/parambudaya.jpg', 'PARAMABUDAYA 2018', 'UKM DJAWA', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et magna sed enim pharetra pretium. Pellentesque in consequat tortor, et dignissim dui. Duis mollis lacinia mollis.', 7542000, 5872000, 81, 15, 'http://www.facebook.com', 'http://instagram.com', 'http://twitter.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet sollicitudin nisl condimentum dignissim. Quisque sed lorem augue. Duis vel dignissim ipsum. Aliquam euismod viverra bibendum. Curabitur lobortis non diam a ultricies. Integer dapibus posuere nisl sit amet tincidunt. Phasellus blandit arcu sed vehicula semper. Nam sed ante vitae ante pharetra commodo eget eget nunc. Maecenas sodales id nunc quis auctor. Nunc tincidunt in tellus vel elementum.', '11 Februari 2018', '08.00 WIB - Selesai', 'Universitas Telkom\r\nLapangan parkir Fakultas Industri Kreatif\r\nJl. Telekomunikasi No. 01, Terusan Buah Batu, Bandung, Jawa Barat'),
(2, 1, 'assets/img/eventimage.png', 'Aksersi 2018', 'UKM Random', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et magna sed enim pharetra pretium. Pellentesque in consequat tortor, et dignissim dui. Duis mollis lacinia mollis.', 0, 5740000, 71, 15, 'http://www.facebook.com', 'http://instagram.com', 'http://twitter.com', '', '0000-00-00', '', ''),
(3, 0, 'assets/img/poster1.png', 'Gemasrin 2018', 'UKM Dua', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et magna sed enim pharetra pretium. Pellentesque in consequat tortor, et dignissim dui. Duis mollis lacinia mollis.', 0, 4655000, 68, 12, 'http://www.facebook.com', 'http://instagram.com', 'http://twitter.com', '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `eventupdate`
--

CREATE TABLE `eventupdate` (
  `id` int(10) NOT NULL,
  `idevent` int(10) NOT NULL,
  `imageurl` varchar(50) NOT NULL,
  `like` int(10) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `caption` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `eventupdate`
--

INSERT INTO `eventupdate` (`id`, `idevent`, `imageurl`, `like`, `updatedate`, `caption`) VALUES
(1, 1, 'assets/img/image2.png', 367, '21 Februari 2018', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet sollicitudin nisl condimentum dignissim. Quisque sed lorem augue. Duis vel dignissim ipsum. Aliquam euismod viverra bibendum.'),
(2, 1, 'assets/img/image3.png', 1536, '17 maret 2018', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet sollicitudin nisl condimentum dignissim. Quisque sed lorem augue. Duis vel dignissim ipsum. Aliquam euismod viverra bibendum.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(50) NOT NULL,
  `event` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `ukm` varchar(250) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama_produk` varchar(250) NOT NULL,
  `penjelasan` varchar(250) NOT NULL,
  `stok` int(250) NOT NULL,
  `harga` int(11) NOT NULL,
  `chart` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alamat` text NOT NULL,
  `metode` varchar(250) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `nama`, `alamat`, `metode`, `total`) VALUES
(2, 'Isnan', 'Sukabirus', 'Transfer', 100000),
(3, 'Joni', 'SUkapura', 'Transfer', 100000),
(4, 'Ryaan ', 'Sukapura', 'Transfer', 90000),
(9, 'lalala', 'kkakaka', 'Transfer', 220000),
(10, 'asdasd', 'sadasddsaasd', 'Transfer', 2981002);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `alamat` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama_lengkap`, `user_email`, `user_password`, `jenis_kelamin`, `no_telpon`, `alamat`) VALUES
(1, 'Hovely Wahyu Zaputra Simatupang', 'dumariasianipar.ds@gmail.com', 'simatupang98', 'Laki-Laki', '082277615753', 'Jalan Telekomunikasi No.1 Bandung'),
(2, 'gery Romual Sitompul', 'gerytompul@gmail.com', 'gerytompul123', 'Laki-Laki', '08982771883', 'Bandung'),
(3, 'Beatrice Silaban', 'beatricesilaban@gmail.com', 'beatrice123', 'Perempuan', '082217263778', 'Jalan Sukabirus, Gang PGA, No.107'),
(4, 'saddsaads', 'asdsda@g', 'sdaasdsda', 'Laki-laki', '231213321312321', 'asdadsdsaads');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventupdate`
--
ALTER TABLE `eventupdate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eventupdate`
--
ALTER TABLE `eventupdate`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
