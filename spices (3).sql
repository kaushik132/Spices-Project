-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 09:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spices`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 4, 'Admin', 'icon-server', '', NULL, NULL, '2025-05-14 01:09:05'),
(3, 2, 5, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2025-05-14 01:09:05'),
(4, 2, 6, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2025-05-14 01:09:05'),
(5, 2, 7, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2025-05-14 01:09:05'),
(6, 2, 8, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2025-05-14 01:09:05'),
(7, 2, 9, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2025-05-14 01:09:05'),
(8, 0, 10, 'Helpers', 'icon-cogs', '', NULL, '2025-05-13 23:57:01', '2025-05-14 01:09:05'),
(9, 8, 11, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2025-05-13 23:57:01', '2025-05-14 01:09:05'),
(10, 8, 12, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2025-05-13 23:57:01', '2025-05-14 01:09:05'),
(11, 8, 13, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2025-05-13 23:57:01', '2025-05-14 01:09:05'),
(12, 8, 14, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2025-05-13 23:57:01', '2025-05-14 01:09:05'),
(13, 14, 3, 'Product-categories', 'icon-file', 'product-categories', NULL, '2025-05-14 01:02:08', '2025-05-14 01:09:05'),
(14, 0, 2, 'Product', 'icon-ice-cream', NULL, 'ext.helpers', '2025-05-14 01:07:58', '2025-05-14 01:09:05'),
(15, 14, 14, 'Products', 'icon-file', 'products', NULL, '2025-05-14 01:17:44', '2025-05-14 03:53:53'),
(16, 0, 14, 'Titles', 'icon-file', 'titles', NULL, '2025-05-17 00:29:35', '2025-05-17 00:29:35'),
(17, 0, 14, 'Contacts', 'icon-file', 'contacts', NULL, '2025-05-17 01:33:02', '2025-05-17 01:33:02'),
(18, 0, 14, 'Testimonials', 'icon-file', 'testimonials', NULL, '2025-05-17 03:19:13', '2025-05-17 03:19:13'),
(19, 0, 14, 'Homebanners', 'icon-file', 'homebanners', NULL, '2025-05-17 04:59:46', '2025-05-17 04:59:46'),
(20, 0, 14, 'Privacies', 'icon-file', 'privacies', NULL, '2025-05-19 00:11:24', '2025-05-19 00:11:24'),
(21, 0, 14, 'Terms', 'icon-file', 'terms', NULL, '2025-05-19 00:12:20', '2025-05-19 00:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-13 23:58:52', '2025-05-13 23:58:52'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-14 00:58:01', '2025-05-14 00:58:01'),
(3, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 00:58:06', '2025-05-14 00:58:06'),
(4, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"product_category\",\"model_name\":\"App\\\\Models\\\\ProductCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:02:08', '2025-05-14 01:02:08'),
(5, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 01:02:08', '2025-05-14 01:02:08'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 01:02:26', '2025-05-14 01:02:26'),
(7, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:02:28', '2025-05-14 01:02:28'),
(8, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:02:32', '2025-05-14 01:02:32'),
(9, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:04:44', '2025-05-14 01:04:44'),
(10, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"cat-1\",\"slug\":null,\"seo_title\":\"Pariatur Quis maior\",\"seo_des\":\"Non aut expedita eni\",\"seo_key\":\"Et architecto aut re\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:05:07', '2025-05-14 01:05:07'),
(11, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:07', '2025-05-14 01:05:07'),
(12, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:09', '2025-05-14 01:05:09'),
(13, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"cat-2\",\"slug\":null,\"seo_title\":\"Consequatur Aut lor\",\"seo_des\":\"Voluptas nisi duis s\",\"seo_key\":\"Corrupti non dolor\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:05:18', '2025-05-14 01:05:18'),
(14, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:18', '2025-05-14 01:05:18'),
(15, 1, 'admin/product-categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:25', '2025-05-14 01:05:25'),
(16, 1, 'admin/product-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Cat-1\",\"slug\":\"cat-1\",\"seo_title\":\"Pariatur Quis maior\",\"seo_des\":\"Non aut expedita eni\",\"seo_key\":\"Et architecto aut re\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:05:30', '2025-05-14 01:05:30'),
(17, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:30', '2025-05-14 01:05:30'),
(18, 1, 'admin/product-categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:36', '2025-05-14 01:05:36'),
(19, 1, 'admin/product-categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Cat-2\",\"slug\":\"cat-2\",\"seo_title\":\"Consequatur Aut lor\",\"seo_des\":\"Voluptas nisi duis s\",\"seo_key\":\"Corrupti non dolor\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:05:40', '2025-05-14 01:05:40'),
(20, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:05:41', '2025-05-14 01:05:41'),
(21, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:06:11', '2025-05-14 01:06:11'),
(22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:06:19', '2025-05-14 01:06:19'),
(23, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Product\",\"icon\":\"icon-ice-cream\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"ext.helpers\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:07:58', '2025-05-14 01:07:58'),
(24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:07:59', '2025-05-14 01:07:59'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:08:21', '2025-05-14 01:08:21'),
(26, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:08:30', '2025-05-14 01:08:30'),
(27, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"search_terms\":null,\"title\":\"Product-categories\",\"icon\":\"icon-file\",\"uri\":\"product-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:08:35', '2025-05-14 01:08:35'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:08:35', '2025-05-14 01:08:35'),
(29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:08:38', '2025-05-14 01:08:38'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:08:53', '2025-05-14 01:08:53'),
(31, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"14\\\",\\\"children\\\":[{\\\"id\\\":\\\"13\\\"}]},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:09:05', '2025-05-14 01:09:05'),
(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 01:09:06', '2025-05-14 01:09:06'),
(33, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:09:36', '2025-05-14 01:09:36'),
(34, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 01:09:43', '2025-05-14 01:09:43'),
(35, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"product\",\"model_name\":\"App\\\\Models\\\\Product\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"product_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"product_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"thum_img\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"pictures\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"descount_price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"contant\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"facebook\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"twitter\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"instagram\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"linkedin\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"itinerary\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:17:44', '2025-05-14 01:17:44'),
(36, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 01:17:45', '2025-05-14 01:17:45'),
(37, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 01:18:43', '2025-05-14 01:18:43'),
(38, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 01:23:58', '2025-05-14 01:23:58'),
(39, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:00', '2025-05-14 01:24:00'),
(40, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:01', '2025-05-14 01:24:01'),
(41, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:17', '2025-05-14 01:24:17'),
(42, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:24', '2025-05-14 01:24:24'),
(43, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:24', '2025-05-14 01:24:24'),
(44, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:25', '2025-05-14 01:24:25'),
(45, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:26', '2025-05-14 01:24:26'),
(46, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:26', '2025-05-14 01:24:26'),
(47, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:27', '2025-05-14 01:24:27'),
(48, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:27', '2025-05-14 01:24:27'),
(49, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:28', '2025-05-14 01:24:28'),
(50, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:28', '2025-05-14 01:24:28'),
(51, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:29', '2025-05-14 01:24:29'),
(52, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:30', '2025-05-14 01:24:30'),
(53, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:30', '2025-05-14 01:24:30'),
(54, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:31', '2025-05-14 01:24:31'),
(55, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:32', '2025-05-14 01:24:32'),
(56, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:32', '2025-05-14 01:24:32'),
(57, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:33', '2025-05-14 01:24:33'),
(58, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:33', '2025-05-14 01:24:33'),
(59, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:34', '2025-05-14 01:24:34'),
(60, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:35', '2025-05-14 01:24:35'),
(61, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:35', '2025-05-14 01:24:35'),
(62, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:36', '2025-05-14 01:24:36'),
(63, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:36', '2025-05-14 01:24:36'),
(64, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:37', '2025-05-14 01:24:37'),
(65, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:38', '2025-05-14 01:24:38'),
(66, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:38', '2025-05-14 01:24:38'),
(67, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:39', '2025-05-14 01:24:39'),
(68, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:39', '2025-05-14 01:24:39'),
(69, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:40', '2025-05-14 01:24:40'),
(70, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:40', '2025-05-14 01:24:40'),
(71, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:41', '2025-05-14 01:24:41'),
(72, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:42', '2025-05-14 01:24:42'),
(73, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:42', '2025-05-14 01:24:42'),
(74, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:43', '2025-05-14 01:24:43'),
(75, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:43', '2025-05-14 01:24:43'),
(76, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:44', '2025-05-14 01:24:44'),
(77, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:44', '2025-05-14 01:24:44'),
(78, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:45', '2025-05-14 01:24:45'),
(79, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:46', '2025-05-14 01:24:46'),
(80, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:46', '2025-05-14 01:24:46'),
(81, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:48', '2025-05-14 01:24:48'),
(82, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:48', '2025-05-14 01:24:48'),
(83, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:24:53', '2025-05-14 01:24:53'),
(84, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:25:59', '2025-05-14 01:25:59'),
(85, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:05', '2025-05-14 01:26:05'),
(86, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:06', '2025-05-14 01:26:06'),
(87, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:06', '2025-05-14 01:26:06'),
(88, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:07', '2025-05-14 01:26:07'),
(89, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:07', '2025-05-14 01:26:07'),
(90, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:08', '2025-05-14 01:26:08'),
(91, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:09', '2025-05-14 01:26:09'),
(92, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:09', '2025-05-14 01:26:09'),
(93, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:10', '2025-05-14 01:26:10'),
(94, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:10', '2025-05-14 01:26:10'),
(95, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:11', '2025-05-14 01:26:11'),
(96, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:11', '2025-05-14 01:26:11'),
(97, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:12', '2025-05-14 01:26:12'),
(98, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:13', '2025-05-14 01:26:13'),
(99, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:13', '2025-05-14 01:26:13'),
(100, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:14', '2025-05-14 01:26:14'),
(101, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:14', '2025-05-14 01:26:14'),
(102, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:15', '2025-05-14 01:26:15'),
(103, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:15', '2025-05-14 01:26:15'),
(104, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:16', '2025-05-14 01:26:16'),
(105, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:26:17', '2025-05-14 01:26:17'),
(106, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:27:20', '2025-05-14 01:27:20'),
(107, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:28:10', '2025-05-14 01:28:10'),
(108, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:49', '2025-05-14 01:31:49'),
(109, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:53', '2025-05-14 01:31:53'),
(110, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:55', '2025-05-14 01:31:55'),
(111, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:55', '2025-05-14 01:31:55'),
(112, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:56', '2025-05-14 01:31:56'),
(113, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:56', '2025-05-14 01:31:56'),
(114, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:57', '2025-05-14 01:31:57'),
(115, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:57', '2025-05-14 01:31:57'),
(116, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:58', '2025-05-14 01:31:58'),
(117, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:59', '2025-05-14 01:31:59'),
(118, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:31:59', '2025-05-14 01:31:59'),
(119, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:00', '2025-05-14 01:32:00'),
(120, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:00', '2025-05-14 01:32:00'),
(121, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:01', '2025-05-14 01:32:01'),
(122, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:01', '2025-05-14 01:32:01'),
(123, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:02', '2025-05-14 01:32:02'),
(124, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:03', '2025-05-14 01:32:03'),
(125, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:03', '2025-05-14 01:32:03'),
(126, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:04', '2025-05-14 01:32:04'),
(127, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:04', '2025-05-14 01:32:04'),
(128, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:05', '2025-05-14 01:32:05'),
(129, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:05', '2025-05-14 01:32:05'),
(130, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:06', '2025-05-14 01:32:06'),
(131, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:11', '2025-05-14 01:32:11'),
(132, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:12', '2025-05-14 01:32:12'),
(133, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:12', '2025-05-14 01:32:12'),
(134, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:13', '2025-05-14 01:32:13'),
(135, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:13', '2025-05-14 01:32:13'),
(136, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:14', '2025-05-14 01:32:14'),
(137, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:15', '2025-05-14 01:32:15'),
(138, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:15', '2025-05-14 01:32:15'),
(139, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:16', '2025-05-14 01:32:16'),
(140, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:16', '2025-05-14 01:32:16'),
(141, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:17', '2025-05-14 01:32:17'),
(142, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:17', '2025-05-14 01:32:17'),
(143, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:18', '2025-05-14 01:32:18'),
(144, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:18', '2025-05-14 01:32:18'),
(145, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:19', '2025-05-14 01:32:19'),
(146, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:20', '2025-05-14 01:32:20'),
(147, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:20', '2025-05-14 01:32:20'),
(148, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:21', '2025-05-14 01:32:21'),
(149, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:21', '2025-05-14 01:32:21'),
(150, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:22', '2025-05-14 01:32:22'),
(151, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:22', '2025-05-14 01:32:22'),
(152, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:23', '2025-05-14 01:32:23'),
(153, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:24', '2025-05-14 01:32:24'),
(154, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:24', '2025-05-14 01:32:24'),
(155, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:25', '2025-05-14 01:32:25'),
(156, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:25', '2025-05-14 01:32:25'),
(157, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:26', '2025-05-14 01:32:26'),
(158, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:26', '2025-05-14 01:32:26'),
(159, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:27', '2025-05-14 01:32:27'),
(160, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:27', '2025-05-14 01:32:27'),
(161, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:28', '2025-05-14 01:32:28'),
(162, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:29', '2025-05-14 01:32:29'),
(163, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:29', '2025-05-14 01:32:29'),
(164, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:30', '2025-05-14 01:32:30'),
(165, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:30', '2025-05-14 01:32:30'),
(166, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:31', '2025-05-14 01:32:31'),
(167, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:31', '2025-05-14 01:32:31'),
(168, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:32', '2025-05-14 01:32:32'),
(169, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:33', '2025-05-14 01:32:33'),
(170, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:33', '2025-05-14 01:32:33'),
(171, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:34', '2025-05-14 01:32:34'),
(172, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:32:34', '2025-05-14 01:32:34'),
(173, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:00', '2025-05-14 01:33:00'),
(174, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:00', '2025-05-14 01:33:00'),
(175, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:01', '2025-05-14 01:33:01'),
(176, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:02', '2025-05-14 01:33:02'),
(177, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:02', '2025-05-14 01:33:02'),
(178, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:03', '2025-05-14 01:33:03'),
(179, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:04', '2025-05-14 01:33:04'),
(180, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:04', '2025-05-14 01:33:04'),
(181, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:05', '2025-05-14 01:33:05'),
(182, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:05', '2025-05-14 01:33:05'),
(183, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:06', '2025-05-14 01:33:06'),
(184, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:06', '2025-05-14 01:33:06'),
(185, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:07', '2025-05-14 01:33:07'),
(186, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:07', '2025-05-14 01:33:07'),
(187, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:08', '2025-05-14 01:33:08'),
(188, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:09', '2025-05-14 01:33:09'),
(189, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:09', '2025-05-14 01:33:09'),
(190, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:10', '2025-05-14 01:33:10'),
(191, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:10', '2025-05-14 01:33:10'),
(192, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:11', '2025-05-14 01:33:11'),
(193, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:11', '2025-05-14 01:33:11'),
(194, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:23', '2025-05-14 01:33:23'),
(195, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:51', '2025-05-14 01:33:51'),
(196, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:56', '2025-05-14 01:33:56'),
(197, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:33:57', '2025-05-14 01:33:57'),
(198, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:35:38', '2025-05-14 01:35:38'),
(199, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:37:38', '2025-05-14 01:37:38'),
(200, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:37:44', '2025-05-14 01:37:44'),
(201, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:37:46', '2025-05-14 01:37:46'),
(202, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:39:01', '2025-05-14 01:39:01'),
(203, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:44:42', '2025-05-14 01:44:42'),
(204, 1, 'admin/products', 'POST', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":null,\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"Aut incididunt nobis\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"after-save\":\"view\"}', '2025-05-14 01:45:18', '2025-05-14 01:45:18'),
(205, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:45:19', '2025-05-14 01:45:19'),
(206, 1, 'admin/products', 'POST', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":null,\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"Aut incididunt nobis\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:45:23', '2025-05-14 01:45:23'),
(207, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 01:45:23', '2025-05-14 01:45:23'),
(208, 1, 'admin/products', 'POST', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":null,\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 01:46:03', '2025-05-14 01:46:03'),
(209, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:04', '2025-05-14 01:46:04'),
(210, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 01:46:06', '2025-05-14 01:46:06'),
(211, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 01:46:07', '2025-05-14 01:46:07'),
(212, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:07', '2025-05-14 01:46:07'),
(213, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:08', '2025-05-14 01:46:08'),
(214, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:11', '2025-05-14 01:46:11'),
(215, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 01:46:13', '2025-05-14 01:46:13'),
(216, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:13', '2025-05-14 01:46:13'),
(217, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:16', '2025-05-14 01:46:16'),
(218, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:18', '2025-05-14 01:46:18'),
(219, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:46:22', '2025-05-14 01:46:22'),
(220, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:22', '2025-05-14 01:46:22'),
(221, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 01:46:23', '2025-05-14 01:46:23'),
(222, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:24', '2025-05-14 01:46:24'),
(223, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:46:31', '2025-05-14 01:46:31'),
(224, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:47:10', '2025-05-14 01:47:10'),
(225, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:50:26', '2025-05-14 01:50:26'),
(226, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:50:26', '2025-05-14 01:50:26'),
(227, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:50:28', '2025-05-14 01:50:28'),
(228, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:50:38', '2025-05-14 01:50:38'),
(229, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:50:38', '2025-05-14 01:50:38'),
(230, 1, 'admin/products/1', 'GET', '127.0.0.1', '[]', '2025-05-14 01:50:40', '2025-05-14 01:50:40'),
(231, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:50:44', '2025-05-14 01:50:44'),
(232, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:53:15', '2025-05-14 01:53:15'),
(233, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:53:17', '2025-05-14 01:53:17'),
(234, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:53:25', '2025-05-14 01:53:25'),
(235, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:53:36', '2025-05-14 01:53:36'),
(236, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:54:30', '2025-05-14 01:54:30'),
(237, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 01:54:32', '2025-05-14 01:54:32'),
(238, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"0\",\"thum_img_file_del_\":\"product_thum_img\\/logo_1.png,\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 01:54:41', '2025-05-14 01:54:41'),
(239, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:54:41', '2025-05-14 01:54:41'),
(240, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 01:54:45', '2025-05-14 01:54:45'),
(241, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:06:08', '2025-05-14 02:06:08'),
(242, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:06:11', '2025-05-14 02:06:11'),
(243, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:06:17', '2025-05-14 02:06:17'),
(244, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:06:17', '2025-05-14 02:06:17'),
(245, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:06:20', '2025-05-14 02:06:20'),
(246, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:07:49', '2025-05-14 02:07:49'),
(247, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:07:51', '2025-05-14 02:07:51'),
(248, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:08:29', '2025-05-14 02:08:29'),
(249, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:08:32', '2025-05-14 02:08:32'),
(250, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:09:04', '2025-05-14 02:09:04'),
(251, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:09:06', '2025-05-14 02:09:06'),
(252, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:09:14', '2025-05-14 02:09:14'),
(253, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:09:28', '2025-05-14 02:09:28'),
(254, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:18:04', '2025-05-14 02:18:04'),
(255, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:18:06', '2025-05-14 02:18:06'),
(256, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:18:11', '2025-05-14 02:18:11'),
(257, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:19:56', '2025-05-14 02:19:56'),
(258, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:04', '2025-05-14 02:20:04'),
(259, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:21', '2025-05-14 02:20:21'),
(260, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:25', '2025-05-14 02:20:25'),
(261, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:29', '2025-05-14 02:20:29'),
(262, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 02:20:30', '2025-05-14 02:20:30'),
(263, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:31', '2025-05-14 02:20:31'),
(264, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:41', '2025-05-14 02:20:41'),
(265, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:45', '2025-05-14 02:20:45'),
(266, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:20:48', '2025-05-14 02:20:48'),
(267, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:48', '2025-05-14 02:20:48'),
(268, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 02:20:51', '2025-05-14 02:20:51'),
(269, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:52', '2025-05-14 02:20:52'),
(270, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:55', '2025-05-14 02:20:55'),
(271, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 02:20:57', '2025-05-14 02:20:57'),
(272, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:20:58', '2025-05-14 02:20:58'),
(273, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:21:03', '2025-05-14 02:21:03'),
(274, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:21:05', '2025-05-14 02:21:05'),
(275, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-05-14 02:21:46', '2025-05-14 02:21:46'),
(276, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$qpgzcq\\/d39DL3f9McXrS7u3iihDUo1K7\\/sQ6ruYhthM7lsLlJSq6C\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:21:55', '2025-05-14 02:21:55'),
(277, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-05-14 02:21:56', '2025-05-14 02:21:56'),
(278, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-05-14 02:21:58', '2025-05-14 02:21:58'),
(279, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:22:02', '2025-05-14 02:22:02'),
(280, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2025-05-14 02:22:03', '2025-05-14 02:22:03'),
(281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-14 02:22:07', '2025-05-14 02:22:07'),
(282, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:22:10', '2025-05-14 02:22:10'),
(283, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:23:42', '2025-05-14 02:23:42'),
(284, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:23:44', '2025-05-14 02:23:44'),
(285, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:23:49', '2025-05-14 02:23:49'),
(286, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:25:07', '2025-05-14 02:25:07'),
(287, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:25:13', '2025-05-14 02:25:13'),
(288, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2025-05-14 02:25:19', '2025-05-14 02:25:19'),
(289, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:25:19', '2025-05-14 02:25:19'),
(290, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:25:37', '2025-05-14 02:25:37'),
(291, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:25:41', '2025-05-14 02:25:41'),
(292, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:25:49', '2025-05-14 02:25:49'),
(293, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:25:49', '2025-05-14 02:25:49'),
(294, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:26:12', '2025-05-14 02:26:12'),
(295, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:26:21', '2025-05-14 02:26:21'),
(296, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:26:24', '2025-05-14 02:26:24'),
(297, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:26:26', '2025-05-14 02:26:26'),
(298, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:27:06', '2025-05-14 02:27:06'),
(299, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:27:08', '2025-05-14 02:27:08'),
(300, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:28:24', '2025-05-14 02:28:24'),
(301, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:28:30', '2025-05-14 02:28:30'),
(302, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:28:38', '2025-05-14 02:28:38'),
(303, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:28:38', '2025-05-14 02:28:38'),
(304, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:28:47', '2025-05-14 02:28:47'),
(305, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"image_file_del_\":\"images\\/about-us-image.png,\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:30:03', '2025-05-14 02:30:03'),
(306, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:30:03', '2025-05-14 02:30:03'),
(307, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 02:30:14', '2025-05-14 02:30:14'),
(308, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 02:30:21', '2025-05-14 02:30:21'),
(309, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:30:21', '2025-05-14 02:30:21'),
(310, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 02:30:47', '2025-05-14 02:30:47'),
(311, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:30:47', '2025-05-14 02:30:47'),
(312, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 02:30:51', '2025-05-14 02:30:51'),
(313, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:13:35', '2025-05-14 03:13:35'),
(314, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 03:15:47', '2025-05-14 03:15:47'),
(315, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:15:48', '2025-05-14 03:15:48'),
(316, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:15:52', '2025-05-14 03:15:52'),
(317, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:16:27', '2025-05-14 03:16:27'),
(318, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:32:51', '2025-05-14 03:32:51'),
(319, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2025-05-14 03:33:05', '2025-05-14 03:33:05'),
(320, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:33:05', '2025-05-14 03:33:05'),
(321, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:33:09', '2025-05-14 03:33:09'),
(322, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:38:04', '2025-05-14 03:38:04'),
(323, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"Voluptatibus optio\",\"description\":\"Minima qui officia d\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"pictures_file_del_\":\"product_banner\\/qualityicon-1_1.jpg,product_banner\\/qualityicon-2_1.jpg,product_banner\\/qualityicon-3_1.jpg,product_banner\\/qualityicon-4_1.jpg,\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:38:26', '2025-05-14 03:38:26'),
(324, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:38:26', '2025-05-14 03:38:26'),
(325, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:38:28', '2025-05-14 03:38:28'),
(326, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:49:11', '2025-05-14 03:49:11'),
(327, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:49:28', '2025-05-14 03:49:28');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(328, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<h2><strong>Myths vs Reality<\\/strong><\\/h2>\\r\\n\\r\\n<table cellspacing=\\\"0\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>S.R. Number<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Myth<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Reality<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>1<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Only smart people can speak well<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Anyone can speak well with practice.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>2<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>English is the only way to communicate properly<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>You can be a good communicator in any language.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>3<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Talking more means better communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking clearly and simply is more effective.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>4<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Using big words makes you sound smart<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Simple words are easier to understand and more powerful.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>5<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Communication skills cannot be learned<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>The ability to communicate is a skill that may be developed.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>6<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Only leaders or managers need communication skills<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Everyone needs good communication &mdash; students, workers, and homemakers, too.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>7<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Writing skills are not part of communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Writing is also a key part of good communication.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>8<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Good communicators never make mistakes<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Everyone makes mistakes, and you get better by learning from them.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>9<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking fast shows confidence<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking slowly and showing real confidence.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>10<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Body language doesn&rsquo;t matter in communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Body language is very important &mdash; it shows your feelings without words.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:50:50', '2025-05-14 03:50:50'),
(329, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:50:51', '2025-05-14 03:50:51'),
(330, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:51:30', '2025-05-14 03:51:30'),
(331, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<h2><strong>Myths vs Reality<\\/strong><\\/h2>\\r\\n\\r\\n<table cellspacing=\\\"0\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>S.R. Number<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Myth<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Reality<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>1<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Only smart people can speak well<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Anyone can speak well with practice.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>2<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>English is the only way to communicate properly<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>You can be a good communicator in any language.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>3<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Talking more means better communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking clearly and simply is more effective.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>4<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Using big words makes you sound smart<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Simple words are easier to understand and more powerful.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>5<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Communication skills cannot be learned<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>The ability to communicate is a skill that may be developed.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>6<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Only leaders or managers need communication skills<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Everyone needs good communication &mdash; students, workers, and homemakers, too.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>7<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Writing skills are not part of communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Writing is also a key part of good communication.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>8<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Good communicators never make mistakes<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Everyone makes mistakes, and you get better by learning from them.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>9<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking fast shows confidence<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking slowly and showing real confidence.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>10<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Body language doesn&rsquo;t matter in communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Body language is very important &mdash; it shows your feelings without words.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:51:36', '2025-05-14 03:51:36'),
(332, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:51:36', '2025-05-14 03:51:36'),
(333, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:51:38', '2025-05-14 03:51:38'),
(334, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"At veniam elit off\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:52:09', '2025-05-14 03:52:09'),
(335, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:52:09', '2025-05-14 03:52:09'),
(336, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:52:11', '2025-05-14 03:52:11'),
(337, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:53:40', '2025-05-14 03:53:40'),
(338, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 03:53:44', '2025-05-14 03:53:44'),
(339, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:53:47', '2025-05-14 03:53:47'),
(340, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"search_terms\":null,\"title\":\"Products\",\"icon\":\"icon-file\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:53:53', '2025-05-14 03:53:53'),
(341, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 03:53:53', '2025-05-14 03:53:53'),
(342, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-05-14 03:53:55', '2025-05-14 03:53:55'),
(343, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:53:59', '2025-05-14 03:53:59'),
(344, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-14 03:54:00', '2025-05-14 03:54:00'),
(345, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:54:02', '2025-05-14 03:54:02'),
(346, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 03:57:29', '2025-05-14 03:57:29'),
(347, 1, 'admin/products', 'POST', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":null,\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"asdsad\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"after-save\":\"view\"}', '2025-05-14 03:58:15', '2025-05-14 03:58:15'),
(348, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:15', '2025-05-14 03:58:15'),
(349, 1, 'admin/products', 'POST', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":null,\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"asdsad\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\"}', '2025-05-14 03:58:23', '2025-05-14 03:58:23'),
(350, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:24', '2025-05-14 03:58:24'),
(351, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:26', '2025-05-14 03:58:26'),
(352, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"asdsad\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:58:36', '2025-05-14 03:58:36'),
(353, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:36', '2025-05-14 03:58:36'),
(354, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:38', '2025-05-14 03:58:38'),
(355, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"asdsad\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 03:58:47', '2025-05-14 03:58:47'),
(356, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:47', '2025-05-14 03:58:47'),
(357, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:49', '2025-05-14 03:58:49'),
(358, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:55', '2025-05-14 03:58:55'),
(359, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 03:58:57', '2025-05-14 03:58:57'),
(360, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 03:58:58', '2025-05-14 03:58:58'),
(361, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:42', '2025-05-14 04:09:42'),
(362, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 04:09:45', '2025-05-14 04:09:45'),
(363, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:45', '2025-05-14 04:09:45'),
(364, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:49', '2025-05-14 04:09:49'),
(365, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:51', '2025-05-14 04:09:51'),
(366, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:51', '2025-05-14 04:09:51'),
(367, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:52', '2025-05-14 04:09:52'),
(368, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:53', '2025-05-14 04:09:53'),
(369, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:53', '2025-05-14 04:09:53'),
(370, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:54', '2025-05-14 04:09:54'),
(371, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:54', '2025-05-14 04:09:54'),
(372, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:55', '2025-05-14 04:09:55'),
(373, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:55', '2025-05-14 04:09:55'),
(374, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:56', '2025-05-14 04:09:56'),
(375, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:56', '2025-05-14 04:09:56'),
(376, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:57', '2025-05-14 04:09:57'),
(377, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:58', '2025-05-14 04:09:58'),
(378, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:58', '2025-05-14 04:09:58'),
(379, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:09:59', '2025-05-14 04:09:59'),
(380, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:00', '2025-05-14 04:10:00'),
(381, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:00', '2025-05-14 04:10:00'),
(382, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:01', '2025-05-14 04:10:01'),
(383, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:02', '2025-05-14 04:10:02'),
(384, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:03', '2025-05-14 04:10:03'),
(385, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:03', '2025-05-14 04:10:03'),
(386, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:16', '2025-05-14 04:10:16'),
(387, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:17', '2025-05-14 04:10:17'),
(388, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:17', '2025-05-14 04:10:17'),
(389, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:18', '2025-05-14 04:10:18'),
(390, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:19', '2025-05-14 04:10:19'),
(391, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:20', '2025-05-14 04:10:20'),
(392, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:20', '2025-05-14 04:10:20'),
(393, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:21', '2025-05-14 04:10:21'),
(394, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:21', '2025-05-14 04:10:21'),
(395, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:22', '2025-05-14 04:10:22'),
(396, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:23', '2025-05-14 04:10:23'),
(397, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:24', '2025-05-14 04:10:24'),
(398, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:24', '2025-05-14 04:10:24'),
(399, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:25', '2025-05-14 04:10:25'),
(400, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:25', '2025-05-14 04:10:25'),
(401, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:26', '2025-05-14 04:10:26'),
(402, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:27', '2025-05-14 04:10:27'),
(403, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:27', '2025-05-14 04:10:27'),
(404, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:28', '2025-05-14 04:10:28'),
(405, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:29', '2025-05-14 04:10:29'),
(406, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:29', '2025-05-14 04:10:29'),
(407, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:37', '2025-05-14 04:10:37'),
(408, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:51', '2025-05-14 04:10:51'),
(409, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:53', '2025-05-14 04:10:53'),
(410, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:54', '2025-05-14 04:10:54'),
(411, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:55', '2025-05-14 04:10:55'),
(412, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 04:10:55', '2025-05-14 04:10:55'),
(413, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:56', '2025-05-14 04:10:56'),
(414, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 04:10:57', '2025-05-14 04:10:57'),
(415, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:57', '2025-05-14 04:10:57'),
(416, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:58', '2025-05-14 04:10:58'),
(417, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:59', '2025-05-14 04:10:59'),
(418, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:10:59', '2025-05-14 04:10:59'),
(419, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:00', '2025-05-14 04:11:00'),
(420, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:01', '2025-05-14 04:11:01'),
(421, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:01', '2025-05-14 04:11:01'),
(422, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:02', '2025-05-14 04:11:02'),
(423, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:02', '2025-05-14 04:11:02'),
(424, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:03', '2025-05-14 04:11:03'),
(425, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:04', '2025-05-14 04:11:04'),
(426, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:05', '2025-05-14 04:11:05'),
(427, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:05', '2025-05-14 04:11:05'),
(428, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:06', '2025-05-14 04:11:06'),
(429, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:07', '2025-05-14 04:11:07'),
(430, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:07', '2025-05-14 04:11:07'),
(431, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:08', '2025-05-14 04:11:08'),
(432, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:09', '2025-05-14 04:11:09'),
(433, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:10', '2025-05-14 04:11:10'),
(434, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:10', '2025-05-14 04:11:10'),
(435, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:11', '2025-05-14 04:11:11'),
(436, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:12', '2025-05-14 04:11:12'),
(437, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:13', '2025-05-14 04:11:13'),
(438, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:14', '2025-05-14 04:11:14'),
(439, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:15', '2025-05-14 04:11:15'),
(440, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:16', '2025-05-14 04:11:16'),
(441, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:16', '2025-05-14 04:11:16'),
(442, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:17', '2025-05-14 04:11:17'),
(443, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:17', '2025-05-14 04:11:17'),
(444, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:18', '2025-05-14 04:11:18'),
(445, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:19', '2025-05-14 04:11:19'),
(446, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:20', '2025-05-14 04:11:20'),
(447, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:20', '2025-05-14 04:11:20'),
(448, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:21', '2025-05-14 04:11:21'),
(449, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:22', '2025-05-14 04:11:22'),
(450, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:22', '2025-05-14 04:11:22'),
(451, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:23', '2025-05-14 04:11:23'),
(452, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:24', '2025-05-14 04:11:24'),
(453, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:24', '2025-05-14 04:11:24'),
(454, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:25', '2025-05-14 04:11:25'),
(455, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:26', '2025-05-14 04:11:26'),
(456, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:26', '2025-05-14 04:11:26'),
(457, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:27', '2025-05-14 04:11:27'),
(458, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:28', '2025-05-14 04:11:28'),
(459, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:28', '2025-05-14 04:11:28'),
(460, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:29', '2025-05-14 04:11:29'),
(461, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:30', '2025-05-14 04:11:30'),
(462, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:30', '2025-05-14 04:11:30'),
(463, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:31', '2025-05-14 04:11:31'),
(464, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:31', '2025-05-14 04:11:31'),
(465, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:32', '2025-05-14 04:11:32'),
(466, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:33', '2025-05-14 04:11:33'),
(467, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:34', '2025-05-14 04:11:34'),
(468, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:34', '2025-05-14 04:11:34'),
(469, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:35', '2025-05-14 04:11:35'),
(470, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:35', '2025-05-14 04:11:35'),
(471, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:36', '2025-05-14 04:11:36'),
(472, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:37', '2025-05-14 04:11:37'),
(473, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:11:49', '2025-05-14 04:11:49'),
(474, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"asdsad\",\"status\":\"on\",\"status_cb\":\"on\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2025-05-14 04:11:59', '2025-05-14 04:11:59'),
(475, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:12:00', '2025-05-14 04:12:00'),
(476, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 04:12:02', '2025-05-14 04:12:02'),
(477, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 04:12:04', '2025-05-14 04:12:04'),
(478, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 04:12:06', '2025-05-14 04:12:06'),
(479, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":null,\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"itinerary\":\"asdsad\",\"status\":\"off\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 04:12:09', '2025-05-14 04:12:09'),
(480, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:12:09', '2025-05-14 04:12:09'),
(481, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 04:12:11', '2025-05-14 04:12:11'),
(482, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 04:22:16', '2025-05-14 04:22:16'),
(483, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:22:49', '2025-05-14 04:22:49'),
(484, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:23:35', '2025-05-14 04:23:35'),
(485, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:23:58', '2025-05-14 04:23:58'),
(486, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-14 04:25:10', '2025-05-14 04:25:10'),
(487, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:58:28', '2025-05-14 04:58:28'),
(488, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 04:58:30', '2025-05-14 04:58:30'),
(489, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:09:18', '2025-05-14 05:09:18'),
(490, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:10:40', '2025-05-14 05:10:40'),
(491, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":null,\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 05:10:42', '2025-05-14 05:10:42'),
(492, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:10:43', '2025-05-14 05:10:43'),
(493, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 05:10:45', '2025-05-14 05:10:45'),
(494, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:10:48', '2025-05-14 05:10:48'),
(495, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 05:11:14', '2025-05-14 05:11:14'),
(496, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:11:45', '2025-05-14 05:11:45'),
(497, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:11:46', '2025-05-14 05:11:46'),
(498, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:11:53', '2025-05-14 05:11:53'),
(499, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2025-05-14 05:11:55', '2025-05-14 05:11:55'),
(500, 1, 'admin/products', 'POST', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Laith Dickerson\",\"slug\":null,\"descount_price\":\"882\",\"price\":\"664\",\"contant\":\"<p>wdwdwdqedwq<\\/p>\",\"description\":\"<p>productLists<\\/p>\",\"status\":\"off\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"after-save\":\"view\"}', '2025-05-14 05:12:05', '2025-05-14 05:12:05'),
(501, 1, 'admin/products/3', 'GET', '127.0.0.1', '[]', '2025-05-14 05:12:05', '2025-05-14 05:12:05'),
(502, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:12:07', '2025-05-14 05:12:07'),
(503, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Laith Dickerson\",\"slug\":\"laith-dickerson\",\"descount_price\":\"882\",\"price\":\"664\",\"contant\":\"<p>wdwdwdqedwq<\\/p>\",\"description\":\"<p>productLists<\\/p>\",\"status\":\"0\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 05:12:32', '2025-05-14 05:12:32'),
(504, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:12:33', '2025-05-14 05:12:33'),
(505, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 05:13:17', '2025-05-14 05:13:17'),
(506, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 05:13:44', '2025-05-14 05:13:44'),
(507, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 05:13:54', '2025-05-14 05:13:54'),
(508, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 05:14:03', '2025-05-14 05:14:03'),
(509, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2025-05-14 05:14:04', '2025-05-14 05:14:04'),
(510, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:06', '2025-05-14 05:14:06'),
(511, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:32', '2025-05-14 05:14:32'),
(512, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":null,\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 05:14:35', '2025-05-14 05:14:35'),
(513, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:35', '2025-05-14 05:14:35'),
(514, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2025-05-14 05:14:40', '2025-05-14 05:14:40'),
(515, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:40', '2025-05-14 05:14:40'),
(516, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:43', '2025-05-14 05:14:43'),
(517, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:45', '2025-05-14 05:14:45'),
(518, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":null,\"descount_price\":\"27\",\"price\":\"346\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 05:14:48', '2025-05-14 05:14:48'),
(519, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:48', '2025-05-14 05:14:48'),
(520, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:50', '2025-05-14 05:14:50'),
(521, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Laith Dickerson\",\"slug\":null,\"descount_price\":\"882\",\"price\":\"664\",\"contant\":\"<p>wdwdwdqedwq<\\/p>\",\"description\":\"<p>productLists<\\/p>\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"wvYzRRvJN9P385tfezj9F4ZKNf4dNd5UeWJ71PnI\",\"_method\":\"PUT\"}', '2025-05-14 05:14:52', '2025-05-14 05:14:52'),
(522, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-14 05:14:52', '2025-05-14 05:14:52'),
(523, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-14 05:23:15', '2025-05-14 05:23:15'),
(524, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-15 00:03:50', '2025-05-15 00:03:50'),
(525, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:03:58', '2025-05-15 00:03:58'),
(526, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 00:04:02', '2025-05-15 00:04:02'),
(527, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:04:09', '2025-05-15 00:04:09'),
(528, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 00:04:11', '2025-05-15 00:04:11'),
(529, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>S.R. Number<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Myth<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Reality<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>1<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Only smart people can speak well<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Anyone can speak well with practice.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>2<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>English is the only way to communicate properly<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>You can be a good communicator in any language.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>3<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Talking more means better communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking clearly and simply is more effective.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>4<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Using big words makes you sound smart<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Simple words are easier to understand and more powerful.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>5<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Communication skills cannot be learned<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>The ability to communicate is a skill that may be developed.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>6<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Only leaders or managers need communication skills<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Everyone needs good communication &mdash; students, workers, and homemakers, too.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>7<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Writing skills are not part of communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Writing is also a key part of good communication.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>8<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Good communicators never make mistakes<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Everyone makes mistakes, and you get better by learning from them.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>9<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking fast shows confidence<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Speaking slowly and showing real confidence.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>10<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Body language doesn&rsquo;t matter in communication<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Body language is very important &mdash; it shows your feelings without words.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>&nbsp;<\\/th>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"jN3H38ZNC2oNQspDTeFm7cQ54E0bWmBib8UiH4rR\",\"_method\":\"PUT\"}', '2025-05-15 00:05:12', '2025-05-15 00:05:12'),
(530, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:05:13', '2025-05-15 00:05:13'),
(531, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 00:12:49', '2025-05-15 00:12:49'),
(532, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:12:58', '2025-05-15 00:12:58'),
(533, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 00:12:59', '2025-05-15 00:12:59'),
(534, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"39\",\"price\":\"761\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"jN3H38ZNC2oNQspDTeFm7cQ54E0bWmBib8UiH4rR\",\"_method\":\"PUT\"}', '2025-05-15 00:13:05', '2025-05-15 00:13:05'),
(535, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:13:05', '2025-05-15 00:13:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(536, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 00:14:45', '2025-05-15 00:14:45'),
(537, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Laith Dickerson\",\"slug\":\"laith-dickerson\",\"descount_price\":\"882\",\"price\":\"664\",\"contant\":\"<p>wdwdwdqedwq<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"jN3H38ZNC2oNQspDTeFm7cQ54E0bWmBib8UiH4rR\",\"_method\":\"PUT\"}', '2025-05-15 00:14:49', '2025-05-15 00:14:49'),
(538, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:14:50', '2025-05-15 00:14:50'),
(539, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-15 00:58:04', '2025-05-15 00:58:04'),
(540, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 00:59:48', '2025-05-15 00:59:48'),
(541, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 01:21:41', '2025-05-15 01:21:41'),
(542, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"30\",\"price\":\"27\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"twitter\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"jN3H38ZNC2oNQspDTeFm7cQ54E0bWmBib8UiH4rR\",\"_method\":\"PUT\"}', '2025-05-15 01:22:00', '2025-05-15 01:22:00'),
(543, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 01:22:00', '2025-05-15 01:22:00'),
(544, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 01:22:02', '2025-05-15 01:22:02'),
(545, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 01:22:07', '2025-05-15 01:22:07'),
(546, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-15 01:22:09', '2025-05-15 01:22:09'),
(547, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"780\",\"price\":\"600\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"twitter\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"_token\":\"jN3H38ZNC2oNQspDTeFm7cQ54E0bWmBib8UiH4rR\",\"_method\":\"PUT\"}', '2025-05-15 01:22:21', '2025-05-15 01:22:21'),
(548, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-15 01:22:21', '2025-05-15 01:22:21'),
(549, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-16 23:40:26', '2025-05-16 23:40:26'),
(550, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-05-16 23:40:38', '2025-05-16 23:40:38'),
(551, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$qpgzcq\\/d39DL3f9McXrS7u3iihDUo1K7\\/sQ6ruYhthM7lsLlJSq6C\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-16 23:40:58', '2025-05-16 23:40:58'),
(552, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-05-16 23:40:59', '2025-05-16 23:40:59'),
(553, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-05-16 23:41:02', '2025-05-16 23:41:02'),
(554, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-16 23:41:04', '2025-05-16 23:41:04'),
(555, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-16 23:42:10', '2025-05-16 23:42:10'),
(556, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-16 23:42:40', '2025-05-16 23:42:40'),
(557, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-16 23:42:49', '2025-05-16 23:42:49'),
(558, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-16 23:43:09', '2025-05-16 23:43:09'),
(559, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-16 23:50:52', '2025-05-16 23:50:52'),
(560, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-16 23:50:54', '2025-05-16 23:50:54'),
(561, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-16 23:51:00', '2025-05-16 23:51:00'),
(562, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 00:21:51', '2025-05-17 00:21:51'),
(563, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 00:21:53', '2025-05-17 00:21:53'),
(564, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"30\",\"price\":\"27\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>3582.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>42.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>772.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;12g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>31.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"whatsapp\":null,\"instagram\":null,\"linkedin\":null,\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 00:22:19', '2025-05-17 00:22:19'),
(565, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 00:22:20', '2025-05-17 00:22:20'),
(566, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"title\",\"model_name\":\"App\\\\Models\\\\Title\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TitleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"seo_title_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_home\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_home\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_product\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_product\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_product\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_contact\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_contact\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_terms\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_terms\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_terms\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 00:29:11', '2025-05-17 00:29:11'),
(567, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 00:29:12', '2025-05-17 00:29:12'),
(568, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"title\",\"model_name\":\"App\\\\Models\\\\Title\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TitleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"seo_title_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_home\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_home\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_product\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_product\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_product\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_contact\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_contact\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_terms\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_terms\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_terms\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 00:29:35', '2025-05-17 00:29:35'),
(569, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 00:29:38', '2025-05-17 00:29:38'),
(570, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 00:29:49', '2025-05-17 00:29:49'),
(571, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-05-17 00:29:51', '2025-05-17 00:29:51'),
(572, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2025-05-17 00:29:53', '2025-05-17 00:29:53'),
(573, 1, 'admin/titles', 'POST', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_product\":\"product title\",\"seo_des_product\":\"product des\",\"seo_key_product\":\"product key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"seo_title_terms\":\"terms title\",\"seo_des_terms\":\"terms des\",\"seo_key_terms\":\"terms key\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 00:31:42', '2025-05-17 00:31:42'),
(574, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-05-17 00:31:42', '2025-05-17 00:31:42'),
(575, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-05-17 01:24:37', '2025-05-17 01:24:37'),
(576, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 01:24:47', '2025-05-17 01:24:47'),
(577, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 01:24:49', '2025-05-17 01:24:49'),
(578, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Reagan Farmer\",\"slug\":\"reagan-farmer\",\"descount_price\":\"780\",\"price\":\"600\",\"contant\":\"<p>Voluptatibus optio<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"whatsapp\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"instagram\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"linkedin\":\"http:\\/\\/127.0.0.1:8000\\/product-details\",\"seo_title\":\"Reprehenderit proid\",\"seo_des\":\"Quas ullam illo id e\",\"seo_key\":\"Non quod officiis mi\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 01:24:55', '2025-05-17 01:24:55'),
(579, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 01:24:56', '2025-05-17 01:24:56'),
(580, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 01:24:57', '2025-05-17 01:24:57'),
(581, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"30\",\"price\":\"27\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>3582.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>42.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>772.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;12g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>31.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"whatsapp\":null,\"instagram\":null,\"linkedin\":null,\"seo_title\":\"Animi sunt corpori\",\"seo_des\":\"Cum qui minima id e\",\"seo_key\":\"Velit repudiandae au\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 01:25:02', '2025-05-17 01:25:02'),
(582, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 01:25:02', '2025-05-17 01:25:02'),
(583, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 01:25:04', '2025-05-17 01:25:04'),
(584, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"product_id\":\"1\",\"search_terms\":null,\"product_name\":\"Laith Dickerson\",\"slug\":\"laith-dickerson\",\"descount_price\":\"882\",\"price\":\"664\",\"contant\":\"<p>wdwdwdqedwq<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>358.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>4.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>77.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;1g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>3.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"whatsapp\":null,\"instagram\":null,\"linkedin\":null,\"seo_title\":\"Minim voluptatibus a\",\"seo_des\":\"Aperiam vitae veniam\",\"seo_key\":\"Beatae tempora maxim\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"after-save\":\"view\",\"_method\":\"PUT\"}', '2025-05-17 01:25:09', '2025-05-17 01:25:09'),
(585, 1, 'admin/products/3', 'GET', '127.0.0.1', '[]', '2025-05-17 01:25:09', '2025-05-17 01:25:09'),
(586, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2025-05-17 01:25:12', '2025-05-17 01:25:12'),
(587, 1, 'admin/product-categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 01:25:14', '2025-05-17 01:25:14'),
(588, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 01:25:17', '2025-05-17 01:25:17'),
(589, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 01:29:57', '2025-05-17 01:29:57'),
(590, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact\",\"model_name\":\"App\\\\Models\\\\Contact\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ContactController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"company\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"postal_address\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"city\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"country\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"number\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 01:33:02', '2025-05-17 01:33:02'),
(591, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 01:33:03', '2025-05-17 01:33:03'),
(592, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 01:33:23', '2025-05-17 01:33:23'),
(593, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-05-17 01:33:26', '2025-05-17 01:33:26'),
(594, 1, 'admin/contacts/create', 'GET', '127.0.0.1', '[]', '2025-05-17 01:33:28', '2025-05-17 01:33:28'),
(595, 1, 'admin/contacts', 'POST', '127.0.0.1', '{\"name\":\"Deacon Farmer\",\"company\":\"Peterson and Ruiz Trading\",\"address\":\"Enim ut sint ut des\",\"postal_address\":\"Reiciendis non repre\",\"city\":\"Veritatis esse et di\",\"country\":\"At aut rerum dolores\",\"email\":\"migu@mailinator.com\",\"number\":\"1234567890\",\"message\":\"Praesentium consequa\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 01:33:39', '2025-05-17 01:33:39'),
(596, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-05-17 01:33:39', '2025-05-17 01:33:39'),
(597, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-05-17 01:50:12', '2025-05-17 01:50:12'),
(598, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-05-17 01:56:21', '2025-05-17 01:56:21'),
(599, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 01:56:22', '2025-05-17 01:56:22'),
(600, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_product\":\"product title\",\"seo_des_product\":\"product des\",\"seo_key_product\":\"product key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"seo_title_terms\":\"terms title\",\"seo_des_terms\":\"terms des\",\"seo_key_terms\":\"terms key\",\"seo_title_privacy\":\"privacy title\",\"seo_des_privacy\":\"privacy des\",\"seo_key_privacy\":\"privacy key\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 01:56:47', '2025-05-17 01:56:47'),
(601, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-05-17 01:56:47', '2025-05-17 01:56:47'),
(602, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 03:05:12', '2025-05-17 03:05:12'),
(603, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:05:17', '2025-05-17 03:05:17'),
(604, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"2\",\"price\":\"1\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>3582.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>42.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>772.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;12g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>31.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"whatsapp\":null,\"instagram\":null,\"linkedin\":null,\"seo_title\":\"Animi sunt corpori\",\"seo_des\":\"Cum qui minima id e\",\"seo_key\":\"Velit repudiandae au\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 03:06:20', '2025-05-17 03:06:20'),
(605, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 03:06:20', '2025-05-17 03:06:20'),
(606, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:07:55', '2025-05-17 03:07:55'),
(607, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 03:08:00', '2025-05-17 03:08:00'),
(608, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:08:34', '2025-05-17 03:08:34'),
(609, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 03:17:51', '2025-05-17 03:17:51'),
(610, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"testimonials\",\"model_name\":\"App\\\\Models\\\\Testimonial\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TestimonialController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"role\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"star\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 03:19:11', '2025-05-17 03:19:11'),
(611, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 03:19:14', '2025-05-17 03:19:14'),
(612, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 03:19:55', '2025-05-17 03:19:55'),
(613, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:19:57', '2025-05-17 03:19:57'),
(614, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 03:20:30', '2025-05-17 03:20:30'),
(615, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:20:33', '2025-05-17 03:20:33'),
(616, 1, 'admin/testimonials/create', 'GET', '127.0.0.1', '[]', '2025-05-17 03:20:34', '2025-05-17 03:20:34'),
(617, 1, 'admin/testimonials', 'POST', '127.0.0.1', '{\"name\":\"Keefe Logan\",\"role\":\"Ullamco sit vel iru\",\"star\":\"2\",\"description\":\"Vero expedita error\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 03:20:48', '2025-05-17 03:20:48'),
(618, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:20:48', '2025-05-17 03:20:48'),
(619, 1, 'admin/testimonials/create', 'GET', '127.0.0.1', '[]', '2025-05-17 03:20:51', '2025-05-17 03:20:51'),
(620, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:21:07', '2025-05-17 03:21:07'),
(621, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:21:09', '2025-05-17 03:21:09'),
(622, 1, 'admin/testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:21:14', '2025-05-17 03:21:14'),
(623, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:21:28', '2025-05-17 03:21:28'),
(624, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:21:30', '2025-05-17 03:21:30'),
(625, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:21:53', '2025-05-17 03:21:53'),
(626, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:22:07', '2025-05-17 03:22:07'),
(627, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:23:05', '2025-05-17 03:23:05'),
(628, 1, 'admin/testimonials/create', 'GET', '127.0.0.1', '[]', '2025-05-17 03:23:51', '2025-05-17 03:23:51'),
(629, 1, 'admin/testimonials', 'POST', '127.0.0.1', '{\"name\":\"MacKenzie Knight\",\"role\":\"Obcaecati qui quo ve\",\"star\":\"4\",\"description\":\"Ipsum in aut distinc\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 03:24:00', '2025-05-17 03:24:00'),
(630, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:24:01', '2025-05-17 03:24:01'),
(631, 1, 'admin/testimonials/create', 'GET', '127.0.0.1', '[]', '2025-05-17 03:24:03', '2025-05-17 03:24:03'),
(632, 1, 'admin/testimonials', 'POST', '127.0.0.1', '{\"name\":\"Maggie Stanley\",\"role\":\"Sed sequi non beatae\",\"star\":\"3.5\",\"description\":\"Reiciendis rem volup\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"after-save\":\"view\"}', '2025-05-17 03:24:15', '2025-05-17 03:24:15'),
(633, 1, 'admin/testimonials/3', 'GET', '127.0.0.1', '[]', '2025-05-17 03:24:15', '2025-05-17 03:24:15'),
(634, 1, 'admin/testimonials/create', 'GET', '127.0.0.1', '[]', '2025-05-17 03:24:20', '2025-05-17 03:24:20'),
(635, 1, 'admin/testimonials', 'POST', '127.0.0.1', '{\"name\":\"Zahir Kline\",\"role\":\"Et sit voluptas sus\",\"star\":\"3\",\"description\":\"Accusamus autem amet\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 03:24:28', '2025-05-17 03:24:28'),
(636, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:24:29', '2025-05-17 03:24:29'),
(637, 1, 'admin/testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:39:21', '2025-05-17 03:39:21'),
(638, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:39:24', '2025-05-17 03:39:24'),
(639, 1, 'admin/testimonials/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:39:27', '2025-05-17 03:39:27'),
(640, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-17 03:39:30', '2025-05-17 03:39:30'),
(641, 1, 'admin/testimonials/3/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:39:32', '2025-05-17 03:39:32'),
(642, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 03:48:56', '2025-05-17 03:48:56'),
(643, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 03:48:57', '2025-05-17 03:48:57'),
(644, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"product_id\":\"2\",\"search_terms\":null,\"product_name\":\"Bethany Roach\",\"slug\":\"bethany-roach\",\"descount_price\":\"50\",\"price\":\"15\",\"contant\":\"<p>sdaasdsadsa<\\/p>\",\"description\":\"<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Energy<\\/th>\\r\\n\\t\\t\\t<td>3582.4kcal<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Protein<\\/th>\\r\\n\\t\\t\\t<td>42.16g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Carbohydrate<\\/th>\\r\\n\\t\\t\\t<td>772.34g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sugar<\\/th>\\r\\n\\t\\t\\t<td>&lt;12g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Fat<\\/th>\\r\\n\\t\\t\\t<td>31.6g<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ingredients<\\/th>\\r\\n\\t\\t\\t<td>Turmeric Whole<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"status\":\"1\",\"facebook\":null,\"whatsapp\":null,\"instagram\":null,\"linkedin\":null,\"seo_title\":\"Animi sunt corpori\",\"seo_des\":\"Cum qui minima id e\",\"seo_key\":\"Velit repudiandae au\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 03:50:19', '2025-05-17 03:50:19'),
(645, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2025-05-17 03:50:20', '2025-05-17 03:50:20'),
(646, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 04:58:36', '2025-05-17 04:58:36'),
(647, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"homebanner\",\"model_name\":\"App\\\\Models\\\\Homebanner\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HomeBannerController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 04:59:46', '2025-05-17 04:59:46'),
(648, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 04:59:47', '2025-05-17 04:59:47'),
(649, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-17 05:00:11', '2025-05-17 05:00:11'),
(650, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:01:06', '2025-05-17 05:01:06'),
(651, 1, 'admin/homebanners/create', 'GET', '127.0.0.1', '[]', '2025-05-17 05:01:08', '2025-05-17 05:01:08'),
(652, 1, 'admin/homebanners/create', 'GET', '127.0.0.1', '[]', '2025-05-17 05:02:50', '2025-05-17 05:02:50'),
(653, 1, 'admin/homebanners', 'POST', '127.0.0.1', '{\"title\":\"Esse sint enim pari\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!\\r\\n\\r\\nLorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!\",\"link\":\"https:\\/\\/www.firixalaxovul.info\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\"}', '2025-05-17 05:03:02', '2025-05-17 05:03:02'),
(654, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:03:02', '2025-05-17 05:03:02'),
(655, 1, 'admin/homebanners/create', 'GET', '127.0.0.1', '[]', '2025-05-17 05:03:05', '2025-05-17 05:03:05'),
(656, 1, 'admin/homebanners/create', 'GET', '127.0.0.1', '[]', '2025-05-17 05:03:13', '2025-05-17 05:03:13'),
(657, 1, 'admin/homebanners', 'POST', '127.0.0.1', '{\"title\":\"Modi eiusmod id bla\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!\\r\\n\\r\\nLorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!\",\"link\":\"https:\\/\\/www.duzacijibinezyw.in\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"after-save\":\"view\"}', '2025-05-17 05:03:50', '2025-05-17 05:03:50'),
(658, 1, 'admin/homebanners/create', 'GET', '127.0.0.1', '[]', '2025-05-17 05:03:50', '2025-05-17 05:03:50'),
(659, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:04:38', '2025-05-17 05:04:38'),
(660, 1, 'admin/homebanners/create', 'GET', '127.0.0.1', '[]', '2025-05-17 05:04:41', '2025-05-17 05:04:41'),
(661, 1, 'admin/homebanners', 'POST', '127.0.0.1', '{\"title\":\"Suscipit sunt magnam\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!\\r\\n\\r\\nLorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!\",\"link\":\"https:\\/\\/www.qetixeweduf.me.uk\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"after-save\":\"view\"}', '2025-05-17 05:04:50', '2025-05-17 05:04:50'),
(662, 1, 'admin/homebanners/2', 'GET', '127.0.0.1', '[]', '2025-05-17 05:04:50', '2025-05-17 05:04:50'),
(663, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:04:53', '2025-05-17 05:04:53'),
(664, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:05:04', '2025-05-17 05:05:04'),
(665, 1, 'admin/homebanners/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 05:05:34', '2025-05-17 05:05:34'),
(666, 1, 'admin/homebanners/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 05:12:13', '2025-05-17 05:12:13'),
(667, 1, 'admin/homebanners/1', 'PUT', '127.0.0.1', '{\"title\":\"Esse sint enim pari\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!<\\/p>\",\"link\":\"https:\\/\\/www.firixalaxovul.info\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 05:12:17', '2025-05-17 05:12:17'),
(668, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:12:18', '2025-05-17 05:12:18'),
(669, 1, 'admin/homebanners/2/edit', 'GET', '127.0.0.1', '[]', '2025-05-17 05:12:20', '2025-05-17 05:12:20'),
(670, 1, 'admin/homebanners/2', 'PUT', '127.0.0.1', '{\"title\":\"Suscipit sunt magnam\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!<\\/p>\",\"link\":\"https:\\/\\/www.qetixeweduf.me.uk\",\"_token\":\"Cg4VJJG8i8Dacl63jSPvXhPhgPpvL4P6lou6Sulp\",\"_method\":\"PUT\"}', '2025-05-17 05:12:24', '2025-05-17 05:12:24'),
(671, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-17 05:12:24', '2025-05-17 05:12:24'),
(672, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-05-18 23:24:21', '2025-05-18 23:24:21'),
(673, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-18 23:24:42', '2025-05-18 23:24:42'),
(674, 1, 'admin/homebanners', 'GET', '127.0.0.1', '[]', '2025-05-18 23:24:46', '2025-05-18 23:24:46'),
(675, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-19 00:10:01', '2025-05-19 00:10:01'),
(676, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"privacy\",\"model_name\":\"App\\\\Models\\\\Privacy\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PrivacyController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:11:23', '2025-05-19 00:11:23'),
(677, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-19 00:11:26', '2025-05-19 00:11:26'),
(678, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"terms\",\"model_name\":\"App\\\\Models\\\\Terms\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TermsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:12:19', '2025-05-19 00:12:19'),
(679, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-19 00:12:20', '2025-05-19 00:12:20'),
(680, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-19 00:13:28', '2025-05-19 00:13:28'),
(681, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-05-19 00:13:32', '2025-05-19 00:13:32'),
(682, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-05-19 00:13:34', '2025-05-19 00:13:34'),
(683, 1, 'admin/privacies', 'GET', '127.0.0.1', '[]', '2025-05-19 00:13:38', '2025-05-19 00:13:38'),
(684, 1, 'admin/privacies/create', 'GET', '127.0.0.1', '[]', '2025-05-19 00:14:25', '2025-05-19 00:14:25'),
(685, 1, 'admin/privacies/create', 'GET', '127.0.0.1', '[]', '2025-05-19 00:16:14', '2025-05-19 00:16:14'),
(686, 1, 'admin/privacies', 'POST', '127.0.0.1', '{\"description\":\"<h1>Privacy Policy<\\/h1>\\r\\n\\r\\n<p>Welcome to our Terms of Service page. Please read the following terms carefully before using our services.<\\/p>\\r\\n\\r\\n<h2>1. Acceptance of Terms<\\/h2>\\r\\n\\r\\n<p>By accessing or using our services, you agree to be bound by these terms and conditions.<\\/p>\\r\\n\\r\\n<h2>2. Changes to Terms<\\/h2>\\r\\n\\r\\n<p>We may update these terms from time to time. We will notify you of any changes by posting the new terms on this page.<\\/p>\\r\\n\\r\\n<h2>3. User Responsibilities<\\/h2>\\r\\n\\r\\n<p>You are responsible for your use of our services and for any content you post.<\\/p>\\r\\n\\r\\n<h2>4. Limitation of Liability<\\/h2>\\r\\n\\r\\n<p>We are not liable for any damages arising from your use of our services.<\\/p>\\r\\n\\r\\n<h3>5. Governing Law<\\/h3>\\r\\n\\r\\n<p>These terms are governed by the laws of [Your Country].<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa exercitationem cum reiciendis adipisci eius iste quae deserunt iure dignissimos voluptatibus!<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem necessitatibus rem natus recusandae cum odit?<\\/li>\\r\\n<\\/ol>\",\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:16:26', '2025-05-19 00:16:26'),
(687, 1, 'admin/privacies', 'GET', '127.0.0.1', '[]', '2025-05-19 00:16:27', '2025-05-19 00:16:27'),
(688, 1, 'admin/privacies/create', 'GET', '127.0.0.1', '[]', '2025-05-19 00:16:30', '2025-05-19 00:16:30'),
(689, 1, 'admin/privacies', 'POST', '127.0.0.1', '{\"description\":null,\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:16:48', '2025-05-19 00:16:48'),
(690, 1, 'admin/privacies', 'GET', '127.0.0.1', '[]', '2025-05-19 00:16:49', '2025-05-19 00:16:49'),
(691, 1, 'admin/privacies/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:16:54', '2025-05-19 00:16:54'),
(692, 1, 'admin/privacies', 'GET', '127.0.0.1', '[]', '2025-05-19 00:16:55', '2025-05-19 00:16:55'),
(693, 1, 'admin/privacies/1/edit', 'GET', '127.0.0.1', '[]', '2025-05-19 00:16:58', '2025-05-19 00:16:58'),
(694, 1, 'admin/privacies', 'GET', '127.0.0.1', '[]', '2025-05-19 00:17:05', '2025-05-19 00:17:05'),
(695, 1, 'admin/privacies', 'GET', '127.0.0.1', '[]', '2025-05-19 00:17:29', '2025-05-19 00:17:29'),
(696, 1, 'admin/terms', 'GET', '127.0.0.1', '[]', '2025-05-19 00:17:31', '2025-05-19 00:17:31'),
(697, 1, 'admin/terms/create', 'GET', '127.0.0.1', '[]', '2025-05-19 00:17:42', '2025-05-19 00:17:42'),
(698, 1, 'admin/terms', 'POST', '127.0.0.1', '{\"description\":\"<h1>Terms of Service<\\/h1>\\r\\n\\r\\n<p>Welcome to our Terms of Service page. Please read the following terms carefully before using our services.<\\/p>\\r\\n\\r\\n<h2>1. Acceptance of Terms<\\/h2>\\r\\n\\r\\n<p>By accessing or using our services, you agree to be bound by these terms and conditions.<\\/p>\\r\\n\\r\\n<h2>2. Changes to Terms<\\/h2>\\r\\n\\r\\n<p>We may update these terms from time to time. We will notify you of any changes by posting the new terms on this page.<\\/p>\\r\\n\\r\\n<h2>3. User Responsibilities<\\/h2>\\r\\n\\r\\n<p>You are responsible for your use of our services and for any content you post.<\\/p>\\r\\n\\r\\n<h2>4. Limitation of Liability<\\/h2>\\r\\n\\r\\n<p>We are not liable for any damages arising from your use of our services.<\\/p>\\r\\n\\r\\n<h3>5. Governing Law<\\/h3>\\r\\n\\r\\n<p>These terms are governed by the laws of [Your Country].<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa exercitationem cum reiciendis adipisci eius iste quae deserunt iure dignissimos voluptatibus!<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem necessitatibus rem natus recusandae cum odit?<\\/li>\\r\\n<\\/ol>\",\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:17:55', '2025-05-19 00:17:55'),
(699, 1, 'admin/terms/create', 'GET', '127.0.0.1', '[]', '2025-05-19 00:17:56', '2025-05-19 00:17:56'),
(700, 1, 'admin/terms/create', 'GET', '127.0.0.1', '[]', '2025-05-19 00:18:32', '2025-05-19 00:18:32'),
(701, 1, 'admin/terms', 'POST', '127.0.0.1', '{\"description\":\"<h1>Terms of Service<\\/h1>\\r\\n\\r\\n<p>Welcome to our Terms of Service page. Please read the following terms carefully before using our services.<\\/p>\\r\\n\\r\\n<h2>1. Acceptance of Terms<\\/h2>\\r\\n\\r\\n<p>By accessing or using our services, you agree to be bound by these terms and conditions.<\\/p>\\r\\n\\r\\n<h2>2. Changes to Terms<\\/h2>\\r\\n\\r\\n<p>We may update these terms from time to time. We will notify you of any changes by posting the new terms on this page.<\\/p>\\r\\n\\r\\n<h2>3. User Responsibilities<\\/h2>\\r\\n\\r\\n<p>You are responsible for your use of our services and for any content you post.<\\/p>\\r\\n\\r\\n<h2>4. Limitation of Liability<\\/h2>\\r\\n\\r\\n<p>We are not liable for any damages arising from your use of our services.<\\/p>\\r\\n\\r\\n<h3>5. Governing Law<\\/h3>\\r\\n\\r\\n<p>These terms are governed by the laws of [Your Country].<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa exercitationem cum reiciendis adipisci eius iste quae deserunt iure dignissimos voluptatibus!<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem necessitatibus rem natus recusandae cum odit?<\\/li>\\r\\n<\\/ol>\",\"_token\":\"fLnlrOWYDb9IVrUX0FC8EbWAoz59hL1syL1MSYMi\"}', '2025-05-19 00:18:40', '2025-05-19 00:18:40'),
(702, 1, 'admin/terms', 'GET', '127.0.0.1', '[]', '2025-05-19 00:18:40', '2025-05-19 00:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2025-05-13 23:57:01', '2025-05-13 23:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2025-05-13 23:55:55', '2025-05-13 23:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$qpgzcq/d39DL3f9McXrS7u3iihDUo1K7/sQ6ruYhthM7lsLlJSq6C', 'Administrator', 'images/Expert Assistance.png', NULL, '2025-05-13 23:55:55', '2025-05-16 23:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `company`, `address`, `postal_address`, `city`, `country`, `email`, `number`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Deacon Farmer', 'Peterson and Ruiz Trading', 'Enim ut sint ut des', 'Reiciendis non repre', 'Veritatis esse et di', 'At aut rerum dolores', 'migu@mailinator.com', '1234567890', 'Praesentium consequa', '2025-05-17 01:33:39', '2025-05-17 01:33:39'),
(2, 'KasperPeterson', 'Park and Blair LLC', 'Ut dolore officia di', 'Vel optio dolor fug', 'Jaipur', 'India', 'fycuk@mailinator.com', '517', 'Proident laborum se', '2025-05-17 01:49:37', '2025-05-17 01:49:37'),
(3, 'HonoratoDeleon', 'Goodman Frost Plc', 'Qui accusantium quae', 'Sint labore cumque', 'Jaipur', 'India', 'pefyqus@mailinator.com', '146', 'Labore nisi quia ips', '2025-05-17 01:50:06', '2025-05-17 01:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homebanner`
--

