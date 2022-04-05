-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2022 a las 04:19:52
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prebeeclever`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id_actividad` int(11) NOT NULL,
  `asignatura_actividad` int(11) NOT NULL,
  `autor_actividad` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo_actividad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `creacion_actividad` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publicacion_actividad` datetime NOT NULL,
  `vencimiento_actividad` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_al` int(11) NOT NULL,
  `nombre_al` text COLLATE utf8_spanish2_ci NOT NULL,
  `apellido_al` text COLLATE utf8_spanish2_ci NOT NULL,
  `email_al` text COLLATE utf8_spanish2_ci NOT NULL,
  `password_al` text COLLATE utf8_spanish2_ci NOT NULL,
  `tutor_al` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_al` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `fecharegistro_al` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `perfilimg_al` varchar(30) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'shell.png',
  `fondoimg_al` varchar(30) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'defaultbackground.jpg',
  `acceso_al` tinyint(1) NOT NULL DEFAULT '0',
  `tema_al` varchar(7) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '#6028f8'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_al`, `nombre_al`, `apellido_al`, `email_al`, `password_al`, `tutor_al`, `codigo_al`, `fecharegistro_al`, `perfilimg_al`, `fondoimg_al`, `acceso_al`, `tema_al`) VALUES
(16, 'L', 'O', 'nd@nd.com', '123', 'MDQ3bkNSWDBteVNxM1Nld2Ixb3ZZQT09', '123', '2022-03-28 02:07:42', 'shell.png', 'defaultbackground.jpg', 0, '#6028f8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id_asignatura` int(11) NOT NULL,
  `nombre_asignatura` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloqueo_alumno`
--

CREATE TABLE `bloqueo_alumno` (
  `alumno` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `bloqueo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloqueo_docente`
--

CREATE TABLE `bloqueo_docente` (
  `docente` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `bloqueo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bloqueo_docente`
--

INSERT INTO `bloqueo_docente` (`docente`, `bloqueo`) VALUES
('MDQ3bkNSWDBteVNxM1Nld2Ixb3ZZQT09', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id_actividad_calificacion` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `alumno_codigo` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `calificacion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_do` int(11) NOT NULL,
  `nombre_do` text COLLATE utf8_spanish2_ci NOT NULL,
  `apellido_do` text COLLATE utf8_spanish2_ci NOT NULL,
  `email_do` text COLLATE utf8_spanish2_ci NOT NULL,
  `password_do` text COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_do` varchar(34) COLLATE utf8_spanish2_ci NOT NULL,
  `fecharegistro_do` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `perfilimg_do` varchar(25) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'defaultuser.jpg',
  `fondoimg_do` varchar(25) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'defaultbackground.jpg',
  `acceso_do` tinyint(1) NOT NULL DEFAULT '0',
  `tema_do` varchar(7) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '#1f8923',
  `tipo_do` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_do`, `nombre_do`, `apellido_do`, `email_do`, `password_do`, `codigo_do`, `fecharegistro_do`, `perfilimg_do`, `fondoimg_do`, `acceso_do`, `tema_do`, `tipo_do`) VALUES
