-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2018 at 07:36 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'India', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(2, 'Canada', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(3, 'Australia', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(4, 'New Zealand', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(5, 'Malaysia', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(6, 'Japan', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(7, 'Myanmar', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(8, 'Brazil', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(9, 'Bhutan', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(10, 'Nepal', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(11, 'China', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(12, 'Russia', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(13, 'Taiwan', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(14, 'America', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(15, 'Britain', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(16, 'Scotland', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(17, 'Dubai', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(18, 'Switzerland', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(19, 'France', '2018-03-09 18:30:00', '2018-03-09 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(35, '2014_10_12_000000_create_users_table', 1),
(36, '2014_10_12_100000_create_password_resets_table', 1),
(37, '2018_03_07_154647_create_post_table', 1),
(38, '2018_03_07_162614_add_is_admin_column_to_posts_tables', 1),
(39, '2018_03_09_162836_add_deleted_at_column_to_posts_table', 1),
(40, '2018_03_10_093545_create_roles_table', 1),
(41, '2018_03_10_093635_create_users_roles_table', 1),
(42, '2018_03_10_145322_create_countries_table', 1),
(43, '2018_03_10_145502_add_country_column_to_users', 1),
(44, '2018_03_10_164446_create_photos_table', 1),
(45, '2018_03_10_185828_create_videos_table', 2),
(46, '2018_03_10_185847_create_tags_table', 2),
(47, '2018_03_10_185904_create_taggables_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'a1.jpg', 1, 'App\\User', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(2, 'a2.jpg', 2, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(3, 'a3.jpg', 1, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(4, 'a4.jpg', 3, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(5, 'a5.jpg', 4, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(6, 'a6.jpg', 5, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(7, 'a7.jpg', 6, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(8, 'a8.jpg', 7, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(9, 'a9.jpg', 8, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(10, 'a10.jpg', 8, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(11, 'a11.jpg', 10, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(12, 'a12.jpg', 11, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(13, 'a13.jpg', 12, 'App\\Post', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(14, 'a14.jpg', 8, 'App\\User', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(15, 'a15.jpg', 9, 'App\\User', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(16, 'a16.jpg', 10, 'App\\User', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(17, 'a17.jpg', 11, 'App\\User', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(18, 'a18.jpg', 12, 'App\\User', '2018-03-09 18:30:00', '2018-03-09 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `is_admin`, `deleted_at`) VALUES
(1, 'PHP Post 1 Title', 'PHP Post 1 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(2, 'JavaScript Post 2 Title', 'JavaScript Post 2 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(3, 'Laravel Post 3 Title', 'Laravel Post 3 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(4, 'Laravel Post 4 Title', 'Laravel Post 4 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(5, 'Laravel Post 5 Title', 'Laravel Post 5 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(6, 'Laravel Post 6 Title', 'Laravel Post 6 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(7, 'Laravel Post 7 Title', 'Laravel Post 7 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(8, 'Laravel Post 8 Title', 'Laravel Post 8 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(9, 'Laravel Post 9 Title', 'Laravel Post 9 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(10, 'Laravel Post 10 Title', 'Laravel Post 10 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(11, 'Laravel Post 11 Title', 'Laravel Post 11 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL),
(12, 'Laravel Post 12 Title', 'Laravel Post 12 Content', '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(2, 'Subscriber', '2018-03-09 18:30:00', '2018-03-09 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(2, 2, 1, '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(3, 8, 2, '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(4, 9, 2, '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(5, 10, 2, '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(6, 11, 1, '2018-03-09 18:30:00', '2018-03-09 18:30:00'),
(7, 12, 2, '2018-03-09 18:30:00', '2018-03-09 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE IF NOT EXISTS `taggables` (
  `id` int(10) unsigned NOT NULL,
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 1, 1, 'App\\Post'),
(2, 2, 2, 'App\\Post'),
(3, 3, 1, 'App\\Video'),
(4, 4, 2, 'App\\Video');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'php', '2018-03-10 18:30:00', '2018-03-10 18:30:00'),
(2, 'javascript', '2018-03-10 18:30:00', '2018-03-10 18:30:00'),
(3, 'PHP Video', '2018-03-10 18:30:00', '2018-03-10 18:30:00'),
(4, 'JavaScript Video', '2018-03-10 18:30:00', '2018-03-10 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Country_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `Country_id`) VALUES
(1, 'Nikita Malhotra', 'nikita@nikita.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0),
(2, 'Pooja Sharma', 'pooja@pooja.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0),
(8, 'Kiran Mehta', 'kiran@kiran.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0),
(9, 'Jatin Katiyal', 'jatin@jatin.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0),
(10, 'Lalit Sharma', 'Lalit@pooja.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0),
(11, 'Pawan Kumar', 'pawan@pawan.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0),
(12, 'David Watson', 'david@david.com', '123', NULL, '2018-03-09 18:30:00', '2018-03-09 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'phpvideo.mov', '2018-03-10 18:30:00', '2018-03-10 18:30:00'),
(2, 'javascripttut.mov', '2018-03-10 18:30:00', '2018-03-10 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
