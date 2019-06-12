-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 12 2019 г., 11:11
-- Версия сервера: 10.3.15-MariaDB-100.cba-log
-- Версия PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `account931`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bookingTable`
--

CREATE TABLE `bookingTable` (
  `b_id` int(11) NOT NULL,
  `b_booker` varchar(77) DEFAULT NULL,
  `b_ip` varchar(77) DEFAULT NULL,
  `b_bookedDate` datetime DEFAULT NULL,
  `b_bookedUnix` int(77) DEFAULT NULL,
  `b_table` int(11) DEFAULT NULL,
  `b_timeInterval` int(11) DEFAULT NULL,
  `b_password` varchar(77) DEFAULT NULL,
  `b_when_was_booked` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `bookingTable`
--

INSERT INTO `bookingTable` (`b_id`, `b_booker`, `b_ip`, `b_bookedDate`, `b_bookedUnix`, `b_table`, `b_timeInterval`, `b_password`, `b_when_was_booked`) VALUES
(1, 'John', NULL, NULL, NULL, 1, 9, NULL, '2017-11-28 15:13:16'),
(7, 'Dima', NULL, NULL, NULL, 1, 9, NULL, '2017-11-28 16:02:41'),
(8, 'Dima', NULL, NULL, NULL, 1, 9, NULL, '2017-11-29 07:40:27'),
(9, 'Dima', NULL, NULL, NULL, 1, 10, NULL, '2017-11-29 09:11:44'),
(10, 'Dima', NULL, NULL, NULL, 1, 11, NULL, '2017-11-29 09:11:49'),
(11, 'Dima', '::1', '2017-11-29 00:00:00', 1512000000, 1, 9, NULL, '2017-11-30 07:33:36'),
(12, 'Dima', '::1', '2017-11-29 00:00:00', 1512000000, 1, 10, NULL, '2017-11-30 07:33:41'),
(13, 'Dima', '::1', '2017-11-29 00:00:00', 1512000000, 2, 9, NULL, '2017-11-30 07:53:51'),
(14, 'Dima', '195.69.222.80', NULL, 1512684000, 1, 17, NULL, '2017-12-08 19:33:29'),
(15, 'erfrefcre', '195.69.222.80', NULL, 1512684000, 0, 9, NULL, '2017-12-08 20:21:16'),
(16, 'Dima', '195.69.222.80', NULL, 1512684000, 0, 10, NULL, '2017-12-08 20:28:56'),
(17, 'Gi', '37.115.108.251', NULL, 1512684000, 1, 9, NULL, '2017-12-08 21:13:58'),
(18, 'Dima', '37.115.108.251', NULL, 1512684000, 1, 15, NULL, '2017-12-08 21:14:36'),
(19, 'Dima', '37.115.108.251', NULL, 1512684000, 1, 10, NULL, '2017-12-08 21:15:20'),
(20, '2F', '37.115.108.251', NULL, 1512000000, 1, 11, NULL, '2017-12-08 21:17:00'),
(21, 'Dima', '37.115.108.251', NULL, 1512770400, 1, 14, NULL, '2017-12-08 22:41:15'),
(22, 'Dima', '37.115.108.251', NULL, 1512770400, 1, 12, NULL, '2017-12-08 22:41:44'),
(23, 'Dima', '37.115.108.251', NULL, 1512770400, 1, 16, NULL, '2017-12-08 22:41:57'),
(24, 'Dima', '37.115.108.251', NULL, 1512770400, 2, 12, NULL, '2017-12-08 22:42:17'),
(25, 'Dima', '37.115.108.251', NULL, 1512770400, 2, 14, NULL, '2017-12-08 22:42:47'),
(26, 'Dima', '37.115.108.251', NULL, 1512766800, 1, 9, NULL, '2017-12-09 19:17:41'),
(27, 'Dima', '37.115.108.251', NULL, 1512766800, 1, 11, NULL, '2017-12-09 19:18:05'),
(28, 'Sasha', '37.115.108.251', NULL, 1512770400, 1, 9, NULL, '2017-12-09 19:26:58'),
(29, 'Dasha', '37.115.108.251', NULL, 1512770400, 1, 10, NULL, '2017-12-09 19:27:34'),
(30, 'Ed Rush', '37.115.108.251', NULL, 1512770400, 1, 17, NULL, '2017-12-09 21:05:39'),
(31, 'NickBee', '37.115.108.251', NULL, 1512950400, 1, 9, NULL, '2017-12-10 18:33:53'),
(32, 'NickBee', '37.115.108.251', NULL, 1512864000, 1, 9, NULL, '2017-12-10 18:35:17'),
(33, 'Ed Rush', '195.69.222.80', NULL, 1512950400, 1, 11, NULL, '2017-12-11 13:53:56'),
(34, 'TeeBee', '195.69.222.80', NULL, 1513036800, 1, 9, NULL, '2017-12-12 15:22:20'),
(35, 'Kemal', '37.115.108.251', NULL, 1513209600, 1, 9, NULL, '2017-12-14 16:53:39'),
(36, 'TeeBee', '37.115.108.251', NULL, 1513641600, 1, 11, NULL, '2017-12-19 20:36:52'),
(37, 'D.Kay', '37.115.108.251', NULL, 1514678400, 1, 9, NULL, '2017-12-19 22:26:00'),
(38, 'Noisia', '37.115.108.251', NULL, 1513814400, 1, 9, NULL, '2017-12-21 19:57:02'),
(39, 'Klute', '37.115.108.251', NULL, 1513814400, 1, 11, NULL, '2017-12-21 19:57:23'),
(40, 'Teebee', '37.115.108.251', NULL, 1514073600, 1, 9, NULL, '2017-12-23 22:07:47'),
(41, 'Noisia', '37.115.108.251', NULL, 1514678400, 1, 11, NULL, '2017-12-23 22:22:23'),
(42, 'Abelton', '37.115.108.251', NULL, 1514678400, 1, 10, NULL, '2017-12-23 22:22:49'),
(43, 'Zen', '37.115.108.251', NULL, 1514678400, 1, 17, NULL, '2017-12-24 09:41:40'),
(44, 'I', '80.70.77.158', NULL, 1514246400, 1, 9, NULL, '2017-12-26 13:28:11'),
(59, 'Dima', '37.115.108.251', NULL, 1516399200, 1, 10, NULL, '2018-01-20 10:58:07'),
(46, 'Teebee', '80.70.77.158', NULL, 1514678400, 1, 13, NULL, '2017-12-26 13:30:26'),
(47, 'The nine', '80.70.77.158', NULL, 1510185600, 1, 11, NULL, '2017-12-26 13:31:14'),
(48, 'ANGULAR', '80.70.77.158', NULL, 1510185600, 1, 15, NULL, '2017-12-26 13:31:28'),
(49, 'You', '195.69.222.80', NULL, 1514246400, 1, 11, NULL, '2017-12-26 13:52:49'),
(50, 'Three', '195.69.222.80', NULL, 1514246400, 1, 13, NULL, '2017-12-26 13:52:59'),
(51, 'Ed Rush', '195.69.222.80', NULL, 1514592000, 1, 9, NULL, '2017-12-26 15:22:03'),
(52, 'Klute', '37.115.108.251', NULL, 1514332800, 1, 9, NULL, '2017-12-26 16:57:38'),
(53, 'Raiden', '37.115.108.251', NULL, 1514246400, 1, 15, NULL, '2017-12-26 20:58:17'),
(54, '1', '37.115.108.251', NULL, 1513641600, 1, 9, NULL, '2017-12-26 20:59:50'),
(55, 'Tech Intch', '37.115.108.251', NULL, 1514678400, 1, 16, NULL, '2017-12-27 11:34:42'),
(58, 'test', '195.69.222.80', NULL, 1514419200, 1, 9, NULL, '2017-12-28 14:22:47'),
(57, 'Ram Records', '195.69.222.80', NULL, 1514592000, 1, 11, NULL, '2017-12-27 15:55:32'),
(60, 'NickBee', '37.115.108.251', NULL, 1519855200, 1, 9, NULL, '2018-01-31 14:00:28'),
(61, 'Noisia', '37.115.108.251', NULL, 1518991200, 1, 9, NULL, '2018-02-16 13:26:58'),
(62, 'Dima', '37.115.82.236', NULL, 1526504400, 1, 9, NULL, '2018-05-17 11:26:22'),
(63, 'Dima', '37.115.82.236', NULL, 1530824400, 1, 9, NULL, '2018-07-06 08:28:54'),
(64, 'Dim', '46.219.237.132', NULL, 1531256400, 1, 11, NULL, '2018-07-27 16:21:50');

-- --------------------------------------------------------

--
-- Структура таблицы `dayBook`
--

CREATE TABLE `dayBook` (
  `dbook_id` int(77) NOT NULL,
  `dbook_user` varchar(77) NOT NULL,
  `dbook_ip` varchar(77) DEFAULT NULL,
  `dbook_bookedDate` datetime DEFAULT NULL,
  `dbook_bookedUnix` int(77) DEFAULT NULL,
  `dbook_intervals` int(11) NOT NULL,
  `dbook_quarters` int(5) DEFAULT NULL,
  `dbook_agenda` varchar(88) NOT NULL,
  `dbook_whenBooked` varchar(77) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `dayBook`
--

INSERT INTO `dayBook` (`dbook_id`, `dbook_user`, `dbook_ip`, `dbook_bookedDate`, `dbook_bookedUnix`, `dbook_intervals`, `dbook_quarters`, `dbook_agenda`, `dbook_whenBooked`) VALUES
(1, 'I', '444', NULL, NULL, 0, NULL, '', ''),
(2, 'Dima', '', NULL, NULL, 0, 3, '', ''),
(3, 'Dima', '', NULL, 1515189600, 9, 0, 'Play', ''),
(4, 'Dima', '::1', NULL, 1515189600, 9, 3, 'Go', ''),
(5, 'Dima', '::1', NULL, 1515189600, 12, 3, 'Step', ''),
(6, 'Dima', '::1', NULL, 1515189600, 17, 0, 'Beer', ''),
(7, 'Dima', NULL, NULL, 1517349600, 6, 0, 'undefined', NULL),
(8, 'Dima', NULL, NULL, 1517349600, 6, 3, 'undefined', NULL),
(9, 'Dima', NULL, NULL, 1517349600, 8, 0, 'Group therapy', NULL),
(10, '', NULL, NULL, 1514757600, 14, 3, 'fvdfv', NULL),
(11, 'Dima', NULL, NULL, 1517349600, 10, 3, 'Dnb', NULL),
(12, 'Dima', '', NULL, 1515276000, 10, 3, 'Group therapy', ''),
(13, 'Dima', NULL, NULL, 1515276000, 12, 0, 'UniCredit', NULL),
(15, 'Dima', NULL, NULL, 1515362400, 10, 3, 'Therapy', NULL),
(16, 'Dima', NULL, NULL, 1515362400, 22, 3, 'Sleep', NULL),
(18, 'Dima', NULL, NULL, 1515448800, 10, 3, 'Group therapy', NULL),
(19, 'Dima', NULL, NULL, 1515448800, 6, 0, 'Relax day', NULL),
(20, 'Dima', NULL, NULL, 1515535200, 6, 0, 'Relax hour', NULL),
(21, 'Dima', NULL, NULL, 1515535200, 7, 0, 'More relax', NULL),
(22, 'Dima', NULL, NULL, 1515708000, 10, 3, 'Group Therapy', NULL),
(23, 'Dima', NULL, NULL, 1515794400, 6, 3, 'BioPassport', NULL),
(24, 'Dima', NULL, NULL, 1514757600, 7, 0, 'Dnb', NULL),
(25, 'Dima', NULL, NULL, 1521064800, 7, 0, 'Test iShop', NULL),
(26, 'Dima', NULL, NULL, 1538168400, 6, 3, 'Dnb Vdnh', NULL),
(27, 'Dima', NULL, NULL, 1560286800, 6, 3, 'Wake up', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `g_user` varchar(77) DEFAULT NULL,
  `g_date` datetime DEFAULT NULL,
  `g_image` varchar(77) DEFAULT NULL,
  `g_ip` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`g_id`, `g_user`, `g_date`, `g_image`, `g_ip`) VALUES
(18, 'unlogged', '2016-12-29 15:18:19', 'uploads/accessd.png', 195),
(8, 'Dima', '2016-12-28 15:45:44', 'uploads/Custom-Icon-Design-Mono-General-4-Upload.ico', 195),
(13, 'Dima', '2016-12-28 15:50:05', 'uploads/accessd.png', 195);

-- --------------------------------------------------------

--
-- Структура таблицы `Hall_Events`
--

CREATE TABLE `Hall_Events` (
  `ev_id` int(11) NOT NULL,
  `ev_name` varchar(77) NOT NULL,
  `ev_venueHall_id` int(11) NOT NULL,
  `ev_price` int(11) NOT NULL,
  `ev_date` int(11) NOT NULL,
  `ev_start_time` varchar(77) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hall_Events`
