-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 12 2017 г., 14:07
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `name`, `phone`, `email`, `department`, `login`, `password`) VALUES
(1, 'Иванов Иван Иванович', '2342354353', 'test@test.com', 'Отдел 1', 'dfgfdg', 'gdfgdfgd'),
(2, 'Петров Игорь Николаевич', '43543456', 'mail@ukr.net', 'Отдел 1', 'sdghjgm', 'sdg44543'),
(3, 'Сидоров Иван Петрович', '2345436', 'dfdf@mail.ru', 'Отдел 1', '3fgggdfgdf', 'gdfg32423'),
(4, 'Кущевой Александр Анатольевич', '324235333', 'mymail@gmail.com', 'Отдел 2', 'gfjfhh', 'dsde344ee'),
(5, 'Кузнецова Ольга Петровна', '4354645', 'fjgjg@ukr.net', 'Отдел 2', 'gfhgfhfg', 'hfghfggf'),
(6, 'Блажко Андрей Анатольевич', '234534543', 'gfdgfd@mail.ru', 'Отдел 1', 'grthrt', 'hrth435331'),
(7, 'Гоменюк Валерий Викторович', '324234223', 'tttt@ukr.net', 'Отдел 2', 'dfdgdg', '32423gfgdf'),
(8, 'Шанюк Денис Андреевич', '4353453', 'yhhh@gmail.com', 'Отдел 3', 'fdgfdgdf', 'gergre344'),
(9, 'Полякова Ирина Викторовна', '345346546', 'еееуу@ukr.net', 'Отдел 3', 'fddhrthrt', 'hrt4tgdfgfd');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
