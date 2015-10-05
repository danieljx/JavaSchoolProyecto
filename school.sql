-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2015 a las 04:36:34
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `school`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_enroll`
--

CREATE TABLE IF NOT EXISTS `mod_enroll` (
  `enroll_id` int(11) NOT NULL,
  `enroll_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `third_id` int(11) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_enroll`
--

INSERT INTO `mod_enroll` (`enroll_id`, `enroll_desc`, `period_id`, `level_id`, `third_id`, `date_start`, `user_id`, `user_fec`) VALUES
(1, 'Inscripcion', 1, 5, 3, '2015-06-07 17:46:23', 1, '2015-06-07 17:46:23'),
(2, NULL, 3, 7, 3, '2015-06-25 00:29:22', 1, '2015-06-25 00:29:22'),
(3, NULL, 3, 5, 9, '2015-06-26 17:54:14', 1, '2015-06-26 17:54:14'),
(4, NULL, 4, 6, 9, '2015-06-26 17:56:49', 1, '2015-06-26 17:56:49'),
(5, NULL, 4, 5, 15, '2015-06-26 23:01:50', 1, '2015-06-26 23:01:50'),
(6, NULL, 4, 6, 17, '2015-07-03 13:14:34', 1, '2015-07-03 13:14:34'),
(7, NULL, 4, 7, 20, '2015-07-04 22:20:07', 1, '2015-07-04 22:20:07'),
(8, NULL, 4, 7, 19, '2015-07-04 23:32:14', 1, '2015-07-04 23:32:14'),
(9, NULL, 4, 7, 18, '2015-07-04 23:33:47', 1, '2015-07-04 23:33:47'),
(10, NULL, 4, 7, 3, '2015-07-07 13:34:21', 1, '2015-07-07 13:34:21'),
(11, NULL, 4, 7, 5, '2015-07-07 18:07:48', 1, '2015-07-07 18:07:48'),
(12, NULL, 4, 7, 24, '2015-07-10 10:17:12', 1, '2015-07-10 10:17:12'),
(13, NULL, 4, 7, 29, '2015-07-10 10:58:29', 1, '2015-07-10 10:58:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_level`
--