CREATE TABLE `homebanner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homebanner`
--

INSERT INTO `homebanner` (`id`, `image`, `title`, `description`, `link`, `created_at`, `updated_at`) VALUES
(1, 'images/illustration-set-with-different-types-herbs-spices-vector-illustration_1284-12271.jpg', 'Esse sint enim pari', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!</p>', 'https://www.firixalaxovul.info', '2025-05-17 05:03:02', '2025-05-17 05:12:17'),
(2, 'images/diveristy-condiments-frame-with-copy-space.jpg', 'Suscipit sunt magnam', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis amet omnis sit ab quae earum quis deserunt sapiente hic, aliquid blanditiis sed natus. Expedita exercitationem ratione accusantium quasi nostrum laborum!</p>', 'https://www.qetixeweduf.me.uk', '2025-05-17 05:04:50', '2025-05-17 05:12:24');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_05_14_063208_create_product_category_table', 2),
(7, '2025_05_14_064744_create_product_table', 3),
(8, '2025_05_17_055935_create_title_table', 4),
(9, '2025_05_17_070302_create_contact_table', 5),
(10, '2025_05_17_084911_create_testimonials_table', 6),
(11, '2025_05_17_102946_create_homebanner_table', 7),
(12, '2025_05_19_054123_create_privacy_table', 8),
(13, '2025_05_19_054220_create_terms_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'images/Private-Policy.jpg', '<h1>Privacy Policy</h1>\r\n\r\n<p>Welcome to our Terms of Service page. Please read the following terms carefully before using our services.</p>\r\n\r\n<h2>1. Acceptance of Terms</h2>\r\n\r\n<p>By accessing or using our services, you agree to be bound by these terms and conditions.</p>\r\n\r\n<h2>2. Changes to Terms</h2>\r\n\r\n<p>We may update these terms from time to time. We will notify you of any changes by posting the new terms on this page.</p>\r\n\r\n<h2>3. User Responsibilities</h2>\r\n\r\n<p>You are responsible for your use of our services and for any content you post.</p>\r\n\r\n<h2>4. Limitation of Liability</h2>\r\n\r\n<p>We are not liable for any damages arising from your use of our services.</p>\r\n\r\n<h3>5. Governing Law</h3>\r\n\r\n<p>These terms are governed by the laws of [Your Country].</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa exercitationem cum reiciendis adipisci eius iste quae deserunt iure dignissimos voluptatibus!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet.</p>\r\n\r\n<ol>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem necessitatibus rem natus recusandae cum odit?</li>\r\n</ol>', '2025-05-19 00:16:26', '2025-05-19 00:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pictures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `slug`, `product_id`, `image`, `pictures`, `descount_price`, `price`, `contant`, `description`, `facebook`, `whatsapp`, `instagram`, `linkedin`, `itinerary`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_des`, `seo_key`) VALUES
(1, 'Reagan Farmer', 'reagan-farmer', '1', 'images/about-us-image.png', '[\"product_banner\\/qualityicon-1.jpg\",\"product_banner\\/qualityicon-2.jpg\",\"product_banner\\/qualityicon-3.jpg\",\"product_banner\\/qualityicon-4.jpg\"]', '780', '600', '<p>Voluptatibus optio</p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Energy</th>\r\n			<td>358.4kcal</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Protein</th>\r\n			<td>4.16g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Carbohydrate</th>\r\n			<td>77.34g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sugar</th>\r\n			<td>&lt;1g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Fat</th>\r\n			<td>3.6g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ingredients</th>\r\n			<td>Turmeric Whole</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'http://127.0.0.1:8000/product-details', 'http://127.0.0.1:8000/product-details', 'http://127.0.0.1:8000/product-details', 'http://127.0.0.1:8000/product-details', 'At veniam elit off', 1, '2025-05-14 01:46:03', '2025-05-17 01:24:55', 'Reprehenderit proid', 'Quas ullam illo id e', 'Non quod officiis mi'),
(2, 'Bethany Roach', 'bethany-roach', '2', 'images/logo_1.png', '[\"product_banner\\/qualityicon-2_2.jpg\",\"product_banner\\/qualityicon-3_2.jpg\",\"product_banner\\/qualityicon-4_2.jpg\"]', '50', '15', '<p>sdaasdsadsa</p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Energy</th>\r\n			<td>3582.4kcal</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Protein</th>\r\n			<td>42.16g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Carbohydrate</th>\r\n			<td>772.34g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sugar</th>\r\n			<td>&lt;12g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Fat</th>\r\n			<td>31.6g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ingredients</th>\r\n			<td>Turmeric Whole</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, NULL, 'asdsad', 1, '2025-05-14 03:58:23', '2025-05-17 03:50:19', 'Animi sunt corpori', 'Cum qui minima id e', 'Velit repudiandae au'),
(3, 'Laith Dickerson', 'laith-dickerson', '1', 'images/Fullmetal Alchemist.jpg', '[\"product_banner\\/21615.jpg\",\"product_banner\\/21633.jpg\",\"product_banner\\/21635.jpg\"]', '882', '664', '<p>wdwdwdqedwq</p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Energy</th>\r\n			<td>358.4kcal</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Protein</th>\r\n			<td>4.16g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Carbohydrate</th>\r\n			<td>77.34g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sugar</th>\r\n			<td>&lt;1g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Fat</th>\r\n			<td>3.6g</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ingredients</th>\r\n			<td>Turmeric Whole</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, 1, '2025-05-14 05:12:05', '2025-05-17 01:25:09', 'Minim voluptatibus a', 'Aperiam vitae veniam', 'Beatae tempora maxim');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `slug`, `description`, `seo_title`, `seo_des`, `seo_key`, `created_at`, `updated_at`) VALUES
(1, 'Cat-1', 'cat-1', NULL, 'Pariatur Quis maior', 'Non aut expedita eni', 'Et architecto aut re', '2025-05-14 01:05:07', '2025-05-14 01:05:30'),
(2, 'Cat-2', 'cat-2', NULL, 'Consequatur Aut lor', 'Voluptas nisi duis s', 'Corrupti non dolor', '2025-05-14 01:05:18', '2025-05-14 01:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'images/terms-of-use-top-banner_1.jpg', '<h1>Terms of Service</h1>\r\n\r\n<p>Welcome to our Terms of Service page. Please read the following terms carefully before using our services.</p>\r\n\r\n<h2>1. Acceptance of Terms</h2>\r\n\r\n<p>By accessing or using our services, you agree to be bound by these terms and conditions.</p>\r\n\r\n<h2>2. Changes to Terms</h2>\r\n\r\n<p>We may update these terms from time to time. We will notify you of any changes by posting the new terms on this page.</p>\r\n\r\n<h2>3. User Responsibilities</h2>\r\n\r\n<p>You are responsible for your use of our services and for any content you post.</p>\r\n\r\n<h2>4. Limitation of Liability</h2>\r\n\r\n<p>We are not liable for any damages arising from your use of our services.</p>\r\n\r\n<h3>5. Governing Law</h3>\r\n\r\n<p>These terms are governed by the laws of [Your Country].</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa exercitationem cum reiciendis adipisci eius iste quae deserunt iure dignissimos voluptatibus!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet.</p>\r\n\r\n<ol>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem necessitatibus rem natus recusandae cum odit?</li>\r\n</ol>', '2025-05-19 00:18:40', '2025-05-19 00:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `role`, `star`, `description`, `created_at`, `updated_at`) VALUES
(1, 'images/photo-1633332755192-727a05c4013d.jpeg', 'Keefe Logan', 'Ullamco sit vel iru', '2', 'Vero expedita error', '2025-05-17 03:20:48', '2025-05-17 03:20:48'),
(2, 'images/photo-1633332755192-727a05c4013d_1.jpeg', 'MacKenzie Knight', 'Obcaecati qui quo ve', '4', 'Ipsum in aut distinc', '2025-05-17 03:24:01', '2025-05-17 03:24:01'),
(3, 'images/photo-1633332755192-727a05c4013d_2.jpeg', 'Maggie Stanley', 'Sed sequi non beatae', '3.5', 'Reiciendis rem volup', '2025-05-17 03:24:15', '2025-05-17 03:24:15'),
(4, 'images/photo-1633332755192-727a05c4013d_3.jpeg', 'Zahir Kline', 'Et sit voluptas sus', '3', 'Accusamus autem amet', '2025-05-17 03:24:28', '2025-05-17 03:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_home` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_home` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_product` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_product` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_terms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title_privacy` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_privacy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_privacy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `seo_title_home`, `seo_des_home`, `seo_key_home`, `seo_title_product`, `seo_des_product`, `seo_key_product`, `seo_title_contact`, `seo_des_contact`, `seo_key_contact`, `seo_title_terms`, `seo_des_terms`, `seo_key_terms`, `created_at`, `updated_at`, `seo_title_privacy`, `seo_des_privacy`, `seo_key_privacy`) VALUES
(1, 'home title', 'home des', 'home key', 'product title', 'product des', 'product key', 'contact title', 'contact des', 'contact key', 'terms title', 'terms des', 'terms key', '2025-05-17 00:31:42', '2025-05-17 01:56:47', 'privacy title', 'privacy des', 'privacy key');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homebanner`
--
ALTER TABLE `homebanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homebanner`
--
ALTER TABLE `homebanner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