--

INSERT INTO `Hall_Events` (`ev_id`, `ev_name`, `ev_venueHall_id`, `ev_price`, `ev_date`, `ev_start_time`) VALUES
(54, 'Corrupt Souls', 1, 15, 1539118800, '19.30'),
(55, 'Future Prophecies', 2, 23, 1539118800, '22.00'),
(56, 'Kryptic Minds & Leon Switch', 3, 44, 1539118800, '21.00'),
(57, 'Chris.SU', 1, 15, 1539205200, '19.30'),
(58, 'Kryptic Minds & Leon Switch', 2, 23, 1539205200, '22.00'),
(59, 'Spor', 3, 44, 1539205200, '21.00'),
(60, 'Dom & Roland', 1, 15, 1539291600, '19.30'),
(61, 'Chris.SU', 2, 23, 1539291600, '22.00'),
(62, 'Future Prophecies', 3, 44, 1539291600, '21.00'),
(63, 'Spor', 1, 15, 1539378000, '19.30'),
(64, 'D.Kay', 2, 23, 1539378000, '22.00'),
(65, 'High Contrast', 3, 44, 1539378000, '21.00'),
(66, 'LimeWax', 1, 15, 1539464400, '19.30'),
(67, 'Pendulum', 2, 23, 1539464400, '22.00'),
(68, 'Enduser', 3, 44, 1539464400, '21.00'),
(69, 'Omni Trio', 1, 15, 1539550800, '19.30'),
(70, 'Technical Intch', 2, 23, 1539550800, '22.00'),
(71, 'Pendulum', 3, 44, 1539550800, '21.00'),
(72, 'Photek', 1, 15, 1539637200, '19.30'),
(73, 'State Of Mind', 2, 23, 1539637200, '22.00'),
(74, 'Roni Size', 3, 44, 1539637200, '21.00'),
(75, 'Calyx', 1, 15, 1539810000, '19.30'),
(76, 'Ed Rush & Optical', 2, 23, 1539810000, '22.00'),
(77, 'Chase & Status', 3, 44, 1539810000, '21.00'),
(78, 'Noisia', 1, 15, 1539896400, '19.30'),
(79, 'Evol Intent', 2, 23, 1539896400, '22.00'),
(80, 'LTJ Bukhem', 3, 44, 1539896400, '21.00'),
(81, 'The Upbeats', 1, 15, 1539982800, '19.30'),
(82, 'Omni Trio', 2, 23, 1539982800, '22.00'),
(83, 'Dom & Roland', 3, 44, 1539982800, '21.00'),
(84, 'Pendulum', 1, 15, 1540069200, '19.30'),
(85, 'Noisia', 2, 23, 1540069200, '22.00'),
(86, 'Klute', 3, 44, 1540069200, '21.00'),
(87, 'BSE', 1, 15, 1540155600, '19.30'),
(88, 'High Contrast', 2, 23, 1540155600, '22.00'),
(89, 'Submerged', 3, 44, 1540155600, '21.00'),
(90, 'Concord Dawn', 1, 15, 1540242000, '19.30'),
(91, 'Future Prophecies', 2, 23, 1540242000, '22.00'),
(92, 'TeeBee', 3, 44, 1540242000, '21.00'),
(93, 'Dom & Roland', 1, 15, 1540328400, '19.30'),
(94, 'LimeWax', 2, 23, 1540328400, '22.00'),
(95, 'Sub Focus', 3, 44, 1540328400, '21.00'),
(96, 'The Upbeats', 1, 15, 1540501200, '19.30'),
(97, 'N.Phect', 2, 23, 1540501200, '22.00'),
(98, 'Concord Dawn', 3, 44, 1540501200, '21.00'),
(99, 'Black Sun Empire', 1, 15, 1540587600, '19.30'),
(100, 'Technical Itch', 2, 23, 1540587600, '22.00'),
(101, 'Bad Company UK', 3, 44, 1540587600, '21.00'),
(102, 'Phace', 3, 44, 1540674000, '21.00'),
(103, 'Evol Intent', 1, 15, 1540674000, '19.30'),
(104, 'Photek', 2, 23, 1540674000, '22.00'),
(105, 'Technical Intch', 3, 44, 1540850400, '21.00'),
(106, 'Mefjus', 1, 15, 1540850400, '19.30'),
(107, 'Camo & Krooked', 2, 23, 1540850400, '22.00'),
(108, 'Kosheen', 3, 44, 1540936800, '21.00'),
(109, 'Kryptic Minds & Leon Switch', 2, 23, 1540936800, '22.00'),
(110, 'Sub Focus', 1, 15, 1540936800, '19.30'),
(111, 'Enduser', 3, 44, 1541109600, '21.00'),
(112, 'Dieselboy', 2, 23, 1541109600, '22.00'),
(113, 'High Contrast', 1, 15, 1541109600, '19.30'),
(114, 'Spor', 3, 44, 1541196000, '21.00'),
(115, 'Pendulum', 2, 23, 1541196000, '22.00'),
(116, 'Kosheen', 1, 15, 1541196000, '19.30'),
(117, 'Klute', 3, 44, 1541282400, '21.00'),
(118, 'Mayhem', 2, 23, 1541282400, '22.00'),
(119, 'Spectrasoul', 1, 15, 1541282400, '19.30'),
(120, 'Future Prophecies', 3, 44, 1541628000, '21.00'),
(121, 'Evol Intent', 2, 23, 1541628000, '22.00'),
(122, 'N.Phect', 1, 15, 1541628000, '19.30'),
(123, 'Kosheen', 3, 44, 1541714400, '21.00'),
(124, 'Klute', 2, 23, 1541714400, '22.00'),
(125, 'BSE', 1, 15, 1541714400, '19.30'),
(126, 'Dieselboy', 3, 44, 1541887200, '21.00'),
(127, 'Rob F', 2, 23, 1541887200, '22.00'),
(128, 'Concord Dawn', 1, 15, 1541887200, '19.30'),
(129, 'Camo & Krooked', 3, 44, 1542319200, '21.00'),
(130, 'Logistics', 2, 23, 1542319200, '22.00'),
(131, 'BSE', 1, 15, 1542319200, '19.30'),
(132, 'Evol Intent', 3, 44, 1542492000, '21.00'),
(133, 'Kryptic Minds & Leon Switch', 2, 23, 1542492000, '22.00'),
(134, 'LTJ Bukhem', 1, 15, 1542492000, '19.30'),
(135, 'Photek', 3, 44, 1543096800, '21.00'),
(136, 'Black Sun Empire', 2, 23, 1543096800, '22.00'),
(137, 'State Of Mind', 1, 15, 1543096800, '19.30'),
(138, 'Future Prophecies', 3, 44, 1544047200, '21.00'),
(139, 'D.Kay', 2, 23, 1544047200, '22.00'),
(140, 'Submerged', 1, 15, 1544047200, '19.30'),
(141, 'Dom & Roland', 3, 44, 1544220000, '21.00'),
(142, 'N.Phect', 2, 23, 1544220000, '22.00'),
(143, 'D.Kay', 1, 15, 1544220000, '19.30'),
(144, 'Mefjus', 3, 44, 1544392800, '21.00'),
(145, 'Photek', 2, 23, 1544392800, '22.00'),
(146, 'Chris.SU', 1, 15, 1544392800, '19.30'),
(147, 'LimeWax', 3, 44, 1546293600, '21.00'),
(148, 'Roni Size', 2, 23, 1546293600, '22.00'),
(149, 'Mefjus', 1, 15, 1546293600, '19.30'),
(150, 'Technical Intch', 3, 44, 1547330400, '21.00'),
(151, 'Black Sun Empire', 2, 23, 1547330400, '22.00'),
(152, 'Submerged', 1, 15, 1547330400, '19.30'),
(153, 'Chase & Status', 3, 44, 1547676000, '21.00'),
(154, 'Pendulum', 2, 23, 1547676000, '22.00'),
(155, 'Klute', 1, 15, 1547676000, '19.30'),
(156, 'Photek', 3, 44, 1555362000, '21.00'),
(157, 'Ed Rush & Optical', 2, 23, 1555362000, '22.00'),
(158, 'High Contrast', 1, 15, 1555362000, '19.30');

-- --------------------------------------------------------

--
-- Структура таблицы `Hall_Free_taken_seats`
--

