-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 03:20 AM
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
-- Database: `sipakot-3`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `title`, `image`, `slug`, `body`, `is_active`, `created_at`) VALUES
(15, 'Pelatihan Pemanfaatan Bahan Bekas Kepada Masyarakat', 'pelatihan-pemanfaatan-bahan-bekas-kepada-masyarakat.jpg', 'pelatihan pemanfaatan bahan bekas kepada masyarakat', '<p>Kegiatan pelatihan pemanfaatan bahan bekas yaotu membuat hidroponik menggunakan jerigen bekas dan gelas minuman kemasan serta pembuatan aquaponik menggunakan ban bekas di Kelurahan Bahayangkara serta pembagian tanah, pupuk kandang, sekam, komposter dan tong air.</p>\r\n', '1', '2022-04-29 02:54:14'),
(16, 'Masyarakat Membuat Kompos Dari Bahan Bekas', 'masyarakat-membuat-kompos-dari-bahan-bekas.jpg', 'masyarakat membuat kompos dari bahan bekas', '<p>Kegiatan pelatihan pembuatan kompos menggunakan komposter dan menggunakan keranjang takakura di Kampung Yoka.</p>\r\n', '1', '2022-04-29 02:56:10'),
(17, 'Rehabilitasi Lahan Kritis di Gunung Gurabesi', 'rehabilitasi-lahan-kritis-di-gunung-gurabesi.jpg', 'rehabilitasi lahan kritis di gunung gurabesi', '<p>Kegiatan rehabilitasi lahan kritis di Kelurahan Gurabesi. Lokasi seluas 1 hektar. Pemilihan Gunung Gurabesi karena area ini merupakan area penyangga intake air. Jenis pohon yang ditanam antara lain cemara, kayu putih, jambu mete, gnemo dan ketapang. Jumlah bibit yang ditanam adalah sebanyak 1111 bibit.</p>\r\n', '1', '2022-04-29 02:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_kk`
--

CREATE TABLE `bobot_kk` (
  `id_bkk` varchar(20) NOT NULL,
  `peruntuk` varchar(100) NOT NULL,
  `nil1` varchar(5) NOT NULL,
  `nil2` varchar(5) NOT NULL,
  `nil3` varchar(5) NOT NULL,
  `nil4` varchar(5) NOT NULL,
  `nil5` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bobot_kk`
--

INSERT INTO `bobot_kk` (`id_bkk`, `peruntuk`, `nil1`, `nil2`, `nil3`, `nil4`, `nil5`) VALUES
('BKK/01/20210301', 'Non Niaga', '1', '1.1', '1.2', '1.3', '1.4'),
('BKK/02/20210301', 'Niaga Kecil', '2', '2.2', '2.4', '2.6', '2.8'),
('BKK/03/20210301', 'Industri Kecil', '3', '3.3', '3.6', '3.9', '4.5'),
('BKK/04/20210301', 'Niaga Besar', '4', '4.4', '4.8', '5.2', '5.6'),
('BKK/05/20210301', 'Industri Besar', '5', '5.5', '6.0', '6.5', '7.0');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_ksda`
--

CREATE TABLE `bobot_ksda` (
  `id_bksda` varchar(20) NOT NULL,
  `kriteria` varchar(100) NOT NULL,
  `peringkat` int(3) NOT NULL,
  `bobot` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bobot_ksda`
--

INSERT INTO `bobot_ksda` (`id_bksda`, `kriteria`, `peringkat`, `bobot`) VALUES
('BKSD/01/20210301', 'Air bawah tanah, kualitas baik, ada sumber air alternatif', 8, 8),
('BKSD/02/20210301', 'Air bawah tanah, kualitas baik, tidak ada sumber air alternatif', 7, 7),
('BKSD/03/20210301', 'Air bawah tanah, kualitas jelek', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `bukti_pembayaran`
--

CREATE TABLE `bukti_pembayaran` (
  `id` int(5) NOT NULL,
  `id_wp` int(50) NOT NULL,
  `id_tagihan` int(5) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bukti_pembayaran`
--

INSERT INTO `bukti_pembayaran` (`id`, `id_wp`, `id_tagihan`, `bukti_pembayaran`) VALUES
(54, 0, 52, 'bukti-pembayaran-1621263543.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id`, `bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `komponen_sda`
--

CREATE TABLE `komponen_sda` (
  `id_ksda` varchar(20) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komponen_sda`
--

INSERT INTO `komponen_sda` (`id_ksda`, `ket`) VALUES
('NPA/01/20210301', 'Bisa berbe nii'),
('NPA/02/20210301', 'Hallo Semua'),
('NPA/03/20210301', 'Minyak Tanah');

-- --------------------------------------------------------

--
-- Table structure for table `opsi`
--

CREATE TABLE `opsi` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opsi`
--

INSERT INTO `opsi` (`id`, `kategori`, `judul`, `isi`) VALUES
(1, 'Pajak', 'pajak_dpp', '<p>PERATURAN WALIKOTA JAYAPURA NOMOR 21 TAHUN 2018 TENTANG NILAI PEROLEHAN AIR TANAH</p>\r\n\r\n<ol>\r\n	<li>Air Tanah adalah air yang terdapat dalam lapisan tanah atau batuan dibawah permukaan tanah</li>\r\n	<li>Pajak Air Tanah adalah Pajak atas pegambilan&nbsp;dan/ atau pemanfaatan air tanah</li>\r\n	<li>Nilai Perolehan Air Tanah yang selanjutnya NPA adalah Nilai air tanah yang telah diambil dan/ atau dimanfaatkan dan dikenai Pajak Air Tanah, yang besarnya sama dengan volume air yang diambil dikalikan dengan Harga Dasar Air</li>\r\n	<li>Harga Dasar Air yang selanjutnya HDA adalah Harga rata - rata air tanah per satuan volume yang akan dikenai Pajak AIr Tanah, besarnya sama dengan harga air baku dikalikan dengan faktor nilai air&nbsp;</li>\r\n	<li>Harga Air Baku yang selanjutnya disingkat HAB adalah harga rata - rata air tanah per satuan volume yang besarnya sama dengan nilai investasi untuk mendapatkan air bawah tanah dibagi dengan volume produksinya (m3)</li>\r\n	<li>Subjek pemakai atau kelompok pemakai air tanah adalah orang atau badan yang mengambil dan/ atau memanfaatkan atau pengguna air tanah, terdiri dari usaha perdagangan/ jasa, usaha dalam bidang perianan/ peternakan, perkebunan, industri (sebagai bahan penunjang produksi dan sebagai bahan pokok produksi)</li>\r\n</ol>\r\n'),
(2, 'Pajak', 'pajak_npa', '<p>KOMPONEN NILAI PEROLEHAN AIR TANAH (NPA)</p>\r\n\r\n<ol>\r\n	<li>NPA dinyatakan dalam rupiah yang dihitung dengan mempertimbangkan sebagian atau seluruh faktor sebagai berikut: (a) jenis sumber air; (b) lokasi sumber air; (c) tujuan pengambilan dan/ atau pemanfaatan air; (d) volume air yang diambil atau dimanfaatkan; (e) kualitas air; (f) tingkat kerusakan lingkungan yang diakibatkan oleh pengambilan dan/ atau pemanfaatan air&nbsp;</li>\r\n	<li>NPA mengandung dua komponen yang terdiri dari: (a) volume air yang diambil; (b) HDA</li>\r\n	<li>Volume air dihitung dalam satuan kubik (m3) per satu bulan kalender</li>\r\n	<li>NPA yang tidak kena pajak pengambilan dan/ atau pemanfaatan dengan volume sebesar 50 m3 per satu bulan kalender</li>\r\n	<li>HDA dihitung dalam satuan rupiah yang memuat komponen: (a) sumber daya alam air dengan bobot 60%; (b) kompensasi pemulihan, peruntukan dan pengelolaan dengan bobot 40%</li>\r\n	<li>Bobot komponen sumber daya alam air tanah terdiri dari: (1) Air bawah tanah, kualitas baik, ada sumber air alternatif dengan bobot 9; (2) Air bawah tanah, kualitas baik, tidak ada sumber air alternatif dengan bobot 4; (3) Air bawah tanah kualitas jelek dengan bobot 1</li>\r\n</ol>\r\n'),
(3, 'Pajak', 'pajak_pabt', '0.2'),
(4, 'Pengaturan', 'logo_large_light', 'logo_large_light.png'),
(5, 'Pengaturan', 'logo_large_dark', 'logo_large_dark.png'),
(6, 'Pengaturan', 'logo_small_light', 'logo_small_light.png'),
(7, 'Pengaturan', 'logo_small_dark', 'logo_small_dark.png'),
(8, 'Pengaturan', 'favicon', 'favicon.png'),
(9, 'Harga', 'harga_baku', '1200'),
(10, 'Pengaturan', 'judul_situs', 'SIPAKOT - Sistem Informasi Pengelolaan Pajak Air Tanah Kota Jayapura'),
(11, 'Pengaturan', 'tag_line', 'Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura\r\n'),
(12, 'Pengaturan', 'footer_text', 'Copyright &copy; 2021 - Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura.'),
(13, 'Pengaturan', 'footer_text_right', 'Dikembangkan oleh <a href=\"https://nokensoft.com\" class=\"text-warning\" target=\"_blank\">Nokensoft</a>');

-- --------------------------------------------------------

--
-- Table structure for table `pajak_hda`
--

CREATE TABLE `pajak_hda` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `komponen` text NOT NULL,
  `persentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pajak_hda`
--

INSERT INTO `pajak_hda` (`id`, `kriteria`, `komponen`, `persentasi`) VALUES
(1, 'A', 'Sumber Daya Alam', '0.6'),
(2, 'B', 'Kompensasi Pemulihan, Peruntukan dan Pengolahan', '0.4');

-- --------------------------------------------------------

--
-- Table structure for table `pajak_kk`
--

CREATE TABLE `pajak_kk` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `n1` varchar(5) NOT NULL,
  `n2` varchar(5) NOT NULL,
  `n3` varchar(5) NOT NULL,
  `n4` varchar(5) NOT NULL,
  `n5` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pajak_kk`
--

INSERT INTO `pajak_kk` (`id`, `kriteria`, `n1`, `n2`, `n3`, `n4`, `n5`) VALUES
(1, 'Non Niaga', '1', '1.1', '1.2', '1.3', '1.4'),
(2, 'Niaga Kecil', '2', '2.2', '2.4', '2.6', '2.8'),
(3, 'Industri Kecil', '3', '3.3', '3.6', '3.9', '4.5'),
(4, 'Niaga Besar', '4', '4.4', '4.8', '5.2', '5.6'),
(5, 'Industri Besar', '5', '5.5', '6.0', '6.5', '7.0');

-- --------------------------------------------------------

--
-- Table structure for table `pajak_ksda`
--

CREATE TABLE `pajak_ksda` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(100) NOT NULL,
  `peringkat` varchar(5) NOT NULL,
  `bobot` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pajak_ksda`
--

INSERT INTO `pajak_ksda` (`id`, `kriteria`, `peringkat`, `bobot`) VALUES
(1, 'Kualitas Baik, Ada Sumber Air Alternatif', '3', '9'),
(2, 'Kualitas Baik, Tidak Ada Sumber Air Alternatif	', '2', '4'),
(3, 'Kualitas Jelek	', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `logo_large_light` char(50) NOT NULL,
  `logo_large_dark` char(50) NOT NULL,
  `logo_small_light` char(50) NOT NULL,
  `logo_small_dark` char(50) NOT NULL,
  `favicon` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `logo_large_light`, `logo_large_dark`, `logo_small_light`, `logo_small_dark`, `favicon`) VALUES
(1, 'logo-kota-jayapura-700.png', 'logo-kota-jayapura-700-dark.png', 'logo-kota-jayapura-500.png', 'logo-kota-jayapura-500.png', 'favicon-cms-hr.png');

-- --------------------------------------------------------

--
-- Table structure for table `pengenaan_pajak`
--

CREATE TABLE `pengenaan_pajak` (
  `id_pp` varchar(20) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengenaan_pajak`
--

INSERT INTO `pengenaan_pajak` (`id_pp`, `ket`) VALUES
('PP/01/20210301', 'asam'),
('PP/02/20210301', 'enak'),
('PP/03/20210301', 'pahit'),
('PP/04/20210301', 'manis');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(20) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `tugas` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `no_telp`, `email`, `alamat`, `tugas`, `foto`, `username`, `password`, `level`, `status`) VALUES
('DP04032021001', 'Kristovel Edoway', '1234567890', 'kristovele@gmail.com', 'Entrop Jaya Asri', 'Freelance Tukang Ketik Papua', 'foto.jpg', 'admin', 'admin', 'Administrator', 'Aktif'),
('DP05032021002', 'Marlon Wanggai', '081256712900', 'marlonw@gmail.com', 'Jln. Pasar ikan', 'Memegang Sistem Web Kominfo', 'user9.png', 'alon', 'alon', 'Supervisor', 'Aktif'),
('DP05032021003', 'Herman Msen', '081299710250', 'emanmsen@gmail.com', 'Padan Bulang Sosial', 'Dosen di Sistem Informasi Biak', 'user3.png', 'eman', 'eman', 'Pelaksana', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `presentase_khda`
--

CREATE TABLE `presentase_khda` (
  `id_pkhda` varchar(20) NOT NULL,
  `kriteria` varchar(3) NOT NULL,
  `komponen` varchar(150) NOT NULL,
  `persen` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presentase_khda`
--

INSERT INTO `presentase_khda` (`id_pkhda`, `kriteria`, `komponen`, `persen`) VALUES
('', 'A', '	\r\nSumber Daya Alam', 60),
('B', '', 'Kompensasi Pemulihan, Peruntukan dan Pengolahan\r\n', 40),
('PKHDA/01/20210301', 'A', 'Sumber Daya Alam', 60),
('PKHDA/02/20210301', 'B', 'Kompensasi Pemulihan, Peruntukan dan Pengolahan', 40);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id` int(11) NOT NULL,
  `id_bulan` int(2) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `id_wp` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `jenis_pipa` varchar(50) NOT NULL,
  `diameter` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `usaha_kategori` int(1) NOT NULL,
  `harga_baku` varchar(20) NOT NULL,
  `pajak_pabt` varchar(5) NOT NULL,
  `persentasi_sda` varchar(5) NOT NULL,
  `persentasi_kompensasi` varchar(5) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `jumlah_sumur` varchar(30) NOT NULL,
  `kedalaman_sumur` varchar(30) NOT NULL,
  `total_pabt` varchar(30) NOT NULL,
  `id_pengguna` int(3) DEFAULT NULL,
  `created_by` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `total_pabt`, `id_pengguna`, `created_by`, `created_at`) VALUES
(76, 4, '2021', '1622089001', 'tagiahan air tanah bulan April', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 06:45:16'),
(77, 5, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '40', '', 18, 0, '2021-05-27 06:48:29'),
(78, 5, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '3', '25', '', 18, 0, '2021-05-27 06:52:07'),
(79, 4, '2021', '1622089144', 'Infomasi tagihan air tanah bulan april', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 06:53:50'),
(80, 5, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30-40 meter', '0', 18, 0, '2021-05-27 06:54:41'),
(81, 5, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30', '', 18, 0, '2021-05-27 06:55:33'),
(82, 5, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', '', 18, 0, '2021-05-27 06:57:17'),
(83, 5, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', '', 18, 0, '2021-05-27 06:57:49'),
(84, 5, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', '', 18, 0, '2021-05-27 06:58:59'),
(85, 5, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', '', 18, 0, '2021-05-27 06:59:15'),
(86, 5, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '25', '', 18, 0, '2021-05-27 07:00:11'),
(87, 4, '2021', '1621924495', 'informasi tagihan pajak air tanah bulan april ', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:02:59'),
(88, 5, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', '', 18, 0, '2021-05-27 07:03:33'),
(89, 5, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', '', 18, 0, '2021-05-27 07:04:34'),
(90, 5, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', '', 18, 0, '2021-05-27 07:05:26'),
(91, 5, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', '', 18, 0, '2021-05-27 07:06:57'),
(92, 5, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', '', 18, 0, '2021-05-27 07:07:50'),
(93, 5, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:10:17'),
(94, 5, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:11:17'),
(95, 4, '2021', '1622097281', 'informasi tagihan air tanah bulan april', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '12 m', '', 18, 0, '2021-05-27 07:11:18'),
(96, 4, '2021', '1622094527', 'informasi tagihan air pajak bulan april', '4', '', '', '27', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:11:58'),
(97, 5, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:13:21'),
(98, 5, '2021', '1622092765', 'Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:14:27'),
(99, 5, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', '', 18, 0, '2021-05-27 07:14:40'),
(100, 5, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:15:34'),
(101, 4, '2021', '1622089258', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:15:55'),
(102, 5, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:16:46'),
(103, 5, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', '', 18, 0, '2021-05-27 07:18:24'),
(104, 4, '2021', '1622089607', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '36', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:19:00'),
(105, 5, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', '', 18, 0, '2021-05-27 07:19:31'),
(106, 5, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', '', 18, 0, '2021-05-27 07:19:44'),
(107, 5, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', '', 18, 0, '2021-05-27 07:21:39'),
(108, 4, '2021', '1622089830', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:24:19'),
(109, 5, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', '', 18, 0, '2021-05-27 07:24:31'),
(110, 5, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', '', 18, 0, '2021-05-27 07:25:17'),
(111, 5, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '12 m', '', 18, 0, '2021-05-27 07:25:22'),
(112, 5, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', '', 18, 0, '2021-05-27 07:26:27'),
(114, 5, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '16 ', '', 18, 0, '2021-05-27 07:27:19'),
(115, 5, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', '', 18, 0, '2021-05-27 07:27:26'),
(117, 5, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30', '', 18, 0, '2021-05-27 07:28:48'),
(118, 5, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', '', 18, 0, '2021-05-27 07:30:16'),
(119, 5, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '4', '37', '', 18, 0, '2021-05-27 07:30:20'),
(120, 4, '2021', '1622089963', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:30:55'),
(121, 5, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '35', '', 18, 0, '2021-05-27 07:32:03'),
(122, 5, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24 ', '', 18, 0, '2021-05-27 07:32:05'),
(123, 5, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', '', 18, 0, '2021-05-27 07:33:28'),
(124, 4, '2021', '1622092987', 'informasi tagihan pajak air tanah bulan april ', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 07:34:05'),
(126, 5, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', '', 18, 0, '2021-05-27 07:34:19'),
(128, 5, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30', '', 18, 0, '2021-05-27 07:36:36'),
(129, 5, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', '', 18, 0, '2021-05-27 07:36:39'),
(130, 5, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40', '', 18, 0, '2021-05-27 07:37:28'),
(131, 5, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24', '', 18, 0, '2021-05-27 07:37:45'),
(132, 5, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '40', '', 18, 0, '2021-05-27 07:38:56'),
(133, 5, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', '', 18, 0, '2021-05-27 07:39:00'),
(134, 5, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '45', '', 18, 0, '2021-05-27 07:39:53'),
(135, 5, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24', '', 18, 0, '2021-05-27 07:40:55'),
(136, 5, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', '', 18, 0, '2021-05-27 07:41:17'),
(137, 5, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', '', 18, 0, '2021-05-27 07:41:56'),
(138, 5, '2021', '1622097351', 'Tagihan pajak air tanah periode Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '40', '', 18, 0, '2021-05-27 07:42:12'),
(139, 5, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', '', 18, 0, '2021-05-27 07:46:07'),
(140, 5, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', '', 18, 0, '2021-05-27 07:49:32'),
(141, 5, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24', '', 18, 0, '2021-05-27 07:54:00'),
(142, 5, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24 m', '', 18, 0, '2021-05-27 07:56:21'),
(143, 5, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', '', 18, 0, '2021-05-27 07:57:13'),
(144, 5, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', '', 18, 0, '2021-05-27 07:58:36'),
(145, 5, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14 m', '', 18, 0, '2021-05-27 07:59:28'),
(146, 5, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30', '', 18, 0, '2021-05-27 07:59:52'),
(147, 5, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 m', '', 18, 0, '2021-05-27 08:01:30'),
(148, 5, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24 m', '', 18, 0, '2021-05-27 08:01:32'),
(149, 5, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', '', 18, 0, '2021-05-27 08:02:31'),
(150, 4, '2021', '1622093162', 'informasi tagihan pajak air tanah bulan april ', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 08:02:39'),
(151, 5, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '12 m', '', 18, 0, '2021-05-27 08:03:57'),
(152, 5, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 m', '', 18, 0, '2021-05-27 08:03:59'),
(153, 4, '2021', '1622093394', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '94.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 08:04:24'),
(154, 5, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', '', 18, 0, '2021-05-27 08:04:52'),
(155, 5, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '20 m', '', 18, 0, '2021-05-27 08:05:53'),
(156, 5, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', '', 18, 0, '2021-05-27 08:06:26'),
(158, 4, '2021', '1622093523', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-05-27 08:07:05'),
(159, 5, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', '', 18, 0, '2021-05-27 08:07:43'),
(160, 5, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '12 m', '', 18, 0, '2021-05-27 08:08:53'),
(161, 5, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14 m', '', 18, 0, '2021-05-27 08:09:56'),
(162, 5, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30', '', 18, 0, '2021-05-27 08:10:49'),
(163, 5, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '20', '', 18, 0, '2021-05-27 08:12:09'),
(164, 5, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', '', 18, 0, '2021-05-27 08:12:46'),
(165, 5, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14 m', '', 18, 0, '2021-05-27 08:13:13'),
(166, 5, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 m', '', 18, 0, '2021-05-27 08:14:20'),
(167, 5, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 m', '', 18, 0, '2021-05-27 08:15:58'),
(168, 5, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24 m', '', 18, 0, '2021-05-27 08:17:50'),
(169, 5, '2021', '1622103288', 'Informasi Tagihan Air Tanah bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 m', '', 18, 0, '2021-05-27 08:19:23'),
(170, 2, '2021', '1623296443', 'Info Tagihan Bulan Februari', '4', '', '', '600', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14', '', 18, 0, '2021-06-10 03:42:29'),
(179, 2, '2021', '1623384439', 'Informasi Tagihan Bulanan', '4', '', '', '109', 0, 4, '1200', '0.2', '0.6', '0.4', '', '1', '', '', 18, 0, '2021-06-11 04:12:31'),
(180, 3, '2021', '1623384439', 'Informasi Tagihan Bulanan', '4', '', '', '88', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-11 04:12:46'),
(181, 4, '2021', '1623384439', 'Informasi Tagihan Bulanan', '4', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '1', '', '', 18, 0, '2021-06-11 04:13:04'),
(183, 5, '2021', '1622103466', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '172.28', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 01:24:24'),
(184, 5, '2021', '1623640323', 'Tagihan Pajak Air Tanah Bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:22:44'),
(185, 5, '2021', '1623731722', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '120.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:25:19'),
(186, 5, '2021', '1623642110', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:27:36'),
(187, 5, '2021', '1623642547', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:37:39'),
(188, 5, '2021', '1623642819', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:41:08'),
(189, 5, '2021', '1623643077', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:44:47'),
(190, 5, '2021', '1623643274', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:46:09'),
(191, 5, '2021', '1623732794', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:47:15'),
(192, 5, '2021', '1623645204', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:48:53'),
(193, 5, '2021', '1623645579', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '260.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:49:55'),
(194, 5, '2021', '1623645793', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:51:38'),
(195, 5, '2021', '1623645956', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '120.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:52:51'),
(196, 5, '2021', '1623646858', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:54:30'),
(197, 5, '2021', '1623647119', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:55:46'),
(198, 5, '2021', '1623647450', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 04:59:43'),
(199, 5, '2021', '1623647645', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:00:52'),
(200, 5, '2021', '1623647959', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:03:15'),
(201, 5, '2021', '1623648156', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:09:00'),
(203, 5, '2021', '1623734005', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:15:28'),
(204, 5, '2021', '1623648381', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '204.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:16:41'),
(205, 5, '2021', '1623648731', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '167.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:17:33'),
(206, 5, '2021', '1623648925', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '120.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:18:26'),
(207, 5, '2021', '1623649147', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:19:30'),
(208, 5, '2021', '1623734493', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '195.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:20:29'),
(209, 5, '2021', '1623649544', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:27:56'),
(210, 5, '2021', '1623734670', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '158.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:29:32'),
(211, 5, '2021', '1623734788', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '167.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:30:40'),
(212, 5, '2021', '1623734898', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:31:53'),
(213, 5, '2021', '1623734997', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:33:08'),
(214, 5, '2021', '1623735125', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:34:07'),
(215, 5, '2021', '1623735232', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:35:52'),
(216, 5, '2021', '1623735521', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '316.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:37:52'),
(217, 5, '2021', '1623735698', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:39:41'),
(218, 5, '2021', '1623735798', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '55.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:40:50'),
(219, 5, '2021', '1623735937', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:41:49'),
(221, 5, '2021', '1623736179', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-16 05:46:31'),
(222, 5, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '590', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-17 01:36:21'),
(223, 5, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '338', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-17 01:55:55'),
(224, 5, '2021', '1622092292', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '9', '', '', '309', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-17 02:00:13'),
(225, 5, '2021', '1623898133', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '217', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-17 03:14:27'),
(226, 5, '2021', '1623900677', 'Informasi Tagihan PAT', '4', '', '', '371', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1626156089.jpg', '1', '', '', 18, 0, '2021-06-17 10:22:32'),
(227, 5, '2021', '1623927556', 'Informasi Tagihan Air Tanah Periode Mei', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-17 11:02:49'),
(228, 5, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-06-17 11:35:55'),
(229, 5, '2021', '1622095324', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '172', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 01:58:55'),
(230, 5, '2021', '1622098496', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '696', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:10:23'),
(231, 5, '2021', '1622096916', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '164', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:11:13'),
(232, 5, '2021', '1622098684', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '691', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:12:12'),
(233, 5, '2021', '1623384439', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '47', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:19:17'),
(234, 5, '2021', '1622094263', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '368', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:20:18'),
(235, 5, '2021', '1622102685', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '164', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:21:37'),
(236, 5, '2021', '1625106239', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '317', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:26:45'),
(237, 5, '2021', '1623635157', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '177', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:40:46'),
(238, 5, '2021', '1625107310', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '88', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:48:07'),
(239, 5, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '215', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 02:56:22'),
(240, 5, '2021', '1625108657', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '97', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 03:09:10'),
(241, 5, '2021', '1625109010', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 03:14:28'),
(242, 5, '2021', '1625109334', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '24', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 03:19:22'),
(243, 5, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '610', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-01 04:20:46'),
(244, 6, '2021', '1623927556', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-06 00:19:41'),
(253, 5, '2021', '1625548247', 'Tagihan Pajak AIr Tanah Periode Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-06 05:14:29'),
(254, 6, '2021', '1622092292', 'Pajak Air Tanah Mall Jayapura Peride Juni 2021', '9', '', '', '327', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-07 02:00:15'),
(255, 6, '2021', '1626050298', 'Informasi Tagihan Pajak AIr Tanah Bulan Juli 2021', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-12 01:03:52'),
(256, 6, '2021', '1622095324', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '179', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-13 00:36:41'),
(257, 6, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '663', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-13 00:37:49'),
(258, 6, '2021', '1623900677', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '249', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1631857474.JPG', '', '', '', 18, 0, '2021-07-13 05:57:30'),
(259, 6, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '794', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 00:57:55'),
(260, 6, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '425', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 00:59:25'),
(261, 6, '2021', '1622090552', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:04:29'),
(262, 6, '2021', '1625107310', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:06:05'),
(263, 6, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '201', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:06:42'),
(264, 6, '2021', '1622098496', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '433', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:07:36'),
(265, 6, '2021', '1622090031', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '405', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:09:39'),
(266, 6, '2021', '1622096916', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '127', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:10:30'),
(267, 6, '2021', '1622098424', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '9', '', '', '801', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635822931.jpg', '', '', '', 18, 0, '2021-07-14 01:13:41'),
(268, 6, '2021', '1626225347', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:19:57'),
(269, 6, '2021', '1626225654', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:23:48'),
(270, 6, '2021', '1622093564', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:25:01'),
(271, 6, '2021', '1622092018', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '2548', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:27:55'),
(272, 6, '2021', '1622098684', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '265.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:34:22'),
(273, 6, '2021', '1625548247', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:34:53'),
(274, 6, '2021', '1626226519', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '68', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:40:10'),
(275, 6, '2021', '1626226937', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '107', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:47:09'),
(276, 6, '2021', '1626227277', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:50:08'),
(277, 6, '2021', '1626227510', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '92', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:55:16'),
(278, 6, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '249', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 01:58:49'),
(279, 6, '2021', '1626228149', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '92', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:05:00'),
(280, 6, '2021', '1622093001', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '140', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:06:27'),
(281, 6, '2021', '1622092470', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '333', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:09:49'),
(282, 6, '2021', '1626228632', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '184', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:15:24'),
(283, 6, '2021', '1626228945', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '255', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:18:35'),
(284, 6, '2021', '1626229415', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '137', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:28:08'),
(285, 6, '2021', '1622103166', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:29:03'),
(286, 6, '2021', '1622099456', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:29:37'),
(287, 6, '2021', '1625109334', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:30:08'),
(288, 6, '2021', '1625106239', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '119', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:31:44'),
(289, 6, '2021', '1623635157', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '108', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:32:44'),
(290, 6, '2021', '1626229992', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:35:42'),
(291, 6, '2021', '1626230210', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '97', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:40:31'),
(292, 6, '2021', '1622102685', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '32', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:41:25'),
(293, 6, '2021', '1622094263', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '302', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:42:50'),
(294, 6, '2021', '1623384439', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:43:28'),
(295, 6, '2021', '1625109010', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:44:15'),
(296, 6, '2021', '1625108657', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '88', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:47:34'),
(297, 6, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '295', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 02:48:22'),
(298, 6, '2021', '1622098297', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '97', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 03:31:24'),
(299, 6, '2021', '1622099271', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-14 03:34:30'),
(300, 5, '2021', '1622098424', 'Tagihan Pajak Air Tanah Periode  Bulan Mei 2021', '9', '', '', '689', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635822968.jpg', '', '', '', 18, 0, '2021-07-15 08:09:07'),
(301, 5, '2021', '1626395262', 'Tagihan Pajak Air Tanah Periode Bulan Mei 2021', '4', '', '', '332', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-16 00:30:54'),
(302, 6, '2021', '1626395262', 'Tagihan Pajak Air Tanah Periode Bulan Juni 2021', '4', '', '', '321', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-16 00:31:52'),
(303, 5, '2021', '1626050298', 'Tagihan Pajak Air Tanah Periode Mei 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-19 02:06:45'),
(304, 5, '2021', '1627344636', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-27 00:21:39'),
(305, 6, '2021', '1627344636', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-07-27 00:22:52'),
(306, 6, '2021', '1627905389', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 14:15:43'),
(307, 7, '2021', '1627905389', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 14:17:19'),
(308, 5, '2021', '1622099118', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 22:59:11'),
(309, 6, '2021', '1622099118', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 22:59:57'),
(310, 7, '2021', '1622099118', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 23:00:22'),
(311, 5, '2021', '1627905389', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 23:03:50'),
(312, 7, '2021', '1623927556', 'Tagihan PAT bulan Juli 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 23:46:03'),
(313, 5, '2021', '1622098297', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '166', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 23:52:32'),
(314, 5, '2021', '1622093825', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '269', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 23:55:53'),
(315, 6, '2021', '1622093825', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-02 23:56:15'),
(316, 5, '2021', '1626228945', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '200', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-03 00:16:31'),
(317, 5, '2021', '1622101246', 'Tagihan PAT bulan Mei 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 02:05:54'),
(318, 6, '2021', '1622101246', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '1800', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 02:06:25'),
(319, 7, '2021', '1622101246', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 02:06:49'),
(320, 5, '2021', '1628043297', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '1395', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 02:19:13'),
(321, 6, '2021', '1628043297', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '1350', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 02:19:38'),
(322, 7, '2021', '1628043297', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '1395', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 02:20:02'),
(324, 6, '2021', '1628048359', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '759', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 03:44:02'),
(325, 7, '2021', '1628048359', 'Tagihan PAT bulan Juli 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-04 03:44:40'),
(326, 5, '2021', '1628053281', 'Tagihan PAT Mei 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:41:05'),
(327, 6, '2021', '1628053281', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '330', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:41:43'),
(328, 7, '2021', '1628053281', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:42:06'),
(329, 5, '2021', '1628053192', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:44:54'),
(330, 6, '2021', '1628053192', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '660', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:45:46'),
(331, 7, '2021', '1628053192', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:47:00'),
(332, 5, '2021', '1628048359', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-05 03:52:55'),
(333, 7, '2021', '1622095324', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '285', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:15:34'),
(334, 7, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '904', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:17:41'),
(335, 7, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '1779', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:20:59'),
(336, 7, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '418', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:22:39'),
(337, 7, '2021', '1622092292', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '9', '', '', '523', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:24:48'),
(338, 7, '2021', '1623898133', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:29:59'),
(339, 7, '2021', '1629376442', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:37:56'),
(340, 7, '2021', '1625107310', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:42:21'),
(341, 7, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '229', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:44:04'),
(342, 7, '2021', '1629377204', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 12:53:23'),
(344, 7, '2021', '1629377959', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:01:51'),
(345, 7, '2021', '1629378379', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:08:53'),
(346, 7, '2021', '1622098904', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '514', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:09:51'),
(347, 7, '2021', '1622098496', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '627', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:11:14'),
(348, 7, '2021', '1622090031', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '498', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:12:31'),
(349, 7, '2021', '1622098297', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '114', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:14:20'),
(350, 7, '2021', '1622098424', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '9', '', '', '508', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635822994.jpg', '', '', '', 18, 0, '2021-08-19 13:15:45'),
(351, 7, '2021', '1626225347', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '23', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:16:59'),
(352, 6, '2021', '1622098812', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '147', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:18:18'),
(353, 7, '2021', '1622092018', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '6240', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:20:16'),
(354, 7, '2021', '1629379445', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:26:10'),
(355, 7, '2021', '1629379841', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '792', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 13:37:12'),
(356, 7, '2021', '1622093825', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '127', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 22:52:24'),
(357, 7, '2021', '1622098684', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '265.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 22:54:06'),
(358, 7, '2021', '1625106239', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '280', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 22:55:34'),
(359, 7, '2021', '1622102685', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 22:57:43'),
(360, 7, '2021', '1622093564', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 22:59:34'),
(361, 7, '2021', '1622099456', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:00:37'),
(362, 7, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '511', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:01:48'),
(363, 7, '2021', '1626228149', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '152', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:02:57'),
(364, 7, '2021', '1622094263', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '362', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:04:29'),
(365, 7, '2021', '1626230210', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '48', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:06:10'),
(366, 7, '2021', '1625548247', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '40', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:07:24'),
(367, 7, '2021', '1622093001', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '180', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:08:52'),
(368, 7, '2021', '1626228632', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '146', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:10:19'),
(369, 7, '2021', '1626227510', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:11:12'),
(370, 7, '2021', '1626227277', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '16', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:12:52'),
(371, 7, '2021', '1623384439', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:14:49'),
(372, 7, '2021', '1622092470', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '492', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:16:15'),
(373, 7, '2021', '1623900677', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '532', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1631857552.JPG', '', '', '', 18, 0, '2021-08-19 23:17:45'),
(374, 7, '2021', '1623635157', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '123', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:19:35'),
(375, 7, '2021', '1629415268', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:25:25'),
(376, 7, '2021', '1622099271', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '338', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:26:39'),
(377, 7, '2021', '1626226937', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '201', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:27:53');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `total_pabt`, `id_pengguna`, `created_by`, `created_at`) VALUES
(378, 7, '2021', '1626226519', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '106', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:30:59'),
(379, 7, '2021', '1626228945', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '205', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:32:04'),
(380, 7, '2021', '1629416058', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:36:40'),
(381, 7, '2021', '1626230671', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:37:46'),
(382, 7, '2021', '1626050298', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:39:51'),
(383, 7, '2021', '1625108657', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '108', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:41:01'),
(384, 7, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '347', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:42:22'),
(385, 7, '2021', '1625109010', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-19 23:45:18'),
(394, 5, '2021', '1626226519', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '59.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-24 03:09:25'),
(400, 5, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '433', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-24 05:40:20'),
(405, 5, '2021', '1626228149', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '187', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-24 06:13:00'),
(407, 5, '2021', '1622099271', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '325', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-25 00:33:15'),
(412, 5, '2021', '1626228632', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '184', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-25 01:02:38'),
(420, 5, '2021', '1622099456', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '96', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-25 02:10:43'),
(427, 6, '2021', '1626230671', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '61', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-25 23:47:40'),
(431, 5, '2021', '1622090031', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '320.67', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-08-25 23:55:34'),
(434, 8, '2021', '1626228945', 'PAT Bulan Agustus 2021', '4', '', '', '200', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-03 01:44:06'),
(435, 8, '2021', '1623927556', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-06 00:42:33'),
(436, 8, '2021', '1623900677', 'Tagihan PAT periode Agustus 2021', '4', '', '', '467', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1639046337.JPG', '', '', '', 18, 0, '2021-09-08 14:14:13'),
(437, 8, '2021', '1622091731', 'PAT Periode Agustus 2021', '4', '', '', '796', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-08 14:16:42'),
(438, 8, '2021', '1623929487', 'PAT Bulan Agustus 2021', '4', '', '', '188', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-08 14:18:40'),
(439, 5, '2021', '1622092470', 'PAT Bulan Mei 2021', '4', '', '', '557', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-09 00:29:25'),
(440, 5, '2021', '1622093001', 'PAT BUlan Mei 2021', '4', '', '', '246', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-09 00:30:55'),
(441, 8, '2021', '1622093825', 'PAT Bulan Agustus 2021', '4', '', '', '331', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-09 01:44:46'),
(442, 8, '2021', '1622098424', 'PAT Agustus 2021', '9', '', '', '183', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635823014.jpg', '', '', '', 18, 0, '2021-09-09 01:46:23'),
(443, 8, '2021', '1625548247', 'PAT Bulan Agustus 2022', '4', '', '', '56', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-09 04:39:15'),
(444, 5, '2021', '1631497309', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '100', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-13 01:59:42'),
(445, 8, '2021', '1623635157', 'PAT Bulan Agustus 2021', '4', '', '', '675', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-15 03:48:20'),
(448, 5, '2021', '1632360397', 'PAT Bulan Mei 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '1', '', '', 18, 0, '2021-09-23 01:29:04'),
(449, 6, '2021', '1632360397', 'PAT Bulan Juni 2021', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:30:54'),
(450, 7, '2021', '1632360397', 'PAT Bulan Juli 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:31:18'),
(451, 8, '2021', '1632360397', 'PAT Bulan  Agustus 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:31:50'),
(452, 9, '2021', '1632360397', 'PAT Bulan September 2021', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:32:14'),
(453, 5, '2021', '1632361405', 'PAT Bulan Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:44:30'),
(454, 6, '2021', '1632361405', 'PAT Bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:44:47'),
(455, 7, '2021', '1632361405', 'PAT Bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:45:11'),
(456, 8, '2021', '1632361405', 'PAT Bulan AGustus 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:45:28'),
(457, 9, '2021', '1632361405', 'PAT Bulan September 2021', '4', '', '', '108', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-23 01:45:47'),
(458, 8, '2021', '1622098211', 'PAT Bulan Agustus 2021', '4', '', '', '2629', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-28 03:22:28'),
(459, 8, '2021', '1622099118', 'PAT BUlan Agustus 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-28 03:23:40'),
(461, 5, '2021', '1632878689', 'PAT Bulan Mei Tahun 2021', '4', '', '', '409.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 01:30:16'),
(462, 6, '2021', '1632878689', 'PAT Bulan Juni Tahun 2021', '4', '', '', '396', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 01:30:51'),
(463, 7, '2021', '1632878689', 'PAT Bulan Juli Tahun 2021', '4', '', '', '409', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 01:31:16'),
(464, 8, '2021', '1632878689', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '409', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 01:31:44'),
(465, 8, '2021', '1625107310', 'PAT Bulan Agustus 2021', '4', '', '', '55', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 01:47:58'),
(466, 5, '2021', '1629377749', 'PAT Bulan Mei 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 02:26:50'),
(467, 6, '2021', '1629377749', 'PAT Bulan Juni Tahun 2021', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 02:27:33'),
(468, 7, '2021', '1629377749', 'PAT Bulan Juli Tahun 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 02:28:05'),
(469, 8, '2021', '1629377749', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 02:28:54'),
(470, 8, '2021', '1622092292', 'PAT Bulan Agustus Tahun 2021', '9', '', '', '934', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 04:46:28'),
(471, 8, '2021', '1625108022', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '280', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 04:48:42'),
(472, 6, '2021', '1623898133', 'PAT Bulan Juni Tahun 2021', '4', '', '', '256', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 04:52:32'),
(473, 8, '2021', '1623898133', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '302', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 04:55:32'),
(476, 8, '2021', '1622098297', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '316', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-29 05:45:33'),
(477, 5, '2021', '1626226937', 'PAT Bulan Mei Tahun 2021', '4', '', '', '272', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-30 02:17:23'),
(478, 5, '2021', '1632973555', 'PAT Bulan Mei Tahun 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-30 04:02:51'),
(479, 6, '2021', '1632973555', 'PAT Bulan Juni Tahun 2021', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-30 04:03:57'),
(480, 7, '2021', '1632973555', 'PAT Bulan Juli Tahun 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-30 04:04:20'),
(481, 8, '2021', '1632973555', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-09-30 04:04:52'),
(483, 9, '2021', '1623635157', 'PAT Bulan September Tahun 2021', '4', '', '', '335', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-03 22:58:02'),
(484, 9, '2021', '1622099118', 'PAT Bulan September Tahun 2021', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 00:20:25'),
(485, 9, '2021', '1622098211', 'PAT Bulan September Tahun 2022', '4', '', '', '696', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:11:48'),
(486, 9, '2021', '1622092292', 'PAT Bulan September Tahun 2021', '9', '', '', '1786', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:13:23'),
(487, 9, '2021', '1623898133', 'PAT Bulan September Tahun 2021', '4', '', '', '456', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:15:23'),
(488, 9, '2021', '1625107310', 'PAT Bulan September Tahun 2021', '4', '', '', '126', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:16:34'),
(489, 8, '2021', '1626228632', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '233', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:20:23'),
(490, 9, '2021', '1626228632', 'PAT Bulan September Tahun 2021', '4', '', '', '233', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:20:58'),
(493, 9, '2021', '1625108022', 'PAT Bulan September Tahun 2021', '4', '', '', '266', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:41:40'),
(494, 9, '2021', '1622093825', 'PAT Bulan September Tahun 2021', '4', '', '', '193', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 01:44:00'),
(495, 8, '2021', '1622092470', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '617', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 02:44:55'),
(496, 9, '2021', '1622092470', 'PAT Bulan September Tahun 2021', '4', '', '', '472', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 02:46:05'),
(497, 5, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '1987.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:07:09'),
(498, 9, '2021', '1623900677', 'PAT Bulan Septe,ber Tahun 2021', '4', '', '', '420', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1639046410.JPG', '', '', '', 18, 0, '2021-10-04 03:15:48'),
(499, 8, '2021', '1622093564', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:38:04'),
(500, 9, '2021', '1622093564', 'PAT Bulan September Tahun 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:38:32'),
(501, 6, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:42:17'),
(502, 8, '2021', '1622093001', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '296', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:42:39'),
(503, 9, '2021', '1622093001', 'PAT Bulan September Tahun 2021', '4', '', '', '296', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:43:06'),
(504, 7, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '1987.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:45:23'),
(505, 8, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '1987.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:46:39'),
(506, 9, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 03:47:54'),
(507, 9, '2021', '1623929487', 'PAT Bulan September Tahun 2021', '4', '', '', '188', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 04:33:22'),
(508, 6, '2021', '1622103466', 'PAT Bulan Juni 2021', '4', '', '', '175.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 04:48:57'),
(509, 7, '2021', '1622103466', 'PAT Bulan Juli 2021', '4', '', '', '181.35', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 04:49:36'),
(510, 8, '2021', '1622103466', 'PAT Bulan Agustus 2021', '4', '', '', '181.35', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 04:50:05'),
(511, 9, '2021', '1622103466', 'PAT Bulan September 2021', '4', '', '', '175.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-04 04:50:35'),
(515, 5, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '218.24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 03:37:42'),
(516, 6, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '211.2', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 03:52:07'),
(517, 7, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '218.24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 03:52:45'),
(518, 8, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '218.24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 03:53:37'),
(519, 9, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '211.2', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 03:54:27'),
(520, 5, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '69.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 04:09:54'),
(521, 6, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '67.26', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 04:30:28'),
(522, 7, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '69.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 04:31:24'),
(523, 8, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '69.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 04:32:10'),
(524, 9, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.26', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 04:32:58'),
(525, 5, '2021', '1626230671', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '61', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:25:25'),
(526, 6, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:38:19'),
(527, 7, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:39:09'),
(528, 8, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:39:29'),
(529, 6, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:42:46'),
(530, 7, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:43:06'),
(531, 8, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:43:32'),
(532, 6, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:44:59'),
(533, 7, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:45:18'),
(534, 8, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:45:39'),
(535, 6, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Juni  2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:47:55'),
(536, 7, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:49:00'),
(537, 8, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:49:23'),
(538, 6, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:57:29'),
(539, 7, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:57:46'),
(540, 8, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 05:58:10'),
(541, 6, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:00:57'),
(542, 7, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:01:23'),
(543, 8, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:01:55'),
(544, 6, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:04:37'),
(545, 7, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:05:01'),
(546, 8, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:05:26'),
(547, 6, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:06:31'),
(548, 7, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:06:48'),
(549, 8, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:07:08'),
(550, 6, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:10:43'),
(551, 7, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:11:01'),
(552, 8, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:11:24'),
(553, 6, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:12:36'),
(554, 7, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:12:55'),
(555, 8, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:13:15'),
(556, 6, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:14:25'),
(557, 7, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:14:44'),
(558, 8, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:15:05'),
(559, 6, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:17:11'),
(560, 7, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:17:27'),
(561, 8, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:17:53'),
(562, 6, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:20:03'),
(563, 7, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:20:49'),
(564, 8, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:21:38'),
(565, 6, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:22:54'),
(566, 7, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:23:17'),
(567, 8, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:23:37'),
(568, 6, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:26:07'),
(569, 7, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:26:30'),
(570, 8, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:26:50'),
(571, 6, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:28:42'),
(572, 7, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:29:41'),
(573, 8, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:30:03'),
(574, 6, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:31:45'),
(575, 7, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:32:05'),
(576, 8, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:32:32'),
(578, 9, '2021', '1622098424', 'PAT Bulan September 2021', '9', '', '', '344', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635823037.jpg', '', '', '', 18, 0, '2021-10-05 06:37:10'),
(579, 9, '2021', '1623927556', 'PAT Bulan September 2021', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 06:58:52'),
(580, 8, '2021', '1622099271', 'PAT Bulan Agustus 2021', '4', '', '', '276.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 11:48:32'),
(581, 9, '2021', '1622099271', 'PAT Bulan September 2021', '4', '', '', '276.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-05 11:49:17'),
(582, 8, '2021', '1627905389', 'PAT Bulan Agustus 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 00:38:50'),
(583, 9, '2021', '1627905389', 'PAT Bulan September 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 00:39:13'),
(584, 9, '2021', '1622091731', 'PAT Bulan September 2021', '4', '', '', '1455', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 02:50:39'),
(586, 5, '2021', '1622092018', 'PAT Bulan Mei 2021', '4', '', '', '7466', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 04:51:36'),
(587, 5, '2021', '1633496343', 'PAT Bulan Mei 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 05:05:18'),
(588, 6, '2021', '1633496343', 'PAT Bulan Juni 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 05:05:41'),
(589, 7, '2021', '1633496343', 'PAT Bulan Juli 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 05:06:13'),
(590, 8, '2021', '1633496343', 'PAT Bulan Agustus 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 05:06:44'),
(591, 9, '2021', '1633496343', 'PAT Bulan September 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 05:07:07'),
(593, 5, '2021', '1622098812', 'PAT Bulan Mei 2021', '4', '', '', '199', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 07:27:14'),
(595, 9, '2021', '1626228945', 'PAT Bulan September 2021', '4', '', '', '924', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 07:34:45'),
(598, 9, '2021', '1632973555', 'PAT Bulan September 2021', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:24:14'),
(599, 7, '2021', '1626395262', 'PAT Bulan Juli 2021', '4', '', '', '332', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:28:10'),
(600, 8, '2021', '1626395262', 'PAT Bulan Agustus 2021', '4', '', '', '332', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:28:40'),
(601, 9, '2021', '1626395262', 'PAT Bulan September 2021', '4', '', '', '321', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:29:12'),
(602, 5, '2021', '1622094454', 'PAT Bulan Mei 2021', '4', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:32:52'),
(603, 6, '2021', '1622094454', 'PAT Bulan Juni 2021', '4', '', '', '60', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:33:17'),
(604, 7, '2021', '1622094454', 'PAT Bulan Juli 2021', '9', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:33:41'),
(605, 8, '2021', '1622094454', 'PAT Bulan Agustus 2021', '4', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:34:09'),
(606, 9, '2021', '1622094454', 'PAT Bulan September 2021', '4', '', '', '60', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:34:33'),
(607, 9, '2021', '1622098297', 'PAT Bulan September 2021', '4', '', '', '51', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:38:10'),
(608, 9, '2021', '1632878689', 'PAT Bulan September 2021', '4', '', '', '396', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-06 11:41:25'),
(611, 5, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-07 23:24:21'),
(612, 6, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '300', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-07 23:42:55'),
(613, 7, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-07 23:43:49'),
(614, 8, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-07 23:44:25'),
(615, 9, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '300', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-07 23:45:04'),
(616, 5, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-07 23:58:20'),
(617, 6, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 00:11:50'),
(618, 7, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 00:12:35'),
(619, 8, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 00:14:34'),
(620, 9, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 00:15:13'),
(621, 5, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 02:19:39'),
(622, 6, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 02:31:53'),
(623, 7, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan juli 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 02:35:06'),
(624, 8, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 02:35:45'),
(625, 9, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 02:36:24'),
(626, 5, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '162.75', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 02:51:02'),
(627, 6, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '157.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:00:47'),
(628, 7, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '162.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:01:24'),
(629, 8, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '162.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:01:57'),
(630, 9, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '157.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:02:29'),
(631, 5, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:19:25'),
(632, 6, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '171', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:29:35'),
(633, 7, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:30:14'),
(634, 8, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:30:45'),
(635, 9, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '171', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:31:19'),
(636, 6, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:42:11'),
(637, 7, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:52:34'),
(638, 8, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:53:00'),
(639, 9, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 03:53:31'),
(640, 6, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 04:55:04'),
(641, 7, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 04:55:31'),
(642, 8, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 04:55:57'),
(643, 6, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 04:57:43'),
(644, 7, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 04:58:04'),
(645, 8, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 04:58:42'),
(646, 6, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:04:01'),
(647, 7, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:04:31'),
(648, 8, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:05:00'),
(649, 6, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:08:25'),
(650, 7, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:08:51'),
(651, 7, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:09:10'),
(652, 8, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:09:35'),
(653, 6, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:10:49'),
(654, 7, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:11:16'),
(655, 8, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:11:41'),
(656, 6, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:13:51'),
(657, 7, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:14:18'),
(658, 8, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:15:05'),
(659, 6, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:17:39'),
(660, 7, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan  Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:18:52'),
(661, 8, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:19:14'),
(662, 6, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:20:34'),
(663, 7, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:20:54'),
(664, 8, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:21:14'),
(665, 6, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:23:37'),
(666, 7, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:24:04'),
(667, 8, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:24:29'),
(668, 6, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:25:51'),
(669, 7, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:26:13'),
(670, 8, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:26:41'),
(671, 7, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:27:49'),
(672, 6, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:28:09'),
(673, 8, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:28:37'),
(675, 6, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:30:15'),
(676, 7, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:30:36'),
(677, 8, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:31:01'),
(678, 6, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:32:06'),
(679, 7, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:32:33'),
(680, 8, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:33:00'),
(681, 6, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:34:36'),
(682, 7, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:35:06'),
(683, 8, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:35:27'),
(684, 6, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:37:36'),
(685, 7, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:38:59'),
(686, 8, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:39:28'),
(687, 5, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:40:26'),
(688, 6, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:41:09'),
(689, 7, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:41:30'),
(690, 8, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:41:49'),
(691, 6, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:43:31'),
(692, 7, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:44:10'),
(693, 8, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:44:43'),
(694, 6, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:46:17'),
(695, 7, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:46:43'),
(696, 8, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:47:05'),
(697, 6, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:48:13'),
(698, 7, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:48:32'),
(699, 8, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:48:57'),
(700, 6, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:51:13'),
(701, 7, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:51:42'),
(702, 8, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:52:10'),
(703, 6, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:54:04'),
(704, 7, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:54:29'),
(705, 8, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:55:01'),
(706, 6, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:56:38'),
(707, 7, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:57:21'),
(708, 8, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 05:57:40'),
(709, 6, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:00:24'),
(710, 7, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:00:43'),
(711, 8, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:02:03'),
(712, 6, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '0', 18, 0, '2021-10-08 06:03:55'),
(713, 7, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '0', 18, 0, '2021-10-08 06:04:15'),
(714, 8, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '0', 18, 0, '2021-10-08 06:04:37'),
(715, 6, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:06:53'),
(716, 7, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:07:14'),
(717, 8, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:07:38'),
(718, 6, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:09:18'),
(719, 7, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:09:52'),
(720, 8, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:10:12');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `total_pabt`, `id_pengguna`, `created_by`, `created_at`) VALUES
(721, 6, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:14:07'),
(722, 7, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:14:27'),
(723, 8, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:15:27'),
(724, 6, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:17:06'),
(725, 7, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:17:26'),
(726, 8, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-08 06:17:50'),
(727, 8, '2021', '1622092018', 'PAT Agustus 2021', '4', '', '', '7959', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-13 01:20:07'),
(728, 9, '2021', '1622092018', 'PAT September 2021', '4', '', '', '7959', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-13 01:20:26'),
(729, 8, '2021', '1622098684', 'PAT Agustus 2021', '4', '', '', '822.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-13 01:26:56'),
(730, 9, '2021', '1622098684', 'PAT September 2021', '4', '', '', '822.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-13 01:27:33'),
(733, 9, '2021', '1629377749', 'PAT Bulan September 2021', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-18 01:18:52'),
(734, 8, '2021', '1626050298', 'PAT Bulan Agustus 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-18 01:27:43'),
(735, 9, '2021', '1626050298', 'PAT Bulan September 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-18 01:28:10'),
(736, 10, '2021', '1626050298', 'PAT Bulan Oktober 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-18 02:28:51'),
(738, 8, '2021', '1625106239', 'PAT Bulan Agustus 2021', '4', '', '', '347.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-18 05:06:46'),
(739, 9, '2021', '1625106239', 'PAT Bulan September 2021', '4', '', '', '347.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-18 05:07:09'),
(741, 9, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '270', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '211584', 18, 0, '2021-10-25 01:46:28'),
(742, 10, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '218668.8', 18, 0, '2021-10-25 01:47:12'),
(743, 9, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '288', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:51:54'),
(744, 10, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '297.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:53:11'),
(745, 9, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:54:59'),
(746, 10, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:55:42'),
(747, 6, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:58:02'),
(748, 7, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:58:30'),
(749, 8, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:58:52'),
(750, 9, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 01:59:38'),
(751, 10, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:00:25'),
(752, 5, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:01:24'),
(753, 6, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:01:49'),
(754, 7, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:02:12'),
(755, 8, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:02:39'),
(756, 9, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:03:26'),
(757, 10, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:03:57'),
(758, 9, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:05:11'),
(759, 10, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:05:51'),
(760, 9, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '234', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:06:59'),
(761, 10, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '241.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:07:46'),
(762, 6, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:09:08'),
(763, 7, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:09:37'),
(764, 8, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:10:08'),
(765, 9, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:10:50'),
(766, 10, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:11:23'),
(767, 9, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '243', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:12:19'),
(768, 10, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '251.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:13:00'),
(769, 6, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:14:39'),
(770, 7, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:15:20'),
(771, 8, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:15:52'),
(772, 9, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:16:23'),
(773, 10, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:17:02'),
(774, 9, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:18:07'),
(775, 10, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:18:54'),
(776, 9, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '292.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:20:21'),
(777, 10, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '302.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:20:51'),
(778, 9, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '189', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:22:16'),
(779, 10, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '195.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:22:58'),
(780, 9, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '288', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:24:37'),
(781, 10, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '297.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:25:21'),
(782, 9, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '189', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:26:50'),
(783, 10, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '195.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:27:30'),
(784, 9, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '243', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:28:46'),
(785, 10, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '251.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:29:19'),
(786, 9, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:31:43'),
(787, 10, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:32:14'),
(788, 6, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:34:24'),
(789, 7, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:34:47'),
(790, 8, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:35:20'),
(791, 9, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:35:49'),
(792, 10, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:42:37'),
(793, 6, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:44:07'),
(794, 7, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:44:30'),
(795, 8, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:44:53'),
(796, 9, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:45:21'),
(797, 10, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:45:55'),
(798, 6, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:47:48'),
(799, 7, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:48:06'),
(800, 8, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:48:25'),
(801, 9, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '171', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:48:53'),
(802, 10, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:49:27'),
(803, 9, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '288', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:53:44'),
(804, 10, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '297.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:54:35'),
(805, 6, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:56:01'),
(806, 7, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:56:24'),
(807, 8, '2021', '1621924758', ' Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:56:46'),
(808, 9, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:57:21'),
(809, 10, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:58:06'),
(810, 6, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 02:59:45'),
(811, 7, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 03:00:20'),
(812, 8, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 03:00:41'),
(813, 9, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 03:01:23'),
(814, 10, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 03:02:13'),
(815, 5, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:04:02'),
(816, 6, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:04:30'),
(817, 7, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:04:49'),
(818, 8, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:05:11'),
(819, 9, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:06:48'),
(820, 10, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:07:17'),
(821, 9, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:08:36'),
(822, 10, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:09:23'),
(823, 9, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:10:31'),
(824, 10, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:11:17'),
(825, 9, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:12:36'),
(826, 10, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:13:09'),
(827, 9, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '319.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:14:25'),
(828, 10, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '330.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:15:16'),
(829, 6, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:16:33'),
(830, 7, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:16:51'),
(831, 7, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:17:04'),
(832, 8, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:17:25'),
(833, 9, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '121.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:17:28'),
(834, 10, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '125.55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:19:00'),
(835, 9, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '207', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:20:12'),
(836, 10, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '213.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:20:53'),
(837, 6, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:22:33'),
(838, 7, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:22:53'),
(839, 8, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:23:15'),
(840, 9, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:23:44'),
(841, 10, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:30:49'),
(843, 6, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:34:00'),
(844, 7, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:34:23'),
(845, 8, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:35:43'),
(846, 9, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:40:53'),
(847, 10, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:41:28'),
(848, 9, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:42:29'),
(849, 10, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:43:09'),
(850, 9, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '270', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:45:03'),
(851, 10, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:46:29'),
(852, 9, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '211.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:48:12'),
(853, 10, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '218.55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:49:09'),
(854, 9, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '220.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:50:56'),
(855, 10, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '227.85', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:52:05'),
(856, 6, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:53:39'),
(857, 7, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:53:58'),
(858, 8, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:54:22'),
(859, 9, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:54:52'),
(860, 10, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:55:41'),
(861, 6, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:59:30'),
(862, 7, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 04:59:53'),
(863, 8, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:01:12'),
(864, 9, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:01:38'),
(865, 10, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:02:11'),
(866, 9, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '337.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:04:43'),
(867, 10, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '348.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:05:21'),
(868, 6, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:06:41'),
(869, 8, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:07:02'),
(870, 7, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:07:25'),
(871, 9, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:08:50'),
(872, 10, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:09:48'),
(873, 9, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '202.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:11:28'),
(874, 10, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '209.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:12:07'),
(875, 9, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '324', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:16:40'),
(876, 10, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '334.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:17:18'),
(877, 9, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:19:18'),
(878, 10, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '288.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:19:52'),
(879, 9, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '157.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:22:20'),
(880, 10, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '162.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-10-25 05:23:06'),
(881, 10, '2021', '1622099118', 'PAT Bulan Oktober 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 00:56:40'),
(882, 10, '2021', '1622098211', 'PAT Bulan Oktober 2021', '4', '', '', '1471', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 00:57:12'),
(883, 10, '2021', '1623929487', 'PAT Bulan Oktober 2021', '4', '', '', '63', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 00:58:02'),
(884, 10, '2021', '1622092292', 'PAT Bulan Oktober 2021', '9', '', '', '1223', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 00:59:31'),
(885, 10, '2021', '1623898133', 'PAT Bulan Oktober 2021', '4', '', '', '523', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:00:18'),
(886, 10, '2021', '1625108022', 'PAT Bulan Oktober 2021', '4', '', '', '272', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:01:01'),
(887, 10, '2021', '1622098297', 'PAT Bulan Oktober 2021', '4', '', '', '129', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:01:37'),
(888, 10, '2021', '1622098424', 'PAT Bulan Oktober 2021', '4', '', '', '202', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1637192328.jpg', '', '', '', 18, 0, '2021-11-02 01:02:18'),
(889, 8, '2021', '1622094263', 'PAT Bulan Agustus 2021', '4', '', '', '116.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:04:03'),
(890, 9, '2021', '1622094263', 'PAT Bulan September 2021', '4', '', '', '116.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:04:40'),
(891, 10, '2021', '1622094263', 'PAT Bulan Oktober 2021', '4', '', '', '307', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:05:02'),
(892, 10, '2021', '1622092470', 'PAT Bulan Oktober 2021', '4', '', '', '517', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:05:38'),
(893, 10, '2021', '1623900677', 'PAT Bulan Oktober 2021', '4', '', '', '513', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1644971228.JPG', '', '', '', 18, 0, '2021-11-02 01:06:18'),
(894, 10, '2021', '1623927556', 'PAT Bulan Oktober 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:16:32'),
(895, 10, '2021', '1629377749', 'PAT Bulan Oktober 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:17:03'),
(896, 10, '2021', '1632360397', 'PAT Bulan Oktober 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:18:19'),
(897, 6, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:22:00'),
(898, 5, '2021', '1634781233', 'PAT Bulan Mei 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:22:04'),
(899, 7, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:22:27'),
(900, 6, '2021', '1634781233', 'PAT Bulan Juni 2021', '4', '', '', '367.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:22:52'),
(901, 8, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:22:54'),
(902, 7, '2021', '1634781233', 'PAT Bulan Juli 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:23:26'),
(903, 8, '2021', '1634781233', 'PAT Bulan Agustus 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:23:51'),
(904, 9, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:23:55'),
(905, 9, '2021', '1634781233', 'PAT Bulan september 2021', '4', '', '', '367.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:24:19'),
(906, 10, '2021', '1634781233', 'PAT Bulan Oktober 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:24:42'),
(907, 10, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:24:48'),
(908, 10, '2021', '1633327800', 'PAT Bulan Oktober 2021', '4', '', '', '218', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:25:47'),
(909, 10, '2021', '1633523343', 'PAT Bulan Oktober 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 01:26:23'),
(910, 5, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:43:16'),
(911, 6, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:44:42'),
(912, 7, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:45:01'),
(913, 8, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:46:17'),
(914, 9, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:47:18'),
(915, 10, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:48:40'),
(916, 5, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:55:43'),
(917, 6, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:56:08'),
(918, 7, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:57:04'),
(919, 8, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:57:31'),
(920, 9, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:58:05'),
(921, 10, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:58:45'),
(922, 5, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:59:30'),
(923, 6, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 04:59:49'),
(924, 7, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:00:13'),
(925, 8, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:00:35'),
(926, 9, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:01:02'),
(927, 10, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:02:07'),
(928, 5, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:03:11'),
(929, 6, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:03:33'),
(930, 7, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:03:53'),
(931, 8, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:04:21'),
(932, 9, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:05:21'),
(933, 10, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:06:25'),
(934, 5, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:08:21'),
(935, 6, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:08:41'),
(936, 7, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:08:59'),
(937, 8, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:09:18'),
(938, 9, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '49.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:09:42'),
(939, 10, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:10:59'),
(940, 5, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:12:05'),
(941, 6, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:12:22'),
(942, 7, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:12:40'),
(943, 8, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:13:01'),
(944, 9, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:14:36'),
(945, 10, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:15:10'),
(946, 5, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:16:21'),
(947, 6, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:16:39'),
(948, 7, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:16:57'),
(949, 8, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:17:20'),
(950, 9, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '85.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:19:01'),
(951, 10, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '88.35', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:20:27'),
(952, 5, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:21:38'),
(953, 6, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:23:16'),
(954, 7, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:23:42'),
(955, 8, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:24:07'),
(956, 9, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '49.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:25:19'),
(957, 10, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:26:11'),
(958, 5, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:28:57'),
(959, 6, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:29:19'),
(960, 7, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:29:40'),
(961, 8, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:30:07'),
(962, 9, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:30:45'),
(963, 10, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:31:49'),
(964, 5, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:34:08'),
(965, 6, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:34:32'),
(966, 7, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:35:04'),
(967, 8, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:35:25'),
(968, 9, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '72', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:35:53'),
(969, 10, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-02 05:36:22'),
(970, 10, '2021', '1623635157', 'PAT Bulan Oktober 2021', '4', '', '', '482', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 00:42:02'),
(971, 9, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '450', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:30:53'),
(972, 10, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '465', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:33:34'),
(973, 9, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '49.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:41:01'),
(974, 10, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:42:33'),
(975, 9, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:49:41'),
(976, 10, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:51:27'),
(977, 6, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:55:06'),
(978, 7, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:55:30'),
(979, 8, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:55:51'),
(980, 9, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '58.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 01:56:21'),
(981, 10, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '60.45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:01:47'),
(982, 6, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:24:25'),
(983, 7, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:24:54'),
(984, 8, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:27:30'),
(985, 9, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '72', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:31:14'),
(986, 10, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:31:41'),
(987, 9, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '198', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:33:56'),
(988, 10, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '204.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:34:26'),
(989, 6, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:38:16'),
(990, 7, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:38:46'),
(991, 8, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:39:08'),
(992, 9, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '76.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:41:14'),
(993, 10, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '79.05', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:42:12'),
(994, 9, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '18', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:44:51'),
(995, 10, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '18.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:45:22'),
(996, 9, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:46:54'),
(997, 10, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:47:47'),
(998, 9, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:49:29');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `total_pabt`, `id_pengguna`, `created_by`, `created_at`) VALUES
(999, 10, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:50:07'),
(1000, 9, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:51:12'),
(1001, 10, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:51:46'),
(1002, 9, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '256.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:54:12'),
(1003, 10, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '265.05', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 02:54:54'),
(1004, 6, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 03:44:46'),
(1005, 7, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 03:45:14'),
(1006, 8, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 03:45:33'),
(1007, 9, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '103.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 03:46:13'),
(1008, 10, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '106.95', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-04 03:54:21'),
(1009, 6, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:40:56'),
(1010, 7, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:41:26'),
(1011, 8, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:41:50'),
(1012, 9, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:42:53'),
(1013, 10, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:43:25'),
(1014, 6, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:47:22'),
(1015, 7, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:47:41'),
(1016, 8, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:48:21'),
(1017, 9, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '99', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:50:50'),
(1018, 10, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:51:38'),
(1019, 6, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:55:22'),
(1020, 7, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:55:40'),
(1021, 8, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:56:02'),
(1022, 9, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:56:41'),
(1023, 10, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 01:57:11'),
(1024, 6, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:00:47'),
(1025, 7, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:01:04'),
(1026, 8, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:01:22'),
(1027, 9, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:01:45'),
(1028, 10, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:02:47'),
(1029, 6, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:07:12'),
(1030, 7, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:07:32'),
(1031, 8, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:07:54'),
(1032, 9, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:08:46'),
(1033, 10, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:09:32'),
(1034, 8, '2021', '1626227756', 'PAT Bulan Oktober Tahun 2021', '4', '', '', '155,67', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:11:58'),
(1035, 6, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:12:32'),
(1036, 7, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:12:50'),
(1037, 9, '2021', '1626227756', 'PAT Tagihan September 2021', '4', '', '', '155,67', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:13:05'),
(1038, 8, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:13:09'),
(1039, 10, '2021', '1626227756', 'PAT Bulan Oktober 2021', '4', '', '', '155,67', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:13:35'),
(1040, 9, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:13:45'),
(1041, 10, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:14:14'),
(1042, 10, '2021', '1632973555', 'PAT Bulan Oktober 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-05 02:15:36'),
(1043, 6, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:15:18'),
(1044, 7, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:15:49'),
(1045, 8, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:16:13'),
(1046, 9, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:18:22'),
(1047, 10, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:18:49'),
(1048, 6, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:23:09'),
(1049, 7, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:23:33'),
(1050, 8, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:23:53'),
(1051, 9, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:24:29'),
(1052, 10, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 00:24:58'),
(1054, 6, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:05:19'),
(1055, 7, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:05:37'),
(1056, 8, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:06:04'),
(1057, 9, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:06:32'),
(1058, 10, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:07:01'),
(1059, 6, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:12:55'),
(1060, 7, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:13:18'),
(1061, 8, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:13:35'),
(1062, 9, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:14:06'),
(1063, 10, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:14:38'),
(1064, 9, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:19:19'),
(1065, 10, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:19:43'),
(1066, 9, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:24:34'),
(1067, 10, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:25:01'),
(1068, 6, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:27:20'),
(1069, 7, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:27:39'),
(1070, 8, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:28:01'),
(1071, 9, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan September2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:28:24'),
(1072, 10, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:28:45'),
(1073, 9, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:30:01'),
(1074, 10, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:30:36'),
(1075, 9, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:32:50'),
(1076, 10, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:33:20'),
(1077, 9, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:34:24'),
(1078, 10, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:34:56'),
(1079, 9, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:36:23'),
(1080, 10, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:36:57'),
(1081, 6, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:39:47'),
(1082, 7, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:40:14'),
(1083, 8, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:40:42'),
(1084, 9, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:41:32'),
(1085, 10, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:42:00'),
(1086, 9, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:45:00'),
(1087, 10, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:45:40'),
(1088, 6, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:48:56'),
(1089, 7, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:49:18'),
(1090, 8, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:49:42'),
(1091, 9, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '36', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:50:16'),
(1092, 10, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '37.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:50:48'),
(1093, 9, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:51:58'),
(1094, 10, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-08 01:52:39'),
(1095, 10, '2021', '1622091731', 'PAT Bulan Oktober 2021', '4', '', '', '1638', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-09 01:07:13'),
(1096, 8, '2021', '1622098812', 'PAT Bulan Agustus 2021', '4', '', '', '146.66', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-10 01:18:06'),
(1097, 9, '2021', '1622098812', 'PAT Bulan September 2021', '4', '', '', '146.66', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-10 01:18:34'),
(1098, 10, '2021', '1622098812', 'PAT Bulan Oktober 2021', '4', '', '', '163', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-10 01:18:58'),
(1099, 10, '2021', '1622099271', 'PAT Bulan Oktober 2021', '4', '', '', '400', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-15 00:54:17'),
(1100, 10, '2021', '1622093001', 'PAT Bulan Oktober 2021', '4', '', '', '626', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-19 00:28:10'),
(1106, 10, '2021', '1637548436', 'Tagihan Pajak Air Tanah Periode bulan Oktober 2021', '4', '', '', '53.25', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-22 02:40:40'),
(1107, 8, '2021', '1625108221', 'PAT Bulan Agustus 2021', '4', '', '', '195', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-24 01:23:44'),
(1108, 9, '2021', '1625108221', 'PAT Bulan September 2021', '4', '', '', '195', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-24 01:24:05'),
(1109, 10, '2021', '1625108221', 'PAT Bulan Oktober 2021', '4', '', '', '195', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-24 01:24:24'),
(1110, 10, '2021', '1626228945', 'PAT Bulan Oktober 2021', '4', '', '', '856', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-24 01:26:18'),
(1111, 10, '2021', '1622103466', 'PAT Bulan Oktober 2021', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-11-24 02:59:40'),
(1112, 11, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '1642', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-02 05:39:43'),
(1113, 11, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '1405', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-02 05:41:57'),
(1114, 11, '2021', '1622099118', 'PAT Bulan November 2021', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-04 03:46:51'),
(1115, 11, '2021', '1623635157', 'PAT Bulan November 2021', '4', '', '', '597', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-06 01:20:03'),
(1116, 11, '2021', '1623927556', 'PAT Bulan November 2021', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:02:09'),
(1117, 10, '2021', '1622093825', 'PAT Bulan Oktober 2021', '4', '', '', '248', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:07:20'),
(1118, 11, '2021', '1629377749', 'PAT Bulan November 2021', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:08:46'),
(1119, 11, '2021', '1632360397', 'PAT Bulan November 2021', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:11:03'),
(1120, 11, '2021', '1622094263', 'PAT Saga Abepura Bulan November 2021', '4', '', '', '284', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:14:17'),
(1121, 11, '2021', '1623898133', 'PAT Bulan November 2021', '4', '', '', '812', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:16:16'),
(1122, 11, '2021', '1622092292', 'PAT Bulan November 2021', '9', '', '', '1788', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:23:43'),
(1123, 11, '2021', '1622098297', 'PAT Bulan November 2021', '4', '', '', '168', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:25:44'),
(1124, 11, '2021', '1622092470', 'PAT November 2021', '4', '', '', '641', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:28:41'),
(1125, 11, '2021', '1622093001', 'PAT Bulan November 2021', '4', '', '', '279', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:30:13'),
(1126, 11, '2021', '1622098812', 'PAT Bulan November 2021', '4', '', '', '87', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:31:54'),
(1127, 10, '2021', '1625107310', 'PAT Bulan November 2021', '4', '', '', '461', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:34:35'),
(1128, 11, '2021', '1625107310', 'PAT Bulan November 2021', '4', '', '', '461', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-07 22:35:04'),
(1129, 11, '2021', '1632973555', 'PAT Bulan November 2021', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-08 02:13:04'),
(1130, 11, '2021', '1626050298', 'PAT Bulan November 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-08 02:14:46'),
(1131, 7, '2021', '1627344636', 'PAT Juli 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 00:53:24'),
(1132, 8, '2021', '1627344636', 'PAT Agustus 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 00:53:54'),
(1133, 8, '2021', '1627344636', 'PAT Agustus 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 00:54:21'),
(1134, 9, '2021', '1627344636', 'PAT September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 00:54:53'),
(1135, 10, '2021', '1627344636', 'PAT Oktober 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 00:55:22'),
(1136, 11, '2021', '1627344636', 'PAT November 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 00:55:50'),
(1137, 11, '2021', '1634781233', 'PAT November 2021', '4', '', '', '368', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 01:18:37'),
(1138, 11, '2021', '1623900677', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '654', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1644971200.JPG', '', '', '', 18, 0, '2021-12-09 01:29:26'),
(1139, 11, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '178', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 01:31:10'),
(1140, 11, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '65', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 01:34:25'),
(1141, 11, '2021', '1622093825', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '325', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 01:35:47'),
(1142, 11, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 01:37:33'),
(1144, 11, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '312', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-09 01:39:10'),
(1145, 11, '2021', '1637548436', 'PAT Bulan November 2021', '4', '', '', '76', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-13 03:04:24'),
(1146, 8, '2021', '1622090031', 'PAT Bulan Agustus 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:14:14'),
(1147, 9, '2021', '1622090031', 'PAT Bulan September 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:14:51'),
(1148, 10, '2021', '1622090031', 'PAT Bulan Oktober 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:15:22'),
(1149, 11, '2021', '1622090031', 'PAT Bulan November 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:15:59'),
(1150, 8, '2021', '1622096916', 'PAT Bulan Agustus 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:24:12'),
(1151, 9, '2021', '1622096916', 'PAT Bulan September 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:24:43'),
(1152, 10, '2021', '1622096916', 'PAT Bulan Oktober 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:25:12'),
(1153, 11, '2021', '1622096916', 'PAT Bulan November 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:25:46'),
(1154, 7, '2021', '1622096916', 'PAT Bulan Juli 2021', '4', '', '', '110', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:26:16'),
(1155, 8, '2021', '1622098496', 'PAT Bulan Agustus 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:28:21'),
(1156, 9, '2021', '1622098496', 'PAT Bulan September 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:28:54'),
(1157, 10, '2021', '1622098496', 'PAT Bulan Oktober 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:29:23'),
(1158, 11, '2021', '1622098496', 'PAT Bulan November 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-20 14:29:55'),
(1159, 11, '2021', '1622099271', 'PAT Bulan November 2021', '4', '', '', '429', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-23 06:44:18'),
(1160, 10, '2021', '1627905389', 'PAT Oktober 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-30 03:19:55'),
(1161, 11, '2021', '1627905389', 'PAT November 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2021-12-30 03:20:22'),
(1162, 12, '2021', '1622099271', 'PAT Bulan Desember 2021', '4', '', '', '104', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-03 23:38:13'),
(1163, 12, '2021', '1622096916', 'PAT Desember 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-03 23:40:47'),
(1164, 12, '2021', '1622099118', 'PAT Bulan Desember 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 01:47:45'),
(1165, 12, '2021', '1622098211', 'PAT Bulan Desember 2021', '4', '', '', '1526', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 01:49:10'),
(1166, 12, '2021', '1622091731', 'PAT Bulan Desember 2021', '4', '', '', '1315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 01:50:53'),
(1167, 12, '2021', '1622098812', 'PAT Bulan Desember 2021', '4', '', '', '173', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 01:53:11'),
(1168, 12, '2021', '1622092292', 'PAT Bulan Desember 2021', '9', '', '', '1111', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 02:17:46'),
(1169, 12, '2021', '1627905389', 'PAT Bulan Desember 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 03:12:40'),
(1170, 12, '2021', '1622090031', 'PAT Bulan Desember 2021', '4', '', '', '327', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 03:38:48'),
(1171, 12, '2021', '1623898133', 'PAT Bulan Desember 2021', '4', '', '', '566', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 04:35:51'),
(1172, 12, '2021', '1623927556', 'PAT Bulan Desember 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-04 23:44:30'),
(1173, 12, '2021', '1622094263', 'PAT Saga Desember 2021', '4', '', '', '333', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-05 01:13:49'),
(1174, 12, '2021', '1623635157', 'PAT Desember 2021', '4', '', '', '519', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-05 01:15:55'),
(1175, 12, '2021', '1622093825', 'PAT Desember 2021', '4', '', '', '615', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-05 01:17:29'),
(1176, 12, '2021', '1623929487', 'PAT Bulan Desember 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-05 01:21:46'),
(1177, 12, '2021', '1622098496', 'PAT Bulan Desember 2021', '4', '', '', '487', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-05 06:40:03'),
(1178, 12, '2021', '1626050298', 'PAT Bulan Desember 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-12 01:37:11'),
(1179, 12, '2021', '1637548436', 'PAT Bulan Desember 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-13 21:16:56'),
(1180, 12, '2021', '1622092470', 'PAT Bulan Desember 2021', '4', '', '', '513', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-17 00:51:50'),
(1181, 12, '2021', '1622093001', 'PAT Bulan Desember 2021', '4', '', '', '615', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-17 00:53:14'),
(1182, 10, '2021', '1622093564', 'PAT Bulan Oktober 2021', '9', '', '', '227.137', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-17 01:21:29'),
(1183, 11, '2021', '1622093564', 'PAT Bulan November 2021', '9', '', '', '219.81', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-17 01:22:02'),
(1184, 12, '2021', '1622093564', 'PAT Bulan Desember 2021', '9', '', '', '227.137', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-17 01:22:36'),
(1185, 10, '2021', '1622092018', 'PAT Bulan Oktober 2021', '4', '', '', '7269', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:26:24'),
(1186, 11, '2021', '1622092018', 'PAT Bulan November 2021', '4', '', '', '7269', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:26:48'),
(1187, 12, '2021', '1622092018', 'PAT Bulan Desember 2021', '4', '', '', '7269', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:27:18'),
(1189, 12, '2021', '1632360397', 'PAT Bulan Desember 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:31:17'),
(1190, 12, '2021', '1634781233', 'PAT Bulan Desember 2021', '4', '', '', '380', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:32:19'),
(1191, 11, '2021', '1622103466', 'PAT Bulan November 2021', '4', '', '', '176', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:37:37'),
(1192, 12, '2021', '1622103466', 'PAT Bulan Desember 2021', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:37:59'),
(1193, 10, '2021', '1633316372', 'PAT Bulan Oktober 2021', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:38:56'),
(1194, 11, '2021', '1633316372', 'PAT Bulan November 2021', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:39:17'),
(1195, 12, '2021', '1633316372', 'PAT Bulan Desember 2021', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-18 04:39:43'),
(1196, 1, '2022', '1623642819', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 01:58:12'),
(1197, 1, '2022', '1623645956', 'Tagihan pajak air tanah periode bulan januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:21:47'),
(1198, 1, '2022', '1623645204', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:35:42'),
(1199, 1, '2022', '1623647645', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:38:11'),
(1200, 1, '2022', '1623735798', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:42:02'),
(1201, 1, '2022', '1623735521', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '88.35', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:46:31'),
(1202, 1, '2022', '1623736179', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:49:04'),
(1203, 1, '2022', '1623735937', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:51:00'),
(1204, 1, '2022', '1623734493', 'Tagihan pajak air tanah peride bulan Januari 2022', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:52:42'),
(1205, 1, '2022', '1642560823', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '27.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 02:58:11'),
(1206, 1, '2022', '1642561148', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 03:03:23'),
(1207, 1, '2022', '1642565369', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:13:49'),
(1208, 1, '2022', '1623734997', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:21:35'),
(1209, 1, '2022', '1642566187', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '4.65', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:27:22'),
(1210, 1, '2022', '1623735232', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '37.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:30:51'),
(1211, 1, '2022', '1623645793', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '32.55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:33:13'),
(1212, 1, '2022', '1623643274', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:35:57'),
(1213, 1, '2022', '1623735125', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:39:47'),
(1214, 1, '2022', '1642567361', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:46:41'),
(1215, 1, '2022', '1642567644', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:52:57'),
(1216, 1, '2022', '1623648156', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '330.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 04:56:22'),
(1217, 1, '2022', '1642568230', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:01:37'),
(1218, 1, '2022', '1642568620', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:06:36'),
(1219, 1, '2022', '1642568877', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:12:00'),
(1220, 1, '2022', '1642569167', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:15:59'),
(1221, 1, '2022', '1642569453', 'Tagihan pajak periode bulan Januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:23:20'),
(1222, 1, '2022', '1642569889', 'Tagihan pajak air tanah periode bulan Janurai 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:28:12'),
(1223, 1, '2022', '1642570153', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '37.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:33:51'),
(1224, 1, '2022', '1642570498', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '41.85', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-19 05:57:28'),
(1225, 1, '2022', '1642637991', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 00:26:22'),
(1226, 1, '2022', '1642638731', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '60.45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 00:52:03'),
(1227, 1, '2022', '1642640006', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 00:56:46'),
(1228, 1, '2022', '1642640306', 'Tagihan pajak air tanah periode bulan Janurai 2022', '4', '', '', '41.85', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 01:01:56'),
(1229, 1, '2022', '1642640785', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 01:11:12'),
(1230, 1, '2022', '1642641170', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 01:16:25'),
(1231, 1, '2022', '1642641522', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '65.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 01:21:50'),
(1232, 1, '2022', '1623732794', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-20 01:23:15'),
(1233, 8, '2021', '1628043297', 'PAT Bulan Agustus 2021', '4', '', '', '1023', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:40:39'),
(1234, 9, '2021', '1628043297', 'PAT Bulan September 2021', '4', '', '', '990', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:41:30'),
(1235, 10, '2021', '1628043297', 'PAT Bulan Oktober 2021', '4', '', '', '1023', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:42:26'),
(1236, 11, '2021', '1628043297', 'PAT Bulan November 2021', '4', '', '', '990', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:42:50'),
(1237, 12, '2021', '1628043297', 'PAT Bulan Desember 2021', '4', '', '', '1146', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:43:23'),
(1238, 8, '2021', '1628053192', 'PAT Bulan Agustus 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:44:58'),
(1239, 9, '2021', '1628053192', 'PAT Bulan September 2021', '4', '', '', '660', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:45:17'),
(1240, 10, '2021', '1628053192', 'PAT Bulan Oktober 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:45:48'),
(1241, 11, '2021', '1628053192', 'PAT Bulan November 2021', '4', '', '', '660', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:46:12'),
(1242, 12, '2021', '1628053192', 'PAT Bulan Desember 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:46:45'),
(1243, 8, '2021', '1628048359', 'PAT Bulan Agustus 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:55:19'),
(1244, 9, '2021', '1628048359', 'PAT Bulan September 2021', '4', '', '', '759', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:55:45'),
(1245, 10, '2021', '1628048359', 'PAT Bulan Oktober 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:56:04'),
(1246, 11, '2021', '1628048359', 'PAT Bulan November 2021', '4', '', '', '759', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:56:35'),
(1247, 12, '2021', '1628048359', 'PAT Bulan Desember 2021', '4', '', '', '3553', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 03:57:12'),
(1248, 8, '2021', '1622101246', 'PAT Bulan Agustus 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 04:05:04'),
(1249, 9, '2021', '1622101246', 'PAT September 2021', '4', '', '', '1800', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 04:05:37'),
(1250, 10, '2021', '1622101246', 'PAT Bulan Oktober 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 04:06:00'),
(1251, 11, '2021', '1622101246', 'PAT Bulan November 2021', '4', '', '', '1800', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-01-27 04:06:24'),
(1252, 1, '2022', '1622096916', 'PAT Bulan Oktober 2021', '4', '', '', '101', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 03:22:57'),
(1253, 1, '2022', '1623635157', 'PAT Bulan Januari 2022', '4', '', '', '568', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 03:25:06'),
(1254, 1, '2022', '1622099118', 'PAT Bulan Januari 2022', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:29:46'),
(1255, 1, '2022', '1632360397', 'PAT Bulan Januari 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:33:02'),
(1256, 1, '2022', '1622103466', 'PAT Bulan Januari 2022', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:36:09'),
(1257, 12, '2021', '1625108022', 'PAT Bulan Desember 2021', '4', '', '', '932', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:53:47'),
(1259, 1, '2022', '1622099271', 'PAT Bulan Januari 2022', '4', '', '', '341', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:55:35'),
(1260, 12, '2021', '1623900677', 'PAT Bulan Desember 2021', '4', '', '', '821.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:57:45'),
(1261, 1, '2022', '1623900677', 'PAT Bulan Januari 2022', '4', '', '', '822', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:58:09'),
(1262, 1, '2022', '1622098496', 'PAT Bulan Januari 2022', '4', '', '', '1076', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-02 05:59:34'),
(1263, 11, '2021', '1626228945', 'PAT Bulan November 2021', '4', '', '', '351', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:28:54'),
(1264, 12, '2021', '1626228945', 'PAT Bulan Desember 2021', '4', '', '', '351', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:29:16'),
(1265, 1, '2022', '1626228945', 'PAT Bulan Januari 2022', '4', '', '', '351', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:29:40'),
(1266, 1, '2022', '1623929487', 'PAT Bulan Januari 2022', '4', '', '', '150', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:46:52'),
(1267, 1, '2022', '1622098211', 'PAT Bulan Januari 2022', '4', '', '', '1587', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:50:48'),
(1268, 12, '2021', '1632973555', 'PAT Bulan Desember 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:57:29'),
(1269, 1, '2022', '1632973555', 'PAT Bulan Januari 2022', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 03:57:57'),
(1270, 12, '2021', '1622101246', 'PAT Bulan Desember 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 04:08:31'),
(1271, 8, '2021', '1628053281', 'PAT Bulan Agustus 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 04:21:12'),
(1272, 9, '2021', '1628053281', 'PAT Bulan September 2021', '4', '', '', '330', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 04:21:36'),
(1273, 10, '2021', '1628053281', 'PAT Bulan Oktober 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 04:22:21'),
(1274, 11, '2021', '1628053281', 'PAT Bulan November 2021', '4', '', '', '1617', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 04:24:03'),
(1275, 12, '2021', '1628053281', 'PAT Bulan Desember 2021', '4', '', '', '1617', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-03 04:24:27'),
(1277, 12, '2021', '1626227756', 'PAT Bulan Desember 2021', '4', '', '', '243.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 06:19:06'),
(1278, 1, '2022', '1622091731', 'PAT Bulan Januari 2022', '4', '', '', '1080', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 06:21:07'),
(1279, 1, '2022', '1623898133', 'PAT Bulan Januari 2022', '4', '', '', '495', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 06:23:28'),
(1280, 1, '2022', '1625108022', 'PAT Bulan Januari 2022', '4', '', '', '439', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 06:48:35'),
(1282, 1, '2022', '1622098297', 'PAT Bulan Januari 2022', '4', '', '', '191', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 07:32:31'),
(1283, 12, '2021', '1622098297', 'PAT Bulan Desember 2021', '4', '', '', '191', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 07:33:14'),
(1284, 1, '2022', '1622092292', 'PAT Bulan Januari 2022', '9', '', '', '1727', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-04 07:35:02'),
(1285, 1, '2022', '1623927556', 'PAT Fox Hotel Januari 2022', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-07 09:49:09'),
(1286, 1, '2022', '1626228632', 'PAT Bulan Januari 2022', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 00:38:33'),
(1287, 10, '2021', '1626228632', 'PAT Bulan Oktober 2021', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 00:39:24'),
(1288, 11, '2021', '1626228632', 'PAT Bulan November 2021', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 00:39:53'),
(1289, 12, '2021', '1626228632', 'PAT Bulan Desember 2021', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 00:40:27'),
(1290, 1, '2022', '1622092470', 'PAT Bulan Januari 2022', '4', '', '', '634', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 05:21:03'),
(1291, 1, '2022', '1622093001', 'PAT Bulan Januari 2022', '4', '', '', '367', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 05:22:43'),
(1292, 1, '2022', '1622093564', 'PAT Bulan Januari 2022', '4', '', '', '227', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-08 05:24:30'),
(1293, 12, '2021', '1625107310', 'PAT Bulan Desember 2021', '4', '', '', '694.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-09 00:39:39'),
(1294, 1, '2022', '1625107310', 'PAT Bulan Januari 2022', '4', '', '', '694.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-09 00:40:07'),
(1295, 1, '2022', '1622093825', 'PAT Bulan Januari 2022', '4', '', '', '188', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-09 04:48:22'),
(1296, 12, '2021', '1627344636', 'PAT bln Desember 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-16 00:43:28'),
(1297, 1, '2022', '1627344636', 'PAT bln Januari 2022', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-16 00:44:31');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `total_pabt`, `id_pengguna`, `created_by`, `created_at`) VALUES
(1298, 1, '2022', '1626227756', 'PAT Bulan Januari 2021', '4', '', '', '243.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-16 05:03:45'),
(1299, 1, '2022', '1622098812', 'PAT Bulan Januari 2022', '4', '', '', '300', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-16 05:15:50'),
(1300, 11, '2021', '1622098424', 'PAT Bulan November 2021', '4', '', '', '237', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1646989661.jpg', '', '', '', 18, 0, '2022-02-16 05:21:35'),
(1301, 12, '2021', '1622098424', 'PAT Bulan Desember 2021', '4', '', '', '237', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1646989708.jpg', '', '', '', 18, 0, '2022-02-16 05:22:11'),
(1302, 1, '2022', '1622098424', 'PAT Bulan Januari 2022', '4', '', '', '237', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1652054316.jpg', '', '', '', 18, 0, '2022-02-16 05:23:58'),
(1303, 1, '2022', '1623645579', 'PAT Bulan Januari 2022', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-02-21 03:17:22'),
(1305, 2, '2022', '1623635157', 'PAT Bulan February 2022', '4', '', '', '416', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-01 08:18:00'),
(1306, 2, '2022', '1622098496', 'PAT Bulan Februari 2022', '4', '', '', '1082', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-02 02:43:50'),
(1307, 2, '2022', '1622092292', 'PAT Bulan Februari 2022', '9', '', '', '720', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-02 02:59:25'),
(1308, 2, '2022', '1622093825', 'PAT Bulan Februari 2022', '4', '', '', '207', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-02 04:09:07'),
(1309, 2, '2022', '1622096916', 'PAT bln February 2022', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-02 04:49:28'),
(1311, 2, '2022', '1623927556', 'PAT Bulan Februari 2022', '4', '', '', '4480', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-04 00:38:30'),
(1312, 1, '2022', '1646354960', 'PAT Bulan Januari 2022', '4', '', '', '155', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '', '', 18, 0, '2022-03-04 00:53:47'),
(1313, 2, '2022', '1646354960', 'PAT Bulan Februari 2022', '4', '', '', '140', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-04 00:54:18'),
(1314, 2, '2022', '1623929487', 'PAT Bulan Februari 2022', '4', '', '', '92', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-04 01:23:47'),
(1315, 2, '2022', '1622093564', 'PAT Bulan Februari 2022', '4', '', '', '205.156', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-09 00:33:01'),
(1316, 1, '2022', '1622094263', 'PAT Bulan Januari 2022', '4', '', '', '308', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-09 00:39:05'),
(1317, 2, '2022', '1622094263', 'PAT Bulan Februari 2022', '4', '', '', '308', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-09 00:39:31'),
(1319, 8, '2021', '1626227510', 'PAT Bulan Agustus 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-10 04:20:33'),
(1320, 9, '2021', '1626227510', 'PAT Bulan September 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-10 04:20:58'),
(1321, 10, '2021', '1626227510', 'PAT Bulan Oktober 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-10 04:21:25'),
(1322, 11, '2021', '1626227510', 'PAT Bulan November 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-10 04:23:31'),
(1323, 12, '2021', '1626227510', 'PAT Bulan Desember 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-10 04:24:02'),
(1324, 1, '2022', '1626227510', 'PAT BUlan Januari 2022', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-10 04:24:31'),
(1325, 5, '2021', '1626227510', 'PAT Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-11 02:13:24'),
(1327, 2, '2022', '1622093001', 'PAT Bulan Februari 2022', '4', '', '', '433', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-11 04:16:33'),
(1328, 2, '2022', '1622092470', 'PAT Bulan Faebruari 2022', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-11 05:06:17'),
(1329, 1, '2022', '1627905389', 'PAT Bulan Januari 2022', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-11 05:44:19'),
(1330, 2, '2022', '1627905389', 'PAT Bulan February 2022', '4', '', '', '280', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-11 05:44:48'),
(1331, 1, '2022', '1637548436', 'PAT Januari 2022', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-16 01:42:40'),
(1332, 2, '2022', '1637548436', 'PAT Februari 2022', '4', '', '', '61.05', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-16 01:43:04'),
(1333, 9, '2021', '1623645579', 'PAT Bulan September 2021', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-16 01:58:46'),
(1334, 10, '2021', '1623645579', 'PAT Bulan Oktober 2021', '4', '', '', '260', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-16 01:59:12'),
(1335, 11, '2021', '1623645579', 'PAT Bulan November 2021', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-16 02:00:26'),
(1336, 12, '2021', '1623645579', 'PAT Bulan Desember 2021', '4', '', '', '260', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-16 02:01:07'),
(1337, 9, '2021', '1625548247', 'PAT Bulan September 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-21 01:11:49'),
(1338, 10, '2021', '1625548247', 'PAT Bulan Oktober 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-21 01:12:17'),
(1339, 11, '2021', '1625548247', 'PAT Bulan November 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-21 01:12:41'),
(1340, 12, '2021', '1625548247', 'PAT Bulan Desember 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-21 01:13:04'),
(1341, 1, '2022', '1625548247', 'PAT Bualan Januari 2022', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-21 01:13:32'),
(1342, 2, '2022', '1625548247', 'PAT Bulan Februari 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-21 01:13:54'),
(1343, 1, '2022', '1648429126', 'PAT Bulan Januari 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 01:09:33'),
(1344, 2, '2022', '1648429126', 'PAT Bulan Februari 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 01:10:07'),
(1345, 3, '2022', '1648429126', 'PAT Bulan Maret 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 01:10:33'),
(1346, 1, '2022', '1633316372', 'PAT Bulan Januari 2022', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 03:53:17'),
(1347, 2, '2022', '1633316372', 'PAT Bulan Februari 2022', '4', '', '', '1795', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 03:53:53'),
(1348, 3, '2022', '1633316372', 'PAT Bulan Maret 2022', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 03:54:17'),
(1349, 11, '2021', '1633327800', 'PAT Bulan November 2021', '4', '', '', '196', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 04:44:11'),
(1350, 12, '2021', '1633327800', 'PAT Bulan Desember 2021', '4', '', '', '211', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-28 04:48:32'),
(1351, 1, '2022', '1648451977', 'PAT Bulan Januari 2022', '4', '', '', '116.25', 0, 5, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1652415218.jpeg', '', '', '', 18, 0, '2022-03-28 07:23:50'),
(1352, 2, '2022', '1648451977', 'PAT Bulan Februari 2022', '4', '', '', '105', 0, 5, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1652415274.jpeg', '', '', '', 18, 0, '2022-03-28 07:24:43'),
(1353, 8, '2021', '1622102685', 'PAT Bulan Agustus 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:03:11'),
(1354, 9, '2021', '1622102685', 'PAT Bulan September 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:03:53'),
(1355, 10, '2021', '1622102685', 'PAT Bulan Oktober 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:04:25'),
(1356, 11, '2021', '1622102685', 'PAT Bulan November 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:04:54'),
(1357, 12, '2021', '1622102685', 'PAT Desember 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:05:21'),
(1358, 1, '2022', '1622102685', 'PAT Bulan Januari 2022', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:07:05'),
(1359, 2, '2022', '1622102685', 'PAT Bulan Februari 2022', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 03:09:11'),
(1360, 1, '2022', '1632361405', 'PAT Bulan Januari 2022', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 04:14:30'),
(1361, 2, '2022', '1632361405', 'PAT Bulan Februari 2022', '4', '', '', '101', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-29 04:14:54'),
(1362, 2, '2022', '1622098211', 'PAT Bulan February 2022', '4', '', '', '2120', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-30 00:29:03'),
(1363, 2, '2022', '1622099118', 'PAT Bulan Maret 2022', '4', '', '', '1204', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-30 00:30:45'),
(1364, 2, '2022', '1623900677', 'PAT Bulan February 2022', '4', '', '', '1011', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-30 01:59:40'),
(1365, 2, '2022', '1626228945', 'PAT Bulan February 2022', '4', '', '', '374', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-03-30 09:37:24'),
(1366, 3, '2022', '1622096916', 'PAT Bulan Februari 2022', '4', '', '', '163', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-04 00:36:52'),
(1367, 3, '2022', '1648451977', 'PAT Bulan April 2022', '4', '', '', '116', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-04 03:17:24'),
(1368, 3, '2022', '1623635157', 'PAT Bulan Maret 2022', '4', '', '', '550', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-04 03:50:09'),
(1369, 3, '2022', '1623927556', 'PAT Bulan Maret 2022', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-04 05:55:02'),
(1370, 2, '2022', '1622091731', 'PAT Bulan Februari 2022', '4', '', '', '1064', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-04 23:51:51'),
(1371, 3, '2022', '1622091731', 'PAT Bulan Maret 2022', '4', '', '', '1130', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-04 23:52:22'),
(1372, 1, '2022', '1625108221', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-06 01:32:20'),
(1373, 3, '2022', '1623929487', 'PAT Bulan Maret 2022', '4', '', '', '128', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-06 03:57:13'),
(1374, 2, '2022', '1632360397', 'PAT Bulan Februari 2022', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:10:22'),
(1375, 3, '2022', '1632360397', 'PAT Bulan Maret 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:11:00'),
(1376, 2, '2022', '1626227756', 'PAT Bulan Februari 2022', '4', '', '', '242.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:17:34'),
(1377, 3, '2022', '1626227756', 'PAT Bulan Maret 2022', '4', '', '', '242.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:17:56'),
(1378, 2, '2022', '1632973555', 'PAT Bulan Februari 2022', '4', '', '', '336', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:19:12'),
(1379, 3, '2022', '1632973555', 'PAT Bulan Maret 2022', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:19:33'),
(1380, 2, '2022', '1626227510', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:20:48'),
(1381, 3, '2022', '1626227510', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:21:03'),
(1382, 2, '2022', '1625107310', 'PAT Bulan Februari 2022', '4', '', '', '348', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:23:25'),
(1383, 3, '2022', '1625107310', 'PAT Bulan Maret 2022', '4', '', '', '348', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:23:41'),
(1384, 3, '2022', '1622093825', 'PAT Bulan Maret 2022', '4', '', '', '133', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-07 00:25:52'),
(1385, 3, '2022', '1626228945', 'PAT Bulan Maret 2022', '4', '', '', '439', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 00:49:01'),
(1386, 2, '2022', '1625108022', 'PAT Bulan Februari 2022', '4', '', '', '291', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:03:31'),
(1387, 3, '2022', '1625108022', 'PAT Bulan Maret 2022', '4', '', '', '347', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:04:06'),
(1388, 2, '2022', '1622098424', 'PAT Bulan Februari 2022', '4', '', '', '155', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1652493170.jpg', '', '', '', 18, 0, '2022-04-11 02:06:42'),
(1389, 3, '2022', '1622098424', 'PAT Bulan Maret 2022', '4', '', '', '155', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1652493353.jpg', '', '', '', 18, 0, '2022-04-11 02:07:04'),
(1390, 1, '2022', '1628043297', 'PAT Bulan Januari 2022', '4', '', '', '106.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:12:00'),
(1391, 2, '2022', '1628043297', 'PAT Bulan Februari 2022', '4', '', '', '106.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:12:27'),
(1392, 3, '2022', '1628043297', 'PAT Bulan Maret 2022', '4', '', '', '106.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:12:51'),
(1393, 3, '2022', '1622098211', 'PAT Bulan Maret 2022', '4', '', '', '1520', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:56:08'),
(1394, 3, '2022', '1622098496', 'PAT Bulan Maret 2022', '4', '', '', '811', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 02:58:14'),
(1395, 2, '2022', '1626228632', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 03:02:09'),
(1396, 3, '2022', '1626228632', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-11 03:02:32'),
(1397, 12, '2021', '1625108221', 'PAT Bulan Desember 2021', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-12 00:17:10'),
(1398, 2, '2022', '1625108221', 'PAT Bulan Februari 2022', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-12 00:17:40'),
(1399, 3, '2022', '1625108221', 'PAT Bulan Maret 2022', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-12 00:18:03'),
(1400, 1, '2022', '1649732079', 'PAT Bulan Janiuari 2022', '4', '', '', '409.82', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-12 02:57:47'),
(1401, 2, '2022', '1649732079', 'PAT Bulan Februari 2022', '4', '', '', '369.88', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-12 02:58:36'),
(1402, 3, '2022', '1649732079', 'PAT Bulan Maret 2022', '4', '', '', '409.82', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-04-12 02:58:59'),
(1403, 4, '2022', '1622096916', 'PAT Bulan April 2022', '4', '', '', '107', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 01:30:08'),
(1404, 4, '2022', '1623927556', 'PAT Bulan APril 2022', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 01:31:00'),
(1405, 4, '2022', '1648451977', 'PAT Bulan April 2022', '4', '', '', '112', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 01:47:13'),
(1406, 1, '2022', '1634781233', 'PAT Bulan Januari 2022', '4', '', '', '380', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:41:47'),
(1407, 2, '2022', '1634781233', 'PAT Bulan Februari 2022', '4', '', '', '343', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:42:08'),
(1408, 3, '2022', '1634781233', 'PAT Bulan Maret 2022', '4', '', '', '380', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:42:28'),
(1409, 4, '2022', '1634781233', 'PAT Bulan April 2022', '4', '', '', '380', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:42:52'),
(1410, 1, '2022', '1632878689', 'PAT Bulan Januari 2022', '4', '', '', '380', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:50:11'),
(1411, 2, '2022', '1632878689', 'PAT Bulan Februari 2022', '4', '', '', '343', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:50:35'),
(1412, 3, '2022', '1632878689', 'PAT Bulan Maret 2022', '4', '', '', '380', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:50:57'),
(1413, 4, '2022', '1632878689', 'PAT Bulan April 2022', '4', '', '', '368', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 03:51:20'),
(1417, 10, '2021', '1632878689', 'PAT Bulan Oktober 2021', '4', '', '', '409', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 05:47:41'),
(1418, 11, '2021', '1632878689', 'PAT Bulan November 2021', '4', '', '', '396', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 05:48:04'),
(1419, 12, '2021', '1632878689', 'PAT Bulan Desember 2021', '4', '', '', '409', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 05:52:02'),
(1420, 4, '2022', '1623635157', 'PAT Bulan April 2022', '4', '', '', '619', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-09 05:52:41'),
(1421, 2, '2022', '1642568877', 'PAT Bulan Februari 2022', '4', '', '', '101.16', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:09:07'),
(1422, 3, '2022', '1642568877', 'PAT Bulan Maret 2022', '4', '', '', '112', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:09:25'),
(1423, 4, '2022', '1642568877', 'PAT Bulan APril 2022', '4', '', '', '108.39', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:09:45'),
(1424, 2, '2022', '1642569167', 'PAT Bulan Februari 2022', '4', '', '', '101.16', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:14:03'),
(1425, 3, '2022', '1642569167', 'PAT Bulan Maret 2022', '4', '', '', '112', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:14:21'),
(1426, 4, '2022', '1642569167', 'PAT Bulan April 2022', '4', '', '', '108.39', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:14:49'),
(1427, 2, '2022', '1642640306', 'PAT Bulan Februari 2022', '4', '', '', '51', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:17:57'),
(1428, 3, '2022', '1642640306', 'PAT Bulan Maret 2022', '4', '', '', '56', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:18:15'),
(1429, 4, '2022', '1642640306', 'PAT Bulan April 2022', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:18:44'),
(1430, 2, '2022', '1642569889', 'PAT Bulan Februari 2022', '4', '', '', '42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:30:12'),
(1431, 3, '2022', '1642569889', 'PAT Bulan Maret 2022', '4', '', '', '47', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:30:30'),
(1432, 4, '2022', '1642569889', 'PAT Bulan April 2022', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:31:23'),
(1433, 2, '2022', '1642570153', 'PAT Bulan Februari 2022', '4', '', '', '33', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:45:40'),
(1434, 3, '2022', '1642570153', 'PAT Bulan Maret 2022', '4', '', '', '37', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:46:02'),
(1435, 4, '2022', '1642570153', 'PAT Bulan APpril 2022', '4', '', '', '36', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:46:40'),
(1436, 2, '2022', '1642570498', 'PAT Bulan Februari 2022', '4', '', '', '38', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:54:11'),
(1437, 3, '2022', '1642570498', 'PAT Bulan Maret 2022', '4', '', '', '42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:54:45'),
(1438, 4, '2022', '1642570498', 'PAT Bulan April 2022', '4', '', '', '41', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 01:55:15'),
(1439, 2, '2022', '1642637991', 'PAT Bulan Februari 2022', '4', '', '', '42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:13:07'),
(1440, 3, '2022', '1642637991', 'PAT Bulan Maret 2022', '4', '', '', '47', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:13:26'),
(1441, 4, '2022', '1642637991', 'PAT Bulan April 2022', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:13:59'),
(1442, 2, '2022', '1642638731', 'PAT Bulan Februari 2022', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:23:15'),
(1443, 3, '2022', '1642638731', 'PAT Bulan Maret 2022', '4', '', '', '60', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:23:35'),
(1444, 4, '2022', '1642638731', 'PAT Bulan April 2022', '4', '', '', '58', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:24:05'),
(1445, 2, '2022', '1642640006', 'PAT Bulan Februari 2022', '4', '', '', '42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:39:48'),
(1446, 3, '2022', '1642640006', 'PAT Bulan Maret 2022', '4', '', '', '47', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:40:08'),
(1447, 4, '2022', '1642640006', 'PAT Bulan April 2022', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-10 02:40:42'),
(1448, 4, '2022', '1648429126', 'PAT Bulan April 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 00:45:12'),
(1449, 2, '2022', '1622103466', 'PAT Bulan Februari 2022', '4', '', '', '164', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 00:54:55'),
(1450, 3, '2022', '1622103466', 'PAT Bulan Maret 2022', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 00:55:20'),
(1451, 4, '2022', '1622103466', 'PAT Bulan April 2022', '4', '', '', '175', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 00:55:43'),
(1452, 3, '2022', '1622099118', 'PAT Bulan Maret 2022', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 00:56:52'),
(1453, 4, '2022', '1622099118', 'PAT Bulan April 2022', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 00:57:32'),
(1454, 2, '2022', '1622099271', 'PAT Bulan Februari 2022', '4', '', '', '329', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:01:41'),
(1455, 3, '2022', '1622099271', 'PAT Bulan Maret 2022', '4', '', '', '329', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:01:42'),
(1456, 4, '2022', '1622099271', 'PAT Bulan April 2022', '4', '', '', '329', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:02:19'),
(1457, 3, '2022', '1622092292', 'PAT Bulan Maret 2022', '9', '', '', '720', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:04:25'),
(1458, 4, '2022', '1622092292', 'PAT Bulan April 2022', '9', '', '', '1032', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:04:52'),
(1459, 1, '2022', '1628053281', 'PAT Bulan Januari 2022', '4', '', '', '805', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:08:55'),
(1460, 2, '2022', '1628053281', 'PAT Bulan Februari 2022', '4', '', '', '805', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:09:16'),
(1461, 3, '2022', '1628053281', 'PAT Bulan Maret 2022', '4', '', '', '805', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:09:37'),
(1462, 4, '2022', '1628053281', 'PAT Bulan April  2022', '4', '', '', '805', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:10:13'),
(1463, 3, '2022', '1623900677', 'PAT Bulan Maret 2022', '4', '', '', '340', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:16:45'),
(1464, 4, '2022', '1623900677', 'PAT Bulan April 2022', '4', '', '', '687', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 01:17:03'),
(1465, 4, '2022', '1625107310', 'PAT Bulan April 2022', '4', '', '', '1304', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 02:53:45'),
(1466, 2, '2022', '1622098297', 'PAT Bulan Februari 2022', '4', '', '', '173', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 02:56:28'),
(1467, 3, '2022', '1622098297', 'PAT Bulan Maret 2022', '4', '', '', '173', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 02:56:47'),
(1468, 4, '2022', '1622098297', 'PAT Bulan April 2022', '4', '', '', '173', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 02:57:11'),
(1469, 4, '2022', '1622093825', 'PAT Bulan Apil 2022', '4', '', '', '55', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 03:16:53'),
(1470, 4, '2022', '1626228632', 'PAT Bulan April 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 03:18:15'),
(1471, 4, '2022', '1625108022', 'PAT Bulan April 2022', '4', '', '', '329', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 04:07:53'),
(1472, 4, '2022', '1628043297', 'PAT Bulan April 2022', '4', '', '', '109', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 04:16:26'),
(1473, 4, '2022', '1623929487', 'PAT Bulan April 2022', '4', '', '', '68', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 05:16:46'),
(1474, 4, '2022', '1622098211', 'PAT Bulan April 2022', '4', '', '', '1975', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 05:19:23'),
(1475, 2, '2022', '1642640785', 'PAT Bulan Februari 2022', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:33:54'),
(1476, 3, '2022', '1642640785', 'PAT Bulan Maret 2022', '4', '', '', '96', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:34:11'),
(1477, 4, '2022', '1642640785', 'PAT Bulan April 2022', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:35:43'),
(1478, 1, '2022', '1652312292', 'PAT Bulan Januari 2022', '4', '', '', '65', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:42:03'),
(1479, 2, '2022', '1652312292', 'PAT Bulan Februari 2022', '4', '', '', '59', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:42:27'),
(1480, 3, '2022', '1652312292', 'PAT Bulan Maret 2022', '4', '', '', '65', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:42:47'),
(1481, 4, '2022', '1652312292', 'PAT Bulan April 2022', '4', '', '', '63', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-11 23:43:12'),
(1482, 4, '2022', '1632360397', 'PAT Bulan April 2022', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-12 00:20:25'),
(1483, 1, '2022', '1626050298', 'PAT Bulan Januari 2022', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-12 03:01:58'),
(1484, 2, '2022', '1626050298', 'PAT Bulan Februari 2022', '4', '', '', '76', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-12 03:02:19'),
(1485, 3, '2022', '1626050298', 'PAT Bulan Maret 2022', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-12 03:02:41'),
(1486, 4, '2022', '1626050298', 'PAT Bulan April 2022', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-12 03:03:03'),
(1487, 5, '2022', '1626050298', 'PAT Bulan Mei 2022', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-12 03:24:14'),
(1488, 12, '2021', '1629377749', 'PAT Bulan Desember 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-13 00:39:38'),
(1489, 4, '2022', '1622098496', 'PAT Bulan April 2022', '4', '', '', '707', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-13 00:43:20'),
(1490, 3, '2022', '1627905389', 'PAT Bulan Maret 2022', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-20 00:17:42'),
(1491, 4, '2022', '1627905389', 'PAT Bulan APril 2022', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-20 00:18:36'),
(1492, 3, '2022', '1637548436', 'PAT Bulan Maret 2022', '4', '', '', '102', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-24 01:24:38'),
(1493, 4, '2022', '1637548436', 'PAT Bulan April 2022', '4', '', '', '140', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-24 01:25:05'),
(1494, 4, '2022', '1626227756', 'PAT Bulan April 2022', '4', '', '', '482', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-24 02:00:17'),
(1495, 4, '2022', '1632973555', 'PAT Bulan April 2022', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-05-24 02:07:38'),
(1496, 5, '2022', '1622096916', 'PAT Bulan Mei 2022', '4', '', '', '72', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-02 23:50:15'),
(1497, 5, '2022', '1623927556', 'PAT Bulan Mei 2022', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:30:26'),
(1498, 1, '2022', '1629377749', 'PAT Bulan Januari 2022', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:32:15'),
(1499, 2, '2022', '1629377749', 'PAT Bulan Febriari 2022', '4', '', '', '1680', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:32:39'),
(1500, 3, '2022', '1629377749', 'PAT Bulan Maret 2022', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:33:32'),
(1501, 4, '2022', '1629377749', 'PAT Bulan April 2022', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:33:57'),
(1502, 5, '2022', '1629377749', 'PAT Bulan Mei 2022', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:34:47'),
(1503, 4, '2022', '1622091731', 'PAT Bulan April 2022', '4', '', '', '1190', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:39:37'),
(1504, 5, '2022', '1622091731', 'PAT Bulan Mei 2022', '4', '', '', '1190', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 00:40:15'),
(1505, 5, '2022', '1623900677', 'PAT Bulan Mei 2022', '4', '', '', '370', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 01:41:14'),
(1506, 5, '2022', '1623929487', 'PAT Bulan Mei 2022', '4', '', '', '86', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 02:11:42'),
(1507, 5, '2022', '1623635157', 'PAT Bulan Mei 2022', '4', '', '', '601', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 04:18:00'),
(1508, 5, '2022', '1622098211', 'PAT Bulan Mei 2022', '4', '', '', '1539', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 04:27:14'),
(1509, 5, '2022', '1622099118', 'PAT Bulan Mei 2022', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-03 04:27:59'),
(1510, 5, '2022', '1632360397', 'PAT Bulan Mei 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-08 04:17:07'),
(1511, 5, '2022', '1648451977', 'PAT Bulan Mei 2022', '4', '', '', '116', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-13 23:35:12'),
(1512, 5, '2022', '1648429126', 'PAT Bulan Mei 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-14 02:03:19'),
(1513, 5, '2022', '1622098496', 'PAT Bulan Mei 2022', '4', '', '', '766', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-15 00:46:57'),
(1514, 4, '2022', '1625108221', 'PAT Bulan April 2022', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-20 01:14:52'),
(1515, 5, '2022', '1625108221', 'PAT Bulan Mei 2022', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-20 01:15:11'),
(1516, 4, '2022', '1626228945', 'PAT Bulan April 2022', '4', '', '', '367', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-20 01:32:49'),
(1517, 5, '2022', '1626228945', 'PAT Bulan Mei 2022', '4', '', '', '367', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-20 01:33:22'),
(1518, 4, '2022', '1626227510', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-23 03:41:01'),
(1519, 5, '2022', '1626227510', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-23 03:41:23'),
(1520, 5, '2022', '1628043297', 'PAT Bulan Mei 2022', '4', '', '', '273', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-23 05:31:31'),
(1521, 2, '2022', '1627344636', 'PAT Bulan Februari 2022', '4', '', '', '201.42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 00:06:29'),
(1522, 3, '2022', '1627344636', 'PAT Bulan Maret 2022', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 00:06:46'),
(1523, 4, '2022', '1627344636', 'PAT Bulan April 2022', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 00:07:05'),
(1524, 5, '2022', '1627344636', 'PAT Bulan Mei 2022', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 00:07:27'),
(1525, 1, '2022', '1622097152', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 05:05:49'),
(1526, 2, '2022', '1622097152', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 05:06:06'),
(1527, 3, '2022', '1622097152', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 05:06:27'),
(1528, 5, '2022', '1622097152', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 05:06:49'),
(1529, 4, '2022', '1622097152', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-06-27 05:09:01'),
(1530, 6, '2022', '1622096916', 'PAT Bulan Juni 2022', '4', '', '', '135', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-01 00:55:05'),
(1531, 6, '2022', '1632360397', 'PAT Bulan Juni 2022', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-03 23:58:24'),
(1532, 6, '2022', '1623635157', 'PAT Bulan Juni 2022', '4', '', '', '724', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-04 00:31:31'),
(1533, 4, '2022', '1622098424', 'PAT Bulan April 2022', '4', '', '', '304', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-05 04:46:01'),
(1534, 5, '2022', '1622098424', 'PAT Bulan Mei 2022', '4', '', '', '304', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-05 04:46:20'),
(1535, 6, '2022', '1622098424', 'PAT Bulan Juni 2022', '4', '', '', '304', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-05 04:46:38'),
(1536, 6, '2022', '1623929487', 'PAT Bulan Juni 2022', '4', '', '', '433', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-05 23:53:25'),
(1537, 5, '2022', '1622098297', 'PAT Bulan Mei 2022', '4', '', '', '508', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-05 23:55:19'),
(1538, 6, '2022', '1622098297', 'PAT Bulan Juni 2022', '4', '', '', '508', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-05 23:55:36'),
(1539, 6, '2022', '1622091731', 'PAT Bulan Juni 2022', '4', '', '', '1070', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 00:01:46'),
(1540, 6, '2022', '1623927556', 'PAT Bulan Juni 2022', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 00:02:31'),
(1541, 5, '2022', '1622093825', 'PAT Bulan Mei 2022', '4', '', '', '154', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 01:03:20'),
(1542, 6, '2022', '1622093825', 'PAT Bulan Juni 2022', '4', '', '', '154', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 01:03:37'),
(1543, 4, '2022', '1633316372', 'PAT Bulan April 2022', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 01:27:52'),
(1544, 5, '2022', '1633316372', 'PAT Bulan Mei 2022', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 01:28:10'),
(1545, 6, '2022', '1633316372', 'PAT Bulan Juni 2022', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 01:28:28'),
(1546, 5, '2022', '1622092292', 'PAT Bulan Mei 2022', '9', '', '', '915', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:04:29'),
(1547, 6, '2022', '1622092292', 'PAT Bulan Juni 2022', '9', '', '', '915', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:04:48'),
(1548, 6, '2022', '1628043297', 'PAT Bulan Juni 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:39:48'),
(1549, 3, '2022', '1622092470', 'PAT Bulan Maret 2022', '4', '', '', '166', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:49:26'),
(1550, 4, '2022', '1622092470', 'PAT Bulan April 2022', '4', '', '', '175', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:49:43'),
(1551, 5, '2022', '1622092470', 'PAT Bulan Mei 2022', '4', '', '', '175', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:50:41'),
(1552, 6, '2022', '1622092470', 'PAT Bulan Juni 2022', '4', '', '', '175', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 02:50:59'),
(1553, 3, '2022', '1622093001', 'PAT Bulan Maret 2022', '4', '', '', '495', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:06:32'),
(1554, 4, '2022', '1622093001', 'PAT Bulan April 2022', '4', '', '', '428', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:06:54'),
(1555, 5, '2022', '1622093001', 'PAT Bulan Mei 2022', '4', '', '', '428', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:07:10'),
(1556, 6, '2022', '1622093001', 'PAT Bulan Juni 2022', '4', '', '', '428', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:07:25'),
(1557, 3, '2022', '1622093564', 'PAT Bulan Maret 2022', '4', '', '', '227', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:13:56'),
(1558, 4, '2022', '1622093564', 'PAT Bulan Maret 2022', '4', '', '', '220', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:16:49'),
(1559, 5, '2022', '1622093564', 'PAT Bulan Mei 2022', '4', '', '', '227', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:17:29'),
(1560, 6, '2022', '1622093564', 'PAT Bulan Juni 2022', '4', '', '', '220', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:17:46'),
(1561, 6, '2022', '1622098211', 'PAT Bulan Juni 2022', '4', '', '', '2182', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:31:54'),
(1562, 6, '2022', '1622099118', 'PAT Bulan Juni 2022', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:33:30'),
(1563, 1, '2022', '1622090031', 'PAT Bulan Januari 2922', '4', '', '', '831', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:46:57'),
(1564, 2, '2022', '1622090031', 'PAT Bulan Februari 2022', '4', '', '', '831', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:47:29'),
(1565, 3, '2022', '1622090031', 'PAT Bulan Maret 2022', '4', '', '', '831', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 03:47:48'),
(1566, 4, '2022', '1622090031', 'PAT Bulan April 2022', '4', '', '', '831', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 04:03:00'),
(1567, 5, '2022', '1622090031', 'PAT Bulan Mei 2022', '4', '', '', '831', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 04:03:23'),
(1568, 6, '2022', '1622090031', 'PAT Bulan Juni 2022', '4', '', '', '831', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 04:03:40'),
(1569, 5, '2022', '1625108022', 'PAT Bulan Mei 2022', '4', '', '', '356', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 04:06:10'),
(1570, 6, '2022', '1625108022', 'PAT Bulan Juni 2022', '4', '', '', '358', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 04:06:33'),
(1571, 5, '2022', '1627905389', 'PAT Bulan Mei 2022', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 05:30:30'),
(1572, 6, '2022', '1627905389', 'PAT Bulan Juni 2022', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 05:30:52'),
(1573, 5, '2022', '1625107310', 'PAT Bulan Mei 2022', '4', '', '', '1585', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 05:56:37'),
(1574, 6, '2022', '1625107310', 'PAT Bulan Juni 2022', '4', '', '', '1585', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 05:57:08'),
(1575, 5, '2022', '1626228632', 'PAT Bulan Mei 2022', '4', '', '', '59', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 23:54:12'),
(1576, 6, '2022', '1626228632', 'PAT Bulan Juni 2022', '4', '', '', '59', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-06 23:54:42'),
(1577, 3, '2022', '1622094263', 'PAT Bulan Maret 2022', '4', '', '', '192', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 00:56:52'),
(1578, 4, '2022', '1622094263', 'PAT Bulan April 2022', '4', '', '', '192', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 00:57:14'),
(1579, 6, '2022', '1622094263', 'PAT Bulan Juni 2022', '4', '', '', '192', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 00:57:33'),
(1580, 1, '2022', '1622097351', 'PAT Bulan Juni 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:06:00'),
(1581, 2, '2022', '1622097351', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:07:15'),
(1582, 3, '2022', '1622097351', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:07:29'),
(1583, 4, '2022', '1622097351', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:07:43'),
(1584, 5, '2022', '1622097351', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:08:03'),
(1585, 6, '2022', '1622097351', 'PAT Bulan Juni 2022', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:09:00'),
(1586, 1, '2022', '1657242912', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:20:41'),
(1587, 2, '2022', '1657242912', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:21:07'),
(1588, 3, '2022', '1657242912', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:21:45'),
(1589, 4, '2022', '1657242912', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:22:00'),
(1590, 5, '2022', '1657242912', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:22:16'),
(1591, 6, '2022', '1657242912', 'PAT Bulan Juni 2022', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:22:31'),
(1592, 1, '2022', '1657243692', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:31:21'),
(1593, 2, '2022', '1657243692', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:31:36'),
(1594, 3, '2022', '1657243692', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:31:49'),
(1595, 4, '2022', '1657243692', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:32:04'),
(1596, 5, '2022', '1657243692', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:32:18'),
(1597, 6, '2022', '1657243692', 'PAT Bulan Juni 2022', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:32:52'),
(1600, 10, '2021', '1632361405', 'PAT Bulan Oktober', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:41:54'),
(1601, 11, '2021', '1632361405', 'PAT Bulan November 2022', '4', '', '', '108', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:42:38'),
(1602, 12, '2021', '1632361405', 'PAT Bulan Desember 2022', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:43:06'),
(1603, 3, '2022', '1632361405', 'PAT Bulan Maret 2022', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:43:32'),
(1604, 4, '2022', '1632361405', 'PAT BUlan April 2022', '4', '', '', '108', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:43:51'),
(1605, 5, '2022', '1632361405', 'PAT Bulan Mei 2022', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:44:33'),
(1606, 6, '2022', '1632361405', 'PAT Bulan Juni 2022', '4', '', '', '108', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 01:44:50'),
(1607, 1, '2022', '1626225347', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 02:47:13'),
(1608, 2, '2022', '1626225347', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 02:51:32'),
(1609, 3, '2022', '1626225347', 'PAT Bulan maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 02:51:59'),
(1610, 4, '2022', '1626225347', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 02:52:25'),
(1611, 5, '2022', '1626225347', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 02:52:55'),
(1612, 6, '2022', '1626225347', 'PAT Bulan Juni 2022', '4', '', '', '60', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 02:53:22'),
(1613, 1, '2022', '1657244967', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:03:53'),
(1614, 2, '2022', '1657244967', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:04:10'),
(1615, 3, '2022', '1657244967', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:04:37'),
(1616, 4, '2022', '1657244967', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:04:53'),
(1617, 5, '2022', '1657244967', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:05:08'),
(1618, 6, '2022', '1657244967', 'PAT Bulan Juni 2022', '4', '', '', '60', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:05:23'),
(1619, 1, '2022', '1657250492', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:24:30'),
(1620, 2, '2022', '1657250492', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:24:45'),
(1621, 3, '2022', '1657250492', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:25:00');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `total_pabt`, `id_pengguna`, `created_by`, `created_at`) VALUES
(1622, 4, '2022', '1657250492', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:25:17'),
(1623, 5, '2022', '1657250492', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:25:32'),
(1624, 6, '2022', '1657250492', 'PAT Bulan Juni 2022', '4', '', '', '240', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:25:54'),
(1625, 1, '2022', '1657249909', 'PAT Bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:31:00'),
(1626, 2, '2022', '1657249909', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:31:37'),
(1627, 3, '2022', '1657249909', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:31:53'),
(1628, 4, '2022', '1657249909', 'PAT Bulan April 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:32:50'),
(1629, 5, '2022', '1657249909', 'PAT Bulan Mei 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:33:03'),
(1630, 6, '2022', '1657249909', 'PAT Bulan Juni 2022', '4', '', '', '120', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-08 03:33:21'),
(1631, 5, '2022', '1632878689', 'PAT Bulan Mei 2022', '4', '', '', '380', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-09 05:24:02'),
(1632, 6, '2022', '1632878689', 'PAT Bulan Juni 2022', '4', '', '', '368', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-09 05:24:39'),
(1633, 6, '2022', '1648451977', 'PAT Bulan Juni 2022', '4', '', '', '112', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-09 05:25:47'),
(1634, 4, '2022', '1649732079', 'PAT Bulan April 2022', '4', '', '', '397', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-09 05:26:44'),
(1635, 5, '2022', '1649732079', 'PAT Bulan Mei 2022', '4', '', '', '410', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-09 05:27:05'),
(1636, 6, '2022', '1649732079', 'PAT Bulan Juni 2022', '4', '', '', '398', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-09 05:27:31'),
(1637, 6, '2022', '1622098496', 'PAT Bulan Juni 2022', '4', '', '', '860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-12 04:07:33'),
(1638, 6, '2022', '1623900677', 'PAT Bulan Juni 2022', '4', '', '', '607', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-12 04:09:15'),
(1639, 5, '2022', '1648429126', 'PAT Bulan Mei 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-13 00:05:52'),
(1640, 6, '2022', '1648429126', 'PAT Bulan Juni 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-07-13 00:06:15'),
(1641, 2, '2022', '1623898133', 'PAT Bulan Februari 2022', '4', '', '', '315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:28:11'),
(1642, 3, '2022', '1623898133', 'PAT Bulan Maret 2022', '4', '', '', '315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:28:27'),
(1643, 4, '2022', '1623898133', 'PAT Bulan April 2022', '4', '', '', '315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:28:46'),
(1644, 5, '2022', '1623898133', 'PAT Bulan Mei 2022', '4', '', '', '315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:29:04'),
(1645, 6, '2022', '1623898133', 'PAT Bulan Juni 2022', '4', '', '', '315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:29:22'),
(1646, 7, '2022', '1623898133', 'PAT Bulan Juli 2022', '4', '', '', '315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:29:39'),
(1647, 5, '2022', '1622103466', 'PAT Bulan Mei 2022', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:31:03'),
(1648, 6, '2022', '1622103466', 'PAT Bulan Juni 2022', '4', '', '', '175', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:31:40'),
(1649, 7, '2022', '1622103466', 'PAT Bulan Juli 2022', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 02:31:59'),
(1650, 7, '2022', '1632360397', 'PAT Bulan Juli 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-01 05:32:34'),
(1651, 7, '2022', '1622097351', 'PAT Bulan Juli 2022', '4', '', '', '140', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-02 01:02:28'),
(1652, 7, '2022', '1622091731', 'PAT Bulan Juli 2022', '4', '', '', '833', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', '', 18, 0, '2022-08-02 06:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `kata_sandi` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `address` tinytext NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `hapus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `email`, `foto`, `kata_sandi`, `role_id`, `is_active`, `date_created`, `address`, `no_tlp`, `hapus`) VALUES
(18, 'Administrator System', 'admin.sipakot@jayapurakota.go.id', 'pengguna-1623373348.jpg', '$2y$10$bZPcwQ/Y4wfX7xvRG6zik.6gVsyc9v/rRX1P5GiCY/A6iVYJe9ntW', 1, 1, 1615992832, '', '082195958191', 0),
(30, 'Pelaksana Sistem Pendataan', 'pelaksana@jayapurakota.go.id', 'pengguna-1621828811.png', '$2y$10$TQzFcbhN6pCiHGQSxntZleI6cCY031jCPs38naxY7rJDACPMQlUjW', 3, 1, 0, '', '082199558191', 0),
(36, 'Dispenda', 'dispenda@jayapurakota.go.id	', 'pengguna-1621828822.png', '$2y$10$YWyjc2h57nbQfAOses97ROXyZjuFm3l9oujuM6N9ARORJy0OcwliC', 2, 1, 0, '', '098765432123', 0),
(42, 'Billy Koirewoa', 'grahamkoirewoa@gmail.com', 'pengguna-1622051766.png', '$2y$10$ZDPPJTUKcO43QZQHnr4Ga.NtCHL1uwGcq17VkiW.U3AiN7k.VSNDa', 3, 1, 0, '', '', 0),
(43, 'Wero Febriadi', 'wero@gmail.com', 'pengguna-1622777266.png', '$2y$10$FF3.LDKaCTQRHtHys8gAYOjkQdyiWZL5NE0k/l9adMW7P1BilifiW', 1, 1, 0, '', '082189110898', 0),
(44, 'Erich R.E.M. Waromi', 'erich@gmail.com', 'default-user.png', '$2y$10$1vNq92u8M5eq.BsVkHHGpuHd.ZRN3kK4J56bEAZzZeVAn/8tfyKAq', 3, 1, 0, '', 'NA', 0),
(45, 'SaCode Pelaksana', 'sacode.pelaksana@sacode.web.id', 'default-user.png', '$2y$10$EErxFTZc2rwzZ0CcKVzsvuHhfhnF.7HA4auyroWhINx.vW8oY8h7i', 3, 0, 0, '', '082199558191', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Pelaksana'),
(4, 'Tes');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Dispenda'),
(3, 'Pelaksana'),
(4, 'Wajib Pajak');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  `order_` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-home mr-1', 1, 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder mr-1', 1, 0),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open mr-1', 1, 0),
(9, 1, 'Users', 'admin/users', 'fas fa-fw fa-users mr-1', 1, 4),
(10, 1, 'Schedule', 'admin/schedule', 'fas fa-fw fa-calendar mr-1', 1, 2),
(11, 1, 'Courses', 'admin/courses', 'fas fa-fw fa-book-open mr-1', 1, 3),
(13, 2, 'My Courses', 'user/courses', 'fas fa-fw fa-book-open mr-1', 1, 3),
(14, 2, 'Dashboard', 'user/', 'fas fa-fw fa-home mr-1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wajib_pajak`
--

CREATE TABLE `wajib_pajak` (
  `id_wp` varchar(20) NOT NULL,
  `pemilik_nama` varchar(30) NOT NULL,
  `pemilik_foto` varchar(200) NOT NULL,
  `pemilik_email` varchar(100) NOT NULL,
  `pemilik_kata_sandi` varchar(200) NOT NULL,
  `pemilik_telp` varchar(20) NOT NULL,
  `pemilik_alamat` text NOT NULL,
  `usaha_nama` varchar(30) NOT NULL,
  `usaha_logo` varchar(50) NOT NULL,
  `usaha_email` varchar(50) NOT NULL,
  `usaha_telp` varchar(20) NOT NULL,
  `usaha_alamat` text NOT NULL,
  `usaha_kategori` int(1) NOT NULL,
  `usaha_luas_bangunan` varchar(10) NOT NULL,
  `usaha_luas_lahan` varchar(10) NOT NULL,
  `usaha_izin` varchar(10) NOT NULL,
  `usaha_dokumen` varchar(10) NOT NULL,
  `usaha_kos_jml_kmr` varchar(10) NOT NULL,
  `usaha_kos_jml_penghuni` varchar(10) NOT NULL,
  `usaha_rm_jml_kursi` varchar(10) NOT NULL,
  `usaha_keterangan` text NOT NULL,
  `usaha_kelurahan` varchar(50) NOT NULL,
  `usaha_distrik` varchar(50) NOT NULL,
  `created_by` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` int(1) NOT NULL,
  `hapus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wajib_pajak`
--

INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_kelurahan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1621923113', 'Hasah Bakti Naba', 'default-user.png', 'hasah@gmail.com', '$2y$10$Wi/YNzJwStdGfhdog.pbUukRd52BfjxjjYwwb5HYcG4TByzqoIQne', '081344543691', 'Kompleks KUD Expo', 'Rumah Kos Hasah Bakti Naba', 'default-image.png', 'hasah@gmail.com', '081344543691', 'Kompleks KUD Expo', 2, '', '', '', '', '14', '42', '', '', 'waena', 'heram', 0, '2021-05-25 06:15:40', 1, 0),
('1621923117', 'Ridwan', 'default-user.png', 'ridwanwaena@gmail.com', '$2y$10$WDPnnFVbp1XaViUWnnhR7eTUyw2iRdGLA7Bn3NUghnJq6AqtPY0my', '08124816892', 'Jl. Gelanggang Waena', 'Rumah Kos Ridwan', 'default-image.png', 'ridwanwaena@gmail.com', '08124816892', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '23', '49', '', '', 'waena', 'heram', 0, '2021-05-25 06:14:24', 1, 0),
('1621923127', 'Hermin Tati', 'default-user.png', 'hermintati@gmail.com', '$2y$10$1aphOkYw5A6ezOdwdEg3g.OamqwZ27pHAlQcptRovRmFFmiUzKr6S', '082216112625', 'Jl. Yoka', 'Rumah Kos Hermin Tati', 'default-image.png', 'hermintati@gmail.com', '081240207175', 'Jl. Yoka', 2, '', '', '', '', '25', '71', '', '', 'waena', 'heram', 0, '2021-05-25 06:12:19', 1, 0),
('1621923145', 'Herdrik seru', 'default-user.png', 'herdrikseru@gmail.com', '$2y$10$rDvm9bR9cGfEDqf9Skzzq.fzNpt1Bd9Jy7Lq7FunFQgglaE4/L0ry', '081344767706', 'Jl Yotefa', 'Rumah Kos Herdrik Seru', 'default-image.png', 'herdrikseru@gmail.com', '081344767706', 'Jl Yotefa', 2, '', '', '', '', '8', '17', '', '', '', '', 0, '2021-05-25 06:16:51', 0, 1),
('1621923304', 'Sudin Retob', 'default-user.png', 'sudinretob@gmail.com', '$2y$10$jWO.x9GE/ecTdTckHFX75ecZiHb8y8hueuWrz7YBm1LYEl6une2Q6', '', 'Jl. Gelanggang Waena', 'Rumah Kos Sudin Retob', 'default-image.png', 'sudinretob@gmail.com', '', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '32', '', '', 'waena', 'heram', 0, '2021-05-25 06:17:19', 1, 0),
('1621923352', 'Hj. Munahdira', 'default-user.png', 'munahdira@gmail.com', '$2y$10$sYHyjdD2VENr.awCmUsqjO.g1GqwhRcV2RrUO3JRZr0kk7S1mkhYW', '081344453293', 'Kompleks KUD Expo', 'Rumah Kos Hj. Munahdira', 'default-image.png', 'munahdira@gmail.com', '081344453293', 'Kompleks KUD Expo', 2, '', '', '', '', '16', '64', '', '', 'waena', 'heram', 0, '2021-05-25 06:18:39', 1, 0),
('1621923445', 'Mansyur', 'default-user.png', 'mansyur@gmail.com', '$2y$10$duSM5/EZQz7xeMgo/cw.AuAcXYKVCNyKyQYqQuhHA2d7j5DV2ABRa', '', 'Jl. Gelanggang Waena', 'Rumah Kos Mansyur', 'default-image.png', 'mansyur@gmail.com', '-', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '30', '', '', 'waena', 'heram', 0, '2021-05-25 06:19:27', 1, 0),
('1621923542', 'Mutalid Sanaba', 'default-user.png', 'mutalid@gmail.com', '$2y$10$DQjYXxhhyiEL7LZIZayDtucgRJL69tWgBfPMBDdghghfPav8vkvlG', '', 'Kompleks KUD Expo', 'Rumah Kos Mutalid Sanaba', 'default-image.png', 'mutalid@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '12', '42', '', '', 'waena', 'heram', 0, '2021-05-25 06:21:08', 1, 0),
('1621923552', 'Carolina Lin', 'default-user.png', 'carolinalin@gmail.com', '$2y$10$8jLcfChI0a4We0BS6Sw30eIZezQeUoc3LFTQMPYfXJOk/gtM0KzCu', '081344283518', 'Jl. Gerilyawan Kamkey', 'Rumah Kos Carolina Lin', 'default-image.png', 'carolinalin@gmail.com', '081344283518', 'Jl. Gerilyawan Kamkey', 2, '', '', '', '', '78', '100', '', 'Kualitas air tanah berkapur', 'yobe', 'abepura', 0, '2021-05-25 06:25:13', 1, 0),
('1621923573', 'H. Heru', 'default-user.png', 'hheru37@gmail.com', '$2y$10$enyBnq3tGV9432Gcq4K.FO3e/GvBb52z0WFsEJL7.JfreoUHk9xKS', '', 'Jl. Gelanggang II Waena', 'Rumah Kos H. Heru 37', 'default-image.png', 'hheru37@gmail.com', '', 'Jl. Gelanggang II Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '37', '72', '', '', 'waena', 'heram', 0, '2021-05-25 06:21:34', 1, 0),
('1621923704', 'H. Tajab', 'default-user.png', 'htajab@gmail.com', '$2y$10$1FI2sdTFEPmfvQV3doI1JOn2lkvwt9XcUC53wjRD82g/IhJn6xaX6', '', 'Jl. Gelanggang II Waena', 'Rumah Kos H. Tajab', 'default-image.png', 'htajab@gmail.com', '', 'Jl. Gelanggang II Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '40', '', '', 'waena', 'heram', 0, '2021-05-25 06:23:38', 1, 0),
('1621923753', 'Hj. Siti Rahma', 'default-user.png', 'hjsitirahma@gmail.com', '$2y$10$SA4fpKG6GD7SsBBY8DBKtuz8MK2tu4f8Ar9osxVXtWAZXqZm3Z4Wm', '', 'Kompleks KUD Expo', 'Rumah Kos Hj. Siti Rahma', 'default-image.png', 'hjsitirahma@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '18', '54', '', '', 'waena', 'heram', 0, '2021-05-25 06:25:22', 1, 0),
('1621923782', 'Ibu Kobak', 'default-user.png', 'ibukobak@gmail.com', '$2y$10$OcfGho1.H8Xx8qkIJ3HahuGs.ZD.I7GJfMsoZSd/2C3fDxWDg/1XO', '081344139664', 'Jl. Belakang tc perkebunan', 'Rumah Kos Ibu Kobak', 'default-image.png', 'ibukobak@gmail.com', '081344139664', 'Jl. Belakang tc perkebunan', 2, '', '', '', '', '16 kamar', '48 orang', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:26:25', 1, 0),
('1621923823', 'Ibu Kambuaya', 'default-user.png', 'kambuaya@gmail.com', '$2y$10$/F4VQyCmrD78DuMtSgw9buIueWC6u0jb4PPCJ9Ml1xrDDNfDF3mu.', '', 'Jl. Gelanggang II Waena', 'Rumah Kos Ibu Kambuaya', 'default-image.png', 'kambuaya@gmail.com', '', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '45', '', '', 'waena', 'heram', 0, '2021-05-25 06:25:35', 1, 0),
('1621923924', 'Nyoman', 'default-user.png', 'nyoman@gmail.com', '$2y$10$QK0i26OnERTCLOW9Iul8pONSIH4F9jqhv1SpHkPbc08NgVKNxmVV2', '', 'Kompleks KUD Expo', 'Rumah Kos Nyoman', 'default-image.png', 'nyoman@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '12', '24', '', 'Kualitas Air Bersih', 'waena', 'heram', 0, '2021-05-25 06:27:31', 1, 0),
('1621923947', 'H. Heru', 'default-user.png', 'hheru26@gmail.com', '$2y$10$vFaZob7HautXKMxlNp6bze6/Z/PG17LzgnAOzHMtwJw/Y4Nll5l/a', '', 'Jl. Gelanggang II Waena', 'Rumah Kos H. Heru 26', 'default-image.png', 'hheru26@gmail.com', '', 'Jl. Gelanggang Waena II', 2, '', '', 'Tidak Ada', 'Tidak Ada', '26', '75', '', '', 'waena', 'heram', 0, '2021-05-25 06:28:58', 1, 0),
('1621923954', 'Rudi Hermawan', 'default-user.png', 'rudihermawan@gmail.com', '$2y$10$ZDRqa9zD.rK0hoWQYkEZZu63cywyOHZXQ238dS7aO8pAtHfwjPfra', '', 'Jl. Yoka', 'Rumah Kos Rudi Hermawan', 'default-image.png', 'rudihermawan@gmail.com', '', 'Jl. Yoka', 2, '', '', '', '', '9', '27', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:31:44', 1, 0),
('1621924144', 'H. Umar', 'default-user.png', 'humar@gmail.com', '$2y$10$L2KdwmrPsMvMg/krrnX44ub7u6bCm2iNA1xHJNSh30N2Dsz03wXk6', '', 'Jl. Gelanggang Remaja Waena', 'Rumah Kos H. Umar', 'default-image.png', 'humar@gmail.go.id', '', 'Jl. Gelanggang Remaja Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '24', '62', '', '', 'waena', 'heram', 0, '2021-05-25 06:31:32', 1, 0),
('1621924200', 'Hj. Ros', 'default-user.png', 'ros@gmail.com', '$2y$10$QjmphYmSVmFeMdKMV/aRy.un0FdjUQdcxhyASUhJmJ8Ksy8F.3AlW', '', 'Kompleks KUD Expo', 'Rumah Kos Hj. Ros', 'default-image.png', 'ros@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '8', '32', '', 'Kuatlitas Air Bersih', 'waena', 'heram', 0, '2021-05-25 06:33:22', 1, 0),
('1621924304', 'Tris', 'default-user.png', 'trisgelanggang@gmail.com', '$2y$10$Ni0mGPEXU9TJiC/p4r15oeCmkfH92M9ykcHmfbTfjzPUIBsq2siJ.', '', 'Jl. Gelanggang Remaja Waena', 'Rumah Kos Tris Gelanggang Rmj', 'default-image.png', 'trisgelanggang@gmail.com', '', 'Jl. Gelanggang Remaja Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '35', '', '', 'waena', 'heram', 0, '2021-05-25 06:33:08', 1, 0),
('1621924311', 'Erna Sira Alhamid', 'default-user.png', 'ernasira@gmail.com', '$2y$10$eoDzb.Pmf.CTPYvIQrn81uCZJI220q.ptPdgHEQIvN0UADWKuxY.W', '082197886005', 'Jl. Karang Yoka', 'Rumah Kos Erna Sira Alhamid', 'default-image.png', 'ernasira@gmail.com', '082197886005', 'Jl. Karang Yoka', 2, '', '', '', '', '12', '46', '', 'Kualitas air sumur bersih', 'waena', 'heram', 0, '2021-05-25 06:35:58', 1, 0),
('1621924319', 'H. Nandar', 'default-user.png', 'hnandar@gmail.com', '$2y$10$7RnVEy1Y7QMmCwbLsCj6N.ZEkZN3w1uMBe6xvyaVDRFGQarzDtxMm', '0811482403', 'jl.belakang tc perkebunan', 'Rumah Kos H. Nandar', 'default-image.png', 'hnandar@gmail.com', '0811482403', 'jl.belakang tc perkebunan', 2, '', '', '', '', '16 kamar', '52 orang', '', 'kualitas air bersih\r\n', 'waena', 'heram', 0, '2021-05-25 06:34:31', 1, 0),
('1621924406', 'Sri', 'default-user.png', 'sriexpo@gmail.com', '$2y$10$Z6zbSywsMMf6VtqKgcC4kOdUExgRmiBIxnpuGz1nGcW2BgybYZt7i', '', 'Kompleks KUD Expo', 'Rumah Kos Sri', 'default-image.png', 'sriexpo@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '6', '24', '', 'Kualitas Air Bersih', 'waena', 'heram', 0, '2021-05-25 06:34:53', 1, 0),
('1621924495', 'Decu Deda', 'default-user.png', 'decudeda@gmail.go.id', '$2y$10$NbF49TDHqjQ/eLk5V5AWYOF4nbxXiISj9BgYOI/JdRSlW3r1W08qq', '', 'Padang Bulan I RT002/RW 6', 'Rumah Kos Decu Deda', 'default-image.png', 'decudeda@gmail.com', '', 'Padang Bulan I RT002/RW 6', 2, '', '', 'Tidak Ada', 'Tidak Ada', '11', '20', '', '', 'hedam', 'heram', 0, '2021-05-25 06:37:09', 1, 0),
('1621924501', 'Gofar', 'default-user.png', 'gofar@gmail.com', '$2y$10$4DIQcyDf8xhL/4.vW/F84eKV1gO8BqjwoHRM3d7dvg6h.itQTQnqy', '', 'Jl. Belut 4', 'Rumah Kos Gofar', 'default-image.png', 'gofar@gmail.com', '', 'Jl. Belut 4', 2, '', '', '', '', '10', '38', '', 'Kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:36:42', 1, 0),
('1621924532', 'Ilyas', 'default-user.png', 'ilyas@gmail.com', '$2y$10$oPYd3If.9Gkz7QHqWe6v2uzBHTi9PtvgHrMJhqSXyjpX.GGdFZgIq', '081344504943', 'Jl. Karang 4', 'Rumah Kos Ilyas ', 'default-image.png', 'ilyas@gmail.com', '081344504943', 'Jl. Karang 4', 2, '', '', '', '', '10 kamar', '20 orang', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:38:07', 1, 0),
('1621924562', 'Christina', 'default-user.png', 'christinayoka@gmail.com', '$2y$10$ao.E/4tEwaCGSvSChkXQ1.MYCiU/Omjgz7.s8NepGujZtG7PUAUYi', '082148458728', 'Jl. karang Yoka', 'Rumah Kos Christina', 'default-image.png', 'christinayoka@gmail.com', '082148458728', 'Jl. karang Yoka', 2, '', '', '', '', '10', '50', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:38:19', 1, 0),
('1621924607', 'Marthen Liga', 'default-user.png', 'marthenliga@gmail.com', '$2y$10$YZxBdRkdBKTi8qCWBW7KVeVRLVGDIuEMa5RySpMdDC4MtPkZz/CuO', '', 'Jl. Belut 4', 'Rumah Kos Marthen Liga', 'default-image.png', 'marthenliga@gmail.com', '', 'Jl. Belut 4', 2, '', '', '', '', '16', '64', '', 'Kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:39:01', 1, 0),
('1621924702', 'Marthen Malisa', 'default-user.png', 'marthenmalisa@gmail.com', '$2y$10$OkfbLbF1ndgygZcsFvUgq.1DpgR./qszoxB36nMBHhh21olNXmxd6', '', 'Jl. Karang Yoka', 'Rumah kos Marthen Malisa', 'default-image.png', 'marthenmalisa@gmail.com', '', 'Jl. Karang Yoka', 2, '', '', '', '', '9', '32', '', 'kualitas air sumur bersih', 'waena', 'heram', 0, '2021-05-25 06:40:45', 1, 0),
('1621924728', 'Syafei', 'default-user.png', 'syafei@gmail.com', '$2y$10$x5F4dpNodNgXFWZn47v9PuoKjU2AVMsmzCOrAiIJh8di3poxYRr02', '', 'Jl. kud', 'Rumah Kos Syafei', 'default-image.png', 'syafei@gmail.com', '', 'Jl. kud', 2, '', '', '', '', '18 kamar', '54 orang', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:40:58', 1, 0),
('1621924758', 'G. Situmorang', 'default-user.png', 'gsitumorang@gmail.com', '$2y$10$es/vAfgUpZk3UXscSxxhOOnVGgnO.BNpY98eoxW7/i4.sudLzl6K6', '', 'Jl. Belut 4', 'Rumah Kos G. Situmorang', 'default-image.png', 'gsitumorang@gmail.com', '', 'Jl. Belut 4', 2, '', '', '', '', '10', '32', '', 'Kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:41:21', 1, 0),
('1621924848', 'Sibarani Efendi', 'default-user.png', 'sibarani@gmail.com', '$2y$10$s.qsWNwNj48Xtg0TK19/l.HMoJE8IhK8Fst5FdfvGLb/3zIeRMDTy', '081248784851', 'Jl. Kolam Kangkung', 'Rumah Kos Sibarani Efendi', 'default-image.png', 'sibarani@gmail.com', '081248784851', 'Jl. Kolam Kangkung', 2, '', '', '', '', '12', '40', '', 'kualitas air sumur bersih', 'waena', 'heram', 0, '2021-05-25 06:44:42', 1, 0),
('1621924888', 'Joko', 'default-user.png', 'joko@gmail.com', '$2y$10$T1ZycgXjRGtLg3bjWFU1IOVEqaXCXcdxRXjTCYfEw5EyiyUabW0jW', '', 'jl.kud', 'Rumah Kos Joko', 'default-image.png', 'joko@gmail.com', '', 'jl.kud', 2, '', '', '', '', '6 kamar', '10 orang', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:44:04', 1, 0),
('1621924921', 'Delima Pangaribuan', 'default-user.png', 'dpangaribuan@gmail.com', '$2y$10$/GvA5JaEDsO8PyvsWDPY8uKDze5GUJSDn75PxfjYnIZvpvMuaAwzS', '081344130829', 'Jl. Belut 4', 'Rumah Kos Delima Pangaribuan', 'default-image.png', 'dpangaribuan@gmail.com', '081344130829', 'Jl. Belut 4', 2, '', '', '', '', '10', '30', '', 'Kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:45:28', 1, 0),
('1621925085', 'Marice Kawer', 'default-user.png', 'maricekawer@gmail.com', '$2y$10$Yo4QeuGhkUZfNTGcDPXeL.S9EulvNo4ZkORaxXUjySGo0lzmNfXO6', '081344990777', 'Jl. SMK 8 Yoka', 'Rumah Kos Marice Kawer', 'default-image.png', 'maricekawer@gmail.com', '081344990777', 'Jl SMK 8 Yoka', 2, '', '', '', '', '20', '60', '', 'kualitas air sumur bersih', 'waena', 'heram', 0, '2021-05-25 06:48:04', 1, 0),
('1621925134', 'Tris', 'default-user.png', 'tris@gmail.com', '$2y$10$f6qxA9UNgaNogl/VrvLaXOWeeqn0qBZWnIcJVFaHtW0cfQaoaMCiq', '', 'jl.kud', 'Rumah Kos Tris', 'default-image.png', 'tris@gmail.com', '', 'jl.kud', 2, '', '', '', '', '10 kamar', '18 orang', '', 'kualitas air baik\r\n', 'waena', 'heram', 0, '2021-05-25 06:48:41', 1, 0),
('1621925287', 'H. Parsudi', 'default-user.png', 'parsudi@gmail.com', '$2y$10$OZXxySonVXE8nQqFNKwSg.07tVfflBUNE9lof22QqhJwe8eatQi4S', '081344344976', 'Jl. Gelanggang', 'Rumah Kos Parsudi', 'default-image.png', 'parsudi@gmail.com', '081344344976', 'Jl. Gelanggang', 2, '', '', '', '', '19', '47', '', 'kualitas air sumur bersih', 'waena', 'heram', 0, '2021-05-25 06:50:12', 1, 0),
('1621925332', 'Ahmad', 'default-user.png', 'ahmadkud@gmail.com', '$2y$10$ifSB4e2nv/kVi63Hry72jej2EcB/klL8zgVKfOZs4yuhdP94L.lXi', '', 'Jl.kud', 'Rumah Kos Ahmad', 'default-image.png', 'ahmadkud@gmail.com', '', 'Jl.kud', 2, '', '', '', '', '14', '32', '', 'kualitas air bersih', 'waena', 'heram', 0, '2021-05-25 06:50:26', 1, 0),
('1622089001', 'Martina Manuhutu', 'default-user.png', 'martinamanuhutu@mail.go.id', '$2y$10$LuMBDcoqKTMLx17OWhgrv.HQL5/7GDSY1iPH2TFzC2FNvT6g.4/F2', '081340087466', 'Jl. Poltekes - Padang Bulan ', 'Rumah Kos Martina Manuhutu', 'default-image.png', 'rumahkosmartinamanuhutu@gmail.co.id', '-', 'Jl. Poltekes - Padang Bulan ', 2, '', '', 'Tidak Ada', 'Tidak Ada', '15', '30', '', '', 'hedam', 'heram', 0, '2021-05-27 04:20:35', 1, 0),
('1622089119', 'Dahlia', 'default-user.png', 'dahlia@gmail.com', '$2y$10$2ZmkSAvD3evHQVKKtgfD8O.VQYYwocmActgMKfvIFwZnezfOBEf8C', '085244561045', 'Gang Merpati I', 'Rumah Kos Dahlia', 'default-image.png', 'dahlia@gmail.com', '085244561045', 'Gang Merpati I', 2, '', '', '', '', '18', '11', '', 'Kualitas air tanah berkapur', 'kotabaru', 'abepura', 0, '2021-05-27 04:22:09', 1, 0),
('1622089121', 'Sultan', 'default-user.png', 'sultan@gmail.com', '$2y$10$aWGFtNo/trhvUFGmSJkVc.z9TizBQ7HyeWyooypif/KNTRd7whrLG', '082347164892', 'Entrop', 'Rumah Kos Bapak Sultan', 'default-image.png', 'sultan@gmail.com', '082347164892', 'Entrop', 2, '', '', '', '', '4', '', '', '', '', 'jprselatan', 0, '2021-05-27 04:22:13', 0, 0),
('1622089144', 'Lambale', 'default-user.png', 'lambale@gmail.com', '$2y$10$9d.l1XEB9.Gi8101bPws5.GyXZcNIuBpYw9O.kEzUlo.7bN2mCzuC', '08124812518', 'kampung button', 'Rumah Kos Bpk. Lambale', 'default-image.png', 'lambale@gmail.com', '08124812518', 'kampung button', 2, '', '', '', '', '24', '', '', '', '', 'jprselatan', 0, '2021-05-27 04:25:49', 1, 0),
('1622089258', 'Erna', 'default-user.png', 'erna@gmail.co.id', '$2y$10$pxBJx54LgLqgvSrAQks5MuBXhvoNGrV.VkDEIaR5KOTruNQKe4HIq', '-', 'Padang Bulan Organda', 'Rumah Kos Erna', 'default-image.png', 'rumahkoserna@gmail.co.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '10', '', '', 'hedam', 'heram', 0, '2021-05-27 04:26:41', 1, 0),
('1622089335', 'Agus Purwoko', 'default-user.png', 'aguspurwoko@gmail.com', '$2y$10$jUDO6.mA9nfUmXk4GbcoEeBQSe5znAG1c5HFNShYmBquGyMz7b.IW', '081248526162', 'Gang Merpati III', 'Rumah Kos Agus Purwoko', 'default-image.png', 'aguspurwoko@gmail.com', '081248526162', 'Gang Merpati III', 2, '', '', '', '', '11', '15', '', 'Kualitas air tidak berkapur', 'kotabaru', 'abepura', 0, '2021-05-27 04:24:57', 1, 0),
('1622089338', 'Hj Tahir', 'default-user.png', 'tahir@gmail.com', '$2y$10$tlb5xK72Msh1kS29P/Dre.iX5WQtunniuLuv..sYt0sLCJiWY42uC', '', 'Entrop', 'Rumah Kos Hj Tahir', 'default-image.png', 'tahir@gmail.com', '', 'Entrop', 2, '', '', '', '', '48', '', '', '', 'entrop', 'jprselatan', 0, '2021-05-27 04:24:55', 1, 0),
('1622089499', 'Ryan', 'default-user.png', 'Ryan@gmail.com', '$2y$10$O1xZ1qIEmAh/Gzt872hHsOGBS2hE7bWNU15Y.wtD90I0EXw5zvdr6', '081247570636', 'Entrop', 'Rumah kos Pak Ryan', 'default-image.png', 'Ryan@gmail.com', '081247570636', 'Entrop', 2, '', '', '', '', '', '', '', 'kualitas air jernih tetapi berbau', '', 'jprselatan', 0, '2021-05-27 04:27:21', 0, 0),
('1622089500', 'Situmorang', 'default-user.png', 'situmorang@gmail.com', '$2y$10$jc0.Kac6RHCY7mq9.BeppuFHuEhbuAvX0TZvVh7kNi/QRl.jPip0m', '', 'Gang Merpati II', 'Rumah Kos Situmorang', 'default-image.png', 'situmorang@gmail.com', '', 'Gang Merpati II', 2, '', '', '', '', '9', '13', '', 'Kualitas air tanah berkapur', 'kotabaru', 'abepura', 0, '2021-05-27 04:27:05', 1, 0),
('1622089607', 'Markus Tonandi', 'default-user.png', 'markustonandi@gmail.go.id', '$2y$10$erWEM4xUfAhBaI95biXo9.jApYXuz8DpnXEFZJMkWpJ0s8zmdIxvm', '085241058434', 'Padang Bulan Organda', 'Rumah Kos Markus Tonandi', 'default-image.png', 'rumahkosmarkustonandi@gmail.go.id', '085241058434', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '8', '', '', 'hedam', 'heram', 0, '2021-05-27 04:30:11', 1, 0),
('1622089628', 'Eli Usmaser', 'default-user.png', 'eliusmaser@gmail.com', '$2y$10$hkp/7VX9g8rew3uT7PZOTu0lalcP/yd4XzUley76eri59VLpgiAvW', '085244728660', 'Gang Merpati III', 'Rumah Kos Eli Usmaser', 'default-image.png', 'eliusmaser@gmail.com', '085244728660', 'Gang Merpati III', 2, '', '', '', '', '8', '16', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 04:29:41', 1, 0),
('1622089645', 'Harun', 'default-user.png', 'Harun@gmail.com', '$2y$10$x.S2VMXA6V0mKpiaW1DdUOJZyDRiBzboRCvGj03WyOifEpYjYHczq', '081247087280', 'Entrop', 'Rumah Kos Pak Harun', 'default-image.png', 'Harun@gmail.com', '081247087280', 'Entrop', 2, '', '', '', '', '3', '', '', 'kualitas air jernih', '', 'jprselatan', 0, '2021-05-27 04:32:05', 0, 0),
('1622089785', 'Ahmad Rohim', 'default-user.png', 'ahmadrohim@gmail.com', '$2y$10$grV0.3tz6OAw/o7r5dpc8.yBG8bZ9xxvhryOowImJ6HW2Q/Z9fnsy', '08134405523', 'Gang Merpati II', 'Rumah Kos Ahmad Rohim', 'default-image.png', 'ahmadrohim@gmail.com', '08134405523', 'Gang Merpati II', 2, '', '', '', '', '22', '44', '', 'Kualitas air berkapur', 'kotabaru', 'abepura', 0, '2021-05-27 04:32:10', 1, 0),
('1622089830', 'Lopes', 'default-user.png', 'lopes@gmail.go.id', '$2y$10$m.Mx8ED252J59bqtMjIy0u2SSfmrS/lZ7OXEWLhQJ2L8L1TT3am3.', '-', 'Padang Bulan Organda', 'Rumah Kos Lopes', 'default-image.png', 'rumahkoslopes@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '40', '40', '', '', 'hedam', 'heram', 0, '2021-05-27 04:32:32', 1, 0),
('1622089933', 'Herdrik Seru', 'default-user.png', 'herdrik@gmail.com', '$2y$10$w6oHx.sadb4e6JYjvheQF.nGtzEcUaJ2J25qF53SiQE0LCbAGFSS.', '081344767706', 'Jl. Yotefa', 'Rumah Kos Herdrik Seru', 'default-image.png', 'herdrik@gmail.com', '081344767706', 'Jl. Yotefa', 2, '', '', '', '', '8', '17', '', 'Kualitas air tanah berkapur', '', 'abepura', 0, '2021-05-27 04:34:51', 1, 0),
('1622089963', 'Heluka', 'default-user.png', 'heluka@gmail.go.id', '$2y$10$iMZHFjCJdsASuK1aG70XreGoOIdbWx.ZC/MkbULcpgbLgOxP68vrm', '-', 'Padang Bulan Organda', 'Rumah Kos Heluka', 'default-image.png', 'rumahkosheluka@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '15', '', '', '', 'abepura', 0, '2021-05-27 05:22:51', 0, 0),
('1622089988', 'Kumala Kaigere', 'default-user.png', 'Kumalakaigere@gmail.com', '$2y$10$jsUIGQoNHgkmE6Ldk9IkBOXVkTT/fBqqXKV4ajjzdO3NO18KUifTm', '085244033076', 'Entrop', 'Rumah Kos Ibu Kumala', 'default-image.png', 'Kumalakaigere@gmail.com', '085244033076', 'Entrop', 2, '', '', '', '', '6', '', '', 'kualitas air jernih, keruh', '', 'jprselatan', 0, '2021-05-27 04:41:28', 0, 0),
('1622090031', 'Fredy', 'default-user.png', 'amdkayuna@gmail.com', '$2y$10$lWBsqKhgCpfw4ILZYvWmEusSjJHR2HOcDILbbgVXwlDqaXqdkLKGa', '0967 581086', 'Jl. Baru Pasar Lama Kelurahan Awiyo', 'AMDK Ayuna', 'default-image.png', 'amdkayuna@gmail.com', '0967 581941', 'Jl. Baru Pasar Lama Kelurahan Awiyo', 5, '', '', 'Tidak Ada', 'Ada', '', '', '', '', 'awiyo', 'abepura', 0, '2021-05-27 04:40:42', 1, 0),
('1622090178', 'Haji Sumiati', 'default-user.png', 'sumiati@gmail.com', '$2y$10$XwsIje.WDl9NCOkHewHsY.M3e4OI7QN2WSxPiOQELSFMTeU.3JsR6', '', 'Jl. Yotefa', 'Rumah Kos Haji Sumiati', 'default-image.png', 'sumiati@gmail.com', '', 'Jl. Yotefa', 2, '', '', '', '', '20', '15', '', 'Kualitas air tanah berkapur', '', 'abepura', 0, '2021-05-27 04:39:05', 1, 0),
('1622090261', 'Lambale', 'default-user.png', 'lambale@gmail.com', '$2y$10$xtekabIpRoq8Zuf2LbSGyOgOgOB.JfjaJsDn08xfflGz1kkVOhD6u', '08124812518', 'kampung button', 'Rumah Kos Bpk. Lambale', 'default-image.png', 'lambale@gmail.com', '08124812518', 'kampung button', 2, '', '', '', '', '24 kamar', '', '', 'kualitas air bersih dan berkapur', '', 'jprselatan', 0, '2021-05-27 04:37:48', 1, 0),
('1622090281', 'Ibu Wania', 'default-user.png', 'wania@gmail.com', '$2y$10$khxQhuHcpnfYjuC0BTRaaOYVCQwzcZ0qx5qWxep/.XlGbx1qmyARm', '082334639345', 'kampung button RT.2/RW.1', 'Rumah Kos Ibu Wania', 'default-image.png', 'wania@gmail.com', '082334639345', 'kampung button RT.2/RW.1', 2, '', '', '', '', '10 kamar', '', '', 'kualitas air bersih', 'hamadi', 'jprselatan', 0, '2021-05-27 04:43:59', 1, 0),
('1622090348', 'Tanpa Nama No urt 8, Awiyo', 'default-user.png', 'tanpa8@gmail.com', '$2y$10$R5rioChod/1Haaqb7raR5.2x6AR8WxQDtg8cnmgENKWigWt.C1NBq', '', 'Jl. Yotefa', 'Rumah Kos Tnp Nama Jl. Youtefa', 'default-image.png', 'tanpa8@gmail.com', '', 'Jl. Yotefa', 2, '', '', '', '', '11', '4', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 04:40:54', 1, 0),
('1622090400', 'Bpk.Jumran', 'default-user.png', 'Jumran@gmail.com', '$2y$10$c80uhxk1crxkzeJZ7Adp9.nfh2zFSvxGUhA6DVBiERRcvut/tFJBe', '081344420250', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Jumran@gmail.com', '081344420250', 'Lembah Hamadi', 2, '', '', '', '', '1', '', '', 'keruh,berkapur', '', 'jprselatan', 0, '2021-05-27 04:55:00', 0, 0),
('1622090459', 'Haji Baharudin', 'default-user.png', 'baharudin@gmail.com', '$2y$10$QZQETTyLmIFDPWNyI9Do2uizivFggPFttpsAkrFEMUqo7qdFLcSYe', '08114802063', 'Gang Merpati II', 'Rumah Kos Haji Baharudin', 'default-image.png', 'baharudin@gmail.com', '08114802063', 'Gang Merpati II (jln. Nuri)', 2, '', '', '', '', '11', '15', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 04:43:44', 1, 0),
('1622090494', 'Stef M. Sularero', 'default-user.png', 'stefsularero@gmail.com', '$2y$10$nVoBZQ64fIOn16cyP81G/.9LJvv2A6MUg9a2ZEg9aoLUB8TRJlcf.', '081393734320', 'Entrop', 'Rumah Kos Bpk. Stef', 'default-image.png', 'stefsularero@gmail.com', '081393734320', 'Entrop', 2, '', '', '', '', '20', '', '', 'kualitas air  jernih berkapur', 'entrop', 'jprselatan', 0, '2021-05-27 04:47:33', 1, 0),
('1622090552', 'Syarie Hasan, SE', 'default-user.png', 'syarie@gmail.com', '$2y$10$bDNAaCu9Owp5g42BELOby.EbB.l6GN1FBi/..yvfvqrs.1KwvraCG', '0967 522400', 'Jl. Bahtera Entrop Jayapura', 'Hotel Sahid Papua', 'default-image.png', 'syarie@gmail.com', '0967 522401', 'Jl. Bahtera Entrop Jayapura', 3, '8.400 m2', '1.920 m2', 'Ada', 'Ada', '', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:02:04', 0, 0),
('1622090646', 'Bapak Jamali', 'default-user.png', 'jamali@gmail.com', '$2y$10$w/gX8lzVnmPgacUteaJi0u2YSzMewXffepANShSmRk/3yHKI8EntK', '081344613744', 'jl.lembah hamadi', 'Rumah Kos Bapak Jamali', 'default-image.png', 'jamali@gmail.com', '081344613744', 'jl.lembah hamadi', 2, '', '', '', '', '4 kamar', '', '', 'kualitas air bersih', '', 'jprselatan', 0, '2021-05-27 04:54:46', 0, 0),
('1622090661', 'Haji Nurlan', 'default-user.png', 'nurlan@gmail.com', '$2y$10$yLfHIZaG2VB9IjT.a1JWc.HzQoFtHszvxOYnUWtVrljpdk3TfqtXK', '', 'Gang Merpati II', 'Rumah Kos Haji Nurlan', 'default-image.png', 'nurlan@gmail.com', '', 'Gang Merpati II', 2, '', '', '', '', '16', '20', '', 'Kualitas air tanah berkapur', 'yobe', 'abepura', 0, '2021-05-27 04:48:39', 1, 0),
('1622090857', 'Basriman', 'default-user.png', 'Basriman@gmail.com', '$2y$10$MR2nUKnSWvcvMV4930/07uKRRV/xMTdpAJaWyMSvB.6/Dc/fxIsou', '082198625555', 'Entrop', 'Rumah kos Bapak Basriman', 'default-image.png', 'Basriman@gmail.com', '082198625555', 'Entrop', 2, '', '', '', '', '6', '', '', 'Kualitas air jernih, berkapur', '', 'jprselatan', 0, '2021-05-27 04:49:57', 0, 0),
('1622091003', 'Ongga', 'default-user.png', 'ongga@gmail.com', '$2y$10$AGgORKF6fESZIj6EWejjwe7Cvu0ZaD7zCImLZAcpMB9giuE9aLrsm', '081344556487', 'Entrop', 'Rumah Kos Bpk. Ongga', 'default-image.png', 'ongga@gmail.com', '081344556487', 'Entrop', 2, '', '', '', '', '10', '', '', '', 'hamadi', 'jprselatan', 0, '2021-05-27 04:56:21', 1, 0),
('1622091295', 'Bapak Efendi', 'default-user.png', 'efendi@gmail.com', '$2y$10$sPkBT7AwYG6FF3RrmDJViOQOOngYHKz3rpNFGtXHebg.4Ov1mlXqe', '082197881000', 'jl.lembah hamadi', 'Rumah Kos Bapak Efendi', 'default-image.png', 'efendi@gmail.com', '082197881000', 'jl.lembah hamadi', 2, '', '', '', '', '6 kamar', '', '', 'kualitas air bersih berkapur', '', 'jprselatan', 0, '2021-05-27 04:57:53', 0, 0),
('1622091321', 'Aji Uding', 'default-user.png', 'ajiuding@gmail.com', '$2y$10$wlQsDfN0bXQRdO9LJ2EUS.p3eR8vDMJe.5BjnRadwEKJWO7NhHnvK', '', 'Lembah hamadi', 'Rumah Kos Aji Uding', 'default-image.png', 'ajiuding@gmail.com', '', 'Lembah Hamadi', 2, '', '', '', '', '12', '', '', 'jernih', 'hamadi', 'jprselatan', 0, '2021-05-27 05:01:26', 1, 0),
('1622091384', 'Mamario', 'default-user.png', 'Mamario@gmail.com', '$2y$10$p5K2gjG6BKEEr2T/sFN11./O8YbWB0Fmu4E4shSn8.PFjqUsVjRUi', '081254655264', 'Entrop', 'Rumah Kos Mamario', 'default-image.png', 'Mamario@gmail.com', '081254655264', 'Entrop', 2, '', '', '', '', '5', '', '', '', '', 'jprselatan', 0, '2021-05-27 04:59:32', 0, 0),
('1622091477', 'Bapak Saharudin', 'default-user.png', 'saharudin@gmail.com', '$2y$10$dp8zT4EcKEc5A8hxEiUZDelJ6yRyj7.gSxxXnHXehiCdYBztukCz6', '', 'jl.lembah hamadi', 'Rumah Kos Bapak Saharudin', 'default-image.png', 'saharudin@gmail.com', '', 'jl.lembah hamadi', 2, '', '', '', '', '4 kamar', '', '', 'kualitas air bersih', '', 'jprselatan', 0, '2021-05-27 05:00:33', 0, 0),
('1622091578', 'Ernawati', 'default-user.png', 'Ernawati@gmail.com', '$2y$10$RTgVEH3CSnp/d.qwn13ldu88dZ3LueXYlWU0h0ioxJ8tvmpvVpAZq', '', 'Entrop', 'Rumah kos Ibu Ernawati', 'default-image.png', 'Ernawati@gmail.com', '', 'Entrop', 2, '', '', '', '', '2', '', '', 'kualitas air keruh , berkapur', '', 'jprselatan', 0, '2021-05-27 05:03:28', 0, 0),
('1622091637', 'Bapak Widi', 'default-user.png', 'widi@gmail.com', '$2y$10$6hKckB8FOXUBiXEe7G6DIOtRMVHFgif6NhoYUW7soZwsnTmnyOYfq', '081344908424', 'jl.lembah hamadi', 'Rumah Kos Bapak Widi', 'default-image.png', 'widi@gmail.com', '081344908424', 'jl.lembah hamadi', 2, '', '', '', '', '7 kamar', '', '', 'kualitas air bersih', '', 'jprselatan', 0, '2021-05-27 05:03:07', 0, 0),
('1622091731', 'PAULUS ARFAYAN', 'wajibpajak-1623997413.png', 'ca@mercure-jayapura.com', '$2y$10$m6dkasm31D6JzpzY5QFpBOFexAG.eSS6ITdiy5g8AVnaz0F.x87v2', '0967-5161888', 'Jl. Ahmad Yani No. 12, Kel. Gurabesi, Kec. Jayapura Utara, Prov. Papua 99111', 'MERCURE JAYAPURA', '1622091731-usaha-logo-1623897129.png', 'ca@mercure-jayapura.com', '0967-5161888', 'Jl. Ahmad Yani No. 12, Kel. Gurabesi, Kec.\r\nJayapura Utara, Prov. Papua 99111', 3, '120 m2', '1.247 m2', 'Ada', 'Ada', '-', '-', '-', '', 'gurabesi', 'jprutara', 0, '2021-05-27 05:06:56', 1, 0),
('1622091793', 'Bapak Widi', 'default-user.png', 'widi@gmail.com', '$2y$10$1tO/6qCwG0Xrh5u4uBRzXeed80jY7Ld9HbqJvGPYno5iFPzV2AvbW', '081344908424', 'jl.lembah hamadi', 'Rumah Kos Bapak Widi', 'default-image.png', 'widi@gmail.com', '081344908424', 'jl.lembah hamadi', 2, '', '', '', '', '7 kamar', '', '', 'kualitas air bersih', '', 'jprselatan', 0, '2021-05-27 05:03:15', 0, 0),
('1622091798', 'Pak Rahmat', 'default-user.png', 'rahmat@gmail.com', '$2y$10$88pWJ2K9tIJK3HA7HoFXP.VlX65YTf4z39QOYk6lSqMj3j9CLMGsW', '', 'jl.lembah hamadi', 'Rumah Kos Pak Rahmat', 'default-image.png', 'rahmat@gmail.com', '', 'jl.lembah hamadi', 2, '', '', '', '', '3 kamar', '', '', 'kualitas air bersih dan berkeruh', '', 'jprselatan', 0, '2021-05-27 05:06:00', 0, 0),
('1622091811', 'Darwis', 'default-user.png', 'Darwis@gmail.com', '$2y$10$SMxXF36JMi9w8wbn3GzWI.kWkwkexZ5q.wLvYymC0mRMRe/Gx6.jW', '081344411145', 'Entrop', 'Rumah Kos Pak Darwis', 'default-image.png', 'Darwis@gmail.com', '081344411145', 'Entrop', 2, '', '', '', '', '2', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:05:24', 0, 0),
('1622091861', 'Bpk.Arifudin', 'default-user.png', 'arifudin@gmail.com', '$2y$10$GZkjdUt5fAqaVPcUdgvkPekw1Y5BopFVaGxQzBfykiZO7kMZqd6Ke', '081240872625', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'arifudin@gmail.com', '081240872625', 'Lembah Hamadi', 2, '', '', '', '', '9', '', '', 'Jernih', '', 'jprselatan', 0, '2021-05-27 05:10:20', 0, 0),
('1622091929', 'Saharudin', 'default-user.png', 'Saharudin@gmail.com', '$2y$10$a9volvxVgtWwlEd01qpR/ukeArp/LSp825EGnXU4OijXwH.YtYKO.', '081240156035', 'Entrop', 'Rumah Kos Saharudin', 'default-image.png', 'Saharudin@gmail.com', '081240156035', 'Entrop', 2, '', '', '', '', '2', '', '', 'kualitas air keruh dan berkapur', '', 'jprselatan', 0, '2021-05-27 05:08:24', 0, 0),
('1622091971', 'Pak Ridwan', 'default-user.png', 'ridwan@gmail.com', '$2y$10$PmAXrVjc5A8FIOZFQ48zQ.xHCU6/EuSwW/8oWKrnLhIDdqS3RGlPu', '081342182223', 'jl.hamadi lembah', 'Rumah Kos Pak Ridwan', 'default-image.png', 'ridwan@gmail.com', '081342182223', 'jl.hamadi lembah', 2, '', '', '', '', '10', '', '', 'kualita air bersih dan berkeruh', 'entrop', 'jprselatan', 0, '2021-05-27 05:09:08', 1, 0),
('1622092018', 'Yayasan Dian Harapan', 'default-user.png', 'RSDH@gmail.com', '$2y$10$OtBp100gNNa8sKiLxy4fmudVPoFSJanpghRytLeAh6SJq0JyX4eR6', '0967 572325', 'Jl. Taruna Bakti Kelurahan Yabansai', 'Rumah Sakit Dian Harapan', 'default-image.png', 'RSDH@gmail.com', '0967 573 479', 'Jl. Taruna Bakti Kelurahan Yabansai', 2, '', '', 'Tidak Ada', 'Ada', '', '', '', '', 'hedam', 'heram', 0, '2021-05-27 05:11:27', 1, 0),
('1622092079', 'Haji Nur', 'default-user.png', 'hajinur@gmail.com', '$2y$10$27njPkL9rm9uJb3CO4nVE.joDr61gxbzI2F6bTFKfYmPl6Wj6coI6', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Haji Nur', 'default-image.png', 'hajinur@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '20', '57', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:10:17', 1, 0),
('1622092109', 'Hamid', 'default-user.png', 'Hamid@gmail.com', '$2y$10$rkP28dDW3Yr33xKIE3D4N.LMZcsJHJXGISjYYMOpf/WGYhYKLhEdi', '081344269229', 'Entrop', 'Rumah Kos Pak Hamid', 'default-image.png', 'Hamid@gmail.com', '081344269229', 'Entrop', 2, '', '', '', '', '3', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:15:39', 0, 0),
('1622092168', 'Pak Malau', 'default-user.png', 'malau@gmail.com', '$2y$10$u61KqSPo3H/FFTk75gU13uIdtseuFzJ8xP7Ae0Sj83jG8TQh.3bjS', '08111155050', 'jl.hamadi lembah', 'Rumah Kos Pak Malau', 'default-image.png', 'malau@gmail.com', '08111155050', 'jl.hamadi lembah', 2, '', '', '', '', '4 kamar', '', '', 'kualitas air bersih', '', 'jprselatan', 0, '2021-05-27 05:12:52', 0, 0),
('1622092224', 'H. Latumba', 'default-user.png', 'latumba@gmail.com', '$2y$10$snvUA7dO9HOYDog4PQj8gOXf/9TOwQAo0kpvasGGLMrQmAsP3hJTi', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos H. Latumba', 'default-image.png', 'latumba@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '10', '23', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:12:02', 1, 0),
('1622092243', 'Ibu. Rahmatiya', 'default-user.png', 'rahmatiya@gmail.com', '$2y$10$7Jzvt7.1ezEvlh/GJIdLWOxD01rgAjKuy1EB9N7Gr0XNtrjOUJmc.', '081240671717', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'rahmatiya@gmail.com', '081240671717', 'Lembah Hamadi', 2, '', '', '', '', '4', '', '', 'Jernih', '', 'jprselatan', 0, '2021-05-27 05:17:46', 0, 0),
('1622092292', 'Jeffry Ferdy, ST', 'default-user.png', 'malljayapura@gmail.com', '$2y$10$xSSk9j9g.YXLuGvEvkgkDukXvKmJEmpGOu01bQ./f2kSg/8jLimwS', '', 'Jl. Sam Ratulangi APO Jayapura', 'Mall Jayapura', 'default-image.png', 'malljayapura@gmail.com', '', 'Jl. Sam Ratulangi APO Jayapura', 4, '31.091,33 ', '11.095 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-05-27 05:14:14', 1, 0),
('1622092365', 'H. Jemap', 'default-user.png', 'jemap@gmail.com', '$2y$10$nRh9XQI7E2OEp1FX/ENbs.8MocQNiRkW/BTyglcPMdEm88Ym3ANWu', '081231657750', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos H. Jemap', 'default-image.png', 'jemap@gmail.com', '081231657750', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '8', '25', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:16:13', 1, 0),
('1622092381', 'Bapak Arifudin', 'default-user.png', 'arifudin@gmail.com', '$2y$10$eSLtDmP5F1/QdrXPbxbRVOANBnVTN5wcFWRAbsIqzyiJI.enTBT.e', '085197353491', 'jl.hamadi lembah', 'Rumah Kos Bapak Arifudin', 'default-image.png', 'arifudin@gmail.com', '085197353491', '085197353491', 2, '', '', '', '', '3 kamar', '', '', 'kualitas air bersih dan keruh', '', 'jprselatan', 0, '2021-05-27 05:26:42', 0, 0),
('1622092470', 'Soetedjo Pirono', 'default-user.png', 'multimandiri@gmail.com', '$2y$10$wkuQ3qiful7rBHVtpNnFj.lm.Vtn4F54ukQvGeeMJzNf72jbsbm9u', '', 'Jl. Baru Abepura No. 98 Kelurahan Whaimhorock', 'CV. Multi Mandiri', 'default-image.png', 'multimandiri@gmail.com', '', 'Jl. Baru Abepura No. 98 Kelurahan Whaimhorock', 4, '45.000m2', '1.803m2', 'Ada', 'Ada', '', '', '', '', 'whymhorock', 'abepura', 0, '2021-05-27 05:23:16', 1, 0),
('1622092544', 'Supardi', 'default-user.png', 'Supardi@gmail.com', '$2y$10$/y15Lesh0/zwn8F9JT/vb.jAmPhRRmbXzV6CqbxuM1GBFxRXwYsEO', '081344269229', 'Entrop', 'Rumah Kos Hj. Supardi', 'default-image.png', 'Supardi@gmail.com', '081344269229', 'Entrop', 2, '', '', '', '', '6', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:18:49', 0, 0),
('1622092579', 'Reisman', 'default-user.png', 'reisman@gmail.com', '$2y$10$RECOKZOaMzU4dKA8zVj9Yu9xcvaYDju996v/9Tr17reqygHlBeb1m', '081247475726', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Reisman', 'default-image.png', 'reisman@gmail.com', '081247475726', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '7', '22', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:18:47', 1, 0),
('1622092682', 'Suryani S. Hamadi', 'default-user.png', 'suryanihamadi@gmail.com', '$2y$10$K4gbebxEVREogZB3uBHLjuiQQoINyea0Bg8sQvzBCzAUZluAj0sfW', '085226046733', 'Lembah Hamadi', 'Rumah Kos Ibu Suryani S. Hamad', 'default-image.png', 'suryanihamadi@gmail.com', '085226046733', 'Lembah Hamadi', 2, '', '', '', '', '14', '', '', 'Jernih', 'entrop', 'jprselatan', 0, '2021-05-27 05:23:01', 1, 0),
('1622092765', 'Lamasa', 'default-user.png', 'lamasa@gmail.com', '$2y$10$cppBRcjxh3Z8Q4NLFQUr3.fr/WVCBAB689tfx8ZNX6KtVkHQCVmTC', '081240856163', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Lamasa', 'default-image.png', 'lamasa@gmail.com', '081240856163', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '6', '15', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:22:10', 1, 0),
('1622092773', 'Husein', 'default-user.png', 'Husein@gmail.com', '$2y$10$xEmG0zcEddx9D4sY.f3TkuFjoZeGZn7CGglWM8hUC7Cbi604ytk5S', '', 'Entrop', 'Rumah Kos Hj. Husein', 'default-image.png', 'Husein@gmail.com', '', 'Entrop', 2, '', '', '', '', '5', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:21:14', 0, 0),
('1622092878', 'Supriadi', 'default-user.png', 'Supriadi@gmail', '$2y$10$bAVip7pTxnmGjUu5EvdsBewiOZWvM/qK073WboMx2jC5zsj4CjKiW', '082197831086', 'Entrop', 'Rumah Kos Hj. Supriadi', 'default-image.png', 'Supriadi@gmail', '082197831086', 'Entrop', 2, '', '', '', '', '9', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:24:38', 0, 0),
('1622092934', 'Bahar', 'default-user.png', 'baharyoutefa@gmail.com', '$2y$10$kLgPZz.a096lF3WLylKiZu2CqVEq5dWJOuY6107jzOSf5ZMhc09.a', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Bahar', 'default-image.png', 'baharyoutefa@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '4', '12', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:24:11', 1, 0),
('1622092987', 'Martinus Matuan', 'default-user.png', 'martinusmatuan@gmail.co.id', '$2y$10$1KC9f80JPpcxaGdLpmU/FehYAn6.oKvarpZdKCu1Yu9PeSemEzXFm', '08223850015', 'Padang Bulan Organda', 'Rumah Kos Martinus Matuan', 'default-image.png', 'rumahkosmartinusmatuan@gmail.go.id', '08223850015', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '10', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 05:25:55', 1, 0),
('1622092992', 'Ibu.Rina Sanyi', 'default-user.png', 'rinasanyi@gmail.com', '$2y$10$8fY0/p0xxnCGhVwYxxrXa.Q5esg4/qM1NKy0lvOmqnidW4OHuchea', '', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'rinasanyi@gmail.com', '', 'Lembah Hamadi', 2, '', '', '', '', '1', '', '', 'Bersih', '', 'jprselatan', 0, '2021-05-27 05:29:02', 0, 0),
('1622093001', 'Soetedjo Pirono', 'default-user.png', 'megaabepura@gmail.com', '$2y$10$a4y3VHDqR5bux3bhV/7wg.bLiS8fv/R6P519Y81vU1O7i.yIcb2Sq', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 'Mega Abepura', '1622093001-usaha-logo-1627865157.JPG', 'megaabepura@gmail.com', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 4, '', '600 m2', 'Ada', 'Ada', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 05:29:12', 1, 0),
('1622093054', 'Asmira', 'default-user.png', 'asmira@gmail.com', '$2y$10$8r9qduWoeBaVP7l7de.olu2vZmWb6aJrEOLnfj4Kv8vkiDSrtU9WW', '082124480338', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Asmira', 'default-image.png', 'asmira@gmail.com', '082124480338', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '10', '25', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:29:00', 1, 0),
('1622093084', 'Bapak Kembar', 'default-user.png', 'Kembar@gmail.com', '$2y$10$yZ7/L0QWg6sbvTtpJmQ5eeT8NNZupr9a5I.bzmRBIK7.nA2oDoHya', '082261304903', 'Entrop', 'Rumah Kos Bapak Kembar', 'default-image.png', 'Kembar@gmail.com', '082261304903', 'Entrop', 2, '', '', '', '', '7', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:27:55', 0, 0),
('1622093162', 'Dorinus Dansinapa', 'default-user.png', 'dorinusdansinapa@gmail.go.id', '$2y$10$g8m0KrxIiRDT3aIR/L7gPOE58Wt5fZLgslvNU88sNRQBcnQv0ijc2', '-', 'Padang Bulan Organda', 'Rumah Kos Dorinus Dansinapa', 'default-image.png', 'dorinusdansinapa@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '10', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 05:28:57', 1, 0),
('1622093206', 'Ibu Sari', 'default-user.png', 'sari@gmail.com', '$2y$10$rskneouGBtbOe4T.qqIYuO4576aKylmt6lwu1x9BGUcvVtEN6Vwra', '081248339773', 'jl.hamadi lembah', 'Rumah Kos Ibu Sari', 'default-image.png', 'sari@gmail.com', '081248339773', 'jl.hamadi lembah', 2, '', '', '', '', '2 kamar', '', '', 'kualitaas air bersih ', '', 'jprselatan', 0, '2021-05-27 05:31:30', 0, 0),
('1622093287', 'Supriadi', 'default-user.png', 'Supriadi@gmail', '$2y$10$dxIxJc4snZL0mrYEE64v/uuSSwr6dRVv08IVNVmDMk.kmdA8gz4h.', '082197831086', 'Entrop', 'Rumah Kos Hj. Supriadi', 'default-image.png', 'Supriadi@gmail', '082197831086', 'Entrop', 2, '', '', '', '', '9', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:28:29', 0, 0),
('1622093355', 'Ibu Risma', 'default-user.png', 'risma@gmail.com', '$2y$10$/zn57qNeNWjtJEohtQLk3er2kj/Jw7KM6AHu/U.bYrZI4CuSWxZLW', '082197697160', 'Lembah Hamadi', 'Ibu Risma', 'default-image.png', 'risma@gmail.com', '082197697160', 'Lembah Hamadi', 2, '', '', '', '', '3', '', '', 'Bersih', '', 'jprselatan', 0, '2021-05-27 05:32:55', 0, 0),
('1622093358', 'Ursulah', 'default-user.png', 'ursulah@gmail.com', '$2y$10$f3JKJkLD1kqjLYSYox.KFu54QDrB2KaOGHU2FarfFUDp2bzeBU0pe', '081232144444', 'Entrop', 'Rumah Kos Ibu Ursulah', 'default-image.png', 'ursulah@gmail.com', '081232144444', 'Entrop', 2, '', '', '', '', '25', '', '', 'kualitas air jernih, berkapur', 'entrop', 'jprselatan', 0, '2021-05-27 05:31:51', 1, 0),
('1622093379', 'Dorinus Dasinsinapa', 'default-user.png', 'dorinusdasinsinaga@gmail.go.id', '$2y$10$X2LKQt6rRkFkNcklwh4LS.dJZkQuVRYAU0arPcXI9UcXn/Lj/miT.', '-', 'Padang Bulan Organda', 'Rumah Kos Dorinus Sinaga', 'default-image.png', 'dorinusdasinsinaga@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '10', '', '', '', '', 0, '2021-05-27 05:29:45', 0, 1),
('1622093394', 'Abas', 'default-user.png', 'abas@gmail.go.id', '$2y$10$hbw7cG/HcdvcB/DNFaB57etPinC7TYuFhVc5gTBYX/Z/kjWGZWVWW', '-', 'Perumnas IV', 'Rumas Kos Abas', 'default-image.png', 'abas@gmail.go.id', '-', 'Perumnas IV', 2, '', '', 'Tidak Ada', 'Tidak Ada', '28', '21', '', '', 'hedam', 'heram', 0, '2021-05-27 05:31:49', 1, 0),
('1622093399', 'Soetedjo Pirono', 'default-user.png', 'pirono@gmail.com', '$2y$10$emsur0c7x4BBNwU6EfLmBeirZRDpOAssJ1p5vwKat1SxRP3hkrANa', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 'Mega Abepura', 'default-image.png', 'pirono@gmail.com', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 4, '', '600 m2', 'Ada', 'Ada', '', '', '', '', '', '', 0, '2021-05-27 05:30:04', 0, 1),
('1622093515', 'Amir', 'default-user.png', 'Amir@gmail.com', '$2y$10$.YzjxOVlZTHRvSx1VkRSse3kabr5ow7SZPN8MQ88jcLHGDjWteJuy', '081344895588', 'Entrop', 'Rumah Kos Pak Amir', 'default-image.png', 'Amir@gmail.com', '081344895588', 'Entrop', 2, '', '', '', '', '10', '', '', 'kualitas air jernih, berkapur', 'entrop', 'jprselatan', 0, '2021-05-27 05:33:51', 1, 0),
('1622093523', 'Sanis', 'default-user.png', 'sanis@gmail.go.id', '$2y$10$bcm56WuoC6q7xLKRqFaTZuY01ENw7TqDshar.QfulUoQzrMEnGCNO', '081240938861', 'Padang Bulan Akes', 'Rumah Kos Sanis', 'default-image.png', 'sanis@gmail.go.id', '081240938861', 'Padang Bulan Akes', 2, '', '', 'Tidak Ada', 'Tidak Ada', '13', '12', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 05:34:01', 1, 0),
('1622093540', 'Hj. Olin', 'default-user.png', 'hjolin@gmail.com', '$2y$10$Au5K4XlMcFU9MKr6brBMN.n9dcySLBojb62bTGVZYd6v2JD9kqDD.', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Hj. Olin', 'default-image.png', 'hjolin@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '8', '15', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:34:08', 1, 0),
('1622093547', 'Ibu Maria Pasolang', 'default-user.png', 'mariapasolang@gmail.com', '$2y$10$JzxaYwoyhI6KNZrl0ZGkqe9hkfnefEYsO2RSaCjpxLbWyBGjiUgra', '081248784427', 'jl.hamadi lembah', 'Rumah Kos Maria Pasolang', 'default-image.png', 'mariapasolang@gmail.com', '081248784427', 'jl.hamadi lembah', 2, '', '', '', '', '8 kamar', '', '', 'kualitas air bersih dan berkapur', '', 'jprselatan', 0, '2021-05-27 05:36:38', 0, 0),
('1622093564', 'Soetedjo Pirono', 'default-user.png', 'megawaena@gmail.com', '$2y$10$bDqh2JpwkIEoC6N600QreOhWjNwGsCCRE/cb484Bxl6LHXYvNjjPW', '', 'Jl. Raya Abepura - Sentani Kelurahan Waena Distrik Heram', 'Mega Waena', 'default-image.png', 'megawaena@gmail.com', '', 'Jl. Raya Abepura - Sentani Kelurahan Waena Distrik Heram', 4, '202,30 m2', '1.410 m2', 'Ada', 'Ada', '', '', '', '', 'hedam', 'heram', 0, '2021-05-27 05:37:00', 1, 0),
('1622093636', 'M. Said', 'default-user.png', 'M.Said@gmail.com', '$2y$10$QffMLB403fu4jMbEETJ/l.fxqNUdwMLDdI1OpQ1qENouPl77pq0j2', '081344082320', 'Entrop', 'Rumah Kos Hj. M. Said', 'default-image.png', 'M.Said@gmail.com', '081344082320', 'Entrop', 2, '', '', '', '', '2', '', '', 'Kualitas air Jernih, berlumut hitam-hitam', '', 'jprselatan', 0, '2021-05-27 05:37:57', 0, 0),
('1622093653', 'Ibu Sesa', 'default-user.png', 'sesa@gmail.com', '$2y$10$Ln61l.1Fe8m/1Fy6YQgjCeLR34cW3gI5PfMAiiirhsEu7TVVMWGES', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Ibu Sesa', 'default-image.png', 'sesa@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '8', '20', '', 'Kualitas air tanah berkapur', 'asano', 'abepura', 0, '2021-05-27 05:37:34', 1, 0),
('1622093804', 'Ibu Suryani', 'default-user.png', 'suryani@gmail.com', '$2y$10$sYok02WTvDANaSvl8wuMs.DFk23Z0Q89eJTB.B60NZ7iKbSHpxczC', '081344456080', 'jl.hamadi lembah', 'Rumah Kos Ibu Suryani', 'default-image.png', 'suryani@gmail.com', '081344456080', 'jl.hamadi lembah', 2, '', '', '', '', '2 kamar', '', '', 'kualitas air bersih dan berkapur', '', 'jprselatan', 0, '2021-05-27 05:39:46', 0, 0),
('1622093814', 'Bpk.Simon.K', 'default-user.png', 'Simon@gmail.com', '$2y$10$jNsVsezTpelYgx6.rOs85uIYMgRlPRzZyvPv611j8gQkAVt6/VLy2', '081242656023', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Simon@gmail.com', '081242656023', 'Lembah Hamadi', 2, '', '', '', '', '3', '', '', 'Jernih ', '', 'jprselatan', 0, '2021-05-27 05:38:57', 0, 0),
('1622093825', 'Tri Wahyuni', 'default-user.png', 'pmarhamin@gmail.com', '$2y$10$q0HW0GLxu0.3esbmobhfIO9BIN6Zison5TjpmPmFomQyu3/d6.sHm', '082197523860', 'Jl. SPG Taruna Bhakti', 'Pencucian Mobil Ar Hamin dan K', 'default-image.png', 'pmarhamin@gmail.com', '082197523860', 'Jl. SPG Taruna Bhakti', 4, '114', '', 'Ada', 'Ada', '', '', '', '', 'Yabansai', 'heram', 0, '2021-05-27 05:44:02', 1, 0),
('1622093860', 'Hj. Bana Tara', 'default-user.png', 'hjbana@gmail.com', '$2y$10$tAirBajY8N6E8OXeheE7qOQbM6CGQgbnvCpNyfI4wPO.cVIoc8Bu.', '082238140065', 'Jl. Arso Yotefa', 'Rumah Kos Hj. Bana Tara', 'default-image.png', 'hjbana@gmail.com', '082238140065', 'Jl. Arso Yotefa', 2, '', '', '', '', '9', '12', '', 'Kualitas air tanah berkapur', 'whymhorock', 'abepura', 0, '2021-05-27 05:41:44', 1, 0),
('1622093882', 'Anwar', 'default-user.png', 'Anwar@gmail.com', '$2y$10$CY3fdsbtFPao0BvdfKdIMOZChC.0E1qvF7jGk4hsoRUXIBzBtTG4i', '085254073553', 'Entrop', 'Rumah Kos Pak Anwar', 'default-image.png', 'Anwar@gmail.com', '085254073553', 'Entrop', 2, '', '', '', '', '', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:40:39', 0, 0),
('1622093954', 'Bpk.Boski', 'default-user.png', 'Boski@gmail.com', '$2y$10$q/LIx54anTPsG8VSnwB1cOpEdGvJ4s8nVqTgqoMi67FUCNthDBhCS', '081344328844', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Boski@gmail.com', '081344328844', 'Lembah Hamadi', 2, '', '', '', '', '8', '', '', 'Jernih', '', 'jprselatan', 0, '2021-05-27 05:42:45', 0, 0),
('1622094051', 'Abdul Rahman', 'default-user.png', 'AbdulRahman@gmail.com', '$2y$10$9CMBr.dxsL9nLyxHkE4/vez7W2XlbW4drrU7BWI/ZWmxWcyOCc0Ji', '082199849539', 'Entrop', 'Rumah Kos Pak Abdul', 'default-image.png', 'AbdulRahman@gmail.com', 'AbdulRahman@gmail.co', 'Entrop', 2, '', '', '', '', '', '', '', 'kualitas air sumur Jernih, berkapur', '', 'jprselatan', 0, '2021-05-27 05:44:40', 0, 0),
('1622094131', 'Tanpa Nama Jl Nuri Awiyo (23)', 'default-user.png', 'tanpa23@gmail.com', '$2y$10$xX7e43N3Asa6IisJC5nK8eC3IntMyPaH7eyBR60p9/oJdQlyT/w7u', '', 'Jl. Nuri', 'Rumah Kos Tnp Nama Jl. Nuri', 'default-image.png', 'tanpa23@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '10', '20', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 05:45:55', 1, 0),
('1622094182', 'Ibu Sodaria', 'default-user.png', 'sodaria@gmail.com', '$2y$10$IqE7vzt6Cmwgh1zWaDYi5..ZvwBuyEBwGrHj8XkpJHOcx/Xn6TmRi', '082197503548', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'sodaria@gmail.com', '082197503548', 'Lembah Hamdi', 2, '', '', '', '', '3', '', '', 'Jernih', '', 'jprselatan', 0, '2021-05-27 05:49:25', 0, 0),
('1622094263', 'Harry Pirono', 'default-user.png', 'sagaabe@gmail.com', '$2y$10$6gi1stSZtECqXGx3C7FrkO3I/wMOCOAukKo0Tfk7CtV8uS.4DL8gy', '', 'Jl. Raya Abepura', 'Saga Abepura', 'default-image.png', 'sagaabe@gmail.com', '', 'Jl. Raya Abepura', 4, '9.300 m2', '3.918 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 05:47:24', 1, 0),
('1622094284', 'Bapak Harun', 'default-user.png', 'Harun@gmail.com', '$2y$10$6k.U2zhIw/yNxvCdLepRzeWAMcwGA.cJ0z8j3q9ogbpu.T6ISv0gC', '081247087280', 'Entrop', 'Rumah Kos  Pak Harun', 'default-image.png', 'Harun@gmail.com', '081247087280', 'Entrop', 2, '', '', '', '', '6', '', '', '', '', 'jprselatan', 0, '2021-05-27 05:47:55', 0, 0),
('1622094454', 'Fransisca S. Lamba', 'default-user.png', 'tirtamandiri@gmail.com', '$2y$10$nxa4OZsBE6j0d2giBT/fZOMNKlCnyHKjoOt/P20gIgCdmHLr.Dgru', '0967 581551', 'Jl. SPG Taruan Bhakti', 'Pencucian Mobil Tirta Mandiri', 'default-image.png', 'tirtamandiri@gmail.com', '0967 581551', 'Jl. SPG Taruan Bhakti', 4, '304,6', '1.220 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'Yabansai', 'heram', 0, '2021-05-27 05:52:03', 1, 0),
('1622094524', 'Asisah', 'default-user.png', 'asisah@gmail.com', '$2y$10$QphuySq5jVsJs4jyxWmc2uX1197Xh7LkdXl7j9G9Edbsu4xYPDGGC', '', 'Jl. Nuri', 'Rumah Kos Ibu Asisah', 'default-image.png', 'asisah@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '10', '10', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 05:51:11', 1, 0),
('1622094527', 'Toraja/Padang Bulan', 'default-user.png', 'toraja@gmail.go.id', '$2y$10$4Lyo7x9bih8H2rn5ZLSlOeS1U9/xVNdwHbTcipi/25f2p2DGU4bFi', '082188439798', 'Padang Bulan Organda', 'Rumah Kos Toraja/Padang Bulan', 'default-image.png', 'toraja@gmail.go.id', '082188439798', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '6', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 05:53:35', 1, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_kelurahan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1622094575', 'Bpk Alimin', 'default-user.png', 'alimin@gmail.com', '$2y$10$6btg7TkhuGDuZfU8G3lv3.jOH.M92Sq1VEXYmKs8GlXmnmxIDQbOC', '081344840517', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'alimin@gmail.com', '081344840517', 'Lembah Hamadi', 2, '', '', '', '', '2', '', '', 'Keruh', '', 'jprselatan', 0, '2021-05-27 05:55:27', 0, 0),
('1622094626', 'No Name', 'default-user.png', 'NN@gmail.com', '$2y$10$36TMobY3aEbNPyt/l2VlRObsrQQA3PtUVTfwODit6t/oXbam9196W', '081240834106', 'Entrop', 'Rumah Kos NN', 'default-image.png', 'NN@gmail.com', '081240834106', 'Entrop', 2, '', '', '', '', '8', '', '', 'kualitas air sumur keruh dan berkapur', '', 'jprselatan', 0, '2021-05-27 06:05:16', 0, 0),
('1622094674', 'Hj. Minne', 'default-user.png', 'minne@gmail.com', '$2y$10$7FmSCzuwmcsJ3g2l0a9s2ugp6MAQxYrPwIFJNs1QZtwdV.UwJYuj6', '081248609114', 'Jl. Nuri', 'Rumah Kos Hj. Minne', 'default-image.png', 'minne@gmail.com', '081248609114', 'Jl. Nuri', 2, '', '', '', '', '12', '20', '', 'Kualitas air tanah berkapur dan berbau', 'awiyo', 'abepura', 0, '2021-05-27 05:53:46', 1, 0),
('1622094833', 'Ismail', 'default-user.png', 'ismail@gmail.com', '$2y$10$30OBO/sUWI0CYH9J7LnZXOufVuC70pYoReB/y8uVIrI492Hhb4WZy', '085254910475', 'Jl. Nuri', 'Rumah Kos Bapak Ismail', 'default-image.png', 'ismail@gmail.com', '085254910475', 'Jl. Nuri', 2, '', '', '', '', '11', '25', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 05:56:14', 1, 0),
('1622094948', 'Ibu Hj.Hadiya', 'default-user.png', 'Hj.Hadiya@gmail.com', '$2y$10$V/E5awn/gGnta.nH6hBOyuFHrb.YYa0SMm6wR7dfVGNL5hwYGllra', '081344257377', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Hj.Hadiya@gmail.com', '081344257377', 'Lembah Hamadi', 2, '', '', '', '', '2', '', '', 'Keruh dan Berkapur', '', 'jprselatan', 0, '2021-05-27 06:02:39', 0, 0),
('1622094978', 'Sudar', 'default-user.png', 'sudar@gmail.com', '$2y$10$9AZbLrVobBiB8q8wM4Qes.yjKOVdnayT5QURRCD2Gwv6Z9lzbaoSm', '081344300185', 'Jl. Nuri', 'Rumah Kos Sudar', 'default-image.png', 'sudar@gmail.com', '081344300185', 'Jl. Nuri', 2, '', '', '', '', '10', '20', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 05:58:13', 1, 0),
('1622095101', 'Hj. Suarni', 'default-user.png', 'hjsuarni@gmail.com', '$2y$10$NY6.95ZBQIdy1zJ95B7RluirshNYbH5pmS0wHT89BCuI/xO.BY1Fy', '081527687535', 'Jl. Nuri', 'Rumah Kos Hj. Suarni', 'default-image.png', 'hjsuarni@gmail.com', '081527687535', 'Jl. Nuri', 2, '', '', '', '', '12', '30', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 06:01:09', 1, 0),
('1622095273', 'Sunaryo', 'default-user.png', 'sunaryo@gmail.com', '$2y$10$x9yiruSu7jhHn7dTenj.yuAxfor3u2OMQ1ioVM/IALOPqwYqwQeRu', '081248216445', 'Jl. Nuri', 'Rumah Kos Sunaryo', 'default-image.png', 'sunaryo@gmail.com', '081248216445', 'Jl. Nuri', 2, '', '', '', '', '12', '25', '', '', 'awiyo', 'abepura', 0, '2021-05-27 06:02:56', 1, 0),
('1622095324', 'Henny R. Mantunoij, SP', 'default-user.png', 'sipjpr@gmail.com', '$2y$10$AN4fl6tkhf0vy9zQBdq7X.tKN1vZV/sUu5q36w6eC5enAje71Ksxi', '', 'Jl. Ahmad Yani No. 49-53 Kelurahan Gurabesi', 'Sagu Indah Plaza', 'default-image.png', 'sipjpr@gmail.com', '', 'Jl. Ahmad Yani No. 49-53 Kelurahan Gurabesi', 4, '', '960 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-05-27 06:28:31', 1, 0),
('1622096696', 'M. R. Kambu', 'default-user.png', 'mrkambu@gmail.com', '$2y$10$anzS.zcKRsuXIUbxpja7kOl6MOhZK9VRk0gmqhaFpvYXvavq6SG4e', '081331354166', 'Jl. Nuri', 'Rumah Kos M. R. Kambu', 'default-image.png', 'mrkambu@gmail.com', '081331354166', 'Jl. Nuri', 2, '', '', '', '', '18', '25', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 06:27:22', 1, 0),
('1622096847', 'Samsul', 'default-user.png', 'samsul@gmail.com', '$2y$10$U69/M8EDtfwPnlXaPB5rAOU5z1Um7pkI4F.NOXAzavrTLKy0n.uVa', '082199316387', 'Jl. Nuri', 'Rumah Kos Bapak Samsul', 'default-image.png', 'samsul@gmail.com', '082199316387', 'Jl. Nuri', 2, '', '', '', '', '49', '40', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 06:29:13', 1, 0),
('1622096916', 'Drs. M. Hasan Bay, MM', 'default-user.png', 'Hotelgamalama@gmail.com', '$2y$10$5CNHWIS4ggyEIdZR/Sf25uSxVzPV03J/gM741L5f.fblD01tHakyy', '0967 5888608', 'Jl. Gerilyawan No. 60 Kelurahan Yobe', 'Hotel Gamalama', '1622096916-usaha-logo-1646196251.jpg', 'Hotelgamalama@gmail.com', '0967 5888608', 'Jl. Gerilyawan No. 60 Kelurahan Yobe', 3, '669,60m2', '621 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'yobe', 'abepura', 0, '2021-05-27 06:32:00', 1, 0),
('1622096958', 'Lia', 'default-user.png', 'ibulia@gmail.com', '$2y$10$QVREsoxPn54GIkwWBGzP3.xQEswvsJURCpod8TnB8feDedNbj7eju', '', 'Jl. Nuri', 'Rumah Kos Ibu Lia', 'default-image.png', 'ibulia@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '10', '20', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 06:30:41', 1, 0),
('1622097044', 'Hj. Nani', 'default-user.png', 'hjnani@gmail.com', '$2y$10$pGSEdd2iXJIXghqTpGYR/eyeeBwR8jMz3HpZUF6R/779oFMBdMZ.u', '', 'Jl. Nuri', 'Rumah Kos Hj. Nani', 'default-image.png', 'hjnani@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '28', '40', '', 'Kualitas air tanah berkapur', 'awiyo', 'abepura', 0, '2021-05-27 06:32:19', 1, 0),
('1622097152', 'Soltip', 'default-user.png', 'soltip@gmail.com', '$2y$10$OR2PUjFPQKJBEahTr0CpUuHsmVO69IMKLtfLBY9FZuJhxV0fxpXNu', '', 'Jl. Garuda', 'Rumah Kos R4 Soltip', 'default-image.png', 'soltip@gmail.com', '', 'Jl. Garuda', 2, '', '', '', '', '23', '8', '', 'Kualitas air tanah berkapur', 'yobe', 'abepura', 0, '2021-05-27 06:35:42', 1, 0),
('1622097198', 'Ibu. Sofi', 'default-user.png', 'sofi@gmail.com', '$2y$10$WlQUuIcXteGrYbGdZPJyTeyaowKGDEf7xs2wlLvqHjkVn7IxTY9Qi', '082239033044', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'sofi@gmail.com', '082239033044', 'Lembah Hamadi', 2, '', '', '', '', '3', '', '', 'Keruh dan Berkapur', '', 'jprselatan', 0, '2021-05-27 06:33:36', 0, 0),
('1622097281', 'Iwan', 'default-user.png', 'iwan@gmail.com', '$2y$10$HoVzvcc1UwgNAisFqiuH8Ohq/F4MV64uztAlvNnEBiWcyi6FAWVlC', '', 'jl.belakang tc perkebunan', 'Rumah Kos Bpk. Iwan', 'default-image.png', 'iwan@gmail.com', '', 'Lembah Hamadi', 2, '', '', '', '', '', '', '', 'Jernih', '', 'jprselatan', 0, '2021-05-27 06:37:01', 0, 0),
('1622097351', 'Bapak Rumboirusi', 'default-user.png', 'rkbpkrumboirusi@gmail.com', '$2y$10$abdhxdDkIscOymyW6xnn..xRuLR7Vbnof9F88Vj2ZXYGXa8HPKQga', '082238972762', 'Jl. Garuda', 'Rumah Kos Bapak Rumboirusi', 'default-image.png', 'rkbpkrumboirusi@gmail.com', '', 'Jl. Garuda', 2, '', '', '', '', '16', '25', '', 'Kualitas air tanah berkapur', 'yobe', 'abepura', 0, '2021-05-27 06:37:32', 1, 0),
('1622098211', 'Wandi Salim, SE', 'default-user.png', 'horisonjayapura@gmail.com', '$2y$10$w9uhQxegmYzi0kuBJjemp.vQSHmWKQ1Gfurp9ESe2mT7Y.JgXVuxu', '', 'Jl. percetakan No. 94 Jayapura Papua', 'Hotel Horison Jayapura', 'default-image.png', 'horisonjayapura@gmail.com', '', 'Jl. percetakan No. 94 Jayapura Papua', 3, '500 m2', '571 m2', '', 'Ada', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-05-27 06:51:31', 1, 0),
('1622098297', 'Antonius Kiding', 'default-user.png', 'oph@gmail.com', '$2y$10$9DFjQbXIblhHbXN/xw4NiuFStIwHYs46NN5hpdBbE3UcZfjMmty0.', '', 'Jl. Raya Abepura Kelurahan Abepura', 'Orchid Pasific Hotel', 'default-image.png', 'oph@gmail.com', '', 'Jl. Raya Abepura Kelurahan Abepura', 3, '480 m2', '67 m2', '', 'Ada', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 06:53:34', 1, 0),
('1622098424', 'Soetedjo Pirono', 'default-user.png', 'cityhubhotel@gmail.com', '$2y$10$W9odBP3RgtvXWPvAGviFGuMjolHvVRESSL8fsP/uNM9qoYSWDz/C.', '', 'Jl. Baru Abepura Kota Jayapura', 'Hotel City Hub', 'default-image.png', 'cityhubhotel@gmail.com', '', 'Jl. Baru Abepura Kota Jayapura', 3, '2.145 m2', '2.992 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'wahno', 'abepura', 0, '2021-05-27 06:54:53', 1, 0),
('1622098496', 'Damaris, SH', 'default-user.png', 'grandtalentz@gmail.com', '$2y$10$T.KZSlJjuzFIkeKbKJDW1O9eQc8cIi1Oo/nElOtemJp6ZKJWh8YuW', '0967 584495', 'Jl. Komp Kotaraja Grand B-29 Kotaraja', 'Hotel Grand Talent', 'default-image.png', 'grandtalentz@gmail.com', '0967 5180090', 'Jl. Komp Kotaraja Grand B-29 Kotaraja', 3, '1.337,22 m', '496 m2', '', 'Ada', '', '', '', '', 'whymhorock', 'abepura', 0, '2021-05-27 06:57:59', 1, 0),
('1622098684', 'Jasmine', 'default-user.png', 'mettastar@gmail.com', '$2y$10$6EWIuvXFHgbNeDJpYGEFEu.oCjv0wTEFgUo2KI8m1vgngjjNQHbxC', '0967-585216', 'Jl. Raya Sentani No. 37 Waena', 'Hotel Metta Star', 'default-image.png', 'mettastar@gmail.com', '0967-585216', 'Jl. Raya Sentani No. 37 Waena', 3, '2.538 m2', '500 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'waena', 'heram', 0, '2021-05-27 07:00:06', 1, 0),
('1622098812', 'Anita Agustina, SH', 'default-user.png', 'galaxy@gmail.com', '$2y$10$sb02npUojSelHCIAArJgLu.h2X0bW6Sr9CX0r/EWHZm1E5eIQeBcG', '', 'Jl. Raya Abepura Sentani', 'Hotel Galaxy ', 'default-image.png', 'galaxy@gmail.com', '', 'Jl. Raya Abepura Sentani', 3, '250 m2', '210 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 07:01:41', 1, 0),
('1622098904', 'Yudas Pardose', 'default-user.png', 'yudas@gmail.com', '$2y$10$Z0VAP8hYydq1xglnW0vWKej6vMJNBmZ.TCI3OGeZlG74X.iIob/6G', '', 'Jl. Woroth Kotaraja Kelurahan Vim Distrik Abepura', 'Hotel Bionet', 'default-image.png', 'yudas@gmail.com', '', 'Jl. Woroth Kotaraja Kelurahan Vim Distrik Abepura', 3, '402,45 m2', '1.400 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 'abepura', 0, '2021-05-27 07:05:14', 0, 0),
('1622099118', 'Soethahja Brata', 'default-user.png', 'horisonktrj@gmail.com', '$2y$10$I4sBQ3DOFtrXoUP4XdQeUOZgId8GUOMAhTEDkIdyX75aFgSA4Zo4y', '', 'Jl. Raya Abe Kotaraja', 'Hotel Horison Kotaraja', 'default-image.png', 'horisonktrj@gmail.com', '', 'Jl. Raya Abe Kotaraja', 3, '10.489 m2', '229 m2', 'Ada', 'Ada', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-05-27 07:07:47', 1, 0),
('1622099271', 'Hendrik', 'default-user.png', 'meeto@gmail.com', '$2y$10$bMpPfmyHzesia.6OeiffqOchQ/VvtNj1jUZbcz2xB5WmE6BB0Z7zC', '08114884841', 'Jl. Tanjung Ria Dok IX Jayapura', 'Meet O', 'default-image.png', 'meeto@gmail.com', '', 'Jl. Tanjung Ria Dok IX Jayapura', 2, '81 m2', '69 m2', 'Tidak Ada', 'Ada', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-05-27 07:10:51', 1, 0),
('1622099456', 'Sugiharni A.MK', 'default-user.png', 'luminthu@gmail.com', '$2y$10$/18z4YPfoj0XJGWiErIMtehdK.1OpK/YAcMgkF5Da1FGLTbV9GHI.', '081247079717', 'Jl. Raya Sentani Gang. Belut Waena', 'Pabrik Tahu Luminthu', 'default-image.png', 'luminthu@gmail.com', '081247079717', 'Jl. Raya Sentani Gang. Belut Waena', 2, '12 m2', '', '', 'Ada', '', '', '', '', 'waena', 'heram', 0, '2021-05-27 07:20:32', 1, 0),
('1622100200', 'Tjoandy Phietoyo', 'default-user.png', 'tjoandy@gmail.com', '$2y$10$PPDrR/ESPp2EVJ/HTRagR.bSTTY4YZDCin5DR.peCyLjZekJMR3dO', '', 'Jl. Baru Tembus Melati', 'Abepura Trade centre', 'default-image.png', 'tjoandy@gmail.com', '', 'Jl. Baru Tembus Melati', 4, '', '', '', 'Ada', '', '', '', '', '', 'abepura', 0, '2021-05-27 07:27:31', 0, 0),
('1622100711', 'Irnawati Wonorenggo', 'default-user.png', 'Irnamwati@gmail.com', '$2y$10$qAj/NfQvt0C.YKQYpk.TL.CbbumzyBgVCX0VbEl4FJbU8GMtP5fNS', '', 'Jl. Belut Waena Kelurahanh Waena Distrik Heram', 'PT. Alfa Cahaya Lany (Hotel Cl', 'default-image.png', 'Irnamwati@gmail.com', '', 'Jl. Belut Waena Kelurahanh Waena Distrik Heram', 3, '288 m2', '', '', '', '', '', '', '', '', 'heram', 0, '2021-05-27 07:36:05', 0, 0),
('1622100970', 'Sudirwarto', 'default-user.png', 'sudirwarto@gmail.com', '$2y$10$wmKbka.x8S75DYAPL2Ogk.z2aXSfvQ6hSOEkGWGwHHAe3Szsl1LmS', '', 'Jl. Belut Waena Kelurahan Waena Distrik Heram', 'PT. Moana Cakra Abadi (Hotel M', 'default-image.png', '', '', 'Jl. Belut Waena Kelurahan Waena Distrik Heram', 3, '', '', '', '', '', '', '', '', '', 'heram', 0, '2021-05-27 07:37:49', 0, 0),
('1622101246', 'Drs. Jumadi', 'default-user.png', 'sumurpakjumadi@gmail.com', '$2y$10$NcCpik/ZqJdxaGIpArvN0encMtN1mWJ2LNafij9WuFAZJFAElLlEW', '', 'Jl. Buper No. 3 Waena Kelurahan Waena Kota Jayapura', 'CV. Pasindo Mitrarama Idaman ', 'default-image.png', 'sumurpakjumadi@gmail.com', '', 'Jl. Buper No. 3 Waena Kelurahan Waena Kota Jayapura', 4, '', '', '', '', '', '', '', '', 'hedam', 'heram', 0, '2021-05-27 07:43:31', 1, 0),
('1622102685', 'Herbert Lincoln', 'default-user.png', 'holayoutefa@gmail.com', '$2y$10$UWf/zklS/csNjxNgGui2N.ZDGSKUUKA7JzIy.kr33bXhPcj5hDprm', '', 'Jl. Raya Sentani Padang Bulan Kelurahan Hedam Distrik Heram', 'PT. Holamart Usaha Bersama (Ho', 'default-image.png', 'holayoutefa@gmail.com', '', 'Jl. Pasar Youtefa', 4, '100 m2', '', '', '', '', '', '', '', '', 'abepura', 0, '2021-05-27 08:11:53', 1, 0),
('1622103166', 'Kevin Setiawan', 'default-user.png', 'kevin@gmail.com', '$2y$10$exYhUvNTJzNXAKgkIB26auaLE9LFFo1iWV1WeGTdCw2gnwwaHIStW', '', 'Jl. Baru Kotaraja (sebelah Winner) Kelurahan Waimhorock Distrik Abepura', 'K2 Laundry', 'default-image.png', 'kevin@gmail.com', '', 'Jl. Baru Kotaraja (sebelah Winner) Kelurahan Waimhorock Distrik Abepura', 2, '50 m2', '', '', '', '', '', '', '', 'whymhorock', 'abepura', 0, '2021-05-27 08:15:25', 1, 0),
('1622103288', 'Anton', 'default-user.png', 'anton@gmail.com', '$2y$10$qckYEdR0/N0.r1ucAHZSIe0y6LLxPPAHiDMrH47.ebrYVs2K1JJ.O', '', 'jl.karang 3', 'Rumah Kos Anton Timung Melati ', 'default-image.png', 'anton@gmail.com', '', 'jl.karang 3', 2, '', '', '', '', '10 kamar', '32 orang', '', 'kualitas air bersih', '', 'abepura', 0, '2021-05-27 08:17:28', 1, 0),
('1622103466', 'Jean Paul Kabey', 'default-user.png', 'frontonebudget@gmail.com', '$2y$10$sKUg5EdXPYehjTjbiAZNw.810sT0lOZQKApu2haNxrwj4H1Z9HHdS', '', 'Jl. SPG Taruna Bhakti Waena', 'Front One Budget', 'default-image.png', 'frontonebudget@gmail.com', '', 'Jl. SPG Taruna Bhakti Waena', 3, '', '', '', '', '39', '', '', '', 'waena', 'heram', 0, '2021-05-27 08:19:20', 1, 0),
('1623296443', 'mesalin', 'default-user.png', 'alignemai@gmail.com', '$2y$10$LO9wx46Sp8sI57RK0RbPauYhClvyvuaate2mIEW5GTJTmhztrVtqu', '--', 'na', 'rumah kos mesalin', 'default-image.png', 'mesalin@gmail.com', '', 'na', 2, '', '', '', '', '', '', '', '', '', 'abepura', 0, '2021-06-10 03:41:33', 1, 0),
('1623302234', 'Hj. Ani Wijayanti', 'default-user.png', 'ani@gmail.com', '$2y$10$v5rX7s/aO.8ghRtXrPr.QuXLtAy1Cb9tBrt4sYGfwgfxOKWprAN.W', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Ani Wijayanti', 'default-image.png', 'ani@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '2', '', '', '', 'abepura', 0, '2021-06-10 05:24:06', 0, 0),
('1623302654', 'Alfiansyah', 'default-user.png', 'alfiansyah@gmail.com', '$2y$10$b8O2UJVOvH.orPH8UdFgAO0ICjKBjB/sZCzCFDwz9n/TLc02NjiDe', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Alfiansyah', 'default-image.png', 'alfiansyah@gmail.com', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 'abepura', 0, '2021-06-10 05:27:10', 0, 0),
('1623302953', 'Abdul Hatta', 'default-user.png', 'abdul@gmail.com', '$2y$10$1bTL8oJqCL/AW8kI57OZWuZ9ahWzSqCYTyUT1LMf7TXxT2oZEsXru', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Abdul Hatta', 'default-image.png', 'abdul@gmail.com', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '1', '', '', '', 'abepura', 0, '2021-06-10 05:32:10', 0, 0),
('1623384439', 'Cafe Ayumi Abepura', 'default-user.png', 'ayumi@gmail.com', '$2y$10$kolMQJMY4Ix3EfFWEn6nlehtnH2sGqeHmYsdo0twS6S4cOYP5LsJK', '--', 'Jl. Raya Abepura Kotaraja ', 'Cafe Ayumi Abepura', 'default-image.png', 'ayumi@gmail.com', '--', 'Jl. Raya Abepura Kotaraja ', 4, '', '', '', '', '', '', '', '', '', 'abepura', 0, '2021-06-11 04:11:24', 1, 0),
('1623627813', 'Sapri', 'default-user.png', 'sapri@gmail.com', '$2y$10$0alpCvXYzq4Vzm2ctyeNQeDH2UL2jvB3BoJMW3YZwwXpAEURJqXvy', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sapri', 'default-image.png', 'sapri@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '2', '', '', '', 'abepura', 0, '2021-06-13 23:46:33', 0, 0),
('1623627997', 'Yusri Jaya', 'default-user.png', 'yusrijaya@gmail.com', '$2y$10$dJ2Onwa8i/6PkOPjRtcfH.//xDhlTJ4es8GewV6pN/Y6eXkujseSi', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Yusri Jaya', 'default-image.png', 'yusrijaya@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '2', '', '', '', 'abepura', 0, '2021-06-13 23:48:30', 0, 0),
('1623628156', 'Bahar', 'default-user.png', 'baharveteran@gmail.com', '$2y$10$wwzTdef1D7heBxzgVCzRluSHSeTaW2ieBJ2LIRP1Py2o7RWL9kI3u', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Bahar Jl. Veteran', 'default-image.png', 'baharveteran@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '17', '', '', '', '', 0, '2021-06-13 23:51:31', 0, 1),
('1623628315', 'Hengki Supardi', 'default-user.png', 'hengki@gmail.com', '$2y$10$XqsE/Y0aPY00GAtS.O30NO9hl1Cr6iwiVM/yC1us6MDwgk651b4.S', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hengki Supardi', 'default-image.png', 'hengki@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '14', '', '', '', 'abepura', 0, '2021-06-13 23:53:22', 0, 0),
('1623628411', 'Hardiman', 'default-user.png', 'hardiman@gmail.com', '$2y$10$N2xFlsXDv.45.1SZ.9FYC.12BsBpNfwjB4jI63TcGuYCObcctP.U6', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hardiman', 'default-image.png', 'hardiman@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '20', '', '', 'yobe', 'abepura', 0, '2021-06-13 23:54:45', 1, 0),
('1623628491', 'Suparti', 'default-user.png', 'suparti@gmail.com', '$2y$10$acqcRKaPJpRlsAGAWKWgmOvO7p5G04yefl3qTWtsOoTN10QMgeoFi', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suparti', 'default-image.png', 'suparti@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '9', '', '', '', 'abepura', 0, '2021-06-13 23:56:16', 0, 0),
('1623628580', 'H. Hoser', 'default-user.png', 'hoser@gmail.com', '$2y$10$YmPwycAb5Il1qriHPZiYv.fjOBhtY.qDTl7pI/FbFmlMW/IpRp6hm', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Hoser', 'default-image.png', 'hoser@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '7', '', '', 'yobe', 'abepura', 0, '2021-06-13 23:58:23', 1, 0),
('1623628721', 'Joko', 'default-user.png', 'jokoveteran@gmail.com', '$2y$10$AzVxATKi22F/aC/xSKjVz.K0b7UQQM0eiJ0vYPY3eaZlwoojZ5Ixe', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Joko Jl. Veteran', 'default-image.png', 'jokoveteran@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '6', '', '', '', 'abepura', 0, '2021-06-14 00:00:40', 0, 0),
('1623628902', 'Ona Husni', 'default-user.png', 'ona@gmail.com', '$2y$10$mdimHXfylMYbYot12OIxQOAnuk/CrdUqMEI5LbeD0y1j3w15l598m', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ona Husni', 'default-image.png', 'ona@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '14', '', '', '', 'abepura', 0, '2021-06-14 00:03:06', 0, 0),
('1623629020', 'H. Madu Malu', 'default-user.png', 'madumalu@gmail.com', '$2y$10$l3xNkbdj3k8D17TzGSOYcu1Tv2FH2KLikFRZImfyIce3lMV9k7UOC', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Madu Malu', 'default-image.png', 'madumalu@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '5', '', '', '', 'abepura', 0, '2021-06-14 00:05:21', 0, 0),
('1623629150', 'H. Darwis', 'default-user.png', 'hdarwis@gmail.com', '$2y$10$e6aecx8gq63u3zUxyEhW.eHLxjSTI42AsWqmmEIFSTI6.kAVTG.bS', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Darwis', 'default-image.png', 'hdarwis@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '14', '', '', '', 'abepura', 0, '2021-06-14 00:07:04', 0, 0),
('1623629254', 'Marthen Upa', 'default-user.png', 'marthenupa@gmail.com', '$2y$10$w7n8GoVs/d3tC2IDAdba3.4KNWNme1Srw1QwEoAswpQ62ObS2zhTO', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Marthen Upa', 'default-image.png', 'marthenupa@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '11', '', '', '', 'abepura', 0, '2021-06-14 00:08:57', 0, 0),
('1623629359', 'Sunarti', 'default-user.png', 'sunarti@gmail.com', '$2y$10$4SqZK3tdAORzwh0XE1qPTu99h7F/.ljGkQO2QN4kEYY1WQLzJpmV6', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sunarti', 'default-image.png', 'sunarti@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '4', '', '', '', 'abepura', 0, '2021-06-14 00:11:09', 0, 0),
('1623629473', 'Sukongsi', 'default-user.png', 'sukongsi@gmail.com', '$2y$10$2yV7DAfmakv6Gp4.XuJ5MOk1qXWW0YMX7PH6ke6Ej8c4XFy7ThvjW', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sukongsi', 'default-image.png', 'sukongsi@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '16', '', '', '', 'abepura', 0, '2021-06-14 00:12:35', 0, 0),
('1623631727', 'Aco', 'default-user.png', 'aco@gmail.com', '$2y$10$fqmUMpXQIRbd2.9zMHxWIO4zYyCay/ZbneEeFWl6IovyXv8cH27ES', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Aco', 'default-image.png', 'aco@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '11', '', '', '', 'abepura', 0, '2021-06-14 00:51:24', 0, 0),
('1623631916', 'H. Asrori', 'default-user.png', 'hasrori@gmail.com', '$2y$10$GYs1ik4F/lUKWhGvUo61H.AohL12.ldVis8cwy3M7TPcSO3Eme9LC', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Asrori', 'default-image.png', 'hasrori@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '11', '15', '', '', 'yobe', 'abepura', 0, '2021-06-14 00:53:19', 1, 0),
('1623632014', 'H. Munir', 'default-user.png', 'hmunir@gmail.com', '$2y$10$sjo0sMwJR/JOCsIXfH5i3u0WUFC9chLUX78nIaZQ.p3e8IIS2gTWe', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Munir', 'default-image.png', 'hmunir@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '28', '', '', '', 'abepura', 0, '2021-06-14 00:55:34', 0, 0),
('1623632156', 'H. Rani', 'default-user.png', 'hrani@gmail.com', '$2y$10$2Tp/NscnCsE4G0Da42PzZuFathG.XTCX/BZetjxw57tgkfSv/UWCS', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Rani', 'default-image.png', 'hrani@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '13', '', '', '', 'abepura', 0, '2021-06-14 00:58:12', 0, 0),
('1623632304', 'H. Tarring', 'default-user.png', 'htarring@gmail.com', '$2y$10$ixmm30OjR.VExEU.BQGe6O14SYwkNEVVlqabKq4cU0SWiNh1EWS8a', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Tarring', 'default-image.png', 'htarring@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '17', '', '', '', 'abepura', 0, '2021-06-14 00:59:26', 0, 0),
('1623632379', 'Hj. Marhani', 'default-user.png', 'hjmarhani@gmail.com', '$2y$10$x6ErsEQIX2bjSRNcintmnuaHXAk.ervlgs/ZXGoLHRY4oWncqu3ee', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Marhani', 'default-image.png', 'hjmarhani@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '22', '36', '', '', 'yobe', 'abepura', 0, '2021-06-14 01:02:53', 1, 0),
('1623632592', 'Ricat', 'default-user.png', 'ricat@gmail.com', '$2y$10$pLVQ9UdEAeGGY12D.NAj4OwK5K3Yf5ku9XT7QqpsjufPGAyGMJXCS', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ricat', 'default-image.png', 'ricat@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '3', '', '', '', 'abepura', 0, '2021-06-14 01:04:31', 0, 0),
('1623632691', 'H. Adam', 'default-user.png', 'hadam@gmail.com', '$2y$10$8DEdH45kK/K9VhCH8lMSAOI200ZfrqZP8VXHMYabI872JC2rsO31.', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Adam', 'default-image.png', 'hadam@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '9', '13', '', '', '', 'abepura', 0, '2021-06-14 01:06:05', 0, 0),
('1623632778', 'H. Ruhum', 'default-user.png', 'hruhum@gmail.com', '$2y$10$vYTn.5ToJwWE4a0pRJGCk.E6NSm8OGzHpeMb5ZatKUAyNoXU7wPNu', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Ruhum', 'default-image.png', 'hruhum@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '3', '', '', '', 'abepura', 0, '2021-06-14 01:07:28', 0, 0),
('1623632888', 'Herman Saleh', 'default-user.png', 'hermansaleh@gmail.com', '$2y$10$ONtAnV4DXD07rTsTU79DUuFRAOKqw0pEZlRlITozXPSet/YB8h6FK', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Herman Saleh', 'default-image.png', 'hermansaleh@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '23', '', '', 'yobe', 'abepura', 0, '2021-06-14 01:09:26', 1, 0),
('1623632979', 'Neni Astuti', 'default-user.png', 'neniastuti@gmail.com', '$2y$10$HxLAiE4bI..UyNQe4T3AuOr3CnAGBQmp1Eoa1VnslTwYRVZAkB78K', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Neni Astuti', 'default-image.png', 'neniastuti@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '9', '16', '', '', '', 'abepura', 0, '2021-06-14 01:12:42', 0, 0),
('1623633194', 'H. Sila', 'default-user.png', 'hsila@gmail.com', '$2y$10$UNY0ZnAWnvDTiSOysCTKE.eQCMtRmo9aPEMu309edHkEE3mY2hp02', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Sila', 'default-image.png', 'hsila@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '11', '33', '', '', 'yobe', 'abepura', 0, '2021-06-14 01:16:27', 1, 0),
('1623633398', 'Arman', 'default-user.png', 'arman@gmail.com', '$2y$10$PJavCOT/gPBw9HzSsZuHe.NrCHJ6X8VffXPEO.0/ricrqkpt0TVeC', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Arman', 'default-image.png', 'arman@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '4', '', '', '', 'abepura', 0, '2021-06-14 01:18:03', 0, 0),
('1623633504', 'H. Kanang', 'default-user.png', 'hkanang@gmail.com', '$2y$10$PFF/KxZ4KYDWixP1KFlGi.3Vcuq.9fi6.SUoY5AztOtBMn8PJXdCO', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Kanang', 'default-image.png', 'hkanang@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '32', '', '', 'yobe', 'abepura', 0, '2021-06-14 01:19:50', 1, 0),
('1623633632', 'H. Abdul Halik', 'default-user.png', 'abdulhalik@gmail.com', '$2y$10$VYNLuSGp.onWCNo7jydjL.8Nkit.ylvZfHEgzG33mU67SiblMkVwO', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Abdul Halik', 'default-image.png', 'abdulhalik@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 'abepura', 0, '2021-06-14 01:23:11', 0, 0),
('1623633992', 'Ilham', 'default-user.png', 'ilham@gmail.com', '$2y$10$HHY2xVvc0uBvlFHLyzOFE.7RV9VJ55zLHlCAubU0LN.T5CW0J2GtS', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ilham', 'default-image.png', 'ilham@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 'abepura', 0, '2021-06-14 01:27:50', 0, 0),
('1623634088', 'H. Tiro', 'default-user.png', 'htiro@gmail.com', '$2y$10$EV1sfNR/wOkjPyyv/m9pk.e/z4oKB2o/SoJA64cqghdbyoNDm.dUe', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. tiro', 'default-image.png', 'htiro@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '26', '', '', '', 'abepura', 0, '2021-06-14 01:29:17', 0, 0),
('1623634171', 'H. Rannu', 'default-user.png', 'hrannu@gmail.com', '$2y$10$0Ynfpp5tnd1LGh5dVkJQOOb5HRPjLKpdjJOYBuBzZGzIlwi1Pz.8K', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Rannu', 'default-image.png', 'hrannu@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '14', '', '', '', 'abepura', 0, '2021-06-14 01:31:21', 0, 0),
('1623634308', 'Aminah', 'default-user.png', 'aminah@gmail.com', '$2y$10$h17L407LNwegAPu5CXWOfedxu.tGr6PFBT8NSbbrvah/ugMny3Xq.', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Aminah', 'default-image.png', 'aminah@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '7', '', '', '', 'abepura', 0, '2021-06-14 01:33:14', 0, 0),
('1623634405', 'H. Sukku', 'default-user.png', 'hsukku@gmail.com', '$2y$10$K5oZVMsrLE4DzVW69DX9N.dQnb8mO6QDi2nikDGH3G4bamr9BvZZ6', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Sukku', 'default-image.png', 'hsukku@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '12', '', '', '', 'abepura', 0, '2021-06-14 01:34:31', 0, 0),
('1623634486', 'Hj. Sandra', 'default-user.png', 'hjsandra@gmail.com', '$2y$10$mSy5mlVsDn./LnftKo9j1.SpvZdoyenMJOe7uW8AyoMJ4LKAPzNbq', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Sandra', 'default-image.png', 'hjsandra@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '35', '', '', 'yobe', 'abepura', 0, '2021-06-14 01:37:02', 1, 0),
('1623634637', 'H. Abdul Kadir', 'default-user.png', 'abdulkadir@gmail.com', '$2y$10$T3WcIXSCf3P606jg6TNrNulQjkjKGCZqq9oWRbfGqYPL9IUszcVl6', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H Abdul Kadir', 'default-image.png', 'abdulkadir@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '26', '', '', '', 'abepura', 0, '2021-06-14 01:41:12', 0, 0),
('1623634886', 'Alimudin', 'default-user.png', 'alimudin@gmail.com', '$2y$10$8l3GuALDbVP7mun2yT9SqeXG8nE7qFWamRZhptlhwGSiVepK5cuBS', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Alimudin', 'default-image.png', 'alimudin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '11', '43', '', '', 'yobe', 'abepura', 0, '2021-06-14 01:42:47', 1, 0),
('1623634977', 'Basri', 'default-user.png', 'basri@gmail.com', '$2y$10$XUCSMoK8q6KrCLc90U4ShuK.m8oIiiYTvWAbZTpF0NOGIx5P8A7Fy', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Basri', 'default-image.png', 'basri@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '17', '', '', '', 'abepura', 0, '2021-06-14 01:44:01', 0, 0),
('1623635157', 'Ibu Stevi Cendana', 'default-user.png', 'greendinamika@gmail.com', '$2y$10$wqb5lZGVQt5oa5QFd5yb..vYmP2d8vTX45MzcdM/12BXS57kANwJy', '082199712500', 'Jl. Gerilyawan No. 111 Abepura', 'PT Green Dinamika (D\'Green)', 'default-image.png', 'greendinamika@gmail.com', '082199712500', 'Jl. Gerilyawan No. 111 Abepura', 3, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 01:53:44', 1, 0),
('1623635888', 'M. Jufri', 'default-user.png', 'mjufri@gmail.com', '$2y$10$.ls9lKnunLUkiw1UodWRCOSeEbIIIUXBdRoIRQj1bNHCAZ.24z.ve', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos M. Jufri', 'default-image.png', 'mjufri@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '13', '', '', '', 'abepura', 0, '2021-06-14 02:01:59', 0, 0),
('1623636132', 'Jaharuddin', 'default-user.png', 'jaharuddin@gmail.com', '$2y$10$AtL36XLtMX99NMKx24W2dO0WGFgf9Ff.Amvbzj43.FebEUagiP8FW', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Jaharuddin', 'default-image.png', 'jaharuddin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:03:56', 0, 0),
('1623636264', 'Jamaluddin', 'default-user.png', 'jamaluddin@gmail.com', '$2y$10$cDGj9rY6Jo3oo86TJ2l4Cu01XBP6g1s35.DPOnEOritZpBbmrtKbK', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Jamaluddin', 'default-image.png', 'jamaluddin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '6', '', '', '', 'abepura', 0, '2021-06-14 02:09:52', 0, 0),
('1623636606', 'H. Amir', 'default-user.png', 'hamir@gmail.com', '$2y$10$vDCdXD5bhW/Jm7.Lj3gaAeZnMzlqBIOQSqdK.yf/f0kuwR7qf2XC2', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Amir', 'default-image.png', 'hamir@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '5', '', '', '', 'abepura', 0, '2021-06-14 02:10:58', 0, 0),
('1623636672', 'Joko', 'default-user.png', 'jokowaynan@gmail.com', '$2y$10$TYhfpCquTixJl9tv5SMwTuieiGqPNRJUFNqdsmSXEW7tsS0vU1zS6', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Joko Jl. Waynan', 'default-image.png', 'jokowaynan@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '10', '', '', '', 'abepura', 0, '2021-06-14 02:12:51', 0, 0),
('1623637028', 'Hj. Rani', 'default-user.png', 'hjrani@gmail.com', '$2y$10$wbQRVNBnFQCTTYKs15dTGO3GioKOwef4p95Bj6fMUKxT5pfvSqymO', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Rani', 'default-image.png', 'hjrani@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '13', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:18:22', 0, 0),
('1623637118', 'Rosmianti', 'default-user.png', 'rosmianti@gmail.com', '$2y$10$Stm9cmMnplTdf8WGmnH1Iul/eZ1YT/UnRqBIFXlKQipg.hjvRgwvS', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Rosmianti', 'default-image.png', 'rosmianti@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '4', '', '', '', 'abepura', 0, '2021-06-14 02:19:58', 0, 0),
('1623637214', 'H. Soleman', 'default-user.png', 'hsoleman@gmail.com', '$2y$10$fF2Ua4OdwOwm3Y0D9nECAeYOsmIEtG9E7R0hoMaTa0iMCFCjFAGVi', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Soleman', 'default-image.png', 'hsoleman@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '6', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:21:32', 0, 0),
('1623637307', 'Abidin', 'default-user.png', 'abidin@gmail.com', '$2y$10$eewr1019JSAfUVrCC/Z1rOFihOzPaQT6CbKMB7e90FgNiAqPvWcTG', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Abidin', 'default-image.png', 'abidin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '4', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:23:34', 0, 0),
('1623637676', 'H. Latief', 'default-user.png', 'hlatief@gmail.com', '$2y$10$WmdH4M.KLasikQqy6JtOkOP2VYOjeeAyf9Lc8RHToNz.AlRdJw6xO', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Latief', 'default-image.png', 'hlatief@gmail', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '18', '35', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:30:37', 1, 0),
('1623637851', 'Tahrim', 'default-user.png', 'tahrim@gmail.com', '$2y$10$OHOM97kdJZb2nBiFa4UO8eWashugDiYs/wCRUQqCqPKZHOPUxnyU2', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Tahrim', 'default-image.png', 'tahrim@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '22', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:32:39', 0, 0),
('1623637979', 'Moh. Munasik', 'default-user.png', 'mohmunasik@gmail.com', '$2y$10$HcnzO0PJ0zTh6LtNn3kPc.mAT8XO6o9yWRobV6z2dkYq7TcBbT0Nu', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Moh. Munasik', 'default-image.png', 'mohmunasik@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '8', '', '', '', 'abepura', 0, '2021-06-14 02:34:53', 0, 0),
('1623638112', 'H. M. Warsito', 'default-user.png', 'hmwarsito@gmail.com', '$2y$10$/B7IN0IG5bLCjTz2n18YFevs02bmTLtWBG/EkTpSrFyT8pkMyveBG', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. M. Warsito', 'default-image.png', 'hmwarsito@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '60', '61', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:38:19', 1, 0),
('1623638312', 'Suarsa', 'default-user.png', 'suarsa@gmail.com', '$2y$10$/8LtkZ37T3LDU2fuDMBHJOUsNHaS8D6ISDt9jyilyDK8wzfPMZZEu', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suarsa', 'default-image.png', 'suarsa@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '4', '', '', '', 'abepura', 0, '2021-06-14 02:40:14', 0, 0),
('1623638431', 'Alina Baleo', 'default-user.png', 'alinabaleo@gmail.com', '$2y$10$krwWqXnUnDvpjjSBFCQyTezhcxPiUEDz6Pxf6VsaiEQPpQJ.Mb1Ue', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Alina Baleo', 'default-image.png', 'alinabaleo@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '4', '', '', '', '', 0, '2021-06-14 02:42:22', 0, 1),
('1623638582', 'Fadlan S. Muiin', 'default-user.png', 'fadlan@gmail.com', '$2y$10$YYnwjbW1oAuC6zLriupbMeeksAGx5O7y5hLkLqpV/pTBneOS4ULIe', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Fadlan S. Muiin', 'default-image.png', 'fadlan@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '30', '', '', '', 'abepura', 0, '2021-06-14 02:47:49', 0, 0),
('1623639316', 'Hairul', 'default-user.png', 'hairul@gmail.com', '$2y$10$NdKHsKV7R/C6XAFs3TM5yu2hhL7FRM3esx6EJsmxXXi0wbK/T1nXO', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hairul', 'default-image.png', 'hairul@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '18', '28', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:57:51', 1, 0),
('1623639490', 'Iwan Setiawan', 'default-user.png', 'iwansetiawan@gmail.com', '$2y$10$gjPO1Aqg5peIM0YmenLKYeB0FDDKF8csz.wj7sarOwMnxJLQ6rWLC', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Iwan Setiawan', 'default-image.png', 'iwansetiawan@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '72', '71', '', '', 'yobe', 'abepura', 0, '2021-06-14 02:59:29', 1, 0),
('1623639612', 'Munasik', 'default-user.png', 'munasik@gmail.com', '$2y$10$TBIdHMSZVTMzBvpPsjtQ7OPxMweZZik3JQnZiJczn/2dzJoqphXmO', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Munasik', 'default-image.png', 'munasik@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '28', '43', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:01:22', 1, 0),
('1623639697', 'Suarno', 'default-user.png', 'suarno@gmail.com', '$2y$10$BxcPRSm20BfW8N5MymTzauW6oMd4uXbzt1NxZJjwzcFgv9AWRtSaS', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suarno', 'default-image.png', 'suarno@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '30', '64', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:02:45', 1, 0),
('1623639778', 'Armin Arsa', 'default-user.png', 'arminarsa@gmail.com', '$2y$10$T/1eiAq/jlF8Jtyr1xylj.9klOIMNewS.f0XksOUr8ND0jt7uq/YC', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Armin Arsa', 'default-image.png', 'arminarsa@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '17', '25', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:04:08', 1, 0),
('1623639871', 'Ir. Sukarno', 'default-user.png', 'irsukarno@gmail.com', '$2y$10$qlELXIKjmawW/mCe0AcscOMvVyF9Y0lrLrH/A/anDGrj/PKvFdhH.', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ir. Sukarno', 'default-image.png', 'irsukarno@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '15', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:06:03', 0, 0),
('1623639980', 'Edi Triwanto', 'default-user.png', 'editriwanto@gmail.com', '$2y$10$wsUBDuzPGn2xAyV6u2WE/OyIGm6GXNTCeJqUZKzqgjuZqZtF0uhPe', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Edi Triwanto', 'default-image.png', 'editriwanto@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '11', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:07:26', 0, 0),
('1623640056', 'Hendra Yadi', 'default-user.png', 'hendrayadi@gmail.com', '$2y$10$hgjHIXo/Ma8DQ28gFMDJbeiiSJ66HVLZNQTaUR73t8q61lbWCdO8S', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hendra Yadi', 'default-image.png', 'hendrayadi@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '27', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:09:41', 0, 0),
('1623640193', 'dr. Samuel', 'default-user.png', 'drsamuel@gmail.com', '$2y$10$vaac98zycRhDuk4lQW3nreAnJc5xYeY4JL0XJcsAldjsozbc9ohni', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos dr. Samuel', 'default-image.png', 'drsamuel@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '11', '', '', 'yobe', 'abepura', 0, '2021-06-14 03:11:10', 0, 0),
('1623640323', 'Rendi', 'default-user.png', 'rendi@gemail.com', '$2y$10$mNHLMqE2R6FxPtXKractiOhNfDXXey93Y.puzcrt3cGafnyQnO..W', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Rendi', 'default-image.png', 'rendi@gemail.com', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 03:19:34', 1, 0),
('1623640876', 'Yemima Bindosando', 'default-user.png', 'yemimabindosano@gemail.com', '$2y$10$4gQdlHwJ08X3d.24tJQWh.HxdVymZbD51vvzsYk1gUoz6pHx6ywf.', '', 'Jl.Gerilyawan RT.002/RW 001', 'Rumah Kos Ibu Yemima Bindosand', 'default-image.png', 'yemimabindosando@gemail.com', '', 'Jl.Gerilyawan RT 002/RW 001', 2, '', '', '', '', '13', '', '', 'Kualitas Air Bersih', 'yobe', 'abepura', 0, '2021-06-14 03:33:22', 1, 0),
('1623642110', 'Yunus', 'default-user.png', 'yunus@gmail.com', '$2y$10$Cf4fEzH4NIAwmv.FsZN1eOghtAfZsrKJNYXh3KIfvc/71I/PLT2Oe', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Yunus Jl. Kali Acai', 'default-image.png', 'yunus@gmail.com', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'AIR BERSIH', 'kotabaru', 'abepura', 0, '2021-06-14 03:48:42', 1, 0),
('1623642547', 'R.J. Hutapea', 'default-user.png', 'rjhutapea@gmail.com', '$2y$10$7dtom8oAXIXwfZFqZkCeje9JxVxiTOW32NsBNtNtzFB5QHtzOvqc2', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Sewa Kami Sejahtera', 'default-image.png', 'rjhutapea@gmail.com', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas Air Bersih', 'kotabaru', 'abepura', 0, '2021-06-14 03:53:11', 1, 0),
('1623642819', 'Ibu Karolina Labok', 'default-user.png', 'labok@gmail.com', '$2y$10$H5FHxaVbJ5yDpou/xUthhe0xXRkXvBQePjjkP20l1RWduGSj2XHb6', '082182238792', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Labok', 'default-image.png', 'labok@gmail.com', '082182238792', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '20', '', '', 'Kualitas Air jernih', 'kotabaru', 'abepura', 0, '2021-06-14 03:57:40', 1, 0),
('1623643077', 'Udin', 'default-user.png', 'udin@gmail.com', '$2y$10$lFGYb/5J0XQE2jJerRTwD.hHeqYr/zgKlPCbALgYYBjEjLH.aDKgK', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Udin', 'default-image.png', 'udin@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas air bersih', '', 'abepura', 0, '2021-06-14 04:00:58', 1, 0),
('1623643274', 'Wa Ode Kambe', 'default-user.png', 'waodekambe@gmail.com', '$2y$10$2G06d55.SVpIeJTzAyIzq.WheD9uXqQWYz7WPdu.Z3e.VQEy12gDC', '082198206875', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Wa Ode Kambe', 'default-image.png', 'waodekambe@gmail.com', '082198206875', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '11', '', '', 'Kualitas air bersih', 'kotabaru', 'abepura', 0, '2021-06-14 04:05:20', 1, 0),
('1623643857', 'IBU WIJASIH', 'default-user.png', 'wijasih@gemail.com', '$2y$10$ro3PrwIQDZ5O1/UBwpb75.whoLqEiOWFkxIVpG26CcaGmIo24Pe1e', '', 'Belakang Toko Citra', 'Rumah Kos', 'default-image.png', '', '', 'Belakang Toko Citra', 2, '', '', '', '', '30', '', '', 'Kualitas Air Baik', '', '', 0, '2021-06-14 04:13:55', 0, 1),
('1623644539', 'Jumadi', 'default-user.png', 'jumadi@gmail.com', '$2y$10$3afnT3gyTrShOuH0LI3tQuVs/EpYtqDrLO/OF5ju2T2GXJGG/AdN2', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Jumadi', 'default-image.png', 'jumadi@gmail.com', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '16', '10', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 04:25:05', 1, 0),
('1623644951', 'Sunarmi', 'default-user.png', 'sunarmi@gmail.com', '$2y$10$iWMeEXel.xut1NEAktULrOah6eB5.iw8olTUZDpYZJhSXJaPr/sO6', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sunarmi', 'default-image.png', 'sunarmi@gmail.com', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '6', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 04:31:20', 1, 0),
('1623645125', 'Drs. Allo', 'default-user.png', 'drsallo@gmail.com', '$2y$10$pYT5SLeg4TrYnMkqIo4EuuID0u.Dl8rk.3J.FuT2UzpXY40niZK8G', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Drs. Allo', 'default-image.png', 'drsallo@gmail.com', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '13', '38', '', '', 'yobe', 'abepura', 0, '2021-06-14 04:35:50', 1, 0),
('1623645204', 'Betu Bahar', 'default-user.png', 'betubahar@gmail.com', '$2y$10$DtNZudmX1K2BHfffCkvuV.1WOxbY/697qHgRfVLvMaRJT5DuSnEfO', '082149843639', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Betu Bahar', 'default-image.png', 'betubahar@gmail.com', '082149843639', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '12', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 04:38:46', 1, 0),
('1623645385', 'Saidin', 'default-user.png', 'saidin@gmail.com', '$2y$10$QwpSEO1sFLwOHdCDs9.heuGbbmHneN.lwm5rs4PNwoLY6MA8pNU0y', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Saidin', 'default-image.png', 'saidin@gmail.com', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '3 x 10 m', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 04:44:12', 1, 0),
('1623645433', 'S. Ikbal Kiswandi', 'default-user.png', 'ikbalkiswandi@gmail.com', '$2y$10$1kpwRdoaP4cPu417TXTU7OVIoHi25ofjB2Ckow8xenWnFGqdCNKPW', '', 'Jl. Mawar Abepura, RT 02/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos S. Ikbal Kiswandi', 'default-image.png', 'ikbalkiswandi@gmail.com', '', 'Jl. Mawar Abepura, RT 02/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '15', '15', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 04:41:17', 1, 0),
('1623645579', 'Saidi', 'default-user.png', 'saidi@gmail.com', '$2y$10$LVRoPZ.cNFHlRbnFtj.souX0gx5nQ0Wf5Q7j/fM5N4E7n8c9OwMnC', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Saidi', 'default-image.png', 'saidi@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '28', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 04:42:23', 1, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_kelurahan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1623645793', 'Usman', 'default-user.png', 'usman@gmail.com', '$2y$10$RgYB0BP9rWi46EwwnX9zwOAZRxMFRJzAtnI7g./aDnyiVqasH2Y4m', '081344593886', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Usman', 'default-image.png', 'usman@gmail.com', '081344593886', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 04:45:43', 1, 0),
('1623645927', 'H. Madi', 'default-user.png', 'madi@gmail.com', '$2y$10$uqUb9y1pprsKXBp5rkYv.e3ARd3jrzYlbzXUVj6Frkx2gxqoMU24G', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Madi', 'default-image.png', 'madi@gmail.com', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x6 m', '', '', '15', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 04:48:54', 1, 0),
('1623645956', 'Gustaf Manua', 'default-user.png', 'gustafmanua@gmail.com', '$2y$10$K5NYWKOTuTDYOpBNMOsINuOD2No2aLxzq35VlZP2Z45s1E5IQNTji', '081212369321', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Gustaf Manua', 'default-image.png', 'gustafmanua@gmail.com', '081212369321', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '13', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 04:48:22', 1, 0),
('1623646149', 'Serly Dame', 'default-user.png', 'dame@gmail.com', '$2y$10$NesKfA73y9t8g/Fgb5zGdumEqSjfLLCqKjFYYwBsqiO/kLFHT2Hsm', '', 'RT 001 RW 001 Kelurahan Asano', 'Rumah Kos Serly Dame', 'default-image.png', 'dame@gmail.com', '', 'RT 001 RW 001 Kelurahan Asano', 2, '4x4m', '', '', '', '14', '', '', '', 'asano', 'abepura', 0, '2021-06-14 04:59:01', 1, 0),
('1623646234', 'Hj. Sariana', 'default-user.png', 'hjsariana@gmail.com', '$2y$10$95QDCiyjABAw3aaRd1ZkPeCPHBLdvVCOLUsUsf5swIchvApGV4iDu', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Sariana', 'default-image.png', 'hjsariana@gmail.com', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '30', '28', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 04:52:52', 1, 0),
('1623646423', 'Hj. Oda', 'default-user.png', 'hjoda@gmail.com', '$2y$10$jbHRhaKjHECxj5pX8D3Gf.40.HOABnlZFZ80fyRahncZVDH6tdQHq', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah  Kos Hj. Oda', 'default-image.png', 'hjoda@gmail', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '20', '20', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:01:15', 1, 0),
('1623646788', 'Jaya Kusuma', 'default-user.png', 'kusuma@gmail.com', '$2y$10$49SjtmGf3.8QZfYL8Z9SYuy/nlfh23LukwXY1gX6B4PHQimpk94WC', '', 'RT 002/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Jaya Kususma', 'default-image.png', 'kusuma@gmail.com', '', 'RT 002/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x10m', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:02:10', 1, 0),
('1623646858', 'Suryono', 'default-user.png', 'suryono@gmail.com', '$2y$10$xJmwqJOwD66JopOid5VBGe1urVsWazn2a/ec7Zp3ub18VOiSyQJ.W', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Suryono', 'default-image.png', 'suryono@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:04:59', 1, 0),
('1623646934', 'Hj. Rabia', 'default-user.png', 'hjrabia@gmail.com', '$2y$10$b7el4x8nyLHPzJ0kYvM1O.4beqmFEphan2VwoxGtekpuYR/tL8s02', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Rabia', 'default-image.png', 'hjrabia@gmail.com', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '26', '26', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:05:49', 1, 0),
('1623646988', 'Hj. Dewi', 'default-user.png', 'hjdewi@gmail.com', '$2y$10$JkZwLhoxH6ETkKUD9TPNLOArC9d8qNCX7tHtaHub2Qi/esUV5Sag.', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Hj. Dewi', 'default-image.png', 'hjdewi@gmail.com', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 2, '3,5x7m', '', '', '', '10', '', '', '', 'asano', 'abepura', 0, '2021-06-14 05:06:56', 1, 0),
('1623647119', 'Syahril', 'default-user.png', 'syahlir@gmail.com', '$2y$10$QqQn00frC/x/UynZve/yJOjhoCo7VcnID54o2srGrB77GjohyB6pq', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Syahril', 'default-image.png', 'syahril@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '24', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:10:34', 1, 0),
('1623647232', 'Karmel Fingkreuw', 'default-user.png', 'karmel@gmail.com', '$2y$10$8av8RjfCY5myp3ZINIuQJOZDJ1/gZsvrp9xfNbvT9IQxPaiDhhfNG', '', 'Jl. Pasar Lama Abepura, RT 03/ RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Karmel Fingkreuw', 'default-image.png', 'karmel@gmail.com', '', 'Jl. Pasar Lama Abepura, RT 03/ RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '53', '53', '', '', 'yobe', 'abepura', 0, '2021-06-14 05:12:30', 1, 0),
('1623647307', 'Suratman', 'default-user.png', 'suratman@gmail.com', '$2y$10$DbvafwWB0zJFLZchWcw/NOepWyfJ2bcy6V/ddMzi51ZtBffpuieW6', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Suratman', 'default-image.png', 'suratman@gmail.com', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x8m', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:14:05', 1, 0),
('1623647450', 'Petrus Loi', 'default-user.png', 'petrusloi@gmail.com', '$2y$10$H76PrdzME3wAVBDXgrOfAesH.738cms0j4abmGj7.ZQlJaTtpyY86', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Petrus Loi', 'default-image.png', 'petrusloi@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:13:49', 1, 0),
('1623647626', 'M. Daud', 'default-user.png', 'daud@gmail.com', '$2y$10$heUKP3h2uTz1EfDx57QI3e96fxBIllHaghfawdL55DXRUEiEN4SEO', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos M. Daud', 'default-image.png', 'daud@gmail.com', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '10', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:16:23', 1, 0),
('1623647645', 'Piter Kendek', 'default-user.png', 'piterkendek@gmail.com', '$2y$10$zy7r/bKKUar1ca6YhHdKRuJAEm9SiAeBbuDw0l3mzAnhhCYOFBIm.', '081344668001', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Piter Kendek', 'default-image.png', 'piterkendek@gmail.com', '081344668001', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:18:40', 1, 0),
('1623647652', 'La Ode Geo', 'default-user.png', 'laodegeo@gmail.com', '$2y$10$O5vEbW3.Zp50wDdfSj/EpeEhQIdEYjBKXR7066CdWuHHSiLaMbBLy', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos La Ode Geo', 'default-image.png', 'laodegeo@gmail.com', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x8m', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:15:44', 1, 0),
('1623647760', 'Muri', 'default-user.png', 'muri@gmail.com', '$2y$10$pAe0xiaSF7PVeaZAebYBPOF9ogwdrpMBRWiuvnnDaYBhWUDmcVYRO', '', 'RT 001/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Muri', 'default-image.png', 'muri@gmail.com', '', 'RT 001/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '4x6', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:20:09', 1, 0),
('1623647817', 'Hj. Murni', 'default-user.png', 'hjmurni@gmail.com', '$2y$10$JKsqjGglV9X0kIovrX91POXNh0jTj0LF4m89y2N2RwAnKDtJGJNl2', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Murni', 'default-image.png', 'hjmurni@gmail.com', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '27', '19', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:20:46', 1, 0),
('1623647959', 'Natalius Kidingallo', 'default-user.png', 'natalius@gmail.com', '$2y$10$msSctpYT8pY6K3tPKY./.eM4yMs1W3OndrjUStm7baKT5UuBiXVoq', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Natalius Kidingallo', 'default-image.png', 'natalius@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '25', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:22:12', 1, 0),
('1623648025', 'Hj. Martiah', 'default-user.png', 'hmartiah@gmail.com', '$2y$10$43Sg3s3f4H0Xdm6x/ReD0ePBIpuOK37pceu1KLDfQSGlaXg.ofwkG', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Hj. Martiah', 'default-image.png', 'hmartiah@gmail.com', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3x10', '', '', '12', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:27:43', 1, 0),
('1623648147', 'Hj. Dewi', 'default-user.png', 'hjdewi@gmail.com', '$2y$10$kjOPDUjFv98t9WSHzqNSnuKtRzFUTMFylOeHTSyrBaglowFzahNPa', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Dewi Jl. Timika', 'default-image.png', 'hjdewi@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '10', '', '', 'yobe', 'abepura', 0, '2021-06-14 05:30:54', 1, 0),
('1623648156', 'Hj. Hollil', 'default-user.png', 'hollil@gmail.com', '$2y$10$b0VyafSg0M/AdwVCkG0On.UW3pdCtnHq.IokxU6CdSyo/5eZg2KGe', '085796476103', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Hj. Hollil', 'default-image.png', 'hollil@gmail.com', '085796476103', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:25:40', 1, 0),
('1623648381', 'Kusnen', 'default-user.png', 'kusnen@gmail.com', '$2y$10$SEeobj/PNbGybX/4.LORNuCkfCM/1MyztbOnpQQyZMYnYij6wJdOy', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Kusnen', 'default-image.png', 'kusnen@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '22', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:28:49', 1, 0),
('1623648469', 'Hj. Siti Hasia', 'default-user.png', 'hasia@gmail.com', '$2y$10$CAwSA7sUMEKIUgTLA3x0JulAvflagcxcfrprNg/7tqqCLDkm9cT9.', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Hj. Siti Hasia', 'default-image.png', 'hasia@gmail.com', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3x8m', '', '', '38', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:34:29', 1, 0),
('1623648544', 'BPK PARIDING', 'default-user.png', 'pariding@gemail.com', '$2y$10$JzfdGSYSS8UIXIFAj5F1I.KSD0610YwD8SoAGAGJbv6REI6jNQOI6', '', 'Belakang Koramil Abepura', 'Rumah Kos', 'default-image.png', 'pariding@gemail.com', '', 'Belakang Koramil Abepura', 2, '', '', '', '', '20', '', '', 'Kualitas Air Baik', '', '', 0, '2021-06-14 05:31:53', 0, 1),
('1623648716', 'Suja', 'default-user.png', 'suja@gmail.com', '$2y$10$ZwHkftvu20.H2IS7hL5zKe54iwLVFM7qJhH940jj51wyqOvAfPrPu', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suja', 'default-image.png', 'suja@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '29', '29', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:33:42', 1, 0),
('1623648731', 'Barung', 'default-user.png', 'barung@gmail.com', '$2y$10$WJbPd9dYaVShn2E8Jy76MOY.26LY/lPBan4OYZgCbh4Ifr3zSTH/S', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Barung', 'default-image.png', 'barung@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '18', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:35:07', 1, 0),
('1623648848', 'Hj. Syamsuddin', 'default-user.png', 'syamsuddin@gmail.com', '$2y$10$0PIO2WmBODx..CtzCvQB/ufrVO6m.x9NBKAI3Pkk/7MdEYm/GzoYq', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Hj. Syamsuddin', 'default-image.png', 'syamsuddin@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '25', '25', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:36:51', 1, 0),
('1623648873', 'Abdul Rahman', 'default-user.png', 'abdulrahman@gmail.com', '$2y$10$WL3nZsZ1KEGelnaLMym4i.voWk6OQAbs5FhngEXunfLAaJaA6HaeO', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Abdul Rahman', 'default-image.png', 'abdulrahman@gmail.com', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3x10m', '', '', '12', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:36:51', 1, 0),
('1623648925', 'Frans Tanduk', 'default-user.png', 'franstanduk@gmail.com', '$2y$10$Ic2W/BxZO0u/OPeVD92xaudrEkB6li4DaBgupC2PpjNftUeVrzMYO', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Frans Tanduk', 'default-image.png', 'franstanduk@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '13', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:38:30', 1, 0),
('1623649032', 'Hj. Kalai', 'default-user.png', 'kalai@gmail.com', '$2y$10$kVIx7D70giYC65/zq9UzFueABaW.dFaUvTOfz1Ca543suRkYUBK8G', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Hj. Kalai', 'default-image.png', 'kalai@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '20', '16', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:39:21', 1, 0),
('1623649046', 'Imikhe P', 'default-user.png', 'imikhe@gmail.com', '$2y$10$dS56JAe2eXmyDTzF3KKW7uVbeL62Mpv52fSP7M0pSDzDY59BDYJOW', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Imikhe P', 'default-image.png', 'imikhe@gmail.com', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '2x6', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:39:17', 1, 0),
('1623649147', 'Agustinus Parinding', 'default-user.png', 'agustinuspariding@gmail.com', '$2y$10$nLDTRaZW.KBEf0aVloODY.OMxSxvuqfQ2VVcIIjAjeqKVyXBEuhB.', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Agustinus Parinding', 'default-image.png', 'agustinuspariding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '24', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:42:24', 1, 0),
('1623649191', 'Yamira', 'default-user.png', 'yamira@gmail.com', '$2y$10$DqM/c2PRvjmtMEVeTjAiienzMFnclMerRFoWKPWO2z6NvFkHoRq2e', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Yamira', 'default-image.png', 'yamira@gmail.com', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '11', '11', '', '', 'yobe', 'abepura', 0, '2021-06-14 05:43:13', 1, 0),
('1623649363', 'DATON GIBAN', 'default-user.png', 'daton@gemail.com', '$2y$10$GPrHJ8hi8ZVT3SqS/pyijerdNxPkF6RpucProTpeErnFyUE1JckWy', '', 'Belakang Koramil Abepura', 'Rumah Kos', 'default-image.png', 'daton@gemail.com', '', 'Belakang Koramil Abepura', 2, '', '', '', '', '21', '', '', 'Kualitas Air Baik', '', '', 0, '2021-06-14 05:45:03', 0, 1),
('1623649438', 'Hj. Hasbia', 'default-user.png', 'hasbia@gmail.com', '$2y$10$waC4NpWICPUreBIo5uts5uQlcG9LmwoZDpFgyElF3Yg19CTsLSNaC', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Hj Hasbia', 'default-image.png', 'hasbia@gmail.com', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '24', '22', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:45:52', 1, 0),
('1623649544', 'Fredi Parinding', 'default-user.png', 'fredipariding@gmail.com', '$2y$10$gUC6NhzxPV/nCMQBOPqoC.aa.g.c.YOQYsWv7ZBmbI7i15ozDU4lu', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Fredi Parinding', 'default-image.png', 'fredipariding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas Air Baik', 'kotabaru', 'abepura', 0, '2021-06-14 05:49:04', 1, 0),
('1623649587', 'Sahul', 'default-user.png', 'sahul@gmail.com', '$2y$10$C/zh6Fboty8AErCpfXIq5uTMEITQIUCwL4x8PdcnhH.MqHlrzaxXC', '', 'Jl. Merdey Abepura, RT 03/RW IV, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Sahul', 'default-image.png', 'sahul@gmail.com', '', 'Jl. Merdey Abepura, RT 03/RW IV, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '10', '10', '', '', 'kotabaru', 'abepura', 0, '2021-06-14 05:49:11', 1, 0),
('1623731722', 'Csino', 'default-user.png', 'csino@gmail.com', '$2y$10$a2NjFGte0B/jFytctDJ0UuXGdGcwVkSJaWUomzu.lzGpGhz35j6Y.', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Csino', 'default-image.png', 'csino@gmail.com', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '13', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 04:37:50', 1, 0),
('1623732794', 'Wijiasih', 'default-user.png', 'wijiasih@gmail.com', '$2y$10$6OYHOeALGTV6eTBktHwuE.QITEn.dG3xdT9Mb8Ih75m1lYZHt/3a6', '081247557386', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Wijiasih', 'default-image.png', 'wijiasih@gmail.com', '081247557386', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '30', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 04:56:41', 1, 0),
('1623734005', 'Parinding', 'default-user.png', 'parinding@gmail.com', '$2y$10$0FDjowrXJJsMEeQ5Hmtomutc5WRCZemaekKP7UwjN67GRLbpRjZ7a', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Parinding', 'default-image.png', 'parinding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '20', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:14:53', 1, 0),
('1623734493', 'Danton Giban', 'default-user.png', 'dantongiban@gmail.com', '$2y$10$gEibkwRKM80xoSflA1utL.toie.xObMR1HK/FR0g4nrwW.R.XPmVC', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Danton Giban', 'default-image.png', 'dantongiban@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '21', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:22:48', 1, 0),
('1623734670', 'Neding', 'default-user.png', 'neding@gmail.com', '$2y$10$5KKeUapt9yqpWUTyFWHgMOPCeiITP0avcZnCCUxm8f5pye3G3Ho7K', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Neding', 'default-image.png', 'neding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '17', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:26:15', 1, 0),
('1623734788', 'Ernes', 'default-user.png', 'ernes@gmail.com', '$2y$10$rAD7qabeMW8SdqAaw3wbG.qhtD5Ce4TVH9h7vnzrcLnxGO5l.vqWG', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Ernes', 'default-image.png', 'ernes@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '18', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:27:54', 1, 0),
('1623734898', 'M. Supriadi', 'default-user.png', 'msupriadi@gmail.com', '$2y$10$2HwTACq2cSELDBqpWXgDcOGg6v8Lk28sfpbSKaMN5tcBvW.rosWTK', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos M. Supriadi', 'default-image.png', 'msupriadi@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '15', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:29:39', 1, 0),
('1623734997', 'Samuel Saiya', 'default-user.png', 'samuelsaiya@gmail.com', '$2y$10$tfe2upTKdCIoXSFJnnFRxOyvJ4Rak1/LCCsg5om5tCCpSbwLhhCjm', '081344742226', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Samuel Saiya', 'default-image.png', 'samuelsaiya@gmail.com', '081344742226', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '16', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:31:46', 1, 0),
('1623735125', 'Jan Pasulu', 'default-user.png', 'janpasulu@gmail.com', '$2y$10$gzPevG7HJ2LvX9rjeYU9RuMmKDSXdTD3ESLpvx2rUnqZQm1AF2G/S', '081343463936', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Jan Pasulu', 'default-image.png', 'janpasulu@gmail.com', '081343463936', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:33:31', 1, 0),
('1623735232', 'Maryani Rumbiak', 'default-user.png', 'maryanirumbiak@gmail.com', '$2y$10$ihzsvZcACD506bRtpShgguG4sZ6ZQ2PfRqwRaFQA8wqohPmRYAvey', '082215532413', 'Jl. Kokas Abepura, RW 005, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Maryani Rumbiak', 'default-image.png', 'maryanirumbiak@gmail.com', '082215532413', 'Jl. Kokas Abepura, RW 005, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '11', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:35:54', 1, 0),
('1623735371', 'Semuel Jitmau', 'default-user.png', 'semueljitmau@gmail.com', '$2y$10$Z9.reFECmJP.8kI4yBFnkO5hlChTjeSc.CbExmIZT275vLkNwU5tO', '', 'Jl. Uncen Bawah, RW 005, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Semuel Jitmau', 'default-image.png', 'semueljitmau@gmail.com', '', 'Jl. Uncen Bawah, RW 005, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '11', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:38:04', 1, 0),
('1623735521', 'Rasyib Salasa', 'default-user.png', 'rasyibsalasa@gmail.com', '$2y$10$ORgGjX214NDH270Q2Oj1Kefe6E/6PvJwkjWU5laoB9x2kN3YYuFTe', '081344326266', 'Jl. Asei Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Rasyib Salasa', 'default-image.png', 'rasyibsalasa@gmail.com', '081344326266', 'Jl. Asei Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '34', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:41:17', 1, 0),
('1623735698', 'Surya', 'default-user.png', 'surya@gmail.com', '$2y$10$8e4jH2nfIqChrTbdZ9zVXeQ6523BsmzTGjaLavSe6vIo4LYePLCUu', '', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Surya', 'default-image.png', 'surya@gmail.com', '', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '15', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:43:08', 1, 0),
('1623735798', 'Daniel Rumaropen', 'default-user.png', 'danielrumaropen@gmail.com', '$2y$10$BtbGTW1njzPbFEeYTPePoe17N8ZUEQDEwsa5ACZXHtHdkaHPeie4a', '081343453491', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Daniel Rumaropen', 'default-image.png', 'danielrumaropen@gmail.com', '081343453491', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '12', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:45:12', 1, 0),
('1623735937', 'Yehuda Hamokwarong', 'default-user.png', 'yehudahamokwarong@gmail.com', '$2y$10$4BVc6fLKTHoEp.ueBRqM2.l8Tb0T3fhCgOD1kZph6horlvIEy//8.', '081221166792', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Yehuda Hamokwarong', 'default-image.png', 'yehudahamokwarong@gmail.com', '081221166792', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '22', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:49:28', 1, 0),
('1623736179', 'George Syors Irap', 'default-user.png', 'george@gmail.com', '$2y$10$t2iRKJiBfqlMTsaaVQYhEeHqKfgnYD/LmkZTozRDvqISUug9.1EZG', '082199121799', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos George Syors Irap', 'default-image.png', 'george@gmail.com', '082199121799', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '16', '', '', '', 'kotabaru', 'abepura', 0, '2021-06-15 05:51:24', 1, 0),
('1623803421', 'Indriyanti', 'default-user.png', 'indriyanti@gmail.com', '$2y$10$DrkNajbr64DXyJbqaQ3u7.SDw2riaA2aLdWkQ9RTU261AduQ56JPK', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 'Indriyanti', 'default-image.png', 'indriyanti@gmail.com', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3 x 8 m', 'Ada', '', '10', '', '', '', 'asano', 'abepura', 0, '2021-06-16 00:33:04', 1, 0),
('1623803696', 'M. Nurdin', 'default-user.png', 'mnurdin@gmail.com', '$2y$10$2JCalZQzLjIbZRBNuWkGxuSzOjUPz4ZZVAvgILLATRiPQZ5IjH6yS', '', 'RT 005/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos M. Nurdin', 'default-image.png', 'mnurdin@gmail.com', '', 'RT 005/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3.5 x 10 m', '', '', '10', '', '', '', 'asano', 'abepura', 0, '2021-06-16 00:37:23', 1, 0),
('1623803931', 'H. Saka', 'default-user.png', 'hsaka@gmail.com', '$2y$10$W50Frl6N4kMJG9.zWogKVejC8Lch9zLiXugcdjoRBxMpweEKH1dxu', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 'Rumah Kos H. Saka', 'default-image.png', 'hsaka@gmail.com', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 2, '', '2.5 x 10 m', '', '', '22', '', '', '', 'asano', 'abepura', 0, '2021-06-16 00:41:09', 1, 0),
('1623804102', 'Mira Harim', 'default-user.png', 'miraharim@gmail.com', '$2y$10$8MKhSrXuuko/QckIy8aa/eKxBxVovTmxEhh2T2hEldiTODYvr2jVq', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Mira Harim', 'default-image.png', 'miraharim@gmail.com', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 2, '', '3 x 10 m', '', '', '10', '', '', '', 'asano', 'abepura', 0, '2021-06-16 00:46:38', 1, 0),
('1623898133', 'Irianto Setiawan', 'default-user.png', 'frontonejayapura@gmail.com', '$2y$10$CsDI2uo0FuXNjfOzf2iJg./95eXkl6nFp.R3tnHUZWGHs2phj32Xm', '', 'Pusat Bisnis Jayapura Dok II Blok C No. 39', 'PT Karvin Mitra Sejati (Front ', 'default-image.png', 'frontonejayapura@gmail.com', '', 'Pusat Bisnis Jayapura Dok II Blok C No. 39', 3, '2321.66 m2', '', 'Ada', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-06-17 02:53:40', 1, 0),
('1623900677', 'AYU ANDRIYANA', 'default-user.png', 'daihatsuentrop@gmail.com', '$2y$10$vCypUeslW1QeJXOl5Ug6deB4LQz5obizPo8A1HHXVapZ1mQUSap9m', '', 'Jl. Raya Abepura-Entrop', 'PT Serba Mulia Auto (Daihatsu)', 'default-image.png', 'daihatsuentrop@gmail.com', '0967-523028', 'Jl. Raya Abepura-Entrop', 4, '', '', '', '', '', '', '', '', 'entrop', 'jprselatan', 0, '2021-06-17 03:34:41', 1, 0),
('1623927556', 'Fox Hotel Jayapura', 'wajibpajak-1623993811.png', 'fc-fox-jayapura@tauzia.com', '$2y$10$vah0yJWOqZ3rcgKsjN9DSuSxUEageTJVfPnPadpIOxXUbPWHYH.FS', '081240358806', 'Jalan Pembangunan No. 16, Gurabesi, Jayapura Utara - Papua', 'Fox Hotel jayapura', '1623927556-usaha-logo-1623993861.png', 'fc-fox-jayapura@tauzia.com', '081240358806', 'Paldam Jayapura Utara', 3, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-06-17 10:59:25', 1, 0),
('1623929487', 'NA', 'default-user.png', 'aston@gmail.com', '$2y$10$vvRIOqrwn6w4.8oplhiM9ezayPW/aTGevcURRNoBEo7cEcerzEdRe', '', 'Jl. Percetakan, Jayapura', 'Hotel Aston', 'default-image.png', 'aston@gmail.com', '', 'Jl. Percetakan Jayapura', 4, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-06-17 11:33:36', 1, 0),
('1624587810', 'Endang Kusdiani', 'default-user.png', 'kusdiani@gmail.com', '$2y$10$L9rCq.jgtRATIWlkM9KzOu2uzoCpsltIaFEruCiDMpMkl.41Z.muS', '', 'Jl. Raya Abepura Depan Perumahan Pemda Entrop', 'Hotel Danny', 'default-image.png', 'kusdiani@gmail.com', '', 'Jl. Raya Abepura Depan Perumahan Pemda Entrop', 3, '', '', '', '', '', '', '', 'tidak menggunakan air tanah', '', 'jprselatan', 0, '2021-06-25 02:27:31', 0, 0),
('1625106239', 'Robby Mandey', 'default-user.png', 'ayumiwaena@gmail.com', '$2y$10$lGGthKGNvLBo2mltUx9EZ.eVM56H25zjExUzbQ8x3apuN4CzsTwDC', '', 'Waena', 'Cafe Ayumi Waena', 'default-image.png', 'ayumiwaena@gmail.com', '', 'Waena', 4, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-07-01 02:25:45', 1, 0),
('1625107310', 'Christian Thean Laurenthio', 'default-user.png', 'papuagemilang@gmail.com', '$2y$10$AWLL/JzXY8xk711rIfRrG.9ty8MBPw6ycChWssc./vVrn98ynrvbG', '', 'Jl. Raya Abepura, Kelurahan Kota Baru, Distrik Abepura', 'PT Papua Gemilang (Matos)', 'default-image.png', 'papuagemilang@gmail.com', '', 'Jl. Raya Abepura, Kelurahan Kota Baru, Distrik Abepura', 3, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-01 02:47:06', 1, 0),
('1625108022', 'Ramayana', 'default-user.png', 'ramayana@gmail.com', '$2y$10$h/wVREinaY2znyD51IWeDOEAUMt.dgkwszO06UMaAVydpodY5MCWm', '', 'Jl. Raya Abepura', 'Mall Ramayana', 'default-image.png', 'ramayana@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-07-01 02:55:40', 1, 0),
('1625108221', 'Pabrik Tahu Muncol', 'default-user.png', 'tahumuncol@gmail.com', '$2y$10$KjAjHU06jjABQFWv5Oi6aOURlt59yQMf3kj7l/O5v0A5N4sTTcn3K', '', 'Jl. Kali Acai', 'Pabrik Tahu Muncol', 'default-image.png', 'tahumuncol@gmail.com', '', 'Jl. Kali Acai', 2, '', '', '', '', '', '', '', '', 'whymhorock', 'abepura', 0, '2021-07-01 03:03:45', 1, 0),
('1625108657', 'Blinkz Blinkz Car Wash', 'default-user.png', 'blinkzblinkz@gmail.com', '$2y$10$iyxvSfYRYdrYI9sXEzWKeOdLTP3Ixtwnpu7idX0G.muEDZj/58kse', '', 'Jl. Pasific Permai, Kelurahan Bhayangkara', 'Blinkz Blinkz Car Wash', 'default-image.png', 'blinkzblinkz@gmail.com', '', 'Jl. Pasific Permai, Kelurahan Bhayangkara', 4, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-07-01 03:08:25', 1, 0),
('1625109010', 'Ratu Aroma', 'default-user.png', 'ratuaroma@gmail.com', '$2y$10$xaIUCSiHjOTcqZNxYWzv5uWHCp7ozWxjVEajMnzJA5eOsxdZ1GCU6', '', 'Jl. Raya Abepura, Kelurahan Wai Mhorock', 'Rumah Makan Ratu Aroma', 'default-image.png', 'ratuaroma@gmail.com', '', 'Jl. Raya Abepura, Kelurahan Wai Mhorock', 2, '', '', '', '', '', '', '', '', 'whymhorock', 'abepura', 0, '2021-07-01 03:13:35', 1, 0),
('1625109334', 'Kairos Laundry', 'default-user.png', 'kairoslaundry@gmail.com', '$2y$10$uZ6a05UKhfwlU5xcCXu6eOMSUGWqqZg02JBQwkLULrKFsaMdcOHNu', '', 'Jl. Sosial Padang Bulan', 'Kairos Laundry', 'default-image.png', 'kairoslaundry@gmail.com', '', 'Jl. Sosial Padang Bulan', 2, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-01 03:18:38', 1, 0),
('1625548247', 'Dewi', 'default-user.png', 'fashion77@gmail.com', '$2y$10$aA/C.vIUNZDo3I77Ss6DdubpgSdIbWnXrpHpwN9BuZeOxzb5QLCCy', '', 'Jl. Raya Abepura Sentani ', 'Toko Fashion 77', 'default-image.png', 'fashion77@gmail.com', '', 'Jl. Raya Abepura Sentani ', 4, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-06 05:12:38', 1, 0),
('1626050298', 'Ruben Rukka', 'default-user.png', 'Rubenrukka@gmail.com', '$2y$10$tU1A3tvg/Y9yFQ1QNwZyNuq9N4XqHf0tKzBCwqdjFpPuLQDQbkgtm', '', 'Belakang Apotik Bunda Kotaraja ', 'Rumah Kos Ruben Rukka', 'default-image.png', 'Rubenrukka@gmail.com', '', 'Belakang Apotik Bunda Kotaraja', 2, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-07-12 00:40:29', 1, 0),
('1626225347', 'Rumah Makan Algano', 'default-user.png', 'algano@gmail.com', '$2y$10$Ll6GeM3lFMQ4x3ylfKhFfOX9dtHNZQIihT83cX.XNFdg.1HOlrxr2', '082299689588', 'Jl. Poros Youtefa, Abepura', 'Rumah Makan Algano', 'default-image.png', 'algano@gmail.com', '082299689588', 'Jl. Poros Youtefa, Abepura', 2, '', '', '', '', '', '', '20', 'RM Algano sudah pindah di Jl. Raya Abepura Kotaraja. Meteran dipasang di lokasi lama dimana lokasi tersebut sudah menjadi milik orang lain. ', 'whymhorock', 'abepura', 0, '2021-07-14 01:19:18', 1, 0),
('1626225654', 'Hotel Cyclop', 'default-user.png', 'cyclop@gmail.com', '$2y$10$eD6wip8/mCsdlUbeAR8kF.Nu5fjutQ0foXjGzqRO1TewsMp6LDvRW', '', 'Jl. Jeruk Nipis, Kotaraja, ', 'Hotel Cyclop', 'default-image.png', 'cyclop@gmail.com', '', 'Jl. Jeruk Nipis, Kotaraja', 3, '', '', '', '', '', '', '', '', 'wahno', 'abepura', 0, '2021-07-14 01:23:14', 1, 0),
('1626226519', 'Oxy Laundry', 'default-user.png', 'oxylaundry@gmail.com', '$2y$10$lDHpJjqtb0jv6GbfAe6msOfYUkryrDjSp1Uw7P8o35V0w4JEPEnLm', '', 'Jayapura', 'Oxy Laundry', 'default-image.png', 'oxylaundry@gmail.com', '', 'Jln.Raya Abepura', 2, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-14 01:39:37', 1, 0),
('1626226937', 'Nabila Clean Laundry', 'default-user.png', 'nabilalaundry@gmail.com', '$2y$10$cI2Pa41fDF8LM79FXwzJ/e3TwPXzj7iFprp5DJltTi7T1tflJcSha', '', 'Jl. Sulawesi Dok IX', 'Nabila Clean Laundry', 'default-image.png', 'nabilalaundry@gmail.com', '', 'Jl. Sulawesi Dok IX', 2, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-07-14 01:46:04', 1, 0),
('1626227277', 'Rumah Makan Wong Solo', 'default-user.png', 'wongsolo@gmail.com', '$2y$10$y4vbdeEM/ai1utsIRlyMbuhgN8YFar8dagFUDw4vfVTl7o2sVGyGq', '', 'Abepura', 'Rumah Makan Wong Solo', 'default-image.png', 'wongsolo@gmail.com', '', 'Abepura', 2, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-14 01:49:39', 1, 0),
('1626227510', 'Senyum 5000 Waena', 'default-user.png', '5000waena@gmail.com', '$2y$10$UbzlJ7G8NJ.Is35kgqtG0eot.Six0gsncH9wlTYaKDzT8wmjoUd3i', '', 'Jl. Raya Waena Sentani', 'Senyum 5000 Waena', 'default-image.png', '5000waena@gmail.com', '', 'Jl. Raya Waena Sentani', 4, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-07-14 01:54:20', 1, 0),
('1626227756', 'Jhony Susanto', 'default-user.png', 'rkjsusanto2@gmail.com', '$2y$10$jLi8BlXsSC9kpkTwCWQRsee0Xgr3ZnNROO7Wzis.0CMYNefNxXG3q', '', 'Silva Griya', 'Rumah Kos Jhony Susanto (Merah', 'default-image.png', 'rkjsusanto2@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-07-14 01:57:37', 1, 0),
('1626228149', 'Rumah Sewa Yudisyah', 'default-user.png', 'sewayudisyah@gmail.com', '$2y$10$m0HskdvY1Fx8ztiMxEiqtuHz/YAhvxgPbCAtJh2vJbsqe8Ua6o3RW', '', 'Jayapura', 'Rumah Sewa Yudisyah', 'default-image.png', 'sewayudisyah@gmail.com', '', 'Silvagria Kotaraja', 2, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-07-14 02:04:29', 1, 0),
('1626228632', 'Saga Mart Jalan Baru', 'default-user.png', 'sagajlbaru@gmail.com', '$2y$10$eLcgeAOEQc0JYZOBGNU6GeomYqRxvrbNMyFOVvNMqgs9cLfaMD1Ju', '', 'Jl. Baru Ps Lama Abepura', 'Saga Mart Jalan Baru', 'default-image.png', 'sagajlbaru@gmail.com', '', 'Jl. Bar Ps Lama Abepura', 4, '', '', '', '', '', '', '', '', 'awiyo', 'abepura', 0, '2021-07-14 02:14:39', 1, 0),
('1626228945', 'Tahu Ojolali', 'default-user.png', 'tahuojolali@gmail.com', '$2y$10$UsLFfLx3X8A1JT1iUAaiBuU0yMZn0mU9x/vFeryhcfSthji61gXQ6', '', 'Jl Kali Acai', 'Tahu Ojolali', 'default-image.png', 'tahuojolali@gmail.com', '', 'Jl. Kali Acai', 2, '', '', '', '', '', '', '', '', 'awiyo', 'abepura', 0, '2021-07-14 02:17:43', 1, 0),
('1626229415', 'Pencucian Depan Hotel Galaxy', 'default-user.png', 'pencucianhotelgalaxy@gmail.com', '$2y$10$PVFW797PSPEr170vcD4yO.ISsb0ZxuU6qIbCFtZbkW16Aa3DT8Fcu', '', 'Jayapura', 'Pencucian Depan Hotel Galaxy', 'default-image.png', 'pencucianhotelgalaxy@gmail.com', '', 'Jln,Waena Sentani', 4, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-07-14 02:27:11', 1, 0),
('1626229992', 'Tahu Anugerah', 'default-user.png', 'tahuanugerah@gmail.com', '$2y$10$gwjbOOcxoehVmxh463/EO.VhB4WBgj.RfNya.mLp.5kckP6iizPRG', '', 'Jayapura', 'Tahu Anugerah', 'default-image.png', 'tahuanugerah@gmail.com', '', 'Jln.Karang Waena', 2, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-07-14 02:35:02', 1, 0),
('1626230210', 'Toko Citra', 'default-user.png', 'tokocitra@gmail.com', '$2y$10$eOv/VhTZFK50xYou66k8Z.CNYXD5EiwtjNGEs6hKRJdrprYvIjdtK', '', 'Jl. Raya Abepura', 'Toko Citra', 'default-image.png', 'tokocitra@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-14 02:40:01', 1, 0),
('1626230671', 'Rumah Makan Beringin Berkah', 'default-user.png', 'rmberkah@gmail.com', '$2y$10$9rsZeRW9gFUWpn4qh9omZusH/8VtBnU730SFEYpS7QPq1relbbTdG', '', 'Jayapura', 'Rumah Makan Berkah', 'default-image.png', 'rmberkah@gmail.com', '', 'Jln.Raya Abepura Kotaraja', 2, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-07-14 02:46:20', 1, 0),
('1626395262', 'Toko Rezeky', 'default-user.png', 'tokorezeky@gmail.com', '$2y$10$MV4y6HXfC.lMpOFl6vwI1Ou47ppgdU4dSc7vN5DM/pxqrMr7.6IkC', '', 'Jl. Baru Abepura', 'Toko Rezeky', 'default-image.png', 'tokorezeky@gmail.com', '', 'Jl. Baru Abepura', 4, '2139,88', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-07-16 00:30:03', 1, 0),
('1627344636', 'Bpk Musron', 'default-user.png', 'rkbpkmusron@gmail.com', '$2y$10$W/gJnSccD2yzJpoyoYUPyegLyBNV2fvyx.MGhFGtM2/jz3ff/rTd2', '', 'Abepura', 'Rumah Kos Bpk Musron', 'default-image.png', 'rkbpkmusron@gmail.com', '', 'Abepura', 2, '', '', '', '', '24', '48', '', '', 'vim', 'abepura', 0, '2021-07-27 00:19:05', 1, 0),
('1627905389', 'Ibu Lili', 'default-user.png', 'rmsg@gmail.com', '$2y$10$yvnZw4mN3BbObgs4ntwR1.f1hxE5BIRuq9wG6Ahh7ouEU8r11HOlS', '', 'Jl. Raya Abepura', 'Rumah Makan Sendok Garpu', 'default-image.png', 'rmsg@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-08-02 12:06:59', 1, 0),
('1627949073', 'NA', 'default-user.png', 'ojolali@gmail.com', '$2y$10$RlhX000acX5EsbeLJ7EqV.KQk/i2INp9/MNsNhNg/3PqTq6C8YNdG', '', 'Kali Acai', 'Pabrik Tahu Ojolali', 'default-image.png', 'ojolali@gmail.com', '', 'Kali Acai', 1, '', '', '', '', '', '', '', '', '', '', 0, '2021-08-03 00:14:21', 0, 1),
('1628041482', 'Jumadi', 'default-user.png', 'sumurpakjumadi@gmail.com', '$2y$10$ttyRnlvoz6XFPvsINNWHzuY6ajC/.T8ENlfULM0viB2k7cxE3difa', '', 'Buper', 'Penjualan Air Sumur', 'default-image.png', 'sumurpakjumadi@gmail.com', '', 'Buper', 4, '', '', '', '', '', '', '', '', '', '', 0, '2021-08-04 01:59:00', 0, 1),
('1628043297', 'Beston Poltak Simanjuntak', 'default-user.png', 'airabadi@gmail.com', '$2y$10$LTSYKwYZnp8Ko7V8.AurAetj78lnKN2vHDmbn2WBI.2fWp94lLQL.', '', 'Jl. Sulawesi II Dok VII RT 003 RW 008 Kel. Imbi Kec. jayapura Utara ', 'Air Abadi', 'default-image.png', 'airabadi@gmail.com', '', 'Jl. Sulawesi II Dok VII RT 003 RW 008 Kel. Imbi Kec. jayapura Utara ', 4, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-08-04 02:17:00', 1, 0),
('1628048359', 'Agustinus B. Fajarianto', 'default-user.png', 'sumurbpkfajar@gmail.com', '$2y$10$7Rfw8h7WrLkAuUbgT7KtvugH3myUIWMwHQNggptI8/QDUmKsemgWe', '', 'Yoka Depan Hotel Anggrek', 'sumur Yoka', 'default-image.png', 'sumurbpkfajar@gmail.com', '', 'Yoka Depan Hotel Anggrek', 4, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-08-04 03:40:55', 1, 0),
('1628053192', 'Barmuli', 'default-user.png', 'sumurbpkbarmuli@gmail.com', '$2y$10$Y.RiIwLVUsDOdflI.VqBX.MzfYH/cfyaDnczuFblPEJBqW.HWYjkW', '', 'Jl. SPG Taruna Bhakti Waena', 'Sumur Bpk Bamuli', 'default-image.png', 'sumurbpkbarmuli@gmail.com', '', 'Jl. SPG Taruna Bhakti Waena', 4, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-08-04 05:00:57', 1, 0),
('1628053281', 'Deli Adman', 'default-user.png', 'sumurdadman@gmail.com', '$2y$10$mY4XMwD.YHqwtr/sjh2T9eLOJPDAFyu4NQo8r4sbwOjdzIuGPvxnS', '', 'Batas Kota Jl. Raya Abepura Sentani', 'Sumur Bpk Deli Adman', 'default-image.png', 'sumurdadman@gmail.com', '', 'Batas Kota Jl. Raya Abepura Sentani', 4, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-08-04 05:02:28', 1, 0),
('1629092692', 'Iwan', 'default-user.png', 'iwanwaena@gmail.com', '$2y$10$GsYvzGrWXGF.W8LJFDbrC.saN4mrY34U.6W4hxUawWpauMUh0lMwi', '081344162799', 'Jl. Belakang TC Perkebunan, Kelurahan Waena, Distrik Heram', 'Rumah Kos Iwan', 'default-image.png', 'iwanwaena@gmail.com', '081344162799', 'Jl. Belakang TC Perkebunan, Kelurahan Waena, Distrik Heram', 2, '', '', '', '', '10', '32', '', '', 'waena', 'heram', 0, '2021-08-16 05:48:18', 1, 0),
('1629376442', 'RM Padang Japsel', 'default-user.png', 'rmpadangjapsel@gmail.com', '$2y$10$QzRw66QaU3cLYf6ErVrpIe6LiuhC3xneKfpV00llMb/1AN.v.jKRK', '', 'Depan Kantor Distrik Jayapura Selatan', 'RM Padang depan Distrik Japsel', 'default-image.png', 'rmpadangjapsel@gmail.com', '', 'Depan Kantor Distrik Jayapura Selatan', 2, '', '', '', '', '', '', '', '', 'entrop', 'jprselatan', 0, '2021-08-19 12:36:38', 1, 0),
('1629377204', 'Grand Abe', 'default-user.png', 'grandabe@gmail.com', '$2y$10$Jd//egoMNqibraHofuXdN.y9ww7dNfl5o7mH9zaln6Nn/hBxWek8u', '', 'Jl. Raya Abepura', 'Hotel Grand Abe', 'default-image.png', 'grandabe@gmail.com', '', 'Jl. Raya Abepura', 3, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-08-19 12:52:45', 1, 0),
('1629377749', 'Home Premiere', 'default-user.png', 'hompremiere@gmail.com', '$2y$10$B2eL74uCEwiY81B03YA89.McnUUwIOYKU5r626xMXj9HSb/kUHnce', '', 'Jl. Raya Tanah Hitam', 'Hotel Hom Premiere', 'default-image.png', 'hompremiere@gmail.com', '', 'Jl. Raya Tanah Hitam', 3, '', '', '', '', '', '', '', '', 'asano', 'abepura', 0, '2021-08-19 12:57:33', 1, 0),
('1629377959', 'Hypermart Tanah Hitam', 'default-user.png', 'hypermarttanahhitam@gmail.com', '$2y$10$2Fa97j9xRpcbNRoT4UGc8umGYP0FWnokw5b73foP3rhM3cPOq5bma', '', 'Jl. Raya Tanah Hitam', 'Hypermart Tanah Hitam', 'default-image.png', 'hypermarttanahhitam@gmail.com', '', 'Jl. Raya Tanah Hitam', 4, '', '', '', '', '', '', '', '', 'asano', 'abepura', 0, '2021-08-19 13:01:13', 1, 0),
('1629378379', 'Hotel Mutiara', 'default-user.png', 'hotelmutiara@gmail.com', '$2y$10$WA4xczu0LgCi3o21GDm/OO.FSqpOAQzgvFv/i5QCga5LBOvY/iNbq', '', 'Jl. Raya Kotaraja Dalam', 'Hotel Mutiara', 'default-image.png', 'hotelmutiara@gmail.com', '', 'Jl. Raya Kotaraja Dalam', 2, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-08-19 13:08:05', 1, 0),
('1629379445', 'Hotel Clarence', 'default-user.png', 'hotelclarence@gmail.com', '$2y$10$dwhHPxD6TWd0zX8nJPvvpO.4ZnNQ90zmokbGXbe6pEYtThTNkIizi', '', 'Waena', 'Hotel Clarence', 'default-image.png', 'hotelclarence@gmail.com', '', 'Waena', 2, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-08-19 13:25:29', 1, 0),
('1629379841', 'Anggrek Indah', 'default-user.png', 'hotelanggrek@gmail.com', '$2y$10$8DfPy8U0E29f1HpPskJJN.JnH5Q7Vzj02nemSwB7vT/q0gkSjohv2', '', 'Waena', 'Hotel Anggrek Indah', 'default-image.png', 'hotelanggrek@gmail.com', '', 'Waena', 2, '', '', '', '', '', '', '', '', 'waena', 'heram', 0, '2021-08-19 13:32:09', 1, 0),
('1629415268', 'Laundry depan SD Gembala Baik', 'default-user.png', 'laundrysdgembalabaik@gmail.com', '$2y$10$GnsKWuV77JpgJVaoxLlt5uMrpF.A4flXmz22O9MJjcEDyTUs6FrhC', '', 'Depan SD Gembala Baik', 'Laundry dpn SD Gembala Baik', 'default-image.png', 'laundrysdgembalabaik@gmail.com', '', 'Depan SD Gembala Baik', 2, '', '', '', '', '', '', '', '', 'yobe', 'abepura', 0, '2021-08-19 23:24:40', 1, 0),
('1629416058', 'Bernado Sitorus', 'default-user.png', 'bernado@gmail.com', '$2y$10$xhrLYfgZjlembuwv/GlwleJ.LiwSEXBXYfWQ3SsAdm9ukcoAytcQG', '', 'Jayapura', 'Rumah Kos B. Sitorus', 'default-image.png', 'bernado@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-08-19 23:35:54', 1, 0),
('1631497309', 'Wajib Pajak', 'default-user.png', 'wajibpajak@gmail.com', '$2y$10$EHW0jxwmXW9BQNoJoifQlOzM2f.qcH9U5VUeNvoS7oVbnVBA5iyji', '', 'Jl. Nama Jalan, Nomor, Nama Kelurahan, Nama Distrik ', 'Rumah Kos Wajib Pajak', 'default-image.png', 'wajibpajak@gmail.com', '', 'Jl. Nama Jalan, Nomor, Nama Kelurahan, Nama Distrik ', 2, '', '', '', '', '11', '22', '', '', '', '', 0, '2021-09-13 01:55:34', 1, 0),
('1632360397', 'Rudy Maswi', 'default-user.png', 'sumbermakmur@gmail.com', '$2y$10$jJjdI6LOXuWVc9zamhNu0.kLCNvyjPTRbaNj4EkDIP4zApa2oJxHu', '', 'Lingkaran Abepura', 'Super Market Sumber Makmur', 'default-image.png', 'sumbermakmur@gmail.com', '', 'Lingkaran Abepura', 4, '800', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-09-23 01:28:22', 1, 0),
('1632361405', 'Onix', 'default-user.png', 'tokoonix@gmail.com', '$2y$10$boq177VKb5EAI2fLFu4CQOEsA5JRD67P6lgmfWCsJh9S1vzjEeCle', '', 'Jl. Raya Abepura Kotaraja', 'Toko Onix', 'default-image.png', 'tokoonix@gmail.com', '', 'Jl. Raya Abepura Kotaraja', 4, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-09-23 01:43:55', 1, 0),
('1632877338', 'Bpk Misno', 'default-user.png', 'misno@gmail.com', '$2y$10$C.lDe6fRv7nx./Lc2dtvJ.Rl42OA3e0mcX758C.rIXulVce5sLBWC', '0967 550770, 550771', 'Jln. Terminal Entrop jayapura', 'Hotel Delima', 'default-image.png', 'misno@gmail.com', '0967 550770, 550771', 'Jln. Terminal Entrop jayapura', 2, '', '', '', '', '', '', '', 'Menggunakan Air PAM dan tidak menggunakan air tanah berdasarkan dokumen UKL UPL Hotel Delima tahun 2010', '', 'jprselatan', 0, '2021-09-29 01:06:26', 0, 0),
('1632877655', 'CV. 777 (Hotel 777)', 'default-user.png', 'hotel 777@gmail.com', '$2y$10$3AsMslPR/l/JvhZ5cIcdz.sv9DtKp1tFsQHKYxdJpcBbqpz5Awhn6', '(0967) 583405', 'Jl. Raya Abepura-Sentani', 'Hotel 777', 'default-image.png', 'hotel 777@gmail.com', '(0967) 583405', 'Jl. Raya Abepura-Sentani', 3, '', '378 m2', '', 'Ada', '', '', '', 'Menggunakan air tanah berdasarkan Dokumen Pengelolaan Lingkungan Hidup (DPLH) Hotel 777 Tahun 2011', 'kotabaru', 'abepura', 0, '2021-09-29 01:25:34', 1, 0),
('1632877740', 'Yuliana Ong Pei I', 'default-user.png', 'yuliana@gmail.com', '$2y$10$fAezlZ0AhLeS.nz98endzeqVula30UDS87W9SaSUO7fnyUyoW3MVK', '', 'Jl. Percetakan Negara Kel. Gurabesi Distrik Japut', 'Hotel Palace', 'default-image.png', 'yuliana@gmail.com', '', 'Jl. Percetakan Negara Kel. Gurabesi Distrik Japut', 2, '', '', '', '', '', '', '', 'Menggunakan air PDAM berdasarkan dokumen UKL UPL Hotel Palace Papua Bulan Agustus 2012', '', 'jprutara', 0, '2021-09-29 01:11:17', 0, 0),
('1632877933', 'Drs. Nishayah DIS, SH', 'default-user.png', 'nishayah@gmail.com', '$2y$10$OpHor6vfhsqTUs8uBjbwwO0YS.el0SyVQVdZA3TqeL9VXhGgcIlIm', '0967 551669', 'Jln. Amphibi Hamadi AL No. 69 Kel. Hamadi Distrik Japsel', 'Hotel Nusantara', 'default-image.png', 'nishayah@gmail.com', '0967 551669', 'Jln. Amphibi Hamadi AL No. 69 Kel. Hamadi Distrik Japsel', 2, '', '', '', '', '', '', '', 'Menggunakan air PDAM berdasarkan dokumen UKL UPL Hotel Nusantara Tahun 2014', '', 'jprselatan', 0, '2021-09-29 01:15:09', 0, 0),
('1632878137', 'Ny. Hasmiati Junaedi', 'default-user.png', 'hasmiati@gmail.com', '$2y$10$8QAHlUqnmxAUu8nlqAxMmehT6S0hLO4RqP1ojLT6HrQIIXs0UlyT2', '0967 543133', 'Jln. Tanjung Ria No. 05 RT 001/RW 007 ', 'Hotel Andalucia', 'default-image.png', 'hasmiati@gmail.com', '', 'Jln. Tanjung Ria No. 05 RT 001/RW 007 ', 2, '', '', '', '', '', '', '', 'hanya menggunakan air PDAM berdasarkan dokumen DPLH Hotel Andalucia tahun 2011`', '', 'jprutara', 0, '2021-09-29 01:19:40', 0, 0),
('1632878447', 'Oskar Toloh, SE', 'default-user.png', 'oskar@gmail.com', '$2y$10$BVHm25gJzN13Nc.7mkToieRexA7z0ACVIdmDZ2unlISwImNen7NAC', '', 'Jl. Kelapa Dua Entrop', 'Hotel Sian Belavista', 'default-image.png', 'oskar@gmail.com', '', 'Jl. Kelapa Dua Entrop', 2, '', '', '', '', '', '', '', 'hanya menggunakan air PDAM berdasarkan dokumen UKL UPL Hotel Sian Belavista Tahun 2009', '', 'jprselatan', 0, '2021-09-29 01:23:49', 0, 0),
('1632878689', 'Ibu Damaris', 'default-user.png', 'hotelcenderawasih@gmail.com', '$2y$10$WgvAQfqbB2yzjm0PPF3DyeycS5NuXTJVdWKZRBeZEFrYXUPJ2fjRm', '', 'Jl. Asrama Haji Kotaraja', 'Hotel Cenderawasih ', 'default-image.png', 'hotelcenderawasih@gmail.com', '', 'Jl. Asrama Haji Kotaraja', 3, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-09-29 01:25:51', 1, 0),
('1632879111', 'Sri Intan Mustika (Hotel Ayu)', 'default-user.png', 'hotelayu@gmail.com', '$2y$10$BMRff89WqH5z6C0WtNxfre73ZapuyEK/L/2uTjwranKaRrdwH0uz.', '(0967) 534263', 'Jl. Tugu I No. 2, APO Bengkel, Jayapura', 'Hotel Ayu', 'default-image.png', 'hotelayu@gmail.com', '(0967) 534263', 'Jl. Tugu I No. 2, APO Bengkel, Jayapura', 3, '', '', '', '', '', '', '', 'Menggunakan air PDAM berdasarkan dokumen Upaya Pengelolaan Lingkungan Hidup (UKL) dan Upaya Pemantauan Lingkungan Hidup (UPL) Hotel Ayu, Tahun 2014', '', 'jprutara', 0, '2021-09-29 01:35:51', 0, 0),
('1632879606', 'Dra. Yeniwati (Hotel Trans Pap', 'default-user.png', 'hoteltranspapua@gmail.com', '$2y$10$DcwbspnNOREhas0X2VTz2eMQ1wYJ0/bldNptkNAqNtvDZ88Oq3jQe', '', 'Jl. Ruko Pasifik Permai Dok. 2', 'Hotel Trans Papua', 'default-image.png', 'hoteltranspapua@gmail.com', '', 'Jl. Ruko Pasifik Permai Dok. 2', 3, '', '', '', '', '', '', '', 'Menggunakan air tanah dan air dari PDAM berdasarkan Dokumen Upaya Pengelolaan Lingkungan Hidup (UKL) dan Upaya Pemantauan Lingkungan (UPL) Hotel Trans Papua Bulan Juli Tahun 2011.', 'gurabesi', 'jprutara', 0, '2021-09-29 01:57:00', 1, 0),
('1632881647', 'Dina Christine (Hotel ', 'default-user.png', 'hotelsands@gmail.com', '$2y$10$72ZgDmebrVIgIbd2c8zcs.91PsqNswH6Z9ml3DfouU2UEtfQzu6NO', '', 'Jl. Baru RT. 003/RW. 003, Kelurahan Awiyo, Distrik Abepura, Kota Jayapura', 'Hotel ', 'default-image.png', 'hotelsands@gmail', '', 'Jl. Abepantai, Tanah Hitam, Abepura, Jayapura', 3, '', '', '', '', '', '', '', 'Tidak menggunakan air tanah berdasarkan dokumen Upaya Pengelolaan Lingkungan Hidup (UKL) dan Upaya Pemantauan Lingkungan Hidup (UPL) Hotel \"SANDS\", Tahun 2012', '', 'abepura', 0, '2021-09-29 02:26:14', 0, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_kelurahan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1632882525', 'Hotel Kartini', 'default-user.png', 'hotelkartini@gmail.com', '$2y$10$9hzPp0E2AkI94V3R0f0C4ui.nYq7SALeaKnTIX3IOqNT9nhvC6T4i', '', 'Jl. Perintis No. 2, Kelurahan Gurabesi, Distrik Jayapura Utara, Kota Jayapura', 'Hotel Kartini', 'default-image.png', 'hotelkartini@gmail.com', '', 'Jl. Perintis No. 2, Kelurahan Gurabesi, Distrik Jayapura Utara, Kota Jayapura', 3, '', '', '', '', '', '', '', 'Tidak menggunakan air tanah berdasarkan Dokumen Pengelolaan Lingkungan Hidup (DPLH) Hotel Kartini, Tahun 2014', '', 'jprutara', 0, '2021-09-29 02:32:21', 0, 0),
('1632973555', 'Jhonny Susanto', 'default-user.png', 'rkjusanto1@gmail.com', '$2y$10$9MniCr7MExYDpR00xdzpGe6KcKIZHnn.R8SVb4ygPg6epd8kWvDu.', '', 'Jl. Silva Griya Kotaraja', 'rumah kos Jhony Susanto Kos Pu', 'default-image.png', 'rkjsusanto1@gmail.com', '', 'Jl. Silva Griya Kotaraja', 2, '', '', '', '', '', '', '', '', 'vim', 'abepura', 0, '2021-09-30 03:53:42', 1, 0),
('1633316372', 'PT. Duta Damai Papua', 'default-user.png', 'rsprovita@gmail.com', '$2y$10$EAOv00krcsxbPAiVt.tK9e5pHBJQbSbAWanSAY48Lra6duahQg22C', '', 'Jl. Sam Ratulangi No. 39 APO, RT. 05 RW. 02, Kelurahan Bhayangkara Distrik Jayapura Utara, Kota Jayapura, Papua 99112', 'Rumah Sakit Provita', 'default-image.png', 'rsprovita@gmail.com', '', 'Jl. Sam Ratulangi No. 39 APO, RT. 05 RW. 02, Kelurahan Bhayangkara Distrik Jayapura Utara, Kota Jayapura, Papua 99112', 2, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-10-04 03:03:30', 1, 0),
('1633327800', 'Hotel Permata', 'default-user.png', 'hotelpermata@gmail.com', '$2y$10$2rky49QwiN8GosQ0ybupyeGLP7EQC2S5o3pFmq8pH65u.RpH1EWDO', '', 'Jl. Olahraga No.3 Paldam, Jayapura', 'Hotel Permata', 'default-image.png', 'hotelpermata@gmail.com', '', 'Jl. Olahraga No.3 Paldam, Jayapura', 3, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-10-04 06:13:21', 1, 0),
('1633328134', 'Hotel Beisji Inn', 'default-user.png', 'beisjiinn@gmail.com', '$2y$10$y9z35T9BcbMksMQ5B3M/IOJ2.BvIrU0WcuGzyskVvXpZjnakMW9IK', '', 'Jl. Tanjung Ria Base G No. 78 Kav. 1 Dok IX', 'Hotel Beisji Inn', 'default-image.png', 'beisjiinn@gmail.com', '', 'Jl. Tanjung Ria Base G No. 78 Kav. 1 Dok IX', 3, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-10-04 06:17:45', 1, 0),
('1633496343', 'Alfrie Moeis', 'default-user.png', 'RMburyam@gmail.com', '$2y$10$RCbgR.FO.w6/1P8BcwF/3OB/omo7CkLAwHWUDrvLaaOD0kL0BZSTy', '', 'Waena ', 'Rumah Makan Bubur Ayam', 'default-image.png', 'RMburyam@gmail.com', '', 'Waena', 4, '', '', '', '', '', '', '', '', '', 'heram', 0, '2021-10-06 05:04:09', 1, 0),
('1633523343', 'Hotel Rais', 'default-user.png', 'hotelrais@gmail.com', '$2y$10$nnBoD1M/EarYin3E42w2/eZenfPtykleq0kgUgFcykJE7BP.Tt./C', '', 'Jl. Pantai Kelapa No.28, Argapura', 'Hotel Rais', 'default-image.png', 'hotelrais@gmail.com', '', 'Jl. Pantai Kelapa No.28, Argapura', 3, '', '', '', '', '', '', '', '', 'entrop', 'jprselatan', 0, '2021-10-06 12:31:07', 1, 0),
('1633524171', 'R.M. Minang Saiyo', 'default-user.png', 'rmsaiyo@gmail.com', '$2y$10$lKDMtXAJ4Qyb4kx6Udr99Ordt4Viz2mWF1zYw1napzPIZYva0SNae', '', 'Jl. Kelapa 2 Entrop', 'Rumah Makan Minang Saiyo', 'default-image.png', 'rmsaiyo@gmail.com', '', 'Jl. Kelapa 2 Entrop', 2, '', '', '', '', '', '', '', '', 'entrop', 'jprselatan', 0, '2021-10-06 12:43:15', 1, 0),
('1633647281', 'Bambang Kuncoro (Rmh Sw Rahayu', 'default-user.png', 'bkuncoro@gmail.com', '$2y$10$VsC.MsXfPoZfkpee0YcMVemNj1FMS18.DZqsZCvYfSkVDr2EpO9mm', '', 'Jayapura', 'Rumah Sewa Rahayu (Bambang Kun', 'default-image.png', 'bkuncoro@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', 'entrop', 'jprselatan', 0, '2021-10-07 22:58:35', 1, 0),
('1633647814', 'Sinar Sakti Motor', 'default-user.png', 'sinarsaktimotor@gmail.com', '$2y$10$reOt6jXKDPmbGtihrrpoSOmo.wOyTT//k3tmFgxBrSr0Tj2OVReY6', '', 'Jayapura', 'Sinar Sakti Motor', 'default-image.png', 'sinarsaktimotor@gmail.com', '', 'Jayapura', 4, '', '', '', '', '', '', '', '', 'entrop', 'jprselatan', 0, '2021-10-07 23:08:51', 1, 0),
('1633648260', 'Hikmah', 'default-user.png', 'rmhswhikmah@gmail.com', '$2y$10$wsSMsbq1CHI/9nwLTG3RK.Ydey13C7LC2dvkdIEcazS/bWjmrWyJu', '', 'Jayapura', 'Rumah Sewa Hikmah', 'default-image.png', 'rmhswhikmah@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-10-07 23:12:59', 1, 0),
('1634781233', 'BoB Cafe and Convention', 'default-user.png', 'bobcafe@gmail.com', '$2y$10$y6MRDXs1n7rAXyde5jiCKORPNuFRNpzwz3EYOKyTp8GpzIq1uZlgy', '', 'Jl. Raya Abepura', 'Black on Bex Cafe and Conventi', 'default-image.png', 'bobcafe@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2021-10-21 01:58:32', 1, 0),
('1634790444', 'Hj. Nurlela', 'default-user.png', 'rsibunurlela@gmail.com', '$2y$10$IhDb6cm7xc9k/PRjmVlVm.3JrEUHe8ciZonehzhHMPyd6Pe02ZZty', '', 'Jl. Pantai Enggros', 'Rumah Sewa Nurlela', 'default-image.png', 'rsibunurlela@gmail.com', '', 'Jl. Pantai Enggros', 2, '', '', '', '', '25 kamar', '', '', '', 'asano', 'abepura', 0, '2021-10-21 04:31:42', 1, 0),
('1634790723', 'Ibu Herawati', 'default-user.png', 'rsherawati@gmail.com', '$2y$10$97OnxrF/NL6NeJ6IuNYmV.gSPNZJ7MH3wXp3hJ/u7gq9kvvZX17G2', '085243330007', 'Belakang Hotel Bunga Youtefa', 'Rumah Sewa Ibu Herawati', 'default-image.png', 'rsherawati@gmail.com', '085243330007', 'Belakang Hotel Bunga Youtefa', 2, '', '', '', '', '60 kamar', '', '', '', 'whymhorock', 'abepura', 0, '2021-10-21 04:40:53', 1, 0),
('1634791321', 'Bpk La Iki', 'default-user.png', 'rslaiki@gmail.com', '$2y$10$Cld7X1Gt5LJwDFoMprMmV.KDXJ1NHBuPJvt1tPKw7zi/jhl8fMoYa', '081240052287', 'Jl. Pasar Youtefa', 'Rumah Sewa La Iki', 'default-image.png', 'rslaiki@gmail.com', '081240052287', 'Jl. Pasar Youtefa', 2, '', '', '', '', '68 kamar', '', '', '', 'whymhorock', 'abepura', 0, '2021-10-21 04:46:08', 1, 0),
('1634791620', 'Bpk Khadir Tinri', 'default-user.png', 'rsktinri@gmail.com', '$2y$10$e9E4eMUs1YgmzxAPvRmTW.4POZazHLcxI.fTd//D8q296zZxb7BWm', '0851977040141', 'Jl. Nuri Kel. Awiyo', 'Rumah Sewa Khadir Tinri', 'default-image.png', 'rsktinri@gmail.com', '0851977040141', 'Jl. Nuri Kel. Awiyo', 2, '', '', '', '', '15 kamar', '', '', '', 'awiyo', 'abepura', 0, '2021-10-21 04:50:46', 1, 0),
('1634791882', 'Ibu Hikma', 'default-user.png', 'rshikma@gmail.com', '$2y$10$CADj2pY0POtbRr12N3BtW.G9stKejey9x6T/MQEWliNOPXmGYOK.K', '082238039334', 'Jl. Belakang Pompa Bensin Entrop', 'Rumah Sewa Ibu Hikma', 'default-image.png', 'rshikma@gmail.com', '082238039334', 'Jl. Belakang Pompa Bensin Entrop', 2, '', '', '', '', '', '', '', '', '', 'jprselatan', 0, '2021-10-21 04:52:52', 0, 0),
('1634791985', 'Bpk Arifin', 'default-user.png', 'rsarifin@gmail.com', '$2y$10$zkyQlr2f3YftNyBV5QjhEeD7fC3wN0MYn1z38ZAZgaV1AmJLLiixu', '', 'Jl. Baru Belakang SMK N 5', 'Rumah Sewa Bpk Arifin', 'default-image.png', 'rsarifin@gmail.com', '', 'Jl. Baru Belakang SMK N 5', 2, '', '', '', '', '104', '', '', '', '', 'abepura', 0, '2021-10-21 04:55:00', 0, 0),
('1635743492', 'Elly Tan/Imbiri', 'default-user.png', 'ellytanimbiri@gmail.com', '$2y$10$t6VCAqdWCqBvWzyYaSAmyuqHmAUhZKCtlFVPBodoJ9yg.OpnI4QeG', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 'Rumah Kos Elly Tan/Imbiri', 'default-image.png', 'ellytanimbiri@gmail.com', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 2, '', '', '', '', '24', '45', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:15:44', 1, 0),
('1635743942', 'Samia', 'default-user.png', 'samia@gmail.com', '$2y$10$xN/hOqLTsy4RvMuIkOhYseHXSYKAcXPMZ6Qf03089YOGEGTygVxiS', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 'Rumah Kos Samia', 'default-image.png', 'samia@gmail.com', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 2, '', '', '', '', '15', '50', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:20:55', 1, 0),
('1635744619', 'Korneles Raubaba', 'default-user.png', 'kraubaba@gmail.com', '$2y$10$EuQkp68f9v61Mtl3p8RAJOdKy7PLvAzKw/drRUBnfISfhntfP2VkO', '', 'Jl. Tanjung Ria Kampung Baru Dok IX', 'Rumah Kos Korneles Raubaba', 'default-image.png', 'kraubaba@gmail.com', '', 'Jl. Tanjung Ria Kampung Baru Dok IX', 2, '', '', '', '', '12', '29', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:32:51', 1, 0),
('1635744789', 'H. Muh. Amran', 'default-user.png', 'hmamran@gmail.com', '$2y$10$sTJQz/CXKAsQ2MizlEpc5.F/zIL0XHeDZVJW3FB6Vwgm3NUvcD.J.', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 'Rumah Kos H. Muh Amran', 'default-image.png', 'hmamran@gmail.com', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 2, '', '', '', '', '18', '33', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:36:43', 1, 0),
('1635745028', 'Samsudin (Munar)', 'default-user.png', 'samsudinmunar@gmail.com', '$2y$10$KyEMcwOFhSdbPLZ1VZUSCuQE81kFKlEhCGm2mQa40pLZD.IYCAayK', '', 'Jl. Tanjung Ria Depan P&P Dok IX', 'Rumah Kos Samsudin (Munar)', 'default-image.png', 'samsudinmunar@gmail.com', '', 'Jl. Tanjung Ria Depan P&P Dok IX', 2, '', '', '', '', '11', '23', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:40:20', 1, 0),
('1635745280', 'Lamidi', 'default-user.png', 'lamidi@gmail.com', '$2y$10$IY6eeauYZj48/rBsN.xdh.P.2wOL3pZpzscLpSLM2O0iBy1vtr.Wi', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 'Rumah Kos Lamidi', 'default-image.png', 'lamidi@gmail.com', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 2, '', '', '', '', '10', '22', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:43:23', 1, 0),
('1635745465', 'Wa Gadaria', 'default-user.png', 'wagadaria@gmail.com', '$2y$10$CUuLA9v4YGRlIG5ivlotlOOtRbTTP55eYS4vrpz85334GH60YKBYm', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 'Rumah Kos Wa Gadaria', 'default-image.png', 'wagadaria@gmail.com', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 2, '', '', '', '', '19', '57', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:46:36', 1, 0),
('1635745632', 'Suprianto', 'default-user.png', 'supriantodok9@gmail.com', '$2y$10$E0mqjjsHWlCf8Qzowpl7SuWU1LChu2BrsH4v8OnbXha6fVgt2KA3O', '', 'Jl. Tanjung Ria Dok IX Depan Dinas Sosial', 'Rumah Kos Suprianto', 'default-image.png', 'supriantodok9@gmail.com', '', 'Jl. Tanjung Ria Dok IX Depan Dinas Sosial', 2, '', '', '', '', '11', '38', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:49:48', 1, 0),
('1635745811', 'H. Anwar/Afdal', 'default-user.png', 'hanwardok9@gmail.com', '$2y$10$jYFIK/DDznv80lafwuY5mejwmQ2jibpHZqKqJBlnxxrNFnlf36cyC', '', 'Jl. Tanjung Ria Dok IX Panca Karsa', 'Rumah Kos H. Anwar/Afdal', 'default-image.png', 'hanwardok9@gmail.com', '', 'Jl. Tanjung Ria Dok IX Panca Karsa', 2, '', '', '', '', '12', '34', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:53:18', 1, 0),
('1635746021', 'Yafeth Ansanay', 'default-user.png', 'yansanay@gmail.com', '$2y$10$LvXNBoOy3H8habvYBM/H5OD7dau2mfnyyg3T4RuGJ.8ObfwhbmsDG', '', 'Jl. Tanjung Ria Dok IX Kali', 'Rumah Kos Yafeth Ansanay', 'default-image.png', 'yansanay@gmail.com', '', 'Jl. Tanjung Ria Dok IX Kali', 2, '', '', '', '', '16', '24', '', '', 'gurabesi', 'jprutara', 0, '2021-11-01 05:56:23', 1, 0),
('1637548436', 'Hotel Relat Indah', 'default-user.png', 'relat@gmail.com', '$2y$10$3MIxX4n5RK5Xgo3XzhHdre7MKI.VUggnGM2U/GnYHGvESUZKIm3au', '', 'Jayapura', 'Hotel Relat Indah', 'default-image.png', 'relat@gmail.com', '', 'Jayapura', 3, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2021-11-22 02:37:25', 1, 0),
('1642560823', 'Bpk. Mika', 'default-user.png', 'mika@gmail.com', '$2y$10$ledOA5sk98IZAHYyRRPALejKJMWN53vN7gjPvDNiavH4u5fFNINIS', '08114883050', 'Belakang Koramil', 'Rumah Kos Bpk. Mika', 'default-image.png', 'mika@gmail.com', '08114883050', 'Belakang Koramil', 2, '', '', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 02:57:28', 1, 0),
('1642561148', 'Petrus Pasereng', 'default-user.png', 'petruspasereng@gmail.com', '$2y$10$n31rDgfqIwF12CBjnXE1R.7UC21tiv2dj7XK4ZJ770JSjdCjkq/RS', '085322778251', 'Belakang Koramil', 'Rumah Kos Petrus Pasereng', 'default-image.png', 'petruspasereng@gmail.com', '085322778251', 'Belakang Koramil', 2, '', '', '', '', '40', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 03:02:24', 1, 0),
('1642565369', 'Yusuf Parinding', 'default-user.png', 'yusufparinding@gmail.com', '$2y$10$XXfCoJ5T3Rns9FJJtWe6BuiB2xDD3od7VR/NbrlWsvyKVCsFHPHhK', '085344022208', 'Belakang Koramil', 'Rumah Kos Yusuf Parinding', 'default-image.png', 'yusufparinding@gmail.com', '085344022208', 'Belakang Koramil', 2, '', '', '', '', '20', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 04:12:35', 1, 0),
('1642566187', 'Suriani', 'default-user.png', 'kossuriani@gmail.com', '$2y$10$THvZsg7fL36cInfIkdhBsO0f55CIEJH/Rp.GigLrpZACgw/iDBLPO', '081247542091', 'Jl. Pipa Air Abepura', 'Rumah Kos Suriani', 'default-image.png', 'kossuriani@gmail.com', '081247542091', 'Jl. Pipa Air Abepura', 2, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 04:25:47', 1, 0),
('1642567361', 'Bpk. Edi', 'default-user.png', 'kosdebora@gmail.com', '$2y$10$TRKN2penZ0lUykcP3KkxJemIE9sknbuhRkmkZN2qoASDp7bjeZd6K', '081344001777', 'Belakang Koramil', 'Rumah Kos Ibu Debora', 'default-image.png', 'kosdebora@gmail.com', '081344001777', 'Belakang Koramil', 2, '', '', '', '', '20', '28', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 04:45:11', 1, 0),
('1642567644', 'Bpk. Yansen', 'default-user.png', 'kospagawak@gmail.com', '$2y$10$ztRZL4yVxzIqEm0zZJPBteF72/C1yU3.D4FN0TFOOFgMZvhx9JNOO', '085254008808', 'Belakang Koramil', 'Rumah Kos Ibu Pagawak', 'default-image.png', 'kospagawak@gmail.com', '085254008808', 'Belakang Koramil', 2, '', '', '', '', '16', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 04:51:31', 1, 0),
('1642568230', 'Dharmawati', 'default-user.png', 'dharmawati@gmail.com', '$2y$10$nMwa3XSnz8d4W0evQtLKYerHsOx97Fq6onjjqMkfEqJJ9U35uJTiW', '082399148165', 'Belakang Koramil', 'Rumah Kos Dharmawati', 'default-image.png', 'dharmawati@gmail.com', '082399148165', 'Belakang Koramil', 2, '', '', '', '', '10', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 05:00:32', 1, 0),
('1642568620', 'Bpk. Saldi', 'default-user.png', 'saldi@gmail.com', '$2y$10$3ntZ5ISOSHNmSi/W7rmgo.BY2N3h..8WdMWFoH6dDVOJ0rtoj6Fe2', '081344018615', 'Belakang Koramil', 'Rumah Kos Bpk. Saldi', 'default-image.png', 'saldi@gmail.com', '081344018615', 'Belakang Koramil', 2, '', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2022-01-19 05:05:30', 1, 0),
('1642568877', 'Ibu Asriyani', 'default-user.png', 'asriyani@gmail.com', '$2y$10$FGPlQZJIDwN4GHCmUWSXOeap7Jk/2//xa9WMLvFa3M8aCasbQM90e', '081344055358', 'RT 02 Tanah Hitam', 'Rumah Kos Ibu Sri', 'default-image.png', 'asriyani@gmail.com', '081344055358', 'RT 02 Tanah Hitam', 2, '', '', '', '', '26', '24', '', '', 'asano', 'abepura', 0, '2022-01-19 05:11:10', 1, 0),
('1642569167', 'Hj. Chia', 'default-user.png', 'hjchia@gmail.com', '$2y$10$AP71ynU0lj7dLHoNKHHbOuCqmDhG0Yczkdq3Z/kxlvOqaADaMFf2S', '082248951810', 'RT 01 Tanah Hitam', 'Rumah Kos Hj. Chia', 'default-image.png', 'hjchia@gmail.com', '082248951810', 'RT 01 Tanah Hitam', 2, '', '', '', '', '', '', '', '', 'asano', 'abepura', 0, '2022-01-19 05:15:08', 1, 0),
('1642569453', 'Ibu Jumriah', 'default-user.png', 'jumriah@gmail.com', '$2y$10$clc04.RpHdV.yjG4f1Tw8e3ToAmFvG/4rRCeBAGud3ULbxs9SvcUq', '082239288581', 'Jl. Kelor, RT 03 Tanah Hitam', 'Rumah Kos Ibu Jumriah', 'default-image.png', 'jumriah@gmail.com', '082239288581', 'Jl. Kelor, RT 03 Tanah Hitam', 2, '', '', '', '', '12', '12', '', '', 'asano', 'abepura', 0, '2022-01-19 05:22:29', 1, 0),
('1642569889', 'Ibu Inri', 'default-user.png', 'inri@gmail.com', '$2y$10$mvjQ5xN7.mik1TanOqWLouJmYIDJ3CU5KsjheO78SM6vhGyP7tLBS', '085244272703', 'RT 04 Tanah Hitam', 'Rumah Kos Ibu Inri', 'default-image.png', 'inri@gmail.com', '085244272703', 'RT 04 Tanah Hitam', 2, '', '', '', '', '10', '10', '', '', 'asano', 'abepura', 0, '2022-01-19 05:27:16', 1, 0),
('1642570153', 'Ibu Sitohang', 'default-user.png', 'kossitohang@gmail.com', '$2y$10$XqOHcEFV4PcF4upwNHa5xOPizsj4FlRw/4aUg0DGaNPq4QwxZSayu', '082399042590', 'RT 04 RW 02 Tanah Hitam', 'Rumah Kos Ibu Sitohang', 'default-image.png', 'kossitohang@gmail.com', '082399042590', 'RT 04 RW 02 Tanah Hitam', 2, '', '', '', '', '10', '8', '', '', 'asano', 'abepura', 0, '2022-01-19 05:32:24', 1, 0),
('1642570498', 'Esti P. Astuti', 'default-user.png', 'estiastuti@gmail.com', '$2y$10$v/k7516mDZUJ3ZHkYXMlzesDv87cZlAIfCJDsw349t4LE451TyVU6', '082399479552', 'RT 02 RW 02 Tanah Hitam', 'Rumah Kos Ibu Esti', 'default-image.png', 'estiastuti@gmail.com', '082399479552', 'RT 02 RW 02 Tanah Hitam', 2, '', '', '', '', '10', '9', '', '', 'asano', 'abepura', 0, '2022-01-19 05:56:16', 1, 0),
('1642637991', 'Laudegeo', 'default-user.png', 'laudegeo@gmail.com', '$2y$10$KejATmw/NODthbU2S0wWhexTCITWOJvFHG7uPVLgmY7I1G2wYvhfO', '082198363856', 'RT 01 RW 04 Tanah Hitam', 'Rumah Kos Laudegeo', 'default-image.png', 'laudegeo@gmail.com', '082198363856', 'RT 01 RW 04 Tanah Hitam', 2, '', '', '', '', '10', '10', '', '', 'asano', 'abepura', 0, '2022-01-20 00:23:54', 1, 0),
('1642638731', 'Raja Muliaty', 'default-user.png', 'rkmuliaty@gmail.com', '$2y$10$7grTxlTXYzVvXg3kOC9KYe6aGYDa4bjQsrTUcj5GolevZLJtb6sOe', '08524810512', 'Tanah Hitam', 'Rumah Kos R Muliaty', 'default-image.png', 'rkmuliaty@gmail.com', '08524810512', 'Tanah Hitam', 2, '', '', '', '', '12', '', '', '', 'asano', 'abepura', 0, '2022-01-20 00:35:19', 1, 0),
('1642640006', 'Javar', 'default-user.png', 'javar@gmail.com', '$2y$10$Sd4TeERvWksmphVc9t54MOm/6CWKd9PySMrClD3SnKn91ckavOHhO', '081284974031', 'RT 04 RW 01 Tanah Hitam', 'Rumah Kos Javar', 'default-image.png', 'javar@gmail.com', '081284974031', 'RT 04 RW 01 Tanah Hitam', 2, '', '', '', '', '13', '', '', '', 'asano', 'abepura', 0, '2022-01-20 00:55:47', 1, 0),
('1642640306', 'Jumariah', 'default-user.png', 'jumariah@gmail.com', '$2y$10$v04T4SkbguW2wo/7RMmje./4lpQaiZY/ME85AvAJzIx9RV9iLUnMi', '082297449471', 'RT 01 RW 02 Tanah Hitam', 'Rumah Kos Jumariah', 'default-image.png', 'jumariah@gmail.com', '082297449471', 'RT 01 RW 02 Tanah Hitam', 2, '', '', '', '', '10', '', '', '', 'asano', 'abepura', 0, '2022-01-20 01:00:55', 1, 0),
('1642640785', 'Ibu Hj. Sakha', 'default-user.png', 'rkhjsakha@gmail.com', '$2y$10$eLleiFsWuVa.BeyncuWzC.gt0Q0LSikTmiBMV8zdAXxCm06a51wFK', '081344507094', 'RT 03 RW 02 Tanah Hitam', 'Rumah Kos Hj. Sakha', 'default-image.png', 'rkhjsakha@gmail.com', '081344507094', 'RT 03 RW 02 Tanah Hitam', 2, '', '', '', '', '', '', '', '', 'asano', 'abepura', 0, '2022-01-20 01:09:55', 1, 0),
('1642641170', 'Asman', 'default-user.png', 'asman@gmail.com', '$2y$10$MFLro6A7YZqt9Pwdd4uVR.8Az32qmeWfZahW/JcLbmwKe9/uQ4dxO', '082248620894', 'RT 03 RW 03 Tanah Hitam', 'Rumah Kos Asman', 'default-image.png', 'asman@gmail.com', '082248620894', 'RT 03 RW 03 Tanah Hitam', 2, '', '', '', '', '12', '10', '', '', 'asano', 'abepura', 0, '2022-01-20 01:15:21', 1, 0),
('1642641522', 'Hj. Mauli', 'default-user.png', 'hjmauli@gmail.com', '$2y$10$xisOPA5bUq.1ts4t6aK7b.NrLKOcICbwsq65ik1oRbKJcY4oLdcdW', '085254062423', 'Tanah Hitam', 'Rumah Kos Hj. Mauli', 'default-image.png', 'hjmauli@gmail.com', '085254062423', 'Tanah Hitam', 2, '', '', '', '', '16', '14', '', '', 'asano', 'abepura', 0, '2022-01-20 01:20:49', 1, 0),
('1646354960', 'NN', 'default-user.png', 'rmmegarasa@gmail.com', '$2y$10$JtzzF9.wacBRnh/4.LWw8OjWrmziVm51t.zq0Nu5w0lsh8wYWjeTy', '', 'Jl. Pasar Youtefa Abepura', 'Rumah Makan Mega Rasa', 'default-image.png', 'rmmegarasa@gmail.com', '', 'Jl. Pasar Youtefa Abepura', 2, '', '', '', '', '', '', '', '', 'whymhorock', 'abepura', 0, '2022-03-04 00:52:28', 1, 0),
('1648429126', 'Bpk Wefer', 'default-user.png', 'pencucianampera@gmail.com', '$2y$10$70CUKUw4MA6hJMN4kWy03u.p36exOi7sA6JwaA0UnTdU21Sgoo0CG', '', 'Jl. Pembangunan Ampera', 'Pencucian Ampera', 'default-image.png', 'pencucianampera@gmail.com', '', 'Jl. Pembangunan Ampera', 4, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2022-03-28 01:04:24', 1, 0),
('1648451977', 'Simon Petrus', 'default-user.png', 'cendrakayuindah@gmail.com', '$2y$10$ywX5Rmy7eRFpUzReXL2vv.lf4BfDSOJlTmp4vHzKishpxfds.uY.S', '', 'Jl. Raya Nafri No. 88 Kelurahan Abepantai Distrik Abepura', 'PT. Cenderawasih Kayu Indah', 'default-image.png', 'cendrakayuindah@gmail.com', '', 'Jl. Raya Nafri No. 88 Kelurahan Abepantai Distrik Abepura', 5, '', '', '', '', '', '', '', '', 'abepantai', 'abepura', 0, '2022-03-28 07:22:53', 1, 0),
('1648528177', 'Marlinda', 'default-user.png', 'amabelhotel@gmail.com', '$2y$10$WywovuCwWJ26PK7ZS35jnuveg.z3hlDdRVZ1cpQbRj16Pr/zsB0dG', '', 'Jl. Tugu No. 100 APO Jayapura', 'Amabel Hotel', 'default-image.png', 'amabelhotel@gmail.com', '', 'Jl. Tugu No. 100 APO Jayapura', 4, '', '', '', '', '', '', '', '', 'gurabesi', 'jprutara', 0, '2022-03-29 04:32:41', 1, 0),
('1649123764', 'Iis', 'default-user.png', 'nengayu@gmail.com', '$2y$10$ZN7THL13WldkM2AGixKPse1r821TFd.bmmnVJjJWVAido1wQiwOeq', '081212371504', 'Jl. Baru Hamadi', 'Warung Neng Ayu', 'default-image.png', 'nengayu@gmail.com', '081212371504', 'Jl. Baru Hamadi', 2, '', '', '', '', '', '', '20', 'Hanya menggunakan Air PDAM', '', 'jprselatan', 0, '2022-04-05 02:00:15', 0, 0),
('1649124045', 'Agus Salim', 'default-user.png', 'prasmanan@gmail.com', '$2y$10$cBPiDxcROulI.y.1oW0.Iuq4aYqAq9kjSKNdvNc1ibz4aFClmrJiq', '081232552287', 'Hamadi Pelayaran', 'Warung Prasmanan', 'default-image.png', 'prasmanan@gmail.com', '081232552287', 'Hamadi Pelayaran', 2, '', '', '', '', '', '', '20', 'Hanya menggunakan Air PDAM', '', 'jprselatan', 0, '2022-04-05 02:03:41', 0, 0),
('1649131717', 'Ong Jaya', 'default-user.png', 'miemedan@gmail.com', '$2y$10$UIympcyg1XpNvl9GrMVeV.WQ1h6OnNUz6d4Mqw/TArlHzJ1bH41em', '081243333368', 'Jl. Kelapa II Entrop', 'Warung Mie Medan', 'default-image.png', 'miemedan@gmail.com', '081243333368', 'Jl. Kelapa II Entrop', 2, '', '', '', '', '', '', '50', 'Hanya menggunakan Air PDAM', '', 'jprselatan', 0, '2022-04-05 04:12:31', 0, 0),
('1649132111', 'Eppy Papu', 'default-user.png', 'timurrasa@gmail.com', '$2y$10$c3ZJWw6ETZbZulRWjQZNXueAKSXx0DV6P02AqagpCgnhqFL9WF.fK', '081388096167', 'Jl. Kelapa Dua Entrop', 'Warung Timur Rasa', 'default-image.png', 'timurrasa@gmail.com', '081388096167', 'Jl. Kelapa Dua Entrop', 2, '', '', '', '', '', '', '20', 'Hanya menggunakan Air PDAM', '', 'jprselatan', 0, '2022-04-05 04:18:16', 0, 0),
('1649132324', 'Asmiaroh', 'default-user.png', 'sotolamongan@gmail.com', '$2y$10$C7WahRXHvVpKpy.UEFixPOLRNA5OnVN.2SIvDdTDGncy68dyBNWGm', '085249361770', 'Jl. Kelapa Dua Entrop', 'Warung Soto Lamongan', 'default-image.png', 'sotolamongan@gmail.com', '085249361770', 'Jl. Kelapa Dua Entrop', 2, '', '', '', '', '', '', '15', 'Hanya menggunakan Air PDAM', '', 'jprselatan', 0, '2022-04-05 04:21:28', 0, 0),
('1649132505', 'Marwansyah', 'default-user.png', 'daengruka@gmailcom', '$2y$10$/0N9K81BNUDLoZnmuhzkTu/lW489aSVbeCsMQwrit6sTgndDKel1.', '', 'Jl. Baru Hamadi', 'Cotto Daeng Ruka', 'default-image.png', 'daengruka@gmailcom', '', 'Jl. Baru Hamadi', 2, '', '', '', '', '', '', '50', '', 'hamadi', 'jprselatan', 0, '2022-04-05 04:24:20', 1, 0),
('1649132672', 'Silvia', 'default-user.png', 'blessing@gmail.com', '$2y$10$ljVWKYkaWd7jr6BeGK2NquFLZR0FjhGzh22MO1l1q8TV.qRSW4Qa.', '085298736753', 'Jl. Baru Tobati Pantai Hanadi', 'Warung Blessing', 'default-image.png', 'blessing@gmail.com', '085298736753', 'Jl. Baru Tobati Pantai Hanadi', 2, '', '', '', '', '', '', '10', 'Membeli air', '', 'jprselatan', 0, '2022-04-05 04:26:28', 0, 0),
('1649132803', 'Septi Istanti', 'default-user.png', 'warungnoken@gmail.com', '$2y$10$.eY7hte/rEJoGZeST5l7eOoyjBgMwoicWra4SLo2jWlph7kWEPyWK', '081237880547', 'Jl. Baru Tobati Pantai Hamadi', 'Warung Noken', 'default-image.png', 'warungnoken@gmail.com', '081237880547', 'Jl. Baru Tobati Pantai Hamadi', 2, '', '', '', '', '', '', '20', 'Membeli air', '', 'jprselatan', 0, '2022-04-05 04:29:16', 0, 0),
('1649732079', 'Riyanto Hartoyo', 'default-user.png', 'gudangdjarum@gmail.com', '$2y$10$AO1f504lmRdVdpkTNe/f8eylBgthTrpWk.PYgAgU1V.cpcwSj4FZu', '', 'Jl. Raya Abepura', 'PT. Djarum Berkedudukan di Kud', 'default-image.png', 'gudangdjarum@gmail.com', '', 'Jl. Raya Abepura', 4, '2643,97', '', '', '', '', '', '', '', 'kotabaru', 'abepura', 0, '2022-04-12 02:57:04', 1, 0),
('1650886341', 'SaCode Wajib Pajak', 'default-user.png', 'sacode.wajibpajak@sacode.web.id', '$2y$10$jN11Gq0XsbOZYVuC1hpp3ejrkfD6yt2L0bvkWlyYAYi1IUYqIcYJu', '082199558191', 'Expo, Waena', 'SaCode Wajib Pajak', 'default-image.png', 'sacode.wajibpajak@sacode.web.id', '082199558191', 'Expo, Waena', 1, '', '', '', '', '', '', '', '', '', 'heram', 0, '2022-04-25 11:33:40', 0, 1),
('1652063732', 'Marsya', 'default-user.png', 'kos.marsya@gmail.com', '$2y$10$U0xK/.YxSNrUaChb4qIL2e1m/9VpYSyel00gKmBDor9qFFdj5Tpha', '082197589943', 'Hamadi Gunung, Kelurahan Hamadi', 'Kos Marsya', 'default-image.png', 'kos.marsya@gmail.com', '082197589943', 'Hamadi Gunung, Kelurahan Hamadi', 2, '', '', '', '', '6', '25', '', 'Tidak menggunakan air bawah tanah (hanya menggunakan air PDAM)', '', 'jprselatan', 0, '2022-05-09 02:40:27', 0, 0),
('1652064052', 'Pdt. Heldi', 'default-user.png', 'pdt.heldi@gmail.com', '$2y$10$MveDClWYjebqi/HOJNdVQOM6Lx2nuy07B.pGiDgThgi9R9Vygu/6e', '081344632759', 'Hamadi Gunung, Kelurahan Hamadi', 'Kos Pdt. Heldi', 'default-image.png', 'pdt.heldi@gmail.com', '081344632759', 'Hamadi Gunung, Kelurahan Hamadi', 2, '', '', '', '', '7', '15', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 02:45:06', 0, 0),
('1652064325', 'Johan Marapatty', 'default-user.png', 'j.marapatty@gmail.com', '$2y$10$elV/580aiwSSH2.h3YXBFOespnf6CP9ofgBlvxM1gOPz0v3K9pmny', '082199160476', 'Hamadi Gunung, Kelurahan Hamadi', 'Kos Johan Marapatty', 'default-image.png', 'j,marapatty@gmail.com', '082199160476', 'Hamadi Gunung, Kelurahan Hamadi', 2, '', '', '', '', '8', '5', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 02:48:41', 0, 0),
('1652064529', 'Laurens J. Hamadi', 'default-user.png', 'l.j.hamadi@gmail.com', '$2y$10$ke7il5VFQREkNu3AkUtJNegWeoZf.KBfrysIDuUzRBXaBu2sHIsh.', '081248776255', 'Hamadi Hanurata, Kelurahan Hamadi', 'Kos Laurens J. Hamadi', 'default-image.png', 'l.j.hamadi@gmail.com', '081248776255', 'Hamadi Hanurata, Kelurahan Hamadi', 2, '', '', '', '', '17', '38', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 02:52:05', 1, 0),
('1652064738', 'Abdul Samadi', 'default-user.png', 'a.samadi@gmail.com', '$2y$10$s9nhK/tbMa9TffIcXnPh9uEh6uhyLLInonV3lU/nbKoVcGa2ip4X6', '081248012311', 'Hamadi Hanurata, Kelurahan Hamadi', 'Kos Abdul Samadi', 'default-image.png', 'a.samadi@gmail.com', '081248012311', 'Hamadi Hanurata, Kelurahan Hamadi', 2, '', '', '', '', '8', '25', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 02:55:17', 1, 0),
('1652065111', 'Ibu Haji', 'default-user.png', 'ibu.haji@gmail.com', '$2y$10$jtgFzmegA.C3MzKaUa9DOOCamwF.ze/CFB2BMjVlhIl/q5kTkdbOG', '081248505533', 'Hamadi Hanurata, Kelurahan Hamadi', 'Kos Ibu Haji (Hmd Hanurata)', 'default-image.png', 'ibu.haji@gmail.com', '081248505533', 'Hamadi Hanurata, Kelurahan Hamadi', 2, '', '', '', '', '14', '40', '', 'Tidak menggunakan air bawah tanah (ada air PDAM', '', 'jprselatan', 0, '2022-05-09 03:03:21', 0, 0),
('1652065535', 'Grace Mayor', 'default-user.png', 'g.mayor@gmail.com', '$2y$10$r21GYH69/tUHuNnkxCVQNOQfIZ7f8Xu9/E6CSnMFQq9Htkfq7opcK', '081344684219', 'Hamadi Hanurata, Kelurahan Hamadi', 'Kos Grace Mayor', 'default-image.png', 'g.mayor@gmail.com', '081344684219', 'Hamadi Hanurata, Kelurahan Hamadi', 2, '', '', '', '', '3', '8', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 03:08:07', 1, 0),
('1652067834', 'H. Rohim', 'default-user.png', 'h.rohim@gmail.com', '$2y$10$qjWUgmtoj6AFnYCa9z1o0e.kDGjD851/NcMTel3MFgFC6hcbKgl1S', '081248776255', 'Hamadi Hanurata, Kelurahan Hamadi', 'Kos H. Rohim', 'default-image.png', 'h.rohim@gmail.com', '081248776255', 'Hamadi Hanurata, Kelurahan Hamadi', 2, '', '', '', '', '8', '26', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 03:46:39', 1, 0),
('1652068015', 'Hendrik Dacosta', 'default-user.png', 'h.dacosta@gmail.com', '$2y$10$mgid4U/.LQGOdlL/6kUDMuwyqbFpkmi3xdjpcgzfjLwC8xtjh97wq', '0812472666626', 'Hamadi Hanurata, Kelurahan Hamadi', 'Kos Hendrik Dacosta', 'default-image.png', 'h.dacosta@gmail.com', '0812472666626', 'Hamadi Hanurata, Kelurahan Hamadi', 2, '', '', '', '', '9', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 03:49:19', 1, 0),
('1652068183', 'Bahar', 'default-user.png', 'kos.bahar@gmail.com', '$2y$10$jL3Qu4UzY47jDeo584giqeHqySiESFTgv49nkW4T58u6QZYx5NNd6', '08134416217', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Bahar (Hmd Tanjung)', 'default-image.png', 'kos.bahar@gmail.com', '08134416217', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '2', '6', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 03:52:43', 0, 0),
('1652068386', 'Hj. Sultan', 'default-user.png', 'hj.sultan@gmail.com', '$2y$10$IrmDnzr.L9Lmgt6XxDfu2.EF1kNCBFBQ.8WhguTRMTmReX0TvVYYe', '081248806665', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Sultan', 'default-image.png', 'hj.sultan@gmail.com', '081248806665', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '7', '25', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 03:55:35', 1, 0),
('1652068542', 'Hj. Marsuki', 'default-user.png', 'hj.marsuki@gmail.com', '$2y$10$LmwK9Flgw/g3bHyR0ND8HeSkai5KVxcFHlHj2s5O/QkqD42sFpvJq', '085254857727', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Marsuki', 'default-image.png', 'hj.marsuki@gmail.com', '085254857727', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '15', '50', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 03:58:10', 1, 0),
('1652068703', 'Hj. Sahuddin', 'default-user.png', 'hj.sahuddin@gmail.com', '$2y$10$N/jV9INU2d1yEJBcR0PnSuWHFsqr23ssgnrb74tNnSSoVMUdPLjSS', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos. Hj. Sahuddin', 'default-image.png', 'hj.sahuddin@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '4', '22', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:00:35', 0, 0),
('1652068848', 'Hj. Jamal', 'default-user.png', 'hj.jamal@gmail.com', '$2y$10$QGoQLq.fk.c9w2Fp9R2onetsRNleseK6G4H.o52PA6d1WOGrArcJO', '', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Hj. Jamal', 'default-image.png', 'hj.jamal@gmail.com', '', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '3', '12', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 04:02:40', 1, 0),
('1652068999', 'Markus Baka', 'default-user.png', 'm.baka@gmail.com', '$2y$10$CC556k3YUpx7WZZvkG6o.OpWDSh4cDotIoOfDJWPQsQ4uMCrPBTTG', '', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Markus Baka', 'default-image.png', 'm.baka@gmail.com', '', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '5', '6', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:05:44', 0, 0),
('1652069152', 'Gusnanto', 'default-user.png', 'gusnanto@gmail.com', '$2y$10$Yg0w/x45C1/gMO1yziBIQeWayRfwqd6hM5Vj4jHCfBvuJC73CY1y.', '082199667511', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Gusnanto', 'default-image.png', 'gusnanto@gmail.com', '082199667511', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '6', '20', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:08:08', 0, 0),
('1652069295', 'Eko Subandrio', 'default-user.png', 'e.subandrio@gmail.com', '$2y$10$houGc/5BYn6/zZKauibfiulY7KEOokLDl6W4xb8wIB40IZh0H5llG', '081226032227', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Eko Subandrio', 'default-image.png', 'e.subandrio@gmail.com', '081226032227', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '4', '18', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:11:00', 0, 0),
('1652069570', 'Yohanis Tungke', 'default-user.png', 'y.tungke@gmail.com', '$2y$10$SPze1gn3C2ApYxYYq.wfDOR7paSD2cuV4vODXoPbQHVuiM8v3j11u', '081248606446', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Yohanis Tungke', 'default-image.png', 'y.tungke@gmail.com', '081248606446', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '17', '56', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 04:16:54', 1, 0),
('1652069823', 'Hj. Syarifudin', 'default-user.png', 'hj.syarifudin@gmail.com', '$2y$10$0opJcEgwplCTYFepNsLpm.c7KLALjRf5Xu86fmrpni1d9OSSPgyKW', '08124887805', 'J. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Hj. Syarifudin', 'default-image.png', 'hj.syarifudin@gmail.com', '08124887805', 'J. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '4', '10', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 04:19:59', 1, 0),
('1652070008', 'Sudirman', 'default-user.png', 'sudirman@gmail.com', '$2y$10$Vx42fsWSuKXqpAatcp3Gc.gmtMV/p5Z1GPV68ppG.nu/ZaWqU5bYy', '082239545000', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Sudirman', 'default-image.png', 'sudirman@gmail.com', '082239545000', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '5', '16', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:24:24', 0, 0),
('1652070289', 'Hj. Fatauddin', 'default-user.png', 'hj.fatauddin@gmail.com', '$2y$10$b5jxc0nEhZs.ddzgBZ17x.IAaFpdScMtgP1iBoes1Cq6lz3YY8lVC', '082199454817', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Hj. Fatauddin', 'default-image.png', 'hj.fatauddin@gmail.com', '082199454817', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '7', '8', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 04:27:02', 1, 0),
('1652070458', 'Yunus Kala', 'default-user.png', 'y.kala@gmail.com', '$2y$10$4VglTHPqjVsixEJ6iJN.9.ywmkqDTex7fnpHy.8ZiKQVqQ2izpSOu', '081240943842', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Yunus Kala', 'default-image.png', 'y.kala@gmail.com', '081240943842', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '9', '19', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 04:30:31', 1, 0),
('1652070641', 'Endang', 'default-user.png', 'kos.endang@gmail.com', '$2y$10$OCPoJmcEQOPM54/kDu5t8e6M2/mZ6nlnscuTj5OQFUJ7oamnQ2d7q', '081248535719', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Endang', 'default-image.png', 'kos.endang@gmail.com', '081248535719', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '13', '35', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 04:34:52', 1, 0),
('1652070922', 'Sihombing', 'default-user.png', 'kos.sihombing@gmail.com', '$2y$10$NsBW3OMhSMPtWOXC3LC26eIxU.RxhNC8LggrgQEkVzndEUc/QHfkK', '082197791439', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Sihombing', 'default-image.png', 'kos.sihombing@gmail.com', '082197791439', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '10', '25', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:39:44', 0, 0),
('1652071222', 'Hj. Efendi Ibrahim', 'default-user.png', 'hj.e.ibrahim@gmail.com', '$2y$10$FYsjt0KZohQtBrdLPXG81.XlN2TysDLt871PpmTbtP93TFtEyRuAu', '085244775411', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Hj. Efendi Ibrahim', 'default-image.png', 'hj.e.ibrahim@gmail.com', '085244775411', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '10', '29', '', 'Tidak menggunakan air bawah tanah (beli air)', '', 'jprselatan', 0, '2022-05-09 04:44:00', 0, 0),
('1652071447', 'Vergius Paisei', 'default-user.png', 'v.paisei@gmail.com', '$2y$10$F3vIlWtKyGIIAh3BF8j46.A6UApT3yfLegnmh4cqg4UBs38y138sS', '081344600700', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Vergius Paisei', 'default-image.png', 'v.paisei@gmail.com', '081344600700', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '4', '15', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:48:27', 0, 0),
('1652071718', 'Mina Sipayu', 'default-user.png', 'm.sipayu@gmail.com', '$2y$10$aPlvnEL35Ej//TMjWyPGSO0v.DvshXJY29iWCBLk3tcINmDMde63y', '', 'Hamadi Gunung, Kelurahan Hamadi', 'Kos Mina Sipayu', 'default-image.png', 'm.sipayu@gmail.com', '', 'Hamadi Gunung, Kelurahan Hamadi', 2, '', '', '', '', '', '', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:50:48', 0, 0),
('1652071856', 'Anike Kafiar', 'default-user.png', 'a.kafiar@gmail.com', '$2y$10$rleGKKVzTDW.bz8ytDicXuVVWLcWA56f7WYKqc8iOslt/FDqzo2ey', '0813433899334', 'Hamadi Gunung, Kelurahan Hamadi', 'Kos Anike Kafiar', 'default-image.png', 'a.kafiar@gmail.com', '0813433899334', 'Hamadi Gunung, Kelurahan Hamadi', 2, '', '', '', '', '6', '25', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:53:33', 0, 0),
('1652072034', 'Alfons Marpaung', 'default-user.png', 'a.marpaung@gmail.com', '$2y$10$sBs6O3CQwQRH0FR7mAeiie81KIuXBZ375fKKYAhFAMt4jkusgBrzm', '085244293955', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Alfons Marpaung', 'default-image.png', 'a.marpaung@gmail.com', '085244293955', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '8', '30', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:56:50', 0, 0),
('1652072221', 'Viktor Wanda', 'default-user.png', 'v.wanda@gmail.com', '$2y$10$As7NgPnzu/gGsULUyKK6/u63bGczJUJJgYADLk3Gq5Gy76WskWo7.', '085244008071', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Viktor Wanda', 'default-image.png', 'v.wanda@gmail.com', '085244008071', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '6', '0', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 04:59:34', 0, 0),
('1652072383', 'Kosmos Imbiri', 'default-user.png', 'k.imbiri@gmail.com', '$2y$10$uw2qmePf7e06u2BtNqfS5e0kflh53UWJoCyVdBbP0EPsKPSbWjyS.', '081247705795', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Kosmos Imbiri', 'default-image.png', 'k.imbiri@gmail.com', '081247705795', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '13', '25', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:03:23', 1, 0),
('1652072615', 'Stef Dumban', 'default-user.png', 's.dumban@gmail.com', '$2y$10$FCxzfKX6cZzyDzPX8wYXi.E3HSl6GGzWvSECgiIuw7LbTdOuXkamC', '', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Stef Dumban', 'default-image.png', 's.dumban@gmail.com', '', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '11', '0', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:05:21', 1, 0),
('1652072731', 'Charles Paransi', 'default-user.png', 'c.paransi@gmail.com', '$2y$10$WonURKwxoyprEntmubH16OhFWVzVx2ihwhT1Rq9WQIOQm14UX/aI2', '082197755149', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 'Kos Charles Paransi', 'default-image.png', 'c.paransi@gmail.com', '082197755149', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 2, '', '', '', '', '6', '23', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:09:31', 1, 0),
('1652072995', 'Pdt. Olga Wandobo', 'default-user.png', 'o.wandobo@gmail.com', '$2y$10$zLriOZH28quUAZg9zsqVi.hmBhW4.bBDHxYHCpm4xuH3jansXnCFq', '', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 'Kos Pdt. Olga Wandobo', 'default-image.png', 'o.wandobo@gmail.com', '', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 2, '', '', '', '', '4', '16', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:12:36', 0, 0),
('1652073175', 'Arsyut', 'default-user.png', 'arsyut@gmail.com', '$2y$10$mhfHaQIzMf73EFYP8VSYqOjgjfoujY0ZpdFhtiARwJw1M9vx2/.hW', '', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 'Kos Arsyut', 'default-image.png', 'arsyut@gmail.com', '', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 2, '', '', '', '', '2', '1', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:15:30', 0, 0),
('1652073492', 'Noverly Jap', 'default-user.png', 'n.jap@gmail.com', '$2y$10$ZT9DlMjlUFfzIilpl.340.XLjOWIOKgFBzobR7LVhSlgXKHLRq.7W', '', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 'Kos Noverly Jap', 'default-image.png', 'n.jap@gmail.com', '', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 2, '', '', '', '', '8', '30', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:20:11', 1, 0),
('1652073624', 'Sukono', 'default-user.png', 'sukono@gmail.com', '$2y$10$XKGLboovIdaZUBjm9ZzRM.uK0rIbjSyJlfiQxaQ/VykRyrasqmun2', '081344658089', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 'Kos Sukono', 'default-image.png', 'sukono@gmail.com', '081344658089', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 2, '', '', '', '', '10', '29', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:22:39', 1, 0),
('1652073770', 'H. Maskur', 'default-user.png', 'h.maskur@gmail.com', '$2y$10$OQKuOYzid66l/bWOWomWWO.v1IfpCIj2uWE3AkTHovoiADmI2i.8u', '082198445865', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos H. Maskur', 'default-image.png', 'h.maskur@gmail.com', '082198445865', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '6', '22', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:25:15', 1, 0),
('1652073923', 'Ruddi', 'default-user.png', 'ruddi@gmail.com', '$2y$10$.6y0BxVg/LbND8olc5YU2uXt59L6MSWDL5iNfuavfmwQXG04wJKzm', '081240566386', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 'Kos Ruddi', 'default-image.png', 'ruddi@gmail.com', '081240566386', 'Jl. Hamadi Angkatan Laut, Kelurahan Hamadi', 2, '', '', '', '', '36', '52', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:28:23', 0, 0),
('1652074110', 'Ninoy Ayomi', 'default-user.png', 'n.ayomi@gmail.com', '$2y$10$VA4SYSmvSr7a/PPySAUfo.SdpsZ7VPX6Et4GBQpFI9Gcfp3Vc0LKW', '081248434433', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Ninoy Ayomi', 'default-image.png', 'n.ayomi@gmail.com', '081248434433', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '7', '22', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:30:51', 0, 0),
('1652074259', 'Hari Rafi Kotari', 'default-user.png', 'h.r.kotari@gmail.com', '$2y$10$Cl8CSARaU8jS/xRi17zbn.IC9ZKgSPrzj2lQbMjSKRXs/PTYT9tAW', '085240309714', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Hari Rafi Kotari', 'default-image.png', 'h.r.kotari@gmail.com', '085240309714', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '7', '28', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:33:31', 0, 0),
('1652074424', 'Alin', 'default-user.png', 'kos.alin@gmail.com', '$2y$10$3CN6fMJgsrt2pMbwN/TyI.lfYeTE9TcY9yegpl1mLIbofJkvxxSRW', '0821989062503', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 'Kos Alin', 'default-image.png', 'kos.alin@gmail.com', '0821989062503', 'Jl. Baru Tobati Pantai Hamadi, Kelurahan Hamadi', 2, '', '', '', '', '6', '18', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:36:12', 0, 0),
('1652074663', 'Adi Suratno', 'default-user.png', 'a.suratno@gmail.com', '$2y$10$keUAO/KTbZnSu9exL0vQuuazr/6E8wlrDvIrki7RvVmOZzfM4siVe', '082148288000', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Adi Suratno', 'default-image.png', 'a.suratno@gmail.com', '082148288000', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '5', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:39:34', 1, 0),
('1652074781', 'Basri Sanusi', 'default-user.png', 'b.sanusi@gmail.com', '$2y$10$Y1vtVDSHo42lxpG2OUnLwO8iJFfpdLoanMInQ4wzUHHXNZf1p6REq', '08114817525', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Basri Sanusi', 'default-image.png', 'b.sanusi@gmail.com', '08114817525', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '6', '22', '', '', 'hamadi', 'jprselatan', 0, '2022-05-09 05:42:35', 1, 0),
('1652074991', 'Musa Umbora', 'default-user.png', 'm.umbora@gmail.com', '$2y$10$fjqICgqRMrHVYrSFPJkrMOa8.ffCBIBv5dn5bxXU89XDGK4Zo0nh.', '082397069051', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Musa Umbora', 'default-image.png', 'm.umbora@gmail.com', '082397069051', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '1', '3', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:45:50', 0, 0),
('1652075207', 'Irai', 'default-user.png', 'irai@gmail.com', '$2y$10$eWZWHx9jHAS1L9x/55lGHuYomZ8Mfppfu/lmp9n6CmgJIb2.HGFgC', '081248288000', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Irai', 'default-image.png', 'irai@gmail.com', '081248288000', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '1', '3', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:49:43', 0, 0),
('1652075394', 'Imanuel Batlyoel', 'default-user.png', 'i.batlyoel@gmail.com', '$2y$10$Oq4EGVGQFq0kwXdEEGN1iu8P9FYTpt6G.YFtvGiSaIJyXdiR8FZxW', '082238418575', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Imanuel Batlyoel', 'default-image.png', 'i.batlyoel@gmail.com', '082238418575', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '5', '26', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:52:17', 0, 0),
('1652075547', 'Yaser Akbar Munir', 'default-user.png', 'y.a.munir@gmail.com', '$2y$10$mxSIM3zchGjh8Usyhr1u5e0VEv2ItkChyAZONTnKSJz1dSoU.Aece', '085283258294', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Yaser Akbar Munir', 'default-image.png', 'y.a.munir@gmail.com', '085283258294', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '5', '9', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:55:26', 0, 0),
('1652075735', 'Wiriyawan', 'default-user.png', 'wiriyawan@gmail.com', '$2y$10$jc5tncgT658Qi3YutIFS7ePuI/THQNnfQ7GRO6Lnp5ww68hsuxOp2', '082139320361', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Wiriyawan', 'default-image.png', 'wiriyawan@gmail.com', '082139320361', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '8', '18', '', 'Tidak menggunakan air bawah tanah (ada air PDAM)', '', 'jprselatan', 0, '2022-05-09 05:57:44', 0, 0),
('1652312292', 'Hj Manti', 'default-user.png', 'rkhjmanti@gmail.com', '$2y$10$mJh/9Jduah5o1xAN2zpU4.qawlPxe2HmocjNxPcMlgaD.7cQ/g2Ma', '085254062423', 'RT 3 RW 3 Tanah Hitam', 'Rumah Kos Hj Manti', 'default-image.png', 'rkhjmanti@gmail.com', '', 'RT 3 RW 3 Tanah Hitam', 2, '', '', '', '', '16', '14', '', '', 'asano', 'abepura', 0, '2022-05-11 23:40:37', 1, 0),
('1655255681', 'Satarudin', 'default-user.png', 'satarudin@gmail.com', '$2y$10$XkDylknC4GRaTC2McnChyeCBT2IAe3cGAT9mNMHFsNgYWe5W02cdC', '085254321158', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Satarudin', 'default-image.png', 'satarudin@gmail.com', '085254321158', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '3', '5', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 01:18:06', 0, 0),
('1655255907', 'Satarudin', 'default-user.png', 'satarudin2@gmail.com', '$2y$10$cExXlzl1eevnoLkTw165DeJB282h2ePUEa7hZ8wmbPMP2TwuudLHe', '085252321158', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Satarudin 2', 'default-image.png', 'satarudin2@gmail.com', '085252321158', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '6', '7', '', 'Tidak menggunakan air bawah tanah', '', 'jprselatan', 0, '2022-06-15 01:21:25', 0, 0),
('1655256202', 'Amriyanti', 'default-user.png', 'amriyanti@gmail.com', '$2y$10$D/buHtawAndBhWqunUVlwOlQJLNSjcqKjazv26b7Ptt7HSgjozS52', '081213132975', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Amriyanti', 'default-image.png', 'amriyanti@gmail.com', '081213132975', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '6', '25', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 01:26:10', 0, 0),
('1655256378', 'Bahlil', 'default-user.png', 'bahlil@gmail.com', '$2y$10$DCLTR3F4DHLU0bx750z/Y.LEl6sRh505LAFSmkHZ.gbB9knNVRy9W', '081343355725', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Bahlil', 'default-image.png', 'bahlil@gmail.com', '081343355725', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '36', '62', '', '', 'hamadi', 'jprselatan', 0, '2022-06-15 01:29:11', 1, 0),
('1655256585', 'Hj. Kursia', 'default-user.png', 'hj.kursia@gmail.com', '$2y$10$QamZeZmA9ImvGPDWrxKy5e90jGqDte3D7DIz88h4meKJfRHdFmcwO', '085244295470', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Hj. Kursia', 'default-image.png', 'hj.kursia@gmail.com', '085244295470', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '3', '110', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 01:33:01', 0, 0),
('1655256791', 'Ancu', 'default-user.png', 'ancu@gmail.com', '$2y$10$Gggtv5eKTCceTJw6ZSkQ6unLV68XF/cYtTP/bV0V9SMtHk0y7sq8G', '085244295470', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Ancu', 'default-image.png', 'ancu@gmail.com', '085244295470', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '3', '10', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 01:36:15', 0, 0),
('1655256993', 'Ferry', 'default-user.png', 'ferry@gmail.com', '$2y$10$CpYHD33g/XuijJjvTEbea.GRu3CZkWCX0XADVK/e.t1ksKf/YZFVy', '081344957268', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 'Kos Ferry', 'default-image.png', 'ferry@gmail.com', '081344957268', 'Hamadi Wajib Senyum, Kelurahan Hamadi', 2, '', '', '', '', '3', '9', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 01:38:49', 0, 0),
('1655257165', 'Ibrahim Loleng', 'default-user.png', 'i.loleng@gmail.com', '$2y$10$kFE.hmIF/fCh4R1vYvyhV.6HPLddbMstCdjgIxiYpGDPrBMm23eRa', '081228692765', 'Hamadi Tanjung, Kelurahan hamadi', 'Kos Ibrahim Loleng', 'default-image.png', 'i.loleng@gmail.com', '081228692765', 'Hamadi Tanjung, Kelurahan hamadi', 2, '', '', '', '', '6', '28', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 01:43:02', 1, 0),
('1655257618', 'Hj. Syamsiah', 'default-user.png', 'hj.syamsiah@gmail.com', '$2y$10$qD8l0RyQvHSBXAbyvl9oNO13Hqk3oN5FOSsTKL2Z.UdpIChjh1eo2', '081299201134', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hj. Syamsiah', 'default-image.png', 'hj.syamsiah@gmail.com', '081299201134', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '5', '23', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 01:47:59', 1, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_kelurahan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1655257740', 'Agustina Ireuuw', 'default-user.png', 'a.ireeuw@gmail.com', '$2y$10$aqtcLCQASKqWIav5L2hcpugFiF4rGVoatCne772rcx88EYaD..me2', '081248808577', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Agustina Ireeuw', 'default-image.png', 'a.ireeuw@gmail.com', '081248808577', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '6', '20', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 01:51:44', 1, 0),
('1655257928', 'Hj. Ambo', 'default-user.png', 'hj.ambo@gmail.com', '$2y$10$kcXHe3hyIIaz07uVmybsSOCvJyO/vu9mhB.HHYh4pdMRNvOGbPQli', '082238539449', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hj. Ambo', 'default-image.png', 'hj.ambo@gmail.com', '082238539449', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '9', '25', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 01:54:27', 1, 0),
('1655258092', 'Hj. Mustafa', 'default-user.png', 'hj.mustafa@gmail.com', '$2y$10$Wd1tveTGr6TpSlZe7bAGmOZgIquNzGmBWGDUzJNMXmAcgukw7c3Yq', '', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hj. Mustafa', 'default-image.png', 'hj.mustafa@gmail.com', '', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '4', '4', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 01:57:20', 1, 0),
('1655258246', 'Hendrik Karubaba', 'default-user.png', 'h.karubaba@gmail.com', '$2y$10$RSN0iLJ19GCTsKkqz13UmO4dfFcVeKNZDKH6cCNjh9W.AG7xzwcVy', '081247350223', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hendrik Karubaba', 'default-image.png', 'h.karubaba@gmail.com', '081247350223', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '5', '15', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 01:59:44', 0, 0),
('1655258392', 'Ida', 'default-user.png', 'kos.ida@gmail.com', '$2y$10$r2SoMqqG0wLxwm2.NVDyHOCg7QYpVw5eGWXPCmMdGIIjQtqN3Cjp6', '082237304414', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Ida', 'default-image.png', 'kos.ida@gmail.com', '082237304414', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '8', '20', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:02:00', 0, 0),
('1655258536', 'La Andi', 'default-user.png', 'la.andi@gmail.com', '$2y$10$SgfVAWNUs/.OzrA2OcRPSuyF3uAMBBiHLuvDUzELsNkW/Hs6V31Ae', '081344452897', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos La Andi', 'default-image.png', 'la.andi@gmail.com', '081344452897', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '15', '65', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:04:48', 0, 0),
('1655258697', 'Hj. Laga', 'default-user.png', 'hj.laga@gmail.com', '$2y$10$bWLTpVXyV/w6ocPciMzDY.QnToeIZoPMYLL9jjFaPq5fRCg8f75Fa', '081284017301', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hj. Laga', 'default-image.png', 'hj.laga@gmail.com', '081284017301', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '2', '6', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:07:41', 0, 0),
('1655258867', 'Iva', 'default-user.png', 'iva@gmail.com', '$2y$10$UV4suaSV94s70FC2VjN3B.MTK34oKijjEDen5a6TJFEXCM2DvjwWm', '', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Iva', 'default-image.png', 'iva@gmail.com', '', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '4', '22', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:10:06', 0, 0),
('1655259025', 'La Suri', 'default-user.png', 'la.suri@gmail.com', '$2y$10$cBuqYAf8AHr/yr0CEnuCeOvGwMwBLeooniOVhZcO.v19ai78G1RPu', '', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos La Suri', 'default-image.png', 'la.suri@gmail.com', '', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '3', '10', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:12:50', 0, 0),
('1655259298', 'Hj. Waek', 'default-user.png', 'hj.waek@gmail.com', '$2y$10$cX1pZrifICBMhdNHMWJ8UO117/We5dwj.sx0tBMxrrgUciHQfIxwu', '', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hj. Waek', 'default-image.png', 'hj.waek@gmail.com', '', 'Hamadi Tanjung, Kelurahan Hamadi', 1, '', '', '', '', '3', '7', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:17:19', 0, 0),
('1655259451', 'Wa Andu', 'default-user.png', 'wa.andu@gmail.com', '$2y$10$Z2fRnwPYVX2tAH3IlyaKLu91TXIjiQunMx8ZBPOnYHgxW9mMfQDUa', '081248454001', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Wa Andu', 'default-image.png', 'wa.andu@gmail.com', '081248454001', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '9', '22', '', '', 'hamadi', 'jprselatan', 0, '2022-06-15 02:21:08', 1, 0),
('1655259677', 'Wasia/Suhardin', 'default-user.png', 'wasia.suhardin@gmail.com', '$2y$10$TXivqZ2zPlvH.k10Lipln.q1G1dSoJ3nOAT5TEMzWwQBn4Z3t4S2i', '085254586487', 'Hamadi Resimen, Kelurahan Hamadi', 'Kos Wasia / Suhardin', 'default-image.png', 'wasia.suhardin@gmail.com', '085254586487', 'Hamadi Resimen, Kelurahan Hamadi', 2, '', '', '', '', '7', '25', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:24:21', 0, 0),
('1655260136', 'Haeruddin', 'default-user.png', 'haeruddin@gmail.com', '$2y$10$qt/b8cfSNNYh.TBt6KhRy.2nvW74RK.TXKGgRfRJzyomtvHScsGE6', '082214217357', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Haeruddin', 'default-image.png', 'haeruddin@gmail.com', '082214217357', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '3', '6', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:32:04', 0, 0),
('1655260341', 'Hj. Tini', 'default-user.png', 'hj.tini@gmail.com', '$2y$10$Kq17o4qqCcGpxxresgqG1um3ehenHqZgjKn59aaSdt9n86ZL0zlQO', '085255559281', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Hj. Tini', 'default-image.png', 'hj.tini@gmail.com', '085255559281', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '6', '3', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:36:11', 0, 0),
('1655260577', 'Sahaja', 'default-user.png', 'sahaja@gmail.com', '$2y$10$oq93dMoLwkHarEk/ieO8P.XKq19NIkwa.etDH4X7uZAJdhVBFk.q2', '085244115928', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Sahaja', 'default-image.png', 'sahaja@gmail.com', '085244115928', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '2', '10', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:38:52', 0, 0),
('1655260743', 'Hj. Rahmatia', 'default-user.png', 'hj.rahmatia@gmail.com', '$2y$10$rphJtU5Hw9HsX1MCUwTcj.ycUSI4s9yHhPtF7tVLqaC0d5xqHAvQ6', '', 'Hamadi Poncong, Kelurahan Hamadi', 'Kos Hj. Rahmatia', 'default-image.png', 'hj.rahmatia@gmail.com', '', 'Hamadi Poncong, Kelurahan Hamadi', 2, '', '', '', '', '12', '35', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:41:16', 0, 0),
('1655260885', 'Surhani', 'default-user.png', 'surhani@gmail.com', '$2y$10$TD7oHf6ctH.k5yVKgYI5guDR7wGTbhliPyZqrpB5aiASkGqQ4wMAK', '', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Surhani', 'default-image.png', 'surhani@gmail.com', '', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '2', '8', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:43:15', 0, 0),
('1655261001', 'Rahmat', 'default-user.png', 'rahmat@gmail.com', '$2y$10$SQ0nlAdkzQJYrZb6bjIANO.KluvqzGZ/.4VQnx.uZSx66OG5dM2BO', '', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Rahmat', 'default-image.png', 'rahmat@gmail.com', '', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '4', '15', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 02:45:43', 0, 0),
('1655261151', 'Abdul Rahim', 'default-user.png', 'a.rahim@gmail.com', '$2y$10$w5bmLTFxj3Szybyu3n3BbeXBh9gKWZ.SGsQ185thLr1Ojvr/.o7ty', '081344100669', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Abdul Rahim', 'default-image.png', 'a.rahim@gmail.com', '081344100669', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '4', '15', '', '', 'hamadi', 'jprselatan', 0, '2022-06-15 02:47:54', 1, 0),
('1655261293', 'Arif', 'default-user.png', 'kos.arif@gmail.com', '$2y$10$/yiFIHQOZXKkY6I9fiNaLu3VxP4A067KUKYcO0.fNPzIqGlRvOEzO', '081290004546', 'Hamadi Pontong, Kelurahan Hamadi', 'Kos Arif', 'default-image.png', 'kos.arif@gmail.com', '081290004546', 'Hamadi Pontong, Kelurahan Hamadi', 2, '', '', '', '', '8', '24', '', '', 'hamadi', 'jprselatan', 0, '2022-06-15 02:50:22', 1, 0),
('1655261430', 'Hj. Tima', 'default-user.png', 'hj.tima@gmail.com', '$2y$10$9wByMPlDg7AcrCHn0bqtBO6IpkArze9.DT7MTtKSFPxnV9v7rOthu', '082199104741', 'Hamadi Hotel Asia, Kelurahan Hamadi', 'Kos Hj. Tima', 'default-image.png', 'hj.tima@gmail.com', '082199104741', 'Hamadi Hotel Asia, Kelurahan Hamadi', 2, '', '', '', '', '7', '21', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 02:53:52', 1, 0),
('1655261642', 'Rustan', 'default-user.png', 'rustan@gmail.com', '$2y$10$4ItKoNKMy7XZ1e1y5ee1D.sBtjORZ/LIleF3Fncy4ui1HZ46PASBu', '0812474000873', 'Hamadi Hotel Asia, Kelurahan Hamadi', 'Kos Rustan', 'default-image.png', 'rustan@gmail.com', '0812474000873', 'Hamadi Hotel Asia, Kelurahan Hamadi', 2, '', '', '', '', '2', '4', '', 'Satu sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-15 02:56:26', 1, 0),
('1655261801', 'Irma', 'default-user.png', 'irma@gmail.com', '$2y$10$o6AwjzvUqPwipEV3ePWgse61xqQaRxwCpY4/tn0P3hf9803WTtYWy', '', 'Hamadi Hotel Asia, Kelurahan Hamadi', 'Kos Irma', 'default-image.png', 'irma@gmail.com', '', 'Hamadi Hotel Asia, Kelurahan Hamadi', 2, '', '', '', '', '10', '28', '', 'Satus sumur gali', 'hamadi', 'jprselatan', 0, '2022-06-15 02:59:12', 1, 0),
('1655261982', 'Saudin', 'default-user.png', 'saudin@gmail.com', '$2y$10$HCmTXVheFqfEqBPpFPguGuzWBJatHJCZa.xAZqt/JRTrcM/C6FOHq', '081248017389', 'Hamadi Hotel Asia, Kelurahan Hamadi', 'Kos Saudin', 'default-image.png', 'saudin@gmail.com', '081248017389', 'Hamadi Hotel Asia, Kelurahan Hamadi', 2, '', '', '', '', '3', '7', '', 'Satu sumur gali', 'hamadi', 'jprselatan', 0, '2022-06-15 03:01:57', 1, 0),
('1655262132', 'Lasabah', 'default-user.png', 'lasabah@gmail.com', '$2y$10$gjvJXXCMf5MlSnc1.RUuqOAPHbvOpPRGeYmXick/yHYhL5NUnFAFO', '082349902652', 'Hamadi Hotel Asia, Kelurahan Hamadi', 'Kos Lasabah', 'default-image.png', 'lasabah@gmail.com', '082349902652', 'Hamadi Hotel Asia, Kelurahan Hamadi', 2, '', '', '', '', '3', '10', '', 'Satu sumur gali', 'hamadi', 'jprselatan', 0, '2022-06-15 03:04:55', 1, 0),
('1655262312', 'Hj. Hasia Wahab', 'default-user.png', 'hj.h.wahab@gmail.com', '$2y$10$6hdMzOKBfhBDtwB7Wspd3eUIn8VScJfrnrYqLT4TU9rU7Vu.SOCpy', '081228692752', 'Hamadi Tanjung, Kelurahan Hamadi', 'Kos Hj. Hasia Wahab', 'default-image.png', 'hj.h.wahab@gmail.com', '081228692752', 'Hamadi Tanjung, Kelurahan Hamadi', 2, '', '', '', '', '2', '20', '', 'Satu sumur gali', 'hamadi', 'jprselatan', 0, '2022-06-15 03:08:37', 1, 0),
('1655264353', 'Hj. Mustajin', 'default-user.png', 'hj.mustakin@gmail.com', '$2y$10$DLwGfCCbjUsaXjxmid2gKeeyoiuysxnn0LNkUdpKtVQwoHcKgF4XC', '082292041224', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Hj. Mustakin', 'default-image.png', 'hj.mustakin@gmail.com', '082292041224', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '18', '37', '', '', 'hamadi', 'jprselatan', 0, '2022-06-15 03:43:53', 1, 0),
('1655264641', 'Ahmad', 'default-user.png', 'kos.ahmad@gmail.com', '$2y$10$c/f1ieaRZjcwaZVPbaQ75OJpFLYKZLI4.LK4dRCerS0BBJIe.Lgq2', '085244750266', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Ahmad', 'default-image.png', 'kos.ahmad@gmail.com', '085244750266', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '6', '18', '', 'Tidak menggunakan air bawah tanah', '', 'jprselatan', 0, '2022-06-15 03:46:19', 0, 0),
('1655264785', 'Rosmini', 'default-user.png', 'rosmini@gmail.com', '$2y$10$Dg1zlRY3acOrduE8n3T/wuUsKTabSsbYJ.BJUunAQGr.zXXZpohly', '081355951136', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Rosmini', 'default-image.png', 'rosmini@gmail.com', '081355951136', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '14', '36', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 03:48:43', 0, 0),
('1655264932', 'Erna', 'default-user.png', 'erna@gmail.com', '$2y$10$I7vJPA27nUkO6hE3gEStdeHq/9XBSkaPhz0jxfctvOMxgC545p6i6', '081355376078', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Erna', 'default-image.png', 'erna@gmail.com', '081355376078', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '11', '35', '', '', 'hamadi', 'jprselatan', 0, '2022-06-15 03:50:42', 1, 0),
('1655265110', 'Nursaida', 'default-user.png', 'nursaida@gmail.com', '$2y$10$qzMZs0F6UFMUsWf7hsC3heSTMbk6YQ1hb5sjV3xXQeDKa8bjhtEYe', '082289475587', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Nursaida', 'default-image.png', 'nursaida@gmail.com', '082289475587', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '11', '29', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 03:53:55', 0, 0),
('1655265243', 'Tiar', 'default-user.png', 'tiar@gmail.com', '$2y$10$Rc.s2bSdv2tEB9WaE0uFa.Q/B8aK4ybq6KeZnAHU0p9JcFhXjnBqW', '082199123757', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Tiar', 'default-image.png', 'tiar@gmail.com', '082199123757', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '7', '14', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-15 03:56:14', 0, 0),
('1655774635', 'Winda', 'default-user.png', 'winda@gmail.com', '$2y$10$ChPt93HalnZlE6fH1vD3buF4WrRxUO1RbkHHjFphAgLiuuyuG3ExO', '', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Winda', 'default-image.png', 'winda@gmail.com', '', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '7', '20', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-21 01:26:06', 0, 0),
('1655774808', 'Tiar 2', 'default-user.png', 'tiar2@gmail.com', '$2y$10$g6MzOEjpgrRQsG9hhlM.h.MP5R.HRPfzynd04qCaj9v1iVLLWhATa', '082199123757', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Tiar 2', 'default-image.png', 'tiar2@gmail.com', '082199123757', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '2', '2', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-21 01:31:12', 0, 0),
('1655775407', 'Syamsiah', 'default-user.png', 'syamsiah@gmail.com', '$2y$10$ROVIxD60ZN5iNFJKB9V6d.QPt6oEK1n7YjR7zo01OTez4MQv.C5DW', '081247565622', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Syamsiah', 'default-image.png', 'syamsiah@gmail.com', '081247565622', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '10', '30', '', '', 'hamadi', 'jprselatan', 0, '2022-06-21 01:39:03', 1, 0),
('1655775578', 'Hj. Irma', 'default-user.png', 'hj.irma@gmail.com', '$2y$10$WJyQaTpr55EQ9UmtViUkGOVtLNmBrindMGEk3SW8GseOGJtxenmxG', '082199906464', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Hj. Irma', 'default-image.png', 'hj.irma@gmail.com', '082199906464', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '8', '24', '', '', 'hamadi', 'jprselatan', 0, '2022-06-21 01:47:50', 1, 0),
('1655776239', 'Baharuddin', 'default-user.png', 'baharuddin@gmail.com', '$2y$10$ftloVPyDKQymxnbvJs2USOyXV2bP0DxFPjVC5NYtN1m3no8POUcz.', '', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Baharuddin', 'default-image.png', 'baharuddin@gmail.com', '', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '12', '29', '', '', 'hamadi', 'jprselatan', 0, '2022-06-21 01:52:58', 1, 0),
('1655776391', 'Hj. Abas', 'default-user.png', 'hj.abas@gmail.com', '$2y$10$lIcnELmGwAfmtcT0fgt4su5UIVKORfv2op/cSoNV9oT.EcbeK2RFG', '081271908544', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Hj. Abas', 'default-image.png', 'hj.abas@gmail.com', '081271908544', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '3', '10', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-21 01:55:17', 0, 0),
('1655776882', 'Mirna', 'default-user.png', 'mirna@gmail.com', '$2y$10$c/ulCdLGy8fBKJvdYvL1zO4acDkiWQBeKUAwmph3v8CSUw50kybyC', '081247774748', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Mirna', 'default-image.png', 'mirna@gmail.com', '081247774748', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '4', '14', '', '', 'hamadi', 'jprselatan', 0, '2022-06-21 02:03:31', 1, 0),
('1655777054', 'Ibrahim', 'default-user.png', 'ibrahim@gmail.com', '$2y$10$t2dOXJkWdLGxacVgjfEJZ.qL7k/gURt1wAMUJvC71.7bQZqcHUa/.', '082346975012', 'Hamadi Perikanan, Kelurahan Hamadi', 'Kos Ibrahim', 'default-image.png', 'ibrahim@gmail.com', '082346975012', 'Hamadi Perikanan, Kelurahan Hamadi', 2, '', '', '', '', '11', '28', '', 'Tidak menggunakan air bawah tanah', '', 'jprselatan', 0, '2022-06-21 02:06:29', 0, 0),
('1655777219', 'Messy', 'default-user.png', 'messy@gmail.com', '$2y$10$0G86jcCzxtOdjPPAiOjj8.nxZ4Lgfgf/uBuwkEK9hci1yrmRapgR2', '0813444777834', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Messy', 'default-image.png', 'messy@gmail.com', '0813444777834', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '16', '45', '', '', 'hamadi', 'jprselatan', 0, '2022-06-21 02:08:59', 1, 0),
('1655777387', 'Hj. Saka Siti Hasana', 'default-user.png', 'hj.s.s.hasana@gmail.com', '$2y$10$O6iCMwcT9p/xzaBBU/06yOiMsb2z10nddPim67PIlk3HTzfZzZUd6', '085254154151', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Hj. Saka Siti Hasana', 'default-image.png', 'hj.s.s.hasana@gmail.com', '085254154151', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '21', '30', '', '', 'hamadi', 'jprselatan', 0, '2022-06-21 02:27:05', 1, 0),
('1655794758', 'SaCode Wajib Pajak Simulation', 'default-user.png', 'sacode.wajibpajak@sacode.web.id', '$2y$10$oNKRtcY6kHiCcPUyR2jW4OCATsSEgbwFDkTLM1qvAbMRilbmaY6GW', '082199558191', 'Heram, Kota Jayapura, Papua.', 'SaCode Wajib Pajak Simulation', 'default-image.png', 'sacode.wajibpajak@sacode.web.id', '082199558191', 'Heram, Kota Jayapura, Papua.', 1, '234', '234', 'Ada', 'Ada', '234', '234', '234', 'Tess', '', 'heram', 0, '2022-06-21 07:00:15', 0, 1),
('1655868834', 'Arod Imbiri', 'default-user.png', 'arodimbiri@gmail.com', '$2y$10$wMhNnlGLyFHTV2q9rShhIOkpEZfs8oY3NoyZUiCZSy.Gqdm4qSFBW', '082199367177', 'Hamadi Pantai, Kelurahan Hamadi', 'Kos Arod Imbiri', 'default-image.png', 'arodimbiri@gmail.com', '082199367177', 'Hamadi Pantai, Kelurahan Hamadi', 2, '', '', '', '', '10', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:36:11', 1, 0),
('1655869061', 'Hj. Rabiah', 'default-user.png', 'hj.rabiah@gmail.com', '$2y$10$cZd/51Kgz28BQy8soCVe0ugtPZLvxaaQMJsdCWVZFmH7pckRgRXgK', '', 'Hamadi Pantai, Kelurahan Hamadi', 'Kos Hj. Rabiah', 'default-image.png', 'hj.rabiah@gmail.com', '', 'Hamadi Pantai, Kelurahan Hamadi', 2, '', '', '', '', '9', '18', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:39:55', 1, 0),
('1655869243', 'Hj. Badudin', 'default-user.png', 'hj.badudin@gmail.com', '$2y$10$B7u1eRJkQaPOhnSUz4tobO7jTZKykX1f7Cv/8SeiQxmnj.DyVn/h6', '0822600839', 'Hamadi Pantai, kelurahan Hamadi', 'Kos Hj. Badudin', 'default-image.png', 'hj.badudin@gmail.com', '0822600839', 'Hamadi Pantai, kelurahan Hamadi', 2, '', '', '', '', '40', '86', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:42:34', 1, 0),
('1655869372', 'Hj. Bollo', 'default-user.png', 'hj.bollo@gmail.com', '$2y$10$QQo6qYAJWMkCDvdbem/UbO0NeyRjuTDoIRlb55fP4e.Mq8mXw2XKa', '081344240934', 'Hamadi Pantai, Kelurahan Hamadi', 'Kos Hj. Bollo', 'default-image.png', 'hj.bollo@gmail.com', '081344240934', 'Hamadi Pantai, Kelurahan Hamadi', 2, '', '', '', '', '10', '39', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:45:24', 1, 0),
('1655869551', 'Hemawan', 'default-user.png', 'hemawan@gmail.com', '$2y$10$Jlm.bIBxWmtC0MjcmHNluuDCBqnofIXTK1PFRwJ7ILzXNtoFfG/Cu', '085243053737', 'Hamadi Pantai, Kelurahan Hamadi', 'Kos Hemawan', 'default-image.png', 'hemawan@gmail.com', '085243053737', 'Hamadi Pantai, Kelurahan Hamadi', 2, '', '', '', '', '6', '15', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:47:55', 1, 0),
('1655869697', 'Sampe Sirait', 'default-user.png', 'sampesirait@gmail.com', '$2y$10$.bH3Za8fbn051fzo.dC6U./dQ91ewQUTuYjerujCTdG1RXIWtyrgq', '082199954042', 'Hamadi Pantai, Kelurahan Hamadi', 'Sampe Sirait', 'default-image.png', 'sampesirait@gmail.com', '082199954042', 'Hamadi Pantai, Kelurahan Hamadi', 2, '', '', '', '', '4', '9', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 03:50:23', 1, 0),
('1655869832', 'Hj. Sindrang', 'default-user.png', 'hj.sindrang@gmail.com', '$2y$10$z49BYhGPz5flVq4p34UcS.XD5Pgl2SKqrcb8D7zrCn2dN1WZK0qVO', '', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Hj. Sindrang', 'default-image.png', 'hj.sindrang@gmail.com', '', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '4', '16', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:52:05', 1, 0),
('1655869965', 'Hj. Fitriani', 'default-user.png', 'hj.fitriani@gmail.com', '$2y$10$pm5b0ua9RUiJQRcjApjXM.Outqt/QRnDChXtFvqIM3/uyeyHdML6q', '081280157657', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Hj. Fitriani', 'default-image.png', 'hj.fitriani@gmail.com', '081280157657', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '4', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:55:35', 1, 0),
('1655870150', 'Tenti Soleha', 'default-user.png', 't.soleha@gmail.com', '$2y$10$3Jvqcu2BR5JAi1hM0Rf0AO9SZ5PiFjJIl7/pQ6sud4ms72IevBHNe', '081232111134', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Tenti Soleha', 'default-image.png', 't.soleha@gmail.com', '081232111134', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '12', '36', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 03:58:04', 1, 0),
('1655870291', 'Anna Arpin', 'default-user.png', 'a.arpin@gmail.com', '$2y$10$SdNq1tx4pYPH5pSBJGpUm.9VQL/SntfZ2p5PEzfJH0iU6BTgZxOc2', '082248385806', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Anna Arpin', 'default-image.png', 'a.arpin@gmail.com', '082248385806', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '4', '16', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:06:55', 1, 0),
('1655870833', 'Hermawan', 'default-user.png', 'hermawan@gmail.com', '$2y$10$ciiA9DG9nv7ZU7UQPn1IyOwe3F9jmkAMxF.PqC.Mj30RCSh91lRYG', '08239804441', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Hermawan', 'default-image.png', 'hermawan@gmail.com', '08239804441', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '3', '7', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:09:03', 1, 0),
('1655870960', 'Hj.Lina', 'default-user.png', 'hj.lina@gmail.com', '$2y$10$r5GnH7TLlJppT9WeT4jygufKrXkJ7rlK0YGpobM2NrB1csdFmtEyG', '081344476646', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Hj.Lina', 'default-image.png', 'hj.lina@gmail.com', '081344476646', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '2', '8', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:11:42', 1, 0),
('1655871121', 'Veronika Aro', 'default-user.png', 'v.aro@gmail.com', '$2y$10$TLOJDkD1aAvha9kPXqwCUeU.X7wpPlK2aijP8pgotTPkdr.Np1iHq', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Veronika Aro', 'default-image.png', 'v.aro@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '5', '12', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:13:28', 1, 0),
('1655871213', 'Ramli', 'default-user.png', 'ramli@gmail.com', '$2y$10$cpuw//139aO9c2srs4qucOeNqVspbJzkbTe5qZLlk8V5feJFgy/qG', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Ramli', 'default-image.png', 'ramli@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '2', '6', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:15:04', 1, 0),
('1655871310', 'Kairul', 'default-user.png', 'kairul@gmail.com', '$2y$10$bkw9KwpOfSWAOWDOV6Sxf.O49jciAqsnEwuGYwQMCO8Xqsxl4U4ma', '082197814548', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Kairul', 'default-image.png', 'kairul@gmail.com', '082197814548', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '7', '22', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:16:45', 1, 0),
('1655871419', 'Rabiah', 'default-user.png', 'rabiah@gmail.com', '$2y$10$w3pkxdgNNIoWRqPy2pvyh.3JfSv9Yxlbwb3Y73zenI9UzhKC057.e', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Rabiah', 'default-image.png', 'rabiah@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '10', '22', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:18:44', 1, 0),
('1655871559', 'Hj. Saidah', 'default-user.png', 'hj.saidah@gmail.com', '$2y$10$FegBq//KrDMzC24mCESazeQm/mgPvZKX63x5GMl6QXaYTG6fC/TEO', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Saidah', 'default-image.png', 'hj.saidah@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '18', '54', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-22 04:21:28', 0, 0),
('1655871702', 'Hj. Boloh', 'default-user.png', 'hj.boloh@gmail.com', '$2y$10$kPcjW2CYKzdOv.9uPrvahOTg0EuwaZnXlmUhvAnEntGMIi32j/lKC', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Boloh', 'default-image.png', 'hj.boloh@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '6', '20', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-22 04:23:37', 0, 0),
('1655871831', 'Hj. Saidah', 'default-user.png', 'hj.saidah2@gmail.com', '$2y$10$VTWaT7/Y36zC.ddK9cEbxevFc5DHPu7iKVm90k8ga8GedlA0TD6AK', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Saidah 2', 'default-image.png', 'hj.saidah2@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '12', '19', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:25:50', 1, 0),
('1655872019', 'Mukariano', 'default-user.png', 'mukariano@gmail.com', '$2y$10$h6YYSVluQwLSFQ6baN15nOQx3.np.8bv.wfxgRyEFvEIbt6OXHg/O', '082198888355', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Mukariano', 'default-image.png', 'mukariano@gmail.com', '082198888355', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '8', '26', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:28:49', 1, 0),
('1655872138', 'Herbi', 'default-user.png', 'herbi@gmail.com', '$2y$10$vyrgLSCBwOfpPtYrraATr.2vSRhJWyFT8mLwW.8wDtKMsyyhtlOuS', '081343326809', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Herbi', 'default-image.png', 'herbi@gmail.com', '081343326809', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '5', '26', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-22 04:31:21', 0, 0),
('1655872328', 'Emi', 'default-user.png', 'emi@gmail.com', '$2y$10$CJSMKszX663WM2TQ8V/E1.hNCiMuD2/G63HwMew1VAWnyPe5D/HAC', '082199302816', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Emi', 'default-image.png', 'emi@gmail.com', '082199302816', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '12', '30', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:33:44', 1, 0),
('1655872435', 'Yanti', 'default-user.png', 'yanti@gmail.com', '$2y$10$hoAGhlHJSg/vrAbusoUDH.BINN0zLpilu9jksxi3pmaahkOviDjM6', '081240104476', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Yanti', 'default-image.png', 'yanti@gmail.com', '081240104476', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '3', '9', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-22 04:35:50', 0, 0),
('1655872561', 'Hj. Akbar', 'default-user.png', 'hj.akbar@gmail.com', '$2y$10$tBmtJaBHRObZKvuSI6h51.g8sSqfVlZNNjOIbzwJijmrpHBC6EoOK', '082199977545', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Akbar', 'default-image.png', 'hj.akbar@gmail.com', '082199977545', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '7', '26', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 04:37:59', 1, 0),
('1655872692', 'Akmal Marzuki', 'default-user.png', 'a.marzuki@gmail.com', '$2y$10$bT1dN6yb8BMzxNXSocsvGeYhjQtDXmUFuwA76ddBWtjzJP0Qvu1lG', '082340249497', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Akmal Marzuki', 'default-image.png', 'a.marzuki@gmail.com', '082340249497', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '8', '26', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 04:40:15', 1, 0),
('1655872820', 'Amring', 'default-user.png', 'amring@gmail.com', '$2y$10$ZHxP2vCtm/ZmF.srIPhj1OoCH2rV9YfcupHWkAdV6rFDe.S4LwRQ.', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Amring', 'default-image.png', 'amring@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '', '', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 04:42:00', 1, 0),
('1655872933', 'Amrula', 'default-user.png', 'amrula@gmail.com', '$2y$10$YAZ9.fs/J6gbGVo97kwVseRhIn7uednZiDXMJEzDdI4MPvsEwB9I.', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Amrula', 'default-image.png', 'amrula@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '12', '40', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 04:45:46', 1, 0),
('1655873152', 'Muh. Irwan', 'default-user.png', 'muh.irwan@gmail.com', '$2y$10$mtogNxEFRQNydh6uqs.HcepQDqyjXsA/i5/mj77Ul4fT1GyDasiZy', '082199323427', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Muh. Irwan', 'default-image.png', 'muh.irwan@gmail.com', '082199323427', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '6', '25', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 04:48:05', 1, 0),
('1655873301', 'Hj. Mustamin', 'default-user.png', 'hj.mustamin@gmail.com', '$2y$10$bjsx1jvL/WlsPc4rqf3j8uqZAJMbNo1M9Tllkfp874Z4.wwm4PFJq', '08214947797238', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Mustamin', 'default-image.png', 'hj.mustamin@gmail.com', '08214947797238', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '10', '38', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-22 04:50:48', 1, 0),
('1655873457', 'Hj. Nurhana', 'default-user.png', 'hj.nurhana@gmail.com', '$2y$10$WjbSNAeZjhLx.k0L19YyVOwIYXtWicstZdb3hQW4ZTaGQkHg2bXa6', '081344515168', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Nurhana', 'default-image.png', 'hj.nurhana@gmail.com', '081344515168', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '5', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:53:45', 1, 0),
('1655873646', 'Hj. Saidah', 'default-user.png', 'hj.saidah3@gmail.com', '$2y$10$mYJasqmbSLxF.psFzkVNW.9PZ2LviwZI.cLjQ.FaXcQaFhV6R44ai', '', 'Hamadi Rawa, Kelurahan Hamadi', 'Kos Hj. Saidah 3', 'default-image.png', 'hj.saidah3@gmail.com', '', 'Hamadi Rawa, Kelurahan Hamadi', 2, '', '', '', '', '12', '26', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-22 04:56:04', 0, 0),
('1655873783', 'Hj. Alwis', 'default-user.png', 'hj.alwis@gmail.com', '$2y$10$0vGLNCggIFe8H8gWDcm4xecO1qlbXA9NP2LWhKZP9Ew8qTRRruiXa', '081287988199', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Alwis', 'default-image.png', 'hj.alwis@gmail.com', '081287988199', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '2', '8', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 04:58:18', 1, 0),
('1655873909', 'Sukria', 'default-user.png', 'sukria@gmail.com', '$2y$10$OPFrIDX7GEbIb0mnSVbpr.o7eMieYROAwVFrODizuuwDkJxgA9er2', '082197537735', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Sukria', 'default-image.png', 'sukria@gmail.com', '082197537735', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '6', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:00:12', 1, 0),
('1655874084', 'Jabarudin', 'default-user.png', 'jabarudin@gmail.com', '$2y$10$vUthmThg2nWxrZ3aklYsae3RitxusdJ/Gp21j4dmBZbtSL9U44yk2', '085244087972', 'Hamadi Pertigaan, Kelurahan Hamadi', 'Kos Jabarudin', 'default-image.png', 'jabarudin@gmail.com', '085244087972', 'Hamadi Pertigaan, Kelurahan Hamadi', 2, '', '', '', '', '3', '3', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:03:43', 1, 0),
('1655874232', 'Joko Susilo', 'default-user.png', 'j.susilo@gmail.com', '$2y$10$iEKjZobTrg3j8U0mPZmta.AYrf3c7uQgWRxYM1kXHBi.miQGCSYai', '081248444209', 'Hamadi Pertigaan, Kelurahan Hamadi', 'Kos Joko Susilo', 'default-image.png', 'j.susilo@gmail.com', '081248444209', 'Hamadi Pertigaan, Kelurahan Hamadi', 2, '', '', '', '', '5', '8', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:05:57', 1, 0),
('1655874365', 'Hj. Rizal', 'default-user.png', 'hj.rizal@gmail.com', '$2y$10$wvacv3m46dR9as.GFXB03uvYC96.fMxhgNRbCxhY5D786Ar7Yb.L2', '082399008501', 'Hamadi Lapangan, Kelurahan Hamadi', 'Kos Hj. Rizal', 'default-image.png', 'hj.rizal@gmail.com', '082399008501', 'Hamadi Lapangan, Kelurahan Hamadi', 2, '', '', '', '', '12', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:07:56', 1, 0),
('1655874483', 'Yordan Runtuboy', 'default-user.png', 'y.runtuboy@gmail.com', '$2y$10$3VaonMtz4HRC3IFxGPHuteZ8arSU7TwrqdOV9td.UslBsXn0l03Gy', '081344552705', 'Hamadi Kotawi, Kelurahan Hamadi', 'Kos Yordan Runtuboy', 'default-image.png', 'y.runtuboy@gmail.com', '081344552705', 'Hamadi Kotawi, Kelurahan Hamadi', 2, '', '', '', '', '7', '25', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:13:33', 1, 0),
('1655874822', 'Pak Yu', 'default-user.png', 'pak.yu@gmail.com', '$2y$10$iWObxkSuWm7TdcJ0ps01qOBOe36GCNl9XAL6UoLbgv7HZwDiRl/4K', '081344949379', 'Hamadi Kotawi, Kelurahan Hamadi', 'Kos Pak Yu', 'default-image.png', 'pak.yu@gmail.com', '081344949379', 'Hamadi Kotawi, Kelurahan Hamadi', 2, '', '', '', '', '14', '28', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:16:10', 1, 0),
('1655875102', 'Arman', 'default-user.png', 'arman.hmd@gmail.com', '$2y$10$yPZu6qc.0yVBXz1c5I4hoeO5XUy/EoUg7uH015aTydV70O1UuWEDi', '081247783320', 'Hamadi Kotawi, Kelurahan Hamadi', 'Kos Arman di Hamadi', 'default-image.png', 'arman.hmd@gmail.com', '081247783320', 'Hamadi Kotawi, Kelurahan Hamadi', 2, '', '', '', '', '1', '5', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:21:32', 1, 0),
('1655875303', 'Syahir', 'default-user.png', 'syahir@gmail.com', '$2y$10$T0C6RyLVTuqQGjInwtZTa.VcG6ONssyOl5cZK/WM3CDNe4y6.zLIK', '081344399970', 'Hamadi Pasar, Kelurahan Hamadi', 'Kos Syahir', 'default-image.png', 'syahir@gmail.com', '081344399970', 'Hamadi Pasar, Kelurahan Hamadi', 2, '', '', '', '', '6', '24', '', '', 'hamadi', 'jprselatan', 0, '2022-06-22 05:23:25', 1, 0),
('1656286894', 'Dahlan', 'default-user.png', 'dahlan@gmail.com', '$2y$10$h.WSjCdHJ7zwE/fP.MTyEeTTP9HswTGxemsBytmtJ.HcURb6RrlDi', '082199682886', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Dahlan', 'default-image.png', 'dahlan@gmail.com', '082199682886', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '2', '3', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-26 23:44:28', 0, 0),
('1656287116', 'Hj. Irma', 'default-user.png', 'hj.irma.hmd.rawa@gmail.com', '$2y$10$E2jcdNN4DOJhVHvJYRZDB.s/qNs5ZLc9MlOHDwYOeRkX/f7FAXyb6', '082199282411', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Irma Hmd Rawa I', 'default-image.png', 'hj.irma.hmd.rawa@gmail.com', '082199282411', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '7', '27', '', '', 'hamadi', 'jprselatan', 0, '2022-06-26 23:47:29', 1, 0),
('1656287280', 'Ani/Rohany', 'default-user.png', 'ani.rohany@gmail.com', '$2y$10$z1CVL9wTd1sTZSafmedd6O9c.RNkxS7L6aTytkbhNNXfHwrQQ2dBW', '082198281428', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Ani/Rohany', 'default-image.png', 'ani.rohany@gmail.com', '082198281428', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '3', '9', '', '', 'hamadi', 'jprselatan', 0, '2022-06-26 23:50:01', 1, 0),
('1656296217', 'Hasrianty', 'default-user.png', 'hasrianty@gmail.com', '$2y$10$TlA/Ss2TeBmXeIwwkRjZV.5OGtRpVptkql5jSRvxTbe6kD4LhqdyK', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hasrianty', 'default-image.png', 'hasrianty@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '6', '15', '', '', 'hamadi', 'jprselatan', 0, '2022-06-27 02:19:01', 1, 0),
('1656296358', 'Suryarisah', 'default-user.png', 'suryarisah@gmail.com', '$2y$10$8qCuSpPrzQJMoSh9O2MiceES.syqsDABJ2YRhDOCLMYRs2cz3bF4K', '082199187777', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Suryarisah', 'default-image.png', 'suryarisah@gmail.com', '082199187777', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '8', '24', '', '', 'hamadi', 'jprselatan', 0, '2022-06-27 02:22:12', 1, 0),
('1656296615', 'Hj. Murni', 'default-user.png', 'hj.murni.hmd.rawa@gmail.com', '$2y$10$KeLXtksstQ//P2aWnxip6O6VEknGVV.lI1ZdIu3Hmg1oeV9CH6/TG', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Murni', 'default-image.png', 'hj.murni.hmd.rawa@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '10', '30', '', '', 'hamadi', 'jprselatan', 0, '2022-06-27 02:25:45', 1, 0),
('1656296776', 'Leila', 'default-user.png', 'leila@gmail.com', '$2y$10$/Uq4FRFcsC7GTG06PQ04yuUOtYMlr85h1hhUdHO9PFAWzEI6obgde', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Leila', 'default-image.png', 'leila@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '10', '28', '', '', 'hamadi', 'jprselatan', 0, '2022-06-27 02:38:37', 1, 0),
('1656566687', 'Awi', 'default-user.png', 'awi@gmail.com', '$2y$10$bEhhOakdRvZn9wO4YRA5MOPQRGyzEXUe8zUpMiQC//CjaPj9ISIZi', '081148153002', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Awi', 'default-image.png', 'awi@gmail.com', '081148153002', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '5', '18', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-30 05:30:36', 0, 0),
('1656567047', 'Yono', 'default-user.png', 'yono@gmail.com', '$2y$10$sEGVva0eeQPjHzV9onz.Lu7PMg.EviINtoNDpWKpSefUZ42qqLkKO', '081344416217', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Yono', 'default-image.png', 'yono@gmail.com', '081344416217', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '2', '6', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 05:32:28', 1, 0),
('1656567161', 'Listy', 'default-user.png', 'listy@gmail.com', '$2y$10$pTZ171gkixLdehT5X5QRpOTp73MEni2SVQhqyXacNEZP33FJrZBmy', '082197859731', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Listy', 'default-image.png', 'listy@gmail.com', '082197859731', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '15', '20', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 05:35:23', 1, 0),
('1656568026', 'Alui Demanai', 'default-user.png', 'alui@gmail.com', '$2y$10$U1UXwpnWa/TWDVPgnL.0leDys05OHZ2ryodbtbzCM2k5/qPhfCE/6', '', 'Hamadi Rawa II, Kelurahan Hamadi', 'Alui Demanai', 'default-image.png', 'alui@gmail.com', '', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '12', '30', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 05:51:58', 1, 0),
('1656568335', 'Hamsiah', 'default-user.png', 'hamsiah@gmail.com', '$2y$10$sgCRahmfJmVptYWuWmkQLeN27R.FVzmKo4wKzNSonaLww5pWTOCYG', '0821822353499', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hamsiah', 'default-image.png', 'hamsiah@gmail.com', '0821822353499', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '2', '6', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 05:54:26', 1, 0),
('1656568480', 'Hj. Ennly', 'default-user.png', 'hj.ennly@gmail.com', '$2y$10$TslSUfMvAviOv7U6nsZmGOJfJMH545i8CtEqz2.4VVEj5Pb/hH6Ka', '082253253490', 'Hamadi Rawa II, Kelurahan Hamadi', 'Kos Hj. Ennly', 'default-image.png', 'hj.ennly@gmail.com', '082253253490', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '12', '48', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 05:56:48', 1, 0),
('1656568707', 'Rina Mauudia', 'default-user.png', 'r.mauudia@gmail.com', '$2y$10$oFrKD254HHSub66nMTW62.0b4k.4nFvha1GzeSthtFXLR2kjmzaaC', '082151483107', 'Hamadi Rawa II, Kelurahan Hamadi', 'Rina Mauudia', 'default-image.png', 'r.mauudia@gmail.com', '082151483107', 'Hamadi Rawa II, Kelurahan Hamadi', 2, '', '', '', '', '11', '26', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 06:00:47', 1, 0),
('1656568893', 'Siti Aisyah', 'default-user.png', 's.aisyah@gmail.com', '$2y$10$QIQlhDpzWVlpUmhe6QZ12uV4iYU2AUCSs8FeY60LJ8XUV1rcCmHZy', '082251055558', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Siti Aisyah', 'default-image.png', 's.aisyah@gmail.com', '082251055558', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '3', '5', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-30 06:04:52', 0, 0),
('1656569103', 'Rosnawati', 'default-user.png', 'rosnawati@gmail.com', '$2y$10$uaX901KDzUvWlFldMuS6QuxHff6A36qr9LMyJ8A4zAGOLD7IG289i', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Rosnawati', 'default-image.png', 'rosnawati@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '5', '14', '', '1 (satu ) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:06:54', 1, 0),
('1656569221', 'Rezky', 'default-user.png', 'rezky@gmail.com', '$2y$10$1xnQ8hWLjMJI47nkWNAFyOr2BRxOWLZxONY2k1my2beI.N2kti09a', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Rezky', 'default-image.png', 'rezky@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '5', '15', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:10:19', 1, 0),
('1656569426', 'Hj. Rahma', 'default-user.png', 'hj.rahma@gmail.com', '$2y$10$I.V31LeMHT4SL0ziHHQ74uqRdI3uIiOXFS7/4cYoDj7h5C4hgpyp6', '085244136426', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Rahma', 'default-image.png', 'hj.rahma@gmail.com', '085244136426', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '16', '35', '', '1 (satu) sumur bor', 'hamadi', 'jprselatan', 0, '2022-06-30 06:13:28', 1, 0),
('1656569617', 'Hj. Kurniati', 'default-user.png', 'hj.kurniati@gmail.com', '$2y$10$7sS64K5SDSTD8lKwehvkmui6g3NDGtvjV01WFYTxad96awS9D1Lsu', '081247264742', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Kurniati', 'default-image.png', 'hj.kurniati@gmail.com', '081247264742', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '7', '21', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:17:12', 1, 0),
('1656569854', 'Hj. Jurmiati', 'default-user.png', 'hj.jurmiati@gmail.com', '$2y$10$QdEeFeM/nlLUzlMu9SAI3OQHyIzac8sjKCi.gXE3em3rz1QC3lPFC', '081354039495', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Jurmiati', 'default-image.png', 'hj.jurmiati@gmail.com', '081354039495', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '9', '23', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:20:09', 1, 0),
('1656570018', 'Isra', 'default-user.png', 'isra@gmail.com', '$2y$10$g6oG3QKTGGADY1MCElgIIeR1TMeWJIRJpCGkYV84UrgLRhdt1GcnK', '081248857811', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Isra', 'default-image.png', 'isra@gmail.com', '081248857811', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '10', '35', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:22:30', 1, 0),
('1656570190', 'Muslimah', 'default-user.png', 'muslimah@gmail.com', '$2y$10$urmNnzXk2pstjh890GctIem/hxBoJFVEYFP9AKL7vAfevtabP1aqW', '081248765066', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Muslimah', 'default-image.png', 'muslimah@gmail.com', '081248765066', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '2', '6', '', '', '', 'jprselatan', 0, '2022-06-30 06:25:04', 0, 0),
('1656570437', 'Hj. Sultan DG Rawa', 'default-user.png', 'hj.sultan.dg.rawa@gmail.com', '$2y$10$7j/hnrYu6xmrKBajC6iZqOn5iAHa2lkTzsLKKYgyiW0J08IJEKHyi', '081247836308', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Sultan DG Rawa', 'default-image.png', 'hj.sultan.dg.rawa@gmail.com', '081247836308', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '9', '25', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 06:30:21', 1, 0),
('1656570627', 'Syamsyurani', 'default-user.png', 'syamsyurani@gmail.com', '$2y$10$yRF5Rwv8H2oCeQ1ZpitUke9bpDTW0W6VplA15NQR9tOxX1vmSU7fa', '081247836308', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Syamsyurani', 'default-image.png', 'syamsyurani@gmail.com', '081247836308', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '5', '19', '', '', 'hamadi', 'jprselatan', 0, '2022-06-30 06:32:41', 1, 0),
('1656570769', 'Fahrudin', 'default-user.png', 'fahrudin@gmail.com', '$2y$10$PLXXsgryA9O0oBUhuhR0se9gaT0ptQRPe2F2KsXFfbifsMMDmLJG6', '082252766485', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Fahrudin', 'default-image.png', 'fahrudin@gmail.com', '082252766485', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '7', '11', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:35:46', 1, 0),
('1656570964', 'Hj. Farhan', 'default-user.png', 'hj.farhan@gmail.com', '$2y$10$1bAyGt4Ekhn33QzVlalsP.8JctJBEEpEa4LBTOTVOtzsYocbess.6', '081344685767', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Farhan', 'default-image.png', 'hj.farhan@gmail.com', '081344685767', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '4', '14', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:40:45', 1, 0),
('1656571252', 'Hj. Mustira', 'default-user.png', 'hj.mustira@gmail.com', '$2y$10$nI0x0ijtUN0SYMkNj2ez6u7s5TLHe6NJg23alnBWEF2kVmXGw3Vly', '085340000571', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Mustira', 'default-image.png', 'hj.mustira@gmail.com', '085340000571', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '6', '18', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:44:12', 1, 0),
('1656571470', 'Hj. Syariah', 'default-user.png', 'hj.syariah@gmail.com', '$2y$10$HiCJA.XIZ432lTEYqR6Oo.mzvP7QFSr84SNY.hboFOwEg/dx0MqRq', '', 'Hamadi Rawa I, Kelurahan Hamadi', 'Kos Hj. Syariah', 'default-image.png', 'hj.syariah@gmail.com', '', 'Hamadi Rawa I, Kelurahan Hamadi', 2, '', '', '', '', '2', '9', '', '1 (satu) sumur timba', 'hamadi', 'jprselatan', 0, '2022-06-30 06:47:41', 1, 0),
('1656572287', 'Samsudin', 'default-user.png', 'samsudin@gmail.com', '$2y$10$6HiyqtSkHKjliXnJTt06xefdWfX09poZ1fGpt1ra3ExQMfyl64lHK', '081348080997', 'Jl. Sumber Air 1, Kelurahan Entrop', 'Kos Samsudin', 'default-image.png', 'samsudin@gmail.com', '081348080997', 'Jl. Sumber Air 1, Kelurahan Entrop', 2, '', '', '', '', '12', '5', '', '', 'entrop', 'jprselatan', 0, '2022-06-30 07:08:10', 1, 0),
('1656572902', 'Tajuding', 'default-user.png', 'tajuding@gmail.com', '$2y$10$6CrOhqj1BsBbbxBJfn67SunBoK4GGRgzvaatvD3/1Q8stg7D9ziHi', '085244650215', 'Jl. Sumber Air 2', 'Kos Tajuding', 'default-image.png', 'tajuding@gmail.com', '085244650215', 'Jl. Sumber Air 2', 2, '', '', '', '', '8', '4', '', '', '', 'jprselatan', 0, '2022-06-30 07:12:59', 0, 0),
('1656573195', 'Hj. Ramatian', 'default-user.png', 'hj.ramatian@gmail.com', '$2y$10$cfx2yJVlXpxXBYpigQPgZOxQhepTYFWKetByN/QIIcgqkPhqOXWSi', '08124876051', 'Jl. Sumber Air 2, Kelurahan Hamadi', 'Kos Hj. Ramatian', 'default-image.png', 'hj.ramatian@gmail.com', '08124876051', 'Jl. Sumber Air 2, Kelurahan Hamadi', 2, '', '', '', '', '6', '6', '', '', 'entrop', 'jprselatan', 0, '2022-06-30 07:15:31', 1, 0),
('1656573428', 'Isak Salepang', 'default-user.png', 'i.salepang@gmail.com', '$2y$10$ysTObyD2nxjSNTfaR9Y7E.fhDbJ9zKKxXDK0b.1oaJNiPGe7Dyrii', '', 'Jl. Sumber Air 2, Kelurahan Hamadi', 'Isak Salepang', 'default-image.png', 'i.salepang@gmail.com', '', 'Jl. Sumber Air 2, Kelurahan Hamadi', 2, '', '', '', '', '3', '3', '', '', 'entrop', 'jprselatan', 0, '2022-06-30 07:19:34', 1, 0),
('1656573611', 'Hj. Irmawati', 'default-user.png', 'hj.irmawati@gmail.com', '$2y$10$dipxW7VPYbzPK72OhyeQ7um4U936/KMobudoZjcXoeXUA2ocqnUme', '081248259759', 'Jl. Karantina Grand, Kelurahan Entrop', 'Kos Hj. Irmawati', 'default-image.png', 'hj.irmawati@gmail.com', '081248259759', 'Jl. Karantina Grand, Kelurahan Entrop', 2, '', '', '', '', '10', '5', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-06-30 07:23:15', 0, 0),
('1656573807', 'Monicha Anubua', 'default-user.png', 'monicha@gmail.com', '$2y$10$/U3KR1S6kuz0gX689/MAbuxjVCk6ke8zqsFNmF0vE6H49ejbmp3ha', '', 'Jl. Hotel Sumuld, Kelurahan Entrop', 'Monicha Anubua', 'default-image.png', 'monicha@gmail.com', '', 'Jl. Hotel Sumuld, Kelurahan Entrop', 2, '', '', '', '', '8', '4', '', '', 'entrop', 'jprselatan', 0, '2022-06-30 07:26:57', 1, 0),
('1657065709', 'Hj. Said', 'default-user.png', 'hj.said@gmail.com', '$2y$10$tbQv4Wbgpxc6P/aDqY1wSe1zLu7KNUkc1jFfLWLnWBY7EIcpBXYmi', '', 'Jl. Lembah Hamadi, Kelurahan Entrop', 'Kos Hj. Said', 'default-image.png', 'hj.said@gmail.com', '', 'Jl. Lembah Hamadi, Kelurahan Entrop', 2, '', '', '', '', '2', '4', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:04:23', 1, 0),
('1657065879', 'Suarji', 'default-user.png', 'suarji@gmail.com', '$2y$10$h7JxCjCM4j2j8SvPhVKCh.hsjS.QnwPqodpuihywFzimMuZ.zOD1a', '081354067939', 'Jl. Lembah Hamadi, Kelurahan Entrop', 'Kos Suarji', 'default-image.png', 'suarji@gmail.com', '081354067939', 'Jl. Lembah Hamadi, Kelurahan Entrop', 2, '', '', '', '', '7', '5', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:07:48', 1, 0),
('1657066174', 'Ursula', 'default-user.png', 'ursula@gmail.com', '$2y$10$ll/8g24wADVg1G/xF1s/5O7hPV8BJWYIf0kvBiFXaVGI4fteulsAq', '081248285232', 'Jl. Lembah Hamadi, Kelurahan Entrop', 'Kos Ursula', 'default-image.png', 'ursula@gmail.com', '081248285232', 'Jl. Lembah Hamadi, Kelurahan Entrop', 2, '', '', '', '', '26', '6', '', 'Terdapat 3 (tiga) sumur', 'entrop', 'jprselatan', 0, '2022-07-06 00:12:14', 1, 0),
('1657066358', 'Hami', 'default-user.png', 'hami@gmail.com', '$2y$10$ZGMS/TDSW.HNZkT0bAjJU.OcdzRC2Mp4N3H383kBeUBZojOLU855u', '082134013369', 'Jl. Lembah Hamadi, Kelurahan Entrop', 'Kos Hami', 'default-image.png', 'hami@gmail.com', '082134013369', 'Jl. Lembah Hamadi, Kelurahan Entrop', 2, '', '', '', '', '3', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:18:26', 1, 0),
('1657066742', 'Haji Supardi', 'default-user.png', 'hj.supardi@gmail.com', '$2y$10$AVIDs0Lf8D6QCPqxOT4WAOqptUGK0VaNFvTpNe.I.W3h7/4bI1g1.', '', 'Jl. Lembah Hamadi, Kelurahan Entrop', 'Kos Haji Supardi', 'default-image.png', 'hj.supardi@gmail.com', '', 'Jl. Lembah Hamadi, Kelurahan Entrop', 2, '', '', '', '', '6', '4', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:21:30', 1, 0),
('1657066914', 'Ibu Sula', 'default-user.png', 'sula@gmail.com', '$2y$10$lkp5Xc7fbHDYnuTzE8GrJ..2TFY90pQvjTe7g.gydt/NwZNVRFRMy', '081295108228', 'Jl. Beringin, Kelurahan Entrop', 'Kos Ibu Sula', 'default-image.png', 'sula@gmail.com', '081295108228', 'Jl. Beringin, Kelurahan Entrop', 2, '', '', '', '', '20', '5', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:31:06', 1, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_kelurahan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1657067482', 'Nur Aini', 'default-user.png', 'nur.aini@gmail.com', '$2y$10$PTC6VXu9NPxth0yrvn39gu1pTdvTUy6SH2SNaAZ2DkyOwjvbB8GQ2', '081248967272', 'Jl. Beringin, Kelurahan Entrop', 'Kos Nur Aini', 'default-image.png', 'nur.aini@gmail.com', '081248967272', 'Jl. Beringin, Kelurahan Entrop', 2, '', '', '', '', '2', '2', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:33:18', 1, 0),
('1657067637', 'Saharudin', 'default-user.png', 'bpk.saharudin@gmail.com', '$2y$10$5Rn6lxE1tk88AkuQDO4NpuZSELS/tns5DS12G2XG7HSgvn.tvtPD.', '082399399334', 'Jl. Beringin, Kelurahan Entrop', 'Kos Bpk. Saharudin', 'default-image.png', 'bpk.saharudin@gmail.com', '082399399334', 'Jl. Beringin, Kelurahan Entrop', 2, '', '', '', '', '4', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:37:29', 1, 0),
('1657067877', 'Ari Pudding', 'default-user.png', 'ari.pudding@gmail.com', '$2y$10$BWpisgcuscSaBBZ14flOfeuIjF59w0X15UrGTlGDysK1mlWn0tgY.', '081240872525', 'Jl. Beringin, Kelurahan Entrop', 'Kos Ari Pudding', 'default-image.png', 'ari.pudding@gmail.com', '081240872525', 'Jl. Beringin, Kelurahan Entrop', 2, '', '', '', '', '8', '5', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:40:28', 1, 0),
('1657068058', 'Apdul Rahman', 'default-user.png', 'apdul.rahman@gmail.com', '$2y$10$opvp0yPBfZr70taLuIc7o.SWwt3v3N7nrQ4DN9aYlB7x6A2hK5sOe', '081344273118', 'Jl. Beringin, Kelurahan Entrop', 'Kos Apdul Rahman', 'default-image.png', 'apdul.rahman@gmail.com', '081344273118', 'Jl. Beringin, Kelurahan Entrop', 2, '', '', '', '', '4', '4', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:42:54', 1, 0),
('1657068218', 'Haji Cora', 'default-user.png', 'hj.cora@gmail.com', '$2y$10$AJfQ5f.FpUnGKy6rOP7h9uwJx36QxI3K7gQPuYfask3dfTJCqX65K', '082399591525', 'Gg. Kelor, Kelurahan Entrop', 'Kos Haji Cora', 'default-image.png', 'hj.cora@gmail.com', '082399591525', 'Gg. Kelor, Kelurahan Entrop', 2, '', '', '', '', '3', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:45:32', 1, 0),
('1657068422', 'Sudirma', 'default-user.png', 'sudirma@gmail.com', '$2y$10$g/HpeObbth2tRljiv7K94uxuMUJT0euHKV3/qSREw27uDIQpH1p9m', '0821982860008', 'Gg. Kelor, Kelurahan Entrop', 'Kos Sudirma', 'default-image.png', 'sudirma@gmail.com', '0821982860008', 'Gg. Kelor, Kelurahan Entrop', 2, '', '', '', '', '8', '4', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:49:41', 1, 0),
('1657068748', 'Satrin Hamadi', 'default-user.png', 'satrin.hamadi@gmail.com', '$2y$10$BEu3AdPBwOLpxISm9pXIeODUdi.UZlpP1AJuRLj6XnrB/4CMDuNUO', '085226046733', 'Gg. Kelor, Kelurahan Entrop', 'Kos Satrin Hamadi', 'default-image.png', 'satrin.hamadi@gmail.com', '085226046733', 'Gg. Kelor, Kelurahan Entrop', 2, '', '', '', '', '8', '5', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:54:37', 1, 0),
('1657068908', 'Laudettili', 'default-user.png', 'laudettili@gmail.com', '$2y$10$e/4bHHh5jmBC7hU/aYd84ecbX9BQe8eayhisN3QJIUh55cwE0zjxe', '', 'Jl. Bucen II, Keluahan Entrop', 'Kos Laudettili', 'default-image.png', 'laudettili@gmail.com', '', 'Jl. Bucen II, Keluahan Entrop', 2, '', '', '', '', '4', '1', '', '', 'entrop', 'jprselatan', 0, '2022-07-06 00:56:48', 1, 0),
('1657157703', 'Haji Samsia', 'default-user.png', 'hj.samsia@gmail.com', '$2y$10$9rtkMeAhWDoFTED1S9WVq.Uqwm/fbh9XUHzYHC6ax3PJWGJoTDv7W', '', 'Jl. Kelapa 2, Kelurahan Entrop', 'Kos Haji Samsia', 'default-image.png', 'hj.samsia@gmail.com', '', 'Jl. Kelapa 2, Kelurahan Entrop', 2, '', '', '', '', '21', '4', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', 'entrop', 'jprselatan', 0, '2022-07-07 01:41:51', 1, 0),
('1657158168', 'Sumbat Mahulae Nainggolan', 'default-user.png', 's.m.nainggolan@gmail.com', '$2y$10$xWCIHEwYdmEuIK9VrJkleOTez.x.APimA6O2HvYHyltbN2AJFcSIm', '085244737586', 'Jl. Kelapa 2, Kelurahan Entrop', 'Kos Warna-Warni', 'default-image.png', 's.m.nainggolan@gmail.com', '085244737586', 'Jl. Kelapa 2, Kelurahan Entrop', 2, '', '', '', '', '4', '1', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-07 01:48:28', 0, 0),
('1657158551', 'Haji Sumaria', 'default-user.png', 'hj.sumaria@gmail.com', '$2y$10$GeFAzWYj1wnN82wGnVHa8OtYoEE.EAo9eBBVYYhVA3U8HPI8GsOwe', '085299610096', 'Jl. Empang, Kelurahan Entrop', 'Kos Pink House', 'default-image.png', 'hj.sumaria@gmail.com', '085299610096', 'Jl. Empang, Kelurahan Entrop', 2, '', '', '', '', '8', '8', '', '', 'entrop', 'jprselatan', 0, '2022-07-07 01:51:41', 1, 0),
('1657158712', 'Haji Sunadar', 'default-user.png', 'hj.sunadar@gmail.com', '$2y$10$4keQwYOyL7lUHydHq5uw8.tM/Jo7LCDpwQBPcVSoM2GHTCDaxw/3O', '', 'Jl. Bucen II, Kelurahan Entrop', 'Kos Haji Sunadar', 'default-image.png', 'hj.sunadar@gmail.com', '', 'Jl. Bucen II, Kelurahan Entrop', 2, '', '', '', '', '8', '4', '', '', 'entrop', 'jprselatan', 0, '2022-07-07 01:54:00', 1, 0),
('1657158887', 'Blandina Ngosido', 'default-user.png', 'blandina@gmail.com', '$2y$10$qUFOU0l7YzPqN.2uTxJ38OfkXaY0MnvqPt1x4bNcX9GqhZBnEtrra', '', 'Perumahan Pemda, Kelurahan Entrop', 'Blandina Ngosido', 'default-image.png', 'blandina@gmail.com', '', 'Perumahan Pemda, Kelurahan Entrop', 2, '', '', '', '', '4', '5', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-07 02:12:11', 0, 0),
('1657159942', 'Haji Nai', 'default-user.png', 'hj.nai@gmail.com', '$2y$10$20zcgk.SopNeuJaoPXClsuAxxumEpF66Yf5WHCOZj7M2peOIPBVq2', '082122687809', 'Jl. Beringin, Kelurahan Entrop', 'Kos Haji Nai', 'default-image.png', 'hj.nai@gmail.com', '082122687809', 'Jl. Beringin, Kelurahan Entrop', 2, '', '', '', '', '4', '4', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-07 02:15:15', 0, 0),
('1657160123', 'Ludia Limbong', 'default-user.png', 'l.limbong@gmail.com', '$2y$10$MliLB6amjpk3mPeJPMC9cO4ZMyH/xOtNL5r/0mJSQcR.bjHcVe7VG', '082187260944', 'Samping Daihatsu, Kelurahan Entrop', 'Kos Ludia Limbong', 'default-image.png', 'l.limbong@gmail.com', '082187260944', 'Samping Daihatsu, Kelurahan Entrop', 2, '', '', '', '', '16', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-07 02:29:53', 1, 0),
('1657241994', 'Rian Rumboirusi', 'default-user.png', 'rkbpkrumboirusi@gmail.com', '$2y$10$OXxDZDqTZeDshubNG5TAUefr/vWGbnAR5a4J/rXnHtrL3IImBmnOW', '082238972762', 'J. Garuda', 'Rumah Kos', 'default-image.png', 'rkbpkrumboirusi@gmail.com', '082238972762', 'J. Garuda', 1, '', '', '', '', '23', '30', '', '', '', 'abepura', 0, '2022-07-08 01:02:17', 0, 1),
('1657242912', 'Ratna Tulak', 'default-user.png', 'rkiburatnatulak@gmail.com', '$2y$10$FjB1WnXy0tEav1lGacVpv.gDf0uwNSywwlhZutzloFqOZuR458Co6', '081344809654', 'Jl. Gelatik', 'Rumah Kos Ibu Ratna Tulak', 'default-image.png', 'rkiburatnatulak@gmail.com', '081344809654', 'Jl. Gelatik', 2, '', '', '', '', '12 kamar', '', '', '', 'awiyo', 'abepura', 0, '2022-07-08 01:18:21', 1, 0),
('1657243692', 'Abdul Rahman', 'default-user.png', '12345678.ar.ra@gmail.com', '$2y$10$IHu6zLX2KhC.I8rvK1chI.TnhdfbPODzJMVxEFbn7G6RqhYGcdONi', '081248029550', 'Jl. Nuri/Jalan Garuda Awiyo Abepura', 'Rumah Kos Bpk Abdul Rahman', 'default-image.png', 'rkbpkrahman@gmail.com', '082198998414', 'Jl. Nuri', 2, '', '', '', '', '10', '', '', '', 'awiyo', 'abepura', 0, '2022-07-08 01:30:28', 1, 0),
('1657244967', 'Suardi', 'default-user.png', 'pusakominang@gmail.com', '$2y$10$4bQ5CDs/XM908TA1PK3.8.MczfP/AKcQbKMBs8akq.AX1VJO5MkH2', '081286026871', 'Jl. Raya Kotaraja', 'Rumah Makan Padang Pusako Mina', 'default-image.png', 'pusakominang@gmail.com', '081286026871', 'Jl. Raya Kotaraja', 2, '', '', '', '', '', '', '20', '', 'wahno', 'abepura', 0, '2022-07-08 01:52:02', 1, 0),
('1657244999', 'Haji Sainudin', 'default-user.png', 'hj.sainudin@gmail.com', '$2y$10$CNBVGvhVph3cXOAOs21Vse0Pxnoq/Aetjwmzp5vUjlaekNuozaLqS', '', 'Jl. Perahu, Kelurahan Entrop', 'Kos Haji Sainudin', 'default-image.png', 'hj.sainudin@gmail.com', '', 'Jl. Perahu, Kelurahan Entrop', 2, '', '', '', '', '20', '6', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 01:51:52', 1, 0),
('1657245125', 'Haji Triantu', 'default-user.png', 'hj.triantu@gmail.com', '$2y$10$lWkGeiuiJDPEJxjkL/0khOTPGIFoN1OfdVJwgp0t/SXS2QYECGdzq', '', 'Pondok (9) Perumahan Kodim, Kelurahan Entrop', 'Kos Haji Triantu', 'default-image.png', 'hj.triantu@gmail.com', '', 'Pondok (9) Perumahan Kodim, Kelurahan Entrop', 2, '', '', '', '', '9', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 01:54:52', 1, 0),
('1657245307', 'Bpk. Sangki', 'default-user.png', 'sangki@gmail.com', '$2y$10$mYXh3AdF/jOTS1e5zWdVZOIUMC092MKe9Rltqc4Uc0869pwSiR5bq', '082199140017', 'Jl. Raya Abepura Entrop, Kelurahan Entrop', 'Kos Bpk. Sangki', 'default-image.png', 'sangki@gmail.com', '082199140017', 'Jl. Raya Abepura Entrop, Kelurahan Entrop', 2, '', '', '', '', '3', '5', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 01:57:34', 0, 0),
('1657245463', 'Yohanes Todin', 'default-user.png', 'yohanes.todin@gmail.com', '$2y$10$nUI/j3fBG.PCqrCkcPZIV.jSl2dAwj5XV3iU3mxMfw/3QUnZTWm/O', '085344562000', 'Jl. Abepura Entrop, Kelurahan Entrop', 'Kos Yohanes Todin', 'default-image.png', 'yohanes.todin@gmail.com', '085344562000', 'Jl. Abepura Entrop, Kelurahan Entrop', 2, '', '', '', '', '11', '4', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 02:04:48', 0, 0),
('1657246142', 'Ibu Heni', 'default-user.png', 'heni@gmail.com', '$2y$10$Jh5JkABwTx2XH7TChVUI3.a51oKimeyVFsV18keTxTXfQOOshwGFe', '081319009405', 'Jl. Raya Abepura Entrop, Kelurahan Entrop', 'Kos Ibu Heni', 'default-image.png', 'heni@gmail.com', '081319009405', 'Jl. Raya Abepura Entrop, Kelurahan Entrop', 2, '', '', '', '', '9', '4', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 02:13:38', 0, 0),
('1657246447', 'Lasudi', 'default-user.png', 'lasudi@gmail.com', '$2y$10$PXjeDxaBOM4LkuL5amWssO.mqQsl0w7wIbEMnaEt7S3/a.zHgz9R6', '', 'Jl. Raya Abepura Entrop, Kelurahan Entrop', 'Kos Lasudi', 'default-image.png', 'lasudi@gmail.com', '', 'Jl. Raya Abepura Entrop, Kelurahan Entrop', 2, '', '', '', '', '2', '1', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 02:16:20', 0, 0),
('1657246691', 'Tedy Gosel', 'default-user.png', 't.gosel@gmail.com', '$2y$10$KHG10XVjxYXfMK/CC/CLseYrhL2NgnF85Sw0yftpYnqv4IVV7fgzy', '081344351747', 'Jl. Pemda I Entrop, Kelurahan Entrop', 'Kos Tedy Gosel', 'default-image.png', 't.gosel@gmail.com', '081344351747', 'Jl. Pemda I Entrop, Kelurahan Entrop', 2, '', '', '', '', '10', '4', '', '', '', 'jprselatan', 0, '2022-07-08 02:21:05', 0, 0),
('1657248045', 'Usman Talib', 'default-user.png', 'u.talib@gmail.com', '$2y$10$kJH80qszUC99qvhDtw9zwOEyucKxWAf/EHBKtuS8RKtKzGkREPjci', '083139158075', 'Jl. Empang No. 9, Kelurahan Entrop', 'Kos Usman Talib', 'default-image.png', 'u.talib@gmail.com', '083139158075', 'Jl. Empang No. 9, Kelurahan Entrop', 2, '', '', '', '', '5', '5', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 02:43:38', 0, 0),
('1657248245', 'Kassin', 'default-user.png', 'kassin@gmail.com', '$2y$10$fMQ.Gg2OcjJ0ol/oNbHvJOA5zFfQex1YSVcXSth37abTuwH9PqGj6', '081343092649', 'Jl. Empang Cepos Lama, Kelurahan Entrop', 'Kos Kassin', 'default-image.png', 'kassin@gmail.com', '081343092649', 'Jl. Empang Cepos Lama, Kelurahan Entrop', 2, '', '', '', '', '7', '3', '', 'Tidak menggunakan air bawah tanah (menggunakan air dari gunung)', '', 'jprselatan', 0, '2022-07-08 02:46:39', 0, 0),
('1657248413', 'Alif', 'default-user.png', 'alif@gmail.com', '$2y$10$x20uPoTX.Nsw6x6GyF05c.MIIh/MlwRhWEgc4nR1JGZJTdue/NhP.', '081247710393', 'Jl. Empang No. 12, Kelurahan Entrop', 'Kos Alif', 'default-image.png', 'alif@gmail.com', '081247710393', 'Jl. Empang No. 12, Kelurahan Entrop', 2, '', '', '', '', '4', '2', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 02:53:41', 0, 0),
('1657248866', 'Bpk. Tuhadi', 'default-user.png', 'tuhadi@gmail.com', '$2y$10$S0DVnnqM6Qq2Kh/sl4Av6.CXfGR8zd.NLNttQFLPWCOFzh3legw9O', '081344436167', 'Perumahan KPR BTN TNI AL, Kelurahan Entrop', 'Kos Bpk. Tuhadi', 'default-image.png', 'tuhadi@gmail.com', '081344436167', 'Perumahan KPR BTN TNI AL, Kelurahan Entrop', 2, '', '', '', '', '4', '3', '', 'Tidak menggunakan air bawah tanah (menggunakan air dari gunung)', '', 'jprselatan', 0, '2022-07-08 03:01:29', 0, 0),
('1657249120', 'Rumah Makan Pusako Minang', 'default-user.png', 'pusakominang@gmail.com', '$2y$10$mUT/PkXJp0/w6Z8BRpRU9eFPuNKf7JDb/4LIzju0lHT.9WjMdYSxe', '081286026871', 'Jl. Raya Kotaraja', 'Rumah Makan Pusako Minang', 'default-image.png', 'pusakominang@gmail.com', '081286026871', 'Jl. Raya Kotaraja', 2, '', '', '', '', '', '', '20', '', '', 'abepura', 0, '2022-07-08 03:02:40', 0, 1),
('1657249301', 'Hadrawati Sihajavara', 'default-user.png', 'h.sihajavara@gmail.com', '$2y$10$CrtQsnJzGlz8NfueN.t9ROaKRaCvhQDRbqr0NQYXBENuJZvKo9COi', '081238492696', 'SD 45, Kelurahan Entrop', 'Kos Hadrawati Sihajavara', 'default-image.png', 'h.sihajavara@gmail.com', '081238492696', 'SD 45, Kelurahan Entrop', 2, '', '', '', '', '20', '4', '', 'Tidak menggunakan air bawah tanah (menggunakan air kali)', '', 'jprselatan', 0, '2022-07-08 03:05:38', 0, 0),
('1657249547', 'Haji Hingin', 'default-user.png', 'hj.hingin@gmail.com', '$2y$10$asXVVxB.FlCcAQ01B6bMBuwfDp/mkjRKi6rWNTadXRgSgIEFLAr4q', '085393229097', 'Jl. Feri, SMA 45, Kelurahan Entrop', 'Kos Haji Hingin', 'default-image.png', 'hj.hingin@gmail.com', '085393229097', 'Jl. Feri, SMA 45, Kelurahan Entrop', 2, '', '', '', '', '14', '5', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 03:07:57', 1, 0),
('1657249691', 'Sabik Japara', 'default-user.png', 's.japara@gmail.com', '$2y$10$vYNDROxZqXH.JGI2wbo5kem7GT4/3TFhxyyLwkpcPQN0WAs6v2a9u', '081247130800', 'Jl. SD 45, Kelurahan Entrop', 'Kos Sabik Japara', 'default-image.png', 's.japara@gmail.com', '081247130800', 'Jl. SD 45, Kelurahan Entrop', 2, '', '', '', '', '20', '4', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 03:10:39', 0, 0),
('1657249861', 'Asman Rahman', 'default-user.png', 'a.rahman@gmail.com', '$2y$10$LQ3FXpp0pfQyza.B3Q6HRulTVlWmCmCm7FBNqzr0A2Racx9yRjfIW', '085244958505', 'Hotel Muspagco, Kelurahan Entrop', 'Kos Asman Rahman', 'default-image.png', 'a.rahman@gmail.com', '085244958505', 'Hotel Muspagco, Kelurahan Entrop', 2, '', '', '', '', '3', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 03:17:41', 1, 0),
('1657249909', 'Mie Ayam Medan', 'default-user.png', 'miemedanabe@gmail.com', '$2y$10$ZH7mCMaitLquyUR7hKdiFebin5O3PzaaTLvDekFWCO7wsKIbLONzu', '082199299149', 'Jl. Gerilyawan', 'Mie Ayam Medan', 'default-image.png', 'miemedanabe@gmail.com', '082199299149', 'Jl. Gerilyawan', 2, '', '', '', '', '', '', '40', '', 'kotabaru', 'abepura', 0, '2022-07-08 03:14:17', 1, 0),
('1657250271', 'Haji Dula', 'default-user.png', 'hj.dula@gmail.com', '$2y$10$RDuINhbqfFLb2dKVKifsqOQhRVALrR8SXgsGKYRouTjvhq7vrgBK6', '', 'Jl. Bahtera, Kelurahan Entrop', 'Kos Haji Dula', 'default-image.png', 'hj.dula@gmail.com', '', 'Jl. Bahtera, Kelurahan Entrop', 2, '', '', '', '', '14', '1', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 03:19:51', 1, 0),
('1657250407', 'Ibu Irawati', 'default-user.png', 'irawati@gmail.com', '$2y$10$dUOw2CJfqXgJ2IzdOkfjrOPGQV9cnM6rk9NTrTD0nPoOp8/avwye6', '08124842351', 'Belakang Pesantren Hidayatula, Kelurahan Entrop', 'Kos Ibu Irawati', 'default-image.png', 'irawati@gmail.com', '08124842351', 'Belakang Pesantren Hidayatula, Kelurahan Entrop', 2, '', '', '', '', '7', '3', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 03:22:52', 0, 0),
('1657250492', 'Rosdiana', 'default-user.png', 'baksokampungabe@gmail.com', '$2y$10$xLPVb4DbHsHFV.weVU8Pjuc4/Wwh5CPoQ7F2PPPzBqpz2PzOK0DRm', '081354174997', 'Jl. Gerilyawan', 'Bakso Kampung Abepura', 'default-image.png', 'baksokampungabe@gmail.com', '081354174997', 'Jl. Gerilyawan', 2, '', '', '', '', '', '', '80', '', 'kotabaru', 'abepura', 0, '2022-07-08 03:23:05', 1, 0),
('1657250585', 'Ibu Naharia', 'default-user.png', 'naharia@gmail.com', '$2y$10$cBP3WdmnW2ALVDZKdhePu.LPBJNxJuBoYQQtrvhNSNkoPbsxaevNy', '085254234826', 'Belakang Pesantren Hidayatula, Kelurahan Entrop', 'Kos Ibu Naharia', 'default-image.png', 'naharia@gmail.com', '085254234826', 'Belakang Pesantren Hidayatula, Kelurahan Entrop', 2, '', '', '', '', '3', '2', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 03:25:24', 0, 0),
('1657250733', 'Bpk. Talib', 'default-user.png', 'talib@gmail.com', '$2y$10$kTHF5Oe9Eys1tSH.UQJQ3.CZES9NpWDWMzsqfNM4ZYHVHmxVxt6DO', '08134426440', 'Jl. Bucen II, Kelurahan Entrop', 'Kos Bpk. Talib', 'default-image.png', 'talib@gmail.com', '08134426440', 'Jl. Bucen II, Kelurahan Entrop', 2, '', '', '', '', '10', '3', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 03:31:54', 1, 0),
('1657251144', 'Bpk. Parno', 'default-user.png', 'parno@gmail.com', '$2y$10$SUMpNtWTQP7xlqKr6mGrQeDzfm.KKLSNTSwG9ldAzetxfrdDPvdnG', '085217188804', 'Jl. Bahtera, Kelurahan Entrop', 'Kos Bpk. Parno', 'default-image.png', 'parno@gmail.com', '085217188804', 'Jl. Bahtera, Kelurahan Entrop', 2, '', '', '', '', '9', '3', '', 'Tidak menggunakan air bawah tanah (air PDAM tersedia)', '', 'jprselatan', 0, '2022-07-08 03:36:30', 0, 0),
('1657251399', 'Bpk. Sugiartono', 'default-user.png', 'sugiartono@gmail.com', '$2y$10$XgiJm.srzhVF7ym7jL7xKejGcTZ6cHthWXYJ8m3V1TvuA3nA9O2t6', '081248240000', 'Jl. Bucen II Entrop, Kelurahan Entrop', 'Kos Bpk. Sugiartono', 'default-image.png', 'sugiartono@gmail.com', '081248240000', 'Jl. Bucen II Entrop, Kelurahan Entrop', 2, '', '', '', '', '6', '2', '', '', 'entrop', 'jprselatan', 0, '2022-07-08 03:38:36', 1, 0),
('WP25052021021', 'Ruben', 'default-user.png', 'rubenexpo@gmail.com', '$2y$10$t/PVoWru9k3U0PthD0VpbeCMCYRoOpzquKRYCUfob2kJUS6L5SooO', '08124847899', 'Jl.Belut Expo', 'Rumah Kos Ruben', 'default-image.png', 'rubenexpo@gmail.com', '08124847899', 'Jl.Belut Expo', 2, '0', '0', 'Tidak Ada', 'Tidak Ada', '6', '10', '', '', 'waena', 'heram', 0, '2021-05-25 05:33:50', 1, 0),
('WP25052021023', 'Siti Rahma', 'default-user.png', 'sitirahma@gmail.com', '$2y$10$iqDNwydrbVQrtMtb3Z6g6OfzbyIbJ.KYnua/2/GRxY0QNps5EONLe', '085254165755', 'Kompleks KUD Expo', 'Rumah Kos Siti Rahma', 'default-image.png', 'sitirahma@gmail.com', '085254165755', 'Kompleks KUD Expo', 2, '', '', '', '', '18', '65', '', '', 'waena', 'heram', 0, '2021-05-25 05:51:51', 1, 0),
('WP25052021093', 'Ani', 'default-user.png', 'animelatiputih@gmail.com', '$2y$10$RfvYqkFj2sRx1.VaPxkpc.ujF1Ar15ggyu/wIOP5vRZOmJB5FAr06', '081344503119', 'Jl. Belut Expo Timung Melati Putih', 'Rumah Kos Melati Putih', 'default-image.png', 'animelatiputih@gmail.com', '081344503119', 'Jl. Belut Expo Timung Melati Putih', 2, '0', '0', 'Tidak Ada', 'Tidak Ada', '16', '48', '', '', 'waena', 'heram', 0, '2021-05-25 05:47:50', 1, 0),
('WP25052021094', 'Bahkri', 'default-user.png', 'bahkri@gmail.com', '$2y$10$HTshaPfr44Ydva4s7iuLy.cLHN.KlRGAL0Cp8594/s24rcBaNvTV6', '082238594569', 'jl.karang 5', 'Rumah Kos Bahkri', 'default-image.png', 'bahkri@gmail.com', '082238594569', 'jl.karang 5', 2, '', '', '', '', '16 kamar', '64 orang', '', '', 'waena', 'heram', 0, '2021-05-25 05:53:54', 1, 0),
('WP25052021095', 'Yunus', 'default-user.png', 'yunuswaena@gmail.com', '$2y$10$w.TMQVxaRVrRUIDK8.2Y1uF.nGglS22.H3h3YCT6CUWASGzT5PbHC', '', 'Jl. Gelanggang Remaja', 'Rumah Kos Yunus', 'default-image.png', 'yunuswaena@gmail.com', '', 'Jl. gelanggang Remaja', 2, '', '', 'Ada', 'Tidak Ada', '24', '48', '', '', 'waena', 'heram', 0, '2021-05-25 05:56:52', 1, 0),
('WP25052021096', 'Ibu Dian', 'default-user.png', 'dian@gmail.com', '$2y$10$AZwzoOLJ2cgIZs50DfXZsee8znofq6xyi0EW9r8JyGtqYBUaYHJte', '08124851111', 'jl.karang 3', 'Rumah Kos Ibu Dian', 'default-image.png', 'dian@gmail.com', '08124851111', 'jl.karang 3', 2, '', '', '', '', '20 kamar', '40 orang', '', '', 'waena', 'heram', 0, '2021-05-25 05:58:51', 1, 0),
('WP25052021097', 'Evi', 'default-user.png', 'evi@gmail.com', '$2y$10$KBE0v993iLELiLJ27m0wAul/8tfuOwudkqd9dvd1nKnq97HKX/Py6', '', 'Jl. yoka', 'Rumah Kos Evi', 'default-image.png', 'evi@gmail.com', '', 'Jl. yoka', 2, '', '', '', 'Tidak Ada', '12', '40', '', '', 'waena', 'heram', 0, '2021-05-25 06:00:29', 1, 0),
('WP25052021098', 'Santoso', 'default-user.png', 'santoso@gmail.com', '$2y$10$C2SIwXcoZ1UI/RPUdIyD6OWvqkwfM3h8A78wUBv81yaf19P4PR.j6', '085243981351', 'jl.karang 5', 'Rumah Kos Santoso', 'default-image.png', 'santoso@gmail.com', '085243981351', 'jl.karang 5', 2, '', '', '', '', '30 kamar', '60 orang', '', '', 'waena', 'heram', 0, '2021-05-25 06:01:37', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobot_kk`
--
ALTER TABLE `bobot_kk`
  ADD UNIQUE KEY `id_bkk` (`id_bkk`);

--
-- Indexes for table `bobot_ksda`
--
ALTER TABLE `bobot_ksda`
  ADD UNIQUE KEY `id_bksda` (`id_bksda`);

--
-- Indexes for table `bukti_pembayaran`
--
ALTER TABLE `bukti_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komponen_sda`
--
ALTER TABLE `komponen_sda`
  ADD UNIQUE KEY `id_ksda` (`id_ksda`);

--
-- Indexes for table `opsi`
--
ALTER TABLE `opsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pajak_hda`
--
ALTER TABLE `pajak_hda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pajak_kk`
--
ALTER TABLE `pajak_kk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pajak_ksda`
--
ALTER TABLE `pajak_ksda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengenaan_pajak`
--
ALTER TABLE `pengenaan_pajak`
  ADD UNIQUE KEY `id_pp` (`id_pp`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD UNIQUE KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `presentase_khda`
--
ALTER TABLE `presentase_khda`
  ADD UNIQUE KEY `id_pkhda` (`id_pkhda`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wajib_pajak`
--
ALTER TABLE `wajib_pajak`
  ADD UNIQUE KEY `id_wp` (`id_wp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `bukti_pembayaran`
--
ALTER TABLE `bukti_pembayaran`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `opsi`
--
ALTER TABLE `opsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pajak_hda`
--
ALTER TABLE `pajak_hda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pajak_kk`
--
ALTER TABLE `pajak_kk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pajak_ksda`
--
ALTER TABLE `pajak_ksda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1653;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;