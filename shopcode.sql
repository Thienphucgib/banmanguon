-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table shop_code.bank
CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stk` text COLLATE utf8_vietnamese_ci NOT NULL,
  `name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `bank_name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `logo` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table shop_code.bank: ~2 rows (approximately)
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` (`id`, `stk`, `name`, `bank_name`, `logo`, `ghichu`) VALUES
	(1, '0365157038', 'MOMO', 'Nguyễn Nhật Lộc', 'upload/bank/bankQL94.png', 'Nhận tiền sau 30s'),
	(8, '990919072000', 'MBBank', 'Nguyễn Nhật Lộc', 'upload/bank/bankS72L.png', '');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- Dumping structure for table shop_code.bank_auto
CREATE TABLE IF NOT EXISTS `bank_auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` text COLLATE utf8_vietnamese_ci NOT NULL,
  `tranId` text COLLATE utf8_vietnamese_ci NOT NULL,
  `payment_method` text COLLATE utf8_vietnamese_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text COLLATE utf8_vietnamese_ci NOT NULL,
  `create_date` text COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table shop_code.bank_auto: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_auto` DISABLE KEYS */;
INSERT INTO `bank_auto` (`id`, `user_id`, `tranId`, `payment_method`, `amount`, `comment`, `create_date`) VALUES
	(68, '1', '33772336240', 'MOMO', 5001, 'coin1', '2022/12/25 00:27:52');
/*!40000 ALTER TABLE `bank_auto` ENABLE KEYS */;

-- Dumping structure for table shop_code.cards
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `serial` text COLLATE utf8mb4_unicode_ci,
  `pin` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_id` (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shop_code.cards: ~0 rows (approximately)
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;

-- Dumping structure for table shop_code.dongtien
CREATE TABLE IF NOT EXISTS `dongtien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci,
  `user_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table shop_code.dongtien: ~11 rows (approximately)
/*!40000 ALTER TABLE `dongtien` DISABLE KEYS */;
INSERT INTO `dongtien` (`id`, `sotientruoc`, `sotienthaydoi`, `sotiensau`, `thoigian`, `noidung`, `user_id`) VALUES
	(429, 0, 270000, 270000, '2022-12-24 22:02:13', 'gjkhj', '2'),
	(430, 270000, 130000, 400000, '2022-12-24 22:02:31', 'trừ', '2'),
	(431, 9875535, 5001, 9880536, '2022-12-25 00:27:53', 'Nạp tiền tự động qua ví MOMO (33772336240)', '1'),
	(432, 140000, 270000, 410000, '2022-12-25 00:55:36', 'fsdf', '2'),
	(433, 9823870, 55555, 9768315, '2022-12-25 10:48:31', 'Mua mã nguồn mã số #6', '1'),
	(434, 9822759, 889, 9821870, '2022-12-25 10:53:09', 'Mua mã nguồn mã số #4', '1'),
	(435, 9821648, 1111, 9820537, '2022-12-25 12:04:27', 'Mua mã nguồn mã số #7', '1'),
	(436, 9820537, 889, 9819648, '2022-12-25 15:32:43', 'Mua mã nguồn mã số #4', '1'),
	(437, 9819426, 889, 9818537, '2022-12-25 15:32:53', 'Mua mã nguồn mã số #4', '1'),
	(438, 9763871, 55555, 9708316, '2022-12-25 15:33:03', 'Mua mã nguồn mã số #6', '1'),
	(439, 9751627, 12244, 9739383, '2022-12-25 15:33:12', 'Mua mã nguồn mã số #5', '1');
/*!40000 ALTER TABLE `dongtien` ENABLE KEYS */;

-- Dumping structure for table shop_code.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip` text COLLATE utf8mb4_vietnamese_ci,
  `device` text COLLATE utf8mb4_vietnamese_ci,
  `create_date` text COLLATE utf8mb4_vietnamese_ci,
  `action` text COLLATE utf8mb4_vietnamese_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table shop_code.logs: ~8 rows (approximately)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `create_date`, `action`) VALUES
	(342, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/24 21:58:25', 'Cập nhật thông tin thành viên useradmin1[2].'),
	(343, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 00:55:29', 'Cập nhật thông tin thành viên useradmin1[2].'),
	(344, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 12:46:01', 'Cập nhật thông tin [2].'),
	(345, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 12:47:03', 'useradmin Đã cập nhật thông tin tài khoản'),
	(346, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 12:47:32', 'useradmin Đã cập nhật thông tin tài khoản'),
	(347, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 12:48:19', 'useradmin Đã cập nhật thông tin tài khoản'),
	(348, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 13:23:04', 'Đăng nhập vào hệ thống'),
	(349, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022/12/25 15:49:50', 'Đăng nhập vào hệ thống'),
	(350, 1, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2022/12/25 15:59:12', 'Đăng nhập vào hệ thống');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Dumping structure for table shop_code.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table shop_code.options: ~75 rows (approximately)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`id`, `key`, `value`) VALUES
	(1, 'title', 'Shop bán mã nguồn tự động - an toàn- uy tín'),
	(2, 'mota', 'Bán tool - bán acc ngọc rồng tự động giá rẻ'),
	(3, 'tukhoa', 'tooltrantien, tooltrantien.com , tool giá rẻ, tool tran tien, acc rẻ ngọc rồng, shop tool nro, mod, hack nro'),
	(4, 'logo', 'upload/theme/logo_light_7Q5.png'),
	(12, 'thongbao', '<p><strong>Ch&agrave;o mừng bạn đến với dịch vụ của ch&uacute;ng t&ocirc;i</strong></p>\r\n\r\n<p><strong>Giải captcha vietcombank, mbbank tại&nbsp;</strong><a href="https://ecaptcha.sieuthicode.net/" target="_blank"><strong>https://ecaptcha.sieuthicode.net</strong></a></p>\r\n\r\n<p><strong>Thu&ecirc; api thesieure, tpbank, mbbank, momo, vietcombank, acb tại&nbsp;</strong><a href="https://api.sieuthicode.net/" target="_blank"><strong>https://api.sieuthicode.net</strong></a></p>\r\n\r\n<p>Nh&oacute;m hỗ trợ&nbsp;<a href="https://zalo.me/g/cbzsbc549" target="_blank">https://zalo.me/g/cbzsbc549</a></p>\r\n'),
	(13, 'anhbia', 'data:image/webp;base64,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'),
	(14, 'favicon', 'upload/theme/favicon_3JK.png'),
	(57, 'domain', 'sieuthicode.net'),
	(59, 'logo_light', 'assets/storage/images/logo_light_27S.png'),
	(60, 'description', 'Bán mã nguồn, source code'),
	(61, 'keywords', 'Sieuthicode.net, sieuthicode, siêu thị code'),
	(62, 'author', 'Nguyễn Nhật Lộc'),
	(63, 'status', '1'),
	(64, 'status_update', '1'),
	(65, 'status_captcha', '1'),
	(66, 'hotline', '0365157038'),
	(67, 'email', 'cskh.sieuthicode@gmail.com'),
	(68, 'email_smtp', 'cskh.sieuthicode@gmail.com'),
	(69, 'pass_email_smtp', ''),
	(70, 'session_login', '2592000'),
	(71, 'min_recharge', '1000'),
	(72, 'status_card', '1'),
	(73, 'notice_napthe', '<p style="text-align:center"><span style="font-size:16px"><strong>Vui l&ograve;ng nhập đầy đủ th&ocirc;ng tin&nbsp;Serial&nbsp;-&nbsp;Pin&nbsp;-&nbsp;Mệnh Gi&aacute;&nbsp;của thẻ.</strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong>Thẻ được xử l&yacute; tự động trong v&agrave;i gi&acirc;y.</strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong>Nạp sai mệnh gi&aacute; mất&nbsp;50%&nbsp;gi&aacute; trị thực của thẻ.</strong></span></p>\r\n'),
	(74, 'partner_key_card', '44db98b80f5d408c2e709b88f149a331'),
	(75, 'partner_id_card', '7790396157'),
	(76, 'noidung_naptien', 'coin'),
	(77, 'status_momo', '1'),
	(78, 'token_momo', ''),
	(79, 'ck_bank', '0'),
	(80, 'status_mbbank', '1'),
	(81, 'token_mbbank', ''),
	(82, 'token_tsr', ''),
	(83, 'notification', '1'),
	(84, 'status_tsr', '1'),
	(85, 'color', '#ffffff'),
	(86, 'notice_napbank', '<p>Vui l&ograve;ng <strong>điền đ&uacute;ng nội dung</strong> tiền sẽ được cộng v&agrave;o t&agrave;i khoản <strong>30-60s</strong></p>\r\n\r\n<p>Nếu sau thời gian tr&ecirc;n chưa được cộng tiền vui l&ograve;ng li&ecirc;n hệ admin</p>\r\n\r\n<p>Xin cảm ơn qu&yacute; kh&aacute;ch !</p>\r\n'),
	(87, 'notice_transfer', '<p><span style="color:#2c3e50"><strong>- Ph&iacute; cố định 0đ</strong></span></p>\r\n\r\n<p><span style="color:#2c3e50"><strong>- Chuyển tiền kh&ocirc;ng giới hạn</strong></span></p>\r\n\r\n<p><span style="color:#2c3e50"><strong>- Số tiền chuyển tối thiểu l&agrave; 10.000đ</strong></span></p>\r\n'),
	(88, 'status_demo', '0'),
	(89, 'notice_withdraw', '<p><span style="color:#2c3e50"><strong>Kh&ocirc;ng thể r&uacute;t tiền đối với t&agrave;i khoản&nbsp;Th&agrave;nh Vi&ecirc;n</strong></span></p>\r\n'),
	(90, 'notice_check_nro', '<p><span style="color:#e74c3c"><strong>C&ocirc;ng cụ check số lượng lớn t&agrave;i khoản nro ho&agrave;n to&agrave;n miễn ph&iacute;</strong></span></p>\r\n\r\n<p><span style="color:#e74c3c"><strong>Ch&uacute;c c&aacute;c bạn một ng&agrave;y vui vẻ</strong></span></p>\r\n'),
	(91, 'notice_account', '<p><strong>Hệ thống b&aacute;n t&agrave;i khoản game đa dạng, t&igrave;m kiếm acc t&ugrave;y th&iacute;ch, dễ d&agrave;ng sử dụng</strong></p>\r\n'),
	(92, 'banner_active', 'https://i.imgur.com/JUxlDUE.png'),
	(93, 'banner_1', 'upload/theme/banner/banner_UJI.png'),
	(94, 'banner_2', 'upload/theme/banner/banner_V5C.png'),
	(95, 'site_key', '6Ld4iuciAAAAACtdIg34IraNIUQ3deAHlbtC7Tp5'),
	(96, 'secret_key', '6Ld4iuciAAAAAMruzuqWRIxbt6-4FGi0Beint7Qa'),
	(97, 'notice_plowing', '<p><span style="color:#2c3e50"><strong>C&aacute;c bạn ch&uacute; &yacute; trạng th&aacute;i ho&agrave;n th&agrave;nh khi thu&ecirc; g&oacute;i</strong></span></p>\r\n\r\n<p><span style="color:#2c3e50"><strong>Kh&ocirc;ng được ph&eacute;p v&agrave;o t&agrave;i khoản khi đang trong qu&aacute; tr&igrave;nh c&agrave;y</strong></span></p>\r\n'),
	(98, 'token_zalopay', ''),
	(99, 'status_zalopay', '1'),
	(100, 'link_facebook', 'https://www.facebook.com/nguyennhatloc'),
	(101, 'link_youtube', 'https://www.youtube.com/@sieuthicode5565'),
	(102, 'status_vcb', '1'),
	(103, 'token_vcb', ''),
	(104, 'status_sellacc', '1'),
	(105, 'status_service', '1'),
	(106, 'token_acb', ''),
	(107, 'status_acb', '1'),
	(108, 'logo_center', 'upload/theme/images/logo_mobile_GSQ.png'),
	(109, 'embed_youtube', 'https://www.youtube.com/embed/gqSeaGBTJIU'),
	(110, 'embed_intro', 'https://www.youtube.com/embed/gqSeaGBTJIU'),
	(111, 'server_card', 'gachthe1s'),
	(112, 'check_time_cron_momo', '1671902870'),
	(113, 'money_reg', '0'),
	(114, 'client_id_imgur', '9a032c6333834c2'),
	(115, 'status_imgur', '1'),
	(116, 'button_vongquay', 'https://i.imgur.com/76ueWU0.png'),
	(117, 'button_play', 'https://i.imgur.com/XdaeYwn.png'),
	(118, 'banner_one', 'https://i.imgur.com/uNmov6G.jpg'),
	(119, 'status_banner', '1'),
	(120, 'status_cursor', '1'),
	(121, 'cursor_default', 'https://i.imgur.com/5yjr7GW.png'),
	(122, 'cursor_hover', 'https://i.imgur.com/HvAPaFB.png'),
	(123, 'status_minify', '0'),
	(124, 'status_anti_f12', '0'),
	(125, 'status_snowflake', '1');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Dumping structure for table shop_code.tbl_blogs
CREATE TABLE IF NOT EXISTS `tbl_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_vietnamese_ci,
  `images` text COLLATE utf8mb4_vietnamese_ci,
  `content` longtext COLLATE utf8mb4_vietnamese_ci,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table shop_code.tbl_blogs: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_blogs` DISABLE KEYS */;
INSERT INTO `tbl_blogs` (`id`, `name`, `images`, `content`, `status`, `create_date`, `update_date`) VALUES
	(1, 'Hướng dẫn mua mã nguồn', 'upload/blog/blogOEX6WHZM7U5Y.png', 'Hướng dẫn mua mã nguồn', 1, '2022-12-25 14:24:28', '2022-12-25 14:58:09'),
	(2, 'hướng dẫn nạp tiền', 'upload/blog/blogBO3A.png', '<p>dấd</p>\r\n', 1, '2022-12-25 14:26:50', '2022-12-25 14:26:50');
/*!40000 ALTER TABLE `tbl_blogs` ENABLE KEYS */;

-- Dumping structure for table shop_code.tbl_categories
CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stt` int(11) DEFAULT '1',
  `name` text COLLATE utf8mb4_vietnamese_ci,
  `slug` text COLLATE utf8mb4_vietnamese_ci,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table shop_code.tbl_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_categories` DISABLE KEYS */;
INSERT INTO `tbl_categories` (`id`, `stt`, `name`, `slug`, `status`, `create_date`, `update_date`) VALUES
	(1, 1, 'Danh mục shop acc', 'danh-muc-shop-acc', 1, '2022-12-24 20:52:31', '2022-12-25 11:39:51'),
	(2, 2, 'Danh mục shop clone', 'danh-muc-shop-clone', 1, '2022-12-24 20:52:31', '2022-12-25 11:39:39');
/*!40000 ALTER TABLE `tbl_categories` ENABLE KEYS */;

-- Dumping structure for table shop_code.tbl_history
CREATE TABLE IF NOT EXISTS `tbl_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table shop_code.tbl_history: ~11 rows (approximately)
/*!40000 ALTER TABLE `tbl_history` DISABLE KEYS */;
INSERT INTO `tbl_history` (`id`, `user_id`, `product_id`, `price`, `create_date`) VALUES
	(1, 1, 6, 55555, '2022-12-24 19:00:47'),
	(2, 1, 5, 11020, '2022-12-24 19:01:17'),
	(3, 1, 7, 1111, '2022-12-24 19:18:07'),
	(4, 1, 7, 1111, '2022-12-25 01:33:42'),
	(5, 1, 6, 55555, '2022-12-25 10:48:31'),
	(6, 1, 4, 889, '2022-12-25 10:53:09'),
	(7, 1, 7, 1111, '2022-12-25 12:04:27'),
	(8, 1, 4, 889, '2022-12-25 15:32:43'),
	(9, 1, 4, 889, '2022-12-25 15:32:53'),
	(10, 1, 6, 55555, '2022-12-25 15:33:03'),
	(11, 1, 5, 12244, '2022-12-25 15:33:12');
/*!40000 ALTER TABLE `tbl_history` ENABLE KEYS */;

-- Dumping structure for table shop_code.tbl_products
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_vietnamese_ci,
  `slug` text COLLATE utf8mb4_vietnamese_ci,
  `category` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `images` text COLLATE utf8mb4_vietnamese_ci,
  `list_images` text COLLATE utf8mb4_vietnamese_ci,
  `intro` longtext COLLATE utf8mb4_vietnamese_ci,
  `view` bigint(20) DEFAULT '0',
  `sold` bigint(20) DEFAULT '0',
  `link_down` text COLLATE utf8mb4_vietnamese_ci,
  `link_demo` text COLLATE utf8mb4_vietnamese_ci,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table shop_code.tbl_products: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` (`id`, `name`, `slug`, `category`, `price`, `sale`, `images`, `list_images`, `intro`, `view`, `sold`, `link_down`, `link_demo`, `status`, `create_date`, `update_date`) VALUES
	(4, 'share code shop bán acc', 'share-code-shop-ban-acc', 1, 1111, 20, 'upload/product/productFNKOZ4MW7T2P.png', 'upload/product/productCAVMUB.png', '', 15, 2, '', '', 1, '2022-12-24 14:42:42', '2022-12-25 10:28:01'),
	(5, 'Share code bán hosting', 'share-code-ban-hosting', 2, 12244, 0, 'upload/product/productT5W4ER.png', 'upload/product/productT5W4ER.png', '&lt;p&gt;dsadsa&lt;/p&gt;', 16, 1, '', '', 1, '2022-12-24 14:52:01', '2022-12-25 01:22:35'),
	(6, 'share code shop bán acc ff', 'share-code-shop-ban-acc-ff', 1, 55555, 0, 'upload/product/product8V930G.png', 'upload/product/product8V930G.png\r\nupload/product/product8V930G.png\r\nupload/product/product8V930G.png\r\nupload/product/product8V930G.png', '', 24, 1, '', '', 1, '2022-12-24 15:01:32', '2022-12-25 10:28:22'),
	(7, 'Shop bán acc game free fire, random, vòng quay, bingo, lật thẻ', 'shop-ban-acc-game-free-fire-random-vong-quay-bingo-lat-the', 1, 1111, 0, 'upload/product/productC9TP325IZ4NQ.png', 'upload/product/product81YS5C.png\r\nupload/product/product81YS5C.png\r\nupload/product/product81YS5C.png\r\nupload/product/product81YS5C.png\r\nupload/product/product81YS5C.png\r\nupload/product/product81YS5C.png\r\nupload/product/product81YS5C.png\r\nupload/product/product81YS5C.png', '<p>Demo chi tiết tại:&nbsp;<a href="\\" target="\\&quot;\\\\\\&quot;\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;_blank\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;\\\\\\&quot;\\&quot;">https://tool.sieuthicode.net/</a></p>\r\n\r\n<p>t&agrave;i khoản: useradmin</p>\r\n\r\n<p>mật khẩu: 123456</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>C&ocirc;ng nghệ:</em></p>\r\n\r\n<p>- HTML5/CSS3&nbsp;<br />\r\n- Boostrap 3<br />\r\n- Datatables<br />\r\n- Lazyload<br />\r\n- PHP/ Mysql</p>\r\n\r\n<p><em>Chức năng:</em></p>\r\n\r\n<p>- Tạo danh mục, nh&atilde;n d&aacute;n, minigame tự động<br />\r\n- B&aacute;n t&agrave;i khoản tự động<br />\r\n- V&ograve;ng quay may mắn</p>\r\n\r\n<p>-Danh mục c&agrave;y thu&ecirc;<br />\r\n- Nạp tiền qua thẻ c&agrave;o, momo<br />\r\n- Cộng t&aacute;c vi&ecirc;n<br />\r\n- Setting website, th&agrave;nh vi&ecirc;n, nh&acirc;n vi&ecirc;n pr, quản l&yacute; tất cả tại admin<br />\r\n- Tối ưu mọi dịch vụ chỉ quảng c&aacute;o shop<br />\r\n- Bọc chống spam đăng k&yacute;, nạp thẻ,...<br />\r\n- Hỗ trợ 24/24.</p>\r\n\r\n<p><em>Điều khoản:</em></p>\r\n\r\n<p>Vui l&ograve;ng KH&Ocirc;NG chia sẻ m&atilde; nguồn, vps, hosting để được bảo h&agrave;nh hỗ trợ trọn đời.</p>\r\n', 59, 1, '', '', 1, '2022-12-24 15:02:22', '2022-12-25 01:32:08');
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;

-- Dumping structure for table shop_code.tbl_users
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `coin` int(11) NOT NULL DEFAULT '0',
  `total_coin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table shop_code.tbl_users: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `coin`, `total_coin`, `role`, `banned`, `ip`, `create_date`, `update_date`) VALUES
	(1, 'useradmin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'nhatloc200@gmail.com', 9751627, 5001, 1, 0, '::1', '2022-12-24 12:50:42', '2022-12-24 12:50:42'),
	(2, 'useradmin1', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'nhatloc0@gmail.com', 410000, 540000, 0, 0, '::1', '2022-12-24 21:39:40', '2022-12-24 21:39:40');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
