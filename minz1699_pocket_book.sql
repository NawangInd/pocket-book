-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2024 at 08:02 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minz1699_pocket_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `materi_id` int(11) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_time` timestamp NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `materi_id`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2024-05-15 01:22:09', NULL, '2024-05-15 08:22:09', '2024-05-15 08:22:09'),
(2, 1, 5, '2024-05-15 01:24:08', NULL, '2024-05-15 08:24:08', '2024-05-15 08:24:08'),
(3, 1, 5, '2024-05-15 01:26:34', NULL, '2024-05-15 08:26:34', '2024-05-15 08:26:34'),
(4, 1, 5, '2024-05-15 01:27:01', NULL, '2024-05-15 08:27:01', '2024-05-15 08:27:01'),
(5, 1, 5, '2024-05-15 01:28:51', NULL, '2024-05-15 08:28:51', '2024-05-15 08:28:51'),
(6, 1, 5, '2024-05-15 01:30:33', NULL, '2024-05-15 08:30:33', '2024-05-15 08:30:33'),
(7, 1, 5, '2024-05-15 01:33:01', NULL, '2024-05-15 08:33:01', '2024-05-15 08:33:01'),
(8, 1, 5, '2024-05-15 01:34:56', NULL, '2024-05-15 08:34:56', '2024-05-15 08:34:56'),
(9, 1, 5, '2024-05-15 01:35:50', NULL, '2024-05-15 08:35:50', '2024-05-15 08:35:50'),
(10, 1, 5, '2024-05-15 01:36:17', NULL, '2024-05-15 08:36:17', '2024-05-15 08:36:17'),
(11, 1, 5, '2024-05-15 01:36:42', NULL, '2024-05-15 08:36:42', '2024-05-15 08:36:42'),
(12, 1, 5, '2024-05-15 01:37:03', NULL, '2024-05-15 08:37:03', '2024-05-15 08:37:03'),
(13, 1, 5, '2024-05-15 01:37:16', NULL, '2024-05-15 08:37:16', '2024-05-15 08:37:16'),
(14, 1, 5, '2024-05-15 01:38:29', NULL, '2024-05-15 08:38:29', '2024-05-15 08:38:29'),
(15, 1, 5, '2024-05-15 01:38:44', NULL, '2024-05-15 08:38:44', '2024-05-15 08:38:44'),
(16, 1, 5, '2024-05-15 01:39:22', NULL, '2024-05-15 08:39:22', '2024-05-15 08:39:22'),
(17, 1, 5, '2024-05-15 01:39:48', NULL, '2024-05-15 08:39:48', '2024-05-15 08:39:48'),
(18, 1, 5, '2024-05-15 01:42:46', NULL, '2024-05-15 08:42:46', '2024-05-15 08:42:46'),
(19, 1, 5, '2024-05-15 08:43:50', '2024-05-15 01:43:50', '2024-05-15 08:43:38', '2024-05-15 08:43:50'),
(20, 1, 5, '2024-05-15 08:44:09', '2024-05-15 01:44:09', '2024-05-15 08:44:03', '2024-05-15 08:44:09'),
(21, 1, 5, '2024-05-15 08:45:19', '2024-05-15 01:45:19', '2024-05-15 08:44:38', '2024-05-15 08:45:19'),
(22, 1, 5, '2024-05-15 01:45:27', NULL, '2024-05-15 08:45:27', '2024-05-15 08:45:27'),
(23, 1, 5, '2024-05-15 08:48:33', '2024-05-15 08:48:33', '2024-05-15 15:48:29', '2024-05-15 15:48:33'),
(24, 1, 5, '2024-05-15 08:49:02', '2024-05-15 08:49:02', '2024-05-15 15:48:43', '2024-05-15 15:49:02'),
(25, 1, 5, '2024-05-15 08:50:43', '2024-05-15 08:50:43', '2024-05-15 15:50:39', '2024-05-15 15:50:43'),
(26, 1, 5, '2024-05-15 08:54:14', '2024-05-15 08:54:14', '2024-05-15 15:54:02', '2024-05-15 15:54:14'),
(27, 1, 5, '2024-05-15 08:58:57', '2024-05-15 08:58:57', '2024-05-15 15:58:41', '2024-05-15 15:58:57'),
(28, 1, 5, '2024-05-15 09:10:14', '2024-05-15 09:10:14', '2024-05-15 16:10:11', '2024-05-15 16:10:14'),
(29, 1, 5, '2024-05-15 09:11:01', '2024-05-15 09:11:01', '2024-05-15 16:10:59', '2024-05-15 16:11:01'),
(30, 1, 5, '2024-05-15 09:13:35', NULL, '2024-05-15 16:13:35', '2024-05-15 16:13:35'),
(31, 1, 5, '2024-05-15 09:14:56', NULL, '2024-05-15 16:14:56', '2024-05-15 16:14:56'),
(32, 1, 5, '2024-05-15 09:15:26', NULL, '2024-05-15 16:15:26', '2024-05-15 16:15:26'),
(33, 1, 5, '2024-05-15 09:16:06', NULL, '2024-05-15 16:16:06', '2024-05-15 16:16:06'),
(34, 1, 5, '2024-05-15 09:17:08', NULL, '2024-05-15 16:17:08', '2024-05-15 16:17:08'),
(35, 1, 5, '2024-05-15 09:17:55', NULL, '2024-05-15 16:17:55', '2024-05-15 16:17:55'),
(36, 1, 5, '2024-05-15 09:18:29', NULL, '2024-05-15 16:18:29', '2024-05-15 16:18:29'),
(37, 1, 5, '2024-05-15 09:19:23', '2024-05-15 09:19:23', '2024-05-15 16:19:16', '2024-05-15 16:19:23'),
(38, 1, 5, '2024-05-15 09:21:07', NULL, '2024-05-15 16:21:07', '2024-05-15 16:21:07'),
(39, 1, 5, '2024-05-15 09:21:08', NULL, '2024-05-15 16:21:08', '2024-05-15 16:21:08'),
(40, 1, 5, '2024-05-15 09:22:30', NULL, '2024-05-15 16:22:30', '2024-05-15 16:22:30'),
(41, 1, 5, '2024-05-15 09:23:47', NULL, '2024-05-15 16:23:47', '2024-05-15 16:23:47'),
(42, 1, 5, '2024-05-15 09:25:08', NULL, '2024-05-15 16:25:08', '2024-05-15 16:25:08'),
(43, 1, 5, '2024-05-15 09:25:21', NULL, '2024-05-15 16:25:21', '2024-05-15 16:25:21'),
(44, 1, 5, '2024-05-15 09:25:35', NULL, '2024-05-15 16:25:35', '2024-05-15 16:25:35'),
(45, 1, 5, '2024-05-15 09:25:47', NULL, '2024-05-15 16:25:47', '2024-05-15 16:25:47'),
(46, 1, 5, '2024-05-15 09:26:28', NULL, '2024-05-15 16:26:28', '2024-05-15 16:26:28'),
(47, 1, 5, '2024-05-15 09:26:49', NULL, '2024-05-15 16:26:49', '2024-05-15 16:26:49'),
(48, 1, 5, '2024-05-15 09:27:39', '2024-05-15 09:27:39', '2024-05-15 16:27:31', '2024-05-15 16:27:39'),
(49, 1, 5, '2024-05-15 09:28:05', NULL, '2024-05-15 16:28:05', '2024-05-15 16:28:05'),
(50, 1, 5, '2024-05-15 09:28:09', '2024-05-15 09:28:09', '2024-05-15 16:28:06', '2024-05-15 16:28:09'),
(51, 1, 5, '2024-05-15 09:29:16', NULL, '2024-05-15 16:29:16', '2024-05-15 16:29:16'),
(52, 1, 5, '2024-05-15 09:30:17', '2024-05-15 09:30:17', '2024-05-15 16:30:04', '2024-05-15 16:30:17'),
(53, 1, 5, '2024-05-15 14:11:47', '2024-05-15 14:11:47', '2024-05-15 21:11:45', '2024-05-15 21:11:47'),
(54, 1, 5, '2024-05-15 14:17:04', '2024-05-15 14:17:04', '2024-05-15 21:17:02', '2024-05-15 21:17:04'),
(55, 1, NULL, '2024-06-01 16:58:53', NULL, '2024-06-01 23:58:53', '2024-06-01 23:58:53'),
(56, 1, NULL, '2024-06-12 08:54:54', NULL, '2024-06-12 15:54:54', '2024-06-12 15:54:54'),
(57, 1, NULL, '2024-06-12 08:56:11', NULL, '2024-06-12 15:56:11', '2024-06-12 15:56:11'),
(58, 1, NULL, '2024-06-12 09:45:50', '2024-06-12 09:45:50', '2024-06-12 15:57:58', '2024-06-12 16:45:50'),
(59, 1, NULL, '2024-06-13 03:23:07', NULL, '2024-06-13 10:23:07', '2024-06-13 10:23:07'),
(60, 1, 3, '2024-06-13 03:23:13', NULL, '2024-06-13 10:23:13', '2024-06-13 10:23:13'),
(61, 1, NULL, '2024-06-25 12:48:28', NULL, '2024-06-25 19:48:28', '2024-06-25 19:48:28'),
(62, 1, NULL, '2024-06-25 12:53:00', NULL, '2024-06-25 19:53:00', '2024-06-25 19:53:00'),
(63, 1, NULL, '2024-06-25 12:53:09', NULL, '2024-06-25 19:53:09', '2024-06-25 19:53:09'),
(64, 1, NULL, '2024-06-25 12:53:14', NULL, '2024-06-25 19:53:14', '2024-06-25 19:53:14'),
(65, 1, NULL, '2024-06-25 12:54:18', NULL, '2024-06-25 19:54:18', '2024-06-25 19:54:18'),
(66, 1, NULL, '2024-06-25 12:54:45', NULL, '2024-06-25 19:54:45', '2024-06-25 19:54:45'),
(67, 1, NULL, '2024-06-25 12:54:54', NULL, '2024-06-25 19:54:54', '2024-06-25 19:54:54'),
(68, 1, NULL, '2024-06-25 12:55:06', NULL, '2024-06-25 19:55:06', '2024-06-25 19:55:06'),
(69, 1, NULL, '2024-06-25 12:55:11', NULL, '2024-06-25 19:55:11', '2024-06-25 19:55:11'),
(70, 1, NULL, '2024-06-25 12:55:19', NULL, '2024-06-25 19:55:19', '2024-06-25 19:55:19'),
(71, 1, NULL, '2024-06-25 12:55:22', NULL, '2024-06-25 19:55:22', '2024-06-25 19:55:22'),
(72, 1, NULL, '2024-06-25 12:55:32', NULL, '2024-06-25 19:55:32', '2024-06-25 19:55:32'),
(73, 1, NULL, '2024-06-25 12:55:40', NULL, '2024-06-25 19:55:40', '2024-06-25 19:55:40'),
(74, 1, 5, '2024-06-25 12:56:14', '2024-06-25 12:56:14', '2024-06-25 19:55:55', '2024-06-25 19:56:14'),
(75, 1, 7, '2024-09-19 01:23:56', '2024-09-19 01:23:56', '2024-09-19 08:23:31', '2024-09-19 08:23:56'),
(76, 1, 7, '2024-09-23 08:29:32', '2024-09-23 08:29:32', '2024-09-23 15:29:30', '2024-09-23 15:29:32'),
(77, 6, 7, '2024-11-04 05:39:28', NULL, '2024-11-04 12:39:28', '2024-11-04 12:39:28'),
(78, 6, 5, '2024-11-04 05:39:37', NULL, '2024-11-04 12:39:37', '2024-11-04 12:39:37'),
(79, 6, 3, '2024-11-04 05:39:56', '2024-11-04 05:39:56', '2024-11-04 12:39:42', '2024-11-04 12:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) DEFAULT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `file` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `materi_id`, `judul`, `deskripsi`, `file`, `start_date`, `end_date`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 5, 'testing22', 'testing', '35-40 (1).pdf', '2024-06-07 00:00:00', '2024-06-20 00:00:00', '_8a0f3ddf-0647-4b3f-849a-f5bbf6182f66.jpeg', '2024-06-01 22:23:57', '2024-06-01 22:23:57'),
(7, 7, 'bbbb', '12345', 'WhatsApp Image 2024-06-26 at 18.54.21.jpeg', '2024-09-18 00:00:00', '2024-09-21 00:00:00', 'WhatsApp Image 2024-07-10 at 18.03.00.jpeg', '2024-09-18 22:44:29', '2024-09-18 22:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submission`
--

