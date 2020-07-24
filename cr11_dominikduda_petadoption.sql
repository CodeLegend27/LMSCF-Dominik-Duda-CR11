-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Jul 2020 um 14:14
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_dominikduda_petadoption`
--
CREATE DATABASE IF NOT EXISTS `cr11_dominikduda_petadoption` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr11_dominikduda_petadoption`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `fk_location_id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `img` varchar(5555) NOT NULL,
  `name` varchar(555) NOT NULL,
  `description` varchar(4444) NOT NULL,
  `type` varchar(44) NOT NULL,
  `hobby` varchar(5555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `animals`
--

INSERT INTO `animals` (`id`, `fk_location_id`, `age`, `img`, `name`, `description`, `type`, `hobby`) VALUES
(1, 1, 1, 'https://cdn.pixabay.com/photo/2014/03/04/15/10/elephant-279505__340.jpg', 'Elefanti', 'Elefantet  herumn', 'small', 'elefanting and eatin'),
(2, 2, 2, 'https://cdn.pixabay.com/photo/2016/12/31/21/22/discus-fish-1943755__340.jpg', 'Fischi', 'Blubt herum', 'small', 'Swimming and blubbing'),
(3, 3, 1, 'https://cdn.pixabay.com/photo/2018/05/14/09/16/stingray-3399112__340.jpg', 'Rochen', 'rocht herum', 'small', 'Swimming and roching'),
(4, 4, 3, 'https://cdn.pixabay.com/photo/2020/03/23/08/45/cat-4959941__340.jpg', 'Katzi', 'miaut herum', 'small', 'miauen und spielen'),
(5, 5, 4, 'https://cdn.pixabay.com/photo/2018/10/19/10/25/zebra-3758310__340.jpg', 'Zebra', 'zebrat herum', 'large', 'zebra und streifen'),
(6, 6, 6, 'https://cdn.pixabay.com/photo/2020/01/12/19/55/jellyfish-4760924__340.jpg', 'Quali', 'quallt herum', 'large', 'herumquallen und schwimmen'),
(7, 7, 2, 'https://cdn.pixabay.com/photo/2017/01/14/12/59/iceland-1979445__340.jpg', 'Polarfuchsi', 'fuchst herum', 'large', 'schneeball spielen'),
(8, 8, 4, 'https://cdn.pixabay.com/photo/2018/08/12/16/59/ara-3601194__340.jpg', 'Papagei', 'Papageit viel', 'large', 'fliegen und reden'),
(9, 9, 22, 'https://cdn.pixabay.com/photo/2017/07/18/18/24/dove-2516641__340.jpg', 'Taubi', 'Taub herum', 'senior', 'flattern und gurren'),
(10, 10, 122, 'https://cdn.pixabay.com/photo/2017/05/31/18/38/sea-2361247__340.jpg', 'Schildi', 'schildet herum', 'senior', 'Schildet gerne'),
(11, 11, 950, 'https://cdn.pixabay.com/photo/2017/02/28/23/00/swan-2107052__340.jpg', 'Schwani', 'Schwant herum', 'senior', 'schwanen und essen'),
(12, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(13, 3, 2, 'https://cdn.pixabay.com/photo/2015/07/07/11/16/gorilla-834251__340.jpg', 'Petzi', 'ein affe uh uh uh ', 'small', 'eats banana'),
(15, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(16, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(17, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(18, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(19, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(20, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(21, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(22, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(23, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(24, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(25, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(26, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(27, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(28, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(29, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(30, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(31, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(32, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(33, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(34, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(35, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(36, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(37, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(38, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(39, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(40, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(41, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(42, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(43, 12, 652, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'senior', 'sleeping and eating'),
(44, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(45, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(46, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(47, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(48, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(49, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(50, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(51, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(52, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(53, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(54, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(55, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(56, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(57, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(58, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(59, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(60, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(61, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(62, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(63, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(64, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(65, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(66, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(67, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(68, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(69, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(70, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(71, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(72, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(73, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(74, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(75, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(76, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(77, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(78, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(79, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(80, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(81, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(82, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(83, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(84, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(85, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(86, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(87, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(88, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(89, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(90, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(91, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(92, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(93, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(94, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(95, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(96, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(97, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(98, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(99, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(100, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(101, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(102, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(103, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(104, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(105, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(106, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(107, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(108, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(109, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(110, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(111, 1, 1, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'small', 'sleeping and eating'),
(112, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(113, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(114, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(115, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(116, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(117, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(118, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(119, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(120, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(121, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(122, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(123, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(124, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(125, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(126, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(127, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(128, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(129, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(130, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(131, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(132, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(133, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(134, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(135, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(136, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(137, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(138, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(139, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(140, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(141, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(142, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(143, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(144, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(145, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(146, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(147, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(148, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(149, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(150, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(151, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(152, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(153, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(154, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(155, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(156, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(157, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(158, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(159, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(160, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(161, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(162, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(163, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(164, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(165, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(166, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(167, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(168, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(169, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(170, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(171, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(172, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(173, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(174, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(175, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(176, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(177, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(178, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(179, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(180, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating'),
(182, 3, 3, 'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045__340.jpg', 'Löwi', 'löwet gerne', 'large', 'sleeping and eating');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `city` varchar(222) NOT NULL,
  `zip` int(22) NOT NULL,
  `address` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`id`, `city`, `zip`, `address`) VALUES
(1, 'VIENNA', 1200, 'Hauptstraße 55'),
(2, 'GRAZ', 3232, 'Gstreet 22'),
(3, 'BERLIN', 1422, 'Nebenstraße 11'),
(4, 'LINZ', 5253, 'steigengasse 11'),
(5, 'HAWAY', 7373, 'hubertgasse 11'),
(6, 'DUABI', 8521, 'dianagasse 22a'),
(7, 'NORWAY', 7452, 'peterplatz 88'),
(8, 'STOCKHOLM', 7412, 'computerstraße 32'),
(9, 'Atlantik', 2323, 'Verschollengasse 13'),
(10, 'Mittelmeer', 2323, 'Meergasse 23'),
(11, 'Alaska', 2323, 'Alaskastraße  37'),
(12, 'Russland', 2323, 'Moskaustraße 11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `status` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `status`) VALUES
(1, 'MASCHA BÄR', 'a@a.com', 'ed02457b5c41d964dbd2f2a609d63fe1bb7528dbe55e1abf5b52c249cd735797', 'user'),
(2, 'DOMINIK', 'b@b.com', '4625fd63b0e96fc0d656ae7381605e48d4a0f63a319fc743adf22688613883c7', 'admin'),
(5, 'TESTUSER1', 'TEST@TEST.COM', 'TEST', 'user'),
(8, 'TESTUSER1', 'TtEST@TEST.COM', 'TEST', 'user'),
(15, 'hhh', 'h@h.com', '89102c5116c37daa55d86342ce2c47d35b1bc2ed407509732d940ea2901befbc', 'user'),
(16, 'ttt', 't@t.com', 'c7854c301113d781c6f3cc763390da65f6459ee30cc52359842f5901649abbee', 'user'),
(17, 'peter', 'p@p.com', '891e12e156d8c6609c6d5f3e04b2fc8da6d9ff3d7e9f906314c0909da69637eb', 'user');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_location_id` (`fk_location_id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`fk_location_id`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
