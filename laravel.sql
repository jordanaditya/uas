-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 12:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `featured_image`, `created_at`, `updated_at`, `author_name`, `category`) VALUES
(10, '20+ Smartphone 5G Resmi Dijual di Indonesia Tahun 2020', 'Nah, mungkin diantara kalian banyak yang saat ini sedang mencari smartphone baru, dan tak ada salahnya memilih smartphone yang sudah mendukung jaringan 5G. Meskipun saat ini, jaringan 5G secara komersil memang belum ada di Indonesia, tetapi akan jadi benefit tersendiri di waktu mendatang kalau smartphone yang kita gunakan sudah mendukung jaringan 5G.  Tapi tentunya kita tidak bisa asal memilih smartphone yang mendukung jaringan 5G. Pastikan memilih smartphone yang sudah tersedia secara resmi di Indonesia, karena pasti kita tidak ingin membeli smartphone mahal-mahal, namun tidak bisa terkoneksi ke jaringan selular maupun internet, karena IMEI tidak terdaftar secara resmi.     Berikut ini tim Jagat Review akan memberikan daftar smartphone yang sudah 5G ready, dan telah tersedia secara resmi di Indonesia. Buat kalian yang penasaran, dan mungkin sedang berniat meminang smartphone baru, simak daftar lengkapnya berikut ini!', 'images/5wb1GbmRQerPAnulrkyyNVtjxSK4jz5781tYfRta.jpg', '2020-12-27 20:29:24', '2020-12-28 02:55:10', 'tretan', 'Technology'),
(11, 'Tips Foto Produk Mudah, Pakai Samsung Galaxy A21s', 'Nah, mungkin diantara kalian banyak yang saat ini sedang mencari smartphone baru, dan tak ada salahnya memilih smartphone yang sudah mendukung jaringan 5G. Meskipun saat ini, jaringan 5G secara komersil memang belum ada di Indonesia, tetapi akan jadi benefit tersendiri di waktu mendatang kalau smartphone yang kita gunakan sudah mendukung jaringan 5G.  Tapi tentunya kita tidak bisa asal memilih smartphone yang mendukung jaringan 5G. Pastikan memilih smartphone yang sudah tersedia secara resmi di Indonesia, karena pasti kita tidak ingin membeli smartphone mahal-mahal, namun tidak bisa terkoneksi ke jaringan selular maupun internet, karena IMEI tidak terdaftar secara resmi.     Berikut ini tim Jagat Review akan memberikan daftar smartphone yang sudah 5G ready, dan telah tersedia secara resmi di Indonesia. Buat kalian yang penasaran, dan mungkin sedang berniat meminang smartphone baru, simak daftar lengkapnya berikut ini!', 'images/5MankxFjNq0IP9xcVwSPo9bAfsaEiTwILQmpiifc.jpg', '2020-12-28 06:59:31', '2020-12-28 06:59:31', 'tretan', 'Technology'),
(12, 'Instagram sebagai Budaya Populer dan Khalayak di Dalamnya', 'Instagram merupakan salah satu bagian dari media dan merupakan aplikasi media sosial yang sedang populer di kalangan masyarakat khususnya remaja, untuk berbagi foto bahkan hal pribadi sekalipun. Bila kita kaitkan dengan media sosial yaitu Instagram, kebanyakan penggunanya masuk ke dalam khalayak aktif, karena memainkan peran aktif untuk memilih dan menggunakan media tersebut. Khalayak juga diberikan ruang yang bebas untuk menyampaikan pendapatnya, memberitahukan apa yang sedang dipikirkan, atau sekadar mengunggah foto.  Sehingga dapat disimpulkan bahwa khalayak yang menggunakan Instagram adalah partisipan aktif dalam membangun dan menginterpretasikan makna atas apa yang mereka baca, dengar dan lihat.', 'images/a9RXGLCXCNMJwXTOOhGZcnMnNVNfQF4PQEFvVEzc.jpg', '2020-12-28 07:27:20', '2020-12-28 07:27:20', 'tretan', 'Culture'),
(13, 'Mengenal Kosmologi dan Alam Semesta Melalui Wayang dan Filosofi Jawa', 'Omah Budaya Kahangnan menjadi salah satu rumah budaya Jawa yang berada di Daerah Istimewa (DI) Yogyakarta. Tempat ini bisa dibilang tidak biasa.   Lokasinya jauh dari keramaian, sekitar 15 kilometer dari pusat Kota Yogyakarta. Tepatnya di Desa Pringgading, Guwosari, Pajangan, Bantul.  “Omah Budaya Kahangnan ini didirikan dengan semangat pentingnya budaya dalam bermasyarakat, berenegara, serta berjati diri, sebab identitas sangat penting,” ujar Hangno, dalam peringatan ulang tahun pertama Omah Budaya Kahangnan, Rabu, 19 Agustus 2020.', 'images/9UBMJVXEIUapxUco85jbrPoaCxWMcDxcjlbx0Seu.webp', '2020-12-28 07:29:41', '2020-12-28 07:30:17', 'tretan', 'Culture'),
(14, 'Perbedaan Kalium dan Kalsium, Sama-Sama Penting tapi Beda Peran', 'Meskipun namanya mirip, kalium dan kalsium adalah dua mineral yang berbeda. Kedua mineral ini memiliki peran yang sangat penting untuk menjaga kesehatan tubuh kita. Berikut adalah sejumlah perbedaan kalium dan kalsium yang perlu Anda ketahui.  Mengenal perbedaan kalium dan kalsium Untuk memahami lebih jauh seputar perbedaan kalium dan kalsium, mari kita kenali fungsi kedua mineral ini terlebih dahulu. Apa itu kalium? Perbedaan kalium dan kalsium yang sangat penting untuk diketahui Kalium memiliki nama lain potassium Kalium adalah mineral ketiga paling banyak di dalam tubuh kita. Mineral ini membantu tubuh untuk mengontrol cairan, mengirim sinyal saraf, dan meregulasi kontraksi otot. Sekitar 98 persen kalium tersimpan di dalam sel tubuh kita, dari total jumlah tersebut 80 persen dapat ditemukan di sel otot, sedangkan 20 persen lainnya bisa ditemukan di tulang, organ hati, dan sel darah merah. Saat masuk ke dalam tubuh, kalium akan bertindak sebagai elektrolit. Ada banyak fungsi kalium yang penting untuk kesehatan tubuh, di antaranya: Menurunkan tekanan darah dan menjaga kesehatan jantung Tekanan darah bisa meningkat dan membahayakan kesehatan jantung jika tubuh kekurangan kalium. Sebuah studi membuktikan, mereka yang mengonsumsi 4,069 miligram kalium setiap harinya mengalami penurunan risiko kematian akibat penyakit jantung iskemik sebanyak 49 persen. Menjaga kesehatan tulang dan otot Mengonsumsi makanan berasam tinggi dipercaya dapat memicu asidosis. Kondisi ini dapat menyebabkan ekskresi nitrogen, hilangnya kepadatan mineral di dalam tulang, hingga mengecilnya otot. Untuk menghindarinya, Anda bisa memenuhi kebutuhan kalium harian supaya kesehatan tulang dan otot terjaga. Mengonsumsi kalium secara rutin bahkan terbukti secara ilmiah dapat meningkatkan kepadatan tulang. Penting untuk sistem saraf Sistem saraf memiliki tugas untuk menyampaikan pesan antara otak dan berbagai organ tubuh. Pesan ini disampaikan dalam bentuk impuls saraf untuk mengatur kontraksi otot, detak jantung, refleks, dan fungsi tubuh lainnya. Kalium membantu tubuh untuk bisa menjaga fungsi sistem saraf. Saat kekurangan kalium, tubuh akan kesulitan menghasilkan impuls saraf. Untuk memaksimalkan berbagai macam fungsi kalium di atas, setidaknya Anda harus mengonsumsi 4.700 miligram kalium per hari. Untuk mencukupi angka kecukupan gizi (AKG) harian kalium Anda, cobalah untuk mengonsumsi berbagai macam makanan yang mengandung kalium, seperti alpukat, melon, pisang, ubi, tomat, hingga kacang kedelai. Apa itu kalsium? Perbedaan kalium dan kalsium sangat penting untuk diketahui Kalsium dapat ditemukan pada produk susu Kalsium adalah mineral terbanyak yang ada di dalam tubuh manusia. Sekitar 99 persen kalsium tersimpan di dalam gigi dan tulang. Inilah alasan mengapa kalsium memiliki fungsi yang sangat penting untuk menjaga tulang dan gigi kita. Selain kesehatan tulang, kalsium juga memiliki peran penting dalam menjaga komunikasi antara otak dengan bagian tubuh lainnya. Selain itu, mineral ini juga berperan dalam pergerakan otot dan fungsi kardiovaskuler (jantung dan pembuluh darah). Untuk mengetahui perbedaannya dengan kalium, berikut adalah sejumlah fungsi kalsium untuk kesehatan tubu. Menjaga kesehatan tulang Kalsium berperan penting untuk perkembangan, pertumbuhan, dan pemeliharaan tulang. Pada anak-anak, kalsium dapat membantu perkembangan tulang mereka. Saat beranjak dewasa, kalsium akan memelihara dan menjaga kepadatan tulang. Untuk melakukan tugasnya dalam menjaga kesehatan tulang, kalsium membutuhkan bantuan vitamin D. Vitamin ini akan membantu tubuh untuk menyerap kalsium dengan lebih baik. Mengatur kontraksi otot Kalsium membantu tubuh mengatur kontraksi otot. Saat saraf merangsang otot, tubuh akan melepaskan kalsium untuk membantu protein di dalam otot sehingga otot bisa berkontraksi. Di sisi lain, otot akan relaksasi saat tubuh memompa kalsium keluar dari otot. Menjaga sistem kardiovaskuler Setiap otot di dalam tubuh membutuhkan kalsium untuk berkontraksi, tak terkecuali otot jantung. Otot jantung tak bisa bekerja dengan baik tanpa adanya kalsium. Ditambah lagi, kalsium juga sangat dibutuhkan tubuh untuk proses pembekuan darah.', 'images/YkAaaKORfGEYP9y1q3vvWedQH5MTidPaSpmDmoig.jpg', '2020-12-28 07:33:39', '2020-12-28 07:33:39', 'tretan', 'Health'),
(15, 'Sedih Ketika Tak Dihargai? Ini 7 Jurus Agar Tetap Semangat', 'Bayangkan apa rasanya jika semua usaha yang telah dilakukan tidak membuahkan reaksi orang sesuai ekspektasi? Sangat mungkin muncul kekecewaan ketika tak dihargai. Namun, atasi hal ini dengan belajar memegang kendali dan nilai diri di luar penilaian orang lain.  Merasa tidak dianggap ini bisa jadi menyakitkan karena datangnya dari reaksi orang-orang terdekat atau familiar. Ada rasa dikhianati. Cara pertama untuk lepas dari pikiran negatif ini adalah dengan menghapus pikiran bahwa selama ini belum melakukan hal yang tepat. Cara agar tetap semangat ketika tak dihargai Merasa tidak dihargai adalah hal yang sangat manusiawi. Namun, jangan patah semangat. Ada beberapa strategi yang bisa dilakukan untuk membuat suasana hati menjadi lebih nyaman, seperti: 1. Hargai diri sendiri perempuan tersenyum Menghargai diri sendiri akan membuat Anda merasa bahagia Orang pertama yang bisa menghargai Anda adalah diri sendiri. Terapkan prinsip ini dalam melakukan hal apapun. Beri apresiasi atas apa yang dilakukan dan jangan ukur keberhasilan dari bagaimana reaksi orang lain. Terlebih pada dasarnya, cara orang mengekspresikan rasa terima kasih mereka berbeda-beda. Ada yang bisa mengungkapkannya secara meluap-luap. Di sisi lain, ada juga yang tidak mengucapkan apapun. Namun, hal semacam ini tidak akan lagi menjadi masalah ketika apresiasi datang dari diri sendiri. 2. Tetap percaya diri Sangat berkaitan dengan strategi pertama, pupuk rasa percaya diri sebaik mungkin. Jangan sampai ketika tak dihargai justru membuat Anda merasa kecil. Bahkan, tidak menutup kemungkinan perasaan ini menimbulkan rasa ingin menutup diri dari orang sekitar. Chin up! Sikap menutup diri justru salah dan menyedihkan. Sebaliknya, tetaplah percaya diri dan anggap diri sendiri sebagai sosok yang penting. Apapun reaksi orang terhadap yang Anda lakukan sebaiknya tidak menjadi penentu bagaimana semangat Anda melakukan berbagai hal. 3. Ubah pola pikir Saat merasa tidak dihargai, pasti akan muncul banyak sekali pikiran negatif. Bukan tidak mungkin, pikiran ini akan menjadi kian liar seiring layaknya bola salju yang menggelinding. Jangan beri ruang bagi pola pikir negatif ini menjadi bahan bakar yang membuat perasaan semakin tidak nyaman. Ganti dengan positive self-talkserta pikiran positif sehingga bisa merasa jauh lebih baik. 4. Fokus pada apa yang diperoleh Setelah melakukan sesuatu, jangan hanya mengukur kesuksesan dari bagaimana respons orang lain. Justru, fokuslah pada apa yang diperoleh setelah melakukannya. Semua hal baik pasti akan memberikan manfaat. Cara ini juga akan membuat seseorang menjadi lebih bersyukur terhadap apa yang sudah dimiliki selama ini. 5. Belajar memegang kendali Persepsi orang lain tentang diri kita belum tentu sama dengan bagaimana sosok Anda sesungguhnya. Untuk itu, jangan biarkan reaksi orang menentukan kebahagiaan Anda. Pegang kendali perasaan ketika harus berinteraksi dengan orang lain. Ingat, bereaksi berlebihan seperti marah hingga menolak berinteraksi dengan orang itu justru memperkeruh suasana. Bahkan ketika situasi sudah berada dalam kendali Anda, masalah semacam ini bisa dikomunikasikan secara terbuka dengan kepala dingin. 6. Pahami bahwa tiap orang berbeda Dalam setiap hubungan, individu yang ada di dalamnya tentu berbeda-beda. Termasuk cara mereka berterima kasih atau menunjukkan apresiasi. Pahami dinamika ini agar tidak mudah merasa down saat merasa tak dihargai. Tak perlu terlalu lama terpaku dengan bagaimana reaksi orang lain karena justru akan menghabiskan tenaga. Lain halnya apabila reaksi ini datang dari pasangan yang berinteraksi setiap harinya. Tak ada salahnya mengomunikasikan apa harapan Anda. Beri ruang untuk mendengarkan apa alasan mereka bersikap demikian, bisa jadi belum pernah terpikirkan oleh Anda sebelumnya. 7. Hargai orang lain dua wanita sedang bercengkerama Terbiasa menghargai orang lain tanpa mengharapkan balasan Berbuat baik akan membuat perasaan jauh lebih bahagia. Termasuk dengan menghargai orang lain, apapun bentuknya. Tersenyum atau berterima kasih kepada petugas penjaga lift, sedikit menundukkan badan saat melewati petugas penyapu jalan, dan hal-hal sederhana lainnya akan membentuk kepuasan dan rasa nyaman di hati.', 'images/N8ee39hAv5ReNkgH5FONFrDMYwIgU6Bilor6AC57.jpg', '2020-12-28 07:34:46', '2020-12-28 07:34:46', 'tretan', 'Health'),
(16, 'Genjot Daya Saing, Sektor Logistik Implementasikan Industri 4.0', 'ektor logistik merupakan salah satu sektor yang berkembang pesat di Indonesia. Sejumlah upaya perbaikan logistik, termasuk melalui pembangunan infrastruktur, membuat kinerja logistik Indonesia meningkat signifikan dalam tiga tahun terakhir.  Perbaikan ini pun membawa Indonesia kini berada di peringkat ke-46 secara global dibandingkan tiga tahun lalu yang bertengger di peringkat ke-63, menurut Indeks Kinerja Logistik Bank Dunia.  Dengan pesatnya perkembangan sektor logistik dan seiring dengan cepatnya kemajuan teknologi, Logisly hadir di Indonesia untuk menjembatani pengguna jasa truk dengan ribuan truk milik pengusaha kecil dan menengah (UKM). Logisly merupakan perusahaan e-forwarding rintisan yang mempertemukan pengguna (shipper) dan penyedia jasa (transporter) logistik.', 'images/Eud2bomrQosFbYz1EZqxuneoq4dswcHKwIhU4dqV.webp', '2020-12-28 07:36:50', '2020-12-28 07:36:50', 'pardede', 'Industry'),
(17, 'Data dan Inovasi, 2 Jurus Penting Revolusi Pertanian di Era Industri 4.0', 'Masuknya politikus muda ke Partai Nasdem membawa angin segar, khususnya pada momentum revolusi industri 4.0 di bidang pertanian. Salah satu politikus milenial Nasdem, Arkanata Akram menilai, ada dua langkah agar pertanian Indonesia memulai revolusinya.  Anggota terpilih DPR periode 2019-2024 dari Kalimantan Utara itu menjelaskan, dua hal yang dimaksud adalah inovasi dan data. Kedua hal tersebut diyakini dapat memodernisasikan pertanian menuju agriculture 4.0 Indonesia.  \"Dengan data yang lengkap dan komprehensif, agar bisa dipetakan lahan-lahan pertanian rakyat yang kecil-kecil dan terpencar. Dengan begitu, kita bisa mengetahui kebutuhan alat industri pertanian apa yang sebenarnya didambakan petani-petani rakyat serta mengetahui potensi yang ada,\" jelas Arkananta dalam diskusi di Jakarta, Selasa (24/9/2019).', 'images/tTPYOBRN9aTDK9uMrzeyS5Lz9A2832fz9hnt5IWw.webp', '2020-12-28 07:37:55', '2020-12-28 07:37:55', 'pardede', 'Industry'),
(18, 'Penjualan Cyberpunk 2077 di Bawah Ekspektasi', 'Membayangkan bahwa salah satu perusahaan video game dengan valuasi terbesar di daratan Eropa bisa mengalami kejatuhan nilai saham yang signifikan seperti saat ini, memang sesuatu yang tidak terbayangkan ketika kita bicara soal CD Projekt Red. Namun masalah yang membelenggu rilis Cyberpunk 2077, terutama untuk versi konsol, yang kemudian diikuti dengan kebijakan refund dan penarikan game dari Plyastation Store, membuat situasi ini jauh lebih serius dari apa yang dibayangkan sebelumnya. CD Projekt Red memang terus berusaha menenangkan kepanikan para investor dengan merilis data penjualan beberapa hari yang lalu. Namun angka ternyata berada di bawah ekspektasi pasar.', 'images/cdhPDoMQQYihz5SwbbwhjQvvsc5vJmrd2NjdX1MZ.webp', '2020-12-28 07:42:34', '2020-12-28 07:42:34', 'pardede', 'Gaming'),
(19, 'Review Cyberpunk 2077: Terjebak Ilusi Korporasi!', 'Game dengan hype terbesar di tahun 2020 ini, tidak ada lagi kalimat yang tepat untuk menjelaskan posisi Cyberpunk 2077. Antisipasi kian meninggi setelah rasa haus untuk mencicipinya secara langsung harus berhadapan dengan “dinding” penundaan rilis beberapa kali, membuat penantian selama 7 tahun terakhir tersebut tidak lagi tertahankan. Di sisi lain, seiring dengan lebih banyaknya informasi dibagi kepada publik, ada ragam ekspektasi yang terbangun di benak gamer soal kira-kira pengalaman gaming seperti apa yang bisa mereka nantikan. Namun sayangnya, rilisnya justru berujung disambut dengan kontroversi, terutama karena ragam masalah teknis yang menghantui rilis di konsol generasi terkini. Nama Cyberpunk 2077 pun berujung tercederai.', 'images/1K5IesasiIrsGGIg43D2LkFtTtLvPRailZb5DdOk.webp', '2020-12-28 07:43:09', '2020-12-28 07:43:09', 'pardede', 'Gaming'),
(20, 'Membuat Bentuk Segitiga Dengan CSS', 'Selamat datang kembali di tutorial css di malasngoding.com. beberapa waktu lalu ada beberapa teman-teman pembaca tutorial di malasngoding.com yang meminta untuk dibuatkan tutorial tentang cara membuat bentuk segita menggunakan CSS.', 'images/eZxfrsLKjY1fBmMOl4TIdRJ7ewLOgbTc4kV1g5X9.png', '2020-12-28 08:09:20', '2020-12-29 20:41:29', 'pardede', 'Programming'),
(21, 'Menampilkan Data Daerah Indonesia PHP MySQLi Ajax', 'Kita akan menampilkan data daerah yang dipilih menggunakan PHP, MySQLi dan ajax, Sehingga data daerah akan tampil secara otomatis tanpa reload, data daerah yang tampil pun akan tampil sesuai dengan susunan nya masing-masing.', 'images/Q05llumOdoyOG8EMRmj9pF9hwf5HWLFGu2m2nbFl.jpg', '2020-12-28 08:11:29', '2020-12-29 20:41:21', 'pardede', 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_22_040018_create_articles_table', 1),
(5, '2020_12_22_114221_modif_table_users', 2),
(6, '2020_12_26_044916_modif_table_articles', 3),
(7, '2020_12_30_090715_create_komentars_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tretan@gmail.com', '$2y$10$bqDLyx3o49PUMv0Y7CUu9O/ILdH.bH/igyA5odh781NhSotRBYuZ.', '2020-12-29 17:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `profile`) VALUES
(2, 'administrator', 'admin@gmail.com', NULL, '$2y$10$CStxrcG5HN4ho2xPM8Vzm.cyxMXGlBaLW7/eHsoT/moCgQbfco1RS', NULL, '2020-12-22 05:20:54', '2020-12-22 05:20:54', 'Administrator', ''),
(3, 'tretan', 'tretan@gmail.com', NULL, '$2y$10$P7dbHgJMd93sCR/Ie.XL..Lt/sILAjuIbFSeYOoNxHiLDWofVSOUO', NULL, '2020-12-25 22:13:49', '2020-12-29 17:55:29', 'User', 'images/oGqDLZNKj4WpT9ewrtVLCnogWgL58gqfsyI2kFKZ.jpg'),
(4, 'pardede', 'pardede@gmail.com', NULL, '$2y$10$sppYLXoRJqu6DGjIxkky8..fUCLu7tfyPqvvk0MSF1Z7T/eiz6Eli', NULL, '2020-12-28 07:35:41', '2020-12-28 07:35:41', 'User', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
