-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 08:02 AM
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
-- Database: `sipakot-2022`
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
  `id_pengguna` int(3) DEFAULT NULL,
  `created_by` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `id_pengguna`, `created_by`, `created_at`) VALUES
(76, 4, '2021', '1622089001', 'tagiahan air tanah bulan April', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 06:45:16'),
(77, 5, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '40', 18, 0, '2021-05-27 06:48:29'),
(78, 5, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '3', '25', 18, 0, '2021-05-27 06:52:07'),
(79, 4, '2021', '1622089144', 'Infomasi tagihan air tanah bulan april', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 06:53:50'),
(80, 5, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30-40 meter', 18, 0, '2021-05-27 06:54:41'),
(81, 5, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30', 18, 0, '2021-05-27 06:55:33'),
(82, 5, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', 18, 0, '2021-05-27 06:57:17'),
(83, 5, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', 18, 0, '2021-05-27 06:57:49'),
(84, 5, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', 18, 0, '2021-05-27 06:58:59'),
(85, 5, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', 18, 0, '2021-05-27 06:59:15'),
(86, 5, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '25', 18, 0, '2021-05-27 07:00:11'),
(87, 4, '2021', '1621924495', 'informasi tagihan pajak air tanah bulan april ', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:02:59'),
(88, 5, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', 18, 0, '2021-05-27 07:03:33'),
(89, 5, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', 18, 0, '2021-05-27 07:04:34'),
(90, 5, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', 18, 0, '2021-05-27 07:05:26'),
(91, 5, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', 18, 0, '2021-05-27 07:06:57'),
(92, 5, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '27', 18, 0, '2021-05-27 07:07:50'),
(93, 5, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:10:17'),
(94, 5, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:11:17'),
(95, 4, '2021', '1622097281', 'informasi tagihan air tanah bulan april', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '12 m', 18, 0, '2021-05-27 07:11:18'),
(96, 4, '2021', '1622094527', 'informasi tagihan air pajak bulan april', '4', '', '', '27', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:11:58'),
(97, 5, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:13:21'),
(98, 5, '2021', '1622092765', 'Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:14:27'),
(99, 5, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', 18, 0, '2021-05-27 07:14:40'),
(100, 5, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:15:34'),
(101, 4, '2021', '1622089258', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:15:55'),
(102, 5, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:16:46'),
(103, 5, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', 18, 0, '2021-05-27 07:18:24'),
(104, 4, '2021', '1622089607', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '36', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:19:00'),
(105, 5, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', 18, 0, '2021-05-27 07:19:31'),
(106, 5, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', 18, 0, '2021-05-27 07:19:44'),
(107, 5, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', 18, 0, '2021-05-27 07:21:39'),
(108, 4, '2021', '1622089830', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:24:19'),
(109, 5, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', 18, 0, '2021-05-27 07:24:31'),
(110, 5, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', 18, 0, '2021-05-27 07:25:17'),
(111, 5, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '12 m', 18, 0, '2021-05-27 07:25:22'),
(112, 5, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '15', 18, 0, '2021-05-27 07:26:27'),
(114, 5, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '16 ', 18, 0, '2021-05-27 07:27:19'),
(115, 5, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '25', 18, 0, '2021-05-27 07:27:26'),
(117, 5, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30', 18, 0, '2021-05-27 07:28:48'),
(118, 5, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', 18, 0, '2021-05-27 07:30:16'),
(119, 5, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '4', '37', 18, 0, '2021-05-27 07:30:20'),
(120, 4, '2021', '1622089963', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:30:55'),
(121, 5, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '35', 18, 0, '2021-05-27 07:32:03'),
(122, 5, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24 ', 18, 0, '2021-05-27 07:32:05'),
(123, 5, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', 18, 0, '2021-05-27 07:33:28'),
(124, 4, '2021', '1622092987', 'informasi tagihan pajak air tanah bulan april ', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 07:34:05'),
(126, 5, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '33', 18, 0, '2021-05-27 07:34:19'),
(128, 5, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30', 18, 0, '2021-05-27 07:36:36'),
(129, 5, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', 18, 0, '2021-05-27 07:36:39'),
(130, 5, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40', 18, 0, '2021-05-27 07:37:28'),
(131, 5, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24', 18, 0, '2021-05-27 07:37:45'),
(132, 5, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '40', 18, 0, '2021-05-27 07:38:56'),
(133, 5, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', 18, 0, '2021-05-27 07:39:00'),
(134, 5, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '45', 18, 0, '2021-05-27 07:39:53'),
(135, 5, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24', 18, 0, '2021-05-27 07:40:55'),
(136, 5, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', 18, 0, '2021-05-27 07:41:17'),
(137, 5, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', 18, 0, '2021-05-27 07:41:56'),
(138, 5, '2021', '1622097351', 'Tagihan pajak air tanah periode Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '40', 18, 0, '2021-05-27 07:42:12'),
(139, 5, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', 18, 0, '2021-05-27 07:46:07'),
(140, 5, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', 18, 0, '2021-05-27 07:49:32'),
(141, 5, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24', 18, 0, '2021-05-27 07:54:00'),
(142, 5, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '24 m', 18, 0, '2021-05-27 07:56:21'),
(143, 5, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', 18, 0, '2021-05-27 07:57:13'),
(144, 5, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', 18, 0, '2021-05-27 07:58:36'),
(145, 5, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14 m', 18, 0, '2021-05-27 07:59:28'),
(146, 5, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30', 18, 0, '2021-05-27 07:59:52'),
(147, 5, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 m', 18, 0, '2021-05-27 08:01:30'),
(148, 5, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24 m', 18, 0, '2021-05-27 08:01:32'),
(149, 5, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 meter', 18, 0, '2021-05-27 08:02:31'),
(150, 4, '2021', '1622093162', 'informasi tagihan pajak air tanah bulan april ', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 08:02:39'),
(151, 5, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '12 m', 18, 0, '2021-05-27 08:03:57'),
(152, 5, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 m', 18, 0, '2021-05-27 08:03:59'),
(153, 4, '2021', '1622093394', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '94.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 08:04:24'),
(154, 5, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', 18, 0, '2021-05-27 08:04:52'),
(155, 5, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '20 m', 18, 0, '2021-05-27 08:05:53'),
(156, 5, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 meter', 18, 0, '2021-05-27 08:06:26'),
(158, 4, '2021', '1622093523', 'informasi tagihan pajak air tanah bulan april', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-05-27 08:07:05'),
(159, 5, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24', 18, 0, '2021-05-27 08:07:43'),
(160, 5, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '12 m', 18, 0, '2021-05-27 08:08:53'),
(161, 5, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14 m', 18, 0, '2021-05-27 08:09:56'),
(162, 5, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30', 18, 0, '2021-05-27 08:10:49'),
(163, 5, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '20', 18, 0, '2021-05-27 08:12:09'),
(164, 5, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '40 m', 18, 0, '2021-05-27 08:12:46'),
(165, 5, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14 m', 18, 0, '2021-05-27 08:13:13'),
(166, 5, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 m', 18, 0, '2021-05-27 08:14:20'),
(167, 5, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '2', '30 m', 18, 0, '2021-05-27 08:15:58'),
(168, 5, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '24 m', 18, 0, '2021-05-27 08:17:50'),
(169, 5, '2021', '1622103288', 'Informasi Tagihan Air Tanah bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '30 m', 18, 0, '2021-05-27 08:19:23'),
(170, 2, '2021', '1623296443', 'Info Tagihan Bulan Februari', '4', '', '', '600', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '14', 18, 0, '2021-06-10 03:42:29'),
(179, 2, '2021', '1623384439', 'Informasi Tagihan Bulanan', '4', '', '', '109', 0, 4, '1200', '0.2', '0.6', '0.4', '', '1', '', 18, 0, '2021-06-11 04:12:31'),
(180, 3, '2021', '1623384439', 'Informasi Tagihan Bulanan', '4', '', '', '88', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-11 04:12:46'),
(181, 4, '2021', '1623384439', 'Informasi Tagihan Bulanan', '4', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '1', '', 18, 0, '2021-06-11 04:13:04'),
(183, 5, '2021', '1622103466', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '172.28', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 01:24:24'),
(184, 5, '2021', '1623640323', 'Tagihan Pajak Air Tanah Bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:22:44'),
(185, 5, '2021', '1623731722', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '120.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:25:19'),
(186, 5, '2021', '1623642110', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:27:36'),
(187, 5, '2021', '1623642547', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:37:39'),
(188, 5, '2021', '1623642819', 'Tagihan Pajak Air Tanah bulan Mei 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:41:08'),
(189, 5, '2021', '1623643077', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:44:47'),
(190, 5, '2021', '1623643274', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:46:09'),
(191, 5, '2021', '1623732794', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:47:15'),
(192, 5, '2021', '1623645204', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:48:53'),
(193, 5, '2021', '1623645579', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '260.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:49:55'),
(194, 5, '2021', '1623645793', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:51:38'),
(195, 5, '2021', '1623645956', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '120.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:52:51'),
(196, 5, '2021', '1623646858', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:54:30'),
(197, 5, '2021', '1623647119', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:55:46'),
(198, 5, '2021', '1623647450', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 04:59:43'),
(199, 5, '2021', '1623647645', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:00:52'),
(200, 5, '2021', '1623647959', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:03:15'),
(201, 5, '2021', '1623648156', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:09:00'),
(203, 5, '2021', '1623734005', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:15:28'),
(204, 5, '2021', '1623648381', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '204.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:16:41'),
(205, 5, '2021', '1623648731', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '167.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:17:33'),
(206, 5, '2021', '1623648925', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '120.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:18:26'),
(207, 5, '2021', '1623649147', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:19:30'),
(208, 5, '2021', '1623734493', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '195.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:20:29'),
(209, 5, '2021', '1623649544', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:27:56'),
(210, 5, '2021', '1623734670', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '158.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:29:32'),
(211, 5, '2021', '1623734788', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '167.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:30:40'),
(212, 5, '2021', '1623734898', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:31:53'),
(213, 5, '2021', '1623734997', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:33:08'),
(214, 5, '2021', '1623735125', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:34:07'),
(215, 5, '2021', '1623735232', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:35:52'),
(216, 5, '2021', '1623735521', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '316.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:37:52'),
(217, 5, '2021', '1623735698', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:39:41'),
(218, 5, '2021', '1623735798', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '55.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:40:50'),
(219, 5, '2021', '1623735937', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:41:49'),
(221, 5, '2021', '1623736179', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-16 05:46:31'),
(222, 5, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '590', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-17 01:36:21'),
(223, 5, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '338', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-17 01:55:55'),
(224, 5, '2021', '1622092292', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '9', '', '', '309', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-17 02:00:13'),
(225, 5, '2021', '1623898133', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '217', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-17 03:14:27'),
(226, 5, '2021', '1623900677', 'Informasi Tagihan PAT', '4', '', '', '371', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1626156089.jpg', '1', '', 18, 0, '2021-06-17 10:22:32'),
(227, 5, '2021', '1623927556', 'Informasi Tagihan Air Tanah Periode Mei', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-17 11:02:49'),
(228, 5, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-06-17 11:35:55'),
(229, 5, '2021', '1622095324', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '172', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 01:58:55'),
(230, 5, '2021', '1622098496', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '696', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:10:23'),
(231, 5, '2021', '1622096916', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '164', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:11:13'),
(232, 5, '2021', '1622098684', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '691', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:12:12'),
(233, 5, '2021', '1623384439', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '47', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:19:17'),
(234, 5, '2021', '1622094263', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '368', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:20:18'),
(235, 5, '2021', '1622102685', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '164', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:21:37'),
(236, 5, '2021', '1625106239', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '317', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:26:45'),
(237, 5, '2021', '1623635157', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '177', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:40:46'),
(238, 5, '2021', '1625107310', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '88', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:48:07'),
(239, 5, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '215', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 02:56:22'),
(240, 5, '2021', '1625108657', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '97', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 03:09:10'),
(241, 5, '2021', '1625109010', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '42', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 03:14:28'),
(242, 5, '2021', '1625109334', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '24', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 03:19:22'),
(243, 5, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '610', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-01 04:20:46'),
(244, 6, '2021', '1623927556', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-06 00:19:41'),
(253, 5, '2021', '1625548247', 'Tagihan Pajak AIr Tanah Periode Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-06 05:14:29'),
(254, 6, '2021', '1622092292', 'Pajak Air Tanah Mall Jayapura Peride Juni 2021', '9', '', '', '327', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-07 02:00:15'),
(255, 6, '2021', '1626050298', 'Informasi Tagihan Pajak AIr Tanah Bulan Juli 2021', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-12 01:03:52'),
(256, 6, '2021', '1622095324', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '179', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-13 00:36:41'),
(257, 6, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '663', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-13 00:37:49'),
(258, 6, '2021', '1623900677', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '249', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1631857474.JPG', '', '', 18, 0, '2021-07-13 05:57:30'),
(259, 6, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '794', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 00:57:55'),
(260, 6, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '425', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 00:59:25'),
(261, 6, '2021', '1622090552', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:04:29'),
(262, 6, '2021', '1625107310', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:06:05'),
(263, 6, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '201', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:06:42'),
(264, 6, '2021', '1622098496', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '433', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:07:36'),
(265, 6, '2021', '1622090031', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '405', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:09:39'),
(266, 6, '2021', '1622096916', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '127', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:10:30'),
(267, 6, '2021', '1622098424', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '9', '', '', '801', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635822931.jpg', '', '', 18, 0, '2021-07-14 01:13:41'),
(268, 6, '2021', '1626225347', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:19:57'),
(269, 6, '2021', '1626225654', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:23:48'),
(270, 6, '2021', '1622093564', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:25:01'),
(271, 6, '2021', '1622092018', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '2548', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:27:55'),
(272, 6, '2021', '1622098684', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '265.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:34:22'),
(273, 6, '2021', '1625548247', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:34:53'),
(274, 6, '2021', '1626226519', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '68', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:40:10'),
(275, 6, '2021', '1626226937', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '107', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:47:09'),
(276, 6, '2021', '1626227277', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:50:08'),
(277, 6, '2021', '1626227510', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '92', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:55:16'),
(278, 6, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '249', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 01:58:49'),
(279, 6, '2021', '1626228149', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '92', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:05:00'),
(280, 6, '2021', '1622093001', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '140', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:06:27'),
(281, 6, '2021', '1622092470', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '333', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:09:49'),
(282, 6, '2021', '1626228632', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '184', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:15:24'),
(283, 6, '2021', '1626228945', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '255', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:18:35'),
(284, 6, '2021', '1626229415', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '137', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:28:08'),
(285, 6, '2021', '1622103166', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:29:03'),
(286, 6, '2021', '1622099456', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:29:37'),
(287, 6, '2021', '1625109334', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:30:08'),
(288, 6, '2021', '1625106239', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '119', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:31:44'),
(289, 6, '2021', '1623635157', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '108', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:32:44'),
(290, 6, '2021', '1626229992', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:35:42'),
(291, 6, '2021', '1626230210', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '97', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:40:31'),
(292, 6, '2021', '1622102685', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '32', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:41:25'),
(293, 6, '2021', '1622094263', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '302', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:42:50'),
(294, 6, '2021', '1623384439', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:43:28'),
(295, 6, '2021', '1625109010', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:44:15'),
(296, 6, '2021', '1625108657', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '88', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:47:34'),
(297, 6, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '295', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 02:48:22'),
(298, 6, '2021', '1622098297', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '97', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 03:31:24'),
(299, 6, '2021', '1622099271', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-14 03:34:30'),
(300, 5, '2021', '1622098424', 'Tagihan Pajak Air Tanah Periode  Bulan Mei 2021', '9', '', '', '689', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635822968.jpg', '', '', 18, 0, '2021-07-15 08:09:07'),
(301, 5, '2021', '1626395262', 'Tagihan Pajak Air Tanah Periode Bulan Mei 2021', '4', '', '', '332', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-16 00:30:54'),
(302, 6, '2021', '1626395262', 'Tagihan Pajak Air Tanah Periode Bulan Juni 2021', '4', '', '', '321', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-16 00:31:52'),
(303, 5, '2021', '1626050298', 'Tagihan Pajak Air Tanah Periode Mei 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-19 02:06:45'),
(304, 5, '2021', '1627344636', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-27 00:21:39'),
(305, 6, '2021', '1627344636', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-07-27 00:22:52'),
(306, 6, '2021', '1627905389', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 14:15:43'),
(307, 7, '2021', '1627905389', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 14:17:19'),
(308, 5, '2021', '1622099118', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 22:59:11'),
(309, 6, '2021', '1622099118', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 22:59:57'),
(310, 7, '2021', '1622099118', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 23:00:22'),
(311, 5, '2021', '1627905389', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 23:03:50'),
(312, 7, '2021', '1623927556', 'Tagihan PAT bulan Juli 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 23:46:03'),
(313, 5, '2021', '1622098297', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '166', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 23:52:32'),
(314, 5, '2021', '1622093825', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '269', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 23:55:53'),
(315, 6, '2021', '1622093825', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-02 23:56:15'),
(316, 5, '2021', '1626228945', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '200', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-03 00:16:31'),
(317, 5, '2021', '1622101246', 'Tagihan PAT bulan Mei 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 02:05:54'),
(318, 6, '2021', '1622101246', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '1800', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 02:06:25'),
(319, 7, '2021', '1622101246', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 02:06:49'),
(320, 5, '2021', '1628043297', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '1395', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 02:19:13'),
(321, 6, '2021', '1628043297', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '1350', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 02:19:38'),
(322, 7, '2021', '1628043297', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '1395', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 02:20:02'),
(324, 6, '2021', '1628048359', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '759', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 03:44:02'),
(325, 7, '2021', '1628048359', 'Tagihan PAT bulan Juli 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-04 03:44:40'),
(326, 5, '2021', '1628053281', 'Tagihan PAT Mei 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:41:05'),
(327, 6, '2021', '1628053281', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '330', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:41:43'),
(328, 7, '2021', '1628053281', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:42:06'),
(329, 5, '2021', '1628053192', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:44:54'),
(330, 6, '2021', '1628053192', 'Tagihan PAT Bulan Juni 2021', '4', '', '', '660', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:45:46'),
(331, 7, '2021', '1628053192', 'Tagihan PAT Bulan Juli 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:47:00'),
(332, 5, '2021', '1628048359', 'Tagihan PAT Bulan Mei 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-05 03:52:55'),
(333, 7, '2021', '1622095324', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '285', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:15:34'),
(334, 7, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '904', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:17:41'),
(335, 7, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '1779', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:20:59'),
(336, 7, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '418', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:22:39'),
(337, 7, '2021', '1622092292', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '9', '', '', '523', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:24:48'),
(338, 7, '2021', '1623898133', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:29:59'),
(339, 7, '2021', '1629376442', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:37:56'),
(340, 7, '2021', '1625107310', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:42:21'),
(341, 7, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '229', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:44:04'),
(342, 7, '2021', '1629377204', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 12:53:23'),
(344, 7, '2021', '1629377959', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:01:51'),
(345, 7, '2021', '1629378379', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:08:53'),
(346, 7, '2021', '1622098904', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '514', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:09:51'),
(347, 7, '2021', '1622098496', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '627', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:11:14'),
(348, 7, '2021', '1622090031', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '498', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:12:31'),
(349, 7, '2021', '1622098297', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '114', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:14:20'),
(350, 7, '2021', '1622098424', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '9', '', '', '508', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635822994.jpg', '', '', 18, 0, '2021-08-19 13:15:45'),
(351, 7, '2021', '1626225347', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '23', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:16:59'),
(352, 6, '2021', '1622098812', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '147', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:18:18'),
(353, 7, '2021', '1622092018', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '6240', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:20:16'),
(354, 7, '2021', '1629379445', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:26:10'),
(355, 7, '2021', '1629379841', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '792', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 13:37:12'),
(356, 7, '2021', '1622093825', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '127', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 22:52:24'),
(357, 7, '2021', '1622098684', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '265.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 22:54:06'),
(358, 7, '2021', '1625106239', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '280', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 22:55:34'),
(359, 7, '2021', '1622102685', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 22:57:43'),
(360, 7, '2021', '1622093564', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 22:59:34'),
(361, 7, '2021', '1622099456', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:00:37'),
(362, 7, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '511', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:01:48'),
(363, 7, '2021', '1626228149', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '152', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:02:57'),
(364, 7, '2021', '1622094263', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '362', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:04:29'),
(365, 7, '2021', '1626230210', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '48', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:06:10'),
(366, 7, '2021', '1625548247', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '40', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:07:24'),
(367, 7, '2021', '1622093001', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '180', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:08:52'),
(368, 7, '2021', '1626228632', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '146', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:10:19'),
(369, 7, '2021', '1626227510', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:11:12'),
(370, 7, '2021', '1626227277', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '16', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:12:52'),
(371, 7, '2021', '1623384439', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:14:49'),
(372, 7, '2021', '1622092470', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '492', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:16:15'),
(373, 7, '2021', '1623900677', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '532', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1631857552.JPG', '', '', 18, 0, '2021-08-19 23:17:45'),
(374, 7, '2021', '1623635157', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '123', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:19:35'),
(375, 7, '2021', '1629415268', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:25:25'),
(376, 7, '2021', '1622099271', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '338', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:26:39'),
(377, 7, '2021', '1626226937', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '201', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:27:53'),
(378, 7, '2021', '1626226519', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '106', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:30:59'),
(379, 7, '2021', '1626228945', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '205', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:32:04'),
(380, 7, '2021', '1629416058', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:36:40'),
(381, 7, '2021', '1626230671', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:37:46'),
(382, 7, '2021', '1626050298', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:39:51'),
(383, 7, '2021', '1625108657', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '108', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:41:01');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `id_pengguna`, `created_by`, `created_at`) VALUES
(384, 7, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '347', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:42:22'),
(385, 7, '2021', '1625109010', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-19 23:45:18'),
(394, 5, '2021', '1626226519', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '59.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-24 03:09:25'),
(400, 5, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '433', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-24 05:40:20'),
(405, 5, '2021', '1626228149', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '187', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-24 06:13:00'),
(407, 5, '2021', '1622099271', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '325', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-25 00:33:15'),
(412, 5, '2021', '1626228632', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '184', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-25 01:02:38'),
(420, 5, '2021', '1622099456', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '96', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-25 02:10:43'),
(427, 6, '2021', '1626230671', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '61', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-25 23:47:40'),
(431, 5, '2021', '1622090031', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '320.67', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-08-25 23:55:34'),
(434, 8, '2021', '1626228945', 'PAT Bulan Agustus 2021', '4', '', '', '200', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-03 01:44:06'),
(435, 8, '2021', '1623927556', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-06 00:42:33'),
(436, 8, '2021', '1623900677', 'Tagihan PAT periode Agustus 2021', '4', '', '', '467', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1639046337.JPG', '', '', 18, 0, '2021-09-08 14:14:13'),
(437, 8, '2021', '1622091731', 'PAT Periode Agustus 2021', '4', '', '', '796', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-08 14:16:42'),
(438, 8, '2021', '1623929487', 'PAT Bulan Agustus 2021', '4', '', '', '188', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-08 14:18:40'),
(439, 5, '2021', '1622092470', 'PAT Bulan Mei 2021', '4', '', '', '557', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-09 00:29:25'),
(440, 5, '2021', '1622093001', 'PAT BUlan Mei 2021', '4', '', '', '246', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-09 00:30:55'),
(441, 8, '2021', '1622093825', 'PAT Bulan Agustus 2021', '4', '', '', '331', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-09 01:44:46'),
(442, 8, '2021', '1622098424', 'PAT Agustus 2021', '9', '', '', '183', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635823014.jpg', '', '', 18, 0, '2021-09-09 01:46:23'),
(443, 8, '2021', '1625548247', 'PAT Bulan Agustus 2022', '4', '', '', '56', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-09 04:39:15'),
(444, 5, '2021', '1631497309', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '100', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-13 01:59:42'),
(445, 8, '2021', '1623635157', 'PAT Bulan Agustus 2021', '4', '', '', '675', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-15 03:48:20'),
(448, 5, '2021', '1632360397', 'PAT Bulan Mei 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '1', '', 18, 0, '2021-09-23 01:29:04'),
(449, 6, '2021', '1632360397', 'PAT Bulan Juni 2021', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:30:54'),
(450, 7, '2021', '1632360397', 'PAT Bulan Juli 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:31:18'),
(451, 8, '2021', '1632360397', 'PAT Bulan  Agustus 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:31:50'),
(452, 9, '2021', '1632360397', 'PAT Bulan September 2021', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:32:14'),
(453, 5, '2021', '1632361405', 'PAT Bulan Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:44:30'),
(454, 6, '2021', '1632361405', 'PAT Bulan Juni 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:44:47'),
(455, 7, '2021', '1632361405', 'PAT Bulan Juli 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:45:11'),
(456, 8, '2021', '1632361405', 'PAT Bulan AGustus 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:45:28'),
(457, 9, '2021', '1632361405', 'PAT Bulan September 2021', '4', '', '', '175', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-23 01:45:47'),
(458, 8, '2021', '1622098211', 'PAT Bulan Agustus 2021', '4', '', '', '2629', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-28 03:22:28'),
(459, 8, '2021', '1622099118', 'PAT BUlan Agustus 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-28 03:23:40'),
(461, 5, '2021', '1632878689', 'PAT Bulan Mei Tahun 2021', '4', '', '', '409.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 01:30:16'),
(462, 6, '2021', '1632878689', 'PAT Bulan Juni Tahun 2021', '4', '', '', '396', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 01:30:51'),
(463, 7, '2021', '1632878689', 'PAT Bulan Juli Tahun 2021', '4', '', '', '409', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 01:31:16'),
(464, 8, '2021', '1632878689', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '409', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 01:31:44'),
(465, 8, '2021', '1625107310', 'PAT Bulan Agustus 2021', '4', '', '', '55', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 01:47:58'),
(466, 5, '2021', '1629377749', 'PAT Bulan Mei 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 02:26:50'),
(467, 6, '2021', '1629377749', 'PAT Bulan Juni Tahun 2021', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 02:27:33'),
(468, 7, '2021', '1629377749', 'PAT Bulan Juli Tahun 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 02:28:05'),
(469, 8, '2021', '1629377749', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 02:28:54'),
(470, 8, '2021', '1622092292', 'PAT Bulan Agustus Tahun 2021', '9', '', '', '934', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 04:46:28'),
(471, 8, '2021', '1625108022', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '280', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 04:48:42'),
(472, 6, '2021', '1623898133', 'PAT Bulan Juni Tahun 2021', '4', '', '', '256', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 04:52:32'),
(473, 8, '2021', '1623898133', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '302', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 04:55:32'),
(476, 8, '2021', '1622098297', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '316', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-29 05:45:33'),
(477, 5, '2021', '1626226937', 'PAT Bulan Mei Tahun 2021', '4', '', '', '272', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-30 02:17:23'),
(478, 5, '2021', '1632973555', 'PAT Bulan Mei Tahun 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-30 04:02:51'),
(479, 6, '2021', '1632973555', 'PAT Bulan Juni Tahun 2021', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-30 04:03:57'),
(480, 7, '2021', '1632973555', 'PAT Bulan Juli Tahun 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-30 04:04:20'),
(481, 8, '2021', '1632973555', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-09-30 04:04:52'),
(483, 9, '2021', '1623635157', 'PAT Bulan September Tahun 2021', '4', '', '', '335', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-03 22:58:02'),
(484, 9, '2021', '1622099118', 'PAT Bulan September Tahun 2021', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 00:20:25'),
(485, 9, '2021', '1622098211', 'PAT Bulan September Tahun 2022', '4', '', '', '696', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:11:48'),
(486, 9, '2021', '1622092292', 'PAT Bulan September Tahun 2021', '9', '', '', '1786', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:13:23'),
(487, 9, '2021', '1623898133', 'PAT Bulan September Tahun 2021', '4', '', '', '456', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:15:23'),
(488, 9, '2021', '1625107310', 'PAT Bulan September Tahun 2021', '4', '', '', '126', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:16:34'),
(489, 8, '2021', '1626228632', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '233', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:20:23'),
(490, 9, '2021', '1626228632', 'PAT Bulan September Tahun 2021', '4', '', '', '233', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:20:58'),
(493, 9, '2021', '1625108022', 'PAT Bulan September Tahun 2021', '4', '', '', '266', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:41:40'),
(494, 9, '2021', '1622093825', 'PAT Bulan September Tahun 2021', '4', '', '', '193', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 01:44:00'),
(495, 8, '2021', '1622092470', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '617', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 02:44:55'),
(496, 9, '2021', '1622092470', 'PAT Bulan September Tahun 2021', '4', '', '', '472', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 02:46:05'),
(497, 5, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '1987.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:07:09'),
(498, 9, '2021', '1623900677', 'PAT Bulan Septe,ber Tahun 2021', '4', '', '', '420', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1639046410.JPG', '', '', 18, 0, '2021-10-04 03:15:48'),
(499, 8, '2021', '1622093564', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:38:04'),
(500, 9, '2021', '1622093564', 'PAT Bulan September Tahun 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:38:32'),
(501, 6, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:42:17'),
(502, 8, '2021', '1622093001', 'PAT Bulan Agustus Tahun 2021', '4', '', '', '296', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:42:39'),
(503, 9, '2021', '1622093001', 'PAT Bulan September Tahun 2021', '4', '', '', '296', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:43:06'),
(504, 7, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '1987.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:45:23'),
(505, 8, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '1987.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:46:39'),
(506, 9, '2021', '1633316372', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 03:47:54'),
(507, 9, '2021', '1623929487', 'PAT Bulan September Tahun 2021', '4', '', '', '188', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 04:33:22'),
(508, 6, '2021', '1622103466', 'PAT Bulan Juni 2021', '4', '', '', '175.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 04:48:57'),
(509, 7, '2021', '1622103466', 'PAT Bulan Juli 2021', '4', '', '', '181.35', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 04:49:36'),
(510, 8, '2021', '1622103466', 'PAT Bulan Agustus 2021', '4', '', '', '181.35', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 04:50:05'),
(511, 9, '2021', '1622103466', 'PAT Bulan September 2021', '4', '', '', '175.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-04 04:50:35'),
(515, 5, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '218.24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 03:37:42'),
(516, 6, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '211.2', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 03:52:07'),
(517, 7, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '218.24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 03:52:45'),
(518, 8, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '218.24', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 03:53:37'),
(519, 9, '2021', '1633327800', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '211.2', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 03:54:27'),
(520, 5, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '69.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 04:09:54'),
(521, 6, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '67.26', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 04:30:28'),
(522, 7, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '69.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 04:31:24'),
(523, 8, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '69.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 04:32:10'),
(524, 9, '2021', '1633328134', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.26', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 04:32:58'),
(525, 5, '2021', '1626230671', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '61', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:25:25'),
(526, 6, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:38:19'),
(527, 7, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:39:09'),
(528, 8, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:39:29'),
(529, 6, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:42:46'),
(530, 7, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:43:06'),
(531, 8, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:43:32'),
(532, 6, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:44:59'),
(533, 7, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:45:18'),
(534, 8, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:45:39'),
(535, 6, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Juni  2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:47:55'),
(536, 7, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:49:00'),
(537, 8, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:49:23'),
(538, 6, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:57:29'),
(539, 7, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:57:46'),
(540, 8, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 05:58:10'),
(541, 6, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:00:57'),
(542, 7, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:01:23'),
(543, 8, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:01:55'),
(544, 6, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:04:37'),
(545, 7, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:05:01'),
(546, 8, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:05:26'),
(547, 6, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:06:31'),
(548, 7, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:06:48'),
(549, 8, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:07:08'),
(550, 6, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:10:43'),
(551, 7, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:11:01'),
(552, 8, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:11:24'),
(553, 6, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:12:36'),
(554, 7, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:12:55'),
(555, 8, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:13:15'),
(556, 6, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:14:25'),
(557, 7, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:14:44'),
(558, 8, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:15:05'),
(559, 6, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:17:11'),
(560, 7, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:17:27'),
(561, 8, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:17:53'),
(562, 6, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:20:03'),
(563, 7, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:20:49'),
(564, 8, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:21:38'),
(565, 6, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:22:54'),
(566, 7, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:23:17'),
(567, 8, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:23:37'),
(568, 6, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:26:07'),
(569, 7, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:26:30'),
(570, 8, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:26:50'),
(571, 6, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:28:42'),
(572, 7, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:29:41'),
(573, 8, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:30:03'),
(574, 6, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:31:45'),
(575, 7, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:32:05'),
(576, 8, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:32:32'),
(578, 9, '2021', '1622098424', 'PAT Bulan September 2021', '9', '', '', '344', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1635823037.jpg', '', '', 18, 0, '2021-10-05 06:37:10'),
(579, 9, '2021', '1623927556', 'PAT Bulan September 2021', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 06:58:52'),
(580, 8, '2021', '1622099271', 'PAT Bulan Agustus 2021', '4', '', '', '276.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 11:48:32'),
(581, 9, '2021', '1622099271', 'PAT Bulan September 2021', '4', '', '', '276.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-05 11:49:17'),
(582, 8, '2021', '1627905389', 'PAT Bulan Agustus 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 00:38:50'),
(583, 9, '2021', '1627905389', 'PAT Bulan September 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 00:39:13'),
(584, 9, '2021', '1622091731', 'PAT Bulan September 2021', '4', '', '', '1455', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 02:50:39'),
(586, 5, '2021', '1622092018', 'PAT Bulan Mei 2021', '4', '', '', '7466', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 04:51:36'),
(587, 5, '2021', '1633496343', 'PAT Bulan Mei 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 05:05:18'),
(588, 6, '2021', '1633496343', 'PAT Bulan Juni 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 05:05:41'),
(589, 7, '2021', '1633496343', 'PAT Bulan Juli 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 05:06:13'),
(590, 8, '2021', '1633496343', 'PAT Bulan Agustus 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 05:06:44'),
(591, 9, '2021', '1633496343', 'PAT Bulan September 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 05:07:07'),
(593, 5, '2021', '1622098812', 'PAT Bulan Mei 2021', '4', '', '', '199', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 07:27:14'),
(595, 9, '2021', '1626228945', 'PAT Bulan September 2021', '4', '', '', '924', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 07:34:45'),
(598, 9, '2021', '1632973555', 'PAT Bulan September 2021', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:24:14'),
(599, 7, '2021', '1626395262', 'PAT Bulan Juli 2021', '4', '', '', '332', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:28:10'),
(600, 8, '2021', '1626395262', 'PAT Bulan Agustus 2021', '4', '', '', '332', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:28:40'),
(601, 9, '2021', '1626395262', 'PAT Bulan September 2021', '4', '', '', '321', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:29:12'),
(602, 5, '2021', '1622094454', 'PAT Bulan Mei 2021', '4', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:32:52'),
(603, 6, '2021', '1622094454', 'PAT Bulan Juni 2021', '4', '', '', '60', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:33:17'),
(604, 7, '2021', '1622094454', 'PAT Bulan Juli 2021', '9', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:33:41'),
(605, 8, '2021', '1622094454', 'PAT Bulan Agustus 2021', '4', '', '', '62', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:34:09'),
(606, 9, '2021', '1622094454', 'PAT Bulan September 2021', '4', '', '', '60', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:34:33'),
(607, 9, '2021', '1622098297', 'PAT Bulan September 2021', '4', '', '', '51', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:38:10'),
(608, 9, '2021', '1632878689', 'PAT Bulan September 2021', '4', '', '', '396', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-06 11:41:25'),
(611, 5, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-07 23:24:21'),
(612, 6, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '300', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-07 23:42:55'),
(613, 7, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-07 23:43:49'),
(614, 8, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-07 23:44:25'),
(615, 9, '2021', '1633523343', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '300', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-07 23:45:04'),
(616, 5, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-07 23:58:20'),
(617, 6, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 00:11:50'),
(618, 7, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 00:12:35'),
(619, 8, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 00:14:34'),
(620, 9, '2021', '1633524171', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 00:15:13'),
(621, 5, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 02:19:39'),
(622, 6, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 02:31:53'),
(623, 7, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan juli 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 02:35:06'),
(624, 8, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 02:35:45'),
(625, 9, '2021', '1633647281', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 02:36:24'),
(626, 5, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '162.75', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 02:51:02'),
(627, 6, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '157.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:00:47'),
(628, 7, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '162.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:01:24'),
(629, 8, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '162.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:01:57'),
(630, 9, '2021', '1633647814', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '157.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:02:29'),
(631, 5, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:19:25'),
(632, 6, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '171', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:29:35'),
(633, 7, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:30:14'),
(634, 8, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:30:45'),
(635, 9, '2021', '1633648260', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '171', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:31:19'),
(636, 6, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:42:11'),
(637, 7, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:52:34'),
(638, 8, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:53:00'),
(639, 9, '2021', '1623642547', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 03:53:31'),
(640, 6, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 04:55:04'),
(641, 7, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 04:55:31'),
(642, 8, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 04:55:57'),
(643, 6, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 04:57:43'),
(644, 7, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 04:58:04'),
(645, 8, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 04:58:42'),
(646, 6, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:04:01'),
(647, 7, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:04:31'),
(648, 8, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:05:00'),
(649, 6, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:08:25'),
(650, 7, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:08:51'),
(651, 7, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:09:10'),
(652, 8, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:09:35'),
(653, 6, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:10:49'),
(654, 7, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:11:16'),
(655, 8, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:11:41'),
(656, 6, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:13:51'),
(657, 7, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:14:18'),
(658, 8, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:15:05'),
(659, 6, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:17:39'),
(660, 7, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan  Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:18:52'),
(661, 8, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:19:14'),
(662, 6, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:20:34'),
(663, 7, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:20:54'),
(664, 8, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:21:14'),
(665, 6, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:23:37'),
(666, 7, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:24:04'),
(667, 8, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:24:29'),
(668, 6, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:25:51'),
(669, 7, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:26:13'),
(670, 8, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:26:41'),
(671, 7, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:27:49'),
(672, 6, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:28:09'),
(673, 8, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:28:37'),
(675, 6, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:30:15'),
(676, 7, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:30:36'),
(677, 8, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:31:01'),
(678, 6, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:32:06'),
(679, 7, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:32:33'),
(680, 8, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:33:00'),
(681, 6, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:34:36'),
(682, 7, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:35:06'),
(683, 8, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:35:27'),
(684, 6, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:37:36'),
(685, 7, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:38:59'),
(686, 8, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:39:28'),
(687, 5, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:40:26'),
(688, 6, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:41:09'),
(689, 7, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:41:30'),
(690, 8, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:41:49'),
(691, 6, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:43:31'),
(692, 7, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:44:10'),
(693, 8, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:44:43'),
(694, 6, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:46:17'),
(695, 7, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:46:43'),
(696, 8, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:47:05'),
(697, 6, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:48:13'),
(698, 7, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:48:32'),
(699, 8, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:48:57'),
(700, 6, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:51:13'),
(701, 7, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:51:42'),
(702, 8, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:52:10'),
(703, 6, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:54:04'),
(704, 7, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:54:29'),
(705, 8, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:55:01'),
(706, 6, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:56:38'),
(707, 7, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:57:21'),
(708, 8, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 05:57:40'),
(709, 6, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:00:24'),
(710, 7, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:00:43'),
(711, 8, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:02:03'),
(712, 6, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:03:55'),
(713, 7, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:04:15'),
(714, 8, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:04:37'),
(715, 6, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:06:53'),
(716, 7, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:07:14'),
(717, 8, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:07:38'),
(718, 6, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:09:18'),
(719, 7, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:09:52'),
(720, 8, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:10:12'),
(721, 6, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:14:07'),
(722, 7, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:14:27'),
(723, 8, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:15:27'),
(724, 6, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:17:06'),
(725, 7, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:17:26'),
(726, 8, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-08 06:17:50'),
(727, 8, '2021', '1622092018', 'PAT Agustus 2021', '4', '', '', '7959', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-13 01:20:07'),
(728, 9, '2021', '1622092018', 'PAT September 2021', '4', '', '', '7959', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-13 01:20:26'),
(729, 8, '2021', '1622098684', 'PAT Agustus 2021', '4', '', '', '822.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-13 01:26:56'),
(730, 9, '2021', '1622098684', 'PAT September 2021', '4', '', '', '822.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-13 01:27:33'),
(733, 9, '2021', '1629377749', 'PAT Bulan September 2021', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-18 01:18:52'),
(734, 8, '2021', '1626050298', 'PAT Bulan Agustus 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-18 01:27:43'),
(735, 9, '2021', '1626050298', 'PAT Bulan September 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-18 01:28:10');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `id_pengguna`, `created_by`, `created_at`) VALUES
(736, 10, '2021', '1626050298', 'PAT Bulan Oktober 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-18 02:28:51'),
(738, 8, '2021', '1625106239', 'PAT Bulan Agustus 2021', '4', '', '', '347.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-18 05:06:46'),
(739, 9, '2021', '1625106239', 'PAT Bulan September 2021', '4', '', '', '347.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-18 05:07:09'),
(741, 9, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '270', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:46:28'),
(742, 10, '2021', 'WP25052021098', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:47:12'),
(743, 9, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '288', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:51:54'),
(744, 10, '2021', 'WP25052021094', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '297.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:53:11'),
(745, 9, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:54:59'),
(746, 10, '2021', 'WP25052021096', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:55:42'),
(747, 6, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:58:02'),
(748, 7, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:58:30'),
(749, 8, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:58:52'),
(750, 9, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 01:59:38'),
(751, 10, '2021', '1622103288', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:00:25'),
(752, 5, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:01:24'),
(753, 6, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:01:49'),
(754, 7, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:02:12'),
(755, 8, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:02:39'),
(756, 9, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:03:26'),
(757, 10, '2021', '1629092692', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:03:57'),
(758, 9, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:05:11'),
(759, 10, '2021', '1621923782', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:05:51'),
(760, 9, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '234', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:06:59'),
(761, 10, '2021', '1621924319', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '241.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:07:46'),
(762, 6, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:09:08'),
(763, 7, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:09:37'),
(764, 8, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:10:08'),
(765, 9, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:10:50'),
(766, 10, '2021', '1621924532', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:11:23'),
(767, 9, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '243', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:12:19'),
(768, 10, '2021', '1621924728', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '251.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:13:00'),
(769, 6, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:14:39'),
(770, 7, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:15:20'),
(771, 8, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:15:52'),
(772, 9, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:16:23'),
(773, 10, '2021', '1621924888', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:17:02'),
(774, 9, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:18:07'),
(775, 10, '2021', '1621925332', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:18:54'),
(776, 9, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '292.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:20:21'),
(777, 10, '2021', 'WP25052021023', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '302.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:20:51'),
(778, 9, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '189', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:22:16'),
(779, 10, '2021', '1621923113', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '195.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:22:58'),
(780, 9, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '288', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:24:37'),
(781, 10, '2021', '1621923352', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '297.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:25:21'),
(782, 9, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '189', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:26:50'),
(783, 10, '2021', '1621923542', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '195.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:27:30'),
(784, 9, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '243', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:28:46'),
(785, 10, '2021', '1621923753', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '251.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:29:19'),
(786, 9, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:31:43'),
(787, 10, '2021', '1621923924', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:32:14'),
(788, 6, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:34:24'),
(789, 7, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:34:47'),
(790, 8, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:35:20'),
(791, 9, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:35:49'),
(792, 10, '2021', '1621924200', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:42:37'),
(793, 6, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:44:07'),
(794, 7, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:44:30'),
(795, 8, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:44:53'),
(796, 9, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:45:21'),
(797, 10, '2021', '1621924406', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:45:55'),
(798, 6, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:47:48'),
(799, 7, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:48:06'),
(800, 8, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:48:25'),
(801, 9, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '171', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:48:53'),
(802, 10, '2021', '1621924501', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '176.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:49:27'),
(803, 9, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '288', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:53:44'),
(804, 10, '2021', '1621924607', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '297.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:54:35'),
(805, 6, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:56:01'),
(806, 7, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:56:24'),
(807, 8, '2021', '1621924758', ' Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:56:46'),
(808, 9, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:57:21'),
(809, 10, '2021', '1621924758', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:58:06'),
(810, 6, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 02:59:45'),
(811, 7, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 03:00:20'),
(812, 8, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 03:00:41'),
(813, 9, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 03:01:23'),
(814, 10, '2021', '1621924921', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 03:02:13'),
(815, 5, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:04:02'),
(816, 6, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:04:30'),
(817, 7, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:04:49'),
(818, 8, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:05:11'),
(819, 9, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:06:48'),
(820, 10, '2021', 'WP25052021021', 'Tagihan Pajak Air Tanah periode bulan oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:07:17'),
(821, 9, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:08:36'),
(822, 10, '2021', 'WP25052021093', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:09:23'),
(823, 9, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:10:31'),
(824, 10, '2021', 'WP25052021095', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '223.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:11:17'),
(825, 9, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:12:36'),
(826, 10, '2021', 'WP25052021097', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:13:09'),
(827, 9, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '319.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:14:25'),
(828, 10, '2021', '1621923127', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '330.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:15:16'),
(829, 6, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:16:33'),
(830, 7, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:16:51'),
(831, 7, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:17:04'),
(832, 8, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:17:25'),
(833, 9, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '121.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:17:28'),
(834, 10, '2021', '1621923954', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '125.55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:19:00'),
(835, 9, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '207', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:20:12'),
(836, 10, '2021', '1621924311', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '213.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:20:53'),
(837, 6, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:22:33'),
(838, 7, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:22:53'),
(839, 8, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:23:15'),
(840, 9, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '225', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:23:44'),
(841, 10, '2021', '1621924562', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '232.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:30:49'),
(843, 6, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:34:00'),
(844, 7, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:34:23'),
(845, 8, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:35:43'),
(846, 9, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:40:53'),
(847, 10, '2021', '1621924702', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:41:28'),
(848, 9, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:42:29'),
(849, 10, '2021', '1621924848', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:43:09'),
(850, 9, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '270', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:45:03'),
(851, 10, '2021', '1621925085', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:46:29'),
(852, 9, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '211.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:48:12'),
(853, 10, '2021', '1621925287', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '218.55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:49:09'),
(854, 9, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '220.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:50:56'),
(855, 10, '2021', '1621923117', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '227.85', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:52:05'),
(856, 6, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:53:39'),
(857, 7, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:53:58'),
(858, 8, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:54:22'),
(859, 9, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '144', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:54:52'),
(860, 10, '2021', '1621923304', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:55:41'),
(861, 6, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:59:30'),
(862, 7, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 04:59:53'),
(863, 8, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:01:12'),
(864, 9, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:01:38'),
(865, 10, '2021', '1621923445', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:02:11'),
(866, 9, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '337.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:04:43'),
(867, 10, '2021', '1621923947', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '348.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:05:21'),
(868, 6, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:06:41'),
(869, 8, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:07:02'),
(870, 7, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:07:25'),
(871, 9, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:08:50'),
(872, 10, '2021', '1621923704', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:09:48'),
(873, 9, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '202.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:11:28'),
(874, 10, '2021', '1621923823', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '209.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:12:07'),
(875, 9, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '324', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:16:40'),
(876, 10, '2021', '1621923573', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '334.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:17:18'),
(877, 9, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '279', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:19:18'),
(878, 10, '2021', '1621924144', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '288.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:19:52'),
(879, 9, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '157.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:22:20'),
(880, 10, '2021', '1621924304', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '162.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-10-25 05:23:06'),
(881, 10, '2021', '1622099118', 'PAT Bulan Oktober 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 00:56:40'),
(882, 10, '2021', '1622098211', 'PAT Bulan Oktober 2021', '4', '', '', '1471', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 00:57:12'),
(883, 10, '2021', '1623929487', 'PAT Bulan Oktober 2021', '4', '', '', '63', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 00:58:02'),
(884, 10, '2021', '1622092292', 'PAT Bulan Oktober 2021', '9', '', '', '1223', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 00:59:31'),
(885, 10, '2021', '1623898133', 'PAT Bulan Oktober 2021', '4', '', '', '523', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:00:18'),
(886, 10, '2021', '1625108022', 'PAT Bulan Oktober 2021', '4', '', '', '272', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:01:01'),
(887, 10, '2021', '1622098297', 'PAT Bulan Oktober 2021', '4', '', '', '129', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:01:37'),
(888, 10, '2021', '1622098424', 'PAT Bulan Oktober 2021', '4', '', '', '202', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1637192328.jpg', '', '', 18, 0, '2021-11-02 01:02:18'),
(889, 8, '2021', '1622094263', 'PAT Bulan Agustus 2021', '4', '', '', '116.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:04:03'),
(890, 9, '2021', '1622094263', 'PAT Bulan September 2021', '4', '', '', '116.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:04:40'),
(891, 10, '2021', '1622094263', 'PAT Bulan Oktober 2021', '4', '', '', '307', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:05:02'),
(892, 10, '2021', '1622092470', 'PAT Bulan Oktober 2021', '4', '', '', '517', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:05:38'),
(893, 10, '2021', '1623900677', 'PAT Bulan Oktober 2021', '4', '', '', '513', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1644971228.JPG', '', '', 18, 0, '2021-11-02 01:06:18'),
(894, 10, '2021', '1623927556', 'PAT Bulan Oktober 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:16:32'),
(895, 10, '2021', '1629377749', 'PAT Bulan Oktober 2021', '4', '', '', '1860', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:17:03'),
(896, 10, '2021', '1632360397', 'PAT Bulan Oktober 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:18:19'),
(897, 6, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:22:00'),
(898, 5, '2021', '1634781233', 'PAT Bulan Mei 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:22:04'),
(899, 7, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:22:27'),
(900, 6, '2021', '1634781233', 'PAT Bulan Juni 2021', '4', '', '', '367.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:22:52'),
(901, 8, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:22:54'),
(902, 7, '2021', '1634781233', 'PAT Bulan Juli 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:23:26'),
(903, 8, '2021', '1634781233', 'PAT Bulan Agustus 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:23:51'),
(904, 9, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:23:55'),
(905, 9, '2021', '1634781233', 'PAT Bulan september 2021', '4', '', '', '367.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:24:19'),
(906, 10, '2021', '1634781233', 'PAT Bulan Oktober 2021', '4', '', '', '379.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:24:42'),
(907, 10, '2021', '1621925134', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:24:48'),
(908, 10, '2021', '1633327800', 'PAT Bulan Oktober 2021', '4', '', '', '218', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:25:47'),
(909, 10, '2021', '1633523343', 'PAT Bulan Oktober 2021', '4', '', '', '310', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 01:26:23'),
(910, 5, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:43:16'),
(911, 6, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:44:42'),
(912, 7, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:45:01'),
(913, 8, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:46:17'),
(914, 9, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '108', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:47:18'),
(915, 10, '2021', '1635743492', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:48:40'),
(916, 5, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:55:43'),
(917, 6, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:56:08'),
(918, 7, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:57:04'),
(919, 8, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:57:31'),
(920, 9, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:58:05'),
(921, 10, '2021', '1635743942', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:58:45'),
(922, 5, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:59:30'),
(923, 6, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 04:59:49'),
(924, 7, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:00:13'),
(925, 8, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:00:35'),
(926, 9, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:01:02'),
(927, 10, '2021', '1635744619', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:02:07'),
(928, 5, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:03:11'),
(929, 6, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:03:33'),
(930, 7, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:03:53'),
(931, 8, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:04:21'),
(932, 9, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:05:21'),
(933, 10, '2021', '1635744789', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:06:25'),
(934, 5, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:08:21'),
(935, 6, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:08:41'),
(936, 7, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:08:59'),
(937, 8, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:09:18'),
(938, 9, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '49.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:09:42'),
(939, 10, '2021', '1635745028', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:10:59'),
(940, 5, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:12:05'),
(941, 6, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:12:22'),
(942, 7, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:12:40'),
(943, 8, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:13:01'),
(944, 9, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:14:36'),
(945, 10, '2021', '1635745280', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:15:10'),
(946, 5, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:16:21'),
(947, 6, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:16:39'),
(948, 7, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:16:57'),
(949, 8, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:17:20'),
(950, 9, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '85.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:19:01'),
(951, 10, '2021', '1635745465', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '88.35', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:20:27'),
(952, 5, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:21:38'),
(953, 6, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:23:16'),
(954, 7, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:23:42'),
(955, 8, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:24:07'),
(956, 9, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '49.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:25:19'),
(957, 10, '2021', '1635745632', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:26:11'),
(958, 5, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:28:57'),
(959, 6, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:29:19'),
(960, 7, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:29:40'),
(961, 8, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:30:07'),
(962, 9, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:30:45'),
(963, 10, '2021', '1635745811', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:31:49'),
(964, 5, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Mei 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:34:08'),
(965, 6, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:34:32'),
(966, 7, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:35:04'),
(967, 8, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:35:25'),
(968, 9, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '72', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:35:53'),
(969, 10, '2021', '1635746021', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-02 05:36:22'),
(970, 10, '2021', '1623635157', 'PAT Bulan Oktober 2021', '4', '', '', '482', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 00:42:02'),
(971, 9, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '450', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:30:53'),
(972, 10, '2021', '1621923552', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '465', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:33:34'),
(973, 9, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '49.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:41:01'),
(974, 10, '2021', '1622089119', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:42:33'),
(975, 9, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:49:41'),
(976, 10, '2021', '1622089335', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:51:27'),
(977, 6, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:55:06'),
(978, 7, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:55:30'),
(979, 8, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:55:51'),
(980, 9, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '58.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 01:56:21'),
(981, 10, '2021', '1622089500', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '60.45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:01:47'),
(982, 6, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:24:25'),
(983, 7, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:24:54'),
(984, 8, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:27:30'),
(985, 9, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '72', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:31:14'),
(986, 10, '2021', '1622089628', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:31:41'),
(987, 9, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '198', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:33:56'),
(988, 10, '2021', '1622089785', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '204.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:34:26'),
(989, 6, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:38:16'),
(990, 7, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:38:46'),
(991, 8, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:39:08'),
(992, 9, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '76.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:41:14'),
(993, 10, '2021', '1622089933', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '79.05', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:42:12'),
(994, 9, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '18', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:44:51'),
(995, 10, '2021', '1622090348', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '18.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:45:22'),
(996, 9, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:46:54'),
(997, 10, '2021', '1622090178', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:47:47'),
(998, 9, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:49:29'),
(999, 10, '2021', '1622090459', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:50:07'),
(1000, 9, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:51:12'),
(1001, 10, '2021', '1622090661', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:51:46'),
(1002, 9, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '256.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:54:12'),
(1003, 10, '2021', '1622092079', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '265.05', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 02:54:54'),
(1004, 6, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 03:44:46'),
(1005, 7, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 03:45:14'),
(1006, 8, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 03:45:33'),
(1007, 9, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '103.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 03:46:13'),
(1008, 10, '2021', '1622092224', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '106.95', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-04 03:54:21'),
(1009, 6, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:40:56'),
(1010, 7, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:41:26'),
(1011, 8, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:41:50'),
(1012, 9, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:42:53'),
(1013, 10, '2021', '1622092365', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:43:25'),
(1014, 6, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:47:22'),
(1015, 7, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:47:41'),
(1016, 8, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:48:21');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `id_pengguna`, `created_by`, `created_at`) VALUES
(1017, 9, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '99', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:50:50'),
(1018, 10, '2021', '1622092579', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '102.3', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:51:38'),
(1019, 6, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:55:22'),
(1020, 7, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:55:40'),
(1021, 8, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:56:02'),
(1022, 9, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:56:41'),
(1023, 10, '2021', '1622092765', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 01:57:11'),
(1024, 6, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:00:47'),
(1025, 7, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:01:04'),
(1026, 8, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:01:22'),
(1027, 9, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:01:45'),
(1028, 10, '2021', '1622092934', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:02:47'),
(1029, 6, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:07:12'),
(1030, 7, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:07:32'),
(1031, 8, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:07:54'),
(1032, 9, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:08:46'),
(1033, 10, '2021', '1622093054', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:09:32'),
(1034, 8, '2021', '1626227756', 'PAT Bulan Oktober Tahun 2021', '4', '', '', '155,67', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:11:58'),
(1035, 6, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:12:32'),
(1036, 7, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:12:50'),
(1037, 9, '2021', '1626227756', 'PAT Tagihan September 2021', '4', '', '', '155,67', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:13:05'),
(1038, 8, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:13:09'),
(1039, 10, '2021', '1626227756', 'PAT Bulan Oktober 2021', '4', '', '', '155,67', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:13:35'),
(1040, 9, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '67.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:13:45'),
(1041, 10, '2021', '1622093540', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:14:14'),
(1042, 10, '2021', '1632973555', 'PAT Bulan Oktober 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-05 02:15:36'),
(1043, 6, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:15:18'),
(1044, 7, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:15:49'),
(1045, 8, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:16:13'),
(1046, 9, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:18:22'),
(1047, 10, '2021', '1622093653', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:18:49'),
(1048, 6, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:23:09'),
(1049, 7, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:23:33'),
(1050, 8, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:23:53'),
(1051, 9, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '54', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:24:29'),
(1052, 10, '2021', '1622093860', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 00:24:58'),
(1054, 6, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:05:19'),
(1055, 7, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:05:37'),
(1056, 8, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:06:04'),
(1057, 9, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:06:32'),
(1058, 10, '2021', '1622094131', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:07:01'),
(1059, 6, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:12:55'),
(1060, 7, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:13:18'),
(1061, 8, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:13:35'),
(1062, 9, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:14:06'),
(1063, 10, '2021', '1622094524', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:14:38'),
(1064, 9, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:19:19'),
(1065, 10, '2021', '1622094674', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:19:43'),
(1066, 9, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:24:34'),
(1067, 10, '2021', '1622094833', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:25:01'),
(1068, 6, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:27:20'),
(1069, 7, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:27:39'),
(1070, 8, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:28:01'),
(1071, 9, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan September2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:28:24'),
(1072, 10, '2021', '1622094978', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:28:45'),
(1073, 9, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '135', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:30:01'),
(1074, 10, '2021', '1622095101', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '139.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:30:36'),
(1075, 9, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:32:50'),
(1076, 10, '2021', '1622095273', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:33:20'),
(1077, 9, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:34:24'),
(1078, 10, '2021', '1622096696', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:34:56'),
(1079, 9, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:36:23'),
(1080, 10, '2021', '1622096847', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:36:57'),
(1081, 6, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:39:47'),
(1082, 7, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:40:14'),
(1083, 8, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:40:42'),
(1084, 9, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '90', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:41:32'),
(1085, 10, '2021', '1622096958', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:42:00'),
(1086, 9, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '180', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:45:00'),
(1087, 10, '2021', '1622097044', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:45:40'),
(1088, 6, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Juni 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:48:56'),
(1089, 7, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Juli 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:49:18'),
(1090, 8, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Agustus 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:49:42'),
(1091, 9, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '36', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:50:16'),
(1092, 10, '2021', '1622097152', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '37.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:50:48'),
(1093, 9, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan September 2021', '4', '', '', '112.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:51:58'),
(1094, 10, '2021', '1622097351', 'Tagihan Pajak Air Tanah periode bulan Oktober 2021', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-08 01:52:39'),
(1095, 10, '2021', '1622091731', 'PAT Bulan Oktober 2021', '4', '', '', '1638', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-09 01:07:13'),
(1096, 8, '2021', '1622098812', 'PAT Bulan Agustus 2021', '4', '', '', '146.66', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-10 01:18:06'),
(1097, 9, '2021', '1622098812', 'PAT Bulan September 2021', '4', '', '', '146.66', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-10 01:18:34'),
(1098, 10, '2021', '1622098812', 'PAT Bulan Oktober 2021', '4', '', '', '163', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-10 01:18:58'),
(1099, 10, '2021', '1622099271', 'PAT Bulan Oktober 2021', '4', '', '', '400', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-15 00:54:17'),
(1100, 10, '2021', '1622093001', 'PAT Bulan Oktober 2021', '4', '', '', '626', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-19 00:28:10'),
(1106, 10, '2021', '1637548436', 'Tagihan Pajak Air Tanah Periode bulan Oktober 2021', '4', '', '', '53.25', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-22 02:40:40'),
(1107, 8, '2021', '1625108221', 'PAT Bulan Agustus 2021', '4', '', '', '195', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-24 01:23:44'),
(1108, 9, '2021', '1625108221', 'PAT Bulan September 2021', '4', '', '', '195', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-24 01:24:05'),
(1109, 10, '2021', '1625108221', 'PAT Bulan Oktober 2021', '4', '', '', '195', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-24 01:24:24'),
(1110, 10, '2021', '1626228945', 'PAT Bulan Oktober 2021', '4', '', '', '856', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-24 01:26:18'),
(1111, 10, '2021', '1622103466', 'PAT Bulan Oktober 2021', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-11-24 02:59:40'),
(1112, 11, '2021', '1622091731', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '1642', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-02 05:39:43'),
(1113, 11, '2021', '1622098211', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '1405', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-02 05:41:57'),
(1114, 11, '2021', '1622099118', 'PAT Bulan November 2021', '4', '', '', '1290', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-04 03:46:51'),
(1115, 11, '2021', '1623635157', 'PAT Bulan November 2021', '4', '', '', '597', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-06 01:20:03'),
(1116, 11, '2021', '1623927556', 'PAT Bulan November 2021', '4', '', '', '4800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:02:09'),
(1117, 10, '2021', '1622093825', 'PAT Bulan Oktober 2021', '4', '', '', '248', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:07:20'),
(1118, 11, '2021', '1629377749', 'PAT Bulan November 2021', '4', '', '', '1800', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:08:46'),
(1119, 11, '2021', '1632360397', 'PAT Bulan November 2021', '4', '', '', '120', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:11:03'),
(1120, 11, '2021', '1622094263', 'PAT Saga Abepura Bulan November 2021', '4', '', '', '284', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:14:17'),
(1121, 11, '2021', '1623898133', 'PAT Bulan November 2021', '4', '', '', '812', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:16:16'),
(1122, 11, '2021', '1622092292', 'PAT Bulan November 2021', '9', '', '', '1788', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:23:43'),
(1123, 11, '2021', '1622098297', 'PAT Bulan November 2021', '4', '', '', '168', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:25:44'),
(1124, 11, '2021', '1622092470', 'PAT November 2021', '4', '', '', '641', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:28:41'),
(1125, 11, '2021', '1622093001', 'PAT Bulan November 2021', '4', '', '', '279', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:30:13'),
(1126, 11, '2021', '1622098812', 'PAT Bulan November 2021', '4', '', '', '87', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:31:54'),
(1127, 10, '2021', '1625107310', 'PAT Bulan November 2021', '4', '', '', '461', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:34:35'),
(1128, 11, '2021', '1625107310', 'PAT Bulan November 2021', '4', '', '', '461', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-07 22:35:04'),
(1129, 11, '2021', '1632973555', 'PAT Bulan November 2021', '4', '', '', '360', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-08 02:13:04'),
(1130, 11, '2021', '1626050298', 'PAT Bulan November 2021', '4', '', '', '81', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-08 02:14:46'),
(1131, 7, '2021', '1627344636', 'PAT Juli 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 00:53:24'),
(1132, 8, '2021', '1627344636', 'PAT Agustus 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 00:53:54'),
(1133, 8, '2021', '1627344636', 'PAT Agustus 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 00:54:21'),
(1134, 9, '2021', '1627344636', 'PAT September 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 00:54:53'),
(1135, 10, '2021', '1627344636', 'PAT Oktober 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 00:55:22'),
(1136, 11, '2021', '1627344636', 'PAT November 2021', '4', '', '', '216', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 00:55:50'),
(1137, 11, '2021', '1634781233', 'PAT November 2021', '4', '', '', '368', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 01:18:37'),
(1138, 11, '2021', '1623900677', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '654', 0, 4, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1644971200.JPG', '', '', 18, 0, '2021-12-09 01:29:26'),
(1139, 11, '2021', '1626227756', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '178', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 01:31:10'),
(1140, 11, '2021', '1623929487', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '65', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 01:34:25'),
(1141, 11, '2021', '1622093825', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '325', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 01:35:47'),
(1142, 11, '2021', '1625108221', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 01:37:33'),
(1144, 11, '2021', '1625108022', 'Tagihan Pajak Air Tanah periode bulan November 2021', '4', '', '', '312', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-09 01:39:10'),
(1145, 11, '2021', '1637548436', 'PAT Bulan November 2021', '4', '', '', '76', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-13 03:04:24'),
(1146, 8, '2021', '1622090031', 'PAT Bulan Agustus 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:14:14'),
(1147, 9, '2021', '1622090031', 'PAT Bulan September 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:14:51'),
(1148, 10, '2021', '1622090031', 'PAT Bulan Oktober 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:15:22'),
(1149, 11, '2021', '1622090031', 'PAT Bulan November 2021', '4', '', '', '485.5', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:15:59'),
(1150, 8, '2021', '1622096916', 'PAT Bulan Agustus 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:24:12'),
(1151, 9, '2021', '1622096916', 'PAT Bulan September 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:24:43'),
(1152, 10, '2021', '1622096916', 'PAT Bulan Oktober 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:25:12'),
(1153, 11, '2021', '1622096916', 'PAT Bulan November 2021', '4', '', '', '121', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:25:46'),
(1154, 7, '2021', '1622096916', 'PAT Bulan Juli 2021', '4', '', '', '110', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:26:16'),
(1155, 8, '2021', '1622098496', 'PAT Bulan Agustus 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:28:21'),
(1156, 9, '2021', '1622098496', 'PAT Bulan September 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:28:54'),
(1157, 10, '2021', '1622098496', 'PAT Bulan Oktober 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:29:23'),
(1158, 11, '2021', '1622098496', 'PAT Bulan November 2021', '4', '', '', '1450.67', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-20 14:29:55'),
(1159, 11, '2021', '1622099271', 'PAT Bulan November 2021', '4', '', '', '429', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-23 06:44:18'),
(1160, 10, '2021', '1627905389', 'PAT Oktober 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-30 03:19:55'),
(1161, 11, '2021', '1627905389', 'PAT November 2021', '4', '', '', '300', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2021-12-30 03:20:22'),
(1162, 12, '2021', '1622099271', 'PAT Bulan Desember 2021', '4', '', '', '104', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-03 23:38:13'),
(1163, 12, '2021', '1622096916', 'PAT Desember 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-03 23:40:47'),
(1164, 12, '2021', '1622099118', 'PAT Bulan Desember 2021', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 01:47:45'),
(1165, 12, '2021', '1622098211', 'PAT Bulan Desember 2021', '4', '', '', '1526', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 01:49:10'),
(1166, 12, '2021', '1622091731', 'PAT Bulan Desember 2021', '4', '', '', '1315', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 01:50:53'),
(1167, 12, '2021', '1622098812', 'PAT Bulan Desember 2021', '4', '', '', '173', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 01:53:11'),
(1168, 12, '2021', '1622092292', 'PAT Bulan Desember 2021', '9', '', '', '1111', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 02:17:46'),
(1169, 12, '2021', '1627905389', 'PAT Bulan Desember 2021', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 03:12:40'),
(1170, 12, '2021', '1622090031', 'PAT Bulan Desember 2021', '4', '', '', '327', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 03:38:48'),
(1171, 12, '2021', '1623898133', 'PAT Bulan Desember 2021', '4', '', '', '566', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 04:35:51'),
(1172, 12, '2021', '1623927556', 'PAT Bulan Desember 2021', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-04 23:44:30'),
(1173, 12, '2021', '1622094263', 'PAT Saga Desember 2021', '4', '', '', '333', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-05 01:13:49'),
(1174, 12, '2021', '1623635157', 'PAT Desember 2021', '4', '', '', '519', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-05 01:15:55'),
(1175, 12, '2021', '1622093825', 'PAT Desember 2021', '4', '', '', '615', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-05 01:17:29'),
(1176, 12, '2021', '1623929487', 'PAT Bulan Desember 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-05 01:21:46'),
(1177, 12, '2021', '1622098496', 'PAT Bulan Desember 2021', '4', '', '', '487', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-05 06:40:03'),
(1178, 12, '2021', '1626050298', 'PAT Bulan Desember 2021', '4', '', '', '84', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-12 01:37:11'),
(1179, 12, '2021', '1637548436', 'PAT Bulan Desember 2021', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-13 21:16:56'),
(1180, 12, '2021', '1622092470', 'PAT Bulan Desember 2021', '4', '', '', '513', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-17 00:51:50'),
(1181, 12, '2021', '1622093001', 'PAT Bulan Desember 2021', '4', '', '', '615', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-17 00:53:14'),
(1182, 10, '2021', '1622093564', 'PAT Bulan Oktober 2021', '9', '', '', '227.137', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-17 01:21:29'),
(1183, 11, '2021', '1622093564', 'PAT Bulan November 2021', '9', '', '', '219.81', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-17 01:22:02'),
(1184, 12, '2021', '1622093564', 'PAT Bulan Desember 2021', '9', '', '', '227.137', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-17 01:22:36'),
(1185, 10, '2021', '1622092018', 'PAT Bulan Oktober 2021', '4', '', '', '7269', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:26:24'),
(1186, 11, '2021', '1622092018', 'PAT Bulan November 2021', '4', '', '', '7269', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:26:48'),
(1187, 12, '2021', '1622092018', 'PAT Bulan Desember 2021', '4', '', '', '7269', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:27:18'),
(1188, 11, '2021', '1622098297', 'PAT Bulan Desember 2021', '4', '', '', '161', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:29:46'),
(1189, 12, '2021', '1632360397', 'PAT Bulan Desember 2021', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:31:17'),
(1190, 12, '2021', '1634781233', 'PAT Bulan Desember 2021', '4', '', '', '380', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:32:19'),
(1191, 11, '2021', '1622103466', 'PAT Bulan November 2021', '4', '', '', '176', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:37:37'),
(1192, 12, '2021', '1622103466', 'PAT Bulan Desember 2021', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:37:59'),
(1193, 10, '2021', '1633316372', 'PAT Bulan Oktober 2021', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:38:56'),
(1194, 11, '2021', '1633316372', 'PAT Bulan November 2021', '4', '', '', '1923', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:39:17'),
(1195, 12, '2021', '1633316372', 'PAT Bulan Desember 2021', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-18 04:39:43'),
(1196, 1, '2022', '1623642819', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '83.7', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 01:58:12'),
(1197, 1, '2022', '1623645956', 'Tagihan pajak air tanah periode bulan januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:21:47'),
(1198, 1, '2022', '1623645204', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:35:42'),
(1199, 1, '2022', '1623647645', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:38:11'),
(1200, 1, '2022', '1623735798', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:42:02'),
(1201, 1, '2022', '1623735521', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '88.35', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:46:31'),
(1202, 1, '2022', '1623736179', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '148.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:49:04'),
(1203, 1, '2022', '1623735937', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:51:00'),
(1204, 1, '2022', '1623734493', 'Tagihan pajak air tanah peride bulan Januari 2022', '4', '', '', '116.25', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:52:42'),
(1205, 1, '2022', '1642560823', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '27.9', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 02:58:11'),
(1206, 1, '2022', '1642561148', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '186', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 03:03:23'),
(1207, 1, '2022', '1642565369', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:13:49'),
(1208, 1, '2022', '1623734997', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '69.75', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:21:35'),
(1209, 1, '2022', '1642566187', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '4.65', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:27:22'),
(1210, 1, '2022', '1623735232', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '37.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:30:51'),
(1211, 1, '2022', '1623645793', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '32.55', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:33:13'),
(1212, 1, '2022', '1623643274', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:35:57'),
(1213, 1, '2022', '1623735125', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '51.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:39:47'),
(1214, 1, '2022', '1642567361', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '130.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:46:41'),
(1215, 1, '2022', '1642567644', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:52:57'),
(1216, 1, '2022', '1623648156', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '330.15', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 04:56:22'),
(1217, 1, '2022', '1642568230', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:01:37'),
(1218, 1, '2022', '1642568620', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '74.4', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:06:36'),
(1219, 1, '2022', '1642568877', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:12:00'),
(1220, 1, '2022', '1642569167', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '111.6', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:15:59'),
(1221, 1, '2022', '1642569453', 'Tagihan pajak periode bulan Januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:23:20'),
(1222, 1, '2022', '1642569889', 'Tagihan pajak air tanah periode bulan Janurai 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:28:12'),
(1223, 1, '2022', '1642570153', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '37.2', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:33:51'),
(1224, 1, '2022', '1642570498', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '41.85', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-19 05:57:28'),
(1225, 1, '2022', '1642637991', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 00:26:22'),
(1226, 1, '2022', '1642638731', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '60.45', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 00:52:03'),
(1227, 1, '2022', '1642640006', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '46.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 00:56:46'),
(1228, 1, '2022', '1642640306', 'Tagihan pajak air tanah periode bulan Janurai 2022', '4', '', '', '41.85', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 01:01:56'),
(1229, 1, '2022', '1642640785', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '93', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 01:11:12'),
(1230, 1, '2022', '1642641170', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '55.8', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 01:16:25'),
(1231, 1, '2022', '1642641522', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '65.1', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 01:21:50'),
(1232, 1, '2022', '1623732794', 'Tagihan pajak air tanah periode bulan Januari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-20 01:23:15'),
(1233, 8, '2021', '1628043297', 'PAT Bulan Agustus 2021', '4', '', '', '1023', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:40:39'),
(1234, 9, '2021', '1628043297', 'PAT Bulan September 2021', '4', '', '', '990', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:41:30'),
(1235, 10, '2021', '1628043297', 'PAT Bulan Oktober 2021', '4', '', '', '1023', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:42:26'),
(1236, 11, '2021', '1628043297', 'PAT Bulan November 2021', '4', '', '', '990', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:42:50'),
(1237, 12, '2021', '1628043297', 'PAT Bulan Desember 2021', '4', '', '', '1146', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:43:23'),
(1238, 8, '2021', '1628053192', 'PAT Bulan Agustus 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:44:58'),
(1239, 9, '2021', '1628053192', 'PAT Bulan September 2021', '4', '', '', '660', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:45:17'),
(1240, 10, '2021', '1628053192', 'PAT Bulan Oktober 2021', '4', '', '', '682', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:45:48'),
(1241, 11, '2021', '1628053192', 'PAT Bulan November 2021', '4', '', '', '660', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:46:12'),
(1242, 12, '2021', '1628053192', 'PAT Bulan Desember 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:46:45'),
(1243, 8, '2021', '1628048359', 'PAT Bulan Agustus 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:55:19'),
(1244, 9, '2021', '1628048359', 'PAT Bulan September 2021', '4', '', '', '759', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:55:45'),
(1245, 10, '2021', '1628048359', 'PAT Bulan Oktober 2021', '4', '', '', '784', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:56:04'),
(1246, 11, '2021', '1628048359', 'PAT Bulan November 2021', '4', '', '', '759', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:56:35'),
(1247, 12, '2021', '1628048359', 'PAT Bulan Desember 2021', '4', '', '', '3553', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 03:57:12'),
(1248, 8, '2021', '1622101246', 'PAT Bulan Agustus 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 04:05:04'),
(1249, 9, '2021', '1622101246', 'PAT September 2021', '4', '', '', '1800', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 04:05:37'),
(1250, 10, '2021', '1622101246', 'PAT Bulan Oktober 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 04:06:00'),
(1251, 11, '2021', '1622101246', 'PAT Bulan November 2021', '4', '', '', '1800', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-01-27 04:06:24'),
(1252, 1, '2022', '1622096916', 'PAT Bulan Oktober 2021', '4', '', '', '101', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 03:22:57'),
(1253, 1, '2022', '1623635157', 'PAT Bulan Januari 2022', '4', '', '', '568', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 03:25:06'),
(1254, 1, '2022', '1622099118', 'PAT Bulan Januari 2022', '4', '', '', '1333', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:29:46'),
(1255, 1, '2022', '1632360397', 'PAT Bulan Januari 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:33:02'),
(1256, 1, '2022', '1622103466', 'PAT Bulan Januari 2022', '4', '', '', '181', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:36:09'),
(1257, 12, '2021', '1625108022', 'PAT Bulan Desember 2021', '4', '', '', '932', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:53:47'),
(1259, 1, '2022', '1622099271', 'PAT Bulan Januari 2022', '4', '', '', '341', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:55:35'),
(1260, 12, '2021', '1623900677', 'PAT Bulan Desember 2021', '4', '', '', '821.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:57:45'),
(1261, 1, '2022', '1623900677', 'PAT Bulan Januari 2022', '4', '', '', '822', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:58:09'),
(1262, 1, '2022', '1622098496', 'PAT Bulan Januari 2022', '4', '', '', '1076', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-02 05:59:34'),
(1263, 11, '2021', '1626228945', 'PAT Bulan November 2021', '4', '', '', '351', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:28:54'),
(1264, 12, '2021', '1626228945', 'PAT Bulan Desember 2021', '4', '', '', '351', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:29:16'),
(1265, 1, '2022', '1626228945', 'PAT Bulan Januari 2022', '4', '', '', '351', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:29:40'),
(1266, 1, '2022', '1623929487', 'PAT Bulan Januari 2022', '4', '', '', '150', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:46:52'),
(1267, 1, '2022', '1622098211', 'PAT Bulan Januari 2022', '4', '', '', '1587', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:50:48'),
(1268, 12, '2021', '1632973555', 'PAT Bulan Desember 2021', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:57:29'),
(1269, 1, '2022', '1632973555', 'PAT Bulan Januari 2022', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 03:57:57'),
(1270, 12, '2021', '1622101246', 'PAT Bulan Desember 2021', '4', '', '', '1860', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 04:08:31'),
(1271, 8, '2021', '1628053281', 'PAT Bulan Agustus 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 04:21:12'),
(1272, 9, '2021', '1628053281', 'PAT Bulan September 2021', '4', '', '', '330', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 04:21:36'),
(1273, 10, '2021', '1628053281', 'PAT Bulan Oktober 2021', '4', '', '', '341', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 04:22:21'),
(1274, 11, '2021', '1628053281', 'PAT Bulan November 2021', '4', '', '', '1617', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 04:24:03'),
(1275, 12, '2021', '1628053281', 'PAT Bulan Desember 2021', '4', '', '', '1617', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-03 04:24:27'),
(1277, 12, '2021', '1626227756', 'PAT Bulan Desember 2021', '4', '', '', '243.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 06:19:06'),
(1278, 1, '2022', '1622091731', 'PAT Bulan Januari 2022', '4', '', '', '1080', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 06:21:07'),
(1279, 1, '2022', '1623898133', 'PAT Bulan Januari 2022', '4', '', '', '495', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 06:23:28'),
(1280, 1, '2022', '1625108022', 'PAT Bulan Januari 2022', '4', '', '', '439', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 06:48:35'),
(1282, 1, '2022', '1622098297', 'PAT Bulan Januari 2022', '4', '', '', '191', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 07:32:31'),
(1283, 12, '2021', '1622098297', 'PAT Bulan Desember 2021', '4', '', '', '191', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 07:33:14'),
(1284, 1, '2022', '1622092292', 'PAT Bulan Januari 2022', '9', '', '', '1727', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-04 07:35:02'),
(1285, 1, '2022', '1623927556', 'PAT Fox Hotel Januari 2022', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-07 09:49:09'),
(1286, 1, '2022', '1626228632', 'PAT Bulan Januari 2022', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 00:38:33'),
(1287, 10, '2021', '1626228632', 'PAT Bulan Oktober 2021', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 00:39:24'),
(1288, 11, '2021', '1626228632', 'PAT Bulan November 2021', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 00:39:53'),
(1289, 12, '2021', '1626228632', 'PAT Bulan Desember 2021', '4', '', '', '131.4', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 00:40:27'),
(1290, 1, '2022', '1622092470', 'PAT Bulan Januari 2022', '4', '', '', '634', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 05:21:03'),
(1291, 1, '2022', '1622093001', 'PAT Bulan Januari 2022', '4', '', '', '367', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 05:22:43'),
(1292, 1, '2022', '1622093564', 'PAT Bulan Januari 2022', '4', '', '', '227', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-08 05:24:30'),
(1293, 12, '2021', '1625107310', 'PAT Bulan Desember 2021', '4', '', '', '694.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-09 00:39:39'),
(1294, 1, '2022', '1625107310', 'PAT Bulan Januari 2022', '4', '', '', '694.5', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-09 00:40:07'),
(1295, 1, '2022', '1622093825', 'PAT Bulan Januari 2022', '4', '', '', '188', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-09 04:48:22'),
(1296, 12, '2021', '1627344636', 'PAT bln Desember 2021', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-16 00:43:28'),
(1297, 1, '2022', '1627344636', 'PAT bln Januari 2022', '4', '', '', '223', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-16 00:44:31'),
(1298, 1, '2022', '1626227756', 'PAT Bulan Januari 2021', '4', '', '', '243.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-16 05:03:45'),
(1299, 1, '2022', '1622098812', 'PAT Bulan Januari 2022', '4', '', '', '300', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-16 05:15:50'),
(1300, 11, '2021', '1622098424', 'PAT Bulan November 2021', '4', '', '', '237', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1646989661.jpg', '', '', 18, 0, '2022-02-16 05:21:35'),
(1301, 12, '2021', '1622098424', 'PAT Bulan Desember 2021', '4', '', '', '237', 0, 3, '1200', '0.2', '0.6', '0.4', 'bukti-pembayaran-1646989708.jpg', '', '', 18, 0, '2022-02-16 05:22:11'),
(1302, 1, '2022', '1622098424', 'PAT Bulan Januari 2022', '4', '', '', '237', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-16 05:23:58'),
(1303, 1, '2022', '1623645579', 'PAT Bulan Januari 2022', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-02-21 03:17:22'),
(1305, 2, '2022', '1623635157', 'PAT Bulan February 2022', '4', '', '', '416', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-01 08:18:00'),
(1306, 2, '2022', '1622098496', 'PAT Bulan Februari 2022', '4', '', '', '1082', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-02 02:43:50'),
(1307, 2, '2022', '1622092292', 'PAT Bulan Februari 2022', '9', '', '', '720', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-02 02:59:25'),
(1308, 2, '2022', '1622093825', 'PAT Bulan Februari 2022', '4', '', '', '207', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-02 04:09:07'),
(1309, 2, '2022', '1622096916', 'PAT bln February 2022', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-02 04:49:28'),
(1311, 2, '2022', '1623927556', 'PAT Bulan Februari 2022', '4', '', '', '4480', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-04 00:38:30'),
(1312, 1, '2022', '1646354960', 'PAT Bulan Januari 2022', '4', '', '', '155', 0, 2, '1200', '0.2', '0.6', '0.4', '', '1', '', 18, 0, '2022-03-04 00:53:47'),
(1313, 2, '2022', '1646354960', 'PAT Bulan Februari 2022', '4', '', '', '140', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-04 00:54:18'),
(1314, 2, '2022', '1623929487', 'PAT Bulan Februari 2022', '4', '', '', '92', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-04 01:23:47'),
(1315, 2, '2022', '1622093564', 'PAT Bulan Februari 2022', '4', '', '', '205.156', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-09 00:33:01'),
(1316, 1, '2022', '1622094263', 'PAT Bulan Januari 2022', '4', '', '', '308', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-09 00:39:05'),
(1317, 2, '2022', '1622094263', 'PAT Bulan Februari 2022', '4', '', '', '308', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-09 00:39:31'),
(1319, 8, '2021', '1626227510', 'PAT Bulan Agustus 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-10 04:20:33'),
(1320, 9, '2021', '1626227510', 'PAT Bulan September 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-10 04:20:58'),
(1321, 10, '2021', '1626227510', 'PAT Bulan Oktober 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-10 04:21:25'),
(1322, 11, '2021', '1626227510', 'PAT Bulan November 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-10 04:23:31'),
(1323, 12, '2021', '1626227510', 'PAT Bulan Desember 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-10 04:24:02'),
(1324, 1, '2022', '1626227510', 'PAT BUlan Januari 2022', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-10 04:24:31'),
(1325, 5, '2021', '1626227510', 'PAT Mei 2021', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-11 02:13:24'),
(1327, 2, '2022', '1622093001', 'PAT Bulan Februari 2022', '4', '', '', '433', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-11 04:16:33'),
(1328, 2, '2022', '1622092470', 'PAT Bulan Faebruari 2022', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-11 05:06:17');
INSERT INTO `tagihan` (`id`, `id_bulan`, `tahun`, `id_wp`, `keterangan`, `kualitas`, `jenis_pipa`, `diameter`, `volume`, `status`, `usaha_kategori`, `harga_baku`, `pajak_pabt`, `persentasi_sda`, `persentasi_kompensasi`, `bukti_pembayaran`, `jumlah_sumur`, `kedalaman_sumur`, `id_pengguna`, `created_by`, `created_at`) VALUES
(1329, 1, '2022', '1627905389', 'PAT Bulan Januari 2022', '4', '', '', '310', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-11 05:44:19'),
(1330, 2, '2022', '1627905389', 'PAT Bulan February 2022', '4', '', '', '280', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-11 05:44:48'),
(1331, 1, '2022', '1637548436', 'PAT Januari 2022', '4', '', '', '0', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-16 01:42:40'),
(1332, 2, '2022', '1637548436', 'PAT Februari 2022', '4', '', '', '61.05', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-16 01:43:04'),
(1333, 9, '2021', '1623645579', 'PAT Bulan September 2021', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-16 01:58:46'),
(1334, 10, '2021', '1623645579', 'PAT Bulan Oktober 2021', '4', '', '', '260', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-16 01:59:12'),
(1335, 11, '2021', '1623645579', 'PAT Bulan November 2021', '4', '', '', '252', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-16 02:00:26'),
(1336, 12, '2021', '1623645579', 'PAT Bulan Desember 2021', '4', '', '', '260', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-16 02:01:07'),
(1337, 9, '2021', '1625548247', 'PAT Bulan September 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-21 01:11:49'),
(1338, 10, '2021', '1625548247', 'PAT Bulan Oktober 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-21 01:12:17'),
(1339, 11, '2021', '1625548247', 'PAT Bulan November 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-21 01:12:41'),
(1340, 12, '2021', '1625548247', 'PAT Bulan Desember 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-21 01:13:04'),
(1341, 1, '2022', '1625548247', 'PAT Bualan Januari 2022', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-21 01:13:32'),
(1342, 2, '2022', '1625548247', 'PAT Bulan Februari 2021', '4', '', '', '50', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-21 01:13:54'),
(1343, 1, '2022', '1648429126', 'PAT Bulan Januari 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 01:09:33'),
(1344, 2, '2022', '1648429126', 'PAT Bulan Februari 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 01:10:07'),
(1345, 3, '2022', '1648429126', 'PAT Bulan Maret 2022', '4', '', '', '252', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 01:10:33'),
(1346, 1, '2022', '1633316372', 'PAT Bulan Januari 2022', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 03:53:17'),
(1347, 2, '2022', '1633316372', 'PAT Bulan Februari 2022', '4', '', '', '1795', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 03:53:53'),
(1348, 3, '2022', '1633316372', 'PAT Bulan Maret 2022', '4', '', '', '1987', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 03:54:17'),
(1349, 11, '2021', '1633327800', 'PAT Bulan November 2021', '4', '', '', '196', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 04:44:11'),
(1350, 12, '2021', '1633327800', 'PAT Bulan Desember 2021', '4', '', '', '211', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 04:48:32'),
(1351, 1, '2022', '1648451977', 'PAT Bulan Januari 2022', '4', '', '', '116.25', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 07:23:50'),
(1352, 2, '2022', '1648451977', 'PAT Bulan Februari 2022', '4', '', '', '105', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-28 07:24:43'),
(1353, 8, '2021', '1622102685', 'PAT Bulan Agustus 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:03:11'),
(1354, 9, '2021', '1622102685', 'PAT Bulan September 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:03:53'),
(1355, 10, '2021', '1622102685', 'PAT Bulan Oktober 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:04:25'),
(1356, 11, '2021', '1622102685', 'PAT Bulan November 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:04:54'),
(1357, 12, '2021', '1622102685', 'PAT Desember 2021', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:05:21'),
(1358, 1, '2022', '1622102685', 'PAT Bulan Januari 2022', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:07:05'),
(1359, 2, '2022', '1622102685', 'PAT Bulan Februari 2022', '4', '', '', '82.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 03:09:11'),
(1360, 1, '2022', '1632361405', 'PAT Bulan Januari 2022', '4', '', '', '180.83', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 04:14:30'),
(1361, 2, '2022', '1632361405', 'PAT Bulan Februari 2022', '4', '', '', '175', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-29 04:14:54'),
(1362, 2, '2022', '1622098211', 'PAT Bulan February 2022', '4', '', '', '2120', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-30 00:29:03'),
(1363, 2, '2022', '1622099118', 'PAT Bulan Maret 2022', '4', '', '', '1204', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-30 00:30:45'),
(1364, 2, '2022', '1623900677', 'PAT Bulan February 2022', '4', '', '', '1011', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-30 01:59:40'),
(1365, 2, '2022', '1626228945', 'PAT Bulan February 2022', '4', '', '', '374', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-03-30 09:37:24'),
(1366, 3, '2022', '1622096916', 'PAT Bulan Februari 2022', '4', '', '', '163', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-04 00:36:52'),
(1367, 3, '2022', '1648451977', 'PAT Bulan April 2022', '4', '', '', '116', 0, 5, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-04 03:17:24'),
(1368, 3, '2022', '1623635157', 'PAT Bulan Maret 2022', '4', '', '', '550', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-04 03:50:09'),
(1369, 3, '2022', '1623927556', 'PAT Bulan Maret 2022', '4', '', '', '4960', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-04 05:55:02'),
(1370, 2, '2022', '1622091731', 'PAT Bulan Februari 2022', '4', '', '', '1064', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-04 23:51:51'),
(1371, 3, '2022', '1622091731', 'PAT Bulan Maret 2022', '4', '', '', '1130', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-04 23:52:22'),
(1372, 1, '2022', '1625108221', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-06 01:32:20'),
(1373, 3, '2022', '1623929487', 'PAT Bulan Maret 2022', '4', '', '', '128', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-06 03:57:13'),
(1374, 2, '2022', '1632360397', 'PAT Bulan Februari 2022', '4', '', '', '112', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:10:22'),
(1375, 3, '2022', '1632360397', 'PAT Bulan Maret 2022', '4', '', '', '124', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:11:00'),
(1376, 2, '2022', '1626227756', 'PAT Bulan Februari 2022', '4', '', '', '242.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:17:34'),
(1377, 3, '2022', '1626227756', 'PAT Bulan Maret 2022', '4', '', '', '242.5', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:17:56'),
(1378, 2, '2022', '1632973555', 'PAT Bulan Februari 2022', '4', '', '', '336', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:19:12'),
(1379, 3, '2022', '1632973555', 'PAT Bulan Maret 2022', '4', '', '', '372', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:19:33'),
(1380, 2, '2022', '1626227510', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:20:48'),
(1381, 3, '2022', '1626227510', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:21:03'),
(1382, 2, '2022', '1625107310', 'PAT Bulan Februari 2022', '4', '', '', '348', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:23:25'),
(1383, 3, '2022', '1625107310', 'PAT Bulan Maret 2022', '4', '', '', '348', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:23:41'),
(1384, 3, '2022', '1622093825', 'PAT Bulan Maret 2022', '4', '', '', '133', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-07 00:25:52'),
(1385, 3, '2022', '1626228945', 'PAT Bulan Maret 2022', '4', '', '', '439', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 00:49:01'),
(1386, 2, '2022', '1625108022', 'PAT Bulan Februari 2022', '4', '', '', '291', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:03:31'),
(1387, 3, '2022', '1625108022', 'PAT Bulan Maret 2022', '4', '', '', '347', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:04:06'),
(1388, 2, '2022', '1622098424', 'PAT Bulan Februari 2022', '4', '', '', '155', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:06:42'),
(1389, 3, '2022', '1622098424', 'PAT Bulan Maret 2022', '4', '', '', '155', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:07:04'),
(1390, 1, '2022', '1628043297', 'PAT Bulan Januari 2022', '4', '', '', '106.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:12:00'),
(1391, 2, '2022', '1628043297', 'PAT Bulan Februari 2022', '4', '', '', '106.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:12:27'),
(1392, 3, '2022', '1628043297', 'PAT Bulan Maret 2022', '4', '', '', '106.5', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:12:51'),
(1393, 3, '2022', '1622098211', 'PAT Bulan Maret 2022', '4', '', '', '1520', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:56:08'),
(1394, 3, '2022', '1622098496', 'PAT Bulan Maret 2022', '4', '', '', '811', 0, 3, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 02:58:14'),
(1395, 2, '2022', '1626228632', 'PAT Bulan Februari 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 03:02:09'),
(1396, 3, '2022', '1626228632', 'PAT Bulan Maret 2022', '4', '', '', '0', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-11 03:02:32'),
(1397, 12, '2021', '1625108221', 'PAT Bulan Desember 2021', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-12 00:17:10'),
(1398, 2, '2022', '1625108221', 'PAT Bulan Februari 2022', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-12 00:17:40'),
(1399, 3, '2022', '1625108221', 'PAT Bulan Maret 2022', '4', '', '', '74', 0, 2, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-12 00:18:03'),
(1400, 1, '2022', '1649732079', 'PAT Bulan Janiuari 2022', '4', '', '', '409.82', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-12 02:57:47'),
(1401, 2, '2022', '1649732079', 'PAT Bulan Februari 2022', '4', '', '', '369.88', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-12 02:58:36'),
(1402, 3, '2022', '1649732079', 'PAT Bulan Maret 2022', '4', '', '', '409.82', 0, 4, '1200', '0.2', '0.6', '0.4', '', '', '', 18, 0, '2022-04-12 02:58:59');

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
  `usaha_distrik` varchar(50) NOT NULL,
  `created_by` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` int(1) NOT NULL,
  `hapus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wajib_pajak`
--

INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1621923113', 'Hasah Bakti Naba', 'default-user.png', 'hasah@gmail.com', '$2y$10$eZYoqvye8DVCMx/x1OKuaewYrdsVGU.HNaa0P0JlLCppeiaE3RCFS', '081344543691', 'Kompleks KUD Expo', 'Rumah Kos Hasah Bakti Naba', 'default-image.png', 'hasah@gmail.com', '081344543691', 'Kompleks KUD Expo', 2, '', '', '', '', '14', '42', '', '', 'jprutara', 0, '2021-05-25 06:15:40', 1, 0),
('1621923117', 'Ridwan', 'default-user.png', 'ridwanwaena@gmail.com', '$2y$10$kSDVZsIP.uMHVmVeVkVFKOgRO9ydO9WZov/ZqYMb8MsSc2wpI4yiK', '08124816892', 'Jl. Gelanggang Waena', 'Rumah Kos Ridwan', 'default-image.png', 'ridwanwaena@gmail.com', '08124816892', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '23', '49', '', '', 'jprutara', 0, '2021-05-25 06:14:24', 1, 0),
('1621923127', 'Hermin Tati', 'default-user.png', 'hermintati@gmail.com', '$2y$10$jnscbDkibsNITHXb4i3b9O.JtlRYISjif1CJgGmSLDgfUAJS4Exjy', '082216112625', 'Jl. Yoka', 'Rumah Kos Hermin Tati', 'default-image.png', 'hermintati@gmail.com', '081240207175', 'Jl. Yoka', 2, '', '', '', '', '25', '71', '', '', 'abepura', 0, '2021-05-25 06:12:19', 1, 0),
('1621923145', 'Herdrik seru', 'default-user.png', 'herdrikseru@gmail.com', '$2y$10$rDvm9bR9cGfEDqf9Skzzq.fzNpt1Bd9Jy7Lq7FunFQgglaE4/L0ry', '081344767706', 'Jl Yotefa', 'Rumah Kos Herdrik Seru', 'default-image.png', 'herdrikseru@gmail.com', '081344767706', 'Jl Yotefa', 2, '', '', '', '', '8', '17', '', '', '', 0, '2021-05-25 06:16:51', 0, 1),
('1621923304', 'Sudin Retob', 'default-user.png', 'sudinretob@gmail.com', '$2y$10$kbAN4jqO7YLkcpn0X1Z3bOJY1bbOkHAaBrMcWaBjH.SPmojb8DBEK', '', 'Jl. Gelanggang Waena', 'Rumah Kos Sudin Retob', 'default-image.png', 'sudinretob@gmail.com', '', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '32', '', '', '', 0, '2021-05-25 06:17:19', 1, 0),
('1621923352', 'Hj. Munahdira', 'default-user.png', 'munahdira@gmail.com', '$2y$10$qrViL9ttClyK/DmMbv6z2.cDIFT1T2goCb.92UK93NTWTixQyQbv.', '081344453293', 'Kompleks KUD Expo', 'Rumah Kos Hj. Munahdira', 'default-image.png', 'munahdira@gmail.com', '081344453293', 'Kompleks KUD Expo', 2, '', '', '', '', '16', '64', '', '', '', 0, '2021-05-25 06:18:39', 1, 0),
('1621923445', 'Mansyur', 'default-user.png', 'mansyur@gmail.com', '$2y$10$alY3vD24YZJGwCg4PKxJl.cvFm3IvtdGGGhlybPZ.CKgRW5QrB/HC', '', 'Jl. Gelanggang Waena', 'Rumah Kos Mansyur', 'default-image.png', 'mansyur@gmail.com', '-', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '30', '', '', '', 0, '2021-05-25 06:19:27', 1, 0),
('1621923542', 'Mutalid Sanaba', 'default-user.png', 'mutalid@gmail.com', '$2y$10$u9yrsUcAy8Na4JbO9AB7n.b0vDaC1pS4JnwCRsmtbce.nxVFrtXgq', '', 'Kompleks KUD Expo', 'Rumah Kos Mutalid Sanaba', 'default-image.png', 'mutalid@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '12', '42', '', '', '', 0, '2021-05-25 06:21:08', 1, 0),
('1621923552', 'Carolina Lin', 'default-user.png', 'carolinalin@gmail.com', '$2y$10$k4Zi8p9Ebmmpi33u5SgQw.J6Dg0M.K4Ja1ZVVy6Qbz5ugsozNTYMm', '081344283518', 'Jl. Gerilyawan Kamkey', 'Rumah Kos Carolina Lin', 'default-image.png', 'carolinalin@gmail.com', '081344283518', 'Jl. Gerilyawan Kamkey', 2, '', '', '', '', '78', '100', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-25 06:25:13', 1, 0),
('1621923573', 'H. Heru', 'default-user.png', 'hheru37@gmail.com', '$2y$10$XXjXTAHrS3eNROgGUUEq0eZLXnlBpALc5bpLi5Ba9JhzPYdrHHnZe', '', 'Jl. Gelanggang II Waena', 'Rumah Kos H. Heru 37', 'default-image.png', 'hheru37@gmail.com', '', 'Jl. Gelanggang II Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '37', '72', '', '', '', 0, '2021-05-25 06:21:34', 1, 0),
('1621923704', 'H. Tajab', 'default-user.png', 'htajab@gmail.com', '$2y$10$1FMFVtWgBishWJhNmuoETurYX0.ICmsVLovdRPAKMmzCtfM5xyWQW', '', 'Jl. Gelanggang II Waena', 'Rumah Kos H. Tajab', 'default-image.png', 'htajab@gmail.com', '', 'Jl. Gelanggang II Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '40', '', '', '', 0, '2021-05-25 06:23:38', 1, 0),
('1621923753', 'Hj. Siti Rahma', 'default-user.png', 'hjsitirahma@gmail.com', '$2y$10$diGwuxicBrXUBu.SZ6rOGOG0ymoGDMMnmPofqMebQAsC.93O8HTgC', '', 'Kompleks KUD Expo', 'Rumah Kos Hj. Siti Rahma', 'default-image.png', 'hjsitirahma@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '18', '54', '', '', '', 0, '2021-05-25 06:25:22', 1, 0),
('1621923782', 'Ibu Kobak', 'default-user.png', 'ibukobak@gmail.com', '$2y$10$fbUFvgETF6PPAKKpoP/JPOZU5zfJqf059Vz0M4pF/PB.0X52w5Roi', '081344139664', 'Jl. Belakang tc perkebunan', 'Rumah Kos Ibu Kobak', 'default-image.png', 'ibukobak@gmail.com', '081344139664', 'Jl. Belakang tc perkebunan', 2, '', '', '', '', '16 kamar', '48 orang', '', 'kualitas air bersih', '', 0, '2021-05-25 06:26:25', 1, 0),
('1621923823', 'Ibu Kambuaya', 'default-user.png', 'kambuaya@gmail.com', '$2y$10$RLfN0r5vi4NFUgD4icu.hOJAkYFH.QiNGr2e26wA91RkgvcuMT6I2', '', 'Jl. Gelanggang II Waena', 'Rumah Kos Ibu Kambuaya', 'default-image.png', 'kambuaya@gmail.com', '', 'Jl. Gelanggang Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '45', '', '', '', 0, '2021-05-25 06:25:35', 1, 0),
('1621923924', 'Nyoman', 'default-user.png', 'nyoman@gmail.com', '$2y$10$oNK8OkssQI6T3MnjvSDpEOWiDW8lH3Gh2wlv4ry.5qwq.vPT2eO9W', '', 'Kompleks KUD Expo', 'Rumah Kos Nyoman', 'default-image.png', 'nyoman@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '12', '24', '', 'Kualitas Air Bersih', '', 0, '2021-05-25 06:27:31', 1, 0),
('1621923947', 'H. Heru', 'default-user.png', 'hheru26@gmail.com', '$2y$10$YQyqR1zLXmiykyRDamcCveDBohyITu2UKL4O5rN0XWTb4HZw7Um3O', '', 'Jl. Gelanggang II Waena', 'Rumah Kos H. Heru 26', 'default-image.png', 'hheru26@gmail.com', '', 'Jl. Gelanggang Waena II', 2, '', '', 'Tidak Ada', 'Tidak Ada', '26', '75', '', '', '', 0, '2021-05-25 06:28:58', 1, 0),
('1621923954', 'Rudi Hermawan', 'default-user.png', 'rudihermawan@gmail.com', '$2y$10$tUr4gqB8gYad3Ne6WBCAq.0loP6B2g5N22m/l3wDveKaTGFbZax3K', '', 'Jl. Yoka', 'Rumah Kos Rudi Hermawan', 'default-image.png', 'rudihermawan@gmail.com', '', 'Jl. Yoka', 2, '', '', '', '', '9', '27', '', 'kualitas air bersih', '', 0, '2021-05-25 06:31:44', 1, 0),
('1621924144', 'H. Umar', 'default-user.png', 'humar@gmail.com', '$2y$10$kpNxuRaro9tZ/RhYB7ygr.cRyfAAOk/Gh3acibVqaRIyxyH1Zxqu2', '', 'Jl. Gelanggang Remaja Waena', 'Rumah Kos H. Umar', 'default-image.png', 'humar@gmail.go.id', '', 'Jl. Gelanggang Remaja Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '24', '62', '', '', '', 0, '2021-05-25 06:31:32', 1, 0),
('1621924200', 'Hj. Ros', 'default-user.png', 'ros@gmail.com', '$2y$10$4qJ1.JRU6KCuPwwVhJ5L.OV.X5mh/DU3DMo6szdp1GFQYViL76i1a', '', 'Kompleks KUD Expo', 'Rumah Kos Hj. Ros', 'default-image.png', 'ros@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '8', '32', '', 'Kuatlitas Air Bersih', '', 0, '2021-05-25 06:33:22', 1, 0),
('1621924304', 'Tris', 'default-user.png', 'trisgelanggang@gmail.com', '$2y$10$O/kWLQyRmw7nypRnbwm3FuwOF/vfTfOl2WDH9fs/ixFPpPGyHwFiS', '', 'Jl. Gelanggang Remaja Waena', 'Rumah Kos Tris Gelanggang Rmj', 'default-image.png', 'trisgelanggang@gmail.com', '', 'Jl. Gelanggang Remaja Waena', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '35', '', '', '', 0, '2021-05-25 06:33:08', 1, 0),
('1621924311', 'Erna Sira Alhamid', 'default-user.png', 'ernasira@gmail.com', '$2y$10$uy/YBpSTIHI7ZkJrKNSiUO7DBxW3rK7YUeyyXYpd21tb7QIFihqhm', '082197886005', 'Jl. Karang Yoka', 'Rumah Kos Erna Sira Alhamid', 'default-image.png', 'ernasira@gmail.com', '082197886005', 'Jl. Karang Yoka', 2, '', '', '', '', '12', '46', '', 'Kualitas air sumur bersih', '', 0, '2021-05-25 06:35:58', 1, 0),
('1621924319', 'H. Nandar', 'default-user.png', 'hnandar@gmail.com', '$2y$10$Mqk8r/cyof2lPw74GDC0EuqLApnW8eI7lBkOXzbnNY4D5GT/BQ3.m', '0811482403', 'jl.belakang tc perkebunan', 'Rumah Kos H. Nandar', 'default-image.png', 'hnandar@gmail.com', '0811482403', 'jl.belakang tc perkebunan', 2, '', '', '', '', '16 kamar', '52 orang', '', 'kualitas air bersih\r\n', '', 0, '2021-05-25 06:34:31', 1, 0),
('1621924406', 'Sri', 'default-user.png', 'sriexpo@gmail.com', '$2y$10$njB/2qoq4NXShmN7Hqg7Q.jZpBSFOMXlpkkjxVWjlSZPt5nfs0Biy', '', 'Kompleks KUD Expo', 'Rumah Kos Sri', 'default-image.png', 'sriexpo@gmail.com', '', 'Kompleks KUD Expo', 2, '', '', '', '', '6', '24', '', 'Kualitas Air Bersih', '', 0, '2021-05-25 06:34:53', 1, 0),
('1621924495', 'Decu Deda', 'default-user.png', 'decudeda@gmail.go.id', '$2y$10$0KvDQTXpJcutHQo27jX6I.IQAyDxvxipKu86WchVoNcggeA8d7RZ.', '', 'Padang Bulan I RT002/RW 6', 'Rumah Kos Decu Deda', 'default-image.png', 'decudeda@gmail.com', '', 'Padang Bulan I RT002/RW 6', 2, '', '', 'Tidak Ada', 'Tidak Ada', '11', '20', '', '', '', 0, '2021-05-25 06:37:09', 1, 0),
('1621924501', 'Gofar', 'default-user.png', 'gofar@gmail.com', '$2y$10$mMxBQz0iyynqfGrSKb2Owut/PfvT.qNtVDiuqes1sXggGsPb9J0yi', '', 'Jl. Belut 4', 'Rumah Kos Gofar', 'default-image.png', 'gofar@gmail.com', '', 'Jl. Belut 4', 2, '', '', '', '', '10', '38', '', 'Kualitas air bersih', '', 0, '2021-05-25 06:36:42', 1, 0),
('1621924532', 'Ilyas', 'default-user.png', 'ilyas@gmail.com', '$2y$10$CuV.KzBqQElfQKii/qQ.YetFKIU9rHA8/SVNrOHjs2XBIGcMQIVFi', '081344504943', 'Jl. Karang 4', 'Rumah Kos Ilyas ', 'default-image.png', 'ilyas@gmail.com', '081344504943', 'Jl. Karang 4', 2, '', '', '', '', '10 kamar', '20 orang', '', 'kualitas air bersih', '', 0, '2021-05-25 06:38:07', 1, 0),
('1621924562', 'Christina', 'default-user.png', 'christinayoka@gmail.com', '$2y$10$JiqjvPulH5gCBNBOD.rZcO7QoRzjXyn8tZPi/JPxZHjM1uDuUtbEW', '082148458728', 'Jl. karang Yoka', 'Rumah Kos Christina', 'default-image.png', 'christinayoka@gmail.com', '082148458728', 'Jl. karang Yoka', 2, '', '', '', '', '10', '50', '', 'kualitas air bersih', '', 0, '2021-05-25 06:38:19', 1, 0),
('1621924607', 'Marthen Liga', 'default-user.png', 'marthenliga@gmail.com', '$2y$10$867hhbcDdJbMi1zGVEwo3OGxYTw2O/r0sowfh0ZvHTM1nJdfucjU6', '', 'Jl. Belut 4', 'Rumah Kos Marthen Liga', 'default-image.png', 'marthenliga@gmail.com', '', 'Jl. Belut 4', 2, '', '', '', '', '16', '64', '', 'Kualitas air bersih', '', 0, '2021-05-25 06:39:01', 1, 0),
('1621924702', 'Marthen Malisa', 'default-user.png', 'marthenmalisa@gmail.com', '$2y$10$3U6LTWT3pIvptuieFCvUPe4CpQw4llRfPI3gvqjFLiCMDODErLv66', '', 'Jl. Karang Yoka', 'Rumah kos Marthen Malisa', 'default-image.png', 'marthenmalisa@gmail.com', '', 'Jl. Karang Yoka', 2, '', '', '', '', '9', '32', '', 'kualitas air sumur bersih', '', 0, '2021-05-25 06:40:45', 1, 0),
('1621924728', 'Syafei', 'default-user.png', 'syafei@gmail.com', '$2y$10$IAhWrE1F9n99Fa3YuVK54.lwP3x9L69gFBSp7U6ZqeNofVuVYbyAO', '', 'Jl. kud', 'Rumah Kos Syafei', 'default-image.png', 'syafei@gmail.com', '', 'Jl. kud', 2, '', '', '', '', '18 kamar', '54 orang', '', 'kualitas air bersih', '', 0, '2021-05-25 06:40:58', 1, 0),
('1621924758', 'G. Situmorang', 'default-user.png', 'gsitumorang@gmail.com', '$2y$10$QzVHrVfUwZkHa7tU6XqVnuZG3om5XrBhKH0gjadU10wc84R2oNDo.', '', 'Jl. Belut 4', 'Rumah Kos G. Situmorang', 'default-image.png', 'gsitumorang@gmail.com', '', 'Jl. Belut 4', 2, '', '', '', '', '10', '32', '', 'Kualitas air bersih', '', 0, '2021-05-25 06:41:21', 1, 0),
('1621924848', 'Sibarani Efendi', 'default-user.png', 'sibarani@gmail.com', '$2y$10$U3DtNtTVM8sz/Lf7lQJkg.DqHHYUp277ht3vxGRB6ruFIBnQhsQWC', '081248784851', 'Jl. Kolam Kangkung', 'Rumah Kos Sibarani Efendi', 'default-image.png', 'sibarani@gmail.com', '081248784851', 'Jl. Kolam Kangkung', 2, '', '', '', '', '12', '40', '', 'kualitas air sumur bersih', '', 0, '2021-05-25 06:44:42', 1, 0),
('1621924888', 'Joko', 'default-user.png', 'joko@gmail.com', '$2y$10$itjZcxHc3y9XfbAc0RpcjuGavwpzINLizalw/pFhpxvxll98lbo6e', '', 'jl.kud', 'Rumah Kos Joko', 'default-image.png', 'joko@gmail.com', '', 'jl.kud', 2, '', '', '', '', '6 kamar', '10 orang', '', 'kualitas air bersih', '', 0, '2021-05-25 06:44:04', 1, 0),
('1621924921', 'Delima Pangaribuan', 'default-user.png', 'dpangaribuan@gmail.com', '$2y$10$rytOT60zLEvTczGQGhLRyeX5j5wKdkBBs5.pvKp66CmR2u1K2cfOO', '081344130829', 'Jl. Belut 4', 'Rumah Kos Delima Pangaribuan', 'default-image.png', 'dpangaribuan@gmail.com', '081344130829', 'Jl. Belut 4', 2, '', '', '', '', '10', '30', '', 'Kualitas air bersih', '', 0, '2021-05-25 06:45:28', 1, 0),
('1621925085', 'Marice Kawer', 'default-user.png', 'maricekawer@gmail.com', '$2y$10$btk1v4ymDsrCWm0Udqukm.kaDQTH3LKXLciYB/cKG.41j2NpuIfjS', '081344990777', 'Jl. SMK 8 Yoka', 'Rumah Kos Marice Kawer', 'default-image.png', 'maricekawer@gmail.com', '081344990777', 'Jl SMK 8 Yoka', 2, '', '', '', '', '20', '60', '', 'kualitas air sumur bersih', '', 0, '2021-05-25 06:48:04', 1, 0),
('1621925134', 'Tris', 'default-user.png', 'tris@gmail.com', '$2y$10$g9CYhbE2nRhu1mpMKP0bY.tkCFtgw2NLwui4.4GTbJmXONHkS33E6', '', 'jl.kud', 'Rumah Kos Tris', 'default-image.png', 'tris@gmail.com', '', 'jl.kud', 2, '', '', '', '', '10 kamar', '18 orang', '', 'kualitas air baik\r\n', '', 0, '2021-05-25 06:48:41', 1, 0),
('1621925287', 'H. Parsudi', 'default-user.png', 'parsudi@gmail.com', '$2y$10$JotTXVaYyB1pA4FD75UI4.BkpIHE5NZtYs7CPpjwMg7fOyCFyApFq', '081344344976', 'Jl. Gelanggang', 'Rumah Kos Parsudi', 'default-image.png', 'parsudi@gmail.com', '081344344976', 'Jl. Gelanggang', 2, '', '', '', '', '19', '47', '', 'kualitas air sumur bersih', '', 0, '2021-05-25 06:50:12', 1, 0),
('1621925332', 'Ahmad', 'default-user.png', 'ahmadkud@gmail.com', '$2y$10$DGryCcYsUbQx6cZBDIqWzu7RzQ2RRvk4ZKgpn/EhG9n9M6Re2.q.a', '', 'Jl.kud', 'Rumah Kos Ahmad', 'default-image.png', 'ahmadkud@gmail.com', '', 'Jl.kud', 2, '', '', '', '', '14', '32', '', 'kualitas air bersih', '', 0, '2021-05-25 06:50:26', 1, 0),
('1622089001', 'Martina Manuhutu', 'default-user.png', 'martinamanuhutu@mail.go.id', '$2y$10$m3Y19FY4n3Eks9hqYygzQuxjr6/60hYB0IZLXA09lKcOQ8iLLLbzG', '081340087466', 'Jl. Poltekes - Padang Bulan ', 'Rumah Kos Martina Manuhutu', 'default-image.png', 'rumahkosmartinamanuhutu@gmail.co.id', '-', 'Jl. Poltekes - Padang Bulan ', 2, '', '', 'Tidak Ada', 'Tidak Ada', '15', '30', '', '', '', 0, '2021-05-27 04:20:35', 1, 0),
('1622089119', 'Dahlia', 'default-user.png', 'dahlia@gmail.com', '$2y$10$DciLFePgef9XqwerhIwO2uHENhCGNYgiPzv3RTvymXxvicEMmpFmK', '085244561045', 'Gang Merpati I', 'Rumah Kos Dahlia', 'default-image.png', 'dahlia@gmail.com', '085244561045', 'Gang Merpati I', 2, '', '', '', '', '18', '11', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:22:09', 1, 0),
('1622089121', 'Sultan', 'default-user.png', 'sultan@gmail.com', '$2y$10$T4pEHn1RgoCegs4m6bqpf.5Yl8P1BVPCKh3sT9D99ZtPijsEhikpu', '082347164892', 'Entrop', 'Rumah Kos Bapak Sultan', 'default-image.png', 'sultan@gmail.com', '082347164892', 'Entrop', 2, '', '', '', '', '4', '', '', '', '', 0, '2021-05-27 04:22:13', 0, 0),
('1622089144', 'Lambale', 'default-user.png', 'lambale@gmail.com', '$2y$10$iaK29Xz79S5gNZMRTXnQJuiFaww7iEVYpAx3YKOiFoBPg1.sfAas.', '08124812518', 'kampung button', 'Rumah Kos Bpk. Lambale', 'default-image.png', 'lambale@gmail.com', '08124812518', 'kampung button', 2, '', '', '', '', '24', '', '', '', '', 0, '2021-05-27 04:25:49', 1, 0),
('1622089258', 'Erna', 'default-user.png', 'erna@gmail.co.id', '$2y$10$TDrEO0fRmPDOO6xXtoMNeeQSvzubRnbZmZYFkLeyh9u3wg4KPDeQC', '-', 'Padang Bulan Organda', 'Rumah Kos Erna', 'default-image.png', 'rumahkoserna@gmail.co.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '10', '', '', '', 0, '2021-05-27 04:26:41', 1, 0),
('1622089335', 'Agus Purwoko', 'default-user.png', 'aguspurwoko@gmail.com', '$2y$10$4NzvJC03VjQ1eQAB/wGFJ.YidaDvbwPCUDr7.bXBvKCZBohHCSjWC', '081248526162', 'Gang Merpati III', 'Rumah Kos Agus Purwoko', 'default-image.png', 'aguspurwoko@gmail.com', '081248526162', 'Gang Merpati III', 2, '', '', '', '', '11', '15', '', 'Kualitas air tidak berkapur', '', 0, '2021-05-27 04:24:57', 1, 0),
('1622089338', 'Hj Tahir', 'default-user.png', 'tahir@gmail.com', '$2y$10$1RNeK60.0XRcaWb1i9/bj.tqc/4iE83scqPgo4RvviEQq9ECuJNNq', '', 'Entrop', 'Rumah Kos Hj Tahir', 'default-image.png', 'tahir@gmail.com', '', 'Entrop', 2, '', '', '', '', '48', '', '', '', '', 0, '2021-05-27 04:24:55', 1, 0),
('1622089499', 'Ryan', 'default-user.png', 'Ryan@gmail.com', '$2y$10$f.sbtQBaat4AlYxy7ZgIFOfEwvAoAquTq80kOrbpJnA74V3u1zwZm', '081247570636', 'Entrop', 'Rumah kos Pak Ryan', 'default-image.png', 'Ryan@gmail.com', '081247570636', 'Entrop', 2, '', '', '', '', '', '', '', 'kualitas air jernih tetapi berbau', '', 0, '2021-05-27 04:27:21', 0, 0),
('1622089500', 'Situmorang', 'default-user.png', 'situmorang@gmail.com', '$2y$10$YA1iTq.fY9ahSW.2euHZfemImnAgVgY2EbpUZE5OG.dJq/VVS1hiy', '', 'Gang Merpati II', 'Rumah Kos Situmorang', 'default-image.png', 'situmorang@gmail.com', '', 'Gang Merpati II', 2, '', '', '', '', '9', '13', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:27:05', 1, 0),
('1622089607', 'Markus Tonandi', 'default-user.png', 'markustonandi@gmail.go.id', '$2y$10$5KgAMraEv5VkWng6J.IZqOTYcF9uoQg3K77hM3pr.hmzOF2rMOYZS', '085241058434', 'Padang Bulan Organda', 'Rumah Kos Markus Tonandi', 'default-image.png', 'rumahkosmarkustonandi@gmail.go.id', '085241058434', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '8', '', '', '', 0, '2021-05-27 04:30:11', 1, 0),
('1622089628', 'Eli Usmaser', 'default-user.png', 'eliusmaser@gmail.com', '$2y$10$8HJQdLXzfTJr7HhYD8U84..bbIc4VxaLzukGne2V9kKAXA5EBavBS', '085244728660', 'Gang Merpati III', 'Rumah Kos Eli Usmaser', 'default-image.png', 'eliusmaser@gmail.com', '085244728660', 'Gang Merpati III', 2, '', '', '', '', '8', '16', '', '', '', 0, '2021-05-27 04:29:41', 1, 0),
('1622089645', 'Harun', 'default-user.png', 'Harun@gmail.com', '$2y$10$.F6EPZEC9YJQUyxEBbEauuBp/CCL4wAQPd/9HmkdH3DcU6gGYqLcG', '081247087280', 'Entrop', 'Rumah Kos Pak Harun', 'default-image.png', 'Harun@gmail.com', '081247087280', 'Entrop', 2, '', '', '', '', '3', '', '', 'kualitas air jernih', '', 0, '2021-05-27 04:32:05', 0, 0),
('1622089785', 'Ahmad Rohim', 'default-user.png', 'ahmadrohim@gmail.com', '$2y$10$kVXpCRafPv3M1OnP45x1z.RZoS35Y..IaCm3DHIIg.Jm6kGBXhTxC', '08134405523', 'Gang Merpati II', 'Rumah Kos Ahmad Rohim', 'default-image.png', 'ahmadrohim@gmail.com', '08134405523', 'Gang Merpati II', 2, '', '', '', '', '22', '44', '', 'Kualitas air berkapur', '', 0, '2021-05-27 04:32:10', 1, 0),
('1622089830', 'Lopes', 'default-user.png', 'lopes@gmail.go.id', '$2y$10$oMY21cHIZOIYhsYn4tUAouuGiD5WmVNROjOIlmQHL.cbqKxZJaQby', '-', 'Padang Bulan Organda', 'Rumah Kos Lopes', 'default-image.png', 'rumahkoslopes@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '40', '40', '', '', '', 0, '2021-05-27 04:32:32', 1, 0),
('1622089933', 'Herdrik Seru', 'default-user.png', 'herdrik@gmail.com', '$2y$10$d4.b7JoGB3q9G3m38CXD6uh37sXvcQs.RMmXNlrUdUGyv8DuSFSXS', '081344767706', 'Jl. Yotefa', 'Rumah Kos Herdrik Seru', 'default-image.png', 'herdrik@gmail.com', '081344767706', 'Jl. Yotefa', 2, '', '', '', '', '8', '17', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:34:51', 1, 0),
('1622089963', 'Heluka', 'default-user.png', 'heluka@gmail.go.id', '$2y$10$cbFfWfqlqS1/9JKw07hBFeisz8lo7GR8NpyL/ps0234DpsPZafCb2', '-', 'Padang Bulan Organda', 'Rumah Kos Heluka', 'default-image.png', 'rumahkosheluka@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '15', '', '', '', 0, '2021-05-27 05:22:51', 0, 0),
('1622089988', 'Kumala Kaigere', 'default-user.png', 'Kumalakaigere@gmail.com', '$2y$10$PokzqB8iJdB7./8E/eHJauWg5g6.9BDS6JwhhXNCpEBeFxqAQLkQW', '085244033076', 'Entrop', 'Rumah Kos Ibu Kumala', 'default-image.png', 'Kumalakaigere@gmail.com', '085244033076', 'Entrop', 2, '', '', '', '', '6', '', '', 'kualitas air jernih, keruh', '', 0, '2021-05-27 04:41:28', 0, 0),
('1622090031', 'Fredy', 'default-user.png', 'amdkayuna@gmail.com', '$2y$10$BXWItikfrCHllheh7HMWtexfUklCtDLaG6i7XfF0AqqSCU2BgxIZm', '0967 581086', 'Jl. Baru Pasar Lama Kelurahan Awiyo', 'AMDK Ayuna', 'default-image.png', 'amdkayuna@gmail.com', '0967 581941', 'Jl. Baru Pasar Lama Kelurahan Awiyo', 5, '', '', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 04:40:42', 1, 0),
('1622090178', 'Haji Sumiati', 'default-user.png', 'sumiati@gmail.com', '$2y$10$8ErE5sv.66FNK.sFjakvpOKy3DQ53RHkBVQJ/hcPefVLxlt/jpCsC', '', 'Jl. Yotefa', 'Rumah Kos Haji Sumiati', 'default-image.png', 'sumiati@gmail.com', '', 'Jl. Yotefa', 2, '', '', '', '', '20', '15', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:39:05', 1, 0),
('1622090261', 'Lambale', 'default-user.png', 'lambale@gmail.com', '$2y$10$HE6PELpE6tSpcSDbu2uCM.afcu.nvyV8Tgq8lf6sxRy8kp/ubp26O', '08124812518', 'kampung button', 'Rumah Kos Bpk. Lambale', 'default-image.png', 'lambale@gmail.com', '08124812518', 'kampung button', 2, '', '', '', '', '24 kamar', '', '', 'kualitas air bersih dan berkapur', '', 0, '2021-05-27 04:37:48', 1, 0),
('1622090281', 'Ibu Wania', 'default-user.png', 'wania@gmail.com', '$2y$10$V0e4piYnuudJliV2h7hoveb5zzsksDibkp7dRN/jLHesWARsN2gDq', '082334639345', 'kampung button RT.2/RW.1', 'Rumah Kos Ibu Wania', 'default-image.png', 'wania@gmail.com', '082334639345', 'kampung button RT.2/RW.1', 2, '', '', '', '', '10 kamar', '', '', 'kualitas air bersih', '', 0, '2021-05-27 04:43:59', 1, 0),
('1622090348', 'Tanpa Nama No urt 8, Awiyo', 'default-user.png', 'tanpa8@gmail.com', '$2y$10$qACpzSQxv5gmOqum3Z86yeMZzhL6gnm2tfj30VFG0iu6rHen3RxDm', '', 'Jl. Yotefa', 'Rumah Kos Tnp Nama Jl. Youtefa', 'default-image.png', 'tanpa8@gmail.com', '', 'Jl. Yotefa', 2, '', '', '', '', '11', '4', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:40:54', 1, 0),
('1622090400', 'Bpk.Jumran', 'default-user.png', 'Jumran@gmail.com', '$2y$10$Gmffo8bZ4r0s0uGJbMKXWOKEwbbP2khJOvG3aR8gSCg.ct6Vo4PEW', '081344420250', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Jumran@gmail.com', '081344420250', 'Lembah Hamadi', 2, '', '', '', '', '1', '', '', 'keruh,berkapur', '', 0, '2021-05-27 04:55:00', 0, 0),
('1622090459', 'Haji Baharudin', 'default-user.png', 'baharudin@gmail.com', '$2y$10$E9vDGF2LB32XXwh5BHaTju1REdd13rfdi3gBZA3eFU7kbY21J1M3a', '08114802063', 'Gang Merpati II', 'Rumah Kos Haji Baharudin', 'default-image.png', 'baharudin@gmail.com', '08114802063', 'Gang Merpati II', 2, '', '', '', '', '11', '15', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:43:44', 1, 0),
('1622090494', 'Stef M. Sularero', 'default-user.png', 'stefsularero@gmail.com', '$2y$10$uOtqb9Up01AcCX5Nj6TU4e8kQL7BfiGThiEmWDHKqAGAF9oneon7O', '081393734320', 'Entrop', 'Rumah Kos Bpk. Stef', 'default-image.png', 'stefsularero@gmail.com', '081393734320', 'Entrop', 2, '', '', '', '', '20', '', '', 'kualitas air  jernih berkapur', '', 0, '2021-05-27 04:47:33', 1, 0),
('1622090552', 'Syarie Hasan, SE', 'default-user.png', 'syarie@gmail.com', '$2y$10$iyJ.Fc33wFkDoAs4kVeI3eiHQB4CB82ZIaJuXd0RrZGaIRG9c5NOm', '0967 522400', 'Jl. Bahtera Entrop Jayapura', 'Hotel Sahid Papua', 'default-image.png', 'syarie@gmail.com', '0967 522401', 'Jl. Bahtera Entrop Jayapura', 3, '8.400 m2', '1.920 m2', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:02:04', 0, 0),
('1622090646', 'Bapak Jamali', 'default-user.png', 'jamali@gmail.com', '$2y$10$tIVVw/rBdRix2VWNtTw.Ledcm87Jjyja0ESs8wrDCuh/7YLsM2tQa', '081344613744', 'jl.lembah hamadi', 'Rumah Kos Bapak Jamali', 'default-image.png', 'jamali@gmail.com', '081344613744', 'jl.lembah hamadi', 2, '', '', '', '', '4 kamar', '', '', 'kualitas air bersih', '', 0, '2021-05-27 04:54:46', 0, 0),
('1622090661', 'Haji Nurlan', 'default-user.png', 'nurlan@gmail.com', '$2y$10$U5gacFT0OlbCHOwy66z0KOOZauKlzq9TK7rlB4oKkOWyW6jfwfSkm', '', 'Gang Merpati II', 'Rumah Kos Haji Nurlan', 'default-image.png', 'nurlan@gmail.com', '', 'Gang Merpati II', 2, '', '', '', '', '16', '20', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 04:48:39', 1, 0),
('1622090857', 'Basriman', 'default-user.png', 'Basriman@gmail.com', '$2y$10$v/2DcnkC3eMuTqEwDDZg5OQfRpHgC2st7ZJmgZooJLhTxJjB6gEQ6', '082198625555', 'Entrop', 'Rumah kos Bapak Basriman', 'default-image.png', 'Basriman@gmail.com', '082198625555', 'Entrop', 2, '', '', '', '', '6', '', '', 'Kualitas air jernih, berkapur', '', 0, '2021-05-27 04:49:57', 0, 0),
('1622091003', 'Ongga', 'default-user.png', 'ongga@gmail.com', '$2y$10$Me66TtGA0zQ8t.ek6b9ENOXp/8F.E8TUF.4RWeNWdLJv3BctnGUpa', '081344556487', 'Entrop', 'Rumah Kos Bpk. Ongga', 'default-image.png', 'ongga@gmail.com', '081344556487', 'Entrop', 2, '', '', '', '', '10', '', '', '', '', 0, '2021-05-27 04:56:21', 1, 0),
('1622091295', 'Bapak Efendi', 'default-user.png', 'efendi@gmail.com', '$2y$10$.0V7oZSRrTar5/srxdT5NuVWzxq3IEBHrquovf0XA/n9PnrDVj4Nu', '082197881000', 'jl.lembah hamadi', 'Rumah Kos Bapak Efendi', 'default-image.png', 'efendi@gmail.com', '082197881000', 'jl.lembah hamadi', 2, '', '', '', '', '6 kamar', '', '', 'kualitas air bersih berkapur', '', 0, '2021-05-27 04:57:53', 0, 0),
('1622091321', 'Aji Uding', 'default-user.png', 'ajiuding@gmail.com', '$2y$10$VbVyBcf9tM5amYvudoiHb.fZ03D2mjgrMzQIoixvAeZpgPPriRow6', '', 'Lembah hamadi', 'Rumah Kos Aji Uding', 'default-image.png', 'ajiuding@gmail.com', '', 'Lembah Hamadi', 2, '', '', '', '', '12', '', '', 'jernih', '', 0, '2021-05-27 05:01:26', 1, 0),
('1622091384', 'Mamario', 'default-user.png', 'Mamario@gmail.com', '$2y$10$Z8vJJ8mLh63C..wtwtBjNO5IJKsiyYtbq8MTfRQr.19ju2DrGsucS', '081254655264', 'Entrop', 'Rumah Kos Mamario', 'default-image.png', 'Mamario@gmail.com', '081254655264', 'Entrop', 2, '', '', '', '', '5', '', '', '', '', 0, '2021-05-27 04:59:32', 0, 0),
('1622091477', 'Bapak Saharudin', 'default-user.png', 'saharudin@gmail.com', '$2y$10$US1zyJHfJJmiMiYd./TW7OrszRnMONaerQ2UwPSJ4UukWUS2N7L2G', '', 'jl.lembah hamadi', 'Rumah Kos Bapak Saharudin', 'default-image.png', 'saharudin@gmail.com', '', 'jl.lembah hamadi', 2, '', '', '', '', '4 kamar', '', '', 'kualitas air bersih', '', 0, '2021-05-27 05:00:33', 0, 0),
('1622091578', 'Ernawati', 'default-user.png', 'Ernawati@gmail.com', '$2y$10$wWsDV1ss7kpjfz0EY3b90u7YaVZhBcT7mpYOKtMkn9zAsCw/.sDx6', '', 'Entrop', 'Rumah kos Ibu Ernawati', 'default-image.png', 'Ernawati@gmail.com', '', 'Entrop', 2, '', '', '', '', '2', '', '', 'kualitas air keruh , berkapur', '', 0, '2021-05-27 05:03:28', 0, 0),
('1622091637', 'Bapak Widi', 'default-user.png', 'widi@gmail.com', '$2y$10$fUvGrGVjzAa.AouFfHhvzuHgdKmjgkiL7GZE74BOz3UqHBYQVO2RC', '081344908424', 'jl.lembah hamadi', 'Rumah Kos Bapak Widi', 'default-image.png', 'widi@gmail.com', '081344908424', 'jl.lembah hamadi', 2, '', '', '', '', '7 kamar', '', '', 'kualitas air bersih', '', 0, '2021-05-27 05:03:07', 0, 0),
('1622091731', 'PAULUS ARFAYAN', 'wajibpajak-1623997413.png', 'ca@mercure-jayapura.com', '$2y$10$.wO7ersMUgnP2nsjyAo0CueTTsNrJyvyqSSFzhnQG3ueJ9RONH8LK', '0967-5161888', 'Jl. Ahmad Yani No. 12, Kel. Gurabesi, Kec. Jayapura Utara, Prov. Papua 99111', 'MERCURE JAYAPURA', '1622091731-usaha-logo-1623897129.png', 'ca@mercure-jayapura.com', '0967-5161888', 'Jl. Ahmad Yani No. 12, Kel. Gurabesi, Kec.\r\nJayapura Utara, Prov. Papua 99111', 3, '120 m2', '1.247 m2', 'Ada', 'Ada', '-', '-', '-', '', '', 0, '2021-05-27 05:06:56', 1, 0),
('1622091793', 'Bapak Widi', 'default-user.png', 'widi@gmail.com', '$2y$10$gHUwR1AcRAfowe0OBWIou.kL0BK9m0c3k.wcDuwV9CzjbAlzWQXtW', '081344908424', 'jl.lembah hamadi', 'Rumah Kos Bapak Widi', 'default-image.png', 'widi@gmail.com', '081344908424', 'jl.lembah hamadi', 2, '', '', '', '', '7 kamar', '', '', 'kualitas air bersih', '', 0, '2021-05-27 05:03:15', 0, 0),
('1622091798', 'Pak Rahmat', 'default-user.png', 'rahmat@gmail.com', '$2y$10$heVai8QPaRy1bdIY1PULruXg.5B.9LJ0uZWzDgWxYc9caoU/5fhmS', '', 'jl.lembah hamadi', 'Rumah Kos Pak Rahmat', 'default-image.png', 'rahmat@gmail.com', '', 'jl.lembah hamadi', 2, '', '', '', '', '3 kamar', '', '', 'kualitas air bersih dan berkeruh', '', 0, '2021-05-27 05:06:00', 0, 0),
('1622091811', 'Darwis', 'default-user.png', 'Darwis@gmail.com', '$2y$10$kxivHKtxV/r/XlIegXdiZuN2ZGS5YMa7x3oFYsqtGLBM84dC1v.xO', '081344411145', 'Entrop', 'Rumah Kos Pak Darwis', 'default-image.png', 'Darwis@gmail.com', '081344411145', 'Entrop', 2, '', '', '', '', '2', '', '', '', '', 0, '2021-05-27 05:05:24', 0, 0),
('1622091861', 'Bpk.Arifudin', 'default-user.png', 'arifudin@gmail.com', '$2y$10$YNRqGR8KUWUUhQuUcnskEOhjcCruucF2KhN7/TCzyJR86n/D950f6', '081240872625', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'arifudin@gmail.com', '081240872625', 'Lembah Hamadi', 2, '', '', '', '', '9', '', '', 'Jernih', '', 0, '2021-05-27 05:10:20', 0, 0),
('1622091929', 'Saharudin', 'default-user.png', 'Saharudin@gmail.com', '$2y$10$UURftL2J45COJY/bfYCirO8sfW.4bXU81FmIBi/HwPlmI4TWIiDqS', '081240156035', 'Entrop', 'Rumah Kos Saharudin', 'default-image.png', 'Saharudin@gmail.com', '081240156035', 'Entrop', 2, '', '', '', '', '2', '', '', 'kualitas air keruh dan berkapur', '', 0, '2021-05-27 05:08:24', 0, 0),
('1622091971', 'Pak Ridwan', 'default-user.png', 'ridwan@gmail.com', '$2y$10$fXYqmyi87tGXZH7o83IeceCFdY0qdDL.vAOGhLTpYW8XXfMtCuQka', '081342182223', 'jl.hamadi lembah', 'Rumah Kos Pak Ridwan', 'default-image.png', 'ridwan@gmail.com', '081342182223', 'jl.hamadi lembah', 2, '', '', '', '', '10', '', '', 'kualita air bersih dan berkeruh', '', 0, '2021-05-27 05:09:08', 1, 0),
('1622092018', 'Yayasan Dian Harapan', 'default-user.png', 'RSDH@gmail.com', '$2y$10$zm5qQTeupMjkEo62LBcYGO2ixEtYzbzNcR3pbpJf9XYq2OcgjUOyK', '0967 572325', 'Jl. Taruna Bakti Kelurahan Yabansai', 'Rumah Sakit Dian Harapan', 'default-image.png', 'RSDH@gmail.com', '0967 573 479', 'Jl. Taruna Bakti Kelurahan Yabansai', 2, '', '', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:11:27', 1, 0),
('1622092079', 'Haji Nur', 'default-user.png', 'hajinur@gmail.com', '$2y$10$.avOgVipaoupKQdmmbzfqeHBb5B9nQzJ0WsDftF6kEtw2RxuQTzDW', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Haji Nur', 'default-image.png', 'hajinur@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '20', '57', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:10:17', 1, 0),
('1622092109', 'Hamid', 'default-user.png', 'Hamid@gmail.com', '$2y$10$VbLTPvjporM8J9hw.zoL4eTXbPtFWGCLhjyIS0o7v6QoR1N/JU3vG', '081344269229', 'Entrop', 'Rumah Kos Pak Hamid', 'default-image.png', 'Hamid@gmail.com', '081344269229', 'Entrop', 2, '', '', '', '', '3', '', '', '', '', 0, '2021-05-27 05:15:39', 0, 0),
('1622092168', 'Pak Malau', 'default-user.png', 'malau@gmail.com', '$2y$10$g4vBZh3NeL8lqtwTyBpaVeVNR85YW8095uSwUZcvDbVmTgCaVx9Ou', '08111155050', 'jl.hamadi lembah', 'Rumah Kos Pak Malau', 'default-image.png', 'malau@gmail.com', '08111155050', 'jl.hamadi lembah', 2, '', '', '', '', '4 kamar', '', '', 'kualitas air bersih', '', 0, '2021-05-27 05:12:52', 0, 0),
('1622092224', 'H. Latumba', 'default-user.png', 'latumba@gmail.com', '$2y$10$hBAQCzjmVniu2Hpk7tJ4ueUqvF0VYwTTrb1hVUhNyPjWEwFbIZDTi', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos H. Latumba', 'default-image.png', 'latumba@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '10', '23', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:12:02', 1, 0),
('1622092243', 'Ibu. Rahmatiya', 'default-user.png', 'rahmatiya@gmail.com', '$2y$10$ixq8HjEifSdk3CrvI9yc/eygqFoG18erp6A9ykq2k2U.I/XTfoCWK', '081240671717', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'rahmatiya@gmail.com', '081240671717', 'Lembah Hamadi', 2, '', '', '', '', '4', '', '', 'Jernih', '', 0, '2021-05-27 05:17:46', 0, 0),
('1622092292', 'Jeffry Ferdy, ST', 'default-user.png', 'malljayapura@gmail.com', '$2y$10$Js/B9h.od712SOTK2QTjZOMReAIDQiAjKIacxgKC6DvcEeTpemvlK', '', 'Jl. Sam Ratulangi APO Jayapura', 'Mall Jayapura', 'default-image.png', 'malljayapura@gmail.com', '', 'Jl. Sam Ratulangi APO Jayapura', 4, '31.091,33 ', '11.095 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:14:14', 1, 0),
('1622092365', 'H. Jemap', 'default-user.png', 'jemap@gmail.com', '$2y$10$JOrJXLKcRLbob3YEYKErq.7w/BqzI/R5Nrq7oZNLBIEToR0giLZ.K', '081231657750', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos H. Jemap', 'default-image.png', 'jemap@gmail.com', '081231657750', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '8', '25', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:16:13', 1, 0),
('1622092381', 'Bapak Arifudin', 'default-user.png', 'arifudin@gmail.com', '$2y$10$OvVi6SjT5K1DZMlb5jLt5evkNQla05FKeJDbERd3UdCqgg.3TD8GO', '085197353491', 'jl.hamadi lembah', 'Rumah Kos Bapak Arifudin', 'default-image.png', 'arifudin@gmail.com', '085197353491', '085197353491', 2, '', '', '', '', '3 kamar', '', '', 'kualitas air bersih dan keruh', '', 0, '2021-05-27 05:26:42', 0, 0),
('1622092470', 'Soetedjo Pirono', 'default-user.png', 'multimandiri@gmail.com', '$2y$10$3p6TimJVOWGsNnEjPDLnse5k811.okwmmyVAEE9F1t2Rl/S2VXC2q', '', 'Jl. Baru Abepura No. 98 Kelurahan Whaimhorock', 'CV. Multi Mandiri', 'default-image.png', 'multimandiri@gmail.com', '', 'Jl. Baru Abepura No. 98 Kelurahan Whaimhorock', 4, '45.000m2', '1.803m2', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:23:16', 1, 0),
('1622092544', 'Supardi', 'default-user.png', 'Supardi@gmail.com', '$2y$10$ncJ43mYDoiYQyRPAQkCgY.0zArv2FUlZnJQhjQBGoiHr3u0d/bqyu', '081344269229', 'Entrop', 'Rumah Kos Hj. Supardi', 'default-image.png', 'Supardi@gmail.com', '081344269229', 'Entrop', 2, '', '', '', '', '6', '', '', '', '', 0, '2021-05-27 05:18:49', 0, 0),
('1622092579', 'Reisman', 'default-user.png', 'reisman@gmail.com', '$2y$10$rRUqbq9CWvw6TaFSaydYquOLQhjowRCfQax85.4ZE9cy/Pu567kge', '081247475726', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Reisman', 'default-image.png', 'reisman@gmail.com', '081247475726', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '7', '22', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:18:47', 1, 0),
('1622092682', 'Suryani S. Hamadi', 'default-user.png', 'suryanihamadi@gmail.com', '$2y$10$FmgordXJ.Ou08VGmSjANieUmhZyqC5oeEd9PPqot6ATlF7Z46AG9e', '085226046733', 'Lembah Hamadi', 'Rumah Kos Ibu Suryani S. Hamad', 'default-image.png', 'suryanihamadi@gmail.com', '085226046733', 'Lembah Hamadi', 2, '', '', '', '', '14', '', '', 'Jernih', '', 0, '2021-05-27 05:23:01', 1, 0),
('1622092765', 'Lamasa', 'default-user.png', 'lamasa@gmail.com', '$2y$10$cdAYuzxastSiefqMRXba0.Eiwc/DxUI/0mfkntQIXbXZaGvdz8IHW', '081240856163', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Lamasa', 'default-image.png', 'lamasa@gmail.com', '081240856163', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '6', '15', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:22:10', 1, 0),
('1622092773', 'Husein', 'default-user.png', 'Husein@gmail.com', '$2y$10$d4MPzp3.vMbd2/U27r47z.yIl088ry5/z8kp5XMjyyNlRHXTFr0K2', '', 'Entrop', 'Rumah Kos Hj. Husein', 'default-image.png', 'Husein@gmail.com', '', 'Entrop', 2, '', '', '', '', '5', '', '', '', '', 0, '2021-05-27 05:21:14', 0, 0),
('1622092878', 'Supriadi', 'default-user.png', 'Supriadi@gmail', '$2y$10$43AW5RWkgSrCWBHp4t6JyuMTxOs6BVBIfRw.tQL9qtN65GPVHzjLe', '082197831086', 'Entrop', 'Rumah Kos Hj. Supriadi', 'default-image.png', 'Supriadi@gmail', '082197831086', 'Entrop', 2, '', '', '', '', '9', '', '', '', '', 0, '2021-05-27 05:24:38', 0, 0),
('1622092934', 'Bahar', 'default-user.png', 'baharyoutefa@gmail.com', '$2y$10$eRlWDpjFSN0Q8h3aMvpVP.grgFTwmtuTaLVW55DLs1HU5hyE0uBF6', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Bahar', 'default-image.png', 'baharyoutefa@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '4', '12', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:24:11', 1, 0),
('1622092987', 'Martinus Matuan', 'default-user.png', 'martinusmatuan@gmail.co.id', '$2y$10$xV1SQKJXt.ZUwd3SvoC6feQafm/HxJvkFQwf2ThOOj52WW02Akq4u', '08223850015', 'Padang Bulan Organda', 'Rumah Kos Martinus Matuan', 'default-image.png', 'rumahkosmartinusmatuan@gmail.go.id', '08223850015', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '10', '', '', '', 0, '2021-05-27 05:25:55', 1, 0),
('1622092992', 'Ibu.Rina Sanyi', 'default-user.png', 'rinasanyi@gmail.com', '$2y$10$BPvMjDXCPYXHHbnSMpU0fufvrDwRBeHIgQjhRKNcBIBn8i96IcIQK', '', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'rinasanyi@gmail.com', '', 'Lembah Hamadi', 2, '', '', '', '', '1', '', '', 'Bersih', '', 0, '2021-05-27 05:29:02', 0, 0),
('1622093001', 'Soetedjo Pirono', 'default-user.png', 'megaabepura@gmail.com', '$2y$10$a6hCuEr4Ux67bK0lRE8UXuBhsJXUvX0KVV709SvQ9bCGHAjXgeuyi', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 'Mega Abepura', '1622093001-usaha-logo-1627865157.JPG', 'megaabepura@gmail.com', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 4, '', '600 m2', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:29:12', 1, 0),
('1622093054', 'Asmira', 'default-user.png', 'asmira@gmail.com', '$2y$10$ugnvAUz6/NDxpKSW5YxOZOhd7pcm/AR4e81pv.WudAVwy3UoGbLeO', '082124480338', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Asmira', 'default-image.png', 'asmira@gmail.com', '082124480338', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '10', '25', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:29:00', 1, 0),
('1622093084', 'Bapak Kembar', 'default-user.png', 'Kembar@gmail.com', '$2y$10$xovts9dFDrNZlXLMo1jElOMdPYBBTCPJdDHXvVa3Omyq24/z8gKGS', '082261304903', 'Entrop', 'Rumah Kos Bapak Kembar', 'default-image.png', 'Kembar@gmail.com', '082261304903', 'Entrop', 2, '', '', '', '', '7', '', '', '', '', 0, '2021-05-27 05:27:55', 0, 0),
('1622093162', 'Dorinus Dansinapa', 'default-user.png', 'dorinusdansinapa@gmail.go.id', '$2y$10$RGlFWOE.fjY7DZ5sJHwYeuTafkWxBAZB8J283Exlp.nk4Yp42UmS6', '-', 'Padang Bulan Organda', 'Rumah Kos Dorinus Dansinapa', 'default-image.png', 'dorinusdansinapa@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '10', '', '', '', 0, '2021-05-27 05:28:57', 1, 0),
('1622093206', 'Ibu Sari', 'default-user.png', 'sari@gmail.com', '$2y$10$3tqc0Dz3N1ObHHTtDYQBr.HAwTZdURPUByouQ9OZ2oakLK4XomUma', '081248339773', 'jl.hamadi lembah', 'Rumah Kos Ibu Sari', 'default-image.png', 'sari@gmail.com', '081248339773', 'jl.hamadi lembah', 2, '', '', '', '', '2 kamar', '', '', 'kualitaas air bersih ', '', 0, '2021-05-27 05:31:30', 0, 0),
('1622093287', 'Supriadi', 'default-user.png', 'Supriadi@gmail', '$2y$10$SS85EdrdxzEledht0L3UZOYgBS1TWNSNN3B7taFVl9226MUOFt4E6', '082197831086', 'Entrop', 'Rumah Kos Hj. Supriadi', 'default-image.png', 'Supriadi@gmail', '082197831086', 'Entrop', 2, '', '', '', '', '9', '', '', '', '', 0, '2021-05-27 05:28:29', 0, 0),
('1622093355', 'Ibu Risma', 'default-user.png', 'risma@gmail.com', '$2y$10$1Of2tAsead22qHwF./nc..jpH4OaJUqftgsuhzTbqxbdm/LcPbF6u', '082197697160', 'Lembah Hamadi', 'Ibu Risma', 'default-image.png', 'risma@gmail.com', '082197697160', 'Lembah Hamadi', 2, '', '', '', '', '3', '', '', 'Bersih', '', 0, '2021-05-27 05:32:55', 0, 0),
('1622093358', 'Ursulah', 'default-user.png', 'ursulah@gmail.com', '$2y$10$7SrZuH2ctotggyPCUQKzxuY0UE1nlHb7v27A3uRQ3EU8vLOMtRj9O', '081232144444', 'Entrop', 'Rumah Kos Ibu Ursulah', 'default-image.png', 'ursulah@gmail.com', '081232144444', 'Entrop', 2, '', '', '', '', '25', '', '', 'kualitas air jernih, berkapur', '', 0, '2021-05-27 05:31:51', 1, 0),
('1622093379', 'Dorinus Dasinsinapa', 'default-user.png', 'dorinusdasinsinaga@gmail.go.id', '$2y$10$X2LKQt6rRkFkNcklwh4LS.dJZkQuVRYAU0arPcXI9UcXn/Lj/miT.', '-', 'Padang Bulan Organda', 'Rumah Kos Dorinus Sinaga', 'default-image.png', 'dorinusdasinsinaga@gmail.go.id', '-', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '12', '10', '', '', '', 0, '2021-05-27 05:29:45', 0, 1),
('1622093394', 'Abas', 'default-user.png', 'abas@gmail.go.id', '$2y$10$BqQugHPp6JR0rmOsjL3T5.8Zrk9N08GSeqdMXfeiloGxer22yhkh2', '-', 'Perumnas IV', 'Rumas Kos Abas', 'default-image.png', 'abas@gmail.go.id', '-', 'Perumnas IV', 2, '', '', 'Tidak Ada', 'Tidak Ada', '28', '21', '', '', '', 0, '2021-05-27 05:31:49', 1, 0),
('1622093399', 'Soetedjo Pirono', 'default-user.png', 'pirono@gmail.com', '$2y$10$emsur0c7x4BBNwU6EfLmBeirZRDpOAssJ1p5vwKat1SxRP3hkrANa', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 'Mega Abepura', 'default-image.png', 'pirono@gmail.com', '', 'Jl. Raya Abepura - Sentani Kelurahan Kotabaru', 4, '', '600 m2', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:30:04', 0, 1),
('1622093515', 'Amir', 'default-user.png', 'Amir@gmail.com', '$2y$10$0Hk9L6mQxP3.tPO0nV6So.ShiLBcHUGUPm6He2BETGVGwsCZqVJG.', '081344895588', 'Entrop', 'Rumah Kos Pak Amir', 'default-image.png', 'Amir@gmail.com', '081344895588', 'Entrop', 2, '', '', '', '', '10', '', '', 'kualitas air jernih, berkapur', '', 0, '2021-05-27 05:33:51', 1, 0),
('1622093523', 'Sanis', 'default-user.png', 'sanis@gmail.go.id', '$2y$10$IpLLH2VUDzfCFhc2CSZ5Z.3HUio7MswtRIla3XaREMyXNyNo5Jjmq', '081240938861', 'Padang Bulan Akes', 'Rumah Kos Sanis', 'default-image.png', 'sanis@gmail.go.id', '081240938861', 'Padang Bulan Akes', 2, '', '', 'Tidak Ada', 'Tidak Ada', '13', '12', '', '', '', 0, '2021-05-27 05:34:01', 1, 0),
('1622093540', 'Hj. Olin', 'default-user.png', 'hjolin@gmail.com', '$2y$10$vqd6AhWGBj8mjgW5g./UgeXSo29ytw6n27EDMyjM7xnkXRsfpXwCO', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Hj. Olin', 'default-image.png', 'hjolin@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '8', '15', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:34:08', 1, 0),
('1622093547', 'Ibu Maria Pasolang', 'default-user.png', 'mariapasolang@gmail.com', '$2y$10$gI0NQ0ecO/mU8EmdehNtoeyP/ticmwuGKFqitiowrJ/PF33ks1lEW', '081248784427', 'jl.hamadi lembah', 'Rumah Kos Maria Pasolang', 'default-image.png', 'mariapasolang@gmail.com', '081248784427', 'jl.hamadi lembah', 2, '', '', '', '', '8 kamar', '', '', 'kualitas air bersih dan berkapur', '', 0, '2021-05-27 05:36:38', 0, 0),
('1622093564', 'Soetedjo Pirono', 'default-user.png', 'megawaena@gmail.com', '$2y$10$gVL3GJrenBkV3MQMord3x.rgL73PAvYytrLvi8otA5.YnL/STAMWm', '', 'Jl. Raya Abepura - Sentani Kelurahan Waena Distrik Heram', 'Mega Waena', 'default-image.png', 'megawaena@gmail.com', '', 'Jl. Raya Abepura - Sentani Kelurahan Waena Distrik Heram', 4, '202,30 m2', '1.410 m2', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:37:00', 1, 0),
('1622093636', 'M. Said', 'default-user.png', 'M.Said@gmail.com', '$2y$10$36LcChBFVgKDqOWzAOTjUeJKUFMjzx92bIg2VneYdrMREMSSAs7A6', '081344082320', 'Entrop', 'Rumah Kos Hj. M. Said', 'default-image.png', 'M.Said@gmail.com', '081344082320', 'Entrop', 2, '', '', '', '', '2', '', '', 'Kualitas air Jernih, berlumut hitam-hitam', '', 0, '2021-05-27 05:37:57', 0, 0),
('1622093653', 'Ibu Sesa', 'default-user.png', 'sesa@gmail.com', '$2y$10$m3f/SyEnE87nUNcKwTTCXOC5pTUgrRUQFdWWf.xw4xXrNuNWvdae2', '', 'Kompleks Masjid Mutahidin Yotefa', 'Rumah Kos Ibu Sesa', 'default-image.png', 'sesa@gmail.com', '', 'Kompleks Masjid Mutahidin Yotefa', 2, '', '', '', '', '8', '20', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:37:34', 1, 0),
('1622093804', 'Ibu Suryani', 'default-user.png', 'suryani@gmail.com', '$2y$10$1WSmzz2XsgsQzF0enL3yvuYRGfvc9q01vtJBbbEjk24aH6UehqC7.', '081344456080', 'jl.hamadi lembah', 'Rumah Kos Ibu Suryani', 'default-image.png', 'suryani@gmail.com', '081344456080', 'jl.hamadi lembah', 2, '', '', '', '', '2 kamar', '', '', 'kualitas air bersih dan berkapur', '', 0, '2021-05-27 05:39:46', 0, 0),
('1622093814', 'Bpk.Simon.K', 'default-user.png', 'Simon@gmail.com', '$2y$10$HwTvbLvSJtC6/S6c0zXY1uqQO5YQzkREQRV.RlMiif8cWr5FvduI2', '081242656023', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Simon@gmail.com', '081242656023', 'Lembah Hamadi', 2, '', '', '', '', '3', '', '', 'Jernih ', '', 0, '2021-05-27 05:38:57', 0, 0),
('1622093825', 'Tri Wahyuni', 'default-user.png', 'pmarhamin@gmail.com', '$2y$10$jgTN13fvPYFb/KaLlM6Z9.vJdZIG8WNelhq2gw0gzWO0pkE3Vkvp6', '082197523860', 'Jl. SPG Taruna Bhakti', 'Pencucian Mobil Ar Hamin dan K', 'default-image.png', 'pmarhamin@gmail.com', '082197523860', 'Jl. SPG Taruna Bhakti', 4, '114', '', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:44:02', 1, 0),
('1622093860', 'Hj. Bana Tara', 'default-user.png', 'hjbana@gmail.com', '$2y$10$lUjdHSHA0tOlQ5p8myhnO.Y45NCmU4J4.T8gbgE2Y/z.5eCbqKKqS', '082238140065', 'Jl. Arso Yotefa', 'Rumah Kos Hj. Bana Tara', 'default-image.png', 'hjbana@gmail.com', '082238140065', 'Jl. Arso Yotefa', 2, '', '', '', '', '9', '12', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:41:44', 1, 0),
('1622093882', 'Anwar', 'default-user.png', 'Anwar@gmail.com', '$2y$10$f4El8bTxQt48BC4C4PThteb6ajZsovUrEd3j939r2eJMeM.FvGS02', '085254073553', 'Entrop', 'Rumah Kos Pak Anwar', 'default-image.png', 'Anwar@gmail.com', '085254073553', 'Entrop', 2, '', '', '', '', '', '', '', '', '', 0, '2021-05-27 05:40:39', 0, 0),
('1622093954', 'Bpk.Boski', 'default-user.png', 'Boski@gmail.com', '$2y$10$lwQXPMv4hK55AdbkLLh3JeTTZ.DFmTy9ED4sJNeHSnCC0GXGLMm9K', '081344328844', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Boski@gmail.com', '081344328844', 'Lembah Hamadi', 2, '', '', '', '', '8', '', '', 'Jernih', '', 0, '2021-05-27 05:42:45', 0, 0),
('1622094051', 'Abdul Rahman', 'default-user.png', 'AbdulRahman@gmail.com', '$2y$10$B5sP0XrohbYxwDOlPn/eIuDL87N7zXd2bU3MPe7WkK58seS0tRuJy', '082199849539', 'Entrop', 'Rumah Kos Pak Abdul', 'default-image.png', 'AbdulRahman@gmail.com', 'AbdulRahman@gmail.co', 'Entrop', 2, '', '', '', '', '', '', '', 'kualitas air sumur Jernih, berkapur', '', 0, '2021-05-27 05:44:40', 0, 0),
('1622094131', 'Tanpa Nama Jl Nuri Awiyo (23)', 'default-user.png', 'tanpa23@gmail.com', '$2y$10$70jqpIWlGJk4UAvzzKJ0keuCnLzTpGZHCBDbFva5Dmw8VzYrnmqvq', '', 'Jl. Nuri', 'Rumah Kos Tnp Nama Jl. Nuri', 'default-image.png', 'tanpa23@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '10', '20', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:45:55', 1, 0),
('1622094182', 'Ibu Sodaria', 'default-user.png', 'sodaria@gmail.com', '$2y$10$XY4gdutYA/orqW.5foqim.wGMOI5UPnJ7Q36UTw6JirelSiEGbXFu', '082197503548', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'sodaria@gmail.com', '082197503548', 'Lembah Hamdi', 2, '', '', '', '', '3', '', '', 'Jernih', '', 0, '2021-05-27 05:49:25', 0, 0),
('1622094263', 'Harry Pirono', 'default-user.png', 'sagaabe@gmail.com', '$2y$10$XY4OUXiIq9.rMgc.51.a7ewVC3ZZtS5bkKZcWEgjR64Rc00IVBGmW', '', 'Jl. Raya Abepura', 'Saga Abepura', 'default-image.png', 'sagaabe@gmail.com', '', 'Jl. Raya Abepura', 4, '9.300 m2', '3.918 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:47:24', 1, 0),
('1622094284', 'Bapak Harun', 'default-user.png', 'Harun@gmail.com', '$2y$10$N.JmBXULHqX6JiWutMXy9u/Gmu9mw9gD1FN.CBiFIzuPR0XJW.4Pu', '081247087280', 'Entrop', 'Rumah Kos  Pak Harun', 'default-image.png', 'Harun@gmail.com', '081247087280', 'Entrop', 2, '', '', '', '', '6', '', '', '', '', 0, '2021-05-27 05:47:55', 0, 0),
('1622094454', 'Fransisca S. Lamba', 'default-user.png', 'tirtamandiri@gmail.com', '$2y$10$96jwaCh0Yc1fyw4.UY8Iuu56Y6v.D7YxSQBJBxIxzWhI3..Wtvym2', '0967 581551', 'Jl. SPG Taruan Bhakti', 'Pencucian Mobil Tirta Mandiri', 'default-image.png', 'tirtamandiri@gmail.com', '0967 581551', 'Jl. SPG Taruan Bhakti', 4, '304,6', '1.220 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 05:52:03', 1, 0),
('1622094524', 'Asisah', 'default-user.png', 'asisah@gmail.com', '$2y$10$YvV1FNGHp6lnneVdMHdiWub6FiKr8d6UkRImfL.QLSJuClQlwLuim', '', 'Jl. Nuri', 'Rumah Kos Ibu Asisah', 'default-image.png', 'asisah@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '10', '10', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:51:11', 1, 0),
('1622094527', 'Toraja/Padang Bulan', 'default-user.png', 'toraja@gmail.go.id', '$2y$10$0cn/CemBW56vEMAKouqSOuaQnjk9tmdTYqY6KbZ.iz.9eDT61YWqa', '082188439798', 'Padang Bulan Organda', 'Rumah Kos Toraja/Padang Bulan', 'default-image.png', 'toraja@gmail.go.id', '082188439798', 'Padang Bulan Organda', 2, '', '', 'Tidak Ada', 'Tidak Ada', '10', '6', '', '', '', 0, '2021-05-27 05:53:35', 1, 0),
('1622094575', 'Bpk Alimin', 'default-user.png', 'alimin@gmail.com', '$2y$10$78HGZKLaUy3odKtP2jo6keRi6RpPSBNqFof/ZtMuzYeGU5s8KSH76', '081344840517', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'alimin@gmail.com', '081344840517', 'Lembah Hamadi', 2, '', '', '', '', '2', '', '', 'Keruh', '', 0, '2021-05-27 05:55:27', 0, 0),
('1622094626', 'No Name', 'default-user.png', 'NN@gmail.com', '$2y$10$by3RrC.kfOOy2jGwe2nzrOH3/TmM9cxkMDvJHYSfxzDpAtwwtQ2uy', '081240834106', 'Entrop', 'Rumah Kos NN', 'default-image.png', 'NN@gmail.com', '081240834106', 'Entrop', 2, '', '', '', '', '8', '', '', 'kualitas air sumur keruh dan berkapur', '', 0, '2021-05-27 06:05:16', 0, 0),
('1622094674', 'Hj. Minne', 'default-user.png', 'minne@gmail.com', '$2y$10$be1znP82V4k.JItfa/thJ.obg2HrRg95nzf1H8FvKs1dufHWgvv62', '081248609114', 'Jl. Nuri', 'Rumah Kos Hj. Minne', 'default-image.png', 'minne@gmail.com', '081248609114', 'Jl. Nuri', 2, '', '', '', '', '12', '20', '', 'Kualitas air tanah berkapur dan berbau', '', 0, '2021-05-27 05:53:46', 1, 0),
('1622094833', 'Ismail', 'default-user.png', 'ismail@gmail.com', '$2y$10$jUiUtzBWHsjJBQbtf7jQjerBLkQ14lU2MWwcZ8lvQN8DnyHpGWHL6', '085254910475', 'Jl. Nuri', 'Rumah Kos Bapak Ismail', 'default-image.png', 'ismail@gmail.com', '085254910475', 'Jl. Nuri', 2, '', '', '', '', '11', '25', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:56:14', 1, 0),
('1622094948', 'Ibu Hj.Hadiya', 'default-user.png', 'Hj.Hadiya@gmail.com', '$2y$10$uaUG9DJ/66Ew6kAZv9ZAWe/iWPfllEWFYkEJ/YKH8cp/Lg8T8o4ja', '081344257377', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'Hj.Hadiya@gmail.com', '081344257377', 'Lembah Hamadi', 2, '', '', '', '', '2', '', '', 'Keruh dan Berkapur', '', 0, '2021-05-27 06:02:39', 0, 0),
('1622094978', 'Sudar', 'default-user.png', 'sudar@gmail.com', '$2y$10$dDYuvwyS57SPAeIQ6hsKdekePkuz8Vf/LqzJm4ZOspU2Z3O7x/i/O', '081344300185', 'Jl. Nuri', 'Rumah Kos Sudar', 'default-image.png', 'sudar@gmail.com', '081344300185', 'Jl. Nuri', 2, '', '', '', '', '10', '20', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 05:58:13', 1, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1622095101', 'Hj. Suarni', 'default-user.png', 'hjsuarni@gmail.com', '$2y$10$p.7aDPW9UDzilPm9A/v5L.3Ib2USnCZoWNrknZHSIQiTVgcZEckMi', '081527687535', 'Jl. Nuri', 'Rumah Kos Hj. Suarni', 'default-image.png', 'hjsuarni@gmail.com', '081527687535', 'Jl. Nuri', 2, '', '', '', '', '12', '30', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:01:09', 1, 0),
('1622095273', 'Sunaryo', 'default-user.png', 'sunaryo@gmail.com', '$2y$10$WUPeJyqX4TSgeQGeSmChtePK5UDZ/A9VjAx6jQB1fK5IHBU6Eqegu', '081248216445', 'Jl. Nuri', 'Rumah Kos Sunaryo', 'default-image.png', 'sunaryo@gmail.com', '081248216445', 'Jl. Nuri', 2, '', '', '', '', '12', '25', '', '', '', 0, '2021-05-27 06:02:56', 1, 0),
('1622095324', 'Henny R. Mantunoij, SP', 'default-user.png', 'sipjpr@gmail.com', '$2y$10$V4kB7Ey3GdXiMGGy.I61y.6FQdSaMR/W0nB3HVOcicGw0k6RBT6xm', '', 'Jl. Ahmad Yani No. 49-53 Kelurahan Gurabesi', 'Sagu Indah Plaza', 'default-image.png', 'sipjpr@gmail.com', '', 'Jl. Ahmad Yani No. 49-53 Kelurahan Gurabesi', 4, '', '960 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 06:28:31', 1, 0),
('1622096696', 'M. R. Kambu', 'default-user.png', 'mrkambu@gmail.com', '$2y$10$pNWXhtaY4V7QeDkTVbkBwOvFNdMPoKhmHxKFKp4aCImbEGawA1MLO', '081331354166', 'Jl. Nuri', 'Rumah Kos M. R. Kambu', 'default-image.png', 'mrkambu@gmail.com', '081331354166', 'Jl. Nuri', 2, '', '', '', '', '18', '25', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:27:22', 1, 0),
('1622096847', 'Samsul', 'default-user.png', 'samsul@gmail.com', '$2y$10$NioTsO0FxEeQzwBrFH8oHOvgXtJ0i39Ape01S35Vh86VgcGYRs73K', '082199316387', 'Jl. Nuri', 'Rumah Kos Bapak Samsul', 'default-image.png', 'samsul@gmail.com', '082199316387', 'Jl. Nuri', 2, '', '', '', '', '49', '40', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:29:13', 1, 0),
('1622096916', 'Drs. M. Hasan Bay, MM', 'default-user.png', 'Hotelgamalama@gmail.com', '$2y$10$iR.rJNN4fuBfrWYAWtuW1.HUKvmU.1vyvWJ8Iv.BGXEYBqRSXcHsu', '0967 5888608', 'Jl. Gerilyawan No. 60 Kelurahan Yobe', 'Hotel Gamalama', '1622096916-usaha-logo-1646196251.jpg', 'Hotelgamalama@gmail.com', '0967 5888608', 'Jl. Gerilyawan No. 60 Kelurahan Yobe', 3, '669,60m2', '621 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 06:32:00', 1, 0),
('1622096958', 'Lia', 'default-user.png', 'ibulia@gmail.com', '$2y$10$V59dgV2cw0oZ29MVu/kmrOSCr9oWbUEW7bQw5mCkuIec8sqzJaVDW', '', 'Jl. Nuri', 'Rumah Kos Ibu Lia', 'default-image.png', 'ibulia@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '10', '20', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:30:41', 1, 0),
('1622097044', 'Hj. Nani', 'default-user.png', 'hjnani@gmail.com', '$2y$10$5KTHwNhcVqpDHKWZThvSbuxyfEVjKZwYOIHy43zamZLoVTFUKg0Lq', '', 'Jl. Nuri', 'Rumah Kos Hj. Nani', 'default-image.png', 'hjnani@gmail.com', '', 'Jl. Nuri', 2, '', '', '', '', '28', '40', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:32:19', 1, 0),
('1622097152', 'Soltip', 'default-user.png', 'soltip@gmail.com', '$2y$10$bGCeWmhrbp36cJ6keDbR0eiMm5KTXIh17D093cn4l9vPwDzINEA4W', '', 'Jl. Garuda', 'Rumah Kos Soltip', 'default-image.png', 'soltip@gmail.com', '', 'Jl. Garuda', 2, '', '', '', '', '23', '8', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:35:42', 1, 0),
('1622097198', 'Ibu. Sofi', 'default-user.png', 'sofi@gmail.com', '$2y$10$tQEQrpbkBFkI13W7UJbJyuO8cr5aVZwMyTVccHOYKLM6tA3x2.2B6', '082239033044', 'Lembah Hamadi', 'Rumah Kos', 'default-image.png', 'sofi@gmail.com', '082239033044', 'Lembah Hamadi', 2, '', '', '', '', '3', '', '', 'Keruh dan Berkapur', '', 0, '2021-05-27 06:33:36', 0, 0),
('1622097281', 'Iwan', 'default-user.png', 'iwan@gmail.com', '$2y$10$bnjlNzvgoXcZCV/o8vSxhe6XgzG.qbwxT.LXsjqsnOLTROubboC5G', '', 'jl.belakang tc perkebunan', 'Rumah Kos Bpk. Iwan', 'default-image.png', 'iwan@gmail.com', '', 'Lembah Hamadi', 2, '', '', '', '', '', '', '', 'Jernih', '', 0, '2021-05-27 06:37:01', 0, 0),
('1622097351', 'Bapak Rumbeirusi', 'default-user.png', 'rumbeirusi@gmail.com', '$2y$10$EHagcRjD1VA6NZcFyAY/c.OW6XTeZX1qYdSg/eLP/rB4C/r8IvZ3S', '', 'Jl. Garuda', 'Rumah Kos Bapak Rumbeirusi', 'default-image.png', 'rumbeirusi@gmail.com', '', 'Jl. Garuda', 2, '', '', '', '', '16', '25', '', 'Kualitas air tanah berkapur', '', 0, '2021-05-27 06:37:32', 1, 0),
('1622098211', 'Wandi Salim, SE', 'default-user.png', 'horisonjayapura@gmail.com', '$2y$10$2TawSITtfVZNHNV20uXsw.9MQOvcQp8bQzMsHJViC52AsGHzw0Tza', '', 'Jl. percetakan No. 94 Jayapura Papua', 'Hotel Horison Jayapura', 'default-image.png', 'horisonjayapura@gmail.com', '', 'Jl. percetakan No. 94 Jayapura Papua', 3, '500 m2', '571 m2', '', 'Ada', '', '', '', '', '', 0, '2021-05-27 06:51:31', 1, 0),
('1622098297', 'Antonius Kiding', 'default-user.png', 'oph@gmail.com', '$2y$10$9shtNsMcwgxcGRzoJM9mYehrzd3Ph70UK1TBqNi1JSDXnw/y9SXpu', '', 'Jl. Raya Abepura Kelurahan Abepura', 'Orchid Pasific Hotel', 'default-image.png', 'oph@gmail.com', '', 'Jl. Raya Abepura Kelurahan Abepura', 3, '480 m2', '67 m2', '', 'Ada', '', '', '', '', '', 0, '2021-05-27 06:53:34', 1, 0),
('1622098424', 'Soetedjo Pirono', 'default-user.png', 'cityhubhotel@gmail.com', '$2y$10$/mysY0LgBQic3NDw2JgqSeOzZvlovJZG87Sk3AiN.A9vAtAE29rfe', '', 'Jl. Baru Abepura Kota Jayapura', 'Hotel City Hub', 'default-image.png', 'cityhubhotel@gmail.com', '', 'Jl. Baru Abepura Kota Jayapura', 3, '2.145 m2', '2.992 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 06:54:53', 1, 0),
('1622098496', 'Damaris, SH', 'default-user.png', 'grandtalentz@gmail.com', '$2y$10$yX7KpVctk1J3LLRByoaSoe6GfPRCV84eprpxm/MpHOyDKhF4Saz3G', '0967 584495', 'Jl. Komp Kotaraja Grand B-29 Kotaraja', 'Hotel Grand Talent', 'default-image.png', 'grandtalentz@gmail.com', '0967 5180090', 'Jl. Komp Kotaraja Grand B-29 Kotaraja', 3, '1.337,22 m', '496 m2', '', 'Ada', '', '', '', '', '', 0, '2021-05-27 06:57:59', 1, 0),
('1622098684', 'Jasmine', 'default-user.png', 'mettastar@gmail.com', '$2y$10$sb8ddz9NDza7ysvtgHevj.WxY6fg2P5Xd6GLG3IlE97A3ZzIL8YTK', '0967-585216', 'Jl. Raya Sentani No. 37 Waena', 'Hotel Metta Star', 'default-image.png', 'mettastar@gmail.com', '0967-585216', 'Jl. Raya Sentani No. 37 Waena', 3, '2.538 m2', '500 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:00:06', 1, 0),
('1622098812', 'Anita Agustina, SH', 'default-user.png', 'galaxy@gmail.com', '$2y$10$RYmaZy8VSPOOQnxwZI/zoONcWVpI9xRhWpJmFFR88HvXQA4IKO47q', '', 'Jl. Raya Abepura Sentani', 'Hotel Galaxy ', 'default-image.png', 'galaxy@gmail.com', '', 'Jl. Raya Abepura Sentani', 3, '250 m2', '210 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:01:41', 1, 0),
('1622098904', 'Yudas Pardose', 'default-user.png', 'yudas@gmail.com', '$2y$10$5IKPq8Wr.LMSd3yDQI6jTeaOxYySipLQhYrY83mHQS8IKqnHZFhpe', '', 'Jl. Woroth Kotaraja Kelurahan Vim Distrik Abepura', 'Hotel Bionet', 'default-image.png', 'yudas@gmail.com', '', 'Jl. Woroth Kotaraja Kelurahan Vim Distrik Abepura', 3, '402,45 m2', '1.400 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:05:14', 0, 0),
('1622099118', 'Soethahja Brata', 'default-user.png', 'horisonktrj@gmail.com', '$2y$10$FwQ7Byq3QcqwdXkov5OeCOJ3gqDaE.S4jz0U7aucX5uNdDanSDb6G', '', 'Jl. Raya Abe Kotaraja', 'Hotel Horison Kotaraja', 'default-image.png', 'horisonktrj@gmail.com', '', 'Jl. Raya Abe Kotaraja', 3, '10.489 m2', '229 m2', 'Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:07:47', 1, 0),
('1622099271', 'Hendrik', 'default-user.png', 'meeto@gmail.com', '$2y$10$W0gJfnO62WELcbBqa4EcTuIilpW6MZnMoII1QJ4xhEEy9NE39mRkC', '08114884841', 'Jl. Tanjung Ria Dok IX Jayapura', 'Meet O', 'default-image.png', 'meeto@gmail.com', '', 'Jl. Tanjung Ria Dok IX Jayapura', 2, '81 m2', '69 m2', 'Tidak Ada', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:10:51', 1, 0),
('1622099456', 'Sugiharni A.MK', 'default-user.png', 'luminthu@gmail.com', '$2y$10$fQPSBbM6qOSjVchfyw4F5ejOis./pB5bfqzAhmKi4DULiTETr3UrG', '081247079717', 'Jl. Raya Sentani Gang. Belut Waena', 'Pabrik Tahu Luminthu', 'default-image.png', 'luminthu@gmail.com', '081247079717', 'Jl. Raya Sentani Gang. Belut Waena', 2, '12 m2', '', '', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:20:32', 1, 0),
('1622100200', 'Tjoandy Phietoyo', 'default-user.png', 'tjoandy@gmail.com', '$2y$10$sa5q5rhL47SblWIWaDZ3Lu7Lg377pgjjQccrZ3076jwvggM2ikb9C', '', 'Jl. Baru Tembus Melati', 'Abepura Trade centre', 'default-image.png', 'tjoandy@gmail.com', '', 'Jl. Baru Tembus Melati', 4, '', '', '', 'Ada', '', '', '', '', '', 0, '2021-05-27 07:27:31', 0, 0),
('1622100711', 'Irnawati Wonorenggo', 'default-user.png', 'Irnamwati@gmail.com', '$2y$10$d6va6NaOunZSouEzS9Yvx.so5MsMSLnz6aRATLipbD.Py8/7Rz0YK', '', 'Jl. Belut Waena Kelurahanh Waena Distrik Heram', 'PT. Alfa Cahaya Lany (Hotel Cl', 'default-image.png', 'Irnamwati@gmail.com', '', 'Jl. Belut Waena Kelurahanh Waena Distrik Heram', 3, '288 m2', '', '', '', '', '', '', '', '', 0, '2021-05-27 07:36:05', 0, 0),
('1622100970', 'Sudirwarto', 'default-user.png', 'sudirwarto@gmail.com', '$2y$10$D/9tDVrb9BkAYTeaZihBo.i6wpeSh0699j7mEjYXGXDJ1ykR3/WLe', '', 'Jl. Belut Waena Kelurahan Waena Distrik Heram', 'PT. Moana Cakra Abadi (Hotel M', 'default-image.png', '', '', 'Jl. Belut Waena Kelurahan Waena Distrik Heram', 3, '', '', '', '', '', '', '', '', '', 0, '2021-05-27 07:37:49', 0, 0),
('1622101246', 'Drs. Jumadi', 'default-user.png', 'sumurpakjumadi@gmail.com', '$2y$10$ImwFEw22LGnsKxnh.WmlL.HcVnZnt2BnprvnnsSg7XRVabHAnXwzW', '', 'Jl. Buper No. 3 Waena Kelurahan Waena Kota Jayapura', 'CV. Pasindo Mitrarama Idaman ', 'default-image.png', 'sumurpakjumadi@gmail.com', '', 'Jl. Buper No. 3 Waena Kelurahan Waena Kota Jayapura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-05-27 07:43:31', 1, 0),
('1622102685', 'Herbert Lincoln', 'default-user.png', 'holayoutefa@gmail.com', '$2y$10$ABW9JZrN/rjRNptlAkKZ1u5TOtXao/seNnt4Jnd5mua4bTb1qY0di', '', 'Jl. Raya Sentani Padang Bulan Kelurahan Hedam Distrik Heram', 'PT. Holamart Usaha Bersama (Ho', 'default-image.png', 'holayoutefa@gmail.com', '', 'Jl. Pasar Youtefa', 4, '100 m2', '', '', '', '', '', '', '', '', 0, '2021-05-27 08:11:53', 1, 0),
('1622103166', 'Kevin Setiawan', 'default-user.png', 'kevin@gmail.com', '$2y$10$70m4ruE/6kf63KXR86l2/.7n07ayG3GMU.tg6bTybkJFD.nlI2U2G', '', 'Jl. Baru Kotaraja (sebelah Winner) Kelurahan Waimhorock Distrik Abepura', 'K2 Laundry', 'default-image.png', 'kevin@gmail.com', '', 'Jl. Baru Kotaraja (sebelah Winner) Kelurahan Waimhorock Distrik Abepura', 2, '50 m2', '', '', '', '', '', '', '', '', 0, '2021-05-27 08:15:25', 1, 0),
('1622103288', 'Anton', 'default-user.png', 'anton@gmail.com', '$2y$10$2ZvmyIMpYKK/.khSY7mq0ucVc9VAxU.5jhMX1S49q9G6q7LXiX9qS', '', 'jl.karang 3', 'Rumah Kos Anton Timung Melati ', 'default-image.png', 'anton@gmail.com', '', 'jl.karang 3', 2, '', '', '', '', '10 kamar', '32 orang', '', 'kualitas air bersih', '', 0, '2021-05-27 08:17:28', 1, 0),
('1622103466', 'Jean Paul Kabey', 'default-user.png', 'frontonebudget@gmail.com', '$2y$10$Qnx4W9rHiosSiy5rDXQb1eK3D/s7NAzG0Prka8UIhq.z2mPa1W2vO', '', 'Jl. SPG Taruna Bhakti Waena', 'Front One Budget', 'default-image.png', 'frontonebudget@gmail.com', '', 'Jl. SPG Taruna Bhakti Waena', 3, '', '', '', '', '39', '', '', '', '', 0, '2021-05-27 08:19:20', 1, 0),
('1623296443', 'mesalin', 'default-user.png', 'alignemai@gmail.com', '$2y$10$Erd.3WyoP0p.hl848y/xWuuaxB8Q0Jg1FI6qYPIFv5srtLpX3JdXu', '--', 'na', 'rumah kos mesalin', 'default-image.png', 'mesalin@gmail.com', '', 'na', 2, '', '', '', '', '', '', '', '', '', 0, '2021-06-10 03:41:33', 1, 0),
('1623302234', 'Hj. Ani Wijayanti', 'default-user.png', 'ani@gmail.com', '$2y$10$yYD1aBYacfdhQt9t7240E.pbbs9rkRGvIo.EBOVg2FPnoCvqCll2.', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Ani Wijayanti', 'default-image.png', 'ani@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '2', '', '', '', 0, '2021-06-10 05:24:06', 0, 0),
('1623302654', 'Alfiansyah', 'default-user.png', 'alfiansyah@gmail.com', '$2y$10$CAzGNYSCJ2wPgm5QWLshfOkvZNIikJl5HQhFWbWqDWC82jbIT4SRa', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Alfiansyah', 'default-image.png', 'alfiansyah@gmail.com', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 0, '2021-06-10 05:27:10', 0, 0),
('1623302953', 'Abdul Hatta', 'default-user.png', 'abdul@gmail.com', '$2y$10$2MfPCp.TxDNw2ctUs/o9feQqyZcMGAYTL/Uy67NOmTcUO3XUXSCh6', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Abdul Hatta', 'default-image.png', 'abdul@gmail.com', '', 'Jl. Veteran Abepura,, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '1', '', '', '', 0, '2021-06-10 05:32:10', 0, 0),
('1623384439', 'Cafe Ayumi Abepura', 'default-user.png', 'ayumi@gmail.com', '$2y$10$MMJ2yxmn.2RYiz0sjfVLG.XS5j0EXzVekuEuveOl7rwXjp7Vhps3u', '--', 'Jl. Raya Abepura Kotaraja ', 'Cafe Ayumi Abepura', 'default-image.png', 'ayumi@gmail.com', '--', 'Jl. Raya Abepura Kotaraja ', 4, '', '', '', '', '', '', '', '', '', 0, '2021-06-11 04:11:24', 1, 0),
('1623627813', 'Sapri', 'default-user.png', 'sapri@gmail.com', '$2y$10$4wh5qHiTX1FqCRdAShgBHuApcpmyDcspYyjE.mzYtYuj2Col8awVy', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sapri', 'default-image.png', 'sapri@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '2', '', '', '', 0, '2021-06-13 23:46:33', 0, 0),
('1623627997', 'Yusri Jaya', 'default-user.png', 'yusrijaya@gmail.com', '$2y$10$RmjXkjaTRk1wFGH0YCNyvO7F8jfntn.noszhSxd8pVyAz2TyDWqOK', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Yusri Jaya', 'default-image.png', 'yusrijaya@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '2', '', '', '', 0, '2021-06-13 23:48:30', 0, 0),
('1623628156', 'Bahar', 'default-user.png', 'baharveteran@gmail.com', '$2y$10$wwzTdef1D7heBxzgVCzRluSHSeTaW2ieBJ2LIRP1Py2o7RWL9kI3u', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Bahar Jl. Veteran', 'default-image.png', 'baharveteran@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '17', '', '', '', 0, '2021-06-13 23:51:31', 0, 1),
('1623628315', 'Hengki Supardi', 'default-user.png', 'hengki@gmail.com', '$2y$10$zGaR6UFUojPIM4k/WF9hmeB8ScyKEVDStBfpWtt5FM8tYpnwbMO1a', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hengki Supardi', 'default-image.png', 'hengki@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '14', '', '', '', 0, '2021-06-13 23:53:22', 0, 0),
('1623628411', 'Hardiman', 'default-user.png', 'hardiman@gmail.com', '$2y$10$Ypn9nv3mPV7e8n7Vd./d9ucmYwctBBACdQa7vBuuSfXk3Fgp6E7t.', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hardiman', 'default-image.png', 'hardiman@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '20', '', '', '', 0, '2021-06-13 23:54:45', 1, 0),
('1623628491', 'Suparti', 'default-user.png', 'suparti@gmail.com', '$2y$10$8DA3g3GFFMzQVAjbXeW8bOKlGUT4ezZ.1ov.lh.JrYsN/gydtMH46', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suparti', 'default-image.png', 'suparti@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '9', '', '', '', 0, '2021-06-13 23:56:16', 0, 0),
('1623628580', 'H. Hoser', 'default-user.png', 'hoser@gmail.com', '$2y$10$q7m8AZGv18WBC8T/4TSgk.EIFUhhGR8M/wkqNPuqsn/vuF9IrZbku', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Hoser', 'default-image.png', 'hoser@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '7', '', '', '', 0, '2021-06-13 23:58:23', 1, 0),
('1623628721', 'Joko', 'default-user.png', 'jokoveteran@gmail.com', '$2y$10$o66RSXCm6OiMhlCerDe7D.rPDh6JnSqrWMopBKkS/rhbxqAfaTKWG', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Joko Jl. Veteran', 'default-image.png', 'jokoveteran@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '6', '', '', '', 0, '2021-06-14 00:00:40', 0, 0),
('1623628902', 'Ona Husni', 'default-user.png', 'ona@gmail.com', '$2y$10$gSPHlOrEDuMm8T8FpGGFiuG3iaRWiDmS.TdbmOoVH1W7TGgUoD4Oq', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ona Husni', 'default-image.png', 'ona@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '14', '', '', '', 0, '2021-06-14 00:03:06', 0, 0),
('1623629020', 'H. Madu Malu', 'default-user.png', 'madumalu@gmail.com', '$2y$10$rlvc0dbJgqI2ZiJZNUUIweTM5vPyJWRKMBzB2kZmnBRRrbgWjykdW', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Madu Malu', 'default-image.png', 'madumalu@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '5', '', '', '', 0, '2021-06-14 00:05:21', 0, 0),
('1623629150', 'H. Darwis', 'default-user.png', 'hdarwis@gmail.com', '$2y$10$erGD1i3zkRJej9mAy0Sx8u5EZa.tkNFGjF043yLs0PwiUcRE/5MyK', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Darwis', 'default-image.png', 'hdarwis@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '14', '', '', '', 0, '2021-06-14 00:07:04', 0, 0),
('1623629254', 'Marthen Upa', 'default-user.png', 'marthenupa@gmail.com', '$2y$10$oyU/GganPDxprquJG7QR5unMrvmrptMBHYSZuFxG4u5FEH2Lh1O3W', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Marthen Upa', 'default-image.png', 'marthenupa@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '11', '', '', '', 0, '2021-06-14 00:08:57', 0, 0),
('1623629359', 'Sunarti', 'default-user.png', 'sunarti@gmail.com', '$2y$10$lB5LMenRczgeNsIK26QVgO.RpkpbmnxEpvm1.udFnMsdMVNJ2GXbC', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sunarti', 'default-image.png', 'sunarti@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '4', '', '', '', 0, '2021-06-14 00:11:09', 0, 0),
('1623629473', 'Sukongsi', 'default-user.png', 'sukongsi@gmail.com', '$2y$10$LFgSmuK86479yBKcZDiwIOEvNuVLWjTDMLpWso8k6gCQhr1dRMbo6', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sukongsi', 'default-image.png', 'sukongsi@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '16', '', '', '', 0, '2021-06-14 00:12:35', 0, 0),
('1623631727', 'Aco', 'default-user.png', 'aco@gmail.com', '$2y$10$vyqQ26w8egrGOARfqBSP1eZhI76tMaKcazT3bh1hw0eqBmeljSgdu', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Aco', 'default-image.png', 'aco@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '11', '', '', '', 0, '2021-06-14 00:51:24', 0, 0),
('1623631916', 'H. Asrori', 'default-user.png', 'hasrori@gmail.com', '$2y$10$QmkimkOuGMuIXW.ah9BJAe29wBDHeCtJz/.FjeS5iRHBoXWEc.6xm', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Asrori', 'default-image.png', 'hasrori@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '11', '15', '', '', '', 0, '2021-06-14 00:53:19', 1, 0),
('1623632014', 'H. Munir', 'default-user.png', 'hmunir@gmail.com', '$2y$10$QIoVFwJeOiL5MfjNgKWlXeOwONxzF9I/ux5ncw1wZQWYGGqA7YeGK', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Munir', 'default-image.png', 'hmunir@gmail.com', '', 'Jl. Veteran Abepura, RT 01/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '28', '', '', '', 0, '2021-06-14 00:55:34', 0, 0),
('1623632156', 'H. Rani', 'default-user.png', 'hrani@gmail.com', '$2y$10$Yf/re1Ix9J3aQHt.J86Tb.tMJ1cgFGNpiRekAbIZhu9kkNdfvZE8K', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Rani', 'default-image.png', 'hrani@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '13', '', '', '', 0, '2021-06-14 00:58:12', 0, 0),
('1623632304', 'H. Tarring', 'default-user.png', 'htarring@gmail.com', '$2y$10$CyCBM.OtuMvbAhbRwASHM.5gEeZIjodzKYxoZG3WC2IE8nccWZbUi', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Tarring', 'default-image.png', 'htarring@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '17', '', '', '', 0, '2021-06-14 00:59:26', 0, 0),
('1623632379', 'Hj. Marhani', 'default-user.png', 'hjmarhani@gmail.com', '$2y$10$6rbiAlD.mktox2ivxkQATOpnhRXlipAgBWNTqDmkKzRlheE606t6q', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Marhani', 'default-image.png', 'hjmarhani@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '22', '36', '', '', '', 0, '2021-06-14 01:02:53', 1, 0),
('1623632592', 'Ricat', 'default-user.png', 'ricat@gmail.com', '$2y$10$qB66JgLC2FlOIXIL2fydieT2rBUwNG/Fe7XkL1uEdrJexsf8DuUki', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ricat', 'default-image.png', 'ricat@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '3', '', '', '', 0, '2021-06-14 01:04:31', 0, 0),
('1623632691', 'H. Adam', 'default-user.png', 'hadam@gmail.com', '$2y$10$ng7O2ip2HFOba/dJ5a0LUunqZbkFxy9J8K6Ho1Hw7nmglRlgNunyy', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Adam', 'default-image.png', 'hadam@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '9', '13', '', '', '', 0, '2021-06-14 01:06:05', 0, 0),
('1623632778', 'H. Ruhum', 'default-user.png', 'hruhum@gmail.com', '$2y$10$DaWewJETt.DPbGb9aYswgOi0T3UgN1xI.23oCw6n8mfiq1A2YO8ae', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Ruhum', 'default-image.png', 'hruhum@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '3', '', '', '', 0, '2021-06-14 01:07:28', 0, 0),
('1623632888', 'Herman Saleh', 'default-user.png', 'hermansaleh@gmail.com', '$2y$10$74ysr4xeCIPCa4wek/CfJOpdTth.7far7p6xtxSlB2MGGbJwaYQhO', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Herman Saleh', 'default-image.png', 'hermansaleh@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '23', '', '', '', 0, '2021-06-14 01:09:26', 1, 0),
('1623632979', 'Neni Astuti', 'default-user.png', 'neniastuti@gmail.com', '$2y$10$IqeuL2/bz6wMmtCyOgkwYubsQGa5OON3DcXGOPfjl708aiPwwyFhG', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Neni Astuti', 'default-image.png', 'neniastuti@gmail.com', '', 'Jl. Baru Abepura, RT 02/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '9', '16', '', '', '', 0, '2021-06-14 01:12:42', 0, 0),
('1623633194', 'H. Sila', 'default-user.png', 'hsila@gmail.com', '$2y$10$ITdz27j7Fle3Z68rFwpE9.u5c63jWOkjEKWEl55nxFfca.zdMnpdm', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Sila', 'default-image.png', 'hsila@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '11', '33', '', '', '', 0, '2021-06-14 01:16:27', 1, 0),
('1623633398', 'Arman', 'default-user.png', 'arman@gmail.com', '$2y$10$PpXT1hdmRWMbRpzhukN3FujPbnN7dp6oFgXfS9zLZSDNWDPenPAPm', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Arman', 'default-image.png', 'arman@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '4', '', '', '', 0, '2021-06-14 01:18:03', 0, 0),
('1623633504', 'H. Kanang', 'default-user.png', 'hkanang@gmail.com', '$2y$10$ofttqDbdDKADpyS9EZqfz.Gpc.gU25UifoG5WeRLYd51EMeysb/0G', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Kanang', 'default-image.png', 'hkanang@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '32', '', '', '', 0, '2021-06-14 01:19:50', 1, 0),
('1623633632', 'H. Abdul Halik', 'default-user.png', 'abdulhalik@gmail.com', '$2y$10$dcT/MzV.pQNV/piLfH9VdO9uB6lF/21WRGbVR1xzBJEZMaembnvvm', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Abdul Halik', 'default-image.png', 'abdulhalik@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 0, '2021-06-14 01:23:11', 0, 0),
('1623633992', 'Ilham', 'default-user.png', 'ilham@gmail.com', '$2y$10$MswRIDKoINLWQ2m4.ojJmOkvUD765F.KWF8LmROHa1kpQpF.vW7Ba', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ilham', 'default-image.png', 'ilham@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 0, '2021-06-14 01:27:50', 0, 0),
('1623634088', 'H. Tiro', 'default-user.png', 'htiro@gmail.com', '$2y$10$oCEJcGd7s1bBEQWy.hDSJ.07Hys9beBue2zhEy5uYYVQlQJOivibW', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. tiro', 'default-image.png', 'htiro@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '26', '', '', '', 0, '2021-06-14 01:29:17', 0, 0),
('1623634171', 'H. Rannu', 'default-user.png', 'hrannu@gmail.com', '$2y$10$gULsjoxSKNs0/t0XH8ogdeQRQT4tx6DU2FXVVw/cNDkoeseR4F4XG', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Rannu', 'default-image.png', 'hrannu@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '14', '', '', '', 0, '2021-06-14 01:31:21', 0, 0),
('1623634308', 'Aminah', 'default-user.png', 'aminah@gmail.com', '$2y$10$zD9E68gobqt7CDi7IWmgheaHX2a8D0YHXinv/Et7EXDbRMVA3PAvu', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Aminah', 'default-image.png', 'aminah@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '7', '', '', '', 0, '2021-06-14 01:33:14', 0, 0),
('1623634405', 'H. Sukku', 'default-user.png', 'hsukku@gmail.com', '$2y$10$Fee5naEStu2yW9EUGOuDYOeMCdmaX6mP9KLI5l.rM5LMj0XuwKf.q', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Sukku', 'default-image.png', 'hsukku@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '12', '', '', '', 0, '2021-06-14 01:34:31', 0, 0),
('1623634486', 'Hj. Sandra', 'default-user.png', 'hjsandra@gmail.com', '$2y$10$UMSy6fY7rcCLxW/tmPXVI.pxdQX0yE/TRfoJRtXbrffLMt1Tj1p76', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Sandra', 'default-image.png', 'hjsandra@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '35', '', '', '', 0, '2021-06-14 01:37:02', 1, 0),
('1623634637', 'H. Abdul Kadir', 'default-user.png', 'abdulkadir@gmail.com', '$2y$10$RTR.Dx1yvMeMv9rdQpanh.gc1KUR.htwGhpvdgQQyuF4JjZWtE1Oe', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H Abdul Kadir', 'default-image.png', 'abdulkadir@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '26', '', '', '', 0, '2021-06-14 01:41:12', 0, 0),
('1623634886', 'Alimudin', 'default-user.png', 'alimudin@gmail.com', '$2y$10$pEH9usqsRsRHyPz/nMDLQueG3nlTuVjOmxXB9aux0p3B.19ApC01a', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Alimudin', 'default-image.png', 'alimudin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '11', '43', '', '', '', 0, '2021-06-14 01:42:47', 1, 0),
('1623634977', 'Basri', 'default-user.png', 'basri@gmail.com', '$2y$10$ctZWD1HwVBvtLopxIJgwrOCZ50gi9bKhOZ0mOO.Bnzra6ZYakJUTW', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Basri', 'default-image.png', 'basri@gmail.com', '', 'Jl. Waynan Abepura, RT 03/RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '17', '', '', '', 0, '2021-06-14 01:44:01', 0, 0),
('1623635157', 'Ibu Stevi Cendana', 'default-user.png', 'stevicendana@gmail.com', '$2y$10$yL.Lq7s5U1oe1gREhFxS4ewzYKCfRyKePZgGUUQEsjpV7yg3J3ffW', '082199712500', 'Jl. Gerilyawan No. 111 Abepura', 'PT Green Dinamika (D\'Green)', 'default-image.png', 'stevicendana@gmail.com', '082199712500', 'Jl. Gerilyawan No. 111 Abepura', 3, '', '', '', '', '', '', '', '', '', 0, '2021-06-14 01:53:44', 1, 0),
('1623635888', 'M. Jufri', 'default-user.png', 'mjufri@gmail.com', '$2y$10$d3QrADuxk8PER.YSooI8W.PDMUzKsd1d5V2Aj58VGClJ1YmYUgaVW', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos M. Jufri', 'default-image.png', 'mjufri@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '13', '', '', '', 0, '2021-06-14 02:01:59', 0, 0),
('1623636132', 'Jaharuddin', 'default-user.png', 'jaharuddin@gmail.com', '$2y$10$FAUm9cLWJ0AAL0eFXHzkiu2Qd.5Vz4f5HJYsWEFd6L2GczHjGIgt.', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Jaharuddin', 'default-image.png', 'jaharuddin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '3', '', '', '', 0, '2021-06-14 02:03:56', 0, 0),
('1623636264', 'Jamaluddin', 'default-user.png', 'jamaluddin@gmail.com', '$2y$10$bwbNFqdM4Scu7SMCZClXBufKAhFdNp0a/slND0yVlG4tunEepKr5y', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Jamaluddin', 'default-image.png', 'jamaluddin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '6', '', '', '', 0, '2021-06-14 02:09:52', 0, 0),
('1623636606', 'H. Amir', 'default-user.png', 'hamir@gmail.com', '$2y$10$RCGBu4PUmjAWeio8kQnQQejkfg6hz6yhuNNfsOE4HEs77vHcMoVv6', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Amir', 'default-image.png', 'hamir@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '5', '', '', '', 0, '2021-06-14 02:10:58', 0, 0),
('1623636672', 'Joko', 'default-user.png', 'jokowaynan@gmail.com', '$2y$10$4.05k5YLZ6VveUwztqunDOJHdPp1bCVsjKb18Qpj8.y8F4utsaajO', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Joko Jl. Waynan', 'default-image.png', 'jokowaynan@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '10', '', '', '', 0, '2021-06-14 02:12:51', 0, 0),
('1623637028', 'Hj. Rani', 'default-user.png', 'hjrani@gmail.com', '$2y$10$atnBDhYGSvHVOEzPur.J2.U6iVHwBLBnjsYSJqHgpIM6algHBpDgW', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Rani', 'default-image.png', 'hjrani@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '13', '', '', '', 0, '2021-06-14 02:18:22', 0, 0),
('1623637118', 'Rosmianti', 'default-user.png', 'rosmianti@gmail.com', '$2y$10$tix9R6bIGneUSIS1lBsspOzxfZ8B/MwG.qAs5X.jGIvGZmtHGp3Iq', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Rosmianti', 'default-image.png', 'rosmianti@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '4', '', '', '', 0, '2021-06-14 02:19:58', 0, 0),
('1623637214', 'H. Soleman', 'default-user.png', 'hsoleman@gmail.com', '$2y$10$jQbzLTzfhvbiOVPQXhJX9.Vo03nrANOyulSN7sDy6I5VvWrsSJo.S', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Soleman', 'default-image.png', 'hsoleman@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '6', '', '', '', 0, '2021-06-14 02:21:32', 0, 0),
('1623637307', 'Abidin', 'default-user.png', 'abidin@gmail.com', '$2y$10$JCbvm4YWXe280bdMrkTizOoc0qOPK9pDI24jNXgkdqhWm5zS5j8ge', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Abidin', 'default-image.png', 'abidin@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '4', '', '', '', 0, '2021-06-14 02:23:34', 0, 0),
('1623637676', 'H. Latief', 'default-user.png', 'hlatief@gmail.com', '$2y$10$eAKTIYSD.TRHlX2rUUNKBujqDheskBp/fBRWVbaw8j3Z93akI5p6q', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. Latief', 'default-image.png', 'hlatief@gmail', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '18', '35', '', '', '', 0, '2021-06-14 02:30:37', 1, 0),
('1623637851', 'Tahrim', 'default-user.png', 'tahrim@gmail.com', '$2y$10$oM8MHRnCH5sqmqPPmWcZuuJdKbfDdPzD32GBAKoqItsZ/Wgh9/WhO', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Tahrim', 'default-image.png', 'tahrim@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '6', '22', '', '', '', 0, '2021-06-14 02:32:39', 0, 0),
('1623637979', 'Moh. Munasik', 'default-user.png', 'mohmunasik@gmail.com', '$2y$10$UaF55i1ZGBJXPhGFRZesWexIWRgVMisUMGeFKfYJvpybfXMVEqZvy', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Moh. Munasik', 'default-image.png', 'mohmunasik@gmail.com', '', 'Jl. Waynan Abepura, RT 03/ RW 1, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '5', '8', '', '', '', 0, '2021-06-14 02:34:53', 0, 0),
('1623638112', 'H. M. Warsito', 'default-user.png', 'hmwarsito@gmail.com', '$2y$10$SC4EWewptf2sWL4Bdjv8NuMcGmgb51NLnUBfc/ms1bVwhLwB9dL8q', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos H. M. Warsito', 'default-image.png', 'hmwarsito@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '60', '61', '', '', '', 0, '2021-06-14 02:38:19', 1, 0),
('1623638312', 'Suarsa', 'default-user.png', 'suarsa@gmail.com', '$2y$10$f4XoG5MnFcuNf7gRyK7vVe2IkO3y39SZJE9le0h8jlHNAoCH3HPpu', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suarsa', 'default-image.png', 'suarsa@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '1', '4', '', '', '', 0, '2021-06-14 02:40:14', 0, 0),
('1623638431', 'Alina Baleo', 'default-user.png', 'alinabaleo@gmail.com', '$2y$10$krwWqXnUnDvpjjSBFCQyTezhcxPiUEDz6Pxf6VsaiEQPpQJ.Mb1Ue', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Alina Baleo', 'default-image.png', 'alinabaleo@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '3', '4', '', '', '', 0, '2021-06-14 02:42:22', 0, 1),
('1623638582', 'Fadlan S. Muiin', 'default-user.png', 'fadlan@gmail.com', '$2y$10$CX7hYO1143zCDFEmRbMhGOTvTrfgyVvk/ewXIImbjf9EhTLnTIrFC', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 'Fadlan S. Muiin', 'default-image.png', 'fadlan@gmail.com', '', 'Jl. Veteran Abepura, RT 02/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '8', '30', '', '', '', 0, '2021-06-14 02:47:49', 0, 0),
('1623639316', 'Hairul', 'default-user.png', 'hairul@gmail.com', '$2y$10$7FncOFca6vwr6GSmMXQA1uCaSUrp/0wtV8LnkxsdmykraKCs3XQ0q', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hairul', 'default-image.png', 'hairul@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '18', '28', '', '', '', 0, '2021-06-14 02:57:51', 1, 0),
('1623639490', 'Iwan Setiawan', 'default-user.png', 'iwansetiawan@gmail.com', '$2y$10$M1OFLsAWPeHcs5aNxumqeenrWnrG1y3iN1GD6V2cwOXFFDZDUCnpq', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Iwan Setiawan', 'default-image.png', 'iwansetiawan@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '72', '71', '', '', '', 0, '2021-06-14 02:59:29', 1, 0),
('1623639612', 'Munasik', 'default-user.png', 'munasik@gmail.com', '$2y$10$/Tz9fIggDjcBcK4UuCL53e2IEGBJeQcHX/3dz/W2Y2dWD6plyLgu.', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Munasik', 'default-image.png', 'munasik@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '28', '43', '', '', '', 0, '2021-06-14 03:01:22', 1, 0),
('1623639697', 'Suarno', 'default-user.png', 'suarno@gmail.com', '$2y$10$R7y1q8T8nTlJf/bEtfL5KOZppZ3INh5uucIQ.9ulnsbeMxTo4kSSK', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suarno', 'default-image.png', 'suarno@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '30', '64', '', '', '', 0, '2021-06-14 03:02:45', 1, 0),
('1623639778', 'Armin Arsa', 'default-user.png', 'arminarsa@gmail.com', '$2y$10$kCj.RJVI0RUHKLI8.wkh7u/rYEj1lP5.fjpSLaq3iQX2C6ZQSNhHK', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Armin Arsa', 'default-image.png', 'arminarsa@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '17', '25', '', '', '', 0, '2021-06-14 03:04:08', 1, 0),
('1623639871', 'Ir. Sukarno', 'default-user.png', 'irsukarno@gmail.com', '$2y$10$8wwWSPUFtwhCdSJhjae7W.XaTlff8lQyyes5lwCq1RQ6KlRObHRfC', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Ir. Sukarno', 'default-image.png', 'irsukarno@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '15', '', '', '', 0, '2021-06-14 03:06:03', 0, 0),
('1623639980', 'Edi Triwanto', 'default-user.png', 'editriwanto@gmail.com', '$2y$10$xFUKa/7Snr4G5m.6fSb9SOlSUOWA8B0FuAJLsIVS7lEPZTRv81RkC', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Edi Triwanto', 'default-image.png', 'editriwanto@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '4', '11', '', '', '', 0, '2021-06-14 03:07:26', 0, 0),
('1623640056', 'Hendra Yadi', 'default-user.png', 'hendrayadi@gmail.com', '$2y$10$O1wGEQ2qfXW6/9xkMAsUWOdJ16OLNHEgqqWg.KAonah51XArPAWvy', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hendra Yadi', 'default-image.png', 'hendrayadi@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '7', '27', '', '', '', 0, '2021-06-14 03:09:41', 0, 0),
('1623640193', 'dr. Samuel', 'default-user.png', 'drsamuel@gmail.com', '$2y$10$j9XUuL2tPTcUCO9NW/KTbO0SAZDIlHBbBmA.chncJRchxwXDV3m3.', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos dr. Samuel', 'default-image.png', 'drsamuel@gmail.com', '', 'Jl. Yotefa Abepura, RT 02/ RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '2', '11', '', '', '', 0, '2021-06-14 03:11:10', 0, 0),
('1623640323', 'Rendi', 'default-user.png', 'rendi@gemail.com', '$2y$10$pLPW8b3niRdzpwR5.OwllOTpeOztNiw4V4QnLd0qH7M.Lks2x0gpi', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Rendi', 'default-image.png', 'rendi@gemail.com', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', '', '', 0, '2021-06-14 03:19:34', 1, 0),
('1623640876', 'Yemima Bindosando', 'default-user.png', 'yemimabindosano@gemail.com', '$2y$10$isuXBRwgjrLvrhecVqMET.1FBVV2AM5mukxgyhfdGzQXmuruXv/i6', '', 'Jl.Gerilyawan RT.002/RW 001', 'Rumah Kos Ibu Yemima Bindosand', 'default-image.png', 'yemimabindosando@gemail.com', '', 'Jl.Gerilyawan RT 002/RW 001', 2, '', '', '', '', '13', '', '', 'Kualitas Air Bersih', '', 0, '2021-06-14 03:33:22', 1, 0),
('1623642110', 'Yunus', 'default-user.png', 'yunus@gmail.com', '$2y$10$LsaPFG.lYVEf.eYCeEsUJOym0y0fG3w6TDsYrXAJSl9HVQEFdmvHm', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Yunus Jl. Kali Acai', 'default-image.png', 'yunus@gmail.com', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'AIR BERSIH', '', 0, '2021-06-14 03:48:42', 1, 0),
('1623642547', 'R.J. Hutapea', 'default-user.png', 'rjhutapea@gmail.com', '$2y$10$0eY9FeM1elALJyPubW7OG.ax1OKSMRL6m.HGCpcx9sOhZEbuKw6T.', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Sewa Kami Sejahtera', 'default-image.png', 'rjhutapea@gmail.com', '', 'Jl. Kali Acai, RW 002, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas Air Bersih', '', 0, '2021-06-14 03:53:11', 1, 0),
('1623642819', 'Ibu Karolina Labok', 'default-user.png', 'labok@gmail.com', '$2y$10$.r5aCGrwTbn/8n6eNWb4UOh0H8aQRU2rsQn4LFfWrTU969FOQErly', '082182238792', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Labok', 'default-image.png', 'labok@gmail.com', '082182238792', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '20', '', '', 'Kualitas Air jernih', '', 0, '2021-06-14 03:57:40', 1, 0),
('1623643077', 'Udin', 'default-user.png', 'udin@gmail.com', '$2y$10$Z4TrOGUXrRH4Tl1o8zBaHuNXKBueDTPM4YHisV3dcl5aVmQifMMNm', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Udin', 'default-image.png', 'udin@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas air bersih', '', 0, '2021-06-14 04:00:58', 1, 0),
('1623643274', 'Wa Ode Kambe', 'default-user.png', 'waodekambe@gmail.com', '$2y$10$GHB74m9IQisd38Ai73AkcuJlziiHpK5yAwmyq9hm6yPWeEwTT2rNG', '082198206875', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Wa Ode Kambe', 'default-image.png', 'waodekambe@gmail.com', '082198206875', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '11', '', '', 'Kualitas air bersih', '', 0, '2021-06-14 04:05:20', 1, 0),
('1623643857', 'IBU WIJASIH', 'default-user.png', 'wijasih@gemail.com', '$2y$10$ro3PrwIQDZ5O1/UBwpb75.whoLqEiOWFkxIVpG26CcaGmIo24Pe1e', '', 'Belakang Toko Citra', 'Rumah Kos', 'default-image.png', '', '', 'Belakang Toko Citra', 2, '', '', '', '', '30', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 04:13:55', 0, 1),
('1623644539', 'Jumadi', 'default-user.png', 'jumadi@gmail.com', '$2y$10$n.PN4cr2TlI8U9.4E282W.Sx1HEogz1ZwykJ5iqKKGD7y5mlEG.li', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Jumadi', 'default-image.png', 'jumadi@gmail.com', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '16', '10', '', '', '', 0, '2021-06-14 04:25:05', 1, 0),
('1623644951', 'Sunarmi', 'default-user.png', 'sunarmi@gmail.com', '$2y$10$sw8mxinLFAR0pgog6kiuJOQ4EGTLN2TxIWKYnMFRvzf5hjsR/Zf4i', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Sunarmi', 'default-image.png', 'sunarmi@gmail.com', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '6', '', '', '', 0, '2021-06-14 04:31:20', 1, 0),
('1623645125', 'Drs. Allo', 'default-user.png', 'drsallo@gmail.com', '$2y$10$d6k6374N.pYoSoByCdZ/GOJMEHIC6R04karPeCc3qmR/Pr68pvcsG', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Drs. Allo', 'default-image.png', 'drsallo@gmail.com', '', 'Jl. Yotefa Abepura, RT 03/RW II, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '13', '38', '', '', '', 0, '2021-06-14 04:35:50', 1, 0),
('1623645204', 'Betu Bahar', 'default-user.png', 'betubahar@gmail.com', '$2y$10$zYpcaE8FhQCAMsN/qn07wOFHi0Cu/qTY5uMYKx4L/7bTgocE59J6y', '082149843639', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Betu Bahar', 'default-image.png', 'betubahar@gmail.com', '082149843639', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '12', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 04:38:46', 1, 0),
('1623645385', 'Saidin', 'default-user.png', 'saidin@gmail.com', '$2y$10$ZH8KJw2fHvWXJxLqar743OQXhCFqTaFhyoode8/dFB2d4kZZ/KdU6', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Saidin', 'default-image.png', 'saidin@gmail.com', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '3 x 10 m', '', '', '10', '', '', '', '', 0, '2021-06-14 04:44:12', 1, 0),
('1623645433', 'S. Ikbal Kiswandi', 'default-user.png', 'ikbalkiswandi@gmail.com', '$2y$10$yoSdMVmXoyJSOirbcmgYuumbeitZusUinv9Jx3vyM7HZmRYmnQ736', '', 'Jl. Mawar Abepura, RT 02/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos S. Ikbal Kiswandi', 'default-image.png', 'ikbalkiswandi@gmail.com', '', 'Jl. Mawar Abepura, RT 02/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '15', '15', '', '', '', 0, '2021-06-14 04:41:17', 1, 0),
('1623645579', 'Saidi', 'default-user.png', 'saidi@gmail.com', '$2y$10$f1ATzGMIhdhu432IWqh9FO0Tcqd67C5kCmy1ncLfwnvAliy7DHKFO', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Saidi', 'default-image.png', 'saidi@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '28', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 04:42:23', 1, 0),
('1623645793', 'Usman', 'default-user.png', 'usman@gmail.com', '$2y$10$UX/sYemTDtsKH4mR6gycW.H/5NE/7MgMTxVbpLlPFGMf8MtdwXFwS', '081344593886', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Usman', 'default-image.png', 'usman@gmail.com', '081344593886', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 04:45:43', 1, 0),
('1623645927', 'H. Madi', 'default-user.png', 'madi@gmail.com', '$2y$10$4PNLAGmLXfjtIPdBDwqFH.46KK5uEqeF6kbVOWZCYIUeAtWdtTAJm', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Madi', 'default-image.png', 'madi@gmail.com', '', 'RT 001/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x6 m', '', '', '15', '', '', '', '', 0, '2021-06-14 04:48:54', 1, 0),
('1623645956', 'Gustaf Manua', 'default-user.png', 'gustafmanua@gmail.com', '$2y$10$i7L7.o5rGQuRp3Ty4pc/kuWP/MWH.dDGm5c4yD4.clC2wUQH4d2di', '081212369321', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Gustaf Manua', 'default-image.png', 'gustafmanua@gmail.com', '081212369321', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '13', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 04:48:22', 1, 0),
('1623646149', 'Serly Dame', 'default-user.png', 'dame@gmail.com', '$2y$10$nQW6RaRYmPR8uoXufn.R4e/m8a5.1cYQTHTrwl2QGZWa5xN2D8tti', '', 'RT 001 RW 001 Kelurahan Asano', 'Rumah Kos Serly Dame', 'default-image.png', 'dame@gmail.com', '', 'RT 001 RW 001 Kelurahan Asano', 2, '4x4m', '', '', '', '14', '', '', '', '', 0, '2021-06-14 04:59:01', 1, 0),
('1623646234', 'Hj. Sariana', 'default-user.png', 'hjsariana@gmail.com', '$2y$10$2/hR.vM.v1ABu7LxAT6GY.ljtSsvaTq9DKIssXAUbo11/hSjc416G', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Sariana', 'default-image.png', 'hjsariana@gmail.com', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '30', '28', '', '', '', 0, '2021-06-14 04:52:52', 1, 0),
('1623646423', 'Hj. Oda', 'default-user.png', 'hjoda@gmail.com', '$2y$10$Mu7A3GrRqlP1conQt3DSxe51FmQqbNjcSXQ1J9GgEU9zSFP0/GDEm', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah  Kos Hj. Oda', 'default-image.png', 'hjoda@gmail', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '20', '20', '', '', '', 0, '2021-06-14 05:01:15', 1, 0),
('1623646788', 'Jaya Kusuma', 'default-user.png', 'kusuma@gmail.com', '$2y$10$jRAKzQ2vzyzj8.gSb1vBvO2TMVunvAW3qXZcMkwjwFnfpDgplLINu', '', 'RT 002/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Jaya Kususma', 'default-image.png', 'kusuma@gmail.com', '', 'RT 002/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x10m', '', '', '10', '', '', '', '', 0, '2021-06-14 05:02:10', 1, 0),
('1623646858', 'Suryono', 'default-user.png', 'suryono@gmail.com', '$2y$10$fUB5LA0k/tzB8MHUe5gkNemQSZ09RB04C.57ZVjnt2SqMW3pWKs/6', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Suryono', 'default-image.png', 'suryono@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:04:59', 1, 0),
('1623646934', 'Hj. Rabia', 'default-user.png', 'hjrabia@gmail.com', '$2y$10$Fe8pyUfheOBc1JLzFnL6YO8esQjB4uly3QnQuRwOQUuP19w3NIhvq', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Rabia', 'default-image.png', 'hjrabia@gmail.com', '', 'Jl. Albarakah Abepura, RT 01/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '26', '26', '', '', '', 0, '2021-06-14 05:05:49', 1, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1623646988', 'Hj. Dewi', 'default-user.png', 'hjdewi@gmail.com', '$2y$10$Mo.4CkBGInzbpDcg1AzWwOn8HBpsSHS2tEP1FkKf2a1uPdK3DwUj.', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Hj. Dewi', 'default-image.png', 'hjdewi@gmail.com', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 2, '3,5x7m', '', '', '', '10', '', '', '', '', 0, '2021-06-14 05:06:56', 1, 0),
('1623647119', 'Syahril', 'default-user.png', 'syahlir@gmail.com', '$2y$10$Jg9h2fRa6iWEyHGoczUqrOsI/krlGf6KdtvXTQ4etb1gGeOYNWzg6', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Syahril', 'default-image.png', 'syahril@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '24', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:10:34', 1, 0),
('1623647232', 'Karmel Fingkreuw', 'default-user.png', 'karmel@gmail.com', '$2y$10$4Gl/fe7fqRmmB2uvnFkfr.VzCD64ggxrPQQBUBTC.ATMbJvBNRKIK', '', 'Jl. Pasar Lama Abepura, RT 03/ RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Karmel Fingkreuw', 'default-image.png', 'karmel@gmail.com', '', 'Jl. Pasar Lama Abepura, RT 03/ RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '53', '53', '', '', '', 0, '2021-06-14 05:12:30', 1, 0),
('1623647307', 'Suratman', 'default-user.png', 'suratman@gmail.com', '$2y$10$5ZpMN2pDAsXwz22EMQAEyecKaugDf88/6xSH.F8PI1U7Hm.gA6ke2', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Suratman', 'default-image.png', 'suratman@gmail.com', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x8m', '', '', '10', '', '', '', '', 0, '2021-06-14 05:14:05', 1, 0),
('1623647450', 'Petrus Loi', 'default-user.png', 'petrusloi@gmail.com', '$2y$10$UF1XAaBPJf6oX03EfqxlnedFiX9UpY1K0dkQmXMnEmi/fz1YHmiAi', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Petrus Loi', 'default-image.png', 'petrusloi@gmail.com', '', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:13:49', 1, 0),
('1623647626', 'M. Daud', 'default-user.png', 'daud@gmail.com', '$2y$10$CNq4ZYL4qOQGRMndixHY/eJyfbDdpyx6N833p9.vKiOJY9GEcx9Eq', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos M. Daud', 'default-image.png', 'daud@gmail.com', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '10', '', '', '', 0, '2021-06-14 05:16:23', 1, 0),
('1623647645', 'Piter Kendek', 'default-user.png', 'piterkendek@gmail.com', '$2y$10$BWhm9.EMjaqPz.zyB6sNoe1GbHf8eiAqGDP5HX2ExXr.UgJfmH/Ke', '081344668001', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Piter Kendek', 'default-image.png', 'piterkendek@gmail.com', '081344668001', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:18:40', 1, 0),
('1623647652', 'La Ode Geo', 'default-user.png', 'laodegeo@gmail.com', '$2y$10$a.WKqtPOS4xxmx9Ipl3BQO0G71SNWLH1KcTX8hrQXPZF8Pjw21NZe', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 'Rumah Kos La Ode Geo', 'default-image.png', 'laodegeo@gmail.com', '', 'RT 005/RW 001, Kelurahan Asano, Distrik Abepura', 2, '', '4x8m', '', '', '10', '', '', '', '', 0, '2021-06-14 05:15:44', 1, 0),
('1623647760', 'Muri', 'default-user.png', 'muri@gmail.com', '$2y$10$JPCQ8n5fmEkB897JwNGRUeQvvbiNBr24LWtqxzzbsG.PbkKL7pjCu', '', 'RT 001/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Muri', 'default-image.png', 'muri@gmail.com', '', 'RT 001/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '4x6', '', '', '10', '', '', '', '', 0, '2021-06-14 05:20:09', 1, 0),
('1623647817', 'Hj. Murni', 'default-user.png', 'hjmurni@gmail.com', '$2y$10$jF8HszGJXWjJupo4EuwpgezdAXIBHOeUyXHhGrAlGY.vbcHaunotm', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Murni', 'default-image.png', 'hjmurni@gmail.com', '', 'Jl. Abe Indah Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '27', '19', '', '', '', 0, '2021-06-14 05:20:46', 1, 0),
('1623647959', 'Natalius Kidingallo', 'default-user.png', 'natalius@gmail.com', '$2y$10$.0A2.JH01CVd5XSuwqqh/uveeTpP5UEqfMDc/4acSHRYim4wFbp5.', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Natalius Kidingallo', 'default-image.png', 'natalius@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '25', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:22:12', 1, 0),
('1623648025', 'Hj. Martiah', 'default-user.png', 'hmartiah@gmail.com', '$2y$10$z6Imf3DhFlCzbIdf9BkQ9uvyzz.f9HVt6sslVscfbJr0rUaLYzcrm', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Hj. Martiah', 'default-image.png', 'hmartiah@gmail.com', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3x10', '', '', '12', '', '', '', '', 0, '2021-06-14 05:27:43', 1, 0),
('1623648147', 'Hj. Dewi', 'default-user.png', 'hjdewi@gmail.com', '$2y$10$Be00WclhFpaJ58X1dfYwX.inAmDZur8JBbFI30jXpjokN.NEUoNf.', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Hj. Dewi Jl. Timika', 'default-image.png', 'hjdewi@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '10', '10', '', '', '', 0, '2021-06-14 05:30:54', 1, 0),
('1623648156', 'Hj. Hollil', 'default-user.png', 'hollil@gmail.com', '$2y$10$.pAtHaLqKgIK/H6Y3oe3PubQYcgM0rDPzR9onG6q2SjqH/gTTpGIG', '085796476103', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Hj. Hollil', 'default-image.png', 'hollil@gmail.com', '085796476103', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:25:40', 1, 0),
('1623648381', 'Kusnen', 'default-user.png', 'kusnen@gmail.com', '$2y$10$9hH7jFPeZMXo.p.8mvFu0.OcAyGKLwx5Fo.Mh2K/p/Q4opEOz2liS', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Kusnen', 'default-image.png', 'kusnen@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '22', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:28:49', 1, 0),
('1623648469', 'Hj. Siti Hasia', 'default-user.png', 'hasia@gmail.com', '$2y$10$6/sueAnP5p8BlzKtkijzvOvHqgml42jpPzPIJD8Ud2vgZSwvPy.2O', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Hj. Siti Hasia', 'default-image.png', 'hasia@gmail.com', '', 'RT 002/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3x8m', '', '', '38', '', '', '', '', 0, '2021-06-14 05:34:29', 1, 0),
('1623648544', 'BPK PARIDING', 'default-user.png', 'pariding@gemail.com', '$2y$10$JzfdGSYSS8UIXIFAj5F1I.KSD0610YwD8SoAGAGJbv6REI6jNQOI6', '', 'Belakang Koramil Abepura', 'Rumah Kos', 'default-image.png', 'pariding@gemail.com', '', 'Belakang Koramil Abepura', 2, '', '', '', '', '20', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:31:53', 0, 1),
('1623648716', 'Suja', 'default-user.png', 'suja@gmail.com', '$2y$10$OdUn1YD/iOXPN1ZxQuPk5e1OesLu9gVwDY.T1s1wNv25nkW8dWyCe', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 'Rumah Kos Suja', 'default-image.png', 'suja@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, Distrik Abepura', 2, '', '', '', '', '29', '29', '', '', '', 0, '2021-06-14 05:33:42', 1, 0),
('1623648731', 'Barung', 'default-user.png', 'barung@gmail.com', '$2y$10$J2bCZ7.TwjPMqtjXVM7wx.u6FKQzGbPSrVmgOK1WBFM0c0vJY7X4u', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Barung', 'default-image.png', 'barung@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '18', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:35:07', 1, 0),
('1623648848', 'Hj. Syamsuddin', 'default-user.png', 'syamsuddin@gmail.com', '$2y$10$IOm0mG5SvuUYtiEivSK2j.nomR5BAj4KaAr43GULuaIkwn65JwP9q', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Hj. Syamsuddin', 'default-image.png', 'syamsuddin@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '25', '25', '', '', '', 0, '2021-06-14 05:36:51', 1, 0),
('1623648873', 'Abdul Rahman', 'default-user.png', 'abdulrahman@gmail.com', '$2y$10$wEnUz5eTxf10g6EsJS23JOOCPTfS.FgkGATL3MxLACO.FB90HEu4C', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Abdul Rahman', 'default-image.png', 'abdulrahman@gmail.com', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3x10m', '', '', '12', '', '', '', '', 0, '2021-06-14 05:36:51', 1, 0),
('1623648925', 'Frans Tanduk', 'default-user.png', 'franstanduk@gmail.com', '$2y$10$u7GbkEYZ9Jo2XFcEhfBAU.M88WVS9.yRUm2GjLixPUDk6BcI/CMBy', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Frans Tanduk', 'default-image.png', 'franstanduk@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '13', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:38:30', 1, 0),
('1623649032', 'Hj. Kalai', 'default-user.png', 'kalai@gmail.com', '$2y$10$/1vikjoihsO7KCyOyGL3HuUEc2F7hTf2VoRCVEH094rIvUyQsToqi', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Hj. Kalai', 'default-image.png', 'kalai@gmail.com', '', 'Jl. Timika Abepura, RT 04/RW III, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '20', '16', '', '', '', 0, '2021-06-14 05:39:21', 1, 0),
('1623649046', 'Imikhe P', 'default-user.png', 'imikhe@gmail.com', '$2y$10$h6/DYxZkMzeOx7.s1FeAoe79az2NGy2tFDMfi0G4EVjpvdXYlhfjy', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Imikhe P', 'default-image.png', 'imikhe@gmail.com', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '2x6', '', '', '10', '', '', '', '', 0, '2021-06-14 05:39:17', 1, 0),
('1623649147', 'Agustinus Parinding', 'default-user.png', 'agustinuspariding@gmail.com', '$2y$10$0FJ2nm274pNW1lTY8nu6AuWzRpKxm.952CODGfzxpCx2BgAes0VT2', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Agustinus Parinding', 'default-image.png', 'agustinuspariding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '24', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:42:24', 1, 0),
('1623649191', 'Yamira', 'default-user.png', 'yamira@gmail.com', '$2y$10$xJBoWgKCsgCqdH/pQHbzPer0chKCZO1UEArusKyi4mQhtZuWttuK6', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Yamira', 'default-image.png', 'yamira@gmail.com', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '11', '11', '', '', '', 0, '2021-06-14 05:43:13', 1, 0),
('1623649363', 'DATON GIBAN', 'default-user.png', 'daton@gemail.com', '$2y$10$GPrHJ8hi8ZVT3SqS/pyijerdNxPkF6RpucProTpeErnFyUE1JckWy', '', 'Belakang Koramil Abepura', 'Rumah Kos', 'default-image.png', 'daton@gemail.com', '', 'Belakang Koramil Abepura', 2, '', '', '', '', '21', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:45:03', 0, 1),
('1623649438', 'Hj. Hasbia', 'default-user.png', 'hasbia@gmail.com', '$2y$10$F/p0YiAmc0WcJvLmUVwYXuj88j77mXjHIdQMaCQN5D8sAdMJBRfXS', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Hj Hasbia', 'default-image.png', 'hasbia@gmail.com', '', 'Jl. Timika Abepura, RT 01/RW IV, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '24', '22', '', '', '', 0, '2021-06-14 05:45:52', 1, 0),
('1623649544', 'Fredi Parinding', 'default-user.png', 'fredipariding@gmail.com', '$2y$10$8KfkQphQR1kO5c9dzKw7t.R5dKzhb8dj5KgEmAGCS8GS3EGj4Hec6', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Fredi Parinding', 'default-image.png', 'fredipariding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '10', '', '', 'Kualitas Air Baik', '', 0, '2021-06-14 05:49:04', 1, 0),
('1623649587', 'Sahul', 'default-user.png', 'sahul@gmail.com', '$2y$10$/9ND6kR1p071M5s63XNVGOsd1uQmPP1rTgGGO98R5oKP/KiEontiy', '', 'Jl. Merdey Abepura, RT 03/RW IV, Kelurahan Yobe, DIstrik Abepura', 'Rumah Kos Sahul', 'default-image.png', 'sahul@gmail.com', '', 'Jl. Merdey Abepura, RT 03/RW IV, Kelurahan Yobe, DIstrik Abepura', 2, '', '', '', '', '10', '10', '', '', '', 0, '2021-06-14 05:49:11', 1, 0),
('1623731722', 'Csino', 'default-user.png', 'csino@gmail.com', '$2y$10$iKa9jMuWy8GJ7YewI9GXq.VBzcSBmCIfjr1T2vkMv/U2Q3GAY7dgS', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Csino', 'default-image.png', 'csino@gmail.com', '', 'Jl. Gerilyawan, RT 002/RW 001, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '13', '', '', '', '', 0, '2021-06-15 04:37:50', 1, 0),
('1623732794', 'Wijiasih', 'default-user.png', 'wijiasih@gmail.com', '$2y$10$cBhhz2D1JrOffx/w54Ze4OJFJR/m35qu5OCvkVpxSV97/PuD5pZbK', '081247557386', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Wijiasih', 'default-image.png', 'wijiasih@gmail.com', '081247557386', 'Belakang Toko Citra, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '30', '', '', '', '', 0, '2021-06-15 04:56:41', 1, 0),
('1623734005', 'Parinding', 'default-user.png', 'parinding@gmail.com', '$2y$10$5ZJn94moZk8SnZaQKEfrt.4xLJFdsQTv0GjEpN3ywP.t4pBg0AZeC', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Parinding', 'default-image.png', 'parinding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '20', '', '', '', '', 0, '2021-06-15 05:14:53', 1, 0),
('1623734493', 'Danton Giban', 'default-user.png', 'dantongiban@gmail.com', '$2y$10$AVLwMv5SviGQXH0nT2PNTuk/LStZarUaquSvg9n7lkL/8kHObzKom', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Danton Giban', 'default-image.png', 'dantongiban@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '21', '', '', '', '', 0, '2021-06-15 05:22:48', 1, 0),
('1623734670', 'Neding', 'default-user.png', 'neding@gmail.com', '$2y$10$1JhuC2yotQ2Jbl9ogvCxleFhn5j1AVEy6oCeNTzWy6VwaeMLE3AyC', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Neding', 'default-image.png', 'neding@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '17', '', '', '', '', 0, '2021-06-15 05:26:15', 1, 0),
('1623734788', 'Ernes', 'default-user.png', 'ernes@gmail.com', '$2y$10$fwpPvJGX1ZPbX3MmDvCen.z8HgdoATdW4MRU51A2qL7hE3xWj7/Uy', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Ernes', 'default-image.png', 'ernes@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '18', '', '', '', '', 0, '2021-06-15 05:27:54', 1, 0),
('1623734898', 'M. Supriadi', 'default-user.png', 'msupriadi@gmail.com', '$2y$10$9baZVSJjLw/n/GtvhvMBfesFndu9bHv3/uBoULa.vVO2SH6p9VRMG', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos M. Supriadi', 'default-image.png', 'msupriadi@gmail.com', '', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '15', '', '', '', '', 0, '2021-06-15 05:29:39', 1, 0),
('1623734997', 'Samuel Saiya', 'default-user.png', 'samuelsaiya@gmail.com', '$2y$10$Kai1Wi6S9Y9ex8XpMYQMxOwTDWuzRPKuxcIL26sOnztG5IPE4FkgG', '081344742226', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Samuel Saiya', 'default-image.png', 'samuelsaiya@gmail.com', '081344742226', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '16', '', '', '', '', 0, '2021-06-15 05:31:46', 1, 0),
('1623735125', 'Jan Pasulu', 'default-user.png', 'janpasulu@gmail.com', '$2y$10$jhtSZjvfKF1sIAM7vD3cx.f5Pt7ms2JdQv4QKcv7c.hNLyR6JjBo.', '081343463936', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Jan Pasulu', 'default-image.png', 'janpasulu@gmail.com', '081343463936', 'Belakang Koramil Abepura, RW 004, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '14', '', '', '', '', 0, '2021-06-15 05:33:31', 1, 0),
('1623735232', 'Maryani Rumbiak', 'default-user.png', 'maryanirumbiak@gmail.com', '$2y$10$p476fFvFpJrhZY2/p2EohOGwgLclCOGnJ5BEYH38roZBI9Hhg2Gv6', '082215532413', 'Jl. Kokas Abepura, RW 005, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Maryani Rumbiak', 'default-image.png', 'maryanirumbiak@gmail.com', '082215532413', 'Jl. Kokas Abepura, RW 005, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '11', '', '', '', '', 0, '2021-06-15 05:35:54', 1, 0),
('1623735371', 'Semuel Jitmau', 'default-user.png', 'semueljitmau@gmail.com', '$2y$10$Ld87zxqfd0VAGo02mdmzS.CdkVXFMtZtlwsT2V0s0QGfwWycqscRi', '', 'Jl. Uncen Bawah, RW 005, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Semuel Jitmau', 'default-image.png', 'semueljitmau@gmail.com', '', 'Jl. Uncen Bawah, RW 005, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '11', '', '', '', '', 0, '2021-06-15 05:38:04', 1, 0),
('1623735521', 'Rasyib Salasa', 'default-user.png', 'rasyibsalasa@gmail.com', '$2y$10$znDgJLT.2rqslaTnah1je.0RvA0C/Oe8WRzrqz5LvT9B1HBZjOiJC', '081344326266', 'Jl. Asei Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Bpk. Rasyib Salasa', 'default-image.png', 'rasyibsalasa@gmail.com', '081344326266', 'Jl. Asei Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '34', '', '', '', '', 0, '2021-06-15 05:41:17', 1, 0),
('1623735698', 'Surya', 'default-user.png', 'surya@gmail.com', '$2y$10$NND8/dxlpGuG6eZGDmjr5enwyxclSa0GFMbAj9NX/Jz/xQHUqq0Q.', '', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Ibu Surya', 'default-image.png', 'surya@gmail.com', '', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '15', '', '', '', '', 0, '2021-06-15 05:43:08', 1, 0),
('1623735798', 'Daniel Rumaropen', 'default-user.png', 'danielrumaropen@gmail.com', '$2y$10$i/xRzcFeqt6mDDhfsh5e9.jLPMmGlGYKg/F5cWvd2HOa/wqO.CxSa', '081343453491', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Daniel Rumaropen', 'default-image.png', 'danielrumaropen@gmail.com', '081343453491', 'Jl. Ayapo Kamp Cina, RW 007, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '12', '', '', '', '', 0, '2021-06-15 05:45:12', 1, 0),
('1623735937', 'Yehuda Hamokwarong', 'default-user.png', 'yehudahamokwarong@gmail.com', '$2y$10$19Zrl86QLsVLnO/5v4RYAO1JAyRVWyOZXD/wv7x51UJM5tW.LZelO', '081221166792', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos Yehuda Hamokwarong', 'default-image.png', 'yehudahamokwarong@gmail.com', '081221166792', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '22', '', '', '', '', 0, '2021-06-15 05:49:28', 1, 0),
('1623736179', 'George Syors Irap', 'default-user.png', 'george@gmail.com', '$2y$10$zR0JtfugUJIKW0KfEs6FeOhr01l9W70zWhRl3KpxZ1a0gDagt7zw6', '082199121799', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 'Rumah Kos George Syors Irap', 'default-image.png', 'george@gmail.com', '082199121799', 'Jl. Pipa Air Uncen Atas, RW 008, Kelurahan Kota Baru, Distrik Abepura', 2, '', '', '', '', '16', '', '', '', '', 0, '2021-06-15 05:51:24', 1, 0),
('1623803421', 'Indriyanti', 'default-user.png', 'indriyanti@gmail.com', '$2y$10$Q9Rn1H2sOlfmS4W8SMyFBukaEWZ.D0dTFXC4zj7L1ht7OLh4TEam6', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 'Indriyanti', 'default-image.png', 'indriyanti@gmail.com', '', 'RT 004/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3 x 8 m', 'Ada', '', '10', '', '', '', '', 0, '2021-06-16 00:33:04', 1, 0),
('1623803696', 'M. Nurdin', 'default-user.png', 'mnurdin@gmail.com', '$2y$10$xr46qpcgfQLf9kG1XI4Lu.scLmfkOj7IkjDI4T4rg3ZOQXdDt1ogC', '', 'RT 005/RW 002, Kelurahan Asano, Distrik Abepura', 'Rumah Kos M. Nurdin', 'default-image.png', 'mnurdin@gmail.com', '', 'RT 005/RW 002, Kelurahan Asano, Distrik Abepura', 2, '', '3.5 x 10 m', '', '', '10', '', '', '', '', 0, '2021-06-16 00:37:23', 1, 0),
('1623803931', 'H. Saka', 'default-user.png', 'hsaka@gmail.com', '$2y$10$UzhxYd0vWBCktbbQsXWQa.5bz6kGjmtRKnm2Us6sfl4q/wxt6LgxK', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 'Rumah Kos H. Saka', 'default-image.png', 'hsaka@gmail.com', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 2, '', '2.5 x 10 m', '', '', '22', '', '', '', '', 0, '2021-06-16 00:41:09', 1, 0),
('1623804102', 'Mira Harim', 'default-user.png', 'miraharim@gmail.com', '$2y$10$1zRSkrxdB6cPJeoLfpvw5.85G/PjX0M8rfIICcNsnt4uZf2q8sRVe', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 'Rumah Kos Mira Harim', 'default-image.png', 'miraharim@gmail.com', '', 'RT 002/RW 003, Kelurahan Asano, Distrik Abepura', 2, '', '3 x 10 m', '', '', '10', '', '', '', '', 0, '2021-06-16 00:46:38', 1, 0),
('1623898133', 'Irianto Setiawan', 'default-user.png', 'frontonejayapura@gmail.com', '$2y$10$HANGymMp9eojvUIhqqFTg./kOSy826aC3c64Ks.IB2sYWIVtN3XlO', '', 'Pusat Bisnis Jayapura Dok II Blok C No. 39', 'PT Karvin Mitra Sejati (Front ', 'default-image.png', 'frontonejayapura@gmail.com', '', 'Pusat Bisnis Jayapura Dok II Blok C No. 39', 3, '2321.66 m2', '', 'Ada', '', '', '', '', '', '', 0, '2021-06-17 02:53:40', 1, 0),
('1623900677', 'AYU ANDRIYANA', 'default-user.png', 'daihatsuentrop@gmail.com', '$2y$10$xAnN0pne1qh3/5CKXzSpkOBCyIoTrJTo7DQGJ4TvuP3A.rAArPb2O', '', 'Jl. Raya Abepura-Entrop', 'PT Serba Mulia Auto (Daihatsu)', 'default-image.png', 'daihatsuentrop@gmail.com', '0967-523028', 'Jl. Raya Abepura-Entrop', 4, '', '', '', '', '', '', '', '', '', 0, '2021-06-17 03:34:41', 1, 0),
('1623927556', 'Fox Hotel Jayapura', 'wajibpajak-1623993811.png', 'fc-fox-jayapura@tauzia.com', '$2y$10$de9hSn9qQCAOvI9OCvfxpe52nSbGwDLcSU6.LjOCiB5MF71fSZpH2', '081240358806', 'Jalan Pembangunan No. 16, Gurabesi, Jayapura Utara - Papua', 'Fox Hotel jayapura', '1623927556-usaha-logo-1623993861.png', 'fc-fox-jayapura@tauzia.com', '081240358806', 'Paldam Jayapura Utara', 3, '', '', '', '', '', '', '', '', '', 0, '2021-06-17 10:59:25', 1, 0),
('1623929487', 'NA', 'default-user.png', 'aston@gmail.com', '$2y$10$MkMWvi/qP8I9Fkajpm5xqewZyj7jHva14yG1lFEXedLPquU/GZ40i', '', 'Jl. Percetakan, Jayapura', 'Hotel Aston', 'default-image.png', 'aston@gmail.com', '', 'Jl. Percetakan Jayapura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-06-17 11:33:36', 1, 0),
('1624587810', 'Endang Kusdiani', 'default-user.png', 'kusdiani@gmail.com', '$2y$10$J5hEN3ty4WhvlaHFt4F3ZO7.iS2dFzhyrOqC35n.aExEkkn177Ar.', '', 'Jl. Raya Abepura Depan Perumahan Pemda Entrop', 'Hotel Danny', 'default-image.png', 'kusdiani@gmail.com', '', 'Jl. Raya Abepura Depan Perumahan Pemda Entrop', 3, '', '', '', '', '', '', '', 'tidak menggunakan air tanah', '', 0, '2021-06-25 02:27:31', 0, 0),
('1625106239', 'Robby Mandey', 'default-user.png', 'ayumiwaena@gmail.com', '$2y$10$J1XSL0JkPPS2BJc49p2JauHyrlOdMNY6NToWY/HXjc0bKAAN9h2FW', '', 'Waena', 'Cafe Ayumi Waena', 'default-image.png', 'ayumiwaena@gmail.com', '', 'Waena', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 02:25:45', 1, 0),
('1625107310', 'Christian Thean Laurenthio', 'default-user.png', 'papuagemilang@gmail.com', '$2y$10$rr6IDUhLh02EN2FhqukmI.nuCdBok3ShmfC53biiFTmpGw8V2vnOu', '', 'Jl. Raya Abepura, Kelurahan Kota Baru, Distrik Abepura', 'PT Papua Gemilang (Matos)', 'default-image.png', 'papuagemilang@gmail.com', '', 'Jl. Raya Abepura, Kelurahan Kota Baru, Distrik Abepura', 3, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 02:47:06', 1, 0),
('1625108022', 'Ramayana', 'default-user.png', 'ramayana@gmail.com', '$2y$10$Domrhv./rEEE3xWS37TaFesaKS/OTE1rrKeg5D0nwBSlfAZgshavu', '', 'Jl. Raya Abepura', 'Mall Ramayana', 'default-image.png', 'ramayana@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 02:55:40', 1, 0),
('1625108221', 'Pabrik Tahu Muncol', 'default-user.png', 'tahumuncol@gmail.com', '$2y$10$zS68w/vzTjoC3Jcjfvzw.OoS/uMC8l3Rvh.JVDvpnpg3b6SC/6X3i', '', 'Jl. Kali Acai', 'Pabrik Tahu Muncol', 'default-image.png', 'tahumuncol@gmail.com', '', 'Jl. Kali Acai', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 03:03:45', 1, 0),
('1625108657', 'Blinkz Blinkz Car Wash', 'default-user.png', 'blinkzblinkz@gmail.com', '$2y$10$ils/UA3kctlt7LbY.QzJFOGin5WtgtQd2nSG19kb2VdnAxXUvSQPG', '', 'Jl. Pasific Permai, Kelurahan Bhayangkara', 'Blinkz Blinkz Car Wash', 'default-image.png', 'blinkzblinkz@gmail.com', '', 'Jl. Pasific Permai, Kelurahan Bhayangkara', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 03:08:25', 1, 0),
('1625109010', 'Ratu Aroma', 'default-user.png', 'ratuaroma@gmail.com', '$2y$10$fiyn2oySGdiQDO9AWlei3OAlCkwbC8OTVCUI7sTXJlFOCgaHOzXNu', '', 'Jl. Raya Abepura, Kelurahan Wai Mhorock', 'Rumah Makan Ratu Aroma', 'default-image.png', 'ratuaroma@gmail.com', '', 'Jl. Raya Abepura, Kelurahan Wai Mhorock', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 03:13:35', 1, 0),
('1625109334', 'Kairos Laundry', 'default-user.png', 'kairoslaundry@gmail.com', '$2y$10$6A76WGauHexOlS.15JFnVuhavtLG8Qp15jcgwQ4IJLasSFKMesCXC', '', 'Jl. Sosial Padang Bulan', 'Kairos Laundry', 'default-image.png', 'kairoslaundry@gmail.com', '', 'Jl. Sosial Padang Bulan', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-01 03:18:38', 1, 0),
('1625548247', 'Dewi', 'default-user.png', 'fashion77@gmail.com', '$2y$10$bcbVtlyDuLRx6b4W9gFCx.orJFx8r41Nfhz5yNQsWIUXyS67G/JeC', '', 'Jl. Raya Abepura Sentani ', 'Toko Fashion 77', 'default-image.png', 'fashion77@gmail.com', '', 'Jl. Raya Abepura Sentani ', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-06 05:12:38', 1, 0),
('1626050298', 'Ruben Rukka', 'default-user.png', 'Rubenrukka@gmail.com', '$2y$10$Djw0UsdR8veF6WFRjfTYeuzi1diu9JICzvpmgBiPD.oemj54LKgHa', '', 'Belakang Apotik Bunda Kotaraja ', 'Rumah Kos Ruben Rukka', 'default-image.png', 'Rubenrukka@gmail.com', '', 'Belakang Apotik Bunda Kotaraja', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-12 00:40:29', 1, 0),
('1626225347', 'Rumah Makan Algano', 'default-user.png', 'algano@gmail.com', '$2y$10$3LVqkvLyNBIbIcQfZcuQ2ecCjKLrqFjhgTg38c5kSOdmQqxPJlE4u', '', 'Jl. Poros Youtefa, Abepura', 'Rumah Makan Algano', 'default-image.png', 'algano@gmail.com', '', 'Jl. Poros Youtefa, Abepura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:19:18', 1, 0),
('1626225654', 'Hotel Cyclop', 'default-user.png', 'cyclop@gmail.com', '$2y$10$NYbn71kYCuphyDvT.Rwv/OWSkmbP8TCW9kL7A04QhEqZvvh617SMm', '', 'Jl. Jeruk Nipis, Kotaraja, ', 'Hotel Cyclop', 'default-image.png', 'cyclop@gmail.com', '', 'Jl. Jeruk Nipis, Kotaraja', 3, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:23:14', 1, 0),
('1626226519', 'Oxy Laundry', 'default-user.png', 'oxylaundry@gmail.com', '$2y$10$1OkGA3sKy3BvdiD3B4DS1OvUqxN8gFYW.mBM70htNjb19Z8ywH862', '', 'Jayapura', 'Oxy Laundry', 'default-image.png', 'oxylaundry@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:39:37', 1, 0),
('1626226937', 'Nabila Clean Laundry', 'default-user.png', 'nabilalaundry@gmail.com', '$2y$10$/EV2VmEfywzJ2OGFjpYZ5OtJhUEh8YCJyJtuuhU.a6n4WXMbrzcpS', '', 'Jl. Sulawesi Dok IX', 'Nabila Clean Laundry', 'default-image.png', 'nabilalaundry@gmail.com', '', 'Jl. Sulawesi Dok IX', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:46:04', 1, 0),
('1626227277', 'Rumah Makan Wong Solo', 'default-user.png', 'wongsolo@gmail.com', '$2y$10$GK.q2T5XBjIJ7C/usvjCAOuKKKF5ejHFGXwyt9dVwAPsuJWU9Nuqu', '', 'Abepura', 'Rumah Makan Wong Solo', 'default-image.png', 'wongsolo@gmail.com', '', 'Abepura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:49:39', 1, 0),
('1626227510', 'Senyum 5000 Waena', 'default-user.png', '5000waena@gmail.com', '$2y$10$TOd0s/ZDXavGnwDbe5n5Xe/.RMwQ56/J9zsBULc7ePOykIEPGqpNi', '', 'Jl. Raya Waena Sentani', 'Senyum 5000 Waena', 'default-image.png', '5000waena@gmail.com', '', 'Jl. Raya Waena Sentani', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:54:20', 1, 0),
('1626227756', 'Jhony Susanto', 'default-user.png', 'rkjsusanto2@gmail.com', '$2y$10$LV/2gklrE0ZTWvcjmMONv.Ux4N2EsIQUm1SXLsfzxnucW408qWD8K', '', 'Jayapura', 'Rumah Kos Jhony Susanto (Merah', 'default-image.png', 'rkjsusanto2@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 01:57:37', 1, 0),
('1626228149', 'Rumah Sewa Yudisyah', 'default-user.png', 'sewayudisyah@gmail.com', '$2y$10$v6uM5YP7vvXrubdNcSDONuHBvVrq5QkAo3oWNT0hyQAUzSV4d6oFW', '', 'Jayapura', 'Rumah Sewa Yudisyah', 'default-image.png', 'sewayudisyah@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:04:29', 1, 0),
('1626228632', 'Saga Mart Jalan Baru', 'default-user.png', 'sagajlbaru@gmail.com', '$2y$10$FEbopzqurFfkocB173lOEufGQQARrraf/e.Y8K/0lQBIqnF0ETm8i', '', 'Jl. Baru Ps Lama Abepura', 'Saga Mart Jalan Baru', 'default-image.png', 'sagajlbaru@gmail.com', '', 'Jl. Bar Ps Lama Abepura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:14:39', 1, 0),
('1626228945', 'Tahu Ojolali', 'default-user.png', 'tahuojolali@gmail.com', '$2y$10$uJh3ipEIlGb7BE6ERCP5XuMfo82GY1sol1/RBTmpAqZXZiElMvfoa', '', 'Jl Kali Acai', 'Tahu Ojolali', 'default-image.png', 'tahuojolali@gmail.com', '', 'Jl. Kali Acai', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:17:43', 1, 0),
('1626229415', 'Pencucian Depan Hotel Galaxy', 'default-user.png', 'pencucianhotelgalaxy@gmail.com', '$2y$10$Snm28x7pumu.pEhT5ESn0OGPhSLvqMgHGbaFwx8i3qJS2AUe9YlXK', '', 'Jayapura', 'Pencucian Depan Hotel Galaxy', 'default-image.png', 'pencucianhotelgalaxy@gmail.com', '', 'Jayapura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:27:11', 1, 0),
('1626229992', 'Tahu Anugerah', 'default-user.png', 'tahuanugerah@gmail.com', '$2y$10$cy5NiqhE9nOHVbUYVJHQsuPiybiAkmvWsWXJUfbEIYm0WYYpdBa1W', '', 'Jayapura', 'Tahu Anugerah', 'default-image.png', 'tahuanugerah@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:35:02', 1, 0),
('1626230210', 'Toko Citra', 'default-user.png', 'tokocitra@gmail.com', '$2y$10$bFjItjql5Tud9nSkemcMq.ZLMmpJl0ROgfi8Tf3iAsLw6BiVrGkBm', '', 'Jl. Raya Abepura', 'Toko Citra', 'default-image.png', 'tokocitra@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:40:01', 1, 0),
('1626230671', 'Rumah Makan Berkah', 'default-user.png', 'rmberkah@gmail.com', '$2y$10$KHLaFfiw1.bzqsk6XSkkCuZDFppbu6GT8FlT7bylStm1fwlOflvX2', '', 'Jayapura', 'Rumah Makan Berkah', 'default-image.png', 'rmberkah@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-07-14 02:46:20', 1, 0),
('1626395262', 'Toko Rezeky', 'default-user.png', 'tokorezeky@gmail.com', '$2y$10$WhPHgp7lLqtWztNrAY2ZJeqvVM5eRyl5WPQ8D1AzK0yOM6ThXury6', '', 'Jl. Baru Abepura', 'Toko Rezeky', 'default-image.png', 'tokorezeky@gmail.com', '', 'Jl. Baru Abepura', 4, '2139,88', '', '', '', '', '', '', '', '', 0, '2021-07-16 00:30:03', 1, 0),
('1627344636', 'Bpk Musron', 'default-user.png', 'rkbpkmusron@gmail.com', '$2y$10$4lWkRDpz8NokqpVN7.Dqyu7vnOMlUKzmyWaYlwJ9QATpmf9XDQucy', '', 'Abepura', 'Rumah Kos Bpk Musron', 'default-image.png', 'rkbpkmusron@gmail.com', '', 'Abepura', 2, '', '', '', '', '24', '48', '', '', '', 0, '2021-07-27 00:19:05', 1, 0),
('1627905389', 'Ibu Lili', 'default-user.png', 'rmsg@gmail.com', '$2y$10$VZ2pFfgMc5buiB9GNtOP0.xTZ0JochLXAvn7s5sGvrQ6ebqEN3WMK', '', 'Jl. Raya Abepura', 'Rumah Makan Sendok Garpu', 'default-image.png', 'rmsg@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-02 12:06:59', 1, 0),
('1627949073', 'NA', 'default-user.png', 'ojolali@gmail.com', '$2y$10$RlhX000acX5EsbeLJ7EqV.KQk/i2INp9/MNsNhNg/3PqTq6C8YNdG', '', 'Kali Acai', 'Pabrik Tahu Ojolali', 'default-image.png', 'ojolali@gmail.com', '', 'Kali Acai', 1, '', '', '', '', '', '', '', '', '', 0, '2021-08-03 00:14:21', 0, 1),
('1628041482', 'Jumadi', 'default-user.png', 'sumurpakjumadi@gmail.com', '$2y$10$ttyRnlvoz6XFPvsINNWHzuY6ajC/.T8ENlfULM0viB2k7cxE3difa', '', 'Buper', 'Penjualan Air Sumur', 'default-image.png', 'sumurpakjumadi@gmail.com', '', 'Buper', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-04 01:59:00', 0, 1),
('1628043297', 'Beston Poltak Simanjuntak', 'default-user.png', 'airabadi@gmail.com', '$2y$10$mG2Hwmn9xrVdlTTffg7rn.YqYmyu1wYZ5jdyS962UNQOjFGXCr/eq', '', 'Jl. Sulawesi II Dok VII RT 003 RW 008 Kel. Imbi Kec. jayapura Utara ', 'Air Abadi', 'default-image.png', 'airabadi@gmail.com', '', 'Jl. Sulawesi II Dok VII RT 003 RW 008 Kel. Imbi Kec. jayapura Utara ', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-04 02:17:00', 1, 0),
('1628048359', 'Agustinus B. Fajarianto', 'default-user.png', 'sumurbpkfajar@gmail.com', '$2y$10$e4GmxxFsxD.7aW1H0r1/me7vBNVxL8YVzDnFg42x2M6SkT3LVoHua', '', 'Yoka Depan Hotel Anggrek', 'sumur Yoka', 'default-image.png', 'sumurbpkfajar@gmail.com', '', 'Yoka Depan Hotel Anggrek', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-04 03:40:55', 1, 0),
('1628053192', 'Barmuli', 'default-user.png', 'sumurbpkbarmuli@gmail.com', '$2y$10$GXYT5u5D0Kz2nWwhpwoHzuP85DQCM0tQCkOjdq/rKmpNsJuKO6au.', '', 'Jl. SPG Taruna Bhakti Waena', 'Sumur Bpk Bamuli', 'default-image.png', 'sumurbpkbarmuli@gmail.com', '', 'Jl. SPG Taruna Bhakti Waena', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-04 05:00:57', 1, 0),
('1628053281', 'Deli Adman', 'default-user.png', 'sumurdadman@gmail.com', '$2y$10$DjAIdiNPAveGOo8eNxUatuY4.PvBw8db3GTBVjFCLKoL4GDmPbIfG', '', 'Batas Kota Jl. Raya Abepura Sentani', 'Sumur Bpk Deli Adman', 'default-image.png', 'sumurdadman@gmail.com', '', 'Batas Kota Jl. Raya Abepura Sentani', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-04 05:02:28', 1, 0),
('1629092692', 'Iwan', 'default-user.png', 'iwanwaena@gmail.com', '$2y$10$XQ50rYFdVGiHROMcrxAbHuE0BGlny8BomBdDeCleLf.5npVZ2FG2S', '081344162799', 'Jl. Belakang TC Perkebunan, Kelurahan Waena, Distrik Heram', 'Rumah Kos Iwan', 'default-image.png', 'iwanwaena@gmail.com', '081344162799', 'Jl. Belakang TC Perkebunan, Kelurahan Waena, Distrik Heram', 2, '', '', '', '', '10', '32', '', '', '', 0, '2021-08-16 05:48:18', 1, 0),
('1629376442', 'RM Padang Japsel', 'default-user.png', 'rmpadangjapsel@gmail.com', '$2y$10$ataLB0Z9vvWjsiV1ZPJuxeWtzqFo6HW5EcBJc1WvkmNfqIBABBx.m', '', 'Depan Kantor Distrik Jayapura Selatan', 'RM Padang depan Distrik Japsel', 'default-image.png', 'rmpadangjapsel@gmail.com', '', 'Depan Kantor Distrik Jayapura Selatan', 2, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 12:36:38', 1, 0),
('1629377204', 'Grand Abe', 'default-user.png', 'grandabe@gmail.com', '$2y$10$Cyx.xO3a9Gs30vFqyXUaF.tRw9aFHs7V2Lq3nDSBPPuZDwwpLZLY2', '', 'Jl. Raya Abepura', 'Hotel Grand Abe', 'default-image.png', 'grandabe@gmail.com', '', 'Jl. Raya Abepura', 3, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 12:52:45', 1, 0),
('1629377749', 'Home Premiere', 'default-user.png', 'hompremiere@gmail.com', '$2y$10$e1l0XHa6MktF/zvOFKu.2.woC4v/dMzREgQV7.FjGQ3UwD3gWXG7S', '', 'Jl. Raya Tanah Hitam', 'Hotel Hom Premiere', 'default-image.png', 'hompremiere@gmail.com', '', 'Jl. Raya Tanah Hitam', 3, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 12:57:33', 1, 0),
('1629377959', 'Hypermart Tanah Hitam', 'default-user.png', 'hypermarttanahhitam@gmail.com', '$2y$10$PJM1w5lgHvQd1OtPi0.cEOiCpW2bH73lirfXNhSWKd86V4DQNluDG', '', 'Jl. Raya Tanah Hitam', 'Hypermart Tanah Hitam', 'default-image.png', 'hypermarttanahhitam@gmail.com', '', 'Jl. Raya Tanah Hitam', 4, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 13:01:13', 1, 0),
('1629378379', 'Hotel Mutiara', 'default-user.png', 'hotelmutiara@gmail.com', '$2y$10$P5F/ms4TQwJ7hljv41dFgueRY.vXbIBTn/Zx0eH2VlNTsxrqR/nM2', '', 'Jl. Raya Kotaraja Dalam', 'Hotel Mutiara', 'default-image.png', 'hotelmutiara@gmail.com', '', 'Jl. Raya Kotaraja Dalam', 2, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 13:08:05', 1, 0),
('1629379445', 'Hotel Clarence', 'default-user.png', 'hotelclarence@gmail.com', '$2y$10$PbyufOJwFs8CJPlYmIglMuz3wCatStB6G1KXyc5Dit/b3Kt0TSnDK', '', 'Waena', 'Hotel Clarence', 'default-image.png', 'hotelclarence@gmail.com', '', 'Waena', 2, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 13:25:29', 1, 0),
('1629379841', 'Anggrek Indah', 'default-user.png', 'hotelanggrek@gmail.com', '$2y$10$DDmv94p7e7xe51e1TXIS5.tNsKTgXzl8rYjambAotGfVbGefh9iRa', '', 'Waena', 'Hotel Anggrek Indah', 'default-image.png', 'hotelanggrek@gmail.com', '', 'Waena', 2, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 13:32:09', 1, 0),
('1629415268', 'Laundry depan SD Gembala Baik', 'default-user.png', 'laundrysdgembalabaik@gmail.com', '$2y$10$CVhG22FwUIqJiWr.xsZ0xeWoar7qWUzNHhDAq/iaRggZVWyRQGvAi', '', 'Depan SD Gembala Baik', 'Laundry dpn SD Gembala Baik', 'default-image.png', 'laundrysdgembalabaik@gmail.com', '', 'Depan SD Gembala Baik', 2, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 23:24:40', 1, 0),
('1629416058', 'Bernado Sitorus', 'default-user.png', 'bernado@gmail.com', '$2y$10$TefVL4QRNaRsfgCQ30LXVedPH6rbPK93BHX2NlFijOd8zgMykk/Im', '', 'Jayapura', 'Rumah Kos B. Sitorus', 'default-image.png', 'bernado@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-08-19 23:35:54', 1, 0),
('1631497309', 'Wajib Pajak', 'default-user.png', 'wajibpajak@gmail.com', '$2y$10$EHW0jxwmXW9BQNoJoifQlOzM2f.qcH9U5VUeNvoS7oVbnVBA5iyji', '', 'Jl. Nama Jalan, Nomor, Nama Kelurahan, Nama Distrik ', 'Rumah Kos Wajib Pajak', 'default-image.png', 'wajibpajak@gmail.com', '', 'Jl. Nama Jalan, Nomor, Nama Kelurahan, Nama Distrik ', 2, '', '', '', '', '11', '22', '', '', '', 0, '2021-09-13 01:55:34', 1, 0),
('1632360397', 'Rudy Maswi', 'default-user.png', 'sumbermakmur@gmail.com', '$2y$10$Uy07CVFjoE5SF2rII6.dneSCcYo8HbGaA6I9ObmzDdt3xT3UOODt.', '', 'Lingkaran Abepura', 'Super Market Sumber Makmur', 'default-image.png', 'sumbermakmur@gmail.com', '', 'Lingkaran Abepura', 4, '800', '', '', '', '', '', '', '', '', 0, '2021-09-23 01:28:22', 1, 0),
('1632361405', 'Onix', 'default-user.png', 'tokoonix@gmail.com', '$2y$10$ibSt2HVXBU.RgCyD5vu.4OkgyoT1zHLaW3PT6U7fbz46ThImYHN1y', '', 'Jl. Raya Abepura Kotaraja', 'Toko Onix', 'default-image.png', 'tokoonix@gmail.com', '', 'Jl. Raya Abepura Kotaraja', 4, '', '', '', '', '', '', '', '', '', 0, '2021-09-23 01:43:55', 1, 0),
('1632877338', 'Bpk Misno', 'default-user.png', 'misno@gmail.com', '$2y$10$9b/xGOKT8umnLHGVTcAiuuvz1XmcG0ufYJGYmF1afk.4Tlc/wVm6S', '0967 550770, 550771', 'Jln. Terminal Entrop jayapura', 'Hotel Delima', 'default-image.png', 'misno@gmail.com', '0967 550770, 550771', 'Jln. Terminal Entrop jayapura', 2, '', '', '', '', '', '', '', 'Menggunakan Air PAM dan tidak menggunakan air tanah berdasarkan dokumen UKL UPL Hotel Delima tahun 2010', '', 0, '2021-09-29 01:06:26', 0, 0),
('1632877655', 'CV. 777 (Hotel 777)', 'default-user.png', 'hotel 777@gmail.com', '$2y$10$a.ejS3i.ICllOWhDnUdHm.nTN/nX/kMgyNFqcDn/GiBxtGGsBxArS', '(0967) 583405', 'Jl. Raya Abepura-Sentani', 'Hotel 777', 'default-image.png', 'hotel 777@gmail.com', '(0967) 583405', 'Jl. Raya Abepura-Sentani', 3, '', '378 m2', '', 'Ada', '', '', '', 'Menggunakan air tanah berdasarkan Dokumen Pengelolaan Lingkungan Hidup (DPLH) Hotel 777 Tahun 2011', '', 0, '2021-09-29 01:25:34', 1, 0),
('1632877740', 'Yuliana Ong Pei I', 'default-user.png', 'yuliana@gmail.com', '$2y$10$DhMGt/0eejiJ2HzcOSKZ/O6hOznNh2RI24OdKlz7bcImm3OqcHVqe', '', 'Jl. Percetakan Negara Kel. Gurabesi Distrik Japut', 'Hotel Palace', 'default-image.png', 'yuliana@gmail.com', '', 'Jl. Percetakan Negara Kel. Gurabesi Distrik Japut', 2, '', '', '', '', '', '', '', 'Menggunakan air PDAM berdasarkan dokumen UKL UPL Hotel Palace Papua Bulan Agustus 2012', '', 0, '2021-09-29 01:11:17', 0, 0),
('1632877933', 'Drs. Nishayah DIS, SH', 'default-user.png', 'nishayah@gmail.com', '$2y$10$ojrPOX6fC2h4J7G8EBV5Cu6STl3lvDpi3oleoWuJiOFmMbbPlJ4Zi', '0967 551669', 'Jln. Amphibi Hamadi AL No. 69 Kel. Hamadi Distrik Japsel', 'Hotel Nusantara', 'default-image.png', 'nishayah@gmail.com', '0967 551669', 'Jln. Amphibi Hamadi AL No. 69 Kel. Hamadi Distrik Japsel', 2, '', '', '', '', '', '', '', 'Menggunakan air PDAM berdasarkan dokumen UKL UPL Hotel Nusantara Tahun 2014', '', 0, '2021-09-29 01:15:09', 0, 0),
('1632878137', 'Ny. Hasmiati Junaedi', 'default-user.png', 'hasmiati@gmail.com', '$2y$10$qPea.fqVVyEOf6or/5qIxegnhlLuWdX68T0IjOpLF.3OlBR8f/B9S', '0967 543133', 'Jln. Tanjung Ria No. 05 RT 001/RW 007 ', 'Hotel Andalucia', 'default-image.png', 'hasmiati@gmail.com', '', 'Jln. Tanjung Ria No. 05 RT 001/RW 007 ', 2, '', '', '', '', '', '', '', 'hanya menggunakan air PDAM berdasarkan dokumen DPLH Hotel Andalucia tahun 2011`', '', 0, '2021-09-29 01:19:40', 0, 0),
('1632878447', 'Oskar Toloh, SE', 'default-user.png', 'oskar@gmail.com', '$2y$10$kkGem8umXUBZTmxAGXMLN.77DxapoGBCLP/QVxVjV0.n4/st2eN02', '', 'Jl. Kelapa Dua Entrop', 'Hotel Sian Belavista', 'default-image.png', 'oskar@gmail.com', '', 'Jl. Kelapa Dua Entrop', 2, '', '', '', '', '', '', '', 'hanya menggunakan air PDAM berdasarkan dokumen UKL UPL Hotel Sian Belavista Tahun 2009', '', 0, '2021-09-29 01:23:49', 0, 0),
('1632878689', 'Ibu Damaris', 'default-user.png', 'hotelcenderawasih@gmail.com', '$2y$10$uce8p05yiceoxTg4xXUXCekhwNTFRTGy0Ie3aiZXHYLn7Ww2OMbje', '', 'Jl. Asrama Haji Kotaraja', 'Hotel Cenderawasih ', 'default-image.png', 'hotelcenderawasih@gmail.com', '', 'Jl. Asrama Haji Kotaraja', 2, '', '', '', '', '', '', '', '', '', 0, '2021-09-29 01:25:51', 1, 0),
('1632879111', 'Sri Intan Mustika (Hotel Ayu)', 'default-user.png', 'hotelayu@gmail.com', '$2y$10$HkP4Lv/.lZ.AJDbwJN1Y9O.oItQC3qvpfiWavBqSEWB2qeOw7dqPW', '(0967) 534263', 'Jl. Tugu I No. 2, APO Bengkel, Jayapura', 'Hotel Ayu', 'default-image.png', 'hotelayu@gmail.com', '(0967) 534263', 'Jl. Tugu I No. 2, APO Bengkel, Jayapura', 3, '', '', '', '', '', '', '', 'Menggunakan air PDAM berdasarkan dokumen Upaya Pengelolaan Lingkungan Hidup (UKL) dan Upaya Pemantauan Lingkungan Hidup (UPL) Hotel Ayu, Tahun 2014', '', 0, '2021-09-29 01:35:51', 0, 0),
('1632879606', 'Dra. Yeniwati (Hotel Trans Pap', 'default-user.png', 'hoteltranspapua@gmail.com', '$2y$10$JAsc0e5CyudaUm9BJeL1P.QwGy6ENPEOgz7MAOx0DuHOKtsLT4o2O', '', 'Jl. Ruko Pasifik Permai Dok. 2', 'Hotel Trans Papua', 'default-image.png', 'hoteltranspapua@gmail.com', '', 'Jl. Ruko Pasifik Permai Dok. 2', 3, '', '', '', '', '', '', '', 'Menggunakan air tanah dan air dari PDAM berdasarkan Dokumen Upaya Pengelolaan Lingkungan Hidup (UKL) dan Upaya Pemantauan Lingkungan (UPL) Hotel Trans Papua Bulan Juli Tahun 2011.', '', 0, '2021-09-29 01:57:00', 1, 0),
('1632881647', 'Dina Christine (Hotel \"SANDS\")', 'default-user.png', 'hotelsands@gmail.com', '$2y$10$REUcpSQ/.yhW0KN//bQxOOLE/IUz/z9liFY3F/9V034aETEWW91Tq', '', 'Jl. Baru RT. 003/RW. 003, Kelurahan Awiyo, Distrik Abepura, Kota Jayapura', 'Hotel \"SANDS\"', 'default-image.png', 'hotelsands@gmail', '', 'Jl. Abepantai, Tanah Hitam, Abepura, Jayapura', 3, '', '', '', '', '', '', '', 'Tidak menggunakan air tanah berdasarkan dokumen Upaya Pengelolaan Lingkungan Hidup (UKL) dan Upaya Pemantauan Lingkungan Hidup (UPL) Hotel \"SANDS\", Tahun 2012', '', 0, '2021-09-29 02:26:14', 0, 0),
('1632882525', 'Hotel Kartini', 'default-user.png', 'hotelkartini@gmail.com', '$2y$10$JmAc0K6kTfa4hODRAToOHuwIP8iVTPX/WYbpEBbJ9AfOL8URgsJIq', '', 'Jl. Perintis No. 2, Kelurahan Gurabesi, Distrik Jayapura Utara, Kota Jayapura', 'Hotel Kartini', 'default-image.png', 'hotelkartini@gmail.com', '', 'Jl. Perintis No. 2, Kelurahan Gurabesi, Distrik Jayapura Utara, Kota Jayapura', 3, '', '', '', '', '', '', '', 'Tidak menggunakan air tanah berdasarkan Dokumen Pengelolaan Lingkungan Hidup (DPLH) Hotel Kartini, Tahun 2014', '', 0, '2021-09-29 02:32:21', 0, 0),
('1632973555', 'Jhonny Susanto', 'default-user.png', 'rkjusanto1@gmail.com', '$2y$10$DBD3SxRwbtp9l0L5VCQH5OnjCea2HjDk3B9kXY6zNbIA/Rh1kvnbW', '', 'Jl. Silva Griya Kotaraja', 'rumah kos Jhony Susanto Kos Pu', 'default-image.png', 'rkjsusanto1@gmail.com', '', 'Jl. Silva Griya Kotaraja', 2, '', '', '', '', '', '', '', '', '', 0, '2021-09-30 03:53:42', 1, 0),
('1633316372', 'PT. Duta Damai Papua', 'default-user.png', 'rsprovita@gmail.com', '$2y$10$snzCqqh07NfnPpcPQotrPO8Y2HlOcJr200VDUkWtiDgu/BdptIwFS', '', 'Jl. Sam Ratulangi No. 39 APO, RT. 05 RW. 02, Kelurahan Bhayangkara Distrik Jayapura Utara, Kota Jayapura, Papua 99112', 'Rumah Sakit Provita', 'default-image.png', 'rsprovita@gmail.com', '', 'Jl. Sam Ratulangi No. 39 APO, RT. 05 RW. 02, Kelurahan Bhayangkara Distrik Jayapura Utara, Kota Jayapura, Papua 99112', 2, '', '', '', '', '', '', '', '', '', 0, '2021-10-04 03:03:30', 1, 0),
('1633327800', 'Hotel Permata', 'default-user.png', 'hotelpermata@gmail.com', '$2y$10$x1o4LLMCRBOjH1eqpzyTwuocH0XNXFqOWTbTMS1pMH8Brn8Teo8ny', '', 'Jl. Olahraga No.3 Paldam, Jayapura', 'Hotel Permata', 'default-image.png', 'hotelpermata@gmail.com', '', 'Jl. Olahraga No.3 Paldam, Jayapura', 3, '', '', '', '', '', '', '', '', '', 0, '2021-10-04 06:13:21', 1, 0),
('1633328134', 'Hotel Beisji Inn', 'default-user.png', 'beisjiinn@gmail.com', '$2y$10$a0l6v/9zZG/UxQneRHv8h.TbAygiK745tPh33/4ymDYEFFTonp/Le', '', 'Jl. Tanjung Ria Base G No. 78 Kav. 1 Dok IX', 'Hotel Beisji Inn', 'default-image.png', 'beisjiinn@gmail.com', '', 'Jl. Tanjung Ria Base G No. 78 Kav. 1 Dok IX', 3, '', '', '', '', '', '', '', '', '', 0, '2021-10-04 06:17:45', 1, 0),
('1633496343', 'Alfrie Moeis', 'default-user.png', 'RMburyam@gmail.com', '$2y$10$LY12far.wb6w0dw5o47Er.gPcjb62rgDb0tAjq8KORV0cS.Cnr7Pi', '', 'Waena ', 'Rumah Makan Bubur Ayam', 'default-image.png', 'RMburyam@gmail.com', '', 'Waena', 4, '', '', '', '', '', '', '', '', '', 0, '2021-10-06 05:04:09', 1, 0),
('1633523343', 'Hotel Rais', 'default-user.png', 'hotelrais@gmail.com', '$2y$10$D0rHil2SbkC.WKqAyMLXIOQQ93MFn2AlBooYsrFtkPBQhxQfivDW.', '', 'Jl. Pantai Kelapa No.28, Argapura', 'Hotel Rais', 'default-image.png', 'hotelrais@gmail.com', '', 'Jl. Pantai Kelapa No.28, Argapura', 3, '', '', '', '', '', '', '', '', '', 0, '2021-10-06 12:31:07', 1, 0),
('1633524171', 'R.M. Minang Saiyo', 'default-user.png', 'rmsaiyo@gmail.com', '$2y$10$nC7xC4GVVHMcwYKour1Su.SlCX9X0e5rNGMMMYkfIfMTt/sZk..lq', '', 'Jl. Kelapa 2 Entrop', 'Rumah Makan Minang Saiyo', 'default-image.png', 'rmsaiyo@gmail.com', '', 'Jl. Kelapa 2 Entrop', 2, '', '', '', '', '', '', '', '', '', 0, '2021-10-06 12:43:15', 1, 0),
('1633647281', 'Bambang Kuncoro (Rmh Sw Rahayu', 'default-user.png', 'bkuncoro@gmail.com', '$2y$10$vobBGWKITdB88dp21LcfpeKkQu20B.SIEK4b6pXrD1kDEXZLuGx3m', '', 'Jayapura', 'Rumah Sewa Rahayu (Bambang Kun', 'default-image.png', 'bkuncoro@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-10-07 22:58:35', 1, 0),
('1633647814', 'Sinar Sakti Motor', 'default-user.png', 'sinarsaktimotor@gmail.com', '$2y$10$Y58QpQUepp4NBbTNo0Osmee/yRm4z5Zj1DWmMYYCgjAedf9f2laSK', '', 'Jayapura', 'Sinar Sakti Motor', 'default-image.png', 'sinarsaktimotor@gmail.com', '', 'Jayapura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-10-07 23:08:51', 1, 0),
('1633648260', 'Hikmah', 'default-user.png', 'rmhswhikmah@gmail.com', '$2y$10$QXnFFywmYQCkdygKpsdV2.pH397Ax/DmrlDJe9af1ulP45TkL.M1a', '', 'Jayapura', 'Rumah Sewa Hikmah', 'default-image.png', 'rmhswhikmah@gmail.com', '', 'Jayapura', 2, '', '', '', '', '', '', '', '', '', 0, '2021-10-07 23:12:59', 1, 0),
('1634781233', 'BoB Cafe and Convention', 'default-user.png', 'bobcafe@gmail.com', '$2y$10$WdddO72qhhxeU606tMyL1O7HjvXLQrKsz4hfIsUkSvpXopKJeQ.iy', '', 'Jl. Raya Abepura', 'Black on Bex Cafe and Conventi', 'default-image.png', 'bobcafe@gmail.com', '', 'Jl. Raya Abepura', 4, '', '', '', '', '', '', '', '', '', 0, '2021-10-21 01:58:32', 1, 0),
('1634790444', 'Hj. Nurlela', 'default-user.png', 'rsibunurlela@gmail.com', '$2y$10$eThJArBo6D4eB.BFLaK0BOZwvm5RTFDEF1lM4x/EPS5ch1L9L3eq2', '', 'Jl. Pantai Enggros', 'Rumah Sewa Nurlela', 'default-image.png', 'rsibunurlela@gmail.com', '', 'Jl. Pantai Enggros', 2, '', '', '', '', '25 kamar', '', '', '', '', 0, '2021-10-21 04:31:42', 1, 0),
('1634790723', 'Ibu Herawati', 'default-user.png', 'rsherawati@gmail.com', '$2y$10$uNgc6O/Nkpx23QeOBC7GreEkGV/EVYwISTeqJaSZVavQLtZy9KThS', '085243330007', 'Belakang Hotel Bunga Youtefa', 'Rumah Sewa Ibu Herawati', 'default-image.png', 'rsherawati@gmail.com', '085243330007', 'Belakang Hotel Bunga Youtefa', 2, '', '', '', '', '60 kamar', '', '', '', '', 0, '2021-10-21 04:40:53', 1, 0),
('1634791321', 'Bpk La Iki', 'default-user.png', 'rslaiki@gmail.com', '$2y$10$QTINaME/FcNW4fHVrCL5MOlYrpf.8kvoxzYhwpAUvbxL34mA/5SFa', '081240052287', 'Jl. Pasar Youtefa', 'Rumah Sewa La Iki', 'default-image.png', 'rslaiki@gmail.com', '081240052287', 'Jl. Pasar Youtefa', 2, '', '', '', '', '68 kamar', '', '', '', '', 0, '2021-10-21 04:46:08', 1, 0),
('1634791620', 'Bpk Khadir Tinri', 'default-user.png', 'rsktinri@gmail.com', '$2y$10$1tUM6MgsspyCtpl6ahx.JO.J8yPq5cdWg1HlxxndR5ZeSxA0Z/Ec6', '0851977040141', 'Jl. Nuri Kel. Awiyo', 'Rumah Sewa Khadir Tinri', 'default-image.png', 'rsktinri@gmail.com', '0851977040141', 'Jl. Nuri Kel. Awiyo', 2, '', '', '', '', '15 kamar', '', '', '', '', 0, '2021-10-21 04:50:46', 1, 0),
('1634791882', 'Ibu Hikma', 'default-user.png', 'rshikma@gmail.com', '$2y$10$swgljDY2fHUqTghnaiMDtulW0fKm9GhtA9IHvItPlOENoYTz2zUae', '082238039334', 'Jl. Belakang Pompa Bensin Entrop', 'Rumah Sewa Ibu Hikma', 'default-image.png', 'rshikma@gmail.com', '082238039334', 'Jl. Belakang Pompa Bensin Entrop', 2, '', '', '', '', '', '', '', '', '', 0, '2021-10-21 04:52:52', 0, 0);
INSERT INTO `wajib_pajak` (`id_wp`, `pemilik_nama`, `pemilik_foto`, `pemilik_email`, `pemilik_kata_sandi`, `pemilik_telp`, `pemilik_alamat`, `usaha_nama`, `usaha_logo`, `usaha_email`, `usaha_telp`, `usaha_alamat`, `usaha_kategori`, `usaha_luas_bangunan`, `usaha_luas_lahan`, `usaha_izin`, `usaha_dokumen`, `usaha_kos_jml_kmr`, `usaha_kos_jml_penghuni`, `usaha_rm_jml_kursi`, `usaha_keterangan`, `usaha_distrik`, `created_by`, `created_at`, `is_active`, `hapus`) VALUES
('1634791985', 'Bpk Arifin', 'default-user.png', 'rsarifin@gmail.com', '$2y$10$kS3aU9BFFPiPnpsbHUlDyu9CHHwQvbtXUVBMZtQ58Y1n/rOWPA26q', '', 'Jl. Baru Belakang SMK N 5', 'Rumah Sewa Bpk Arifin', 'default-image.png', 'rsarifin@gmail.com', '', 'Jl. Baru Belakang SMK N 5', 2, '', '', '', '', '104', '', '', '', '', 0, '2021-10-21 04:55:00', 0, 0),
('1635743492', 'Elly Tan/Imbiri', 'default-user.png', 'ellytanimbiri@gmail.com', '$2y$10$YX9BzbuyqWnde/JT6V9xsu6JX.tuozjQQpLyiogv7pYWQjCWqGOF.', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 'Rumah Kos Elly Tan/Imbiri', 'default-image.png', 'ellytanimbiri@gmail.com', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 2, '', '', '', '', '24', '45', '', '', '', 0, '2021-11-01 05:15:44', 1, 0),
('1635743942', 'Samia', 'default-user.png', 'samia@gmail.com', '$2y$10$soKQPDjDgj5.JdqkrCTfpub.Zt4rmg.yDJ/.u80JuHbpo/oeD.4Bi', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 'Rumah Kos Samia', 'default-image.png', 'samia@gmail.com', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 2, '', '', '', '', '15', '50', '', '', '', 0, '2021-11-01 05:20:55', 1, 0),
('1635744619', 'Korneles Raubaba', 'default-user.png', 'kraubaba@gmail.com', '$2y$10$xh0dl8g2o7Z4Ud4NXiSGFOwODItjFqqKocmvPwmeaPh62ELUgKq8G', '', 'Jl. Tanjung Ria Kampung Baru Dok IX', 'Rumah Kos Korneles Raubaba', 'default-image.png', 'kraubaba@gmail.com', '', 'Jl. Tanjung Ria Kampung Baru Dok IX', 2, '', '', '', '', '12', '29', '', '', '', 0, '2021-11-01 05:32:51', 1, 0),
('1635744789', 'H. Muh. Amran', 'default-user.png', 'hmamran@gmail.com', '$2y$10$cC7ry/Mt27SJlahp1qm8/uHEIIAvEK2xYlEYa4wJquTrFsSmamBWm', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 'Rumah Kos H. Muh Amran', 'default-image.png', 'hmamran@gmail.com', '', 'Jl. Tanjung Ria Pasar Inpres Dok IX', 2, '', '', '', '', '18', '33', '', '', '', 0, '2021-11-01 05:36:43', 1, 0),
('1635745028', 'Samsudin (Munar)', 'default-user.png', 'samsudinmunar@gmail.com', '$2y$10$bdCq7p6tTyCzisGH1gUMzOjMiU6UTYkVlCNbxxw285tWKWCCwpn4e', '', 'Jl. Tanjung Ria Depan P&P Dok IX', 'Rumah Kos Samsudin (Munar)', 'default-image.png', 'samsudinmunar@gmail.com', '', 'Jl. Tanjung Ria Depan P&P Dok IX', 2, '', '', '', '', '11', '23', '', '', '', 0, '2021-11-01 05:40:20', 1, 0),
('1635745280', 'Lamidi', 'default-user.png', 'lamidi@gmail.com', '$2y$10$AMKzB/Aug/0Da.aQ6GzbnOTXhKAPDkFujTVjqQDN78N6Lhac0SYc.', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 'Rumah Kos Lamidi', 'default-image.png', 'lamidi@gmail.com', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 2, '', '', '', '', '10', '22', '', '', '', 0, '2021-11-01 05:43:23', 1, 0),
('1635745465', 'Wa Gadaria', 'default-user.png', 'wagadaria@gmail.com', '$2y$10$8RNgeF81NMmn6MCnHTFFcuNrW088vMIYgXfrzYwphi1rIsonGxPXe', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 'Rumah Kos Wa Gadaria', 'default-image.png', 'wagadaria@gmail.com', '', 'Jl. Tanjung Ria Dok IX Depan P&P', 2, '', '', '', '', '19', '57', '', '', '', 0, '2021-11-01 05:46:36', 1, 0),
('1635745632', 'Suprianto', 'default-user.png', 'supriantodok9@gmail.com', '$2y$10$QjvZ7om5hkTjxWNN5/VWWOp5sqpReYnl0ZrXUVWpwEI6DOduEsmt.', '', 'Jl. Tanjung Ria Dok IX Depan Dinas Sosial', 'Rumah Kos Suprianto', 'default-image.png', 'supriantodok9@gmail.com', '', 'Jl. Tanjung Ria Dok IX Depan Dinas Sosial', 2, '', '', '', '', '11', '38', '', '', '', 0, '2021-11-01 05:49:48', 1, 0),
('1635745811', 'H. Anwar/Afdal', 'default-user.png', 'hanwardok9@gmail.com', '$2y$10$mA8AFXY5vuG6lPnk1DvMH.TkfUnuvvYujgFY9UBiKDar5CpI4JBza', '', 'Jl. Tanjung Ria Dok IX Panca Karsa', 'Rumah Kos H. Anwar/Afdal', 'default-image.png', 'hanwardok9@gmail.com', '', 'Jl. Tanjung Ria Dok IX Panca Karsa', 2, '', '', '', '', '12', '34', '', '', '', 0, '2021-11-01 05:53:18', 1, 0),
('1635746021', 'Yafeth Ansanay', 'default-user.png', 'yansanay@gmail.com', '$2y$10$KT1gBzl7rVdo4YkP1Dzs5OMDMowkHAwrOtSxV4Ojr1kYFdSZjS1cS', '', 'Jl. Tanjung Ria Dok IX Kali', 'Rumah Kos Yafeth Ansanay', 'default-image.png', 'yansanay@gmail.com', '', 'Jl. Tanjung Ria Dok IX Kali', 2, '', '', '', '', '16', '24', '', '', '', 0, '2021-11-01 05:56:23', 1, 0),
('1637548436', 'Hotel Relat Indah', 'default-user.png', 'relat@gmail.com', '$2y$10$WADh9dJnc04e1.K7425vb.eq1iJ9J13RcLK1Fwza0AHgTgCZKu5jO', '', 'Jayapura', 'Hotel Relat Indah', 'default-image.png', 'relat@gmail.com', '', 'Jayapura', 3, '', '', '', '', '', '', '', '', '', 0, '2021-11-22 02:37:25', 1, 0),
('1642560823', 'Bpk. Mika', 'default-user.png', 'mika@gmail.com', '$2y$10$R/q2rDpLaaWk2OVt.04x9OiS.nH8os5YwBboDgX3/BsjvkabcEk.u', '08114883050', 'Belakang Koramil', 'Rumah Kos Bpk. Mika', 'default-image.png', 'mika@gmail.com', '08114883050', 'Belakang Koramil', 2, '', '', '', '', '10', '', '', '', '', 0, '2022-01-19 02:57:28', 1, 0),
('1642561148', 'Petrus Pasereng', 'default-user.png', 'petruspasereng@gmail.com', '$2y$10$8ZtsI9wCtA0wlk0sBAF46.HBvcUheprxPkYV9qh75iPdf0KVfji5m', '085322778251', 'Belakang Koramil', 'Rumah Kos Petrus Pasereng', 'default-image.png', 'petruspasereng@gmail.com', '085322778251', 'Belakang Koramil', 2, '', '', '', '', '40', '', '', '', '', 0, '2022-01-19 03:02:24', 1, 0),
('1642565369', 'Yusuf Parinding', 'default-user.png', 'yusufparinding@gmail.com', '$2y$10$0r0Mi3d1cuFU.HfR.2H12Ogki9Sv.IYj9u2ilxhCn7ZwR3hY4tSTC', '085344022208', 'Belakang Koramil', 'Rumah Kos Yusuf Parinding', 'default-image.png', 'yusufparinding@gmail.com', '085344022208', 'Belakang Koramil', 2, '', '', '', '', '20', '', '', '', '', 0, '2022-01-19 04:12:35', 1, 0),
('1642566187', 'Suriani', 'default-user.png', 'kossuriani@gmail.com', '$2y$10$7JfcIZuGGb9QfroAaKfaUu09aDzi7tEJFk4bmZkrY.qia7Mz7QZyi', '081247542091', 'Jl. Pipa Air Abepura', 'Rumah Kos Suriani', 'default-image.png', 'kossuriani@gmail.com', '081247542091', 'Jl. Pipa Air Abepura', 2, '', '', '', '', '', '', '', '', '', 0, '2022-01-19 04:25:47', 1, 0),
('1642567361', 'Bpk. Edi', 'default-user.png', 'kosdebora@gmail.com', '$2y$10$gZ.ZUMKQcRN7xHg6WkgSPOnBEvXAq.vcz1GARAg4R9K1.pZFI9wY6', '081344001777', 'Belakang Koramil', 'Rumah Kos Ibu Debora', 'default-image.png', 'kosdebora@gmail.com', '081344001777', 'Belakang Koramil', 2, '', '', '', '', '20', '28', '', '', '', 0, '2022-01-19 04:45:11', 1, 0),
('1642567644', 'Bpk. Yansen', 'default-user.png', 'kospagawak@gmail.com', '$2y$10$M4pgKdgTAASyKOHuB1toI.nBsCMF7Nw0LdNoUCiIcoluw.lDuIcta', '085254008808', 'Belakang Koramil', 'Rumah Kos Ibu Pagawak', 'default-image.png', 'kospagawak@gmail.com', '085254008808', 'Belakang Koramil', 2, '', '', '', '', '16', '', '', '', '', 0, '2022-01-19 04:51:31', 1, 0),
('1642568230', 'Dharmawati', 'default-user.png', 'dharmawati@gmail.com', '$2y$10$AmmMKPk79gY3bRZuVLfpnOy8wan8iF1Endh.bQozTMLgv9czdScgi', '082399148165', 'Belakang Koramil', 'Rumah Kos Dharmawati', 'default-image.png', 'dharmawati@gmail.com', '082399148165', 'Belakang Koramil', 2, '', '', '', '', '10', '', '', '', '', 0, '2022-01-19 05:00:32', 1, 0),
('1642568620', 'Bpk. Saldi', 'default-user.png', 'saldi@gmail.com', '$2y$10$TPK/gSLtbYXOEe8EerK/qef26bcbv2CWfJ.B0icuYg6x1PWrsCcX2', '081344018615', 'Belakang Koramil', 'Rumah Kos Bpk. Saldi', 'default-image.png', 'saldi@gmail.com', '081344018615', 'Belakang Koramil', 2, '', '', '', '', '', '', '', '', '', 0, '2022-01-19 05:05:30', 1, 0),
('1642568877', 'Ibu Asriyani', 'default-user.png', 'asriyani@gmail.com', '$2y$10$3bp17wBSVI9oZLJJznt9p.6gPpAgPLanMgEVFOc4V7VmeosLlAhZ2', '081344055358', 'RT 02 Tanah Hitam', 'Rumah Kos Ibu Sri', 'default-image.png', 'asriyani@gmail.com', '081344055358', 'RT 02 Tanah Hitam', 2, '', '', '', '', '26', '24', '', '', '', 0, '2022-01-19 05:11:10', 1, 0),
('1642569167', 'Hj. Chia', 'default-user.png', 'hjchia@gmail.com', '$2y$10$GEn5978pE5qtWO8ouP0xf.YG6MI9EYWH7QEQcHtNEQpqKv8ApDJ0W', '082248951810', 'RT 01 Tanah Hitam', 'Rumah Kos Hj. Chia', 'default-image.png', 'hjchia@gmail.com', '082248951810', 'RT 01 Tanah Hitam', 2, '', '', '', '', '', '', '', '', '', 0, '2022-01-19 05:15:08', 1, 0),
('1642569453', 'Ibu Jumriah', 'default-user.png', 'jumriah@gmail.com', '$2y$10$VbeU3ry6EUZFLFLzAKY./uSf.ns5Kxf6ENVqE89kWJ1jg1IDTY3b.', '082239288581', 'Jl. Kelor, RT 03 Tanah Hitam', 'Rumah Kos Ibu Jumriah', 'default-image.png', 'jumriah@gmail.com', '082239288581', 'Jl. Kelor, RT 03 Tanah Hitam', 2, '', '', '', '', '12', '12', '', '', '', 0, '2022-01-19 05:22:29', 1, 0),
('1642569889', 'Ibu Inri', 'default-user.png', 'inri@gmail.com', '$2y$10$yL4csrv6cpfN8oN/C8UmEu.ja8zi1y6VV2.MC6m44VvG78mZEy8gy', '085244272703', 'RT 04 Tanah Hitam', 'Rumah Kos Ibu Inri', 'default-image.png', 'inri@gmail.com', '085244272703', 'RT 04 Tanah Hitam', 2, '', '', '', '', '10', '10', '', '', '', 0, '2022-01-19 05:27:16', 1, 0),
('1642570153', 'Ibu Sitohang', 'default-user.png', 'kossitohang@gmail.com', '$2y$10$udPXpJDI0T2Y779o4qdmr.Ufk9U5aBxtAdySPZSRo/hn57.OyUGIi', '082399042590', 'RT 04 RW 02 Tanah Hitam', 'Rumah Kos Ibu Sitohang', 'default-image.png', 'kossitohang@gmail.com', '082399042590', 'RT 04 RW 02 Tanah Hitam', 2, '', '', '', '', '10', '8', '', '', '', 0, '2022-01-19 05:32:24', 1, 0),
('1642570498', 'Esti P. Astuti', 'default-user.png', 'estiastuti@gmail.com', '$2y$10$CzB/HkJvLxonKj3T60ghCumJpZvU1PkcB696JbF/IAK9MiebrV52e', '082399479552', 'RT 02 RW 02 Tanah Hitam', 'Rumah Kos Ibu Esti', 'default-image.png', 'estiastuti@gmail.com', '082399479552', 'RT 02 RW 02 Tanah Hitam', 2, '', '', '', '', '10', '9', '', '', '', 0, '2022-01-19 05:56:16', 1, 0),
('1642637991', 'Laudegeo', 'default-user.png', 'laudegeo@gmail.com', '$2y$10$JBQabmATinrcO7/uvlNTKetIlonISmrIiGnxIEgmCUYphwNTQiEJa', '082198363856', 'RT 01 RW 04 Tanah Hitam', 'Rumah Kos Laudegeo', 'default-image.png', 'laudegeo@gmail.com', '082198363856', 'RT 01 RW 04 Tanah Hitam', 2, '', '', '', '', '10', '10', '', '', '', 0, '2022-01-20 00:23:54', 1, 0),
('1642638731', 'Raja Muliti', 'default-user.png', 'rmuliti@gmail.com', '$2y$10$CSEo0R2aVmwqFecDSI0Ib.53H7YLhFqJjF3JxcGjjmME57UttcQvi', '08524810512', 'Tanah Hitam', 'Rumah Kos R Muliti', 'default-image.png', 'rmuliti@gmail.com', '08524810512', 'Tanah Hitam', 2, '', '', '', '', '12', '', '', '', '', 0, '2022-01-20 00:35:19', 1, 0),
('1642640006', 'Javar', 'default-user.png', 'javar@gmail.com', '$2y$10$Q3h0DUx/cUdMUIPYO5MSCeUFCI/V8eNOKqWl737VNVGHXOlIIp7Um', '081284974031', 'RT 04 RW 01 Tanah Hitam', 'Rumah Kos Javar', 'default-image.png', 'javar@gmail.com', '081284974031', 'RT 04 RW 01 Tanah Hitam', 2, '', '', '', '', '13', '', '', '', '', 0, '2022-01-20 00:55:47', 1, 0),
('1642640306', 'Jumariah', 'default-user.png', 'jumariah@gmail.com', '$2y$10$4cxLbqkFBuXkiPwxWG0vi.PW.f7GVQPdXKyCRraoB9xfUtkpUj3X6', '082297449471', 'RT 01 RW 02 Tanah Hitam', 'Rumah Kos Jumariah', 'default-image.png', 'jumariah@gmail.com', '082297449471', 'RT 01 RW 02 Tanah Hitam', 2, '', '', '', '', '10', '', '', '', '', 0, '2022-01-20 01:00:55', 1, 0),
('1642640785', 'Ibu Hj. Saka', 'default-user.png', 'hjsaka@gmail.com', '$2y$10$Wlea1Gnc.R1hZtJXcNmmuOnLSnH9lMsXuufFnoz8YKvWT6yg3yqmy', '081344507094', 'RT 03 RW 02 Tanah Hitam', 'Rumah Kos Hj. Saka', 'default-image.png', 'hjsaka@gmail.com', '081344507094', 'RT 03 RW 02 Tanah Hitam', 2, '', '', '', '', '', '', '', '', '', 0, '2022-01-20 01:09:55', 1, 0),
('1642641170', 'Asman', 'default-user.png', 'asman@gmail.com', '$2y$10$gUD8jyLS.MX.s34WNt1h.uKkLHJNQqD0QswUTmR92zCIIy8nxH0gi', '082248620894', 'RT 03 RW 03 Tanah Hitam', 'Rumah Kos Asman', 'default-image.png', 'asman@gmail.com', '082248620894', 'RT 03 RW 03 Tanah Hitam', 2, '', '', '', '', '12', '10', '', '', '', 0, '2022-01-20 01:15:21', 1, 0),
('1642641522', 'Hj. Mauli', 'default-user.png', 'hjmauli@gmail.com', '$2y$10$sSNUI7CIMIYbJ2.9Hkah6eEcfne.d94Wik5yTiXU1RQ/cMgDIZr9C', '085254062423', 'Tanah Hitam', 'Rumah Kos Hj. Mauli', 'default-image.png', 'hjmauli@gmail.com', '085254062423', 'Tanah Hitam', 2, '', '', '', '', '16', '14', '', '', '', 0, '2022-01-20 01:20:49', 1, 0),
('1646354960', 'NN', 'default-user.png', 'rmmegarasa@gmail.com', '$2y$10$EJQebfwfmqXiczp7uv3TAOc9YS.0.iktPqDxjjCVZMKTp2shlSr/2', '', 'Jl. Pasar Youtefa Abepura', 'Rumah Makan Mega Rasa', 'default-image.png', 'rmmegarasa@gmail.com', '', 'Jl. Pasar Youtefa Abepura', 2, '', '', '', '', '', '', '', '', '', 0, '2022-03-04 00:52:28', 1, 0),
('1648429126', 'Bpk Wefer', 'default-user.png', 'pencucianampera@gmail.com', '$2y$10$nQdKgK/4k822rYsXBj6ig.EID2kUUyczuOPr2zxjQ.7WqltZC0Hue', '', 'Jl. Pembangunan Ampera', 'Pencucian Ampera', 'default-image.png', 'pencucianampera@gmail.com', '', 'Jl. Pembangunan Ampera', 4, '', '', '', '', '', '', '', '', '', 0, '2022-03-28 01:04:24', 1, 0),
('1648451977', 'Simon Petrus', 'default-user.png', 'cendrakayuindah@gmail.com', '$2y$10$z6CGlNxFcwi2E2YSIyBDSeGN9WEyexe0diUJc6kNqT0.TTRQTcOhC', '', 'Jl. Raya Nafri No. 88 Kelurahan Abepantai Distrik Abepura', 'PT. Cenderawasih Kayu Indah', 'default-image.png', 'cendrakayuindah@gmail.com', '', 'Jl. Raya Nafri No. 88 Kelurahan Abepantai Distrik Abepura', 5, '', '', '', '', '', '', '', '', '', 0, '2022-03-28 07:22:53', 1, 0),
('1648528177', 'Marlinda', 'default-user.png', 'amabelhotel@gmail.com', '$2y$10$uf0SbY5k3h9jxW5jaS4hp.NF38.H3b0bj/y7gFnU95O47nZU73zkq', '', 'Jl. Tugu No. 100 APO Jayapura', 'Amabel Hotel', 'default-image.png', 'amabelhotel@gmail.com', '', 'Jl. Tugu No. 100 APO Jayapura', 4, '', '', '', '', '', '', '', '', '', 0, '2022-03-29 04:32:41', 1, 0),
('1649123764', 'Iis', 'default-user.png', 'nengayu@gmail.com', '$2y$10$..ia5FrpmO.x2G1OJCpQkO44NH5BfSryifcqD4YJkbyr4q2M1h4dy', '081212371504', 'Jl. Baru Hamadi', 'Warung Neng Ayu', 'default-image.png', 'nengayu@gmail.com', '081212371504', 'Jl. Baru Hamadi', 2, '', '', '', '', '', '', '20', 'Hanya menggunakan Air PDAM', '', 0, '2022-04-05 02:00:15', 0, 0),
('1649124045', 'Agus Salim', 'default-user.png', 'prasmanan@gmail.com', '$2y$10$7D1iimK4nf5tgewWvIk59.p46QRFoHN3rIRmo4/1MDxM0ul0YUF.S', '081232552287', 'Hamadi Pelayaran', 'Warung Prasmanan', 'default-image.png', 'prasmanan@gmail.com', '081232552287', 'Hamadi Pelayaran', 2, '', '', '', '', '', '', '20', 'Hanya menggunakan Air PDAM', '', 0, '2022-04-05 02:03:41', 0, 0),
('1649131717', 'Ong Jaya', 'default-user.png', 'miemedan@gmail.com', '$2y$10$WOV/nmhRV5iT2u5SiRUfiueSES9OZc1TwENCZrCjww7NRCSEhdTna', '081243333368', 'Jl. Kelapa II Entrop', 'Warung Mie Medan', 'default-image.png', 'miemedan@gmail.com', '081243333368', 'Jl. Kelapa II Entrop', 2, '', '', '', '', '', '', '50', 'Hanya menggunakan Air PDAM', '', 0, '2022-04-05 04:12:31', 0, 0),
('1649132111', 'Eppy Papu', 'default-user.png', 'timurrasa@gmail.com', '$2y$10$9R0r83agS9IRaSitYUPf0edNyjcdAynTYqzD7tDscO12wrxzTK9s.', '081388096167', 'Jl. Kelapa Dua Entrop', 'Warung Timur Rasa', 'default-image.png', 'timurrasa@gmail.com', '081388096167', 'Jl. Kelapa Dua Entrop', 2, '', '', '', '', '', '', '20', 'Hanya menggunakan Air PDAM', '', 0, '2022-04-05 04:18:16', 0, 0),
('1649132324', 'Asmiaroh', 'default-user.png', 'sotolamongan@gmail.com', '$2y$10$J3eBw.T59HZFE1/0Cvav5.IAA9ZYbgGvsUyWpVzmyRUl9Kfoz0VJi', '085249361770', 'Jl. Kelapa Dua Entrop', 'Warung Soto Lamongan', 'default-image.png', 'sotolamongan@gmail.com', '085249361770', 'Jl. Kelapa Dua Entrop', 2, '', '', '', '', '', '', '15', 'Hanya menggunakan Air PDAM', '', 0, '2022-04-05 04:21:28', 0, 0),
('1649132505', 'Marwansyah', 'default-user.png', 'daengruka@gmailcom', '$2y$10$QkskKwz/8wi09BmNI1Ifhu9b52xWjVbGrYp7nfvD5giejljRDJuo.', '', 'Jl. Baru Hamadi', 'Cotto Daeng Ruka', 'default-image.png', 'daengruka@gmailcom', '', 'Jl. Baru Hamadi', 2, '', '', '', '', '', '', '50', '', '', 0, '2022-04-05 04:24:20', 1, 0),
('1649132672', 'Silvia', 'default-user.png', 'blessing@gmail.com', '$2y$10$UinnRRuCAhQQMi8DdctHw.9kpodntA/6qLOf55qkqbOzBqxwLCTk2', '085298736753', 'Jl. Baru Tobati Pantai Hanadi', 'Warung Blessing', 'default-image.png', 'blessing@gmail.com', '085298736753', 'Jl. Baru Tobati Pantai Hanadi', 2, '', '', '', '', '', '', '10', 'Membeli air', '', 0, '2022-04-05 04:26:28', 0, 0),
('1649132803', 'Septi Istanti', 'default-user.png', 'warungnoken@gmail.com', '$2y$10$NgXVPBdo0JrKCHcfHdEFj.MpfucGWYZjCeDrmUEiDYvFfszF.li.C', '081237880547', 'Jl. Baru Tobati Pantai Hamadi', 'Warung Noken', 'default-image.png', 'warungnoken@gmail.com', '081237880547', 'Jl. Baru Tobati Pantai Hamadi', 2, '', '', '', '', '', '', '20', 'Membeli air', '', 0, '2022-04-05 04:29:16', 0, 0),
('1649732079', 'Riyanto Hartoyo', 'default-user.png', 'gudangdjarum@gmail.com', '$2y$10$OVcDm82nBq9L7sVjII7ji.Hzxie6bA81j8YoF895NaWyaQCxkBFqO', '', 'Jl. Raya Abepura', 'PT. Djarum Berkedudukan di Kud', 'default-image.png', 'gudangdjarum@gmail.com', '', 'Jl. Raya Abepura', 4, '2643,97', '', '', '', '', '', '', '', '', 0, '2022-04-12 02:57:04', 1, 0),
('1650886341', 'SaCode Wajib Pajak', 'default-user.png', 'sacode.wajibpajak@sacode.web.id', '$2y$10$HexOFObEAwhzg44Kk32o5erqsz6fCtg8.c46MDBrqt.p0YNdwdCYq', '082199558191', 'Expo, Waena', 'SaCode Wajib Pajak', 'default-image.png', 'sacode.wajibpajak@sacode.web.id', '082199558191', 'Expo, Waena', 1, '', '', '', '', '', '', '', '', '', 0, '2022-04-25 11:33:40', 0, 0),
('WP25052021021', 'Ruben', 'default-user.png', 'rubenexpo@gmail.com', '$2y$10$ebR2yBeUBwPSepMjRIVWv.enMmqii3Pf5RP.uEfBjxk1HrGIwNGau', '08124847899', 'Jl.Belut Expo', 'Rumah Kos Ruben', 'default-image.png', 'rubenexpo@gmail.com', '08124847899', 'Jl.Belut Expo', 2, '0', '0', 'Tidak Ada', 'Tidak Ada', '6', '10', '', '', '', 0, '2021-05-25 05:33:50', 1, 0),
('WP25052021023', 'Siti Rahma', 'default-user.png', 'sitirahma@gmail.com', '$2y$10$crDPvwkericLf8neh4YfOuCvXb/qUY/EXKRvPw9ZBZX74X9i1d/zK', '085254165755', 'Kompleks KUD Expo', 'Rumah Kos Siti Rahma', 'default-image.png', 'sitirahma@gmail.com', '085254165755', 'Kompleks KUD Expo', 2, '', '', '', '', '18', '65', '', '', '', 0, '2021-05-25 05:51:51', 1, 0),
('WP25052021093', 'Ani', 'default-user.png', 'animelatiputih@gmail.com', '$2y$10$Z6hKl9hpN2QJTfZo5Fu7qOjyjCVQZ4iZ71MYF3spw6C/CLRV8s9jK', '081344503119', 'Jl. Belut Expo Timung Melati Putih', 'Rumah Kos Melati Putih', 'default-image.png', 'animelatiputih@gmail.com', '081344503119', 'Jl. Belut Expo Timung Melati Putih', 2, '0', '0', 'Tidak Ada', 'Tidak Ada', '16', '48', '', '', '', 0, '2021-05-25 05:47:50', 1, 0),
('WP25052021094', 'Bahkri', 'default-user.png', 'bahkri@gmail.com', '$2y$10$q.NO1csYNXfswY2mnVOSZuFoZq1iWJ8os9r3tF9uYC2PQH1YPQkbC', '082238594569', 'jl.karang 5', 'Rumah Kos Bahkri', 'default-image.png', 'bahkri@gmail.com', '082238594569', 'jl.karang 5', 2, '', '', '', '', '16 kamar', '64 orang', '', '', '', 0, '2021-05-25 05:53:54', 1, 0),
('WP25052021095', 'Yunus', 'default-user.png', 'yunuswaena@gmail.com', '$2y$10$ejNVPIlh0rnmSz/U7k8IUO33Z9Pv.SqE183xgFheQLXWqm11.mVJ6', '', 'Jl. Gelanggang Remaja', 'Rumah Kos Yunus', 'default-image.png', 'yunuswaena@gmail.com', '', 'Jl. gelanggang Remaja', 2, '', '', 'Ada', 'Tidak Ada', '24', '48', '', '', '', 0, '2021-05-25 05:56:52', 1, 0),
('WP25052021096', 'Ibu Dian', 'default-user.png', 'dian@gmail.com', '$2y$10$Vz87NDJZ9ym4E7AmcfJlIu40coHdaB/6RLbBr/G/2u21lCOZkR8m2', '08124851111', 'jl.karang 3', 'Rumah Kos Ibu Dian', 'default-image.png', 'dian@gmail.com', '08124851111', 'jl.karang 3', 2, '', '', '', '', '20 kamar', '40 orang', '', '', '', 0, '2021-05-25 05:58:51', 1, 0),
('WP25052021097', 'Evi', 'default-user.png', 'evi@gmail.com', '$2y$10$9WM/iEJCjbSbLlBlsJ4GJ.j8oNFV4B8f9pmdzslNSypz0tcdOd5TS', '', 'Jl. yoka', 'Rumah Kos Evi', 'default-image.png', 'evi@gmail.com', '', 'Jl. yoka', 2, '', '', '', 'Tidak Ada', '12', '40', '', '', '', 0, '2021-05-25 06:00:29', 1, 0),
('WP25052021098', 'Santoso', 'default-user.png', 'santoso@gmail.com', '$2y$10$e8lYIk8G/Miv7qhZDu5Uw.rwZBKfF.43i3HLHrUTwLCd0jOXgRNu2', '085243981351', 'jl.karang 5', 'Rumah Kos Santoso', 'default-image.png', 'santoso@gmail.com', '085243981351', 'jl.karang 5', 2, '', '', '', '', '30 kamar', '60 orang', '', '', '', 0, '2021-05-25 06:01:37', 1, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1403;

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
