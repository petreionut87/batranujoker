-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 09:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fivemshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `advanced_vehicles`
--

CREATE TABLE `advanced_vehicles` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `km` double UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_handling` longtext NOT NULL,
  `nitroAmount` int(11) NOT NULL DEFAULT 0,
  `nitroRecharges` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `advanced_vehicles_inspection`
--

CREATE TABLE `advanced_vehicles_inspection` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `km` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double UNSIGNED NOT NULL DEFAULT 0,
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `advanced_vehicles_services`
--

CREATE TABLE `advanced_vehicles_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `km` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `img` varchar(255) NOT NULL DEFAULT '',
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `advanced_vehicles_upgrades`
--

CREATE TABLE `advanced_vehicles_upgrades` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `label` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `id` int(11) NOT NULL,
  `playlist` int(11) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(255) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `stock` int(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `model`, `stock`) VALUES
(1, 'nismo20', 15),
(2, 'nissantitan17', 35),
(3, 'hevo', 0),
(4, 'polestar1', 0),
(5, 'g700brabusretuned', 0),
(6, '21sierra', 20),
(7, 'golf75r', 50),
(8, 'vwstance', 30),
(9, 'vwtoua19cf', 45),
(10, 'rmodrs6', 40),
(11, 'q7', 39),
(12, 'rs7r', 40),
(13, 'aaq4', 79),
(14, 'r820', 0),
(15, 'ttrs', 59),
(16, 'rmodchiron300', 0),
(17, 'rmodjesko', 0),
(18, 'bt62r', 0),
(19, '2018s650p', 0),
(20, 'ym1', 0),
(21, 's1000rr', 0),
(22, 'zx10rr', 0),
(23, 'sanctus', 0),
(24, 'razerx3', 20),
(25, 'shotaro', 0),
(26, 'hakuchou2', 0),
(27, 'patriot2', 0),
(28, 'zentorno', 0),
(29, 'tezeract', 0),
(30, 'nh2r', 60),
(31, 'blazer4', 0),
(32, 'banshee', 0),
(33, 'tyrant', 50),
(34, 'zorrusso', 0),
(35, 'rrocket', 0),
(36, 'veto', 0),
(37, 'prototipo', 25),
(38, 'deathbike2', 0),
(39, 'bati', 0),
(40, 'diablous', 0),
(41, 'hakuchou', 0),
(42, 'mvisiongt', 0),
(43, 'blazer', 0),
(44, 'carbonrs', 0),
(45, 'sanchez2', 0),
(46, 'double', 0),
(47, 'terzo', 3),
(48, 'desmo', 60),
(49, 'hsp217', 60),
(50, 'can', 25),
(51, '20r1', 0),
(52, 'aperta', 0),
(53, 'hvrod', 0),
(54, 'regera', 5),
(55, 'yzfr125', 0),
(56, 'veneno', 7),
(57, 'zx10r', 0),
(58, 'apollo', 25),
(59, 'f4rr', 60),
(60, 'bolide', 5),
(61, 'stryder', 0),
(62, 'rmodlp770', 5),
(63, 'fxxk', 0),
(64, 'hyabusadrag', 60),
(65, 'torq', 50),
(66, 'hog', 25),
(67, 'rmodbugatti', 8),
(68, 'panigale', 60),
(69, 'rmodmonster', 0),
(70, 'monowheel', 0),
(71, 'xt66', 0),
(72, 'wmfenyr', 10),
(73, 'bmws', 60),
(74, 'bentley', 5),
(75, 'raptor700s', 0),
(76, 'vagner', 0),
(77, 'bmw', 60),
(78, 'r6', 0),
(79, 'j50', 0),
(80, 'cyberpunk', 0),
(81, 'agerars', 0),
(82, 'cb650r', 0),
(83, 'rmodessenza', 0),
(84, 'gamera21', 0),
(85, 'm1000rr', 0),
(86, 'impronta4', 0),
(87, 'pkr1', 0),
(88, '7death', 0),
(89, 'pts21', 0),
(90, 'm5cs', 39),
(91, 'alpinab7', 20),
(92, 'm760il', 30),
(93, '125i', 0),
(94, 'rmodx6', 0),
(95, 'bentayga17', 15),
(96, 'variszupra', 20),
(97, 'e63s', 60),
(98, 'gxg63', 0),
(99, 'speedo', 0),
(100, 'explorer20', 35),
(101, 'rmodmustang', 20),
(102, 'rculi', 0),
(103, 'wraith', 0),
(104, 'cp9a', 0),
(105, 'rmod240sx', 0),
(106, 'fd', 0),
(107, 'bme6tun', 0),
(108, 'bnr34', 0),
(109, 'velar', 20),
(110, 'retinue', 149),
(111, 'logan', 0),
(112, 'ren_clio_5', 20),
(113, 'smart', 50),
(114, 'beetlerwb', 0),
(115, 'miata', 20),
(116, 'bmw8mm', 0),
(117, '488sp2', 0),
(118, 'c8p1', 0),
(119, 'dtdmansq60', 0),
(120, 'ocnetrongt', 0),
(121, 'bmwm4', 0),
(122, 'rmodsian', 15),
(123, '18performante', 10),
(124, 'urus', 30),
(125, 'tr22', 10),
(126, 'bdivo', 23),
(127, 'demonboi', 25),
(128, '22m3', 30),
(129, 'blackx6', 25),
(130, 'e60', 40),
(131, 'x7bmw', 15),
(132, 'amggtbs', 60),
(133, 'Brabus850', 70),
(134, 'e63estate', 60),
(135, 'gls20', 60),
(136, 'BENSON3', 10),
(137, 'xclass', 40),
(138, 'mache', 65),
(139, '19dbs', 20),
(140, 'vantage', 20),
(141, 'rmodmartin', 20),
(142, 'strrv', 30),
(143, 'f8t', 7),
(144, 'ferrari812', 5),
(145, 'nlargo', 5),
(146, 'supra19', 25),
(147, 'dawn', 5),
(148, 'ktm450sx', 60),
(149, '720nlargo', 2),
(150, 'SUPERB', 100),
(151, 'sovrs', 90),
(152, 'models', 10),
(153, 'mqgts', 9),
(154, 'mlmansory', 13),
(155, '918', 7),
(156, 'gtr50', 10),
(157, 'ct5', 25),
(158, 'sonata', 25),
(159, 'stelvio', 25),
(160, 'xc90r', 50),
(161, 'rmodbentleygt', 10);

