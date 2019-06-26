-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table az_laundry.config
CREATE TABLE IF NOT EXISTS `config` (
  `idconfig` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(200) DEFAULT NULL,
  `value` text,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idconfig`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.config: ~4 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT IGNORE INTO `config` (`idconfig`, `key`, `value`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(1, 'app_name', 'AZLaundry', '2016-11-04 02:02:19', NULL, '2016-11-04 02:02:19', NULL, 1),
	(2, 'app_description', 'Laundry Management System', '2016-11-04 02:02:31', NULL, '2016-11-04 02:02:31', NULL, 1),
	(3, 'app_preface', '<p>Selamat datang di aplikasi AZLaundry, ini adalah versi demo, silahkan gunakan dengan bijak.</p>\r\n\r\n<p>Saat ini harga aplikasi AZLaundry adalah <strong>Rp 400.000</strong> untuk pembelian via email, dan <strong>Rp 450.000</strong> untuk pembelian via CD (belum termasuk ongkos kirim). Harga dapat berubah sewaktu-waktu.</p>\r\n\r\n<p>AZLaundry adalah sebuah aplikasi yang digunakan untuk memanajemen bisnis laundry. AZLaundry cocok digunakan bagi pemilik usaha laundry lebih dari 1 outlet/cabang. Cukup instal AZLaundry di 1 domain untuk semua bisnis laundry anda. AZLaundry juga bisa digunakan secara offline. </p>\r\n\r\n<p><br>\r\nFitur</p>\r\n\r\n<ul>\r\n <li>Multi outlet/cabang</li>\r\n <li>Support laundry kiloan dan laundry satuan</li>\r\n <li>Tampilan responsive, bisa diakses via mobile (handphone)</li>\r\n <li>Bisa online maupun offline</li>\r\n <li>Data pelanggan</li>\r\n <li>Transaksi pembayaran langsung bayar dan bayar nanti</li>\r\n <li>Status transaksi laundry (BARU/PROSES/SELESAI/DIAMBIL)</li>\r\n <li>Deadline/batas pengerjaan transaksi</li>\r\n <li>Rincian laundry (Jenis dan jumlah baju)</li>\r\n <li>Diskon per produk dan diskon keseluruhan</li>\r\n <li>Pajak per produk dan pajak keseluruhan</li>\r\n <li>2 jenis nota, nota kecil dan nota besar (invoice)</li>\r\n <li>Transaksi pengeluaran</li>\r\n <li>Cetak transaksi</li>\r\n <li>Laporan rugi/laba</li>\r\n <li>Multi bahasa, bahasa Indonesia dan bahasa Inggris</li>\r\n <li>Multi user, bisa setting hak akses pengguna</li>\r\n</ul>\r\n\r\n<p><br>\r\nKeterangan</p>\r\n\r\n<ul>\r\n <li>Tanpa biaya bulanan, cukup sekali bayar bisa digunakan selamanya</li>\r\n <li>Bisa diinstal lebih dari 1 komputer</li>\r\n <li>Maintenance (bug) gratis</li>\r\n <li>Dirancang dengan Codeigniter 3</li>\r\n <li>Source code bisa diedit</li>\r\n <li>Dilarang menjual kembali AZLaundry</li>\r\n</ul>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n<br>\r\n<p><strong><em>Melayani pembuatan custom aplikasi sesuai kebutuhan, segera konsultasikan kebutuhan anda.</em></strong></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p><br>\r\n<strong>Salam,</strong></p>\r\n\r\n<p><strong>Muhammad Isman Subakti, S.Kom  |  08993896581 (WA)</strong></p>\r\n\r\n<p><br>\r\n </p>\r\n', '2016-11-13 20:24:26', NULL, '2016-11-13 20:24:27', NULL, 1),
	(4, 'app_login_title', 'AZLaundry', '2016-11-20 18:42:44', NULL, '2016-11-20 18:42:45', NULL, 1);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- Dumping structure for table az_laundry.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `idoutlet` int(11) DEFAULT NULL,
  `customer_code` varchar(200) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idcustomer`),
  KEY `FK_customer_outlet` (`idoutlet`),
  CONSTRAINT `FK_customer_outlet` FOREIGN KEY (`idoutlet`) REFERENCES `outlet` (`idoutlet`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT IGNORE INTO `customer` (`idcustomer`, `idoutlet`, `customer_code`, `customer_name`, `address`, `email`, `phone`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(18, 14, 'CUS001', 'Spiderman', 'Indonesia', 'spidey@gmail.com', '0899999999', '2017-07-04 00:37:20', 'superadmin', '2017-07-04 00:38:23', 'superadmin', 1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table az_laundry.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `idemployee` int(11) NOT NULL AUTO_INCREMENT,
  `idprovince` int(11) DEFAULT NULL,
  `idcity` int(11) DEFAULT NULL,
  `idoutlet` int(11) DEFAULT NULL,
  `employee_code` varchar(200) DEFAULT NULL,
  `employee_name` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `postal_code` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idemployee`),
  KEY `FK_employee_province` (`idprovince`),
  KEY `FK_employee_city` (`idcity`),
  KEY `idoutlet` (`idoutlet`),
  CONSTRAINT `FK_employee_city` FOREIGN KEY (`idcity`) REFERENCES `city` (`idcity`),
  CONSTRAINT `FK_employee_province` FOREIGN KEY (`idprovince`) REFERENCES `province` (`idprovince`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.employee: ~2 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT IGNORE INTO `employee` (`idemployee`, `idprovince`, `idcity`, `idoutlet`, `employee_code`, `employee_name`, `address`, `email`, `phone`, `postal_code`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(2, 31, NULL, 10, 'KY 001', 'Rony Wijaya', 'Jakarta', '', '', '', '2017-04-28 20:31:04', 'administrator', '2017-06-21 01:36:32', 'administrator', 1),
	(3, 32, 3272, 10, 'KY002', 'Egi Rusli', 'Sukabumi', 'egirusli49@gmail.com', '085659799876', '', '2017-06-19 09:47:55', 'egi rusli', '2017-06-21 20:10:24', 'egi rusli', 1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


-- Dumping structure for table az_laundry.outlay
CREATE TABLE IF NOT EXISTS `outlay` (
  `idoutlay` int(11) NOT NULL AUTO_INCREMENT,
  `idoutlet` int(11) DEFAULT NULL,
  `idoutlay_type` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `description` text,
  `datetime` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idoutlay`),
  KEY `FK__outlay_type` (`idoutlay_type`),
  KEY `FK_outlay_outlet` (`idoutlet`),
  CONSTRAINT `FK__outlay_type` FOREIGN KEY (`idoutlay_type`) REFERENCES `outlay_type` (`idoutlay_type`),
  CONSTRAINT `FK_outlay_outlet` FOREIGN KEY (`idoutlet`) REFERENCES `outlet` (`idoutlet`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.outlay: ~0 rows (approximately)
/*!40000 ALTER TABLE `outlay` DISABLE KEYS */;
INSERT IGNORE INTO `outlay` (`idoutlay`, `idoutlet`, `idoutlay_type`, `total`, `description`, `datetime`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(9, 15, 12, 15000, 'air galon', '2017-07-08 01:29:36', '2017-07-08 01:29:51', 'cashierwangi', '2017-07-08 01:29:51', 'cashierwangi', 1);
/*!40000 ALTER TABLE `outlay` ENABLE KEYS */;


-- Dumping structure for table az_laundry.outlay_type
CREATE TABLE IF NOT EXISTS `outlay_type` (
  `idoutlay_type` int(11) NOT NULL AUTO_INCREMENT,
  `outlay_type_name` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idoutlay_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.outlay_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `outlay_type` DISABLE KEYS */;
INSERT IGNORE INTO `outlay_type` (`idoutlay_type`, `outlay_type_name`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(10, 'Foto Copy', '2017-07-08 00:55:48', 'administrator', '2017-07-08 00:55:48', 'administrator', 1),
	(11, 'Bensin', '2017-07-08 00:55:53', 'administrator', '2017-07-08 00:55:53', 'administrator', 1),
	(12, 'Air Minum', '2017-07-08 00:56:01', 'administrator', '2017-07-08 00:56:01', 'administrator', 1);
/*!40000 ALTER TABLE `outlay_type` ENABLE KEYS */;


-- Dumping structure for table az_laundry.outlet
CREATE TABLE IF NOT EXISTS `outlet` (
  `idoutlet` int(11) NOT NULL AUTO_INCREMENT,
  `outlet_code` varchar(3) DEFAULT NULL,
  `outlet_name` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idoutlet`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.outlet: ~0 rows (approximately)
/*!40000 ALTER TABLE `outlet` DISABLE KEYS */;
INSERT IGNORE INTO `outlet` (`idoutlet`, `outlet_code`, `outlet_name`, `address`, `phone`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(14, 'OT1', 'Laundry Pertama', 'Jl. Indonesia Raya', '08123123123', '2017-07-04 00:36:05', 'superadmin', '2017-07-04 00:36:05', 'superadmin', 1),
	(15, 'OT2', 'Wangi Laundry', 'Surabaya', '08123123123', '2017-07-08 00:13:40', 'administrator', '2017-07-08 00:13:40', 'administrator', 1);
/*!40000 ALTER TABLE `outlet` ENABLE KEYS */;


-- Dumping structure for table az_laundry.product
CREATE TABLE IF NOT EXISTS `product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `idoutlet` int(11) DEFAULT NULL,
  `product_type` varchar(50) DEFAULT NULL COMMENT 'UNIT/KILOGRAM',
  `product_code` varchar(200) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `description` text,
  `sell_price` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idproduct`),
  KEY `FK_product_outlet` (`idoutlet`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.product: ~2 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT IGNORE INTO `product` (`idproduct`, `idoutlet`, `product_type`, `product_code`, `product_name`, `description`, `sell_price`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(28, 14, 'KILOAN', 'KL001', 'Cuci Basah', 'Laundry cuci basah', 4000, '2017-07-04 00:53:50', 'superadmin', '2017-07-04 00:53:50', 'superadmin', 1),
	(29, 14, 'SATUAN', 'SAT001', 'Selimut', 'Laundry Selimut', 12000, '2017-07-04 00:55:58', 'superadmin', '2017-07-04 00:55:58', 'superadmin', 1),
	(30, 15, 'KILOGRAM', 'WL001', 'Cuci Kering', '', 4000, '2017-07-08 00:57:55', 'administrator', '2017-07-08 00:57:55', 'administrator', 1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- Dumping structure for table az_laundry.role
CREATE TABLE IF NOT EXISTS `role` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.role: ~2 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT IGNORE INTO `role` (`idrole`, `parent`, `name`, `title`, `description`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(9, 0, 'administrator', 'Administrator', 'Administrator', '2017-03-17 21:42:21', 'superadmin', '2017-03-17 21:42:21', 'superadmin', 1),
	(10, 9, 'cashier', 'Cashier', 'Cashier', '2017-03-17 21:42:39', 'superadmin', '2017-03-17 21:42:39', 'superadmin', 1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table az_laundry.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `idtransaction` int(11) NOT NULL AUTO_INCREMENT,
  `idtransaction_group` bigint(20) unsigned DEFAULT NULL,
  `idproduct` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `add_cost` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idtransaction`),
  KEY `FK_transaction_product` (`idproduct`),
  KEY `FK_transaction_transaction_group` (`idtransaction_group`),
  CONSTRAINT `FK_transaction_product` FOREIGN KEY (`idproduct`) REFERENCES `product` (`idproduct`),
  CONSTRAINT `FK_transaction_transaction_group` FOREIGN KEY (`idtransaction_group`) REFERENCES `transaction_group` (`idtransaction_group`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.transaction: ~1 rows (approximately)
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT IGNORE INTO `transaction` (`idtransaction`, `idtransaction_group`, `idproduct`, `qty`, `price`, `discount`, `add_cost`, `tax`, `total`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(4, 5, 29, 1, 12000, 0, 0, 0, 12000, '2017-07-05 21:46:43', 'superadmin', '2017-07-05 22:16:27', 'superadmin', 1),
	(6, 6, 29, 1, 12000, 0, 0, 0, 12000, '2017-07-08 01:14:10', 'cashier', '2017-07-08 01:14:10', 'cashier', 1);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;


-- Dumping structure for table az_laundry.transaction_detail
CREATE TABLE IF NOT EXISTS `transaction_detail` (
  `idtransaction_detail` int(11) NOT NULL AUTO_INCREMENT,
  `idtransaction_group` bigint(20) unsigned DEFAULT NULL,
  `detail_description` varchar(300) DEFAULT NULL,
  `detail_qty` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idtransaction_detail`),
  KEY `FK_transaction_detail_transaction_group` (`idtransaction_group`),
  CONSTRAINT `FK_transaction_detail_transaction_group` FOREIGN KEY (`idtransaction_group`) REFERENCES `transaction_group` (`idtransaction_group`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.transaction_detail: ~1 rows (approximately)
/*!40000 ALTER TABLE `transaction_detail` DISABLE KEYS */;
INSERT IGNORE INTO `transaction_detail` (`idtransaction_detail`, `idtransaction_group`, `detail_description`, `detail_qty`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(15, 5, 'kemeja lengan panjang', 1, '2017-07-05 21:49:43', 'superadmin', '2017-07-05 22:16:27', 'superadmin', 1),
	(16, 6, 'celana pendek', 2, '2017-07-08 01:14:10', 'cashier', '2017-07-08 01:14:10', 'cashier', 1),
	(17, 6, 'kaos merah', 3, '2017-07-08 01:14:11', 'cashier', '2017-07-08 01:14:11', 'cashier', 1),
	(18, 6, 'kaos kaki', 4, '2017-07-08 01:14:11', 'cashier', '2017-07-08 01:14:11', 'cashier', 1);
/*!40000 ALTER TABLE `transaction_detail` ENABLE KEYS */;


-- Dumping structure for table az_laundry.transaction_group
CREATE TABLE IF NOT EXISTS `transaction_group` (
  `idtransaction_group` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idoutlet` int(11) DEFAULT NULL,
  `idcustomer` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `grand_discount` double DEFAULT NULL,
  `grand_discount_percent` double DEFAULT NULL,
  `grand_add_cost` double DEFAULT NULL,
  `grand_tax` double DEFAULT NULL,
  `grand_tax_percent` double DEFAULT NULL,
  `grand_total_final` double DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL COMMENT 'PAID/NOT PAID YET',
  `transaction_group_status` varchar(50) DEFAULT NULL COMMENT 'NEW/PROGRESS/FINISH/ACCEPTED',
  `note` text,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`idtransaction_group`),
  KEY `FK_transaction_group_outlet` (`idoutlet`),
  KEY `FK_transaction_group_customer` (`idcustomer`),
  KEY `FK_transaction_group_user` (`iduser`),
  CONSTRAINT `FK_transaction_group_customer` FOREIGN KEY (`idcustomer`) REFERENCES `customer` (`idcustomer`),
  CONSTRAINT `FK_transaction_group_outlet` FOREIGN KEY (`idoutlet`) REFERENCES `outlet` (`idoutlet`),
  CONSTRAINT `FK_transaction_group_user` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.transaction_group: ~1 rows (approximately)
/*!40000 ALTER TABLE `transaction_group` DISABLE KEYS */;
INSERT IGNORE INTO `transaction_group` (`idtransaction_group`, `idoutlet`, `idcustomer`, `iduser`, `code`, `date`, `duedate`, `grand_total`, `grand_discount`, `grand_discount_percent`, `grand_add_cost`, `grand_tax`, `grand_tax_percent`, `grand_total_final`, `pay`, `transaction_group_status`, `note`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(5, 14, 18, 1, '2017/07/OT1/0010', '2017-07-05 21:45:56', '2017-07-05', 12000, 2410, 10, 3000, 12050, 50, 24640, 'PAID', 'FINISH', 'oke seklai', '2017-07-05 21:46:43', 'superadmin', '2017-07-05 22:16:27', 'superadmin', 1),
	(6, 14, 18, 10, '2017/07/OT1/0011', '2017-07-08 01:13:35', NULL, 12000, 0, 0, 0, 0, 0, 12000, 'PAID', 'NEW', '', '2017-07-08 01:14:10', 'cashier', '2017-07-08 01:14:10', 'cashier', 1);
/*!40000 ALTER TABLE `transaction_group` ENABLE KEYS */;


-- Dumping structure for table az_laundry.user
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idrole` int(11) DEFAULT NULL,
  `idoutlet` int(11) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`iduser`),
  KEY `FK_user_role` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT IGNORE INTO `user` (`iduser`, `idrole`, `idoutlet`, `username`, `password`, `name`, `email`, `address`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(1, NULL, NULL, 'superadmin', '85bb6dec1873bb465770dde5e5264517', 'Superadmin', 'superadmin@superadmin.com', 'Indonesia', '2016-10-30 15:46:48', 'system', '2016-10-30 15:46:48', 'system', 1),
	(2, 9, NULL, 'administrator', '5f4dcc3b5aa765d61d8327deb882cf99', 'administrator', 'admin@admin.com', 'Indonesia', '2017-04-24 23:17:59', 'superadmin', '2017-06-18 16:28:34', 'administrator', 1),
	(10, 10, 14, 'cashier', '5f4dcc3b5aa765d61d8327deb882cf99', 'The Cashier', 'cashier@gmail.com', 'Lamongan', '2017-07-07 22:42:58', 'superadmin', '2017-07-08 01:08:33', 'administrator', 1),
	(11, 10, 15, 'cashierwangi', '5f4dcc3b5aa765d61d8327deb882cf99', 'Wangi Cashier', 'wangi@gmail.com', 'Surabaya', '2017-07-08 01:19:28', 'administrator', '2017-07-08 01:19:28', 'administrator', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table az_laundry.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `iduser_role` int(11) NOT NULL AUTO_INCREMENT,
  `idrole` int(11) DEFAULT NULL,
  `menu_name` varchar(200) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`iduser_role`),
  KEY `FK_user_role_role` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table az_laundry.user_role: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT IGNORE INTO `user_role` (`iduser_role`, `idrole`, `menu_name`, `access`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(1, 9, 'dashboard', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(2, 9, 'master', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(3, 9, 'outlet', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(4, 9, 'customer', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(5, 9, 'outlay_type', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(6, 9, 'product', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(7, 9, 'transaction', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(8, 9, 'outlay', 1, '2017-07-07 23:17:19', 'superadmin', NULL, NULL, 1),
	(9, 9, 'report', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(10, 9, 'profit_report', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(11, 9, 'user', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(12, 9, 'user_role', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(13, 9, 'user_user', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(14, 9, 'user_user_role', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(15, 9, 'setting', 1, '2017-07-07 23:17:20', 'superadmin', NULL, NULL, 1),
	(16, 10, 'dashboard', 1, '2017-07-07 23:17:39', 'superadmin', '2017-07-07 23:23:23', 'naruto', 1),
	(17, 10, 'master', 0, '2017-07-07 23:17:39', 'superadmin', '2017-07-07 23:23:23', 'naruto', 1),
	(18, 10, 'outlet', 0, '2017-07-07 23:17:39', 'superadmin', '2017-07-07 23:23:23', 'naruto', 1),
	(19, 10, 'customer', 0, '2017-07-07 23:17:39', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(20, 10, 'outlay_type', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(21, 10, 'product', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(22, 10, 'transaction', 1, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(23, 10, 'outlay', 1, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(24, 10, 'report', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(25, 10, 'profit_report', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(26, 10, 'user', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(27, 10, 'user_role', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(28, 10, 'user_user', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(29, 10, 'user_user_role', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1),
	(30, 10, 'setting', 0, '2017-07-07 23:17:40', 'superadmin', '2017-07-07 23:23:24', 'naruto', 1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
