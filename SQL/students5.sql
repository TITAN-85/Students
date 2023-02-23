-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 12:09 AM
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
-- Table structure for table `categorie`
--
Create database students;
CREATE TABLE `categorie` (
                             `id` bigint UNSIGNED NOT NULL,
                             `categorie` varchar(45) NOT NULL,
                             `categorie_fr` varchar(45) DEFAULT NULL,
                             `categorie_ru` varchar(45) DEFAULT NULL,
                             `categorie_ro` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
                             `id` bigint UNSIGNED NOT NULL,
                             `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                             `created_at` timestamp NULL DEFAULT NULL,
                             `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `number`, `created_at`, `updated_at`) VALUES
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
                               `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                               `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
                          `id` bigint UNSIGNED NOT NULL,
                          `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                          `title_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `article` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                          `article_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                          `forum_user_id` int DEFAULT NULL,
                          `forum_etudiant_id` int DEFAULT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `title_fr`, `article`, `article_fr`, `forum_user_id`, `forum_etudiant_id`, `created_at`, `updated_at`) VALUES
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
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `user_ville_id` int DEFAULT NULL,
  `user_etudiant_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `temp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `adresse`, `phone`, `birthday`, `user_ville_id`, `user_etudiant_id`, `created_at`, `updated_at`, `temp_password`) VALUES
(1, 'Buck Halvorson', 'elmore.king@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KVc6uneUnO', '1886 Schultz Haven', '1-866-903-6071', '1991-05-11', 9, 11, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(2, 'Miss Estel Runolfsdottir', 'hill.tierra@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9hMuc37ZR0', '22027 Corkery Course', '(844) 714-8615', '1929-06-12', 6, 12, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(3, 'Prof. Saige Hackett', 'kwelch@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4rGUFALede', '711 Morissette Glen Apt. 429', '888.303.8765', '1940-06-09', 6, 13, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(4, 'Ward Williamson', 'ritchie.kaycee@example.org', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R6EQvH158W', '804 Lakin Mount Apt. 907', '800-336-3096', '1998-08-16', 8, 14, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(5, 'Raoul Dibbert', 'jared.klein@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vq7C98wbn5', '268 Satterfield Field Suite 889', '844.603.0155', '1982-02-15', 9, 15, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(6, 'Orlando Botsford', 'arianna.oconnell@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fdFzXr5mDJ', '362 Watsica Inlet Apt. 516', '(877) 656-0895', '1992-08-10', 9, 16, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(7, 'Vladimir Mitchell', 'meredith31@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0lcvPsMYES', '5271 Carroll Mountains', '866.239.1330', '2014-01-22', 5, 17, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(8, 'Lauretta Abernathy I', 'johnston.birdie@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yVQgguQ1ZO', '4873 Kunde Mountain', '866-583-5887', '1951-02-06', 9, 18, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(9, 'Kayden Lueilwitz DVM', 'cleannon@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2jcrcKSAzn', '2583 Hester Pass', '(800) 875-6908', '2009-02-18', 2, 19, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(10, 'Abby Thiel', 'colby.bartell@example.org', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3w5xCzNWi', '7817 Alisa Spring', '844-770-8949', '1931-09-18', 7, 20, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(11, 'Alex', 'candualexandru@gmail.com', NULL, '$2y$10$bTJkrzpqmVMwZipf8V6i1OwNoSXWSpaKqcJuiiv6N30Y5n0jfRNtK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 01:33:00', '2023-02-23 01:33:00', NULL),
(12, 'Alex', 'alex@alex.com', NULL, '$2y$10$uDz4kMZxRnHOOy7Qz3o1seay1wWKefr6F5VgD1fRwAzjGmmkPH9K2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 01:36:30', '2023-02-23 01:36:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `name`, `created_at`, `updated_at`) VALUES
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
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
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
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
