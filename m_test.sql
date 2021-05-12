-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 12 2021 г., 08:13
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `m_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `retainer_fee` int NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `name`, `email`, `retainer_fee`, `updated_at`, `created_at`) VALUES
(1, 'Lois Runolfsdottir', 'ybatz@jones.com', 92068516, NULL, '2021-05-12 09:09:57'),
(2, 'Ariane Jaskolski Sr.', 'virginia78@moen.org', 31200162, NULL, '2021-05-12 09:09:57'),
(3, 'Mr. Dusty Kuphal', 'arlie96@romaguera.org', 56121944, NULL, '2021-05-12 09:09:57'),
(4, 'Miss Emily Reynolds PhD', 'hermiston.finn@eichmann.net', 91001875, NULL, '2021-05-12 09:09:57'),
(5, 'Maxime Herman I', 'kuhlman.joshuah@abshire.net', 17868072, NULL, '2021-05-12 09:09:57'),
(6, 'Kari Bartell', 'gusikowski.cecilia@mitchell.com', 56820305, NULL, '2021-05-12 09:09:57'),
(7, 'Julianne Hills', 'collier.bret@gmail.com', 20390315, NULL, '2021-05-12 09:09:57'),
(8, 'Alena Grant', 'reginald.oreilly@gmail.com', 17807782, NULL, '2021-05-12 09:09:57'),
(9, 'Mose Rau II', 'andy45@corkery.org', 23306900, NULL, '2021-05-12 09:09:57'),
(10, 'Asia Bosco I', 'schroeder.alf@yahoo.com', 56606324, NULL, '2021-05-12 09:09:57'),
(11, 'Azim Abdujalilov', 'az_1235@gmail.com', 20000, NULL, '2021-05-12 09:55:59');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-05-12-040503', '\\AddClient', 'default', 'App', 1620792476, 1),
(2, '2021-05-12-040515', '\\AddUser', 'default', 'App', 1620792476, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'Azim', 'az_12345@gmail.com', '$2y$10$RVL/Dm2Nv1P6zFhjX6y6xulCtWLqdtm5GKTO5oociN89Exs9qK7Hy', NULL, '2021-05-12 09:43:05');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `retainer_fee` (`retainer_fee`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
