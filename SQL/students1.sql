-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 02:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentNumber` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `studentNumber`, `created_at`, `updated_at`) VALUES
(1, '1892766177', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(2, '1054413447', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(3, '5144047114', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(4, '8532329291', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(5, '3617207384', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(6, '7005683789', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(7, '2557115637', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(8, '1648491764', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(9, '1542318760', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(10, '8329314979', '2023-02-21 06:09:56', '2023-02-21 06:09:56'),
(11, '7083678203', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(12, '9014385350', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(13, '7580212742', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(14, '6362858516', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(15, '6261440693', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(16, '0888674255', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(17, '1355766475', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(18, '4642024059', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(19, '2748012741', '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(20, '1003302715', '2023-02-21 06:10:07', '2023-02-21 06:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_02_18_184446_create_villes_table', 1),
(5, '2023_02_18_184511_create_etudiants_table', 1),
(6, '2023_02_18_185226_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `adresse` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `ville_id` int(11) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `adresse`, `phone`, `dateDeNaissance`, `ville_id`, `etudiant_id`, `created_at`, `updated_at`) VALUES
(1, 'Reid Schiller', 'qcrist@example.net', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jRUW7iQIRb', '71129 DuBuque Fort Apt. 275', '(844) 861-0104', '1979-01-17', 4, 1, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(2, 'Jerel Dickinson Sr.', 'banderson@example.net', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'td6He4GVOU', '50670 Auer Junction', '(844) 567-6507', '1969-03-11', 7, 2, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(3, 'Adolph Hayes', 'wiegand.josue@example.org', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o2sVcTVU5d', '6325 Russel Lights Suite 211', '855-386-3859', '1986-09-26', 12, 3, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(4, 'Xander Gusikowski', 'giovanna03@example.com', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QgWsoOVHA1', '92378 Parisian Stream Suite 636', '866-368-4192', '1946-11-20', 15, 4, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(5, 'Alvina Senger V', 'alicia.reinger@example.com', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oERkZ8szDY', '17609 Moses Isle', '844-899-6311', '1969-11-15', 13, 5, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(6, 'Adeline Bechtelar', 'qhodkiewicz@example.com', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5McIUYi7IS', '424 Rosella Islands', '844.919.1070', '1964-11-02', 7, 6, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(7, 'Ms. Annamarie Roob', 'rarmstrong@example.org', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h3CDJiEpAN', '343 Kaelyn Key Suite 208', '877.221.5173', '1959-10-16', 7, 7, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(8, 'Chaya Tromp', 'cleve47@example.com', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MyNzkphjM7', '7776 Rowe Walks Apt. 305', '(855) 362-5519', '1975-01-11', 3, 8, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(9, 'Prof. Glennie Cummings', 'jschmitt@example.org', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Cb0cZDeNA', '54777 O\'Keefe Row Apt. 288', '855-712-2647', '1997-11-05', 4, 9, '2023-02-21 06:10:07', '2023-02-21 06:10:07'),
(10, 'Chester Gulgowski', 'aliyah87@example.net', '2023-02-21 06:10:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L60x9X93zp', '605 Dibbert Falls', '(877) 236-1765', '1962-06-01', 8, 10, '2023-02-21 06:10:07', '2023-02-21 06:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Adamstown', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(2, 'Kimberlyfurt', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(3, 'North Sabinaville', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(4, 'Port Sonia', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(5, 'Funkview', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(6, 'West Zena', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(7, 'South Jerrellland', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(8, 'South Arno', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(9, 'Quintenport', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(10, 'Lake Leonberg', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(11, 'Eunicestad', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(12, 'East Delphia', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(13, 'Lucianofurt', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(14, 'North Clinton', '2023-02-21 06:09:39', '2023-02-21 06:09:39'),
(15, 'East Renefurt', '2023-02-21 06:09:39', '2023-02-21 06:09:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
