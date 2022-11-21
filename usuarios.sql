-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2022 a las 08:16:06
-- Versión del servidor: 10.11.0-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_sex` int(3) NOT NULL,
  `nom_sex` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_sex`, `nom_sex`) VALUES
(1, 'Mujeres'),
(2, 'Hombres'),
(3, 'Prefiero no especificarlo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tip_usu`
--

CREATE TABLE `tip_usu` (
  `id_tip_usu` int(11) NOT NULL,
  `nom_tip_usu` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tip_usu`
--

INSERT INTO `tip_usu` (`id_tip_usu`, `nom_tip_usu`) VALUES
(1, 'Premium'),
(2, 'Estandar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `id_tip_usu` int(11) NOT NULL,
  `id_sex` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `correo`, `contraseña`, `id_tip_usu`, `id_sex`) VALUES
(25, 'Geovanni Guerrerp', 'guerra090496@gmail.com', 'Alexander0904', 1, 2),
(26, '', '', '', 0, 0),
(27, 'Geovanni Guerrerp', 'guerra090496@gmail.com', 'Alexander0904', 1, 2),
(28, '', '', '', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_sex`);

--
-- Indices de la tabla `tip_usu`
--
ALTER TABLE `tip_usu`
  ADD PRIMARY KEY (`id_tip_usu`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tip_usu` (`id_tip_usu`),
  ADD KEY `genero` (`id_sex`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
