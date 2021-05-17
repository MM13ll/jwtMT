-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2021 at 02:54 PM
-- Server version: 5.7.29
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int(1) NOT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `active`, `last_login_time`, `added_on`, `updated_on`) VALUES
(1, 'admin', 'admin_123@gmail.com', '', 0, NULL, '2021-05-13 17:07:16', NULL),
(2, 'admin', 'admin_1234@gmail.com', '', 0, NULL, '2021-05-13 17:15:52', NULL),
(3, 'admin', 'admin_221224@gmail.com', '$2y$10$6uVVVWNF4AouSDcrUNx3euMn/opnIYYdOaO18p/iw67REdF6EgRoW', 0, NULL, '2021-05-13 17:21:04', NULL),
(4, 'admin', 'admin_1233@gmail.com', '$2y$10$WaJ2mVw1bDe09nK7Nrs4dOV7YGdSXDGn5ERvufRPg2tGTMU2oBSaK', 0, NULL, '2021-05-13 17:21:39', NULL),
(5, 'admin', 'admin_123322@gmail.com', '$2y$10$xmwYYddRDYZ7WUHxMAWpeO4hHesqKh7ey9LM2QFDT4QWVgjvLCwbO', 0, NULL, '2021-05-13 17:27:27', NULL),
(6, 'adminA', 'admin_1310@gmail.com', '$2y$10$VJaMEyVIXGMZsjRhYNOv0euY8huThH61Xlw/ffg01J0MIrypHD9E6', 0, NULL, '2021-05-14 23:17:36', NULL),
(7, 'adminA', 'admin_1311@gmail.com', '$2y$10$RHGl1vEoPlK46d8.A/71k.aghoI4OLtJMgZRf75rD8KhjmTaOvfiy', 0, NULL, '2021-05-14 23:28:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `priority` int(2) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  `pan` varchar(16) DEFAULT NULL,
  `expiry` decimal(4,0) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `phone` decimal(12,0) DEFAULT NULL,
  `last_balance` bigint(20) DEFAULT NULL,
  `otp_hash` varchar(32) DEFAULT NULL,
  `otp_attempts` int(1) NOT NULL DEFAULT '0',
  `is_confirmed` int(1) NOT NULL DEFAULT '0',
  `added_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT '0',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `user_id`, `title`, `priority`, `token`, `pan`, `expiry`, `holder`, `phone`, `last_balance`, `otp_hash`, `otp_attempts`, `is_confirmed`, `added_on`, `deleted`, `updated_on`) VALUES
(107, 167, 'узкард 2', 1, '5ba39133ca57d70aec502919', '860031******4650', '2309', 'IDIEV ILKHOM AMINOVICH', '998973333929', 6986542, NULL, 0, 0, '2020-07-23 23:18:29', 1, '2021-04-22 06:17:14'),
(108, 167, 'нбу', 1, '5a8d4dc4ca57d702c42d86b1', '860002******7767', '2008', 'IDIEV ILKHOM AMINOVICH', '998973333929', NULL, NULL, 0, 0, '2020-07-23 23:19:52', 0, '2021-04-22 06:17:14'),
(111, 167, 'зарплата', 1, '8B431A6A1057EB41E0530100007FEA67', '860031******7001', '2302', 'IDIEV ILKHOM AMINOVICH', '998973333929', 93448349, NULL, 0, 1, '2020-07-24 00:41:44', 0, '2021-04-22 06:17:14'),
(119, 167, 'хумо алока', 1, 'bb1d5755-105b-3e7b-b81f-d398a85126e5', '986019******6346', '2406', 'ILHOM IDIEV', '998973333929', 0, NULL, 0, 1, '2020-11-26 19:57:50', 1, '2021-04-22 06:17:14'),
(123, 335, 'uzcard', 1, 'B58CE9174A2D1758E0530100007F3C87', '860057******4753', '2412', 'SAYDAMINOV KAMOLBEK', '998998185650', 9485, NULL, 0, 1, '2020-12-03 14:45:09', 0, '2021-04-22 06:17:14'),
(124, 335, 'узкарт', 2, 'B5F1C4F69EC25C43E0530100007FEE59', '860057******7169', '2508', 'SAYDAMINOV KAMOLBEK', '998998185650', 130040374, NULL, 0, 1, '2020-12-08 14:44:18', 0, '2021-04-22 06:17:14'),
(128, 167, '', 4, 'B615AECB3FE0018EE0530100007F2D5E', '860014******7400', '2310', 'MAXMUDOV BEHRUZ TOLQIN OGL', '998997025670', 700100, '86ecfcbc1e9f1ae5ee2d71910877da36', 5, 0, '2020-12-10 09:43:01', 0, '2021-04-22 06:17:14'),
(135, 739, 'shipox salary', 1, 'B61B7DD44184056CE0530100007F0F45', '860014******4107', '2509', 'MAHMUDOV BEHRUZ TOLQIN OGL', '998997025670', 815296466, NULL, 5, 1, '2020-12-10 16:34:30', 0, '2021-04-22 06:17:14'),
(157, 167, 'foobar', 3, 'A6A07182D4E5041AE0530100007FA3E7', '860031******7066', '2503', 'MIRNOVA ANNA VIKTOROVNA', '998909976886', 6918295, 'f3e52c300b822a8123e7ace55fe15c08', 0, 0, '2020-12-14 12:45:41', 1, '2021-04-22 06:17:14'),
(188, 593, 'жена', 2, 'B86874FE19F6FD59E053D30811ACE09B', '860055******5531', '2310', 'ZOKIRXO`JAYEVA FERUZAXON', '998998090309', 81247, '0f0d67e214f9fef69b278e3d08114da9', 0, 1, '2021-01-08 23:14:20', 0, '2021-04-22 06:17:14'),
(192, 739, 'ofb', 2, 'B877F512C4E034AFE053D30811AC6776', '860057******2823', '2512', 'MAHMUDOV BEHRUZ', '998997025670', 306800, NULL, 2, 1, '2021-01-09 17:42:13', 0, '2021-04-22 06:17:14'),
(197, 427, 'HUMO', 1, '61845a20-9a04-3832-b092-8eb21e1cdf41', '986027******7882', '2203', 'MUMINBOY SAIDOV', '998981372017', 190430, NULL, 5, 1, '2021-01-28 16:55:28', 0, '2021-04-22 06:17:14'),
(205, 436, 'OFB', 1, '9D54E51E4C4415E5E055000000000001', '860057******6265', '2311', 'KHASANJONOV MAKHMUDJAN', '998935082228', 206547475, NULL, 0, 1, '2021-02-03 11:56:57', 0, '2021-04-22 06:17:14'),
(207, 167, 'test name', 1, '9CB5BCA5771968DAE055000000000001', '860006******2278', '2411', 'IDIYEV ILXOM AMINOVICH', '998973333929', 595000, NULL, 0, 0, '2021-02-03 14:05:47', 1, '2021-04-22 06:17:14'),
(244, 167, 'islomda card', 4, 'BB147EC4C618EC05E053D30811ACCC9E', '860014******4525', '2311', 'TOSHEV ISLOMBEK TOHIR OGLI', '998339732053', 2, 'a084f26f690dbc23a52e67027693f2b2', 5, 0, '2021-02-11 23:10:07', 0, '2021-04-22 06:17:14'),
(261, 596, '', 1, 'BCC7CDBC19B790EAE053D30811ACC546', '860033******3234', '2410', 'SHERIYAZDANOVA  NODIRA', '998911912727', 59283, NULL, 0, 1, '2021-03-05 14:36:14', 0, '2021-04-22 06:17:14'),
(262, 596, '', 2, 'BCC7CDC1024490F0E053D30811AC7E95', '860003******7971', '2512', 'SHERIYAZDANOVA NODIRA', '998911912727', 0, NULL, 0, 1, '2021-03-05 14:36:48', 0, '2021-04-22 06:17:14'),
(263, 600, 'UNIVERSALBANK', 1, '9FE042D753E22109E0530100007F13C5', '860048******0831', '2309', 'ABDUSAMADOV ABDUKHOLID', '998977514307', 1084862, NULL, 0, 1, '2021-03-05 16:53:35', 0, '2021-04-22 06:17:14'),
(264, 627, '', 1, 'BCCE2FBE5A18C9D9E053D30811ACD630', '860006******8092', '2511', 'RUZUMOV BAXRIDDIN', '998901784910', 16388973, NULL, 0, 1, '2021-03-05 22:10:51', 0, '2021-04-22 06:17:14'),
(265, 597, 'SQB UZCARD', 1, 'BCDC855F746752A9E053D30811ACBC19', '860003******5975', '2512', 'SARIDJANOVA FARIDA', '998998571147', 7000000, NULL, 0, 1, '2021-03-06 15:21:17', 0, '2021-04-22 06:17:14'),
(266, 674, '', 1, 'A5E8F20F5D2142A1E0530100007F153E', '860057******8727', '2304', 'SHAFIKOV ASFER RESHADOVICH', '998909195056', 214045032, NULL, 0, 1, '2021-03-11 12:58:46', 0, '2021-04-22 06:17:14'),
(267, 674, '', 2, '7a6743d0-2550-316c-9a30-2b14717a8ac9', '986027******9678', '2204', 'ASFER SHAFIKOV', '998909195056', 379501887, NULL, 0, 1, '2021-03-11 12:59:20', 0, '2021-04-22 06:17:14'),
(270, 553, 'кап', 1, 'BD4689D0014C4816E053D30811ACD046', '860049******8799', '2304', 'KABIROV  ABDURAUF', '998935869109', 20, NULL, 0, 1, '2021-03-11 21:38:46', 0, '2021-04-22 06:17:14'),
(271, 682, '', 1, 'BD5360B42632C671E053D30811ACB4DF', '860033******9241', '2512', 'RUZUMOVA GUZAL', '998903284975', 1914242, NULL, 0, 1, '2021-03-12 13:02:42', 0, '2021-04-22 06:17:14'),
(272, 553, 'хумо', 2, 'f24d5984-f9aa-3985-8df0-352ea31aa327', '986027******0803', '2204', 'ABDURAUF KABIROV', '998981372017', 89400, 'a4c42bfd5f5130ddf96e34a036c75e0a', 0, 0, '2021-03-12 13:56:36', 0, '2021-04-22 06:17:14'),
(276, 685, '', 1, 'BD574E195E45EA84E053D30811ACF817', '860014******6176', '2408', 'ISAYEVA NILUFAR BAXTIYOROV', '998998282856', 39934594, NULL, 0, 1, '2021-03-12 17:41:53', 0, '2021-04-22 06:17:14'),
(277, 685, '', 2, '270ce7df-6c9c-3926-b118-a180fafc5ca9', '986017******6555', '2406', 'NILUFAR ISAEVA', '998998282856', 53077500, NULL, 0, 1, '2021-03-12 17:42:50', 0, '2021-04-22 06:17:14'),
(278, 686, '', 1, 'BD57A2FE446CEDC8E053D30811AC19C0', '860057******4691', '2406', 'IRMATOV RAVSHAN', '998935400080', 4490000, NULL, 0, 1, '2021-03-12 18:02:25', 0, '2021-04-22 06:17:14'),
(279, 686, '', 2, '7adc1188-9dae-3e94-92c2-c674511bc097', '986027******8844', '2204', 'RAVSHAN IRMATOV', '998935400080', 8540702, NULL, 0, 1, '2021-03-12 18:03:40', 0, '2021-04-22 06:17:14'),
(281, 687, '', 2, 'BD6F0223875CD44FE053D30811AC78E8', '860013******3727', '2412', 'XUDOYBERDIYEV LAZIZ', '998993341516', 4354742, NULL, 0, 1, '2021-03-13 21:55:58', 0, '2021-04-22 06:17:14'),
(282, 681, 'Anor TRIA', 1, '5e9955b1-7de8-33ab-a914-05e4b63eb305', '986060******1052', '2601', 'FARRUH/ABDUJABBOROV', '998909947987', 100000, NULL, 0, 0, '2021-03-13 22:14:36', 1, '2021-04-22 06:17:14'),
(283, 681, 'OFB Uzcard', 1, 'BCC57C4F87287B72E053D30811AC5B5B', '860057******1843', '2410', 'ABDUJABBOROV FARRUKH', '998909947987', 167650083, NULL, 0, 0, '2021-03-13 22:16:09', 1, '2021-04-22 06:17:14'),
(284, 681, 'Hamkor Uzcard', 1, 'BD6F5161F436D718E053D30811ACC464', '860012******8385', '2412', 'ABDUJABBOROV FARRUH', '998909947987', 47750, NULL, 0, 0, '2021-03-13 22:17:28', 1, '2021-04-22 06:17:14'),
(286, 688, '', 2, '3a414447-85a0-3737-9fd8-5eb4f3ef4783', '986027******8362', '2602', 'ISMATILLO MAKHMUDJONOV', '998993019796', 0, NULL, 0, 1, '2021-03-13 22:19:40', 0, '2021-04-22 06:17:14'),
(287, 688, '', 3, 'BD6F511F4147D716E053D30811AC63AC', '860012******6174', '2502', 'MAXMUDJONOV ISMATILLO', '998993019796', 1750387, NULL, 0, 1, '2021-03-13 22:20:25', 0, '2021-04-22 06:17:14'),
(288, 593, 'карта', 1, 'A3E51A103ADD6635E0530100007FDF02', '860055******3551', '2411', 'ZOKIRKHUJAEV AZIZKHUJA', '998909969699', 292347, NULL, 0, 1, '2021-03-15 19:08:38', 0, '2021-04-22 06:17:14'),
(291, 696, '', 1, '9D54DB6055611527E055000000000001', '860057******3541', '2311', 'BEKIROVA ELNARA ASANOVNA', '998935759396', 9021515, NULL, 0, 1, '2021-03-17 14:54:51', 0, '2021-04-22 06:17:14'),
(292, 696, '', 2, 'aedc0c5f-9732-327b-8242-7f8cb84c62ff', '986027******6020', '2204', 'ELNARA BEKIROVA', '998935759396', 0, NULL, 0, 1, '2021-03-17 14:55:48', 0, '2021-04-22 06:17:14'),
(293, 696, '', 3, 'B8516566F49FA728E053D30811ACD9C0', '860014******3595', '2406', 'BOYKOBILOV KAMRONBEK TOKHI', '998935759396', 153702, NULL, 0, 1, '2021-03-17 14:58:25', 0, '2021-04-22 06:17:14'),
(294, 696, '', 4, 'BDB9AC0DFBC39D3BE053D30811ACB452', '860049******9081', '2509', 'KARIMOV RAFIK OPERU', '998903583956', 12102825, 'e5a90182cc81e12ab5e72d66e0b46fe3', 0, 0, '2021-03-17 14:59:09', 0, '2021-04-22 06:17:14'),
(295, 663, '', 1, 'BC7D0FD25399B7F4E053D30811AC3E0A', '860057******2418', '2601', 'SOROKIN VALERIY DENISOVICH', '998946015447', 2460980, NULL, 0, 1, '2021-03-18 11:34:10', 0, '2021-04-22 06:17:14'),
(296, 663, 'Asia Alliance Bank', 1, 'BDCAEC9BE3ED4416E053D30811ACA15A', '860055******5697', '2511', 'SAFARYAN VAZGEN KAMOVICH', '998909722676', 292687129, 'e1021d43911ca2c1845910d84f40aeae', 0, 0, '2021-03-18 11:38:00', 1, '2021-04-22 06:17:14'),
(300, 704, '', 1, 'B31A14AEAA287957E0530100007F3F7D', '860002******3500', '2411', 'VAKKASOV DILSHOD', '998998349349', 286188613, NULL, 0, 1, '2021-03-23 09:15:50', 0, '2021-04-22 06:17:14'),
(301, 705, 'зарплата', 1, 'BDC8CF2B0D7D30FCE053D30811ACFC7B', '860057******5043', '2603', 'LI DMITRIY OLEGOVICH', '998977299900', 56281000, NULL, 0, 1, '2021-03-24 16:56:42', 0, '2021-04-22 06:17:14'),
(302, 705, 'вкладная', 2, 'BE47F79BDF32AFF0E053D30811ACB882', '860049******5968', '2503', 'DMITRIY LI OPERU', '998977299900', 3109297, NULL, 0, 1, '2021-03-24 16:57:55', 0, '2021-04-22 06:17:14'),
(303, 705, 'основная', 3, 'BE47F7D3E9E8AFFAE053D30811AC91B7', '860049******3920', '2501', 'LI   DMITRIY  OLEGOVICH', '998977299900', 18552505, NULL, 0, 1, '2021-03-24 17:00:04', 0, '2021-04-22 06:17:14'),
(304, 705, 'хумо офб', 4, '18e468c2-94cf-3de3-828a-6cccc464a47a', '986027******0236', '2603', 'DMITRIY LI', '998981372017', 0, '00989c20ff1386dc386d8124ebcba1a5', 3, 0, '2021-03-24 17:02:09', 0, '2021-04-22 06:17:14'),
(309, 723, '', 2, '0b0315c6-b98d-3088-b0b8-88b89adf3558', '986012******6981', '2512', 'BEHRUZ MAHMUDOV', '998914599224', 955300, NULL, 0, 1, '2021-03-25 12:36:27', 0, '2021-04-22 06:17:14'),
(311, 669, '', 1, 'BF3545A494B01485E053D30811AC28D3', '860057******7971', '2405', 'AKHMADOV ADKHAMJON', '998911344448', 22110429, NULL, 0, 1, '2021-04-05 12:03:39', 0, '2021-04-22 06:17:14'),
(313, 736, 'OFB Uzcard', 1, 'BE5A6DED78D9410DE053D30811AC011E', '860057******7939', '2506', 'BEKNAZAROV KAMOLIDDIN', '998998730003', 59227772, NULL, 0, 1, '2021-04-06 18:16:56', 0, '2021-04-22 06:17:14'),
(314, 739, 'Tuit aloqabank', 3, 'BF5DE6C9D6946596E053D30811ACBCEF', '860031******0562', '2502', 'MAKHMUDOV BEKHRUZ', '998997025670', 37989450, NULL, 0, 1, '2021-04-07 12:40:45', 0, '2021-04-22 06:17:14'),
(321, 741, '', 1, '5ba8a93dca57d70aec5bafc7', '860031******9658', '2309', 'ZAKIROV RUSTAM RINATOVICH', '998909822311', 569719799, NULL, 0, 1, '2021-04-07 14:19:14', 0, '2021-04-22 06:17:14'),
(325, 745, '', 1, 'BF895204FBAFB4A7E053D30811ACB6CE', '860057******0055', '2407', 'VOLKOV ARTYOM YEVGENEVICH', '998909166017', 107570089, NULL, 0, 1, '2021-04-09 16:29:33', 0, '2021-04-22 06:17:14'),
(326, 745, '', 2, 'BF897D2D8CC6B5B6E053D30811AC4563', '860014******6764', '2507', 'ABDULLAYEVA NARGIZA RUSTAM', '998901899219', 71109475, 'c9e37c28ce5852218032aae6f5632b13', 0, 1, '2021-04-09 16:31:36', 0, '2021-04-22 06:17:14'),
(327, 746, '', 1, 'BF902F14B4EBF428E053D30811AC4FAE', '860033******1682', '2311', 'TURDIEVA NATALYA', '998971560337', 23, 'c7c46d4baf816bfb07c7f3bf96d88544', 0, 1, '2021-04-10 00:32:02', 0, '2021-04-22 06:17:14'),
(332, 741, 'капитал', 2, 'A960104BBDC860F8E0530100007F0DC7', '860049******9578', '2503', 'RUSTAM ZAKIROV TGF', '998909822311', 188288324, NULL, 0, 1, '2021-04-16 16:06:56', 0, '2021-04-22 06:17:14'),
(333, 739, 'tbc', 4, 'dc4c5e47-5e3c-35e7-9a92-8e3e87dcb7b0', '986035******3916', '2604', 'BEKHRUZ MAKHMUDOV', '998997025670', 10000000, NULL, 0, 1, '2021-04-19 10:53:25', 0, '2021-04-22 06:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `card_debit`
--

CREATE TABLE `card_debit` (
  `id` int(11) NOT NULL,
  `card_id` int(11) UNSIGNED NOT NULL,
  `multicard_id` int(11) UNSIGNED NOT NULL,
  `card_hold_id` int(11) UNSIGNED DEFAULT NULL,
  `amount` bigint(20) NOT NULL,
  `refnum` varchar(50) DEFAULT NULL,
  `request` mediumtext,
  `response` mediumtext,
  `status` enum('ERROR','OK') DEFAULT NULL,
  `sync_finished` int(1) NOT NULL DEFAULT '0' COMMENT '0 - новое списание, 1 - отправлена заявка на установку лимита, мультикарт пополнена',
  `cl_history_id` int(11) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_debit`
--

INSERT INTO `card_debit` (`id`, `card_id`, `multicard_id`, `card_hold_id`, `amount`, `refnum`, `request`, `response`, `status`, `sync_finished`, `cl_history_id`, `added_on`, `updated_on`) VALUES
(18, 107, 166, 286, 314060, '009980470591', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":863448,\"params\":{\"hold\":{\"holdId\":\"136049\",\"ext\":\"multicard_hold_286\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":314060,\"stan\":\"524662\",\"date12\":\"201203213010\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":863448,\"result\":{\"id\":\"433835907\",\"username\":\"ipsh\",\"refNum\":\"009980470591\",\"ext\":\"multicard_hold_286\",\"pan\":\"860031******4650\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"1203213010\",\"date12\":\"201203213010\",\"amount\":314060,\"currency\":860,\"stan\":524662,\"field38\":\"470591\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, NULL, '2020-12-03 21:30:10', '2020-12-04 02:04:16'),
(19, 123, 333, 306, 500000, '010082147748', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":35424,\"params\":{\"hold\":{\"holdId\":\"152252\",\"ext\":\"multicard_hold_306\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":500000,\"stan\":\"408474\",\"date12\":\"201216143003\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":35424,\"result\":{\"id\":\"453124686\",\"username\":\"ipsh\",\"refNum\":\"010082147748\",\"ext\":\"multicard_hold_306\",\"pan\":\"860057******4753\",\"pan2\":\"\",\"expiry\":\"2412\",\"tranType\":\"DEBIT\",\"date7\":\"1216143003\",\"date12\":\"201216143003\",\"amount\":500000,\"currency\":860,\"stan\":408474,\"field38\":\"147748\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 331, '2020-12-16 14:30:03', '2020-12-18 17:10:03'),
(20, 111, 166, 339, 29500000, '010453549924', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":78385,\"params\":{\"hold\":{\"holdId\":\"196758\",\"ext\":\"multicard_hold_339\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":29500000,\"stan\":\"514615\",\"date12\":\"210202200119\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":78385,\"result\":{\"id\":\"530450986\",\"username\":\"ipsh\",\"refNum\":\"010453549924\",\"ext\":\"multicard_hold_339\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0202200119\",\"date12\":\"210202200119\",\"amount\":29500000,\"currency\":860,\"stan\":514615,\"field38\":\"549924\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 358, '2021-02-02 20:01:19', '2021-02-03 05:10:01'),
(21, 111, 166, 340, 100, '010459744420', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":126531,\"params\":{\"hold\":{\"holdId\":\"197805\",\"ext\":\"multicard_hold_340\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":100,\"stan\":\"121804\",\"date12\":\"210203151003\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":126531,\"result\":{\"id\":\"531822700\",\"username\":\"ipsh\",\"refNum\":\"010459744420\",\"ext\":\"multicard_hold_340\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0203151003\",\"date12\":\"210203151003\",\"amount\":100,\"currency\":860,\"stan\":121804,\"field38\":\"744420\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 359, '2021-02-03 15:10:03', '2021-02-03 15:40:01'),
(22, 111, 166, 351, 9723900, '010526799336', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":824043,\"params\":{\"hold\":{\"holdId\":\"207440\",\"ext\":\"multicard_hold_351\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":9723900,\"stan\":\"870260\",\"date12\":\"210211134550\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":824043,\"result\":{\"id\":\"545149485\",\"username\":\"ipsh\",\"refNum\":\"010526799336\",\"ext\":\"multicard_hold_351\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0211134551\",\"date12\":\"210211134550\",\"amount\":9723900,\"currency\":860,\"stan\":870260,\"field38\":\"799336\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 372, '2021-02-11 13:45:52', '2021-02-12 05:12:02'),
(23, 124, 333, NULL, 10200, '2050615', NULL, '{\"create\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"},\"transaction_id\":14578999,\"store_transaction\":{\"success_trans_id\":null,\"trans_id\":14578999,\"store\":{\"id\":417,\"name\":\"MULTICARD\",\"desc\":\"\",\"logo\":null,\"ga_id\":null},\"terminal_id\":null,\"account\":\"333\",\"amount\":10200,\"confirmed\":false,\"prepay_time\":null,\"confirm_time\":null,\"label\":{\"type_id\":49,\"label_ru\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0438\\u043d\\u0432\\u043e\\u0439\\u0441\\u0430\",\"label_uz\":\"Invoys raqami\",\"label_en\":\"Invoice number\"},\"details\":\"333\",\"commission_value\":\"0\",\"commission_type\":\"0\",\"total\":10200,\"card_id\":null,\"status_code\":null,\"status_message\":null}},\"pre_confirm\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"}},\"confirm\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"},\"store_transaction\":{\"success_trans_id\":2050615,\"trans_id\":14578999,\"store\":{\"id\":417,\"name\":\"MULTICARD\",\"desc\":\"\",\"logo\":null,\"ga_id\":null},\"terminal_id\":\"92800562\",\"account\":\"333\",\"amount\":10200,\"confirmed\":true,\"prepay_time\":1614969501000,\"confirm_time\":1614969502042,\"label\":{\"type_id\":49,\"label_ru\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0438\\u043d\\u0432\\u043e\\u0439\\u0441\\u0430\",\"label_uz\":\"Invoys raqami\",\"label_en\":\"Invoice number\"},\"details\":\"333\",\"commission_value\":\"0\",\"commission_type\":\"0\",\"total\":10200,\"card_id\":\"B5F1C4F69EC25C43E0530100007FEE59\",\"status_code\":\"0\",\"status_message\":\"Success\"}}}', 'OK', 1, 390, '2021-03-05 23:38:22', '2021-03-10 05:10:01'),
(24, 263, 598, 372, 40000, '010714423844', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":408329,\"params\":{\"hold\":{\"holdId\":\"232696\",\"ext\":\"multicard_hold_372\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":40000,\"stan\":\"212148\",\"date12\":\"210306134004\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":408329,\"result\":{\"id\":\"586959522\",\"username\":\"ipsh\",\"refNum\":\"010714423844\",\"ext\":\"multicard_hold_372\",\"pan\":\"860048******0831\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0306134004\",\"date12\":\"210306134004\",\"amount\":40000,\"currency\":860,\"stan\":212148,\"field38\":\"423844\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 388, '2021-03-06 13:40:04', '2021-03-07 05:10:02'),
(25, 263, 598, 374, 140000, '010777513489', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":780239,\"params\":{\"hold\":{\"holdId\":\"233510\",\"ext\":\"multicard_hold_374\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":140000,\"stan\":\"705444\",\"date12\":\"210315101007\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":780239,\"result\":{\"id\":\"602256551\",\"username\":\"ipsh\",\"refNum\":\"010777513489\",\"ext\":\"multicard_hold_374\",\"pan\":\"860048******0831\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0315101007\",\"date12\":\"210315101007\",\"amount\":140000,\"currency\":860,\"stan\":705444,\"field38\":\"513489\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 398, '2021-03-15 10:10:07', '2021-03-16 05:20:04'),
(26, 188, 591, 383, 33748, '010787470470', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":748411,\"params\":{\"hold\":{\"holdId\":\"242512\",\"ext\":\"multicard_hold_383\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":\"33748\",\"stan\":\"813157\",\"date12\":\"210316112328\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":748411,\"result\":{\"id\":\"604279802\",\"username\":\"ipsh\",\"refNum\":\"010787470470\",\"ext\":\"multicard_hold_383\",\"pan\":\"860055******5531\",\"pan2\":\"\",\"expiry\":\"2310\",\"tranType\":\"DEBIT\",\"date7\":\"0316112328\",\"date12\":\"210316112328\",\"amount\":33748,\"currency\":860,\"stan\":813157,\"field38\":\"470470\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 399, '2021-03-16 11:23:28', '2021-03-17 05:10:02'),
(27, 288, 591, 384, 1365752, '010787470493', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":765421,\"params\":{\"hold\":{\"holdId\":\"242513\",\"ext\":\"multicard_hold_384\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1365752,\"stan\":\"404468\",\"date12\":\"210316120632\"}}}', '{\n  \"result\" : {\n                \"utrnno\": 10787470493,\n                \"transType\": \"683\",\n                \"hpan\": \"860055***3551\",\n                \"utime\": 112328,\n                \"udate\": 20210316,\n                \"bankDate\": null,\n                \"reqamt\": 1365752,\n                \"resp\": -1,\n                \"reversal\": false,\n                \"orgdev\": 990930,\n                \"merchant\": \"10718009\",\n                \"terminal\": \"92800562\",\n                \"merchantName\": \"TOSHKENT SH., ORIENT FINANS KHAT BANKI\",\n                \"street\": \"M ULUGBEK T OSIYO 5\",\n                \"city\": \"Toshkent\",\n                \"isCredit\": false,\n                \"credit\": false,\n                \"mcc\": 6010,\n                \"currency\": 860,\n                \"actamt\": 1365752,\n                \"acctbal\": 56325743,\n                \"conamt\": 1365752\n            },\n  \"jsonrpc\" : \"2.0\",\n  \"id\" : 765421\n}', 'OK', 1, 399, '2021-03-16 12:06:32', '2021-03-17 05:10:02'),
(29, 263, 598, 382, 60000, '010793738556', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":533196,\"params\":{\"hold\":{\"holdId\":\"241899\",\"ext\":\"multicard_hold_382\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":60000,\"stan\":\"757810\",\"date12\":\"210317022009\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":533196,\"result\":{\"id\":\"605743178\",\"username\":\"ipsh\",\"refNum\":\"010793738556\",\"ext\":\"multicard_hold_382\",\"pan\":\"860048******0831\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0317022009\",\"date12\":\"210317022009\",\"amount\":60000,\"currency\":860,\"stan\":757810,\"field38\":\"738556\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 400, '2021-03-17 02:20:10', '2021-03-17 05:10:02'),
(30, 295, 657, 387, 590000, '010805571464', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":143905,\"params\":{\"hold\":{\"holdId\":\"245317\",\"ext\":\"multicard_hold_387\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":590000,\"stan\":\"113569\",\"date12\":\"210318122229\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":143905,\"result\":{\"id\":\"608405218\",\"username\":\"ipsh\",\"refNum\":\"010805571464\",\"ext\":\"multicard_hold_387\",\"pan\":\"860057******2418\",\"pan2\":\"\",\"expiry\":\"2601\",\"tranType\":\"DEBIT\",\"date7\":\"0318122229\",\"date12\":\"210318122229\",\"amount\":590000,\"currency\":860,\"stan\":113569,\"field38\":\"571464\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 404, '2021-03-18 12:22:29', '2021-03-19 05:10:01'),
(31, 295, 657, 388, 590000, '010805634041', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":26697,\"params\":{\"hold\":{\"holdId\":\"245335\",\"ext\":\"multicard_hold_388\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":590000,\"stan\":\"109205\",\"date12\":\"210318122753\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":26697,\"result\":{\"id\":\"608414833\",\"username\":\"ipsh\",\"refNum\":\"010805634041\",\"ext\":\"multicard_hold_388\",\"pan\":\"860057******2418\",\"pan2\":\"\",\"expiry\":\"2601\",\"tranType\":\"DEBIT\",\"date7\":\"0318122753\",\"date12\":\"210318122753\",\"amount\":590000,\"currency\":860,\"stan\":109205,\"field38\":\"634041\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 404, '2021-03-18 12:27:53', '2021-03-19 05:10:01'),
(32, 278, 680, 398, 6200000, '010893555054', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":36685,\"params\":{\"hold\":{\"holdId\":\"284590\",\"ext\":\"multicard_hold_398\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":6200000,\"stan\":\"595913\",\"date12\":\"210330135640\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":36685,\"result\":{\"id\":\"628936899\",\"username\":\"ipsh\",\"refNum\":\"010893555054\",\"ext\":\"multicard_hold_398\",\"pan\":\"860057******4691\",\"pan2\":\"\",\"expiry\":\"2406\",\"tranType\":\"DEBIT\",\"date7\":\"0330135640\",\"date12\":\"210330135640\",\"amount\":6200000,\"currency\":860,\"stan\":595913,\"field38\":\"555054\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 414, '2021-03-30 13:56:40', '2021-03-31 05:10:03'),
(33, 263, 598, 386, 250000, '010905791713', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":820317,\"params\":{\"hold\":{\"holdId\":\"243982\",\"ext\":\"multicard_hold_386\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":\"250000\",\"stan\":\"664274\",\"date12\":\"210401002010\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":820317,\"result\":{\"id\":\"632020909\",\"username\":\"ipsh\",\"refNum\":\"010905791713\",\"ext\":\"multicard_hold_386\",\"pan\":\"860048******0831\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0401002010\",\"date12\":\"210401002010\",\"amount\":250000,\"currency\":860,\"stan\":664274,\"field38\":\"791713\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 427, '2021-04-01 00:20:10', '2021-04-10 14:14:44'),
(34, 321, 735, 402, 13000000, '010986838749', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":192592,\"params\":{\"hold\":{\"holdId\":\"350556\",\"ext\":\"multicard_hold_402\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":13000000,\"stan\":\"637781\",\"date12\":\"210409164011\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":192592,\"result\":{\"id\":\"650300807\",\"username\":\"ipsh\",\"refNum\":\"010986838749\",\"ext\":\"multicard_hold_402\",\"pan\":\"860031******9658\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0409164011\",\"date12\":\"210409164011\",\"amount\":13000000,\"currency\":860,\"stan\":637781,\"field38\":\"838749\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 425, '2021-04-09 16:40:11', '2021-04-10 05:10:04'),
(35, 278, 680, 404, 2000000, '010989574970', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":858370,\"params\":{\"hold\":{\"holdId\":\"362706\",\"ext\":\"multicard_hold_404\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":2000000,\"stan\":\"346708\",\"date12\":\"210409221011\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":858370,\"result\":{\"id\":\"650916775\",\"username\":\"ipsh\",\"refNum\":\"010989574970\",\"ext\":\"multicard_hold_404\",\"pan\":\"860057******4691\",\"pan2\":\"\",\"expiry\":\"2406\",\"tranType\":\"DEBIT\",\"date7\":\"0409221011\",\"date12\":\"210409221011\",\"amount\":2000000,\"currency\":860,\"stan\":346708,\"field38\":\"574970\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 424, '2021-04-09 22:10:11', '2021-04-10 05:10:03'),
(36, 266, 668, 412, 29892000, '010997575630', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":366184,\"params\":{\"hold\":{\"holdId\":\"377632\",\"ext\":\"multicard_hold_412\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":29892000,\"stan\":\"831197\",\"date12\":\"210410223012\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":366184,\"result\":{\"id\":\"652721652\",\"username\":\"ipsh\",\"refNum\":\"010997575630\",\"ext\":\"multicard_hold_412\",\"pan\":\"860057******8727\",\"pan2\":\"\",\"expiry\":\"2304\",\"tranType\":\"DEBIT\",\"date7\":\"0410223012\",\"date12\":\"210410223012\",\"amount\":29892000,\"currency\":860,\"stan\":831197,\"field38\":\"575630\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 430, '2021-04-10 22:30:12', '2021-04-11 05:10:02'),
(37, 111, 166, 411, 1535000, '011000945476', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":585179,\"params\":{\"hold\":{\"holdId\":\"373341\",\"ext\":\"multicard_hold_411\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1535000,\"stan\":\"505601\",\"date12\":\"210411124926\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":585179,\"result\":{\"id\":\"653419710\",\"username\":\"ipsh\",\"refNum\":\"011000945476\",\"ext\":\"multicard_hold_411\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0411124926\",\"date12\":\"210411124926\",\"amount\":1535000,\"currency\":860,\"stan\":505601,\"field38\":\"945476\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 437, '2021-04-11 12:49:26', '2021-04-12 05:20:02'),
(38, 321, 735, 414, 3818000, '011002379256', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":845895,\"params\":{\"hold\":{\"holdId\":\"378898\",\"ext\":\"multicard_hold_414\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":3818000,\"stan\":\"335584\",\"date12\":\"210411170013\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":845895,\"result\":{\"id\":\"653757019\",\"username\":\"ipsh\",\"refNum\":\"011002379256\",\"ext\":\"multicard_hold_414\",\"pan\":\"860031******9658\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0411170013\",\"date12\":\"210411170013\",\"amount\":3818000,\"currency\":860,\"stan\":335584,\"field38\":\"379256\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 438, '2021-04-11 17:00:13', '2021-04-12 05:20:10'),
(39, 111, 166, 415, 8400000, '011007720278', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":591571,\"params\":{\"hold\":{\"holdId\":\"380790\",\"ext\":\"multicard_hold_415\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":8400000,\"stan\":\"793720\",\"date12\":\"210412124958\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":591571,\"result\":{\"id\":\"655094321\",\"username\":\"ipsh\",\"refNum\":\"011007720278\",\"ext\":\"multicard_hold_415\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0412124958\",\"date12\":\"210412124958\",\"amount\":8400000,\"currency\":860,\"stan\":793720,\"field38\":\"720278\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 445, '2021-04-12 12:49:58', '2021-04-13 05:20:02'),
(41, 278, 680, 409, 3050000, '011008391658', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":939983,\"params\":{\"hold\":{\"holdId\":\"370722\",\"ext\":\"multicard_hold_409\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":3050000,\"stan\":\"305888\",\"date12\":\"210412142011\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":939983,\"result\":{\"id\":\"655259337\",\"username\":\"ipsh\",\"refNum\":\"011008391658\",\"ext\":\"multicard_hold_409\",\"pan\":\"860057******4691\",\"pan2\":\"\",\"expiry\":\"2406\",\"tranType\":\"DEBIT\",\"date7\":\"0412142011\",\"date12\":\"210412142011\",\"amount\":3050000,\"currency\":860,\"stan\":305888,\"field38\":\"391658\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 446, '2021-04-12 14:20:11', '2021-04-13 05:20:07'),
(42, 314, 733, 424, 1430000, '011010383444', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":28043,\"params\":{\"hold\":{\"holdId\":\"387696\",\"ext\":\"multicard_hold_424\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1430000,\"stan\":\"612857\",\"date12\":\"210412181410\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":28043,\"result\":{\"id\":\"655699656\",\"username\":\"ipsh\",\"refNum\":\"011010383444\",\"ext\":\"multicard_hold_424\",\"pan\":\"860031******0562\",\"pan2\":\"\",\"expiry\":\"2502\",\"tranType\":\"DEBIT\",\"date7\":\"0412181410\",\"date12\":\"210412181410\",\"amount\":1430000,\"currency\":860,\"stan\":612857,\"field38\":\"383444\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 447, '2021-04-12 18:14:10', '2021-04-13 05:20:12'),
(43, 327, 740, 410, 1454057, '011011659666', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":164658,\"params\":{\"hold\":{\"holdId\":\"371464\",\"ext\":\"multicard_hold_410\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1454057,\"stan\":\"55978\",\"date12\":\"210412211011\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":164658,\"result\":{\"id\":\"656001218\",\"username\":\"ipsh\",\"refNum\":\"011011659666\",\"ext\":\"multicard_hold_410\",\"pan\":\"860033******1682\",\"pan2\":\"\",\"expiry\":\"2311\",\"tranType\":\"DEBIT\",\"date7\":\"0412211011\",\"date12\":\"210412211011\",\"amount\":1454057,\"currency\":860,\"stan\":55978,\"field38\":\"659666\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 448, '2021-04-12 21:10:11', '2021-04-13 05:20:13'),
(44, 278, 680, 426, 16500000, '011012082177', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":359852,\"params\":{\"hold\":{\"holdId\":\"388150\",\"ext\":\"multicard_hold_426\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":16500000,\"stan\":\"769861\",\"date12\":\"210412224011\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":359852,\"result\":{\"id\":\"656108788\",\"username\":\"ipsh\",\"refNum\":\"011012082177\",\"ext\":\"multicard_hold_426\",\"pan\":\"860057******4691\",\"pan2\":\"\",\"expiry\":\"2406\",\"tranType\":\"DEBIT\",\"date7\":\"0412224012\",\"date12\":\"210412224011\",\"amount\":16500000,\"currency\":860,\"stan\":769861,\"field38\":\"082177\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 446, '2021-04-12 22:40:12', '2021-04-13 05:20:07'),
(45, 314, 733, 428, 1700000, '011012385407', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":831599,\"params\":{\"hold\":{\"holdId\":\"389667\",\"ext\":\"multicard_hold_428\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1700000,\"stan\":\"665549\",\"date12\":\"210413000014\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":831599,\"result\":{\"id\":\"656175071\",\"username\":\"ipsh\",\"refNum\":\"011012385407\",\"ext\":\"multicard_hold_428\",\"pan\":\"860031******0562\",\"pan2\":\"\",\"expiry\":\"2502\",\"tranType\":\"DEBIT\",\"date7\":\"0413000014\",\"date12\":\"210413000014\",\"amount\":1700000,\"currency\":860,\"stan\":665549,\"field38\":\"385407\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 447, '2021-04-13 00:00:14', '2021-04-13 05:20:12'),
(46, 321, 735, 417, 4600000, '011016143274', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":262295,\"params\":{\"hold\":{\"holdId\":\"382268\",\"ext\":\"multicard_hold_417\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":4600000,\"stan\":\"987513\",\"date12\":\"210413133011\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":262295,\"result\":{\"id\":\"656988993\",\"username\":\"ipsh\",\"refNum\":\"011016143274\",\"ext\":\"multicard_hold_417\",\"pan\":\"860031******9658\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0413133012\",\"date12\":\"210413133011\",\"amount\":4600000,\"currency\":860,\"stan\":987513,\"field38\":\"143274\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 450, '2021-04-13 13:30:12', '2021-04-14 05:10:03'),
(47, 325, 739, 416, 1200000, '011026674154', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":832970,\"params\":{\"hold\":{\"holdId\":\"381556\",\"ext\":\"multicard_hold_416\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1200000,\"stan\":\"881967\",\"date12\":\"210414192446\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":832970,\"result\":{\"id\":\"659346732\",\"username\":\"ipsh\",\"refNum\":\"011026674154\",\"ext\":\"multicard_hold_416\",\"pan\":\"860057******0055\",\"pan2\":\"\",\"expiry\":\"2407\",\"tranType\":\"DEBIT\",\"date7\":\"0414192446\",\"date12\":\"210414192446\",\"amount\":1200000,\"currency\":860,\"stan\":881967,\"field38\":\"674154\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 454, '2021-04-14 19:24:46', '2021-04-15 06:00:11'),
(48, 325, 739, 436, 3300000, '011026795583', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":878388,\"params\":{\"hold\":{\"holdId\":\"405546\",\"ext\":\"multicard_hold_436\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":3300000,\"stan\":\"710057\",\"date12\":\"210414194601\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":878388,\"result\":{\"id\":\"659383015\",\"username\":\"ipsh\",\"refNum\":\"011026795583\",\"ext\":\"multicard_hold_436\",\"pan\":\"860057******0055\",\"pan2\":\"\",\"expiry\":\"2407\",\"tranType\":\"DEBIT\",\"date7\":\"0414194601\",\"date12\":\"210414194601\",\"amount\":3300000,\"currency\":860,\"stan\":710057,\"field38\":\"795583\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 454, '2021-04-14 19:46:01', '2021-04-15 06:00:11'),
(49, 325, 739, 437, 1800000, '011027173883', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":864746,\"params\":{\"hold\":{\"holdId\":\"405708\",\"ext\":\"multicard_hold_437\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":1800000,\"stan\":\"446118\",\"date12\":\"210414204723\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":864746,\"result\":{\"id\":\"659484630\",\"username\":\"ipsh\",\"refNum\":\"011027173883\",\"ext\":\"multicard_hold_437\",\"pan\":\"860057******0055\",\"pan2\":\"\",\"expiry\":\"2407\",\"tranType\":\"DEBIT\",\"date7\":\"0414204723\",\"date12\":\"210414204723\",\"amount\":1800000,\"currency\":860,\"stan\":446118,\"field38\":\"173883\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 454, '2021-04-14 20:47:23', '2021-04-15 06:00:11'),
(50, 111, 166, 427, 3100000, '011040809306', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":777066,\"params\":{\"hold\":{\"holdId\":\"388377\",\"ext\":\"multicard_hold_427\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":3100000,\"stan\":\"36502\",\"date12\":\"210416142018\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":777066,\"result\":{\"id\":\"662581092\",\"username\":\"ipsh\",\"refNum\":\"011040809306\",\"ext\":\"multicard_hold_427\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0416142018\",\"date12\":\"210416142018\",\"amount\":3100000,\"currency\":860,\"stan\":36502,\"field38\":\"809306\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 461, '2021-04-16 14:20:18', '2021-04-17 05:20:01'),
(51, 278, 680, 430, 2060000, '011045115465', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":988028,\"params\":{\"hold\":{\"holdId\":\"391457\",\"ext\":\"multicard_hold_430\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":2060000,\"stan\":\"111741\",\"date12\":\"210416213013\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":988028,\"result\":{\"id\":\"663409855\",\"username\":\"ipsh\",\"refNum\":\"011045115465\",\"ext\":\"multicard_hold_430\",\"pan\":\"860057******4691\",\"pan2\":\"\",\"expiry\":\"2406\",\"tranType\":\"DEBIT\",\"date7\":\"0416213013\",\"date12\":\"210416213013\",\"amount\":2060000,\"currency\":860,\"stan\":111741,\"field38\":\"115465\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 462, '2021-04-16 21:30:13', '2021-04-17 05:20:06'),
(52, 111, 166, NULL, 50000, '2439713', NULL, '{\"create\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"},\"transaction_id\":19504693,\"store_transaction\":{\"success_trans_id\":null,\"trans_id\":19504693,\"store\":{\"id\":417,\"name\":\"MULTICARD\",\"desc\":\"\",\"logo\":null,\"ga_id\":null},\"terminal_id\":null,\"account\":\"166\",\"amount\":50000,\"confirmed\":false,\"prepay_time\":null,\"confirm_time\":null,\"label\":{\"type_id\":49,\"label_ru\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0438\\u043d\\u0432\\u043e\\u0439\\u0441\\u0430\",\"label_uz\":\"Invoys raqami\",\"label_en\":\"Invoice number\"},\"details\":\"166\",\"commission_value\":\"0\",\"commission_type\":\"0\",\"total\":50000,\"card_id\":null,\"status_code\":null,\"status_message\":null}},\"pre_confirm\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"}},\"confirm\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"},\"store_transaction\":{\"success_trans_id\":2439713,\"trans_id\":19504693,\"store\":{\"id\":417,\"name\":\"MULTICARD\",\"desc\":\"\",\"logo\":null,\"ga_id\":null},\"terminal_id\":\"92800562\",\"account\":\"166\",\"amount\":50000,\"confirmed\":true,\"prepay_time\":1618686136000,\"confirm_time\":1618686136875,\"label\":{\"type_id\":49,\"label_ru\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0438\\u043d\\u0432\\u043e\\u0439\\u0441\\u0430\",\"label_uz\":\"Invoys raqami\",\"label_en\":\"Invoice number\"},\"details\":\"166\",\"commission_value\":\"0\",\"commission_type\":\"0\",\"total\":50000,\"card_id\":\"8B431A6A1057EB41E0530100007FEA67\",\"status_code\":\"0\",\"status_message\":\"Success\"}}}', 'OK', 1, 465, '2021-04-18 00:02:16', '2021-04-19 05:20:02'),
(53, 111, 166, NULL, 60000, '2439717', NULL, '{\"create\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"},\"transaction_id\":19505989,\"store_transaction\":{\"success_trans_id\":null,\"trans_id\":19505989,\"store\":{\"id\":417,\"name\":\"MULTICARD\",\"desc\":\"\",\"logo\":null,\"ga_id\":null},\"terminal_id\":null,\"account\":\"166\",\"amount\":60000,\"confirmed\":false,\"prepay_time\":null,\"confirm_time\":null,\"label\":{\"type_id\":49,\"label_ru\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0438\\u043d\\u0432\\u043e\\u0439\\u0441\\u0430\",\"label_uz\":\"Invoys raqami\",\"label_en\":\"Invoice number\"},\"details\":\"166\",\"commission_value\":\"0\",\"commission_type\":\"0\",\"total\":60000,\"card_id\":null,\"status_code\":null,\"status_message\":null}},\"pre_confirm\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"}},\"confirm\":{\"result\":{\"code\":\"OK\",\"description\":\"\\u041d\\u0435\\u0442 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a\"},\"store_transaction\":{\"success_trans_id\":2439717,\"trans_id\":19505989,\"store\":{\"id\":417,\"name\":\"MULTICARD\",\"desc\":\"\",\"logo\":null,\"ga_id\":null},\"terminal_id\":\"92800562\",\"account\":\"166\",\"amount\":60000,\"confirmed\":true,\"prepay_time\":1618686867000,\"confirm_time\":1618686868170,\"label\":{\"type_id\":49,\"label_ru\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0438\\u043d\\u0432\\u043e\\u0439\\u0441\\u0430\",\"label_uz\":\"Invoys raqami\",\"label_en\":\"Invoice number\"},\"details\":\"166\",\"commission_value\":\"0\",\"commission_type\":\"0\",\"total\":60000,\"card_id\":\"8B431A6A1057EB41E0530100007FEA67\",\"status_code\":\"0\",\"status_message\":\"Success\"}}}', 'OK', 1, 465, '2021-04-18 00:14:28', '2021-04-19 05:20:02'),
(54, 321, 735, 446, 795000, '011064729055', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":459359,\"params\":{\"hold\":{\"holdId\":\"420279\",\"ext\":\"multicard_hold_446\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":795000,\"stan\":\"695287\",\"date12\":\"210419134507\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":459359,\"result\":{\"id\":\"667888100\",\"username\":\"ipsh\",\"refNum\":\"011064729055\",\"ext\":\"multicard_hold_446\",\"pan\":\"860031******9658\",\"pan2\":\"\",\"expiry\":\"2309\",\"tranType\":\"DEBIT\",\"date7\":\"0419134507\",\"date12\":\"210419134507\",\"amount\":795000,\"currency\":860,\"stan\":695287,\"field38\":\"729055\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 1, 467, '2021-04-19 13:45:07', '2021-04-20 05:10:03'),
(55, 111, 166, 455, 6480000, '011087159822', '{\"jsonrpc\":\"2.0\",\"method\":\"hold.dismiss.charge\",\"id\":200988,\"params\":{\"hold\":{\"holdId\":\"463505\",\"ext\":\"multicard_hold_455\",\"terminalId\":\"92800562\",\"merchantId\":\"10718009\",\"port\":\"16050\",\"amount\":6480000,\"stan\":\"876498\",\"date12\":\"210422104833\"}}}', '{\"jsonrpc\":\"2.0\",\"id\":200988,\"result\":{\"id\":\"672769407\",\"username\":\"ipsh\",\"refNum\":\"011087159822\",\"ext\":\"multicard_hold_455\",\"pan\":\"860031******7001\",\"pan2\":\"\",\"expiry\":\"2302\",\"tranType\":\"DEBIT\",\"date7\":\"0422104833\",\"date12\":\"210422104833\",\"amount\":6480000,\"currency\":860,\"stan\":876498,\"field38\":\"159822\",\"field48\":null,\"field91\":null,\"merchantId\":\"10718009\",\"terminalId\":\"92800562\",\"resp\":0,\"respText\":\"Successful transaction\",\"respSV\":\"00\",\"status\":\"OK\"}}', 'OK', 0, NULL, '2021-04-22 10:48:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `card_hold`
--

CREATE TABLE `card_hold` (
  `id` int(11) UNSIGNED NOT NULL,
  `card_id` int(11) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `active_till` datetime NOT NULL,
  `pc_hold_id` int(11) NOT NULL,
  `credit_limit_history_id` bigint(20) DEFAULT NULL,
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_hold`
--

INSERT INTO `card_hold` (`id`, `card_id`, `amount`, `active_till`, `pc_hold_id`, `credit_limit_history_id`, `canceled`, `added_on`, `updated_on`) VALUES
(130, 111, 200000, '2020-10-18 00:00:00', 61260, 112, 2, '2020-09-18 18:16:43', '2021-03-05 15:03:11'),
(138, 111, 4600000, '2020-10-18 00:00:00', 61297, 133, 2, '2020-09-18 18:54:13', '2021-03-05 15:03:11'),
(140, 111, 12500000, '2020-10-18 00:00:00', 61436, 136, 2, '2020-09-18 23:08:59', '2021-03-05 15:03:11'),
(141, 111, 5400000, '2020-10-22 00:00:00', 63964, 138, 2, '2020-09-22 22:54:05', '2021-03-05 15:03:11'),
(142, 111, 34160000, '2020-10-23 00:00:00', 64594, 140, 2, '2020-09-23 20:50:10', '2021-03-05 15:03:11'),
(143, 111, 26160000, '2020-10-23 00:00:00', 64640, 141, 2, '2020-09-23 22:15:07', '2021-03-05 15:03:11'),
(145, 111, 3060000, '2020-10-24 00:00:00', 64810, 144, 2, '2020-09-24 10:30:07', '2021-03-05 15:03:11'),
(146, 111, 60000, '2020-10-24 00:00:00', 65394, 146, 2, '2020-09-24 23:38:13', '2021-03-05 15:03:11'),
(147, 111, 65000, '2020-10-25 00:00:00', 65955, 147, 2, '2020-09-25 17:36:59', '2021-03-05 15:03:11'),
(148, 111, 70000, '2020-10-25 00:00:00', 65991, 148, 2, '2020-09-25 18:17:36', '2021-03-05 15:03:11'),
(149, 111, 100000, '2020-10-26 00:00:00', 66269, 151, 2, '2020-09-26 09:30:02', '2021-03-05 15:03:11'),
(150, 111, 760000, '2020-10-26 00:00:00', 66392, 152, 2, '2020-09-26 13:02:09', '2021-03-05 15:03:11'),
(151, 111, 160000, '2020-10-26 00:00:00', 66701, 153, 2, '2020-09-26 23:14:55', '2021-03-05 15:03:11'),
(152, 111, 260000, '2020-10-27 00:00:00', 67125, 154, 2, '2020-09-27 23:03:24', '2021-03-05 15:03:11'),
(153, 111, 460000, '2020-10-29 00:00:00', 67920, 155, 2, '2020-09-29 02:21:33', '2021-03-05 15:03:11'),
(154, 111, 10000, '2020-10-30 00:00:00', 68736, 157, 2, '2020-09-30 00:03:28', '2021-03-05 15:03:11'),
(155, 111, 1660000, '2020-10-30 00:00:00', 69021, 158, 2, '2020-09-30 12:00:06', '2021-03-05 15:03:11'),
(156, 111, 260000, '2020-10-30 00:00:00', 69519, 160, 2, '2020-09-30 20:05:58', '2021-03-05 15:03:11'),
(157, 111, 12360000, '2020-11-01 00:00:00', 70023, 161, 2, '2020-10-01 13:35:40', '2021-03-05 15:03:11'),
(158, 111, 512168, '2020-11-01 00:00:00', 70066, 162, 2, '2020-10-01 14:30:06', '2021-03-05 15:03:11'),
(159, 107, 1447832, '2020-11-01 00:00:00', 70067, 162, 2, '2020-10-01 14:30:06', '2021-03-05 15:03:11'),
(160, 111, 10000, '2020-11-01 00:00:00', 70186, 163, 2, '2020-10-01 17:34:11', '2021-03-05 15:03:11'),
(166, 111, 2660000, '2020-11-18 00:00:00', 84533, 177, 2, '2020-10-18 11:02:08', '2021-03-05 15:03:11'),
(167, 111, 50000, '2020-12-01 00:00:00', 95063, 179, 2, '2020-11-01 23:06:25', '2021-03-05 15:03:11'),
(168, 111, 8160000, '2020-12-01 00:00:00', 95089, 180, 2, '2020-11-01 23:50:43', '2021-03-05 15:03:11'),
(169, 111, 7560000, '2020-12-02 00:00:00', 95141, 181, 2, '2020-11-02 07:38:47', '2021-03-05 15:03:11'),
(170, 111, 6860600, '2020-12-02 00:00:00', 95157, 182, 2, '2020-11-02 08:44:21', '2021-03-05 15:03:11'),
(171, 111, 6960600, '2020-12-02 00:00:00', 95733, 183, 2, '2020-11-02 22:44:28', '2021-03-05 15:03:11'),
(172, 111, 7060600, '2020-12-02 00:00:00', 95765, 184, 2, '2020-11-02 23:24:42', '2021-03-05 15:03:11'),
(173, 111, 6760600, '2020-12-03 00:00:00', 95803, 185, 2, '2020-11-03 00:22:55', '2021-03-05 15:03:11'),
(174, 111, 6260600, '2020-12-03 00:00:00', 96046, 186, 2, '2020-11-03 10:01:20', '2021-03-05 15:03:11'),
(175, 111, 5549000, '2020-12-03 00:00:00', 96053, 187, 2, '2020-11-03 10:11:00', '2021-03-05 15:03:11'),
(176, 111, 4831600, '2020-12-03 00:00:00', 96071, 188, 2, '2020-11-03 10:38:28', '2021-03-05 15:03:11'),
(177, 111, 4109000, '2020-12-03 00:00:00', 96101, 189, 2, '2020-11-03 11:07:05', '2021-03-05 15:03:11'),
(178, 111, 3381900, '2020-12-03 00:00:00', 96197, 190, 2, '2020-11-03 12:58:47', '2021-03-05 15:03:11'),
(179, 111, 60000, '2020-12-03 00:00:00', 96331, 191, 2, '2020-11-03 14:35:55', '2021-03-05 15:03:11'),
(180, 111, 260000, '2020-12-03 00:00:00', 96339, 192, 2, '2020-11-03 14:39:37', '2021-03-05 15:03:11'),
(181, 111, 878100, '2020-12-03 00:00:00', 96357, 193, 2, '2020-11-03 14:50:02', '2021-03-05 15:03:11'),
(182, 111, 10000, '2020-11-30 23:59:59', 97280, 195, 2, '2020-11-03 23:22:30', '2021-03-05 15:03:11'),
(183, 111, 60000, '2020-11-30 23:59:59', 97283, 196, 2, '2020-11-03 23:24:05', '2021-03-05 15:03:11'),
(184, 111, 160000, '2020-11-30 23:59:59', 97288, 197, 2, '2020-11-03 23:26:48', '2021-03-05 15:03:11'),
(185, 111, 60000, '2020-11-30 23:59:59', 97292, 198, 2, '2020-11-03 23:29:41', '2021-03-05 15:03:11'),
(186, 111, 160000, '2020-11-30 23:59:59', 97303, 199, 2, '2020-11-03 23:35:58', '2021-03-05 15:03:11'),
(187, 111, 60000, '2020-11-30 23:59:59', 97317, 200, 2, '2020-11-03 23:41:32', '2021-03-05 15:03:11'),
(188, 111, 160000, '2020-11-30 23:59:59', 97321, 201, 2, '2020-11-03 23:46:09', '2021-03-05 15:03:11'),
(189, 111, 60000, '2020-11-30 23:59:59', 97324, 202, 2, '2020-11-03 23:49:37', '2021-03-05 15:03:11'),
(190, 111, 160000, '2020-11-30 23:59:59', 97330, 203, 2, '2020-11-03 23:53:42', '2021-03-05 15:03:11'),
(191, 111, 60000, '2020-11-30 23:59:59', 97334, 204, 2, '2020-11-03 23:55:04', '2021-03-05 15:03:11'),
(192, 111, 150000, '2020-11-30 23:59:59', 97338, 205, 2, '2020-11-03 23:57:25', '2021-03-05 15:03:11'),
(193, 111, 140000, '2020-11-30 23:59:59', 97345, 206, 2, '2020-11-03 23:59:51', '2021-03-05 15:03:11'),
(194, 111, 150000, '2020-11-30 23:59:59', 97349, 207, 2, '2020-11-04 00:01:45', '2021-03-05 15:03:11'),
(195, 111, 250000, '2020-11-30 23:59:59', 97352, 208, 2, '2020-11-04 00:03:09', '2021-03-05 15:03:11'),
(196, 111, 240000, '2020-11-30 23:59:59', 97354, 209, 2, '2020-11-04 00:04:42', '2021-03-05 15:03:11'),
(197, 111, 140000, '2020-11-30 23:59:59', 97357, 210, 2, '2020-11-04 00:05:56', '2021-03-05 15:03:11'),
(198, 111, 240000, '2020-11-30 23:59:59', 97364, 211, 2, '2020-11-04 00:08:38', '2021-03-05 15:03:11'),
(199, 111, 250000, '2020-11-30 23:59:59', 97366, 212, 2, '2020-11-04 00:11:44', '2021-03-05 15:03:11'),
(200, 111, 150000, '2020-11-30 23:59:59', 97369, 213, 2, '2020-11-04 00:14:20', '2021-03-05 15:03:11'),
(201, 111, 250000, '2020-11-30 23:59:59', 97370, 214, 2, '2020-11-04 00:15:38', '2021-03-05 15:03:11'),
(202, 111, 150000, '2020-11-30 23:59:59', 97372, 215, 2, '2020-11-04 00:17:03', '2021-03-05 15:03:11'),
(203, 111, 150000, '2020-11-30 23:59:59', 97375, 216, 2, '2020-11-04 00:19:10', '2021-03-05 15:03:11'),
(204, 111, 250000, '2020-11-30 23:59:59', 97377, 217, 2, '2020-11-04 00:21:41', '2021-03-05 15:03:11'),
(205, 111, 258000, '2020-11-30 23:59:59', 97381, 218, 2, '2020-11-04 00:23:34', '2021-03-05 15:03:11'),
(206, 111, 259000, '2020-11-30 23:59:59', 97386, 219, 2, '2020-11-04 00:25:34', '2021-03-05 15:03:11'),
(207, 111, 259900, '2020-11-30 23:59:59', 97390, 220, 2, '2020-11-04 00:27:03', '2021-03-05 15:03:11'),
(208, 111, 148800, '2020-11-30 23:59:59', 97392, 221, 2, '2020-11-04 00:29:30', '2021-03-05 15:03:11'),
(209, 111, 148700, '2020-11-30 23:59:59', 97396, 222, 2, '2020-11-04 00:30:41', '2021-03-05 15:03:11'),
(210, 111, 148700, '2020-11-30 23:59:59', 97399, 223, 2, '2020-11-04 00:34:06', '2021-03-05 15:03:11'),
(211, 111, 148700, '2020-11-30 23:59:59', 97401, 224, 2, '2020-11-04 00:35:14', '2021-03-05 15:03:11'),
(212, 111, 148800, '2020-11-30 23:59:59', 97406, 225, 2, '2020-11-04 00:40:29', '2021-03-05 15:03:11'),
(213, 111, 148900, '2020-11-30 23:59:59', 97407, 226, 2, '2020-11-04 00:42:42', '2021-03-05 15:03:11'),
(214, 111, 149900, '2020-11-30 23:59:59', 97415, 227, 2, '2020-11-04 00:47:07', '2021-03-05 15:03:11'),
(215, 111, 149900, '2020-11-30 23:59:59', 97417, 228, 2, '2020-11-04 00:49:27', '2021-03-05 15:03:11'),
(216, 111, 149800, '2020-11-30 23:59:59', 97419, 229, 2, '2020-11-04 00:50:47', '2021-03-05 15:03:11'),
(217, 111, 149900, '2020-11-30 23:59:59', 97420, 230, 2, '2020-11-04 00:52:14', '2021-03-05 15:03:11'),
(218, 111, 149900, '2020-11-30 23:59:59', 97421, 231, 2, '2020-11-04 00:54:25', '2021-03-05 15:03:11'),
(219, 111, 43060000, '2020-11-30 23:59:59', 97431, 232, 2, '2020-11-04 01:04:01', '2021-03-05 15:03:11'),
(220, 111, 43160000, '2020-11-30 23:59:59', 97432, 233, 2, '2020-11-04 01:06:55', '2021-03-05 15:03:11'),
(221, 111, 43160000, '2020-11-30 23:59:59', 97436, 234, 2, '2020-11-04 01:08:18', '2021-03-05 15:03:11'),
(222, 111, 27060000, '2020-11-30 23:59:59', 97714, 237, 2, '2020-11-04 09:18:15', '2021-03-05 15:03:11'),
(223, 111, 68260000, '2020-11-30 23:59:59', 97722, 239, 2, '2020-11-04 09:22:37', '2021-03-05 15:03:11'),
(224, 111, 32360000, '2020-11-30 23:59:59', 97725, 240, 2, '2020-11-04 09:24:16', '2021-03-05 15:03:11'),
(225, 111, 17860000, '2020-11-30 23:59:59', 97732, 242, 2, '2020-11-04 09:27:49', '2021-03-05 15:03:11'),
(226, 111, 17960000, '2020-11-30 23:59:59', 97737, 243, 2, '2020-11-04 09:30:07', '2021-03-05 15:03:11'),
(227, 111, 16960000, '2020-11-30 23:59:59', 97743, 244, 2, '2020-11-04 09:34:01', '2021-03-05 15:03:11'),
(228, 111, 15860000, '2020-11-30 23:59:59', 97746, 245, 2, '2020-11-04 09:35:15', '2021-03-05 15:03:11'),
(229, 111, 32360000, '2020-11-30 23:59:59', 97747, 246, 2, '2020-11-04 09:36:39', '2021-03-05 15:03:11'),
(230, 111, 21760000, '2020-11-30 23:59:59', 97752, 247, 2, '2020-11-04 09:38:26', '2021-03-05 15:03:11'),
(231, 111, 10000, '2020-11-30 23:59:59', 97758, 249, 2, '2020-11-04 09:41:52', '2021-03-05 15:03:11'),
(232, 111, 27060000, '2020-11-30 23:59:59', 97767, 250, 2, '2020-11-04 09:48:06', '2021-03-05 15:03:11'),
(233, 111, 29260000, '2020-11-30 23:59:59', 97778, 251, 2, '2020-11-04 09:50:05', '2021-03-05 15:03:11'),
(234, 111, 57560000, '2020-11-30 23:59:59', 97796, 252, 2, '2020-11-04 09:55:36', '2021-03-05 15:03:11'),
(235, 111, 21760000, '2020-11-30 23:59:59', 97799, 253, 2, '2020-11-04 09:58:04', '2021-03-05 15:03:11'),
(236, 111, 29260000, '2020-11-30 23:59:59', 97805, 254, 2, '2020-11-04 09:59:47', '2021-03-05 15:03:11'),
(237, 111, 61260000, '2020-11-30 23:59:59', 98308, 256, 2, '2020-11-04 13:55:38', '2021-03-05 15:03:11'),
(238, 111, 11260000, '2020-11-30 23:59:59', 98314, 257, 2, '2020-11-04 13:57:38', '2021-03-05 15:03:11'),
(239, 111, 12260000, '2020-11-30 23:59:59', 98318, 258, 2, '2020-11-04 13:59:11', '2021-03-05 15:03:11'),
(240, 111, 172160000, '2020-11-30 23:59:59', 98320, 259, 2, '2020-11-04 14:00:37', '2021-03-05 15:03:11'),
(241, 111, 111160000, '2020-11-30 23:59:59', 99242, 260, 2, '2020-11-04 22:12:32', '2021-03-05 15:03:11'),
(242, 111, 271360000, '2020-11-30 23:59:59', 99244, 261, 2, '2020-11-04 22:15:32', '2021-03-05 15:03:11'),
(243, 111, 281360000, '2020-11-30 23:59:59', 99261, 262, 2, '2020-11-04 22:23:50', '2021-03-05 15:03:11'),
(244, 111, 781260000, '2020-11-30 23:59:59', 99272, 264, 2, '2020-11-04 22:32:00', '2021-03-05 15:03:11'),
(245, 111, 123360000, '2020-11-30 23:59:59', 99283, 265, 2, '2020-11-04 22:37:24', '2021-03-05 15:03:11'),
(246, 111, 7260000, '2020-11-30 23:59:59', 99287, 266, 2, '2020-11-04 22:40:03', '2021-03-05 15:03:11'),
(247, 111, 672860000, '2020-11-30 23:59:59', 99301, 267, 2, '2020-11-04 22:50:04', '2021-03-05 15:03:11'),
(248, 111, 251460000, '2020-11-30 23:59:59', 99304, 268, 2, '2020-11-04 22:52:28', '2021-03-05 15:03:11'),
(249, 111, 413960000, '2020-11-30 23:59:59', 99307, 269, 2, '2020-11-04 22:53:57', '2021-03-05 15:03:11'),
(250, 111, 119460000, '2020-11-30 23:59:59', 99311, 270, 2, '2020-11-04 22:59:10', '2021-03-05 15:03:11'),
(251, 111, 260760000, '2020-11-30 23:59:59', 99312, 271, 2, '2020-11-04 23:00:29', '2021-03-05 15:03:11'),
(252, 111, 160000, '2020-11-30 23:59:59', 99386, 272, 2, '2020-11-05 00:01:53', '2021-03-05 15:03:11'),
(253, 111, 846760000, '2020-11-30 23:59:59', 99388, 273, 2, '2020-11-05 00:03:07', '2021-03-05 15:03:11'),
(254, 111, 225360000, '2020-11-30 23:59:59', 99672, 274, 2, '2020-11-05 09:36:15', '2021-03-05 15:03:11'),
(255, 111, 752060000, '2020-11-30 23:59:59', 100877, 275, 2, '2020-11-05 19:46:36', '2021-03-05 15:03:11'),
(256, 111, 132560000, '2020-11-30 23:59:59', 103722, 276, 2, '2020-11-07 17:08:04', '2021-03-05 15:03:11'),
(257, 111, 11260000, '2020-11-30 23:59:59', 111907, 278, 2, '2020-11-14 06:24:17', '2021-03-05 15:03:11'),
(262, 107, 275400, '2020-11-30 23:59:59', 119477, 281, 2, '2020-11-20 16:53:31', '2021-03-05 15:03:11'),
(263, 107, 225400, '2020-11-30 23:59:59', 119481, 281, 2, '2020-11-20 18:59:44', '2021-03-05 15:03:11'),
(264, 107, 275457, '2020-11-30 23:59:59', 121952, 282, 2, '2020-11-23 16:51:45', '2021-03-05 15:03:11'),
(265, 111, 27024143, '2020-11-30 23:59:59', 121953, 282, 2, '2020-11-23 16:51:45', '2021-03-05 15:03:11'),
(266, 107, 61397, '2020-11-30 23:59:59', 123729, 282, 2, '2020-11-24 18:58:18', '2021-03-05 15:03:11'),
(267, 107, 214060, '2020-11-30 23:59:59', 123743, 283, 2, '2020-11-24 19:09:44', '2021-03-05 15:03:11'),
(268, 107, 61397, '2020-11-30 23:59:59', 123818, 284, 2, '2020-11-24 20:12:33', '2021-03-05 15:03:11'),
(269, 111, 28552663, '2020-11-30 23:59:59', 123819, 284, 2, '2020-11-24 20:12:33', '2021-03-05 15:03:11'),
(270, 111, 26014060, '2020-12-01 05:00:00', 125239, 284, 2, '2020-11-25 22:17:07', '2021-03-05 15:03:11'),
(271, 107, 275457, '2020-12-01 05:00:00', 125262, 285, 2, '2020-11-25 22:31:10', '2021-03-05 15:03:11'),
(272, 111, 2538603, '2020-12-01 05:00:00', 125263, 285, 2, '2020-11-25 22:31:10', '2021-03-05 15:03:11'),
(273, 119, 614060, '2020-12-01 05:00:00', 84317426, 286, 2, '2020-11-26 20:34:36', '2021-03-05 15:03:11'),
(274, 119, 2814060, '2020-12-01 05:00:00', 84335133, 286, 2, '2020-11-26 21:31:55', '2021-03-05 15:03:11'),
(275, 119, 2814060, '2020-12-01 05:00:00', 84337647, 293, 2, '2020-11-26 21:40:47', '2021-03-05 15:03:11'),
(276, 107, 275457, '2020-12-01 05:00:00', 127186, 294, 2, '2020-11-27 13:25:46', '2021-03-05 15:03:11'),
(277, 119, 1238603, '2020-12-01 05:00:00', 84537671, 294, 2, '2020-11-27 13:25:47', '2021-03-05 15:03:11'),
(278, 107, 1523457, '2021-01-01 05:00:00', 132087, 295, 2, '2020-12-01 07:46:43', '2021-03-05 15:03:11'),
(279, 119, 690603, '2021-01-01 05:00:00', 86024329, 295, 2, '2020-12-01 07:46:44', '2021-03-05 15:03:11'),
(280, 107, 0, '2021-01-01 05:00:00', 0, 296, 2, '2020-12-01 20:16:18', '2021-03-05 15:03:11'),
(281, 119, 5114060, '2021-01-01 05:00:00', 86521389, 296, 2, '2020-12-01 20:16:18', '2021-03-05 15:03:11'),
(282, 107, 714060, '2021-01-01 05:00:00', 133038, 297, 2, '2020-12-01 20:36:21', '2021-03-05 15:03:11'),
(283, 119, 3214060, '2021-01-01 05:00:00', 86554338, 298, 2, '2020-12-01 21:19:40', '2021-03-05 15:03:11'),
(284, 119, 5814060, '2021-01-01 05:00:00', 86591658, 299, 2, '2020-12-01 22:58:24', '2021-03-05 15:03:11'),
(285, 119, 8214060, '2021-01-01 05:00:00', 86593328, 300, 2, '2020-12-01 23:07:03', '2021-03-05 15:03:11'),
(286, 107, 1523457, '2021-01-01 05:00:00', 136049, 301, 2, '2020-12-03 15:18:09', '2021-03-05 15:03:11'),
(287, 119, 1190603, '2021-01-01 05:00:00', 87474097, 301, 2, '2020-12-03 15:18:09', '2021-03-05 15:03:11'),
(288, 107, 100000, '2021-01-01 05:00:00', 136998, 302, 2, '2020-12-03 22:46:43', '2021-03-05 15:03:11'),
(289, 107, 1109397, '2021-01-01 05:00:00', 137241, 303, 2, '2020-12-04 02:23:47', '2021-03-05 15:03:11'),
(290, 119, 1490603, '2021-01-01 05:00:00', 87718370, 303, 2, '2020-12-04 02:23:47', '2021-03-05 15:03:11'),
(291, 107, 600000, '2021-01-01 05:00:00', 137586, 304, 2, '2020-12-04 10:31:19', '2021-03-05 15:03:11'),
(292, 107, 609397, '2021-01-01 05:00:00', 137994, 305, 2, '2020-12-04 15:07:47', '2021-03-05 15:03:11'),
(293, 119, 90603, '2021-01-01 05:00:00', 88023096, 305, 2, '2020-12-04 15:07:47', '2021-03-05 15:03:11'),
(294, 119, 2300000, '2021-01-01 05:00:00', 89150808, 306, 2, '2020-12-06 16:27:24', '2021-03-05 15:03:11'),
(295, 119, 700000, '2021-01-01 05:00:00', 89191099, 307, 2, '2020-12-06 17:52:59', '2021-03-05 15:03:11'),
(296, 119, 3200000, '2021-01-01 05:00:00', 89252951, 308, 2, '2020-12-06 20:17:12', '2021-03-05 15:03:11'),
(297, 119, 9100000, '2021-01-01 05:00:00', 89307205, 309, 2, '2020-12-06 23:53:57', '2021-03-05 15:03:11'),
(298, 119, 2500000, '2021-01-01 05:00:00', 89417117, 310, 2, '2020-12-07 09:22:30', '2021-03-05 15:03:11'),
(301, 107, 1209397, '2021-01-01 05:00:00', 144936, 315, 2, '2020-12-09 22:00:14', '2021-03-05 15:03:11'),
(302, 119, 1790603, '2021-01-01 05:00:00', 90976115, 315, 2, '2020-12-09 22:00:15', '2021-03-05 15:03:11'),
(303, 123, 17700000, '2021-01-01 05:00:00', 146754, 318, 2, '2020-12-11 10:11:38', '2021-03-05 15:03:11'),
(304, 123, 10500000, '2021-01-01 05:00:00', 146854, 319, 2, '2020-12-11 11:24:42', '2021-03-05 15:03:11'),
(305, 111, 3000000, '2021-01-01 05:00:00', 152250, 321, 2, '2020-12-16 12:35:32', '2021-03-05 15:03:11'),
(306, 123, 10020296, '2021-01-01 05:00:00', 152252, 322, 2, '2020-12-16 12:36:12', '2021-03-05 15:03:11'),
(307, 124, 17404, '2021-01-01 05:00:00', 152253, 322, 2, '2020-12-16 12:36:12', '2021-03-05 15:03:11'),
(308, 111, 100000, '2021-01-01 05:00:00', 154410, 327, 2, '2020-12-18 10:37:42', '2021-03-05 15:03:11'),
(309, 111, 1800000, '2021-01-01 05:00:00', 156382, 332, 2, '2020-12-20 14:39:20', '2021-03-05 15:03:11'),
(310, 111, 3317017, '2021-01-01 05:00:00', 156704, 333, 2, '2020-12-20 23:21:24', '2021-03-05 15:03:11'),
(311, 157, 4382983, '2021-01-01 05:00:00', 156705, 333, 2, '2020-12-20 23:21:24', '2021-03-05 15:03:11'),
(313, 123, 3556, '2021-01-01 05:00:00', 160738, NULL, 2, '2020-12-25 10:31:35', '2021-03-05 15:03:11'),
(314, 124, 46844, '2021-01-01 05:00:00', 160739, NULL, 2, '2020-12-25 10:31:35', '2021-03-05 15:03:11'),
(315, 111, 49500000, '2021-02-01 05:00:00', 169467, NULL, 2, '2021-01-04 18:49:45', '2021-03-05 15:03:11'),
(316, 157, 2500000, '2021-02-01 05:00:00', 171963, NULL, 2, '2021-01-06 20:02:11', '2021-03-05 15:03:11'),
(317, 157, 4200000, '2021-02-01 05:00:00', 171966, NULL, 2, '2021-01-06 20:03:25', '2021-03-05 15:03:11'),
(318, 157, 2500000, '2021-02-01 05:00:00', 171973, NULL, 2, '2021-01-06 20:08:03', '2021-03-05 15:03:11'),
(319, 157, 2500000, '2021-02-01 05:00:00', 171976, NULL, 2, '2021-01-06 20:12:01', '2021-03-05 15:03:11'),
(320, 157, 2500000, '2021-02-01 05:00:00', 171981, NULL, 2, '2021-01-06 20:16:47', '2021-03-05 15:03:11'),
(321, 157, 2500000, '2021-02-01 05:00:00', 171982, NULL, 2, '2021-01-06 20:18:19', '2021-03-05 15:03:11'),
(322, 157, 2500000, '2021-02-01 05:00:00', 171983, NULL, 2, '2021-01-06 20:18:54', '2021-03-05 15:03:11'),
(323, 157, 2500000, '2021-02-01 05:00:00', 171987, 338, 2, '2021-01-06 20:24:25', '2021-03-05 15:03:11'),
(324, 157, 3000000, '2021-02-01 05:00:00', 172583, 339, 2, '2021-01-07 13:37:27', '2021-03-05 15:03:11'),
(325, 157, 500000, '2021-02-01 05:00:00', 174805, 340, 2, '2021-01-09 15:24:42', '2021-03-05 15:03:11'),
(326, 157, 200000, '2021-02-01 05:00:00', 174853, 341, 2, '2021-01-09 16:18:11', '2021-03-05 15:03:11'),
(327, 157, 300000, '2021-02-01 05:00:00', 175545, 342, 2, '2021-01-10 13:45:00', '2021-03-05 15:03:11'),
(328, 157, 100000, '2021-02-01 05:00:00', 175569, 343, 2, '2021-01-10 14:05:31', '2021-03-05 15:03:11'),
(329, 157, 200000, '2021-02-01 05:00:00', 175681, 344, 2, '2021-01-10 16:51:03', '2021-03-05 15:03:11'),
(330, 111, 295900000, '2021-02-01 05:00:00', 177847, 346, 2, '2021-01-12 18:28:53', '2021-03-05 15:03:11'),
(331, 111, 57400000, '2021-02-01 05:00:00', 179865, 347, 2, '2021-01-14 18:54:53', '2021-03-05 15:03:11'),
(333, 188, 346623, '2021-02-01 05:00:00', 179916, 348, 2, '2021-01-14 19:46:16', '2021-03-05 15:03:11'),
(334, 111, 100000, '2021-02-01 05:00:00', 188040, 351, 2, '2021-01-23 22:08:50', '2021-03-05 15:03:11'),
(335, 111, 299900, '2021-02-01 05:00:00', 190313, 352, 2, '2021-01-26 15:37:05', '2021-03-05 15:03:11'),
(336, 111, 9000000, '2021-02-01 05:00:00', 190693, 353, 2, '2021-01-26 23:16:57', '2021-03-05 15:03:11'),
(337, 111, 14800000, '2021-02-01 05:00:00', 191268, 354, 2, '2021-01-27 15:35:25', '2021-03-05 15:03:11'),
(338, 197, 500000, '2021-02-01 05:00:00', 117395774, 355, 2, '2021-01-28 17:31:53', '2021-03-05 15:03:11'),
(339, 111, 69100000, '2021-03-01 05:00:00', 196758, 357, 2, '2021-02-02 17:46:55', '2021-03-05 15:03:11'),
(340, 111, 39600000, '2021-03-01 05:00:00', 197805, 357, 2, '2021-02-03 14:57:50', '2021-03-05 15:03:11'),
(341, 111, 39599900, '2021-03-01 05:00:00', 197828, 357, 2, '2021-02-03 15:10:03', '2021-03-05 15:03:11'),
(342, 107, 99800, '2021-03-01 05:00:00', 199099, 361, 2, '2021-02-04 15:16:56', '2021-03-05 15:03:11'),
(343, 207, 95000, '2021-03-01 05:00:00', 206184, 362, 2, '2021-02-10 15:06:10', '2021-03-05 15:03:11'),
(344, 107, 3704900, '2021-03-01 05:00:00', 206185, 362, 2, '2021-02-10 15:06:10', '2021-03-05 15:03:11'),
(345, 207, 95000, '2021-03-01 05:00:00', 206488, 363, 2, '2021-02-10 18:08:29', '2021-03-05 15:03:11'),
(346, 107, 1004900, '2021-03-01 05:00:00', 206489, 363, 2, '2021-02-10 18:08:29', '2021-03-05 15:03:11'),
(347, 107, 499900, '2021-03-01 05:00:00', 206705, 364, 2, '2021-02-10 21:18:13', '2021-03-05 15:03:11'),
(348, 107, 1299900, '2021-03-01 05:00:00', 206844, 365, 2, '2021-02-10 23:16:52', '2021-03-05 15:03:11'),
(349, 123, 9452, '2021-03-01 05:00:00', 206908, 366, 2, '2021-02-11 00:53:17', '2021-03-05 15:03:11'),
(350, 124, 748, '2021-03-01 05:00:00', 206909, 366, 2, '2021-02-11 00:53:17', '2021-03-05 15:03:11'),
(351, 111, 19399900, '2021-03-01 05:00:00', 207440, 367, 2, '2021-02-11 13:25:56', '2021-03-05 15:03:11'),
(352, 111, 9676000, '2021-03-01 05:00:00', 207465, 367, 2, '2021-02-11 13:45:52', '2021-03-05 15:03:11'),
(353, 111, 34191396, '2021-03-01 05:00:00', 207495, 368, 2, '2021-02-11 14:10:37', '2021-03-05 15:03:11'),
(354, 107, 332504, '2021-03-01 05:00:00', 207496, 368, 2, '2021-02-11 14:10:37', '2021-03-05 15:03:11'),
(355, 111, 9723900, '2021-03-01 05:00:00', 207672, 369, 2, '2021-02-11 16:19:04', '2021-03-05 15:03:11'),
(356, 111, 10523900, '2021-03-01 05:00:00', 207772, 370, 2, '2021-02-11 17:12:15', '2021-03-05 15:03:11'),
(357, 111, 9723900, '2021-03-01 05:00:00', 208043, 371, 2, '2021-02-11 21:03:00', '2021-03-05 15:03:11'),
(359, 188, 829, '2021-03-01 05:00:00', 209417, 373, 2, '2021-02-12 23:06:24', '2021-03-05 15:03:11'),
(360, 111, 8900000, '2021-03-01 05:00:00', 209429, 374, 2, '2021-02-12 23:19:23', '2021-03-05 15:03:11'),
(361, 111, 2600000, '2021-03-01 05:00:00', 209464, 375, 2, '2021-02-13 00:11:02', '2021-03-05 15:03:11'),
(362, 111, 250000, '2021-03-01 05:00:00', 209728, 376, 2, '2021-02-13 11:43:34', '2021-03-05 15:03:11'),
(363, 111, 255900, '2021-03-01 05:00:00', 210727, 378, 2, '2021-02-14 18:54:32', '2021-03-05 15:03:11'),
(364, 119, 2563800, '2021-03-01 05:00:00', 132749529, 379, 2, '2021-02-17 21:33:44', '2021-03-05 15:03:11'),
(365, 111, 36200, '2021-03-01 05:00:00', 214406, 379, 2, '2021-02-17 21:33:44', '2021-03-05 15:03:11'),
(366, 119, 1200000, '2021-03-01 05:00:00', 133435437, 380, 2, '2021-02-18 18:36:13', '2021-03-05 15:03:11'),
(367, 119, 100000, '2021-03-01 05:00:00', 135266121, 382, 2, '2021-02-21 12:41:53', '2021-03-05 15:03:11'),
(368, 119, 252300, '2021-03-01 05:00:00', 136663534, 383, 2, '2021-02-23 15:35:54', '2021-03-05 15:03:11'),
(369, 107, 547700, '2021-03-01 05:00:00', 219624, 383, 2, '2021-02-23 15:35:54', '2021-03-05 15:03:11'),
(370, 119, 252300, '2021-03-01 05:00:00', 136666174, 384, 2, '2021-02-23 15:40:11', '2021-03-05 15:03:11'),
(371, 107, 147700, '2021-03-01 05:00:00', 219628, 384, 2, '2021-02-23 15:40:11', '2021-03-05 15:03:11'),
(372, 263, 490000, '2021-04-01 05:00:00', 232696, 385, 1, '2021-03-05 19:37:00', '2021-03-06 13:40:04'),
(373, 107, 3000000, '2021-04-01 05:00:00', 232995, 386, 1, '2021-03-05 23:50:10', '2021-03-06 14:23:34'),
(374, 263, 450000, '2021-04-01 05:00:00', 233510, 385, 1, '2021-03-06 13:40:04', '2021-03-15 10:10:07'),
(375, 107, 3100000, '2021-04-01 05:00:00', 233551, 387, 1, '2021-03-06 14:23:35', '2021-03-08 18:48:58'),
(376, 107, 500000, '2021-04-01 05:00:00', 235553, 389, 1, '2021-03-08 18:48:58', '2021-03-11 01:10:01'),
(377, 266, 1100000, '2021-04-01 05:00:00', 238626, 392, 1, '2021-03-11 13:30:50', '2021-03-11 14:17:56'),
(378, 266, 800000, '2021-04-01 05:00:00', 238671, 393, 2, '2021-03-11 14:18:00', '2021-04-01 05:04:25'),
(379, 270, 500000, '2021-04-01 05:00:00', 239737, 394, 1, '2021-03-12 13:57:36', '2021-03-12 17:05:57'),
(380, 270, 5000, '2021-04-01 05:00:00', 239930, 395, 1, '2021-03-12 17:05:57', '2021-03-13 10:45:49'),
(381, 270, 300000, '2021-04-01 05:00:00', 240529, 396, 1, '2021-03-13 10:45:50', '2021-03-19 12:10:03'),
(382, 263, 310000, '2021-04-01 05:00:00', 241899, 385, 1, '2021-03-15 10:10:07', '2021-03-17 02:20:10'),
(383, 188, 33748, '2021-04-01 05:00:00', 242512, 397, 1, '2021-03-15 19:08:54', '2021-03-16 11:23:28'),
(384, 288, 8965752, '2021-04-01 05:00:00', 242513, 397, 1, '2021-03-15 19:08:55', '2021-03-16 12:23:12'),
(385, 288, 7600000, '2021-04-01 05:00:00', 243228, 397, 1, '2021-03-16 12:26:46', '2021-03-22 11:51:16'),
(386, 263, 250000, '2021-04-01 05:00:00', 243982, 385, 1, '2021-03-17 02:20:10', '2021-04-01 00:20:10'),
(387, 295, 9200000, '2021-04-01 05:00:00', 245317, 401, 1, '2021-03-18 12:02:43', '2021-03-18 12:22:29'),
(388, 295, 8610000, '2021-04-01 05:00:00', 245335, 401, 1, '2021-03-18 12:22:29', '2021-03-18 12:27:53'),
(389, 295, 8020000, '2021-04-01 05:00:00', 245341, 401, 1, '2021-03-18 12:27:53', '2021-03-18 16:32:12'),
(390, 296, 46880000, '2021-04-01 05:00:00', 245709, 402, 1, '2021-03-18 16:32:12', '2021-03-18 16:43:37'),
(391, 296, 1180000, '2021-04-01 05:00:00', 245721, 403, 1, '2021-03-18 16:43:37', '2021-03-19 05:10:01'),
(392, 207, 595000, '2021-04-01 05:00:00', 247625, 406, 2, '2021-03-19 22:23:16', '2021-04-01 05:04:25'),
(393, 157, 405000, '2021-04-01 05:00:00', 247626, 406, 2, '2021-03-19 22:23:16', '2021-04-01 05:04:25'),
(394, 270, 105150700, '2021-04-01 05:00:00', 247850, 407, 1, '2021-03-20 09:30:12', '2021-03-20 10:10:03'),
(395, 188, 0, '2021-04-01 05:00:00', 0, 409, 1, '2021-03-22 11:51:16', '2021-03-23 17:40:04'),
(396, 288, 2800000, '2021-04-01 05:00:00', 249512, 409, 1, '2021-03-22 11:51:16', '2021-03-23 17:40:04'),
(397, 261, 10100000, '2021-04-01 05:00:00', 0, 410, 1, '2021-03-23 10:24:56', '2021-03-23 22:40:05'),
(398, 278, 10000000, '2021-04-01 05:00:00', 284590, 413, 1, '2021-03-29 20:57:56', '2021-03-30 13:56:40'),
(399, 278, 3800000, '2021-04-01 05:00:00', 287652, 413, 2, '2021-03-30 13:56:40', '2021-04-01 05:04:25'),
(400, 107, 19300000, '2021-05-01 05:00:00', 307494, 415, 1, '2021-04-02 16:38:18', '2021-04-09 12:10:01'),
(401, 314, 2000000, '2021-05-01 05:00:00', 349721, 416, 1, '2021-04-07 12:43:20', '2021-04-08 16:57:11'),
(402, 321, 50000000, '2021-05-01 05:00:00', 350556, 417, 1, '2021-04-07 14:21:55', '2021-04-09 16:40:11'),
(403, 295, 800000, '2021-05-01 05:00:00', 360465, 418, 1, '2021-04-08 17:59:35', '2021-04-21 11:50:05'),
(404, 278, 7800677, '2021-05-01 05:00:00', 362706, 419, 1, '2021-04-08 22:50:20', '2021-04-09 22:10:11'),
(405, 279, 582923, '2021-05-01 05:00:00', 173420976, 419, 1, '2021-04-08 22:50:20', '2021-04-12 14:10:12'),
(406, 111, 77200000, '2021-05-01 05:00:00', 366253, 421, 1, '2021-04-09 13:02:27', '2021-04-09 14:37:23'),
(407, 111, 105000000, '2021-05-01 05:00:00', 366929, 422, 1, '2021-04-09 14:37:23', '2021-04-10 11:07:12'),
(408, 321, 37000000, '2021-05-01 05:00:00', 367874, 417, 1, '2021-04-09 16:40:11', '2021-04-10 23:38:13'),
(409, 278, 5800677, '2021-05-01 05:00:00', 370722, 419, 1, '2021-04-09 22:10:11', '2021-04-12 14:20:11'),
(410, 327, 1488520, '2021-05-01 05:00:00', 371464, 423, 1, '2021-04-10 00:32:45', '2021-04-12 21:10:11'),
(411, 111, 30600000, '2021-05-01 05:00:00', 373341, 426, 1, '2021-04-10 11:07:12', '2021-04-11 12:49:26'),
(412, 266, 85000000, '2021-05-01 05:00:00', 377632, 428, 1, '2021-04-10 20:08:48', '2021-04-10 22:30:12'),
(413, 266, 55108000, '2021-05-01 05:00:00', 378555, 428, 1, '2021-04-10 22:30:12', '2021-04-11 11:40:05'),
(414, 321, 50000000, '2021-05-01 05:00:00', 378898, 429, 1, '2021-04-10 23:38:13', '2021-04-11 17:00:13'),
(415, 111, 29065000, '2021-05-01 05:00:00', 380790, 426, 1, '2021-04-11 12:49:26', '2021-04-12 12:49:58'),
(416, 325, 50000000, '2021-05-01 05:00:00', 381556, 432, 1, '2021-04-11 15:02:16', '2021-04-14 19:24:46'),
(417, 321, 46182000, '2021-05-01 05:00:00', 382268, 429, 1, '2021-04-11 17:00:13', '2021-04-13 13:30:12'),
(418, 314, 2200000, '2021-05-01 05:00:00', 383149, 433, 1, '2021-04-11 19:22:59', '2021-04-11 19:58:48'),
(419, 314, 1500000, '2021-05-01 05:00:00', 383322, 434, 1, '2021-04-11 19:58:48', '2021-04-11 21:39:49'),
(420, 314, 5700000, '2021-05-01 05:00:00', 383913, 435, 1, '2021-04-11 21:39:49', '2021-04-11 23:50:11'),
(421, 314, 100000, '2021-05-01 05:00:00', 386589, 439, 1, '2021-04-12 11:04:21', '2021-04-12 11:43:14'),
(422, 314, 10000000, '2021-05-01 05:00:00', 386885, 440, 1, '2021-04-12 11:43:15', '2021-04-12 12:40:10'),
(423, 111, 20665000, '2021-05-01 05:00:00', 387430, 426, 1, '2021-04-12 12:49:58', '2021-04-12 15:00:30'),
(424, 314, 7200000, '2021-05-01 05:00:00', 387696, 442, 1, '2021-04-12 13:24:38', '2021-04-12 18:14:10'),
(425, 278, 2750677, '2021-05-01 05:00:00', 388095, 419, 1, '2021-04-12 14:20:11', '2021-04-12 14:26:58'),
(426, 278, 23050000, '2021-05-01 05:00:00', 388150, 443, 1, '2021-04-12 14:27:01', '2021-04-12 22:40:12'),
(427, 111, 23600000, '2021-05-01 05:00:00', 388377, 444, 1, '2021-04-12 15:00:30', '2021-04-16 14:20:18'),
(428, 314, 5770000, '2021-05-01 05:00:00', 389667, 442, 1, '2021-04-12 18:14:10', '2021-04-13 00:00:14'),
(429, 327, 34463, '2021-05-01 05:00:00', 390964, 423, 1, '2021-04-12 21:10:11', '2021-04-18 20:13:24'),
(430, 278, 6550000, '2021-05-01 05:00:00', 391457, 443, 1, '2021-04-12 22:40:12', '2021-04-16 21:30:13'),
(431, 314, 4070000, '2021-05-01 05:00:00', 391714, 442, 1, '2021-04-13 00:00:14', '2021-04-13 11:40:03'),
(432, 192, 306800, '2021-05-01 05:00:00', 394159, 449, 1, '2021-04-13 11:40:19', '2021-04-14 11:10:12'),
(433, 314, 4693200, '2021-05-01 05:00:00', 394160, 449, 1, '2021-04-13 11:40:19', '2021-04-14 11:10:12'),
(434, 321, 41582000, '2021-05-01 05:00:00', 395106, 429, 1, '2021-04-13 13:30:12', '2021-04-15 13:10:11'),
(435, 314, 13700000, '2021-05-01 05:00:00', 404342, 452, 1, '2021-04-14 17:07:37', '2021-04-14 20:40:12'),
(436, 325, 48800000, '2021-05-01 05:00:00', 405546, 432, 1, '2021-04-14 19:24:46', '2021-04-14 19:46:01'),
(437, 325, 45500000, '2021-05-01 05:00:00', 405708, 432, 1, '2021-04-14 19:46:01', '2021-04-14 20:47:23'),
(438, 192, 306800, '2021-05-01 05:00:00', 406137, 453, 1, '2021-04-14 20:40:12', '2021-04-15 15:11:24'),
(439, 314, 5793200, '2021-05-01 05:00:00', 406138, 453, 1, '2021-04-14 20:40:12', '2021-04-15 15:11:24'),
(440, 325, 43700000, '2021-05-01 05:00:00', 406192, 432, 0, '2021-04-14 20:47:23', '2021-04-14 20:47:23'),
(441, 321, 55100000, '2021-05-01 05:00:00', 410620, 456, 1, '2021-04-15 14:07:35', '2021-04-16 16:07:54'),
(442, 135, 5913466, '2021-05-01 05:00:00', 0, 457, 1, '2021-04-15 15:11:25', '2021-04-16 13:40:11'),
(443, 192, 0, '2021-05-01 05:00:00', 0, 457, 1, '2021-04-15 15:11:25', '2021-04-16 13:40:11'),
(444, 314, 4086534, '2021-05-01 05:00:00', 411153, 457, 1, '2021-04-15 15:11:25', '2021-04-16 13:40:11'),
(445, 111, 20500000, '2021-05-01 05:00:00', 419398, 444, 1, '2021-04-16 14:20:18', '2021-04-17 23:59:43'),
(446, 321, 60000000, '2021-05-01 05:00:00', 420279, 459, 1, '2021-04-16 16:07:54', '2021-04-19 13:45:07'),
(447, 278, 4490000, '2021-05-01 05:00:00', 423179, 443, 1, '2021-04-16 21:30:13', '2021-04-16 21:41:25'),
(448, 278, 677, '2021-05-01 05:00:00', 423256, 460, 0, '2021-04-16 21:41:29', '2021-04-16 21:41:30'),
(449, 279, 12059323, '2021-05-01 05:00:00', 180096321, 460, 0, '2021-04-16 21:41:29', '2021-04-16 21:41:30'),
(450, 111, 5410000, '2021-05-01 05:00:00', 432153, 463, 1, '2021-04-18 00:33:01', '2021-04-19 10:55:50'),
(451, 313, 94500, '2021-05-01 05:00:00', 437042, 464, 1, '2021-04-18 20:57:29', '2021-04-20 22:10:11'),
(452, 111, 124500000, '2021-05-01 05:00:00', 440197, 466, 1, '2021-04-19 10:55:51', '2021-04-22 01:30:52'),
(453, 321, 59205000, '2021-05-01 05:00:00', 441593, 459, 0, '2021-04-19 13:45:08', '2021-04-19 13:45:08'),
(454, 327, 7223000, '2021-05-01 05:00:00', 448284, 468, 0, '2021-04-20 10:40:41', '2021-04-20 10:40:41'),
(455, 111, 37700000, '2021-05-01 05:00:00', 463505, 471, 1, '2021-04-22 01:31:08', '2021-04-22 10:48:33'),
(456, 111, 31220000, '2021-05-01 05:00:00', 465692, 471, 0, '2021-04-22 10:48:33', '2021-04-22 10:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `retainer_fee` int(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-05-12-040503', '\\AddClient', 'default', 'App', 1620899918, 1),
(2, '2021-05-12-040515', '\\AddUser', 'default', 'App', 1620899919, 1);

-- --------------------------------------------------------

--
-- Table structure for table `multicard`
--

CREATE TABLE `multicard` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `pan` varchar(16) DEFAULT NULL,
  `expiry` decimal(4,0) DEFAULT NULL,
  `card_token` varchar(100) DEFAULT NULL,
  `last_balance` bigint(20) DEFAULT NULL,
  `credit_limit` bigint(20) DEFAULT NULL,
  `debtor` int(1) NOT NULL DEFAULT '0',
  `account_id` bigint(10) DEFAULT NULL,
  `last_check_time` datetime DEFAULT NULL,
  `added_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `multicard`
--

INSERT INTO `multicard` (`id`, `user_id`, `pan`, `expiry`, `card_token`, `last_balance`, `credit_limit`, `debtor`, `account_id`, `last_check_time`, `added_on`, `updated_on`) VALUES
(166, 167, '986027******9347', '2506', '38dba6da-b42d-3bbe-900d-ef2c0712969b', 31220000, 37700000, 0, 4531813, '2021-04-22 11:10:12', '2020-07-23 21:51:08', '2021-04-22 06:17:29'),
(329, 331, '986027******4686', '2506', '547f8ebb-6220-37af-88e7-002f3022082f', 0, 0, 0, 4530630, '2021-04-22 11:10:01', '2020-12-01 15:56:44', '2021-04-22 06:17:29'),
(333, 335, '986027******8999', '2511', 'f8d67052-36a0-36cb-9389-ef5e862515c6', 0, 0, 0, 5198285, '2021-04-22 11:10:02', '2020-12-02 14:10:41', '2021-04-22 06:17:29'),
(425, 427, '986027******0656', '2601', '42c9c251-75c7-3f95-a4b7-89dc4fcb386b', 100000, 0, 0, 5561996, '2021-04-22 11:10:02', '2021-01-28 16:54:06', '2021-04-22 06:17:29'),
(426, 428, '986027******5958', '2601', 'f60f0f2f-ca6b-3449-a84c-c6001720d8f4', 0, 0, 0, 5571074, '2021-04-22 11:10:02', '2021-02-02 19:48:13', '2021-04-22 06:17:29'),
(434, 436, '986027******0108', '2602', '28865574-935e-3052-9d5a-3a78d6422955', 0, 0, 0, 5601970, '2021-04-22 11:10:02', '2021-02-03 11:56:17', '2021-04-22 06:17:29'),
(551, 553, '986027******5154', '2602', 'dfca2a53-3bfe-325c-83ed-4cb04354a665', 0, 0, 0, 5797934, '2021-04-22 11:10:02', '2021-03-02 18:01:30', '2021-04-22 06:17:29'),
(572, 574, '986027******2985', '2603', 'ee39a873-dc7b-3c8e-bba9-17a461412769', 0, 0, 0, 5826610, '2021-04-22 11:10:03', '2021-03-03 18:24:34', '2021-04-22 06:17:29'),
(585, 587, '986027******1255', '2603', '017b7d03-8dcd-319c-87bb-58d1a98f399c', 0, 0, 0, 5851094, '2021-04-22 11:10:03', '2021-03-05 11:59:36', '2021-04-22 06:17:29'),
(591, 593, '986027******7990', '2506', '7f67ceba-3e60-3bff-9dfb-7d79d6e9cac7', 0, 0, 0, 4531798, '2021-04-22 11:10:03', '2021-03-05 13:56:47', '2021-04-22 06:17:29'),
(594, 596, '986027******7964', '2603', '4b4a2fbc-d535-354a-94c6-3c439580e42c', 0, 0, 0, 5829477, '2021-04-22 11:10:03', '2021-03-05 14:35:14', '2021-04-22 06:17:29'),
(595, 597, '986027******2464', '2603', '9bf62e11-3f76-39ac-90f4-67985cf4fd6f', 0, 0, 0, 5829330, '2021-04-22 11:10:04', '2021-03-05 14:42:58', '2021-04-22 06:17:29'),
(598, 600, '986027******4234', '2603', '', 0, 0, 0, 5849649, '2021-04-22 11:10:04', '2021-03-05 16:51:05', '2021-04-22 06:17:29'),
(625, 627, '986027******3910', '2602', '', 0, 0, 0, 5811787, '2021-04-22 11:10:04', '2021-03-05 22:07:34', '2021-04-22 06:17:29'),
(657, 663, '986027******1171', '2603', 'dbf64398-bde6-306c-8260-9d968b7292c4', 0, 0, 0, 5900831, '2021-04-22 11:10:04', '2021-03-11 12:23:43', '2021-04-22 06:17:29'),
(663, 669, '986027******6347', '2603', 'c4029c0c-a511-3590-b894-0469d02dd004', 0, 0, 0, 5915672, '2021-04-22 11:10:04', '2021-03-11 12:40:27', '2021-04-22 06:17:29'),
(668, 674, '986027******2335', '2603', 'fcfd0e6d-150a-3706-a647-4336a3943189', 0, 0, 0, 5915627, '2021-04-22 11:10:05', '2021-03-11 12:57:50', '2021-04-22 06:17:29'),
(675, 681, '986027******0477', '2602', 'bf908207-9823-30fe-8021-c2b8173a588d', 0, 0, 0, 5643104, '2021-04-22 11:10:05', '2021-03-11 17:56:56', '2021-04-22 06:17:29'),
(676, 682, '986027******1639', '2603', 'f0c34973-680b-379c-92c1-cb6589dcbcc4', 0, 0, 0, 5829966, '2021-04-22 11:10:05', '2021-03-12 13:01:20', '2021-04-22 06:17:29'),
(679, 685, '986027******0501', '2603', '9fa8e17e-39ec-3998-b8c9-be2d4a47596c', 526750000, 0, 0, 5893268, '2021-04-22 11:10:05', '2021-03-12 17:38:48', '2021-04-22 06:17:29'),
(680, 686, '986027******5294', '2603', '88c7da29-2522-3b7b-8818-59c16baddefb', 10000000, 10000000, 0, 5932300, '2021-04-22 11:10:06', '2021-03-12 18:00:45', '2021-04-22 06:17:29'),
(681, 687, '986027******9663', '2603', '5f625483-af9e-3107-ad48-266a569a85bd', 0, 0, 0, 5900549, '2021-04-22 11:10:06', '2021-03-13 21:49:56', '2021-04-22 06:17:29'),
(682, 688, '986027******9671', '2603', '5082c1c5-ea77-3ab3-9bba-3861ae948370', 0, 0, 0, 5909228, '2021-04-22 11:10:06', '2021-03-13 22:16:30', '2021-04-22 06:17:29'),
(687, 693, '986027******5848', '2603', '8539e1c8-7a89-391f-bc10-13ca48180484', 0, 0, 0, 5901490, '2021-04-22 11:10:06', '2021-03-16 12:36:19', '2021-04-22 06:17:29'),
(688, 694, '986027******5579', '2603', '9b767e08-1e88-3dc3-9980-8c3f201076d3', 0, 0, 0, 5900485, '2021-04-22 11:10:07', '2021-03-16 12:36:59', '2021-04-22 06:17:29'),
(690, 696, '986027******0456', '2603', 'ba56a2c3-ec06-3904-b1fc-7f6b1a7bc928', 0, 0, 0, 5957742, '2021-04-22 11:10:07', '2021-03-17 14:53:39', '2021-04-22 06:17:29'),
(692, 698, '986027******9691', '2603', '121e54ef-8dc8-3bab-8bee-6c8be592b9ce', 1937000, 0, 0, 5982444, '2021-04-22 11:10:08', '2021-03-18 14:02:34', '2021-04-22 06:17:29'),
(698, 704, '986027******8511', '2603', '59e1afbd-1510-3ad0-840e-2d1fef55b4cc', 0, 0, 0, 5989576, '2021-04-22 11:10:08', '2021-03-23 09:14:26', '2021-04-22 06:17:29'),
(699, 705, '986027******3856', '2603', '320f1fad-183c-3055-9135-743051b35a8a', 0, 0, 0, 6016992, '2021-04-22 11:10:08', '2021-03-24 11:35:58', '2021-04-22 06:17:29'),
(717, 723, '986027******9013', '2603', '442cc366-9bf2-3e34-a4a1-4f64c6e492f0', 0, 0, 0, 5954116, '2021-04-22 11:10:08', '2021-03-25 12:34:25', '2021-04-22 06:17:29'),
(718, 724, '986027******0155', '2603', '240859b7-6203-3678-b2f6-5fc982fbf3fa', 3412000, 0, 0, 5930616, '2021-04-22 11:10:08', '2021-03-26 06:33:11', '2021-04-22 06:17:29'),
(720, 726, '986027******9499', '2603', '91e36000-cc28-3d27-b413-ccfd2e3685c6', 0, 0, 0, 6054816, '2021-04-22 11:10:09', '2021-03-27 14:34:30', '2021-04-22 06:17:29'),
(721, 727, '986027******4257', '2603', '98e734ff-16c7-364c-8a37-a4513482c783', 0, 0, 0, 6013737, '2021-04-22 11:10:09', '2021-03-27 14:47:30', '2021-04-22 06:17:29'),
(725, 731, '986027******1140', '2603', '0a0efb6b-9f85-3a41-8d5a-26de618ab68b', 900000, 0, 0, 6091094, '2021-04-22 11:10:09', '2021-03-31 19:05:44', '2021-04-22 06:17:29'),
(728, 734, '986027******6613', '2602', '6412fbb9-93cc-3345-96a2-b93c5cc0e79c', 71866100, 0, 0, 5773786, '2021-04-22 11:10:10', '2021-04-01 20:57:03', '2021-04-22 06:17:29'),
(730, 736, '986027******1248', '2604', '69537015-086a-312e-aa9e-bb683600feee', 1205500, 0, 0, 6100426, '2021-04-22 11:10:10', '2021-04-06 18:13:34', '2021-04-22 06:17:29'),
(731, 737, '986027******1266', '2603', '5fc3ae55-9451-35bf-bf90-516efba111c1', 0, 0, 0, 5867426, '2021-04-22 11:10:10', '2021-04-06 22:03:53', '2021-04-22 06:17:29'),
(733, 739, '986027******0891', '2603', 'fa0b6379-995d-3b45-9aff-10a8e5da9bb7', 0, 0, 0, 6039303, '2021-04-22 11:10:11', '2021-04-07 12:38:21', '2021-04-22 06:17:29'),
(735, 741, '986027******2853', '2604', 'f7cf0914-149f-30dd-b3c1-d355fcdbd054', 59205000, 59205000, 0, 6144038, '2021-04-22 11:10:11', '2021-04-07 14:18:17', '2021-04-22 06:17:29'),
(739, 745, '986027******2875', '2604', '77201b7e-b053-3389-94d2-e49a00ba57f6', 43700000, 43700000, 0, 6132586, '2021-04-22 11:10:11', '2021-04-09 16:26:50', '2021-04-22 06:17:29'),
(740, 746, '986027******9737', '2604', 'fd2d57c4-d8f2-3088-8c8d-a8d92c719837', 7223000, 7223000, 0, 6152596, '2021-04-22 11:10:11', '2021-04-10 00:30:15', '2021-04-22 06:17:29'),
(747, 753, '986027******1729', '2604', '63eef983-308a-3bc3-a4b9-d6908afe4991', 10920000, 0, 0, 6206084, '2021-04-22 11:10:11', '2021-04-13 16:04:04', '2021-04-22 06:17:29'),
(755, 761, '986027******1049', '2604', '99228c93-abe0-3392-afb6-13e15b5ddc39', 38500000, 0, 0, 6197633, '2021-04-22 11:10:12', '2021-04-14 12:59:45', '2021-04-22 06:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(5) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED DEFAULT NULL,
  `ox_subdomain` varchar(20) DEFAULT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `tin` int(9) DEFAULT NULL,
  `description_ru` text,
  `description_uz` text,
  `logo` blob,
  `color` varchar(10) DEFAULT NULL COMMENT 'Фирменный цвет бренда',
  `photo` text,
  `interest` int(2) NOT NULL DEFAULT '2',
  `site_url` varchar(100) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `added_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `category_id`, `ox_subdomain`, `org_name`, `tin`, `description_ru`, `description_uz`, `logo`, `color`, `photo`, `interest`, `site_url`, `active`, `added_on`, `updated_on`) VALUES
(5, 2, NULL, 'Sportshop', 444444444, 'Сеть мултибрендовых магазинов. Посетители смогут найти большой ассортимент спортивных инвентарей, спорт товаров, спортивного питания, надувные и каркасные бассейны, велосипеды и самокаты, также в магазине есть отдел массажеров, вело запчастей, детских игрушек и товаров для любителей рыбалки.\n\nКроме этого продажа тренажёров на примую со склада', NULL, 0x68747470733a2f2f6170692e6d756c7469636172642e757a2f706172746e65722d6c6f676f2f352e706e67, '000000', '[\n  \"https:\\/\\/api.multicard.uz\\/partner-photo\\/5-1.jpg\",\n  \"https:\\/\\/api.multicard.uz\\/partner-photo\\/5-2.jpg\",\n  \"https:\\/\\/api.multicard.uz\\/partner-photo\\/5-3.jpg\",\n  \"https:\\/\\/api.multicard.uz\\/partner-photo\\/5-4.jpg\",\n  \"https:\\/\\/api.multicard.uz\\/partner-photo\\/5-5.jpg\",\n  \"https:\\/\\/api.multicard.uz\\/partner-photo\\/5-6.jpg\"    \n]', 2, NULL, 1, '2021-01-20 19:34:43', '2021-01-20 14:37:37'),
(106, 2, 'avva', 'Ds damat', NULL, 'D’S Damat – турецкий бренд, который с 2002 года предлагает качество, комфорт и дизайн по конкурентно-способной цене. Основная миссия бренда – создание стильной одежды для сильной половины человечества, которая будет отвечать основным веяниям моды, сохраняя в себе индивидуальность и особый шарм. В Ташкенте уже два магазина мужской одежды D’S Damat, который однозначно уже успел снискать призвание у сильной половины человечества.', 'D\'S Damat - 2002 yildan beri sifatli, qulaylik va dizaynni raqobatbardosh narxlarda taqdim etib kelayotgan turk brendi. Brendning asosiy vazifasi insoniyatning kuchli yarmi uchun individuallik va o\'ziga xos jozibadorlikni saqlab, asosiy moda tendentsiyalariga javob beradigan zamonaviy kiyimlar yaratishdir. Toshkentda allaqachon D\'S Damat erkaklar kiyim-kechak do\'konlari mavjud bo\'lib, ular allaqachon insoniyatning kuchli yarmining talabiga sazovor bo\'lgan.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f64322f33622f37392f643233623739336238353737646332353239323036313932353661613763373338653934383437656664333732313932303339363633626335666634376562652e706e67, '15274F', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/5f\\/3c\\/14\\/5f3c14c86945f6e2c03533944033dbbd8b6bce9797d0eae98b1f7afaff819f38.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/32\\/04\\/9e\\/32049edbb315eab727a63098c5f1fd0727c9bfa146d294c5cfd94dd48462200d.jpg\"]', 2, NULL, 1, '2021-04-16 17:20:25', '2021-04-16 12:25:47'),
(107, 10, 'erkatoy1', 'Erkatoy', NULL, 'Сеть магазинов Erkatoy Group является официальным дистрибьютором всемирно известных брендов игрушек и товаров для детей, таких как: LEGO, Chicco, Mattel (Barbie, Hot Wheels, Fisher Price), Hasbro (Nerf, Play Doh, Transformers), Simba Dickie Toys (Smoby, Simba, Majorette, Steffi), Zapf Creation (Baby Born), Playmobil, Philips Avent, Globber, Rastar и других.\r\n\r\nДействует доставка по всему Узбекистану, каждый день с 10:00 до 22:00.  При заказе на сумму свыше 300 000 сум доставка бесплатная.\r\nОнлайн-заказы можно оформить\r\nна нашем сайте. \r\nВо всех филиалах действует РАССРОЧКА без первого взноса.', 'Сеть магазинов Erkatoy Group является официальным дистрибьютором всемирно известных брендов игрушек и товаров для детей, таких как: LEGO, Chicco, Mattel (Barbie, Hot Wheels, Fisher Price), Hasbro (Nerf, Play Doh, Transformers), Simba Dickie Toys (Smoby, Simba, Majorette, Steffi), Zapf Creation (Baby Born), Playmobil, Philips Avent, Globber, Rastar и других.\r\n\r\nДействует доставка по всему Узбекистану, каждый день с 10:00 до 22:00.  При заказе на сумму свыше 300 000 сум доставка бесплатная.\r\nОнлайн-заказы можно оформить\r\nна нашем сайте. \r\nВо всех филиалах действует РАССРОЧКА без первого взноса.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f33352f64352f31612f333564353161303861323336636463613161326631323961646666323264373633326133653166393430616134643362663638316361376632353938396163322e706e67, 'FFFFFF', '[\"https://files.ox-sys.com/cache/1000x_/image/65/31/cc/6531cc2621e6d2810fbaa2c4c0bc894df9f6c7fd594ca8fbaee53afbeb11858e.jpg\",\"https://files.ox-sys.com/cache/1000x_/image/10/ee/bb/10eebb05a5b3e282f8909720ec56c59fcc6fee7f7080cbe11b6a5ed8193f78c9.JPG\",\"https://files.ox-sys.com/cache/1000x_/image/e8/9a/3e/e89a3e706ad785b4d66faead4430cc243b32fa989e8ccabb7281cb2b9e88b561.jpg\",\"https://files.ox-sys.com/cache/1000x_/image/d3/85/68/d38568d9856e86bf825dc37893a5bbf90803ad0b05d0d20f04ba6b738748fe37.jpg\"]', 2, NULL, 1, '2021-03-04 16:37:00', '2021-04-17 19:58:08'),
(122, 4, 'paeonnis', 'Paeonnis', NULL, 'PAEONNIS - многопрофильный медицинский центр.\r\nНаправления работы:\r\n- Неврология\r\n- Отоларингология\r\n- Эндокринология\r\n- Гинекология\r\n- Урология\r\n- Кардиология\r\n- Физиотерапия\r\n- Лабораторные исследования\r\n- Ультразвуковая диагностика\r\n- ЭЭГ\r\n- Эхо ЭГ\r\n\r\nНАШИ СПЕЦИАЛИСТЫ\r\n- Честные и принципиальные\r\n- Заботливые и искренние\r\n- Открытые, отзывчивые и чуткие\r\n- Доступны и удобны для посещения\r\n- Уважают ваше время\r\n- Квалифицированные и компетентные\r\n- Технически подкованные\r\n\r\nНАШИ ПРЕИМУЩЕСТВА\r\n- Превосходная репутация\r\n- Высочайший профессионализм специалистов\r\n- Исключительные условия для диагностики\r\n- Современные подходы в лечении болезней\r\n- Постоянный контроль и проведение профилактических мероприятий.', 'PAEONNIS - bu ko\'p tarmoqli tibbiyot markazi.\r\nIsh yo\'nalishlari:\r\n- Nevrologiya\r\n- Otolaringologiya\r\n- Endokrinologiya\r\n- Ginekologiya\r\n- urologiya\r\n- kardiologiya\r\n- fizioterapiya\r\n- laboratoriya tadqiqotlari\r\n- ultratovush diagnostikasi\r\n- EEG\r\n- Echo EG\r\n\r\nBizning mutaxassislarimiz\r\n- halol va printsipial\r\n- g\'amxo\'r va samimiy\r\n- Ochiq, sezgir va hamdard\r\n- tashrif buyurish uchun qulay va qulay\r\n- Vaqtingizni hurmat qiling\r\n- malakali va vakolatli\r\n- Texnologiyalar\r\n\r\nBizning afzalliklarimiz\r\n- Zo\'r obro\'-e\'tibor\r\n- mutaxassislarning eng yuqori professionalligi\r\n- tashxis qo\'yish uchun istisno sharoitlar\r\n- kasalliklarni davolashda zamonaviy yondashuvlar\r\n- doimiy monitoring va profilaktika choralari.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f30352f65362f34612f303565363461663761396132356265323863326533373737363135636364663764643535623036306135383936316337303535623539653461323364353763352e706e67, 'FFFFFF', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/16\\/20\\/8f\\/16208ff54cba48645e2821452aa05afc8e31aa267b7c3ec301e53a2b64ec5927.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/1c\\/05\\/b0\\/1c05b0a399e513864f5dad2e118f43d323636b404653545c24fd144c270618bc.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/2f\\/fb\\/a3\\/2ffba3a7d0402ebb80a1e3c9c47e615a3125a0db28936fcd09c9c06ecfdc1116.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/0e\\/c3\\/5b\\/0ec35b0a5aa2e741a19bcde9e0c11940810fd287b7d5b662db0d5ae54d1f71f7.jpg\"]', 2, NULL, 1, '2021-04-16 16:09:11', '2021-04-16 11:16:48'),
(154, 2, 'avva', 'Penti', NULL, 'Penti - известный и хорошо зарекомендовавший себя бренд чулочно-носочного и бельевого трикотажа. Большой ассортимент и цветовая гамма, всегда высокое качество изделий, следование моде, использование современных материалов и технологий отличают этого производителя от многих других.\r\n \r\nКомпания была основана в 1950 году в Турции, где и расположено само производство. Постоянно развиваясь и расширяясь, сейчас Penti входит в число крупнейших мануфактур в Европе, изготавливает продукцию для некоторых известных мировых брендов. На сегодняшний день насчитывается около 575 магазинов по всему миру, и эта цифра с каждым годом продолжает расти. \r\n \r\nВ нашем фирменном магазине Penti можно выбрать и купить колготки, носки, нижнее белье, купальники и другую продукцию, разнообразие моделей приятного порадует каждого. Ассортимент постоянно пополняется - следите за новыми поступлениями!', 'Penti - taniqli va taniqli paypoq va ichki kiyim trikotaj brendi. Katta assortiment va ranglar, har doim yuqori sifatli mahsulotlar, modaga sodiqlik, zamonaviy materiallar va texnologiyalardan foydalanish ushbu ishlab chiqaruvchini boshqalardan ajratib turadi.\r\n \r\nKompaniya 1950 yilda ishlab chiqarishning o\'zi joylashgan Turkiyada tashkil etilgan. Doimiy rivojlanib va ​​kengayib borayotgan Penti hozirgi kunda Evropadagi eng yirik fabrikalardan biri bo\'lib, taniqli jahon brendlari uchun mahsulotlar ishlab chiqaradi. Bugungi kunda dunyo bo\'ylab 575 ga yaqin do\'kon mavjud va bu ko\'rsatkich har yili o\'sishda davom etmoqda.\r\n \r\nBizning Penti savdo do\'konida siz tayt, paypoq, ichki kiyim, suzish va boshqa mahsulotlarni tanlashingiz va sotib olishingiz mumkin, har xil modellar barchani xushnud etadi. Assortiment doimiy ravishda yangilanadi - yangi kelganlarni kuzatib boring!', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f31652f37652f39322f316537653932323434303562323532393263626633383365393166346263323230626466316137313039653461666430373536313330626237323666613365352e706e67, 'D70056', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/03\\/2f\\/ee\\/032fee1e39526f8ee9181935b3cd85f5ec2000848842862596712514a999183e.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/e1\\/7e\\/55\\/e17e550ec4ab32122d9f43643dc9c7bbef23a8d1f7381618ce7963c4ca316232.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/c0\\/fa\\/ec\\/c0faec1e29ba26c116181917a6ca338ce9b2fa4b803c4a0878d339b045c84158.jpg\"]', 2, NULL, 1, '2021-04-16 17:58:53', '2021-04-16 13:14:41'),
(156, 2, 'avva', 'AVVA', NULL, 'Бренд AVVA привнося новшество своими амбициозными взглядами на мир мужской моды с новыми, утонченными, современными и оригинальными линиями одежды, создала совсем другой язык моды, который отражает душу стильных мужчин.\r\n \r\nБренд AVVA заслужил признание в качестве турецкого бренда в мире моды и за короткое время стал одним из наиболее важных брендов в текстильной промышленности в Турции.\r\n \r\nВ Турции функционирует более 100 концептуальных магазинов бренда AVVA, а за рубежом таких магазинов больше 80.\r\n\r\nСегодня AVVA является зарегистрированным товарным знаком в 120 странах с магазинами в Германии, Румынии, Узбекистане, России, Украине, Саудовской Аравии, Марокко, Египте, Сирии и Ливии, с более чем 600 точками продаж в США.', 'AVVA brendi erkaklar kiyimlari dunyosiga bo\'lgan shijoatli qarashlari bilan yangi, zamonaviy, zamonaviy va o\'ziga xos kiyim-kechak liniyalari bilan yangilik qiladi, zamonaviy erkaklarning ruhini aks ettiradigan mutlaqo boshqa moda tilini yaratdi.\r\n \r\nAVVA brendi moda olamida turk brendi sifatida tan olingan va qisqa vaqt ichida Turkiyadagi to\'qimachilik sanoatining eng muhim brendlaridan biriga aylangan.\r\n \r\nTurkiyada AVVA brendining 100 dan ortiq kontseptsiya do\'konlari ishlaydi, chet ellarda esa 80 dan ortiq do\'kon mavjud.\r\n\r\nBugungi kunda AVVA - Germaniyada, Ruminiyada, O\'zbekistonda, Rossiyada, Ukrainada, Saudiya Arabistonida, Marokashda, Misrda, Suriyada va Liviyada do\'konlari bo\'lgan 120 ta mamlakatda ro\'yxatdan o\'tgan savdo belgisidir va AQShda 600 dan ortiq savdo nuqtalari mavjud.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f66312f65312f33332f663165313333323837636564386330383736653337353164646533376462353161393265666233643833343537343832616362346538363761653364393862652e706e67, 'FFFFFF', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/8c\\/66\\/6d\\/8c666dfd20e4bf139aee6e53d6116fa3c5cc6c300a0a8eb0eacab56d1dedf576.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/45\\/0c\\/1b\\/450c1b371d8e5fac8f035afdb5467d837b9bacda4927fe01f54e0e1b57e836cc.jpg\"]', 2, NULL, 1, '2021-04-16 16:40:06', '2021-04-16 12:12:15'),
(160, 1, 'face', 'The Shop', NULL, 'YSK - это узбекский бренд одежды, который был основан в 2006 году. Всё начиналось не просто. Идей было очень много, мы много размышляли, я и моя супруга, Ирода Суюнова, какой бизнес будет выгоднее для нашей семьи. Самым оптимальным было открыть магазин одежды. Набравшись опыта для ведения бизнеса, мы решили воплотить свою мечту - создать свой бренд “Yaskanamu”.\r\n\r\nЭто был долгий путь на самом деле. Изучив все тонкости этого дела, мы приступили к открытию первого магазина. Он не спроста получил такое неординарное название. Нашу дочь зовут Жасмина, но ласкательно называли «Ясканаму», долго не думая, мы пришли к единогласному решению назвать магазин “Yaskanamu”.\r\n\r\nДень за днём мы стараемся изучить все нюансы, касающиеся нашей сферы деятельности, и улучшаем качество проделанной работы. На сегодняшний день, спустя 11 лет с момента открытия первого магазина, наша сеть получает ежедневные поставки одежды разных моделей и размеров, которые придутся по вкусу каждому человеку.\r\n\r\nМогу уверенно сказать, что на сегодняшний день наше призводство одежды не уступает мировым производителям. С нетерпением буду ждать каждого из Вас в сети магазинов YSK!', 'Узб описание', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f34362f30332f63622f343630336362363836396138343764363965333037363332373733643366623235316366393336633032356136366432383137663739363532393062386162622e706e67, 'EDEDED', '[]', 2, NULL, 0, '2021-04-08 18:19:13', '2021-04-08 13:31:10'),
(166, 2, 'avva', 'DERIMOD', NULL, 'Турецкий бренд Derimod пользуется популярностью среди ценителей изделий из натуральной кожи по всему миру.\r\n \r\nТорговая марка предлагает стильные куртки, качественную обувь и авторские аксессуары по доступным ценам, снискавшие призвание как у мужчин, так и женщин.\r\n\r\nОтныне стиль и качество стали доступны по привлекательным ценам в официальных магазинах турецкого бренда Derimod в Ташкенте.', 'Turkiyaning Derimod brendi dunyo bo\'ylab asl charm buyumlarni biluvchilar orasida mashhurdir.\r\n \r\nBrend zamonaviy ko\'ylagi, yuqori sifatli poyabzal va dizaynerlik aksessuarlarini arzon narxlarda taklif etadi, ular erkaklar ham, ayollar ham o\'z kasbiga sazovor bo\'lishdi.\r\n\r\nBundan buyon Toshkentdagi Turkiyaning Derimod brendining rasmiy do\'konlarida uslub va sifat jozibador narxlarda sotila boshlandi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f65652f31652f37392f656531653739666531303334336235366333653362343661393962346265653466633064643439393735653566356166623030643534666136373737613361622e706e67, 'FFFFFF', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/3b\\/52\\/6c\\/3b526cbc20052c7993d7ae5886e95084af97de2155c5fe149e8c67f3883df02d.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/99\\/91\\/61\\/9991617a63c18476e586a848db258ca7cac94799935b873898179ac24e290fd2.jpg\"]', 2, NULL, 1, '2021-04-16 17:46:25', '2021-04-16 12:54:15'),
(179, 1, 'demoshop', 'Demo', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f62612f66332f34392f626166333439613630376464373738643463303836633361613838313361353065383433333866353037396634623533616461663333633230613730356264652e706e67, '', '[]', 2, NULL, 0, '2021-03-30 18:02:13', '2021-03-30 13:02:13'),
(187, 9, 'elysee', 'Elysee Parfumerie', NULL, 'Концепция деятельности компании состоит в стремлении сделать ближе эффективные и безвредные косметические средства класса люкс для здоровья, красоты и сохранения молодости кожи.\r\nСегодня Dori-Darmon HCP является официальным ритейлером таких Брендов, как: Dior, Guerlain, Kenzo, Lancome, Estee Lauder, Salvador Dali, Givenchy, Glamglow, Tom Ford, Ermenegildo Zegna, YSL, Victor & Rolf, Biotherm, Cacharel, Clinique, Giorgio Armini, Lab Series, Michael Kors, Tommy Hilfiger, Mauboussin, Agatha, Charriol, Kaloo, Kokeshi, Lulu Castagnete, DKNY, Azzaro, Mugler, Baldessarini,  4711, Tobacco, Betty Barclay, Smashbox, Jacady, LA MER, Masque Milano, Dusita, Lesquendieu.\r\n\r\n \r\nМиссия компании – Дарить положительные эмоции и отличное настроение!', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f33382f62312f35352f333862313535393239383764643031653263363365313433343734323161353836343464356466366634306464363337386463646639326661353230396635632e706e67, 'FFFFFF', '[\"https://files.ox-sys.com/cache/1000x_/image/dc/72/8c/dc728ccae26098cea099bdc67b22d8219be538174fcb7dd2e315379fcd70e072.jpg\",\"https://files.ox-sys.com/cache/1000x_/image/90/44/7f/90447fda6393123159c0d5c8997f28b298b2600376226da8469ed27795833837.jpg\",\"https://files.ox-sys.com/cache/1000x_/image/ff/68/9b/ff689b1f66c4cc08730685ba070bc7c1e1df4a2abc87383ac7a8ec449c3376ee.jpg\"]', 2, NULL, 1, '2021-04-07 16:38:32', '2021-04-08 12:16:09'),
(188, 2, 'partlion', 'Part Lion', NULL, 'PartLion – известный в своих кругах и очень хорошо зарекомендовавший себя бренд одежды.  Начиная со своего создания магазин  PartLion следует успешным курсом. Уже более 2 лет наш бренд  демократизирует моду благодаря стабильно доступному уровню цен и высоким требованиям к качеству товаров. В нашем магазине вы всегда найдете лучшую одежду в стиле хип-хоп и кэжуал, сможете подобрать себе удобный образ не только на каждый день, но и для особого случая. Наши бутики вы сможете найти не только в СНГ, но и в Турции. Концепция PartLion –это комфортная одежда по комфортным ценам.', 'PartLion - taniqli va juda yaxshi tanilgan kiyim markasi. PartLion tashkil topganidan beri muvaffaqiyatli kursni davom ettirmoqda. 2 yildan ortiq vaqt davomida bizning tovarimiz izchil arzon narxlar va yuqori sifat talablari tufayli modani demokratlashtirdi. Bizning do\'konda siz har doim eng yaxshi hip-hop va tasodifiy kiyimlarni topasiz, siz nafaqat har bir kun uchun, balki alohida bayram uchun ham o\'zingiz uchun qulay ko\'rinishni tanlashingiz mumkin. Bizning butiklarni nafaqat MDH davlatlarida, balki Turkiyada ham topishingiz mumkin. PartLion tushunchasi - bu qulay narxlarda qulay kiyim.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f65392f38652f62632f653938656263366336636530333334313233656134613935356333656637623534376335336364336263626466613336316136656636633963336331643738332e706e67, '000D1B', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/45\\/68\\/07\\/456807b7dda53e1a10e90e9b05b48719316b9918bd3b4e361aa323e417efe841.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/84\\/4b\\/87\\/844b879427fd208a67a583b38e1d6004b05bb662a16d0869fefa174bacf75f92.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/48\\/83\\/28\\/4883283fb5873befadfb478a88ff1963669b97d46d95561a52bcc47dd826be84.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/10\\/4c\\/35\\/104c35f04d2a27097f97ee8f3d0b346451af67ffb1ebe01e865f015675b221a2.jpg\"]', 2, NULL, 1, '2021-04-08 16:39:48', '2021-04-16 13:56:00'),
(192, 1, 'terrabayt5', 'TerrabaytTest', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f61612f34622f63342f616134626334656532376233363932363531343832616632363933333737663935633332343766313666613132643235393132616361396265306130336138632e6a7067, '', '[]', 2, NULL, 0, '2021-04-08 18:20:49', '2021-04-08 13:20:49'),
(193, 1, 'shakhrizod', 'Brand', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f36652f66312f36652f366566313665396630636432623839363536303432393532646261393037303039636438363930613139646337363262353138356139363061366166636166392e706e67, '', '[]', 2, NULL, 0, '2021-04-09 14:12:57', '2021-04-09 09:12:57'),
(195, 3, 'chenson', 'Chenson', NULL, 'CHENSON — один из известнейших ресторанов Ташкента, о котором более 15 лет существования с теплотой вспоминает не одно поколение гостей. Он не только продолжает радовать знаменитыми на весь Ташкент корейскими блюдами, но и, следуя в ногу со временем, расширяет свои возможности. Стильный зал для поклонников европейской и корейской кухни, банкетный зал для торжеств и семейный ресторан с оборудованной детской площадкой. В ресторане CHENSON CHILANZAR мы постарались сделать акцент на уютной и спокойной атмосфере, где можно посидеть в кругу семьи и близких людей.\r\nНеотъемлемая часть ресторана CHENSON CHILANZAR — это наша кухня, старая и знакомая кухня от CHENSON, где корейские и европейские блюда гармонично дополняют друг друга.', 'CHENSON — один из известнейших ресторанов Ташкента, о котором более 15 лет существования с теплотой вспоминает не одно поколение гостей. Он не только продолжает радовать знаменитыми на весь Ташкент корейскими блюдами, но и, следуя в ногу со временем, расширяет свои возможности. Стильный зал для поклонников европейской и корейской кухни, банкетный зал для торжеств и семейный ресторан с оборудованной детской площадкой. В ресторане CHENSON CHILANZAR мы постарались сделать акцент на уютной и спокойной атмосфере, где можно посидеть в кругу семьи и близких людей.\r\nНеотъемлемая часть ресторана CHENSON CHILANZAR — это наша кухня, старая и знакомая кухня от CHENSON, где корейские и европейские блюда гармонично дополняют друг друга.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f65352f35642f38662f653535643866633962326161336131313035373864643165633666353435636339646161306638653935333866626639623164653464613330383138313434642e706e67, '19522A', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/a9\\/a8\\/a7\\/a9a8a77ca363455007c0c7eab4b592ddc8aa653edc64c13871b74db6abc818c1.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/f7\\/3f\\/7b\\/f73f7b74e190e457047c504a7911af9a6e0001e5f4546f101cb0bc0b90191834.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/50\\/e4\\/fa\\/50e4fa4b8df775ba76915d024d75a3b3e2c2bd27f0f4038f4bbee6651ed52dea.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/97\\/9f\\/be\\/979fbe21cf52124ff0e0d2d186c45640a4a0d55508fd3e53bdc9928c46d6b45f.jpg\"]', 2, NULL, 1, '2021-04-09 17:20:39', '2021-04-12 11:33:05'),
(196, 1, 'shakhrizod', 'Brand', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f36652f66312f36652f366566313665396630636432623839363536303432393532646261393037303039636438363930613139646337363262353138356139363061366166636166392e706e67, '', '[]', 2, NULL, 0, '2021-04-09 17:33:01', '2021-04-09 12:33:01'),
(197, 6, 'epsent', 'Enoc', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f32662f31612f39302f326631613930323332656634313833336134303131386330303065363231653433363536393634346464626539303338663265323162366539623133633933372e6a7067, '000000', '[]', 2, NULL, 0, '2021-04-12 10:36:23', '2021-04-21 20:09:18'),
(198, 6, 'bars', 'Birinchi Rezinotexnika Zavodi', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f35382f62642f62302f353862646230396336353832363231623732663238326462346364653739396235333433666562376534383738343939353836316432333636663963653838352e6a7067, '000000', '[]', 2, NULL, 0, '2021-04-12 19:46:20', '2021-04-21 20:09:18'),
(199, 1, 'br', 'RBB', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f39332f39332f30382f393339333038616661643638626130383061326565666131373435343862623432363232333864623961313231313438633733326662393164666538333864342e706e67, '', '[]', 2, NULL, 0, '2021-04-13 11:42:09', '2021-04-13 06:42:09'),
(200, 2, 'ysk', 'Yaskanamu', NULL, 'YSK - это узбекский бренд одежды, который был основан в 2006 году. Всё начиналось не просто. Идей было очень много, мы много размышляли, я и моя супруга, Ирода Суюнова, какой бизнес будет выгоднее для нашей семьи. Самым оптимальным было открыть магазин одежды. Набравшись опыта для ведения бизнеса, мы решили воплотить свою мечту - создать свой бренд “Yaskanamu”.\r\nЭто был долгий путь на самом деле. Изучив все тонкости этого дела, мы приступили к открытию первого магазина. Он не спроста получил такое неординарное название. Нашу дочь зовут Жасмина, но ласкательно называли «Ясканаму», долго не думая, мы пришли к единогласному решению назвать магазин “Yaskanamu”.\r\n\r\nДень за днём мы стараемся изучить все нюансы, касающиеся нашей сферы деятельности, и улучшаем качество проделанной работы. На сегодняшний день, спустя 11 лет с момента открытия первого магазина, наша сеть получает ежедневные поставки одежды разных моделей и размеров, которые придутся по вкусу каждому человеку.\r\n\r\nМогу уверенно сказать, что на сегодняшний день наше призводство одежды не уступает мировым производителям. С нетерпением буду ждать каждого из Вас в сети магазинов “YSK\"!', 'YSK 2006 yilda tashkil etilgan o\'zbek kiyimlari brendi. Hammasi oson bo\'lmagan. Fikrlar juda ko\'p edi, biz va men turmush o\'rtog\'im Iroda Suyunova, oilamiz uchun qaysi biznes foydali bo\'lishi haqida ko\'p o\'ylardik. Eng maqbul narsa kiyim do\'konini ochish edi. Biznes yuritish bo\'yicha tajriba to\'plab, biz o\'z orzuimizni ro\'yobga chiqarishga qaror qildik - o\'zimizning \"Yaskanamu\" brendimizni yaratishga.\r\nAslida bu uzoq safar edi. Ushbu masalaning barcha nozik tomonlarini o\'rganib chiqib, birinchi do\'konni ochishga kirishdik. U bunday g\'ayrioddiy nomni bejiz qabul qilmagan. Qizimizning ismi Jasmina, ammo ularni mehr bilan \"Yaskanamu\" deb chaqirishgan, uzoq o\'ylamasdan, biz do\'konning nomini \"Yaskanamu\" deb nomlash to\'g\'risida bir ovozdan qaror qildik.\r\n\r\nKundan kunga biz o\'z faoliyatimiz sohasi bilan bog\'liq barcha nuanslarni o\'rganishga va bajarilgan ishlarning sifatini oshirishga harakat qilamiz. Bugun, birinchi do\'kon ochilganidan 11 yil o\'tib, bizning tarmoq har kuni har kimning didiga mos keladigan har xil modeldagi va o\'lchamdagi kiyim-kechaklarni etkazib beradi.\r\n\r\nIshonch bilan aytishim mumkinki, bugungi kunda bizning kiyim-kechak ishlab chiqarishimiz dunyo ishlab chiqaruvchilaridan qolishmaydi. \"YSK\" do\'konlari tarmog\'ida har biringizni kutib qolaman!', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f33352f66652f39382f333566653938363334343865396238333266643734353266366538623866366130346562623337656464326665333236333334616635303033313138366535652e706e67, '041DFF', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/8b\\/5e\\/e3\\/8b5ee38a5aa5d3c48e4b19205bf4d443689e3217ab1f8402a8733003cdbc2b20.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/2e\\/3f\\/ca\\/2e3fca0f44f9a0fac6ebab9bb7bd59fcf4bbab43197f3b4a95144832224d2a76.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/10\\/f9\\/c3\\/10f9c31bb218a7d2ec4b876df14b07045b49bffa58ee7ac9701a5c8977c9555d.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/a9\\/1d\\/0d\\/a91d0d46eb1e53a6822118cce29e9db09c37dd3a6b3f791aa22efae497164fdf.jpg\"]', 0, NULL, 1, '2021-04-14 16:41:49', '2021-04-15 10:03:57'),
(202, 2, 'atlanta', 'Atlanta', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f38372f36622f35652f383736623565316539646130393735643330316531393632393233356263383762353631356464653930373762383836633233626161313066373339633066362e6a7067, '000000', '[]', 2, NULL, 0, '2021-04-15 14:19:22', '2021-04-15 09:52:48'),
(203, 2, 'apple', 'MZ', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f36662f30332f32312f366630333231303038326535383537393165396266373765336237303034323563653839356666303631623666343437393561383534323636613436373037662e6a7067, '000000', '[]', 2, NULL, 0, '2021-04-15 16:26:45', '2021-04-19 04:49:23'),
(205, 3, 'maxway', 'MaxWay', NULL, 'Компания была основана в феврале 2005 года в Ташкенте. В основном меню ресторанов бургеры, хот-доги, сэндвичи, лаваши и донары. Мы анализируем предпочтения гостей филиалов и в каждой точке предлагаем наиболее популярный ассортимент.\r\nНаши приоритеты – свежесть и качество ингредиентов, разнообразие начинок, доступные цены и внимание к просьбам гостей.\r\n\r\nЕжедневно в рестораны MaxWay приходит большое количество самых разных людей. И мы стараемся увеличивать как число посетителей, так и число филиалов. С каждым приготовленным блюдом мы оттачиваем детали фирменных рецептов и ищем идеальный баланс цены и качества, чтобы и дальше оставаться вашим любимым брендом.\r\nПриходите в наши филиалы всей семьей, проведите досуг с комфортом и обязательно расскажите нам, как это было.\r\n\r\nМы планируем расширение сети и создание франшизы MaxWay для регионов. И даже став очень большой компанией, мы навсегда останемся верны основополагающим принципам компании – открытость и качество. И если вдруг вы столкнулись с плохим обслуживанием или низким качеством приготовленной еды в наших филиалах, обязательно напишите нам на info@maxway.uz. Мы с радостью принимаем как положительные, так и отрицательные отзывы. Жалоба гостя – подарок, благодаря которому нам есть куда расти.\r\n\r\nВыбирайте свой путь и достигайте максимальных вершин с MaxWay!', 'Kompaniya 2005 yil fevral oyida Toshkent shahrida tashkil etilgan. Restoranlarning asosiy menyusi burger, sosiskalar, sendvichlar, pita nonlari va donorlarni o\'z ichiga oladi. Biz filial mehmonlarining afzalliklarini tahlil qilamiz va har bir nuqtada eng mashhur assortimentni taklif etamiz.\r\nBizning ustuvor vazifalarimiz ingredientlarning yangiligi va sifati, turli xil plomba moddalari, arzon narxlar va mehmonlarimizning talablariga e\'tibor berishdir.\r\n\r\nMaxWay restoranlariga har kuni turli xil odamlar keladi. Va biz tashrif buyuruvchilar sonini va filiallar sonini ko\'paytirishga harakat qilmoqdamiz. Har bir tayyorlagan taomimiz bilan biz o\'zingizning sevimli brendingiz bo\'lishni davom ettirish uchun imzo retseptlarimizning tafsilotlarini yaxshilaymiz va narx va sifatning mukammal muvozanatini izlaymiz.\r\nButun oila bilan bizning filiallarga keling, bo\'sh vaqtingizni bemalol o\'tkazing va bu qanday bo\'lganligini bizga aytib bering.\r\n\r\nBiz tarmoqni kengaytirishni va mintaqalar uchun MaxWay franchayzasini yaratishni rejalashtirmoqdamiz. Va hatto juda katta kompaniyaga aylanib, biz kompaniyaning asosiy tamoyillari - ochiqlik va sifatga abadiy sodiq qolamiz. Agar siz kutilmaganda bizning filiallarimizda sifatsiz xizmat yoki pishgan ovqatning pastligi bilan duch kelsangiz, bizga info@maxway.uz elektron manziliga yozishni unutmang. Biz ijobiy va salbiy fikrlarni mamnuniyat bilan qabul qilamiz. Mehmonlarning shikoyati - bu bizga o\'sishga imkoniyat beradigan sovg\'adir.\r\n\r\nO\'zingizning yo\'lingizni tanlang va MaxWay yordamida eng yuqori cho\'qqilarga chiqing!', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f33352f34652f38302f333534653830363961353830326364633064333739633263663163643437346639353532643262643862303363323565353430393038313765373038363866652e706e67, 'AB0E9B', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/9b\\/62\\/0e\\/9b620ef9ab514bb046b98df0f947bc6dcc3d9195f916e297f130cc5f3b2035b4.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/36\\/55\\/74\\/365574da77dcdcedd9487cc5d06c2dc8a7e222d4a618cba305fdee4963504885.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/97\\/c4\\/59\\/97c459db00183fd97e5cdf1ba6bb2b543a7ad90f898828d42cf2eeeac74efbad.jpg\"]', 2, NULL, 1, '2021-04-16 11:02:03', '2021-04-16 11:20:28'),
(206, 3, 'maxway', 'MasterFood', NULL, 'В MasterFood трепетно относятся к каждому процессу и конечному результату. Мы искренне верим, что каждый человек, независимо от полноты кошелька, достоин вкусной еды по приемлемым ценам. Мы хотим, чтобы наши гости могли не просто перекусывать на бегу в ритме большого города, а, наоборот, сделать паузу и получить от еды настоящее удовольствие.\r\n\r\nВ 2012 году в мае мы открыли первый ресторан MasterFood. Небольшое помещение на углу улиц Кунаева и Шота Руставели на долгие годы стало нашим символом и ведущим филиалом. В основу концепции были заложены рецепты традиционных турецких блюд, которые пришлись по вкусу всем гостям MasterFood. Со временем ассортимент блюд менялся, пока не пришел к современному виду.\r\n\r\nА тогда, почти 10 лет назад, никто не предполагал, что мы начинаем такую большую историю. Но уже в тот момент мы решили, что будем соблюдать высокие стандарты качества и всегда помнить о предпочтениях гостя.\r\n\r\nОсновной продукт компании – фастфуд - еда быстрого приготовления. Тем не менее, главный акцент при производстве мы делаем на свежести и качестве каждого ингредиента и сохраняем при этом максимально приятный уровень цен.\r\nСейчас сеть насчитывает 3 филиала в Ташкенте. За годы работы удалось отточить и оптимизировать абсолютно все рабочие процессы. Каждый сотрудник чётко знает, что и как делать на рабочем месте. Огромное внимание мы уделяем сбору обратной связи и последующей обработке отзывов.\r\n\r\nПриходите в гости и по достоинству оцените MASTERство поваров и вкус фастFOODа.\r\n\r\nДобро пожаловать в MasterFood!', 'MasterFood har bir jarayon va yakuniy natijaga ishtiyoq bilan qaraydi. Biz chin dildan ishonamizki, hamyonining to\'liqligidan qat\'i nazar, har kim hamyonbop narxlarda mazali taomlarga loyiqdir. Biz mehmonlarimiz nafaqat katta shahar ritmida yugurishda gazak yeyishlarini, balki, aksincha, to\'xtab turishlarini va o\'zlarining taomlaridan haqiqiy zavq olishlarini istaymiz.\r\n\r\n2012 yil may oyida biz birinchi MasterFood restoranimizni ochdik. Kunaev va Shota Rustaveli ko\'chalarining burchagida joylashgan kichik bino ko\'p yillar davomida bizning ramzimiz va etakchi filialimiz bo\'lib kelgan. Ushbu kontseptsiya MasterFood-ning barcha mehmonlarini xursand qilgan an\'anaviy turk taomlari retseptlariga asoslangan edi. Vaqt o\'tishi bilan zamonaviy ko\'rinishga kelgunga qadar idishlar assortimenti o\'zgargan.\r\n\r\nVa keyin, deyarli 10 yil oldin, hech kim bizning bunday katta hikoyani boshlayotganimizni tasavvur qilmagan. Ammo o\'sha paytning o\'zida biz yuqori sifat standartlariga rioya qilishimiz va har doim mehmonning afzalliklarini yodda tutishimizga qaror qildik.\r\n\r\nKompaniyaning asosiy mahsuloti fastfud - tez ovqatlanishdir. Shunga qaramay, biz ishlab chiqarishda asosiy e\'tiborni har bir ingredientning yangiligi va sifatiga, shu bilan birga narxlarning eng yoqimli darajasini saqlab turamiz.\r\nHozirda Toshkentda tarmoqning 3 ta filiali mavjud. O\'tgan yillar davomida biz barcha ish jarayonlarini yaxshilab, optimallashtirishga muvaffaq bo\'ldik. Har bir xodim ish joyida nimani va qanday qilishni aniq biladi. Fikrlarni yig\'ish va fikrlarni qayta ishlashga katta e\'tibor beramiz.\r\n\r\nTashrif buyurib, oshpazlarning MASTER mahoratini va tezkor OZIQ-ovqatlar ta\'mini qadrlang.\r\n\r\nMasterFood-ga xush kelibsiz!', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f39302f31362f64612f393031366461326232356563363061636637363833623562646164613732663630336164333966373864343333613335626230316666383132326363363365632e706e67, 'EF7F1A', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/08\\/22\\/c7\\/0822c775846b1fbb40af71b482362d25e9e24323d0397303a79db3b0a5c19ed8.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/8b\\/58\\/13\\/8b5813e841a9c70f1f6a8d333852e97b7499a5f3ee7af08160ab061e7ce0f32f.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/f7\\/9e\\/da\\/f79edabcc5ebffd273a9e975ed522a1abcecf7d5be35625857b4f6b8f9c9068b.JPG\"]', 2, NULL, 1, '2021-04-16 18:14:31', '2021-04-17 08:57:26'),
(207, 2, 'eurasia1', 'Colins', NULL, 'То, что вам подходит!\r\n\r\nБренд Colin’s был основан в 1983 году в Турции турецким бизнесменом Нуреттином Эроглу и его четырьмя братьями.\r\n\r\nColin’s специализируется как на женской, так и на мужской одежде, и гордится производством джинсов, футболок, рубашек, курток и толстовок. Бренд так же имеет линию кожаных изделий, обуви и аксессуаров. Бренд следит за последними тенденциями в мире моды, внедряет новейшие технологии в производство и стремится подарить потребителю ощущение комфорта и идеальной посадки.', 'Sizga nima mos keladi!\r\n\r\nColin brendi 1983 yilda Turkiyada turkiyalik tadbirkor Nurettin Erog\'li va uning to\'rt ukasi tomonidan tashkil etilgan.\r\n\r\nColin\'s ayollar va erkaklar kiyimlariga ixtisoslashgan va jinsi, futbolka, ko\'ylak, ko\'ylagi va futbolka ishlab chiqarish bilan faxrlanadi. Brendda charm buyumlar, poyabzal va aksessuarlar qatori ham mavjud. Brend moda olamidagi so\'nggi tendentsiyalarni kuzatib boradi, ishlab chiqarishda eng yangi texnologiyalarni tatbiq etadi va iste\'molchiga qulaylik va mukammal moslashuv hissi berishga intiladi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f38392f62662f30362f383962663036396532343239623038343365353036333932323861393964663136356565633364323862626661663061613166643966626438363235636237362e706e67, '131313', '[]', 2, NULL, 1, '2021-04-16 18:44:11', '2021-04-21 20:10:46'),
(208, 2, 'eurasia1', 'US Polo', NULL, 'Если вы в U.S. Polo – вы в игре!\r\n\r\nU.S. Polo ASSN был основан в 1890 году в США. Компанию вдохновила американская игра в поло. Бренд выпускает разнообразную повседневную одежду с особым элегантным шиком для женщин, мужчин и детей.\r\n\r\nU.S. Polo ASSN специализируется на производстве рубашек поло, спортивных костюмов, курток, свитеров и спортивных платьев. Марка так же выпускает джинсы, кожаные аксессуары и обувь. U.S. Polo ASSN предлагает одежду для всей семьи, которую можно приобрести в более чем 160 странах.', 'Agar siz AQShda bo\'lsangiz Polo - siz o\'yindasiz!\r\n\r\nBIZ. Polo ASSN 1890 yilda AQShda tashkil etilgan. Kompaniya Amerika polosi o\'yinidan ilhomlangan. Brend ayollar, erkaklar va bolalar uchun maxsus zamonaviy shinamlik bilan har xil kundalik kiyimlarni ishlab chiqaradi.\r\n\r\nBIZ. Polo ASSN polo ko\'ylaklari, sport kostyumlari, kurtkalar, sviterlar va sport liboslari ishlab chiqarishga ixtisoslashgan. Brend shuningdek, jinsi shimlar, charm aksessuarlar va poyabzal ishlab chiqaradi. BIZ. Polo ASSN butun dunyo uchun 160 dan ortiq mamlakatda sotib olinadigan kiyim-kechaklarni taklif etadi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f35362f32622f32642f353632623264383536653735336632323761663430356663666631343735643931666634613064326166306164383237626234353735343039636263303961392e706e67, '13284B', '[]', 2, NULL, 1, '2021-04-17 14:01:29', '2021-04-21 20:10:46'),
(209, 2, 'eurasia1', 'Celio', NULL, 'Celio* была основана в 1985 году во Франции братьями Марком и Лораном Гросманном.\r\n\r\nCelio* специализируется на производстве удобной и элегантной спортивной, повседневной и деловой одежды.  У бренда также есть линия высококачественных аксессуаров и кожгалантереи. Celio* обслуживает континентальный европейский рынок и стремится показать высокое качество своей одежды. Всего за 30 лет Celio* стала неотъемлемым международным брендом мужской одежды.', 'Celio* 1985 yilda Frantsiyada aka-uka Mark va Loran Grosmannlar tomonidan tashkil etilgan.\r\n\r\nCelio* qulay va oqlangan sport kiyimlari, oddiy va ishbilarmon kiyimlar ishlab chiqarishga ixtisoslashgan. Brend shuningdek yuqori sifatli aksessuarlar va charm buyumlar qatoriga ega. Celio * Evropa qit\'asi bozoriga xizmat qiladi va kiyimlarining yuqori sifatini namoyish etishga intiladi. Faqat 30 yil ichida Celio * erkaklar kiyimlarining ajralmas xalqaro brendiga aylandi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f33312f66642f62342f333166646234636163633532643561643264613734366332366436623138303561346630343435653462393639343330653362313933653935656137363936632e706e67, 'FFFFFF', '[]', 2, NULL, 1, '2021-04-17 14:03:40', '2021-04-21 20:10:46'),
(210, 2, 'eurasia1', 'Pimkie', NULL, 'Не стесняйся быть собой!\r\n\r\nPimkie был основан в 1971 году во Франции. Компания является частью Ассоциации семьи Мулиес, основанной Жераром Мулиесом.\r\n\r\nPimkie специализируется на производстве женской одежды, аксессуаров, обуви и сумок. Pimkie всегда внимательно относился к женщинам, их потребностям и желаниям. Коллекции бренда сосредоточены на создании высококачественных продуктов по разумным ценам.', 'O\'zingiz kabi bo\'lishdan qo\'rqmang!\r\n\r\nPimki 1971 yilda Frantsiyada tashkil etilgan. Kompaniya Jerar Moulies tomonidan tashkil etilgan Moulies Family Association tarkibiga kiradi.\r\n\r\nPimkie ayollar kiyimlari, aksessuarlar, poyabzal va sumkalar ishlab chiqarishga ixtisoslashgan. Pimki har doim ayollarga, ularning ehtiyojlari va istaklariga e\'tiborli bo\'lib kelgan. Brend kollektsiyalari yuqori sifatli mahsulotlarni maqbul narxlarda yaratishga qaratilgan.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f36312f37342f34302f363137343430333331633666383064636162616134306462396166386537316236386632623135336362346636616665326163623664366165666163353463352e706e67, 'FFFFFF', '[]', 2, NULL, 1, '2021-04-17 14:05:16', '2021-04-21 20:10:46'),
(211, 2, 'eurasia1', 'Bata', NULL, 'Упор на комфорт и отличное качество!\r\n \r\nСемейная компания T&A Bata Shoe была основана в небольшом чешском городке Злина в 1894 году. Основателями бренда являются Томаш Батя, его брат Антонин и сестра Анна.\r\n \r\nBata специализируется на производстве удобной и высококачественной обуви. Швейцарский бренд производит обувь как для мужчин, так и для женщин с огромным разнообразием стилей. Bata постоянно старается улучшать качество жизни своих клиентов и превзойти их ожидания. Компания уже на протяжении многих десятилетий является крупнейшим в мире производителем обуви.', 'Qulaylik va mukammal sifatga e\'tibor bering!\r\n \r\nT&A Bata Shoe oilaviy kompaniyasi 1894 yilda Chexiyaning Zlin shahrida joylashgan. Brendning asoschilari Tomasz Bata, uning ukasi Antonin va singlisi Anna.\r\n \r\nBata shinam va sifatli poyabzal ishlab chiqarishga ixtisoslashgan. Shveytsariya markasi erkaklar va ayollar uchun juda ko\'p turli xil uslubdagi poyafzallarni ishlab chiqaradi. Bata doimo o\'z mijozlarining hayot sifatini yaxshilashga va ularning kutganidan yuqori bo\'lishga intiladi. Kompaniya o\'nlab yillar davomida dunyodagi eng katta poyafzal ishlab chiqaruvchisi hisoblanadi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f65332f30362f36362f653330363636623038653330613164613765303836643937343533333237646464363365623932323861383764383331306566326561643964346361336163332e706e67, 'DC0B15', '[]', 2, NULL, 1, '2021-04-17 14:07:14', '2021-04-21 20:10:46'),
(212, 10, 'eurasia1', 'Okaidi', NULL, 'Французский стиль для ваших детей̆! \r\n  \r\nФранцузский бренд был основан в 1996 году с целью создания высококачественной одежды для младенцев и детей. Одежда Obaïbi предназначена для детей в возрасте от 0 до 3 лет, а Okaïdi - для детей в возрасте от 2 до 14 лет.\r\n  \r\nСтратегия Okaïdi направлена на развитие бренда в соответствии с потребностями и интересами растущего ребенка: действовать для детей!\r\nБренд заботится о каждом этапе развития малыша с большой любовью и вниманием.\r\n\r\nObaïbi понимает все основные потребности ребенка от самого рождения до 3 летнего возраста с помощью современных, практичных и эргономичных продуктов, которые разработаны для младенцев и предназначены для их комфорта и наиболее активного развития.\r\n  \r\nКоллекции и ценности Okaïdi подстраиваются под различные культуры, создавая связи между детьми по всему миру. Команда Okaïdi всегда работает над тем, чтобы идти в ногу с модными тенденциями, делая свою продукцию привлекательной и позволяя каждому ребенку выразить свой вкус и индивидуальность. Okaïdi создает эксклюзивные модели: прочные и функциональные, веселые и высокотехнологичные, экологически чистые и с гарантированным качеством.', 'Farzandlaringiz uchun frantsuzcha uslub̆!\r\n  \r\nFrantsuz brendi 1996 yilda chaqaloqlar va bolalar uchun yuqori sifatli kiyimlarni yaratish maqsadida tashkil etilgan. Obaibi kiyimi 0 yoshdan 3 yoshgacha bo\'lgan bolalar uchun, Okaidiy kiyimlari esa 2 yoshdan 14 yoshgacha bo\'lgan bolalar uchun.\r\n  \r\nOkaydi strategiyasi - o\'sib borayotgan bolaning ehtiyojlari va qiziqishlariga muvofiq brendni rivojlantirish: bolalar uchun harakat qiling!\r\nBrend chaqaloqni rivojlanishining har bir bosqichiga katta mehr va e\'tibor bilan g\'amxo\'rlik qiladi.\r\n\r\nObaibi chaqaloqni tug\'ilishidan 3 yoshigacha bo\'lgan zamonaviy, amaliy va ergonomik mahsulotlar bilan, ularning qulayligi va eng faol rivojlanishi uchun mo\'ljallangan barcha asosiy ehtiyojlarini tushunadi.\r\n  \r\nOkaydi kollektsiyalari va qadriyatlari turli madaniyatlarga moslashib, dunyo bo\'ylab bolalar o\'rtasida aloqalar yaratmoqda. Okaïdi jamoasi har doim moda tendentsiyalaridan xabardor bo\'lib, o\'z mahsulotlarini jozibali qilib, har bir bolaga o\'z didi va o\'ziga xosligini ifoda etishiga imkon yaratadi. Okaïdi eksklyuziv modellarni yaratadi: bardoshli va funktsional, qiziqarli va yuqori texnologiyalar, ekologik toza va kafolatlangan sifat bilan.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f66362f33382f34392f663633383439656139363761336430663735306639303932303532396530366161323539353865653336613837663136303630313861303061313236323234382e706e67, '1D3A7C', '[]', 2, NULL, 1, '2021-04-17 14:08:07', '2021-04-21 20:10:46'),
(213, 9, 'eurasia1', 'Yves Rocher', NULL, 'Действуй красиво!\r\n\r\nYves Rocher, основанная в 1959 году французским предпринимателем господином Ив Роше, является мировым брендом косметики и красоты.\r\n\r\nYves Rocher - французская косметическая компания, специализирующаяся на производстве натуральных средств по уходу за кожей, косметики и парфюмерии.  Предлагает продукцию в среднем ценовом диапазоне, выводя натуральную косметику на новый уровень.  В производственный процесс вовлечено только натуральное сырье.  Ив Роше воссоздает красоту со страстью к женщинам и природе.', 'Chiroyli harakat qiling!\r\n\r\nYves Rocher, 1959 yilda frantsiyalik tadbirkor janob Yves Rocher tomonidan tashkil etilgan bo\'lib, u kosmetika va go\'zallikning global brendidir.\r\n\r\nYves Rocher - bu tabiiy terini parvarish qilish mahsulotlari, kosmetika va parfyumeriya mahsulotlarini ishlab chiqarishga ixtisoslashgan frantsuz kosmetika kompaniyasi. Tabiiy kosmetik vositalarni yangi darajaga ko\'tarib, o\'rtacha narx oralig\'idagi mahsulotlarni taklif etadi. Faqat tabiiy xom ashyo ishlab chiqarish jarayonida ishtirok etadi. Iv Rocher go\'zallikni ayollarga va tabiatga bo\'lgan ehtiros bilan tiklaydi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f64352f65662f38612f643565663861626539663036653462333730336363333531613037306239636264386131646231336438373035333063343436313832343039386439666163662e706e67, '8A973D', '[]', 2, NULL, 1, '2021-04-17 14:09:06', '2021-04-21 20:10:46'),
(214, 9, 'eurasia1', 'Flormar', NULL, 'Ваш безупречный макияж с профессиональной косметикой Flormar!\r\n\r\nОснованный в Милане, в одной из модных столиц мира, в 1970 году Flormar был приобретен семьей Шенбай и начал производство в Турции. На сегодняшний день, Flormar является косметическим брендом номер 1 в Турции.\r\n	\r\nБлагодаря широкому ассортименту продуктов начиная от тональных основ до уходовой косметики, Flormar стал желанным брендом среди многих женщин. \r\nБренд имеет огромное разнообразие линеек, серий различных продуктов с широкой палитрой оттенков и цветовой гаммой. Одним из основных принципов бренда является совмещение высокого качества и привлекательной цены.', 'Flormar professional kosmetikasi bilan sizning beg\'ubor makiyajingiz!\r\n\r\nDunyoning moda poytaxtlaridan biri bo\'lgan Milanda joylashgan Flormarni 1970 yilda Shenbai oilasi sotib oldi va Turkiyada ishlab chiqarishni boshladi. Bugungi kunda Flormar Turkiyada birinchi raqamli kosmetik brenddir.\r\n\r\nPoydevordan tortib go\'zallik mahsulotlariga qadar bo\'lgan turli xil mahsulotlarga ega bo\'lgan Flormar ko\'plab ayollar orasida taniqli brendga aylandi.\r\nBrend juda xilma-xil ranglarga, ranglarning keng palitrasiga ega turli xil mahsulotlar seriyasiga ega. Brendning asosiy tamoyillaridan biri bu yuqori sifatli va jozibali narxlarni birlashtirishdir.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f61632f32302f66352f616332306635363564393937303736313362646564643465396566353834373230613936346633636563326538323532383637623631366630323231396362342e706e67, 'FFFFFF', '[]', 2, NULL, 1, '2021-04-17 14:09:54', '2021-04-21 20:10:46'),
(215, 2, 'eurasia1', 'The Outlet', NULL, 'The Outlet - мода, стиль, вечные скидки!\r\n\r\nМультибрендовый магазин The Outlet от Eurasia Group смело можно назвать территорией выгодного шопинга потому что именно здесь весь ассортимент одежды, обуви, бижутерии и аксессуаров от 17 мировых брендов продаётся со скидками до -70% КРУГЛЫЙ ГОД.', 'Outlet - moda, uslub, abadiy chegirmalar!\r\n\r\nThe Eurasia Group multibrend do\'konini bemalol foydali savdo hududi deb atash mumkin, chunki aynan shu erda 17 ta jahon brendlarining barcha kiyim-kechak, poyabzal, zargarlik buyumlari va aksessuarlari -70% gacha chegirmalar bilan sotiladi.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f31612f33622f65362f316133626536623765383139343331303437363763356661363962393031663464633831363337633565353037333362636265343737356238633330363166662e706e67, 'FFFFFF', '[]', 2, NULL, 1, '2021-04-17 14:12:00', '2021-04-21 20:10:46');
INSERT INTO `partner` (`id`, `category_id`, `ox_subdomain`, `org_name`, `tin`, `description_ru`, `description_uz`, `logo`, `color`, `photo`, `interest`, `site_url`, `active`, `added_on`, `updated_on`) VALUES
(216, 2, 'eurasia1', 'Etam', NULL, 'Искусство быть желанной! \r\n\r\nБренд Etam был основан в 1916 году Максом Линдерманом в Берлине, Германия.  Первый магазин Etam во Франции открылся в 1928 году, но компания не становилась французской, до тех пор, пока торговые марки Setamile не решили объединиться с Etam в 1963 году.\r\n\r\nEtam специализируется на нижнем белье с широким выбором высококачественных моделей, а также имеет стильный выбор готовой одежды, пижамы и спортивной одежды. Философия одежды Etam заключается в удовлетворении потребностей каждой женщины, которая хочет одеваться стильно и комфортно одновременно.  Женственность, элегантность, мягкость и доступность являются основными составляющими успеха компании.', 'Istalgan san\'at!\r\n\r\nEtam 1916 yilda Germaniyaning Berlin shahrida Maks Lindermann tomonidan tashkil etilgan. Frantsiyadagi birinchi Etam do\'koni 1928 yilda ochilgan, ammo Setamile brendlari 1963 yilda Etam bilan birlashishga qaror qilgunga qadar kompaniya frantsuz tiliga bormadi.\r\n\r\nEtam yuqori sifatli modellarning keng tanlovi bilan, shuningdek, tayyor, pijama va sport kiyimlarining zamonaviy tanlovi bilan ichki kiyimlarga ixtisoslashgan. Etamning kiyim falsafasi bir vaqtning o\'zida zamonaviy va qulay kiyinishni istagan har bir ayolning ehtiyojlarini qondirishdir. Ayollik, nafislik, yumshoqlik va arzonlik - bu kompaniya muvaffaqiyatining asosiy tarkibiy qismlari.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f61352f61392f35612f613561393561386431383136303630373732643238643962353836326538353565363139383264393934313636376534366438346434653762393637376663372e706e67, 'FF6E7B', '[]', 2, NULL, 1, '2021-04-17 14:12:58', '2021-04-21 20:10:46'),
(218, 3, 'mospizza', 'MosPizza', NULL, 'Вкусная пицца в Ташкенте ждёт вас в сети пиццерий \"Московская Пицца\"! Мы готовим для Вас пиццу в Ташкенте с марта 2009 года. За это время мы запустили два заведения и у нас появилось много постоянных клиентов, чему мы очень рады! Надеемся, что Вы по достоинству оцените разнообразный выбор пиццы, качество обслуживания и саму атмосферу пиццерии Московская Пицца. В наших пиццериях мы предлагаем более 30 видов пиццы. Вы сами решаете, какой будет Ваша пицца.\r\n\r\nПиццерия \"Московская Пицца\" - это удобное месторасположение, теплая, гостеприимная атмосфера, оригинальный интерьер и большой ассортимент вкусных пицц. Наша пицца готовится по лучшим рецептам. Каждая пицца имеет свой неповторимый вкус благодаря использованию особого теста и соуса. Пицца \"Московская Пицца\" в Ташкенте - это демократичный сервис, достойная еда, качество продукции и доставка блюд.', 'Toshkentdagi mazali pizza sizni \"Moscow Pizza\" pizza tarmog\'ida kutmoqda! Biz sizlarga 2009 yil martidan beri Toshkentda pitssa tayyorlaymiz. Shu vaqt ichida biz ikkita korxonani ishga tushirdik va ko\'plab doimiy mijozlarga ega bo\'ldik, ular biz uchun juda xursand! Umid qilamizki, siz pitssalarning turli xil tanlovi, xizmat ko\'rsatish sifati va Moskovskaya pizza pitseriyasining atmosferasini qadrlaysiz. Pitsenziyalarimizda biz 30 dan ortiq turdagi pitssani taklif qilamiz. Sizning pitssangiz qanday bo\'lishiga o\'zingiz qaror qilasiz.\r\n\r\n\"Moskva pizza\" pitseriyasi - qulay joy, iliq, mehmondo\'st muhit, o\'ziga xos ichki makon va mazali pitszalarning katta assortimenti. Bizning pitssa eng yaxshi retseptlar bo\'yicha tayyorlanadi. Maxsus xamir va sous yordamida har bir pitssa o\'ziga xos ta\'mga ega. Toshkentdagi \"Moskva pizza\" pizza - bu demokratik xizmat, munosib oziq-ovqat, mahsulot sifati va oziq-ovqat etkazib berish.', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f37662f66342f36652f376666343665316139366637393961663266326630633631386365326565666564313334646331386230303864396537386130623032636635393939306466642e706e67, 'C52727', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/d8\\/d0\\/ed\\/d8d0edac3b0acb2101f21dac2d55cec06d53f0bc36f9f85007513fa71d3f19c8.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/cc\\/4a\\/0b\\/cc4a0bdcc29391a03bea02896424aa1ba91a5198035f84f0c8ea0937b632fd70.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/42\\/46\\/44\\/4246440dbd7c46008838248194293d5637763791026b4422f4e992dddcdc034d.jpg\"]', 2, NULL, 1, '2021-04-19 16:51:54', '2021-04-19 14:40:50'),
(220, 2, 'artcaravan', 'Art Caravan', NULL, 'Магазин Art Caravan вот уже на протяжении нескольких лет предлагает своим покупателям богатый выбор качественных и доступных по цене аксессуаров на любой жизненный случай. В линейке товаров нашего бренда Вы всегда найдете красивые изделия из натуральной кожи (аксессуары премиум класса) или из эко-кожи (аксессуары эконом класса) для женщин и для мужчин. Выбор ограничен исключительно Вашими предпочтениями и возможностями.\r\n\r\nДля клиентов Art Caravan всегда в шаговой доступности: модные женские и мужские сумочки, кожаные аксессуары ручной работы и кожаные бизнес аксессуары. Art Caravan – это всегда образец стиля, изящества и утонченной элегантности. Такие вещи остаются в тренде всегда.\r\n\r\nА еще… у нас Вы всегда сможете найти и купить модные и востребованные аксессуары, не только интересные модели сумочек, но и женские и мужские рюкзаки, разнообразный дорожный багаж, стильные зонтики, платочки, шарфы, ремни и перчатки, а еще многое и многое другое.\r\n\r\nЖдем Вас в Art Caravan за модными и качественными вещами!', 'Bir necha yildan buyon Art Caravan do\'koni o\'z mijozlariga har qanday imkoniyat uchun yuqori sifatli va arzon aksessuarlarning keng turlarini taklif qilmoqda. Bizning brendimiz mahsulot qatorida siz har doim ayollar va erkaklar uchun asl charm (premium aksessuarlar) yoki eko-charm (ekonom-klass aksessuarlar) dan tayyorlangan go\'zal mahsulotlarni topasiz. Tanlov faqat sizning afzalliklaringiz va imkoniyatlaringiz bilan cheklangan.\r\n\r\nArt Caravan mijozlari uchun har doim yurish masofasidan: ayollar va erkaklar uchun moda sumkalar, qo\'lda ishlangan charm buyumlar va charmdan ishbilarmonlik buyumlari. Art Caravan har doim uslub, nafislik va nafis nafislikning namunasidir. Bunday narsalar doimo trendda qoladi.\r\n\r\nVa shuningdek ... bu erda siz har doim zamonaviy va ommabop aksessuarlarni, nafaqat sumkalarning qiziqarli modellarini, balki ayollar va erkaklar sumkalarini, turli xil sayohat yuklari, zamonaviy soyabonlarni, ro\'molchalarni, sharflarni, kamar va qo\'lqoplarni va boshqalarni topishingiz va sotib olishingiz mumkin. va yana ko\'p narsalar ...\r\n\r\nArt Caravan-da sizni zamonaviy va sifatli narsalar uchun kutamiz!', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f39612f64332f36312f396164333631353031363264656366366663633739323239373464316239303435383536353134303630363864333462643461663637373964353262306437312e706e67, '000000', '[\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/c2\\/e1\\/e8\\/c2e1e8c2975377d7788f9418f2e50407113cbb9d46a5e64b3f7411839cdb6cfc.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/94\\/f4\\/97\\/94f497195b898d99dd8e1438ca163c56e779f61bd2e0aa1bfd58bda17d44e1a1.jpg\",\"https:\\/\\/files.ox-sys.com\\/cache\\/1000x_\\/image\\/c4\\/41\\/59\\/c4415985b46a377071111b4a2b348154ed9a596fbdee4a102dbe6b26f5f136dc.jpg\"]', 2, NULL, 1, '2021-04-19 17:45:51', '2021-04-19 14:40:50'),
(221, 1, 'mobilezone', 'Mobilezone', NULL, '', '', 0x68747470733a2f2f66696c65732e6f782d7379732e636f6d2f63616368652f313530785f2f696d6167652f66662f38342f64302f666638346430363566663535316162613637663264646435316563323330656162613739653831346163323836646430376631666235333765323463623036642e6a7067, '', '[]', 2, NULL, 0, '2021-04-21 13:08:52', '2021-04-21 08:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `multicard_id` int(11) DEFAULT NULL,
  `phone` decimal(12,0) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `passport` varchar(9) DEFAULT NULL,
  `client_id` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `lock_api` int(1) DEFAULT '0',
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `multicard_id`, `phone`, `first_name`, `last_name`, `passport`, `client_id`, `dob`, `active`, `lock_api`, `added_on`) VALUES
(167, 166, '998973333929', 'ILXOM', 'IDIYEV', 'AA1050597', '00053888', '1989-05-11', 1, 0, '2020-07-23 16:51:08'),
(331, 329, '998998911375', 'SHERZOD', 'TUYBOYEV', 'AA3496274', '00000039', '1984-01-23', 0, 0, '2020-12-01 10:56:44'),
(335, 333, '998998185650', 'KAMOLBEK', 'SAYDAMINOV', 'AA6242088', '00000036', '1991-10-31', 1, 0, '2020-12-02 09:10:41'),
(427, 425, '998977619777', 'MUMINBOY', 'SAIDOV', 'AA0070936', '00000164', '1981-09-09', 1, 0, '2021-01-28 11:54:06'),
(428, 426, '998998997543', 'UKTAM', 'NIMATOV', 'AA1257573', '00065066', '1997-04-11', 0, 0, '2021-02-02 14:48:13'),
(436, 434, '998935082228', 'MAXMUDJAN', 'XASANJANOV', 'AA1966781', '00000288', '1992-08-16', 1, 0, '2021-02-03 06:56:17'),
(553, 551, '998935869109', 'ABDURAUF', 'KABIROV', 'AB0797323', '00000180', '1991-08-09', 1, 0, '2021-03-02 13:01:29'),
(574, 572, '998909990363', 'ELENA', 'POLYANSKAYA', 'AA8397934', '00081887', '1976-08-11', 1, 0, '2021-03-03 13:24:34'),
(587, 585, '998998545812', 'OLIMJON', 'ERGASHEV', 'AB2945500', '00082084', '1971-07-27', 1, 0, '2021-03-05 06:59:36'),
(593, 591, '998909969699', 'AZIZXOJA', 'ZOKIRXOJAYEV', 'AA2030069', '00053887', '1988-08-20', 1, 0, '2021-03-05 08:56:47'),
(596, 594, '998911912727', 'NODIRA', 'SHERIYAZDANOVA', 'AA6937738', '00081899', '1990-07-07', 1, 0, '2021-03-05 09:35:14'),
(597, 595, '998998571147', 'FARIDA', 'SARIDJANOVA', 'AA6307894', '00081898', '1992-08-10', 1, 0, '2021-03-05 09:42:58'),
(600, 598, '998977514307', 'ABDUKHOLID', 'ABDUSAMADOV', 'AA3156066', '00048498', '1991-08-11', 1, 0, '2021-03-05 11:51:05'),
(627, 625, '998901784910', 'BAXRIDDIN', 'RUZUMOV', 'AA1628611', '00081805', '1960-10-23', 1, 0, '2021-03-05 17:07:34'),
(663, 657, '998946015447', 'VALERIY', 'SOROKIN', 'AB5832398', '00082655', '2001-01-21', 1, 0, '2021-03-11 07:23:42'),
(669, 663, '998911344448', 'ADHAMJON', 'AXMADOV', 'AA1815122', '00000618', '1995-07-02', 1, 0, '2021-03-11 07:40:27'),
(674, 668, '998909195056', 'ASFER', 'SHAFIKOV', 'AA0656542', '00000676', '1985-07-02', 1, 0, '2021-03-11 07:57:50'),
(681, 675, '998909947987', 'FARRUKH', 'ABDUJABBOROV', 'AA0698450', '00079687', '1997-10-30', 1, 0, '2021-03-11 12:56:56'),
(682, 676, '998903284975', 'GOZAL', 'ROZUMOVA', 'AA1597946', '00081904', '1984-05-12', 1, 0, '2021-03-12 08:01:20'),
(685, 679, '998998282856', 'NILUFAR', 'ISAYEVA', 'AA3085342', '00082567', '1974-09-21', 1, 1, '2021-03-12 12:38:48'),
(686, 680, '998935400080', 'RAVSHAN', 'IRMATOV', 'AA4177339', '00000385', '1991-09-10', 1, 0, '2021-03-12 13:00:45'),
(687, 681, '998993341516', 'LAZIZ', 'KHUDAYBERDIEV', 'AA8348810', '00082651', '1998-11-20', 1, 0, '2021-03-13 16:49:56'),
(688, 682, '998993019796', 'ISMATILLO', 'MAKHMUDJONOV', 'AA9837669', '00081394', '1997-09-10', 1, 0, '2021-03-13 17:16:30'),
(693, 687, '998900083738', 'IKBOLJON', 'UBAYDULLAEV', 'AB8929693', '00082660', '2001-04-12', 0, 0, '2021-03-16 07:36:19'),
(694, 688, '998903096613', 'IKROMJON', 'RUZIEV', 'AB5430324', '00081560', '2000-07-18', 1, 0, '2021-03-16 07:36:59'),
(696, 690, '998935759396', 'ELNARA', 'BEKIROVA', 'AA7346369', '00083169', '1985-10-27', 1, 0, '2021-03-17 09:53:39'),
(698, 692, '998993937073', 'ASADBEK', 'SHERDILOV', 'AC0959274', '00083484', '2002-06-20', 1, 0, '2021-03-18 09:02:34'),
(704, 698, '998998349349', 'DILSHOD', 'VAKKASOV', 'AB3931549', '00083590', '1992-02-04', 1, 0, '2021-03-23 04:14:26'),
(705, 699, '998977299900', 'DMITRIY', 'LI', 'AA1493126', '00083062', '1986-01-18', 1, 0, '2021-03-24 06:35:58'),
(723, 717, '998914599224', 'BEHRUZ', 'MAHMUDOV', 'AC1883009', '00083150', '2002-07-27', 1, 0, '2021-03-25 07:34:25'),
(724, 718, '998998886577', 'ASKAR', 'TURDIKHANOV', 'AA0023943', '00082958', '1996-01-03', 1, 0, '2021-03-26 01:33:11'),
(726, 720, '998970909409', 'KURANBOY', 'OMONOV', 'AC3093925', '00084475', '2003-08-05', 1, 0, '2021-03-27 09:34:30'),
(727, 721, '998900000000', 'OGABEK', 'JUMANAZAROV', 'AA1913731', '00083864', '1997-05-28', 0, 0, '2021-03-27 09:47:30'),
(731, 725, '998936447004', 'ROVSHAN', 'ORYNOV', 'A1186471', '00084902', '2000-11-21', 0, 0, '2021-03-31 14:05:44'),
(734, 728, '998935745828', 'SHOKHJAKHON', 'SHERDILOV', 'AB7862112', '00081335', '1988-12-10', 1, 0, '2021-04-01 15:57:03'),
(736, 730, '998998730003', 'KAMOLIDDIN', 'BEKNAZAROV', 'AA5357876', '00085007', '1983-01-27', 1, 0, '2021-04-06 13:13:34'),
(737, 731, '998906102871', 'SAYERA', 'YAXSHILIKOVA', 'AA6145222', '00082338', '1971-03-02', 1, 0, '2021-04-06 17:03:53'),
(739, 733, '998997025670', 'BEKHRUZ', 'MAKHMUDOV', 'AB6253319', '00084210', '2000-04-03', 1, 0, '2021-04-07 07:38:21'),
(741, 735, '998909822311', 'RUSTAM', 'ZAKIROV', 'AA6757528', '00085748', '1989-07-23', 1, 0, '2021-04-07 09:18:17'),
(745, 739, '998909166017', 'ARTYOM', 'VOLKOV', 'AA0762643', '00085507', '1986-09-27', 1, 0, '2021-04-09 11:26:50'),
(746, 740, '998946041733', 'SHERZOD', 'TURDIEV', 'AA3556688', '00086009', '1978-06-04', 1, 0, '2021-04-09 19:30:15'),
(753, 747, '998901234567', 'KHOSIYATKHON', 'ADILOVA', 'AC2465167', '00086706', '1990-07-18', 0, 0, '2021-04-13 11:04:04'),
(761, 755, '998902485028', 'DILDORA', 'KHUDAYBERDIEVA', 'AB4309660', '00086655', '1991-05-13', 1, 0, '2021-04-14 07:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'user1', 'user1234@gmail.com', '$2y$10$MrAcbZl/pofXjmwDw5rkj.dupHyA4XPDO/dHZDTaJ.lkDbftjRV1.', NULL, '2021-05-15 13:30:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_user_id_pan_expiry_idx` (`user_id`,`pan`,`expiry`) USING BTREE,
  ADD UNIQUE KEY `card_token_idx` (`token`) USING BTREE,
  ADD KEY `deleted` (`deleted`);

--
-- Indexes for table `card_debit`
--
ALTER TABLE `card_debit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multicard_id` (`multicard_id`),
  ADD KEY `card_debit_sync_finished_idx` (`sync_finished`) USING BTREE,
  ADD KEY `card_debit_status_idx` (`status`) USING BTREE,
  ADD KEY `card_debit_cl_history_id_idx` (`cl_history_id`) USING BTREE,
  ADD KEY `card_id` (`card_id`),
  ADD KEY `card_hold_id` (`card_hold_id`);

--
-- Indexes for table `card_hold`
--
ALTER TABLE `card_hold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `retainer_fee` (`retainer_fee`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multicard`
--
ALTER TABLE `multicard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pan` (`pan`,`expiry`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `partner_active_idx` (`active`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `multicard_id` (`multicard_id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD KEY `added_on` (`added_on`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `card_debit`
--
ALTER TABLE `card_debit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `card_hold`
--
ALTER TABLE `card_hold`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `multicard`
--
ALTER TABLE `multicard`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=762;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