CREATE TABLE `assignment_submission` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` enum('Belum Mengumpulkan','Sudah Mengumpulkan','Terlambat') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `total_members` int(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `judul`, `materi_id`, `total_members`, `created_at`, `updated_at`) VALUES
(1, 'UI/UX', 3, 4, '2024-11-01 17:20:33', '2024-11-01 17:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `group_details`
--

CREATE TABLE `group_details` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `group_details`
--

INSERT INTO `group_details` (`id`, `group_id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Group 1', '2024-11-01 17:20:33', '2024-11-01 17:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` int(100) NOT NULL,
  `group_detail_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_detail_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2024-11-01 17:20:33', '2024-11-01 17:20:33'),
(2, 1, 1, '2024-11-01 17:20:33', '2024-11-01 17:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `user_id`, `judul`, `deskripsi`, `file`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 2, 'testing baru 2', '</p><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">A. MENGENAL UI DESIGN\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">1. APA ITU USER INTERFACE (UI)\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">User Interface atau UI merupakan suatu hal yang berhubungan dengan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">tampilan/visual desain dari sebuah produk yang memungkinkan pengguna terhubung \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dan berinteraksi dengan produk tersebut. Sederhananya, User Interface adalah \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">bagaimana tampilan dilihat oleh </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">user</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">. Dalam pengaplikasiannya, User Interface (UI) \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">juga berhubungan erat dengan User Experience (UX). Dua hal tersebut memiliki \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">keterikatan pada masing-masing tugas mereka. Pada materi kali ini kita akan berfokus \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">pada antarmuka pengguna (User Interface) terlebih dahulu. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">User Interface mempunyai peran penting dalam sebuah produk karena bisa menjadi \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">first impression pengguna dan bisa menjadi penentu produk yang kita buat. User \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Interface bisa juga diartikan sebagai tampilan keseluruhan yang meliputi warna, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">tipografi, dan layout yang menentukan nyaman/tidaknya suatu produk saat pengguna \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">menggunakannya.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Contoh User Interface di kehidupan sehari-hari :\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">a) ATM\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">b) Virtual Reality\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">c) Website\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">d) Smart TV\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">e) Smart Watch\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">f) Tampilan Mobile App\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">2. MENGAPA USER INTERFACE (UI) PENTING?\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Mungkin beberapa orang akan bertanya. Mengapa User Interface sangat penting? \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">User Interface memiliki peran penting dengan fungsi-fungsinya. Beberapa fungsi dari \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">User Interface adalah sebagai berikut:\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">a) Memudahkan interaksi pengguna dengan produk\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Desain user interface dapat membantu dalam memudahkan pengguna aplikasi \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">untuk dapat mengeksplor aplikasi yang anda kembangkan. Setiap orang tentu \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">menginginkan aplikasi yang mudah digunakan, dengan tampilan desain yang \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">menarik. Sesuai dari pengertian user interface, tampilan visual produk aplikasi \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">memiliki peran penting dalam memberikan pengalaman yang baik bagi pengguna. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Contohnya, saat anda masuk dalam website, anda akan melihat – lihat berbagai \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">fitur dan konten yang tersedia disana. Anda juga dapat berinteraksi langsung \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dengan menekan </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">button, </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">atau link, dll. Dalam proses interaksi tersebut, tampilan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">desain akan diuji, apakah memang UI yang telah dibuat sudah memudahkan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">pengguna atau justru membingungkan pengguna.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Maka dari itu, sebelum pembuatan UI, harus melewati berbagai proses terlebih \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dahulu seperti melakukan </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">user research </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dan </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">research competitor </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">produk anda. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Sehingga, dengan produk aplikasi anda, dapat bersaing dengan produk kompetitor \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">lain.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:11pt;font-family:Calibri;color:rgb(64,64,64);\">3</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">b) Membantu meningkatkan traffic website\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Jika anda terjun dalam dunia bisnis digital, maka tujuan utama dari anda \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">membuat sebuah website adalah supaya anda dapat memperkenalkan produk anda \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">kepada pengunjung internet, serta meningkatkan jumlah pengunjung (traffic) \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">website.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Maka dari itu, user interface adalah kunci awal dalam membantu tujuan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">tersebut. Jika anda membuat tampilan website yang menarik, mudah, interaktif dan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">modern, maka secara otomatis pengguna juga akan masuk pada website anda. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Kemudian, anda juga harus memperhatikan setiap komponen penyusunan dalam \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">membuat desain awal aplikasi sehingga, user lebih mudah dalam berinteraksi \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dengan website atau aplikasi anda.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">c) Mendukung terbentuknya User Experience yang tepat dan optimal\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Desain user interface juga mempengaruhi user experience dari pengguna. Jadi, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">apabila anda membuat user interface yang memiliki desain grafis yang bagus, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">namun fitur, konten, dan layout masih belum sesuai dan terkesan ribet, maka akan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">berpengaruh secara tidak langsung bagi user yang akan menggunakan produk anda.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Tampilan yang bagus dan menarik bukan sekedar hanya dari segi visual yang baik \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">saja, namun harus disertai dengan user experience yang baik pula. Yang mana, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">aplikasi dapat memudahkan pengguna dalam mencari apa yang memang \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dibutuhkan.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">d) Meningkatkan kualitas branding\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">UI yang interaktif dan beridentitas akan membantu meningkatkan kekuatan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">branding sebuah produk. Branding bukanlah hal yang mudah namun bisa kamu \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">lakukan dengan melakukan cara yang tepat. Salah satunya adalah dengan membuat \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">tampilan UI yang unik dan berbeda dari brand atau produk lain. Sebagai \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">pengguna </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">Facebook</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">, </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">Twitter</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">, dan </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">Instagram</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">, kamu pasti ingat seperti apa \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">tampilan masing-masing media sosial tersebut. Kamu bisa mengenali dan juga \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">membedakan tampilan setiap platform media sosial tersebut karena kekuatan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">desain user interfacenya.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">3. KARATERISTIK USER INTERFACE (UI)\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Berikut merupakan beberapa karakteristik yang dapat dijadikan acuan jika kamu \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">ingin memulai membuat website atau aplikasi.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">a) Jelas dan Konsisten\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Karakteristik yang pertama adalah jelas dan konsisten. User interface adalah \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">tampilan antarmuka pengguna untuk proses interaksi pada sebuah aplikasi. UI yang \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">baik, tentu akan menampilkan komposisi desain dan konten yang jelas. Jelas dalam \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">artian adalah mudah dipahami oleh pengguna. Serta memiliki struktur desain yang \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">konsisten. Misalnya, dalam penerapan atau implementasi layout, gambar, konten, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">section, warna, dan lain sebagainya.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:11pt;font-family:Calibri;color:rgb(64,64,64);\">4</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">b) Responsif dan Menarik\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Karakteristik kedua yaitu memiliki antarmuka pengguna yang responsif dan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">menarik. Responsif disini maksudnya adalah dapat dijalankan di berbagai \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">perangkat dan tampilan tersebut mampu untuk menyesuaikan bentuk ukuran dari \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">perangkat. Menarik disini dapat berarti penyajian konten dan desain mampu untuk \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">membuat pengguna merasa nyaman untuk terus berada dalam aplikasi tersebut. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Pastikan juga anda membuat sebuah antarmuka sesuai dengan kebutuhan produk \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">anda.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">c) Terstruktur dan Efisien\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Membuat interface yang terstruktur dan efisien. Terstruktur disini adalah UI \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">mampu untuk memberikan tampilan yang mendukung dari aplikasi tersebut. Alur \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">jalannya proses aplikasi menjadi lebih mudah dengan adanya UI tersebut. Efisien \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">disini berarti antarmuka yang dibuat mampu untuk menjawab berbagai \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">permasalahan yang dihadapi pengguna. Pastikan untuk membuat interface yang \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">dapat memudahkan pengguna dalam mendapatkan tujuan yang mereka inginkan.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">d) Tepat Sasaran\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Karakteristik selanjutnya adalah tepat sasaran. Maksudnya disini, UI yang telah \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">anda buat, memiliki kesesuaian dengan produk yang akan anda tawarkan atau \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">publikasikan. Tujuan akhirnya, supaya antarmuka yang ditampilkan dapat \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">mendukung dan meningkatkan nilai jual dari produk anda.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">e) Mudah Diolah\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Terakhir yaitu interface yang mudah diolah. Maknanya, ketika anda melakukan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">kesalahan atau ingin mengubah beberapa tampilan karena suatu alasan, maka UI \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">yang baik dapat memberikan kemudahan dalam proses </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">editing </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">-nya.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-BoldMT;color:rgb(0,0,0);font-weight:bold;\">4. PRINSIP DESAIN USER INTERFACE (UI)\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Dalam pembuatan desain User Interface harus berdasarkan pada beberapa prinsip \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">supaya hasil sesuai dengan harapan. Untuk membantu proses pengerjaan desain UI, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">kamu bisa mengacu pada beberapa prinsip dari desain UI beirkut:\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">a) Visibilitas \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Penerapan prinsip yang satu ini membutuhkan optimasi dari elemen desain yang \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">akan membantu pengguna memenuhi tujuan mereka. Apabila mereka tidak bisa \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">mengerti cara menggunakan dan melakukan navigasi </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">website </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">atau </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">software </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">lain, \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">mereka pasti akan kebingungan, bukan?\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">b) Konsistensi \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Prinsip konsistensi ini mengacu pada semudah apa sesuatu untuk para \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">penggunanya sehingga apa yang mereka lihat pada interface memang masuk akal. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Coba ulangi beberapa elemen desain yang sama seperti fungsi, warna, dan lokasi.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:11pt;font-family:Calibri;color:rgb(64,64,64);\">5</span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">c) Learnability\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Para pengguna harus bisa memahami produk dan sistem dengan cepat dan mudah. \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Tugas desainer adalah membuat </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">interface </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">yang bisa memfasilitasi hal tersebut \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">sehingga pengguna bisa mencapai tujuan mereka tanpa perlu bantuan lebih lanjut.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">d) Predictability\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Ini mengacu pada kemampuan pengguna untuk meramalkan atau memprediksi apa \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">yang selanjutnya akan terjadi. Saat pengguna bisa melakukannya, itu berarti \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">desainer sudah mengaplikasikan prinsip UI ini dengan baik.\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">e) Feedback\r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">Designer harus berkomunikasi terlepas dari apakah pengguna sudah menyelesaikan \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">aksi secara benar ataupun tidak karena </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:TimesNewRomanPS-ItalicMT;color:rgb(0,0,0);font-style:italic;\">feedback </span><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">itu penting. Pengguna harus tahu \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">apakah mereka sudah semakin dekat dengan tujuannya. Desainer bisa membantu \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">pengguna melalui pengalaman mereka dengan interface menggunakan sinyal \r\n</span></div><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">visual. Hal terpenting adalah feedback harus jelas dan bermakna sehingga \r\n</span></div><p>\r\n<!--EndFragment--></p><div><span style=\"mso-spacerun:\'yes\';font-size:12pt;font-family:Times New Roman;color:rgb(0,0,0);\">pengguna bisa mengartikannya dengan cara yang mereka mau.\r\n</span></div>', NULL, '', '2024-05-13 17:49:12', '2024-05-13 17:49:12'),
(5, 2, 'testing notifikasi', '<p>testing notifikasitesting notifikasitesting notifikasitesting notifikasi<br></p>', NULL, '', '2024-05-14 19:49:37', '2024-05-14 19:49:37'),
(7, 2, 'test', '<p>123455</p>', 'Jurnal FIX.pdf', 'WhatsApp Image 2024-07-10 at 18.03.00.jpeg', '2024-09-18 11:33:37', '2024-09-18 11:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_05_16_030355_create_quizzes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `role` enum('Guru','Murid') NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `is_seen` enum('Y','N') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `role`, `judul`, `deskripsi`, `is_seen`, `created_at`, `updated_at`) VALUES
(1, 'Murid', 'Materi baru dengan judul \'testing notifikasi\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-05-14 19:49:37', '2024-05-14 19:49:37'),
(13, 'Guru', 'Murid selesai membaca materi', NULL, 'N', '2024-05-15 16:19:23', '2024-05-15 16:19:23'),
(14, 'Guru', 'Murid selesai membaca materi', NULL, 'N', '2024-05-15 16:28:09', '2024-05-15 16:28:09'),
(15, 'Guru', 'Murid selesai membaca materi', 'Murid murid telah selesai membaca materi testing notifikasi selama 13 menit.', 'N', '2024-05-15 16:30:17', '2024-05-15 16:30:17'),
(16, 'Guru', 'muridselesai membaca materi', 'murid telah selesai membaca materi : testing notifikasi dari jam : 2024-05-15 21:11:45 sampai 2024-05-15 21:11:47', 'N', '2024-05-15 21:11:47', '2024-05-15 21:11:47'),
(17, 'Guru', 'murid selesai membaca materi', 'murid telah selesai membaca materi : testing notifikasi dari jam : 21:17:02 PM sampai 21:17:04 PM', 'N', '2024-05-15 21:17:04', '2024-05-15 21:17:04'),
(18, 'Murid', 'Materi baru dengan judul \'tesss\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-05-30 16:14:58', '2024-05-30 16:14:58'),
(19, 'Murid', 'Materi baru dengan judul \'testing document\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-06-12 13:48:41', '2024-06-12 13:48:41'),
(20, 'Murid', 'Materi baru dengan judul \'adasdasda\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-06-12 13:52:31', '2024-06-12 13:52:31'),
(21, 'Murid', 'Materi baru dengan judul \'adsadsaa\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-06-12 13:53:32', '2024-06-12 13:53:32'),
(22, 'Murid', 'Materi baru dengan judul \'testing gambar\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-06-12 15:55:43', '2024-06-12 15:55:43'),
(23, 'Guru', 'murid selesai membaca materi', 'murid telah selesai membaca materi : testing gambar dari jam : 15:57:58 PM sampai 16:45:50 PM', 'N', '2024-06-12 16:45:50', '2024-06-12 16:45:50'),
(24, 'Guru', 'murid selesai membaca materi', 'murid telah selesai membaca materi : testing notifikasi dari jam : 19:55:55 PM sampai 19:56:14 PM', 'N', '2024-06-25 19:56:14', '2024-06-25 19:56:14'),
(25, 'Murid', 'Materi baru dengan judul \'test\' telah diunggah, yuk pelajari !!!', NULL, 'N', '2024-09-18 11:33:38', '2024-09-18 11:33:38'),
(26, 'Guru', 'murid selesai membaca materi', 'murid telah selesai membaca materi : test dari jam : 08:23:31 AM sampai 08:23:56 AM', 'N', '2024-09-19 08:23:56', '2024-09-19 08:23:56'),
(27, 'Guru', 'murid selesai membaca materi', 'murid telah selesai membaca materi : test dari jam : 15:29:30 PM sampai 15:29:32 PM', 'N', '2024-09-23 15:29:32', '2024-09-23 15:29:32'),
(28, 'Murid', 'Kelompok Baru Sudah Dibentuk', 'Silahkan cek di menu Groups untuk melihat posisi kelompok yang baru dibentuk.', 'N', '2024-11-01 17:20:33', '2024-11-01 17:20:33'),
(29, 'Guru', 'Kiren Maylita Irdiana selesai membaca materi', 'Kiren Maylita Irdiana telah selesai membaca materi : testing baru 2 dari jam : 12:39:42 PM sampai 12:39:56 PM', 'N', '2024-11-04 12:39:56', '2024-11-04 12:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quizzes_id` int(10) UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `option_a` longtext NOT NULL,
  `option_b` longtext NOT NULL,
  `option_c` longtext NOT NULL,
  `option_d` longtext NOT NULL,
  `option_e` longtext NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quizzes_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apakah kamu manusia ?', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'B', '2024-05-17 05:20:50', '2024-05-17 05:20:50'),
(2, 1, 'Pengalaman pengguna saat memakai atau berinteraksi menggunakan sebuah produk digital adalah pengertian dari …', 'User Experience', 'User Interface', 'UX Design', 'UI Design', 'Semua benar', 'A', '2024-05-20 19:38:19', '2024-05-20 19:38:19'),
(3, 1, 'Salah satu langkah yang dilakukan oleh pengembang suatu aplikasi untuk memenangkan persaingan adalah ...', 'Senantiasa memperbarui aplikasi', 'Senantiasa menampilkan kebutuhan', 'Membuat banyak tampilan pada aplikasi', 'Membuat banyak menu pada aplikasi', 'Semua salah', 'A', '2024-05-20 19:41:20', '2024-05-20 19:41:20'),
(4, 1, 'Untuk membangun UX Design kita dapat membuat prototipe terlebih dahulu, apa yang kalian ketahui tentang prototipe', 'Model sederhana sebuah produk sebelum dilanjutkan lebih detail', 'Model uji coba pada pengguna', 'Aplikasi yang siap diluncurkan', 'Aplikasi yang perlu diperbarui', 'Rancangan aplikasi', 'A', '2024-05-22 17:02:08', '2024-05-22 17:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `materi_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `timer` int(11) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `materi_id`, `title`, `timer`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 5, 'kuis 1', 10, NULL, '2024-05-16 21:33:51', '2024-05-16 21:33:51'),
(3, 3, 'Game', 15, NULL, '2024-09-18 04:35:58', '2024-09-18 04:35:58'),
(4, 7, 'tes2', 10, NULL, '2024-10-06 05:22:19', '2024-10-06 05:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quizzes_id` int(10) UNSIGNED NOT NULL,
  `score` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `user_id`, `quizzes_id`, `score`, `created_at`, `updated_at`) VALUES
(13, 1, 1, 75, '2024-06-12 16:46:04', '2024-06-12 16:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_quiz_attempts`
--

CREATE TABLE `student_quiz_attempts` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quizzes_id` int(10) UNSIGNED NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nomor_induk` int(20) NOT NULL,
  `role` enum('Guru','Murid') NOT NULL,
  `alamat` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nama_lengkap`, `nomor_induk`, `role`, `alamat`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'murid@gmail.com', 'murid123', 'murid', 123456789, 'Murid', 'jl pelajar', '', '2024-05-10 19:55:20', '2024-05-10 19:55:20'),
(2, 'guru@gmail.com', 'guru123', 'guru', 123456789, 'Guru', 'jl guru edit', '', '2024-05-10 19:55:20', '2024-06-16 16:05:39'),
(6, 'kiren@gmail.com', 'kiren17', 'Kiren Maylita Irdiana', 17, 'Murid', 'Sidoarjo', 'woman_4140047.png', '2024-09-18 11:35:25', '2024-09-18 11:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `quiz_attempts_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `chosen_answer` varchar(100) NOT NULL,
  `is_correct` enum('True','False') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `quiz_attempts_id`, `question_id`, `chosen_answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(31, 13, 1, 'B', 'True', '2024-06-12 16:46:04', '2024-06-12 16:46:04'),
(32, 13, 2, 'B', 'True', '2024-06-12 16:46:04', '2024-06-12 16:46:04'),
(33, 13, 3, 'A', 'True', '2024-06-12 16:46:04', '2024-06-12 16:46:04'),
(34, 13, 4, 'A', 'True', '2024-06-12 16:46:04', '2024-06-12 16:46:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- Indexes for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- Indexes for table `group_details`
--
ALTER TABLE `group_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_detail_id` (`group_detail_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`role`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_id` (`quizzes_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quizzes_id` (`quizzes_id`);

--
-- Indexes for table `student_quiz_attempts`
--
ALTER TABLE `student_quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quizzes_id` (`quizzes_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `quiz_attempts_id` (`quiz_attempts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_details`
--
ALTER TABLE `group_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_quiz_attempts`
--
ALTER TABLE `student_quiz_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `activity_log_ibfk_3` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_5` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  ADD CONSTRAINT `assignment_submission_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`),
  ADD CONSTRAINT `assignment_submission_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `group_ibfk_1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`);

--
-- Constraints for table `group_details`
--
ALTER TABLE `group_details`
  ADD CONSTRAINT `group_details_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`);

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `group_members_ibfk_3` FOREIGN KEY (`group_detail_id`) REFERENCES `group_details` (`id`);

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quizzes_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `quiz_attempts_ibfk_2` FOREIGN KEY (`quizzes_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `student_quiz_attempts`
--
ALTER TABLE `student_quiz_attempts`
  ADD CONSTRAINT `student_quiz_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `student_quiz_attempts_ibfk_2` FOREIGN KEY (`quizzes_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`quiz_attempts_id`) REFERENCES `quiz_attempts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
