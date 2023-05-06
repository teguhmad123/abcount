-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2023 pada 16.04
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bl_alat`
--

CREATE TABLE `bl_alat` (
  `alat_id` int(11) NOT NULL,
  `pelayanan_id` int(11) DEFAULT NULL,
  `alat_nm` varchar(255) DEFAULT NULL,
  `alat_harga` int(11) DEFAULT NULL,
  `alat_umur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `bl_alat`
--

INSERT INTO `bl_alat` (`alat_id`, `pelayanan_id`, `alat_nm`, `alat_harga`, `alat_umur`) VALUES
(1, 1, 'TENSIMETER\r\n', 2300000, 5),
(2, 1, 'TERMOMETER\r\n', 80000, 5),
(3, 1, 'STETOSCOPE\r\n', 570000, 5),
(4, 1, 'TIMBANGAN BAYI\r\n', 130000, 5),
(5, 1, 'TIMBANGAN BESAR\r\n', 330000, 5),
(6, 1, 'BED PERIKSA\r\n', 5500000, 5),
(7, 2, 'NEBULIZER\r\n', 2400000, 5),
(8, 3, 'STETOSKOP\r\n', 2400000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bl_bahan`
--

CREATE TABLE `bl_bahan` (
  `bahan_id` int(11) NOT NULL,
  `pelayanan_id` int(11) DEFAULT NULL,
  `bahan_nm` varchar(255) DEFAULT NULL,
  `kebutuhan` int(11) DEFAULT NULL,
  `bahan_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `bl_bahan`
--

INSERT INTO `bl_bahan` (`bahan_id`, `pelayanan_id`, `bahan_nm`, `kebutuhan`, `bahan_harga`) VALUES
(1, 1, 'HANDSCONE\r\n', 1, 5000),
(2, 1, 'MASKER\r\n', 1, 2500),
(3, 2, 'APD\r\n', 1, 50000),
(4, 2, 'MASKER NEBU\r\n', 1, 13500),
(5, 2, 'OBAT BRONCHODILATOR\r\n', 1, 45000),
(6, 2, 'KASSA\r\n', 1, 1000),
(7, 2, 'POT SPUTUM\r\n', 1, 4000),
(8, 2, 'TISSUE\r\n', 1, 1000),
(9, 2, 'BENGKOK\r\n', 1, 5000),
(10, 3, 'MASKER\r\n', 1, 2500),
(11, 4, 'Mengukur ttv', 1, 7500),
(12, 5, 'Mengukur ttv', 1, 7500),
(13, 6, 'Mengukur ttv', 1, 7500),
(14, 7, 'Mengukur ttv', 1, 7500),
(15, 8, 'Monitor dan dokumentasi ttv', 1, 600),
(16, 9, 'Monitor dan dokumentasi ttv', 1, 600),
(17, 10, 'Monitor dan dokumentasi ttv', 1, 600),
(18, 11, 'Monitor dan dokumentasi ttv', 1, 600),
(19, 12, 'Pengelolaan therapi oral', 1, 300),
(20, 13, 'Pengelolaan therapi oral', 1, 300),
(21, 14, 'Pengelolaan therapi oral', 1, 300),
(22, 15, 'Pengelolaan therapi oral', 1, 300),
(23, 16, 'Informed consent', 1, 600),
(24, 17, 'Informed consent', 1, 600),
(25, 18, 'Informed consent', 1, 600),
(26, 19, 'Informed consent', 1, 600);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bl_sdm`
--

CREATE TABLE `bl_sdm` (
  `sdm_id` int(11) NOT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `sdm_nm` varchar(255) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `bl_sdm`
--

INSERT INTO `bl_sdm` (`sdm_id`, `poli_id`, `sdm_nm`, `biaya`) VALUES
(1, 1, 'DOKTER SPESIALIS\r\n', 540000000),
(2, 1, 'PERAWAT\r\n', 110000000),
(3, 3, 'DOKTER SPESIALIS\r\n', 540000000),
(4, 3, 'PERAWAT', 110000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `btl_gedung`
--

CREATE TABLE `btl_gedung` (
  `btl_gedung_id` int(11) NOT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `gedung_nm` varchar(255) DEFAULT NULL,
  `luas` float DEFAULT NULL,
  `harga_per_meter` float DEFAULT NULL,
  `masa_hidup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `btl_gedung`
--

INSERT INTO `btl_gedung` (`btl_gedung_id`, `poli_id`, `gedung_nm`, `luas`, `harga_per_meter`, `masa_hidup`) VALUES
(1, 1, ' KLINIK ANAK \r\n', 129.01, 10492600, 50),
(2, 3, 'RANAP', 129.01, 10492600, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `btl_nonmedis`
--

CREATE TABLE `btl_nonmedis` (
  `nonmedis_id` int(11) NOT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `nonmedis_nm` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `masa_hidup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `btl_nonmedis`
--

INSERT INTO `btl_nonmedis` (`nonmedis_id`, `poli_id`, `nonmedis_nm`, `harga`, `masa_hidup`) VALUES
(1, 1, 'Kursi Rapat\r\n', 2877000, 5),
(2, 1, 'Kursi Putar\r\n', 625000, 5),
(3, 1, 'Kursi Putar\r\n', 1200000, 5),
(4, 1, 'Meja Biro\r\n', 1403900, 5),
(5, 1, 'Uninterruptible Power Supply (UPS)\r\n', 600000, 5),
(6, 1, 'Alat Rumah Tangga Lain-lain\r\n', 5554050, 5),
(7, 1, 'Alat Rumah Tangga Lain-lain\r\n', 450000, 5),
(8, 1, 'P.C Unit\r\n', 7688000, 4),
(9, 1, 'Monitor\r\n', 1415700, 4),
(10, 1, 'Printer\r\n', 2794000, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `btl_operasional`
--

CREATE TABLE `btl_operasional` (
  `operasional_id` int(11) NOT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `operasional_nm` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `btl_operasional`
--

INSERT INTO `btl_operasional` (`operasional_id`, `poli_id`, `operasional_nm`, `harga`) VALUES
(1, 1, 'BHP NON MEDIS\r\n', 10000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dat_aktivitas`
--

CREATE TABLE `dat_aktivitas` (
  `aktivitas_id` int(11) NOT NULL,
  `pelayanan_id` int(11) DEFAULT NULL,
  `kategori` varchar(1) DEFAULT NULL,
  `pelayanan_nm` varchar(255) DEFAULT NULL,
  `waktu_pelayanan` int(11) DEFAULT NULL,
  `waktu_primer_pelayanan` int(11) DEFAULT NULL,
  `cost_btl_rs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `dat_aktivitas`
--

INSERT INTO `dat_aktivitas` (`aktivitas_id`, `pelayanan_id`, `kategori`, `pelayanan_nm`, `waktu_pelayanan`, `waktu_primer_pelayanan`, `cost_btl_rs`) VALUES
(1, 1, 'P', 'KIE DANA INFORM CONCENTS\r\n', 2, 2, NULL),
(2, 1, 'S', 'PERSIAPAN ALAT\r\n', 1, NULL, NULL),
(3, 1, 'P', 'PERSIAPAN PASIEN\r\n', 1, 1, NULL),
(4, 1, 'P', 'PEMERIKSAAN PERAWAT\r\n', 1, 1, NULL),
(5, 1, 'P', 'PEMERIKSAAN DOKTER\r\n', 1, 1, NULL),
(6, 1, 'S', 'PEMBUATAN CATATAN MEDIS\r\n', 1, NULL, NULL),
(7, 2, 'S', 'PERSIAPAN ALAT\r\n', 3, NULL, NULL),
(8, 2, 'P', 'PERSIAPAN PASIEN\r\n', 1, 1, NULL),
(9, 2, 'P', 'PELAYANAN NEBULIZER\r\n', 20, 20, NULL),
(10, 2, 'S', 'PEMBUATAN CATATAN MEDIS\r\n', 1, NULL, NULL),
(11, 3, 'S', 'PERSIAPAN ALAT\r\n', 1, NULL, NULL),
(12, 3, 'P', 'PERSIAPAN PASIEN\r\n', 1, 1, NULL),
(13, 3, 'P', 'PELAYANAN TTV\r\n', 1, 1, NULL),
(14, 3, 'S', 'PEMBUATAN CATATAN MEDIS\r\n', 1, NULL, NULL),
(15, NULL, 'S', 'PELAYANAN RM\r\n', NULL, NULL, 16892282),
(16, NULL, 'S', 'PELAYANAN IPSRS\r\n', NULL, NULL, 2014893),
(17, NULL, 'S', 'PELAYANAN LAUNDRY\r\n', NULL, NULL, 5875279),
(18, NULL, 'S', 'PELAYANAN KEAMANAN\r\n', NULL, NULL, 5028722),
(19, NULL, 'S', 'PELAYANAN CLEANING SERVICE DAN HS\r\n', NULL, NULL, 12063914),
(20, NULL, 'S', 'PELAYANAN ADM DAN MANAJEMEN\r\n', NULL, NULL, 81180170),
(21, NULL, 'S', 'PELAYANAN CSSD\r\n', NULL, NULL, 350487),
(22, NULL, 'S', 'PELAYANAN PARKIR\r\n', NULL, NULL, 3622604),
(23, NULL, 'S', 'PELAYANAN FARMASI\r\n', NULL, NULL, 13526540),
(24, NULL, 'S', 'PELAYANAN GIZI\r\n', NULL, NULL, 10535),
(25, 4, 'S', 'persiapan', 1, NULL, NULL),
(26, 4, 'P', 'kerja ', 5, 5, NULL),
(27, 4, 'P', 'terminasi', 1, 1, NULL),
(28, 5, 'S', 'persiapan', 1, NULL, NULL),
(29, 5, 'P', 'kerja ', 5, 5, NULL),
(30, 5, 'P', 'terminasi', 1, 1, NULL),
(31, 6, 'S', 'persiapan', 1, NULL, NULL),
(32, 6, 'P', 'kerja ', 5, 5, NULL),
(33, 6, 'P', 'terminasi', 1, 1, NULL),
(34, 7, 'S', 'persiapan', 1, NULL, NULL),
(35, 7, 'P', 'kerja ', 5, 5, NULL),
(36, 7, 'P', 'terminasi', 1, 1, NULL),
(37, 8, 'S', 'persiapan', 2, NULL, NULL),
(38, 8, 'P', 'kerja ', 3, 3, NULL),
(39, 8, 'P', 'terminasi', 1, 1, NULL),
(40, 9, 'S', 'persiapan', 2, NULL, NULL),
(41, 9, 'P', 'kerja ', 3, 3, NULL),
(42, 9, 'P', 'terminasi', 1, 1, NULL),
(43, 10, 'S', 'persiapan', 2, NULL, NULL),
(44, 10, 'P', 'kerja ', 3, 3, NULL),
(45, 10, 'P', 'terminasi', 1, 1, NULL),
(46, 11, 'S', 'persiapan', 2, NULL, NULL),
(47, 11, 'P', 'kerja ', 3, 3, NULL),
(48, 11, 'P', 'terminasi', 1, 1, NULL),
(49, 12, 'S', 'persiapan', 1, NULL, NULL),
(50, 12, 'P', 'kerja ', 6, 6, NULL),
(51, 12, 'P', 'terminasi', 1, 1, NULL),
(52, 13, 'S', 'persiapan', 1, NULL, NULL),
(53, 13, 'P', 'kerja ', 6, 6, NULL),
(54, 13, 'P', 'terminasi', 1, 1, NULL),
(55, 14, 'S', 'persiapan', 1, NULL, NULL),
(56, 14, 'P', 'kerja ', 6, 6, NULL),
(57, 14, 'P', 'terminasi', 1, 1, NULL),
(58, 15, 'S', 'persiapan', 1, NULL, NULL),
(59, 15, 'P', 'kerja ', 6, 6, NULL),
(60, 15, 'P', 'terminasi', 1, 1, NULL),
(61, 16, 'S', 'persiapan', 1, NULL, NULL),
(62, 16, 'P', 'kerja ', 6, 6, NULL),
(63, 16, 'P', 'terminasi', 1, 1, NULL),
(64, 17, 'S', 'persiapan', 1, NULL, NULL),
(65, 17, 'P', 'kerja ', 6, 6, NULL),
(66, 17, 'P', 'terminasi', 1, 1, NULL),
(67, 18, 'S', 'persiapan', 1, NULL, NULL),
(68, 18, 'P', 'kerja ', 6, 6, NULL),
(69, 18, 'P', 'terminasi', 1, 1, NULL),
(70, 19, 'S', 'persiapan', 1, NULL, NULL),
(71, 19, 'P', 'kerja ', 6, 6, NULL),
(72, 19, 'P', 'terminasi', 1, 1, NULL),
(73, 20, 'S', 'persiapan', 2, NULL, NULL),
(74, 20, 'P', 'kerja ', 30, 30, NULL),
(75, 20, 'P', 'terminasi', 1, 1, NULL),
(76, 21, 'S', 'persiapan', 2, NULL, NULL),
(77, 21, 'P', 'kerja ', 30, 30, NULL),
(78, 21, 'P', 'terminasi', 1, 1, NULL),
(79, 22, 'S', 'persiapan', 2, NULL, NULL),
(80, 22, 'P', 'kerja ', 30, 30, NULL),
(81, 22, 'P', 'terminasi', 1, 1, NULL),
(82, 23, 'S', 'persiapan', 2, NULL, NULL),
(83, 23, 'P', 'kerja ', 30, 30, NULL),
(84, 23, 'P', 'terminasi', 1, 1, NULL),
(85, 24, 'S', 'persiapan', 1, NULL, NULL),
(86, 24, 'P', 'kerja ', 5, 5, NULL),
(87, 24, 'P', 'terminasi', 1, 1, NULL),
(88, 25, 'S', 'persiapan', 1, NULL, NULL),
(89, 25, 'P', 'kerja ', 5, 5, NULL),
(90, 25, 'P', 'terminasi', 1, 1, NULL),
(91, 26, 'S', 'persiapan', 1, NULL, NULL),
(92, 26, 'P', 'kerja ', 5, 5, NULL),
(93, 26, 'P', 'terminasi', 1, 1, NULL),
(94, 27, 'S', 'persiapan', 1, NULL, NULL),
(95, 27, 'P', 'kerja ', 5, 5, NULL),
(96, 27, 'P', 'terminasi', 1, 1, NULL),
(97, 28, 'S', 'persiapan', 1, NULL, NULL),
(98, 28, 'P', 'kerja ', 5, 5, NULL),
(99, 28, 'P', 'terminasi', 1, 1, NULL),
(100, 29, 'S', 'persiapan', 1, NULL, NULL),
(101, 29, 'P', 'kerja ', 5, 5, NULL),
(102, 29, 'P', 'terminasi', 1, 1, NULL),
(103, 30, 'S', 'persiapan', 1, NULL, NULL),
(104, 30, 'P', 'kerja ', 5, 5, NULL),
(105, 30, 'P', 'terminasi', 1, 1, NULL),
(106, 31, 'S', 'persiapan', 1, NULL, NULL),
(107, 31, 'P', 'kerja ', 5, 5, NULL),
(108, 31, 'P', 'terminasi', 1, 1, NULL),
(109, 32, 'S', 'persiapan', 2, NULL, NULL),
(110, 32, 'P', 'kerja ', 7, 7, NULL),
(111, 32, 'P', 'terminasi', 1, 1, NULL),
(112, 33, 'S', 'persiapan', 2, NULL, NULL),
(113, 33, 'P', 'kerja ', 7, 7, NULL),
(114, 33, 'P', 'terminasi', 1, 1, NULL),
(115, 34, 'S', 'persiapan', 2, NULL, NULL),
(116, 34, 'P', 'kerja ', 7, 7, NULL),
(117, 34, 'P', 'terminasi', 1, 1, NULL),
(118, 35, 'S', 'persiapan', 2, NULL, NULL),
(119, 35, 'P', 'kerja ', 7, 7, NULL),
(120, 35, 'P', 'terminasi', 1, 1, NULL),
(121, 36, 'S', 'persiapan', 1, NULL, NULL),
(122, 36, 'P', 'kerja ', 2, 2, NULL),
(123, 36, 'P', 'terminasi', 1, 1, NULL),
(124, 37, 'S', 'persiapan', 1, NULL, NULL),
(125, 37, 'P', 'kerja ', 2, 2, NULL),
(126, 37, 'P', 'terminasi', 1, 1, NULL),
(127, 38, 'S', 'persiapan', 1, NULL, NULL),
(128, 38, 'P', 'kerja ', 2, 2, NULL),
(129, 38, 'P', 'terminasi', 1, 1, NULL),
(130, 39, 'S', 'persiapan', 1, NULL, NULL),
(131, 39, 'P', 'kerja ', 2, 2, NULL),
(132, 39, 'P', 'terminasi', 1, 1, NULL),
(133, 40, 'S', 'persiapan', 2, NULL, NULL),
(134, 40, 'P', 'kerja ', 5, 5, NULL),
(135, 40, 'P', 'terminasi', 1, 1, NULL),
(136, 41, 'S', 'persiapan', 2, NULL, NULL),
(137, 41, 'P', 'kerja ', 5, 5, NULL),
(138, 41, 'P', 'terminasi', 1, 1, NULL),
(139, 42, 'S', 'persiapan', 2, NULL, NULL),
(140, 42, 'P', 'kerja ', 5, 5, NULL),
(141, 42, 'P', 'terminasi', 1, 1, NULL),
(142, 43, 'S', 'persiapan', 2, NULL, NULL),
(143, 43, 'P', 'kerja ', 5, 5, NULL),
(144, 43, 'P', 'terminasi', 1, 1, NULL),
(145, 44, 'S', 'persiapan', 1, NULL, NULL),
(146, 44, 'P', 'kerja ', 5, 5, NULL),
(147, 44, 'P', 'terminasi', 1, 1, NULL),
(148, 45, 'S', 'persiapan', 1, NULL, NULL),
(149, 45, 'P', 'kerja ', 5, 5, NULL),
(150, 45, 'P', 'terminasi', 1, 1, NULL),
(151, 46, 'S', 'persiapan', 1, NULL, NULL),
(152, 46, 'P', 'kerja ', 5, 5, NULL),
(153, 46, 'P', 'terminasi', 1, 1, NULL),
(154, 47, 'S', 'persiapan', 1, NULL, NULL),
(155, 47, 'P', 'kerja ', 5, 5, NULL),
(156, 47, 'P', 'terminasi', 1, 1, NULL),
(157, 48, 'S', 'persiapan', 2, NULL, NULL),
(158, 48, 'P', 'kerja ', 5, 5, NULL),
(159, 48, 'P', 'terminasi', 1, 1, NULL),
(160, 49, 'S', 'persiapan', 2, NULL, NULL),
(161, 49, 'P', 'kerja ', 5, 5, NULL),
(162, 49, 'P', 'terminasi', 1, 1, NULL),
(163, 50, 'S', 'persiapan', 2, NULL, NULL),
(164, 50, 'P', 'kerja ', 5, 5, NULL),
(165, 50, 'P', 'terminasi', 1, 1, NULL),
(166, 51, 'S', 'persiapan', 2, NULL, NULL),
(167, 51, 'P', 'kerja ', 5, 5, NULL),
(168, 51, 'P', 'terminasi', 1, 1, NULL),
(169, 52, 'S', 'persiapan', 1, NULL, NULL),
(170, 52, 'P', 'kerja ', 3, 3, NULL),
(171, 52, 'P', 'terminasi', 1, 1, NULL),
(172, 53, 'S', 'persiapan', 1, NULL, NULL),
(173, 53, 'P', 'kerja ', 3, 3, NULL),
(174, 53, 'P', 'terminasi', 1, 1, NULL),
(175, 54, 'S', 'persiapan', 1, NULL, NULL),
(176, 54, 'P', 'kerja ', 3, 3, NULL),
(177, 54, 'P', 'terminasi', 1, 1, NULL),
(178, 55, 'S', 'persiapan', 1, NULL, NULL),
(179, 55, 'P', 'kerja ', 3, 3, NULL),
(180, 55, 'P', 'terminasi', 1, 1, NULL),
(181, 56, 'S', 'persiapan', 2, NULL, NULL),
(182, 56, 'P', 'kerja ', 5, 5, NULL),
(183, 56, 'P', 'terminasi', 1, 1, NULL),
(184, 57, 'S', 'persiapan', 2, NULL, NULL),
(185, 57, 'P', 'kerja ', 5, 5, NULL),
(186, 57, 'P', 'terminasi', 1, 1, NULL),
(187, 58, 'S', 'persiapan', 2, NULL, NULL),
(188, 58, 'P', 'kerja ', 5, 5, NULL),
(189, 58, 'P', 'terminasi', 1, 1, NULL),
(190, 59, 'S', 'persiapan', 2, NULL, NULL),
(191, 59, 'P', 'kerja ', 5, 5, NULL),
(192, 59, 'P', 'terminasi', 1, 1, NULL),
(193, 60, 'S', 'persiapan', 1, NULL, NULL),
(194, 60, 'P', 'kerja ', 5, 5, NULL),
(195, 60, 'P', 'terminasi', 1, 1, NULL),
(196, 61, 'S', 'persiapan', 1, NULL, NULL),
(197, 61, 'P', 'kerja ', 5, 5, NULL),
(198, 61, 'P', 'terminasi', 1, 1, NULL),
(199, 62, 'S', 'persiapan', 1, NULL, NULL),
(200, 62, 'P', 'kerja ', 5, 5, NULL),
(201, 62, 'P', 'terminasi', 1, 1, NULL),
(202, 63, 'S', 'persiapan', 1, NULL, NULL),
(203, 63, 'P', 'kerja ', 5, 5, NULL),
(204, 63, 'P', 'terminasi', 1, 1, NULL),
(205, 64, 'S', 'persiapan', 2, NULL, NULL),
(206, 64, 'P', 'kerja ', 5, 5, NULL),
(207, 64, 'P', 'terminasi', 1, 1, NULL),
(208, 65, 'S', 'persiapan', 2, NULL, NULL),
(209, 65, 'P', 'kerja ', 5, 5, NULL),
(210, 65, 'P', 'terminasi', 1, 1, NULL),
(211, 66, 'S', 'persiapan', 2, NULL, NULL),
(212, 66, 'P', 'kerja ', 5, 5, NULL),
(213, 66, 'P', 'terminasi', 1, 1, NULL),
(214, 67, 'S', 'persiapan', 2, NULL, NULL),
(215, 67, 'P', 'kerja ', 5, 5, NULL),
(216, 67, 'P', 'terminasi', 1, 1, NULL),
(217, 68, 'S', 'persiapan', 1, NULL, NULL),
(218, 68, 'P', 'kerja ', 5, 5, NULL),
(219, 68, 'P', 'terminasi', 1, 1, NULL),
(220, 69, 'S', 'persiapan', 1, NULL, NULL),
(221, 69, 'P', 'kerja ', 5, 5, NULL),
(222, 69, 'P', 'terminasi', 1, 1, NULL),
(223, 70, 'S', 'persiapan', 1, NULL, NULL),
(224, 70, 'P', 'kerja ', 5, 5, NULL),
(225, 70, 'P', 'terminasi', 1, 1, NULL),
(226, 71, 'S', 'persiapan', 1, NULL, NULL),
(227, 71, 'P', 'kerja ', 5, 5, NULL),
(228, 71, 'P', 'terminasi', 1, 1, NULL),
(229, 72, 'S', 'persiapan', 2, NULL, NULL),
(230, 72, 'P', 'kerja ', 5, 5, NULL),
(231, 72, 'P', 'terminasi', 1, 1, NULL),
(232, 73, 'S', 'persiapan', 2, NULL, NULL),
(233, 73, 'P', 'kerja ', 5, 5, NULL),
(234, 73, 'P', 'terminasi', 1, 1, NULL),
(235, 74, 'S', 'persiapan', 2, NULL, NULL),
(236, 74, 'P', 'kerja ', 5, 5, NULL),
(237, 74, 'P', 'terminasi', 1, 1, NULL),
(238, 75, 'S', 'persiapan', 2, NULL, NULL),
(239, 75, 'P', 'kerja ', 5, 5, NULL),
(240, 75, 'P', 'terminasi', 1, 1, NULL),
(241, 76, 'S', 'persiapan', 2, NULL, NULL),
(242, 76, 'P', 'kerja ', 5, 5, NULL),
(243, 76, 'P', 'terminasi', 1, 1, NULL),
(244, 77, 'S', 'persiapan', 2, NULL, NULL),
(245, 77, 'P', 'kerja ', 5, 5, NULL),
(246, 77, 'P', 'terminasi', 1, 1, NULL),
(247, 78, 'S', 'persiapan', 2, NULL, NULL),
(248, 78, 'P', 'kerja ', 5, 5, NULL),
(249, 78, 'P', 'terminasi', 1, 1, NULL),
(250, 79, 'S', 'persiapan', 2, NULL, NULL),
(251, 79, 'P', 'kerja ', 5, 5, NULL),
(252, 79, 'P', 'terminasi', 1, 1, NULL),
(253, 80, 'S', 'persiapan', 3, NULL, NULL),
(254, 80, 'P', 'kerja ', 15, 15, NULL),
(255, 80, 'P', 'terminasi', 3, 3, NULL),
(256, 81, 'S', 'persiapan', 3, NULL, NULL),
(257, 81, 'P', 'kerja ', 15, 15, NULL),
(258, 81, 'P', 'terminasi', 3, 3, NULL),
(259, 82, 'S', 'persiapan', 3, NULL, NULL),
(260, 82, 'P', 'kerja ', 15, 15, NULL),
(261, 82, 'P', 'terminasi', 3, 3, NULL),
(262, 83, 'S', 'persiapan', 3, NULL, NULL),
(263, 83, 'P', 'kerja ', 15, 15, NULL),
(264, 83, 'P', 'terminasi', 3, 3, NULL),
(265, 84, 'S', 'persiapan', 1, NULL, NULL),
(266, 84, 'P', 'kerja ', 8, 8, NULL),
(267, 84, 'P', 'terminasi', 1, 1, NULL),
(268, 85, 'S', 'persiapan', 1, NULL, NULL),
(269, 85, 'P', 'kerja ', 8, 8, NULL),
(270, 85, 'P', 'terminasi', 1, 1, NULL),
(271, 86, 'S', 'persiapan', 1, NULL, NULL),
(272, 86, 'P', 'kerja ', 8, 8, NULL),
(273, 86, 'P', 'terminasi', 1, 1, NULL),
(274, 87, 'S', 'persiapan', 1, NULL, NULL),
(275, 87, 'P', 'kerja ', 8, 8, NULL),
(276, 87, 'P', 'terminasi', 1, 1, NULL),
(277, 88, 'S', 'persiapan', 1, NULL, NULL),
(278, 88, 'P', 'kerja ', 5, 5, NULL),
(279, 88, 'P', 'terminasi', 1, 1, NULL),
(280, 89, 'S', 'persiapan', 1, NULL, NULL),
(281, 89, 'P', 'kerja ', 5, 5, NULL),
(282, 89, 'P', 'terminasi', 1, 1, NULL),
(283, 90, 'S', 'persiapan', 1, NULL, NULL),
(284, 90, 'P', 'kerja ', 5, 5, NULL),
(285, 90, 'P', 'terminasi', 1, 1, NULL),
(286, 91, 'S', 'persiapan', 1, NULL, NULL),
(287, 91, 'P', 'kerja ', 5, 5, NULL),
(288, 91, 'P', 'terminasi', 1, 1, NULL),
(289, 92, 'S', 'persiapan', 1, NULL, NULL),
(290, 92, 'P', 'kerja ', 2, 2, NULL),
(291, 92, 'P', 'terminasi', 1, 1, NULL),
(292, 93, 'S', 'persiapan', 1, NULL, NULL),
(293, 93, 'P', 'kerja ', 2, 2, NULL),
(294, 93, 'P', 'terminasi', 1, 1, NULL),
(295, 94, 'S', 'persiapan', 1, NULL, NULL),
(296, 94, 'P', 'kerja ', 2, 2, NULL),
(297, 94, 'P', 'terminasi', 1, 1, NULL),
(298, 95, 'S', 'persiapan', 1, NULL, NULL),
(299, 95, 'P', 'kerja ', 2, 2, NULL),
(300, 95, 'P', 'terminasi', 1, 1, NULL),
(301, 96, 'S', 'persiapan', 1, NULL, NULL),
(302, 96, 'P', 'kerja ', 3, 3, NULL),
(303, 96, 'P', 'terminasi', 1, 1, NULL),
(304, 97, 'S', 'persiapan', 1, NULL, NULL),
(305, 97, 'P', 'kerja ', 3, 3, NULL),
(306, 97, 'P', 'terminasi', 1, 1, NULL),
(307, 98, 'S', 'persiapan', 1, NULL, NULL),
(308, 98, 'P', 'kerja ', 3, 3, NULL),
(309, 98, 'P', 'terminasi', 1, 1, NULL),
(310, 99, 'S', 'persiapan', 1, NULL, NULL),
(311, 99, 'P', 'kerja ', 3, 3, NULL),
(312, 99, 'P', 'terminasi', 1, 1, NULL),
(313, 100, 'S', 'persiapan', 3, NULL, NULL),
(314, 100, 'P', 'kerja ', 20, 20, NULL),
(315, 100, 'P', 'terminasi', 2, 2, NULL),
(316, 101, 'S', 'persiapan', 3, NULL, NULL),
(317, 101, 'P', 'kerja ', 20, 20, NULL),
(318, 101, 'P', 'terminasi', 2, 2, NULL),
(319, 102, 'S', 'persiapan', 3, NULL, NULL),
(320, 102, 'P', 'kerja ', 20, 20, NULL),
(321, 102, 'P', 'terminasi', 2, 2, NULL),
(322, 103, 'S', 'persiapan', 3, NULL, NULL),
(323, 103, 'P', 'kerja ', 20, 20, NULL),
(324, 103, 'P', 'terminasi', 2, 2, NULL),
(325, 104, 'S', 'persiapan', 3, NULL, NULL),
(326, 104, 'P', 'kerja ', 10, 10, NULL),
(327, 104, 'P', 'terminasi', 2, 2, NULL),
(328, 105, 'S', 'persiapan', 3, NULL, NULL),
(329, 105, 'P', 'kerja ', 10, 10, NULL),
(330, 105, 'P', 'terminasi', 2, 2, NULL),
(331, 106, 'S', 'persiapan', 3, NULL, NULL),
(332, 106, 'P', 'kerja ', 10, 10, NULL),
(333, 106, 'P', 'terminasi', 2, 2, NULL),
(334, 107, 'S', 'persiapan', 3, NULL, NULL),
(335, 107, 'P', 'kerja ', 10, 10, NULL),
(336, 107, 'P', 'terminasi', 2, 2, NULL),
(337, 108, 'S', 'persiapan', 2, NULL, NULL),
(338, 108, 'P', 'kerja ', 15, 15, NULL),
(339, 108, 'P', 'terminasi', 2, 2, NULL),
(340, 109, 'S', 'persiapan', 2, NULL, NULL),
(341, 109, 'P', 'kerja ', 15, 15, NULL),
(342, 109, 'P', 'terminasi', 2, 2, NULL),
(343, 110, 'S', 'persiapan', 2, NULL, NULL),
(344, 110, 'P', 'kerja ', 15, 15, NULL),
(345, 110, 'P', 'terminasi', 2, 2, NULL),
(346, 111, 'S', 'persiapan', 2, NULL, NULL),
(347, 111, 'P', 'kerja ', 15, 15, NULL),
(348, 111, 'P', 'terminasi', 2, 2, NULL),
(349, 112, 'S', 'persiapan', 2, NULL, NULL),
(350, 112, 'P', 'kerja ', 15, 15, NULL),
(351, 112, 'P', 'terminasi', 2, 2, NULL),
(352, 113, 'S', 'persiapan', 2, NULL, NULL),
(353, 113, 'P', 'kerja ', 15, 15, NULL),
(354, 113, 'P', 'terminasi', 2, 2, NULL),
(355, 114, 'S', 'persiapan', 2, NULL, NULL),
(356, 114, 'P', 'kerja ', 15, 15, NULL),
(357, 114, 'P', 'terminasi', 2, 2, NULL),
(358, 115, 'S', 'persiapan', 2, NULL, NULL),
(359, 115, 'P', 'kerja ', 15, 15, NULL),
(360, 115, 'P', 'terminasi', 2, 2, NULL),
(361, 116, 'S', 'persiapan', 1, NULL, NULL),
(362, 116, 'P', 'kerja ', 5, 5, NULL),
(363, 116, 'P', 'terminasi', 1, 1, NULL),
(364, 117, 'S', 'persiapan', 1, NULL, NULL),
(365, 117, 'P', 'kerja ', 5, 5, NULL),
(366, 117, 'P', 'terminasi', 1, 1, NULL),
(367, 118, 'S', 'persiapan', 1, NULL, NULL),
(368, 118, 'P', 'kerja ', 5, 5, NULL),
(369, 118, 'P', 'terminasi', 1, 1, NULL),
(370, 119, 'S', 'persiapan', 1, NULL, NULL),
(371, 119, 'P', 'kerja ', 5, 5, NULL),
(372, 119, 'P', 'terminasi', 1, 1, NULL),
(373, 120, 'S', 'persiapan', 1, NULL, NULL),
(374, 120, 'P', 'kerja ', 3, 3, NULL),
(375, 120, 'P', 'terminasi', 2, 2, NULL),
(376, 121, 'S', 'persiapan', 1, NULL, NULL),
(377, 121, 'P', 'kerja ', 3, 3, NULL),
(378, 121, 'P', 'terminasi', 2, 2, NULL),
(379, 122, 'S', 'persiapan', 1, NULL, NULL),
(380, 122, 'P', 'kerja ', 3, 3, NULL),
(381, 122, 'P', 'terminasi', 2, 2, NULL),
(382, 123, 'S', 'persiapan', 1, NULL, NULL),
(383, 123, 'P', 'kerja ', 3, 3, NULL),
(384, 123, 'P', 'terminasi', 2, 2, NULL),
(385, 124, 'S', 'persiapan', 1, NULL, NULL),
(386, 124, 'P', 'kerja ', 3, 3, NULL),
(387, 124, 'P', 'terminasi', 2, 2, NULL),
(388, 125, 'S', 'persiapan', 1, NULL, NULL),
(389, 125, 'P', 'kerja ', 3, 3, NULL),
(390, 125, 'P', 'terminasi', 2, 2, NULL),
(391, 126, 'S', 'persiapan', 1, NULL, NULL),
(392, 126, 'P', 'kerja ', 3, 3, NULL),
(393, 126, 'P', 'terminasi', 2, 2, NULL),
(394, 127, 'S', 'persiapan', 1, NULL, NULL),
(395, 127, 'P', 'kerja ', 3, 3, NULL),
(396, 127, 'P', 'terminasi', 2, 2, NULL),
(397, 128, 'S', 'persiapan', 1, NULL, NULL),
(398, 128, 'P', 'kerja ', 3, 3, NULL),
(399, 128, 'P', 'terminasi', 1, 1, NULL),
(400, 129, 'S', 'persiapan', 1, NULL, NULL),
(401, 129, 'P', 'kerja ', 3, 3, NULL),
(402, 129, 'P', 'terminasi', 1, 1, NULL),
(403, 130, 'S', 'persiapan', 1, NULL, NULL),
(404, 130, 'P', 'kerja ', 3, 3, NULL),
(405, 130, 'P', 'terminasi', 1, 1, NULL),
(406, 131, 'S', 'persiapan', 1, NULL, NULL),
(407, 131, 'P', 'kerja ', 3, 3, NULL),
(408, 131, 'P', 'terminasi', 1, 1, NULL),
(409, 132, 'S', 'persiapan', 1, NULL, NULL),
(410, 132, 'P', 'kerja ', 3, 3, NULL),
(411, 132, 'P', 'terminasi', 1, 1, NULL),
(412, 133, 'S', 'persiapan', 1, NULL, NULL),
(413, 133, 'P', 'kerja ', 3, 3, NULL),
(414, 133, 'P', 'terminasi', 1, 1, NULL),
(415, 134, 'S', 'persiapan', 1, NULL, NULL),
(416, 134, 'P', 'kerja ', 3, 3, NULL),
(417, 134, 'P', 'terminasi', 1, 1, NULL),
(418, 135, 'S', 'persiapan', 1, NULL, NULL),
(419, 135, 'P', 'kerja ', 3, 3, NULL),
(420, 135, 'P', 'terminasi', 1, 1, NULL),
(421, 136, 'S', 'persiapan', 5, NULL, NULL),
(422, 136, 'P', 'kerja ', 5, 5, NULL),
(423, 136, 'P', 'terminasi', 1, 1, NULL),
(424, 137, 'S', 'persiapan', 5, NULL, NULL),
(425, 137, 'P', 'kerja ', 5, 5, NULL),
(426, 137, 'P', 'terminasi', 1, 1, NULL),
(427, 138, 'S', 'persiapan', 5, NULL, NULL),
(428, 138, 'P', 'kerja ', 5, 5, NULL),
(429, 138, 'P', 'terminasi', 1, 1, NULL),
(430, 139, 'S', 'persiapan', 5, NULL, NULL),
(431, 139, 'P', 'kerja ', 5, 5, NULL),
(432, 139, 'P', 'terminasi', 1, 1, NULL),
(433, 140, 'S', 'persiapan', 5, NULL, NULL),
(434, 140, 'P', 'kerja ', 5, 5, NULL),
(435, 140, 'P', 'terminasi', 1, 1, NULL),
(436, 141, 'S', 'persiapan', 5, NULL, NULL),
(437, 141, 'P', 'kerja ', 5, 5, NULL),
(438, 141, 'P', 'terminasi', 1, 1, NULL),
(439, 142, 'S', 'persiapan', 5, NULL, NULL),
(440, 142, 'P', 'kerja ', 5, 5, NULL),
(441, 142, 'P', 'terminasi', 1, 1, NULL),
(442, 143, 'S', 'persiapan', 5, NULL, NULL),
(443, 143, 'P', 'kerja ', 5, 5, NULL),
(444, 143, 'P', 'terminasi', 1, 1, NULL),
(445, 144, 'S', 'persiapan', 3, NULL, NULL),
(446, 144, 'P', 'kerja ', 3, 3, NULL),
(447, 144, 'P', 'terminasi', 5, 5, NULL),
(448, 145, 'S', 'persiapan', 3, NULL, NULL),
(449, 145, 'P', 'kerja ', 3, 3, NULL),
(450, 145, 'P', 'terminasi', 5, 5, NULL),
(451, 146, 'S', 'persiapan', 3, NULL, NULL),
(452, 146, 'P', 'kerja ', 3, 3, NULL),
(453, 146, 'P', 'terminasi', 5, 5, NULL),
(454, 147, 'S', 'persiapan', 3, NULL, NULL),
(455, 147, 'P', 'kerja ', 3, 3, NULL),
(456, 147, 'P', 'terminasi', 5, 5, NULL),
(457, 148, 'S', 'persiapan', 1, NULL, NULL),
(458, 148, 'P', 'kerja ', 8, 8, NULL),
(459, 148, 'P', 'terminasi', 1, 1, NULL),
(460, 149, 'S', 'persiapan', 1, NULL, NULL),
(461, 149, 'P', 'kerja ', 8, 8, NULL),
(462, 149, 'P', 'terminasi', 1, 1, NULL),
(463, 150, 'S', 'persiapan', 1, NULL, NULL),
(464, 150, 'P', 'kerja ', 8, 8, NULL),
(465, 150, 'P', 'terminasi', 1, 1, NULL),
(466, 151, 'S', 'persiapan', 1, NULL, NULL),
(467, 151, 'P', 'kerja ', 8, 8, NULL),
(468, 151, 'P', 'terminasi', 1, 1, NULL),
(469, 152, 'S', 'persiapan', 2, NULL, NULL),
(470, 152, 'P', 'kerja ', 5, 5, NULL),
(471, 152, 'P', 'terminasi', 2, 2, NULL),
(472, 153, 'S', 'persiapan', 2, NULL, NULL),
(473, 153, 'P', 'kerja ', 5, 5, NULL),
(474, 153, 'P', 'terminasi', 2, 2, NULL),
(475, 154, 'S', 'persiapan', 2, NULL, NULL),
(476, 154, 'P', 'kerja ', 5, 5, NULL),
(477, 154, 'P', 'terminasi', 2, 2, NULL),
(478, 155, 'S', 'persiapan', 2, NULL, NULL),
(479, 155, 'P', 'kerja ', 5, 5, NULL),
(480, 155, 'P', 'terminasi', 2, 2, NULL),
(481, 156, 'S', 'persiapan', 1, NULL, NULL),
(482, 156, 'P', 'kerja ', 3, 3, NULL),
(483, 156, 'P', 'terminasi', 1, 1, NULL),
(484, 157, 'S', 'persiapan', 1, NULL, NULL),
(485, 157, 'P', 'kerja ', 3, 3, NULL),
(486, 157, 'P', 'terminasi', 1, 1, NULL),
(487, 158, 'S', 'persiapan', 1, NULL, NULL),
(488, 158, 'P', 'kerja ', 3, 3, NULL),
(489, 158, 'P', 'terminasi', 1, 1, NULL),
(490, 159, 'S', 'persiapan', 1, NULL, NULL),
(491, 159, 'P', 'kerja ', 3, 3, NULL),
(492, 159, 'P', 'terminasi', 1, 1, NULL),
(493, 160, 'S', 'persiapan', 1, NULL, NULL),
(494, 160, 'P', 'kerja ', 3, 3, NULL),
(495, 160, 'P', 'terminasi', 1, 1, NULL),
(496, 161, 'S', 'persiapan', 1, NULL, NULL),
(497, 161, 'P', 'kerja ', 3, 3, NULL),
(498, 161, 'P', 'terminasi', 1, 1, NULL),
(499, 162, 'S', 'persiapan', 1, NULL, NULL),
(500, 162, 'P', 'kerja ', 3, 3, NULL),
(501, 162, 'P', 'terminasi', 1, 1, NULL),
(502, 163, 'S', 'persiapan', 1, NULL, NULL),
(503, 163, 'P', 'kerja ', 3, 3, NULL),
(504, 163, 'P', 'terminasi', 1, 1, NULL),
(505, 164, 'S', 'persiapan', 1, NULL, NULL),
(506, 164, 'P', 'kerja ', 3, 3, NULL),
(507, 164, 'P', 'terminasi', 1, 1, NULL),
(508, 165, 'S', 'persiapan', 1, NULL, NULL),
(509, 165, 'P', 'kerja ', 3, 3, NULL),
(510, 165, 'P', 'terminasi', 1, 1, NULL),
(511, 166, 'S', 'persiapan', 1, NULL, NULL),
(512, 166, 'P', 'kerja ', 3, 3, NULL),
(513, 166, 'P', 'terminasi', 1, 1, NULL),
(514, 167, 'S', 'persiapan', 1, NULL, NULL),
(515, 167, 'P', 'kerja ', 3, 3, NULL),
(516, 167, 'P', 'terminasi', 1, 1, NULL),
(517, 168, 'S', 'persiapan', 1, NULL, NULL),
(518, 168, 'P', 'kerja ', 3, 3, NULL),
(519, 168, 'P', 'terminasi', 1, 1, NULL),
(520, 169, 'S', 'persiapan', 1, NULL, NULL),
(521, 169, 'P', 'kerja ', 3, 3, NULL),
(522, 169, 'P', 'terminasi', 1, 1, NULL),
(523, 170, 'S', 'persiapan', 1, NULL, NULL),
(524, 170, 'P', 'kerja ', 3, 3, NULL),
(525, 170, 'P', 'terminasi', 1, 1, NULL),
(526, 171, 'S', 'persiapan', 1, NULL, NULL),
(527, 171, 'P', 'kerja ', 3, 3, NULL),
(528, 171, 'P', 'terminasi', 1, 1, NULL),
(529, 172, 'S', 'persiapan', 1, NULL, NULL),
(530, 172, 'P', 'kerja ', 3, 3, NULL),
(531, 172, 'P', 'terminasi', 1, 1, NULL),
(532, 173, 'S', 'persiapan', 1, NULL, NULL),
(533, 173, 'P', 'kerja ', 3, 3, NULL),
(534, 173, 'P', 'terminasi', 1, 1, NULL),
(535, 174, 'S', 'persiapan', 1, NULL, NULL),
(536, 174, 'P', 'kerja ', 3, 3, NULL),
(537, 174, 'P', 'terminasi', 1, 1, NULL),
(538, 175, 'S', 'persiapan', 1, NULL, NULL),
(539, 175, 'P', 'kerja ', 3, 3, NULL),
(540, 175, 'P', 'terminasi', 1, 1, NULL),
(541, 176, 'S', 'persiapan', 1, NULL, NULL),
(542, 176, 'P', 'kerja ', 3, 3, NULL),
(543, 176, 'P', 'terminasi', 1, 1, NULL),
(544, 177, 'S', 'persiapan', 1, NULL, NULL),
(545, 177, 'P', 'kerja ', 3, 3, NULL),
(546, 177, 'P', 'terminasi', 1, 1, NULL),
(547, 178, 'S', 'persiapan', 1, NULL, NULL),
(548, 178, 'P', 'kerja ', 3, 3, NULL),
(549, 178, 'P', 'terminasi', 1, 1, NULL),
(550, 179, 'S', 'persiapan', 1, NULL, NULL),
(551, 179, 'P', 'kerja ', 3, 3, NULL),
(552, 179, 'P', 'terminasi', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_parameter`
--

CREATE TABLE `mst_parameter` (
  `parameter_id` char(2) NOT NULL,
  `parameter_nm` varchar(255) DEFAULT NULL,
  `parameter_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_parameter`
--

INSERT INTO `mst_parameter` (`parameter_id`, `parameter_nm`, `parameter_value`) VALUES
('WP', 'WAKTU PELAYANAN SETAHUN (menit)', '101520');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_pelayanan`
--

CREATE TABLE `mst_pelayanan` (
  `pelayanan_id` int(11) NOT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `pelayanan_nm` varchar(255) DEFAULT NULL,
  `pelayanan_jml` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_pelayanan`
--

INSERT INTO `mst_pelayanan` (`pelayanan_id`, `poli_id`, `pelayanan_nm`, `pelayanan_jml`) VALUES
(1, 1, 'PEMERIKSAAN DOKTER\r\n', 15012),
(2, 1, 'NEBULIZER\r\n', 4),
(3, 1, 'TTV\r\n', 36),
(4, 3, 'mengukur ttv kelas 1', 16628),
(5, 3, 'mengukur ttv kelas 2', 12458),
(6, 3, 'mengukur ttv kelas 3', 62428),
(7, 3, 'mengukur ttv vip', 2291),
(8, 3, 'Monitor dan dokumentasi ttv, 922036 Monitor dan dokumentasi ttv (HD), 173035 Monitor dan dokumentasi ttv (IGD) kelas 1', 38031),
(9, 3, 'Monitor dan dokumentasi ttv, 922036 Monitor dan dokumentasi ttv (HD), 173035 Monitor dan dokumentasi ttv (IGD) kelas 2', 26817),
(10, 3, 'Monitor dan dokumentasi ttv, 922036 Monitor dan dokumentasi ttv (HD), 173035 Monitor dan dokumentasi ttv (IGD) kelas 3', 134619),
(11, 3, 'Monitor dan dokumentasi ttv, 922036 Monitor dan dokumentasi ttv (HD), 173035 Monitor dan dokumentasi ttv (IGD) vip', 5472),
(12, 3, 'Pengelolaan therapi oral kelas 1', 14064),
(13, 3, 'Pengelolaan therapi oral kelas 2', 9532),
(14, 3, 'Pengelolaan therapi oral kelas 3', 46388),
(15, 3, 'Pengelolaan therapi oral vip', 2158),
(16, 3, 'Informed consent kelas 1', 9128),
(17, 3, 'Informed consent kelas 2', 9348),
(18, 3, 'Informed consent kelas 3', 45385),
(19, 3, 'Informed consent vip', 242),
(20, 3, 'Ambulasi kelas 1', 8843),
(21, 3, 'Ambulasi kelas 2', 7906),
(22, 3, 'Ambulasi kelas 3', 37748),
(23, 3, 'Ambulasi vip', 804),
(24, 3, 'Mengajarkan distraksi & relaksasi kelas 1', 10656),
(25, 3, 'Mengajarkan distraksi & relaksasi kelas 2', 9147),
(26, 3, 'Mengajarkan distraksi & relaksasi kelas 3', 41937),
(27, 3, 'Mengajarkan distraksi & relaksasi vip', 2404),
(28, 3, 'Mengajarkan nafas dalam dan batuk efektif kelas 1', 8309),
(29, 3, 'Mengajarkan nafas dalam dan batuk efektif kelas 2', 9409),
(30, 3, 'Mengajarkan nafas dalam dan batuk efektif kelas 3', 40317),
(31, 3, 'Mengajarkan nafas dalam dan batuk efektif vip', 5446),
(32, 3, 'Perawatan infus kelas 1', 15031),
(33, 3, 'Perawatan infus kelas 2', 9899),
(34, 3, 'Perawatan infus kelas 3', 48547),
(35, 3, 'Perawatan infus vip', 2149),
(36, 3, 'Perawatan infus umbilical kelas 1', 897),
(37, 3, 'Perawatan infus umbilical kelas 2', 1225),
(38, 3, 'Perawatan infus umbilical kelas 3', 3510),
(39, 3, 'Perawatan infus umbilical vip', 1),
(40, 3, 'Perawatan oksigenKelas 1', 3741),
(41, 3, 'Perawatan oksigenKelas 2', 2665),
(42, 3, 'Perawatan oksigenKelas 3', 15218),
(43, 3, 'Perawatan oksigenvip', 838),
(44, 3, 'Melepas infusKelas 1', 4213),
(45, 3, 'Melepas infusKelas 2', 2495),
(46, 3, 'Melepas infusKelas 3', 12367),
(47, 3, 'Melepas infusvip', 665),
(48, 3, 'Pengelolaan th/ tetesKelas 1', 6762),
(49, 3, 'Pengelolaan th/ tetesKelas 2', 2874),
(50, 3, 'Pengelolaan th/ tetesKelas 3', 8830),
(51, 3, 'Pengelolaan th/ tetesvip', 43),
(52, 3, 'Mengganti linen dengan pasien di TTKelas 1', 14866),
(53, 3, 'Mengganti linen dengan pasien di TTKelas 2', 10515),
(54, 3, 'Mengganti linen dengan pasien di TTKelas 3', 52131),
(55, 3, 'Mengganti linen dengan pasien di TTvip', 2009),
(56, 3, 'Pemberian 02 nasal kanulKelas 1', 5274),
(57, 3, 'Pemberian 02 nasal kanulKelas 2', 3426),
(58, 3, 'Pemberian 02 nasal kanulKelas 3', 18653),
(59, 3, 'Pemberian 02 nasal kanulvip', 570),
(60, 3, 'Pengelolaan TH/IM/IV/IC/SCKelas 1', 15252),
(61, 3, 'Pengelolaan TH/IM/IV/IC/SCKelas 2', 10474),
(62, 3, 'Pengelolaan TH/IM/IV/IC/SCKelas 3', 52488),
(63, 3, 'Pengelolaan TH/IM/IV/IC/SCvip', 2136),
(64, 3, 'Healt educationKelas 1', 36474),
(65, 3, 'Healt educationKelas 2', 25832),
(66, 3, 'Healt educationKelas 3', 126929),
(67, 3, 'Healt educationvip', 4876),
(68, 3, 'Askep spiritualKelas 1', 1911),
(69, 3, 'Askep spiritualKelas 2', 1943),
(70, 3, 'Askep spiritualKelas 3', 10212),
(71, 3, 'Askep spiritualvip', 72),
(72, 3, 'Sampling darahKelas 1', 4101),
(73, 3, 'Sampling darahKelas 2', 2767),
(74, 3, 'Sampling darahKelas 3', 14680),
(75, 3, 'Sampling darahvip', 461),
(76, 3, 'Observasi pasien trauma/colikKelas 1', 7854),
(77, 3, 'Observasi pasien trauma/colikKelas 2', 7984),
(78, 3, 'Observasi pasien trauma/colikKelas 3', 39589),
(79, 3, 'Observasi pasien trauma/colikvip', 21),
(80, 3, 'Pasang infus tanpa penyulitKelas 1', 1163),
(81, 3, 'Pasang infus tanpa penyulitKelas 2', 401),
(82, 3, 'Pasang infus tanpa penyulitKelas 3', 1813),
(83, 3, 'Pasang infus tanpa penyulitvip', 230),
(84, 3, 'Vulva higineKelas 1', 804),
(85, 3, 'Vulva higineKelas 2', 1237),
(86, 3, 'Vulva higineKelas 3', 6243),
(87, 3, 'Vulva higinevip', 13345),
(88, 3, 'MemandikanKelas 1', 2652),
(89, 3, 'MemandikanKelas 2', 4043),
(90, 3, 'MemandikanKelas 3', 20695),
(91, 3, 'Memandikanvip', 94),
(92, 3, 'Membantu BAB/BAKKelas 1', 4762),
(93, 3, 'Membantu BAB/BAKKelas 2', 6233),
(94, 3, 'Membantu BAB/BAKKelas 3', 31069),
(95, 3, 'Membantu BAB/BAKvip', 2960),
(96, 3, 'Pemberian diit sondeKelas 1', NULL),
(97, 3, 'Pemberian diit sondeKelas 2', NULL),
(98, 3, 'Pemberian diit sondeKelas 3', NULL),
(99, 3, 'Pemberian diit sondevip', NULL),
(100, 3, 'Blader triningKelas 1', NULL),
(101, 3, 'Blader triningKelas 2', NULL),
(102, 3, 'Blader triningKelas 3', NULL),
(103, 3, 'Blader triningvip', NULL),
(104, 3, 'Kompres Kelas 1', NULL),
(105, 3, 'Kompres Kelas 2', NULL),
(106, 3, 'Kompres Kelas 3', NULL),
(107, 3, 'Kompres vip', NULL),
(108, 3, 'kompres hangat/dingin/buli-buli hangatKelas 1', 4843),
(109, 3, 'kompres hangat/dingin/buli-buli hangatKelas 2', 5996),
(110, 3, 'kompres hangat/dingin/buli-buli hangatKelas 3', 26351),
(111, 3, 'kompres hangat/dingin/buli-buli hangatvip', 5205),
(112, 3, 'Kompresi bimanual externaKelas 1', 2),
(113, 3, 'Kompresi bimanual externaKelas 2', 2),
(114, 3, 'Kompresi bimanual externaKelas 3', 11),
(115, 3, 'Kompresi bimanual externavip', 73),
(116, 3, 'Kompresi bimanual internaKelas 1', 161),
(117, 3, 'Kompresi bimanual internaKelas 2', 81),
(118, 3, 'Kompresi bimanual internaKelas 3', 299),
(119, 3, 'Kompresi bimanual internavip', NULL),
(120, 3, 'perawatan luka kotorKelas 1', NULL),
(121, 3, 'perawatan luka kotorKelas 2', NULL),
(122, 3, 'perawatan luka kotorKelas 3', NULL),
(123, 3, 'perawatan luka kotorvip', NULL),
(124, 3, 'Perawatan luka kotor < 5 cmKelas 1', 5),
(125, 3, 'Perawatan luka kotor < 5 cmKelas 2', NULL),
(126, 3, 'Perawatan luka kotor < 5 cmKelas 3', 8),
(127, 3, 'Perawatan luka kotor < 5 cmvip', NULL),
(128, 3, 'Perawatan luka kotor > 10 cm (Khusus RI) (ISO)Kelas 1', NULL),
(129, 3, 'Perawatan luka kotor > 10 cm (Khusus RI) (ISO)Kelas 2', NULL),
(130, 3, 'Perawatan luka kotor > 10 cm (Khusus RI) (ISO)Kelas 3', 7),
(131, 3, 'Perawatan luka kotor > 10 cm (Khusus RI) (ISO)vip', NULL),
(132, 3, 'Perawatan luka kotor 5-10 cmKelas 1', 498),
(133, 3, 'Perawatan luka kotor 5-10 cmKelas 2', 450),
(134, 3, 'Perawatan luka kotor 5-10 cmKelas 3', 2632),
(135, 3, 'Perawatan luka kotor 5-10 cmvip', 64),
(136, 3, 'Perawatan luka bersihKelas 1', NULL),
(137, 3, 'Perawatan luka bersihKelas 2', NULL),
(138, 3, 'Perawatan luka bersihKelas 3', NULL),
(139, 3, 'Perawatan luka bersihvip', NULL),
(140, 3, 'Perawatan luka bersih < 5 cmKelas 1', 5),
(141, 3, 'Perawatan luka bersih < 5 cmKelas 2', 5),
(142, 3, 'Perawatan luka bersih < 5 cmKelas 3', 13),
(143, 3, 'Perawatan luka bersih < 5 cmvip', 267),
(144, 3, 'Perawatan luka bersih > 10 cmKelas 1', 319),
(145, 3, 'Perawatan luka bersih > 10 cmKelas 2', 291),
(146, 3, 'Perawatan luka bersih > 10 cmKelas 3', 1643),
(147, 3, 'Perawatan luka bersih > 10 cmvip', 41),
(148, 3, 'Perawatan luka bersih 5-10 cmKelas 1', 971),
(149, 3, 'Perawatan luka bersih 5-10 cmKelas 2', 907),
(150, 3, 'Perawatan luka bersih 5-10 cmKelas 3', 5826),
(151, 3, 'Perawatan luka bersih 5-10 cmvip', 33),
(152, 3, 'Memasang NGTKelas 1', 66),
(153, 3, 'Memasang NGTKelas 2', 49),
(154, 3, 'Memasang NGTKelas 3', 266),
(155, 3, 'Memasang NGTvip', 5),
(156, 3, 'mamasang dcKelas 1', 203),
(157, 3, 'mamasang dcKelas 2', 153),
(158, 3, 'mamasang dcKelas 3', 741),
(159, 3, 'mamasang dcvip', 40),
(160, 3, 'merekam ekgKelas 1', 672),
(161, 3, 'merekam ekgKelas 2', 361),
(162, 3, 'merekam ekgKelas 3', 2130),
(163, 3, 'merekam ekgvip', 70),
(164, 3, 'sampling urineKelas 1', 196),
(165, 3, 'sampling urineKelas 2', 121),
(166, 3, 'sampling urineKelas 3', 688),
(167, 3, 'sampling urinevip', 37),
(168, 3, 'sampling vecesKelas 1', NULL),
(169, 3, 'sampling vecesKelas 2', NULL),
(170, 3, 'sampling vecesKelas 3', NULL),
(171, 3, 'sampling vecesvip', NULL),
(172, 3, 'sampling tcm/dahakKelas 1', NULL),
(173, 3, 'sampling tcm/dahakKelas 2', NULL),
(174, 3, 'sampling tcm/dahakKelas 3', NULL),
(175, 3, 'sampling tcm/dahakvip', NULL),
(176, 3, 'Sampling dahakKelas 1', 40),
(177, 3, 'Sampling dahakKelas 2', 37),
(178, 3, 'Sampling dahakKelas 3', 254),
(179, 3, 'Sampling dahakvip', 6),
(180, 3, 'menghitung balance cairanKelas 1', 14871),
(181, 3, 'menghitung balance cairanKelas 2', 9210),
(182, 3, 'menghitung balance cairanKelas 3', 46336),
(183, 3, 'menghitung balance cairanvip', 2083),
(184, 3, 'Balance cairanKelas 1', 14871),
(185, 3, 'Balance cairanKelas 2', 9210),
(186, 3, 'Balance cairanKelas 3', 46336),
(187, 3, 'Balance cairanvip', 2083),
(188, 3, 'syring pumpKelas 1', NULL),
(189, 3, 'syring pumpKelas 2', NULL),
(190, 3, 'syring pumpKelas 3', NULL),
(191, 3, 'syring pumpvip', NULL),
(192, 3, 'Pengelolaan th/dg syring pumpKelas 1', 300),
(193, 3, 'Pengelolaan th/dg syring pumpKelas 2', 224),
(194, 3, 'Pengelolaan th/dg syring pumpKelas 3', 1382),
(195, 3, 'Pengelolaan th/dg syring pumpvip', 42),
(196, 3, 'infus pumpKelas 1', NULL),
(197, 3, 'infus pumpKelas 2', NULL),
(198, 3, 'infus pumpKelas 3', NULL),
(199, 3, 'infus pumpvip', NULL),
(200, 3, 'Memasang infus pumpKelas 1', 63),
(201, 3, 'Memasang infus pumpKelas 2', 24),
(202, 3, 'Memasang infus pumpKelas 3', 173),
(203, 3, 'Memasang infus pumpvip', 8),
(204, 3, 'memberikan tranfusi darahKelas 1', NULL),
(205, 3, 'memberikan tranfusi darahKelas 2', NULL),
(206, 3, 'memberikan tranfusi darahKelas 3', NULL),
(207, 3, 'memberikan tranfusi darahvip', NULL),
(208, 3, 'Pengelolaan transfusiKelas 1', 479),
(209, 3, 'Pengelolaan transfusiKelas 2', 435),
(210, 3, 'Pengelolaan transfusiKelas 3', 3243),
(211, 3, 'Pengelolaan transfusivip', 29),
(212, 3, 'Melatih ROMKelas 1', NULL),
(213, 3, 'Melatih ROMKelas 2', NULL),
(214, 3, 'Melatih ROMKelas 3', NULL),
(215, 3, 'Melatih ROMvip', NULL),
(216, 3, 'nebulizerKelas 1', 1948),
(217, 3, 'nebulizerKelas 2', 999),
(218, 3, 'nebulizerKelas 3', 5681),
(219, 3, 'nebulizervip', 270),
(220, 3, 'melepas DCKelas 1', NULL),
(221, 3, 'melepas DCKelas 2', NULL),
(222, 3, 'melepas DCKelas 3', NULL),
(223, 3, 'melepas DCvip', NULL),
(224, 3, 'Melepas DC pada pasien hidupKelas 1', 609),
(225, 3, 'Melepas DC pada pasien hidupKelas 2', 517),
(226, 3, 'Melepas DC pada pasien hidupKelas 3', 2658),
(227, 3, 'Melepas DC pada pasien hidupvip', 86),
(228, 3, 'melepas infusKelas 1', 4213),
(229, 3, 'melepas infusKelas 2', 2495),
(230, 3, 'melepas infusKelas 3', 12367),
(231, 3, 'melepas infusvip', 665),
(232, 3, 'melepas NGTKelas 1', NULL),
(233, 3, 'melepas NGTKelas 2', NULL),
(234, 3, 'melepas NGTKelas 3', NULL),
(235, 3, 'melepas NGTvip', NULL),
(236, 3, 'Melepas NGT pada pasien hidupKelas 1', 53),
(237, 3, 'Melepas NGT pada pasien hidupKelas 2', 48),
(238, 3, 'Melepas NGT pada pasien hidupKelas 3', 287),
(239, 3, 'Melepas NGT pada pasien hidupvip', 4),
(240, 3, 'melepas tamponKelas 1', NULL),
(241, 3, 'melepas tamponKelas 2', NULL),
(242, 3, 'melepas tamponKelas 3', NULL),
(243, 3, 'melepas tamponvip', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_poli`
--

CREATE TABLE `mst_poli` (
  `poli_id` int(11) NOT NULL,
  `poli_nm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_poli`
--

INSERT INTO `mst_poli` (`poli_id`, `poli_nm`) VALUES
(1, 'Poli Anak'),
(2, 'Poli Jantung'),
(3, 'Ranap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_sdm`
--

CREATE TABLE `mst_sdm` (
  `sdm_id` int(11) NOT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `sdm_biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes`
--

CREATE TABLE `tes` (
  `id` int(11) NOT NULL,
  `a` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tes`
--

INSERT INTO `tes` (`id`, `a`) VALUES
(1, '1'),
(2, '1'),
(3, '1');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_bl_bahan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_bl_bahan` (
`pelayanan_nm` varchar(255)
,`pelayanan_id` int(11)
,`bahan_harga` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_bl_sdm`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_bl_sdm` (
`poli_id` int(11)
,`biaya_per_menit` double(17,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_btl_gedung`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_btl_gedung` (
`poli_id` int(11)
,`harga` double(17,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_btl_nonmedis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_btl_nonmedis` (
`poli_id` int(11)
,`harga` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_btl_operasional`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_btl_operasional` (
`poli_id` int(11)
,`harga` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_btl_total`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_btl_total` (
`poli_id` int(11)
,`harga` double(17,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_btl_total_cd`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_btl_total_cd` (
`poli_id` int(11)
,`total_cd` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_btl_total_cd_primer`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_btl_total_cd_primer` (
`poli_id` int(11)
,`total_cd` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `___btl_alat`
--

CREATE TABLE `___btl_alat` (
  `btl_alat_id` int(11) NOT NULL,
  `alat_nm` varchar(255) DEFAULT NULL,
  `luas` int(11) DEFAULT NULL,
  `harga_per_meter` int(11) DEFAULT NULL,
  `masa_hidup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_bl_bahan`
--
DROP TABLE IF EXISTS `v_bl_bahan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bl_bahan`  AS SELECT `b`.`pelayanan_nm` AS `pelayanan_nm`, `a`.`pelayanan_id` AS `pelayanan_id`, sum(`a`.`kebutuhan` * `a`.`bahan_harga`) AS `bahan_harga` FROM (`bl_bahan` `a` join `mst_pelayanan` `b` on(`a`.`pelayanan_id` = `b`.`pelayanan_id`)) GROUP BY `a`.`pelayanan_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_bl_sdm`
--
DROP TABLE IF EXISTS `v_bl_sdm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bl_sdm`  AS SELECT `bl_sdm`.`poli_id` AS `poli_id`, round(sum(`bl_sdm`.`biaya`) / (select `mst_parameter`.`parameter_value` from `mst_parameter` where `mst_parameter`.`parameter_id` = 'WP'),0) AS `biaya_per_menit` FROM `bl_sdm` GROUP BY `bl_sdm`.`poli_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_btl_gedung`
--
DROP TABLE IF EXISTS `v_btl_gedung`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_btl_gedung`  AS SELECT `btl_gedung`.`poli_id` AS `poli_id`, round(`btl_gedung`.`luas` * `btl_gedung`.`harga_per_meter` / `btl_gedung`.`masa_hidup`,0) AS `harga` FROM `btl_gedung` GROUP BY `btl_gedung`.`poli_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_btl_nonmedis`
--
DROP TABLE IF EXISTS `v_btl_nonmedis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_btl_nonmedis`  AS SELECT `a`.`poli_id` AS `poli_id`, round(sum(`a`.`biaya_depresiasi`),0) AS `harga` FROM (select `btl_nonmedis`.`nonmedis_id` AS `nonmedis_id`,`btl_nonmedis`.`poli_id` AS `poli_id`,`btl_nonmedis`.`nonmedis_nm` AS `nonmedis_nm`,`btl_nonmedis`.`harga` AS `harga`,`btl_nonmedis`.`masa_hidup` AS `masa_hidup`,round(`btl_nonmedis`.`harga` / `btl_nonmedis`.`masa_hidup`,0) AS `biaya_depresiasi` from `btl_nonmedis`) AS `a` GROUP BY `a`.`poli_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_btl_operasional`
--
DROP TABLE IF EXISTS `v_btl_operasional`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_btl_operasional`  AS SELECT `btl_operasional`.`poli_id` AS `poli_id`, sum(`btl_operasional`.`harga`) AS `harga` FROM `btl_operasional` GROUP BY `btl_operasional`.`poli_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_btl_total`
--
DROP TABLE IF EXISTS `v_btl_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_btl_total`  AS SELECT `a`.`poli_id` AS `poli_id`, sum(`a`.`harga`) AS `harga` FROM (select `v_btl_gedung`.`poli_id` AS `poli_id`,`v_btl_gedung`.`harga` AS `harga` from `v_btl_gedung` union all select `v_btl_nonmedis`.`poli_id` AS `poli_id`,`v_btl_nonmedis`.`harga` AS `harga` from `v_btl_nonmedis` union all select `v_btl_operasional`.`poli_id` AS `poli_id`,`v_btl_operasional`.`harga` AS `harga` from `v_btl_operasional`) AS `a` GROUP BY `a`.`poli_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_btl_total_cd`
--
DROP TABLE IF EXISTS `v_btl_total_cd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_btl_total_cd`  AS SELECT `b`.`poli_id` AS `poli_id`, sum(`a`.`waktu_pelayanan` * `b`.`pelayanan_jml`) AS `total_cd` FROM (`dat_aktivitas` `a` join `mst_pelayanan` `b` on(`a`.`pelayanan_id` = `b`.`pelayanan_id`)) GROUP BY `b`.`poli_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_btl_total_cd_primer`
--
DROP TABLE IF EXISTS `v_btl_total_cd_primer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_btl_total_cd_primer`  AS SELECT `b`.`poli_id` AS `poli_id`, sum(`a`.`waktu_primer_pelayanan` * `b`.`pelayanan_jml`) AS `total_cd` FROM (`dat_aktivitas` `a` join `mst_pelayanan` `b` on(`a`.`pelayanan_id` = `b`.`pelayanan_id`)) GROUP BY `b`.`poli_id` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bl_alat`
--
ALTER TABLE `bl_alat`
  ADD PRIMARY KEY (`alat_id`) USING BTREE;

--
-- Indeks untuk tabel `bl_bahan`
--
ALTER TABLE `bl_bahan`
  ADD PRIMARY KEY (`bahan_id`) USING BTREE;

--
-- Indeks untuk tabel `bl_sdm`
--
ALTER TABLE `bl_sdm`
  ADD PRIMARY KEY (`sdm_id`) USING BTREE;

--
-- Indeks untuk tabel `btl_gedung`
--
ALTER TABLE `btl_gedung`
  ADD PRIMARY KEY (`btl_gedung_id`) USING BTREE;

--
-- Indeks untuk tabel `btl_nonmedis`
--
ALTER TABLE `btl_nonmedis`
  ADD PRIMARY KEY (`nonmedis_id`) USING BTREE;

--
-- Indeks untuk tabel `btl_operasional`
--
ALTER TABLE `btl_operasional`
  ADD PRIMARY KEY (`operasional_id`) USING BTREE;

--
-- Indeks untuk tabel `dat_aktivitas`
--
ALTER TABLE `dat_aktivitas`
  ADD PRIMARY KEY (`aktivitas_id`) USING BTREE;

--
-- Indeks untuk tabel `mst_parameter`
--
ALTER TABLE `mst_parameter`
  ADD PRIMARY KEY (`parameter_id`) USING BTREE;

--
-- Indeks untuk tabel `mst_pelayanan`
--
ALTER TABLE `mst_pelayanan`
  ADD PRIMARY KEY (`pelayanan_id`) USING BTREE;

--
-- Indeks untuk tabel `mst_poli`
--
ALTER TABLE `mst_poli`
  ADD PRIMARY KEY (`poli_id`) USING BTREE;

--
-- Indeks untuk tabel `mst_sdm`
--
ALTER TABLE `mst_sdm`
  ADD PRIMARY KEY (`sdm_id`) USING BTREE;

--
-- Indeks untuk tabel `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `___btl_alat`
--
ALTER TABLE `___btl_alat`
  ADD PRIMARY KEY (`btl_alat_id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bl_alat`
--
ALTER TABLE `bl_alat`
  MODIFY `alat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `bl_bahan`
--
ALTER TABLE `bl_bahan`
  MODIFY `bahan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `bl_sdm`
--
ALTER TABLE `bl_sdm`
  MODIFY `sdm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `btl_gedung`
--
ALTER TABLE `btl_gedung`
  MODIFY `btl_gedung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `btl_nonmedis`
--
ALTER TABLE `btl_nonmedis`
  MODIFY `nonmedis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `btl_operasional`
--
ALTER TABLE `btl_operasional`
  MODIFY `operasional_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dat_aktivitas`
--
ALTER TABLE `dat_aktivitas`
  MODIFY `aktivitas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT untuk tabel `mst_pelayanan`
--
ALTER TABLE `mst_pelayanan`
  MODIFY `pelayanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT untuk tabel `mst_poli`
--
ALTER TABLE `mst_poli`
  MODIFY `poli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tes`
--
ALTER TABLE `tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
