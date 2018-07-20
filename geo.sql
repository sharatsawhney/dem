-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 06:41 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add document', 7, 'add_document'),
(20, 'Can change document', 7, 'change_document'),
(21, 'Can delete document', 7, 'delete_document'),
(22, 'Can add elevations', 8, 'add_elevations'),
(23, 'Can change elevations', 8, 'change_elevations'),
(24, 'Can delete elevations', 8, 'delete_elevations');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$zzQBc0XG8LXP$KGU9S7wbvimQrwZJUItRCvEXGnhc2ti81JLwPAAIj+o=', '2018-07-20 03:46:57.452956', 1, 'sharat', '', '', 'sharatsawhneyy@gmail.com', 1, 1, '2018-07-20 03:46:39.878601');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dem_document`
--

CREATE TABLE `dem_document` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `document` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dem_document`
--

INSERT INTO `dem_document` (`id`, `description`, `document`, `uploaded_at`) VALUES
(2, 'Test1', 'C:/Users/Sharat/geo/media/Book1_1ijeUqb.xlsx', '2018-07-20 03:49:52.049507'),
(3, 'Test1', 'C:/Users/Sharat/geo/media/Book1_YU0OxXA.xlsx', '2018-07-20 03:50:54.276311'),
(4, 'test3', 'C:/Users/Sharat/geo/media/Book1_F2KGL5k.xlsx', '2018-07-20 03:54:27.222081'),
(5, 'test4', 'C:/Users/Sharat/geo/media/Book2.xlsx', '2018-07-20 03:55:13.032955'),
(6, 'test3', 'C:/Users/Sharat/geo/media/Book1.xlsx', '2018-07-20 03:56:06.172913'),
(7, 'test4', 'C:/Users/Sharat/geo/media/Book2.xlsx', '2018-07-20 04:01:28.725163'),
(8, 'test4', 'C:/Users/Sharat/geo/media/Book2.xlsx', '2018-07-20 04:02:23.808828');

-- --------------------------------------------------------

--
-- Table structure for table `dem_elevations`
--

CREATE TABLE `dem_elevations` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `elev` double NOT NULL,
  `feature` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dem_elevations`
--