(1, 'WlgrVkF1S0hVc3RENHlNZ0NjZWlSZz09', 'NDZUV3lEU05wMmJXMU9lZGE5Tk1adz09', 'VFExbU82Zkl2OEF2dGhOMStXcDd0eW1HdXZWWlhuamhGaXhLVi9nZHd2dz0=', '$2y$10$YI4BS5br5O8Ul4EC5pnsduMMeGqd2w7nVktGzZxS.2y8iVohiF4/C', 'MDQ3bkNSWDBteVNxM1Nld2Ixb3ZZQT09', '2020-03-26 06:00:56', 'tutor.png', 'defaultbackground.jpg', 1, '#1f8923', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_actividad`
--

CREATE TABLE `pregunta_actividad` (
  `id_pregunta_actividad` int(11) NOT NULL,
  `actividad` int(11) NOT NULL,
  `id_tema_pregunta_actividad` int(11) NOT NULL,
  `id_tipo_pregunta_actividad` int(11) NOT NULL,
  `instruccion_pregunta_actividad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pregunta` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_pregunta_actividad`
--

CREATE TABLE `respuesta_pregunta_actividad` (
  `id_respuesta_pregunta_actividad` int(11) NOT NULL,
  `pregunta` int(11) NOT NULL,
  `respuesta` text COLLATE utf8_spanish2_ci NOT NULL,
  `correcta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema_asignatura`
--

CREATE TABLE `tema_asignatura` (
  `id_tema_asignatura` int(11) NOT NULL,
  `asignatura` int(11) NOT NULL,
  `nombre_tema_asignatura` varchar(80) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pregunta_actividad`
--

CREATE TABLE `tipo_pregunta_actividad` (
  `id_tipo_pregunta_actividad` int(11) NOT NULL,
  `nombre_tipo_pregunta_actividad` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id_actividad`),
  ADD KEY `detalle_actividad_docente` (`autor_actividad`),
  ADD KEY `detalle_actividad_asignatura` (`asignatura_actividad`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_al`),
  ADD UNIQUE KEY `codigo_al` (`codigo_al`),
  ADD UNIQUE KEY `email_al` (`email_al`(255)),
  ADD KEY `detalle_alumno_docente` (`tutor_al`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asignatura`),
  ADD UNIQUE KEY `nombre_asignatura` (`nombre_asignatura`);

--
-- Indices de la tabla `bloqueo_alumno`
--
ALTER TABLE `bloqueo_alumno`
  ADD UNIQUE KEY `alumno` (`alumno`);

--
-- Indices de la tabla `bloqueo_docente`
--
ALTER TABLE `bloqueo_docente`
  ADD UNIQUE KEY `docente` (`docente`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD KEY `detalle_calificacion_alumno` (`alumno_codigo`),
  ADD KEY `detalle_calificacion_actividad` (`id_actividad_calificacion`),
  ADD KEY `detalle_calificacion_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_do`),
  ADD UNIQUE KEY `codigo_do` (`codigo_do`),
  ADD UNIQUE KEY `email_do` (`email_do`(255));

--
-- Indices de la tabla `pregunta_actividad`
--
ALTER TABLE `pregunta_actividad`
  ADD PRIMARY KEY (`id_pregunta_actividad`),
  ADD KEY `detalle_pregunta_actividad_actividad` (`actividad`),
  ADD KEY `detalle_pregunta_actividad_tema_asignatura` (`id_tema_pregunta_actividad`),
  ADD KEY `detalle_pregunta_actividad_tipo_pregunta_actividad` (`id_tipo_pregunta_actividad`);

--
-- Indices de la tabla `respuesta_pregunta_actividad`
--
ALTER TABLE `respuesta_pregunta_actividad`
  ADD PRIMARY KEY (`id_respuesta_pregunta_actividad`),
  ADD KEY `detalle_respuesta_pregunta` (`pregunta`);

--
-- Indices de la tabla `tema_asignatura`
--
ALTER TABLE `tema_asignatura`
  ADD PRIMARY KEY (`id_tema_asignatura`),
  ADD UNIQUE KEY `nombre_tema_asignatura` (`nombre_tema_asignatura`),
  ADD KEY `detalle_asignatura_tema_asignatura` (`asignatura`);

--
-- Indices de la tabla `tipo_pregunta_actividad`
--
ALTER TABLE `tipo_pregunta_actividad`
  ADD PRIMARY KEY (`id_tipo_pregunta_actividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_al` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_do` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pregunta_actividad`
--
ALTER TABLE `pregunta_actividad`
  MODIFY `id_pregunta_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuesta_pregunta_actividad`
--
ALTER TABLE `respuesta_pregunta_actividad`
  MODIFY `id_respuesta_pregunta_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tema_asignatura`
--
ALTER TABLE `tema_asignatura`
  MODIFY `id_tema_asignatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_pregunta_actividad`
--
ALTER TABLE `tipo_pregunta_actividad`
  MODIFY `id_tipo_pregunta_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `detalle_actividad_asignatura` FOREIGN KEY (`asignatura_actividad`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_actividad_docente` FOREIGN KEY (`autor_actividad`) REFERENCES `docente` (`codigo_do`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `detalle_alumno_docente` FOREIGN KEY (`tutor_al`) REFERENCES `docente` (`codigo_do`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `bloqueo_alumno`
--
ALTER TABLE `bloqueo_alumno`
  ADD CONSTRAINT `detalle_bloqueo_alumno_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`codigo_al`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `bloqueo_docente`
--
ALTER TABLE `bloqueo_docente`
  ADD CONSTRAINT `detalle_bloqueo_docente_docente` FOREIGN KEY (`docente`) REFERENCES `docente` (`codigo_do`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `detalle_calificacion_actividad` FOREIGN KEY (`id_actividad_calificacion`) REFERENCES `actividad` (`id_actividad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_calificacion_alumno` FOREIGN KEY (`alumno_codigo`) REFERENCES `alumno` (`codigo_al`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_calificacion_pregunta` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta_actividad` (`id_pregunta_actividad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pregunta_actividad`
--
ALTER TABLE `pregunta_actividad`
  ADD CONSTRAINT `detalle_pregunta_actividad_actividad` FOREIGN KEY (`actividad`) REFERENCES `actividad` (`id_actividad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pregunta_actividad_tema_asignatura` FOREIGN KEY (`id_tema_pregunta_actividad`) REFERENCES `tema_asignatura` (`id_tema_asignatura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pregunta_actividad_tipo_pregunta_actividad` FOREIGN KEY (`id_tipo_pregunta_actividad`) REFERENCES `tipo_pregunta_actividad` (`id_tipo_pregunta_actividad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta_pregunta_actividad`
--
ALTER TABLE `respuesta_pregunta_actividad`
  ADD CONSTRAINT `detalle_respuesta_pregunta` FOREIGN KEY (`pregunta`) REFERENCES `pregunta_actividad` (`id_pregunta_actividad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tema_asignatura`
--
ALTER TABLE `tema_asignatura`
  ADD CONSTRAINT `detalle_asignatura_tema_asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
