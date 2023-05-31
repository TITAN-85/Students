-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 08:38 PM
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
-- Database: `maisonneuvee2295298`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `villeId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `dateDeNaissance`, `villeId`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Laron Lehner', '80894 Sandra Extension Apt. 373', '1-888-733-4823', 'xhaag@hotmail.com', '1923-05-11', 2, '2023-01-26 00:50:29', '2023-01-26 04:34:02'),
(2, 'Ozella Lang Jr.', '5942 Felipe Way', '1-866-466-0204', 'ledner.lincoln@osinski.biz', '1997-10-24', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(3, 'Kailey Goodwin', '517 Braun Rue Apt. 163', '(866) 206-9420', 'fae.reichert@hotmail.com', '1988-06-07', 1, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(4, 'Madalyn Vandervort', '142 Legros Turnpike Suite 355', '844-745-9745', 'bryana.langworth@reilly.com', '2011-12-17', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(5, 'Greta O\'Keefe', '794 Auer Camp Suite 684', '(855) 416-6222', 'tspinka@gmail.com', '2007-12-06', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(6, 'Catharine Durgan', '5053 Kelton Island Apt. 278', '1-888-560-9800', 'joelle.beier@gmail.com', '1963-01-19', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(7, 'Alvah Pagac', '4149 Avis Hill', '(844) 629-7828', 'grady.dillan@yahoo.com', '2000-01-15', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(8, 'Trever Kuhn', '4785 Towne Groves Suite 130', '800-297-6703', 'muller.joey@greenfelder.com', '1939-05-10', 5, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(9, 'Mrs. Oleta Bradtke', '71323 Maggie Roads', '877-904-7401', 'tremayne.dicki@gmail.com', '1989-03-15', 13, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(10, 'Prof. Kira Schneider', '510 Royal Port', '844-867-6334', 'little.brooks@dare.com', '1971-08-04', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(11, 'Brenda Little', '680 Ted Rest Suite 519', '(888) 925-4180', 'sydnee91@hotmail.com', '1960-01-09', 5, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(12, 'Prof. Crawford O\'Hara', '6808 D\'Amore Summit Apt. 906', '(888) 251-2130', 'hyundt@hotmail.com', '1941-06-28', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(13, 'Ephraim Heathcote', '61989 Parisian Islands Suite 324', '(844) 504-3917', 'elian13@schuppe.com', '1965-08-12', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(14, 'Amber Rippin', '1380 Petra Highway', '(888) 600-8100', 'yschroeder@stroman.com', '1934-02-02', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(15, 'Lucie Breitenberg', '4458 Swaniawski Ford Suite 029', '800.924.7146', 'altenwerth.rahul@yahoo.com', '1972-12-04', 1, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(16, 'Price Brown DVM', '90190 Afton Cliffs Apt. 954', '855.514.0010', 'emmerich.erling@steuber.net', '1955-11-12', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(17, 'Wilber Sporer', '36379 May Viaduct Apt. 773', '844.362.8768', 'annamarie.yost@hamill.net', '1923-02-21', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(18, 'Liana Hermann', '32544 Homenick Stravenue', '1-800-912-1208', 'alice.nienow@wolf.info', '1954-01-04', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(19, 'Mr. Clair Hills', '625 Jaron Lake Apt. 690', '866.452.3792', 'tbarton@yahoo.com', '1960-02-15', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(20, 'Mrs. Nicolette Will', '4107 Maurine Meadow Suite 975', '844.834.5331', 'rbartoletti@bahringer.com', '2005-10-31', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(21, 'Ramon Powlowski', '292 Maybell Isle', '844-567-7848', 'cullen47@hotmail.com', '2010-03-18', 5, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(22, 'Dr. Nolan Wyman', '68485 Travon Oval', '1-877-968-0906', 'ostokes@hotmail.com', '1932-02-18', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(23, 'Dr. Kaleb Mills', '3245 Pouros Hills Apt. 040', '855-330-7382', 'lhudson@yahoo.com', '1981-07-04', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(24, 'Ignatius Howell', '9436 Barbara Canyon Apt. 682', '888.843.3737', 'wyman.celia@davis.com', '1955-06-25', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(25, 'Billie Connelly', '74757 Sasha Locks', '866.592.2976', 'jerel29@gmail.com', '2002-01-25', 4, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(26, 'Prof. Lelah Abernathy Jr.', '786 Chet Bridge', '(866) 552-5978', 'lockman.katheryn@yahoo.com', '1935-09-04', 8, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(27, 'Sammy Mayer', '24875 Nat Square', '1-844-965-9655', 'danial87@ledner.com', '1968-04-13', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(28, 'Zoe Hessel', '9731 Rempel Estates', '(855) 678-5735', 'becker.brent@gmail.com', '1969-05-25', 2, '2023-01-26 00:50:29', '2023-01-26 04:35:47'),
(29, 'Dr. Beth O\'Kon DDS', '220 Giovanny Path', '844.406.9724', 'heber54@beier.com', '1973-08-14', 1, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(30, 'Jennings Mante', '55082 Joelle Shores Apt. 109', '(844) 396-9641', 'hkassulke@weber.com', '1952-01-08', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(31, 'Mrs. Samanta Wiegand V', '32223 Okuneva Terrace Apt. 096', '1-844-690-8207', 'ngraham@kessler.com', '2016-05-17', 9, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(32, 'Clark Zboncak PhD', '1677 Brigitte Court', '877.444.8192', 'tiana.parker@yahoo.com', '1982-08-15', 9, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(33, 'Ward Hansen II', '17564 Anderson Shoal', '800-532-8791', 'ned10@gmail.com', '2007-06-05', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(34, 'Ms. Jane Nienow', '11330 Funk Estate', '(888) 203-6925', 'wwatsica@yahoo.com', '2004-03-21', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(35, 'Julia Lakin', '6199 Trantow Parkways Suite 104', '877-373-0432', 'afton20@hotmail.com', '2019-10-29', 9, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(36, 'Marianna Russel', '64772 Franecki Parkway Suite 068', '1-877-477-8666', 'michaela41@gmail.com', '1958-06-08', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(37, 'Caleb Kozey', '41986 Jovani Row Suite 777', '877.633.0292', 'lottie56@yahoo.com', '1941-12-22', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(38, 'Norwood Greenfelder', '550 Rodrigo Fields', '(888) 836-5567', 'judd21@wiza.com', '1966-04-09', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(39, 'Althea Wiza', '25870 Larry Drive', '1-855-804-2623', 'jromaguera@bergnaum.com', '2018-03-12', 13, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(40, 'Mrs. Margie Bergstrom', '722 McKenzie Mountain', '1-844-814-0436', 'qdietrich@botsford.info', '1938-01-31', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(41, 'Jadon Cole', '139 Ken Gardens Suite 115', '855-581-9932', 'pfannerstill.nigel@yahoo.com', '1941-10-17', 4, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(42, 'Carmelo Schultz IV', '85711 Verla Plains Apt. 940', '855-609-7100', 'ella93@wiza.com', '1928-01-02', 8, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(43, 'Tristin Koelpin', '825 America Flats', '(877) 979-1447', 'christophe.olson@gmail.com', '2019-08-05', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(44, 'Reece Koss', '862 Abigale Falls Apt. 567', '844-735-3757', 'windler.lessie@beatty.info', '1987-04-28', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(45, 'Trace Gibson', '96311 Murazik Harbors Apt. 372', '(866) 524-6952', 'crawford17@hotmail.com', '2012-03-11', 8, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(46, 'Heath Bayer', '7943 Bechtelar Fort Suite 324', '1-855-387-0931', 'bridie.blanda@pouros.biz', '1924-01-02', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(47, 'Athena Rippin', '7447 Kemmer Skyway', '877-650-1961', 'daugherty.tressie@yahoo.com', '1995-02-10', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(48, 'Prof. Chasity Howell', '941 Cora Spurs Apt. 243', '844.723.3114', 'murl00@hotmail.com', '1958-10-27', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(49, 'Clementine Hill', '58098 Alejandrin Manor', '1-877-884-9064', 'xkuhlman@kihn.com', '1981-03-30', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(50, 'Levi Grant', '65231 Brown Glens Suite 255', '877.373.3774', 'smann@torp.org', '2016-08-08', 8, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(51, 'Caroline Boyle V', '7474 Newton Pines Suite 501', '1-877-556-8323', 'fhudson@gmail.com', '1930-12-07', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(52, 'Nona Parisian', '2946 Crona Shoal', '855.989.6775', 'rodriguez.hettie@ebert.com', '1969-10-30', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(53, 'Bailee Franecki', '84370 Kertzmann Fields', '(877) 346-5385', 'janice.jerde@flatley.com', '2019-02-27', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(54, 'Colleen Ziemann', '2343 Runte Plain Suite 237', '800.387.1431', 'vruecker@yahoo.com', '2022-06-07', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(55, 'Prof. Brenden Legros', '38184 Schumm Stream Suite 668', '1-888-336-5873', 'trever32@yahoo.com', '2008-08-29', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(56, 'Dr. Cheyenne Murphy III', '2194 Spencer Underpass', '1-800-601-7295', 'daniel.marian@hotmail.com', '1958-01-13', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(57, 'Johnathon Kunze', '73940 Mina Parks Suite 120', '(844) 545-6974', 'rziemann@grant.com', '1969-08-30', 3, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(58, 'Vincent Zulauf', '9500 Jodie Mountains Suite 866', '1-866-897-9301', 'herminio.mclaughlin@hotmail.com', '1934-05-08', 4, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(59, 'Elna Kuhic', '5891 Dickinson Trace', '(855) 599-9119', 'bashirian.joanie@bernier.com', '1994-01-04', 3, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(60, 'Dr. Alek Dach III', '6541 Willms Rue', '(877) 992-3438', 'wbrakus@russel.org', '1948-08-25', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(61, 'Gideon Hayes', '736 Gaston Rapid Apt. 453', '800-710-6120', 'yswaniawski@yahoo.com', '1986-07-26', 5, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(62, 'Dr. Elmore Lubowitz', '389 Orland Inlet', '844.556.5898', 'eulalia.reynolds@collier.com', '1965-12-23', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(63, 'Evert Hansen', '444 Hyatt Square Apt. 298', '800-294-2791', 'jdicki@gmail.com', '1932-11-20', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(64, 'Jacquelyn Wisozk I', '57575 Mikel Divide', '(844) 388-9355', 'arvel60@ryan.com', '1923-03-09', 9, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(65, 'Mrs. Alice Beier I', '606 Weissnat Estates', '855-998-7030', 'joyce29@abbott.com', '1937-09-09', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(66, 'Imelda O\'Keefe I', '10703 Dameon Roads Apt. 105', '1-877-566-2454', 'orion91@blick.info', '1959-09-25', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(67, 'Adalberto Green IV', '87547 Emard Via Apt. 584', '1-888-553-2508', 'howe.percy@yahoo.com', '1932-09-28', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(68, 'Gerda Keebler', '413 Kunze Greens Suite 545', '844.384.3401', 'streich.reba@yahoo.com', '2014-04-06', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(69, 'Leilani Paucek', '856 Corkery Run Suite 745', '1-855-832-2935', 'igoldner@hotmail.com', '1941-09-20', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(70, 'Dr. Ada Terry', '1739 Tyrell Centers Suite 017', '(844) 243-6030', 'erick.emmerich@hotmail.com', '2005-03-17', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(71, 'Patrick Moore Sr.', '5169 Steuber Extensions Apt. 078', '877-839-6880', 'zbartoletti@hotmail.com', '1959-09-20', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(72, 'Dr. Randy Osinski II', '48934 Jude Dale Apt. 933', '1-877-251-1273', 'eddie.spinka@lehner.biz', '2006-08-31', 6, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(73, 'Ms. Aurelie Macejkovic', '139 Sister Vista Apt. 044', '1-888-683-3924', 'halvorson.amaya@hotmail.com', '1958-01-10', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(74, 'Juston Marks', '8572 Rhea Lights', '1-888-673-8614', 'carroll.white@franecki.com', '1986-09-28', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(75, 'Emmy Rowe DVM', '2858 Bashirian Glens', '855.612.6944', 'carlie30@yahoo.com', '1957-05-08', 3, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(76, 'Mr. Jaylon Cummings', '1539 O\'Conner Falls Suite 294', '1-877-488-2549', 'purdy.harley@hotmail.com', '2005-06-15', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(77, 'Octavia Effertz', '8677 Joesph Route', '(855) 832-5329', 'clifton40@yahoo.com', '1953-10-10', 5, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(78, 'Mr. Lamont Kuhlman', '21962 Harvey Motorway', '877.600.1896', 'stamm.eveline@kertzmann.com', '1935-09-21', 3, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(79, 'Jeanne Altenwerth', '87295 Isai Corner', '(844) 957-7167', 'zelma.marks@gmail.com', '1963-07-15', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(80, 'Kaden Fadel Sr.', '7852 Kaitlin Neck Suite 067', '866.214.0143', 'abernathy.ahmed@hotmail.com', '2006-09-26', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(81, 'Mr. Destin Wehner', '11225 Klein Glen', '1-800-750-6442', 'ubailey@kunze.com', '1923-08-26', 3, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(82, 'Mr. Oren Weissnat Jr.', '2034 Roslyn Rue', '1-877-531-8979', 'erick.murazik@yahoo.com', '1952-07-09', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(83, 'Patsy Morissette', '4175 Roberts Row', '1-888-743-7373', 'hessel.isidro@rice.biz', '1964-08-21', 7, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(84, 'Prof. Sebastian Graham', '1045 Collins Mountain', '1-866-403-4769', 'kutch.bartholome@brown.com', '1951-09-08', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(85, 'Ms. Grace Klocko DDS', '4984 Feest Extensions Apt. 152', '1-855-943-1898', 'jasmin.bradtke@hirthe.biz', '2011-12-12', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(86, 'Elaina Prohaska', '4923 Schumm Rest Apt. 962', '877-949-1119', 'jeremie61@hotmail.com', '2012-02-06', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(87, 'Jules Ortiz', '4762 Bobbie Locks Suite 294', '(888) 701-3256', 'aharber@gmail.com', '1936-06-02', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(88, 'Dan Hodkiewicz', '33517 Mitchell Bypass', '800-631-4944', 'jesus43@schamberger.biz', '1938-06-20', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(89, 'Kraig Leffler Jr.', '4201 Koby Green Apt. 529', '(800) 322-0087', 'mohr.hilario@baumbach.com', '1932-06-13', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(90, 'Chelsea O\'Keefe', '66168 Wilderman Isle', '855.893.0909', 'jamie59@simonis.info', '1991-05-09', 15, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(91, 'Mara Olson', '247 Alize Neck Apt. 969', '1-866-871-1561', 'frieda25@gmail.com', '1954-12-13', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(92, 'Sid Goyette DDS', '359 Kautzer Freeway Suite 738', '1-888-717-7814', 'stark.aidan@gmail.com', '2004-12-01', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(93, 'Harrison Breitenberg', '779 Zoe Forge', '855-334-5635', 'candace.cronin@hotmail.com', '1951-08-10', 11, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(94, 'Dr. Josefa Beatty Sr.', '803 Reinger Fort Suite 629', '1-866-418-0964', 'tamara39@fritsch.com', '1970-08-07', 10, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(95, 'Yessenia Blanda', '9909 Kuhlman Islands Suite 897', '(855) 292-8976', 'rowena18@gmail.com', '1983-09-19', 14, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(96, 'Jerel Mayert', '86989 O\'Kon Rapids Apt. 142', '800.742.1714', 'kbernier@mayert.com', '1930-05-26', 13, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(97, 'Dr. Amya Pouros', '20806 Roob Circles', '1-844-679-0169', 'volkman.jamel@romaguera.info', '2009-05-21', 3, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(98, 'Susana Graham', '5817 Dibbert Plains Suite 516', '844.460.0485', 'erempel@wolf.org', '1960-05-23', 12, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(99, 'Caterina Swift', '3184 Corkery Isle', '(800) 231-9384', 'gutkowski.tremayne@osinski.com', '2013-12-13', 2, '2023-01-26 00:50:29', '2023-01-26 00:50:29'),
(101, 'Alexandru Candu', '3282 av de la pepiniere', '8 (438) 876-28-85', 'candualexandru@gmail.com', '1985-03-19', 2, '2023-01-26 05:02:17', '2023-01-26 05:02:17'),
(102, 'Alexandru Candu', '3282 av de la pepiniere', '8 (438) 876-28-85', 'candualexandru@gmail.com', '1985-03-19', 2, '2023-01-26 05:02:38', '2023-01-26 05:02:38'),
(103, 'Alexandru Candu', '3282 av de la pepiniere', '8 (438) 876-28-85', 'candualexandru@gmail.com', '1985-03-19', 1, '2023-01-26 05:11:27', '2023-01-26 05:11:27');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_23_164327_create_etudiants_table', 1),
(6, '2023_01_24_151114_create_villes_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Stan Windler', 'grayson42@example.net', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91DsLsgd5e', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(2, 'Jimmy Okuneva', 'vbartoletti@example.net', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l5IbUzBscY', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(3, 'Kacie Jones', 'mayer.lamont@example.com', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GMT2zfcKoc', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(4, 'Raven Moore', 'cortney94@example.org', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rAskXkyb9S', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(5, 'Kobe Bahringer', 'bradtke.brittany@example.com', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EGY6BeERAL', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(6, 'Hollis McLaughlin II', 'altenwerth.crawford@example.net', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qrLZTF9Npm', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(7, 'Bennett Dach', 'qheaney@example.com', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NCYsUvGLn4', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(8, 'Bobby Lockman Jr.', 'funk.lorenza@example.net', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GR3GJ6xDlp', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(9, 'Kianna Huels', 'kiehn.crystal@example.org', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lXmIMhU1lX', '2023-02-19 00:29:52', '2023-02-19 00:29:52'),
(10, 'Dr. Sabrina Donnelly IV', 'wunsch.armani@example.net', '2023-02-19 00:29:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XSsDaVaBrT', '2023-02-19 00:29:52', '2023-02-19 00:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Florencemouth', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(2, 'Lake Louietown', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(3, 'Creolamouth', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(4, 'Welchstad', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(5, 'East Garretberg', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(6, 'Dereckbury', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(7, 'North Anabelle', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(8, 'Bransonmouth', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(9, 'Jefferychester', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(10, 'Lake Anabelmouth', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(11, 'Lake Geneberg', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(12, 'West Audra', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(13, 'Lake Lizzie', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(14, 'Port Elmore', '2023-01-26 00:50:12', '2023-01-26 00:50:12'),
(15, 'East Julius', '2023-01-26 00:50:12', '2023-01-26 00:50:12');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



EN RÉSUMÉ
Les véhicules hybrides de Toyota peuvent fonctionner en toute transparence en mode 100 % électrique, en mode essence, ou dans une combinaison qui utilise l’hybridation. Tout se passe automatiquement, sans intervention du conducteur. Le résultat? Un groupe propulseur qui produit 70 % moins d’émissions que les moteurs à essence conventionnels ou les moteurs diesel, sans aucun sacrifice en matière de performance et sans qu’il soit nécessaire de brancher le véhicule.

Depuis 1997, les conducteurs bénéficient d’une meilleure économie de carburant, de coûts d’exploitation réduits et d’un niveau inégalé de confort et de raffinement grâce à la technologie hybride de Toyota. Aujourd’hui, la gamme de voitures hybrides de Toyota comprend de petites voitures hybrides, comme la Toyota Yaris Hybride et des voitures plus familiales comme la Toyota Camry, la Toyota Prius, Prius Prime et Prius C, et la toute nouvelle Toyota Corolla Hybride. Mais vous êtes-vous déjà demandé comment fonctionnent les voitures hybrides? Poursuivez votre lecture pour découvrir en quoi consiste exactement le système hybride Synergy Drive de Toyota, son fonctionnement et ses avantages pour l’environnement et votre portefeuille.

QU'EST-CE QU'UN VÉHICULE HYBRIDE?
En termes simples, un véhicule hybride est un véhicule à deux sources d’alimentation ou plus. La plupart des voitures de route hybrides utilisent un moteur à combustion interne normal couplé à un moteur électrique, mais leur combinaison signifie qu’il existe plusieurs types de configuration hybrides.

À partir de la Prius d’origine, Toyota a lancé le système hybride « complet » qui utilise deux groupes moteurs distincts – un moteur électrique à piles et un moteur à combustion alimenté à l’essence – pouvant fonctionner ensemble pour conduire le véhicule ou chacun de leur côté. Il s’agit du système hybride le plus populaire au monde et il a été vendu à plus de 12 millions d’unités depuis le lancement de la Prius au Japon en août 1997.

Le deuxième type d’hybride est appelé « parallèle ». Il utilise un moteur à combustion normale comme source principale d’énergie, avec un moteur électrique monté entre le moteur et la boîte de vitesses pour fournir une assistance. Cette disposition tend à être plus restreinte qu’un hybride « complet », et l’installation d’un moteur électrique dans un très petit espace limite également sa puissance et sa portée EV (véhicule électrique).

Enfin, la troisième variante hybride est le type « série ». Dans ce type de véhicule, le moteur électrique assure toute la conduite. Le moteur à combustion normale n’est pas connecté à la transmission et fonctionne à la place comme un générateur pour alimenter le moteur électrique. Le principal obstacle pour un hybride « série » est de maintenir son efficacité une fois que la batterie est épuisée et, pour cette raison, les hybrides « série » sont rares.

COMMENT FONCTIONNE LE SYSTÈME SYNERGY DRIVE?
Le système hybride Synergy Drive de Toyota est composé de six composants principaux : un moteur à essence, un moteur électrique, un générateur électrique, l’unité de contrôle de puissance et un dispositif de partage de puissance utilisant un type spécial de boîte de vitesses pour distribuer en douceur la puissance du moteur de même qu’un générateur.

En tant que système complet, Hybrid Synergy Drive est une technologie astucieuse et économe en carburant qui permet de basculer de manière transparente et automatique entre l’alimentation électrique et l’alimentation conventionnelle. Capable de s’adapter à différentes conditions de conduite, Hybrid Synergy Drive contrôle intelligemment la puissance provenant des deux sources et indique à la voiture comment les combiner pour une efficacité et une performance optimale.

Comme son nom l’indique, le système offre une véritable synergie entre les deux sources d’alimentation. Lorsque le moteur est en marche, il charge la batterie par le générateur. Quand les conditions de conduite le permettent, par exemple dans des conditions de circulation lente, le groupe électrogène peut couper le moteur à essence et laisser le moteur électrique prendre le relais pour des déplacements sans émissions. Le système sophistiqué de gestion du moteur peut détecter le moment où la voiture est arrêtée et l’éteindra pour économiser l’énergie et réduire les émissions, et redémarrer automatiquement en cas de besoin.

La batterie est toujours bien chargée par le système.Il n’est donc pas nécessaire de brancher une Toyota équipée du système Hybrid Synergy Drive pour le recharger. Toutefois, Toyota fabrique la Prius rechargeable (Plug-in) pour les personnes qui désirent utiliser une plus grande autonomie, soit près de 50 km en mode EV uniquement électrique. Ce type de véhicule est un « véhicule électrique hybride rechargeable » (PHEV) qui peut utiliser l’alimentation secteur (chargeur) pour compléter le système de charge à bord. Le moteur à essence est toujours présent de sorte que vous n’avez pas à vous inquiéter lors de vos déplacements.

COMMENT LES BATTERIES SE RECHARGENT-ELLES?
Le système Hybrid Synergy Drive de Toyota charge la batterie de deux manières. Premièrement et comme déjà mentionné, le moteur à essence entraîne le générateur pour charger la batterie. La seconde méthode utilise le freinage par récupération, un système qui utilise l’énergie de freinage à bon escient.

Chaque fois que vous appuyez sur le frein ou que vous relevez l’accélérateur, le système réachemine l’énergie vers la batterie, où elle est effectivement recyclée. Au lieu de perdre de l’énergie sous forme de chaleur ou de bruit provenant des freins, celle-ci est capturée puis utilisée pour alimenter le moteur électrique ultérieurement. Ceci est particulièrement efficace dans les bouchons de circulation « arrêt-marche » où le système récupère et entrepose une grande quantité d’énergie, rendant la voiture plus efficace dans son ensemble.

Pour un PHEV comme la Toyota Prius rechargeable (Plug-in), la batterie de bord peut également être chargée à la maison à l’aide de l’alimentation secteur ou à des points de charge dédiés tout au long de votre parcours, permettant ainsi une plus grande autonomie pouvant aller jusqu’à 25 km.

QUELLE EST LA DURÉE DE VIE DES BATTERIES HYBRIDES?
Les batteries des véhicules hybrides de Toyota sont des unités efficaces et résistantes à la corrosion conçues pour durer. C’est pourquoi la garantie de Toyota sur la batterie s’étend sur 8 ans / 160 000 km – cliquez ici pour en savoir plus.

Ce sont des unités importantes qui doivent entreposer suffisamment de tension pour alimenter la voiture à des vitesses d’environ 50 km/h sans aucune assistance du moteur à essence. Il est vrai que leur production a un impact environnemental supplémentaire faible, mais il est largement compensé par les avantages environnementaux de la conduite d’une voiture hybride.

Toyota tient également à recycler les batteries de ses voitures hybrides, qui peuvent être remises à neuf pour en fabriquer de nouvelles ou transformées en autres formes d’entreposage d’énergie fixe – ceci peut être discuté avec votre concessionnaire Toyota. Le constructeur automobile récupère déjà plus de 90 % des batteries hybrides de ses véhicules et vise un taux de récupération de 100 % d’ici quelques années.

DOIS-JE CONDUIRE DIFFÉREMMENT POUR TIRER LE MEILLEUR PARTI DE LA TECHNOLOGIE HYBRIDE?
Pas du tout. Parce que Toyota a automatisé le système Hybrid Synergy Drive, il optimisera son fonctionnement et minimisera la consommation de carburant pour chaque conducteur. Vous pouvez vous asseoir et profiter pleinement de la route!
HYBRIDE BRANCHABLE
La Prius Prime fonctionne essentiellement comme un véhicule hybride Toyota ordinaire, sauf qu’elle peut être branchée pour prolonger son autonomie électrique. Avec la Prime, vous pouvez rouler plus vite et plus loin en mode EV (tout électrique), comparativement aux modèles hybrides Toyota qui ne peuvent être branchés.
FACILE À RECHARGER
La Prius Prime offre les temps de recharge les plus rapides dans sa catégorie. Et vous n’avez pas besoin d’acheter d’équipement spécialisé pour la charger.

Parcourez jusqu’à 40 km en mode 100 % électrique**
Atteignez une vitesse de pointe de 135 km/h en mode électrique***
Parcourez jusqu’à 1 035 km†† avec un seul plein d’essence et une charge complète
5 heures 30 minutes††† de temps de charge avec une prise de courant domestique standard de 120V.