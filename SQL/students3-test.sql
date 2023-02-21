-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 05:56 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.7

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
  `etudiant_id` bigint UNSIGNED NOT NULL,
  `etudiant_nr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`etudiant_id`, `etudiant_nr`, `created_at`, `updated_at`) VALUES
(1, '8827300325', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(2, '8106030799', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(3, '4775632567', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(4, '8311202589', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(5, '4880165864', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(6, '4829354120', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(7, '5765033984', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(8, '6706465380', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(9, '8979285437', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
(10, '5633142411', '2023-02-21 21:50:21', '2023-02-21 21:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `forum_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_fr` varchar(191) COLLATE utf8mb4_unicode_ci ,
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_fr` text COLLATE utf8mb4_unicode_ci ,
  `forum_user_id` int,
  `forum_etudiant_id` int,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`forum_id`, `title`, `title_fr`, `article`, `article_fr`, `forum_user_id`, `forum_etudiant_id`, `created_at`, `updated_at`) VALUES
(1, 'Natalie Ritchie', 'Alexandrine Littel', 'If they had to.', 'Cat. \'--so.', 11, 22, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(2, 'Obie Trantow', 'Prof. Rashad Harvey II', 'I think?\' \'I.', 'Dormouse; \'--well.', 12, 24, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(3, 'Antoinette D\'Amore', 'Savanna Robel DDS', 'Was kindly.', 'Majesty,\' said.', 13, 26, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(4, 'Elwin Luettgen', 'Troy Wolff V', 'I to get an.', 'What happened to.', 14, 28, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(5, 'Evie Satterfield', 'Harold Weber', 'Oh, how I wish.', 'I don\'t want to.', 15, 30, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(6, 'Javon White', 'Cristopher Bogan', 'Come and help.', 'I think--\'.', 16, 32, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(7, 'Prof. Missouri Denesik DVM', 'Keara Ortiz', 'HIM TWO--\".', 'March--just.', 17, 34, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(8, 'Edwin Walter', 'Queenie Bartoletti', 'In another minute.', 'MINE.\' The.', 18, 36, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(9, 'Alexandre Ferry', 'Alysa Durgan', 'I WAS when.', 'One of the.', 19, 38, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(10, 'Mr. Darian Mohr DDS', 'Ova Schroeder', 'No, it\'ll never do.', 'Alice. \'Exactly.', 20, 40, '2023-02-21 21:52:15', '2023-02-21 21:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_02_18_184446_create_villes_table', 1),
(5, '2023_02_18_184511_create_etudiants_table', 1),
(6, '2023_02_18_185226_create_users_table', 1),
(7, '2023_02_21_021555_create_forums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(200) COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci,
  `birthday` date,
  `user_ville_id` int,
  `user_etudiant_id` int,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `adresse`, `phone`, `birthday`, `user_ville_id`, `user_etudiant_id`, `created_at`, `updated_at`) VALUES
(1, 'Buck Halvorson', 'elmore.king@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KVc6uneUnO', '1886 Schultz Haven', '1-866-903-6071', '1991-05-11', 9, 11, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(2, 'Miss Estel Runolfsdottir', 'hill.tierra@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9hMuc37ZR0', '22027 Corkery Course', '(844) 714-8615', '1929-06-12', 6, 12, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(3, 'Prof. Saige Hackett', 'kwelch@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4rGUFALede', '711 Morissette Glen Apt. 429', '888.303.8765', '1940-06-09', 6, 13, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(4, 'Ward Williamson', 'ritchie.kaycee@example.org', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R6EQvH158W', '804 Lakin Mount Apt. 907', '800-336-3096', '1998-08-16', 8, 14, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(5, 'Raoul Dibbert', 'jared.klein@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vq7C98wbn5', '268 Satterfield Field Suite 889', '844.603.0155', '1982-02-15', 9, 15, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(6, 'Orlando Botsford', 'arianna.oconnell@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fdFzXr5mDJ', '362 Watsica Inlet Apt. 516', '(877) 656-0895', '1992-08-10', 9, 16, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(7, 'Vladimir Mitchell', 'meredith31@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0lcvPsMYES', '5271 Carroll Mountains', '866.239.1330', '2014-01-22', 5, 17, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(8, 'Lauretta Abernathy I', 'johnston.birdie@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yVQgguQ1ZO', '4873 Kunde Mountain', '866-583-5887', '1951-02-06', 9, 18, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(9, 'Kayden Lueilwitz DVM', 'cleannon@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2jcrcKSAzn', '2583 Hester Pass', '(800) 875-6908', '2009-02-18', 2, 19, '2023-02-21 21:50:42', '2023-02-21 21:50:42'),
(10, 'Abby Thiel', 'colby.bartell@example.org', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3w5xCzNWi', '7817 Alisa Spring', '844-770-8949', '1931-09-18', 7, 20, '2023-02-21 21:50:42', '2023-02-21 21:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `ville_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`ville_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Treutelview', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(2, 'Johnstontown', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(3, 'East Newton', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(4, 'Santinoview', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(5, 'Champlinton', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(6, 'West Jacquelynfurt', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(7, 'Watsicaville', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(8, 'Barrowsville', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(9, 'South Altatown', '2023-02-21 21:50:12', '2023-02-21 21:50:12'),
(10, 'West Destini', '2023-02-21 21:50:12', '2023-02-21 21:50:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`etudiant_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`forum_id`);

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
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`ville_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `etudiant_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `forum_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `ville_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
