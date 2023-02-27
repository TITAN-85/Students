-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 11:24 PM
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
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
                             `id` int(11) NOT NULL,
                             `categorie` varchar(45) NOT NULL,
                             `categorie_fr` varchar(45) DEFAULT NULL,
                             `categorie_ru` varchar(45) DEFAULT NULL,
                             `categorie_ro` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie`, `categorie_fr`, `categorie_ru`, `categorie_ro`) VALUES
                                                                                                (1, 'Food', 'Nurriture', 'Еда', 'Mincare'),
                                                                                                (2, 'Cloth', 'Vetment', 'Одежда', 'Haine');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
                             `id` bigint(20) UNSIGNED NOT NULL,
                             `number` varchar(100) NOT NULL,
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
                                                                         (10, '5633142411', '2023-02-21 21:50:21', '2023-02-21 21:50:21'),
                                                                         (11, '49866058108', '2023-02-27 02:36:22', '2023-02-27 02:36:22'),
                                                                         (12, '610573041096', '2023-02-27 03:17:11', '2023-02-27 03:17:11');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
                          `id` bigint(20) UNSIGNED NOT NULL,
                          `title` varchar(191) NOT NULL,
                          `title_fr` varchar(191) DEFAULT NULL,
                          `article` text NOT NULL,
                          `article_fr` text DEFAULT NULL,
                          `forum_user_id` int(11) NOT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `title_fr`, `article`, `article_fr`, `forum_user_id`, `created_at`, `updated_at`) VALUES
    (1, 'Natalie Ritchie', 'Alexandrine Littel', 'If they had to.', 'Cat. \'--so.', 1, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
        (2, 'Obie Trantow', 'Prof. Rashad Harvey II', 'I think?\' \'I.', 'Dormouse; \'--well.', 2, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(3, 'Antoinette D\'Amore', 'Savanna Robel DDS', 'Was kindly.', 'Majesty,\' said.', 3, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(4, 'Elwin Luettgen', 'Troy Wolff V', 'I to get an.', 'What happened to.', 4, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(5, 'Evie Satterfield', 'Harold Weber', 'Oh, how I wish.', 'I don\'t want to.', 5, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(6, 'Javon White', 'Cristopher Bogan', 'Come and help.', 'I think--\'.', 6, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(7, 'Prof. Missouri Denesik DVM', 'Keara Ortiz', 'HIM TWO--\".', 'March--just.', 7, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(8, 'Edwin Walter', 'Queenie Bartoletti', 'In another minute.', 'MINE.\' The.', 8, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(9, 'Alexandre Ferry', 'Alysa Durgan', 'I WAS when.', 'One of the.', 9, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(10, 'Mr. Darian Mohr DDS', 'Ova Schroeder', 'No, it\'ll never do.', 'Alice. \'Exactly.', 10, '2023-02-21 21:52:15', '2023-02-21 21:52:15'),
(11, 'Helllo', 'Allo', 'hi guys', 'alo peuple', 13, '2023-02-27 02:36:52', '2023-02-27 02:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
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
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repertoires`
--

CREATE TABLE `repertoires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_fr` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `repertoires_user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `adresse` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `user_ville_id` int(11) DEFAULT NULL,
  `user_etudiant_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `temp_password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `adresse`, `phone`, `birthday`, `user_ville_id`, `user_etudiant_id`, `created_at`, `updated_at`, `temp_password`) VALUES
(1, 'Buck Halvorson', 'elmore.king@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KVc6uneUnO', '1886 Schultz Haven', '1-866-903-6071', '1991-05-11', 9, 1, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(2, 'Miss Estel Runolfsdottir', 'hill.tierra@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9hMuc37ZR0', '22027 Corkery Course', '(844) 714-8615', '1929-06-12', 6, 2, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(3, 'Prof. Saige Hackett', 'kwelch@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4rGUFALede', '711 Morissette Glen Apt. 429', '888.303.8765', '1940-06-09', 6, 3, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(4, 'Ward Williamson', 'ritchie.kaycee@example.org', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R6EQvH158W', '804 Lakin Mount Apt. 907', '800-336-3096', '1998-08-16', 8, 4, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(5, 'Raoul Dibbert', 'jared.klein@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vq7C98wbn5', '268 Satterfield Field Suite 889', '844.603.0155', '1982-02-15', 9, 5, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(6, 'Orlando Botsford', 'arianna.oconnell@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fdFzXr5mDJ', '362 Watsica Inlet Apt. 516', '(877) 656-0895', '1992-08-10', 9, 6, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(7, 'Vladimir Mitchell', 'meredith31@example.com', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0lcvPsMYES', '5271 Carroll Mountains', '866.239.1330', '2014-01-22', 5, 7, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(8, 'Lauretta Abernathy I', 'johnston.birdie@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yVQgguQ1ZO', '4873 Kunde Mountain', '866-583-5887', '1951-02-06', 9, 8, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(9, 'Kayden Lueilwitz DVM', 'cleannon@example.net', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2jcrcKSAzn', '2583 Hester Pass', '(800) 875-6908', '2009-02-18', 2, 9, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(10, 'Abby Thiel', 'colby.bartell@example.org', '2023-02-21 21:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3w5xCzNWi', '7817 Alisa Spring', '844-770-8949', '1931-09-18', 7, 10, '2023-02-21 21:50:42', '2023-02-21 21:50:42', NULL),
(13, 'Alexandru Candu', 'candualexandru@gmail.com', NULL, '$2y$10$nI2wqlFAaKhIWKogoa69Iuo7PXvkIb03jEeVh7ufd/mtjaVDTg58S', NULL, '3282 av de la pepiniere', '438-876-2885', '2002-01-28', 7, 11, '2023-02-27 02:36:22', '2023-02-27 02:36:22', NULL),
(14, 'marcos', 'marcos@gmail.com', NULL, '$2y$10$uCcvhKoddFWkjCC3ybKGbuZDF9YBraerFS0tnhvx0A45oenR5vbka', NULL, '3282 av de la pepiniere', '438-876-2885', '1985-12-30', 3, 12, '2023-02-27 03:17:11', '2023-02-27 03:17:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_user_id_fk` (`forum_user_id`);

--
-- Indexes for table `repertoires`
--
ALTER TABLE `repertoires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repertoires_user_id_fk` (`repertoires_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ville_id_fk` (`user_ville_id`),
  ADD KEY `user_etudiant_id_fk` (`user_etudiant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `repertoires`
--
ALTER TABLE `repertoires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
