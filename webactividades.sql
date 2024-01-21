-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2024 a las 13:07:19
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webactividades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE IF NOT EXISTS `actividades` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `dia` varchar(255) NOT NULL,
  `horario` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `ubicacion` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`Identificador`, `titulo`, `imagen`, `dia`, `horario`, `descripcion`, `precio`, `ubicacion`) VALUES
(89, '	Yoga', '	yoga.png', '	martes', '	10:00 a 11:00', '	Ejercicios de relajación y estiramientos para conseguir mayor eficacia en el dominio del cuerpo y la concentración anímica.', '	12,50Euros', '	centro de día Leganés'),
(90, 'Club de lectura y escritura	', '	clublectura.png	', 'miércoles', '11:00 a 12:30	', 'Lectura y análisis de libros clásicos y mejora de escritura a través de la poesía.', '9.50Euros', 'casa de Extremadura, Leganés'),
(91, '	Juegos de mesa', '	juegosmesa.png', 'viernes', '17:30 a 18:30	', 'practica de juegos de mesa; dominó, cartas, parchís, oca, etc.	', '8.50Euros', 'centro de día Leganés	'),
(92, 'Baile', 'baile.png	', 'viernes', '20:00 a 21:00	', 'bailes de salón donde aprendes y te diviertes mientras se mejora la fuerza muscular, flexibilidad y equilibrio.	', '16.50Euros', 'casa Extremadura Leganés	'),
(93, 'Taichí', 'taichi.png	', 'jueves', '10:00 a 11:00	', 'Gimnasia de movimientos lentos y coordinados, para conseguir equilibrio interior y liberación de energía	', '13.50Euros', 'centro de día Leganés	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE IF NOT EXISTS `administradores` (
  `Identificador` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`Identificador`, `usuario`, `contrasena`, `nombre`, `email`) VALUES
(1, 'Noemi', 'Noemi1', 'Noemi', 'nmorans482@alumnos.imf.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Identificador` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `usuario`, `contrasena`, `nombre`, `apellidos`, `email`) VALUES
(1, 'LMartin', 'Lmartin', 'Laura', 'Martin', 'lauramartin@gmail.com'),
(2, 'JSanchez', 'JSanchez', 'Javier', 'Sanchez', 'javierSanchez@gmail.com'),
(3, 'SGonzalez', 'SGonzalez', 'Sonia', 'Gonzalez', 'soniagonzalez@gmail.com'),
(4, 'MCollados', 'MCollados', 'Mario', 'Collados', 'mariocollados@gmail.com'),
(5, 'GAviles', 'GAviles', 'Guillermo', 'Avilés', 'guillermoaviles@gmail.com'),
(6, 'Nportillo', 'Nportillo', 'Nadia', 'Portillo', 'nadiaportillo@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