CREATE TABLE `Hall_Free_taken_seats` (
  `fts_id` int(11) NOT NULL,
  `fts_venue_id` varchar(77) NOT NULL,
  `fts_event_name` varchar(77) NOT NULL,
  `fts_unix_date` int(88) NOT NULL,
  `fts_dateNormal` varchar(44) NOT NULL,
  `fts_start_time` varchar(44) NOT NULL,
  `fts_booked_place` varchar(22) NOT NULL,
  `fts_booker_name` varchar(77) NOT NULL,
  `fts_booker_email` varchar(77) NOT NULL,
  `fts_place_price` float NOT NULL,
  `fts_uuid` varchar(122) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hall_Free_taken_seats`
--

INSERT INTO `Hall_Free_taken_seats` (`fts_id`, `fts_venue_id`, `fts_event_name`, `fts_unix_date`, `fts_dateNormal`, `fts_start_time`, `fts_booked_place`, `fts_booker_name`, `fts_booker_email`, `fts_place_price`, `fts_uuid`) VALUES
(9, 'VDNH', 'Corrupt Souls', 1539118800, '10.10.2018', '19.30', '1_2', 'Name', 'Mail', 15, 'fc06fd46ff6781f64b95fc25eb0a7dc8'),
(10, 'River Port', 'Kryptic Minds & Leon Switch', 1539205200, 'Thu Oct 11', '22.00', '3_4', 'Dima', 'Dima@ukr.net', 23, 'c28a2c1eb83df38e139926bba6bc2801'),
(11, 'Itaka', 'Future Prophecies', 1539291600, '12.10.2018', '21.00', '1_2', 'Dima', 'd@ukr.net', 44, '1eaefe467dcdf9ecc392ccb3b3f5c8bf'),
(12, 'Itaka', 'Future Prophecies', 1539291600, 'Fri Oct 12', '21.00', '2_2', 'Dima F', 'Dima@gmail.com', 44, '0f69f10b08eeab8bbec4e824c05e7bc8'),
(13, 'Itaka', 'Future Prophecies', 1539291600, 'Fri Oct 12', '21.00', '3_2', 'Dima', 'Dima@ukr.net', 44, '2c4e8830635ed1c329ffaf44d1653902'),
(14, 'Itaka', 'Future Prophecies', 1539291600, '12/10/2018', '21.00', '4_2', 'D', 'Dimm@ukr.net', 44, '43011f1f5cb48cbe416a6ef344907d26'),
(15, 'VDNH', 'LimeWax', 1539464400, 'Sun Oct 14', '19.30', '1_4', 'Dima', 'D@ukr.net', 15, '6f750735cebeaa61f1e5f506be346b64'),
(16, 'VDNH', 'The Upbeats', 1539982800, '20 жовтня ', '19.30', '1_4', 'Dima', 'D@ukr.net', 15, '40bac5416e8c90cf0f7a4b696e406bc7'),
(17, 'VDNH', 'The Upbeats', 1539982800, '20 жовтня ', '19.30', '1_5', 'Dima', 'D@ukr.net', 15, 'c9807e39071f015bf73d57c1429eeedb'),
(18, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '1_6', 'D', 'D@ukr.net', 15, '3352a85c88b0cae8e195702b14919b41'),
(19, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '1_3', 'D', 'D@ukr.net', 15, '9ddec9b244558db12216b92f4b9cba85'),
(20, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '1_2', 'D', 'D@ukr.net', 15, '10f019f535f2446bc5f3727618a26618'),
(21, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '2_4', 'D', 'D@ukr.net', 15, 'db557c079e9987f97cf456d48a54f9cf'),
(22, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '3_4', 'Dima', 'D@ukr.net', 15, '1f8b09ec6358aeac8c2e72204a3e9f3d'),
(23, 'VDNH', 'The Upbeats', 1539982800, '20 жовтня ', '19.30', '3_5', 'R', 'R@ukr.net', 15, 'eab0a333929a705dc57a57aaa9275bdd'),
(24, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '4_4', 'R', 'R@ukr.net', 15, 'a09d2110f01597b5d379eddceab3856d'),
(25, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '5_4', 'G', 'F@ukr.net', 15, '2adc3beb0243919f128161e7c89ebb34'),
(26, 'VDNH', 'The Upbeats', 1539982800, '20.10.2018', '19.30', '6_4', ' D', 'D@ukr.nt', 15, '563d4732d541f680fea5e7ce521bc7e9'),
(27, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '7_4', 'D', 'D@ukr.net', 15, '9d7c7836186a4e06923bce12d943e8b9'),
(28, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '8_4', 'D', 'D@ukr.net', 15, 'a646317fd50c10fd9d3f77c4b30d3196'),
(29, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '9_4', 'D', 'D@ukr.net', 15, '57ca73ab3e19f8c0bc4b145278929a1f'),
(30, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '10_4', 'Dima', 'D@ukr.net', 15, '7628fbedadf67415f059c16109b480e6'),
(31, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '11_4', 'Dima', 'Dima@ukr.net', 15, '39d00355fd63dde2e49f1a525bae2d0e'),
(32, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '12_4', 'Dima', 'Dimmm@ukr.net', 15, 'dda09e4ec4d1f08815a1f7f48cb1f4a3'),
(33, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '13_4', 'Dima', 'D@ukr.net', 15, 'aeaa0be71df90040e97fe13de26580cc'),
(34, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '14_4', 'F', 'F@ukr.net', 15, '8431b6b58dee285b47b045ddaa37c68b'),
(35, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '2_5', 'd', 'd@ukr.net', 15, 'c3c20619b56a4500ce29cafcd1f7c9e8'),
(36, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '2_6', 'D', 'D@ukr.net', 15, '63bf8575bb107b1a4199b26b9ae3898f'),
(37, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '3_7', 'D', 'D@ukr.net', 15, 'bac1e6fdbfbb719cb0557de4a85e925f'),
(38, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '2_3', 'd', 'd@ukr.net', 15, '82c6a77e08c753445c0ae18a0c95430c'),
(39, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '3_3', 'd', 'd@ukr.net', 15, '1e344a9365fd9668882ad59da8d5519f'),
(40, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '3_6', 'd', 'd@ukr.net', 15, '2eeec5864c6a26c8caeb4765a6163e0d'),
(41, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '4_5', 'd', 'dim@ukr.net', 15, '3af0709c5012d12a68a14ce3185c4583'),
(42, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '5_5', 'd', 'd@ukr.be', 15, '4b021deb521273821343b9c4e05797ac'),
(43, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '4_6', 'D', 'D@ukr.net', 15, 'ddaccab14ffe4859f0e039d5a3fe71e9'),
(44, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '2_2', 'G', 'G@uke.net', 15, 'f535a6c68a8f2fc060e1a24104bc7d2a'),
(45, 'VDNH', 'The Upbeats', 1539982800, '19.10.2018', '19.30', '20_8', 'wdscv', 'sd@ukt.net', 15, 'fb0a374b059a928ca7f84f9e81efa241'),
(46, 'VDNH', 'The Upbeats', 1539982800, '20 жовтня ', '19.30', '6_5', 'Di', 'Dim@ukr.net', 15, '3a91b6a2731b62ed805cf5acc5e28357'),
(47, 'VDNH', 'The Upbeats', 1539982800, '20.10.2018', '19.30', '6_3', 'F', 'Ft@.net.com', 15, '9c89a6a9239b09a396fb90e0719ac011'),
(48, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '5_6', 'D', 'D@ukr.net', 15, '61c578bbc70b2eec67770c8dc46f78ba'),
(49, 'VDNH', 'The Upbeats', 1539982800, '20.10.2018', '19.30', '1_1', 'D', 'D@ukr.net', 15, 'a9101695db48d7d17983aa69b2b4a303'),
(50, 'VDNH', 'The Upbeats', 1539982800, '20.10.2018', '19.30', '2_1', 'D', 'D@ukr.net', 15, '65dc6a453ca200791307e7f6a8918304'),
(51, 'VDNH', 'The Upbeats', 1539982800, '20.10.2018', '19.30', '5_7', 'F', 'D@ukr.net', 15, '4c2d6439d7b099fd61f748861181ee9f'),
(52, 'VDNH', 'The Upbeats', 1539982800, '20 жовтня ', '19.30', '4_8', 'D', 'D@ukr.net', 15, '3fee33ef5dbfc1b16779639d19be156a'),
(53, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '10_3', 'Dima', 'D@ukr.net', 15, '6cd2789cdaaed3a616b2a283362ee9a5'),
(54, 'VDNH', 'The Upbeats', 1539982800, '20.10.2018', '19.30', '4_3', 'D', 'D@ukr.net', 15, 'e57b9d804166ff35d36a83ac45da53a0'),
(55, 'VDNH', 'The Upbeats', 1539982800, 'Sat Oct 20', '19.30', '5_3', 'Dima', 'Dima@ukr.net', 15, 'a599ef1c1514ef0b715eb9715dd5610a'),
(56, 'VDNH', 'The Upbeats', 1539982800, '20/10/2018', '19.30', '20_1', 'Di', 'Dim@rambk.com', 15, '409b7b633d0eac15595d7510e441d947'),
(57, 'VDNH', 'Pendulum', 1540069200, '21 жовтня ', '19.30', '1_6', 'D', 'D@ukr.net', 15, 'd881e2deae10072298d83cb6171d29df'),
(58, 'Custom venue', 'Your custom Event!!!', 1540069200, '21 жовтня ', 'Your Time', '1_5', 'F', 'D@ukr.net', 0, '560b023762e2cc3e38dd7819ecdabc01'),
(59, 'VDNH', 'Pendulum', 1540069200, 'Sun Oct 21', '19.30', '1_5', 'Dima', 'Dima@ukr.net', 15, 'cc42a48c04def8cdb17529802480b86d'),
(60, 'VDNH', 'Pendulum', 1540069200, '21/10/2018', '19.30', '1_4', 'D', 'Dima@ukr.net', 15, '93a71d65744237c0610dd9d0010ebe56'),
(61, 'VDNH', 'Pendulum', 1540069200, '21 жовтня ', '19.30', '1_3', 'D', 'D@ukr.net', 15, 'f01b40483277a9c3cbe6f420ab55372c'),
(62, 'VDNH', 'Pendulum', 1540069200, '21 жовтня ', '19.30', '1_2', 'Dd', 'D@ukr.net', 15, 'aaba516f85a3c3bfe1c94c60f1408e8f'),
(63, 'VDNH', 'Pendulum', 1540069200, '21.10.2018', '19.30', '1_1', 'D', 'D@uk.ne', 15, '614941586ac02cdb252385c490bf2385'),
(64, 'VDNH', 'Pendulum', 1540069200, '21.10.2018', '19.30', '2_4', 'D', 'D@ukr.net', 15, '9f4b8c86d9464c25b61cb69eb7a158d8'),
(65, 'VDNH', 'BSE', 1540155600, '22/10/2018', '19.30', '1_6', 'D', 'Dima@ukr.net', 15, '28a89b660c83ee5685d541477ed5d81c'),
(66, 'Itaka', 'TeeBee', 1540242000, 'Tue Oct 23', '21.00', '1_2', 'Dima', 'Ina@ukr.net', 44, 'c9414a78860991017c603b80d2bae717'),
(67, 'VDNH', 'Dom & Roland', 1540328400, 'Wed Oct 24', '19.30', '1_4', 'F', 'F@uk.ner', 15, 'afed29f09abb115d6520849dfce2c379'),
(68, 'VDNH', 'Dom & Roland', 1540328400, 'Wed Oct 24', '19.30', '2_4', 'D', 'D@ukr.net', 15, '711211cc944016192134fd52febb01c6'),
(69, 'VDNH', 'Dom & Roland', 1540328400, '24/10/2018', '19.30', '3_4', 'D', 'D@uu.net', 15, 'd2a17ce59583d79b29f6288975934827'),
(70, 'VDNH', 'Dom & Roland', 1540328400, '24/10/2018', '19.30', '4_4', 'G', 'F@ukr.net', 15, 'b9ccfde6a91a78b4aef1400ea6d59ed0'),
(71, 'River Port', 'Camo & Krooked', 1540850400, '30.10.2018', '22.00', '1_2', 'Dima', 'dima@ukr.net', 23, 'c3aecc03a035dc74398137f9ab6b68de'),
(72, 'River Port', 'Camo & Krooked', 1540850400, '30.10.2018', '22.00', '2_2', 'dima', 'd@ukr.net', 23, 'c0f7a0aa85102011e8228c94f9a37622'),
(73, 'River Port', 'Camo & Krooked', 1540850400, 'Tue Oct 30', '22.00', '3_2', 'Dima', 'D@ukr.net', 23, 'c0b8eda7e1ab02172db6a90b245f6e4d'),
(74, 'River Port', 'Camo & Krooked', 1540850400, '30.10.2018', '22.00', '4_2', 'D', 'D@ukr.net', 23, '39858e3891dfb4c9af053473c163d230'),
(75, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '1_3', 'd', 'd@ukr.net', 15, '5f2f6dc68c5edef02290dbb209c8c795'),
(76, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '2_3', 'f', 'f@ukr.net', 15, 'c47cf2d2eb9a01d97119106af62b4757'),
(77, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '3_3', 'ddd', 'd@ukr.net', 15, '93caa9aac31f09087cf8209bfba7e0e3'),
(78, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '4_3', 'dfdf', 'df@ukr.net', 15, 'cccb9b6603b3fbd6053ec8efbf69701a'),
(79, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '5_3', 'rf', 'dfd@ukr.net', 15, '62116530593af6b1ca853c9e0836a095'),
(80, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '6_3', 'd', 'd@ukr.net', 15, 'ac3cea4bca07257021c6474f584fb17d'),
(81, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '7_3', 'd', 'd@ukr.net', 15, '3b4b342fa63df455e12f28d69cb2a087'),
(82, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '1_4', 'sfdf', 'd@ukr.ne', 15, 'debbd76a13eb8385fa17c967fddcef8f'),
(83, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '1_5', 'dsfdd', 'f@ukr.net', 15, 'b6837995f6b82cbd3c565a271bb94f05'),
(84, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '2_4', 'hghg', 'hg@ukr.net', 15, '0c0e0905c943e1962ad3d4277f31b518'),
(85, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '2_5', 'DFDD', 'FD@UK.NRT', 15, '4cc1bf9b79abb9690801b6f3e50316da'),
(86, 'VDNH', 'Sub Focus', 1540936800, 'Wed Oct 31', '19.30', '3_4', 'G', 'F@uk.net', 15, '1998d9f918084ffd4002a533530ff743'),
(87, 'VDNH', 'Sub Focus', 1540936800, '31.10.2018', '19.30', '1_6', 'rere', 'r@ukr.net', 15, 'd77434a8ecec346eeb0c251bb6aa7361'),
(88, 'VDNH', 'Sub Focus', 1540936800, 'Wed Oct 31', '19.30', '3_5', 'Di', 'D@ukr.net', 15, '622339b85ca7eb5176d326b3f0dd3f46'),
(89, 'VDNH', 'High Contrast', 1541109600, '02.11.2018', '19.30', '1_3', 'Dima', 'account931@ukr.net', 15, 'b4b25413dec22d14c31b1fb13e767c6d'),
(90, 'VDNH', 'High Contrast', 1541109600, '02.11.2018', '19.30', '1_4', 'Dima', 'account931@ukr.net', 15, '9e10dd95b08857fde8409d9f87749247'),
(91, 'VDNH', 'High Contrast', 1541109600, '02.11.2018', '19.30', '1_5', 'sdsdas', 'account931@ukr.net', 15, '8aefd98ee1b98d4de4c972e1fc7401f3'),
(92, 'VDNH', 'High Contrast', 1541109600, '02.11.2018', '19.30', '1_6', 'dfdfds', 'account931@ukr.net', 15, 'e6e8b583d9c3ca7889e46d51c77e9052'),
(93, 'VDNH', 'High Contrast', 1541109600, '02.11.2018', '19.30', '1_2', 'dfdf', 'account931@ukr.net', 15, '8a103254292cdb83f2bf6d1907ffe9c5'),
(94, 'VDNH', 'High Contrast', 1541109600, '02.11.2018', '19.30', '2_3', 'DimaX', 'account931@ukr.net', 15, '8f3b01dc7012febc787fc39de13747a4'),
(95, 'VDNH', 'High Contrast', 1541109600, 'Fri Nov 02', '19.30', '3_3', 'Dim', 'account931@ukr.net', 15, 'b9833a12d84adb2a7841461bf19904e6'),
(96, 'VDNH', 'Kosheen', 1541196000, 'Sat Nov 03', '19.30', '1_3', 'Dima', 'account931@ukr.net', 15, '7f465e6b0afa175513877350202520fb'),
(97, 'VDNH', 'Spectrasoul', 1541282400, '04.11.2018', '19.30', '1_5', 'Dima', 'account931@ukr.net', 15, 'f99edc9215ae10b336c8684b0ac52abd'),
(98, 'VDNH', 'BSE', 1541714400, '09.11.2018', '19.30', '1_2', 'Dima', 'account931@ukr.net', 15, '8f0ee6b770c95526c9af80b5620da281'),
(99, 'VDNH', 'BSE', 1541714400, '09.11.2018', '19.30', '1_3', 'Dcc', 'account931@ukr.net', 15, '494030cc4f8e7900b4f6cb8dde4fd1aa'),
(100, 'VDNH', 'BSE', 1541714400, '09.11.2018', '19.30', '1_4', 'QQQ', 'account931@ukr.net', 15, '697038ef4778904d73e5635560636740'),
(101, 'VDNH', 'BSE', 1541714400, 'Fri Nov 09', '19.30', '1_5', 'Dima F', 'account931@ukr.net', 15, '83d8a4546c8ffd4e834ef5b7119c3d30'),
(102, 'VDNH', 'Concord Dawn', 1541887200, 'Sun Nov 11', '19.30', '1_6', 'D', 'account931@ukr.net', 15, '7b8f6538949263ec9fc9d638c32367a3'),
(103, 'VDNH', 'Concord Dawn', 1541887200, '11.11.2018', '19.30', '1_1', 'D', 'account931@ukr.net', 15, '4bc91d6770798f786b3e54e475a8fc81'),
(104, 'VDNH', 'LTJ Bukhem', 1542492000, 'Sun Nov 18', '19.30', '1_3', 'Dima', 'account931@ukr.net', 15, '4b32430e33e092b755ef7f496573ff96'),
(105, 'VDNH', 'D.Kay', 1544220000, 'Sat Dec 08', '19.30', '1_3', 'Dima', 'account931@ukr.net', 15, 'd05ade7b8ffdc582f341b97ef90143a3'),
(106, 'VDNH', 'Submerged', 1547330400, '13.01.2019', '19.30', '1_5', 'дима', 'account931@ukr.net', 15, 'ef23d0c037985fdeef0d363f78d8f765');

-- --------------------------------------------------------

--
-- Структура таблицы `Hall_Scheme_List_of_Venues`
--

CREATE TABLE `Hall_Scheme_List_of_Venues` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(77) NOT NULL,
  `place_address` varchar(88) NOT NULL,
  `place_vert_column` int(11) NOT NULL,
  `place_horz_rows` varchar(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hall_Scheme_List_of_Venues`
--

INSERT INTO `Hall_Scheme_List_of_Venues` (`place_id`, `place_name`, `place_address`, `place_vert_column`, `place_horz_rows`) VALUES
(1, 'VDNH', 'Kyiv', 20, '6,6,7,8'),
(2, 'River Port', 'Kyiv', 26, '2,3,4,5,6,7'),
(3, 'Itaka', 'Odessa', 17, '3,3,4,4,8');

-- --------------------------------------------------------

--
-- Структура таблицы `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `hours` varchar(80) NOT NULL,
  `description` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `hours`, `description`) VALUES
(1, 'ул. Бандеры', '', 50.262707, 28.661707, '8AM to 10PM', 'Great place to go'),
(2, 'Львівська майстерня шоколаду', '', 50.258003, 28.659492, '9AM to 9PM', 'Затишне місце'),
(3, 'Магазин Природа', '', 50.258095, 28.663448, 'круглосуточно', ''),
(4, 'McDonald\"s', '', 50.265907, 28.683786, 'Київська 77, Житомир, 10000', 'McDrive'),
(29, 'Restaurant  \"Praha\"', '', 50.381908, 30.481424, '', 'VDNH'),
(6, 'Парк Гагарина', '', 50.247574, 28.665838, 'Атракционы', 'Старий Бульвар 34'),
(8, 'Ботанический сад', '', 50.251278, 28.696526, '09:00–18:00', 'Корольова 39, Житомир'),
(9, 'Корбутовский гидропарк', '', 50.237732, 28.606245, 'Открыто 24 часа', 'Пляжна алея, Житомир'),
(10, 'Школа 36', '', 50.267841, 28.655947, 'Муниципальная школа', 'Домбровського, 21'),
(18, 'New test', '', 50.248230, 28.638248, 'Info', ''),
(20, 'Global', '', 50.266579, 28.684452, 'Street', '11.09.2018'),
(21, 'Railway ', '', 50.441330, 30.489424, 'Vokzal\'na Square, 2a, Kyiv, Ukraine, 01032', ''),
(22, 'Крещатик', '', 50.444324, 30.520779, 'Khreschatyk St, 40/1, Kyiv, Ukraine, 02000', ''),
(28, 'Zatoka', '', 46.064587, 30.449898, 'Zatoka, Odessa Oblast, Ukraine, 67772', ''),
(24, 'Langeron ', '', 46.476696, 30.765255, 'Langeron Beach, Odesa, Odessa Oblast, Ukraine', 'The Black Sea beach'),
(25, 'Odessa Port', '', 46.492264, 30.748421, 'Prymors\'kyi district, Odesa, Odessa Oblast, Ukraine, 65000', ''),
(26, 'Goden Coast Odessa', '', 46.391880, 30.752924, 'Kyivs\'kyi District, Odesa, Odessa Oblast, Ukraine, 65000', ''),
(27, 'Kadorr 16', '', 46.478462, 30.722551, 'Lva Tolstoho St, Odesa, Odes\'ka oblast, Ukraine, 65000', 'Асташкіна, 29,'),
(30, 'VDNH', '', 50.381611, 30.481606, 'Голосіївський район, пр. Глушкова', 'Київ, 02000\r\n'),
(31, 'Chudodiyevo', '', 50.359825, 28.627043, 'Chudodiyevo Lake', ''),
(32, 'Berdichev Railway', '', 49.889519, 28.612972, 'Berdichev Railway', ''),
(33, 'Arcadia', '', 46.431393, 30.769341, 'Arcadia Black Sea', 'Black Sea'),
(34, 'FishPort', '', 46.342567, 30.674070, '', ''),
(35, 'Arcadia', '', 46.431740, 30.769686, '2019 Febr', '');

-- --------------------------------------------------------

--
-- Структура таблицы `merge_users`
--

CREATE TABLE `merge_users` (
  `m_id` int(11) NOT NULL,
  `m_user` varchar(55) NOT NULL,
  `m_points` int(11) NOT NULL,
  `m_status` varchar(66) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `merge_users`
--

INSERT INTO `merge_users` (`m_id`, `m_user`, `m_points`, `m_status`) VALUES
(1, 'User 1', 0, ''),
(2, 'User 2', 2500, ''),
(3, 'User 3', 0, ''),
(4, 'User 4', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `mydbstart`
--

CREATE TABLE `mydbstart` (
  `mydb_id` int(11) NOT NULL,
  `mydb_user` varchar(77) DEFAULT NULL,
  `mydb_date` varchar(55) NOT NULL,
  `mydb_v_am` int(11) DEFAULT NULL,
  `mydb_v_h` float DEFAULT NULL,
  `mydb_v_pers` varchar(44) DEFAULT NULL,
  `mydb_g_am` int(11) DEFAULT NULL,
  `mydb_g_h` float DEFAULT NULL,
  `mydb_g_pers` varchar(55) DEFAULT NULL,
  `mydb_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `mydbstart`
--

INSERT INTO `mydbstart` (`mydb_id`, `mydb_user`, `mydb_date`, `mydb_v_am`, `mydb_v_h`, `mydb_v_pers`, `mydb_g_am`, `mydb_g_h`, `mydb_g_pers`, `mydb_created`) VALUES
(1, 'dima', '0000-00-00', 3, 8, '33%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(2, 'dima', '0000-00-00', 3, 3, '3', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(3, 'dima', '0000-00-00', 3, 3, '3', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(4, 'Dima', '0000-00-00', 555, 8, '33%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(5, 'Dima', '0000-00-00', 555, 8, '33%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(7, 'Dima', '0000-00-00', 778, 8, '221.02%', NULL, NULL, '', '0000-00-00 00:00:00'),
(15, 'Dima', '0000-00-00', 55, 55, '33%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(19, NULL, '0000-00-00', 44, 44, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(20, NULL, '0000-00-00', 33, 33, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(21, NULL, '0000-00-00', 344, 44, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(22, NULL, '0000-00-00', 344, 44, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(23, NULL, '0000-00-00', 344, 44, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(24, NULL, '0000-00-00', 344, 44, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(25, NULL, '0000-00-00', 344, 44, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(27, NULL, '0000-00-00', 350, 8, '99.43%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(28, NULL, '0000-00-00', 350, 8, '99.43%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(29, '', '0000-00-00', 350, 8, '', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(30, NULL, '0000-00-00', 199, 6, '75.38%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(31, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(32, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(33, '', '0000-00-00', 180, 7, '58.44%', NULL, NULL, '', '0000-00-00 00:00:00'),
(34, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(35, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(36, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(37, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(38, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(39, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(40, NULL, '0000-00-00', 188, 7, '61.04%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(41, NULL, '0000-00-00', 144, 6, '54.55%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(42, NULL, '0000-00-00', 144, 6, '54.55%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(43, NULL, '0000-00-00', 144, 6, '54.55%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(44, '', '0000-00-00', 44466, 44, '22.93%', NULL, NULL, '', '0000-00-00 00:00:00'),
(45, NULL, '0000-00-00', 55, 55, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(46, NULL, '0000-00-00', 88, 88, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(47, NULL, '0000-00-00', 55, 22, '5.68%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(48, NULL, '0000-00-00', 55, 22, '5.68%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(49, NULL, '0000-00-00', 111, 111, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(50, NULL, '0000-00-00', 111, 111, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(51, NULL, '0000-00-00', 33, 44, '1.7%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(52, NULL, '0000-00-00', 88, 88, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(53, NULL, '0000-00-00', 21, 21, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(54, NULL, '0000-00-00', 778, 778, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(55, NULL, '0000-00-00', 311, 8.5, '83.16%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(56, NULL, '0000-00-00', 3, 3, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(57, NULL, '0000-00-00', 5, 5, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(58, NULL, '0000-00-00', 4, 4, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(59, NULL, '0000-00-00', 7, 7, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(60, NULL, '0000-00-00', 9, 9, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(61, NULL, '0000-00-00', 5, 5, '2.27%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(62, NULL, '0000-00-00', 3, 3, '2.27%', 3, 3, NULL, '0000-00-00 00:00:00'),
(64, '', '0000-00-00', 345, 4, '98.01%', 58, 2, '65.91%', '0000-00-00 00:00:00'),
(69, '', '0000-00-00', 350, 9, '88.38%', 90, 8, '25.57%', '0000-00-00 00:00:00'),
(72, '', '0000-00-00', 350, 2, '397.73%', NULL, NULL, '', '0000-00-00 00:00:00'),
(73, '', '0000-00-00', 333, 8, '94.6%', 240, 8, '100%', '0000-00-00 00:00:00'),
(74, 'Dima', '0000-00-00', 399, 8.5, '106.68%', NULL, NULL, '', '0000-00-00 00:00:00'),
(75, 'Dima', '0000-00-00', NULL, NULL, NULL, 238, 7, '113.33%', '0000-00-00 00:00:00'),
(88, 'Dima', '0000-00-00', NULL, NULL, NULL, 199, 4.5, '147.41%', '0000-00-00 00:00:00'),
(89, 'Dima', '0000-00-00', NULL, NULL, NULL, 248, 8, '103.33%', '0000-00-00 00:00:00'),
(90, 'Dima', '0000-00-00', 256, 5, '116.36%', 87, 3, '96.67%', '0000-00-00 00:00:00'),
(93, 'Dima', '0000-00-00', 278, 6.5, '97.2%', 61, 2, '101.67%', '0000-00-00 00:00:00'),
(94, 'Dima', '0000-00-00', 43, 1, '97.73%', 233, 6, '129.44%', '0000-00-00 00:00:00'),
(95, 'Dima', '0000-00-00', 253, 6, '95.83%', 33, 1, '110%', '0000-00-00 00:00:00'),
(96, 'Dima', '0000-00-00', 342, 8, '97.16%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(97, 'Dima', '0000-00-00', 299, 6.5, '104.55%', 46, 1.5, '102.22%', '0000-00-00 00:00:00'),
(98, 'Dima', '0000-00-00', NULL, NULL, NULL, 349, 8, '145.42%', '0000-00-00 00:00:00'),
(99, 'Dima', '0000-00-00', 111, 2, '126.14%', 182, 6, '101.11%', '0000-00-00 00:00:00'),
(100, 'Dima', '0000-00-00', 366, 8, '103.98%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(101, 'Dima', '0000-00-00', 361, 8, '102.56%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(102, 'Dima', '0000-00-00', 365, 8, '103.69%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(103, 'Dima', '0000-00-00', 183, 4, '103.98%', 60, 2, '100%', '0000-00-00 00:00:00'),
(104, 'demo', '0000-00-00', 333, 8, '94.6%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(105, 'demo', '0000-00-00', 255, 4, '144.89%', 120, 4, '100%', '0000-00-00 00:00:00'),
(106, 'demo', '0000-00-00', 120, 3, '90.91%', 65, 2, '108.33%', '0000-00-00 00:00:00'),
(107, 'demo', '0000-00-00', 244, 6, '92.42%', 100, 3, '111.11%', '0000-00-00 00:00:00'),
(108, 'Dima', '0000-00-00', 299, 7, '97.08%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(109, 'Dima', '31-Jan-Tue-2017', 204, 5, '92.73%', NULL, NULL, '', '0000-00-00 00:00:00'),
(110, 'Dima', '1-Feb-Wed-2017', 294, 7, '95.45%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(111, 'Dima', '2-Feb-Tue-2017', 333, 7.5, '100.91%', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(112, 'Dima', '3-Feb-Fri-2017', NULL, NULL, NULL, 266, 7.5, '118.22%', '0000-00-00 00:00:00'),
(113, 'Dima', '6-Feb-Mon-2017', NULL, NULL, '', 217, 8, '90.42%', '0000-00-00 00:00:00'),
(121, 'Dima', '7-Feb-Tue-2017', NULL, NULL, NULL, 120, 3, '133.33%', '0000-00-00 00:00:00'),
(122, 'Dima', '8-Feb-Wed-2017', NULL, NULL, '', 256, 6.5, '131.28%', '2017-02-08 13:02:58'),
(123, 'Dima', '9-Feb-Thu-2017', NULL, NULL, NULL, 299, 8.5, '117.25%', '2017-02-09 12:57:36'),
(124, 'Dima', '10-Feb-Fri-2017', NULL, NULL, NULL, 235, 7.5, '104.44%', '2017-02-10 13:56:11'),
(125, 'Dima', '13-Feb-Mon-2017', NULL, NULL, NULL, 258, 8.5, '101.18%', '2017-02-13 14:54:17'),
(126, 'Dima', '14-Feb-Tue-2017', NULL, NULL, NULL, 271, 8.5, '106.27%', '2017-02-14 15:13:12'),
(127, 'Dima', '15-Feb-Wed-2017', NULL, NULL, NULL, 306, 8.5, '120%', '2017-02-15 15:15:31'),
(128, 'demo', '13-Feb-Mon-2017', 240, 6, '90.91%', 100, 2, '166.67%', '2017-02-16 10:56:57'),
(129, 'demo', '14-Feb-Tue-2017', 124, 3, '93.94%', 99, 3, '110%', '2017-02-16 10:57:25'),
(130, 'demo', '15-Feb-Wed-2017', 223, 5, '101.36%', 34, 1, '113.33%', '2017-02-16 10:58:02'),
(131, 'Dima', '16-Feb-Thu-2017', NULL, NULL, '', 291, 8.5, '114.12%', '2017-02-16 14:58:22'),
(132, 'Dima', '17-Feb-Fri-2017', NULL, NULL, NULL, 255, 6, '141.67%', '2017-02-17 15:30:54'),
(133, 'Dima', '20-Feb-Mon-2017', NULL, NULL, NULL, 230, 8, '95.83%', '2017-02-20 15:33:32'),
(134, 'Dima', '21-Feb-Tue-2017', NULL, NULL, NULL, 228, 7.5, '101.33%', '2017-02-21 15:36:02'),
(135, 'Dima', '22-Feb-Wed-2017', 256, 6, '96.97%', NULL, NULL, NULL, '2017-02-22 15:45:13'),
(136, 'Dima', '23-Feb-Thu-2017', 207, 4, '117.61%', 16, 0.5, '106.67%', '2017-02-23 15:36:14'),
(137, 'Dima', '24-Feb-Fri-2017', 223, 4.5, '112.63%', 75, 2.5, '100%', '2017-02-24 12:29:24'),
(138, 'Dima', '27-Feb-Mon-2017', 255, 5.5, '105.37%', 77, 2.5, '102.67%', '2017-02-27 15:16:38'),
(139, 'Dima', '28-Feb-Tue-2017', NULL, NULL, '', 176, 4, '146.67%', '2017-02-28 09:46:10'),
(140, 'Dima', '1-Mar-Wed-2017', NULL, NULL, NULL, 248, 8, '103.33%', '2017-03-01 15:08:54'),
(141, 'Dima', '2-Mar-Thu-2017', 299, 6.5, '104.55%', 18, 0.5, '120%', '2017-03-02 13:42:47'),
(142, 'Dima', '3-Mar-Fri-2017', 0, 0.5, '0%', NULL, NULL, NULL, '2017-03-06 08:41:52'),
(143, 'Dima', '6-Mar-Mon-2017', NULL, NULL, '', 250, 5.5, '151.52%', '2017-03-07 07:46:32'),
(144, 'Dima', '7-Mar-Tue-2017', 48, 1, '109.09%', NULL, NULL, '', '2017-03-07 14:30:05'),
(145, 'Dima', '9-Mar-Thu-2017', NULL, NULL, NULL, 218, 6.5, '111.79%', '2017-03-09 14:57:56'),
(146, 'Dima', '10-Mar-Fri-2017', NULL, NULL, NULL, 233, 7.5, '103.56%', '2017-03-10 13:28:42'),
(147, 'Dima', '13-Mar-Mon-2017', NULL, NULL, NULL, 243, 8, '101.25%', '2017-03-13 15:19:15'),
(148, 'Dima', '14-Mar-Tue-2017', NULL, NULL, NULL, 243, 8, '101.25%', '2017-03-14 14:22:42'),
(149, 'Dima', '15-Mar-Wed-2017', NULL, NULL, NULL, 251, 8, '104.58%', '2017-03-15 15:34:37'),
(150, 'Dima', '16-Mar-Thu-2017', NULL, NULL, NULL, 319, 8, '132.92%', '2017-03-16 15:35:20'),
(151, 'Dima', '17-Mar-Fri-2017', NULL, NULL, NULL, 175, 5, '116.67%', '2017-03-17 15:40:02'),
(152, 'Dima', '20-Mar-Mon-2017', 78, 1.5, '118.18%', 232, 6.5, '118.97%', '2017-03-20 15:18:26'),
(153, 'Dima', '21-Mar-Tue-2017', 274, 6.5, '95.8%', 49, 1.5, '108.89%', '2017-03-21 15:44:39'),
(154, 'Dima', '22-Mar-Wed-2017', 199, 4, '113.07%', 33, 1, '110%', '2017-03-22 15:15:14'),
(155, 'Dima', '29-Mar-Wed-2017', NULL, NULL, NULL, 155, 4, '129.17%', '2017-03-29 14:16:51'),
(156, 'Dima', '30-Mar-Thu-2017', NULL, NULL, NULL, 266, 8, '110.83%', '2017-03-30 14:29:42'),
(157, 'Dima', '31-Mar-Fri-2017', NULL, NULL, NULL, 199, 6, '110.56%', '2017-03-31 13:12:47'),
(158, 'Dima', '3-Apr-Mon-2017', 223, 5, '101.36%', 33, 1, '110%', '2017-04-03 14:00:07'),
(159, 'Dima', '4-Apr-Tue-2017', 294, 7, '95.45%', 29, 1, '96.67%', '2017-04-04 14:21:03'),
(160, 'Dima', '5-Apr-Wed-2017', 360, 8, '102.27%', NULL, NULL, NULL, '2017-04-05 12:16:41'),
(161, 'Dima', '6-Apr-Thu-2017', NULL, NULL, NULL, 303, 8, '126.25%', '2017-04-06 14:15:19'),
(162, 'Dima', '10-Apr-Mon-2017', 303, 6.5, '105.94%', 48, 1.5, '106.67%', '2017-04-10 13:12:01'),
(163, 'Dima', '11-Apr-Tue-2017', 398, 8, '113.07%', NULL, NULL, NULL, '2017-04-11 14:20:41'),
(164, 'Dima', '12-Apr-Wed-2017', 140, 3, '106.06%', 165, 5, '110%', '2017-04-12 14:12:41'),
(165, 'Dima', '13-Apr-Thu-2017', 46, 1, '104.55%', 266, 7, '126.67%', '2017-04-13 13:56:36'),
(166, 'Dima', '14-Apr-Fri-2017', 132, 2, '150%', 264, 6, '146.67%', '2017-04-14 13:49:21'),
(167, 'Dima', '18-Apr-Tue-2017', 231, 5, '105%', 104, 3, '115.56%', '2017-04-18 14:09:40'),
(168, 'Dima', '19-Apr-Wed-2017', 313, 7, '101.62%', 33, 1, '110%', '2017-04-19 13:44:00'),
(169, 'Dima', '20-Apr-Thu-2017', 99, 2, '112.5%', 201, 6, '111.67%', '2017-04-20 13:01:05'),
(170, 'Dima', '21-Apr-Fri-2017', 319, 6, '120.83%', 33, 1, '110%', '2017-04-21 11:42:32'),
(171, 'Dima', '24-Apr-Mon-2017', 316, 7, '102.6%', 41, 1, '136.67%', '2017-04-24 14:34:41'),
(172, 'Dima', '25-Apr-Tue-2017', NULL, NULL, NULL, 253, 8, '105.42%', '2017-04-25 13:50:40'),
(173, 'Dima', '26-Apr-Wed-2017', NULL, NULL, NULL, 279, 8, '116.25%', '2017-04-26 14:23:33'),
(174, 'Dima', '27-Apr-Thu-2017', 183, 4, '103.98%', 141, 4, '117.5%', '2017-04-27 14:11:04'),
(175, 'Dima', '28-Apr-Fri-2017', 305, 6.5, '106.64%', 46, 1.5, '102.22%', '2017-04-28 13:06:49'),
(176, 'Dima', '3-May-Wed-2017', 140, 3, '106.06%', 186, 5, '124%', '2017-05-03 14:27:29'),
(177, 'Dima', '4-May-Thu-2017', NULL, NULL, '', 285, 8, '118.75%', '2017-05-04 13:09:27'),
(178, 'Dima', '5-May-Fri-2017', 199, 4, '113.07%', 108, 3, '120%', '2017-05-05 12:08:30'),
(179, 'demo', '8-May-Mon-2017', 48, 1, '109.09%', 99, 3, '110%', '2017-05-08 11:19:20'),
(180, 'Dima', '8-May-Mon-2017', NULL, NULL, NULL, 231, 7, '110%', '2017-05-08 12:36:14'),
(181, 'Dima', '10-May-Wed-2017', NULL, NULL, NULL, 251, 8, '104.58%', '2017-05-10 12:53:23'),
(182, 'Dima', '11-May-Thu-2017', NULL, NULL, NULL, 246, 7.5, '109.33%', '2017-05-11 13:56:50'),
(183, 'Dima', '12-May-Fri-2017', NULL, NULL, NULL, 302, 8, '125.83%', '2017-05-12 13:16:45'),
(184, 'Dima', '15-May-Mon-2017', NULL, NULL, NULL, 247, 8, '102.92%', '2017-05-15 14:53:56'),
(185, 'Dima', '16-May-Tue-2017', NULL, NULL, NULL, 253, 8, '105.42%', '2017-05-16 14:47:29'),
(186, 'Dima', '17-May-Wed-2017', NULL, NULL, '', 282, 8, '117.5%', '2017-05-17 13:29:24');

-- --------------------------------------------------------

--
-- Структура таблицы `support`
--

CREATE TABLE `support` (
  `supp_id` int(11) NOT NULL,
  `supp_user` varchar(77) NOT NULL,
  `supp_date` varchar(77) NOT NULL,
  `supp_ip` varchar(88) NOT NULL,
  `supp_amount` int(11) NOT NULL,
  `supp_hour` float NOT NULL,
  `supp_rate` float NOT NULL,
  `supp_unix_Stamp` int(77) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `support`
--

INSERT INTO `support` (`supp_id`, `supp_user`, `supp_date`, `supp_ip`, `supp_amount`, `supp_hour`, `supp_rate`, `supp_unix_Stamp`) VALUES
(9, 'Dima', '6-Oct-Fri-2017', '195.69.222.80', 14, 2, 7, 0),
(7, 'Dima', '4-Oct-Wed-2017', '195.69.222.80', 50, 6, 8.33333, 0),
(8, 'Dima', '5-Oct-Thu-2017', '195.69.222.80', 60, 8, 7.5, 0),
(11, 'Dima', '9-Oct-Mon-2017', '195.69.222.80', 56, 8, 7, 0),
(12, 'Dima', '10-Oct-Tue-2017', '195.69.222.80', 52, 8, 6.5, 0),
(13, 'Dima', '11-Oct-Wed-2017', '195.69.222.80', 61, 8, 7.625, 0),
(15, 'Dima', '12-Oct-Thu-2017', '37.115.108.251', 62, 8, 7.75, 0),
(16, 'Dima', '13-Oct-Fri-2017', '195.69.222.80', 50, 7, 7.14286, 0),
(17, 'Dima', '17-Oct-Tuesday-2017', '195.69.222.80', 41, 6, 6.83333, 0),
(18, 'Dima', '18-Oct-Wednesday-2017', '195.69.222.80', 42, 6, 7, 0),
(19, 'Dima', '19-Oct-Thursday-2017', '195.69.222.80', 55, 8, 6.875, 0),
(20, 'Dima', '20-Oct-Fri-2017', '195.69.222.80', 53, 8, 6.625, 0),
(21, 'Dima', '23-Oct-Mon-2017', '37.115.108.251', 51, 8, 6.375, 0),
(22, 'Dima', '24-Oct-Tue-2017', '37.115.108.251', 53, 8, 6.625, 0),
(23, 'Dima', '25-Oct-Wed-2017', '37.115.108.251', 51, 8, 6.375, 0),
(24, 'Dima', '26-Oct-Thu-2017', '37.115.108.251', 53, 8, 6.625, 0),
(25, 'Dima', '27-Oct-Fri-2017', '195.69.222.80', 59, 7, 8.42857, 0),
(26, 'Dima', '30-Oct-Mon-2017', '195.69.222.80', 53, 8, 6.625, 0),
(27, 'Dima', '31-Oct-Tue-2017', '195.69.222.80', 59, 8, 7.375, 0),
(28, 'Dima', '1-Nov-Wed-2017', '195.69.222.80', 54, 7, 7.71429, 0),
(29, 'Dima', '2-Nov-Thu-2017', '195.69.222.80', 38, 5, 7.6, 0),
(30, 'Dima', '3-Nov-Fri-2017', '195.69.222.80', 31, 4, 7.75, 0),
(31, 'Dima', '6-Nov-Mon-2017', '195.69.222.80', 48, 7, 6.85714, 0),
(32, 'Dima', '7-Nov-Tue-2017', '195.69.222.80', 60, 8, 7.5, 0),
(33, 'Dima', '8-Nov-Wed-2017', '195.69.222.80', 58, 8, 7.25, 0),
(34, 'Dima', '9-Nov-Thu-2017', '195.69.222.80', 58, 8, 7.25, 0),
(37, 'Dima', '13-Nov-Mon-2017', '195.69.222.80', 56, 8, 7, 0),
(36, 'Dima', '10-Nov-Fri-2017', '195.69.222.80', 67, 7.5, 8.93333, 0),
(38, 'Dima', '14-Nov-Tue-2017', '195.69.222.80', 62, 8, 7.75, 0),
(39, 'Dima', '15-Nov-Wed-2017', '195.69.222.80', 63, 8, 7.875, 0),
(40, 'Dima', '20-Nov-Mon-2017', '195.69.222.80', 51, 7.5, 6.8, 0),
(41, 'Dima', '21-Nov-Tue-2017', '195.69.222.80', 59, 8, 7.375, 0),
(42, 'Dima', '22-Nov-Wed-2017', '195.69.222.80', 56, 8, 7, 0),
(43, 'Dima', '23-Nov-Thu-2017', '195.69.222.80', 54, 6, 9, 0),
(44, 'Dima', '24-Nov-Fri-2017', '195.69.222.80', 20, 2, 10, 0),
(45, 'Dima', '27-Nov-Mon-2017', '195.69.222.80', 52, 8, 6.5, 0),
(46, 'Dima', '28-Nov-Tue-2017', '195.69.222.80', 40, 5, 8, 0),
(47, 'Dima', '29-Nov-Wed-2017', '195.69.222.80', 49, 5, 9.8, 0),
(48, 'Dima', '30-Nov-Thu-2017', '195.69.222.80', 47, 7, 6.71429, 0),
(49, 'Dima', '1-Dec-Fri-2017', '195.69.222.80', 40, 6, 6.66667, 0),
(50, 'Dima', '5-Dec-Tue-2017', '195.69.222.80', 55, 8, 6.875, 0),
(51, 'Dima', '6-Dec-Wed-2017', '195.69.222.80', 48, 8, 6, 0),
(52, 'Dima', '7-Dec-Thu-2017', '37.115.108.251', 50, 8, 6.25, 0),
(53, 'Dima', '8-Dec-Fri-2017', '37.115.108.251', 79, 12, 6.58333, 0),
(54, 'Dima', '11-Dec-Mon-2017', '37.115.108.251', 56, 8, 7, 0),
(57, 'Dima', '12-Dec-Tue-2017', '37.115.108.251', 57, 8, 7.125, 0),
(58, 'Dima', '13-Dec-Wed-2017', '37.115.108.251', 77, 10.5, 7.33333, 0),
(59, 'Dima', '18-Dec-Mon-2017', '195.69.222.80', 54, 8, 6.75, 1513548000),
(60, 'Dima', '19-Dec-Tue-2017', '195.69.222.80', 65, 9, 7.22222, 1513634400),
(61, 'Dima', '20-Dec-Wed-2017', '195.69.222.80', 59, 8, 7.375, 1513720800),
(63, 'Dima', '21-Dec-Thu-2017', '195.69.222.80', 55, 8, 6.875, 1513807200),
(64, 'Dima', '22-Dec-Fri-2017', '195.69.222.80', 56, 8, 7, 1513893600),
(65, 'Dima', '26-Dec-Tue-2017', '195.69.222.80', 57, 8, 7.125, 1514239200),
(66, 'Dima', '27-Dec-Wed-2017', '195.69.222.80', 55, 8.5, 6.47059, 1514325600),
(67, 'Dima', '28-Dec-Thu-2017', '195.69.222.80', 53, 8, 6.625, 1514412000),
(68, 'Dima', '29-Dec-Fri-2017', '195.69.222.80', 44, 6, 7.33333, 1514498400),
(69, 'Dima', '2-Jan-Tue-2018', '37.115.108.251', 74, 8, 9.25, 1514844000),
(70, 'Dima', '3-Jan-Wed-2018', '195.69.222.80', 54, 8.5, 6.35294, 1514930400),
(71, 'Dima', '4-Jan-Thu-2018', '195.69.222.80', 49, 8, 6.125, 1515016800),
(72, 'Dima', '5-Jan-Fri-2018', '195.69.222.80', 38, 6, 6.33333, 1515103200),
(73, 'Dima', '9-Jan-Tue-2018', '195.69.222.80', 39, 6, 6.5, 1515448800);

-- --------------------------------------------------------

--
-- Структура таблицы `supportData`
--

CREATE TABLE `supportData` (
  `sData_id` int(11) NOT NULL,
  `sData_user` varchar(77) DEFAULT NULL,
  `sData_ip` varchar(77) DEFAULT NULL,
  `sData_date` varchar(77) DEFAULT NULL,
  `sData_header` text NOT NULL,
  `sData_text` longtext NOT NULL,
  `sData_category` varchar(77) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `supportData`
--

INSERT INTO `supportData` (`sData_id`, `sData_user`, `sData_ip`, `sData_date`, `sData_header`, `sData_text`, `sData_category`) VALUES
(1, 'user', '127.', '26-MAY-2016', 'Beep', 'Are the options to Beep and Message other users grayed out? \r\n \r\nPlease note that sometimes you cannot beep other Wazers if they have enabled the   Invisible   mode.\r\n \r\nIn order to investigate this issue further, could you please send us the following screenshots:\r\ngo to the Waze   Menu >   tap   your name   to access   My Waze   and take a screenshot;\r\ngo to the Waze   Menu > My Waze > Scoreboard   and take another screenshot.\r\nIt should help us to understand the possible cause of the issue.\r\nThanks in advance!', 'General'),
(2, NULL, NULL, NULL, 'ScoreBoard', 'In order to investigate this issue further, could you please send us the following screenshots:\r\nScreenshot of your username, tap   Menu >   your name for   My Waze   and take a screenshot.\r\nScreenshot of the scoreboard, tap   Menu >   your name for   My Waze > Scoreboard   and take a screenshot.\r\nIt should help us to understand the possible cause of the issue.', NULL),
(3, 'dima', '127.0.0.1', '26-May-Fri-2017', 'Much  Inet data  IOS', 'Please check if Waze is not in the Debug mode. This mode is used for sending reports to us and does not necessary has to be on for the app to work properly.\r\n \r\nTo check if it is enabled, please tap   Menu   and type   2##2   in the Search bar. If you receive the pop-up message \"Log level is set to WARNING\" it means that you successfully turned the Debug mode off.\r\n \r\nIn case you receive the \"Log level is set to DEBUG\" message, this means that you have never enabled it. Please type   2##2   in the Search bar once again to set the Debug mode back to Warning. \r\n \r\nAdditionally, you should clear your in-app cache. To do so, you can either reinstall Waze or use special software.\r\nTo remedy this issue, please take the following steps:\r\nDelete Waze and perform a hard reset on your phone. To do so:\r\nOn   iPhone 4, 4S, 5, 5S, 6   or   6S  :  please hold the   lock   and   home   buttons until you see the Apple icon.\r\nOn   iPhone 7  : please hold the   lock   and   volume down   buttons until you see the Apple icon.\r\nOnce your phone has restarted, open the App Store and redownload Waze.\r\nBefore deleting Waze, please make sure you\'ve added an email address to your account should you need help resetting your password afterwards. To do so, tap   Menu > Settings > Account & Login   and tap email.\r\nPlease let us know if you continue to experience this issue afterwards.', NULL),
(4, 'dima', '127.0.0.1', '26-May-Fri-2017', 'Location change reporting IOS', 'Although most uses of location information by the Waze application are in connection with providing navigation services when the app is open and in use, there are a limited number of features that require access to location, even if the app is closed. \r\nFor example, for Calendar notifications and Planned drives, the app needs to know location - before the planned event or drive, whether or not the app is open - in order to provide accurate information about when to leave.  Similarly, in order to be able to remind you where you have parked at the end of a trip, we need a location value, even though the app may have been shut down before you reached your destination.\r\nIf you would like to disable this feature, please know that you will no longer receive time to leave notifications. To disable:\r\nTap   Menu > General  ?, and toggle OFF on   Location change reporting  . You will cease to receive time to leave notifications and the location arrow will disappear when you close Waze.\r\nLearn more about the Planned drives feature and get troubleshooting tips in our related   Help Center section  .\r\n', NULL),
(5, 'dima', '127.0.0.1', '26-May-Fri-2017', 'SPOTIFY', 'We recommend to delete Waze and Spotify, then reinstall them while connected to WiFi.\r\nBefore deleting Waze, please make sure you\'ve added an email address to your account should you need help resetting your password afterwards. To do so, tap   Menu > Settings > Account & Login   and tap email.\r\nFor Android users, we suggest enabling   Smart Lock backup   to easily gain access to your account. To do so, tap   Menu > Settings > Account & login > Smart Lock backup settings  . For more information about this feature, please read our related   Smart Lock backup   help article.\r\nAfter that enable Spotify in Waze. In order to learn more please refer to the related   Help Center article  .\r\nIf you continue to experience this issue after the update, we\'d like to ask you to reproduce the issue while in our debug mode and submit the report logs. These debug logs will help us investigate the issue further.\r\nFollow these steps to ensure your log is captured and received:\r\nTap the   Menu   icon.\r\nIn the search box, search for   2##2\r\nClose Waze.\r\nOpen Waze and reproduce the issue.\r\nTap   Reports   and tap on the   bee   icon to send the logs.\r\n*To disable debug mode, search again for   2##2   in the Search bar  .\r\nAdditionally, please make sure to write us here when you submit your logs and send the following information:\r\nYour username\r\nThe date and time you sent the logs\r\nThe date and time you reproduced the issue\r\nThe steps you took to reproduce this issue\r\nA screenshot (if relevant)\r\nBest regards,\r\nThe Waze Support team', NULL),
(58, 'dima', '37.115.108.251', '14-Feb-Wed-2018', 'Report police', 'Please know that when you report Police on the other side of the road by tapping the Reports button > Police > Other side > Send, a report should still be submitted correctly. Although sometimes it may graphically appear that the report is on your side.', NULL),
(7, 'dima', '127.0.0.1', '26-May-Fri-2017', 'LOGS IOS', 'Could you please confirm that you are using the newest version of the app? If that is the case, we thank you for sending those logs. Our teams will be working to determine the cause of the issue. \r\nIf you still haven\'t updated your current app version, please do it from the App Store. Before updating Waze, please make sure you\'ve added an email address to your account should you need help resetting your password afterwards. To do so, tap   Menu > Settings > Account & Login   and tap email.\r\nIf the issue persists afterwards, please submit the logs again.', NULL),
(8, 'dima', '195.69.222.80', '27-May-Sat-2017', 'Restore account (without e-mail)', 'We value our users\' privacy and wish to protect the information associated with each account (recent drives, favorites, etc.). Because of this, we are unable to grant access to accounts that don’t have a linked email address and ask you to please create a new user. \r\nWe recommend that you link your email address to your new account by opening Waze and clicking  Menu > Settings > Account & Login   and tap email. \r\nWe apologize for the inconvenience. ', NULL),
(9, 'dima', '195.69.222.80', '27-May-Sat-2017', 'Sound Issue', 'Are you using Waze with a Bluetooth system or USB? If you\'re experiencing any difficulty pairing Waze with your Bluetooth system, please read our related   Help Center article   for troubleshooting tips.\r\nIf you\'re not using one of the above methods, please try the following steps to remedy the issue:\r\nIf you are using a voice that has   including street names   under the title, please tap   Menu >   and type   cc@tts   in the   Search bar  . This will clear your cache in Waze and should resolve the issue. To check if you\'re using this type of voice, tap   Menu > Settings > Sound   and check which voice you\'re using underneath   Voice Directions  .\r\nIf you aren\'t using a voice that includes street names, please delete and reinstall Waze while connected to WiFi. Before deleting Waze, please make sure you have an email address linked  to your account should you need to reset your password in the future. Tap   Menu   >   Settings   >  Account & Login   and tap   Email  . Once the reinstall is complete, log in with your existing username by tapping   Have an account  , then tap   Menu > Settings > Sound & voice > Voice Directions   and tap the voice you\'d like to use to.', NULL),
(10, 'dima', '195.69.222.80', '27-May-Sat-2017', 'Restore  report', 'Unfortunately, we do not save information regarding reports. Once a report is no longer active, there is no way to view the information regarding that report afterwards.', NULL),
(11, 'dima', '195.69.222.80', '27-May-Sat-2017', 'New Version- IOS', 'We recently released a new version of Waze.\r\nPlease update your version from the App Store. Before updating Waze, please make sure you\'ve added an email address to your account should you need help resetting your password afterwards. To do so, tap Menu > Settings > Account & Login and tap email.\r\nIf you continue to experience any issues after the update, please explain your problem in more detail.', NULL),
(12, 'dima', '195.69.222.80', '31-May-Wed-2017', 'Stratosphere ', 'It seems that Waze cannot verify your account with your phone number, that is why you see the error message. This issue usually occurs when you try to log in with new phone, did not verify your phone number or did not allow access to your contacts previously.\r\n \r\nPlease try to use another available login option when trying to regain access to an account.', NULL),
(13, 'dima', '195.69.222.80', '31-May-Wed-2017', 'Promo voices', 'Some of the voices we feature are promotional, meaning they are only available for a limited time. \r\n\r\nWe hope that you enjoyed the voice while it was available and can\'t wait to share more exciting voices to ', NULL),
(14, 'dima', '195.69.222.80', '2-Jun-Fri-2017', 'Favorites search', 'Additionally, to make searching faster, please try typing the name of a Favorite in the search bar and it should be the first option in the results. It will also have a star icon that identifies this search result as a Favorite.', NULL),
(15, 'dima', '195.69.222.80', '2-Jun-Fri-2017', 'Join Teams', 'Please know that Wazers cannot create their own Teams. All of the available teams are temporary and are used to promote certain events, e.g. sport competitions, movie releases etc.\r\n\r\nAdditional teams can also be created by the participants of our Waze Broadcast program. \r\n\r\nTo learn more about it, please visit the related Help Center article.\r\nhttps://support.google.com/waze/partners/answer/6280360?hl=en&ref_topic=6280352\r\n', NULL),
(16, 'dima', '195.69.222.80', '2-Jun-Fri-2017', 'Road goodies', 'We often offer road goodies during special holidays and events. These goodies will appear in random locations on the map. \r\n\r\nEach type of candy has a set value and they are typically between 3 and 10 points. You just need to drive over them to collect the points.\r\n\r\nPlease know that can receive some goodies when you complete achievements.To learn more, tap Menu > your name for My Waze > Scoreboard > Your points (below the rank section).', NULL),
(17, 'dima', '195.69.222.80', '2-Jun-Fri-2017', 'Contacts settings issue', 'In order for Waze to appear in your phone\'s Settings > Privacy > Contacts, please follow instructions in the related Help Center article under Add friends from your contacts .\r\n\r\nIf you continue to experience any issues afterwards, please send us a relevant screenshot.', NULL),
(18, 'dima', '195.69.222.80', '2-Jun-Fri-2017', 'Centercode', 'Please note that to be able to log in to the Centercode, you should first create an account. To do so, please proceed to the Centercode and tap Create an Account.', NULL),
(19, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'View old reports', 'Unfortunately, we do not save information regarding reports. Once a report is no longer active, there is no way to view the information regarding that report afterwards.', NULL),
(20, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Change language', 'To change your language to English, please go to   Menu   (tap the magnifying glass icon)   > Settings   (the cog icon in the top left corner)   >   then scroll down to   Language   (represented by another cog icon)   > Taal   and choose   English (US)  .', NULL),
(21, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Verification Failed', 'It seems that Waze cannot verify your account with your phone number, that is why you see the error message. This issue usually occurs when you try to log in with new phone, did not verify your phone number or did not allow access to your contacts previously.\r\n \r\nPlease try to use another available login option when trying to regain access to an account.', NULL),
(22, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Contact Settings', 'In order for Waze to appear in your phone\'s Settings > Privacy > Contacts, please follow instructions in the related   Help Center article   under   Add friends from your contacts', NULL),
(23, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Not Waze issue', 'Please note that the issue might not be related to the Waze app.', NULL),
(24, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Favorites quick search', 'Additionally, to make searching faster, please try typing the name of a Favorite in the search bar and it should be the first option in the results. It will also have a star icon that identifies this search result as a Favorite.', NULL),
(25, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Fixed Issue', 'We are happy to announce that the issue has since been fixed.\r\nIn order to resolve this issue, please log out of Waze and then log back in.\r\n \r\nPlease note that your rank and points may not restore immediately after you logged out and in again. Changes may take place once you have driven for some time.\r\n \r\nBefore logging out, please make sure you\'ve added a valid email address to your account should you need to reset your password afterwards. To do so, tap Menu > Settings > Account & Login and tap email.\r\n \r\nIf the issue remains, please send us the following:\r\nScreenshot of your username, tap   Menu >   your name for   My Waze   and take a screenshot.\r\nScreenshot of the scoreboard, tap   Menu >   your name for   My Waze > Scoreboard   and take a screenshot..\r\nTime and date of your last navigation with Waze.\r\nApproximate number of points you are missing.', NULL),
(26, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Camera permission', 'Please make sure that you have allowed Waze to use your camera. To do that, simply go to your device Menu > Settings > Applications > Application manager   > Waze > Permissions   and toggle   Camera   on', NULL),
(27, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Wrong address', 'Please know that in this case you may be routed to a wrong place because your address is not added to the map correctly.\r\nWe suggest visiting the   Waze forums   for mentoring programs and connecting with our community of editors. Additionally, we recommend checking out our   Community Wiki   page for best map editing practices.', NULL),
(28, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Reset email to new account', 'In order to to reset your email from your old account and link it to the new one, please take the following steps:\r\n Log in your old account, tap   Menu > Settings > Account & Login >   tap   Email   and delete the email.\r\n Log in your current account, tap   Menu > Settings > Account & Login >   tap   Email   to add or edit your address.\r\nPlease note that we are not able to reset email addresses, only users themselves can change that ', NULL),
(29, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Prevent auto lock', 'To remedy this issue, please turn on   Prevent auto-lock.\r\nTo do so, please   tap Menu   > Settings   > General > t  oggle ON for   Prevent auto-lock  .When enabled, your screen will always stay on with Waze running in the foreground. ', NULL),
(30, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Login not found', 'Please know that we could not find any accounts with the username you had provided. If you have used different accounts and usernames in the past, please send them to us for further investigation.', NULL),
(31, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Navigation history', 'If you are referring to navigation history items that are displayed below your Favorites, please know that they are stored locally and they can disappear if you log out of your account or switch to a new phone.', NULL),
(32, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Delete report', 'Please know that it is not possible to delete a report that you have accidentally submitted.\r\nEvery report has a pre-defined lifecycle which means it should disappear after some time', NULL),
(33, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Speedometer', 'In order to assist further with this issue, could you please send us a screenshot of Speedometer settings so we could investigate the case.\r\nTo find your Speedometer settings tap   Menu   >   Settings   > Speedometer and take a screenshot.', NULL),
(34, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Screenshot request', 'We received your email, but more information is needed to resolve your ticket, could you please send us a relevant screenshot so we could investigate it.\r\nOnce we have this information, we’ll be able to better research the issue.\r\n \r\nPlease know that in order to understand the possible cause of the issue, we require a relevant screenshot. Additionally, please indicate the exact speed you were driving at so we could compare your actual speed with the data on the screenshot', NULL),
(35, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'No logs received', 'Please note that we could not find the logs under the name you provided. In order to proceed further, please send us a screenshot of your username by going to Waze   Menu  , tapping your name for   My Waze   and taking a screenshot. \r\n \r\nOnce you have done so, we would like to ask you to re-submit debug logs again by performing the steps outlined in this Help Center article.\r\n \r\nThanks in advance!', NULL),
(36, 'dima', '37.115.82.166', '10-Jun-Sat-2017', 'Contact sync', 'Please note that Waze displays contacts that are synced to a Google account,  meaning if any contacts are saved in another place, Waze will not read them. Please ensure you\'ve synced your contacts with a Google account so that all your contacts will appear properly in Waze.', NULL),
(39, 'dima', '195.69.222.80', '5-Jul-Wed-2017', 'Travel abroad (servers)', 'You can simply continue to use Waze without applying additional settings in any country in the world.\r\nPlease note that points from Europe and the USA are counted separately.\r\nIf you traveled across servers (from the US to Europe for instance), the points you acquired before the trip will return, although it might take up to a few weeks for them to appear properly; however, the points you earned abroad will not transfer.', NULL),
(40, 'dima', '195.69.222.80', '5-Jul-Wed-2017', 'Battery', 'We are sorry to hear about inconvenience you experienced.\r\n \r\nPlease know that the battery consumption by Waze app changes from device to device and it depends on several factors such as the quality of your network, GPS signal, hardware compatibility. Therefore it may be necessary to connect your mobile device to a power source to prevent draining the battery.\r\n\r\nAdditionally you can follow the related discussion in our forum that is maintained by our community.', NULL),
(41, 'dima', '195.69.222.80', '5-Jul-Wed-2017', 'Waze in background', 'It should be possible to use Waze on the background\r\nPlease know that when Waze is in the background for more than few minutes without any movement detected (due to a stand still traffic, for instance), it closes automatically by design - assuming the navigation was ended in the middle of it.', NULL),
(42, 'dima', '37.115.89.147', '5-Jul-Wed-2017', 'Username or email is used', 'Please know that it is not possible to use the same username until it is used in the other account and not deleted from there.\r\nPlease know that if an email address is associated with another account, you should first delete it from there. \r\nPlease note that we are not able to reset email, passwords or delete usernames and accounts, only users themselves can perform that action.', NULL),
(43, 'dima', '37.115.89.147', '5-Jul-Wed-2017', 'Login credentials', 'Please note that in this case you can only use your credentials in order to login. If you don\'t remember either username or password, please use    Password Reset   page.\r\n \r\nIf you do not have an email address attached to your account, there is no availability to know your credentials, and we recommend you to create a new account and link an email address to it.\r\n \r\nIn case there is an email address linked to your account and you receive no email from Waze, please make sure you type exactly relevant email address', NULL),
(44, 'dima', '37.115.89.147', '5-Jul-Wed-2017', 'SD card', 'Please know that current Waze version cannot be transferred to SD card.\r\nPlease know that in OS Android 5 and higher, Waze\'s files are hidden and can be stored only in the internal memory.', NULL),
(45, 'dima', '37.115.89.147', '5-Jul-Wed-2017', 'Logs not received', 'Please note that we could not find the logs under the name you provided. In order to proceed further, please send us a screenshot of your username by going to Waze   Menu  , tapping your name for   My Waze   and taking a screenshot. \r\nOnce you have done so, we would like to ask you to re-submit debug logs again by performing the steps outlined in this Help Center article.\r\n https://support.google.com/waze/answer/6270063?hl=en', NULL),
(46, 'dima', '37.115.89.147', '5-Jul-Wed-2017', 'Password reset fail', 'Please know if you received an email with incorrect username it could be possible that another email address is linked to your old account and you should try other email addresses you might use in the past to restore access to that account.', NULL),
(47, 'dima', '37.115.89.147', '5-Jul-Wed-2017', 'Drivers appreciation program', 'We\'re currently running a pro driver appreciation program in which we\'re collecting feedback from select drivers on how we can improve the Waze experience for them. As a thank you for filling out the survey, we\'ll be sending out a pro driver box with Waze swag that drivers can keep in their cars for passengers (tissues, hand sanitizer, etc.).', NULL),
(48, 'dima', '195.69.222.80', '4-Oct-Wed-2017', 'Location change reporting', 'Please know that when you choose to allow Waze to access location services only while using the app, it may still be using your location. This happens if you leave Waze on the background, even if you choose not to use it for navigation at that time. That is why you should see a notification on top of your screen that Waze continues to use your location.\r\n\r\nIn this case, you can either close the app altogether by double tapping the Home button and swiping up on Waze, or turn the sleep mode on. To do that, please go to Waze Menu and tap the power button in the top right corner. When this setting is enabled, Waze will stay on the background and will stop using your location until you re-enter the app again.', NULL),
(49, 'dima', '37.115.108.251', '15-Oct-Sun-2017', 'Planned drives notification IOS', 'In order to help us investigate it further, please make sure that all the necessary settings are configured properly. To do that, please follow instructions below:\r\nGo to your phone\'s Settings > find Waze > Location > choose Always.\r\nGo to the Waze Menu > Planned drives > tap cog icon in the top right corner to access Settings > Notification type > choose the variant that is more suitable to you (except None) and let us know which one you have set.\r\nAfter that, we would like to ask you to please reproduce the issue while in our debug mode. To learn how to do that, please refer to the related Help Center article. In order to reproduce it, please create a planned drive and leave debug mode on until the time you should receive a time to leave notification.\r\n \r\nIf you don\'t receive one indeed, please specify the approximate time when it should have appeared.', NULL),
(50, 'dima', '37.115.108.251', '15-Oct-Sun-2017', 'No option to reply messages', 'Please know that you are able to answer that message only when you get it at first, on your screen at the right. Then it becomes unavailable. In order to communicate with friend in Waze, please refer to our related article.\r\nhttps://support.google.com/waze/answer/6274889?hl=en', NULL),
(51, 'dima', '37.115.108.251', '28-Oct-Sat-2017', 'Facebook on iOS 11', '\r\nPlease know that in order to resolve your issue please, go to your phone\'s Settings > Facebook and make sure that login and password fields are filled out.\r\n\r\nIf you don\'t have Facebook installed  on your phone, please perform the following steps:\r\nOpen your phone browser > go to Facebook > log in with your credentials (if you are already in the account, please re-log in)\r\nThen return to Waze and try to connect to Facebook again\r\nIf you continue to experience the following issue, contact us again.', NULL),
(52, 'dima', '37.115.108.251', '28-Oct-Sat-2017', 'New landscape mode iOS', 'Please know that in the newest versions we have made a few changes to Waze interface. Due to lack of space in landscape mode we have organized all the necessary information in a way that is more user-friendly with turn directions clearly visible on your left. That is why the icon representing your vehicle no longer appears centred on the map.', NULL),
(53, 'dima', '195.69.222.80', '8-Nov-Wed-2017', 'Planned drive notification (iOS), calendar settings', 'Could you please confirm that you have verified the address for the planned drive? Please note that you will not receive a time to leave notification if the address is not verified in Waze.\r\n\r\nIn order to check that, please go to Menu > Planned drives > select an event that has Set address under the title > Set address > search for a location > tap Save.\r\n\r\nThis action is required if you have planned a drive from Facebook or calendar events. If you have created a drive from within the app, please let us know.', NULL),
(54, 'dima', '195.69.222.80', '13-Nov-Mon-2017', '4 Fuel types', 'Please know that each country has its own 4 main fuel types and these types are chosen by local champs in each country.\r\n\r\nGet in touch with your local or regional champs about this issue. They are highly experienced editors that can help you resolve this issue. Please get in touch with them via the Community Forums.\r\n\r\nhttps://www.waze.com/forum/', NULL),
(55, 'dima', '195.69.222.80', '22-Nov-Wed-2017', 'More info (more sophisticated )', 'Thanks for contacting us on this matter.\r\nWe are not sure we understand the flow of the activities done that populates the issue, so we would be grateful if you could assist by providing the scenario when that happens from the moment you install Waze on a new phone (step by step: I.e. you register with phone number? Re-login with an existing user? Connect to friends?, etc.)', NULL),
(56, 'dima', '195.69.222.80', '22-Nov-Wed-2017', 'Incorrect HC Article', 'Following up on your query, it seems like the info appearing in the help center was indeed misleading and we have already fixed it.', NULL),
(57, 'dima', '195.69.222.80', '23-Nov-Thu-2017', 'Debug Mode vs Warning', 'Unfortunately, the logs you\'ve submitted are not in the debug mode. Could you please make sure that you have enabled it? You should see a corresponding pop-up when the mode is on.\r\n\r\nOnce you receive the message that says Log level is set to DEBUG, please close Waze and submit the logs after the app opens on its own.\r\n\r\nPlease also specify the exact time when the issue reoccurs as it is crucial to understanding why it might be happening.\r\n', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `language` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `language`, `role`) VALUES
(2, 'dimaC', '31tQ5V8KnfTNcUgtG_m4KGrq7VzWT5Yx', '$2y$13$HdH0DXe9nljtyQJhZB5mSe3DJTyCO2/cVOMShI6AhklnpFqW3wwG6', NULL, 'dimabb@ukr.net', 10, 1479825809, 1479825809, '', 1),
(5, 'admin', '31tQ5V8KnfTNcUgtG_m4KGrq7VzWT5Yx', '21232f297a57a5a743894a0e4a801fc3', NULL, 'div@ukr.net', 10, 1479825809, 1479825809, '', 1),
(6, 'vasya', 'RoXl2y00WvbUf5to8OE5BM8zRc67oaHl', '$2y$13$6VnuKgZn1M2qlsqyTalzFOS8ry29RcQUlZBTbaFZsEAXY9GhTL8iO', NULL, 'vasya@ukr.net', 10, 1480424366, 1480424366, '', 1),
(7, 'Dima', '4X4DbeEdn915IVT_FmFPBpR6qs5_MsOX', '$2y$13$PHT78wkiGaLTCK55xkA4pOfA6wdcHZY5ePBqp5QS1g0tpUg/gV3vu', NULL, 'dima@ukr.net', 10, 1480425059, 1480425059, 'English', 2),
(8, 'Olya', 'jTwwTgdQP7Gl9cENo2C7hHIksx18k6Fc', '$2y$13$8dK54whWt7/RbFgdh.plt.fhxEJzS9UL.gNP9NugirkvQ9iT2MIo6', NULL, 'olya@ukr.net', 10, 1481009972, 1481009972, '', 1),
(9, 'Vova', 'zXDZcPxT53b6VKsGV0iJpPqhToVxh23p', '$2y$13$5Dr2nKcONEgZ3Kyy5y.kLerUKeuJT7XM/PbyZd8hcCaplaFT6vhVC', NULL, 'vova@ukr.net', 10, 1481037492, 1481037492, '', 1),
(10, 'demo', 'ZKqvV1zvTJbcPKWmxonBEM5ZcsmiScng', '$2y$13$jtuRkRd0itW7zMXF3SVG8ucKFDgboI8xodzlUhHW6.nXjAxMOZhze', NULL, 'demo@ukr.net', 10, 1485526673, 1485526673, '', 1),
(11, 'geo', 'dPF5DuylVgDfC9lB-MfAcZG8fYIe7JiO', '$2y$13$69kfbNhhoYhiRWxQl9.WaebBokzp7.S5BjBD9zj9u3iCSECTmDVdC', NULL, 'geo@ukr.net', 10, 1486637441, 1486637441, '', 1),
(12, 'Olya55', 'ID2KsTLlTUvE6wNyzY0hDI7qfTHne1KK', '$2y$13$CWEyvSe4nTcuVAAxYKhZ4.lIrD.PBvmFiuZNdUxUi9zlDraEcfbRe', NULL, 'dima@ukr.net555', 10, 1490965273, 1490965273, 'English', 1),
(13, 'test', 'B2k2IP6u_7OKoAA__sE5ZCTqs02HRpit', '$2y$13$mEy8mSr1pOmArI5RzkHOQutgrOwdkZ.DJcf1JYCYNJ3fhWuTm5cU6', NULL, 'dimaTest@ukr.net', 10, 1513594334, 1513594334, 'English', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bookingTable`
--
ALTER TABLE `bookingTable`
  ADD PRIMARY KEY (`b_id`);

--
-- Индексы таблицы `dayBook`
--
ALTER TABLE `dayBook`
  ADD PRIMARY KEY (`dbook_id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Индексы таблицы `Hall_Events`
--
ALTER TABLE `Hall_Events`
  ADD PRIMARY KEY (`ev_id`);

--
-- Индексы таблицы `Hall_Free_taken_seats`
--
ALTER TABLE `Hall_Free_taken_seats`
  ADD PRIMARY KEY (`fts_id`);

--
-- Индексы таблицы `Hall_Scheme_List_of_Venues`
--
ALTER TABLE `Hall_Scheme_List_of_Venues`
  ADD PRIMARY KEY (`place_id`);

--
-- Индексы таблицы `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `merge_users`
--
ALTER TABLE `merge_users`
  ADD PRIMARY KEY (`m_id`);

--
-- Индексы таблицы `mydbstart`
--
ALTER TABLE `mydbstart`
  ADD PRIMARY KEY (`mydb_id`);

--
-- Индексы таблицы `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`supp_id`);

--
-- Индексы таблицы `supportData`
--
ALTER TABLE `supportData`
  ADD PRIMARY KEY (`sData_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bookingTable`
--
ALTER TABLE `bookingTable`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT для таблицы `dayBook`
--
ALTER TABLE `dayBook`
  MODIFY `dbook_id` int(77) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `Hall_Events`
--
ALTER TABLE `Hall_Events`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT для таблицы `Hall_Free_taken_seats`
--
ALTER TABLE `Hall_Free_taken_seats`
  MODIFY `fts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT для таблицы `Hall_Scheme_List_of_Venues`
--
ALTER TABLE `Hall_Scheme_List_of_Venues`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `merge_users`
--
ALTER TABLE `merge_users`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `mydbstart`
--
ALTER TABLE `mydbstart`
  MODIFY `mydb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT для таблицы `support`
--
ALTER TABLE `support`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT для таблицы `supportData`
--
ALTER TABLE `supportData`
  MODIFY `sData_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