INSERT INTO `dem_elevations` (`id`, `lat`, `long`, `elev`, `feature`) VALUES
(1, 24.0871419355, 73.076915728, 196, ''),
(2, 24.1146900864, 73.0947410021, 192, ''),
(3, 24.1695136745, 73.1136854928, 240, ''),
(4, 24.1970725998, 73.0994308762, 227, ''),
(5, 24.2521904505, 73.0709216431, 222, ''),
(6, 24.2794486727, 73.0680349625, 192, ''),
(7, 24.3345033609, 73.0712734736, 280, ''),
(8, 24.3620307051, 73.0728927291, 318, ''),
(9, 24.4170853933, 73.0761312402, 296, ''),
(10, 24.444334933, 73.0778482383, 270, ''),
(11, 24.4994390443, 73.1036782905, 342, ''),
(12, 24.5269911, 73.1165933166, 336, ''),
(13, 24.5759244746, 73.1095312732, 322, ''),
(14, 24.5961846444, 73.081903769, 438, ''),
(15, 24.6499398184, 73.0838000377, 439, ''),
(16, 24.6775104759, 73.0871085166, 359, ''),
(17, 24.6853841898, 73.1190600984, 439, ''),
(18, 24.7129949501, 73.1223084231, 623, ''),
(19, 24.7679071754, 73.1012309838, 392, ''),
(20, 24.795494051, 73.0828397335, 362, ''),
(21, 24.8076427114, 73.1158266566, 410, ''),
(22, 24.8070169395, 73.1433606176, 419, ''),
(23, 24.8057653958, 73.1984285397, 436, ''),
(24, 24.805139624, 73.2259625007, 448, ''),
(25, 24.8529103139, 73.2625856769, 557, ''),
(26, 24.8804971895, 73.2796632666, 542, ''),
(27, 24.8550517377, 73.3344994949, 683, ''),
(28, 24.8724996218, 73.3418796051, 696, ''),
(29, 24.9276125866, 73.3437167039, 560, ''),
(30, 24.955169069, 73.3446352533, 588, ''),
(31, 24.9601793385, 73.3946522391, 808, ''),
(32, 24.9601793385, 73.4222228966, 802, ''),
(33, 24.9622795185, 73.4770371049, 850, ''),
(34, 24.9636564577, 73.5045758888, 912, ''),
(35, 24.9664103361, 73.5596534567, 909, ''),
(36, 24.9652956863, 73.586911178, 834, ''),
(37, 24.9498799079, 73.6419675296, 600, ''),
(38, 24.9421720187, 73.6694957053, 628, ''),
(39, 24.9267562402, 73.7245520569, 551, ''),
(40, 24.919048351, 73.7520802327, 542, ''),
(41, 24.8697062387, 73.7881632413, 576, ''),
(42, 24.8424188719, 73.7929134136, 540, ''),
(43, 24.7873295101, 73.7944436736, 529, ''),
(44, 24.7597848292, 73.7952088037, 510, ''),
(45, 24.7277416349, 73.7681561328, 564, ''),
(46, 24.7227372131, 73.7406318125, 645, ''),
(47, 24.7127283693, 73.6855831719, 684, ''),
(48, 24.7077239475, 73.6580588516, 645, ''),
(49, 24.6977151037, 73.603010211, 601, ''),
(50, 24.6855636873, 73.6191284015, 646, ''),
(51, 24.6572841542, 73.6741588442, 549, ''),
(52, 24.6431443877, 73.7016740655, 550, ''),
(53, 24.6148648547, 73.7567045082, 545, ''),
(54, 24.6007250881, 73.7842197296, 533, ''),
(55, 24.5724455551, 73.8392501723, 488, ''),
(56, 24.5539778514, 73.8573157216, 499, ''),
(57, 24.4988737401, 73.8573157216, 455, ''),
(58, 24.4713216845, 73.8573157216, 468, ''),
(59, 24.4164748322, 73.8423440191, 388, ''),
(60, 24.3889041747, 73.8291101035, 404, ''),
(61, 24.3422757875, 73.7905774133, 303, ''),
(62, 24.3244100014, 73.762966653, 302, ''),
(63, 24.3366905647, 73.7081698572, 391, ''),
(64, 24.3484206263, 73.6806493282, 360, ''),
(65, 24.3718807494, 73.62560827, 539, ''),
(66, 24.383610811, 73.598087741, 676, ''),
(67, 24.4070709341, 73.5430466828, 912, ''),
(68, 24.4332288803, 73.5264197079, 649, ''),
(69, 24.5046920246, 73.5064100275, 572, ''),
(70, 24.5404235968, 73.4964051873, 640, ''),
(71, 24.6118867411, 73.4763955069, 663, ''),
(72, 24.6476183133, 73.4663906667, 727, ''),
(73, 24.7190814576, 73.4463809863, 709, ''),
(74, 24.7548130298, 73.436376146, 817, ''),
(75, 24.7244231472, 73.4127283419, 787, ''),
(76, 24.6922647322, 73.4002222917, 683, ''),
(77, 24.6279479023, 73.3752101912, 579, ''),
(78, 24.5957894874, 73.3627041409, 527, ''),
(79, 24.5314726575, 73.3376920404, 518, ''),
(80, 24.4993142426, 73.3251859901, 538, ''),
(81, 24.4426851145, 73.3091284381, 725, ''),
(82, 24.4212461712, 73.3420014845, 421, ''),
(83, 24.3783682847, 73.4077475773, 472, ''),
(84, 24.3569293414, 73.4406206237, 635, ''),
(85, 24.3140514548, 73.5063667165, 621, ''),
(86, 24.2926125115, 73.5392397629, 622, ''),
(87, 24.2497346249, 73.6049858557, 502, ''),
(88, 24.2277742486, 73.630532714, 422, ''),
(89, 24.1727195603, 73.5808755442, 418, ''),
(90, 24.1451922162, 73.5560469593, 506, ''),
(91, 24.090137528, 73.5063897895, 344, ''),
(92, 24.0626101839, 73.4815612046, 355, ''),
(93, 24.0485658736, 73.5290941619, 332, ''),
(94, 24.0496378207, 73.5723293643, 348, ''),
(95, 24.0517817151, 73.6587997689, 243, ''),
(96, 24.0528536622, 73.7020349712, 260, ''),
(97, 24.0549975566, 73.7885053759, 298, ''),
(98, 24.0560695037, 73.8317405782, 222, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-07-20 03:49:38.162948', '1', 'Document object', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(4, 'auth', 'permission'),
(2, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dem', 'document'),
(8, 'dem', 'elevations'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-07-20 03:43:50.911246'),
(2, 'auth', '0001_initial', '2018-07-20 03:44:00.880398'),
(3, 'admin', '0001_initial', '2018-07-20 03:44:03.054693'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-07-20 03:44:03.190749'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-07-20 03:44:04.461913'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-07-20 03:44:05.366457'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-07-20 03:44:06.245235'),
(8, 'auth', '0004_alter_user_username_opts', '2018-07-20 03:44:06.304300'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-07-20 03:44:06.916167'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-07-20 03:44:06.962076'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-07-20 03:44:07.024066'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-07-20 03:44:07.941309'),
(13, 'dem', '0001_initial', '2018-07-20 03:44:08.348493'),
(14, 'dem', '0002_elevations_feature', '2018-07-20 03:44:08.889489'),
(15, 'dem', '0003_document', '2018-07-20 03:44:09.242445'),
(16, 'dem', '0004_auto_20171207_1143', '2018-07-20 03:44:09.301024'),
(17, 'sessions', '0001_initial', '2018-07-20 03:44:10.925523');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('21poxaaw84q7kzd7b23ghtoibd1rxg8l', 'MGQ1NjQzOTlkYzY3NzkxZWNhMGNmZDgxOTJkZTI4MGJlOGFlZDdmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTViMmY5MTVlMjQyOWM3ODA2MTM0MDBkMjhjZWIyMDFkMDY0NThlOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-08-03 03:46:57.542897');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dem_document`
--
ALTER TABLE `dem_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dem_elevations`
--
ALTER TABLE `dem_elevations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dem_document`
--
ALTER TABLE `dem_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dem_elevations`
--
ALTER TABLE `dem_elevations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
