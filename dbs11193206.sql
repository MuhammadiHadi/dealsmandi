-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: db5013349348.hosting-data.io
-- Generation Time: Aug 27, 2024 at 05:55 PM
-- Server version: 8.0.36
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs11193206`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `phone`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin@gmail.com', NULL, '$2y$12$VkK/KZng.MBn4gCNOAxD9./oRg.Gjs8LFh64G75omDWa.8kz5t/vC', 'admin', '03498657832', '1710794530.png', NULL, NULL, '2024-05-26 11:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `ads_images`
--

CREATE TABLE `ads_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_images_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_images`
--

INSERT INTO `ads_images` (`id`, `image_name`, `related_images_id`, `created_at`, `updated_at`) VALUES
(2, '1710672975.png', NULL, '2024-03-17 17:56:14', '2024-03-17 17:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adv_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locationId` bigint UNSIGNED DEFAULT NULL,
  `cityId` bigint UNSIGNED DEFAULT NULL,
  `neighbourhood_Id` bigint UNSIGNED DEFAULT NULL,
  `cat_Id` bigint UNSIGNED DEFAULT NULL,
  `sub_cat_Id` bigint UNSIGNED DEFAULT NULL,
  `lavel_three_sub_cat_Id` bigint UNSIGNED DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `power_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `air_conditioning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_seats` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_doors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interior` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assembly` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `furnished` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_rooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bath_rooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `construction_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ignition_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiring_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_ad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folding_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hand_made` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_Id` bigint UNSIGNED DEFAULT NULL,
  `adv_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_isverify` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `favourite` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `title`, `price`, `description`, `adv_types`, `locationId`, `cityId`, `neighbourhood_Id`, `cat_Id`, `sub_cat_Id`, `lavel_three_sub_cat_Id`, `model`, `make`, `year`, `version`, `brand`, `condition`, `fuel`, `transmission`, `body_type`, `power_hp`, `consumption`, `air_conditioning`, `color`, `number_of_seats`, `number_of_doors`, `interior`, `features`, `source`, `registration_city`, `car_documents`, `assembly`, `furnished`, `bed_rooms`, `bath_rooms`, `construction_state`, `area_unit`, `area`, `type`, `device_type`, `engine_type`, `engine_capacity`, `ignition_type`, `origin`, `hiring_person`, `company_name`, `type_of_ad`, `salary_from`, `salary_to`, `career_level`, `salary_period`, `position_type`, `breed`, `sex`, `age`, `material`, `folding_type`, `hand_made`, `length`, `width`, `fabric`, `user_Id`, `adv_image`, `user_role`, `phone_number`, `adv_isverify`, `status`, `favourite`, `created_at`, `updated_at`) VALUES
