-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2016 a las 22:18:29
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmueble`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acciones`
--

CREATE TABLE `acciones` (
  `id_accion` int(11) NOT NULL,
  `nombre_accion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `acciones`
--

INSERT INTO `acciones` (`id_accion`, `nombre_accion`) VALUES
(1, 'Vender'),
(2, 'Alquila');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id_publicacion` int(11) NOT NULL,
  `foto1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `foto2` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto3` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto4` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto5` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto6` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto7` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto8` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto9` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg',
  `foto10` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'nula.jpg'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id_publicacion`, `foto1`, `foto2`, `foto3`, `foto4`, `foto5`, `foto6`, `foto7`, `foto8`, `foto9`, `foto10`) VALUES
(1, 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg'),
(2, 'ni idea', 'latuya', 'etc', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg', 'nula.jpg'),
(16, '', '', '', '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', '', '', '', ''),
(21, 'code.jpg', 'er.jpg', 'gato.jpg', 'vlcsnap-2016-05-23-22h04m30s158.png', 'images.jpg', 'logo.png', 'images.jpg', 'jojos.png', 'naru.jpg', 'gato.jpg'),
(22, 'code.jpg', 'cara-espacio-1.jpg', 'jojos.png', '', 'er.jpg', 'logo.png', '', 'gato.jpg', 'imgres.jpg', ''),
(23, 'gato.jpg', '', '', '', '', '', '', '', '', ''),
(23, 'jojos.png', '', '', '', '', '', '', '', '', ''),
(23, 'imgres.jpg', '', '', '', '', '', '', '', '', ''),
(24, 'logo.png', '', '', '', '', '', '', '', '', ''),
(25, 'logo.png', '', '', '', '', '', '', '', '', ''),
(26, 'imgres.jpg', '', '', '', '', '', '', '', '', ''),
(27, 'gato.jpg', '', '', '', '', '', '', '', '', ''),
(28, 'L.jpg', 'desicionze.jpg', '', '', 'foto emp.jpg', '', '', 'Capturadatos.PNG', '', ''),
(29, 'mapa.PNG', '', '', '', '', '', '', '', '', ''),
(30, 'est.jpg', '', '', '', '', '', '', '', '', ''),
(31, 'conocimiento.jpg', '', '', '', '', '', '', '', '', ''),
(32, 'conocimiento.jpg', '', '', '', '', '', '', '', '', ''),
(33, 'plan.jpg', 'plan.jpg', '', '', 'p2-2.PNG', '', '', '', '', ''),
(34, 'code.jpg', 'gato.jpg', '', '', 'imgres.jpg', '', '', 'logo.png', '', ''),
(35, 'imgres.jpg', 'gato.jpg', '', '', 'logo.png', '', '', 'jojos.png', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_publi` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `precio` bigint(20) NOT NULL,
  `accion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `publicador` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(30) COLLATE utf8_spanish_ci DEFAULT 'activo',
  `latitud` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `longitud` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `correo_pubicador` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_publi`, `titulo`, `direccion`, `precio`, `accion`, `descripcion`, `publicador`, `tipo`, `estado`, `latitud`, `longitud`, `fecha`, `correo_pubicador`, `telefono`) VALUES
(32, 'Se vende edificio', 'ni idea', 11, 'Vender', 'd', 'Eduardo', 'Casa', 'desactivado', '18.906286581999527', '-67.9747581621632', '2016-11-09 17:25:34', '20131965@itla.edu.do', 123),
(33, 'Se vende propiedad', 'Ni idea', 1000000, 'Vender', 'nada', 'Eduardo', 'Casa', 'activo', '18.635835303690765', '-70.1939964434132', '2016-11-09 17:56:40', '20131965@itla.edu.do', 123),
(35, 'se vende finca', 'ni idea', 1111111111111, 'Vender', 'na', 'Eduardo', 'Finca', 'activo', '18.7347042880933', '-69.4194603106007', '2016-11-09 19:09:28', '20131965@itla.edu.do', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipos` int(11) NOT NULL,
  `tipos_inmueble` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipos`, `tipos_inmueble`) VALUES
(1, 'Casa'),
(2, 'Departamento'),
(3, 'Finca'),
(4, 'Solar'),
(5, 'Edicifion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `cedula` int(20) NOT NULL,
  `correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(20) NOT NULL,
  `celular` int(20) NOT NULL,
  `info` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'Cliente'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `correo`, `nombre`, `apellido`, `telefono`, `celular`, `info`, `tipo`) VALUES
(3, 123, 'perla', 'perla', 'sss', 222, 222, '222', 'Cliente'),
(4, 123, '20131965@itla.edu.do', 'Eduardo', 'Garcia', 123, 123, '123', 'Administrador'),
(5, 234, '234', 'antonio', 'w', 2222, 33, '3', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acciones`
--
ALTER TABLE `acciones`
  ADD PRIMARY KEY (`id_accion`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_publi`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acciones`
--
ALTER TABLE `acciones`
  MODIFY `id_accion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_publi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id_tipos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
