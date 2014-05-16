-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-05-2014 a las 23:43:22
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `parcial3_java`
--
CREATE DATABASE IF NOT EXISTS `parcial3_java` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `parcial3_java`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `alumno_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrera` int(11) DEFAULT NULL,
  `carnet` varchar(50) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `responsable` varchar(200) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `telcasa` varchar(10) DEFAULT NULL,
  `teltrab` varchar(10) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `tutor` varchar(100) DEFAULT NULL,
  `notapaes` decimal(5,2) DEFAULT NULL,
  `horas` int(11) DEFAULT NULL,
  `pasantias` int(11) DEFAULT NULL,
  `becado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`alumno_id`),
  KEY `FK_RELATIONSHIP_17` (`id_carrera`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`alumno_id`, `id_carrera`, `carnet`, `nombres`, `apellidos`, `genero`, `email`, `responsable`, `direccion`, `telcasa`, `teltrab`, `fecha_nac`, `tutor`, `notapaes`, `horas`, `pasantias`, `becado`) VALUES
(1, 1, 'op091505', 'Ever Edgardo', 'Orellana Pérez', 'M', 'ever1509@gmail.com', 'Nora Perez', 'Cond Atonal Edif 1 Apto 3', '22932578', '21243140', '2012-09-15', 'Mauricio Flores', '8.50', 500, 150, 'No'),
(2, 2, 'mr100106', 'Alex Remberto', 'Marroquin Rogel', 'M', 'alexrember@gmail.com', 'Jonathan Guardado', 'Col San Marcos Casa 54', '22338899', '76147923', '2013-09-08', 'Dennis Diaz', '8.70', 500, 120, 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `id_escuela` int(11) DEFAULT NULL,
  `nombre_carrera` varchar(150) NOT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `FK_RELATIONSHIP_17` (`id_escuela`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `id_escuela`, `nombre_carrera`) VALUES
(1, 1, 'Ing. Computacion'),
(2, 2, 'Lic. En Idiomas');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE IF NOT EXISTS `escuela` (
  `id_escuela` int(11) NOT NULL AUTO_INCREMENT,
  `id_facultad` int(11) DEFAULT NULL,
  `nombre_escuela` varchar(150) NOT NULL,
  PRIMARY KEY (`id_escuela`),
  KEY `FK_RELATIONSHIP_17` (`id_facultad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`id_escuela`, `id_facultad`, `nombre_escuela`) VALUES
(1,1, 'Computacion'),
(2,2, 'Idiomas');
--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE IF NOT EXISTS `facultad` (
  `id_facultad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_facultad` varchar(150) NOT NULL,
  PRIMARY KEY (`id_facultad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id_facultad`, `nombre_facultad`) VALUES
(1, 'Ingenieria'),
(2, 'Humanidades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `tipo_user` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_user`, `nombre`, `nickname`, `pass`, `tipo_user`) VALUES
(1, 'alex', 'alex', 'fbc71ce36cc20790f2eeed2197898e71', 1),
(2, 'rember', 'rember', 'fbc71ce36cc20790f2eeed2197898e71', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
