-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Bulan Mei 2021 pada 15.23
-- Versi server: 8.0.23-0ubuntu0.20.04.1
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itclub`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_user_menu`
--

CREATE TABLE `access_user_menu` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `access_user_menu`
--

INSERT INTO `access_user_menu` (`id`, `user_id`, `menu_id`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(21, 1, 2, 1, '2021-04-03 08:58:07', '2021-03-20 22:33:32', '2021-04-03 08:58:07'),
(22, 1, 3, 1, '2021-04-03 08:58:03', '2021-03-20 22:33:32', '2021-04-03 08:58:03'),
(23, 1, 6, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(24, 1, 7, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(25, 5, 1, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(26, 5, 2, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(27, 5, 3, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(28, 5, 6, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(29, 5, 7, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(30, 21, 1, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(31, 21, 2, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(32, 21, 3, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(33, 21, 6, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(34, 21, 7, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(35, 1, 8, 1, '2021-03-23 07:37:13', '2021-03-23 07:34:40', '2021-03-23 07:37:13'),
(36, 1, 8, 1, NULL, '2021-03-23 07:42:12', '2021-03-23 07:42:12'),
(37, 2, 8, 1, NULL, '2021-03-24 05:45:46', '2021-03-24 05:45:46'),
(38, 2, 3, 1, NULL, '2021-03-26 04:34:25', '2021-03-26 04:34:25'),
(39, 1, 9, 1, NULL, '2021-03-26 06:09:09', '2021-03-26 06:09:09'),
(40, 23, 1, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(41, 23, 2, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(42, 23, 3, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(43, 23, 6, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(44, 23, 7, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(45, 24, 1, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(46, 24, 2, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(47, 24, 3, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(48, 24, 6, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(49, 24, 7, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(50, 25, 1, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(51, 25, 2, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(52, 25, 3, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(53, 25, 6, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(54, 25, 7, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(55, 26, 1, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(56, 26, 2, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(57, 26, 3, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(58, 26, 6, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(59, 26, 7, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(60, 27, 1, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(61, 27, 2, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(62, 27, 3, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(63, 27, 6, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(64, 27, 7, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(65, 1, 10, 1, NULL, '2021-03-28 13:58:25', '2021-03-28 13:58:25'),
(66, 1, 12, 1, NULL, '2021-03-28 14:09:22', '2021-03-28 14:09:22'),
(67, 1, 11, 1, '2021-04-20 08:34:29', '2021-03-28 14:28:11', '2021-04-20 08:34:29'),
(68, 1, 2, 1, NULL, '2021-04-03 09:16:18', '2021-04-03 09:16:18'),
(69, 1, 3, 1, NULL, '2021-04-03 09:16:20', '2021-04-03 09:16:20'),
(70, 1, 13, 1, '2021-04-04 09:19:23', '2021-04-04 09:18:57', '2021-04-04 09:19:23'),
(71, 1, 13, 1, NULL, '2021-04-04 09:19:34', '2021-04-04 09:19:34'),
(72, 1, 16, 1, NULL, '2021-04-04 16:49:56', '2021-04-04 16:49:56'),
(73, 1, 5, 1, '2021-04-10 20:44:02', '2021-04-10 20:43:59', '2021-04-10 20:44:02'),
(74, 1, 17, 1, NULL, '2021-04-10 20:44:06', '2021-04-10 20:44:06'),
(75, 29, 8, 1, '2021-04-11 03:48:37', '2021-04-11 03:47:16', '2021-04-11 03:48:37'),
(76, 29, 1, 1, '2021-04-11 03:48:37', '2021-04-11 03:47:16', '2021-04-11 03:48:37'),
(77, 29, 8, 1, '2021-04-11 23:16:24', '2021-04-11 03:51:54', '2021-04-11 23:16:24'),
(78, 29, 1, 1, '2021-04-11 23:16:24', '2021-04-11 03:51:54', '2021-04-11 23:16:24'),
(79, 1, 18, 1, NULL, '2021-04-11 15:57:41', '2021-04-11 15:57:41'),
(80, 29, 8, 1, '2021-04-11 23:16:27', '2021-04-11 23:16:24', '2021-04-11 23:16:27'),
(81, 29, 1, 1, '2021-04-11 23:16:27', '2021-04-11 23:16:24', '2021-04-11 23:16:27'),
(82, 29, 8, 1, '2021-04-18 06:42:30', '2021-04-11 23:16:31', '2021-04-18 06:42:30'),
(83, 29, 1, 1, '2021-04-18 06:42:30', '2021-04-11 23:16:31', '2021-04-18 06:42:30'),
(84, 1, 19, 1, NULL, '2021-04-14 20:42:01', '2021-04-14 20:42:01'),
(97, 1, 1, 1, NULL, '2021-04-15 00:08:21', '2021-04-15 00:08:21'),
(98, 29, 8, 1, NULL, '2021-04-19 14:47:02', '2021-04-19 14:47:02'),
(99, 29, 1, 1, NULL, '2021-04-19 14:47:02', '2021-04-19 14:47:02'),
(100, 1, 20, 1, '2021-04-20 08:41:49', '2021-04-20 08:28:38', '2021-04-20 08:41:49'),
(101, 1, 11, 1, NULL, '2021-04-20 08:34:31', '2021-04-20 08:34:31'),
(102, 1, 20, 1, NULL, '2021-04-20 08:41:52', '2021-04-20 08:41:52'),
(103, 1, 21, 1, NULL, '2021-05-10 04:47:47', '2021-05-10 04:47:47'),
(104, 1, 22, 1, NULL, '2021-05-25 07:25:45', '2021-05-25 07:25:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_user_section`
--

CREATE TABLE `access_user_section` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `section_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `access_user_section`
--

INSERT INTO `access_user_section` (`id`, `user_id`, `section_id`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(18, 1, 3, 1, '2021-04-03 08:57:06', '2021-03-20 22:33:32', '2021-04-03 08:57:06'),
(19, 1, 6, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(20, 1, 2, 1, '2021-03-21 00:42:18', '2021-03-21 00:42:16', '2021-03-21 00:42:18'),
(21, 1, 2, 1, NULL, '2021-03-21 00:42:24', '2021-03-21 00:42:24'),
(22, 5, 2, 1, '2021-03-21 01:36:08', '2021-03-21 01:36:05', '2021-03-21 01:36:08'),
(23, 5, 2, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(24, 5, 3, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(25, 5, 6, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(26, 21, 3, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(27, 21, 6, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(28, 21, 2, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(29, 1, 7, 1, '2021-03-23 07:34:37', '2021-03-23 07:34:35', '2021-03-23 07:34:37'),
(30, 1, 7, 1, '2021-03-23 07:38:30', '2021-03-23 07:37:10', '2021-03-23 07:38:30'),
(31, 1, 7, 1, '2021-03-23 07:41:16', '2021-03-23 07:41:11', '2021-03-23 07:41:16'),
(32, 1, 7, 1, '2021-04-04 16:49:38', '2021-03-23 07:42:09', '2021-04-04 16:49:38'),
(33, 2, 7, 1, NULL, '2021-03-24 05:45:42', '2021-03-24 05:45:42'),
(34, 2, 3, 1, '2021-03-26 04:34:28', '2021-03-26 04:34:20', '2021-03-26 04:34:28'),
(35, 2, 3, 1, '2021-03-27 03:10:18', '2021-03-26 04:35:53', '2021-03-27 03:10:18'),
(36, 23, 3, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(37, 23, 6, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(38, 23, 2, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(39, 24, 3, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(40, 24, 6, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(41, 24, 2, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(42, 25, 3, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(43, 25, 6, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(44, 25, 2, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(45, 26, 3, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(46, 26, 6, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(47, 26, 2, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(48, 27, 3, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(49, 27, 6, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(50, 27, 2, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(51, 1, 3, 1, NULL, '2021-04-03 08:57:50', '2021-04-03 08:57:50'),
(52, 1, 7, 1, NULL, '2021-04-04 16:49:50', '2021-04-04 16:49:50'),
(53, 1, 14, 1, NULL, '2021-04-10 20:43:55', '2021-04-10 20:43:55'),
(54, 29, 7, 1, '2021-04-11 03:48:37', '2021-04-11 03:47:16', '2021-04-11 03:48:37'),
(55, 29, 2, 1, '2021-04-11 03:48:37', '2021-04-11 03:47:16', '2021-04-11 03:48:37'),
(56, 29, 7, 1, '2021-04-11 23:16:24', '2021-04-11 03:51:54', '2021-04-11 23:16:24'),
(57, 29, 2, 1, '2021-04-11 23:16:24', '2021-04-11 03:51:54', '2021-04-11 23:16:24'),
(58, 29, 7, 1, '2021-04-11 23:16:27', '2021-04-11 23:16:24', '2021-04-11 23:16:27'),
(59, 29, 2, 1, '2021-04-11 23:16:27', '2021-04-11 23:16:24', '2021-04-11 23:16:27'),
(60, 29, 7, 1, '2021-04-18 06:42:30', '2021-04-11 23:16:31', '2021-04-18 06:42:30'),
(61, 29, 2, 1, '2021-04-18 06:42:30', '2021-04-11 23:16:31', '2021-04-18 06:42:30'),
(62, 29, 7, 1, NULL, '2021-04-19 14:47:02', '2021-04-19 14:47:02'),
(63, 29, 2, 1, NULL, '2021-04-19 14:47:02', '2021-04-19 14:47:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_user_submenu`
--

CREATE TABLE `access_user_submenu` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `submenu_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `access_user_submenu`
--

INSERT INTO `access_user_submenu` (`id`, `user_id`, `submenu_id`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 1, 1, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(20, 1, 2, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(21, 1, 3, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(22, 1, 4, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(23, 1, 6, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(24, 1, 7, 1, NULL, '2021-03-20 22:33:32', '2021-03-20 22:33:32'),
(25, 5, 1, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(26, 5, 2, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(27, 5, 3, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(28, 5, 4, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(29, 5, 6, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(30, 5, 7, 1, NULL, '2021-03-21 01:36:08', '2021-03-21 01:36:08'),
(31, 21, 1, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(32, 21, 2, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(33, 21, 3, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(34, 21, 4, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(35, 21, 6, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(36, 21, 7, 1, NULL, '2021-03-22 23:47:18', '2021-03-22 23:47:18'),
(37, 1, 8, 1, NULL, '2021-03-23 07:42:15', '2021-03-23 07:42:15'),
(38, 2, 8, 1, NULL, '2021-03-24 05:45:49', '2021-03-24 05:45:49'),
(39, 1, 9, 1, NULL, '2021-03-26 07:13:54', '2021-03-26 07:13:54'),
(40, 23, 1, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(41, 23, 2, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(42, 23, 3, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(43, 23, 4, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(44, 23, 6, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(45, 23, 7, 1, NULL, '2021-03-27 19:22:25', '2021-03-27 19:22:25'),
(46, 24, 1, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(47, 24, 2, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(48, 24, 3, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(49, 24, 4, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(50, 24, 6, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(51, 24, 7, 1, NULL, '2021-03-27 19:22:44', '2021-03-27 19:22:44'),
(52, 25, 1, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(53, 25, 2, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(54, 25, 3, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(55, 25, 4, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(56, 25, 6, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(57, 25, 7, 1, NULL, '2021-03-27 19:23:15', '2021-03-27 19:23:15'),
(58, 26, 1, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(59, 26, 2, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(60, 26, 3, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(61, 26, 4, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(62, 26, 6, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(63, 26, 7, 1, NULL, '2021-03-27 19:24:08', '2021-03-27 19:24:08'),
(64, 27, 1, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(65, 27, 2, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(66, 27, 3, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(67, 27, 4, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(68, 27, 6, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(69, 27, 7, 1, NULL, '2021-03-27 21:37:23', '2021-03-27 21:37:23'),
(70, 1, 10, 1, NULL, '2021-03-28 13:58:29', '2021-03-28 13:58:29'),
(71, 1, 11, 1, NULL, '2021-03-28 13:58:31', '2021-03-28 13:58:31'),
(72, 1, 13, 1, NULL, '2021-04-04 09:19:04', '2021-04-04 09:19:04'),
(73, 1, 12, 1, NULL, '2021-04-04 09:19:09', '2021-04-04 09:19:09'),
(74, 1, 17, 1, NULL, '2021-04-04 16:50:02', '2021-04-04 16:50:02'),
(75, 1, 16, 1, NULL, '2021-04-04 16:50:03', '2021-04-04 16:50:03'),
(76, 1, 15, 1, NULL, '2021-04-04 16:50:06', '2021-04-04 16:50:06'),
(77, 1, 18, 1, NULL, '2021-04-05 22:02:32', '2021-04-05 22:02:32'),
(78, 29, 8, 1, '2021-04-11 03:48:37', '2021-04-11 03:47:16', '2021-04-11 03:48:37'),
(79, 29, 18, 1, '2021-04-11 03:48:37', '2021-04-11 03:47:16', '2021-04-11 03:48:37'),
(80, 29, 8, 1, '2021-04-11 23:16:24', '2021-04-11 03:51:54', '2021-04-11 23:16:24'),
(81, 29, 18, 1, '2021-04-11 23:16:24', '2021-04-11 03:51:54', '2021-04-11 23:16:24'),
(82, 29, 8, 1, '2021-04-11 23:16:27', '2021-04-11 23:16:24', '2021-04-11 23:16:27'),
(83, 29, 18, 1, '2021-04-11 23:16:27', '2021-04-11 23:16:24', '2021-04-11 23:16:27'),
(84, 29, 8, 1, '2021-04-18 06:42:30', '2021-04-11 23:16:31', '2021-04-18 06:42:30'),
(85, 29, 18, 1, '2021-04-18 06:42:30', '2021-04-11 23:16:31', '2021-04-18 06:42:30'),
(86, 1, 20, 1, NULL, '2021-04-14 20:42:17', '2021-04-14 20:42:17'),
(87, 1, 19, 1, NULL, '2021-04-14 20:42:17', '2021-04-14 20:42:17'),
(88, 29, 8, 1, NULL, '2021-04-19 14:47:02', '2021-04-19 14:47:02'),
(89, 29, 18, 1, NULL, '2021-04-19 14:47:02', '2021-04-19 14:47:02'),
(90, 1, 21, 1, NULL, '2021-05-10 04:47:53', '2021-05-10 04:47:53'),
(91, 1, 22, 1, NULL, '2021-05-10 04:47:57', '2021-05-10 04:47:57'),
(92, 1, 23, 1, NULL, '2021-05-10 04:54:18', '2021-05-10 04:54:18'),
(93, 1, 24, 1, NULL, '2021-05-10 04:54:23', '2021-05-10 04:54:23'),
(94, 1, 25, 1, NULL, '2021-05-10 04:54:27', '2021-05-10 04:54:27'),
(95, 1, 26, 1, NULL, '2021-05-10 04:54:30', '2021-05-10 04:54:30'),
(96, 1, 27, 1, NULL, '2021-05-10 04:54:34', '2021-05-10 04:54:34'),
(97, 1, 28, 1, NULL, '2021-05-10 04:54:38', '2021-05-10 04:54:38'),
(98, 1, 29, 1, NULL, '2021-05-10 04:54:42', '2021-05-10 04:54:42'),
(99, 1, 30, 1, NULL, '2021-05-10 04:54:46', '2021-05-10 04:54:46'),
(100, 1, 31, 1, NULL, '2021-05-10 04:54:49', '2021-05-10 04:54:49'),
(101, 1, 32, 1, NULL, '2021-05-10 04:54:53', '2021-05-10 04:54:53'),
(102, 1, 35, 1, NULL, '2021-05-10 04:54:56', '2021-05-10 04:54:56'),
(103, 1, 34, 1, NULL, '2021-05-10 04:55:00', '2021-05-10 04:55:00'),
(104, 1, 33, 1, NULL, '2021-05-10 04:55:03', '2021-05-10 04:55:03'),
(105, 1, 36, 1, NULL, '2021-05-25 05:09:43', '2021-05-25 05:09:43'),
(106, 1, 37, 1, NULL, '2021-05-25 06:07:27', '2021-05-25 06:07:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `url_access` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `code_activity` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `url_access`, `description`, `browser`, `deleted_at`, `created_at`, `code_activity`) VALUES
(2, 1, '/api/v1/user/delete', 'Delete user', 'Google Chrome', NULL, '2021-03-27 14:05:12', '10406211972'),
(5, 1, '/api/v1/trash/section/recovery', 'merecovery data section', 'Google Chrome', NULL, '2021-04-05 21:19:23', '10406212200'),
(6, 1, '/api/v1/trash/section/delete', 'menghapus data section', 'Google Chrome', NULL, '2021-04-05 21:20:23', '10406212400'),
(7, 1, '/api/v1/trash/menu/recovery', 'merecovery data sampah menu', 'Internet Explorer', NULL, '2021-04-05 21:33:24', '10406212500'),
(8, 1, '/api/v1/trash/menu/recovery', 'merecovery data sampah menu', 'Internet Explorer', NULL, '2021-04-05 21:34:22', '10406212700'),
(9, 1, '/api/v1/trash/menu/recovery', 'merecovery data sampah menu', 'Internet Explorer', NULL, '2021-04-05 21:35:57', '10406212722'),
(12, 1, '/api/v1/trash/menu/insert', 'merecovery data sampah menu', 'Safari', NULL, '2021-04-05 21:35:57', '10406212722'),
(13, 1, '/api/v1/trash/section/recovery', 'merecovery data sampah section', 'Google Chrome', NULL, '2021-04-06 20:07:48', '104072139280'),
(14, 1, '/api/v1/trash/section/delete', 'menghapus data sampah section', 'Mozilla Firefox', NULL, '2021-04-06 20:09:39', '104072112724'),
(15, 1, '/api/v1/trash/section/recovery', 'merecovery data sampah section', 'Mozilla Firefox', NULL, '2021-04-06 20:09:52', '104072137529'),
(16, 1, '/api/v1/user/insert', 'Create new user user1', 'Google Chrome', NULL, '2021-04-08 01:41:09', '104082137995'),
(17, 1, '/api/v1/category/insert', 'menambah data category', 'Google Chrome', NULL, '2021-04-10 20:05:26', '10411218076'),
(18, 1, '/api/v1/category/insert', 'menambah data category', 'Google Chrome', NULL, '2021-04-10 20:05:31', '104112119895'),
(19, 1, '/api/v1/category/insert', 'menambah data category', 'Google Chrome', NULL, '2021-04-10 20:05:36', '104112140853'),
(20, 29, '/api/v1/features/article/insert', 'menambah data article', 'Google Chrome', NULL, '2021-04-11 15:33:33', '2904112129956'),
(21, 1, '/api/v1/member/registration/accept', 'Accept new member', 'Google Chrome', NULL, '2021-04-11 23:16:24', '10412212419'),
(22, 1, '/api/v1/member/registration/reject', 'Reject new member', 'Google Chrome', NULL, '2021-04-11 23:16:27', '104122125942'),
(23, 1, '/api/v1/member/registration/accept', 'Accept new member', 'Google Chrome', NULL, '2021-04-11 23:16:31', '104122132646'),
(24, 1, '/api/v1/member/schedule/insert', 'Menambahkan jadwal member', 'Google Chrome', NULL, '2021-04-12 02:44:23', '104122113402'),
(25, 1, '/api/v1/member/schedule/insert', 'Menambahkan jadwal member', 'Google Chrome', NULL, '2021-04-12 04:31:11', '104122129640'),
(26, 1, '/api/v1/member/schedule/insert', 'Menambahkan jadwal member', 'Google Chrome', NULL, '2021-04-12 04:32:40', '104122129113'),
(27, 1, '/api/v1/trash/menu/delete', 'menghapus data sampah menu', 'Google Chrome', NULL, '2021-04-12 04:34:43', '10412213758'),
(28, 1, '/api/v1/trash/menu/delete', 'menghapus data sampah menu', 'Google Chrome', NULL, '2021-04-12 04:35:01', '104122119476'),
(29, 1, '/api/v1/member/schedule/insert', 'Menambahkan jadwal member', 'Google Chrome', NULL, '2021-04-12 04:44:54', '104122119499'),
(30, 1, '/api/v1/member/schedule/delete', 'Menghapus jadwal member', 'Google Chrome', NULL, '2021-04-12 04:44:58', '104122120929'),
(31, 1, '/api/v1/member/schedule/update', 'Mengubah jadwal member', 'Google Chrome', NULL, '2021-04-12 05:10:15', '104122132495'),
(32, 35, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:02:45', '3504152116701'),
(33, 35, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:02:52', '3504152123783'),
(34, 35, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:03:07', '350415212167'),
(35, 35, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:04:49', '350415211698'),
(36, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:12:53', '3604152141581'),
(37, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:17:46', '3604152120117'),
(38, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:18:59', '3604152130199'),
(39, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:19:19', '3604152114357'),
(40, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:25:21', '360415213112'),
(41, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:25:34', '3604152127221'),
(42, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:25:52', '3604152133777'),
(43, 36, '/api/v1/member/delete/image/profile', 'menghapus data image profile', 'Google Chrome', NULL, '2021-04-15 00:25:58', '3604152114281'),
(44, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:26:08', '3604152130561'),
(45, 36, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-15 00:26:42', '3604152123237'),
(46, 36, '/api/v1/member/delete/image/profile', 'menghapus data image profile', 'Google Chrome', NULL, '2021-04-15 00:27:16', '3604152135043'),
(47, 1, '/api/v1/member/precentages/test/update', 'Memperbaharui data test member', 'Google Chrome', NULL, '2021-04-18 04:19:26', '104182130466'),
(48, 1, '/api/v1/member/registration/reject', 'Reject new member', 'Google Chrome', NULL, '2021-04-18 06:42:30', '104182110830'),
(49, 1, '/api/v1/trash/section/recovery', 'merecovery data sampah section', 'Google Chrome', NULL, '2021-04-18 06:45:14', '104182137711'),
(50, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-18 07:06:24', '104182134741'),
(51, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-18 07:06:53', '10418219653'),
(52, 1, '/api/v1/member/delete/image/profile', 'menghapus data image profile', 'Google Chrome', NULL, '2021-04-18 07:07:07', '104182137374'),
(53, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:07', '10418214039'),
(54, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:09', '104182135853'),
(55, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:10', '104182141069'),
(56, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:12', '10418218673'),
(57, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:12', '104182113137'),
(58, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:14', '104182136052'),
(59, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:19', '104182122824'),
(60, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:20', '104182139373'),
(61, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:21', '104182115069'),
(62, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 07:20:22', '104182113172'),
(63, 1, '/api/v1/member/setting/changepassword', 'memperbarui data password', 'Google Chrome', NULL, '2021-04-18 08:55:15', '104182117901'),
(64, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-18 22:05:14', '104192116300'),
(65, 1, '/api/v1/user/update', 'Update user user_rifki', 'Google Chrome', NULL, '2021-04-19 14:46:46', '10419219172'),
(66, 1, '/api/v1/user/update', 'Update user user_rifki', 'Google Chrome', NULL, '2021-04-19 14:46:58', '104192110332'),
(67, 1, '/api/v1/user/update', 'Update user user_rifki', 'Google Chrome', NULL, '2021-04-19 14:47:02', '104192125562'),
(68, 1, '/api/v1/member/precentages/test/insert', 'Menambah data test member', 'Google Chrome', NULL, '2021-04-19 14:58:43', '104192112971'),
(69, 1, '/api/v1/access/users/change/menu', 'Menghapus access menu users', 'Google Chrome', NULL, '2021-04-20 08:41:49', '104202126721'),
(70, 1, '/api/v1/access/users/change/menu', 'Menambah access menu users', 'Google Chrome', NULL, '2021-04-20 08:41:52', '10420212431'),
(71, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-04-20 13:50:45', '104202140549'),
(72, 1, '/api/v1/features/user_guide/insert', 'Menambah data user guide website', 'Google Chrome', NULL, '2021-04-20 15:01:29', '104202120260'),
(73, 1, '/api/v1/features/user_guide/insert', 'Menambah data user guide website', 'Google Chrome', NULL, '2021-04-20 15:01:43', '104202132425'),
(74, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-21 07:12:50', '104212118073'),
(75, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-21 07:12:53', '104212135097'),
(76, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-21 07:13:03', '104212119040'),
(77, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-21 07:13:21', '10421215601'),
(78, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-21 07:13:37', '10421212888'),
(79, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-04-21 07:14:02', '10421215762'),
(80, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-22 16:31:21', '10422217851'),
(81, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-22 21:16:37', '104232124086'),
(82, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-22 22:14:20', '104232122417'),
(83, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-22 22:14:40', '10423216311'),
(84, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-22 22:15:22', '104232124923'),
(85, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-22 22:15:28', '10423215026'),
(86, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-22 22:15:41', '104232113141'),
(87, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-22 22:15:59', '104232115719'),
(88, 1, '/api/v1/features/user_guide/list/delete', 'menghapus data list guide website', 'Google Chrome', NULL, '2021-04-22 22:23:27', '104232135084'),
(89, 1, '/api/v1/features/user_guide/list/delete', 'menghapus data list guide website', 'Google Chrome', NULL, '2021-04-22 22:23:54', '104232126790'),
(90, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-23 03:01:42', '104232110288'),
(91, 1, '/api/v1/features/user_guide/delete', 'Menghapus data user guides website', 'Google Chrome', NULL, '2021-04-23 04:26:38', '104232118834'),
(92, 1, '/api/v1/features/user_guide/insert', 'Menambah data user guide website', 'Google Chrome', NULL, '2021-04-23 04:27:18', '104232115297'),
(93, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-23 04:28:29', '104232112670'),
(94, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-23 04:29:06', '104232118809'),
(95, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-23 04:29:53', '104232120050'),
(96, 1, '/api/v1/features/user_guide/list/insert', 'Menambah data list guide website', 'Google Chrome', NULL, '2021-04-23 04:30:50', '104232130869'),
(97, 1, '/api/v1/features/user_guide/list/update', 'Memperbaharui data list guide website', 'Google Chrome', NULL, '2021-04-23 04:31:06', '104232113150'),
(98, 1, '/api/v1/features/user_guide/list/delete', 'menghapus data list guide website', 'Google Chrome', NULL, '2021-04-23 04:31:27', '104232140646'),
(99, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-05-01 06:49:02', '105012114739'),
(100, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-05-01 06:49:08', '10501212133'),
(101, 1, '/api/v1/member/insert/profile', 'memperbarui data profile', 'Google Chrome', NULL, '2021-05-01 06:49:13', '105012121158'),
(102, 1, '/api/v1/menu/insert', 'Menambah data menu', 'Mozilla Firefox', NULL, '2021-05-10 04:45:51', '105102148796'),
(103, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:46:55', '105102110917'),
(104, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:47:17', '105102146996'),
(105, 1, '/api/v1/access/users/change/menu', 'Menambah access menu users', 'Mozilla Firefox', NULL, '2021-05-10 04:47:47', '105102141375'),
(106, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:47:53', '105102136887'),
(107, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:47:57', '105102111329'),
(108, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:50:10', '105102110624'),
(109, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:50:27', '105102139225'),
(110, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:50:45', '105102131693'),
(111, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:51:04', '105102125190'),
(112, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:51:21', '10510214352'),
(113, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:51:39', '105102120134'),
(114, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:51:52', '105102110924'),
(115, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:52:01', '105102143642'),
(116, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:52:19', '105102151975'),
(117, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:52:37', '105102151240'),
(118, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:52:57', '105102142426'),
(119, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:53:36', '105102141081'),
(120, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-10 04:53:56', '105102129332'),
(121, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:18', '10510219407'),
(122, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:23', '105102142962'),
(123, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:27', '105102132858'),
(124, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:30', '105102122954'),
(125, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:34', '105102125423'),
(126, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:38', '105102120520'),
(127, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:42', '105102149009'),
(128, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:46', '105102143781'),
(129, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:49', '10510219390'),
(130, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:53', '105102142407'),
(131, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:54:56', '105102113307'),
(132, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:55:00', '105102149366'),
(133, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-10 04:55:03', '105102132248'),
(134, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Mozilla Firefox', NULL, '2021-05-10 04:59:13', '105102147747'),
(135, 1, '/api/v1/access/change/section', 'Menghapus access section', 'Google Chrome', NULL, '2021-05-20 05:17:46', '105202148069'),
(136, 1, '/api/v1/access/change/section', 'Menambah access section', 'Google Chrome', NULL, '2021-05-20 05:18:03', '105202126449'),
(137, 1, '/api/v1/access/change/menu', 'Menghapus access menu', 'Google Chrome', NULL, '2021-05-20 05:18:09', '105202149516'),
(138, 1, '/api/v1/access/change/section', 'Menghapus access section', 'Google Chrome', NULL, '2021-05-20 05:18:27', '105202138748'),
(139, 1, '/api/v1/features/article/delete', 'menghapus data article', 'Google Chrome', NULL, '2021-05-20 05:18:57', '105202112415'),
(140, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:00:36', '105202133480'),
(141, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:00:55', '105202126538'),
(142, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:02:39', '105202146683'),
(143, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:02:53', '105202151934'),
(144, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:03:25', '105202128117'),
(145, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:03:48', '105202113223'),
(146, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:06:19', '10520213945'),
(147, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:07:59', '105202125351'),
(148, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:08:31', '10520218313'),
(149, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:08:45', '105202144649'),
(150, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 06:10:26', '105202147684'),
(151, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:12:26', '105202145026'),
(152, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:15:24', '105202113068'),
(153, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:18:26', '105202145949'),
(154, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:18:46', '10520217249'),
(155, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:19:06', '105202140255'),
(156, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:19:14', '105202118538'),
(157, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:19:45', '105202127981'),
(158, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:20:01', '105202121563'),
(159, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:20:10', '105202117911'),
(160, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:30:16', '105202117329'),
(161, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:30:27', '105202128240'),
(162, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:30:37', '105202146992'),
(163, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:30:51', '105202143917'),
(164, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:33:33', '105202140077'),
(165, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:34:13', '105202138616'),
(166, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:34:31', '10520217129'),
(167, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:34:49', '105202137531'),
(168, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:34:59', '105202148240'),
(169, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:35:08', '105202124287'),
(170, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:35:23', '105202147697'),
(171, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:35:53', '105202142480'),
(172, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:36:02', '105202128633'),
(173, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:36:12', '10520214056'),
(174, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:36:23', '105202149987'),
(175, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:36:37', '105202126840'),
(176, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:36:55', '105202116430'),
(177, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:37:18', '105202129052'),
(178, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 06:44:16', '10520212370'),
(179, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 06:45:46', '105202110744'),
(180, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 06:46:33', '105202145702'),
(181, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 06:47:14', '105202124796'),
(182, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 06:48:05', '105202110308'),
(183, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:48:49', '105202117841'),
(184, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 06:48:56', '105202114184'),
(185, 1, '/api/v1/prestation/insert', 'menambah data prestasi', 'Google Chrome', NULL, '2021-05-20 07:14:37', '105202146716'),
(186, 1, '/api/v1/prestation/insert', 'menambah data prestasi', 'Google Chrome', NULL, '2021-05-20 07:15:08', '105202110596'),
(187, 1, '/api/v1/prestation/insert', 'menambah data prestasi', 'Google Chrome', NULL, '2021-05-20 07:15:43', '105202121815'),
(188, 1, '/api/v1/prestation/insert', 'menambah data prestasi', 'Google Chrome', NULL, '2021-05-20 07:16:10', '105202124897'),
(189, 1, '/api/v1/prestation/delete', 'menghapus data prestasi', 'Google Chrome', NULL, '2021-05-20 07:16:27', '105202111536'),
(190, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 07:17:19', '10520213603'),
(191, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 07:17:34', '105202140961'),
(192, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 07:18:19', '105202112609'),
(193, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 07:18:50', '105202113740'),
(194, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 07:19:17', '105202113418'),
(195, 1, '/api/v1/division/update', 'mengedit data divisi', 'Google Chrome', NULL, '2021-05-20 07:19:53', '105202137313'),
(196, 1, '/api/v1/division/delete', 'menghapus data divisi', 'Google Chrome', NULL, '2021-05-20 07:20:11', '105202128452'),
(197, 1, '/api/v1/division/insert', 'menambah data divisi', 'Google Chrome', NULL, '2021-05-20 07:21:22', '105202123690'),
(198, 1, '/api/v1/imageDivision/delete', 'menghapus data image Division', 'Google Chrome', NULL, '2021-05-20 07:21:51', '105202151760'),
(199, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:22:27', '10520217216'),
(200, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:22:42', '105202135192'),
(201, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:23:15', '105202148814'),
(202, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:23:28', '105202136880'),
(203, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:24:12', '105202111072'),
(204, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:24:31', '10520216063'),
(205, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:25:33', '105202128982'),
(206, 1, '/api/v1/imageDivision/delete', 'menghapus data image Division', 'Google Chrome', NULL, '2021-05-20 07:26:30', '105202132227'),
(207, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:27:09', '105202131793'),
(208, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:27:41', '105202123374'),
(209, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:27:52', '105202137860'),
(210, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:28:15', '105202122866'),
(211, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:28:22', '105202111744'),
(212, 1, '/api/v1/imageDivision/insert', 'menambah data image Division', 'Google Chrome', NULL, '2021-05-20 07:28:44', '105202110802'),
(213, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Google Chrome', NULL, '2021-05-20 07:32:14', '105202131026'),
(214, 1, '/api/v1/gallery/insert', 'menambah data gallery', 'Google Chrome', NULL, '2021-05-20 07:41:38', '105202115658'),
(215, 1, '/api/v1/gallery/insert', 'menambah data gallery', 'Google Chrome', NULL, '2021-05-20 07:44:44', '105202145219'),
(216, 1, '/api/v1/gallery/insert', 'menambah data gallery', 'Google Chrome', NULL, '2021-05-20 07:46:00', '105202121878'),
(217, 1, '/api/v1/gallery/delete', 'menghapus data gallery', 'Google Chrome', NULL, '2021-05-20 07:46:12', '105202115168'),
(218, 1, '/api/v1/gallery/insert', 'menambah data gallery', 'Google Chrome', NULL, '2021-05-20 07:46:33', '105202143790'),
(219, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:30:45', '10520216696'),
(220, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:31:02', '10520214581'),
(221, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:31:21', '105202122361'),
(222, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:31:30', '105202133385'),
(223, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:31:36', '105202145368'),
(224, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:31:48', '105202130824'),
(225, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:31:53', '105202135636'),
(226, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:32:00', '105202151970'),
(227, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:32:05', '105202126651'),
(228, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Google Chrome', NULL, '2021-05-20 08:33:32', '105202125054'),
(229, 1, '/api/v1/gallery/update', 'mengedit data gallery', 'Google Chrome', NULL, '2021-05-20 10:11:17', '105202111789'),
(230, 1, '/api/v1/features/article/update', 'mengubah data article', 'Google Chrome', NULL, '2021-05-21 08:14:10', '105212118554'),
(231, 1, '/api/v1/features/article/update', 'mengubah data article', 'Google Chrome', NULL, '2021-05-21 08:14:11', '10521217762'),
(232, 1, '/api/v1/features/article/insert', 'menambah data article', 'Google Chrome', NULL, '2021-05-21 08:17:10', '105212130655'),
(233, 1, '/api/v1/features/article/insert', 'menambah data article', 'Google Chrome', NULL, '2021-05-21 08:22:43', '105212149494'),
(234, 1, '/api/v1/features/article/insert', 'menambah data article', 'Google Chrome', NULL, '2021-05-21 08:26:45', '10521213721'),
(235, 1, '/api/v1/features/article/insert', 'menambah data article', 'Google Chrome', NULL, '2021-05-21 08:29:41', '105212126001'),
(236, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:20:16', '105212120793'),
(237, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:20:43', '10521217293'),
(238, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:20:52', '10521215300'),
(239, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:21:07', '10521213988'),
(240, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:21:41', '105212115088'),
(241, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:21:43', '10521213958'),
(242, 1, '/api/v1/imageGallery/delete', 'menghapus data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:21:49', '105212123250'),
(243, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:22:01', '105212123422'),
(244, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:22:11', '10521218053'),
(245, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:22:20', '105212117721'),
(246, 1, '/api/v1/imageGallery/insert', 'menambah data image Gallery', 'Google Chrome', NULL, '2021-05-21 11:22:33', '105212119718'),
(247, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-25 05:08:46', '105252141194'),
(248, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-25 05:09:43', '105252115489'),
(249, 1, '/api/v1/mentor/insert', 'menambah data mentor', 'Mozilla Firefox', NULL, '2021-05-25 05:15:11', '10525217152'),
(250, 1, '/api/v1/mentor/delete', 'menghapus data mentor', 'Mozilla Firefox', NULL, '2021-05-25 05:48:10', '10525216681'),
(251, 1, '/api/v1/submenu/insert', 'Menambah data submenu', 'Mozilla Firefox', NULL, '2021-05-25 06:06:18', '105252149922'),
(252, 1, '/api/v1/access/users/change/submenu', 'Menambah access submenu users', 'Mozilla Firefox', NULL, '2021-05-25 06:07:27', '105252130465'),
(253, 1, '/api/v1/trash/mentor/delete', 'menghapus data sampah mentor', 'Mozilla Firefox', NULL, '2021-05-25 06:08:29', '10525215258'),
(254, 1, '/api/v1/menu/insert', 'Menambah data menu', 'Mozilla Firefox', NULL, '2021-05-25 07:24:23', '105252110419'),
(255, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Mozilla Firefox', NULL, '2021-05-25 07:25:01', '105252131214'),
(256, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Mozilla Firefox', NULL, '2021-05-25 07:25:08', '10525217276'),
(257, 1, '/api/v1/access/users/change/menu', 'Menambah access menu users', 'Mozilla Firefox', NULL, '2021-05-25 07:25:45', '105252129668'),
(258, 1, '/api/v1/mentor/insert', 'menambah data mentor', 'Mozilla Firefox', NULL, '2021-05-25 07:27:14', '105252119004'),
(259, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Mozilla Firefox', NULL, '2021-05-25 07:42:53', '105252132012'),
(260, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Mozilla Firefox', NULL, '2021-05-25 07:43:21', '10525215806'),
(261, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Mozilla Firefox', NULL, '2021-05-25 07:43:36', '105252115269'),
(262, 1, '/api/v1/submenu/update', 'Memperbaharui data submenu', 'Mozilla Firefox', NULL, '2021-05-25 07:43:46', '105252150158'),
(263, 1, '/api/v1/menu/update', 'Memperbaharui data menu', 'Mozilla Firefox', NULL, '2021-05-25 07:44:56', '105252138465'),
(264, 1, '/api/v1/menu/delete', 'Menghapus data menu', 'Mozilla Firefox', NULL, '2021-05-25 07:45:29', '10525218360'),
(265, 1, '/api/v1/mentor/insert', 'menambah data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:08:14', '105252131658'),
(266, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:14:50', '105252151688'),
(267, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:15:07', '105252148902'),
(268, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:15:11', '105252130658'),
(269, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:15:16', '105252150443'),
(270, 1, '/api/v1/mentor/insert', 'menambah data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:16:02', '105252137043'),
(271, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:20:42', '105252139962'),
(272, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:21:06', '105252144091'),
(273, 1, '/api/v1/mentor/update', 'mengedit data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:21:25', '105252122395'),
(274, 1, '/api/v1/mentor/delete', 'menghapus data mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:21:42', '10525219965'),
(275, 1, '/api/v1/trash/mentor/delete', 'menghapus data sampah mentor', 'Mozilla Firefox', NULL, '2021-05-25 08:22:10', '10525214465');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumnies`
--

CREATE TABLE `alumnies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('100','200','300','400','500','000') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '100',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `content`, `thumbnail`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, '\"Cyber Security Awareness: How Phising Works?\" in Data Digital', '<h2>Selamat Datang di Ekstrakulikuler IT Club</h2><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>Selamat Datang di Ekstrakulikuler IT Club</p><p>&lt;xmp&gt;&lt;h1&gt;hahahahahahahaha&lt;/h1&gt;&lt;/xmp&gt;</p><p>&nbsp;</p>', 'admin-202103231746-0.png', 'cyber-security', '200', '2021-05-20 05:18:56', '2021-03-23 10:46:05', '2021-05-20 05:18:56'),
(6, 1, 'Membuat Kue', NULL, NULL, 'Membuat-Kue', '100', '2021-03-24 04:53:35', '2021-03-24 04:53:09', '2021-03-24 04:53:35'),
(7, 1, 'awdwd', NULL, NULL, 'awdwd', '100', '2021-03-24 04:54:12', '2021-03-24 04:54:09', '2021-03-24 04:54:12'),
(8, 1, 'awdwd', NULL, NULL, 'awdwd', '100', '2021-03-24 04:54:37', '2021-03-24 04:54:31', '2021-03-24 04:54:37'),
(9, 2, 'Penggunaan Database pada website dinamic', NULL, NULL, 'Penggunaan-Database-pada-website-dinamic', '400', NULL, '2021-03-24 05:47:30', '2021-03-24 07:16:15'),
(10, 1, 'Webinar Dunia Kerja&Kuliah', '<p>Webinar hari ini kita akan membahasa topik tentang dunia kerja dan kuliah, pemateri nya adalah alumni IT Club yaitu kang rival dan kang Yusuf yang insyallah ak ….</p>', 'images/article/admin-202105211514-0.png', 'webinar-dunia-kerjakuliah', '200', NULL, '2021-04-11 15:33:33', '2021-05-21 08:20:36'),
(11, 1, 'CPD 2019/2020', '<p>Webinar hari ini kita akan membahas topik tentang dunia kerja dan kuliah, pemateri nya adalah alumni IT Club yaitu kang rival dan kang Yusuf yang insyallah akan memberikan ilmu nya sebaik mungkin kepada teman-teman semua agar siap di dunia kerja dan perkuliahan agar tidak kaget pada saat lulus nanti, banyak materi yang didapatkan pada saat seminar. Seminar ini di adakan karena masih banyaknya siswa/siswi SMK yang masih bingung arah untuk menentukan pilihannya setelah lulus, apakah harus bekerja, harus berkuliah atau bahkan harus kuliah sambil kerja, mana sih pilihan terbaik yang harus diambil? agar tidak bingung maka kita datangkan para narasumber yang tentunya bisa membuat anak-anak IT Club menjadi paham mana tujuan yang harus diambil nanti ketika lulus. Kesimpulan dari seminar hari ini adalah kita boleh bekerja tapi jangan lupakan cita-cita untuk berkuliah, karena kuliah sangatlah penting untuk nanti prospek kerja, agar bisa mendapatkan jenjang karir yang lebih baik lagi, \"Investasi terbaik adalah Ilmu\".</p>', 'images/article/admin-202105211517-0.png', 'cpd-20192020', '200', NULL, '2021-05-21 08:17:10', '2021-05-21 08:19:00'),
(12, 1, 'Ujian Sertifikasi', '<p>Webinar hari ini kita akan membahasa topik tentang dunia kerja dan kuliah, pemateri nya adalah alumni IT Club yaitu kang rival dan kang Yusuf yang insyallah ak ….</p>', 'images/article/admin-202105211522-0.png', 'ujian-sertifikasi', '200', NULL, '2021-05-21 08:22:41', '2021-05-21 08:24:35'),
(13, 1, 'Sertijab 2019-2020', '<p>Ekstrakurikuler IT Club melaksanakan Serah Terima Jabatan (Sertijab) Pengurus Organisasi Mahasiswa periode 2019 yang dilaksanakan pada Sabtu, 26 Januari 2019 di ruang kelas RC.1.1. Sertijab dibuka dengan sambutan oleh pembimbing yaitu Bapak Herdian Nuryansyah Penandatangan sertijab diwakili oleh Ketua …...</p>', 'images/article/admin-202105211526-0.png', 'sertijab-2019-2020', '200', NULL, '2021-05-21 08:26:44', '2021-05-21 08:27:09'),
(14, 1, 'Perkenalan Ekskul IT Club', '<p>Ekstrakurikuler IT Club melaksanakan Serah Terima Jabatan (Sertijab) Pengurus Organisasi Mahasiswa periode 2019 yang dilaksanakan pada Sabtu, 26 Januari 2019 di ruang kelas RC.1.1. Sertijab dibuka dengan sambutan oleh pembimbing yaitu Bapak Herdian Nuryansyah Penandatangan sertijab diwakili oleh Ketua …...</p>', 'images/article/admin-202105211529-0.png', 'perkenalan-ekskul-it-club', '200', NULL, '2021-05-21 08:29:41', '2021-05-21 08:29:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_category`
--

INSERT INTO `blog_category` (`blog_id`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 1, '2021-03-24 04:16:15', '2021-03-24 04:16:15'),
(4, 2, '2021-03-24 04:16:08', '2021-03-24 04:16:08'),
(4, 3, '2021-03-24 04:16:22', '2021-03-24 04:16:22'),
(4, 4, '2021-03-24 04:16:18', '2021-03-24 04:16:18'),
(4, 5, '2021-03-24 04:16:20', '2021-03-24 04:16:20'),
(4, 10, '2021-03-24 04:16:25', '2021-03-24 04:16:25'),
(4, 11, '2021-03-24 04:16:29', '2021-03-24 04:16:29'),
(9, 1, '2021-03-24 12:47:30', NULL),
(9, 2, '2021-03-24 12:47:30', NULL),
(10, 1, '2021-04-11 15:33:33', NULL),
(10, 2, '2021-04-11 15:33:33', NULL),
(10, 3, '2021-04-11 15:33:33', NULL),
(10, 4, '2021-04-11 15:33:33', NULL),
(10, 5, '2021-04-11 15:33:33', NULL),
(10, 6, '2021-04-11 15:33:33', NULL),
(11, 3, '2021-05-21 08:17:10', NULL),
(11, 5, '2021-05-21 08:17:10', NULL),
(11, 9, '2021-05-21 08:17:10', NULL),
(12, 1, '2021-05-21 08:22:42', NULL),
(12, 3, '2021-05-21 08:22:42', NULL),
(12, 5, '2021-05-21 08:22:42', NULL),
(12, 9, '2021-05-21 08:22:42', NULL),
(13, 1, '2021-05-21 08:26:45', NULL),
(13, 3, '2021-05-21 08:26:45', NULL),
(13, 5, '2021-05-21 08:26:45', NULL),
(13, 9, '2021-05-21 08:26:45', NULL),
(14, 1, '2021-05-21 08:29:41', NULL),
(14, 3, '2021-05-21 08:29:41', NULL),
(14, 5, '2021-05-21 08:29:41', NULL),
(14, 9, '2021-05-21 08:29:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_suspended`
--

CREATE TABLE `blog_suspended` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspended` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_suspended`
--

INSERT INTO `blog_suspended` (`id`, `blog_id`, `description`, `suspended`, `created_at`, `updated_at`) VALUES
(9, 9, 'Menggunakan kata kasar, article terpaksa di block. Silahkan hubungi admin jika ada keluhan!!', NULL, '2021-03-24 07:16:15', '2021-03-24 07:16:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 1, NULL, '2021-03-23 17:05:03', NULL),
(2, 'Website', 1, NULL, '2021-03-23 17:05:04', NULL),
(3, 'Sekolah', 1, NULL, '2021-03-23 17:05:05', NULL),
(4, 'Informasi', 1, NULL, '2021-03-23 17:05:06', NULL),
(5, 'IT', 1, NULL, '2021-03-23 17:05:07', NULL),
(6, '2021', 1, NULL, '2021-03-23 17:05:07', NULL),
(7, '2020', 1, NULL, '2021-03-23 17:05:07', NULL),
(8, 'Kesehatan', 1, NULL, '2021-03-23 17:05:08', NULL),
(9, 'Esktrakuikuler', 1, NULL, '2021-03-23 17:05:08', NULL),
(10, 'Networking', 1, NULL, '2021-03-23 17:05:58', NULL),
(11, 'Programming', 1, NULL, '2021-03-23 17:06:04', NULL),
(12, 'Multimedia', 1, NULL, '2021-03-23 17:06:13', NULL),
(13, 'Internet of Things', 1, NULL, '2021-03-23 17:06:23', NULL),
(14, 'First', 1, NULL, '2021-03-23 17:06:46', NULL),
(15, 'Coding', 1, NULL, '2021-04-10 20:05:26', '2021-04-10 20:05:26'),
(16, 'PHP', 1, NULL, '2021-04-10 20:05:31', '2021-04-10 20:05:31'),
(17, 'Javascript', 1, NULL, '2021-04-10 20:05:36', '2021-04-10 20:05:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `content`, `image`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Networking', 'Divisi Programming adalah suatu satu divisi yang ada IT CLUB yeng mempelajari tentang ilmu Jaringan. Buat teman-teman yang jurusan TKJ (Teknik Komputer Jaringan) wajib banget nih masuk Divisi Networking, karena akan sangat nyambung sekali nanti dengan materi TKJ, dalam Divisi Networking, kita akan mempelajari tentang materi-materi jaringan lebih luas lagi agar teman-teman semua lebih siap nanti di dunia kerja. Keuntungan bergabung di Divisi Networking ialah kita bisa membuat sebuah server internet yang dimana nanti akan di implementasikan di dunia kerja, so intinya nanti teman-teman akan diarahkan agar bisa menjadi seorang IT support atau Network Administrator yang handal', 'images/division/2j4FnW9SdxeB80JA9g0i1LWSYObXHXywyGJYHGqD.png', 'networking', NULL, '2021-04-08 20:37:45', '2021-05-20 07:18:49'),
(2, 'Programming', '<p>Divisi Programming adalah suatu satu divisi yang ada IT CLUB yeng mempelajari tentang ilmu pemograman. Nah, programming itu sendiri berasal dari kata program. Program adalah sebuah urutan logika yang digunakan untuk menghasilkan keluaran tertentu yand disatukan menjadi sebuah sistem utuh yang disebut aplikasi. Dalam Divisi programming, kita akan berkutak pada script-script atau source code maupun bahasi pemograman. Keuntungan bergabung di Divisi Promgramming ialah kita bisa membuat suatu website sendiri, juga mengetahui bahasa pemograman agar bisa menjadi seorang programer yand handal./p>', 'images/division/7WUy28SXa3kv2PQTOPrj7MmgH2doMMnNyVCAHlLU.png', 'programming', NULL, '2021-04-09 22:55:34', '2021-05-20 07:19:53'),
(3, 'Programming', '<p>programming</p>', 'images/division/Dmn7Tm6VcPnaNhP7EXGUyYNFDaDh8lEkC5LOLegt.png', 'programming', '2021-04-09 22:55:59', '2021-04-09 22:55:35', '2021-04-09 22:55:59'),
(4, 'Programming', '<p>programming</p>', 'images/division/wTMqLJkcm1VbAcgNIX3NiwHNAnNXzLxRYrAH7Tz6.png', 'programming', '2021-04-09 22:55:57', '2021-04-09 22:55:35', '2021-04-09 22:55:57'),
(5, 'Programming', '<p>programming</p>', 'images/division/sBmiBSUW3L6ysLqkNaDZu8xvSr1KmADuWMBSJ190.png', 'programming', '2021-04-09 22:55:55', '2021-04-09 22:55:35', '2021-04-09 22:55:55'),
(6, 'Multimedia', '<p>programming</p>', 'images/division/AGBjIEo8EL2124zVsSryIkV1Irl1X1N49VJUqb5y.png', 'multimedia', '2021-05-20 07:20:11', '2021-04-09 22:56:20', '2021-05-20 07:20:11'),
(7, 'Multimedia', '<p>Divisi Programming adalah suatu satu divisi yang ada IT CLUB yeng mempelajari tentang desain, perfilman dan masih banyak lagi. Divisi Multimedia adalah suatu sarana (media) yand didalamnya terdapat perpaduan materi seperti Design Graphics, Design 3D, Design Characther, UI/UX, Editing video, dan Games 2D. keuntungan bergabung di Divisi Multimedia ialah kita bisa menjadi seorang desainer, editor, lalu kiga juga bisa terjun di dunia perfilman. Dan satu hal lagi, dalam mempelajari multimedia kita bisa membuka lapangan kerja sendiri. So buat teman-teman yang tertarik di bidang Desain, Editing Video dan Pembuatan Game langsung sajah join ke Divisi Multimedia yah.</p>', 'images/division/ANSDoaPC9ww4OJid9sqNcJNDZbKDuu7RDQgNvUKq.png', 'multimedia', NULL, '2021-05-20 07:21:21', '2021-05-20 07:21:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `division_mentor`
--

CREATE TABLE `division_mentor` (
  `division_id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `division_mentor`
--

INSERT INTO `division_mentor` (`division_id`, `mentor_id`, `created_at`, `updated_at`) VALUES
(2, 2, '2021-05-25 14:27:14', NULL),
(7, 2, '2021-05-25 14:27:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `exception_error`
--

CREATE TABLE `exception_error` (
  `id` bigint UNSIGNED NOT NULL,
  `error_code` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exception_error`
--

INSERT INTO `exception_error` (`id`, `error_code`, `title`, `description`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, '200', 'Success', NULL, NULL, '2021-03-26 12:44:09', NULL),
(2, '300', '300 Error', 'hehehe', 'drawkit-full-stack-man-colour.svg', '2021-03-26 12:44:24', '2021-03-26 20:34:05'),
(3, '403', 'Forbidden', 'Maaf, anda tidak diizinkan untuk mengakses halaman ini! Maaf, halaman yang anda minta tidak ada! coba lagi atau hubungi kami melalui support@itclub.com', 'drawkit-mobile-article-colour.svg', '2021-03-26 12:44:35', '2021-03-27 10:02:41'),
(4, '404', '404 Not Found', 'Maaf, halaman yang anda minta tidak ada! coba lagi atau hubungi kami melalui support@itclub.com', 'drawkit-nature-man-colour.svg', '2021-03-26 12:44:50', '2021-03-27 09:51:32'),
(5, '500', 'Internal Server Error', NULL, 'revenue-graph-colour.svg', '2021-03-26 12:45:04', '2021-03-26 12:58:00'),
(7, '405', '405 Invalid Token', 'Token and Email is Invalid! Please try again or call a administrator.', '202103280423-png', '2021-03-27 21:23:27', NULL),
(8, '205', '205 Success', 'Activation completed! You can login now. Welcome to IT Club SMKN 5 Bandung', '202103280424-png', '2021-03-27 21:24:18', NULL),
(9, '409', '409 Expired', 'Token is expired! Try again.', '202103280429-jpg', '2021-03-27 21:29:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `image`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ujian Sertifikasi, 18 Juli 2018', 'images/gallery/9AZOot3CvlJnkzMVKGaXLpg4sJWrC5rDTiBVlZN2.jpg', 'ujian-sertifikasi-18-juli-2018', '2021-05-20 07:41:38', '2021-05-20 07:41:38', NULL),
(3, 'Pembekalan Dunia Kerja, 8 Mei 2019', 'images/gallery/GetHHPnGBxivlGEE7fK6e0ExiWNCPyJ1rASFGWkq.png', 'pembekalan-dunia-kerja-8-mei-2019', '2021-05-20 07:45:59', '2021-05-20 07:45:59', NULL),
(4, 'Sertijab 2019-2020, 19 Juni 2019', 'images/gallery/jgsekmPpCECpUeGQsx2BK2w7ZREK99ssH90jtnK9.png', 'sertijab-2019-2020-19-juni-2019', '2021-05-20 07:46:33', '2021-05-20 07:46:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_division`
--

CREATE TABLE `image_division` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `image_division`
--

INSERT INTO `image_division` (`id`, `division_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'images/ImageDivision/4kMzp13XywdEcY1kHYkXgLYmupds5ByAzZD89x2e.png', '2021-05-10 04:59:13', '2021-05-20 07:21:49', '2021-05-20 07:21:49'),
(2, 1, 'images/ImageDivision/u00gWWVO791SNzd2UebU6pDpOYfgDrGXfqJuogqR.png', '2021-05-20 06:46:33', '2021-05-20 06:46:33', NULL),
(3, 1, 'images/ImageDivision/Qg05Dvg6BDjfs0Ld4SNmroJZwTKwVCvmnfs8TeRb.png', '2021-05-20 06:47:13', '2021-05-20 07:26:30', '2021-05-20 07:26:30'),
(4, 1, 'images/ImageDivision/KRgUcgVFOICkwU7JG8shvk7XiYRa0f2LmFpF3LM7.png', '2021-05-20 06:48:05', '2021-05-20 06:48:05', NULL),
(5, 2, 'images/ImageDivision/JZdBNm3giPpbRcbMvC0k6ayBA5lQIbGyCEkUOMcH.png', '2021-05-20 07:22:27', '2021-05-20 07:22:27', NULL),
(6, 2, 'images/ImageDivision/gwNFBhSLpKxX5SpFkJFM04nbuzuNhWN4ELRx1Gl9.png', '2021-05-20 07:22:42', '2021-05-20 07:22:42', NULL),
(7, 2, 'images/ImageDivision/h2OheOpBtR4HCXxBCMfKgFKDTroNbvE3MVn6ngi8.png', '2021-05-20 07:23:15', '2021-05-20 07:23:15', NULL),
(8, 2, 'images/ImageDivision/LQXHW0EV4feBLRr7ZU5FZfGKfNUnIkparz44cHxM.png', '2021-05-20 07:23:26', '2021-05-20 07:23:26', NULL),
(9, 2, 'images/ImageDivision/PguA4oeKilNNeA1BiGq7xVKgMHVTtL5BYkaSqTmT.png', '2021-05-20 07:24:12', '2021-05-20 07:24:12', NULL),
(10, 2, 'images/ImageDivision/g29zFtCp0uxgSN5aRLNkrLhTGWwL9Z0zdm5LTRN4.png', '2021-05-20 07:24:31', '2021-05-20 07:24:31', NULL),
(11, 2, 'images/ImageDivision/59FHfuYy3OpsXNJTX4zV8jkNEHFfnx5h5iEgp0Bo.png', '2021-05-20 07:25:33', '2021-05-20 07:25:33', NULL),
(12, 1, 'images/ImageDivision/xmBUpHufk4sgV0krOWRUqjfPAflGXDOjsQcxeoRk.png', '2021-05-20 07:27:09', '2021-05-20 07:27:09', NULL),
(13, 7, 'images/ImageDivision/oRwNV1AeY3I1EKJXLjNGIWSaeOBrUupxBlK2UyyO.png', '2021-05-20 07:27:41', '2021-05-20 07:27:41', NULL),
(14, 7, 'images/ImageDivision/mEl1mmMeRHHG0PO6AbRWIQYHQo5V0KC8LiS3t30o.png', '2021-05-20 07:27:51', '2021-05-20 07:27:51', NULL),
(15, 7, 'images/ImageDivision/FFyITBVDOgyhlDlUAULrIo44ZFGi4oRgo20DJ9jw.png', '2021-05-20 07:28:15', '2021-05-20 07:28:15', NULL),
(16, 7, 'images/ImageDivision/anVWks4It1XvEdNTT2BM8ehFcssKsYOQS5GvGf7U.png', '2021-05-20 07:28:22', '2021-05-20 07:28:22', NULL),
(17, 7, 'images/ImageDivision/6KBHdvj6L09Diogz0RoqRBqNeMnIGc9R4Fxii1sD.png', '2021-05-20 07:28:44', '2021-05-20 07:28:44', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_gallery`
--

CREATE TABLE `image_gallery` (
  `id` bigint UNSIGNED NOT NULL,
  `gallery_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `image_gallery`
--

INSERT INTO `image_gallery` (`id`, `gallery_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'images/ImageGalleries/CiDcY9gSyxzdNTsDkXOdTDfSpJwor1ObTeXiWsZH.jpg', '2021-05-21 11:20:16', '2021-05-21 11:20:16', NULL),
(2, 1, 'images/ImageGalleries/1pLXx1IkuieVXx5G2FztSPXZN5C90RAr7RVNpaw4.jpg', '2021-05-21 11:20:43', '2021-05-21 11:20:43', NULL),
(3, 1, 'images/ImageGalleries/6nY40BlCdlX7yaiIpAgkDBcNzw68LHoUBaBg0tRI.jpg', '2021-05-21 11:20:52', '2021-05-21 11:20:52', NULL),
(4, 1, 'images/ImageGalleries/Yl7t6yf2iAZrDX6a0uJQLhtRwy1YnwShLXXUDWts.jpg', '2021-05-21 11:21:07', '2021-05-21 11:21:07', NULL),
(5, 1, 'images/ImageGalleries/gyNOe4VjWGxM66t3faPOjOzp61YKz9cYfNrZ3zSG.jpg', '2021-05-21 11:21:40', '2021-05-21 11:21:40', NULL),
(6, 1, 'images/ImageGalleries/498zyJ3rnbwpCoTBQIKWOijIRSEJlN0ihrU7kT3W.jpg', '2021-05-21 11:21:42', '2021-05-21 11:21:49', '2021-05-21 11:21:49'),
(7, 1, 'images/ImageGalleries/cHVwM1TuTKyJDBhtJNmbBgwqgV9WKXFLS71fDVHe.jpg', '2021-05-21 11:22:01', '2021-05-21 11:22:01', NULL),
(8, 1, 'images/ImageGalleries/q9BjiCLiBzH1sAAsVvpOd5jcb3krhIe8kg5baBVp.jpg', '2021-05-21 11:22:10', '2021-05-21 11:22:10', NULL),
(9, 1, 'images/ImageGalleries/Vc8tX3eNBpHpr9Rr4grA4CQYGh7Yma9h6M2RmKDw.jpg', '2021-05-21 11:22:20', '2021-05-21 11:22:20', NULL),
(10, 1, 'images/ImageGalleries/E7NsdURaZIjK8EHjb5z46IwyH6wWXgfGXw4ayNG4.jpg', '2021-05-21 11:22:33', '2021-05-21 11:22:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_score`
--

CREATE TABLE `list_score` (
  `id` bigint UNSIGNED NOT NULL,
  `test_id` int NOT NULL,
  `user_id` int NOT NULL,
  `score` int NOT NULL,
  `created_by` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `list_score`
--

INSERT INTO `list_score` (`id`, `test_id`, `user_id`, `score`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 4, 1, 90, 1, '2021-04-19 09:47:14', '2021-04-19 09:17:56', '2021-04-19 09:47:14'),
(5, 4, 1, 90, 1, '2021-04-19 09:47:25', '2021-04-19 09:47:14', '2021-04-19 09:47:25'),
(6, 4, 1, 87, 1, '2021-04-19 09:51:20', '2021-04-19 09:47:25', '2021-04-19 09:51:20'),
(7, 4, 1, 77, 1, '2021-04-19 14:59:09', '2021-04-19 09:51:20', '2021-04-19 14:59:09'),
(8, 5, 1, 89, 1, NULL, '2021-04-19 14:59:09', '2021-04-19 14:59:09'),
(9, 4, 1, 80, 1, NULL, '2021-04-19 15:00:14', '2021-04-19 15:00:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_test`
--

CREATE TABLE `list_test` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `list_test`
--

INSERT INTO `list_test` (`id`, `division_id`, `name`, `deskripsi`, `value`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'customer', 'dawdawdwad', '34', 1, '2021-04-16 15:36:43', '2021-04-16 15:18:49', '2021-04-16 15:36:43'),
(2, 2, 'Vaksin Mati', 'awdwadawdw', '55', 1, '2021-04-16 15:36:47', '2021-04-16 15:25:50', '2021-04-16 15:36:47'),
(3, 1, 'Vaksin Mati', 'wdawdawd', '66', 1, '2021-04-18 03:31:51', '2021-04-16 15:41:08', '2021-04-18 03:31:51'),
(4, 1, 'Ngoding', 'Member diberi tugas untuk membuat suatu program', '68', 1, NULL, '2021-04-16 15:42:40', '2021-04-19 02:51:29'),
(5, 1, 'Konfigurasi DNS Server', 'Siswa dapat meninstall package package server dan konfiurasi DNS Server untuk layanan server sys admin', '75', 1, NULL, '2021-04-19 14:58:43', '2021-04-19 14:58:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `majors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_year` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `division_id`, `user_id`, `name`, `class`, `image`, `position`, `majors`, `entry_year`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 29, 'ahmad dahlan', '12', 'images/member/QsI4d7NSHfKBC4vQ5egoqploaP3LvlaJlj7W55N0.png', 'Anggota', 'TKJ', '2021-04-09', 1, '2021-04-08 20:40:20', '2021-04-08 20:43:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_reg`
--

CREATE TABLE `member_reg` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `division_id` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `majors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_year` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member_reg`
--

INSERT INTO `member_reg` (`id`, `user_id`, `division_id`, `email`, `name`, `class`, `majors`, `position`, `status`, `image`, `type`, `entry_year`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 29, 2, 'user1@gmail.com', 'rizkanfirmansyah', NULL, NULL, NULL, '0', 'images/member_reg/user1-202104110414-0.png', 'lainnya', NULL, '2021-04-18 06:42:30', '2021-04-10 21:14:25', '2021-04-18 06:42:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mentors`
--

CREATE TABLE `mentors` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sertifikasi` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profession` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_by` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mentors`
--

INSERT INTO `mentors` (`id`, `name`, `image`, `whatsapp`, `sertifikasi`, `birth_date`, `gender`, `instagram`, `profession`, `slug`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Teguh', 'images/mentor/ZnJaxh5pTlWTkbiGPb2bIOrdIZC6lADIJrPDmyd8.png', NULL, 'hmmm', NULL, 'laki-Laki', 'hmm', 'Test', 'teguh', 1, '2021-05-25 14:27:14', '2021-05-25 15:15:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` bigint UNSIGNED NOT NULL,
  `section_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('static','dynamic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `section_id`, `name`, `url`, `icon`, `type`, `comments`, `status`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dashboard', NULL, 'fas fa-fire', 'dynamic', 'Menu untuk menampung rincian website', '1', 1, NULL, '2021-03-18 04:31:28', '2021-03-18 18:40:09'),
(2, 3, 'Data Menu', NULL, 'fas fa-columns', 'dynamic', 'Menu yang menyimpan preferences web', '1', 1, NULL, '2021-03-18 04:16:01', '2021-05-20 06:10:26'),
(3, 3, 'Data User', '/master/user', 'fas fa-user', 'static', 'Data untuk menampung user', '1', 1, NULL, '2021-03-17 22:05:48', '2021-03-19 05:05:26'),
(4, 3, 'Data User', NULL, 'fas fa-user', 'dynamic', 'Data untuk menampung user', '1', 1, '2021-04-05 21:35:48', '2021-03-17 22:41:46', '2021-04-05 21:35:48'),
(5, 6, 'Menu Baru', '/menu/baru', 'fas fa-clipboard-list', 'dynamic', 'contoh menu dynamic oke!', '1', 1, NULL, '2021-03-18 06:56:26', '2021-04-04 19:29:24'),
(6, 3, 'Akun Level', '/master/role', 'fas fa-user-cog', 'static', 'menu untuk menyimpan role', '1', 1, NULL, '2021-03-19 07:13:46', '2021-05-20 06:00:36'),
(7, 6, 'Menu Access', NULL, 'fas fa-server', 'dynamic', 'Menu yang berisi pengaturan untuk mengatur akses menu pada user', '1', 1, NULL, '2021-03-20 03:06:48', '2021-03-20 03:06:48'),
(8, 7, 'Berita', NULL, 'fas fa-newspaper', 'dynamic', 'untuk menyimpan data artikel itclub', '1', 1, NULL, '2021-03-23 07:32:17', '2021-05-20 06:00:55'),
(9, 6, 'Error', NULL, 'fas fa-minus-circle', 'dynamic', 'menampung data error page', '1', 1, NULL, '2021-03-26 06:08:57', '2021-04-05 21:35:57'),
(10, 3, 'Profiles', NULL, 'fas fa-users', 'dynamic', 'Menu untuk menampung data mentor, alumni, member', '1', 1, NULL, '2021-03-28 13:53:30', '2021-05-25 07:44:56'),
(11, 3, 'Category', '/master/category', 'fas fa-clipboard-list', 'static', 'Menu untuk menampung category', '1', 1, NULL, '2021-03-28 13:55:07', '2021-03-28 14:27:15'),
(12, 3, 'Prestasi', '/master/prestation', 'fas fa-certificate', 'static', NULL, '1', 1, NULL, '2021-03-28 14:09:07', '2021-05-20 06:02:39'),
(13, 3, 'Divisi', NULL, 'fas fa-image', 'dynamic', NULL, '1', 1, NULL, '2021-04-04 09:16:48', '2021-05-20 06:02:53'),
(16, 6, 'Data Terbuang', NULL, 'fas fa-trash', 'dynamic', 'Menu untuk menampung data data sampah', '1', 1, NULL, '2021-04-04 16:24:19', '2021-05-20 06:03:25'),
(17, 14, 'Registration', '/members/registration', 'fas fa fa-fw fa-id-badge', 'static', 'menyimpan data registrasi member', '1', 1, NULL, '2021-04-10 20:43:35', '2021-04-10 20:52:26'),
(18, 14, 'Jadwal', '/members/schedule', 'fas fa-calendar-alt', 'static', 'Menu untuk mengatur dan mencatat jadwal', '1', 1, NULL, '2021-04-11 15:57:17', '2021-05-20 06:06:19'),
(19, 14, 'Persentase', NULL, 'fas fa-fw fa-desktop', 'dynamic', 'Menu untuk menampung presentase anggota/member', '1', 1, NULL, '2021-04-14 20:40:09', '2021-05-20 06:07:59'),
(20, 7, 'Petunjuk', '/features/user_guides', 'fas fa-book-open', 'static', 'Menampung tatacara penggunaan website', '1', 1, NULL, '2021-04-20 08:27:49', '2021-05-20 06:08:31'),
(21, 3, 'Galeri', NULL, 'fas fa-images', 'dynamic', 'Menu untuk menampung data galleries', '1', 1, NULL, '2021-05-10 04:45:50', '2021-05-20 07:32:14'),
(22, 3, 'Mentors', NULL, 'fas fa-chalkboard-teacher', 'dynamic', NULL, '1', 1, '2021-05-25 07:45:29', '2021-05-25 07:24:23', '2021-05-25 07:45:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_17_071616_create_members_table', 2),
(5, '2021_03_17_071735_create_divisions_table', 2),
(6, '2021_03_17_071802_create_prestations_table', 2),
(7, '2021_03_17_071830_create_blogs_table', 2),
(8, '2021_03_17_072021_create_galleries_table', 2),
(9, '2021_03_17_072057_create_categories_table', 2),
(10, '2021_03_17_072337_create_roles_table', 2),
(11, '2021_03_17_072454_create_alumnies_table', 2),
(12, '2021_03_17_081430_create_blog_category_table', 2),
(13, '2021_03_17_151502_master_section', 2),
(14, '2021_03_18_034330_master_menu', 3),
(15, '2021_03_18_103911_master_submenu', 4),
(16, '2021_03_18_071709_create_image_division_table', 5),
(17, '2021_03_18_072103_create_image_gallery_table', 5),
(18, '2021_03_20_150904_set_access_section', 5),
(19, '2021_03_20_150922_set_access_menu', 5),
(20, '2021_03_20_150934_set_access_submenu', 5),
(21, '2021_03_21_031332_access_user_section', 6),
(22, '2021_03_21_031342_access_user_menu', 6),
(23, '2021_03_21_031348_access_user_submenu', 6),
(24, '2021_03_21_155449_create_user_profile', 7),
(25, '2021_03_24_114831_suspended_blog_list', 8),
(26, '2021_03_26_123845_table_error_exception', 9),
(27, '2021_03_27_101205_table_activities_user', 10),
(28, '2021_03_28_013728_create_users_activation', 11),
(29, '2021_04_10_045627_create_register_member', 12),
(30, '2021_04_11_225926_create_schedule', 13),
(31, '2021_04_15_092729_create_list_test', 14),
(32, '2021_04_15_092733_create_list_score', 14),
(33, '2021_04_20_205720_create_user_guides', 15),
(34, '2021_04_20_205737_create_user_guides_decs', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestations`
--

CREATE TABLE `prestations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prestations`
--

INSERT INTO `prestations` (`id`, `name`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'peraih medai emas', '<p>dawdawdwadwa</p>', 'images/prestation/9PNWJVX4o6BjhyjtHUzUi2YulksAHVfAg6CVJwom.jpg', '2021-03-28 14:19:49', '2021-03-28 14:25:44', '2021-03-28 14:25:44'),
(2, 'Juara 1 Nasional Mikrotik', '<p>Hello guys disini ada Fajri dan Riezkan dari divisi networking yang mampu memberikan prestasi yg luar biasa.</p>', 'images/prestation/qsvwkrH4ewBCbqBWIcCLTzvJKu9CBoVouCeSA8Ha.png', '2021-05-20 07:14:37', '2021-05-20 07:14:37', NULL),
(3, 'Juara 1 Nasional Mikrotik', '<p>Hello guys disini ada Fajri dan Riezkan dari divisi networking yang mampu memberikan prestasi yg luar biasa.</p>', 'images/prestation/f4QzpcPIokC7ZHIRNYeidZx3HEkw690zDiEBBT3x.png', '2021-05-20 07:15:07', '2021-05-20 07:15:07', NULL),
(4, 'Juara 1 Nasional Mikrotik', '<p>Hello guys disini ada Fajri dan Riezkan dari divisi networking yang mampu memberikan prestasi yg luar biasa.</p>', 'images/prestation/f1EFTVrE9Mt7SuPrmgnkdggnNn0QWot1hWaKp3Wp.png', '2021-05-20 07:15:43', '2021-05-20 07:15:43', NULL),
(5, 'Juara 1 Nasional Mikrotik', '<p>Hello guys disini ada Fajri dan Riezkan dari divisi networking yang mampu memberikan prestasi yg luar biasa.</p>', 'images/prestation/zzD9N0sJbPGkCHdmyERZEiHYzE9k7uQTWna5foEh.jpg', '2021-05-20 07:16:10', '2021-05-20 07:16:27', '2021-05-20 07:16:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `id_role` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `id_role`, `name`, `created_at`, `deleted_at`, `updated_at`, `created_by`) VALUES
(1, '1', 'Master', '2021-03-19 13:22:20', NULL, '2021-04-08 01:35:16', 1),
(2, '2', 'Admin', '2021-03-19 20:59:49', NULL, '2021-04-08 01:35:22', 1),
(3, '3', 'Organizer', '2021-03-19 21:00:51', NULL, '2021-04-08 01:37:16', 1),
(4, '4', 'Member', '2021-04-08 01:37:28', NULL, '2021-04-11 03:46:19', 1),
(5, '5', 'User', '2021-04-08 01:37:38', NULL, '2021-04-11 03:46:21', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint UNSIGNED NOT NULL,
  `division` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `come_in` time NOT NULL,
  `come_out` time NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedule`
--

INSERT INTO `schedule` (`id`, `division`, `date`, `come_in`, `come_out`, `desc`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '2021-04-17', '09:43:00', '03:43:00', 'Jangan telat oke', 1, NULL, '2021-04-12 02:44:23', '2021-04-12 23:13:08'),
(2, 'all', '2021-12-12', '00:12:00', '00:12:00', NULL, 1, '2021-04-12 04:42:59', '2021-04-12 04:31:11', '2021-04-12 04:42:59'),
(3, '6', '2021-04-13', '00:12:00', '00:12:00', NULL, 1, '2021-04-12 04:42:59', '2021-04-12 04:32:40', '2021-04-12 04:42:59'),
(4, '2', '2021-04-17', '11:44:00', '04:44:00', NULL, 1, '2021-04-12 04:44:58', '2021-04-12 04:44:54', '2021-04-12 04:44:58'),
(5, '1', '2021-04-12', '09:43:00', '03:43:00', 'Jangan telat oke', 1, NULL, '2021-04-12 02:44:23', '2021-04-12 23:11:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_by` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `section`
--

INSERT INTO `section` (`id`, `name`, `comments`, `status`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Dashboard', 'Myeimpan data menyeluruh', 1, 1, NULL, '2021-03-17 16:16:35', '2021-04-04 12:14:20'),
(3, 'Master', 'Master yang berisi setting admin maintanance', 1, 1, NULL, '2021-03-17 19:33:22', '2021-03-18 11:49:49'),
(5, 'Data Akun', 'Section yang menyimpan data akun', 1, 1, NULL, '2021-03-17 20:18:31', '2021-04-04 19:23:06'),
(6, 'Setting', 'Section pengaturan oleh admin root / master', 1, 1, NULL, '2021-03-18 06:55:37', '2021-03-20 03:05:07'),
(7, 'Features', 'Berisi tentang fitur fitur yang bisa digunakan user', 1, 1, NULL, '2021-03-23 07:27:23', '2021-04-03 08:52:27'),
(10, 'Asal 2', 'Buat cuman asal', 1, 1, '2021-04-20 08:23:45', '2021-04-04 12:26:09', '2021-04-20 08:23:45'),
(13, 'Vaksin Mati', 'wadwadw', 1, 1, '2021-04-20 08:23:45', '2021-04-04 12:39:03', '2021-04-20 08:23:45'),
(14, 'Member', 'Berisi Modul Member dan Keanggotaan', 1, 1, NULL, '2021-04-10 20:41:27', '2021-04-10 20:41:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_access_menu`
--

CREATE TABLE `set_access_menu` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `set_access_menu`
--

INSERT INTO `set_access_menu` (`id`, `role_id`, `menu_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-03-20 16:08:05', NULL),
(2, 1, 2, 1, '2021-03-20 16:08:14', NULL),
(3, 1, 3, 1, '2021-03-21 04:06:26', NULL),
(4, 1, 6, 1, '2021-03-21 04:06:28', NULL),
(5, 1, 7, 1, '2021-03-21 04:06:31', NULL),
(6, 1, 8, 1, '2021-04-04 16:41:55', NULL),
(7, 6, 8, 1, '2021-04-08 01:39:48', NULL),
(8, 6, 1, 1, '2021-04-08 01:40:07', NULL),
(12, 4, 1, 1, '2021-04-11 03:47:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_access_section`
--

CREATE TABLE `set_access_section` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `section_id` int NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `set_access_section`
--

INSERT INTO `set_access_section` (`id`, `role_id`, `section_id`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 1, '2021-03-21 03:05:01', NULL),
(6, 1, 2, 1, '2021-03-21 11:34:56', NULL),
(7, 1, 6, 1, '2021-04-03 08:55:43', NULL),
(8, 1, 3, 1, '2021-04-04 16:28:46', NULL),
(12, 1, 7, 1, '2021-04-04 16:46:09', NULL),
(13, 6, 7, 1, '2021-04-08 01:39:36', NULL),
(14, 6, 2, 1, '2021-04-08 01:39:58', NULL),
(15, 1, 14, 1, '2021-04-11 03:44:05', NULL),
(19, 4, 2, 1, '2021-04-11 03:46:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_access_submenu`
--

CREATE TABLE `set_access_submenu` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `submenu_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `set_access_submenu`
--

INSERT INTO `set_access_submenu` (`id`, `role_id`, `submenu_id`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 1, '2021-03-21 04:06:34', NULL),
(5, 1, 2, 1, '2021-03-21 04:06:36', NULL),
(6, 1, 3, 1, '2021-03-21 04:06:38', NULL),
(7, 1, 4, 1, '2021-03-21 04:06:38', NULL),
(8, 1, 6, 1, '2021-03-21 04:06:40', NULL),
(9, 1, 7, 1, '2021-03-21 04:06:42', NULL),
(11, 6, 18, 1, '2021-04-08 01:40:14', NULL),
(12, 6, 8, 1, '2021-04-08 01:40:31', NULL),
(15, 4, 8, 1, '2021-04-11 03:47:09', NULL),
(16, 4, 18, 1, '2021-04-11 03:47:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id`, `menu_id`, `name`, `url`, `comments`, `status`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'section', '/master/preferences/section', 'Menampung data section web', '1', 1, NULL, '2021-03-18 04:03:36', '2021-03-20 03:14:34'),
(2, 2, 'menu', '/master/preferences/menu', 'Menampun data menu web', '1', 1, NULL, '2021-03-18 04:14:15', '2021-03-18 18:35:46'),
(3, 2, 'submenu', '/master/preferences/submenu', 'Menampun data submenu web', '1', 1, NULL, '2021-03-18 04:14:27', '2021-03-18 18:35:43'),
(4, 1, 'Dashboard Utama', '/dashboard/general/index', 'Menampung data index web', '1', 1, NULL, '2021-03-18 04:21:43', '2021-05-20 06:12:26'),
(5, 5, 'submenu baru', '/section/menu/submenu', 'ini adalah submenu baru', '1', 1, '2021-03-18 07:01:05', '2021-03-18 07:00:48', '2021-03-18 07:01:05'),
(6, 7, 'Level Pengguna', '/setting/menu/role', 'Berfungsi untuk mengatur menu pada role', '1', 1, NULL, '2021-03-20 03:10:32', '2021-05-20 06:34:13'),
(7, 7, 'Pengguna', '/setting/menu/user', 'Berfungsi untuk mengatur menu pada user', '1', 1, NULL, '2021-03-20 03:11:23', '2021-05-20 06:34:31'),
(8, 8, 'Berita', '/features/article/list_article', 'daftar artikel-artikel', '1', 1, NULL, '2021-03-23 07:33:08', '2021-05-20 06:18:46'),
(9, 9, 'Page', '/setting/error/page', 'Mengubah, menambah dan menghapus error page', '1', 1, NULL, '2021-03-26 06:57:57', '2021-03-26 06:57:57'),
(10, 10, 'Anggota', '/master/profiles/member', 'Daftar Member-member IT Club', '1', 1, NULL, '2021-03-28 13:57:06', '2021-05-25 07:43:21'),
(11, 10, 'Alumni', '/master/profiles/alumni', 'Daftar Alumni IT Club', '1', 1, NULL, '2021-03-28 13:58:00', '2021-05-25 07:42:53'),
(12, 13, 'Divisi', '/master/divisions/division', NULL, '1', 1, NULL, '2021-04-04 09:18:24', '2021-05-20 06:19:45'),
(13, 13, 'Icon Divisi', '/master/divisions/imagedivision', NULL, '1', 1, NULL, '2021-04-04 09:18:38', '2021-05-20 06:48:56'),
(15, 16, 'Section', '/setting/trash/section', 'Data sampah section', '1', 1, NULL, '2021-04-04 16:27:50', '2021-04-04 16:27:50'),
(16, 16, 'Menu', '/setting/trash/menu', 'Data sampah menu', '1', 1, NULL, '2021-04-04 16:28:02', '2021-04-04 16:28:02'),
(17, 16, 'Submenu', '/setting/trash/submenu', 'Data sampah submenu', '1', 1, NULL, '2021-04-04 16:28:14', '2021-04-04 16:28:14'),
(18, 1, 'User Dashboard', '/dashboard/user/index', 'Menampung data dan informasi user', '1', 1, NULL, '2021-04-05 22:02:15', '2021-04-05 22:02:15'),
(19, 19, 'Daftar Ujian', '/members/precentages/test', 'Submenu untuk menampung test test member', '1', 1, NULL, '2021-04-14 20:41:07', '2021-05-20 06:37:17'),
(20, 19, 'Daftar Nilai', '/members/precentages/score', 'Submenu untuk menampung nilai dari test test member', '1', 1, NULL, '2021-04-14 20:41:42', '2021-05-20 06:30:27'),
(21, 21, 'Galeri', '/master/galleries/gallery', 'Submenu untuk menampung data gallery', '1', 1, NULL, '2021-05-10 04:46:55', '2021-05-20 06:30:37'),
(22, 21, 'Foto Galeri', '/master/galleries/imagegallery', 'Submenu untuk menampung data images gallery', '1', 1, NULL, '2021-05-10 04:47:17', '2021-05-20 06:30:51'),
(23, 16, 'Pengguna', '/setting/trash/user', 'Submenu untuk menampung sampah data user', '1', 1, NULL, '2021-05-10 04:50:10', '2021-05-20 06:33:33'),
(24, 16, 'Divisi', '/setting/trash/division', 'Submenu untuk menampung sampah data division', '1', 1, NULL, '2021-05-10 04:50:27', '2021-05-20 08:31:01'),
(25, 16, 'Icon Divisi', '/setting/trash/imagedivision', 'Submenu untuk menampung sampah data image division', '1', 1, NULL, '2021-05-10 04:50:45', '2021-05-20 08:31:21'),
(26, 16, 'Prestasi', '/setting/trash/prestation', 'Submenu untuk menampung sampah data prestation', '1', 1, NULL, '2021-05-10 04:51:04', '2021-05-20 08:31:30'),
(27, 16, 'Anggota', '/setting/trash/member', 'Submenu untuk menampung sampah data member', '1', 1, NULL, '2021-05-10 04:51:21', '2021-05-20 08:31:36'),
(28, 16, 'Alumni', '/setting/trash/alumni', 'Submenu untuk menampung sampah data alumni', '1', 1, NULL, '2021-05-10 04:51:38', '2021-05-10 04:51:38'),
(29, 16, 'Galeri', '/setting/trash/gallery', 'Submenu untuk menampung sampah data gallery', '1', 1, NULL, '2021-05-10 04:51:52', '2021-05-20 08:30:45'),
(30, 16, 'Foto Galeri', '/setting/trash/imagegallery', 'Submenu untuk menampung sampah data image gallery', '1', 1, NULL, '2021-05-10 04:52:01', '2021-05-20 08:33:32'),
(31, 16, 'Category', '/setting/trash/categoty', 'Submenu untuk menampung sampah data category', '1', 1, NULL, '2021-05-10 04:52:18', '2021-05-10 04:52:18'),
(32, 16, 'Aktifitas', '/setting/trash/activity', 'Submenu untuk menampung sampah data activity', '1', 1, NULL, '2021-05-10 04:52:37', '2021-05-20 08:31:48'),
(33, 16, 'Jadwal', '/setting/trash/schedule', 'Submenu untuk menampung sampah data schedule', '1', 1, NULL, '2021-05-10 04:52:57', '2021-05-20 08:31:53'),
(34, 16, 'Ujian', '/setting/trash/test', 'Submenu untuk menampung sampah data exam', '1', 1, NULL, '2021-05-10 04:53:36', '2021-05-20 08:32:00'),
(35, 16, 'Nilai', '/setting/trash/score', 'Submenu untuk menampung sampah data exam score', '1', 1, NULL, '2021-05-10 04:53:56', '2021-05-20 08:32:05'),
(36, 10, 'Mentor', '/master/profiles/mentor', 'Submenu untuk menampung data mentor', '1', 1, NULL, '2021-05-25 05:08:46', '2021-05-25 07:43:46'),
(37, 16, 'Mentor', '/setting/trash/mentor', 'Submenu untuk menampung sampah data mentor', '1', 1, NULL, '2021-05-25 06:06:18', '2021-05-25 06:06:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', '2021-03-17 11:44:23', '$2y$10$33O.UEIdIKFScOUfuak6kuMgL185fkMnY57emAtZZqMbrjkGLn5hC', NULL, 1, '2021-03-17 03:58:06', '2021-03-23 05:34:45', NULL),
(2, 3, 'rizkan', 'rizkanitclub@gmail.com', '2021-03-24 12:46:10', '$2y$10$yQ.DbLq07ldnn8cw3iFezeHJPX/HRf5lreptXzfPGnfvVgpT15tui', NULL, 1, '2021-03-17 04:08:16', '2021-03-24 05:46:43', NULL),
(3, 1, 'firmansyah', 'rizkanfirmansyah9@gmail.com', '2021-03-17 13:40:54', '$2y$10$R5E7OAfpeI3dgiugmhsBA.7o9Z2/CheIlT6qN545owYuQRdzIBvze', NULL, 1, '2021-03-17 06:40:29', '2021-03-17 13:40:54', NULL),
(4, 3, 'customer', 'rizkanitclub111@gmail.com', NULL, '$2y$10$6rHggxqcjKF9wpJZ6Y5YH.1J9x2NwwzwAUSSSrlpv6H6AVyH5STAm', NULL, 1, '2021-03-20 00:39:17', '2021-03-20 01:45:09', '2021-03-20 01:45:09'),
(5, 1, 'Setting', 'anakbaik@mungkin.net', NULL, '$2y$10$Q7Cxs4LJ/Hklu8vBOY407Ofdh/A1gFnrsns3QEzXTRmFiYJ9085MO', NULL, 1, '2021-03-20 03:29:58', '2021-03-21 01:36:09', NULL),
(21, 1, 'rizkanfirmansyah', 'rizkan@gmail.com', NULL, '$2y$10$TnQ8mfbcIz3oqvJxg.oug./cl94XHUKGDBqXZVuxNSQA/EF7Rp72S', NULL, 1, '2021-03-22 23:47:18', '2021-03-28 11:14:43', NULL),
(22, 3, 'cobacoba', 'cobacoba@gmail.com', NULL, '$2y$10$jk7tsChAU9AbGKbapOKA3u0LBnnCe1.eVyS6nhMffTi/s12YJ.ktW', NULL, 1, '2021-03-27 04:42:29', '2021-03-27 07:05:12', '2021-03-27 07:05:12'),
(27, 3, 'nenes', 'nesyadelimar555@gmail.com', '2021-03-27 21:37:39', '$2y$10$tYo9H0.2O1I6IE4YbAKtguR6WPcbbhYOcJE6SFFcv.S/yZ6SI5mj.', NULL, 1, '2021-03-27 21:37:23', '2021-03-27 21:39:42', NULL),
(29, 4, 'user_rifki', 'user_rifki@itclub.com', '2021-04-18 06:39:09', '$2y$10$yQ.DbLq07ldnn8cw3iFezeHJPX/HRf5lreptXzfPGnfvVgpT15tui', NULL, 1, '2021-04-03 08:49:13', '2021-04-19 14:47:02', NULL),
(36, 5, 'username-contoh', 'username@email.it', '2021-04-15 00:11:45', '$2y$10$yQ.DbLq07ldnn8cw3iFezeHJPX/HRf5lreptXzfPGnfvVgpT15tui', NULL, 1, '2021-04-15 00:10:48', '2021-04-18 06:38:17', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_activation`
--

CREATE TABLE `users_activation` (
  `id` bigint UNSIGNED NOT NULL,
  `type` enum('activation','forgotpassword','blocked','message','unknown') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_activation`
--

INSERT INTO `users_activation` (`id`, `type`, `email`, `token`, `status`, `created_at`) VALUES
(11, 'activation', 'nesyadelimar555@gmail.com', 'bmVzeWFkZWxpbWFyNTU1QGdtYWlsLmNvbWl0Y2x1YnNta241YmFuZHVuZw==', 'activated', '2021-03-27 21:12:22'),
(13, 'activation', 'nesyadelimar555@gmail.com', 'bmVzeWFkZWxpbWFyNTU1QGdtYWlsLmNvbWl0Y2x1YnNta241YmFuZHVuZzYz', 'activated', '2021-03-27 21:37:23'),
(14, 'forgotpassword', 'nesyadelimar555@gmail.com', 'bmVzeWFkZWxpbWFyNTU1QGdtYWlsLmNvbWl0Y2x1YnNta241YmFuZHVuZzE2', NULL, '2021-03-28 10:33:57'),
(15, 'forgotpassword', 'rizkan@gmail.com', 'cml6a2FuQGdtYWlsLmNvbWl0Y2x1YnNta241YmFuZHVuZzYy', NULL, '2021-03-28 10:35:15'),
(18, 'forgotpassword', 'rizkan@gmail.com', 'cml6a2FuQGdtYWlsLmNvbWl0Y2x1YnNta241YmFuZHVuZzg0', 'activated', '2021-03-28 10:43:52'),
(19, 'activation', 'user_rifki@itclub.com', 'dXNlcl9yaWZraUBpdGNsdWIuY29taXRjbHVic21rbjViYW5kdW5nNzc=', NULL, '2021-04-03 08:49:13'),
(25, 'activation', 'username@email.it', 'dXNlcm5hbWVAZW1haWwuaXRpdGNsdWJzbWtuNWJhbmR1bmc4Ng==', 'activated', '2021-04-15 00:10:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_profile`
--

CREATE TABLE `users_profile` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_profile`
--

INSERT INTO `users_profile` (`id`, `user_id`, `first_name`, `last_name`, `telepon`, `status`, `thumbnail`, `bio`, `facebook_name`, `facebook_url`, `instagram_name`, `instagram_url`, `linkedin_name`, `linkedin_url`, `twitter_name`, `twitter_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rizkan', 'Firmansyah', '08983901552', 'Web Developer', NULL, '<p>Sedang Tidur</p><p>_____________________RIZKAN____________________</p><p>___________________FIRMANSYAH_________________</p><p>____________________MASTER___________________</p>', 'Rizkan Firmansyah', NULL, '_rizkanfirmansyah', 'https://instagram.com/_rizkanfirmansyah', NULL, NULL, NULL, NULL, NULL, '2021-03-21 21:33:12', '2021-05-01 06:49:13'),
(2, 35, 'Username', 'COntoh', '08864535264623', 'Pelajar', NULL, '<p>Sedang belajar</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 00:02:45', '2021-04-15 00:04:49'),
(3, 36, 'Username', 'Admin', '08983901552', 'IT Network', NULL, '<p>Sedang belajar IT</p>', NULL, NULL, '_Rizkanfirmansyah', 'https://instagram.com/_rizkanfirmansyah', NULL, NULL, NULL, NULL, NULL, '2021-04-15 00:12:53', '2021-04-15 00:27:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_guides`
--

CREATE TABLE `user_guides` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_guides`
--

INSERT INTO `user_guides` (`id`, `title`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cara menambahkan user guides menu IT Club', 1, '2021-04-23 04:26:38', '2021-04-20 15:01:29', '2021-04-23 04:26:38'),
(2, 'Cara Login Website IT Club', 1, NULL, '2021-04-23 04:27:18', '2021-04-23 04:27:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_guides_decs`
--

CREATE TABLE `user_guides_decs` (
  `id` bigint UNSIGNED NOT NULL,
  `guide_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_guides_decs`
--

INSERT INTO `user_guides_decs` (`id`, `guide_id`, `description`, `thumbnail`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>ya</p>', 'images/user_guides/admin-202104230515-0.png', 1, '2021-04-22 22:23:54', '2021-04-22 15:49:47', '2021-04-24 08:46:18'),
(2, 2, '<p>Pertama Pastikan akun anda telah terdaftar di dalam website IT Club jika belum registrasi terlebih dahulu *disarankan.</p>', 'images/user_guides/admin-202104230515-0.png', 1, NULL, '2021-04-22 16:31:21', '2021-04-24 08:47:29'),
(3, 1, '<p>awdawdawdwadawdwadwadawdawd</p>', NULL, 1, '2021-04-22 22:23:27', '2021-04-22 21:16:37', '2021-04-22 22:23:27'),
(4, 1, '<h3>Mencoba Menambah Data</h3><ol><li>Pertama kunjungi situs <a href=\"www.itclub.com\">www.itclub.com</a> lalu, buka modul <strong>Master </strong>dan Menu <strong>Data Role</strong></li><li>Klik tombol tambah untuk memunculkan modal inputan.</li><li>Isi inputan dengan benar dan pastikan form telah terisi semua</li><li>Klik save untuk menyimpan inputan</li><li>Selesai</li></ol>', NULL, 1, NULL, '2021-04-23 03:01:42', '2021-04-23 03:01:42'),
(5, 2, '<p>Pertama Pastikan akun anda telah terdaftar di dalam website IT Club jika belum registrasi terlebih dahulu *disarankan.</p><p>&nbsp;</p>', '', 1, '2021-04-23 04:31:27', '2021-04-23 04:28:29', '2021-04-24 08:47:24'),
(6, 2, '<p>Kedua, Masukkan username/email dan password anda pada kolom yang telah disediakan</p><p>&nbsp;</p>', NULL, 1, NULL, '2021-04-23 04:29:06', '2021-04-23 04:29:06'),
(7, 2, '<p>Ketiga, pastikan username &amp; password anda telah benar jika sudah benar. Maka selanjutnya klik login/enter untuk masuk ke dalam dashboard user</p>', NULL, 1, NULL, '2021-04-23 04:29:53', '2021-04-23 04:29:53'),
(8, 2, '<p>Jika, error maka website akan mengembalikan pesan error, dan kalo sukses maka anda akan dipindahkan langsung ke main dashboard IT Club. Selamat Anda bisa Memanage dashboard anda sekarang</p>', NULL, 1, NULL, '2021-04-23 04:30:50', '2021-04-23 04:30:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access_user_menu`
--
ALTER TABLE `access_user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `access_user_section`
--
ALTER TABLE `access_user_section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `access_user_submenu`
--
ALTER TABLE `access_user_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alumnies`
--
ALTER TABLE `alumnies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_id`,`category_id`);

--
-- Indeks untuk tabel `blog_suspended`
--
ALTER TABLE `blog_suspended`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `division_mentor`
--
ALTER TABLE `division_mentor`
  ADD PRIMARY KEY (`division_id`,`mentor_id`);

--
-- Indeks untuk tabel `exception_error`
--
ALTER TABLE `exception_error`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image_division`
--
ALTER TABLE `image_division`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list_score`
--
ALTER TABLE `list_score`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list_test`
--
ALTER TABLE `list_test`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member_reg`
--
ALTER TABLE `member_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `prestations`
--
ALTER TABLE `prestations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `set_access_menu`
--
ALTER TABLE `set_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `set_access_section`
--
ALTER TABLE `set_access_section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `set_access_submenu`
--
ALTER TABLE `set_access_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_activation`
--
ALTER TABLE `users_activation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_guides`
--
ALTER TABLE `user_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_guides_decs`
--
ALTER TABLE `user_guides_decs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access_user_menu`
--
ALTER TABLE `access_user_menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `access_user_section`
--
ALTER TABLE `access_user_section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `access_user_submenu`
--
ALTER TABLE `access_user_submenu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT untuk tabel `alumnies`
--
ALTER TABLE `alumnies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `blog_suspended`
--
ALTER TABLE `blog_suspended`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `exception_error`
--
ALTER TABLE `exception_error`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `image_division`
--
ALTER TABLE `image_division`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `list_score`
--
ALTER TABLE `list_score`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `list_test`
--
ALTER TABLE `list_test`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `member_reg`
--
ALTER TABLE `member_reg`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mentors`
--
ALTER TABLE `mentors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `prestations`
--
ALTER TABLE `prestations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `set_access_menu`
--
ALTER TABLE `set_access_menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `set_access_section`
--
ALTER TABLE `set_access_section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `set_access_submenu`
--
ALTER TABLE `set_access_submenu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `users_activation`
--
ALTER TABLE `users_activation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_guides`
--
ALTER TABLE `user_guides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_guides_decs`
--
ALTER TABLE `user_guides_decs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
