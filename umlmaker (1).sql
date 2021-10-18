-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2017 a las 18:40:38
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `umlmaker`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` varchar(255) DEFAULT NULL,
  `id_proyecto` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `created_at`, `message`, `id_proyecto`, `updated_at`) VALUES
(1, 1, '2017-11-05 01:17:06', 'asdasda', 1, '2017-11-05 01:17:06'),
(2, 2, '2017-11-05 01:18:58', 'hola', 1, '2017-11-05 01:18:58'),
(3, 1, '2017-11-05 02:46:40', 'hola pedro', 1, '2017-11-05 02:46:40'),
(4, 2, '2017-11-05 02:46:56', 'hola paul', 1, '2017-11-05 02:46:56'),
(5, 1, '2017-11-05 04:34:31', 'hello everyone', 1, '2017-11-05 04:34:31'),
(6, 2, '2017-11-05 04:34:38', 'how are u', 1, '2017-11-05 04:34:38'),
(7, 1, '2017-11-05 04:34:52', 'fine and  what about u', 1, '2017-11-05 04:34:52'),
(8, 2, '2017-11-05 04:35:40', 'hello?', 1, '2017-11-05 04:35:40'),
(9, 2, '2017-11-05 04:36:27', 'hi marco', 2, '2017-11-05 04:36:27'),
(10, 1, '2017-11-05 21:18:36', 'anybody is here?', 1, '2017-11-05 21:18:36'),
(11, 1, '2017-11-05 22:57:15', 'yo veo que asi esta perfecto', 1, '2017-11-05 22:57:15'),
(12, 1, '2017-11-08 08:06:57', 'hola', 1, '2017-11-08 08:06:57'),
(13, 1, '2017-11-09 04:42:44', 'hola bozo', 1, '2017-11-09 04:42:44'),
(14, 2, '2017-11-09 04:43:29', 'hola bozo 2', 2, '2017-11-09 04:43:29'),
(15, 1, '2017-11-14 04:38:18', 'hola desde nodejs', 1, '2017-11-14 04:38:18'),
(16, 1, '2017-11-14 04:39:44', 'hola como estan', 1, '2017-11-14 04:39:44'),
(17, 1, '2017-11-14 04:56:25', 'hola desde nodejs v2', 1, '2017-11-14 04:56:25'),
(18, 1, '2017-11-14 05:41:19', 'hola como se encuentran', 1, '2017-11-14 05:41:19'),
(19, 2, '2017-11-14 05:43:06', 'hola paul como estas', 1, '2017-11-14 05:43:06'),
(20, 1, '2017-11-14 09:55:56', 'hola', 1, '2017-11-14 09:55:56'),
(21, 1, '2017-11-14 05:57:12', 'hola cini estab', 1, '2017-11-14 05:57:12'),
(22, 1, '2017-11-14 07:27:54', ' Hola', 1, '2017-11-14 07:27:54'),
(23, 1, '2017-11-14 07:50:05', 'hola como estan', 1, '2017-11-14 07:50:05'),
(24, 2, '2017-11-14 07:50:09', 'hola', 1, '2017-11-14 07:50:09'),
(25, 2, '2017-11-14 07:50:29', 'hola', 2, '2017-11-14 07:50:29'),
(26, 1, '2017-11-14 08:45:33', 'hola', 1, '2017-11-14 08:45:33'),
(27, 1, '2017-11-14 08:45:52', 'hola v2', 1, '2017-11-14 08:45:52'),
(28, 1, '2017-11-14 08:47:07', 'hola como estan v2', 1, '2017-11-14 08:47:07'),
(29, 1, '2017-11-14 08:47:17', 'hola como estan', 1, '2017-11-14 08:47:17'),
(30, 1, '2017-11-14 08:47:40', 'asdas', 1, '2017-11-14 08:47:40'),
(31, 1, '2017-11-14 08:47:42', 'asdasd', 1, '2017-11-14 08:47:42'),
(32, 1, '2017-11-14 08:48:12', 'asdas', 1, '2017-11-14 08:48:12'),
(33, 1, '2017-11-14 08:48:16', 'sdas', 1, '2017-11-14 08:48:16'),
(34, 1, '2017-11-14 08:49:17', 'asdas', 1, '2017-11-14 08:49:17'),
(35, 2, '2017-11-14 08:50:58', 'hola', 1, '2017-11-14 08:50:58'),
(36, 1, '2017-11-14 08:55:17', 'asdasd', 1, '2017-11-14 08:55:17'),
(37, 1, '2017-11-14 08:55:19', 'asdasda', 1, '2017-11-14 08:55:19'),
(38, 1, '2017-11-14 08:58:02', 'asdasdasd', 2, '2017-11-14 08:58:02'),
(39, 1, '2017-11-14 08:58:02', 'a', 2, '2017-11-14 08:58:02'),
(40, 1, '2017-11-14 08:58:02', 'sd', 2, '2017-11-14 08:58:02'),
(41, 1, '2017-11-14 08:58:03', 'as', 2, '2017-11-14 08:58:03'),
(42, 1, '2017-11-14 08:58:03', 'd', 2, '2017-11-14 08:58:03'),
(43, 1, '2017-11-14 08:58:03', 'asd', 2, '2017-11-14 08:58:03'),
(44, 1, '2017-11-14 08:58:03', 'a', 2, '2017-11-14 08:58:03'),
(45, 1, '2017-11-14 08:58:03', 'sd', 2, '2017-11-14 08:58:03'),
(46, 1, '2017-11-14 08:58:30', 'hola desde mi chat', 2, '2017-11-14 08:58:30'),
(47, 1, '2017-11-14 08:59:42', 'hola en este parcial', 1, '2017-11-14 08:59:42'),
(48, 1, '2017-11-14 09:06:13', 'esto es una prueba rara', 1, '2017-11-14 09:06:13'),
(49, 1, '2017-11-14 09:07:26', 'hola bla bla', 1, '2017-11-14 09:07:26'),
(50, 1, '2017-11-14 09:12:10', 'hola bla v2', 1, '2017-11-14 09:12:10'),
(51, 1, '2017-11-14 09:15:28', 'hola ble', 1, '2017-11-14 09:15:28'),
(52, 1, '2017-11-14 09:17:10', 'hola como estas', 1, '2017-11-14 09:17:10'),
(53, 1, '2017-11-14 09:17:13', 'bien y vos', 1, '2017-11-14 09:17:13'),
(54, 1, '2017-11-14 15:15:54', 'sdasdasd', 1, '2017-11-14 15:15:54'),
(55, 1, '2017-11-14 15:31:38', 'hola', 1, '2017-11-14 15:31:38'),
(56, 1, '2017-11-14 15:41:38', '.', 1, '2017-11-14 15:41:38'),
(57, 1, '2017-11-14 16:36:14', 'hola como estan', 1, '2017-11-14 16:36:14'),
(58, 1, '2017-11-14 16:36:42', 'ssdasdasda', 1, '2017-11-14 16:36:42'),
(59, 1, '2017-11-14 17:24:10', 'hoacomo estan', 1, '2017-11-14 17:24:10'),
(60, 2, '2017-11-15 05:08:52', 'sda', 1, '2017-11-15 05:08:52'),
(61, 1, '2017-11-15 05:55:44', 'hola', 1, '2017-11-15 05:55:44'),
(62, 2, '2017-11-15 05:57:10', 'hola ', 1, '2017-11-15 05:57:10'),
(63, 1, '2017-11-16 18:11:01', 'hola hay alguien', 1, '2017-11-16 18:11:01'),
(64, 1, '2017-11-16 18:11:02', '??', 1, '2017-11-16 18:11:02'),
(65, 1, '2017-11-16 18:59:50', 'sdasdasda', 1, '2017-11-16 18:59:50'),
(66, 1, '2017-11-16 18:59:51', 'sada', 1, '2017-11-16 18:59:51'),
(67, 1, '2017-11-16 18:59:52', 'asd', 1, '2017-11-16 18:59:52'),
(68, 1, '2017-11-16 18:59:52', 'a', 1, '2017-11-16 18:59:52'),
(69, 1, '2017-11-16 18:59:52', 'sd', 1, '2017-11-16 18:59:52'),
(70, 1, '2017-11-16 18:59:52', 'asd', 1, '2017-11-16 18:59:52'),
(71, 1, '2017-11-16 18:59:52', 'a', 1, '2017-11-16 18:59:52'),
(72, 1, '2017-11-16 18:59:53', 'sd', 1, '2017-11-16 18:59:53'),
(73, 1, '2017-11-16 18:59:53', 'a', 1, '2017-11-16 18:59:53'),
(74, 1, '2017-11-16 22:16:22', 'hola como estan', 1, '2017-11-16 22:16:22'),
(75, 2, '2017-11-16 22:35:37', 'hola como estan', 1, '2017-11-16 22:35:37'),
(76, 2, '2017-11-16 22:35:41', 'hola soy paul', 1, '2017-11-16 22:35:41'),
(77, 1, '2017-11-16 22:42:33', 'hola', 1, '2017-11-16 22:42:33'),
(78, 1, '2017-11-16 22:44:00', 'hola como estan', 1, '2017-11-16 22:44:00'),
(79, 1, '2017-11-16 22:44:17', 'hola', 1, '2017-11-16 22:44:17'),
(80, 1, '2017-11-16 22:47:12', 'asdfghj', 1, '2017-11-16 22:47:12'),
(81, 1, '2017-11-16 22:47:45', '123', 1, '2017-11-16 22:47:45'),
(82, 2, '2017-11-16 22:48:33', 'hola', 1, '2017-11-16 22:48:33'),
(83, 2, '2017-11-16 22:49:29', '123456', 1, '2017-11-16 22:49:29'),
(84, 2, '2017-11-16 22:54:31', 'hola esto es un texto bastante largo ', 1, '2017-11-16 22:54:31'),
(85, 1, '2017-11-16 23:30:18', 'hola pedro', 1, '2017-11-16 23:30:18'),
(86, 2, '2017-11-16 23:30:23', 'hola paul', 1, '2017-11-16 23:30:23'),
(87, 2, '2017-11-16 23:30:27', 'hagamos el proyecto', 1, '2017-11-16 23:30:27'),
(88, 2, '2017-11-16 23:30:59', 'hola paul', 1, '2017-11-16 23:30:59'),
(89, 1, '2017-11-16 23:31:08', 'hola', 1, '2017-11-16 23:31:08'),
(90, 1, '2017-11-16 23:35:14', 's', 1, '2017-11-16 23:35:14'),
(91, 1, '2017-11-16 23:35:14', 's', 1, '2017-11-16 23:35:14'),
(92, 1, '2017-11-16 23:35:15', 's', 1, '2017-11-16 23:35:15'),
(93, 1, '2017-11-16 23:35:15', 's', 1, '2017-11-16 23:35:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `content` mediumtext,
  `codigo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `nombre`, `descripcion`, `fecha_creacion`, `id_user`, `content`, `codigo`) VALUES
