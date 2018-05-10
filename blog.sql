-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 12:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_name`, `city`, `categories`, `brand`, `product_title`, `product_description`, `address`, `price`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rajinder Kumar', 'Chamba', 'Cars', 'Honda', 'Honda City 2015 Model', 'This car is 40000 k.m driven and in good condtion.', 'Baikhet, Chamba', 500000, 789568956, 'images/honda city.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `cat_name`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Bikes', 'Bajaj', '2018-04-10 03:06:15', NULL),
(2, 'Bikes', 'Yamaha', '2018-04-10 03:06:15', NULL),
(3, 'Bikes', 'Royal Enfield', '2018-04-10 03:06:15', NULL),
(4, 'Bikes', 'Hero', '2018-04-10 03:06:15', NULL),
(5, 'Bikes', 'Honda', '2018-04-10 03:06:15', NULL),
(6, 'Bikes', 'TVS', '2018-04-10 03:06:15', NULL),
(7, 'Bikes', 'Suzuki', '2018-04-10 03:06:15', NULL),
(8, 'Bikes', 'KTM', '2018-04-10 03:06:15', NULL),
(9, 'Cars', 'Maruti Suzuki', '2018-04-10 03:06:15', NULL),
(10, 'Cars', 'Hyundai', '2018-04-10 03:06:15', NULL),
(11, 'Cars', 'Honda', '2018-04-10 03:06:15', NULL),
(12, 'Cars', 'Toyota', '2018-04-10 03:06:15', NULL),
(13, 'Cars', 'Tata', '2018-04-10 03:06:15', NULL),
(14, 'Cars', 'BMW', '2018-04-10 03:06:15', NULL),
(15, 'Cars', 'Audi', '2018-04-10 03:06:15', NULL),
(16, 'Cars', 'Mercedes', '2018-04-10 03:06:15', NULL),
(17, 'Mobiles', 'Apple', '2018-04-10 03:06:15', NULL),
(18, 'Mobiles', 'Samsung', '2018-04-10 03:06:15', NULL),
(19, 'Mobiles', 'Vivo', '2018-04-10 03:06:15', NULL),
(20, 'Mobiles', 'Oppo', '2018-04-10 03:06:15', NULL),
(21, 'Mobiles', 'Xiomi', '2018-04-10 03:06:15', NULL),
(22, 'Mobiles', 'Asus', '2018-04-10 03:06:15', NULL),
(23, 'Mobiles', 'Micromax', '2018-04-10 03:06:15', NULL),
(24, 'Properties', 'Land for Sale', '2018-04-10 03:06:15', NULL),
(25, 'Properties', 'House for Rent', '2018-04-10 03:06:15', NULL),
(26, 'Properties', 'House for Sale', '2018-04-10 03:06:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Bikes', '2018-04-02 22:56:45', NULL),
(2, 'Cars', '2018-04-09 23:53:42', NULL),
(3, 'Mobiles', '2018-04-09 21:55:42', NULL),
(4, 'Properties', '2018-04-09 21:55:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 'Bilaspur', '2018-04-08 00:47:14', NULL),
(2, 'Chamba', '2018-04-07 23:48:31', NULL),
(3, 'Hamirpur', '2018-04-03 02:55:10', NULL),
(4, 'Kullu', '2018-04-03 02:55:10', NULL),
(5, 'Kinnour', '2018-04-03 02:55:10', NULL),
(6, 'Kangra', '2018-04-03 02:55:10', NULL),
(7, 'Mandi', '2018-04-03 02:55:10', NULL),
(8, 'Lahaul Spiti', '2018-04-03 02:55:10', NULL),
(9, 'Shimla', '2018-04-03 02:55:10', NULL),
(10, 'Sirmour', '2018-04-03 02:55:10', NULL),
(11, 'Solan', '2018-04-03 02:55:10', NULL),
(12, 'Una', '2018-04-03 02:55:10', NULL);

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
(1, '2018_04_10_062350_create_cities_table', 1),
(2, '2018_04_10_065250_categories_table', 2),
(4, '2018_04_10_065820_brands_table', 4),
(5, '2018_03_20_102305_advertisement', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rajinder Kumar', 'rajinder.infin@gmail.com', '$2y$10$6cFbnPhCv1HfkTkBzyNYiuWJJMKBgB4TjcWcfTRAReVRKiN.QvFxW', NULL, '2018-04-10 01:19:47', '2018-04-10 01:19:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
