-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 06:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `resto_akses`
--

CREATE TABLE `resto_akses` (
  `akses_id` int(2) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `akses_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_akses`
--

INSERT INTO `resto_akses` (`akses_id`, `user_username`, `kategori_id`, `akses_update`) VALUES
(2, 'dapur', 2, '2019-03-22 22:14:32'),
(4, 'dapur', 3, '2019-03-22 22:15:00'),
(5, 'dapur', 1, '2019-03-22 22:15:03'),
(6, 'kasir', 1, '2019-03-23 13:04:54'),
(7, 'kasir', 2, '2019-03-23 13:04:57'),
(8, 'kasir', 3, '2019-03-23 13:05:01'),
(9, 'kasir', 4, '2019-03-23 13:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `resto_contact`
--

CREATE TABLE `resto_contact` (
  `contact_id` int(2) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_web` varchar(50) DEFAULT NULL,
  `contact_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_contact`
--

INSERT INTO `resto_contact` (`contact_id`, `contact_name`, `contact_address`, `contact_phone`, `contact_email`, `contact_web`, `contact_update`) VALUES
(1, 'Osaka Sushi', 'Jl. Cipedes I No.15, Cipedes, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46111', '0817-4988-4500', 'osakasushi@gmail.com', 'https://osakasushi.id', '2022-06-18 15:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `resto_kategori`
--

CREATE TABLE `resto_kategori` (
  `kategori_id` int(2) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_seo` text NOT NULL,
  `kategori_icon` varchar(50) NOT NULL,
  `kategori_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_kategori`
--

INSERT INTO `resto_kategori` (`kategori_id`, `kategori_nama`, `kategori_seo`, `kategori_icon`, `kategori_update`) VALUES
(2, 'PAKET', 'paket', 'hepi', '2022-06-18 20:44:55'),
(4, 'DRINK', 'drink', 'fa fa-bottle', '2022-06-18 17:29:01'),
(5, 'SUSHI', 'sushi', 'ss', '2022-06-18 20:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `resto_meja`
--

CREATE TABLE `resto_meja` (
  `meja_id` int(2) NOT NULL,
  `meja_nama` varchar(50) NOT NULL,
  `meja_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_meja`
--

INSERT INTO `resto_meja` (`meja_id`, `meja_nama`, `meja_update`) VALUES
(1, '1', '2019-03-09 21:49:24'),
(3, '3', '2019-03-09 21:49:31'),
(4, '4', '2019-04-29 21:58:04'),
(5, '5', '2019-04-30 11:11:19'),
(6, '6', '2019-04-30 11:11:28'),
(7, '7', '2019-04-30 11:11:37'),
(8, '8', '2019-04-30 11:11:45'),
(9, '9', '2019-04-30 11:11:53'),
(10, '2', '2019-04-30 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `resto_menu`
--

CREATE TABLE `resto_menu` (
  `menu_id` int(10) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `menu_kode` varchar(5) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_seo` text NOT NULL,
  `menu_deskripsi` text NOT NULL,
  `menu_harga` int(10) NOT NULL DEFAULT 0 COMMENT 'Harga',
  `menu_waktu` int(2) NOT NULL DEFAULT 0 COMMENT 'Waktu Masak',
  `menu_foto` varchar(100) DEFAULT NULL COMMENT 'Foto Masakan',
  `menu_jual` int(10) NOT NULL DEFAULT 0,
  `menu_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_menu`
--

INSERT INTO `resto_menu` (`menu_id`, `kategori_id`, `menu_kode`, `menu_nama`, `menu_seo`, `menu_deskripsi`, `menu_harga`, `menu_waktu`, `menu_foto`, `menu_jual`, `menu_update`) VALUES
(6, 2, '00006', 'MINI HEPI', 'mini-hepi', 'Paket Sushi Hemat dengan isi 16 pcs dengan varian topping godzilla, crazy cheezy, rasengan dan gatot kaca', 42000, 13, 'Menu_makanan_mini-hepi_1655550161.jpg', 0, '2022-06-18 18:02:41'),
(7, 2, '00007', 'SUSHI PARTY', 'sushi-party', 'Rayakan hari spesialmu dengan Sushi Party! terdapat 4 varian sushi yaitu godzilla, crazy cheezy, rasengan dan Kuroko di tengahnya (40 pcs)', 120000, 30, 'Menu_makanan_sushi-party_1655550087.jpg', 1, '2022-06-18 18:01:28'),
(8, 2, '00008', 'SUPER SALMON', 'super-salmon', 'Paket Salmon Extra yang berisi Salmon Sakuru, Nigiri Salmon dan Gunkan Mentai', 54000, 20, 'Menu_makanan_super-salmon_1655549974.jpg', 1, '2022-06-18 17:59:35'),
(9, 4, '00009', 'SPARKLING PEACH &AMP; THYME MOCKTAIL', 'sparkling-peach-amp-thyme-mocktail', 'Try this fizzy peach and thyme mocktail #ad for all of your lighter summer moments!', 21000, 5, 'Menu_makanan_sparkling-peach-amp-thyme-mocktail_1655559827.jpg', 2, '2022-06-18 20:43:47'),
(10, 4, '00010', 'FROZEN CHERRY COSMOPOLITAN', 'frozen-cherry-cosmopolitan', 'Tart but sweet, with a hint of lime. Sharp from the vodka and the grand marnier reminds me sliiiiiightly of a margarita but without the mind-numbing tequila.', 21000, 5, 'Menu_makanan_frozen-cherry-cosmopolitan_1655559724.jpg', 0, '2022-06-18 20:42:04'),
(11, 4, '00011', 'ICE LEMON TEA', 'ice-lemon-tea', 'Es Teh Lemon', 12500, 2, 'Menu_makanan_ice-lemon-tea_1655556587.jpg', 0, '2022-06-18 19:49:47'),
(12, 4, '00012', 'OCHA⁕KA SWEET SAKURA', 'ocha⁕ka-sweet-sakura', 'A combination of Premium Sakura Powder & Full Cream Milk, turned into a delightful Sweet Sakura drink. (530ml)', 26500, 8, 'Menu_makanan_ochabullka-sweet-sakura_1655556368.jpg', 1, '2022-06-18 19:51:11'),
(13, 4, '00013', 'OCHA⁕KA CLASSIC HOJICHA', 'ocha⁕ka-classic-hojicha', 'A collaboration between Full Cream Milk & Roasted Greentea Powder. This drink has low caffeine and unlike Matcha who has a bitter taste, Hojicha has a rich earthy flavor that makes you crave more to relieve your thirst. (530ml)', 26500, 8, 'Menu_makanan_ochabullka-classic-hojicha_1655556159.jpg', 1, '2022-06-18 19:51:36'),
(17, 2, '00014', 'SUSHI HEPI', 'sushi-hepi', 'Paket sushi Hemat dengan isi 24 pcs dengan 3 menu yaitu Godzilla, Crazy Cheezy dan Rasengan', 60000, 18, 'Menu_makanan_sushi-hepi_1655550279.jpg', 0, '2022-06-18 18:04:39'),
(18, 5, '00015', 'TOBIRAMA', 'tobirama', 'Menu Sushi roll baru dari Osaka Sushi Mataram dengan isian Ayam Katsu, Kyuri (Timun), & Fishroll dengan Tobiko (Flying Fish Roe) di atasnya (8pcs)', 30000, 15, 'Menu_makanan_tobirama_1655550346.jpg', 0, '2022-06-18 18:05:46'),
(19, 5, '00016', 'KABUTO', 'kabuto', 'Sushi Roll baru dari Osaka Sushi dengan isian Chicken Katsu, Fishroll, & Crabstick dengan Mayonais, Saus Teriyaki & Ikan Cakalang Asap (Katsuoboshi) di atas nya.', 30000, 15, 'Menu_makanan_kabuto_1655550393.jpg', 0, '2022-06-18 18:06:33'),
(20, 5, '00017', 'HANABI', 'hanabi', 'Menu sushi roll baru dari Osaka sushi yang berisi Ayam katsu dan Crabstick dengan Chuka Wakame sebagai topping di atas nya (8pcs).', 30000, 15, 'Menu_makanan_hanabi_1655550440.jpg', 0, '2022-06-18 18:07:21'),
(21, 5, '00018', 'ABURI SALMON', 'aburi-salmon', 'Nigiri Salmon yang diselimuti dengan saus mentai, di bakar lalu di taburi parsley (4pcs).', 24000, 13, 'Menu_makanan_aburi-salmon_1655550512.jpg', 0, '2022-06-18 18:08:33'),
(22, 5, '00019', 'GYUUNIKU', 'gyuuniku', 'Nigiri Rice dengan Beef Slice di atasnya, disantap bersama Spicy Mayo (4pcs).', 24000, 13, 'Menu_makanan_gyuuniku_1655550556.jpg', 0, '2022-06-18 18:09:16'),
(23, 5, '00020', 'GUNKAN MENTAI', 'gunkan-mentai', 'Gunkan Sushi dengan isi tumisan Salmon, Tuna, Kani dan Saus Mentai (4 pcs)', 24000, 13, 'Menu_makanan_gunkan-mentai_1655550599.jpg', 0, '2022-06-18 18:09:59'),
(24, 5, '00021', 'GATOT KACA', 'gatot-kaca', 'Sushi roll dengan isi Ayam Katsu, Kyuri (Timun) dan Sosis dengan toppingan wijen di atasnya (8pcs).', 21600, 12, 'Menu_makanan_-gatot-kaca_1655550638.jpg', 0, '2022-06-18 18:10:38'),
(25, 5, '00022', 'SALMON SAKURU', 'salmon-sakuru', 'Sushi roll dengan isi Kani dan Kyuri (Crabstick & Timun) beserta toppingan salmon di atas nya (8pcs).', 33600, 18, 'Menu_makanan_salmon-sakuru_1655550792.jpg', 0, '2022-06-18 18:13:12'),
(26, 5, '00023', 'SASORI TUNA', 'sasori-tuna', 'Sushi roll dengan isian Tempura dan Fishroll beserta tuna slice di atasnya (8pcs).', 33600, 18, 'Menu_makanan_sasori-tuna_1655550840.jpg', 0, '2022-06-18 18:14:00'),
(27, 5, '00024', 'NANATSU', 'nanatsu', 'Sushi roll dengan isian Chikenkatsu dan Crabstick beserta toppingan Tuna Slice / Salmon Slice di atas nya (8pcs).', 33600, 18, 'Menu_makanan_nanatsu_1655550915.jpg', 0, '2022-06-18 18:15:15'),
(28, 5, '00025', 'ROCKEN ROLL', 'rocken-roll', 'Sushi roll dengan isian Tempura dan Kyuri (Timun) beserta toppingan Salmon Slice / Tuna Slice di atas nya (8pcs).', 33600, 18, 'Menu_makanan_rocken-roll_1655550960.jpg', 0, '2022-06-18 18:16:00'),
(29, 5, '00026', 'NIGIRI SALMON', 'nigiri-salmon', 'Nasi Kepal Nigiri yang diatasnya diberi potongan ikan Salmon Mentah / Setengah Matang / Matang (4pcs).', 24000, 12, 'Menu_makanan_nigiri-salmon_1655551000.jpg', 0, '2022-06-18 18:16:40'),
(30, 5, '00027', 'NIGIRI TUNA', 'nigiri-tuna', 'Nasi Kepal Nigiri yang diatasnya diberi potongan ikan Tuna Mentah / Setengah Matang / Matang (4pcs).', 24000, 12, 'Menu_makanan_nigiri-tuna_1655551044.jpg', 0, '2022-06-18 18:17:24'),
(31, 5, '00028', 'CRAZY CHEEZY', 'crazy-cheezy', 'Sushi roll dengan isian Ayam Katsu dan Kani (Crabstick) (8pcs). Yang suka keju mana suaranyaaa?', 24000, 12, 'Menu_makanan_crazy-cheezy_1655551093.jpg', 0, '2022-06-18 18:18:13'),
(32, 5, '00029', 'RASENGAN', 'rasengan', 'Sushi roll dengan isian Ayam Katsu, Kani (Crabstick) dan Fishroll (8pcs).', 24000, 12, 'Menu_makanan_rasengan_1655551149.jpg', 0, '2022-06-18 18:19:09'),
(33, 5, '00030', 'DRAGONBALL', 'dragonball', 'Sushi roll dengan isian Tempura, Kani (Crabstick) dan Fishroll (8pcs).', 24000, 12, 'Menu_makanan_dragonball_1655551233.jpg', 0, '2022-06-18 18:20:33'),
(34, 5, '00031', 'KANIMAKI', 'kanimaki', 'Sushi roll mungil dengan isian kani dan kyuri, disertai dengan 3 macam saus, Wasabi, Spicy Mayo, & Soy Sauce', 21600, 11, 'Menu_makanan_kanimaki_1655551286.jpg', 0, '2022-06-18 18:21:27'),
(35, 5, '00032', 'KUROKO', 'kuroko', 'Sushi roll dengan isian Ayam Katsu, Kyuri (Timun) dan Bawang Bombay yang di tumis harum (8pcs)', 21600, 11, 'Menu_makanan_kuroko_1655551324.jpg', 0, '2022-06-18 18:22:04'),
(36, 5, '00033', 'TOKYO TOWER', 'tokyo-tower', 'Sushi roll dengan isian Tempura dan Kyuri (Timun) (8pcs). Yang hobi makan udang dijamin suka!', 21600, 11, 'Menu_makanan_tokyo-tower_1655555860.jpg', 0, '2022-06-18 19:37:40'),
(37, 5, '00034', 'CHIDORI', 'chidori', 'Sushi roll dengan isian Ayam Katsu, Kani (Crabstick) dan Kyuri (Timun) (8pcs).', 21600, 11, 'Menu_makanan_chidori_1655555908.jpg', 0, '2022-06-18 19:38:28'),
(38, 5, '00035', 'GODZILLA', 'godzilla', 'Sushi roll dengan isian Ayam Katsu, Sosis dan Fishroll (8pcs). Bagi pecinta pedas wajib coba!', 21600, 11, 'Menu_makanan_-godzilla_1655555943.jpg', 0, '2022-06-18 19:39:03'),
(39, 4, '00036', 'OCHA⁕KA MATCHA LATTE', 'ocha⁕ka-matcha-latte', 'A strong Flavor Collision between Full Cream Milk with Premium Matcha Powder, resulting in a Classic Matcha Drink with a slightly bitter taste. (530ml)', 26500, 8, 'Menu_makanan_ochabullka-matcha-latte_1655556207.jpg', 0, '2022-06-18 19:51:22'),
(40, 4, '00037', 'AIR MINERAL', 'air-mineral', 'air putih mineral', 5000, 2, 'Menu_makanan_air-mineral_1655556900.jpg', 0, '2022-06-18 19:55:00'),
(41, 4, '00038', 'SALTED CARAMEL MILKSHAKE', 'salted-caramel-milkshake', 'This Salted Caramel Milkshake is made with creamy vanilla ice cream and homemade salted caramel sauce. Topped with fluffy whipped cream, extra salted caramel sauce and toffee bits — this is the perfect chilly drink to indulge in this summer!', 21000, 5, 'Menu_makanan_salted-caramel-milkshake_1655559610.jpg', 0, '2022-06-18 20:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `resto_meta`
--

CREATE TABLE `resto_meta` (
  `meta_id` int(2) NOT NULL,
  `meta_name` varchar(50) NOT NULL COMMENT 'Nama Website',
  `meta_desc` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_author` varchar(100) DEFAULT NULL,
  `meta_developer` varchar(50) DEFAULT NULL,
  `meta_robots` varchar(50) DEFAULT NULL,
  `meta_googlebots` varchar(50) DEFAULT NULL,
  `meta_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_meta`
--

INSERT INTO `resto_meta` (`meta_id`, `meta_name`, `meta_desc`, `meta_keyword`, `meta_author`, `meta_developer`, `meta_robots`, `meta_googlebots`, `meta_update`) VALUES
(1, 'Osaka Sushi | Japan Restaurant ', 'Est.2013 | حلال', 'resto', 'NOKENCODE', 'NOKENCODE', 'index, follow', 'index, follow', '2022-06-18 14:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `resto_order`
--

CREATE TABLE `resto_order` (
  `order_id` int(10) NOT NULL,
  `meja_id` int(2) NOT NULL,
  `order_nama` varchar(50) NOT NULL,
  `order_tanggal` date DEFAULT NULL,
  `order_catatan` text DEFAULT NULL,
  `order_qty` int(5) NOT NULL,
  `order_waktu` int(10) NOT NULL DEFAULT 0,
  `order_diskon` int(10) NOT NULL DEFAULT 0,
  `order_total` int(10) NOT NULL DEFAULT 0,
  `order_bayar` int(10) NOT NULL DEFAULT 0,
  `order_kembali` int(10) DEFAULT 0,
  `order_tgl_bayar` date DEFAULT NULL,
  `order_status` int(1) NOT NULL DEFAULT 1 COMMENT '1=Blm Bayar,2=Bayar',
  `user_username` varchar(30) DEFAULT NULL COMMENT 'User Bayar',
  `order_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_order`
--

INSERT INTO `resto_order` (`order_id`, `meja_id`, `order_nama`, `order_tanggal`, `order_catatan`, `order_qty`, `order_waktu`, `order_diskon`, `order_total`, `order_bayar`, `order_kembali`, `order_tgl_bayar`, `order_status`, `user_username`, `order_update`) VALUES
(3, 3, 'JUJAN RACHMAT', '2019-03-20', 'Cukup Manis', 8, 18, 0, 157000, 160000, 3000, '2019-03-23', 2, 'kasir', '2019-03-23 14:41:02'),
(5, 3, 'PEBRIYANTI', '2019-03-23', '', 6, 33, 0, 95000, 100000, 5000, '2019-03-23', 2, 'admin', '2019-03-23 14:18:45'),
(6, 1, 'YOSEP ALFATAH', '2019-04-29', 'Saya pesan', 2, 18, 0, 40000, 0, 0, NULL, 2, NULL, '2019-04-29 23:00:29'),
(7, 4, 'AGUS', '2019-04-29', 'beli murah', 3, 16, 0, 30000, 0, 0, NULL, 2, NULL, '2019-04-29 23:00:19'),
(8, 6, 'DAHRI', '2019-07-10', 'Gpl ya?', 1, 3, 0, 10000, 0, 0, NULL, 2, NULL, '2022-06-18 19:55:45'),
(9, 1, 'SAYA', '2020-11-19', '', 1, 2, 0, 5000, 0, 0, NULL, 1, NULL, '2020-11-19 10:39:19'),
(10, 6, 'ACA', '2022-06-18', 'extra mayo', 2, 15, 0, 29000, 0, 0, NULL, 1, NULL, '2022-06-18 20:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `resto_order_detail`
--

CREATE TABLE `resto_order_detail` (
  `order_detail_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `order_detail_harga` int(10) NOT NULL DEFAULT 0,
  `order_detail_waktu` int(5) NOT NULL DEFAULT 0,
  `order_detail_qty` int(5) NOT NULL DEFAULT 0,
  `order_detail_subtotal` int(10) NOT NULL DEFAULT 0,
  `order_detail_status` int(1) NOT NULL DEFAULT 1 COMMENT '1=Baru, 2=Selesai',
  `order_detail_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_order_detail`
--

INSERT INTO `resto_order_detail` (`order_detail_id`, `order_id`, `menu_id`, `order_detail_harga`, `order_detail_waktu`, `order_detail_qty`, `order_detail_subtotal`, `order_detail_status`, `order_detail_update`) VALUES
(11, 3, 9, 7000, 2, 1, 7000, 1, '2019-03-21 21:39:58'),
(14, 5, 12, 10000, 3, 1, 10000, 2, '2019-03-23 14:42:56'),
(15, 5, 9, 7000, 2, 1, 7000, 2, '2019-03-23 14:03:20'),
(16, 5, 13, 10000, 4, 1, 10000, 2, '2019-03-23 14:03:01'),
(17, 5, 8, 13000, 5, 1, 13000, 2, '2019-03-23 14:42:56'),
(18, 5, 7, 50000, 15, 1, 50000, 2, '2019-03-23 14:02:55'),
(22, 7, 11, 5000, 2, 1, 5000, 1, '2019-04-29 22:53:19'),
(23, 7, 13, 10000, 4, 1, 10000, 1, '2019-04-29 22:53:20'),
(25, 8, 12, 10000, 3, 1, 10000, 1, '2019-07-10 11:13:42'),
(26, 9, 11, 5000, 2, 1, 5000, 1, '2020-11-19 10:39:19'),
(27, 10, 21, 24000, 13, 1, 24000, 1, '2022-06-18 20:48:34'),
(28, 10, 40, 5000, 2, 1, 5000, 1, '2022-06-18 20:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `resto_slider`
--

CREATE TABLE `resto_slider` (
  `slider_id` int(2) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_slider`
--

INSERT INTO `resto_slider` (`slider_id`, `slider_image`, `slider_update`) VALUES
(1, 'Slider_1655545868.jpg', '2022-06-18 16:51:08'),
(2, 'Slider_1655557941.jpg', '2022-06-18 20:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `resto_social`
--

CREATE TABLE `resto_social` (
  `social_id` int(2) NOT NULL,
  `social_name` varchar(50) NOT NULL,
  `social_class` varchar(50) NOT NULL,
  `social_url` varchar(100) NOT NULL,
  `social_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_social`
--

INSERT INTO `resto_social` (`social_id`, `social_name`, `social_class`, `social_url`, `social_update`) VALUES
(1, 'Facebook', 'facebook', 'https://m.facebook.com/OsakaSuhsi.Tasik/', '2022-06-18 19:56:03'),
(2, 'Twitter', 'twitter', 'https://twitter.com/', '2020-11-19 11:00:45'),
(3, 'Instagram', 'instagram', 'https://www.instagram.com/osakasushi.id/', '2022-06-18 19:56:14'),
(4, 'Youtube', 'youtube', 'https://www.youtube.com', '2020-11-19 11:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `resto_users`
--

CREATE TABLE `resto_users` (
  `user_username` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `user_level` enum('Admin','Bar','Dapur','Kasir','-') NOT NULL DEFAULT '-',
  `user_date_create` datetime NOT NULL,
  `user_date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_users`
--

INSERT INTO `resto_users` (`user_username`, `user_password`, `user_name`, `user_email`, `user_avatar`, `user_status`, `user_level`, `user_date_create`, `user_date_update`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'NAEMY', '1772@gmail.com', 'Avatar_admin_1655611963.jpg', 'Aktif', 'Admin', '0000-00-00 00:00:00', '2022-06-19 11:13:17'),
('dapur', '7c11a6cf40cff2ad6cf71aa10dfc092167320a90', 'RENATA', '1209@gmail.com', 'Avatar_dapur_1655612085.jpg', 'Aktif', 'Dapur', '2019-03-09 21:52:27', '2022-06-19 11:14:45'),
('kasir', '8691e4fc53b99da544ce86e22acba62d13352eff', 'VIRRA', '1909@gmail.com', 'Avatar_kasir_1655612041.jpg', 'Aktif', 'Kasir', '2019-03-09 21:52:14', '2022-06-19 11:14:01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_akses`
-- (See below for the actual view)
--
CREATE TABLE `v_akses` (
`akses_id` int(2)
,`user_username` varchar(30)
,`kategori_id` int(2)
,`akses_update` datetime
,`kategori_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_menu`
-- (See below for the actual view)
--
CREATE TABLE `v_menu` (
`menu_id` int(10)
,`kategori_id` int(2)
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`menu_deskripsi` text
,`menu_harga` int(10)
,`menu_waktu` int(2)
,`menu_foto` varchar(100)
,`menu_jual` int(10)
,`menu_update` datetime
,`kategori_nama` varchar(50)
,`kategori_seo` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_order`
-- (See below for the actual view)
--
CREATE TABLE `v_order` (
`order_id` int(10)
,`meja_id` int(2)
,`order_nama` varchar(50)
,`order_tanggal` date
,`order_catatan` text
,`order_qty` int(5)
,`order_waktu` int(10)
,`order_diskon` int(10)
,`order_total` int(10)
,`order_bayar` int(10)
,`order_kembali` int(10)
,`order_tgl_bayar` date
,`order_status` int(1)
,`user_username` varchar(30)
,`order_update` datetime
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_order_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_order_detail` (
`order_detail_id` int(10)
,`order_id` int(10)
,`menu_id` int(10)
,`order_detail_harga` int(10)
,`order_detail_waktu` int(5)
,`order_detail_qty` int(5)
,`order_detail_subtotal` int(10)
,`order_detail_status` int(1)
,`order_detail_update` datetime
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`kategori_id` int(2)
,`order_status` int(1)
,`order_tanggal` date
,`meja_id` int(2)
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_akses`
--
DROP TABLE IF EXISTS `v_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_akses`  AS   (select `a`.`akses_id` AS `akses_id`,`a`.`user_username` AS `user_username`,`a`.`kategori_id` AS `kategori_id`,`a`.`akses_update` AS `akses_update`,`k`.`kategori_nama` AS `kategori_nama` from (`resto_akses` `a` join `resto_kategori` `k` on(`a`.`kategori_id` = `k`.`kategori_id`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS   (select `m`.`menu_id` AS `menu_id`,`m`.`kategori_id` AS `kategori_id`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`menu_deskripsi` AS `menu_deskripsi`,`m`.`menu_harga` AS `menu_harga`,`m`.`menu_waktu` AS `menu_waktu`,`m`.`menu_foto` AS `menu_foto`,`m`.`menu_jual` AS `menu_jual`,`m`.`menu_update` AS `menu_update`,`k`.`kategori_nama` AS `kategori_nama`,`k`.`kategori_seo` AS `kategori_seo` from (`resto_menu` `m` join `resto_kategori` `k` on(`m`.`kategori_id` = `k`.`kategori_id`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_order`
--
DROP TABLE IF EXISTS `v_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order`  AS   (select `o`.`order_id` AS `order_id`,`o`.`meja_id` AS `meja_id`,`o`.`order_nama` AS `order_nama`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`order_catatan` AS `order_catatan`,`o`.`order_qty` AS `order_qty`,`o`.`order_waktu` AS `order_waktu`,`o`.`order_diskon` AS `order_diskon`,`o`.`order_total` AS `order_total`,`o`.`order_bayar` AS `order_bayar`,`o`.`order_kembali` AS `order_kembali`,`o`.`order_tgl_bayar` AS `order_tgl_bayar`,`o`.`order_status` AS `order_status`,`o`.`user_username` AS `user_username`,`o`.`order_update` AS `order_update`,`m`.`meja_nama` AS `meja_nama` from (`resto_order` `o` join `resto_meja` `m` on(`o`.`meja_id` = `m`.`meja_id`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_order_detail`
--
DROP TABLE IF EXISTS `v_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_detail`  AS   (select `d`.`order_detail_id` AS `order_detail_id`,`d`.`order_id` AS `order_id`,`d`.`menu_id` AS `menu_id`,`d`.`order_detail_harga` AS `order_detail_harga`,`d`.`order_detail_waktu` AS `order_detail_waktu`,`d`.`order_detail_qty` AS `order_detail_qty`,`d`.`order_detail_subtotal` AS `order_detail_subtotal`,`d`.`order_detail_status` AS `order_detail_status`,`d`.`order_detail_update` AS `order_detail_update`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`kategori_id` AS `kategori_id`,`o`.`order_status` AS `order_status`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`meja_id` AS `meja_id`,`j`.`meja_nama` AS `meja_nama` from (((`resto_order_detail` `d` join `resto_order` `o` on(`d`.`order_id` = `o`.`order_id`)) join `resto_menu` `m` on(`d`.`menu_id` = `m`.`menu_id`)) join `resto_meja` `j` on(`o`.`meja_id` = `j`.`meja_id`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD PRIMARY KEY (`akses_id`),
  ADD KEY `user_username` (`user_username`);

--
-- Indexes for table `resto_contact`
--
ALTER TABLE `resto_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `resto_kategori`
--
ALTER TABLE `resto_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `resto_meja`
--
ALTER TABLE `resto_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `resto_meta`
--
ALTER TABLE `resto_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `resto_order`
--
ALTER TABLE `resto_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `resto_order_ibfk_1` (`meja_id`);

--
-- Indexes for table `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `resto_order_detail_ibfk_1` (`order_id`),
  ADD KEY `resto_order_detail_ibfk_2` (`menu_id`);

--
-- Indexes for table `resto_slider`
--
ALTER TABLE `resto_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `resto_social`
--
ALTER TABLE `resto_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `resto_users`
--
ALTER TABLE `resto_users`
  ADD PRIMARY KEY (`user_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resto_akses`
--
ALTER TABLE `resto_akses`
  MODIFY `akses_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resto_contact`
--
ALTER TABLE `resto_contact`
  MODIFY `contact_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resto_kategori`
--
ALTER TABLE `resto_kategori`
  MODIFY `kategori_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resto_meja`
--
ALTER TABLE `resto_meja`
  MODIFY `meja_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `resto_menu`
--
ALTER TABLE `resto_menu`
  MODIFY `menu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `resto_meta`
--
ALTER TABLE `resto_meta`
  MODIFY `meta_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resto_order`
--
ALTER TABLE `resto_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  MODIFY `order_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `resto_slider`
--
ALTER TABLE `resto_slider`
  MODIFY `slider_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resto_social`
--
ALTER TABLE `resto_social`
  MODIFY `social_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD CONSTRAINT `resto_akses_ibfk_1` FOREIGN KEY (`user_username`) REFERENCES `resto_users` (`user_username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD CONSTRAINT `resto_menu_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `resto_kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resto_order`
--
ALTER TABLE `resto_order`
  ADD CONSTRAINT `resto_order_ibfk_1` FOREIGN KEY (`meja_id`) REFERENCES `resto_meja` (`meja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD CONSTRAINT `resto_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `resto_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resto_order_detail_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `resto_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
