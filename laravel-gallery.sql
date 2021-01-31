-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 31 2021 г., 06:52
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel-gallery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'uploads/aSl7wRmVX3SGakhNeDreQqM6WABjBTAQQlqGdxD2.jpg', NULL, NULL),
(2, 'uploads/JAt3u5nlPRiNYNcvVYZxwlU9bqwkH5OcekzDMpYh.jpg', NULL, NULL),
(3, 'uploads/0G3EWWKxBY0MqrkD9h26HFeea4FwDI4wdoOUNRZm.jpg', NULL, NULL),
(4, 'uploads/lbNYDE5Au8swz3z4o5j7UnoTdGbSfyQ6ppiSja43.jpg', NULL, NULL),
(5, 'uploads/QHmWZKRnHAbqTtj1l04vz5bfQVo0bonSctoU0Laf.jpg', NULL, NULL),
(6, 'uploads/sIXEC3Xt1qPEw0rzmsjT5a9klqJcn3KhRiTS6H7S.jpg', NULL, NULL),
(7, 'uploads/Vv5QO35LYp0uBNsOelIasnSi8QLbEI1U8C5mmSw9.jpg', NULL, NULL),
(10, 'uploads/wdKV3mEZ27tx7AzeBKuRjpyQ50Ngsyp4fMxrUHM8.jpg', NULL, NULL),
(11, 'uploads/xiu8jvMeXau8kPf6thISnZpn1gHOJ1Ks2rZuF7AQ.jpg', NULL, NULL),
(12, 'uploads/bUYMJkQYiTj1X2jQueVVZlj7jrZcmODKv30dVBi2.jpg', NULL, NULL),
(13, 'uploads/rYn9amYemix2gCBSNvjJQFAK4odfQAGGpxqxnIFY.jpg', NULL, NULL),
(16, 'uploads/uYlW05wbCJR5ua3xfAYI6xeUHhf0xbyCjGn8mBSg.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2021_01_29_072734_create_images_table', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
