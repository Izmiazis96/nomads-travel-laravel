-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 02:16 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/xBfjFiTlxBMCtdBgKBDeyIOSKQXbAlG0DgT25QJW.jpeg', '2020-05-31 07:44:36', '2020-05-23 00:47:31', '2020-05-31 07:44:36'),
(2, 1, 'assets/gallery/Qufz4XUNCZllazHWIuQc2ABdRQQU5EpOGi1sUMoz.jpeg', '2020-05-24 23:10:46', '2020-05-24 23:07:25', '2020-05-24 23:10:46'),
(3, 4, 'assets/gallery/zprjEtbHZrnjFJAb3t8uHUi106JOn2Abb4N8ysOv.jpeg', '2020-05-31 07:44:39', '2020-05-26 02:08:48', '2020-05-31 07:44:39'),
(4, 5, 'assets/gallery/NSDaSBQGcTKmtJDUx7WoefJGhsubiBfSWPl1kxae.jpeg', '2020-05-31 07:44:41', '2020-05-26 19:49:39', '2020-05-31 07:44:41'),
(5, 6, 'assets/gallery/WRkoC4vEF9YwQPHMVG3vgxc8I6eJgDp9VpaWFqm0.jpeg', '2020-05-31 07:44:44', '2020-05-26 19:49:51', '2020-05-31 07:44:44'),
(6, 4, 'assets/gallery/cGvzLOQPpuoA7S9E7AhfJ2zKQmoohCEDBcWPX6Md.jpeg', '2020-05-31 07:44:50', '2020-05-28 01:24:09', '2020-05-31 07:44:50'),
(7, 1, 'assets/gallery/QmhWiOoI3wy37nC9FgY2D6Z2rnXhivM9v8oykgMt.jpeg', '2020-05-31 07:44:48', '2020-05-28 01:41:28', '2020-05-31 07:44:48'),
(8, 1, 'assets/gallery/plJAAh40CFrf84C6c4ZHr2mZDhdvwznnJvXgw0PP.jpeg', '2020-05-31 07:57:43', '2020-05-31 07:43:27', '2020-05-31 07:57:43'),
(9, 4, 'assets/gallery/FBhD8It4mTusk0zP8W7rFWcgrb15nz2Ba7SEAMl7.jpeg', NULL, '2020-05-31 07:43:48', '2020-05-31 07:43:48'),
(10, 5, 'assets/gallery/uX3C32lFXIamjVAlI17mwSQXZ97R6SzbvJx6VG88.jpeg', NULL, '2020-05-31 07:44:11', '2020-05-31 07:44:11'),
(11, 6, 'assets/gallery/ZNo1LuinuSeh9Z02PXCm31Dq69IIOo9gS1BUS2dS.jpeg', NULL, '2020-05-31 07:44:29', '2020-05-31 07:44:29'),
(12, 1, 'assets/gallery/902ljvTCU8lbEzxxXqbOn2Z2DSEC1tJYnoI5Efm6.jpeg', NULL, '2020-05-31 07:56:42', '2020-05-31 07:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_05_17_051450_create_travel_packages_table', 1),
(4, '2020_05_17_064525_create_galleries_table', 1),
(5, '2020_05_17_071251_create_transactions_table', 1),
(6, '2020_05_18_154938_create_transaction_details_table', 1),
(7, '2020_05_19_150607_add_roles_field_to_users_table', 2),
(8, '2020_05_21_043602_add_username_field_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additonal_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additonal_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(22, 1, 5, 0, 90, 'PENDING', NULL, '2020-05-31 06:06:02', '2020-05-31 06:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(46, 22, 'saidah', 'ID', 0, '2025-05-31', NULL, '2020-05-31 06:06:02', '2020-05-31 06:06:02'),
(52, 46, 'testinguser', 'CN', 1, '2020-07-31', NULL, '2020-05-31 06:32:45', '2020-05-31 06:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nusa Penida Indah', 'nusa-penida-indah', 'Republic of Indonesia Raya', 'Nusa penida is beautifull summer', 'rapat negara', 'indonesia', 'mie lodoh', '2020-05-23', '2D', 'Open Trip', 90, NULL, NULL, NULL),
(2, 'Lebaran Jakarta', 'lebaran-jakarta', 'jakarta', 'Lebaran mantapp coyy', 'jogettt', 'indonesia', 'Bakso Gondrong', '2020-05-23', '1D', 'Open Trip', 100, '2020-05-22 22:57:06', '2020-05-22 21:22:50', '2020-05-22 22:57:06'),
(3, 'Nusakambangan', 'nusakambangan', 'kalimantan', 'Nusakambangan kota paling berbahaya di indonesia', 'Rapat negara', 'indonesia', 'Bakso Gondrong', '2020-05-23', '3D', 'Open Trip', 100, '2020-05-22 22:59:13', '2020-05-22 22:59:00', '2020-05-22 22:59:13'),
(4, 'Bromo Malang', 'bromo-malang', 'Indonesia', 'Bromo adalah tempat wisata paling indah', 'Trip sehat', 'indonesia', 'nasi goreng', '2020-05-26', '1D', 'Open Trip', 190, NULL, '2020-05-25 23:28:11', '2020-05-31 07:48:45'),
(5, 'DERAJAT BALI', 'derajat-bali', 'Indonesia', 'Derajat bali wonderfull', 'Hiking', 'indonesia', 'Mie rebus', '2020-05-27', '3D', 'Open Trip', 200, NULL, '2020-05-26 19:48:09', '2020-05-31 07:48:17'),
(6, 'MIDDLE EAST', 'middle-east', 'DUBAI', 'The Middle East is a transcontinental region which generally includes Western Asia (except for Transcaucasia) and all of Egypt (mostly in North Africa), Turkey (partly in Europe), and Iran (a part of South Asia per the UN geoscheme. The term has come into wider usage as a replacement of the term Near East (as opposed to the Far East) beginning in the early 20th century. The broader concept of the \"Greater Middle East\" (or Middle East and North Africa) also adds the Maghreb, Sudan, Djibouti, Somalia, Afghanistan, Pakistan, and sometimes even Transcaucasia and Central Asia into the region. The term \"Middle East\" has led to some confusion over its changing definitions.', 'Rekreasi', 'Indonesia', 'Ketoprak', '2020-05-27', '1D', 'Trip', 50, NULL, '2020-05-26 19:49:13', '2020-05-31 07:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Izmi Azis', 'admin@gmail.com', '2020-05-19 09:03:27', '$2y$10$Ugvm0QhFCMtx2PSUntz6OeNkTdD8CGc1rTrEu13LB5ic9uM0cjPWi', NULL, '2020-05-19 09:02:04', '2020-05-19 09:03:27', 'USER', 'azis'),
(2, 'superadmin', 'superadmin@gmail.com', '0000-00-00 00:00:00', '$2y$10$YzZ6qYPNF76JBIPL72pCc.f.a7okilnoWmTo.AREmOXgQIBx0hwoS', '1B8mqsRL1s24VHzneAotfm9Y9AXPEZSyryo8qIBzzkxKrn3LxErBYia7Rsa4', '2020-05-19 09:14:23', '2020-05-19 09:14:23', 'ADMIN', 'ismiazis'),
(3, 'azis', 'azis@gmail.com', '2020-05-20 21:19:55', '$2y$10$7jJxU8z.OY4bWH45D3AamOOHbaBi2jMsJi9XEY4heG1A3GxIGd.7W', NULL, '2020-05-20 21:19:37', '2020-05-20 21:19:55', 'USER', ''),
(4, 'Testing User', 'testinguser@gmail.com', '2020-05-20 21:50:02', '$2y$10$eYAmfqpd/T8ogiJqLYF7LexcbZKY5RSRXgOgkiatWJog1wPbpkC2O', NULL, '2020-05-20 21:49:47', '2020-05-20 21:50:02', 'USER', 'testinguser'),
(5, 'saidah', 'saidah@gmail.com', '2020-05-30 23:43:08', '$2y$10$A74S.iHLtC21z/aOMH87rOwWjkqj1xYmsPbuM9Ok0UbPpdDkjuGU.', NULL, '2020-05-30 23:39:40', '2020-05-30 23:43:08', 'USER', 'saidah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
