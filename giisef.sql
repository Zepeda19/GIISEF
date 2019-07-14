-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2019 a las 23:53:35
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `giisef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadclase`
--

CREATE TABLE `actividadclase` (
  `idactiviclase` int(11) NOT NULL,
  `bancoactivi` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `actividades` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nomactividad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `proposito` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `variaciones` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activifortalecimiento`
--

CREATE TABLE `activifortalecimiento` (
  `idactifort` int(11) NOT NULL,
  `escuela` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `claveescu` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `grado` int(10) NOT NULL,
  `grupo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `nivel` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `modalidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `desarrollo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `integracion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `creatividad` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `idDocente` int(11) NOT NULL,
  `Nombres` text COLLATE utf8_spanish_ci NOT NULL,
  `Apaterno` text COLLATE utf8_spanish_ci NOT NULL,
  `Amaterno` text COLLATE utf8_spanish_ci NOT NULL,
  `Domicilio` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `CP` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Correo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Filiacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Contraseña` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Foto` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planclase`
--

CREATE TABLE `planclase` (
  `idplanclase` int(11) NOT NULL,
  `escuela` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `calve` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `grado` int(10) NOT NULL,
  `grupo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `aprendizaje` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planclaseef`
--

CREATE TABLE `planclaseef` (
  `idplan` int(11) NOT NULL,
  `escuela` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `clavescuela` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `grado` int(10) NOT NULL,
  `grupo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `nivel` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `modalidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `desarrollomotri` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `integracioncorpore` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `creatividadmotr` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividadclase`
--
ALTER TABLE `actividadclase`
  ADD PRIMARY KEY (`idactiviclase`);

--
-- Indices de la tabla `activifortalecimiento`
--
ALTER TABLE `activifortalecimiento`
  ADD PRIMARY KEY (`idactifort`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`idDocente`);

--
-- Indices de la tabla `planclase`
--
ALTER TABLE `planclase`
  ADD PRIMARY KEY (`idplanclase`);

--
-- Indices de la tabla `planclaseef`
--
ALTER TABLE `planclaseef`
  ADD PRIMARY KEY (`idplan`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividadclase`
--
ALTER TABLE `actividadclase`
  MODIFY `idactiviclase` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activifortalecimiento`
--
ALTER TABLE `activifortalecimiento`
  MODIFY `idactifort` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `idDocente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planclase`
--
ALTER TABLE `planclase`
  MODIFY `idplanclase` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planclaseef`
--
ALTER TABLE `planclaseef`
  MODIFY `idplan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
