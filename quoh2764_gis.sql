-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2020 at 02:58 AM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quoh2764_gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(8) NOT NULL,
  `title` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `fasilitas` varchar(500) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `title`, `address`, `telp`, `fasilitas`, `lat`, `lng`, `type`) VALUES
(1, 'Hotel Antares', 'Jl.Sisingamangaraja No.328 Medan, Sumatera Utara', '061-7324000', 'AC,WIFI,Bathub,TV ', 3.55707, 98.6974, 'Suite'),
(2, 'Hotel Adimulia ', 'Jl. Pangeran Diponegoro no. 8 20112 Medan', '+62 61 88817333', 'AC,Wifi,Kolam Renang,Sarapan, ', 3.58577, 98.6727, 'Suite '),
(3, 'Le Polonia Hotel', 'Jalan Jenderal Sudirman 14-18, Madras Hulu 20152 Medan North Sumatra', '-', 'AC,Kolam Renang,Lift,Wifi', 3.57859, 98.6753, 'VIP'),
(4, 'Hotel Menara Lexus', 'Jln. Sisingamangaraja 227 20218 Medan', '+62 61 7882777', 'AC,Wifi,Parkir', 3.56374, 98.6942, '2 Star '),
(5, 'Grand Mercure Maha Cipta Medan Angkasa', 'Jl. Sutomo No.1, Perintis, Kec. Medan Tim., Kota Medan, Sumatera Utara 20235', '(061) 4555888', 'AC,Kolam Renang,Lokasi Strategis', 3.60364, 98.6819, 'VIP '),
(6, 'The K Hotel Medan', 'Jalan Letjen Jamin Ginting No 741-742 20155 Medan', '(061) 80571100', 'Resto,Parkir,AC,Wifi', 3.56095, 98.6618, 'Suite'),
(7, 'Hotel Santika Premiere Dyandra', 'Jl. Maulana Lubis no. 7 20112 Medan', '+62 61 4511999', 'Wifi,AC,Sarapan,Kolam Renang', 3.596, 98.6716, 'Suite'),
(8, 'Grand Swiss-Belhotel Medan', 'JL. S. Parman 217 20152 Medan', '+62 61 4576999', 'AC,Wifi,Kolam Renang,Resto', 3.58037, 98.667, 'Five Star Hotel'),
(9, 'Condominium Danau Toba Hotel', 'Jl. Palang Merah, Kesawan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '0853-5956-7488', 'AC,Parkir,Wifi,Resto,Kolam Renang', 3.58464, 98.6796, 'Five Star Hotel'),
(10, 'Karibia Boutique Hotel\r\n', 'Jl. Timor Block J No. I - IV, Komplek Centre Point 20231 Medan', '+62 61 4552933', 'AC,TV,Wifi,Parkir,Resto', 3.5988, 98.6812, '4 Star Hotel'),
(11, 'Hotel Soechi International', 'Jl. Cirebon no. 76A 20212 Medan', '+62 61 4572665', 'Kolam Air Panas, Sauna, Wifi dll', 3.58447, 98.6836, 'Four Star'),
(12, 'Wisma Sederhana Budget Hotel', 'Jln. Selat Panjang No. 11C 20212 Medan', '+62 626 14159223', 'Wifi, Taman dll', 3.58334, 98.6848, 'Two Star'),
(13, 'Madani Medan Syariah Hotel\r\n', 'Jl. Singamangaraja/Amaliun no. 1 20142 Medan', '+62 61 7368800', 'Sauna, WIfi, Layanan Shuttle.', 3.53334, 98.7231, 'Four Star'),
(14, 'Grand Sakura Hotel\r\n', 'Jl. Prof. HM Yamin SH No. 41-43 20234 Medan', '+62 626 14568222', 'Sauna, WIfi, Layanan Shuttle dll', 3.5966, 98.6858, 'Three Star'),
(15, 'ibis Styles Medan Pattimura\r\n', 'Jalan Pattimura No 442Kelurahan DaratKecamatan Medan Baru 20153 MEDAN', '+62 61 88812300', 'WIfi, AC, Layanan Kebersihan, Kolam Renang, dll', 3.57389, 98.6636, 'Three Star'),
(16, 'Hotel Candi', 'Jl. Darussalam no. 124 Medan North Sumatra', '-', 'AC, Layanan Kamar, Layanan Shuttle,dll', 3.58741, 98.6508, 'Three Star Hotel'),
(17, 'Four Points By Sheraton Medan\r\n', 'Jalan Jendral Gatot Subroto No. 395 20119 Medan', '+62 61 80501111', 'Wifi, AC, Layanan Kamar, Layanan Shuttle dll', 3.5903, 98.6512, 'Four Star Hotel'),
(18, 'Cordela Hotel Medan\r\n', 'Jalan Prof. M. Yamin no. 90 20234 Medan', '+62 626 14515455', 'Taman, AC, Sauna, Wifi. ', 3.59654, 98.6869, 'Two Star Hotel'),
(19, 'Aryaduta Medan Hotel\r\n', 'Jl. Kapten Maulana Lubis no. 8 20112 Medan', '+62 61 4572999', 'Sauna, Wifi, AC.', 3.58967, 98.6734, 'Four Star Hotel'),
(20, 'd\'primahotel Medan\r\n', 'Gedung Stasiun Kereta Api lantai 3, Jl. Stasiun Kereta Api 1 20112 Medan Sumatra Utara', '+62 61 4561077', 'Wifi, AC, Dekat dengan Transportasi umum.', 3.59057, 98.6797, 'Three Star');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
