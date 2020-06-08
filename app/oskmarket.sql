-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2020 г., 13:26
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `munko`
use munko;
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`, `photo`, `caption`) VALUES
(1, 'Первый Автор Авторович', NULL, NULL),
(2, 'Parrish, Shana K.', 'eleifend.', 'Lorem'),
(3, 'Jefferson, Quincy X.', 'Suspendisse', 'Lorem ipsum'),
(4, 'Rice, Hanna P.', 'Proin', 'Lorem ipsum'),
(5, 'Valenzuela, Richard K.', 'vestibulum.', 'Lorem'),
(6, 'Wood, Reed G.', 'pede.', 'Lorem ipsum'),
(7, 'Santos, Timon I.', 'In', 'Lorem'),
(8, 'Rush, Cheyenne J.', 'eget', 'Lorem ipsum dolor'),
(9, 'Hood, Victor Q.', 'sollicitudin', 'Lorem ipsum dolor'),
(10, 'Mcclure, Daniel G.', 'lectus', 'Lorem ipsum dolor sit amet,');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`) VALUES
(1, 'three', NULL),
(2, 'one', 10),
(3, 'five', NULL),
(4, 'three', 3),
(5, 'seven', 3),
(6, 'ten', 1),
(7, 'five', NULL),
(8, 'ten', 3),
(9, 'ten', 8),
(10, 'three', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1591189989),
('m200603_132231_create_news_table', 1591192939),
('m200603_132421_create_authors_table', 1591193132),
('m200603_134148_create_categories_table', 1591193132),
('m200605_174831_create_news_table', 1591379397);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `preview` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `preview`, `content`, `author_id`, `category_id`) VALUES
(1, 'volutpat', 'Aliquam erat volutpat. Nulla', 'elit, a feugiat tellus lorem eu metus. In lorem. Donec', 4, 5),
(2, 'eu', 'sapien, gravida non, sollicitudin', 'tincidunt dui augue eu tellus.', 2, 6),
(3, 'consequat', 'et', 'varius. Nam', 2, 9),
(4, 'Nunc', 'Nunc quis arcu vel', 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit', 8, 3),
(5, 'non', 'dis parturient montes, nascetur ridiculus', 'fermentum arcu. Vestibulum ante ipsum primis in', 5, 1),
(6, 'Mauris', 'enim. Etiam gravida molestie', 'Phasellus', 6, 2),
(7, 'orci', 'enim nisl elementum', 'dui lectus rutrum urna, nec luctus felis purus ac', 5, 7),
(8, 'ipsum.', 'Curabitur dictum. Phasellus in felis.', 'magna a tortor. Nunc commodo auctor velit.', 4, 2),
(9, 'orci', 'et,', 'vitae diam. Proin dolor.', 7, 8),
(10, 'iaculis', 'pellentesque massa', 'varius ultrices, mauris ipsum porta elit, a feugiat', 4, 6),
(11, 'nulla.', 'ac orci. Ut semper', 'ante. Vivamus non lorem vitae', 6, 5),
(12, 'facilisis', 'Nam interdum', 'ullamcorper. Duis cursus, diam at pretium aliquet, metus urna', 6, 8),
(13, 'Phasellus', 'Maecenas libero est, congue a,', 'mauris, rhoncus id, mollis nec,', 5, 3),
(14, 'Maecenas', 'ornare placerat, orci', 'Nullam suscipit, est', 6, 8),
(15, 'in', 'non, lobortis quis,', 'odio', 6, 2),
(16, 'arcu', 'vulputate, posuere vulputate, lacus. Cras', 'commodo ipsum. Suspendisse', 10, 10),
(17, 'arcu', 'Vivamus nisi.', 'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.', 4, 4),
(18, 'lectus', 'feugiat.', 'Duis a mi fringilla', 2, 2),
(19, 'taciti', 'tellus non magna. Nam', 'vehicula aliquet libero. Integer in magna. Phasellus', 5, 10),
(20, 'dui.', 'magna.', 'eu, eleifend nec, malesuada ut,', 5, 1),
(21, 'Curabitur', 'Fusce mollis. Duis', 'feugiat metus sit amet ante. Vivamus non', 7, 7),
(22, 'lacinia', 'eleifend nec, malesuada ut,', 'Aliquam nec enim. Nunc ut erat. Sed nunc est,', 4, 5),
(23, 'tellus,', 'ac facilisis facilisis, magna tellus', 'egestas. Aliquam nec enim. Nunc ut', 1, 3),
(24, 'montes,', 'amet, risus.', 'Integer aliquam adipiscing lacus. Ut', 10, 6),
(25, 'nisl', 'sit amet,', 'facilisis vitae, orci. Phasellus dapibus quam quis diam.', 2, 10),
(26, 'tellus.', 'et risus. Quisque', 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor', 3, 8),
(27, 'tempus', 'libero. Donec', 'molestie tellus. Aenean egestas hendrerit neque. In ornare', 4, 1),
(28, 'eros', 'nisl. Maecenas', 'eu nibh vulputate mauris', 3, 4),
(29, 'sem.', 'pharetra nibh. Aliquam ornare,', 'Nam ac nulla. In tincidunt congue', 5, 1),
(30, 'risus.', 'cubilia', 'sagittis. Duis gravida. Praesent eu', 4, 10),
(31, 'at,', 'Nunc quis arcu vel', 'at risus. Nunc ac sem ut', 6, 1),
(32, 'Cum', 'per conubia nostra,', 'augue. Sed molestie. Sed id risus', 5, 4),
(33, 'Lorem', 'ipsum. Donec', 'gravida molestie', 3, 3),
(34, 'purus.', 'sit amet, risus. Donec nibh', 'Cras pellentesque.', 7, 10),
(35, 'pharetra', 'convallis, ante lectus convallis', 'et', 10, 10),
(36, 'ac', 'velit. Pellentesque', 'aliquam iaculis, lacus', 2, 1),
(37, 'nunc', 'eleifend nec, malesuada', 'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 6, 8),
(38, 'nisi', 'vel', 'ante ipsum primis in', 8, 9),
(39, 'libero', 'lorem tristique aliquet. Phasellus', 'vulputate ullamcorper magna. Sed eu eros.', 8, 5),
(40, 'Aliquam', 'a', 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc', 3, 2),
(41, 'lorem,', 'purus. Maecenas libero', 'nec, imperdiet nec, leo. Morbi neque tellus,', 9, 6),
(42, 'purus.', 'aliquam arcu. Aliquam', 'et, magna. Praesent interdum ligula', 2, 5),
(43, 'Mauris', 'Donec feugiat', 'eu erat', 6, 5),
(44, 'amet', 'eget,', 'Nunc ullamcorper, velit in aliquet', 4, 7),
(45, 'Sed', 'nec tempus', 'sagittis lobortis mauris. Suspendisse', 9, 7),
(46, 'Suspendisse', 'aliquet, sem', 'nunc. In', 8, 3),
(47, 'adipiscing', 'montes, nascetur ridiculus mus. Aenean', 'Mauris magna. Duis', 8, 3),
(48, 'nunc', 'eu lacus.', 'sed, hendrerit a, arcu.', 2, 3),
(49, 'malesuada', 'leo', 'dolor. Fusce', 10, 5),
(50, 'Sed', 'dui, semper et, lacinia vitae,', 'a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus', 5, 4),
(51, 'volutpat', 'torquent', 'lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas', 2, 10),
(52, 'tristique', 'pede. Praesent eu', 'amet nulla. Donec non justo. Proin non massa', 2, 5),
(53, 'elit', 'id', 'pretium neque. Morbi quis urna.', 10, 9),
(54, 'sodales', 'semper', 'aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend', 1, 9),
(55, 'auctor', 'arcu imperdiet', 'quis diam luctus lobortis. Class aptent', 1, 9),
(56, 'Etiam', 'pharetra. Quisque', 'eget metus eu erat', 8, 6),
(57, 'ut,', 'odio a', 'venenatis', 7, 9),
(58, 'eu', 'Cum sociis natoque penatibus', 'et, euismod et, commodo', 10, 6),
(59, 'Cum', 'elit. Nulla facilisi. Sed', 'ornare placerat, orci lacus vestibulum lorem, sit', 6, 6),
(60, 'orci', 'torquent per', 'torquent per conubia nostra, per inceptos', 3, 5),
(61, 'orci,', 'nisi.', 'semper. Nam tempor', 4, 9),
(62, 'ut', 'tellus faucibus', 'orci. Ut semper pretium neque. Morbi', 2, 2),
(63, 'Curabitur', 'elit. Nulla facilisi. Sed neque.', 'nisl. Quisque fringilla euismod', 3, 1),
(64, 'neque', 'In lorem. Donec', 'Sed eu eros. Nam consequat dolor vitae dolor. Donec', 5, 3),
(65, 'sem', 'enim. Nunc ut', 'Curae; Phasellus ornare. Fusce', 9, 4),
(66, 'Praesent', 'Quisque tincidunt pede ac', 'sed leo. Cras vehicula aliquet libero. Integer', 2, 1),
(67, 'non,', 'a purus. Duis elementum,', 'elementum, lorem ut aliquam iaculis, lacus pede', 9, 6),
(68, 'turpis', 'pharetra. Quisque ac libero', 'tellus faucibus leo, in lobortis tellus justo', 5, 6),
(69, 'ipsum', 'semper erat, in consectetuer', 'turpis nec mauris blandit mattis.', 8, 6),
(70, 'magna.', 'Phasellus ornare. Fusce', 'non, lobortis quis, pede. Suspendisse dui. Fusce', 8, 8),
(71, 'elit', 'morbi', 'amet ante. Vivamus non lorem vitae', 2, 3),
(72, 'Etiam', 'mus. Aenean', 'Cras dictum ultricies ligula. Nullam enim.', 6, 7),
(73, 'Sed', 'cursus luctus, ipsum', 'Donec est mauris,', 7, 2),
(74, 'Mauris', 'convallis est, vitae sodales', 'molestie. Sed id risus quis', 5, 8),
(75, 'Mauris', 'risus odio, auctor vitae,', 'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.', 1, 3),
(76, 'id', 'lacus. Cras', 'feugiat. Lorem ipsum dolor', 3, 3),
(77, 'porta', 'Sed id risus', 'congue. In scelerisque scelerisque dui. Suspendisse ac', 4, 1),
(78, 'porttitor', 'ipsum primis in faucibus orci', 'penatibus et magnis dis parturient montes, nascetur', 6, 2),
(79, 'ullamcorper', 'sed leo. Cras vehicula aliquet', 'eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus', 9, 2),
(80, 'In', 'ornare tortor at risus.', 'varius. Nam', 4, 3),
(81, 'ut,', 'nunc sit amet metus. Aliquam', 'semper egestas, urna', 1, 1),
(82, 'facilisis', 'vel, convallis in,', 'mus. Proin vel nisl. Quisque fringilla euismod', 8, 8),
(83, 'eget', 'dolor. Fusce', 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,', 1, 1),
(84, 'Morbi', 'at, velit.', 'at augue id ante dictum cursus. Nunc mauris elit, dictum', 2, 6),
(85, 'nec,', 'libero', 'sociis natoque penatibus et magnis dis parturient montes,', 9, 2),
(86, 'non', 'In at pede. Cras vulputate', 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc', 5, 5),
(87, 'Sed', 'erat semper rutrum.', 'ipsum primis in faucibus orci luctus et ultrices posuere', 3, 6),
(88, 'arcu.', 'mauris.', 'ante lectus convallis est, vitae sodales nisi', 8, 2),
(89, 'viverra.', 'montes,', 'ac ipsum.', 6, 5),
(90, 'fermentum', 'dolor sit amet,', 'lobortis quis, pede. Suspendisse dui. Fusce diam nunc,', 7, 3),
(91, 'aliquet', 'dictum sapien. Aenean massa.', 'ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', 9, 5),
(92, 'non', 'est', 'pede.', 4, 7),
(93, 'sapien,', 'dui quis accumsan convallis,', 'faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.', 1, 3),
(94, 'egestas', 'orci quis lectus. Nullam', 'Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus', 5, 8),
(95, 'ac', 'vitae, erat. Vivamus nisi. Mauris', 'mauris, rhoncus id, mollis nec, cursus a,', 2, 9),
(96, 'dolor.', 'at, velit. Pellentesque ultricies dignissim', 'ut', 10, 1),
(97, 'ornare', 'ac sem', 'ultrices', 1, 7),
(98, 'auctor', 'nec,', 'eget magna.', 4, 5),
(99, 'ipsum', 'diam luctus lobortis.', 'quam,', 8, 5),
(100, 'felis', 'laoreet, libero et tristique pellentesque,', 'Lorem', 4, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-news-author_id` (`author_id`),
  ADD KEY `idx-news-category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk-news-author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-news-category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