(25, 'some ads', 'Rs-4566', 'check for error', 'main', 1, 1, 1, 18, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '[\"28.png\",\"29.png\",\"30.png\",\"31.png\"]', NULL, '234566664', 1, 0, 0, '2024-08-25 16:42:05', '2024-08-25 16:42:05'),
(26, 'screen3', 'Rs-45663', 'sser3', 'main', 7, 27, 6, 18, 23, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '[\"27.png\"]', 'user', '23333', 1, 0, 0, '2024-08-25 16:55:09', '2024-08-25 23:21:58'),
(30, 'yuu', '50000', 'tttt', 'main', 2, 12, 5, 18, 21, NULL, NULL, NULL, NULL, NULL, 'Samsung', 'Used', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '[\"30.png\"]', NULL, '3444434', 1, 0, 0, '2024-08-25 23:34:36', '2024-08-25 23:34:36'),
(31, 'ffr', 'Rs-4566', 'er', 'main', 1, 1, 1, 18, 24, NULL, NULL, NULL, NULL, NULL, 'Lenovo', 'Open Box', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '[\"34.png\"]', NULL, '2222222222', 1, 0, 0, '2024-08-25 23:43:22', '2024-08-25 23:43:22'),
(32, 'ggy', 'Rs-4566', 'ggg', 'main', 5, 78, 14, 22, 49, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '[\"login_screen.png\"]', NULL, '44444444444444', 1, 0, 0, '2024-08-25 23:45:19', '2024-08-25 23:45:19'),
(33, 'selleing', '234', 'sssser', 'main', 3, 28, 10, 19, 23, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '[\"29.png\"]', NULL, '333222333', 1, 0, 0, '2024-08-25 23:50:04', '2024-08-25 23:50:04'),
(34, '5 marla Plot for sale in Nova city Islamabad', '842500', '5 marla Plot for sale in Nova city Islamabad\r\ntotal price 19,95,000\r\ninstallments paid: 742,500\r\nProfit: 100,000\r\nTotal sale Price: 842,500', 'main', 7, 27, 6, 20, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"nova1.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-25 22:53:32', '2024-08-25 22:53:32'),
(35, 'Monthly Tarjuman ul Quran', '200', 'Monthly Tarjuman ul Quran', 'main', 5, 78, 15, 30, 167, 394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"tarjuman ul quran.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-26 20:30:40', '2024-08-26 20:30:40'),
(36, 'Honda cd 70 for sale', '14000', 'Honda cd 70 for sale', 'main', 7, 27, 6, 23, 67, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"bike.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-26 20:36:35', '2024-08-26 20:36:35'),
(37, 'Fan for sale', '7000', 'fan for sale', 'main', 7, 27, 77, 22, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"fan.jfif\"]', NULL, '0321544444', 1, 0, 0, '2024-08-26 21:54:08', '2024-08-26 21:54:08'),
(38, 'Samsun mobile for sale', '14000', 'samsung mobile for sale', 'main', 7, 27, 22, 18, 25, NULL, NULL, NULL, NULL, NULL, 'Samsung', 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"samsung1.jfif\",\"samsung2.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-26 21:56:22', '2024-08-26 21:56:22'),
(39, 'Car for sale in islamabad', '2000000', 'Car for sale in islamabad', 'main', 7, 27, 19, 19, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"passo1.jfif\",\"passo2.jfif\",\"passo3.jfif\",\"passo4.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-27 04:39:01', '2024-08-27 04:39:01'),
(40, 'dog for sale', '500', 'dog for sale', 'main', 7, 27, 7, 27, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"dog1.jfif\",\"dog2.jfif\",\"dog3.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-27 04:44:03', '2024-08-27 04:44:03'),
(41, 'toys shop', '1000', 'toys for sale in islamabad', 'main', 7, 27, 31, 31, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"kids1.jfif\",\"kids2.jfif\",\"kids3.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-27 04:46:02', '2024-08-27 04:46:02'),
(42, 'Accountant Required in Blue Area', '50000', 'Accountant Required in Blue Area', 'main', 7, 27, 6, 26, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"accountant1.jfif\",\"accountant2.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-27 04:50:26', '2024-08-27 04:50:26'),
(43, 'Mobile shop for sale in G11 markaz', '500000000', 'Mobile shop for sale in G11 markaz', 'main', 7, 27, 23, 24, 73, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '[\"mobileshop1.jfif\"]', NULL, '03469307639', 1, 0, 0, '2024-08-27 04:52:38', '2024-08-27 04:52:38'),
(44, 'Horse for sale in Islamabad', '12000', 'Horse for sale in Islamabad', 'main', 7, 27, 40, 27, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '[\"horse1.jpg\",\"horse2.jpg\"]', NULL, '03496304693', 1, 0, 0, '2024-08-27 04:55:17', '2024-08-27 04:55:17'),
(45, 'boys clothes for sale in islamabad', '1400', 'boys clothes for sale in islamabad', 'main', 7, 27, 43, 29, 157, 377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '[\"clothes1.jpg\",\"clothes2.jpg\",\"clothes3.jpg\"]', NULL, '032154444', 1, 0, 0, '2024-08-27 04:58:27', '2024-08-27 04:58:27'),
(46, 'Apartment for rent in G11', '140000', 'Apartment for rent in G11', 'main', 7, 27, 121, 21, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '[\"apartment1.jpg\",\"apartment2.jpg\",\"apartment3.jpg\"]', NULL, '03254445577', 1, 0, 0, '2024-08-27 05:01:13', '2024-08-27 05:01:13'),
(47, 'Restaurant in Bani Gala', '14000', 'Restaurant in Bani Gala', 'main', 7, 27, 122, 25, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '[\"restaurant1.jpg\",\"restaurant2.jpg\"]', NULL, '0355554445', 1, 0, 0, '2024-08-27 05:04:00', '2024-08-27 05:04:00'),
(48, 'Sufa for sale in F-6 Markaz', '100000', 'Sufa for sale in F-6 Markaz', 'main', 7, 27, 60, 28, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '[\"sufa1.jpg\",\"sufa2.jpg\",\"sufa3.jpg\"]', NULL, '035455444', 1, 0, 0, '2024-08-27 05:06:05', '2024-08-27 05:06:05'),
(49, 'Scoter for sale in E-11/2', '1400', 'Scoter for sale in E-11/2', 'main', 7, 27, 22, 23, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '[\"scoter1.jpg\",\"scoter2.jpg\",\"scoter3.jpg\"]', NULL, '034588888', 1, 0, 0, '2024-08-27 05:08:40', '2024-08-27 05:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 0, NULL, NULL),
(2, 'Samsung', 0, NULL, NULL),
(3, 'Other Tablets', 0, NULL, NULL),
(4, 'Lenovo', 0, NULL, NULL),
(5, 'Amazon', 0, NULL, NULL),
(6, 'Others', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `id` bigint UNSIGNED NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_make` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`id`, `model_name`, `car_make`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alto', 2, 1, NULL, NULL),
(2, 'Mehran VXR', 2, 1, NULL, NULL),
(3, 'Cultus VXR', 2, 1, NULL, NULL),
(4, 'Mehran VX', 2, 1, NULL, NULL),
(5, 'Vagon R', 2, 1, NULL, NULL),
(6, 'Alto Lapin', 2, 1, NULL, NULL),
(7, 'APV', 2, 1, NULL, NULL),
(8, 'Baleno', 2, 1, NULL, NULL),
(9, 'Cappuccino', 2, 1, NULL, NULL),
(10, 'Carry', 2, 1, NULL, NULL),
(11, 'Celerio', 2, 1, NULL, NULL),
(12, 'Cervo', 2, 1, NULL, NULL),
(13, 'Ciaz', 2, 1, NULL, NULL),
(14, 'Cultus VX', 2, 1, NULL, NULL),
(15, 'Cultus VXL', 2, 1, NULL, NULL),
(16, 'Escudo', 2, 1, NULL, NULL),
(17, 'Every', 2, 1, NULL, NULL),
(18, 'Every Wagon', 2, 1, NULL, NULL),
(19, 'FX', 2, 1, NULL, NULL),
(20, 'Hustler', 2, 1, NULL, NULL),
(21, 'Ignis', 2, 1, NULL, NULL),
(22, 'Jimmy', 2, 1, NULL, NULL),
(23, 'Jimmy Sierra', 2, 1, NULL, NULL),
(24, 'Kei', 2, 1, NULL, NULL),
(25, 'Khyber', 2, 1, NULL, NULL),
(26, 'Kizashi', 2, 1, NULL, NULL),
(27, 'Liana', 2, 1, NULL, NULL),
(28, 'Lj80', 2, 1, NULL, NULL),
(29, 'Margalla', 2, 1, NULL, NULL),
(30, 'Mega Carry Xtra', 2, 1, NULL, NULL),
(31, 'MR Wagon', 2, 1, NULL, NULL),
(32, 'Palette', 2, 1, NULL, NULL),
(33, 'Palette SW', 2, 1, NULL, NULL),
(34, 'Potohar', 2, 1, NULL, NULL),
(35, 'Ravi', 2, 1, NULL, NULL),
(36, 'Samuari', 2, 1, NULL, NULL),
(37, 'Sj410', 2, 1, NULL, NULL),
(38, 'Solio', 2, 1, NULL, NULL),
(39, 'Solio Bandit', 2, 1, NULL, NULL),
(40, 'Spacia', 2, 1, NULL, NULL),
(41, 'Swift', 2, 1, NULL, NULL),
(42, 'Sx4', 2, 1, NULL, NULL),
(43, 'Twin', 2, 1, NULL, NULL),
(44, 'Vitara', 2, 1, NULL, NULL),
(45, 'Wagon R', 2, 1, NULL, NULL),
(46, 'Wagon R Stingray', 2, 1, NULL, NULL),
(47, 'Others', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_images`, `status`, `created_at`, `updated_at`) VALUES
(8, 'All', NULL, 0, NULL, '2024-08-27 08:32:07'),
(12, 'cristal', NULL, 1, '2024-05-02 23:24:07', '2024-05-02 23:24:07'),
(18, 'Mobiles', 'Mobiles.png', 0, NULL, NULL),
(19, 'Vehicles', 'Vehicles.png', 0, NULL, NULL),
(20, 'Property for Sale', 'property-for-sale.png', 0, NULL, NULL),
(21, 'Property for Rent', 'property-for-rent.png', 0, NULL, NULL),
(22, 'Electronics & Home Appliances', 'electronics-home-appliances.png', 0, NULL, NULL),
(23, 'Bikes', 'bikes.png', 0, NULL, NULL),
(24, 'Business, Industrial & Agriculture', 'business-industrial-agriculture.png', 0, NULL, NULL),
(25, 'Services', 'Services.png', 0, NULL, '2024-08-27 09:30:59'),
(26, 'Jobs', 'Jobs.png', 0, NULL, NULL),
(27, 'Animals', 'Animals.png', 0, NULL, NULL),
(28, 'Furniture & Home Decor', 'furniture-home-decor.png', 0, NULL, NULL),
(29, 'Fashion & Beauty', 'fashion-beauty.png', 0, NULL, NULL),
(30, 'Books, Sports & Hobbies', 'books-sports-hobbies.png', 0, NULL, NULL),
(31, 'Kids', 'Kids.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `location_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mirpur', 1, 0, NULL, NULL),
(2, 'Muzaffarabad', 1, 0, NULL, NULL),
(3, 'Kotli', 1, 0, NULL, NULL),
(4, 'Rawalakot', 1, 0, NULL, NULL),
(5, 'Poonch', 1, 0, NULL, NULL),
(6, 'Bagh', 1, 0, NULL, NULL),
(7, 'Barnala(Azad Kashmir)', 1, 0, NULL, NULL),
(8, 'Bhimber', 1, 0, NULL, NULL),
(9, 'Neelum', 1, 0, NULL, NULL),
(10, 'Pallandri', 1, 0, NULL, NULL),
(11, 'Sudhnoti', 1, 0, NULL, NULL),
(12, 'Quetta', 2, 0, NULL, NULL),
(13, 'Awaran', 2, 0, NULL, NULL),
(14, 'Gwadar', 2, 0, NULL, NULL),
(15, 'Loralai', 2, 0, NULL, NULL),
(16, 'Chaghi', 2, 0, NULL, NULL),
(17, 'Gaddani', 2, 0, NULL, NULL),
(18, 'Hub Chowki', 2, 0, NULL, NULL),
(19, 'Kalat', 2, 0, NULL, NULL),
(20, 'Khuzdar', 2, 0, NULL, NULL),
(21, 'Lasbela', 2, 0, NULL, NULL),
(22, 'Makran', 2, 0, NULL, NULL),
(23, 'Nasirabad', 2, 0, NULL, NULL),
(24, 'Sibi', 2, 0, NULL, NULL),
(25, 'Turbat', 2, 0, NULL, NULL),
(26, 'Zhob', 2, 0, NULL, NULL),
(27, 'Islamabad', 7, 0, NULL, NULL),
(28, 'Peshawar', 3, 0, NULL, NULL),
(29, 'Abbottabad', 3, 0, NULL, NULL),
(30, 'Haripur', 3, 0, NULL, NULL),
(31, 'Mardan', 3, 0, NULL, NULL),
(32, 'Swabi', 3, 0, NULL, NULL),
(33, 'Ali Masjid', 3, 0, NULL, NULL),
(34, 'Balakot', 3, 0, NULL, NULL),
(35, 'Bannu', 3, 0, NULL, NULL),
(36, 'Batagram', 3, 0, NULL, NULL),
(37, 'Batkhela', 3, 0, NULL, NULL),
(38, 'Buner', 3, 0, NULL, NULL),
(39, 'Charsadda', 3, 0, NULL, NULL),
(40, 'Chitral', 3, 0, NULL, NULL),
(41, 'Dera Ismail Khan', 3, 0, NULL, NULL),
(42, 'Dobian', 3, 0, NULL, NULL),
(43, 'FATA', 3, 0, NULL, NULL),
(44, 'Gadoon', 3, 0, NULL, NULL),
(45, 'Galyat', 3, 0, NULL, NULL),
(46, 'Hangu', 3, 0, NULL, NULL),
(47, 'Jandola', 3, 0, NULL, NULL),
(48, 'Kaghan', 3, 0, NULL, NULL),
(49, 'Karak', 3, 0, NULL, NULL),
(50, 'Kohat', 3, 0, NULL, NULL),
(51, 'Kohistan', 3, 0, NULL, NULL),
(52, 'Laki Marwat', 3, 0, NULL, NULL),
(53, 'Landi Kotal', 3, 0, NULL, NULL),
(54, 'Lower Dir', 3, 0, NULL, NULL),
(55, 'Malakand', 3, 0, NULL, NULL),
(56, 'Mansehra', 3, 0, NULL, NULL),
(57, 'Mingaora', 3, 0, NULL, NULL),
(58, 'Miram Shah', 3, 0, NULL, NULL),
(59, 'Naran', 3, 0, NULL, NULL),
(60, 'Nowshera', 3, 0, NULL, NULL),
(61, 'Parachinar', 3, 0, NULL, NULL),
(62, 'Shabqadar', 3, 0, NULL, NULL),
(63, 'Shangla', 3, 0, NULL, NULL),
(64, 'Swat', 3, 0, NULL, NULL),
(65, 'Tank', 3, 0, NULL, NULL),
(66, 'Torkham', 3, 0, NULL, NULL),
(67, 'Upper Dir', 3, 0, NULL, NULL),
(68, 'Wana', 3, 0, NULL, NULL),
(69, 'Waziristan', 3, 0, NULL, NULL),
(70, 'Khaplu', 4, 0, NULL, NULL),
(71, 'Gilgit', 4, 0, NULL, NULL),
(72, 'Chilas', 4, 0, NULL, NULL),
(73, 'Astore', 4, 0, NULL, NULL),
(74, 'Ghanche', 4, 0, NULL, NULL),
(75, 'Ghizer', 4, 0, NULL, NULL),
(76, 'Hunza', 4, 0, NULL, NULL),
(77, 'Skardu', 4, 0, NULL, NULL),
(78, 'Lahore', 5, 0, NULL, NULL),
(79, 'Rawalpindi', 5, 0, NULL, NULL),
(80, 'Faisalabad', 5, 0, NULL, NULL),
(81, 'Multan', 5, 0, NULL, NULL),
(82, 'Gujranwala', 5, 0, NULL, NULL),
(83, 'Abdul Hakim', 5, 0, NULL, NULL),
(84, 'Ahmadpur East', 5, 0, NULL, NULL),
(85, 'Alipur', 5, 0, NULL, NULL),
(86, 'Arifwala', 5, 0, NULL, NULL),
(87, 'Attock', 5, 0, NULL, NULL),
(88, 'Bahawalnagar', 5, 0, NULL, NULL),
(89, 'Bahawalpur', 5, 0, NULL, NULL),
(90, 'Bhakkar', 5, 0, NULL, NULL),
(91, 'Bhalwal', 5, 0, NULL, NULL),
(92, 'Burewala', 5, 0, NULL, NULL),
(93, 'Chakwal', 5, 0, NULL, NULL),
(94, 'Chichawatni', 5, 0, NULL, NULL),
(95, 'Chiniot', 5, 0, NULL, NULL),
(96, 'Chishtian Mandi', 5, 0, NULL, NULL),
(97, 'Chishtian Sharif', 5, 0, NULL, NULL),
(98, 'Choa Saidan Shah', 5, 0, NULL, NULL),
(99, 'Chunian', 5, 0, NULL, NULL),
(100, 'Daska', 5, 0, NULL, NULL),
(101, 'Depalpur', 5, 0, NULL, NULL),
(102, 'Dera Ghazi Khan', 5, 0, NULL, NULL),
(103, 'Dijkot', 5, 0, NULL, NULL),
(104, 'Dina', 5, 0, NULL, NULL),
(105, 'Dinga', 5, 0, NULL, NULL),
(106, 'Duniya Pur', 5, 0, NULL, NULL),
(107, 'Fateh Jang', 5, 0, NULL, NULL),
(108, 'Ghakhar', 5, 0, NULL, NULL),
(109, 'Gojra', 5, 0, NULL, NULL),
(110, 'Gujar Khan', 5, 0, NULL, NULL),
(111, 'Gujrat', 5, 0, NULL, NULL),
(112, 'Hafizabad', 5, 0, NULL, NULL),
(113, 'Harappa', 5, 0, NULL, NULL),
(114, 'Haroonabad', 5, 0, NULL, NULL),
(115, 'Hasan Abdal', 5, 0, NULL, NULL),
(116, 'Hasilpur', 5, 0, NULL, NULL),
(117, 'Haveli lakha', 5, 0, NULL, NULL),
(118, 'Hazro', 5, 0, NULL, NULL),
(119, 'Hujra Shah Muqeem', 5, 0, NULL, NULL),
(120, 'Jahanian', 5, 0, NULL, NULL),
(121, 'Jalal Pur Jatta', 5, 0, NULL, NULL),
(122, 'Jampur', 5, 0, NULL, NULL),
(123, 'Jatoi', 5, 0, NULL, NULL),
(124, 'Jauharabad', 5, 0, NULL, NULL),
(125, 'Jhang', 5, 0, NULL, NULL),
(126, 'Jhelum', 5, 0, NULL, NULL),
(127, 'Kabirwala', 5, 0, NULL, NULL),
(128, 'Kahror Pakka', 5, 0, NULL, NULL),
(129, 'Karachi', 6, 0, NULL, NULL),
(130, 'Hyderabad', 6, 0, NULL, NULL),
(131, 'Sukkur', 6, 0, NULL, NULL),
(132, 'Larkana', 6, 0, NULL, NULL),
(133, 'Mirpur Khas', 6, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `condition_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `condition_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 0, NULL, NULL),
(2, 'Open Box', 0, NULL, NULL),
(3, 'Used', 0, NULL, NULL),
(4, 'Refurbished', 0, NULL, NULL),
(5, 'For Parts or Not Working', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `language_code`, `flage`, `status`, `created_at`, `updated_at`) VALUES
(5, 'American', 'AS', 'en', NULL, 0, '2024-03-09 18:10:52', '2024-03-09 18:10:52'),
(253, 'pakistan', 'pk', 'ur', NULL, 0, '2024-03-10 00:04:05', '2024-03-10 02:25:21'),
(254, 'america', 'us', 'en', NULL, 1, '2024-03-10 02:24:26', '2024-03-11 02:05:45'),
(255, 'Turkeya', 'TR', 'tu', NULL, 1, '2024-03-10 13:31:27', '2024-03-10 13:32:41'),
(256, 'Aruba', 'AW', 'aw', NULL, 0, '2024-05-23 01:46:52', '2024-05-23 01:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `favorite_ads_id` bigint UNSIGNED DEFAULT NULL,
  `userid` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `favorite_ads_id`, `userid`, `created_at`, `updated_at`) VALUES
(74, 73, 33, '2024-05-03 02:33:36', '2024-05-03 02:33:36'),
(79, 72, 1, '2024-05-10 11:34:35', '2024-05-10 11:34:35'),
(108, 85, 1, '2024-05-23 23:53:50', '2024-05-23 23:53:50'),
(111, 88, 2, '2024-05-24 23:56:20', '2024-05-24 23:56:20'),
(113, 89, 2, '2024-05-25 12:23:08', '2024-05-25 12:23:08'),
(114, 83, 2, '2024-05-25 13:55:31', '2024-05-25 13:55:31'),
(115, 88, 10, '2024-05-25 18:20:49', '2024-05-25 18:20:49'),
(118, 22, 2, '2024-08-25 16:36:20', '2024-08-25 16:36:20'),
(120, 25, 2, '2024-08-25 18:20:54', '2024-08-25 18:20:54'),
(122, 33, 2, '2024-08-26 09:47:49', '2024-08-26 09:47:49'),
(123, 46, 15, '2024-08-27 05:01:27', '2024-08-27 05:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint UNSIGNED NOT NULL,
  `location_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Azad Kashmir, Pakistan', 0, NULL, NULL),
(2, 'Balochistan, Pakistan', 0, NULL, NULL),
(3, 'Khyber Pakhtunkhwa, Pakistan', 0, NULL, NULL),
(4, 'Northern Areas, Pakistan', 0, NULL, NULL),
(5, 'Punjab, Pakistan', 0, NULL, NULL),
(6, 'Sindh, Pakistan', 0, NULL, NULL),
(7, 'Islamabad Capital Territory, Pakistan', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `id` bigint UNSIGNED NOT NULL,
  `make_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_make_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`id`, `make_name`, `car_make_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', '', 0, NULL, NULL),
(2, 'Suzuki', '', 0, NULL, NULL),
(3, 'Honda', '', 0, NULL, NULL),
(4, 'Daihatsu', '', 0, NULL, NULL),
(5, 'Nissan', '', 0, NULL, NULL),
(6, 'Adam', '', 0, NULL, NULL),
(7, 'Audi', '', 0, NULL, NULL),
(8, 'BAIC', '', 0, NULL, NULL),
(9, 'Bentley', '', 0, NULL, NULL),
(10, 'BMW', '', 0, NULL, NULL),
(11, 'Buick', '', 0, NULL, NULL),
(12, 'Cadilac', '', 0, NULL, NULL),
(13, 'Changan', '', 0, NULL, NULL),
(14, 'Chery', '', 0, NULL, NULL),
(15, 'Chevrolet', '', 0, NULL, NULL),
(16, 'Chrysler', '', 0, NULL, NULL),
(17, 'Classic & Antiques', '', 0, NULL, NULL),
(18, 'Daewoo', '', 0, NULL, NULL),
(19, 'Datsun', '', 0, NULL, NULL),
(20, 'DFSK', '', 0, NULL, NULL),
(21, 'Dodge', '', 0, NULL, NULL),
(22, 'Dongfeng', '', 0, NULL, NULL),
(23, 'FAW', '', 0, NULL, NULL),
(24, 'Fiat', '', 0, NULL, NULL),
(25, 'Ford', '', 0, NULL, NULL),
(26, 'GMC', '', 0, NULL, NULL),
(27, 'Haval', '', 0, NULL, NULL),
(28, 'Hino', '', 0, NULL, NULL),
(29, 'Hummer', '', 0, NULL, NULL),
(30, 'Isuzu', '', 0, NULL, NULL),
(31, 'JAC', '', 0, NULL, NULL),
(32, 'Jaguar', '', 0, NULL, NULL),
(33, 'Jeep', '', 0, NULL, NULL),
(34, 'JW Forland', '', 0, NULL, NULL),
(35, 'KIA', '', 0, NULL, NULL),
(36, 'Land Rover', '', 0, NULL, NULL),
(37, 'Lexus', '', 0, NULL, NULL),
(38, 'Mazda', '', 0, NULL, NULL),
(39, 'Mercedes', '', 0, NULL, NULL),
(40, 'MG', '', 0, NULL, NULL),
(41, 'Mitsubishi', '', 0, NULL, NULL),
(42, 'Peugeot', '', 0, NULL, NULL),
(43, 'Porsche', '', 0, NULL, NULL),
(44, 'Prince', '', 0, NULL, NULL),
(45, 'Proton', '', 0, NULL, NULL),
(46, 'Range Rover', '', 0, NULL, NULL),
(47, 'Ssangyong', '', 0, NULL, NULL),
(48, 'Subaru', '', 0, NULL, NULL),
(49, 'Tesla', '', 0, NULL, NULL),
(50, 'United', '', 0, NULL, NULL),
(51, 'Volkswagen', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_09_094413_create_countries_table', 1),
(7, '2024_03_09_171645_create_categories_table', 2),
(24, '2024_03_17_104847_create_ads_images_table', 7),
(25, '2024_03_18_113424_create_related_ads_table', 8),
(28, '2024_03_29_061417_create_favorites_table', 10),
(31, '2014_10_12_000000_create_users_table', 11),
(33, '2024_03_05_072350_create_admins_table', 12),
(39, '2024_07_28_070406_create_privacy_policy_table', 13),
(40, '2024_07_28_070527_create_terms_table', 13),
(41, '2024_08_05_043019_create_subcategorys_table', 14),
(42, '2024_08_08_164157_create_subcatogriesthrees_table', 15),
(45, '2024_08_17_041451_create_brands_table', 16),
(46, '2024_08_17_041536_create_conditions_table', 17),
(47, '2024_08_24_043108_create_locations_table', 18),
(48, '2024_03_10_072359_create_cities_table', 19),
(49, '2024_08_24_052455_create_neighbourhoods_table', 20),
(50, '2024_08_24_065658_create_makes_table', 21),
(52, '2024_08_24_070829_create_car__models_table', 22),
(53, '2024_03_12_082422_create_advertisements_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `neighbourhoods`
--

CREATE TABLE `neighbourhoods` (
  `id` bigint UNSIGNED NOT NULL,
  `neighbourhoods_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `neighbourhoods`
--

INSERT INTO `neighbourhoods` (`id`, `neighbourhoods_title`, `city_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chakswari', 1, 0, NULL, NULL),
(2, 'Allama Iqbal Road', 1, 0, NULL, NULL),
(3, 'New Mirpur City', 1, 0, NULL, NULL),
(4, 'Cantt', 12, 0, NULL, NULL),
(5, 'A-One City', 12, 0, NULL, NULL),
(6, 'Blue Area', 27, 0, NULL, NULL),
(7, 'IJP Road', 27, 0, NULL, NULL),
(8, 'DHA Defence', 27, 0, NULL, NULL),
(9, 'Hayatabad', 28, 0, NULL, NULL),
(10, 'Saddar Road', 28, 0, NULL, NULL),
(11, 'Saddar', 28, 0, NULL, NULL),
(12, 'Konodas', 71, 0, NULL, NULL),
(13, 'Gulberg', 78, 0, NULL, NULL),
(14, 'Johar Town', 78, 0, NULL, NULL),
(15, 'DHA Defence', 78, 0, NULL, NULL),
(16, 'Saddar Town', 129, 0, NULL, NULL),
(17, 'Gulshan-e-Iqbal Town', 129, 0, NULL, NULL),
(18, 'Gulistan-e-Jauhar', 129, 0, NULL, NULL),
(19, 'I-8	', 27, 1, NULL, NULL),
(20, 'Blue Area	', 27, 1, NULL, NULL),
(21, 'DHA Defence	', 27, 1, NULL, NULL),
(22, 'E-11', 27, 1, NULL, NULL),
(23, 'G-11', 27, 1, NULL, NULL),
(24, '12th Avenue', 27, 1, NULL, NULL),
(25, '17 Hills Apartments', 27, 1, NULL, NULL),
(26, '7 Wonder City', 27, 1, NULL, NULL),
(27, '7th Avenue', 27, 1, NULL, NULL),
(28, '9th Avenue', 27, 1, NULL, NULL),
(29, 'AGHOSH', 27, 1, NULL, NULL),
(30, 'Aara', 27, 1, NULL, NULL),
(31, 'Abdullah Garden', 27, 1, NULL, NULL),
(32, 'Agha Shahi Avenue', 27, 1, NULL, NULL),
(33, 'Ahmed Town', 27, 1, NULL, NULL),
(34, 'Airline Avenue', 27, 1, NULL, NULL),
(35, 'Airport Avenue Housing Society	', 27, 1, NULL, NULL),
(36, 'Airport Enclave', 27, 1, NULL, NULL),
(37, 'Airport Residencia', 27, 1, NULL, NULL),
(38, 'Aiza Garden', 27, 1, NULL, NULL),
(39, 'Akbar Town', 27, 1, NULL, NULL),
(40, 'Red Zone', 27, 1, NULL, NULL),
(41, 'Pakistan Secretariat', 27, 1, NULL, NULL),
(42, 'Diplomatic Enclave', 27, 1, NULL, NULL),
(43, 'B-17', 27, 1, NULL, NULL),
(44, 'C-14', 27, 1, NULL, NULL),
(45, 'C-15', 27, 1, NULL, NULL),
(46, 'D-12', 27, 1, NULL, NULL),
(47, 'D-17', 27, 1, NULL, NULL),
(48, 'D-18', 27, 1, NULL, NULL),
(49, 'D-110, Nilore', 27, 1, NULL, NULL),
(50, 'E-7', 27, 1, NULL, NULL),
(51, 'E-8', 27, 1, NULL, NULL),
(52, 'E-9', 27, 1, NULL, NULL),
(53, 'E10', 27, 1, NULL, NULL),
(54, 'E-11', 27, 1, NULL, NULL),
(55, 'E-12', 27, 1, NULL, NULL),
(56, 'E-16', 27, 1, NULL, NULL),
(57, 'E-17', 27, 1, NULL, NULL),
(58, 'E-18', 27, 1, NULL, NULL),
(59, 'F-5', 27, 1, NULL, NULL),
(60, 'F-6', 27, 1, NULL, NULL),
(61, 'F-7', 27, 1, NULL, NULL),
(62, 'F-8', 27, 1, NULL, NULL),
(63, 'F-9 Park', 27, 1, NULL, NULL),
(64, 'F-10', 27, 1, NULL, NULL),
(65, 'F-11', 27, 1, NULL, NULL),
(66, 'F-12', 27, 1, NULL, NULL),
(67, 'F-15', 27, 1, NULL, NULL),
(68, 'F-17', 27, 1, NULL, NULL),
(69, 'G-4 Ramna-4 Diplomatic Enclave', 27, 1, NULL, NULL),
(70, 'G-5 Ramna-5 Diplomatic Enclave', 27, 1, NULL, NULL),
(71, 'G-5', 27, 1, NULL, NULL),
(72, 'G-6', 27, 1, NULL, NULL),
(73, 'G-7', 27, 1, NULL, NULL),
(74, 'G-8', 27, 1, NULL, NULL),
(75, 'G-9', 27, 1, NULL, NULL),
(76, 'G-10', 27, 1, NULL, NULL),
(77, 'G-11', 27, 1, NULL, NULL),
(78, 'G-12 Maira Abadi', 27, 1, NULL, NULL),
(79, 'G-13', 27, 1, NULL, NULL),
(80, 'G-14', 27, 1, NULL, NULL),
(81, 'G-15', 27, 1, NULL, NULL),
(82, 'G-16', 27, 1, NULL, NULL),
(83, 'H-8', 27, 1, NULL, NULL),
(84, 'H-9', 27, 1, NULL, NULL),
(85, 'H-10 Islamic Univercity Islamabad', 27, 1, NULL, NULL),
(86, 'H-11', 27, 1, NULL, NULL),
(87, 'H-12 NUST University', 27, 1, NULL, NULL),
(88, 'H-13', 27, 1, NULL, NULL),
(89, 'I-8', 27, 1, NULL, NULL),
(90, 'I-9', 27, 1, NULL, NULL),
(91, 'I-10', 27, 1, NULL, NULL),
(92, 'I-11', 27, 1, NULL, NULL),
(93, 'I-12', 27, 1, NULL, NULL),
(94, 'I-13', 27, 1, NULL, NULL),
(95, 'I-14', 27, 1, NULL, NULL),
(96, 'I-15', 27, 1, NULL, NULL),
(97, 'I-16', 27, 1, NULL, NULL),
(98, 'Al Buraq Valley', 27, 1, NULL, NULL),
(99, 'Ah Huda Town', 27, 1, NULL, NULL),
(100, 'Al Madina City', 27, 1, NULL, NULL),
(101, 'Al Qaim Town', 27, 1, NULL, NULL),
(102, 'Al-Hamra Hills Agro Farming Scheme', 27, 1, NULL, NULL),
(103, 'Al-Kabir Town', 27, 1, NULL, NULL),
(104, 'Alhamra Avenue', 27, 1, NULL, NULL),
(105, 'Ali Pur', 27, 1, NULL, NULL),
(106, 'Alipur Farash', 27, 1, NULL, NULL),
(107, 'Ammar Enclave and Talha Villas', 27, 1, NULL, NULL),
(108, 'Angoori Road', 27, 1, NULL, NULL),
(109, 'Anza Zephyr Dale Agro Farms', 27, 1, NULL, NULL),
(110, 'Arcadia City', 27, 1, NULL, NULL),
(111, 'Areeba City', 27, 1, NULL, NULL),
(112, 'Areeba Homes', 27, 1, NULL, NULL),
(113, 'Arsalan Town', 27, 1, NULL, NULL),
(114, 'Asad Town', 27, 1, NULL, NULL),
(115, 'Ataturk Avenue', 27, 1, NULL, NULL),
(116, 'Athal', 27, 1, NULL, NULL),
(117, 'Atomic Energy Employee Society', 27, 1, NULL, NULL),
(118, 'Axis Mall & Apartments', 27, 1, NULL, NULL),
(119, 'Azmat Town', 27, 1, NULL, NULL),
(120, 'Bahram Vilas', 27, 1, NULL, NULL),
(121, 'Bahria Town', 27, 1, NULL, NULL),
(122, 'Bani Gala', 27, 1, NULL, NULL),
(123, 'Bhra Kahu', 27, 1, NULL, NULL),
(124, 'Bokra Road', 27, 1, NULL, NULL),
(125, 'Burma Town', 27, 1, NULL, NULL),
(126, 'C-13', 27, 1, NULL, NULL),
(127, 'C-16', 27, 1, NULL, NULL),
(128, 'C-17', 27, 1, NULL, NULL),
(129, 'C-18', 27, 1, NULL, NULL),
(130, 'C-19', 27, 1, NULL, NULL),
(131, 'CBR Town', 27, 1, NULL, NULL),
(132, 'Canyon Views Cvrp', 27, 1, NULL, NULL),
(133, 'Canyon Views Prados', 27, 1, NULL, NULL),
(134, 'Capital Enclave', 27, 1, NULL, NULL),
(135, 'Capital Town', 27, 1, NULL, NULL),
(136, 'Capital Valley', 27, 1, NULL, NULL),
(137, 'Central Avenue', 27, 1, NULL, NULL),
(138, 'Century Town', 27, 1, NULL, NULL),
(139, 'Chak Shahzad', 27, 1, NULL, NULL),
(140, 'Chatha Bakhtawar', 27, 1, NULL, NULL),
(141, 'Chattar', 27, 1, NULL, NULL),
(142, 'Chinar Model Valley', 27, 1, NULL, NULL),
(143, 'Chirah', 27, 1, NULL, NULL),
(144, 'Chucha', 27, 1, NULL, NULL),
(145, 'City Garden', 27, 1, NULL, NULL),
(146, 'Club Road', 27, 1, NULL, NULL),
(147, 'Commander Enclave', 27, 1, NULL, NULL),
(148, 'Commerce Town', 27, 1, NULL, NULL),
(149, 'Commoners Flower Valley', 27, 1, NULL, NULL),
(150, 'Commoners Gold Valley', 27, 1, NULL, NULL),
(151, 'Commoners Sky Gardens', 27, 1, NULL, NULL),
(152, 'Constitution Avenue', 27, 1, NULL, NULL),
(153, 'D-13', 27, 1, NULL, NULL),
(154, 'D-14', 27, 1, NULL, NULL),
(155, 'D-15', 27, 1, NULL, NULL),
(156, 'D-16', 27, 1, NULL, NULL),
(157, 'D1 Capital Park City', 27, 1, NULL, NULL),
(158, 'Danial Town', 27, 1, NULL, NULL),
(159, 'Darussalam Coop Society', 27, 1, NULL, NULL),
(160, 'Discovery Gardens', 27, 1, NULL, NULL),
(161, 'Doctors Housing Society', 27, 1, NULL, NULL),
(162, 'Dream Valley Smart City', 27, 1, NULL, NULL),
(163, 'E-13', 27, 1, NULL, NULL),
(164, 'E-14', 27, 1, NULL, NULL),
(165, 'E-15', 27, 1, NULL, NULL),
(166, 'Eden Life Islamabad', 27, 1, NULL, NULL),
(167, 'Elite Reverie Housing', 27, 1, NULL, NULL),
(168, 'Emaar Canyon Views', 27, 1, NULL, NULL),
(169, 'Embassy Road', 27, 1, NULL, NULL),
(170, 'Engineering Co-operative House (ECHS)', 27, 1, NULL, NULL),
(171, 'F-13', 27, 1, NULL, NULL),
(172, 'F-14', 27, 1, NULL, NULL),
(173, 'F-16', 27, 1, NULL, NULL),
(174, 'FECHS', 27, 1, NULL, NULL),
(175, 'FOECHS - Foreign Office Employee Society', 27, 1, NULL, NULL),
(176, 'Faisal Town - F-18', 27, 1, NULL, NULL),
(177, 'Fateh Jang Road', 27, 1, NULL, NULL),
(178, 'Fatima Town', 27, 1, NULL, NULL),
(179, 'Federal Government Employees Housing Foundation', 27, 1, NULL, NULL),
(180, 'Fenarina Residences', 27, 1, NULL, NULL),
(181, 'Five Star City', 27, 1, NULL, NULL),
(182, 'Frash Town', 27, 1, NULL, NULL),
(183, 'G-17', 27, 1, NULL, NULL),
(184, 'GT Road', 27, 1, NULL, NULL),
(185, 'Gandhara City', 27, 1, NULL, NULL),
(186, 'Garden Town', 27, 1, NULL, NULL),
(187, 'Ghauri Town', 27, 1, NULL, NULL),
(188, 'Golra Mor', 27, 1, NULL, NULL),
(189, 'Golra Road', 27, 1, NULL, NULL),
(190, 'Grace Valley', 27, 1, NULL, NULL),
(191, 'Graceland Housing', 27, 1, NULL, NULL),
(192, 'Grain Market', 27, 1, NULL, NULL),
(193, 'Green Avenue', 27, 1, NULL, NULL),
(194, 'Green City', 27, 1, NULL, NULL);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'main', '0ce141cdeb493d1f245cbf0cb10d4527aa4e21d0c7b3ac8ad7f24b62feaffc0a', '[\"*\"]', NULL, NULL, '2024-03-26 23:43:35', '2024-03-26 23:43:35'),
(4, 'App\\Models\\User', 1, 'main', 'cf67bd967900d7a444b4782cdb7e350aadedd1000cc86138618be688b7013fce', '[\"*\"]', NULL, NULL, '2024-03-27 00:09:00', '2024-03-27 00:09:00'),
(5, 'App\\Models\\User', 1, 'main', '9767e02037fc348d53e1def47fe3d1193d9d23fe9c1cf654f64b9a363a6fbc36', '[\"*\"]', NULL, NULL, '2024-03-27 00:10:33', '2024-03-27 00:10:33'),
(6, 'App\\Models\\User', 1, 'main', '0a27f37c35951e3d93cad67dedd0ccb5da0bd92ce9a4cad3ac5855da1c6b8ac1', '[\"*\"]', NULL, NULL, '2024-03-27 00:11:09', '2024-03-27 00:11:09'),
(7, 'App\\Models\\User', 1, 'main', '86e4c058f0ea5d315c46e1a607a1adb4d0520e2a97a9bb16d3204693aa8f1afe', '[\"*\"]', NULL, NULL, '2024-03-27 00:11:39', '2024-03-27 00:11:39'),
(8, 'App\\Models\\User', 1, 'main', '4db8799a51c8139d47ac739f212874744812e39252a6cddf53ec95dd8007fd59', '[\"*\"]', NULL, NULL, '2024-03-27 00:13:20', '2024-03-27 00:13:20'),
(9, 'App\\Models\\User', 1, 'main', '6c377ac0820d806012ba36ab74001955fc145ead487d6b43e83fb559bb85b9be', '[\"*\"]', NULL, NULL, '2024-03-27 00:13:53', '2024-03-27 00:13:53'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', 'b4159e9941dd3054d7bd4b0ab07c6b58b435f9fe562e880eedab6510c2951eef', '[\"*\"]', NULL, NULL, '2024-03-27 01:47:14', '2024-03-27 01:47:14'),
(11, 'App\\Models\\User', 1, 'Personal Access Token', '10643537f1c170392c0def92a33665c10c0dac632026e7504d70ff1cb6bf9559', '[\"*\"]', NULL, NULL, '2024-03-27 01:47:33', '2024-03-27 01:47:33'),
(12, 'App\\Models\\User', 1, 'main', '05a2f68fd516286d65ead6dd8877dbd67ef9f5d43149bfb59641c6e7c24fa16a', '[\"*\"]', NULL, NULL, '2024-03-27 02:11:16', '2024-03-27 02:11:16'),
(13, 'App\\Models\\User', 1, 'main', '59554279b3c55ebe3c3e7fda80c8f18282760c416c929f8944a5050818712835', '[\"*\"]', NULL, NULL, '2024-03-27 03:49:56', '2024-03-27 03:49:56'),
(14, 'App\\Models\\User', 13, 'main', '1916bd98d5b2b0c66940c61d1dc8e04edc899a9e8eaf1236faf189d27b594175', '[\"*\"]', NULL, NULL, '2024-03-27 04:28:51', '2024-03-27 04:28:51'),
(15, 'App\\Models\\User', 13, 'main', '1b70e615b80982f6163bacd4cce7cfde28b6ce158cf9b742fbfe0ec28a5a73b2', '[\"*\"]', NULL, NULL, '2024-03-27 04:30:58', '2024-03-27 04:30:58'),
(16, 'App\\Models\\User', 14, 'main', '0cadacba1f1af9f2f02c632a19276e996d24af5f65dd1591a840bc8575c08d1c', '[\"*\"]', NULL, NULL, '2024-03-27 04:36:40', '2024-03-27 04:36:40'),
(17, 'App\\Models\\User', 15, 'main', '8ab7c0d595a58f95ac83535cdbb266aa960556aaede1ba3ffc55b85e416357c4', '[\"*\"]', NULL, NULL, '2024-03-27 04:38:47', '2024-03-27 04:38:47'),
(18, 'App\\Models\\User', 1, 'main', '551df8dd2def9d1f5fd6faf52c2962bba73cc5ff838ffe7ff55e4cfa310bfe5a', '[\"*\"]', NULL, NULL, '2024-03-27 13:52:43', '2024-03-27 13:52:43'),
(19, 'App\\Models\\User', 1, 'main', '217c5c02a58f9d1686fbe21fac965ebe4f7106916d8e47ac3593d2c8a0280952', '[\"*\"]', NULL, NULL, '2024-03-27 13:53:31', '2024-03-27 13:53:31'),
(20, 'App\\Models\\User', 1, 'main', '69ce35c9db4d02f2a12f42357c308bd2c10792923b8ff8c5dd8fca40de8c4549', '[\"*\"]', NULL, NULL, '2024-03-27 13:53:35', '2024-03-27 13:53:35'),
(21, 'App\\Models\\User', 1, 'main', '1af462a8c699f81314a9ad9bfaab9367235824b421bf9e0659c80d50387224e2', '[\"*\"]', NULL, NULL, '2024-03-27 13:54:55', '2024-03-27 13:54:55'),
(22, 'App\\Models\\User', 1, 'main', '350493a86a05469817764b997b496c41665bbb1c73e0866dbc42a3c5cd8fe5c1', '[\"*\"]', NULL, NULL, '2024-03-27 14:22:56', '2024-03-27 14:22:56'),
(23, 'App\\Models\\User', 1, 'main', '2e7d33aaf89218ec9e76e99df803362221ef93a5d6bec0a97152199666ac119c', '[\"*\"]', NULL, NULL, '2024-03-27 14:24:35', '2024-03-27 14:24:35'),
(24, 'App\\Models\\User', 1, 'main', '4f881fc71c53704da62c9284b991e40b2d64ab5bc801569e6196aeeb5f6d705a', '[\"*\"]', NULL, NULL, '2024-03-27 14:25:33', '2024-03-27 14:25:33'),
(25, 'App\\Models\\User', 1, 'main', '038a9d569a625aa2ee513c3a42e0f0ae7c6563de72c2ae38f5f6cb1d76165153', '[\"*\"]', NULL, NULL, '2024-03-27 14:26:21', '2024-03-27 14:26:21'),
(26, 'App\\Models\\User', 1, 'main', '0cf13a83b07c7a8d9103f908a7e28fdef16bb23ed29c890831c4bd96de3a370f', '[\"*\"]', NULL, NULL, '2024-03-27 14:28:05', '2024-03-27 14:28:05'),
(27, 'App\\Models\\User', 1, 'main', '96caf5a34bb907ba3eb3307b6d6d7ac11c5770cba1708a2f05df050a4149608e', '[\"*\"]', NULL, NULL, '2024-03-27 14:30:52', '2024-03-27 14:30:52'),
(28, 'App\\Models\\User', 1, 'main', '244a28bcc3948d9e42baaa7d511622c94735d82f9c52e37981bc6b759e4f8385', '[\"*\"]', NULL, NULL, '2024-03-27 14:31:22', '2024-03-27 14:31:22'),
(29, 'App\\Models\\User', 1, 'main', '17bf74dfc44184725bf4cb796063221de6fa26209734bf9ec7563811c75143ea', '[\"*\"]', NULL, NULL, '2024-03-27 14:35:58', '2024-03-27 14:35:58'),
(30, 'App\\Models\\User', 15, 'main', 'ea0fd9f01934aa8ae3c1492aac9e818844ad59bb9ee435be177c3f7b3881016c', '[\"*\"]', NULL, NULL, '2024-03-27 14:37:07', '2024-03-27 14:37:07'),
(31, 'App\\Models\\User', 1, 'main', '53ae771e6e9f65db7995d60d8b2aa44ea57b8a3efe11619b37c1e468d403f06b', '[\"*\"]', NULL, NULL, '2024-03-27 14:39:40', '2024-03-27 14:39:40'),
(32, 'App\\Models\\User', 1, 'main', '821caae84ef6c7a6081de207326e494df7f2eef457d88d9d4c11d3496dd09948', '[\"*\"]', NULL, NULL, '2024-03-27 14:44:22', '2024-03-27 14:44:22'),
(33, 'App\\Models\\User', 15, 'main', 'f3ecda3e4c384c8fc535b4ba07e66da990824598badc9f28a48a799972bf29ee', '[\"*\"]', NULL, NULL, '2024-03-27 14:45:26', '2024-03-27 14:45:26'),
(34, 'App\\Models\\User', 15, 'main', '2fa79fdcfef05bcece925cbd2e306fcedfea7c666acc6a411bce6460c1c64799', '[\"*\"]', NULL, NULL, '2024-03-27 14:47:10', '2024-03-27 14:47:10'),
(35, 'App\\Models\\User', 15, 'main', 'ee225bf52956fa015738561ca7668a9c9b22624885b13b1ad2b1958303ca5277', '[\"*\"]', NULL, NULL, '2024-03-27 14:48:39', '2024-03-27 14:48:39'),
(36, 'App\\Models\\User', 1, 'main', '7dfa5a7f548d6e93cf5a8336128bc1f4645cc2294f49c10b965c6dd0a229c980', '[\"*\"]', NULL, NULL, '2024-03-27 14:49:23', '2024-03-27 14:49:23'),
(37, 'App\\Models\\User', 1, 'main', 'ae732311cc39d2e1776ce5a0ddcdafdcb48fd0eac43a02afef5dc021f22bff8e', '[\"*\"]', NULL, NULL, '2024-03-27 14:50:33', '2024-03-27 14:50:33'),
(38, 'App\\Models\\User', 1, 'main', 'aba13d35380d0f745fe2dc1fe5a832cf843fe28603fde13196f39b8122646e87', '[\"*\"]', NULL, NULL, '2024-03-27 16:54:56', '2024-03-27 16:54:56'),
(39, 'App\\Models\\User', 1, 'main', '2143a6c947e6eaeed00130c5a43e1a65de4fac48620e259fe448b9f449745b78', '[\"*\"]', NULL, NULL, '2024-03-27 16:55:50', '2024-03-27 16:55:50'),
(40, 'App\\Models\\User', 16, 'main', 'edabaca8d9d9e30cb5d7c69c1996efe191da1fa61166aeb26ca910e98779f795', '[\"*\"]', NULL, NULL, '2024-03-27 17:14:41', '2024-03-27 17:14:41'),
(41, 'App\\Models\\User', 1, 'main', 'a747f0fda925e31446062d4adf200a113dff76240b13a59e0f5fbc006afd4196', '[\"*\"]', NULL, NULL, '2024-03-29 11:59:21', '2024-03-29 11:59:21'),
(42, 'App\\Models\\User', 1, 'main', 'ba258ef7fb31cb401a316d5d2f43723bb1b1a66889354a001362789b836a3489', '[\"*\"]', NULL, NULL, '2024-03-29 12:03:47', '2024-03-29 12:03:47'),
(43, 'App\\Models\\User', 16, 'main', '8e9c5689deb4ed3d923431718517fc92e9f15ee380143b920ffd3087524cce96', '[\"*\"]', NULL, NULL, '2024-03-29 12:12:48', '2024-03-29 12:12:48'),
(44, 'App\\Models\\User', 16, 'main', '01bb8edbf56ba03836279f94258816ee249198c540ee4bd5e0d41013095418b4', '[\"*\"]', NULL, NULL, '2024-03-29 12:13:20', '2024-03-29 12:13:20'),
(45, 'App\\Models\\User', 1, 'main', '330b589ae99bae4c52a668693cbe49921f0fb115c20872aaed9b3c397480c7e0', '[\"*\"]', NULL, NULL, '2024-03-29 12:13:56', '2024-03-29 12:13:56'),
(46, 'App\\Models\\User', 1, 'main', 'a7c2798bed405053c7ff670a40dceb619e12e6c71e6251d3f524a707d319546a', '[\"*\"]', NULL, NULL, '2024-03-29 12:14:01', '2024-03-29 12:14:01'),
(47, 'App\\Models\\User', 16, 'main', '78fe280aad503bf36d049261e46861fab2a713373adbf45bd0b2d256cc14aeb3', '[\"*\"]', NULL, NULL, '2024-03-29 12:15:22', '2024-03-29 12:15:22'),
(48, 'App\\Models\\User', 16, 'main', 'b92eb26f0fd491fa69b75065ba7848e43a8d6804ae3f62f9ccc7189dba659cf4', '[\"*\"]', NULL, NULL, '2024-03-29 12:16:48', '2024-03-29 12:16:48'),
(49, 'App\\Models\\User', 1, 'main', '6cea1223f28b420614405c2892cc0a4c23c09c230312430ffa026623a98b5a7f', '[\"*\"]', NULL, NULL, '2024-03-29 12:18:23', '2024-03-29 12:18:23'),
(50, 'App\\Models\\User', 16, 'main', '80917a333a83413013d554b844b16647e92a994e37908d405e3a8b683d9d7a18', '[\"*\"]', NULL, NULL, '2024-03-29 12:23:49', '2024-03-29 12:23:49'),
(51, 'App\\Models\\User', 16, 'main', 'a80e9bed18b18d27fb09ad2203e502787f866871ae7b1083deb67a430fca70ba', '[\"*\"]', NULL, NULL, '2024-03-29 12:28:29', '2024-03-29 12:28:29'),
(52, 'App\\Models\\User', 16, 'main', 'da8593ba4eddb965bce315c78a4755c96738f5901e4c5f579bcc3384b0386504', '[\"*\"]', NULL, NULL, '2024-03-29 12:30:58', '2024-03-29 12:30:58'),
(53, 'App\\Models\\User', 16, 'main', '4960e3218a7ccae53b40ac48737399efcb05602d58fb268831bc61f9ab17310c', '[\"*\"]', NULL, NULL, '2024-03-29 12:34:20', '2024-03-29 12:34:20'),
(54, 'App\\Models\\User', 14, 'main', '395d3e66dcce271799748648ceb7934c2334ca70e07720a114078504ca127552', '[\"*\"]', NULL, NULL, '2024-03-29 13:08:35', '2024-03-29 13:08:35'),
(55, 'App\\Models\\User', 1, 'main', '72f6a75dd34cedf073cc40f67390e975c10e5fa503cd5f483f7c3922fb4f6850', '[\"*\"]', NULL, NULL, '2024-03-29 14:21:59', '2024-03-29 14:21:59'),
(56, 'App\\Models\\User', 1, 'main', 'a104d2598feb803fa3c8bcf49e24fc0961e428694a591d7aaf0d86bda3d66da5', '[\"*\"]', NULL, NULL, '2024-03-29 14:24:02', '2024-03-29 14:24:02'),
(57, 'App\\Models\\User', 1, 'main', '01f607e5bbf239252a4a809fba057cb9579f92e9a1df6b243b4e077c19f8bc9e', '[\"*\"]', NULL, NULL, '2024-03-29 14:31:35', '2024-03-29 14:31:35'),
(58, 'App\\Models\\User', 1, 'main', '0b9cef4d5ed16e71767340e11b07e3d93066f328a4726ca6d0fa118c3980130f', '[\"*\"]', NULL, NULL, '2024-03-29 16:27:00', '2024-03-29 16:27:00'),
(59, 'App\\Models\\User', 1, 'main', 'e6f4276107ee437e172fddca0336b1e394c68fda79f56a44729b8e35b5252399', '[\"*\"]', NULL, NULL, '2024-03-29 16:31:17', '2024-03-29 16:31:17'),
(60, 'App\\Models\\User', 1, 'main', 'c822b811c1b6b79ec77bd0d9b9a479f64bec90f1e46291f4709bd4722c86de42', '[\"*\"]', NULL, NULL, '2024-03-29 16:33:14', '2024-03-29 16:33:14'),
(61, 'App\\Models\\User', 1, 'main', '660c6ad11a237c53fbbcf4794c46cb47599201e2a6202c27c710842472bf9b1a', '[\"*\"]', NULL, NULL, '2024-03-29 16:34:16', '2024-03-29 16:34:16'),
(62, 'App\\Models\\User', 1, 'main', '984d2081773019b634017c35abbc8fb1b3fc5e8e7c319e19aa304d3f3646975c', '[\"*\"]', NULL, NULL, '2024-03-29 16:39:49', '2024-03-29 16:39:49'),
(63, 'App\\Models\\User', 1, 'main', 'cb5a0f689ac30419961ad84e896ab150c841cabcfc8c22f75fca95f755f98d1f', '[\"*\"]', NULL, NULL, '2024-03-29 16:44:05', '2024-03-29 16:44:05'),
(64, 'App\\Models\\User', 1, 'main', '2dd450546ab316d14b38141ca6d1e39da19bca664f9daca06313030be24de6b4', '[\"*\"]', NULL, NULL, '2024-03-29 16:45:49', '2024-03-29 16:45:49'),
(65, 'App\\Models\\User', 15, 'main', '9365fa26750add80325599398b1b5602a9ac79b127e04d805348949c72f35405', '[\"*\"]', NULL, NULL, '2024-03-29 16:58:23', '2024-03-29 16:58:23'),
(66, 'App\\Models\\User', 16, 'main', '20c09cb5a5701c444ef803b1d6fd9645f3df69b9e45c442c316dd3541251618d', '[\"*\"]', NULL, NULL, '2024-03-29 17:02:41', '2024-03-29 17:02:41'),
(67, 'App\\Models\\User', 16, 'main', '65cfa9a44c056ebec0dbdb48dcf1db9dcff66d841e9ba5b1e8e091aa43c24ca3', '[\"*\"]', NULL, NULL, '2024-03-29 17:05:27', '2024-03-29 17:05:27'),
(68, 'App\\Models\\User', 1, 'main', 'e9a3fcde000f72dcd8b4d956555280d203bef242231106e77a34bc39b0b24f6b', '[\"*\"]', NULL, NULL, '2024-03-29 17:10:58', '2024-03-29 17:10:58'),
(69, 'App\\Models\\User', 1, 'main', 'c0db14de6eb27c26f03ef8628f142d9a25722f42023f7a7a30d3dfe959e6e6cf', '[\"*\"]', NULL, NULL, '2024-03-29 17:21:24', '2024-03-29 17:21:24'),
(70, 'App\\Models\\User', 1, 'main', 'f64c40095b5aedad5d7b7803391957d8c464e9052873c2b60d628267ee8c7bcf', '[\"*\"]', NULL, NULL, '2024-03-29 17:40:44', '2024-03-29 17:40:44'),
(71, 'App\\Models\\User', 1, 'main', '99b6063cefa7f7dadf02539ec9a78363226452df35f648f3783cd990ea6bea7f', '[\"*\"]', NULL, NULL, '2024-03-29 18:17:34', '2024-03-29 18:17:34'),
(72, 'App\\Models\\User', 1, 'main', '5eb75142d57a8296d76105e36aa5e397637ca15070ddd710ae019dd513a7d5dc', '[\"*\"]', NULL, NULL, '2024-03-29 18:26:55', '2024-03-29 18:26:55'),
(73, 'App\\Models\\User', 1, 'main', 'd9e4ef1a93ba87758483b56cb74cbbb6caf6ca1a44963adc8db16c442bdaee0b', '[\"*\"]', NULL, NULL, '2024-03-30 13:25:37', '2024-03-30 13:25:37'),
(74, 'App\\Models\\User', 1, 'main', 'fc2a57be5a00e9c1d6722c8ef0b5c2286de5578a4a304157b5f4855bc6d125b8', '[\"*\"]', NULL, NULL, '2024-03-30 14:14:34', '2024-03-30 14:14:34'),
(75, 'App\\Models\\User', 1, 'main', 'eff86b57929514cc88196a312826ab302b119dd1126d2e21fbb4bd15c6492538', '[\"*\"]', NULL, NULL, '2024-03-30 15:18:51', '2024-03-30 15:18:51'),
(76, 'App\\Models\\User', 1, 'main', '052fd3627be5f635add3d25e83d8c2e237c61157984c654c82b29f03a0e3765d', '[\"*\"]', NULL, NULL, '2024-03-30 15:20:46', '2024-03-30 15:20:46'),
(77, 'App\\Models\\User', 16, 'main', 'a8df9332e14e4c138ff8df0cecb1014c04c5fa55f62f5d794aacd68140f5646c', '[\"*\"]', NULL, NULL, '2024-03-30 15:24:11', '2024-03-30 15:24:11'),
(78, 'App\\Models\\User', 1, 'main', 'a193a9c51485fb4d8613b58804eeeb70b1f7a6ae1a880972c5d0c097a774a77d', '[\"*\"]', NULL, NULL, '2024-03-30 15:32:04', '2024-03-30 15:32:04'),
(79, 'App\\Models\\User', 14, 'main', '7ecb1b6169f391d2fa07b994f62a6f1e43160a74b74c38e4f32500b9e392d63c', '[\"*\"]', NULL, NULL, '2024-03-30 15:33:08', '2024-03-30 15:33:08'),
(80, 'App\\Models\\User', 1, 'main', '693106b1ff22de60d651c8d6b86dc2eafd9550413c527b96295da8b973642d8e', '[\"*\"]', NULL, NULL, '2024-03-30 15:46:40', '2024-03-30 15:46:40'),
(81, 'App\\Models\\User', 1, 'main', 'bff92871ec0422f40366ab2e2443b3de25107d77d2946376693755679d48fd79', '[\"*\"]', NULL, NULL, '2024-03-30 16:06:39', '2024-03-30 16:06:39'),
(82, 'App\\Models\\User', 1, 'main', 'e35aae4f04384c0012a942a9a54a93b388fa93ffaedf2cb456b3fd0112ef7bc9', '[\"*\"]', NULL, NULL, '2024-03-30 16:26:36', '2024-03-30 16:26:36'),
(83, 'App\\Models\\User', 14, 'main', '47f412c21daef8caeb16c9bc8c44b528545d53705bab95b7d8c925802729f3af', '[\"*\"]', NULL, NULL, '2024-03-30 23:07:05', '2024-03-30 23:07:05'),
(84, 'App\\Models\\User', 14, 'main', 'f19d4a0eb2d1177b5c1d9d6008691671d3a4ab004e6ccb5314b03f0ec97dfccd', '[\"*\"]', NULL, NULL, '2024-03-30 23:14:10', '2024-03-30 23:14:10'),
(85, 'App\\Models\\User', 1, 'main', '82ad03cf77684d30118ffebce4fc1769ecf5971002519424aaab6ef4cd49c2dd', '[\"*\"]', NULL, NULL, '2024-03-30 23:24:31', '2024-03-30 23:24:31'),
(86, 'App\\Models\\User', 14, 'main', 'e9fe453815ed6b721afea9a9568aa1fb771178ae9fa110222e3ab5c79bafd5a6', '[\"*\"]', NULL, NULL, '2024-03-30 23:33:48', '2024-03-30 23:33:48'),
(87, 'App\\Models\\User', 1, 'main', '2181b8ea42898c0d78e2eb8af1c006140af880164e43d70350ee819485566394', '[\"*\"]', NULL, NULL, '2024-03-30 23:43:35', '2024-03-30 23:43:35'),
(88, 'App\\Models\\User', 1, 'main', '32b729ab50f4c6fa2346d06e2dc2e6985aac7494bb0ac076c0ad4a1b7e158166', '[\"*\"]', NULL, NULL, '2024-03-30 23:56:14', '2024-03-30 23:56:14'),
(89, 'App\\Models\\User', 13, 'main', '80d6f5ee5ba2ea854879e205da73b3431edd1b65c6bb193e511b7ae7a3dccc21', '[\"*\"]', NULL, NULL, '2024-03-30 23:58:09', '2024-03-30 23:58:09'),
(90, 'App\\Models\\User', 1, 'main', 'd6d253308ebcfa5af44c16ca1dc93312d65ae935750a45f29d885fc999449fe1', '[\"*\"]', NULL, NULL, '2024-03-31 00:15:12', '2024-03-31 00:15:12'),
(91, 'App\\Models\\User', 1, 'main', '4b0a2f781d53777757fefc15feea61c070f8b549ba01a1bc87e6575a891123a8', '[\"*\"]', NULL, NULL, '2024-03-31 01:11:39', '2024-03-31 01:11:39'),
(92, 'App\\Models\\User', 1, 'main', '75a7d7f458dc8412a334967d5c5b81d70778364fe4805e227a696efe4c69de8d', '[\"*\"]', NULL, NULL, '2024-03-31 01:18:20', '2024-03-31 01:18:20'),
(93, 'App\\Models\\User', 1, 'main', '1c7541477921116e5ff461f62d47019167734c2e74bfa822f183aa0322ff6046', '[\"*\"]', NULL, NULL, '2024-03-31 01:19:16', '2024-03-31 01:19:16'),
(94, 'App\\Models\\User', 16, 'main', '7e1fbcbe8d9cdde408fb18841dc61f72e758d9d4d26db035c9a9fd5b56ba41c7', '[\"*\"]', NULL, NULL, '2024-03-31 01:26:43', '2024-03-31 01:26:43'),
(95, 'App\\Models\\User', 1, 'main', '3422a117292a793d74cc800ee5bb0c9d8d899a005d5338292d85105ff4020f95', '[\"*\"]', NULL, NULL, '2024-03-31 01:38:56', '2024-03-31 01:38:56'),
(96, 'App\\Models\\User', 1, 'main', '3b1859f42171c032db78f290c50fab2a62ff3e7bd4fbfa96841755896897fd62', '[\"*\"]', NULL, NULL, '2024-03-31 06:42:40', '2024-03-31 06:42:40'),
(97, 'App\\Models\\User', 17, 'main', '3a43cc19cd949afc1240decb1bf34168ff7b05a36fc99f77eda4983ac1ac82b2', '[\"*\"]', NULL, NULL, '2024-04-01 22:17:43', '2024-04-01 22:17:43'),
(98, 'App\\Models\\User', 18, 'main', 'bd648b2a2f413a831fceb64dee109c78db20bedb2bf38c5adc0386653fa0afcf', '[\"*\"]', NULL, NULL, '2024-04-01 22:58:17', '2024-04-01 22:58:17'),
(99, 'App\\Models\\User', 19, 'main', 'a062accf43ac83221f6aa1a6c947e32dc95b255df5bdff564e7e4aa3e38326e7', '[\"*\"]', NULL, NULL, '2024-04-01 22:58:31', '2024-04-01 22:58:31'),
(100, 'App\\Models\\User', 20, 'main', '31d8437444cda1832c8152df4953fa8493222ee6d7dca2ad945b2502eb758d08', '[\"*\"]', NULL, NULL, '2024-04-01 23:19:17', '2024-04-01 23:19:17'),
(101, 'App\\Models\\User', 21, 'main', '71ed7f34937907533a99ed9333fd4d02d01b20e980fa15a45b6fba43d7b27e89', '[\"*\"]', NULL, NULL, '2024-04-01 23:22:30', '2024-04-01 23:22:30'),
(102, 'App\\Models\\User', 22, 'main', '899d37fb1f9dffc2ad66095bcacaf7a90df2e30c074ce8e5b97117a2eb7385b9', '[\"*\"]', NULL, NULL, '2024-04-01 23:52:30', '2024-04-01 23:52:30'),
(103, 'App\\Models\\User', 23, 'main', '67f9d62144829b85154c749bbcaf494209d1adbc2e3bb815f4b73c21afd4321a', '[\"*\"]', NULL, NULL, '2024-04-01 23:53:54', '2024-04-01 23:53:54'),
(104, 'App\\Models\\User', 24, 'main', 'd912c2cd24979b453904aaeb9b7ad7c3796623c8f9bd3e6059ea480c373b1986', '[\"*\"]', NULL, NULL, '2024-04-02 00:20:33', '2024-04-02 00:20:33'),
(105, 'App\\Models\\User', 24, 'main', 'e8e8cf6ff0d19d29f1895535ba3f120a70908fb294f9714beff8c58be648f9b1', '[\"*\"]', NULL, NULL, '2024-04-02 00:21:05', '2024-04-02 00:21:05'),
(106, 'App\\Models\\User', 25, 'main', '0a62876091d90f872d35e0af8797c4e897b3475d10b699789d27f5e30f987f0b', '[\"*\"]', NULL, NULL, '2024-04-02 00:25:00', '2024-04-02 00:25:00'),
(107, 'App\\Models\\User', 26, 'main', 'defe65b71cd936feab0a6f6125ea8dff7342cac28e8b01055d75a291a67a29e7', '[\"*\"]', NULL, NULL, '2024-04-02 00:26:31', '2024-04-02 00:26:31'),
(108, 'App\\Models\\User', 27, 'main', 'b316f9e6394bc4e73829707f64d4a002e09a06ce3344625e6b426ce32ecbca07', '[\"*\"]', NULL, NULL, '2024-04-02 00:27:33', '2024-04-02 00:27:33'),
(109, 'App\\Models\\User', 28, 'main', '78cebdf14c07b465c4d1a6cbb337df0da3a46cab47b5f12908013240bfa30bc2', '[\"*\"]', NULL, NULL, '2024-04-03 15:59:06', '2024-04-03 15:59:06'),
(110, 'App\\Models\\User', 28, 'main', 'd1102f586abb05078704ac768a08c53ddf8f22dd03f6be047e4895746594ac63', '[\"*\"]', NULL, NULL, '2024-04-03 16:00:53', '2024-04-03 16:00:53'),
(111, 'App\\Models\\User', 28, 'main', '364afc033119c23d22a660561e63fb3c261529dcd998d32daee57dfa93afa99f', '[\"*\"]', NULL, NULL, '2024-04-03 16:01:48', '2024-04-03 16:01:48'),
(112, 'App\\Models\\User', 28, 'main', '632b0c1b07ef46f83bf571e7f98d63179e6efe0167583e371a974429a324696d', '[\"*\"]', NULL, NULL, '2024-04-03 16:36:39', '2024-04-03 16:36:39'),
(113, 'App\\Models\\User', 28, 'main', 'daed73161ebf46997077b39d2d68aeed718c0af9dcdb49423dc1de5171542211', '[\"*\"]', NULL, NULL, '2024-04-03 16:42:54', '2024-04-03 16:42:54'),
(114, 'App\\Models\\User', 28, 'main', '93cd79daff3072d94e1e674cacd45c31a6285cf1a84a3b4298b3d9d849c17ba6', '[\"*\"]', '2024-04-03 18:58:05', NULL, '2024-04-03 16:44:38', '2024-04-03 18:58:05'),
(115, 'App\\Models\\User', 26, 'main', 'd2edb433798c82b4c1c7adfa811440eeac813e72e0ab214c17eb9c7b6ab3c33d', '[\"*\"]', '2024-04-03 18:36:26', NULL, '2024-04-03 18:34:25', '2024-04-03 18:36:26'),
(116, 'App\\Models\\User', 26, 'main', 'a80159f7f20c64ce0e220aac82c5d32ff4d0226917098920328fd7fe03c232f4', '[\"*\"]', '2024-04-03 18:50:52', NULL, '2024-04-03 18:36:50', '2024-04-03 18:50:52'),
(117, 'App\\Models\\User', 1, 'main', '398149635a7bd8bfd188ce6e9d61d5be38210a8c53bf64205e6f2c7fa4fcd9b7', '[\"*\"]', '2024-04-03 18:55:01', NULL, '2024-04-03 18:53:21', '2024-04-03 18:55:01'),
(118, 'App\\Models\\User', 28, 'main', '40ba37ae6c75dd2aabfe6c3291264555daf5cfb1501b0077aa4f2d47197b57bc', '[\"*\"]', '2024-04-03 18:58:22', NULL, '2024-04-03 18:55:58', '2024-04-03 18:58:22'),
(119, 'App\\Models\\User', 28, 'main', 'f71ec5d18a234dfbb1708ba20147ce5c1bd0338d13d07cac00d57ef05466c3f0', '[\"*\"]', '2024-04-03 19:46:47', NULL, '2024-04-03 19:04:38', '2024-04-03 19:46:47'),
(120, 'App\\Models\\User', 29, 'main', 'f6e8158a7e0debd1a6af73f06cc9f81d0526231c9a390880786ce0c75b26fa88', '[\"*\"]', NULL, NULL, '2024-04-03 21:08:34', '2024-04-03 21:08:34'),
(121, 'App\\Models\\User', 30, 'main', 'ce9f9d012b76efbf88b3976263f431b0fe31e855500cca73d2967df023e1467e', '[\"*\"]', NULL, NULL, '2024-04-03 21:29:50', '2024-04-03 21:29:50'),
(122, 'App\\Models\\User', 31, 'main', 'e15de1ef00f16dc44ae81d0fd22c6beeaeb39f91b4a677f658107e2e91b07a13', '[\"*\"]', NULL, NULL, '2024-04-03 21:32:19', '2024-04-03 21:32:19'),
(123, 'App\\Models\\User', 32, 'main', 'e3aa4da4be64a7c7d0c28dc87852bf5d21c7d74c5c6cf292a921e3b77c4ddaa7', '[\"*\"]', NULL, NULL, '2024-04-03 21:41:21', '2024-04-03 21:41:21'),
(124, 'App\\Models\\User', 33, 'main', 'a1e7027ac3f4da0087b192c517f9359306068f765a98f79c95c6f7e20f6b179f', '[\"*\"]', NULL, NULL, '2024-04-03 21:43:48', '2024-04-03 21:43:48'),
(125, 'App\\Models\\User', 34, 'main', '611c98a02fedd3b43f897d095eb9305a142c26df9cd77c5655053f48280a107a', '[\"*\"]', NULL, NULL, '2024-04-03 22:22:33', '2024-04-03 22:22:33'),
(126, 'App\\Models\\User', 35, 'main', '22a8b711a617b122e696f4f4637d7408a7850467ae127221f8599e2aaa1659e6', '[\"*\"]', NULL, NULL, '2024-04-03 22:23:58', '2024-04-03 22:23:58'),
(127, 'App\\Models\\User', 36, 'main', 'b5aba63dd3ecca9307170707102cc3207303307999d1a547d3ef3ba240d1bf82', '[\"*\"]', NULL, NULL, '2024-04-03 22:27:22', '2024-04-03 22:27:22'),
(128, 'App\\Models\\User', 37, 'main', 'f56ea9213df57bfc228aa8f191eefb9aa37d397901e6d209b052d6d0b4ca651a', '[\"*\"]', NULL, NULL, '2024-04-03 22:29:40', '2024-04-03 22:29:40'),
(129, 'App\\Models\\User', 38, 'main', '0da0a126a8be7ef1f9cf328326bc4a7b48468e7a05f8a28de33dd7b94f450ba7', '[\"*\"]', NULL, NULL, '2024-04-03 22:31:12', '2024-04-03 22:31:12'),
(130, 'App\\Models\\User', 40, 'main', '9d3d16e797e7b83ecaa2851975342092ae4917c3c95fe6db3511edd1ae2c42ac', '[\"*\"]', NULL, NULL, '2024-04-04 00:02:23', '2024-04-04 00:02:23'),
(131, 'App\\Models\\User', 41, 'main', '2f8c8d7fa6cabd2d0f7bad896e4e622582f884695e94cb4455212eea33ac8134', '[\"*\"]', NULL, NULL, '2024-04-04 00:18:52', '2024-04-04 00:18:52'),
(132, 'App\\Models\\User', 42, 'main', '1cbc5ec19ea04a0085d214b4bb6d734157947ca43031fb7316455f62bbe916d7', '[\"*\"]', NULL, NULL, '2024-04-04 00:38:23', '2024-04-04 00:38:23'),
(133, 'App\\Models\\User', 43, 'main', '284e82fa430315737d2b887b25a03be2abd22640e6b49b50aa1e974583b8c8b0', '[\"*\"]', NULL, NULL, '2024-04-04 00:40:11', '2024-04-04 00:40:11'),
(134, 'App\\Models\\User', 44, 'main', '8a12fcfde3bcd743a006b8f45514941a08c619e353eae90957c3936958afd5f2', '[\"*\"]', NULL, NULL, '2024-04-04 00:48:41', '2024-04-04 00:48:41'),
(135, 'App\\Models\\User', 45, 'main', 'c6b02d054e479f743746369a92501661f5504fa97707127ab8c47eb783081b71', '[\"*\"]', NULL, NULL, '2024-04-04 12:09:28', '2024-04-04 12:09:28'),
(136, 'App\\Models\\User', 46, 'main', '8f39732e353498987c4f31378a6efd45cb8608ce43c71eea96a3e69d60581d17', '[\"*\"]', NULL, NULL, '2024-04-04 12:12:56', '2024-04-04 12:12:56'),
(137, 'App\\Models\\User', 47, 'main', 'd1e4eb658d0c42801470e6ed187d102fed5781548e308c334078e06330ad5283', '[\"*\"]', NULL, NULL, '2024-04-04 12:14:29', '2024-04-04 12:14:29'),
(138, 'App\\Models\\User', 48, 'main', 'de87d1242acfc613f641db98bb44c7a8c1dc8a63161212c68f4baf666c9896c0', '[\"*\"]', NULL, NULL, '2024-04-04 12:16:38', '2024-04-04 12:16:38'),
(139, 'App\\Models\\User', 49, 'main', 'e990852ee0530d1195a297e48f4b3f620712f745df1fcb377288a600b670e078', '[\"*\"]', NULL, NULL, '2024-04-04 12:18:24', '2024-04-04 12:18:24'),
(140, 'App\\Models\\User', 50, 'main', '9b29ed72c281fe65686eb850437aa777a1502c4e94c527043e62f25d39d23f72', '[\"*\"]', NULL, NULL, '2024-04-04 12:20:13', '2024-04-04 12:20:13'),
(141, 'App\\Models\\User', 51, 'main', '9d4cc28adb6bdc2ecefd4d2de23d4f83114a7f8d373841aebf8c65968053c833', '[\"*\"]', NULL, NULL, '2024-04-04 12:21:06', '2024-04-04 12:21:06'),
(142, 'App\\Models\\User', 52, 'main', '01b927eb3672d5311b0c109d1a729803a11bb7fba1b8f39d9dd85c154073c767', '[\"*\"]', NULL, NULL, '2024-04-04 12:25:44', '2024-04-04 12:25:44'),
(143, 'App\\Models\\User', 53, 'main', '7f0b011f2e6fd6f6fe9c0c49d7990369163e0062b216fb56fc4530fd01285290', '[\"*\"]', NULL, NULL, '2024-04-04 12:32:00', '2024-04-04 12:32:00'),
(144, 'App\\Models\\User', 54, 'main', '222927befca04bab146bd14a7fe990280a4ab504aedc6ed49e9baca7eff7944a', '[\"*\"]', NULL, NULL, '2024-04-04 12:48:15', '2024-04-04 12:48:15'),
(145, 'App\\Models\\User', 55, 'main', '4b6533d473ef1fdbb1b528ab381c01e078daed29d162af071978107f6b56c0f3', '[\"*\"]', NULL, NULL, '2024-04-04 12:57:53', '2024-04-04 12:57:53'),
(146, 'App\\Models\\User', 56, 'main', '5e71b91830bb51abc33c61d9aa9861e3b41769906a741f6db6b87e44fedded8c', '[\"*\"]', NULL, NULL, '2024-04-04 13:14:38', '2024-04-04 13:14:38'),
(147, 'App\\Models\\User', 57, 'main', 'a30ca4846c4c88c8a49872baca06e96130d95e745c2d794aa871ee1815062660', '[\"*\"]', NULL, NULL, '2024-04-04 13:18:02', '2024-04-04 13:18:02'),
(148, 'App\\Models\\User', 58, 'main', 'ee7a84cc6966e08274acf9cd730b69302da35be76336c6e4ef3459f87bbee1b8', '[\"*\"]', NULL, NULL, '2024-04-04 13:42:00', '2024-04-04 13:42:00'),
(149, 'App\\Models\\User', 59, 'main', 'd4229c4d17e0052d7d3b7904720daf8e398476cf942b47ef30b7b26bccf62ed6', '[\"*\"]', NULL, NULL, '2024-04-04 13:56:06', '2024-04-04 13:56:06'),
(150, 'App\\Models\\User', 60, 'main', '7f0bb1767bcad99b8f684e3881e3937397339bcdd56402ab8c16c94da8518b68', '[\"*\"]', NULL, NULL, '2024-04-04 13:57:35', '2024-04-04 13:57:35'),
(151, 'App\\Models\\User', 61, 'main', '644136d04810b37c1496ad82f14d1c600478ad079ad32ba04ff57c73faf3e18e', '[\"*\"]', NULL, NULL, '2024-04-04 14:07:13', '2024-04-04 14:07:13'),
(152, 'App\\Models\\User', 62, 'main', '26ef9e83780ee68f5d810a59a4995ce61428d2b3774619e98fadcac9f4650f69', '[\"*\"]', NULL, NULL, '2024-04-04 15:06:45', '2024-04-04 15:06:45'),
(153, 'App\\Models\\User', 63, 'main', '8bbe1ec608880e805330693f5e6a8331f9646d4b1401273ad6a707f110f4d2ce', '[\"*\"]', NULL, NULL, '2024-04-04 15:17:06', '2024-04-04 15:17:06'),
(154, 'App\\Models\\User', 64, 'main', 'c6ff96ff20947bdfc6f0d0790b3fdb4c7898eb4ae039a24ffd20eb2c52be3dcd', '[\"*\"]', NULL, NULL, '2024-04-04 15:17:26', '2024-04-04 15:17:26'),
(155, 'App\\Models\\User', 65, 'main', '2dba7a80977a037412b3e0a6758646444f4300986b40183c4f49be73149c13f3', '[\"*\"]', NULL, NULL, '2024-04-04 15:26:02', '2024-04-04 15:26:02'),
(156, 'App\\Models\\User', 66, 'main', 'bd75d0b25a034e6824c41a4cb406915a465874a7662194004a1d3942cf282d20', '[\"*\"]', NULL, NULL, '2024-04-04 18:00:33', '2024-04-04 18:00:33'),
(157, 'App\\Models\\User', 67, 'main', '74b0f9512762bb55a87f61cecc40115456cb92927ec5ee6f85e8537e2cb46f75', '[\"*\"]', NULL, NULL, '2024-04-04 18:26:34', '2024-04-04 18:26:34'),
(158, 'App\\Models\\User', 68, 'main', '279c17daf813fc8af9a64d16c318c2b4ec2cf9ac15a7b5051c4345340f6075e2', '[\"*\"]', NULL, NULL, '2024-04-04 18:36:53', '2024-04-04 18:36:53'),
(159, 'App\\Models\\User', 69, 'main', 'b7f3e0a8e05ef4e248f062cec6eb36ecff2d0e5215cac685547a9751d0706aec', '[\"*\"]', NULL, NULL, '2024-04-04 18:45:11', '2024-04-04 18:45:11'),
(160, 'App\\Models\\User', 70, 'main', 'ccf8a320a20fccdda6003f1df8840de7c189ffd10fad27a7218ce476b5d12c41', '[\"*\"]', NULL, NULL, '2024-04-04 18:51:31', '2024-04-04 18:51:31'),
(161, 'App\\Models\\User', 71, 'main', 'fc551cfb0b61f963ce5c2d1d6febff0dc560e55073b841cac6a4a5e2e544065f', '[\"*\"]', NULL, NULL, '2024-04-04 18:53:01', '2024-04-04 18:53:01'),
(162, 'App\\Models\\User', 72, 'main', 'bfaff18ca38f1da9b453f0c815037485f81efb2846718cebc75a1e8860e41512', '[\"*\"]', NULL, NULL, '2024-04-04 18:57:06', '2024-04-04 18:57:06'),
(163, 'App\\Models\\User', 73, 'main', '56d1789614b98827ff0ef4b9329c8a8bb9696bf005470fe1b7dc25a0f3ab1a91', '[\"*\"]', NULL, NULL, '2024-04-04 19:11:35', '2024-04-04 19:11:35'),
(164, 'App\\Models\\User', 76, 'main', 'a481442d23e8eaf7e7192cb2de73d06db41c0efc7a4ade65a25856085cc13374', '[\"*\"]', NULL, NULL, '2024-04-04 19:23:34', '2024-04-04 19:23:34'),
(165, 'App\\Models\\User', 77, 'main', 'b83b32582ec8549414b7e297800a3a53f05e9eba308d965d05bdd4935a8f778b', '[\"*\"]', NULL, NULL, '2024-04-04 19:24:59', '2024-04-04 19:24:59'),
(166, 'App\\Models\\User', 78, 'main', '3f71184415c926e18e2775bc233446a6d3194339f8b5831e8c50264a0d2b7fdf', '[\"*\"]', NULL, NULL, '2024-04-04 19:26:56', '2024-04-04 19:26:56'),
(167, 'App\\Models\\User', 79, 'main', '5aae81d131f6663babac54b5cd19f654f7f7cc611e8e290b838eb450669cc95c', '[\"*\"]', NULL, NULL, '2024-04-04 19:28:04', '2024-04-04 19:28:04'),
(168, 'App\\Models\\User', 80, 'main', 'f4d76fb4ebd7beec65e34e342ff8d8f1d8aa95d2bf018de5be67934291342995', '[\"*\"]', NULL, NULL, '2024-04-04 19:33:50', '2024-04-04 19:33:50'),
(169, 'App\\Models\\User', 83, 'main', 'a7812be1c58c8b57b2f02d4d04b805e4101614905367955daf6c12311fb91029', '[\"*\"]', NULL, NULL, '2024-04-04 20:10:02', '2024-04-04 20:10:02'),
(170, 'App\\Models\\User', 84, 'main', '962f79e59118c0001970aab2b69d1f56a368e1309af8adc32d98a14c6fd4abfc', '[\"*\"]', NULL, NULL, '2024-04-04 21:00:15', '2024-04-04 21:00:15'),
(171, 'App\\Models\\User', 85, 'main', '9ee55301b5deefa2c5113702ec5154d38ecfd2cc7134f56cd3098a2903d48c28', '[\"*\"]', NULL, NULL, '2024-04-04 21:10:56', '2024-04-04 21:10:56'),
(172, 'App\\Models\\User', 86, 'main', '582da4d3ec878da994457c533d5751f28129f3af40b1de29331bd1cfff5bae37', '[\"*\"]', NULL, NULL, '2024-04-04 21:12:45', '2024-04-04 21:12:45'),
(173, 'App\\Models\\User', 87, 'main', '44a358e4ab7f262a5396586d649eb3c3d86ec3f7d7a76d01fba6657e1dfbbf39', '[\"*\"]', NULL, NULL, '2024-04-04 21:20:50', '2024-04-04 21:20:50'),
(174, 'App\\Models\\User', 88, 'main', 'f43b37a6688343c1cf806a0d66c855caa3b782db51f5d13e4829030b112ff63d', '[\"*\"]', NULL, NULL, '2024-04-04 21:23:25', '2024-04-04 21:23:25'),
(175, 'App\\Models\\User', 89, 'main', '8115af32f3e751e669919ce5a14c5e15391235feee76a9aa4f3473a496f71a5a', '[\"*\"]', NULL, NULL, '2024-04-04 21:27:03', '2024-04-04 21:27:03'),
(176, 'App\\Models\\User', 90, 'main', '14e3d4f65d6cdd1786638f5820417207672c06b747dab8809d2bea6bb5f8f070', '[\"*\"]', NULL, NULL, '2024-04-04 21:34:48', '2024-04-04 21:34:48'),
(177, 'App\\Models\\User', 91, 'main', 'f244dde5a698721488e4be3b38dd66121bb971ee402b430b571dd20305ed845e', '[\"*\"]', NULL, NULL, '2024-04-04 21:43:27', '2024-04-04 21:43:27'),
(178, 'App\\Models\\User', 92, 'main', '249b23c970d611ee3c6dca447d55fac33fcef2fa03950a30114ed13154f504f4', '[\"*\"]', NULL, NULL, '2024-04-04 22:42:36', '2024-04-04 22:42:36'),
(179, 'App\\Models\\User', 92, 'main', '3db2fc8bbd724ae35c55a2286bf2e6132b4472a1598a4e0cf50b688e89cbfb3e', '[\"*\"]', '2024-04-04 22:43:12', NULL, '2024-04-04 22:43:10', '2024-04-04 22:43:12'),
(180, 'App\\Models\\User', 93, 'main', '7d7b7bbd7dd1f70fccbca355836dc95bd5d892c2444cc329d5359bddcb10cbee', '[\"*\"]', NULL, NULL, '2024-04-04 22:47:36', '2024-04-04 22:47:36'),
(181, 'App\\Models\\User', 94, 'main', 'fab1d308e82df387080e6d6fa897ffd8d9c533073dd530fab8afa9fb3f1494c2', '[\"*\"]', NULL, NULL, '2024-04-04 22:52:47', '2024-04-04 22:52:47'),
(182, 'App\\Models\\User', 95, 'main', '81e5f290c465c5ddd2108f73577c80d5974c9fd1323537905a23b84ae7348af6', '[\"*\"]', NULL, NULL, '2024-04-04 22:55:01', '2024-04-04 22:55:01'),
(183, 'App\\Models\\User', 96, 'main', 'a91061d53d3ff91ebe127d9e60349dfbe54928162a85fcfdfe9f32fa3c52e6b9', '[\"*\"]', NULL, NULL, '2024-04-04 22:56:17', '2024-04-04 22:56:17'),
(184, 'App\\Models\\User', 97, 'main', 'dc0c43cd4b227de05c8bc151bb84289e58da5f476e007dd646cae2bd727c6ee1', '[\"*\"]', NULL, NULL, '2024-04-04 23:01:11', '2024-04-04 23:01:11'),
(185, 'App\\Models\\User', 97, 'main', '7792379c4644a62ff77a51b9135bcd966b0f66a70d8f33a3f158c955dfff1013', '[\"*\"]', '2024-04-04 23:02:02', NULL, '2024-04-04 23:02:01', '2024-04-04 23:02:02'),
(186, 'App\\Models\\User', 98, 'main', 'adc55757396394607a8edb655b3edba585bd9a841be9e181715fa19ea0a8b860', '[\"*\"]', NULL, NULL, '2024-04-04 23:46:41', '2024-04-04 23:46:41'),
(187, 'App\\Models\\User', 67, 'main', '0a70f9ac956c2d30e4779ca3fecb8cef8638247bb1e126b9791c426ec5fd2d8e', '[\"*\"]', '2024-04-06 23:54:10', NULL, '2024-04-06 23:54:05', '2024-04-06 23:54:10'),
(188, 'App\\Models\\User', 98, 'main', 'd531eba9b4f4fb73492d99e190b4a057abbe6f4e0fe5d8b2191a2e0326802e6a', '[\"*\"]', '2024-04-07 00:20:26', NULL, '2024-04-06 23:57:21', '2024-04-07 00:20:26'),
(189, 'App\\Models\\User', 1, 'main', '7e6caa870ef4259812d35d7962fd0a6ce797cee75353f4bd147e561e3efc58cb', '[\"*\"]', '2024-04-07 02:46:06', NULL, '2024-04-07 00:22:11', '2024-04-07 02:46:06'),
(190, 'App\\Models\\User', 1, 'main', '4a6affb56b725e9d8b999a12a56a71b50ac9231b2011ad8a290a66c22eec2903', '[\"*\"]', '2024-04-07 04:57:28', NULL, '2024-04-07 03:42:24', '2024-04-07 04:57:28'),
(191, 'App\\Models\\User', 1, 'main', '901c048c7c4526943a35a5d3acc020a8e71239b84ed7b0ab588ab8c7de84555f', '[\"*\"]', '2024-04-07 05:16:50', NULL, '2024-04-07 05:16:48', '2024-04-07 05:16:50'),
(192, 'App\\Models\\User', 1, 'main', '3819512240dbd39eea4346ab087ffa6b4c11d16000162a415189198acc188ad5', '[\"*\"]', '2024-04-07 05:31:07', NULL, '2024-04-07 05:30:33', '2024-04-07 05:31:07'),
(193, 'App\\Models\\User', 1, 'main', '0d4221763e42f376d89460a60c08790f030325237a9aac37f4943dce0e47786b', '[\"*\"]', '2024-04-07 05:41:44', NULL, '2024-04-07 05:37:31', '2024-04-07 05:41:44'),
(194, 'App\\Models\\User', 1, 'main', 'd61a7e8b044b87a63e46445e18182782286be3c03b03aae3572e6279455e9669', '[\"*\"]', '2024-04-07 05:48:33', NULL, '2024-04-07 05:48:31', '2024-04-07 05:48:33'),
(195, 'App\\Models\\User', 1, 'main', 'fd4ad1ab4ce129de00b42dc76897ee3edc999d5710645c620829496091c2c702', '[\"*\"]', '2024-04-07 12:42:15', NULL, '2024-04-07 11:19:29', '2024-04-07 12:42:15'),
(196, 'App\\Models\\User', 97, 'main', '49cab2aa4db7313889be959ae3d065f6142c0fd175427c355f2d1b9dae38004d', '[\"*\"]', '2024-04-07 12:44:43', NULL, '2024-04-07 12:43:08', '2024-04-07 12:44:43'),
(197, 'App\\Models\\User', 1, 'main', '2f6053c78f23009ba01eccca4480aa30481ef6a751d180b3b09dba86782b4753', '[\"*\"]', '2024-04-07 13:03:29', NULL, '2024-04-07 12:47:49', '2024-04-07 13:03:29'),
(198, 'App\\Models\\User', 1, 'main', 'df65563641cf6571a433ac8486c4bf00fef471755defe4b4c75571ad7d6cfba1', '[\"*\"]', '2024-04-07 13:05:06', NULL, '2024-04-07 13:04:04', '2024-04-07 13:05:06'),
(199, 'App\\Models\\User', 1, 'main', 'a43ce080d970f8f5f2d5cb60a257df5b95241d618418152247a5aea9ceda5d46', '[\"*\"]', '2024-04-28 14:30:24', NULL, '2024-04-07 13:05:33', '2024-04-28 14:30:24'),
(200, 'App\\Models\\User', 1, 'main', 'bfdc7dc1f4ccd30807e6f83d79824ae1f157a6f6e23566bde86a5e80e84ee61a', '[\"*\"]', '2024-04-07 20:31:55', NULL, '2024-04-07 19:22:58', '2024-04-07 20:31:55'),
(201, 'App\\Models\\User', 67, 'main', '90de7090d483b1133dde2ec5042dafdb713a174d22524d79175ca1ec179e7a60', '[\"*\"]', '2024-04-07 20:33:16', NULL, '2024-04-07 20:33:09', '2024-04-07 20:33:16'),
(202, 'App\\Models\\User', 67, 'main', 'aa342d46290d3d467edc8a6a08291fb0668152c98879c57e4957b8cb73ca4918', '[\"*\"]', '2024-04-07 22:44:40', NULL, '2024-04-07 22:37:54', '2024-04-07 22:44:40'),
(203, 'App\\Models\\User', 1, 'main', 'def2a32716c063b0b00983759f5ec050bc118cfc7bc3f9513a450a6637fe090e', '[\"*\"]', '2024-04-07 22:45:43', NULL, '2024-04-07 22:45:32', '2024-04-07 22:45:43'),
(204, 'App\\Models\\User', 1, 'main', '5e7af2ada6f5a57a30bfe75b09f203e4a6c172bdd3d9399210e0340d4a586031', '[\"*\"]', '2024-04-07 22:54:36', NULL, '2024-04-07 22:46:33', '2024-04-07 22:54:36'),
(205, 'App\\Models\\User', 1, 'main', 'df9f09f82a969272abd9dffab6d93630a08263758784aaef2133d5975f5c8c5c', '[\"*\"]', '2024-04-07 22:57:47', NULL, '2024-04-07 22:57:40', '2024-04-07 22:57:47'),
(206, 'App\\Models\\User', 1, 'main', '65f29ac6b042e0d20653317c2a41b750bbecfe96cc9fccbef5cc2800f798f903', '[\"*\"]', '2024-04-07 22:58:23', NULL, '2024-04-07 22:58:17', '2024-04-07 22:58:23'),
(207, 'App\\Models\\User', 1, 'main', '33014fa4ebf3c6cdf4077eef97447734d41e1ceead56093f4bf5081645dd7a0d', '[\"*\"]', '2024-04-08 01:54:44', NULL, '2024-04-07 22:59:06', '2024-04-08 01:54:44'),
(208, 'App\\Models\\User', 6, 'main', 'c0a35d8db49e47e807140c8f350002dbe1250c52cca8f057202ce5834175f295', '[\"*\"]', '2024-04-08 02:07:59', NULL, '2024-04-08 01:55:48', '2024-04-08 02:07:59'),
(209, 'App\\Models\\User', 1, 'main', 'f6a00f6466b0b281800d19f7c6dc365da23ada3105354dd0c36d09f5f7fd7972', '[\"*\"]', '2024-04-08 05:05:50', NULL, '2024-04-08 02:08:34', '2024-04-08 05:05:50'),
(210, 'App\\Models\\User', 15, 'main', 'cff3cb1d7efecc390e62a0d5fdb22d1070063c93e098c9ec0e64b45e701e33af', '[\"*\"]', '2024-04-08 05:17:15', NULL, '2024-04-08 05:07:46', '2024-04-08 05:17:15'),
(211, 'App\\Models\\User', 1, 'main', '1f6921d038b236a0398facf37727355e14d8f8c1de0fd139a81657c839ce1270', '[\"*\"]', '2024-04-08 14:42:35', NULL, '2024-04-08 13:54:16', '2024-04-08 14:42:35'),
(212, 'App\\Models\\User', 1, 'main', '0a31f3ca0f93d5833c8af29da492c2a4541abab0c6fe0ae4c8dc694bf4889fad', '[\"*\"]', '2024-04-08 20:10:41', NULL, '2024-04-08 15:50:08', '2024-04-08 20:10:41'),
(213, 'App\\Models\\User', 1, 'main', '2c897fb8d761a5757cc0993c633e8639f4b660004e8ba292e55d7750d7876dcc', '[\"*\"]', '2024-04-08 23:58:59', NULL, '2024-04-08 23:42:55', '2024-04-08 23:58:59'),
(214, 'App\\Models\\User', 1, 'main', '97298b176dd17dfde856429b3bb23e787a1c0741cb7d567c9ecaf66ba501a589', '[\"*\"]', '2024-04-09 00:00:29', NULL, '2024-04-08 23:59:24', '2024-04-09 00:00:29'),
(215, 'App\\Models\\User', 1, 'main', '8368e8462be14c2f5679cea6830c4f772b4b04f7263bf251e1cac110874ed69f', '[\"*\"]', '2024-04-09 00:37:26', NULL, '2024-04-09 00:00:57', '2024-04-09 00:37:26'),
(216, 'App\\Models\\User', 15, 'main', '51fbd230603209e6b655319f03edd71413ef7da0e3fb0889d18816ffb4b9c12d', '[\"*\"]', '2024-04-09 00:55:33', NULL, '2024-04-09 00:38:26', '2024-04-09 00:55:33'),
(217, 'App\\Models\\User', 99, 'main', '3c7140fec8524594d7450ea05587877e96c8d4e3ff3ba9d9082e9ce5a5d3ab6d', '[\"*\"]', NULL, NULL, '2024-04-09 00:59:19', '2024-04-09 00:59:19'),
(218, 'App\\Models\\User', 99, 'main', '7956f656190222fd1ee95b821227919b2b0aecc4dccea8af773addb0c1419e13', '[\"*\"]', '2024-04-09 01:10:13', NULL, '2024-04-09 01:00:10', '2024-04-09 01:10:13'),
(219, 'App\\Models\\User', 1, 'main', 'f9a0f91420ffee7ef739b3ef853d8057798e4c9b4796d3d7f2a4d5d1f539be30', '[\"*\"]', '2024-04-17 11:21:58', NULL, '2024-04-17 10:34:45', '2024-04-17 11:21:58'),
(220, 'App\\Models\\User', 1, 'main', '994a339f8bbbc0f5a50d5bfe06fec998075d743d88585bf52283807c6ae10e90', '[\"*\"]', '2024-04-17 11:27:05', NULL, '2024-04-17 11:26:19', '2024-04-17 11:27:05'),
(221, 'App\\Models\\User', 1, 'main', 'f17dbe7e1c785542d0bd324a424e30006a744fccfdde088acf33a9b632d83efc', '[\"*\"]', '2024-04-17 11:29:38', NULL, '2024-04-17 11:29:29', '2024-04-17 11:29:38'),
(222, 'App\\Models\\User', 1, 'main', 'ac2f995fa60e77d339531afb3d7365b8f1c4845d037d6063cc97a734d3fb8d85', '[\"*\"]', '2024-04-17 11:34:48', NULL, '2024-04-17 11:32:05', '2024-04-17 11:34:48'),
(223, 'App\\Models\\User', 1, 'main', 'cde66eb5b83752ed1f4627225a011264381735beddaedce22da31a6b6c9a2263', '[\"*\"]', '2024-04-17 11:51:07', NULL, '2024-04-17 11:42:14', '2024-04-17 11:51:07'),
(224, 'App\\Models\\User', 1, 'main', 'c9ef563c6d3b4735cacb67f6b5d33ba59922a086e4d592ff0daba1ac6ce824eb', '[\"*\"]', '2024-04-17 11:58:39', NULL, '2024-04-17 11:57:01', '2024-04-17 11:58:39'),
(225, 'App\\Models\\User', 1, 'main', '9cfe0fa41dcb9d01455e929bb2c960d6ee4ffb9509af858ba859434718815a69', '[\"*\"]', '2024-04-17 21:13:12', NULL, '2024-04-17 20:32:03', '2024-04-17 21:13:12'),
(226, 'App\\Models\\User', 1, 'main', 'c3a6001d5c4ac9060437213c82da1134320443321f66149298af512a8cf9b8c2', '[\"*\"]', '2024-04-18 14:35:12', NULL, '2024-04-18 14:23:43', '2024-04-18 14:35:12'),
(227, 'App\\Models\\User', 1, 'main', '6224c703819bf6025cd6b2dda2c0e6c771d7672b51062ef58aaaee2933c58eae', '[\"*\"]', '2024-04-18 15:14:29', NULL, '2024-04-18 14:36:23', '2024-04-18 15:14:29'),
(228, 'App\\Models\\User', 1, 'main', '7ee135951d7c310f3c27d1acac06fa93750031886a16dc454210d0bae6ed44bc', '[\"*\"]', '2024-04-18 15:43:56', NULL, '2024-04-18 15:14:54', '2024-04-18 15:43:56'),
(229, 'App\\Models\\User', 1, 'main', '3a6152430ff62f9b7059440428b8f16a3a35b90d17f0a93d14b1e8d0d14147fc', '[\"*\"]', '2024-04-18 21:52:27', NULL, '2024-04-18 15:59:24', '2024-04-18 21:52:27'),
(230, 'App\\Models\\User', 2, 'main', 'b5e035b1a1954dfe7989825a2ea8325faec571949f61b2289c5155c24c7fbd78', '[\"*\"]', '2024-04-18 22:04:24', NULL, '2024-04-18 22:04:09', '2024-04-18 22:04:24'),
(231, 'App\\Models\\User', 1, 'main', 'b8f3958f741047ec9989b98d872439160ec368989329daa8305c78f5a6f51273', '[\"*\"]', '2024-04-18 22:37:17', NULL, '2024-04-18 22:05:01', '2024-04-18 22:37:17'),
(232, 'App\\Models\\User', 1, 'main', 'f814b337a1aa3e4a27289df21ed01e932b74a40b4f421c97519b400ba47ec99e', '[\"*\"]', '2024-04-19 00:05:19', NULL, '2024-04-18 22:42:21', '2024-04-19 00:05:19'),
(233, 'App\\Models\\User', 1, 'main', '7b0299f02a50d52343426c3fc425c6ae974c366159ce677a7df991da9584b543', '[\"*\"]', '2024-04-19 19:21:30', NULL, '2024-04-19 16:15:56', '2024-04-19 19:21:30'),
(234, 'App\\Models\\User', 1, 'main', 'd67a113864954d2d6cca3b0d00764ce1a4e184f5782c5be929d479e0e9a65ab8', '[\"*\"]', '2024-04-20 02:04:56', NULL, '2024-04-19 19:41:42', '2024-04-20 02:04:56'),
(235, 'App\\Models\\User', 1, 'main', '3013c92004f5bda5241e1fbf5a56bc362da494e47401a75ccfd69b7c5384efb6', '[\"*\"]', '2024-04-20 12:52:46', NULL, '2024-04-20 10:19:09', '2024-04-20 12:52:46'),
(236, 'App\\Models\\User', 1, 'main', 'a844addf51833223cd9c4b5dc67b352fda6e64beb1e153884e02e7e5e65ef619', '[\"*\"]', '2024-04-20 18:49:59', NULL, '2024-04-20 17:29:17', '2024-04-20 18:49:59'),
(237, 'App\\Models\\User', 1, 'main', '8be93a253b3198a7f772a9fb24b6bcd88445d589704564680e69fc3524a99955', '[\"*\"]', '2024-04-21 02:31:25', NULL, '2024-04-20 22:57:40', '2024-04-21 02:31:25'),
(238, 'App\\Models\\User', 1, 'main', 'f5f0da945ae7a5286874884dfd0f7dfd7269b4fa076ff5964fd4c31cd0b80c0b', '[\"*\"]', '2024-04-21 12:05:23', NULL, '2024-04-21 10:47:51', '2024-04-21 12:05:23'),
(239, 'App\\Models\\User', 1, 'main', 'f6de7de8304baa97579cd4f49c7cb8618c06bfd993f54b1e42c484a4ff4306b2', '[\"*\"]', '2024-04-21 12:16:10', NULL, '2024-04-21 12:07:31', '2024-04-21 12:16:10'),
(240, 'App\\Models\\User', 1, 'main', 'b1f27cc373b60da67da9dac3c63841611b21903e422285889c2c035fe5e8f08a', '[\"*\"]', '2024-04-21 12:42:46', NULL, '2024-04-21 12:39:29', '2024-04-21 12:42:46'),
(241, 'App\\Models\\User', 1, 'main', '47f9c07d9c9c9ad8c40f186bcce87c7e24f77d6400757fd8641378cf49e2c585', '[\"*\"]', '2024-04-21 16:29:47', NULL, '2024-04-21 16:29:34', '2024-04-21 16:29:47'),
(242, 'App\\Models\\User', 1, 'main', '3b43d67786b22aa513337e7631c8011f39371551f347f3877d2ff3b36e5244c8', '[\"*\"]', '2024-04-21 19:40:31', NULL, '2024-04-21 18:05:09', '2024-04-21 19:40:31'),
(243, 'App\\Models\\User', 1, 'main', 'e8391765e5c4223f9fbdae5a2b01740a0312c2e068d403a7628888f767e75682', '[\"*\"]', '2024-04-21 20:02:17', NULL, '2024-04-21 19:43:29', '2024-04-21 20:02:17'),
(244, 'App\\Models\\User', 1, 'main', '4aa349dcdfa5a3db925ca9f2a77eb2bdcc5ed816b69cc3f7850c9e601043bbf0', '[\"*\"]', '2024-04-21 20:03:01', NULL, '2024-04-21 20:02:35', '2024-04-21 20:03:01'),
(245, 'App\\Models\\User', 1, 'main', '7e3802d2ea2cde22877ce6e3768a7f8464586bdf2ef19fc0536b77bf1fc4de8b', '[\"*\"]', '2024-04-26 12:37:50', NULL, '2024-04-26 10:51:25', '2024-04-26 12:37:50'),
(246, 'App\\Models\\User', 1, 'main', '545617d1fd312a4902e899b9196240ad39c30c5189cdff4aca3cfe34e3b52d4f', '[\"*\"]', '2024-04-26 16:43:12', NULL, '2024-04-26 16:37:51', '2024-04-26 16:43:12'),
(247, 'App\\Models\\User', 1, 'main', '28fa1e962feb0f69e0c259c476befd9dec912fdde16bc39f78d40631b8f814fe', '[\"*\"]', '2024-04-26 19:02:34', NULL, '2024-04-26 16:55:18', '2024-04-26 19:02:34'),
(248, 'App\\Models\\User', 1, 'main', '233284249cc52408cfe9608c234d0aa214dfc72be43532eec25bd03f6a40b71b', '[\"*\"]', '2024-04-27 01:24:58', NULL, '2024-04-26 22:15:35', '2024-04-27 01:24:58'),
(249, 'App\\Models\\User', 1, 'main', 'e9130212fb2d25c218584df61a910dccd3b26ef8efd0d796383e03a00347d498', '[\"*\"]', '2024-04-27 13:01:15', NULL, '2024-04-27 10:24:43', '2024-04-27 13:01:15'),
(250, 'App\\Models\\User', 1, 'main', '069dd5c186e74b1fd62358b43a52094e700ab52f02bcfb18cc284aa676dc3b7b', '[\"*\"]', '2024-04-27 13:34:38', NULL, '2024-04-27 13:18:19', '2024-04-27 13:34:38'),
(251, 'App\\Models\\User', 67, 'main', '7e07980a35458485a26eaee923b5c2282a33da147a3ecc7279af2ad45dce33a0', '[\"*\"]', '2024-04-27 13:35:34', NULL, '2024-04-27 13:35:26', '2024-04-27 13:35:34'),
(252, 'App\\Models\\User', 1, 'main', '4ec8f14655b5971ae4dc9af2d6a88bfb5f67aef1cbe62777db879fe4dd32c0b7', '[\"*\"]', '2024-04-27 13:51:03', NULL, '2024-04-27 13:36:57', '2024-04-27 13:51:03'),
(253, 'App\\Models\\User', 1, 'main', '2ace3a7164b312197b8394803fd32d6f7d2446375188475da14a13fcce10f526', '[\"*\"]', '2024-04-27 13:59:32', NULL, '2024-04-27 13:55:59', '2024-04-27 13:59:32'),
(254, 'App\\Models\\User', 1, 'main', '812e8508cba0c31431a3e57c65b55940247b8c28d1307492b7fb2c599e799301', '[\"*\"]', '2024-04-27 14:08:23', NULL, '2024-04-27 14:00:26', '2024-04-27 14:08:23'),
(255, 'App\\Models\\User', 1, 'main', 'a27a365547c8330e0ff7a7d5537590b9c1316c192b718b6d4ec825fbb3574903', '[\"*\"]', '2024-04-27 14:29:48', NULL, '2024-04-27 14:11:31', '2024-04-27 14:29:48'),
(256, 'App\\Models\\User', 1, 'main', 'a6620a382c1610b39c40cf2770e12bfb892a24dba435eb0df3d8b7e5e111a809', '[\"*\"]', '2024-04-27 14:35:52', NULL, '2024-04-27 14:30:18', '2024-04-27 14:35:52'),
(257, 'App\\Models\\User', 33, 'main', 'da411543531a5b5ff916c2083c812ab70adcb04123a5a0faccdb67dd38ae450e', '[\"*\"]', '2024-04-27 14:36:26', NULL, '2024-04-27 14:36:16', '2024-04-27 14:36:26'),
(258, 'App\\Models\\User', 1, 'main', 'bb101ff83484fe77b32e4bf56569f998e42a53951060738d2a2a3d9b043f6953', '[\"*\"]', '2024-04-27 15:21:30', NULL, '2024-04-27 14:42:26', '2024-04-27 15:21:30'),
(259, 'App\\Models\\User', 33, 'main', '0ecbba25566ed28658d0f128fe18d0646651d339c122fa9b7810b9cc41d869a8', '[\"*\"]', '2024-04-27 15:46:08', NULL, '2024-04-27 15:46:00', '2024-04-27 15:46:08'),
(260, 'App\\Models\\User', 1, 'main', 'acd2e1563922099904499cde43b0a6273f3a617a9f5c4d7bb7ef529a0e5dc340', '[\"*\"]', '2024-04-27 16:14:49', NULL, '2024-04-27 15:47:57', '2024-04-27 16:14:49'),
(261, 'App\\Models\\User', 1, 'main', '669a6791ad045518bf5e46a1c5573b61d79c3c0f0a67a92baad983d3c6312477', '[\"*\"]', '2024-04-27 18:46:44', NULL, '2024-04-27 16:33:17', '2024-04-27 18:46:44'),
(262, 'App\\Models\\User', 1, 'main', 'f6f59697d2ce015a1974eceb780cd432db389b226d59cbea8263d5e62fe22318', '[\"*\"]', '2024-04-27 23:12:59', NULL, '2024-04-27 23:00:53', '2024-04-27 23:12:59'),
(263, 'App\\Models\\User', 1, 'main', 'd6657ed87f9f4f77becf3a0ae3e068b8e6b5d640e1f4a5f3b674dbe980253ad2', '[\"*\"]', '2024-04-28 00:26:18', NULL, '2024-04-28 00:10:22', '2024-04-28 00:26:18'),
(264, 'App\\Models\\User', 1, 'main', 'd4ee809dda849983ec84832978fd5a1b626d977950d0b96e8a6534d8f6688014', '[\"*\"]', '2024-04-28 11:55:13', NULL, '2024-04-28 11:54:28', '2024-04-28 11:55:13'),
(265, 'App\\Models\\User', 1, 'main', 'ae1a0d0716ee36001aa41f5dce0e6f3620a546a104a5bb2ad27a244cbd804dc8', '[\"*\"]', '2024-04-28 13:39:30', NULL, '2024-04-28 12:00:17', '2024-04-28 13:39:30'),
(266, 'App\\Models\\User', 1, 'main', '0320f8c4164a8331b740b446c7daa70851e791530cb11cb93accc6fd13d70113', '[\"*\"]', '2024-04-28 15:01:39', NULL, '2024-04-28 14:17:26', '2024-04-28 15:01:39'),
(267, 'App\\Models\\User', 33, 'main', '4da1cf0c0160e7453f74f838fb17bf0309f4d89852e1ac2bf24a9be73a66b99a', '[\"*\"]', '2024-04-28 15:23:10', NULL, '2024-04-28 15:15:26', '2024-04-28 15:23:10'),
(268, 'App\\Models\\User', 1, 'main', '7b79f76e21f2c1520d12ca286eb843f7d35626607235ef09ba64519baf7a4d18', '[\"*\"]', '2024-04-28 15:28:01', NULL, '2024-04-28 15:23:42', '2024-04-28 15:28:01'),
(269, 'App\\Models\\User', 1, 'main', '56fe9dd8633b7d8cd303e092100d3eecd59c13642d58aa8776db64a31ecd5399', '[\"*\"]', NULL, NULL, '2024-04-28 15:30:53', '2024-04-28 15:30:53'),
(270, 'App\\Models\\User', 1, 'main', 'e77829b8305c76b4ffa440e378e8ba8eddaaad8905d2fd3c6e9b5d2847aa7f09', '[\"*\"]', '2024-04-28 15:33:43', NULL, '2024-04-28 15:33:41', '2024-04-28 15:33:43'),
(271, 'App\\Models\\User', 1, 'main', '67c6dcebc54ac54dbfe154213682ef06604ee2856c4b8f6c635ce0b47b0b8831', '[\"*\"]', NULL, NULL, '2024-04-28 15:37:31', '2024-04-28 15:37:31'),
(272, 'App\\Models\\User', 33, 'main', '70bfeab466cbfae9848d2b95cb95a9a41948c2b6cad7e85742ecd6076b61e0a2', '[\"*\"]', NULL, NULL, '2024-04-28 15:39:43', '2024-04-28 15:39:43'),
(273, 'App\\Models\\User', 33, 'main', '33c8c04152e69b38d42b45c8e1e4d7f851d8577b715b23b3344685ae088f5672', '[\"*\"]', NULL, NULL, '2024-04-28 15:42:16', '2024-04-28 15:42:16'),
(274, 'App\\Models\\User', 33, 'main', 'fd06e888dba589578e3ed2b09bd5c4e9c1c3feb122d105c175f6ce5c07d012fa', '[\"*\"]', NULL, NULL, '2024-04-28 15:43:10', '2024-04-28 15:43:10'),
(275, 'App\\Models\\User', 33, 'main', '4d63b610404abdf589051f47fdb87065c069acd8ddea7254f68824b3cb343c69', '[\"*\"]', '2024-04-28 15:53:51', NULL, '2024-04-28 15:50:31', '2024-04-28 15:53:51'),
(276, 'App\\Models\\User', 33, 'main', 'f0b3cf56a8383937b5c25888c68fd8f740633c46d29dceb9e7c03f916a8845c8', '[\"*\"]', '2024-04-28 15:55:42', NULL, '2024-04-28 15:55:40', '2024-04-28 15:55:42'),
(277, 'App\\Models\\User', 33, 'main', 'fa857a142dbe3370c9e5a0c5a1054e620da734f1338b626e3bfc9c6920ffd6f4', '[\"*\"]', '2024-04-28 16:24:23', NULL, '2024-04-28 16:24:21', '2024-04-28 16:24:23'),
(278, 'App\\Models\\User', 33, 'main', 'e1331fb7a435b5e08f1a3c5a7677298c5c35a6c15f93dab51817f358c4c09dac', '[\"*\"]', NULL, NULL, '2024-04-28 16:33:01', '2024-04-28 16:33:01');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(279, 'App\\Models\\User', 33, 'main', '9760b6e1b635fdfa3e28cfed285e4ced81abe337a28d7842e959749c99e82fda', '[\"*\"]', '2024-04-28 16:55:42', NULL, '2024-04-28 16:55:40', '2024-04-28 16:55:42'),
(280, 'App\\Models\\User', 33, 'main', '1fccb51ce5e4d6b988ad64addf72a84a694e195da05a6f6bd1885a33fdf07ac8', '[\"*\"]', '2024-04-28 16:56:16', NULL, '2024-04-28 16:56:14', '2024-04-28 16:56:16'),
(281, 'App\\Models\\User', 1, 'main', '5010fa3ddf0451513ecc90142d586ec01d36df3cca7128e9751748b9fba71249', '[\"*\"]', '2024-04-28 16:58:53', NULL, '2024-04-28 16:57:04', '2024-04-28 16:58:53'),
(282, 'App\\Models\\User', 1, 'main', 'c8b5dbf0c360b5ac15f5e394283341e9894831e918242f159ca12dd2fc72649b', '[\"*\"]', '2024-04-28 17:06:53', NULL, '2024-04-28 17:06:51', '2024-04-28 17:06:53'),
(283, 'App\\Models\\User', 1, 'main', 'fc7be813b226ec52fb7d2126e4e808898f2e907f2e37e1402b78cbcd432fa324', '[\"*\"]', '2024-04-28 17:12:40', NULL, '2024-04-28 17:12:33', '2024-04-28 17:12:40'),
(284, 'App\\Models\\User', 1, 'main', '892ca726070b256878ab4a57311c3210623eb2a58050a6ac406066210212add5', '[\"*\"]', '2024-04-29 21:44:17', NULL, '2024-04-29 21:44:07', '2024-04-29 21:44:17'),
(285, 'App\\Models\\User', 33, 'main', 'd37d5216a066b1ed380872135845fcae47a13ccd1b836bff48e3e461619a6db7', '[\"*\"]', '2024-04-29 23:34:18', NULL, '2024-04-29 21:44:47', '2024-04-29 23:34:18'),
(286, 'App\\Models\\User', 1, 'main', 'f72687f112d30cda266296b464f8cec83b392bef5ff17e2c5d2a12a42282efb2', '[\"*\"]', '2024-04-30 00:22:23', NULL, '2024-04-30 00:21:18', '2024-04-30 00:22:23'),
(287, 'App\\Models\\User', 1, 'main', '953c162d8394169004615bf36b65c66da086c69f7a1dde0be93f59d720afc5dc', '[\"*\"]', '2024-04-30 00:23:09', NULL, '2024-04-30 00:23:07', '2024-04-30 00:23:09'),
(288, 'App\\Models\\User', 1, 'main', 'a6c60515bd7a6c9f758eac60b26590d50ca5686fea44fb20527e26f4c9c07a05', '[\"*\"]', '2024-04-30 01:29:41', NULL, '2024-04-30 01:18:23', '2024-04-30 01:29:41'),
(289, 'App\\Models\\User', 1, 'main', '4579fda662b91ed6d637e1f404abf548a1b75c8e94e12010c8bd2a0ee91d9aa4', '[\"*\"]', '2024-04-30 01:30:21', NULL, '2024-04-30 01:30:19', '2024-04-30 01:30:21'),
(290, 'App\\Models\\User', 1, 'main', 'ee9d7eed164151edd4ef77bf12a306111651931615e282a118f4f66bd6d83046', '[\"*\"]', '2024-04-30 01:39:31', NULL, '2024-04-30 01:37:41', '2024-04-30 01:39:31'),
(291, 'App\\Models\\User', 1, 'main', 'b890b53b40eeb3cb1eac0bb92e688dae352b540562c6d5248db1d0bd0dc5bbc0', '[\"*\"]', '2024-04-30 01:53:18', NULL, '2024-04-30 01:52:31', '2024-04-30 01:53:18'),
(292, 'App\\Models\\User', 33, 'main', '672066e9d93e1c361fe1a76e72cd63f4bfdb0626eb4c185788017b8259e6307b', '[\"*\"]', '2024-04-30 02:04:46', NULL, '2024-04-30 01:53:50', '2024-04-30 02:04:46'),
(293, 'App\\Models\\User', 1, 'main', '21acef589cb8da182825165264950a1efcde1e596ce0509468f8af430f727e0c', '[\"*\"]', '2024-04-30 11:10:59', NULL, '2024-04-30 11:10:57', '2024-04-30 11:10:59'),
(294, 'App\\Models\\User', 33, 'main', 'a75a8c54fbd408f4a6aae27bbb244b469b4b7dc7c46005f4b43fbf7f7ebd3a5e', '[\"*\"]', '2024-04-30 11:29:07', NULL, '2024-04-30 11:11:33', '2024-04-30 11:29:07'),
(295, 'App\\Models\\User', 33, 'main', 'da33cf6e427da14f72ae2b2235e33c89a7d7470a0728a34b8c0d9ee5aa89686d', '[\"*\"]', '2024-04-30 12:01:33', NULL, '2024-04-30 11:37:08', '2024-04-30 12:01:33'),
(296, 'App\\Models\\User', 1, 'main', '8068601d1a275464b28e653b764121064109ad07ab6e06279673424cd02567cd', '[\"*\"]', '2024-04-30 12:35:57', NULL, '2024-04-30 12:34:11', '2024-04-30 12:35:57'),
(297, 'App\\Models\\User', 1, 'main', '3989795e6d31721b8f7d94554488e91ec9be3bf6200dc0db7037f042e19b41e0', '[\"*\"]', '2024-04-30 12:45:20', NULL, '2024-04-30 12:36:29', '2024-04-30 12:45:20'),
(298, 'App\\Models\\User', 1, 'main', '84fca041968469862bd7e18a6af3ef57ba93861224dbf111f11187dc88f37220', '[\"*\"]', '2024-04-30 12:46:17', NULL, '2024-04-30 12:45:57', '2024-04-30 12:46:17'),
(299, 'App\\Models\\User', 33, 'main', '28e9a965904b09293c61e97a497c8c243bb2159a5ac10cc2ad991465f50f1023', '[\"*\"]', '2024-04-30 12:46:52', NULL, '2024-04-30 12:46:50', '2024-04-30 12:46:52'),
(300, 'App\\Models\\User', 1, 'main', '1103743810967cc58f399161ca83a1806edbc7ea7ca01cefd9bc64c1b97ca59d', '[\"*\"]', '2024-04-30 12:48:36', NULL, '2024-04-30 12:47:57', '2024-04-30 12:48:36'),
(301, 'App\\Models\\User', 67, 'main', 'c646f365f7bff3d13d50f8aef47bf1551a22e6dd73761d6078d15e5fd7c03025', '[\"*\"]', '2024-04-30 12:50:25', NULL, '2024-04-30 12:50:08', '2024-04-30 12:50:25'),
(302, 'App\\Models\\User', 1, 'main', '64b6b2532cabf6d6e5e0619c268a4f7ffb8b2694cde472599485c900701eb095', '[\"*\"]', '2024-04-30 12:51:18', NULL, '2024-04-30 12:51:16', '2024-04-30 12:51:18'),
(303, 'App\\Models\\User', 1, 'main', 'ef6a9df390a24d3ade4f6bb32bf30b50524268c69c256d613a5f5621738c906e', '[\"*\"]', '2024-04-30 13:04:39', NULL, '2024-04-30 13:04:37', '2024-04-30 13:04:39'),
(304, 'App\\Models\\User', 1, 'main', 'e10512bafa01c03f50a499751c6f156426a00dffdee3bd0408d853fe2b28bce8', '[\"*\"]', '2024-04-30 13:20:47', NULL, '2024-04-30 13:09:37', '2024-04-30 13:20:47'),
(305, 'App\\Models\\User', 33, 'main', '44023a4344f32cf641e81c5b06afaeae2e2c0e9a458bd12b340f40dc0f28f8b0', '[\"*\"]', '2024-04-30 13:22:14', NULL, '2024-04-30 13:22:07', '2024-04-30 13:22:14'),
(306, 'App\\Models\\User', 1, 'main', '6d8d64d15b6f76f679aecc30342cff19303bdb5122d13015c5d4def502b53c22', '[\"*\"]', '2024-04-30 13:22:46', NULL, '2024-04-30 13:22:44', '2024-04-30 13:22:46'),
(307, 'App\\Models\\User', 1, 'main', 'bd1226d3adeb4d02934c52667528529662cb5a6f5d98d99e81f023826d16ebd2', '[\"*\"]', '2024-05-02 23:15:31', NULL, '2024-05-02 23:15:29', '2024-05-02 23:15:31'),
(308, 'App\\Models\\User', 1, 'main', '258d3f8bc33e4ad7e76f91008cef3ad83e0ed5b21b1e513ae01eee1ed658de28', '[\"*\"]', '2024-05-02 23:25:19', NULL, '2024-05-02 23:22:08', '2024-05-02 23:25:19'),
(309, 'App\\Models\\User', 1, 'main', '9cf5cbb8fc15334b12ba6106e2637797229c40bcc791b566c70939a10ced8e71', '[\"*\"]', '2024-05-03 00:26:28', NULL, '2024-05-02 23:40:39', '2024-05-03 00:26:28'),
(310, 'App\\Models\\User', 33, 'main', 'da3d602de9c8e4159fa64c2f95970e6c8c74e24f5f8c0915b32c97f63b28ac16', '[\"*\"]', '2024-05-02 23:58:31', NULL, '2024-05-02 23:58:19', '2024-05-02 23:58:31'),
(311, 'App\\Models\\User', 1, 'main', '4d89df36a2f78c052d314c098baa118fe774633512709d6c56e541ed2e5d2925', '[\"*\"]', '2024-05-03 00:32:03', NULL, '2024-05-02 23:58:57', '2024-05-03 00:32:03'),
(312, 'App\\Models\\User', 33, 'main', 'cd4d5e885a539a9b93da8407a7912fb3617e2dfb890a9c25c67ac5c637c7ff61', '[\"*\"]', '2024-05-03 00:33:12', NULL, '2024-05-03 00:32:32', '2024-05-03 00:33:12'),
(313, 'App\\Models\\User', 1, 'main', 'c8a9e60c311684935771769cf44cf7ab80627518a344353894a86a18afb7e0aa', '[\"*\"]', '2024-05-03 01:05:22', NULL, '2024-05-03 00:33:37', '2024-05-03 01:05:22'),
(314, 'App\\Models\\User', 1, 'main', '2bdd97294adcc03efc45a0a6099a165cc8a00013e6950436e524cf794d09022f', '[\"*\"]', '2024-05-03 01:35:44', NULL, '2024-05-03 01:11:08', '2024-05-03 01:35:44'),
(315, 'App\\Models\\User', 1, 'main', 'd97b0e10db377e1a3ebe8ef9f069f07fee2325765a0d12aabb16cdc6c71cf3fe', '[\"*\"]', '2024-05-03 01:38:34', NULL, '2024-05-03 01:38:22', '2024-05-03 01:38:34'),
(316, 'App\\Models\\User', 1, 'main', '230c0169ba3be120e2486ad2424772f27ca08b3f3e4058890499892a1bb691cb', '[\"*\"]', '2024-05-03 02:32:51', NULL, '2024-05-03 01:41:28', '2024-05-03 02:32:51'),
(317, 'App\\Models\\User', 33, 'main', '4105b13b72997fed6865968670f69912162c9c195ca4ff1030ac752840bdce30', '[\"*\"]', '2024-05-03 02:33:38', NULL, '2024-05-03 02:33:30', '2024-05-03 02:33:38'),
(318, 'App\\Models\\User', 1, 'main', '211c24616050a8eeb02ea8ebad562239e1025703797f5b56465f778b63f9f4f2', '[\"*\"]', '2024-05-03 02:43:43', NULL, '2024-05-03 02:34:50', '2024-05-03 02:43:43'),
(319, 'App\\Models\\User', 1, 'main', '0931249ef38d60d2355b608774ddb3d015e7194d4cdcb7adc1113e9a8b7449d3', '[\"*\"]', '2024-05-09 23:23:07', NULL, '2024-05-09 23:08:01', '2024-05-09 23:23:07'),
(320, 'App\\Models\\User', 1, 'main', '9908019e65ef01dd56aa42c158a38446a34adaad82b170d8d23feae797d1c784', '[\"*\"]', '2024-05-09 23:26:52', NULL, '2024-05-09 23:23:36', '2024-05-09 23:26:52'),
(321, 'App\\Models\\User', 1, 'main', 'da66ac745c65003ad0d478a0dd926b6307083f57493a95056b86f29a696a81e1', '[\"*\"]', '2024-05-09 23:47:43', NULL, '2024-05-09 23:47:41', '2024-05-09 23:47:43'),
(322, 'App\\Models\\User', 1, 'main', 'd8b93fff7ac82b870da2c2648a92d55d1fe4e6dfd302ceff36183567e50ad9fd', '[\"*\"]', '2024-05-10 00:08:48', NULL, '2024-05-10 00:06:40', '2024-05-10 00:08:48'),
(323, 'App\\Models\\User', 1, 'main', '7e781ab9edd7646e8b942f64cd486f5356e9abf6c58456d069dbd47f082a99cd', '[\"*\"]', '2024-05-10 00:19:50', NULL, '2024-05-10 00:11:43', '2024-05-10 00:19:50'),
(324, 'App\\Models\\User', 33, 'main', 'ae4516d3b4fe890a284ab2ead1090e6f908238b0dc99822b431378c76e27e325', '[\"*\"]', '2024-05-10 01:22:03', NULL, '2024-05-10 00:35:38', '2024-05-10 01:22:03'),
(325, 'App\\Models\\User', 1, 'main', '894bca04a87b4ff19214cad414006fd8eb7d56b85f9f6bc380b9d362befb1b78', '[\"*\"]', '2024-05-10 02:50:52', NULL, '2024-05-10 02:48:15', '2024-05-10 02:50:52'),
(326, 'App\\Models\\User', 1, 'main', 'd21d56c7036b6611d9706a8d81e929a4bed422c10cbd2ac9791e237253b75b0d', '[\"*\"]', '2024-05-10 10:34:38', NULL, '2024-05-10 10:34:21', '2024-05-10 10:34:38'),
(327, 'App\\Models\\User', 1, 'main', '61997dc2a152a87412a2fc2b892966b1c2a9a9ba40d4db289dbd52d2b87af0ed', '[\"*\"]', '2024-05-10 10:35:34', NULL, '2024-05-10 10:35:15', '2024-05-10 10:35:34'),
(328, 'App\\Models\\User', 33, 'main', 'b395f9df1fd77bb97b46e62999cc82c98943905a30710df47fa73564ef6e7a11', '[\"*\"]', '2024-05-10 10:36:20', NULL, '2024-05-10 10:36:03', '2024-05-10 10:36:20'),
(329, 'App\\Models\\User', 33, 'main', 'd0c70bc90e9b57a0a2df12aff74043c7d9ab10cf0fd0f6b28ce75a0d1cb1a09b', '[\"*\"]', '2024-05-10 11:08:37', NULL, '2024-05-10 11:07:43', '2024-05-10 11:08:37'),
(330, 'App\\Models\\User', 33, 'main', '708cd8f7aad34c62bc162cc647a4ad1ef7ddaa1e053a119411cdb034c2af31cf', '[\"*\"]', '2024-05-10 11:33:15', NULL, '2024-05-10 11:32:44', '2024-05-10 11:33:15'),
(331, 'App\\Models\\User', 1, 'main', '8a1b408e6e4ae169a8205371428bc9461d04416e25391606f837621285e311d5', '[\"*\"]', '2024-05-10 11:34:51', NULL, '2024-05-10 11:33:57', '2024-05-10 11:34:51'),
(332, 'App\\Models\\User', 1, 'main', 'e970dfdb1957dab6e431e862dcce2d4fe7424845fa595283b79b5cfea68b0a8b', '[\"*\"]', '2024-05-10 11:47:23', NULL, '2024-05-10 11:39:12', '2024-05-10 11:47:23'),
(333, 'App\\Models\\User', 1, 'main', '64cc6a3d817c1d2b7340cd5ab5ad563e686aa03936a340d26a4f506633b0df07', '[\"*\"]', '2024-05-10 11:59:43', NULL, '2024-05-10 11:50:29', '2024-05-10 11:59:43'),
(334, 'App\\Models\\User', 1, 'main', '07a5f03253b5cff6905d8b3a3fc1bd4f5e5f7cc11a21436165b906af7e946a82', '[\"*\"]', '2024-05-10 12:17:32', NULL, '2024-05-10 12:14:30', '2024-05-10 12:17:32'),
(335, 'App\\Models\\User', 1, 'main', '86aedac8ae7cd672605be158da0a8bf25c0328b21a0a9640940ba3c30be388f1', '[\"*\"]', '2024-05-10 12:22:54', NULL, '2024-05-10 12:22:29', '2024-05-10 12:22:54'),
(336, 'App\\Models\\User', 1, 'main', '6be3b348986a58e6f0f3483fe1d4bfee17ffc9a585eac4666ad5c2697013875e', '[\"*\"]', '2024-05-10 14:08:55', NULL, '2024-05-10 14:06:45', '2024-05-10 14:08:55'),
(337, 'App\\Models\\User', 1, 'main', 'a7dd436513d5e478c050b21328d663e56137b7bad386258dd5476b32be198472', '[\"*\"]', '2024-05-10 14:25:44', NULL, '2024-05-10 14:24:34', '2024-05-10 14:25:44'),
(338, 'App\\Models\\User', 33, 'main', 'ab312a18d01833f20463d64cff8489297437e1fe355ddfddcaefc532e4870a8c', '[\"*\"]', '2024-05-10 14:35:12', NULL, '2024-05-10 14:31:01', '2024-05-10 14:35:12'),
(339, 'App\\Models\\User', 1, 'main', 'adfc5f4e4fbda2d386170a2820f09c7f5652584c94201e29ed970623b09a0b23', '[\"*\"]', '2024-05-10 14:45:47', NULL, '2024-05-10 14:43:56', '2024-05-10 14:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` bigint UNSIGNED NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `details`, `created_at`, `updated_at`) VALUES
(1, 'this is privacy and policy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_ads`
--

CREATE TABLE `related_ads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adv_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countryId` bigint UNSIGNED DEFAULT NULL,
  `cityId` bigint UNSIGNED DEFAULT NULL,
  `cat_Id` bigint UNSIGNED DEFAULT NULL,
  `user_Id` bigint UNSIGNED DEFAULT NULL,
  `adv_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_Id` bigint UNSIGNED DEFAULT NULL,
  `adv_isverify` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `favourite` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategorys`
--

CREATE TABLE `subcategorys` (
  `id` bigint UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_subcat_exist` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategorys`
--

INSERT INTO `subcategorys` (`id`, `subcategory_name`, `subcategory_images`, `category_id`, `status`, `is_subcat_exist`, `created_at`, `updated_at`) VALUES
(21, 'Tablets', 'Tablets.png', 18, 0, 0, NULL, NULL),
(23, 'Accessories', 'Accessories.png', 18, 0, 1, NULL, NULL),
(24, 'Smart Watches', 'Smart Watches.jpg', 18, 0, 0, NULL, NULL),
(25, 'Mobile Phones', 'Mobile_Phones.png', 18, 0, 0, NULL, NULL),
(26, 'Cars', 'Cars.jpg', 19, 0, 0, NULL, NULL),
(27, 'Cars on Installments', 'Cars on Installments.jpg', 19, 0, 0, NULL, NULL),
(28, 'Cars Accessories', 'Cars Accessories.png', 19, 0, 0, NULL, NULL),
(29, 'Spare Parts', 'Spare Parts.png', 19, 0, 0, NULL, NULL),
(30, 'Buses, Vans & Trucks', 'Buses.png', 19, 0, 0, NULL, NULL),
(31, 'Rickshaw & Chingchi', 'Rickshaw & Chingchi.png', 19, 0, 0, NULL, NULL),
(32, 'Other Vehicles', 'Other Vehicles.png', 19, 0, 0, NULL, NULL),
(33, 'Boats', 'Boats.png', 19, 0, 0, NULL, NULL),
(34, 'Tractors & Trailers', 'Tractors & Trailers', 19, 0, 0, NULL, NULL),
(35, 'Land & Plots', 'Land & Plots.png', 20, 0, 0, NULL, NULL),
(36, 'Houses', 'Houses.png', 20, 0, 0, NULL, NULL),
(37, 'Apartments & Flats', 'Apartments & Flats.png', 20, 0, 0, NULL, NULL),
(38, 'Shops - Offices - Commercial Space', 'Shops - Offices - Commercial Space.png', 20, 0, 0, NULL, NULL),
(39, 'Portions & Floors', 'Portions & Floors.png', 20, 0, 0, NULL, NULL),
(40, 'Houses', 'Houses.png', 21, 0, 0, NULL, NULL),
(41, 'Apartments & Flats', 'Apartments & Flats.png', 21, 0, 0, NULL, NULL),
(42, 'Portions & Floors', 'Portions & Floors.png', 21, 0, 0, NULL, NULL),
(43, 'Shops - Offices - Commercial Space', 'Shops - Offices - Commercial Space.png', 21, 0, 0, NULL, NULL),
(44, 'Rooms', 'Rooms.png', 21, 0, 0, NULL, NULL),
(45, 'Roommates & Paying Guests', 'Roommates & Paying Guests.png', 21, 0, 0, NULL, NULL),
(47, 'Vacation Rentals - Guest Houses', 'Vacation.png', 21, 0, 0, NULL, NULL),
(48, 'Land & Plots', 'Land & Plots.png', 21, 0, 0, NULL, NULL),
(49, 'Computers & Accessories', 'Computers & Accessories.png', 22, 0, 1, NULL, NULL),
(50, 'Games & Entertainment', 'Games & Entertainment.png', 22, 0, 1, NULL, NULL),
(51, 'Cameras & Accessories', 'Cameras & Accessories.png', 22, 0, 1, NULL, NULL),
(52, 'Televisions & Accessories', 'Televisions & Accessories.png', 22, 0, 1, NULL, NULL),
(53, 'Video-Audios', 'Video-Audios.png', 22, 0, 1, NULL, NULL),
(54, 'AC & Coolers', 'AC & Coolers.png', 22, 0, 1, NULL, NULL),
(55, 'Fans', 'Fans.png', 22, 0, 0, NULL, NULL),
(56, 'Heaters & Geysers', 'Heaters & Geysers.png', 22, 0, 1, NULL, NULL),
(57, 'Air Purifiers & Humidifiers', 'Air Purifiers.png', 22, 0, 0, NULL, NULL),
(58, 'Washing Machines & Dryers', 'Washing Machines & Dryers.png', 22, 0, 1, NULL, NULL),
(59, 'Irons & Steamers', 'Irons & Steamers.png', 22, 0, 1, NULL, NULL),
(60, 'Sewing Machines', 'Sewing Machines.png', 22, 0, 0, NULL, NULL),
(61, 'Generators, UPS & Power Solutions', 'Generators, UPS & Power Solutions', 22, 0, 1, NULL, NULL),
(62, 'Other Home Appliances', 'Other Home Appliances.png', 22, 0, 0, NULL, NULL),
(63, 'Refrigerators & Freezers', 'Refrigerators & Freezers.png', 22, 0, 1, NULL, NULL),
(64, 'Water Dispensers', 'Water Dispensers.png', 22, 0, 0, NULL, NULL),
(65, 'Microwaves & Ovens', 'Microwaves & Ovens.png', 22, 0, 1, NULL, NULL),
(66, 'Kitchen Appliances', 'Kitchen Appliances.png', 22, 0, 1, NULL, NULL),
(67, 'Motorcycles', 'Motorcycles.png', 23, 0, 1, NULL, NULL),
(68, 'Spare Parts', 'Spare Parts.png', 23, 0, 1, NULL, NULL),
(69, 'Bikes Accessories', 'Bikes Accessories.png', 23, 0, 1, NULL, NULL),
(70, 'Bicycles', 'Bicycles.png', 23, 0, 1, NULL, NULL),
(71, 'ATV & Quads', 'ATV & Quads.png', 23, 0, 0, NULL, NULL),
(72, 'Scooters', 'Scooters.png', 23, 0, 0, NULL, NULL),
(73, 'Business for Sale', 'Business for Sale.png', 24, 0, 1, NULL, NULL),
(74, 'Food & Restaurants', 'Food & Restaurants.png', 24, 0, 1, NULL, NULL),
(75, 'Construction & Heavy Machinery', 'Construction & Heavy Machinery.png', 24, 0, 1, NULL, NULL),
(76, 'Agriculture', 'Agriculture.png', 24, 0, 1, NULL, NULL),
(77, 'Medical & Pharma', 'Medical & Pharma.png', 24, 0, 1, NULL, NULL),
(78, 'Trade & Industrial Machinery', 'Trade & Industrial Machinery.png', 24, 0, 1, NULL, NULL),
(79, 'Other Business & Industry', 'Other Business & Industry.png', 24, 0, 0, NULL, NULL),
(80, 'Architecture & Interior Design', 'Architecture & Interior Design', 25, 0, 0, NULL, NULL),
(81, 'Camera Installation', 'Camera Installation', 25, 0, 0, NULL, NULL),
(82, 'Car Rental', 'Car Rental', 25, 0, 0, NULL, NULL),
(83, 'Car Services', 'Car Services', 25, 0, 0, NULL, NULL),
(84, 'Catering & Restaurant', 'Catering & Restaurant', 25, 0, 0, NULL, NULL),
(85, 'Construction Services', 'Construction Services', 25, 0, 0, NULL, NULL),
(86, 'Consultancy Services', 'Consultancy Services', 25, 0, 0, NULL, NULL),
(87, 'Domestic Help', 'Domestic Help', 25, 0, 1, NULL, NULL),
(88, 'Drivers & Taxi', 'Drivers & Taxi', 25, 0, 1, NULL, NULL),
(89, 'Tuitions & Academies', 'Tuitions & Academies', 25, 0, 0, NULL, NULL),
(90, 'Electronics & Computer Repair', 'Electronics & Computer Repair', 25, 0, 0, NULL, NULL),
(91, 'Event Services', 'Event Services', 25, 0, 0, NULL, NULL),
(92, 'Farm & Fresh Food', 'Farm & Fresh Food', 25, 0, 0, NULL, NULL),
(93, 'Health & Beauty', 'Health & Beauty.png', 25, 0, 1, NULL, NULL),
(94, 'Home & Office Repair', 'Home & Office Repair', 25, 0, 1, NULL, NULL),
(95, 'Insurance Services', 'Insurance Services', 25, 0, 0, NULL, NULL),
(96, 'Movers & Packers', 'Movers & Packers', 25, 0, 0, NULL, NULL),
(97, 'Renting Services', 'Renting Services', 25, 0, 0, NULL, NULL),
(98, 'Tailor Services', 'Tailor Services', 25, 0, 0, NULL, NULL),
(99, 'Travel & Visa', 'Travel & Visa', 25, 0, 0, NULL, NULL),
(100, 'Video & Photography', 'Video & Photography', 25, 0, 0, NULL, NULL),
(101, 'Web Development', 'Web Development.png', 25, 0, 0, NULL, NULL),
(102, 'Other Services', 'Other Services', 25, 0, 0, NULL, NULL),
(103, 'Accounting & Finance', 'Accounting & Finance', 26, 0, 0, NULL, NULL),
(104, 'Advertising & PR', 'Advertising & PR', 26, 0, 0, NULL, NULL),
(105, 'Architecture & Interior Design', 'Architecture & Interior Design', 26, 0, 0, NULL, NULL),
(106, 'Clerical & Administration', 'Clerical & Administration', 26, 0, 0, NULL, NULL),
(107, 'Content Writing', 'Content Writing', 26, 0, 0, NULL, NULL),
(108, 'Customer Service', 'Customer Service', 26, 0, 0, NULL, NULL),
(109, 'Delivery Riders', 'Delivery Riders', 26, 0, 0, NULL, NULL),
(110, 'Domestic Staff', 'Domestic Staff', 26, 0, 0, NULL, NULL),
(111, 'Education', 'Education', 26, 0, 0, NULL, NULL),
(112, 'Engineering', 'Engineering', 26, 0, 0, NULL, NULL),
(113, 'Graphic Design', 'Graphic Design', 26, 0, 0, NULL, NULL),
(114, 'Hotels & Tourism', 'Hotels & Tourism', 26, 0, 0, NULL, NULL),
(115, 'Human Resources', 'Human Resources', 26, 0, 0, NULL, NULL),
(116, 'Internships', 'Internships', 26, 0, 0, NULL, NULL),
(117, 'IT & Networking', 'IT & Networking', 26, 0, 0, NULL, NULL),
(118, 'Manufacturing', 'Manufacturing', 26, 0, 0, NULL, NULL),
(119, 'Marketing', 'Marketing', 26, 0, 0, NULL, NULL),
(120, 'Medical', 'Medical', 26, 0, 0, NULL, NULL),
(121, 'Online', 'Online', 26, 0, 0, NULL, NULL),
(122, 'Other Jobs', 'Other Jobs', 26, 0, 0, NULL, NULL),
(123, 'Part Time', 'Part Time', 26, 0, 0, NULL, NULL),
(124, 'Real Estate', 'Real Estate', 26, 0, 0, NULL, NULL),
(125, 'Restaurants & Hospitality', 'Restaurants & Hospitality', 26, 0, 0, NULL, NULL),
(126, 'Sales', 'Sales', 26, 0, 0, NULL, NULL),
(127, 'Security', 'Security', 26, 0, 0, NULL, NULL),
(128, 'Cats', 'Cats', 27, 0, 0, NULL, NULL),
(129, 'Dogs', 'Dogs', 27, 0, 0, NULL, NULL),
(130, 'Horses', 'Horses', 27, 0, 0, NULL, NULL),
(131, 'Rabbits', 'Rabbits', 27, 0, 0, NULL, NULL),
(132, 'Other Animals', 'Other Animals', 27, 0, 0, NULL, NULL),
(133, 'Hens', 'Hens', 27, 0, 0, NULL, NULL),
(134, 'Parrots', 'Parrots', 27, 0, 0, NULL, NULL),
(135, 'Pigeons', 'Pigeons', 27, 0, 0, NULL, NULL),
(136, 'Finches', 'Finches', 27, 0, 0, NULL, NULL),
(137, 'Doves', 'Doves', 27, 0, 0, NULL, NULL),
(138, 'Peacocks', 'Peacocks', 27, 0, 0, NULL, NULL),
(139, 'Ducks', 'Ducks', 27, 0, 0, NULL, NULL),
(140, 'Other Birds', 'Other Birds', 27, 0, 0, NULL, NULL),
(141, 'Fertile Eggs', 'Fertile Eggs', 27, 0, 0, NULL, NULL),
(142, 'Fish', 'Fish', 27, 0, 0, NULL, NULL),
(143, 'Livestock', 'Livestock', 27, 0, 1, NULL, NULL),
(144, 'Pet Food & Accessories', 'Pet Food & Accessories', 27, 0, 1, NULL, NULL),
(145, 'Sofa & Chairs', 'Sofa & Chairs', 28, 0, 1, NULL, NULL),
(146, 'Beds & Wardrobes', 'Beds & Wardrobes', 28, 0, 1, NULL, NULL),
(147, 'Tables & Dining', 'Tables & Dining', 28, 0, 0, NULL, NULL),
(148, 'Bathroom Accessories', 'Bathroom Accessories', 28, 0, 1, NULL, NULL),
(149, 'Garden & Outdoor', 'Garden & Outdoor', 28, 0, 1, NULL, NULL),
(150, 'Painting & Mirrors', 'Painting & Mirrors', 28, 0, 1, NULL, NULL),
(151, 'Rugs & Carpets', 'Rugs & Carpets', 28, 0, 1, NULL, NULL),
(152, 'Curtains & Blinds', 'Curtains & Blinds', 28, 0, 1, NULL, NULL),
(153, 'Office Furniture', 'Office Furniture', 28, 0, 1, NULL, NULL),
(154, 'Home Decoration', 'Home Decoration', 28, 0, 1, NULL, NULL),
(155, 'Other Household Items', 'Other Household Items', 28, 0, 0, NULL, NULL),
(156, 'Fashion Accessories', 'Fashion Accessories', 29, 0, 1, NULL, NULL),
(157, 'Clothes', 'Clothes', 29, 0, 1, NULL, NULL),
(158, 'Footwear', 'Footwear', 29, 0, 0, NULL, NULL),
(159, 'Bags', 'Bags', 29, 0, 0, NULL, NULL),
(160, 'Jewellery', 'Jewellery', 29, 0, 0, NULL, NULL),
(161, 'Makeup', 'Makeup', 29, 0, 1, NULL, NULL),
(162, 'Skin & Hair', 'Skin & Hair', 29, 0, 1, NULL, NULL),
(163, 'Watches', 'Watches', 29, 0, 0, NULL, NULL),
(164, 'Fragrance', 'Fragrance', 29, 0, 0, NULL, NULL),
(165, 'Wedding', 'Wedding', 29, 0, 1, NULL, NULL),
(166, 'Other Fashion', 'Other Fashion', 29, 0, 0, NULL, NULL),
(167, 'Books & Magazines', 'Books & Magazines', 30, 0, 1, NULL, NULL),
(168, 'Musical Instruments', 'Musical Instruments', 30, 0, 0, NULL, NULL),
(169, 'Sports Equipment', 'Sports Equipment', 30, 0, 0, NULL, NULL),
(170, 'Gym & Fitness', 'Gym & Fitness', 30, 0, 0, NULL, NULL),
(171, 'Other Hobbies', 'Other Hobbies', 30, 0, 0, NULL, NULL),
(172, 'Kids Furniture', 'Kids Furniture', 31, 0, 0, NULL, NULL),
(173, 'Kids Vehicles', 'Kids Vehicles', 31, 0, 1, NULL, NULL),
(174, 'Toys', 'Toys', 31, 0, 0, NULL, NULL),
(175, 'Baby Gear', 'Baby Gear', 31, 0, 1, NULL, NULL),
(176, 'Bath & Diapers', 'Bath & Diapers', 31, 0, 0, NULL, NULL),
(177, 'Swings & Slides', 'Swings & Slides', 31, 0, 0, NULL, NULL),
(178, 'Kids Clothing', 'Kids Clothing', 31, 0, 1, NULL, NULL),
(179, 'Kids Accessories', 'Kids Accessories', 31, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcatogriesthrees`
--

CREATE TABLE `subcatogriesthrees` (
  `id` bigint UNSIGNED NOT NULL,
  `subcategorythree_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategorythree_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcatogriesthrees`
--

INSERT INTO `subcatogriesthrees` (`id`, `subcategorythree_name`, `subcategorythree_images`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Charging Cables', 'Charging Cables', 23, 0, NULL, NULL),
(2, 'Converters', 'Converters', 23, 0, NULL, NULL),
(3, 'Chargers', 'Chargers', 23, 0, NULL, NULL),
(4, 'Screens', 'Screens', 23, 0, NULL, NULL),
(5, 'Screen Protectors', 'Screen Protectors', 23, 0, NULL, NULL),
(6, 'Mobile Stands', 'Mobile Stands', 23, 0, NULL, NULL),
(7, 'Ring Lights', 'Ring Lights', 23, 0, NULL, NULL),
(8, 'Selfie Sticks', 'Selfie Sticks', 23, 0, NULL, NULL),
(9, 'Power Banks', 'Power Banks', 23, 0, NULL, NULL),
(10, 'Headphones', 'Headphones', 23, 0, NULL, NULL),
(11, 'Earphones', 'Earphones', 23, 0, NULL, NULL),
(12, 'Covers & Cases', 'Covers & Cases', 23, 0, NULL, NULL),
(13, 'External Memory', 'External Memory', 23, 0, NULL, NULL),
(14, 'Other Accessories', 'Other Accessories', 23, 0, NULL, NULL),
(15, 'Desktops', 'Desktops', 49, 0, NULL, NULL),
(16, 'Workstations', 'Workstations', 49, 0, NULL, NULL),
(17, 'Gaming PCs', 'Gaming PCs', 49, 0, NULL, NULL),
(18, 'Laptops', 'Laptops', 49, 0, NULL, NULL),
(19, 'Computer & Laptop Accessories', 'Computer & Laptop Accessories', 49, 0, NULL, NULL),
(20, 'Computer Components', 'Computer Components', 49, 0, NULL, NULL),
(21, 'Servers', 'Servers', 49, 0, NULL, NULL),
(22, 'Softwares', 'Softwares', 49, 0, NULL, NULL),
(23, 'Networking', 'Networking', 49, 0, NULL, NULL),
(24, 'Printers & Photocopiers', 'Printers & Photocopiers', 49, 0, NULL, NULL),
(25, 'Inks & Toners', 'Inks & Toners', 49, 0, NULL, NULL),
(26, 'Gaming Consoles', 'Gaming Consoles', 50, 0, NULL, NULL),
(27, 'Video Games', 'Video Games', 50, 0, NULL, NULL),
(28, 'Controllers', 'Controllers', 50, 0, NULL, NULL),
(29, 'Gaming Accessories', 'Gaming Accessories', 50, 0, NULL, NULL),
(30, 'Digital Cameras', 'Digital Cameras', 51, 0, NULL, NULL),
(31, 'CCTV Cameras', 'CCTV Cameras', 51, 0, NULL, NULL),
(32, 'Drones', 'Drones', 51, 0, NULL, NULL),
(33, 'Binoculars', 'Binoculars', 51, 0, NULL, NULL),
(34, 'Video Cameras', 'Video Cameras', 51, 0, NULL, NULL),
(35, 'Camera Lenses', 'Camera Lenses', 51, 0, NULL, NULL),
(36, 'Flash Guns', 'Flash Guns', 51, 0, NULL, NULL),
(37, 'Bags & Cases', 'Bags & Cases', 51, 0, NULL, NULL),
(38, 'Tripods & Stands', 'Tripods & Stands', 51, 0, NULL, NULL),
(39, 'Camera Batteries', 'Camera Batteries', 51, 0, NULL, NULL),
(40, 'Professional Microphones', 'Professional Microphones', 51, 0, NULL, NULL),
(41, 'Video Lights', 'Video Lights', 51, 0, NULL, NULL),
(42, 'Gimbles & Stablizers', 'Gimbles & Stablizers', 51, 0, NULL, NULL),
(43, 'Other Cameras Accessories', 'Other Cameras Accessories', 51, 0, NULL, NULL),
(44, 'Televisions', 'Televisions', 52, 0, NULL, NULL),
(45, 'Dish Antennas', 'Dish Antennas', 52, 0, NULL, NULL),
(46, 'IPTV', 'IPTV', 52, 0, NULL, NULL),
(47, 'Projectors & Projection Screens', 'Projectors & Projection Screens', 52, 0, NULL, NULL),
(48, 'TV Cables', 'TV Cables', 52, 0, NULL, NULL),
(49, 'Android Boxes', 'Android Boxes', 52, 0, NULL, NULL),
(50, 'Wall Mounts', 'Wall Mounts', 52, 0, NULL, NULL),
(51, 'TV Remotes', 'TV Remotes', 52, 0, NULL, NULL),
(52, 'Other TV Accessories', 'Other TV Accessories', 52, 0, NULL, NULL),
(53, 'Radios', 'Radios', 53, 0, NULL, NULL),
(54, 'Microphones', 'Microphones', 53, 0, NULL, NULL),
(55, 'Home Theater Systems', 'Home Theater Systems', 53, 0, NULL, NULL),
(56, 'Amplifiers', 'Amplifiers', 53, 0, NULL, NULL),
(57, 'Sound Bars', 'Sound Bars', 53, 0, NULL, NULL),
(58, 'Speakers', 'Speakers', 53, 0, NULL, NULL),
(59, 'Audio Interface', 'Audio Interface', 53, 0, NULL, NULL),
(60, 'Digital Recorders', 'Digital Recorders', 53, 0, NULL, NULL),
(61, 'Audio Mixers', 'Audio Mixers', 53, 0, NULL, NULL),
(62, 'Walkie Talkie', 'Walkie Talkie', 53, 0, NULL, NULL),
(63, 'CD/DVD Players', 'CD/DVD Players', 53, 0, NULL, NULL),
(64, 'Turntables & Accessories', 'Turntables & Accessories', 53, 0, NULL, NULL),
(65, 'Cassette Players & Recorders', 'Cassette Players & Recorders', 53, 0, NULL, NULL),
(66, 'Mp 3 Players', 'Mp 3 Players', 53, 0, NULL, NULL),
(67, 'Car Audio/Video', 'Car Audio/Video', 53, 0, NULL, NULL),
(68, 'Other Video - Audio', 'Other Video - Audio', 53, 0, NULL, NULL),
(69, 'Air Conditioners', 'Air Conditioners', 54, 0, NULL, NULL),
(70, 'Air Coolers', 'Air Coolers', 54, 0, NULL, NULL),
(71, 'AC & Cooler Accessories', 'AC & Cooler Accessories', 54, 0, NULL, NULL),
(72, 'Heaters', 'Heaters', 56, 0, NULL, NULL),
(73, 'Geysers', 'Geysers', 56, 0, NULL, NULL),
(74, 'Heating Rods', 'Heating Rods', 56, 0, NULL, NULL),
(75, 'Washer', 'Washer', 58, 0, NULL, NULL),
(76, 'Spin Dryer', 'Spin Dryer', 58, 0, NULL, NULL),
(77, 'Washer & Dryer', 'Washer & Dryer', 58, 0, NULL, NULL),
(78, 'Irons', 'Irons', 59, 0, NULL, NULL),
(79, 'Steamers', 'Steamers', 59, 0, NULL, NULL),
(80, 'Generators', 'Generators', 61, 0, NULL, NULL),
(81, 'UPS', 'UPS', 61, 0, NULL, NULL),
(82, 'Solar Panels', 'Solar Panels', 61, 0, NULL, NULL),
(83, 'Solar Inverter', 'Solar Inverter', 61, 0, NULL, NULL),
(84, 'Solar Accessories', 'Solar Accessories', 61, 0, NULL, NULL),
(85, 'Batteries', 'Batteries', 61, 0, NULL, NULL),
(86, 'Refrigerators', 'Refrigerators', 63, 0, NULL, NULL),
(87, 'Freezers', 'Freezers', 63, 0, NULL, NULL),
(88, 'Mini', 'Mini', 63, 0, NULL, NULL),
(89, 'Ovens', 'Ovens', 65, 0, NULL, NULL),
(90, 'Microwaves', 'Microwaves', 65, 0, NULL, NULL),
(91, 'Juicers', 'Juicers', 66, 0, NULL, NULL),
(92, 'Food Factory', 'Food Factory', 66, 0, NULL, NULL),
(93, 'Stoves', 'Stoves', 66, 0, NULL, NULL),
(94, 'Blenders', 'Blenders', 66, 0, NULL, NULL),
(95, 'Air Fryers', 'Air Fryers', 66, 0, NULL, NULL),
(96, 'Choppers', 'Choppers', 66, 0, NULL, NULL),
(97, 'Grills', 'Grills', 66, 0, NULL, NULL),
(98, 'Water Purifiers', 'Water Purifiers', 66, 0, NULL, NULL),
(99, 'Mixers', 'Mixers', 66, 0, NULL, NULL),
(100, 'Electric Kettles', 'Electric Kettles', 66, 0, NULL, NULL),
(101, 'Toasters', 'Toasters', 66, 0, NULL, NULL),
(102, 'Cookers', 'Cookers', 66, 0, NULL, NULL),
(103, 'Hot Plates', 'Hot Plates', 66, 0, NULL, NULL),
(104, 'Coffee & Tea Machines', 'Coffee & Tea Machines', 66, 0, NULL, NULL),
(105, 'Hobs', 'Hobs', 66, 0, NULL, NULL),
(106, 'Dinner Sets', 'Dinner Sets', 66, 0, NULL, NULL),
(107, 'Sandwich Makers', 'Sandwich Makers', 66, 0, NULL, NULL),
(108, 'Vegetable Slicers', 'Vegetable Slicers', 66, 0, NULL, NULL),
(109, 'Hoods', 'Hoods', 66, 0, NULL, NULL),
(110, 'Meat Grinders', 'Meat Grinders', 66, 0, NULL, NULL),
(111, 'Dishwashers', 'Dishwashers', 66, 0, NULL, NULL),
(112, 'Roti Makers', 'Roti Makers', 66, 0, NULL, NULL),
(113, 'Sinks', 'Sinks', 66, 0, NULL, NULL),
(114, 'Food Steamers', 'Food Steamers', 66, 0, NULL, NULL),
(115, 'Other Kitchen Appliances', 'Other Kitchen Appliances', 66, 0, NULL, NULL),
(116, 'Standard', 'Standard', 67, 0, NULL, NULL),
(117, 'Electric Bikes', 'Electric Bikes', 67, 0, NULL, NULL),
(118, 'Sports & Heavy Bikes', 'Sports & Heavy Bikes', 67, 0, NULL, NULL),
(119, 'Cafe Racers', 'Cafe Racers', 67, 0, NULL, NULL),
(120, 'Cruisers', 'Cruisers', 67, 0, NULL, NULL),
(121, 'Trail', 'Trail', 67, 0, NULL, NULL),
(122, 'Others', 'Others', 67, 0, NULL, NULL),
(123, 'Air Filters', 'Air Filters', 68, 0, NULL, NULL),
(124, 'Carburetors', 'Carburetors', 68, 0, NULL, NULL),
(125, 'Bearings', 'Bearings', 68, 0, NULL, NULL),
(126, 'Side Mirrors', 'Side Mirrors', 68, 0, NULL, NULL),
(127, 'Motorcycle Batteries', 'Motorcycle Batteries', 68, 0, NULL, NULL),
(128, 'Switches', 'Switches', 68, 0, NULL, NULL),
(129, 'Lighting', 'Lighting', 68, 0, NULL, NULL),
(130, 'Cylinders', 'Cylinders', 68, 0, NULL, NULL),
(131, 'Clutches', 'Clutches', 68, 0, NULL, NULL),
(132, 'Pistons', 'Pistons', 68, 0, NULL, NULL),
(133, 'Chain, Covers & Sprockets', 'Chain, Covers & Sprockets', 68, 0, NULL, NULL),
(134, 'Brakes', 'Brakes', 68, 0, NULL, NULL),
(135, 'Handle Bars & Grips', 'Handle Bars & Grips', 68, 0, NULL, NULL),
(136, 'Levers', 'Levers', 68, 0, NULL, NULL),
(137, 'Seats', 'Seats', 68, 0, NULL, NULL),
(138, 'Exhausts', 'Exhausts', 68, 0, NULL, NULL),
(139, 'Fuel Tanks', 'Fuel Tanks', 68, 0, NULL, NULL),
(140, 'Horns', 'Horns', 68, 0, NULL, NULL),
(141, 'Speedometers', 'Speedometers', 68, 0, NULL, NULL),
(142, 'Plugs', 'Plugs', 68, 0, NULL, NULL),
(143, 'Stands', 'Stands', 68, 0, NULL, NULL),
(144, 'Tyres & Tubes', 'Tyres & Tubes', 68, 0, NULL, NULL),
(145, 'Other Spare Parts', 'Other Spare Parts', 68, 0, NULL, NULL),
(146, 'Bicycle Air Pumps', 'Bicycle Air Pumps', 69, 0, NULL, NULL),
(147, 'Oils / Lubricants', 'Oils / Lubricants', 69, 0, NULL, NULL),
(148, 'Bike Covers', 'Bike Covers', 69, 0, NULL, NULL),
(149, 'Bike Gloves', 'Bike Gloves', 69, 0, NULL, NULL),
(150, 'Helmets', 'Helmets', 69, 0, NULL, NULL),
(151, 'Tail Boxes', 'Tail Boxes', 69, 0, NULL, NULL),
(152, 'Bike Jackets', 'Bike Jackets', 69, 0, NULL, NULL),
(153, 'Bike Locks', 'Bike Locks', 69, 0, NULL, NULL),
(154, 'Safe Guards', 'Safe Guards', 69, 0, NULL, NULL),
(155, 'Other Bike Accessories', 'Other Bike Accessories', 69, 0, NULL, NULL),
(156, 'Road Bikes', 'Road Bikes', 70, 0, NULL, NULL),
(157, 'Mountain Bikes', 'Mountain Bikes', 70, 0, NULL, NULL),
(158, 'Hybrid Bikes', 'Hybrid Bikes', 70, 0, NULL, NULL),
(159, 'BMX Bikes', 'BMX Bikes', 70, 0, NULL, NULL),
(160, 'Electric Bicycles', 'Electric Bicycles', 70, 0, NULL, NULL),
(161, 'Folding Bikes', 'Folding Bikes', 70, 0, NULL, NULL),
(162, 'Other Bicycles', 'Other Bicycles', 70, 0, NULL, NULL),
(163, 'Mobile Shops', 'Mobile Shops', 73, 0, NULL, NULL),
(164, 'Water Plants', 'Water Plants', 73, 0, NULL, NULL),
(165, 'Beauty Salons', 'Beauty Salons', 73, 0, NULL, NULL),
(166, 'Grocery Stores', 'Grocery Stores', 73, 0, NULL, NULL),
(167, 'Hotels & Restaurants', 'Hotels & Restaurants', 73, 0, NULL, NULL),
(168, 'Pharmacies', 'Pharmacies', 73, 0, NULL, NULL),
(169, 'Snooker Clubs', 'Snooker Clubs', 73, 0, NULL, NULL),
(170, 'Cosmetic & Jewellery Shops', 'Cosmetic & Jewellery Shops', 73, 0, NULL, NULL),
(171, 'Gyms', 'Gyms', 73, 0, NULL, NULL),
(172, 'Clinics', 'Clinics', 73, 0, NULL, NULL),
(173, 'Franchises', 'Franchises', 73, 0, NULL, NULL),
(174, 'Gift & Toy Shops', 'Gift & Toy Shops', 73, 0, NULL, NULL),
(175, 'Petrol Pumps', 'Petrol Pumps', 73, 0, NULL, NULL),
(176, 'Auto Part Shops', 'Auto Part Shops', 73, 0, NULL, NULL),
(177, 'Other Businesses', 'Other Businesses', 73, 0, NULL, NULL),
(178, 'Baking Equipments', 'Baking Equipments', 74, 0, NULL, NULL),
(179, 'Food Display Counters', 'Food Display Counters', 74, 0, NULL, NULL),
(180, 'Ovens & Tandoor', 'Ovens & Tandoor', 74, 0, NULL, NULL),
(181, 'Fryers', 'Fryers', 74, 0, NULL, NULL),
(182, 'Tables & Platforms', 'Tables & Platforms', 74, 0, NULL, NULL),
(183, 'Fruit & Vegetable Machines', 'Fruit & Vegetable Machines', 74, 0, NULL, NULL),
(184, 'Chillers', 'Chillers', 74, 0, NULL, NULL),
(185, 'Food Stalls', 'Food Stalls', 74, 0, NULL, NULL),
(186, 'Delivery Bags', 'Delivery Bags', 74, 0, NULL, NULL),
(187, 'Crockery & Cutlery', 'Crockery & Cutlery', 74, 0, NULL, NULL),
(188, 'Ice cream Machines', 'Ice cream Machines', 74, 0, NULL, NULL),
(189, 'Other Restaurant Equipments', 'Other Restaurant Equipments', 74, 0, NULL, NULL),
(190, 'Construction Material', 'Construction Material', 75, 0, NULL, NULL),
(191, 'Concrete Grinders', 'Concrete Grinders', 75, 0, NULL, NULL),
(192, 'Drill Machines', 'Drill Machines', 75, 0, NULL, NULL),
(193, 'Loaders', 'Loaders', 75, 0, NULL, NULL),
(194, 'Concrete Mixers', 'Concrete Mixers', 75, 0, NULL, NULL),
(195, 'Road Roller', 'Road Roller', 75, 0, NULL, NULL),
(196, 'Cranes', 'Cranes', 75, 0, NULL, NULL),
(197, 'Construction Lifters', 'Construction Lifters', 75, 0, NULL, NULL),
(198, 'Pavers', 'Pavers', 75, 0, NULL, NULL),
(199, 'Excavators', 'Excavators', 75, 0, NULL, NULL),
(200, 'Concrete Cutters', 'Concrete Cutters', 75, 0, NULL, NULL),
(201, 'Compactors', 'Compactors', 75, 0, NULL, NULL),
(202, 'Water Pumps', 'Water Pumps', 75, 0, NULL, NULL),
(203, 'Bulldozers', 'Bulldozers', 75, 0, NULL, NULL),
(204, 'Air Compressors', 'Air Compressors', 75, 0, NULL, NULL),
(205, 'Dump Truck', 'Dump Truck', 75, 0, NULL, NULL),
(206, 'Motor Graders', 'Motor Graders', 75, 0, NULL, NULL),
(207, 'Other Heavy Equipments', 'Other Heavy Equipments', 75, 0, NULL, NULL),
(208, 'Farm, Machinery and Equipments', 'Farm, Machinery and Equipments', 76, 0, NULL, NULL),
(209, 'Seeds', 'Seeds', 76, 0, NULL, NULL),
(210, 'Crops', 'Crops', 76, 0, NULL, NULL),
(211, 'Pesticides & Fertilizers', 'Pesticides & Fertilizers', 76, 0, NULL, NULL),
(212, 'Plants & Trees', 'Plants & Trees', 76, 0, NULL, NULL),
(213, 'Other Agriculture', 'Other Agriculture', 76, 0, NULL, NULL),
(214, 'Silage', 'Silage', 76, 0, NULL, NULL),
(215, 'Ultrasound Machines', 'Ultrasound Machines', 77, 0, NULL, NULL),
(216, 'Surgical Masks', 'Surgical Masks', 77, 0, NULL, NULL),
(217, 'Patient Beds', 'Patient Beds', 77, 0, NULL, NULL),
(218, 'Wheelchairs', 'Wheelchairs', 77, 0, NULL, NULL),
(219, 'Oxygen Concentrators', 'Oxygen Concentrators', 77, 0, NULL, NULL),
(220, 'Oxygen Cylinders', 'Oxygen Cylinders', 77, 0, NULL, NULL),
(221, 'Pulse Oximeters', 'Pulse Oximeters', 77, 0, NULL, NULL),
(222, 'Hearing Aids', 'Hearing Aids', 77, 0, NULL, NULL),
(223, 'Blood Pressure Monitors', 'Blood Pressure Monitors', 77, 0, NULL, NULL),
(224, 'Thermometers', 'Thermometers', 77, 0, NULL, NULL),
(225, 'Walkers', 'Walkers', 77, 0, NULL, NULL),
(226, 'Nebulizers', 'Nebulizers', 77, 0, NULL, NULL),
(227, 'Sanitizers', 'Sanitizers', 77, 0, NULL, NULL),
(228, 'Surgical Gloves', 'Surgical Gloves', 77, 0, NULL, NULL),
(229, 'X-ray Machines', 'X-ray Machines', 77, 0, NULL, NULL),
(230, 'Lighting - Medical', 'Lighting - Medical', 77, 0, NULL, NULL),
(231, 'Medicines', 'Medicines', 77, 0, NULL, NULL),
(232, 'Glucometers', 'Glucometers', 77, 0, NULL, NULL),
(233, 'Breast Pumps', 'Breast Pumps', 77, 0, NULL, NULL),
(234, 'Commode Chairs', 'Commode Chairs', 77, 0, NULL, NULL),
(235, 'Surgical Instruments', 'Surgical Instruments', 77, 0, NULL, NULL),
(236, 'Medical Scrubs', 'Medical Scrubs', 77, 0, NULL, NULL),
(237, 'Microscopes', 'Microscopes', 77, 0, NULL, NULL),
(238, 'Other Medical Supplies', 'Other Medical Supplies', 77, 0, NULL, NULL),
(239, 'Woodworking Machines', 'Woodworking Machines', 78, 0, NULL, NULL),
(240, 'Currency Counting Machines', 'Currency Counting Machines', 78, 0, NULL, NULL),
(241, 'Plastic & Rubber Processing Machines', 'Plastic & Rubber Processing Machines', 78, 0, NULL, NULL),
(242, 'Industry Laser Machines', 'Industry Laser Machines', 78, 0, NULL, NULL),
(243, 'Molding Machines', 'Molding Machines', 78, 0, NULL, NULL),
(244, 'Packaging Machines', 'Packaging Machines', 78, 0, NULL, NULL),
(245, 'Welding Equipments', 'Welding Equipments', 78, 0, NULL, NULL),
(246, 'Paper Machines', 'Paper Machines', 78, 0, NULL, NULL),
(247, 'Air Compressors', 'Air Compressors', 78, 0, NULL, NULL),
(248, 'Sealing Machines', 'Sealing Machines', 78, 0, NULL, NULL),
(249, 'Lathe Machines', 'Lathe Machines', 78, 0, NULL, NULL),
(250, 'Liquid Filling Machines', 'Liquid Filling Machines', 78, 0, NULL, NULL),
(251, 'Marking Machines', 'Marking Machines', 78, 0, NULL, NULL),
(252, 'Textile Machinery', 'Textile Machinery', 78, 0, NULL, NULL),
(253, 'Sewing Machines', 'Sewing Machines', 78, 0, NULL, NULL),
(254, 'Knitting Machines', 'Knitting Machines', 78, 0, NULL, NULL),
(255, 'Embroidery Machines', 'Embroidery Machines', 78, 0, NULL, NULL),
(256, 'Printing Machines', 'Printing Machines', 78, 0, NULL, NULL),
(257, 'Other Business & Industrial Machines', 'Other Business & Industrial Machines', 78, 0, NULL, NULL),
(258, 'Maids', 'Maids', 87, 0, NULL, NULL),
(259, 'Babysitters', 'Babysitters', 87, 0, NULL, NULL),
(260, 'Cooks', 'Cooks', 87, 0, NULL, NULL),
(261, 'Nursing Staff', 'Nursing Staff', 87, 0, NULL, NULL),
(262, 'Other Domestic Help', 'Other Domestic Help', 87, 0, NULL, NULL),
(263, 'Drivers', 'Drivers', 88, 0, NULL, NULL),
(264, 'Pick & Drop', 'Pick & Drop', 88, 0, NULL, NULL),
(265, 'Carpool', 'Carpool', 88, 0, NULL, NULL),
(266, 'Beauty & Spa', 'Beauty & Spa', 93, 0, NULL, NULL),
(267, 'Fitness Trainers', 'Fitness Trainers', 93, 0, NULL, NULL),
(268, 'Health Services', 'Health Services', 93, 0, NULL, NULL),
(269, 'Painters', 'Painters', 94, 0, NULL, NULL),
(270, 'Electricians', 'Electricians', 94, 0, NULL, NULL),
(271, 'Plumbers', 'Plumbers', 94, 0, NULL, NULL),
(272, 'Carpenters', 'Carpenters', 94, 0, NULL, NULL),
(273, 'Pest Control', 'Pest Control', 94, 0, NULL, NULL),
(274, 'Water Tank Cleaning', 'Water Tank Cleaning', 94, 0, NULL, NULL),
(275, 'Deep Cleaning', 'Deep Cleaning', 94, 0, NULL, NULL),
(276, 'Geyser Services', 'Geyser Services', 94, 0, NULL, NULL),
(277, 'AC Services', 'AC Services', 94, 0, NULL, NULL),
(278, 'Other Repair Services', 'Other Repair Services', 94, 0, NULL, NULL),
(279, 'Buffalos', 'Buffalos', 143, 0, NULL, NULL),
(280, 'Bulls', 'Bulls', 143, 0, NULL, NULL),
(281, 'Camels', 'Camels', 143, 0, NULL, NULL),
(282, 'Cows', 'Cows', 143, 0, NULL, NULL),
(283, 'Goats', 'Goats', 143, 0, NULL, NULL),
(284, 'Sheep', 'Sheep', 143, 0, NULL, NULL),
(285, 'Others', 'Others', 143, 0, NULL, NULL),
(286, 'Cat Food', 'Cat Food', 144, 0, NULL, NULL),
(287, 'Cat Accessories', 'Cat Accessories', 144, 0, NULL, NULL),
(288, 'Dog Food', 'Dog Food', 144, 0, NULL, NULL),
(289, 'Dog Accessories', 'Dog Accessories', 144, 0, NULL, NULL),
(290, 'Fish Food', 'Fish Food', 144, 0, NULL, NULL),
(291, 'Aquariums', 'Aquariums', 144, 0, NULL, NULL),
(292, 'Incubators', 'Incubators', 144, 0, NULL, NULL),
(293, 'Brooders', 'Brooders', 144, 0, NULL, NULL),
(294, 'Hen Cages', 'Hen Cages', 144, 0, NULL, NULL),
(295, 'Birds Food', 'Birds Food', 144, 0, NULL, NULL),
(296, 'Birds Accessories', 'Birds Accessories', 144, 0, NULL, NULL),
(297, 'Other Animal Food & Accessories', 'Other Animal Food & Accessories', 144, 0, NULL, NULL),
(298, 'Medicines', 'Medicines', 144, 0, NULL, NULL),
(299, 'Sofas', 'Sofas', 145, 0, NULL, NULL),
(300, 'Sofa Beds', 'Sofa Beds', 145, 0, NULL, NULL),
(301, 'Sofa Covers', 'Sofa Covers', 145, 0, NULL, NULL),
(302, 'Cushions', 'Cushions', 145, 0, NULL, NULL),
(303, 'Chairs', 'Chairs', 145, 0, NULL, NULL),
(304, 'Recliners', 'Recliners', 145, 0, NULL, NULL),
(305, 'Bean Bags', 'Bean Bags', 145, 0, NULL, NULL),
(306, 'Beds', 'Beds', 146, 0, NULL, NULL),
(307, 'Mattresses', 'Mattresses', 146, 0, NULL, NULL),
(308, 'Mattress Covers', 'Mattress Covers', 146, 0, NULL, NULL),
(309, 'Pillows & Cases', 'Pillows & Cases', 146, 0, NULL, NULL),
(310, 'Bed Sheets', 'Bed Sheets', 146, 0, NULL, NULL),
(311, 'Blankets & Comforters', 'Blankets & Comforters', 146, 0, NULL, NULL),
(312, 'Other Bedding Accessories', 'Other Bedding Accessories', 146, 0, NULL, NULL),
(313, 'Wardrobes', 'Wardrobes', 146, 0, NULL, NULL),
(314, 'Basins', 'Basins', 148, 0, NULL, NULL),
(315, 'Bath Cabinets', 'Bath Cabinets', 148, 0, NULL, NULL),
(316, 'Bath Towels', 'Bath Towels', 148, 0, NULL, NULL),
(317, 'Bath Tubs', 'Bath Tubs', 148, 0, NULL, NULL),
(318, 'Shower Cabins', 'Shower Cabins', 148, 0, NULL, NULL),
(319, 'Soap Dispensers', 'Soap Dispensers', 148, 0, NULL, NULL),
(320, 'Taps', 'Taps', 148, 0, NULL, NULL),
(321, 'Toilets', 'Toilets', 148, 0, NULL, NULL),
(322, 'Vanity Units', 'Vanity Units', 148, 0, NULL, NULL),
(323, 'Other Bathroom Accessories', 'Other Bathroom Accessories', 148, 0, NULL, NULL),
(324, 'Artificial Grass', 'Artificial Grass', 149, 0, NULL, NULL),
(325, 'Benches', 'Benches', 149, 0, NULL, NULL),
(326, 'Outdoor Chairs', 'Outdoor Chairs', 149, 0, NULL, NULL),
(327, 'Outdoor Tables', 'Outdoor Tables', 149, 0, NULL, NULL),
(328, 'Outdoor Fountains', 'Outdoor Fountains', 149, 0, NULL, NULL),
(329, 'Outdoor Lights', 'Outdoor Lights', 149, 0, NULL, NULL),
(330, 'Outdoor Umbrellas', 'Outdoor Umbrellas', 149, 0, NULL, NULL),
(331, 'Outdoor Swings', 'Outdoor Swings', 149, 0, NULL, NULL),
(332, 'Plants & Pots', 'Plants & Pots', 149, 0, NULL, NULL),
(333, 'Tents & Shades', 'Tents & Shades', 149, 0, NULL, NULL),
(334, 'Other Outdoor Items', 'Other Outdoor Items', 149, 0, NULL, NULL),
(335, 'Paintings', 'Paintings', 150, 0, NULL, NULL),
(336, 'Painting Acesssories', 'Painting Acesssories', 150, 0, NULL, NULL),
(337, 'Frames', 'Frames', 150, 0, NULL, NULL),
(338, 'Mirror Lights', 'Mirror Lights', 150, 0, NULL, NULL),
(339, 'Mirrors', 'Mirrors', 150, 0, NULL, NULL),
(340, 'Rugs', 'Rugs', 151, 0, NULL, NULL),
(341, 'Carpets', 'Carpets', 151, 0, NULL, NULL),
(342, 'Mats', 'Mats', 151, 0, NULL, NULL),
(343, 'Prayer Mats', 'Prayer Mats', 151, 0, NULL, NULL),
(344, 'Curtains', 'Curtains', 152, 0, NULL, NULL),
(345, 'Blinds', 'Blinds', 152, 0, NULL, NULL),
(346, 'Curtain Accessories', 'Curtain Accessories', 152, 0, NULL, NULL),
(347, 'Office Chairs', 'Office Chairs', 153, 0, NULL, NULL),
(348, 'Office Sofas', 'Office Sofas', 153, 0, NULL, NULL),
(349, 'Office Tables', 'Office Tables', 153, 0, NULL, NULL),
(350, 'Shelves & Racks', 'Shelves & Racks', 153, 0, NULL, NULL),
(351, 'Office Cabinets', 'Office Cabinets', 153, 0, NULL, NULL),
(352, 'Other Office Furniture', 'Other Office Furniture', 153, 0, NULL, NULL),
(353, 'Artificial Flowers & Plants', 'Artificial Flowers & Plants', 154, 0, NULL, NULL),
(354, 'Candles', 'Candles', 154, 0, NULL, NULL),
(355, 'Chandeliers', 'Chandeliers', 154, 0, NULL, NULL),
(356, 'Decorative Trays', 'Decorative Trays', 154, 0, NULL, NULL),
(357, 'Handicrafts', 'Handicrafts', 154, 0, NULL, NULL),
(358, 'Indoor Fountains', 'Indoor Fountains', 154, 0, NULL, NULL),
(359, 'Lamps', 'Lamps', 154, 0, NULL, NULL),
(360, 'Tissue Boxes', 'Tissue Boxes', 154, 0, NULL, NULL),
(361, 'Sculptures', 'Sculptures', 154, 0, NULL, NULL),
(362, 'Showpieces', 'Showpieces', 154, 0, NULL, NULL),
(363, 'Vases', 'Vases', 154, 0, NULL, NULL),
(364, 'Flooring', 'Flooring', 154, 0, NULL, NULL),
(365, 'Wall Clocks', 'Wall Clocks', 154, 0, NULL, NULL),
(366, 'Wall Hangings', 'Wall Hangings', 154, 0, NULL, NULL),
(367, 'Wall Lights', 'Wall Lights', 154, 0, NULL, NULL),
(368, 'Other Decor Items', 'Other Decor Items', 154, 0, NULL, NULL),
(369, 'Caps', 'Caps', 156, 0, NULL, NULL),
(370, 'Scarves', 'Scarves', 156, 0, NULL, NULL),
(371, 'Ties', 'Ties', 156, 0, NULL, NULL),
(372, 'Belts', 'Belts', 156, 0, NULL, NULL),
(373, 'Socks', 'Socks', 156, 0, NULL, NULL),
(374, 'Gloves', 'Gloves', 156, 0, NULL, NULL),
(375, 'Cufflinks', 'Cufflinks', 156, 0, NULL, NULL),
(376, 'Sunglasses', 'Sunglasses', 156, 0, NULL, NULL),
(377, 'Eastern', 'Eastern', 157, 0, NULL, NULL),
(378, 'Western', 'Western', 157, 0, NULL, NULL),
(379, 'Hijabs & Abayas', 'Hijabs & Abayas', 157, 0, NULL, NULL),
(380, 'Sports Clothes', 'Sports Clothes', 157, 0, NULL, NULL),
(381, 'Kids Clothes', 'Kids Clothes', 157, 0, NULL, NULL),
(382, 'Brushes', 'Brushes', 161, 0, NULL, NULL),
(383, 'Eyes', 'Eyes', 161, 0, NULL, NULL),
(384, 'Face', 'Face', 161, 0, NULL, NULL),
(385, 'Lips', 'Lips', 161, 0, NULL, NULL),
(386, 'Nails', 'Nails', 161, 0, NULL, NULL),
(387, 'Other Makeup Accessories', 'Other Makeup Accessories', 161, 0, NULL, NULL),
(388, 'Hair Care', 'Hair Care', 162, 0, NULL, NULL),
(389, 'Skin Care', 'Skin Care', 162, 0, NULL, NULL),
(390, 'Bridals', 'Bridals', 165, 0, NULL, NULL),
(391, 'Grooms', 'Grooms', 165, 0, NULL, NULL),
(392, 'Formals', 'Formals', 165, 0, NULL, NULL),
(393, 'Books', 'Books', 167, 0, NULL, NULL),
(394, 'Magazines', 'Magazines', 167, 0, NULL, NULL),
(395, 'Dictionaries', 'Dictionaries', 167, 0, NULL, NULL),
(396, 'Stationery Items', 'Stationery Items', 167, 0, NULL, NULL),
(397, 'Calculators', 'Calculators', 167, 0, NULL, NULL),
(398, 'Kids Bikes', 'Kids Bikes', 173, 0, NULL, NULL),
(399, 'Kids Cars', 'Kids Cars', 173, 0, NULL, NULL),
(400, 'Kids Cycles', 'Kids Cycles', 173, 0, NULL, NULL),
(401, 'Kids Scooties', 'Kids Scooties', 173, 0, NULL, NULL),
(402, 'Baby Bouncers', 'Baby Bouncers', 175, 0, NULL, NULL),
(403, 'Prams & Walkers', 'Prams & Walkers', 175, 0, NULL, NULL),
(404, 'Baby Carriers', 'Baby Carriers', 175, 0, NULL, NULL),
(405, 'Baby Cots', 'Baby Cots', 175, 0, NULL, NULL),
(406, 'Baby Swings', 'Baby Swings', 175, 0, NULL, NULL),
(407, 'Car Seats', 'Car Seats', 175, 0, NULL, NULL),
(408, 'High Chairs', 'High Chairs', 175, 0, NULL, NULL),
(409, 'Other Baby Gear', 'Other Baby Gear', 175, 0, NULL, NULL),
(410, 'Kids Costumes', 'Kids Costumes', 178, 0, NULL, NULL),
(411, 'Kids Clothes', 'Kids Clothes', 178, 0, NULL, NULL),
(412, 'Kids Shoes', 'Kids Shoes', 178, 0, NULL, NULL),
(413, 'Kids Uniforms', 'Kids Uniforms', 178, 0, NULL, NULL),
(414, 'Others', 'Others', 178, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint UNSIGNED NOT NULL,
  `terms_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `terms_details`, `created_at`, `updated_at`) VALUES
(1, 'this is some terms of services', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isverify` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `confirm_password`, `image`, `role`, `phone`, `address`, `isverify`, `status`, `google_id`, `facebook_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'toheed', 'toheed12@gmail.com', NULL, '$2y$12$BwxQw/MD8X6f1F/7TZB0TeMjW1GCtkMYDCRUsOYyVeLfugkbSL.Cy', '$2y$12$xUQGQBXAN8907ImJteLzu.CEWR/2K.UGMGe1qUn4meidpBh3XVhvy', '1716403487.png', 'seller', '09876555445', 'toheed rrrrrrrrrrrddddddddddddddddddddss', 1, 0, NULL, NULL, NULL, '2024-05-23 01:44:48', '2024-05-23 01:44:48'),
(2, 'Awais shah', 'awaisshah305@gmail.com', '2024-07-12 11:56:02', '$2y$12$xqgDKi/yXJUMjw4E201YE.eYXj5rrtuZ.kFpyZ77LqYkrLpBjWTXe', NULL, '1720766849.jpeg', NULL, '03339039881', NULL, 1, 0, '110139814461543265785', NULL, NULL, '2024-05-23 14:15:28', '2024-07-12 13:47:29'),
(3, 'majid khan', 'awais.shah41@yahoo.com', NULL, '$2y$12$hhAFYkSMFD5LOwJZUCWd0ueh6c641D4ehwEuxYwwn9yissukGxLC.', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-05-25 16:32:27', '2024-05-25 16:32:55'),
(10, 'dr nadeem', 'nadeem12@gmail.com', '2024-08-15 16:49:02', '$2y$12$dnmtXCbaT/AMUvT193DVxOw4uvPzI2twsKBHRxJmUkrwcHxm4Vytu', NULL, '1724604661.png', NULL, '09876555445', NULL, 0, 0, NULL, NULL, NULL, '2024-05-25 18:20:41', '2024-08-25 23:51:01'),
(11, 'murad ali', 'muradali12@gmail.com', NULL, '$2y$12$X8Wo.gIwIVZ.iZmY6JI8gOqm8xoT5gjz4SeQ90uOYEwQgw4RFuyLW', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-05-25 19:36:03', '2024-05-25 19:36:03'),
(12, 'talha taj', 'superadmin@gmail.com', '2024-05-25 20:02:11', '$2y$12$its8QiG3wI7DTR9HEykeJeWiIjXWtk0AK/MdFe/2hNWnmGbJogc/.', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-05-25 20:01:08', '2024-05-25 20:02:11'),
(13, 'ali', NULL, NULL, '$2y$12$M/MRjF1eYevEvs10svfQ8ukJIWmrLRykzRkhPM8SZHcld.xJL2q6a', NULL, NULL, NULL, '098765345673', NULL, 0, 0, NULL, NULL, NULL, '2024-05-25 20:04:07', '2024-05-25 20:04:07'),
(15, 'Muhammad Nadeem', 'nadeem14375@gmail.com', '2024-08-25 22:52:08', NULL, NULL, '1724739742.jfif', NULL, '03469307639', NULL, 0, 0, '111153205736463261965', NULL, NULL, '2024-08-25 22:51:24', '2024-08-27 10:22:22'),
(16, 'Muhammad Nadeem', 'nayaad.nadeem@gmail.com', '2024-08-26 20:33:46', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '112376704830676162542', NULL, NULL, '2024-08-26 20:32:52', '2024-08-26 20:33:46'),
(17, 'cOjYWqbdJ', 'barkelondomw7905@gmail.com', NULL, '$2y$12$gP5RDHszqFJ93wNLj6rlJuniFJsHaPvQbX5Ohe0ZJUT0gGyoA3Dq.', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-26 21:03:45', '2024-08-26 21:03:45'),
(18, 'IltVXanhFuj', 'rojas_daniel7071@yahoo.com', NULL, '$2y$12$n2w9885avU2jEUJ87aolPujdxcI5eI62Sx1kng1WFHvP4o7otND5W', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-26 21:15:15', '2024-08-26 21:15:15'),
(19, 'WoFRyluNpwTDMf', 'johnsonjoan1991@yahoo.com', NULL, '$2y$12$HBe4d.SR5sUlLLlCACNete/2cCQla/.r58EgRV/d32IbZzAyEJHRe', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 00:30:51', '2024-08-27 00:30:51'),
(20, 'gUdSXYDCznZrhP', 'lucy.browning1981@yahoo.com', NULL, '$2y$12$EelRFQoqn32McynmcXVM0eaeobdJ8UG3/hoYObaGLHSnffHemoTrm', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 04:14:41', '2024-08-27 04:14:41'),
(21, 'aedFrNPjovzCyZDI', 'bardoylfhj27@gmail.com', NULL, '$2y$12$zMGz5rWiPXO1VdB5Gx66D.5CT11ynrNFyAtKXgfFAQM4iWbkLLgZu', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 09:49:16', '2024-08-27 09:49:16'),
(22, 'mDzYVcOg', 'michael_hobbs7273@yahoo.com', NULL, '$2y$12$xwzsD.721e1t/1zbjMN/WOM1wWe.6ovlpkLneAS9dXBYT0jrSV/Xm', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 10:31:50', '2024-08-27 10:31:50'),
(23, 'JZNoMKSRxXrEQ', 'petefulton8426@yahoo.com', NULL, '$2y$12$/4N67tDZMpjCBu5pCTe/5eAuiCfyExHWnTElOepMKQWVuvaeMqwqu', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 14:12:51', '2024-08-27 14:12:51'),
(24, 'kZoByODvjSIQU', 'blackgbarve4001@yahoo.com', NULL, '$2y$12$dN8PIVBT8AlnwtHb63Ic0uH4W8RnUEqg4xTQbSeWdF.wea5b3cROG', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 17:32:37', '2024-08-27 17:32:37'),
(25, 'cJxWMXNC', 'mary_brownpbqv@outlook.com', NULL, '$2y$12$2djeO6dPteMbxcfhfv8eI.dmivciuoeDAy/.NtQrbfSwwJJkFO12i', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 19:14:55', '2024-08-27 19:14:55'),
(26, 'JIFTLDAeM', 'gallegosalanamb1998@gmail.com', NULL, '$2y$12$r8ev3jW7gge.1nnChGcQouvSlkYoxtuA2Y2XNZMCkBCJY2W9wB.0y', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2024-08-27 19:30:36', '2024-08-27 19:30:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `ads_images`
--
ALTER TABLE `ads_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_images_related_images_id_index` (`related_images_id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisements_locationid_index` (`locationId`),
  ADD KEY `advertisements_cityid_index` (`cityId`),
  ADD KEY `advertisements_neighbourhood_id_index` (`neighbourhood_Id`),
  ADD KEY `advertisements_cat_id_index` (`cat_Id`),
  ADD KEY `advertisements_sub_cat_id_index` (`sub_cat_Id`),
  ADD KEY `advertisements_lavel_three_sub_cat_id_index` (`lavel_three_sub_cat_Id`),
  ADD KEY `advertisements_user_id_index` (`user_Id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_models_car_make_index` (`car_make`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_location_id_index` (`location_id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `neighbourhoods`
--
ALTER TABLE `neighbourhoods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `neighbourhoods_city_id_index` (`city_id`);

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
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_ads`
--
ALTER TABLE `related_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_ads_countryid_index` (`countryId`),
  ADD KEY `related_ads_cityid_index` (`cityId`),
  ADD KEY `related_ads_cat_id_index` (`cat_Id`),
  ADD KEY `related_ads_user_id_index` (`user_Id`),
  ADD KEY `related_ads_ads_id_index` (`ads_Id`);

--
-- Indexes for table `subcategorys`
--
ALTER TABLE `subcategorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategorys_category_id_index` (`category_id`);

--
-- Indexes for table `subcatogriesthrees`
--
ALTER TABLE `subcatogriesthrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcatogriesthrees_subcategory_id_index` (`subcategory_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads_images`
--
ALTER TABLE `ads_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `makes`
--
ALTER TABLE `makes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `neighbourhoods`
--
ALTER TABLE `neighbourhoods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `related_ads`
--
ALTER TABLE `related_ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcategorys`
--
ALTER TABLE `subcategorys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `subcatogriesthrees`
--
ALTER TABLE `subcatogriesthrees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads_images`
--
ALTER TABLE `ads_images`
  ADD CONSTRAINT `ads_images_related_images_id_foreign` FOREIGN KEY (`related_images_id`) REFERENCES `advertisements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_cat_id_foreign` FOREIGN KEY (`cat_Id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_cityid_foreign` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_lavel_three_sub_cat_id_foreign` FOREIGN KEY (`lavel_three_sub_cat_Id`) REFERENCES `subcatogriesthrees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_locationid_foreign` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_neighbourhood_id_foreign` FOREIGN KEY (`neighbourhood_Id`) REFERENCES `neighbourhoods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_Id`) REFERENCES `subcategorys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car_models`
--
ALTER TABLE `car_models`
  ADD CONSTRAINT `car_models_car_make_foreign` FOREIGN KEY (`car_make`) REFERENCES `makes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `neighbourhoods`
--
ALTER TABLE `neighbourhoods`
  ADD CONSTRAINT `neighbourhoods_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_ads`
--
ALTER TABLE `related_ads`
  ADD CONSTRAINT `related_ads_ads_id_foreign` FOREIGN KEY (`ads_Id`) REFERENCES `advertisements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_ads_cat_id_foreign` FOREIGN KEY (`cat_Id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_ads_cityid_foreign` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_ads_countryid_foreign` FOREIGN KEY (`countryId`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_ads_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategorys`
--
ALTER TABLE `subcategorys`
  ADD CONSTRAINT `subcategorys_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcatogriesthrees`
--
ALTER TABLE `subcatogriesthrees`
  ADD CONSTRAINT `subcatogriesthrees_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategorys` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