CREATE TABLE IF NOT EXISTS `mod_level` (
  `level_id` int(11) NOT NULL,
  `level_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `level_father` int(11) DEFAULT NULL,
  `level_type` int(11) NOT NULL,
  `level_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_sta` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_level`
--

INSERT INTO `mod_level` (`level_id`, `level_code`, `level_name`, `level_father`, `level_type`, `level_desc`, `level_sta`, `user_id`, `user_fec`) VALUES
(1, 'S', 'Primaria', 1, 1, 'Primaria', 1, 1, '2015-06-07 16:27:17'),
(2, 'P', 'Secundaria', 2, 1, 'Secundaria', 1, 1, '2015-06-07 16:30:09'),
(3, 'P-1', 'Primer Grado', 1, 2, 'Primer Grado', 1, 1, '2015-06-07 16:30:09'),
(4, 'P-2', 'Segundo Grado', 1, 2, 'Segundo grado', 1, 1, '2015-06-07 16:30:54'),
(5, 'P-3', 'Tercer Grado', 1, 2, 'Tercer Grado', 1, 1, '2015-06-07 16:30:09'),
(6, 'P-4', 'Cuarto grado', 1, 2, 'Cuarto Grado', 1, 1, '2015-06-07 16:30:09'),
(7, 'P-5', 'Quinto Grado', 1, 2, 'Quinto Grado', 1, 1, '2015-06-07 17:36:47'),
(8, 'P-6', 'Sexto Grado', 1, 2, 'Sexto Grado', 1, 1, '2015-06-07 16:30:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_matter`
--

CREATE TABLE IF NOT EXISTS `mod_matter` (
  `matter_id` int(11) NOT NULL,
  `matter_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `matter_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `matter_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matter_sta` int(11) DEFAULT NULL,
  `matter_level` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_matter`
--

INSERT INTO `mod_matter` (`matter_id`, `matter_name`, `matter_code`, `matter_desc`, `matter_sta`, `matter_level`, `user_id`, `user_fec`) VALUES
(1, 'Lenguaje', 'L-3', 'Lenguaje Tercer Grado', 1, 5, 1, '2015-06-07 17:46:23'),
(2, 'Matematica', 'M-3', 'Matematica Tercer Grado', 1, 5, 1, '2015-06-07 17:46:45'),
(3, 'Matematica', 'M-4', 'Matematica Cuarto Grado', 1, 6, 1, '2015-06-07 17:47:11'),
(4, 'Lenguaje', 'L-4', 'Lenguaje Cuarto Grado', 1, 6, 1, '2015-06-07 17:48:02'),
(5, 'Matematica', 'M-5', 'Matematica Quinto Grado', 1, 7, 1, '2015-06-07 17:48:02'),
(6, 'Lenguaje', 'L-5', 'Lenguaje Quinto Grado', 1, 7, 1, '2015-06-20 14:55:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_note`
--

CREATE TABLE IF NOT EXISTS `mod_note` (
  `note_id` int(11) NOT NULL,
  `note_code` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_qty` double DEFAULT '0',
  `note_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_note`
--

INSERT INTO `mod_note` (`note_id`, `note_code`, `note_qty`, `note_class`, `user_id`, `user_fec`) VALUES
(1, 'A', 20, 'bg-success text-success', 1, '2015-06-22 15:09:26'),
(2, 'B', 18, 'bg-primary text-primary', 1, '2015-06-22 15:09:26'),
(3, 'C', 15, 'bg-info text-info', 1, '2015-06-22 15:09:26'),
(4, 'F', 10, 'bg-warning text-warning', 1, '2015-06-22 15:09:26'),
(5, 'D', 0, 'bg-danger text-danger', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_note_desc`
--

CREATE TABLE IF NOT EXISTS `mod_note_desc` (
  `desc_id` int(11) NOT NULL,
  `desc_text` varchar(2500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc_sta` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_note_desc`
--

INSERT INTO `mod_note_desc` (`desc_id`, `desc_text`, `desc_sta`, `user_id`, `user_fec`) VALUES
(1, 'EL ESTUDIANTE ALCANZO TODAS LAS COMPETENCIAS Y EN ALGUNOS CASOS SUPERO LAS EXPECTATIVAS PARA EL GRADO', 1, 1, '2015-06-07 17:46:23'),
(2, 'EL ESTUDIANTE ALCANZO TODAS LAS COMPETENCIAS PREVISTAS PARA EL GRADO', 1, 1, '2015-06-07 17:46:23'),
(3, 'EL ESTUDIANTE ALCANZO LA MAYORIA DE LAS COMPETENCIAS PREVISTAS PARA EL GRADO', 1, 1, '2015-06-07 17:46:23'),
(4, 'EL ESTUDIANTE ALCANZO ALGUNAS  DE LAS COMPETENCIAS PREVISTAS PARA EL GRADO, PERO REQUIERE DE UN PROCESO DE NIVELACION AL INiCIO DEL NUEVO AÑO ESCOLAR, PARA ALCANZAR LAS COMPETENCIAS RESTANTES', 1, 1, '2015-06-07 17:46:23'),
(5, 'EL ESTUDIANTE NO LOGRO ADQUIRIR LAS COMPETENCIAS REQUERIDAS PARA SER PROMOVIDO AL GRADO INMEDIATO SUPERIOR', 1, 1, '2015-06-07 17:46:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_period`
--

CREATE TABLE IF NOT EXISTS `mod_period` (
  `period_id` int(11) NOT NULL,
  `period_code` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period_sta` int(11) NOT NULL DEFAULT '1',
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_period`
--

INSERT INTO `mod_period` (`period_id`, `period_code`, `period_sta`, `period_start`, `period_end`, `user_id`, `user_fec`) VALUES
(1, 'Periodo 2012', 2, '2012-10-04', '2013-06-03', 1, '2015-06-20 07:44:42'),
(2, 'Periodo 2013', 2, '2013-10-15', '2014-06-17', 1, '2015-06-20 07:44:42'),
(3, 'Periodo 2014', 2, '2014-10-17', '2015-06-25', 1, '2015-06-20 07:44:42'),
(4, 'periodo 2015', 1, '2015-10-04', '2016-08-01', 1, '2015-07-03 12:58:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_section`
--

CREATE TABLE IF NOT EXISTS `mod_section` (
  `sec_id` int(11) NOT NULL,
  `sec_level` int(11) NOT NULL,
  `sec_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sec_sta` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_section`
--

INSERT INTO `mod_section` (`sec_id`, `sec_level`, `sec_code`, `sec_sta`, `user_id`, `user_fec`) VALUES
(1, 8, '03-BN', 1, 1, '2015-06-20 05:02:03'),
(2, 7, '05-BA', 1, 1, '2015-06-20 05:02:03'),
(3, 7, '05-CA', 1, 1, '2015-06-20 05:02:03'),
(4, 7, '05-DA', 1, 1, '2015-06-20 05:02:03'),
(5, 6, 'C4', 1, 1, '2015-06-26 17:58:20'),
(6, 3, 'C1', 1, 1, '2015-06-26 22:58:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_teacher_matter`
--

CREATE TABLE IF NOT EXISTS `mod_teacher_matter` (
  `item_id` int(11) NOT NULL,
  `third_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `matter_id` int(11) NOT NULL,
  `item_sta` int(11) NOT NULL,
  `item_assistance` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_teacher_matter`
--

INSERT INTO `mod_teacher_matter` (`item_id`, `third_id`, `period_id`, `sec_id`, `matter_id`, `item_sta`, `item_assistance`, `user_id`, `user_fec`) VALUES
(1, 2, 1, 1, 1, 3, 50, 1, '2015-06-03 19:35:31'),
(2, 2, 1, 1, 2, 3, 60, 1, '2015-06-03 19:35:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_teacher_matter_court`
--

CREATE TABLE IF NOT EXISTS `mod_teacher_matter_court` (
  `court_id` int(11) NOT NULL,
  `court_period` int(11) NOT NULL,
  `court_assists` int(11) DEFAULT '0',
  `teacher_third` int(11) NOT NULL,
  `court_sta` int(11) NOT NULL,
  `court_start` date DEFAULT NULL,
  `court_end` date DEFAULT NULL,
  `court_note` varchar(2500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_teacher_matter_court`
--

INSERT INTO `mod_teacher_matter_court` (`court_id`, `court_period`, `court_assists`, `teacher_third`, `court_sta`, `court_start`, `court_end`, `court_note`, `user_id`, `user_fec`) VALUES
(1, 1, 16, 1, 3, '2012-10-05', '2013-02-02', NULL, 1, '2013-02-02 00:00:00'),
(2, 1, 16, 2, 3, '2012-10-05', '2013-02-02', NULL, 1, '2013-02-02 00:00:00'),
(3, 2, 17, 1, 3, '2013-02-02', '2013-05-02', NULL, 1, '2013-05-02 00:00:00'),
(4, 2, 18, 2, 3, '2013-02-02', '2013-05-02', NULL, 1, '2013-05-02 00:00:00'),
(5, 3, 17, 1, 3, '2013-05-02', '2013-06-24', NULL, 1, '2013-06-24 00:00:00'),
(6, 3, 16, 2, 3, '2013-05-02', '2013-06-24', NULL, 1, '2013-06-24 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third`
--

CREATE TABLE IF NOT EXISTS `mod_third` (
  `third_id` int(11) NOT NULL,
  `third_type` int(11) DEFAULT NULL,
  `third_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_sta` int(11) DEFAULT NULL,
  `third_sta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_father` int(11) DEFAULT NULL,
  `third_nationallity` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'V',
  `third_rif` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_birth` date DEFAULT NULL,
  `third_sex` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third`
--

INSERT INTO `mod_third` (`third_id`, `third_type`, `third_name`, `third_lastname`, `third_sta`, `third_sta_description`, `third_father`, `third_nationallity`, `third_rif`, `third_website`, `third_description`, `third_phone`, `third_address`, `third_facebook`, `third_twitter`, `third_email`, `third_path`, `third_img`, `third_birth`, `third_sex`, `date_start`, `user_id`, `user_fec`) VALUES
(1, 1, 'Francisco', 'Caseres', 1, NULL, 1, 'V', '12121212', NULL, NULL, '55555555', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno de las industrias des cuando un impresor (N. del T. persona que se dedica a la imprenta)', NULL, NULL, 'frankc@school.com', '120150603194032', 'profile1.jpg', NULL, NULL, '2015-06-03 19:40:32', 1, '2015-06-07 10:49:23'),
(2, 2, 'Julio', 'Camacho', 1, NULL, 2, 'V', '44444444', NULL, NULL, '44444444', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno de las industrias des cuando un impresor (N. del T. persona que se dedica a la imprenta)', NULL, NULL, 'julio@school.com', '220150603212419', 'migue-carnet.jpg', NULL, NULL, '2015-06-03 21:24:19', 1, '2015-06-07 09:36:40'),
(3, 3, 'Cesar', 'Perez', 1, NULL, NULL, 'V', '55555555', NULL, '', '4444444444', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno de las industrias des cuando un impresor (N. del T. persona que se dedica a la imprenta)', NULL, NULL, 'cesar@school.com', NULL, NULL, NULL, NULL, NULL, 1, '2015-07-10 13:54:30'),
(4, 3, 'dsffsd', 'sdfsdffssdf', 3, NULL, NULL, 'E', '2342344', NULL, 'dsffsffds', '2344', 'wefwffew', NULL, NULL, 'ssfs@dfds.com', NULL, NULL, NULL, NULL, '2015-06-09 09:20:12', 1, '2015-06-09 09:20:12'),
(5, 3, 'dsffsd', 'sdfsdffssdf', 3, NULL, NULL, 'E', '2342344', NULL, 'dsffsffds', '2344', 'wefwffew', NULL, NULL, 'ssfs@dfds.com', NULL, NULL, NULL, NULL, '2015-06-09 09:20:12', 1, '2015-06-09 09:20:12'),
(6, 3, 'asdsdadd', 'asddads', 1, NULL, NULL, 'E', '12123123', NULL, 'afdsffsfd', '213231', 'sadasds', NULL, NULL, 'sassas@ggg.com', NULL, NULL, NULL, NULL, '2015-06-09 09:22:57', 1, '2015-06-09 09:22:57'),
(8, 7, 'dsdssds', 'uyuuy', NULL, NULL, NULL, 'V', '87878787', NULL, 'hjvbgvh', '34343', 'scccscs', NULL, NULL, 'mnmn@xfdfd.com', NULL, NULL, NULL, NULL, '2015-06-25 18:01:06', 1, '2015-06-25 18:01:06'),
(9, 3, 'jhon', 'carrion', 1, NULL, NULL, 'V', 'v2525555', NULL, 'tercer grado', '02122370398', 'los ruices', NULL, NULL, 'jhon23@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '2015-06-26 18:07:19'),
(10, 7, 'rosalia', 'parra carrion', NULL, NULL, NULL, 'V', 'v8963987', NULL, '', '02122370398', 'los ruices', NULL, NULL, 'rosa23@gmail.com', NULL, NULL, NULL, NULL, '2015-06-26 18:03:58', 1, '2015-06-26 18:03:58'),
(11, 3, 'paap', 'papapa', 1, NULL, NULL, 'V', '2342344', NULL, 'caracas', '0412uuuuuu', 'caracas', NULL, NULL, 'haoaooa@gamail.com', NULL, NULL, NULL, NULL, '2015-06-26 18:30:24', 1, '2015-06-26 18:30:24'),
(12, 4, 'papa1', 'papa1', 1, NULL, NULL, 'V', '123', NULL, 'caracas', '7777', 'caracas', NULL, NULL, 'hola@gmail.com', NULL, NULL, NULL, NULL, '2015-06-26 18:35:11', 1, '2015-06-26 18:35:11'),
(13, 4, 'james', 'rodriguez', NULL, NULL, NULL, 'V', 'v=======', NULL, 'caracas', '0125883696tt', 'caracas', NULL, NULL, 'james@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1, '2015-06-26 22:54:06'),
(14, 7, 'jairo', 'rodriguez', NULL, NULL, NULL, 'E', 'hola', NULL, 'caracas', 'hola', 'caracas', NULL, NULL, 'jairo22@gmail.com', NULL, NULL, NULL, NULL, '2015-06-26 23:01:06', 1, '2015-06-26 23:01:06'),
(15, 3, NULL, NULL, NULL, NULL, NULL, 'V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 23:01:49', 1, '2015-06-26 23:01:49'),
(16, 3, 'Jose Alfredo', 'Perez', 1, NULL, NULL, 'V', 'v1591069', NULL, 'caracas', 'jjjjjj', 'caracas', NULL, NULL, 'joseal@gmail.com', NULL, NULL, NULL, NULL, '2015-07-03 13:14:03', 1, '2015-07-03 13:14:03'),
(17, 3, NULL, NULL, NULL, NULL, NULL, 'V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-03 13:14:34', 1, '2015-07-03 13:14:34'),
(18, 3, 'vilma cecilia', 'carrion ', 1, NULL, NULL, 'V', 'v1168952', NULL, 'caracas', '04162856698', 'palo verde', NULL, NULL, 'vilmasmma@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '2015-07-03 13:25:46'),
(19, 3, 'david jesus', 'corro rodriguez', 1, NULL, NULL, 'V', 'v2025596', NULL, 'caracas', '04162368896', 'caracas', NULL, NULL, 'david22@gmail.com', NULL, NULL, NULL, NULL, '2015-07-03 13:28:04', 1, '2015-07-03 13:28:04'),
(20, 3, 'ricardo ', 'rodríguez', 1, NULL, NULL, 'V', 'v1498536', NULL, 'caracas', '04142369696', 'caracas', NULL, NULL, 'ricadordo@gmail.com', NULL, NULL, NULL, NULL, '2015-07-03 13:36:49', 1, '2015-07-03 13:36:49'),
(21, 7, 'enrique', 'rodriguez', NULL, NULL, NULL, 'V', 'v1678596', NULL, 'caracas', '04168859696', 'caracas', NULL, NULL, 'rodriguezrr@gmail.com', NULL, NULL, NULL, NULL, '2015-07-03 13:38:05', 1, '2015-07-03 13:38:05'),
(22, 7, 'rtrtrtrtrt', 'sdfdfsdfsdf', NULL, NULL, NULL, 'V', '43545435', NULL, 'ttertertert', '4534535', 'fghfghfghhg', NULL, NULL, 'rwerer@gg.com', NULL, NULL, NULL, NULL, '2015-07-06 15:59:12', 1, '2015-07-06 15:59:12'),
(24, 3, NULL, NULL, NULL, NULL, NULL, 'V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-10 10:17:11', 1, '2015-07-10 10:17:11'),
(25, 3, 'Luis Carlos', 'Villanueva Paz', 1, NULL, NULL, 'V', '20029943', NULL, 'addsdsd', '121221', 'assasasas', NULL, NULL, 'luis@luis.com', NULL, NULL, NULL, NULL, '2015-07-10 10:47:51', 1, '2015-07-10 10:47:51'),
(26, 3, 'Luis Carlos', 'Villanueva Paz', 1, NULL, NULL, 'V', '20029943', NULL, 'addsdsd', '121221', 'assasasas', NULL, NULL, 'luis@luis.com', NULL, NULL, NULL, NULL, '2015-07-10 10:47:51', 1, '2015-07-10 10:47:51'),
(27, 3, 'Jose Daniel', 'Villanueva Paz', 1, NULL, NULL, 'E', '19365771', NULL, 'DSDDSDSssdsdsdds', '1212121221', 'sasassa', NULL, NULL, 'jose@jose.com', NULL, NULL, NULL, NULL, '2015-07-10 10:50:01', 1, '2015-07-10 10:50:01'),
(28, 3, 'Jose Daniel', 'Villanueva Paz', 1, NULL, NULL, 'E', '19365771', NULL, 'DSDDSDSssdsdsdds', '1212121221', 'sasassa', NULL, NULL, 'jose@jose.com', NULL, NULL, NULL, NULL, '2015-07-10 10:50:01', 1, '2015-07-10 10:50:01'),
(29, 3, 'Luis David', 'Muñoz Paz', 1, NULL, NULL, 'V', '65656565', NULL, 'dsdsdsdsd', '232323', 'gvghcjxdxdfsxdxdg', NULL, NULL, 'david@david.com', NULL, NULL, NULL, NULL, NULL, 1, '2015-07-10 11:03:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_father`
--

CREATE TABLE IF NOT EXISTS `mod_third_father` (
  `rel_id` int(11) NOT NULL,
  `third_id` int(11) DEFAULT NULL,
  `father_id` int(11) DEFAULT NULL,
  `rel_type` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_father`
--

INSERT INTO `mod_third_father` (`rel_id`, `third_id`, `father_id`, `rel_type`, `user_id`, `user_fec`) VALUES
(2, 3, 7, 1, 1, '2015-06-25 16:07:10'),
(3, 3, 8, 1, 1, '2015-06-25 18:01:06'),
(4, 3, 9, 1, 1, '2015-06-25 18:13:59'),
(5, 9, 10, 1, 1, '2015-06-26 18:03:58'),
(7, 20, 21, 1, 1, '2015-07-03 13:38:05'),
(8, 5, 22, 1, 1, '2015-07-06 15:59:12'),
(9, 0, 23, 1, 1, '2015-07-10 10:16:59'),
(10, 29, 30, 1, 1, '2015-07-10 10:58:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_matter`
--

CREATE TABLE IF NOT EXISTS `mod_third_matter` (
  `item_id` int(11) NOT NULL,
  `third_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `matter_id` int(11) NOT NULL,
  `item_sta` int(11) NOT NULL,
  `item_note` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_start` date DEFAULT NULL,
  `item_end` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_matter`
--

INSERT INTO `mod_third_matter` (`item_id`, `third_id`, `period_id`, `sec_id`, `matter_id`, `item_sta`, `item_note`, `item_start`, `item_end`, `user_id`, `user_fec`) VALUES
(1, 3, 1, 1, 1, 3, 'C', '2012-10-05', '2013-06-11', 1, '2015-06-03 19:35:31'),
(2, 3, 1, 1, 2, 3, 'B', '2012-10-05', '2013-06-11', 1, '2015-06-03 19:35:34'),
(5, 3, 3, 4, 5, 1, 'C', '2015-06-25', NULL, 1, '2015-06-25 11:10:05'),
(6, 3, 3, 4, 6, 1, 'B', '2015-06-25', NULL, 1, '2015-06-25 11:10:00'),
(7, 9, 3, 0, 1, 1, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:54:15'),
(8, 9, 3, 0, 2, 1, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:54:15'),
(10, 9, 4, 0, 3, 1, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:56:49'),
(11, 9, 4, 0, 4, 1, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:56:49'),
(12, 15, 4, 0, 1, 1, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(13, 15, 4, 0, 2, 1, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(14, 17, 4, 0, 3, 1, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(15, 17, 4, 0, 4, 1, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(16, 20, 4, 0, 5, 1, NULL, '2015-07-04', NULL, 1, '2015-07-04 22:20:07'),
(17, 20, 4, 0, 6, 1, NULL, '2015-07-04', NULL, 1, '2015-07-04 22:20:07'),
(19, 19, 4, 0, 5, 1, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:14'),
(20, 19, 4, 0, 6, 1, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:14'),
(22, 18, 4, 4, 5, 1, 'B', '2015-07-04', NULL, 1, '2015-07-04 23:37:52'),
(23, 18, 4, 3, 6, 1, 'C', '2015-07-04', NULL, 1, '2015-07-04 23:37:49'),
(25, 3, 4, 4, 5, 1, NULL, '2015-07-07', NULL, 1, '2015-07-10 09:46:53'),
(26, 3, 4, 3, 6, 1, NULL, '2015-07-07', NULL, 1, '2015-07-10 09:46:48'),
(28, 5, 4, 0, 5, 1, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:48'),
(29, 5, 4, 0, 6, 1, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:48'),
(31, 24, 4, 0, 5, 1, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(32, 24, 4, 0, 6, 1, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(34, 29, 4, 3, 5, 1, NULL, '2015-07-10', NULL, 1, '2015-07-10 11:03:48'),
(35, 29, 4, 3, 6, 1, NULL, '2015-07-10', NULL, 1, '2015-07-10 11:03:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_matter_court`
--

CREATE TABLE IF NOT EXISTS `mod_third_matter_court` (
  `court_id` int(11) NOT NULL,
  `court_period` int(11) NOT NULL,
  `court_assists` int(11) DEFAULT '0',
  `matter_third` int(11) NOT NULL,
  `court_sta` int(11) NOT NULL,
  `court_note` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `court_desc` varchar(2500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `court_start` date DEFAULT NULL,
  `court_end` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_matter_court`
--

INSERT INTO `mod_third_matter_court` (`court_id`, `court_period`, `court_assists`, `matter_third`, `court_sta`, `court_note`, `court_desc`, `court_start`, `court_end`, `user_id`, `user_fec`) VALUES
(1, 1, 15, 1, 3, 'A', NULL, '2012-10-05', '2013-02-02', 1, '2013-02-02 00:00:00'),
(2, 1, 16, 2, 3, 'B', NULL, '2012-10-05', '2013-02-02', 1, '2013-02-02 00:00:00'),
(3, 2, 17, 1, 3, 'B', NULL, '2013-02-02', '2013-05-02', 1, '2013-05-02 00:00:00'),
(4, 2, 18, 2, 3, 'A', NULL, '2013-02-02', '2013-05-02', 1, '2013-05-02 00:00:00'),
(5, 3, 13, 1, 3, 'F', NULL, '2013-05-02', '2013-06-24', 1, '2013-06-24 00:00:00'),
(6, 3, 13, 2, 3, 'C', NULL, '2013-05-02', '2013-06-24', 1, '2013-06-24 00:00:00'),
(7, 1, 0, 5, 1, 'F', NULL, '2015-06-05', '2015-06-01', 1, '2015-06-25 10:26:13'),
(8, 2, 0, 5, 1, 'B', NULL, '2015-06-04', NULL, 1, '2015-06-25 10:26:10'),
(9, 3, 0, 5, 1, 'C', NULL, '2015-06-02', '2015-06-02', 1, '2015-06-25 10:26:08'),
(10, 1, 0, 6, 1, 'D', NULL, '2015-06-25', NULL, 1, '2015-06-25 10:28:38'),
(11, 2, 0, 6, 1, 'B', NULL, '2015-06-25', NULL, 1, '2015-06-25 10:28:33'),
(12, 3, 0, 6, 2, 'C', 'dnvjdbdjbvs,bv,sdbvkdbvsdbdhsdvhb', '2015-06-25', '2015-06-04', 1, '2015-06-25 18:15:12'),
(13, 1, 0, 7, 1, NULL, NULL, '2015-06-26', '2015-12-01', 1, '2015-06-26 23:06:47'),
(14, 2, 0, 7, 1, NULL, NULL, '2016-01-01', '2016-05-00', 1, '2015-06-26 23:08:18'),
(15, 3, 0, 7, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:54:15'),
(16, 1, 0, 8, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:54:15'),
(17, 2, 0, 8, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:54:15'),
(18, 3, 0, 8, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:54:15'),
(19, 1, 0, 10, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:56:50'),
(20, 2, 0, 10, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:56:50'),
(21, 3, 0, 10, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 17:56:50'),
(22, 1, 1, 11, 1, NULL, NULL, '2015-06-26', '2015-12-02', 1, '2015-06-26 18:05:23'),
(23, 2, 4, 11, 1, NULL, NULL, '2016-01-01', '2016-04-01', 1, '2015-06-26 18:05:41'),
(24, 3, 1, 11, 1, 'B', NULL, '2016-04-01', '2016-08-01', 1, '2015-06-26 18:06:24'),
(25, 1, 0, 12, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(26, 2, 0, 12, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(27, 3, 0, 12, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(28, 1, 0, 13, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(29, 2, 0, 13, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(30, 3, 0, 13, 1, NULL, NULL, '2015-06-26', NULL, 1, '2015-06-26 23:01:50'),
(31, 1, 0, 14, 1, NULL, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(32, 2, 0, 14, 1, NULL, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(33, 3, 0, 14, 1, NULL, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(34, 1, 0, 15, 1, NULL, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(35, 2, 0, 15, 1, NULL, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(36, 3, 0, 15, 1, NULL, NULL, '2015-07-03', NULL, 1, '2015-07-03 13:14:34'),
(37, 1, 0, 16, 1, NULL, NULL, '2015-07-05', '2015-07-05', 1, '2015-07-06 15:38:47'),
(38, 2, 0, 16, 1, NULL, NULL, '2015-07-04', '2015-07-02', 1, '2015-07-06 15:38:44'),
(39, 3, 0, 16, 1, NULL, 'Es una niña creativa y de muestra compañerismo. Coopera en la realización de trabajos en el aula. Le gusta intervenir en la discusión de temas que le causan interés. Identifica palabras que pertenecen a la misma familia.  Lee oraciones completas y  toma dictado. Buena caligrafía. Resuelve adiciones y sustracciones de una cifra, oralmente y escritas. Escribe los números del 1 al 100.Realiza dibujos sobre Simón Bolívar y le gusta escuchar historias relacionadas con su vida. Describe elementos del ambiente. Relaciona el reciclaje como medio para mantener un ambiente limpio y sano. Realiza manualidades y maquetas con material reciclable. Ejecuta buenas exposiciones sobre el proyecto.', '2015-07-04', '2015-07-04', 1, '2015-07-06 15:45:45'),
(40, 1, 0, 17, 1, NULL, NULL, NULL, '2015-09-04', 1, '2015-07-06 15:49:58'),
(41, 2, 0, 17, 1, NULL, NULL, '2016-11-06', NULL, 1, '2015-07-06 15:57:32'),
(42, 3, 0, 17, 1, NULL, NULL, '2015-07-03', '0215-06-05', 1, '2015-07-06 15:57:21'),
(43, 1, 0, 19, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:15'),
(44, 2, 0, 19, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:15'),
(45, 3, 0, 19, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:15'),
(46, 1, 0, 20, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:15'),
(47, 2, 0, 20, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:15'),
(48, 3, 0, 20, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:32:15'),
(49, 1, 0, 22, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:33:47'),
(50, 2, 0, 22, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:33:47'),
(51, 3, 0, 22, 1, NULL, NULL, '2015-07-04', NULL, 1, '2015-07-04 23:33:47'),
(52, 1, 30, 23, 1, NULL, NULL, '2015-07-03', '2015-07-05', 1, '2015-07-04 23:38:50'),
(53, 2, 10, 23, 1, NULL, NULL, '2015-07-02', '2015-08-06', 1, '2015-07-04 23:38:35'),
(54, 3, 25, 23, 1, 'B', 'sdsdsdsdsd', '2015-07-04', '2015-07-05', 1, '2015-07-05 21:10:12'),
(55, 1, 0, 25, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 13:34:21'),
(56, 2, 0, 25, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 13:34:22'),
(57, 3, 0, 25, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 13:34:22'),
(58, 1, 0, 26, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 13:34:22'),
(59, 2, 0, 26, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 13:34:22'),
(60, 3, 0, 26, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 13:34:22'),
(61, 1, 0, 28, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:49'),
(62, 2, 0, 28, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:49'),
(63, 3, 0, 28, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:49'),
(64, 1, 0, 29, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:49'),
(65, 2, 0, 29, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:49'),
(66, 3, 0, 29, 1, NULL, NULL, '2015-07-07', NULL, 1, '2015-07-07 18:07:50'),
(67, 1, 0, 31, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(68, 2, 0, 31, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(69, 3, 0, 31, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(70, 1, 0, 32, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(71, 2, 0, 32, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(72, 3, 0, 32, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:17:12'),
(73, 1, 0, 34, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:58:29'),
(74, 2, 0, 34, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:58:29'),
(75, 3, 0, 34, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:58:29'),
(76, 1, 0, 35, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:58:29'),
(77, 2, 0, 35, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:58:29'),
(78, 3, 0, 35, 1, NULL, NULL, '2015-07-10', NULL, 1, '2015-07-10 10:58:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_matter_sta`
--

CREATE TABLE IF NOT EXISTS `mod_third_matter_sta` (
  `sta_id` int(11) NOT NULL,
  `sta_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sta_desc` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_matter_sta`
--

INSERT INTO `mod_third_matter_sta` (`sta_id`, `sta_name`, `sta_desc`, `user_id`, `user_fec`) VALUES
(1, 'Inscrita', 'Inscrita', 1, '2015-06-03 19:35:31'),
(2, 'Aprobada', 'Aprobada', 1, '2015-06-03 19:35:34'),
(3, 'Reprobada', 'Reprobada', 1, '2015-06-03 19:35:37'),
(4, 'Reptiiendo', 'Reptiiendo', 1, '2015-06-03 19:35:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_rel_type`
--

CREATE TABLE IF NOT EXISTS `mod_third_rel_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_rel_type`
--

INSERT INTO `mod_third_rel_type` (`type_id`, `type_name`, `type_desc`, `user_id`, `user_fec`) VALUES
(1, 'Padre', 'Padre', 1, '2011-05-05 13:44:11'),
(2, 'Madre', 'Madre', 1, '2011-05-05 13:44:11'),
(3, 'Abuela', 'Abuela', 1, '2011-05-05 13:44:11'),
(4, 'Abuelo', 'Abuelo', 1, '2011-05-05 13:44:11'),
(5, 'Tia', 'Tia', 1, '2011-05-05 13:44:11'),
(6, 'Tio', 'Tio', 1, '2011-05-05 13:44:11'),
(7, 'Primo', 'Primo', 1, '2011-05-05 13:44:11'),
(8, 'Prima', 'Prima', 1, '2011-05-05 13:44:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_status`
--

CREATE TABLE IF NOT EXISTS `mod_third_status` (
  `sta_id` int(11) NOT NULL,
  `sta_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sta_desc` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_status`
--

INSERT INTO `mod_third_status` (`sta_id`, `sta_name`, `sta_desc`, `user_id`, `user_fec`) VALUES
(1, 'Activo', 'Activo', 1, '2015-06-03 19:35:31'),
(2, 'Inactivo', 'Inactivo', 1, '2015-06-03 19:35:34'),
(3, 'Suspendido', 'Suspendido', 1, '2015-06-03 19:35:37'),
(4, 'Expulsado', 'Expulsado', 1, '2015-06-03 19:35:53'),
(5, 'Graduado', 'Graduado', 1, '2015-06-03 19:36:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_third_type`
--

CREATE TABLE IF NOT EXISTS `mod_third_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mod_third_type`
--

INSERT INTO `mod_third_type` (`type_id`, `type_name`, `type_desc`, `user_id`, `user_fec`) VALUES
(1, 'Director', 'Director del Plantel', 1, '2011-05-05 13:44:11'),
(2, 'Profesor', 'Profesor del Platel', 1, '2011-05-05 13:44:11'),
(3, 'Alumno', 'Alumno del Plantel', 1, '2011-05-05 13:44:11'),
(4, 'Sub-Director', 'Sub-Director del Plantel', 1, '2011-05-05 13:44:11'),
(5, 'Cordinador', 'Coordinadores', 1, '2011-05-05 13:44:11'),
(6, 'Orientador', 'Orientadores', 1, '2011-05-05 13:44:11'),
(7, 'Representante', 'Representantes', 1, '2011-05-05 13:44:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_accion`
--

CREATE TABLE IF NOT EXISTS `sys_accion` (
  `accion_id` int(11) NOT NULL,
  `accion_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `accion_code` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_accion`
--

INSERT INTO `sys_accion` (`accion_id`, `accion_name`, `accion_code`) VALUES
(1, 'Ver', 'V'),
(2, 'Insertar', 'I'),
(3, 'Actualizar', 'U'),
(4, 'Borrar', 'D'),
(5, 'Imprimir', 'P'),
(6, 'Exportar', 'X'),
(7, 'Cambiar Estatus', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_breadcumbs`
--

CREATE TABLE IF NOT EXISTS `sys_breadcumbs` (
  `bread_id` int(11) NOT NULL,
  `mod_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bread_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bread_view` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bread_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bread_accion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bread_father` int(11) NOT NULL,
  `bread_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_breadcumbs`
--

INSERT INTO `sys_breadcumbs` (`bread_id`, `mod_id`, `bread_type`, `bread_view`, `bread_title`, `bread_accion`, `bread_father`, `bread_icon`) VALUES
(1, NULL, 'PR', NULL, 'Inicio', 'index.php', 0, 'glyphicon-home'),
(2, '3', 'MOD', NULL, 'Seguridad', 'index.php?module=security&vista=usersList', 1, 'glyphicon-lock'),
(3, NULL, 'SUB', 'usersList', 'Lista de Usuarios', 'index.php?module=security&vista=usersList', 2, 'glyphicon-list'),
(4, NULL, 'MEN', 'usersEdit', 'Editar Usuario', NULL, 2, 'glyphicon-edit'),
(5, NULL, 'SUB', 'rulesList', 'Lista de Roles', 'index.php?module=security&vista=rulesList', 2, 'glyphicon-list'),
(6, NULL, 'MEN', 'rulesEdit', 'Editar Rol', NULL, 2, 'glyphicon-edit'),
(7, '5', 'MOD', NULL, 'Terceros', 'index.php?module=third&vista=teachersList', 1, 'glyphicon-user'),
(8, NULL, 'SUB', 'teachersList', 'Lista de Profesores', 'index.php?module=third&vista=teachersList', 7, 'glyphicon-list'),
(9, NULL, 'MEN', 'teachersEdit', 'Editar Profesor', 'index.php?module=third&vista=teachersEdit', 7, 'glyphicon-edit'),
(10, NULL, 'SUB', 'studentsList', 'Lista de Estudiantes', 'index.php?module=third&vista=studentsList', 7, 'glyphicon-list'),
(11, NULL, 'MEN', 'studentsEdit', 'Editar Estudiante', 'index.php?module=third&vista=studentsEdit', 7, 'glyphicon-edit'),
(12, NULL, 'SUB', 'employeesList', 'Lista Empleados', 'index.php?module=third&vista=employeesList', 7, 'glyphicon-list'),
(13, NULL, 'MEN', 'employeesEdit', 'Editar Empleado', 'index.php?module=third&vista=employeesEdit', 7, 'glyphicon-edit'),
(14, '6', 'MOD', NULL, 'Materias', 'index.php?module=matter&vista=mattersList', 1, 'glyphicon-book'),
(15, NULL, 'SUB', 'mattersList', 'Lista de Materias', 'index.php?module=matter&vista=mattersList', 14, 'glyphicon-list'),
(16, NULL, 'MEN', 'mattersEdit', 'Editar Materias', 'index.php?module=matter&vista=mattersEdit', 14, 'glyphicon-edit'),
(17, '7', 'MOD', NULL, 'Niveles', NULL, 1, 'glyphicon-signal'),
(18, NULL, 'SUB', 'levelsList', 'Lista de Niveles', 'index.php?module=level&vista=levelsList', 17, 'glyphicon-list'),
(19, NULL, 'MEN', 'levelsEdit', 'Editar Nivel', 'index.php?module=level&vista=levelsEdit', 17, 'glyphicon-edit'),
(20, '9', 'MOD', NULL, 'Seciones', NULL, 1, 'glyphicon-tags'),
(21, NULL, 'SUB', 'sectionsList', 'Lista de Secciones', 'index.php?module=section&vista=secList', 20, 'glyphicon-list'),
(22, NULL, 'MEN', 'sectionsEdit', 'Editar Seccion', 'index.php?module=section&vista=secConf', 20, 'glyphicon-edit'),
(23, '10', 'MOD', NULL, 'Periodos', NULL, 1, 'glyphicon-time'),
(24, NULL, 'SUB', 'periodsList', 'Lista de Periodos', 'index.php?module=period&vista=periodsList', 23, 'glyphicon-list'),
(25, NULL, 'MEN', 'periodsEdit', 'Editar Periodo', 'index.php?module=period&vista=periodsEdit', 23, 'glyphicon-edit'),
(26, '8', 'MOD', NULL, 'Inscripciones', NULL, 1, 'glyphicon-level-up'),
(27, NULL, 'SUB', 'enrollsList', 'Historial Inscripciones', 'index.php?module=enroll&vista=enrollsList', 26, 'glyphicon-list'),
(28, NULL, 'MEN', 'enrollsEdit', 'Nueva Inscripcion', 'index.php?module=enroll&vista=enrollsEdit', 26, 'glyphicon-edit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_components`
--

CREATE TABLE IF NOT EXISTS `sys_components` (
  `comp_id` int(11) NOT NULL,
  `comp_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comp_mod` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'ALL',
  `comp_sta` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_components`
--

INSERT INTO `sys_components` (`comp_id`, `comp_name`, `comp_mod`, `comp_sta`) VALUES
(1, 'nav-top', 'ALL', 'S'),
(2, 'nav-left', 'ALL', 'S'),
(3, 'footer', 'ALL', 'S'),
(4, 'breadcrumbs', 'ALL', 'S'),
(5, 'profile', 'ALL', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_menu`
--

CREATE TABLE IF NOT EXISTS `sys_menu` (
  `men_id` int(11) NOT NULL,
  `men_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `men_title` varchar(25) COLLATE utf8_unicode_ci DEFAULT '',
  `men_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `men_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `men_class` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'L',
  `men_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'URL',
  `men_accion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `men_sta` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  `men_private` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `men_target` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `men_order` int(11) DEFAULT NULL,
  `men_father` int(11) DEFAULT NULL,
  `men_level` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_fec` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_menu`
--

INSERT INTO `sys_menu` (`men_id`, `men_name`, `men_title`, `men_desc`, `men_icon`, `men_class`, `men_type`, `men_accion`, `men_sta`, `men_private`, `men_target`, `men_order`, `men_father`, `men_level`, `user_id`, `user_fec`) VALUES
(1, 'PRINCIPAL', '', NULL, NULL, '', 'MEN', '', 'S', 'N', NULL, NULL, NULL, NULL, 1, '2015-02-03 18:56:46'),
(2, 'Configuracion', '', NULL, 'glyphicon-cog', 'L', 'SUB', '', 'S', 'N', NULL, 1, 1, '1-1', 1, '2015-02-03 18:56:46'),
(3, 'Roles', '', NULL, 'glyphicon-tasks', 'L', 'URL', 'index.php?module=security&vista=rulesList', 'S', 'N', NULL, 1, 2, '1-1-1', 1, '2015-02-03 18:56:46'),
(4, 'Usuarios', '', NULL, 'glyphicon-user', 'L', 'URL', 'index.php?module=security&vista=usersList', 'S', 'N', NULL, 2, 2, '1-1-2', 1, '2015-02-03 18:56:46'),
(5, 'Terceros', '', NULL, 'glyphicon-user', 'L', 'SUB', NULL, 'S', 'N', NULL, 2, 1, '1-2', 1, '2015-02-03 18:56:46'),
(6, 'Profesores', '', NULL, 'glyphicon glyphicon-apple', 'L', 'URL', 'index.php?module=third&vista=teachersList', 'S', 'N', NULL, 1, 5, '1-2-1', 1, '2015-02-03 18:56:46'),
(7, 'Alumnos', '', NULL, 'glyphicon-education', 'L', 'URL', 'index.php?module=third&vista=studentsList', 'S', 'N', NULL, 2, 5, '1-2-2', 1, '2015-02-03 18:56:46'),
(8, 'Empleados', '', NULL, 'glyphicon-credit-card', 'L', 'URL', 'index.php?module=third&vista=employeesList', 'S', 'N', NULL, 3, 5, '1-2-3', 1, '2015-02-03 18:56:46'),
(9, 'Mensajes', '', NULL, 'glyphicon-envelope', 'T', 'ICO', NULL, 'S', 'N', NULL, 1, 1, '1-1', 1, '2015-02-03 18:56:46'),
(10, 'Notificaciones', '', NULL, 'glyphicon-bell', 'T', 'ICO', NULL, 'S', 'N', NULL, 2, 1, '1-2', 1, '2015-02-03 18:56:46'),
(11, 'Cotenidos', '', NULL, 'glyphicon glyphicon-bookmark', 'L', 'SUB', NULL, 'S', 'N', NULL, 3, 1, '1-3', 1, '2015-02-03 18:56:46'),
(12, 'Materias', '', NULL, 'glyphicon-book', 'L', 'URL', 'index.php?module=matter&vista=mattersList', 'S', 'N', NULL, 1, 11, '1-3-1', 1, '2015-02-03 18:56:46'),
(13, 'Niveles', '', NULL, 'glyphicon-signal', 'L', 'URL', 'index.php?module=level&vista=levelsList', 'S', 'N', NULL, 2, 11, '1-3-2', 1, '2015-02-03 18:56:46'),
(14, 'Secciones', '', NULL, 'glyphicon-tags', 'L', 'URL', 'index.php?module=section&vista=sectionsList', 'S', 'N', NULL, 3, 11, '1-3-3', 1, '2015-02-03 18:56:46'),
(15, 'Inscripciones', '', NULL, 'glyphicon-folder-open', 'L', 'SUB', NULL, 'S', 'N', NULL, 4, 1, '1-4', 1, '2015-02-03 18:56:46'),
(16, 'Inscribir Estudiante', '', NULL, 'glyphicon-level-up', 'L', 'URL', 'index.php?module=enroll&vista=enrollsList', 'S', 'N', NULL, 1, 15, '1-4-1', 1, '2015-02-03 18:56:46'),
(17, 'Periodos', '', NULL, 'glyphicon-time', 'L', 'URL', 'index.php?module=period&vista=periodsList', 'S', 'N', NULL, 2, 15, '1-4-2', 1, '2015-02-03 18:56:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_module`
--

CREATE TABLE IF NOT EXISTS `sys_module` (
  `mod_id` int(11) NOT NULL,
  `mod_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mod_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod_desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod_sta` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `mod_lock` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `mod_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_module`
--

INSERT INTO `sys_module` (`mod_id`, `mod_name`, `mod_title`, `mod_desc`, `mod_sta`, `mod_lock`, `mod_type`) VALUES
(1, 'login', 'Login', NULL, 'S', 'N', 'P'),
(2, 'dashboard', 'Inicio', NULL, 'S', 'S', 'P'),
(3, 'security', 'Seguridad', NULL, 'S', 'S', 'M'),
(4, 'error', 'Errores', NULL, 'S', 'N', 'E'),
(5, 'third', 'Terceros', NULL, 'S', 'S', 'M'),
(6, 'matter', 'Materias', NULL, 'S', 'S', 'M'),
(7, 'level', 'Niveles', NULL, 'S', 'S', 'M'),
(8, 'enroll', 'Inscripciones', NULL, 'S', 'S', 'M'),
(9, 'section', 'Secciones', NULL, 'S', 'S', 'M'),
(10, 'period', 'Periodos', NULL, 'S', 'S', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_rule`
--

CREATE TABLE IF NOT EXISTS `sys_rule` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `rule_sta` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `rule_lock` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `rule_desc` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `rule_type` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_rule`
--

INSERT INTO `sys_rule` (`rule_id`, `rule_name`, `rule_sta`, `rule_lock`, `rule_desc`, `rule_type`) VALUES
(1, 'system', 'S', 'S', '', 0),
(2, 'Profesor', 'S', 'N', '', 2),
(3, 'Alumno', 'S', 'N', '', 3),
(4, 'Director', 'S', 'N', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_rule_accion`
--

CREATE TABLE IF NOT EXISTS `sys_rule_accion` (
  `rule_id` int(11) NOT NULL,
  `accion_type` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MEN',
  `accion_item` int(11) NOT NULL,
  `accion` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_fec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_rule_accion`
--

INSERT INTO `sys_rule_accion` (`rule_id`, `accion_type`, `accion_item`, `accion`, `user_id`, `user_fec`) VALUES
(1, 'MEN', 1, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 2, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 3, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 4, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 5, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 6, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 7, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 8, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 9, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 10, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 11, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 12, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 13, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 14, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 15, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 16, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 17, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 18, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MEN', 19, 'E', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 1, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 2, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 3, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 4, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 5, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 6, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 7, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 8, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 9, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(1, 'MOD', 10, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 1, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 5, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 7, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 8, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 9, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 10, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 11, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MEN', 12, 'E', 1, '2015-06-14 19:58:28'),
(2, 'MOD', 1, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(2, 'MOD', 2, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(2, 'MOD', 4, 'V', 1, '2015-06-14 19:58:28'),
(2, 'MOD', 5, 'V;P;X', 1, '2015-06-14 19:58:28'),
(2, 'MOD', 6, 'V;P;X', 1, '2015-06-14 19:58:28'),
(2, 'MOD', 7, 'V;P;X', 1, '2015-06-14 19:58:28'),
(3, 'MEN', 1, 'E', 1, '2015-06-14 19:58:28'),
(3, 'MEN', 8, 'E', 1, '2015-06-14 19:58:28'),
(3, 'MEN', 9, 'E', 1, '2015-06-14 19:58:28'),
(3, 'MEN', 10, 'E', 1, '2015-06-14 19:58:28'),
(3, 'MEN', 11, 'E', 1, '2015-06-14 19:58:28'),
(3, 'MEN', 12, 'E', 1, '2015-06-14 19:58:28'),
(3, 'MOD', 1, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(3, 'MOD', 2, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(3, 'MOD', 6, 'V;P', 1, '2015-06-14 19:58:28'),
(3, 'MOD', 7, 'V;P', 1, '2015-06-14 19:58:28'),
(4, 'MEN', 1, 'X;S;V;I;U;D;P', 1, '2015-06-14 19:58:28'),
(4, 'MEN', 2, 'E', 1, '2015-06-17 18:39:28'),
(4, 'MEN', 3, 'E', 1, '2015-06-17 18:39:28'),
(4, 'MEN', 4, 'E', 1, '2015-06-17 18:39:28'),
(4, 'MEN', 5, 'E', 1, '2015-06-14 19:58:28'),
(4, 'MEN', 6, 'E', 1, '2015-06-14 19:58:28'),
(4, 'MEN', 7, 'E', 1, '2015-06-14 19:58:28'),
(4, 'MEN', 8, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(4, 'MEN', 9, 'E', 1, '2015-06-17 18:39:28'),
(4, 'MEN', 10, 'E', 1, '2015-06-17 18:39:28'),
(4, 'MEN', 11, 'E', 1, '2015-06-17 20:45:27'),
(4, 'MEN', 12, 'E', 1, '2015-06-17 20:45:27'),
(4, 'MEN', 13, 'E', 1, '2015-06-17 20:45:27'),
(4, 'MEN', 14, 'E', 1, '2015-06-17 20:45:22'),
(4, 'MEN', 15, 'E', 1, '2015-06-17 20:45:22'),
(4, 'MEN', 16, 'E', 1, '2015-06-17 20:45:22'),
(4, 'MOD', 1, 'X;S;V;I;U;D;P', 1, '2015-06-14 19:58:28'),
(4, 'MOD', 2, 'V;I;U;D;P;X;S', 1, '2015-06-16 21:17:29'),
(4, 'MOD', 3, 'V;I;U;D;P;X;S', 1, '2015-06-16 21:17:29'),
(4, 'MOD', 4, 'V;I;U;D;P;X;S', 1, '2015-06-16 21:17:29'),
(4, 'MOD', 5, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(4, 'MOD', 6, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(4, 'MOD', 7, 'V;I;U;D;P;X;S', 1, '2015-06-14 19:58:28'),
(4, 'MOD', 8, 'V;I;U;D;P;X;S', 1, '2015-06-16 20:57:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_user`
--

CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` int(11) NOT NULL,
  `user_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_sta` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `user_lock` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `rule_id` int(11) NOT NULL,
  `ter_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `third_id` int(11) DEFAULT NULL,
  `user_try` int(1) NOT NULL DEFAULT '0',
  `user_asq` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_answ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sys_user`
--

INSERT INTO `sys_user` (`user_id`, `user_title`, `user_email`, `user_name`, `user_pass`, `registerDate`, `lastvisitDate`, `user_sta`, `user_lock`, `rule_id`, `ter_name`, `third_id`, `user_try`, `user_asq`, `user_answ`) VALUES
(1, 'Administrado Sistema', 'villanueva.danielx@gmail.com', 'administrador', '123qwe', '2015-05-30 16:34:03', '2015-10-02 16:59:12', 'S', 'N', 1, 'Villanueva', NULL, 0, NULL, NULL),
(2, 'Julio Espinal', 'julio@school.com', 'julio', '123456', '2015-05-30 16:34:06', '2015-10-01 15:47:36', 'N', 'N', 2, 'Julio Espinal', 2, 0, 'Tu Primer amor', 'andrexy'),
(3, 'Cesar Pacheco', 'cesar@school.com', 'cesar', '123', '2015-05-30 16:35:05', '2015-10-02 11:14:52', 'N', 'N', 3, 'Cesar Pacheco', 3, 0, NULL, NULL),
(4, 'Director Francisco', 'frank@school.com', 'frank', '123', '2015-05-30 16:35:05', '2015-06-26 18:18:02', 'S', 'N', 4, 'Frank Caseres', 1, 0, NULL, NULL),
(5, 'Sobier Ramirez', 'sobiesky27@hotmail.com', 'sobier', '123', '2015-06-26 18:19:28', '2015-09-29 11:02:43', 'S', 'N', 4, 'Sobier Ramirez', NULL, 0, NULL, NULL),
(6, 'Maria Paz', 'maria@paz.com', 'maria', '123', '2015-10-02 13:24:58', '2015-10-02 13:24:58', 'S', 'N', 2, 'Maria Paz', NULL, 0, NULL, NULL),
(7, 'Pepeto Peres', 'pepe@to.com', 'pepe', '[C@49973a3d', '2015-10-02 13:40:04', '2015-10-02 13:40:04', 'S', 'N', 3, 'Pepeto Peres', NULL, 0, 'Nacionalidad de tu Madre', 'colombiana');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mod_enroll`
--
ALTER TABLE `mod_enroll`
  ADD PRIMARY KEY (`enroll_id`), ADD KEY `mod_enroll_level_id` (`level_id`), ADD KEY `mod_enrolll_third_id` (`third_id`);

--
-- Indices de la tabla `mod_level`
--
ALTER TABLE `mod_level`
  ADD PRIMARY KEY (`level_id`), ADD KEY `mod_level_level_id` (`level_father`);

--
-- Indices de la tabla `mod_matter`
--
ALTER TABLE `mod_matter`
  ADD PRIMARY KEY (`matter_id`), ADD KEY `mod_matter_level_id` (`matter_level`);

--
-- Indices de la tabla `mod_note`
--
ALTER TABLE `mod_note`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `mod_note_desc`
--
ALTER TABLE `mod_note_desc`
  ADD PRIMARY KEY (`desc_id`);

--
-- Indices de la tabla `mod_period`
--
ALTER TABLE `mod_period`
  ADD PRIMARY KEY (`period_id`);

--
-- Indices de la tabla `mod_section`
--
ALTER TABLE `mod_section`
  ADD PRIMARY KEY (`sec_id`), ADD KEY `mod_section_level_id` (`sec_level`);

--
-- Indices de la tabla `mod_teacher_matter`
--
ALTER TABLE `mod_teacher_matter`
  ADD PRIMARY KEY (`item_id`), ADD KEY `mod_teacher_matter_third_id` (`third_id`), ADD KEY `mod_teacher_matter_sec_id` (`sec_id`), ADD KEY `mod_teacher_matter_period_id` (`period_id`), ADD KEY `mod_teacher_matter_matter_id` (`matter_id`);

--
-- Indices de la tabla `mod_teacher_matter_court`
--
ALTER TABLE `mod_teacher_matter_court`
  ADD PRIMARY KEY (`court_id`), ADD KEY `mod_third_matter_rel_id` (`teacher_third`), ADD KEY `mod_teacher_matter_court_teacher_third` (`teacher_third`);

--
-- Indices de la tabla `mod_third`
--
ALTER TABLE `mod_third`
  ADD PRIMARY KEY (`third_id`), ADD KEY `mod_third_third_type` (`third_type`), ADD KEY `mod_third_third_sta` (`third_sta`), ADD KEY `mod_third_third_father` (`third_father`);

--
-- Indices de la tabla `mod_third_father`
--
ALTER TABLE `mod_third_father`
  ADD PRIMARY KEY (`rel_id`), ADD KEY `mod_third_father_third_id` (`third_id`), ADD KEY `mod_third_father_rel_type` (`rel_type`);

--
-- Indices de la tabla `mod_third_matter`
--
ALTER TABLE `mod_third_matter`
  ADD PRIMARY KEY (`item_id`), ADD KEY `mod_third_matter_third_id` (`third_id`), ADD KEY `mod_third_matter_sec_id` (`sec_id`) USING BTREE;

--
-- Indices de la tabla `mod_third_matter_court`
--
ALTER TABLE `mod_third_matter_court`
  ADD PRIMARY KEY (`court_id`), ADD KEY `mod_third_matter_rel_id` (`matter_third`), ADD KEY `mod_third_matter_third_court_sta` (`court_sta`);

--
-- Indices de la tabla `mod_third_matter_sta`
--
ALTER TABLE `mod_third_matter_sta`
  ADD PRIMARY KEY (`sta_id`);

--
-- Indices de la tabla `mod_third_rel_type`
--
ALTER TABLE `mod_third_rel_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indices de la tabla `mod_third_status`
--
ALTER TABLE `mod_third_status`
  ADD PRIMARY KEY (`sta_id`);

--
-- Indices de la tabla `mod_third_type`
--
ALTER TABLE `mod_third_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indices de la tabla `sys_accion`
--
ALTER TABLE `sys_accion`
  ADD PRIMARY KEY (`accion_id`);

--
-- Indices de la tabla `sys_breadcumbs`
--
ALTER TABLE `sys_breadcumbs`
  ADD PRIMARY KEY (`bread_id`);

--
-- Indices de la tabla `sys_components`
--
ALTER TABLE `sys_components`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indices de la tabla `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`men_id`);

--
-- Indices de la tabla `sys_module`
--
ALTER TABLE `sys_module`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indices de la tabla `sys_rule`
--
ALTER TABLE `sys_rule`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indices de la tabla `sys_rule_accion`
--
ALTER TABLE `sys_rule_accion`
  ADD PRIMARY KEY (`rule_id`,`accion_type`,`accion_item`), ADD KEY `sys_rule_accion_rol_id` (`rule_id`), ADD KEY `sys_rule_men_accion_item` (`accion_item`), ADD KEY `sys_rule_mod_accion_item` (`accion_item`);

--
-- Indices de la tabla `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`user_id`), ADD KEY `user_name` (`user_name`), ADD KEY `user_email` (`user_email`), ADD KEY `sys_user_rule_id` (`rule_id`), ADD KEY `sys_users_third_id` (`third_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mod_enroll`
--
ALTER TABLE `mod_enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `mod_level`
--
ALTER TABLE `mod_level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `mod_matter`
--
ALTER TABLE `mod_matter`
  MODIFY `matter_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `mod_note`
--
ALTER TABLE `mod_note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `mod_note_desc`
--
ALTER TABLE `mod_note_desc`
  MODIFY `desc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `mod_period`
--
ALTER TABLE `mod_period`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `mod_section`
--
ALTER TABLE `mod_section`
  MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `mod_teacher_matter`
--
ALTER TABLE `mod_teacher_matter`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `mod_teacher_matter_court`
--
ALTER TABLE `mod_teacher_matter_court`
  MODIFY `court_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `mod_third`
--
ALTER TABLE `mod_third`
  MODIFY `third_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `mod_third_father`
--
ALTER TABLE `mod_third_father`
  MODIFY `rel_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `mod_third_matter`
--
ALTER TABLE `mod_third_matter`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `mod_third_matter_court`
--
ALTER TABLE `mod_third_matter_court`
  MODIFY `court_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `mod_third_matter_sta`
--
ALTER TABLE `mod_third_matter_sta`
  MODIFY `sta_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `mod_third_rel_type`
--
ALTER TABLE `mod_third_rel_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `mod_third_status`
--
ALTER TABLE `mod_third_status`
  MODIFY `sta_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `mod_third_type`
--
ALTER TABLE `mod_third_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `sys_accion`
--
ALTER TABLE `sys_accion`
  MODIFY `accion_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `sys_breadcumbs`
--
ALTER TABLE `sys_breadcumbs`
  MODIFY `bread_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `sys_components`
--
ALTER TABLE `sys_components`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `men_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `sys_module`
--
ALTER TABLE `sys_module`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sys_rule`
--
ALTER TABLE `sys_rule`
  MODIFY `rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mod_enroll`
--
ALTER TABLE `mod_enroll`
ADD CONSTRAINT `mod_enroll_level_id` FOREIGN KEY (`level_id`) REFERENCES `mod_level` (`level_id`),
ADD CONSTRAINT `mod_enrolll_third_id` FOREIGN KEY (`third_id`) REFERENCES `mod_third` (`third_id`);

--
-- Filtros para la tabla `mod_level`
--
ALTER TABLE `mod_level`
ADD CONSTRAINT `mod_level_level_id` FOREIGN KEY (`level_father`) REFERENCES `mod_level` (`level_id`);

--
-- Filtros para la tabla `mod_matter`
--
ALTER TABLE `mod_matter`
ADD CONSTRAINT `mod_matter_level_id` FOREIGN KEY (`matter_level`) REFERENCES `mod_level` (`level_id`);

--
-- Filtros para la tabla `mod_section`
--
ALTER TABLE `mod_section`
ADD CONSTRAINT `mod_section_level_id` FOREIGN KEY (`sec_level`) REFERENCES `mod_level` (`level_id`);

--
-- Filtros para la tabla `mod_teacher_matter`
--
ALTER TABLE `mod_teacher_matter`
ADD CONSTRAINT `mod_teacher_matter_matter_id` FOREIGN KEY (`matter_id`) REFERENCES `mod_matter` (`matter_id`),
ADD CONSTRAINT `mod_teacher_matter_period_id` FOREIGN KEY (`period_id`) REFERENCES `mod_period` (`period_id`),
ADD CONSTRAINT `mod_teacher_matter_sec_id` FOREIGN KEY (`sec_id`) REFERENCES `mod_section` (`sec_id`),
ADD CONSTRAINT `mod_teacher_matter_third_id` FOREIGN KEY (`third_id`) REFERENCES `mod_third` (`third_id`);

--
-- Filtros para la tabla `mod_teacher_matter_court`
--
ALTER TABLE `mod_teacher_matter_court`
ADD CONSTRAINT `mod_teacher_matter_court_teacher_third` FOREIGN KEY (`teacher_third`) REFERENCES `mod_third_matter` (`item_id`);

--
-- Filtros para la tabla `mod_third`
--
ALTER TABLE `mod_third`
ADD CONSTRAINT `mod_third_third_father` FOREIGN KEY (`third_father`) REFERENCES `mod_third` (`third_id`),
ADD CONSTRAINT `mod_third_third_sta` FOREIGN KEY (`third_sta`) REFERENCES `mod_third_status` (`sta_id`),
ADD CONSTRAINT `mod_third_third_type` FOREIGN KEY (`third_type`) REFERENCES `mod_third_type` (`type_id`);

--
-- Filtros para la tabla `mod_third_father`
--
ALTER TABLE `mod_third_father`
ADD CONSTRAINT `mod_third_father_rel_type` FOREIGN KEY (`rel_type`) REFERENCES `mod_third_rel_type` (`type_id`),
ADD CONSTRAINT `mod_third_father_third_id` FOREIGN KEY (`third_id`) REFERENCES `mod_third` (`third_id`);

--
-- Filtros para la tabla `mod_third_matter`
--
ALTER TABLE `mod_third_matter`
ADD CONSTRAINT `mod_third_matter_third_id` FOREIGN KEY (`third_id`) REFERENCES `mod_third` (`third_id`);

--
-- Filtros para la tabla `mod_third_matter_court`
--
ALTER TABLE `mod_third_matter_court`
ADD CONSTRAINT `mod_third_matter_rel_id` FOREIGN KEY (`matter_third`) REFERENCES `mod_third_matter` (`item_id`),
ADD CONSTRAINT `mod_third_matter_third_court_sta` FOREIGN KEY (`court_sta`) REFERENCES `mod_third_matter_sta` (`sta_id`);

--
-- Filtros para la tabla `sys_rule_accion`
--
ALTER TABLE `sys_rule_accion`
ADD CONSTRAINT `sys_rule_accion_rol_id` FOREIGN KEY (`rule_id`) REFERENCES `sys_rule` (`rule_id`);

--
-- Filtros para la tabla `sys_user`
--
ALTER TABLE `sys_user`
ADD CONSTRAINT `sys_user_rule_id` FOREIGN KEY (`rule_id`) REFERENCES `sys_rule` (`rule_id`),
ADD CONSTRAINT `sys_users_third_id` FOREIGN KEY (`third_id`) REFERENCES `mod_third` (`third_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
