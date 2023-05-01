-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 11:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `attendence_date` date NOT NULL,
  `attendence_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `class_id`, `teacher_id`, `student_id`, `attendence_date`, `attendence_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2023-04-04', 1, '2023-04-04 13:49:33', '2023-04-04 13:49:33'),
(2, 2, 1, 2, '2023-04-04', 0, '2023-04-04 13:59:45', '2023-04-04 13:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class_numeric` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `teacher_id`, `class_numeric`, `class_name`, `class_description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'One', 'class one', NULL, NULL),
(2, 1, 2, 'Two', 'ban eng math', '2023-04-04 13:54:23', '2023-04-10 14:45:09'),
(3, 1, 3, 'Three', 'this is class three', '2023-04-10 14:45:47', '2023-04-10 14:45:47'),
(4, 1, 4, 'Four', 'this is class four', '2023-04-10 14:46:09', '2023-04-10 14:46:09'),
(5, 1, 5, 'Five', 'this is class 5', '2023-04-10 14:46:33', '2023-04-10 14:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `grade_subject`
--

CREATE TABLE `grade_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_subject`
--

INSERT INTO `grade_subject` (`id`, `grade_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 1, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_14_114748_create_permission_tables', 1),
(4, '2019_05_15_180937_create_students_table', 1),
(5, '2019_05_15_181154_create_parents_table', 1),
(6, '2019_05_15_181254_create_teachers_table', 1),
(7, '2019_05_15_181552_create_grades_table', 1),
(8, '2019_05_16_174745_create_subjects_table', 1),
(9, '2019_05_16_175620_create_grade_subject_table', 1),
(10, '2019_05_17_133226_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(3, 'App\\User', 3),
(3, 'App\\User', 9),
(3, 'App\\User', 10),
(3, 'App\\User', 11),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 12);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `phone` varchar(255) NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `gender`, `phone`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(1, 3, 'male', '0123456789', 'Dhaka-1215', 'Dhaka-1215', '2023-04-04 13:40:57', NULL),
(2, 9, 'male', '01937055511', 'gg', 'dd', '2023-04-10 15:14:43', '2023-04-10 15:14:43'),
(3, 10, 'male', '01937055511', 'jghjhg', 'hgjfgh', '2023-04-10 15:15:34', '2023-04-10 15:15:34'),
(4, 11, 'male', '01937055511', 'hgh', 'ghghf', '2023-04-10 15:16:24', '2023-04-10 15:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Two', 'web', '2023-04-04 13:57:42', '2023-04-04 13:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-04-04 13:40:57', '2023-04-04 13:40:57'),
(2, 'Teacher', 'web', '2023-04-04 13:40:57', '2023-04-04 13:40:57'),
(3, 'Parent', 'web', '2023-04-04 13:40:57', '2023-04-04 13:40:57'),
(4, 'Student', 'web', '2023-04-04 13:40:57', '2023-04-04 13:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `roll_number` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `parent_id`, `class_id`, `roll_number`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 1, 'male', '0123456789', '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', '2023-04-04 13:40:57', NULL),
(2, 5, 1, 2, 10, 'male', '01937055511', '2021-11-01', 'dha', 'fha', '2023-04-04 13:45:25', '2023-04-04 13:58:00'),
(3, 12, 4, 5, 100, 'male', '01937055511', '2023-04-11', 'khjk', 'jkhjk', '2023-04-10 15:18:19', '2023-04-10 15:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `subject_code` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `subject_code`, `teacher_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ban', 'ban', 100, 1, 'bannnnn', '2023-04-04 13:55:06', '2023-04-04 13:55:06'),
(2, 'eng', 'eng', 101, 1, 'fg', '2023-04-04 13:55:20', '2023-04-04 13:55:20'),
(3, 'math', 'math', 100, 1, 'bannnnn', '2023-04-04 13:55:41', '2023-04-04 13:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'male', '0123456789', '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', '2023-04-04 13:40:57', NULL),
(2, 6, 'male', '01937055511', '1999-03-25', 'dhaka', 'dhaka', '2023-04-10 15:10:22', '2023-04-10 15:10:22'),
(3, 7, 'male', '01937055511', '1999-03-25', 'ddd', 'aaa', '2023-04-10 15:11:55', '2023-04-10 15:13:21'),
(4, 8, 'male', '01937055511', '1999-03-25', 'ggg', 'hhhh', '2023-04-10 15:13:05', '2023-04-10 15:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@demo.com', NULL, '$2y$10$yGy//3ReQe/KJrqyFntKme9XZzOBgkW6Cy/AhGcp3n.llxryjUdSO', 'admin-1.jpg', NULL, '2023-04-04 13:40:57', '2023-04-10 14:36:23'),
(2, 'Teacher', 'teacher@demo.com', NULL, '$2y$10$MVa4IOlcF0mprKkxxrPsCOH0C/K1BxznfsEsTh9aT5UJ.DNEHt/kK', 'avatar.png', NULL, '2023-04-04 13:40:57', '2023-04-04 13:40:57'),
(3, 'Parent', 'parent@demo.com', NULL, '$2y$10$.OfQAPKUxb/F7jQxbVm0Tea455F.GZmjVvxeNjEavkcDk80DDGFJO', 'avatar.png', NULL, '2023-04-04 13:40:57', '2023-04-04 13:40:57'),
(4, 'Student', 'student@demo.com', NULL, '$2y$10$lGibeuIuFItZ3YLxHCxIre1Tn59u/pKw8HE70iL5B9P0SsqOsBwde', 'avatar.png', NULL, '2023-04-04 13:40:57', '2023-04-04 13:40:57'),
(5, 'Rahul', 'rp@gmail.com', NULL, '$2y$10$yEFNoOsdPViTyYbxgblWQOpA2SWb.ci1rELf9as.LbixvCL7VkUlm', 'rahul-5.jpg', NULL, '2023-04-04 13:45:25', '2023-04-04 13:58:00'),
(6, 'Math Teacher', 'mt@gmail.com', NULL, '$2y$10$Qsvz.kelUFhTqZ9TRhZZLuUw9zZz3wR3bArHRP.Tmt48dY0qvCw4i', 'avatar.png', NULL, '2023-04-10 15:10:22', '2023-04-10 15:10:22'),
(7, 'Eng Teacher', 'et@gmail.com', NULL, '$2y$10$ga/j4cVtLLdbfMA8C2tGH.bn5FB5tLbeW3F8VwyuBNVzwMr6WJMsq', 'eng-theacher-7.jpg', NULL, '2023-04-10 15:11:55', '2023-04-10 15:13:21'),
(8, 'Ban Teacher', 'bt@gmail.com', NULL, '$2y$10$8tzIyxbwwcic0xajttTIlO0QHlol1OIKvrRvQQ6nf6Yw9XZlIxGr2', 'ban-teacher-8.jpg', NULL, '2023-04-10 15:13:05', '2023-04-10 15:13:05'),
(9, 'Sakib', 's@gmail.com', NULL, '$2y$10$6LLjCx5ZQZMzTNbhqjTopej0qs4smhNNTejKC8OO/MKC70TI7n7d2', 'sakib-9.png', NULL, '2023-04-10 15:14:43', '2023-04-10 15:14:43'),
(10, 'Tamim Iqbal', 't@gmail.com', NULL, '$2y$10$ZgqbAh6QCG56AC0WfSZvcOar4BssdHB2wmH3Day3ob.1pHGXd9ASO', 'tamim-iqbal-10.png', NULL, '2023-04-10 15:15:34', '2023-04-10 15:15:34'),
(11, 'sakib Iqbal', 'si@gmail.com', NULL, '$2y$10$UvkaSCdfvmJd6jx0oQLk3.q.N6QFM8Z36xMBk5WxFLodC7kZtsD/G', 'sakib-iqbal-11.png', NULL, '2023-04-10 15:16:24', '2023-04-10 15:16:24'),
(12, 'Tamim khan', 'tamin@gmail.com', NULL, '$2y$10$qX3D6bx0DJZcEMBSscJYhuBVx45xeg6/xwoHKkDJpNCZnuaJNi10C', 'tamim-khan-12.png', NULL, '2023-04-10 15:18:19', '2023-04-10 15:18:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_subject`
--
ALTER TABLE `grade_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade_subject`
--
ALTER TABLE `grade_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
