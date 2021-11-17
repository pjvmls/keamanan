-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk user
CREATE DATABASE IF NOT EXISTS `user` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `user`;

-- membuang struktur untuk table user.tbl_admin
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) DEFAULT '0',
  `password` varchar(60) DEFAULT '0',
  `email` varchar(60) DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel user.tbl_admin: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` (`id_user`, `nama_lengkap`, `password`, `email`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;

-- membuang struktur untuk table user.tbl_assurance
CREATE TABLE IF NOT EXISTS `tbl_assurance` (
  `id_assurance` int(5) NOT NULL AUTO_INCREMENT,
  `NIK` varchar(50) DEFAULT NULL,
  `assurance_number` int(20) DEFAULT NULL,
  `assurance_name` varchar(50) DEFAULT NULL,
  `assurance_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_assurance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel user.tbl_assurance: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_assurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_assurance` ENABLE KEYS */;

-- membuang struktur untuk table user.tbl_document
CREATE TABLE IF NOT EXISTS `tbl_document` (
  `id_document` int(5) NOT NULL AUTO_INCREMENT,
  `NIK` varchar(20) NOT NULL,
  `document_name` text NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `filename` text,
  PRIMARY KEY (`id_document`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel user.tbl_document: ~18 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_document` DISABLE KEYS */;
INSERT INTO `tbl_document` (`id_document`, `NIK`, `document_name`, `document_number`, `filename`) VALUES
	(25, '123344', 'nik', '123344', 'Chrysanthemum.jpg'),
	(26, '123344', 'famcard', 'famcard/1234', 'Desert.jpg'),
	(27, '123344', 'certif', '123', 'Hydrangeas.jpg'),
	(28, '123344', 'bpjsketenag', 'bpjskete/123', 'Jellyfish.jpg'),
	(29, '123344', 'bpjs_kesehatan', 'bjskes/123', 'Lighthouse.jpg'),
	(30, '123344', 'other_assurance', 'other/123', 'Penguins.jpg'),
	(31, '123344', 'nik', '123344', 'Chrysanthemum.jpg'),
	(32, '123344', 'famcard', 'famcard/1234', 'Desert.jpg'),
	(33, '123344', 'certif', '123', 'Hydrangeas.jpg'),
	(34, '123344', 'bpjsketenag', 'bpjskete/123', 'Jellyfish.jpg'),
	(35, '123344', 'bpjs_kesehatan', 'bjskes/123', 'Lighthouse.jpg'),
	(36, '123344', 'other_assurance', 'other/123', 'Penguins.jpg'),
	(37, '7561211', 'nik', '7561211', 'Koala.jpg'),
	(38, '7561211', 'famcard', 'sadasd', 'Lighthouse.jpg'),
	(39, '7561211', 'certif', 'asdasd', 'Tulips.jpg'),
	(40, '7561211', 'bpjsketenag', 'sdfdsf', 'Hydrangeas.jpg'),
	(41, '7561211', 'bpjs_kesehatan', '1asasas', 'Lighthouse.jpg'),
	(42, '7561211', 'other_assurance', 'sasass', 'Jellyfish.jpg'),
	(43, '12345678', 'nik', '12345678', 'mozzart.png'),
	(44, '12345678', 'famcard', 'asdasdasd', '—Pngtree—floral decoration for wedding n_5084850.png'),
	(45, '12345678', 'certif', 'xzxzxzx', '2952154.jpg'),
	(46, '12345678', 'bpjs_kesehatan', 'dfff', '19273.jpg'),
	(47, '12345678', 'other_assurance', '2312133', 'erdplus-diagram.png');
/*!40000 ALTER TABLE `tbl_document` ENABLE KEYS */;

-- membuang struktur untuk table user.tbl_karyawan
CREATE TABLE IF NOT EXISTS `tbl_karyawan` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `NIK` varchar(50) NOT NULL DEFAULT '0',
  `fullname` varchar(50) NOT NULL,
  `birth_place` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `address` text NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NIK` (`NIK`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel user.tbl_karyawan: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_karyawan` DISABLE KEYS */;
INSERT INTO `tbl_karyawan` (`ID`, `NIK`, `fullname`, `birth_place`, `birth_date`, `address`, `email`, `password`) VALUES
	(4, '123344', 'Dimas Sullistyana ', 'Jakrta', '2018-09-27', 'jalan buntu', NULL, NULL),
	(7, '7561211', 'Sandra', 'Jakarta', '2018-08-29', 'jalan kemangi', NULL, NULL),
	(8, '12345678', 'tes afra', 'Jakrta', '2021-07-21', 'jalan buntu', 'afra@gmail.com', '28b662d883b6d76fd96e4ddc5e9ba780');
/*!40000 ALTER TABLE `tbl_karyawan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