-- --------------------------------------------------------

--
-- Table structure for table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_arme`
--

CREATE TABLE `vrp_arme` (
  `user_id` int(11) NOT NULL,
  `clasa` varchar(100) DEFAULT NULL,
  `weapon` varchar(100) DEFAULT NULL,
  `gloante` int(11) DEFAULT NULL,
  `hash` varchar(100) NOT NULL,
  `componente` longtext DEFAULT NULL,
  `inventar` int(11) NOT NULL DEFAULT 0,
  `poateSaVanda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_business`
--

CREATE TABLE `vrp_business` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `bizName` text CHARACTER SET latin1 NOT NULL,
  `bizDescription` text CHARACTER SET latin1 NOT NULL,
  `bizPrice` int(255) NOT NULL DEFAULT 0,
  `bizType` text CHARACTER SET latin1 NOT NULL,
  `bizCashier` bigint(255) NOT NULL DEFAULT 0,
  `bizSupplies` int(255) NOT NULL DEFAULT 75,
  `bizOwner` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bizOwnerID` int(255) NOT NULL,
  `bizForSale` int(255) NOT NULL DEFAULT 0,
  `bizSalePrice` int(255) NOT NULL,
  `bizStrikes` int(255) NOT NULL DEFAULT 0,
  `bizImunity` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_srv_data`
--

CREATE TABLE `vrp_srv_data` (
  `dkey` varchar(255) NOT NULL DEFAULT '',
  `dvalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_turfs`
--

CREATE TABLE `vrp_turfs` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `blipColor` int(11) NOT NULL DEFAULT 0,
  `blipRadius` float NOT NULL DEFAULT 110,
  `faction` varchar(50) NOT NULL,
  `isAttacked` varchar(50) NOT NULL DEFAULT 'Nu',
  `attackedBy` varchar(50) NOT NULL DEFAULT 'none',
  `payday` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_users`
--

