-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2023 a las 21:04:05
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `cod_asig` varchar(255) NOT NULL,
  `nom_asig` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `cod_prof` varchar(255) NOT NULL,
  `primnom` varchar(255) DEFAULT NULL,
  `segnom` varchar(255) DEFAULT NULL,
  `primapel` varchar(255) DEFAULT NULL,
  `segapel` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`cod_prof`, `primnom`, `segnom`, `primapel`, `segapel`, `edad`, `telefono`) VALUES
('', 'John', 'Carlos', 'Arrieta', 'Arrieta', 45, '3103465886');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prof_asig`
--

CREATE TABLE `prof_asig` (
  `cod_asig` varchar(255) DEFAULT NULL,
  `cod_prof` varchar(255) DEFAULT NULL,
  `Numhora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`cod_asig`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`cod_prof`);

--
-- Indices de la tabla `prof_asig`
--
ALTER TABLE `prof_asig`
  ADD KEY `cod_asig` (`cod_asig`),
  ADD KEY `cod_prof` (`cod_prof`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prof_asig`
--
ALTER TABLE `prof_asig`
  ADD CONSTRAINT `prof_asig_ibfk_1` FOREIGN KEY (`cod_asig`) REFERENCES `asignatura` (`cod_asig`),
  ADD CONSTRAINT `prof_asig_ibfk_2` FOREIGN KEY (`cod_prof`) REFERENCES `profesor` (`cod_prof`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