(1, 'Segundo Parcial', 'Esto es una descripcion', '2017-11-03', 1, '<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<sql>\n<datatypes db=\"mysql\">\n	<group label=\"Numeric\" color=\"rgb(238,238,170)\">\n		<type label=\"Integer\" length=\"0\" sql=\"INTEGER\" quote=\"\"/>\n	 	<type label=\"TINYINT\" length=\"0\" sql=\"TINYINT\" quote=\"\"/>\n	 	<type label=\"SMALLINT\" length=\"0\" sql=\"SMALLINT\" quote=\"\"/>\n	 	<type label=\"MEDIUMINT\" length=\"0\" sql=\"MEDIUMINT\" quote=\"\"/>\n	 	<type label=\"INT\" length=\"0\" sql=\"INT\" quote=\"\"/>\n		<type label=\"BIGINT\" length=\"0\" sql=\"BIGINT\" quote=\"\"/>\n		<type label=\"Decimal\" length=\"1\" sql=\"DECIMAL\" re=\"DEC\" quote=\"\"/>\n		<type label=\"Single precision\" length=\"0\" sql=\"FLOAT\" quote=\"\"/>\n		<type label=\"Double precision\" length=\"0\" sql=\"DOUBLE\" re=\"DOUBLE\" quote=\"\"/>\n	</group>\n\n	<group label=\"Character\" color=\"rgb(255,200,200)\">\n		<type label=\"Char\" length=\"1\" sql=\"CHAR\" quote=\"\'\"/>\n		<type label=\"Varchar\" length=\"1\" sql=\"VARCHAR\" quote=\"\'\"/>\n		<type label=\"Text\" length=\"0\" sql=\"MEDIUMTEXT\" re=\"TEXT\" quote=\"\'\"/>\n		<type label=\"Binary\" length=\"1\" sql=\"BINARY\" quote=\"\'\"/>\n		<type label=\"Varbinary\" length=\"1\" sql=\"VARBINARY\" quote=\"\'\"/>\n		<type label=\"BLOB\" length=\"0\" sql=\"BLOB\" re=\"BLOB\" quote=\"\'\"/>\n	</group>\n\n	<group label=\"Date &amp; Time\" color=\"rgb(200,255,200)\">\n		<type label=\"Date\" length=\"0\" sql=\"DATE\" quote=\"\'\"/>\n		<type label=\"Time\" length=\"0\" sql=\"TIME\" quote=\"\'\"/>\n		<type label=\"Datetime\" length=\"0\" sql=\"DATETIME\" quote=\"\'\"/>\n		<type label=\"Year\" length=\"0\" sql=\"YEAR\" quote=\"\"/>\n		<type label=\"Timestamp\" length=\"0\" sql=\"TIMESTAMP\" quote=\"\'\"/>\n	</group>\n	\n	<group label=\"Miscellaneous\" color=\"rgb(200,200,255)\">\n		<type label=\"ENUM\" length=\"1\" sql=\"ENUM\" quote=\"\"/>\n		<type label=\"SET\" length=\"1\" sql=\"SET\" quote=\"\"/>\n		<type label=\"Bit\" length=\"0\" sql=\"bit\" quote=\"\"/>\n	</group>\n</datatypes><table x=\"154\" y=\"354\" name=\"persona\">\n<row name=\"id\" null=\"1\" autoincrement=\"1\">\n<datatype>INTEGER</datatype>\n<default>NULL</default></row>\n<row name=\"nombre\" null=\"1\" autoincrement=\"0\">\n<datatype>VARCHAR(55)</datatype>\n<default>NULL</default></row>\n<row name=\"apellido\" null=\"1\" autoincrement=\"0\">\n<datatype>VARCHAR(60)</datatype>\n<default>NULL</default></row>\n<key type=\"PRIMARY\" name=\"\">\n<part>id</part>\n</key>\n</table>\n<table x=\"724\" y=\"222\" name=\"alumno\">\n<row name=\"id\" null=\"1\" autoincrement=\"1\">\n<datatype>INTEGER</datatype>\n<default>NULL</default><relation table=\"persona\" row=\"id\" />\n</row>\n<row name=\"registro\" null=\"1\" autoincrement=\"0\">\n<datatype>VARCHAR(60)</datatype>\n<default>NULL</default></row>\n<key type=\"PRIMARY\" name=\"\">\n<part>id</part>\n</key>\n</table>\n<table x=\"157\" y=\"86\" name=\"profesor\">\n<row name=\"id\" null=\"1\" autoincrement=\"1\">\n<datatype>INTEGER</datatype>\n<default>NULL</default><relation table=\"persona\" row=\"id\" />\n</row>\n<row name=\"codigo\" null=\"1\" autoincrement=\"0\">\n<datatype>INTEGER</datatype>\n<default>NULL</default></row>\n<key type=\"PRIMARY\" name=\"\">\n<part>id</part>\n</key>\n</table>\n<table x=\"722\" y=\"388\" name=\"boleta\">\n<row name=\"id\" null=\"1\" autoincrement=\"1\">\n<datatype>INTEGER</datatype>\n<default>NULL</default></row>\n<row name=\"id_alumno\" null=\"1\" autoincrement=\"0\">\n<datatype>INTEGER</datatype>\n<default>NULL</default><relation table=\"alumno\" row=\"id\" />\n</row>\n<row name=\"fecha\" null=\"1\" autoincrement=\"0\">\n<datatype>TIME</datatype>\n<default>NULL</default></row>\n<key type=\"PRIMARY\" name=\"\">\n<part>id</part>\n</key>\n</table>\n</sql>\n', 'D657EAE907A'),
(2, 'Primer parcial', 'Primer parcial de la materia de tecno web usando servidores y protocolos POP y SMTP', '2017-11-04', 1, '<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<sql>\n<datatypes db=\"mysql\">\n	<group label=\"Numeric\" color=\"rgb(238,238,170)\">\n		<type label=\"Integer\" length=\"0\" sql=\"INTEGER\" quote=\"\"/>\n	 	<type label=\"TINYINT\" length=\"0\" sql=\"TINYINT\" quote=\"\"/>\n	 	<type label=\"SMALLINT\" length=\"0\" sql=\"SMALLINT\" quote=\"\"/>\n	 	<type label=\"MEDIUMINT\" length=\"0\" sql=\"MEDIUMINT\" quote=\"\"/>\n	 	<type label=\"INT\" length=\"0\" sql=\"INT\" quote=\"\"/>\n		<type label=\"BIGINT\" length=\"0\" sql=\"BIGINT\" quote=\"\"/>\n		<type label=\"Decimal\" length=\"1\" sql=\"DECIMAL\" re=\"DEC\" quote=\"\"/>\n		<type label=\"Single precision\" length=\"0\" sql=\"FLOAT\" quote=\"\"/>\n		<type label=\"Double precision\" length=\"0\" sql=\"DOUBLE\" re=\"DOUBLE\" quote=\"\"/>\n	</group>\n\n	<group label=\"Character\" color=\"rgb(255,200,200)\">\n		<type label=\"Char\" length=\"1\" sql=\"CHAR\" quote=\"\'\"/>\n		<type label=\"Varchar\" length=\"1\" sql=\"VARCHAR\" quote=\"\'\"/>\n		<type label=\"Text\" length=\"0\" sql=\"MEDIUMTEXT\" re=\"TEXT\" quote=\"\'\"/>\n		<type label=\"Binary\" length=\"1\" sql=\"BINARY\" quote=\"\'\"/>\n		<type label=\"Varbinary\" length=\"1\" sql=\"VARBINARY\" quote=\"\'\"/>\n		<type label=\"BLOB\" length=\"0\" sql=\"BLOB\" re=\"BLOB\" quote=\"\'\"/>\n	</group>\n\n	<group label=\"Date &amp; Time\" color=\"rgb(200,255,200)\">\n		<type label=\"Date\" length=\"0\" sql=\"DATE\" quote=\"\'\"/>\n		<type label=\"Time\" length=\"0\" sql=\"TIME\" quote=\"\'\"/>\n		<type label=\"Datetime\" length=\"0\" sql=\"DATETIME\" quote=\"\'\"/>\n		<type label=\"Year\" length=\"0\" sql=\"YEAR\" quote=\"\"/>\n		<type label=\"Timestamp\" length=\"0\" sql=\"TIMESTAMP\" quote=\"\'\"/>\n	</group>\n	\n	<group label=\"Miscellaneous\" color=\"rgb(200,200,255)\">\n		<type label=\"ENUM\" length=\"1\" sql=\"ENUM\" quote=\"\"/>\n		<type label=\"SET\" length=\"1\" sql=\"SET\" quote=\"\"/>\n		<type label=\"Bit\" length=\"0\" sql=\"bit\" quote=\"\"/>\n	</group>\n</datatypes><table x=\"410\" y=\"224\" name=\"persona\">\n<row name=\"id\" null=\"1\" autoincrement=\"1\">\n<datatype>INTEGER</datatype>\n<default>NULL</default></row>\n<key type=\"PRIMARY\" name=\"\">\n<part>id</part>\n</key>\n</table>\n<table x=\"745\" y=\"131\" name=\"cliente\">\n<row name=\"id\" null=\"1\" autoincrement=\"1\">\n<datatype>INTEGER</datatype>\n<default>NULL</default><relation table=\"persona\" row=\"id\" />\n</row>\n<key type=\"PRIMARY\" name=\"\">\n<part>id</part>\n</key>\n</table>\n</sql>\n', '13373D8E252'),
(3, 'Tercer parcial', 'Esto es una descripcion', '2017-11-09', 1, NULL, 'deorqAvciLh9GNDJ'),
(4, 'Cuarto parcial', 'Esto es una descripcion', '2017-11-09', 1, NULL, 'CDGztA7e8hzRUydz'),
(5, 'quinto Parcial', 'Esto es una descripcion', '2017-11-09', 1, NULL, 'ZsZdcaZULAaIEV5k'),
(6, 'Sexto  parcial', 'Esto es una descripcion', '2017-11-09', 1, NULL, 'ivCcQpNpbInUbBXh'),
(7, 'septimo parcial ', 'Esto es una descripcion', '2017-11-09', 1, NULL, 'KPSVtwussO7bLdBU'),
(8, 'octavo parcial', 'Esto es una descripcion', '2017-11-13', 1, NULL, 'dpUwLKpdt2iblaxL'),
(9, 'proyecto 9 ', 'Este es el proyecto 9', '2017-11-17', 1, NULL, 'KozHxUSFbmFswjK8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_user`
--

CREATE TABLE `proyecto_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_proyecto` int(11) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto_user`
--

INSERT INTO `proyecto_user` (`id`, `id_user`, `id_proyecto`, `fecha_ingreso`) VALUES
(3, 2, 1, '2017-11-14'),
(6, 1, 1, '2017-11-15'),
(7, 2, 8, '2017-11-15'),
(8, 1, 3, '2017-11-15'),
(9, 11, 1, '2017-11-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `remember_token`, `password`, `created_at`, `updated_at`, `name`) VALUES
(1, 'paulgrimaldo@hotmail.com', 'ASNSwjxEzCi4e00YSVfrmgD3IVuOoIxO6AeNKB7heuSE0C7zVCZEGxmEg24a', '$2y$10$PKJURpWu7TIr8qQoAo3HG.b.fqaKmUpF2Y4dvsAqduEtT5D.uOgqe', '2017-11-05 01:25:29', '2017-11-03 18:51:27', 'Paul Grimaldo'),
(2, 'pedro@hotmail.com', '6sONcVOs8xGeBeAU9Buj5qMNNJPous0ZqALawKugbN5wwW7UR5H0fuzKZP28', '$2y$10$tVTDr.x2A3VaOAeKIEUV/O1bvHK/XCmZcjHSEqYFsYEa1U6mL5zVa', '2017-11-09 00:45:10', '2017-11-03 21:51:37', 'Pedro Martinez'),
(3, 'carla@gmail.com', NULL, '$2a$10$AjFTB9Gs2tb8RAi0WH4buu4RUEQOvpjmrAOvCa2Qse38Jb7rdegKG', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Carla Ramos'),
(5, 'carlos@gmail.com', NULL, '$2a$10$TC91jqVCO7Sa3gji2k0ThuWwzFB0DBsENNan8OvZbQ48Z16srJsX.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Carlos Miranda'),
(6, 'valeria@hotmail.com', NULL, '$2a$10$mwQtK.djeueIfveytrHcwuZnIAtEsk7C5sTMUOtO2IaoOAzEXUria', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Valeria rondo'),
(7, 'soria@hotmail.com', NULL, '$2a$10$nB8hP9oTrZzEpZcKefeWGewAJ4BWnqvEqb8B5qa7eKyWJCN49J6VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Luis Soria'),
(8, 'sda@gmai.com', NULL, '$2a$10$xV0JCSiCLnP52FQ7AqJF1OWHqfNSgqv7mVRjVvF10yBnStFWwDJzu', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dsa'),
(9, 'dsasa@hotmail.com', NULL, '$2a$10$Mk1xBubtrHZ2bw1sKHFDCO4N8tYFThjD1RQPOX9TcNKoXagMMDj7O', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdas'),
(10, 'weqwe@gmail.com', NULL, '$2a$10$J7csOKU4YtHnjXd1b1MD7.L1B3lwVMLurPXKhUqtMpRG3sqGVg012', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asdas'),
(11, 'muriel@hotmail.com', NULL, '$2a$10$TpxA5DfKsw3ygc9gbK5o2.Y1YkqfFKjvf/5qg037xPKhk4kRlqMHy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Muriel Peralta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proyecto` (`id_proyecto`),
  ADD KEY `id_user` (`user_id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `proyecto_user`
--
ALTER TABLE `proyecto_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_users_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `proyecto_user`
--
ALTER TABLE `proyecto_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `FK_mensajes_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mensajes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `FK_proyecto_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyecto_user`
--
ALTER TABLE `proyecto_user`
  ADD CONSTRAINT `FK_proyecto_persona_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