CREATE TABLE `vrp_users` (
  `id` int(11) NOT NULL,
  `whitelisted` tinyint(1) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `bannedTemp` int(255) DEFAULT 0,
  `bannedBy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannedReason` text DEFAULT NULL,
  `BanTempZile` int(255) NOT NULL DEFAULT 0,
  `BanTempData` varchar(255) DEFAULT NULL,
  `BanTempExpire` varchar(255) DEFAULT NULL,
  `adminLvl` int(11) NOT NULL DEFAULT 0,
  `aJailTime` int(255) NOT NULL DEFAULT 0,
  `aJailReason` text DEFAULT NULL,
  `vipLvl` int(11) NOT NULL DEFAULT 0,
  `vipTime` int(100) DEFAULT 0,
  `vipPerm` int(100) NOT NULL DEFAULT 0,
  `sponsorRank` int(11) NOT NULL DEFAULT 0,
  `faction` text NOT NULL DEFAULT 'user',
  `isFactionLeader` int(255) NOT NULL DEFAULT 0,
  `isFactionCoLeader` int(255) NOT NULL DEFAULT 0,
  `factionRank` text NOT NULL,
  `bankMoney` int(255) NOT NULL DEFAULT 9000000,
  `walletMoney` int(255) NOT NULL DEFAULT 1000000,
  `donationCoins` int(255) NOT NULL DEFAULT 0,
  `Giftpoints` int(255) NOT NULL DEFAULT 0,
  `hoursPlayed` float NOT NULL DEFAULT 0,
  `age` int(11) NOT NULL DEFAULT 18,
  `firstName` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Nume',
  `secondName` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Prenume',
  `finalSansa` int(11) NOT NULL DEFAULT 0,
  `raport` int(11) NOT NULL DEFAULT 0,
  `skin` longtext NOT NULL DEFAULT '',
  `job` varchar(100) NOT NULL DEFAULT 'Somer',
  `phoneBg` text NOT NULL DEFAULT 'https://i.imgur.com/5DsKDBE.jpg',
  `BgColor` text NOT NULL DEFAULT '0, 166, 255',
  `menuTopBottom` float NOT NULL DEFAULT 0,
  `menuLeftRight` float NOT NULL DEFAULT 0,
  `bizLim` int(11) NOT NULL DEFAULT 2,
  `phone_number` varchar(10) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `warns` int(255) NOT NULL DEFAULT 0,
  `warnr1` varchar(255) NOT NULL DEFAULT 'none',
  `warnr2` varchar(255) NOT NULL DEFAULT 'none',
  `warnr3` varchar(255) NOT NULL DEFAULT 'none',
  `warnid1` varchar(255) NOT NULL DEFAULT 'none',
  `warnid2` varchar(255) NOT NULL DEFAULT 'none',
  `warnid3` varchar(255) NOT NULL DEFAULT 'none',
  `username` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_user_business`
--

CREATE TABLE `vrp_user_business` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `capital` int(11) DEFAULT NULL,
  `laundered` int(11) DEFAULT NULL,
  `reset_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_user_data`
--

CREATE TABLE `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(255) NOT NULL,
  `dvalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_user_homes`
--

CREATE TABLE `vrp_user_homes` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `home` varchar(255) NOT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_user_identities`
--

CREATE TABLE `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `registration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_user_ids`
--

CREATE TABLE `vrp_user_ids` (
  `id` int(255) NOT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrp_user_vehicles`
--

CREATE TABLE `vrp_user_vehicles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `vehicle` varchar(255) NOT NULL DEFAULT '',
  `veh_type` varchar(255) NOT NULL DEFAULT 'car',
  `garage` text NOT NULL,
  `gSlot` int(255) NOT NULL DEFAULT 1,
  `vehicle_plate` varchar(50) NOT NULL,
  `impounded` int(255) NOT NULL DEFAULT 0,
  `vehicle_colorprimary` varchar(150) DEFAULT NULL,
  `vehicle_colorsecondary` varchar(150) DEFAULT NULL,
  `vehicle_pearlescentcolor` varchar(150) DEFAULT NULL,
  `vehicle_wheelcolor` varchar(150) DEFAULT NULL,
  `vehicle_plateindex` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor1` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor2` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor3` varchar(150) DEFAULT NULL,
  `vehicle_windowtint` varchar(150) DEFAULT NULL,
  `vehicle_wheeltype` varchar(150) DEFAULT NULL,
  `vehicle_mods0` varchar(150) DEFAULT NULL,
  `vehicle_mods1` varchar(150) DEFAULT NULL,
  `vehicle_mods2` varchar(150) DEFAULT NULL,
  `vehicle_mods3` varchar(150) DEFAULT NULL,
  `vehicle_mods4` varchar(150) DEFAULT NULL,
  `vehicle_mods5` varchar(150) DEFAULT NULL,
  `vehicle_mods6` varchar(150) DEFAULT NULL,
  `vehicle_mods7` varchar(150) DEFAULT NULL,
  `vehicle_mods8` varchar(150) DEFAULT NULL,
  `vehicle_mods9` varchar(150) DEFAULT NULL,
  `vehicle_mods10` varchar(150) DEFAULT NULL,
  `vehicle_mods11` varchar(150) DEFAULT NULL,
  `vehicle_mods12` varchar(150) DEFAULT NULL,
  `vehicle_mods13` varchar(150) DEFAULT NULL,
  `vehicle_mods14` varchar(150) DEFAULT NULL,
  `vehicle_mods15` varchar(150) DEFAULT NULL,
  `vehicle_mods16` varchar(150) DEFAULT NULL,
  `vehicle_turbo` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_tiresmoke` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_xenon` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_mods23` varchar(150) DEFAULT NULL,
  `vehicle_mods24` varchar(150) DEFAULT NULL,
  `vehicle_neon0` varchar(150) DEFAULT NULL,
  `vehicle_neon1` varchar(150) DEFAULT NULL,
  `vehicle_neon2` varchar(150) DEFAULT NULL,
  `vehicle_neon3` varchar(150) DEFAULT NULL,
  `vehicle_bulletproof` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor1` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor2` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor3` varchar(150) DEFAULT NULL,
  `vehicle_modvariation` varchar(150) NOT NULL DEFAULT 'off',
  `upgrades` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `yellowpages_posts`
--

CREATE TABLE `yellowpages_posts` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advanced_vehicles`
--
ALTER TABLE `advanced_vehicles`
  ADD PRIMARY KEY (`vehicle`,`user_id`,`plate`) USING BTREE;

--
-- Indexes for table `advanced_vehicles_inspection`
--
ALTER TABLE `advanced_vehicles_inspection`
  ADD PRIMARY KEY (`vehicle`,`user_id`,`plate`,`item`) USING BTREE;

--
-- Indexes for table `advanced_vehicles_services`
--
ALTER TABLE `advanced_vehicles_services`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vehicle` (`vehicle`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `plate` (`plate`) USING BTREE;

--
-- Indexes for table `advanced_vehicles_upgrades`
--
ALTER TABLE `advanced_vehicles_upgrades`
  ADD PRIMARY KEY (`vehicle`,`user_id`,`plate`,`class`) USING BTREE;

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `vrp_business`
--
ALTER TABLE `vrp_business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vrp_srv_data`
--
ALTER TABLE `vrp_srv_data`
  ADD PRIMARY KEY (`dkey`);

--
-- Indexes for table `vrp_turfs`
--
ALTER TABLE `vrp_turfs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `vrp_users`
--
ALTER TABLE `vrp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vrp_user_business`
--
ALTER TABLE `vrp_user_business`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vrp_user_data`
--
ALTER TABLE `vrp_user_data`
  ADD PRIMARY KEY (`user_id`,`dkey`);

--
-- Indexes for table `vrp_user_homes`
--
ALTER TABLE `vrp_user_homes`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vrp_user_ids`
--
ALTER TABLE `vrp_user_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `fk_user_ids_users` (`user_id`),
  ADD KEY `id` (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `vrp_user_vehicles`
--
ALTER TABLE `vrp_user_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_yellowpages_posts_twitter_accounts` (`authorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advanced_vehicles_services`
--
ALTER TABLE `advanced_vehicles_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrp_business`
--
ALTER TABLE `vrp_business`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrp_users`
--
ALTER TABLE `vrp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrp_user_ids`
--
ALTER TABLE `vrp_user_ids`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrp_user_vehicles`
--
ALTER TABLE `vrp_user_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
