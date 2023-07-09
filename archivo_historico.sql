-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2022 a las 12:06:58
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `archivo_historico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id_archivo` int(11) NOT NULL,
  `Id_ruta` varchar(11) NOT NULL,
  `Id_tipo_archivo` varchar(11) NOT NULL,
  `Id_palabra_clave` varchar(11) NOT NULL,
  `Nombre_Archivo` varchar(60) NOT NULL,
  `Titulo` varchar(60) NOT NULL,
  `Relacion` int(30) DEFAULT NULL,
  `Area` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id_archivo`, `Id_ruta`, `Id_tipo_archivo`, `Id_palabra_clave`, `Nombre_Archivo`, `Titulo`, `Relacion`, `Area`) VALUES
(10, '1', '5', '7', '(29).Libro. La expedicion al desierto.pdf', 'Expedicion al Desierto', 80, '1'),
(11, '1', '5', '0', '29.la expedicion al desierto.jpg', 'Expedicion al Desierto', 80, '1'),
(12, '1', '5', '11', '(205).Libro. acciones del gobierno ejecutadas 1998 pdf.pdf', 'Acciones del gobiernp', 474, '1'),
(13, '1', '5', '0', '(205).Libro. acciones del gobierno ejercicio 1991 tapa.jpg', 'Acciones del gobierno', 474, '1'),
(14, '2', '2', '13', 'INV 121. AÑO 1937,MASTIL MUNICIPAL.jpg', 'Mastil Municipal', 0, '2'),
(15, '2', '2', '7', '29.la expedicion al desierto.jpg', 'Expedicion al desierto-Tapa libro', 0, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `ID_Areas` int(11) NOT NULL,
  `area` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`ID_Areas`, `area`) VALUES
(1, 'Biblioteca'),
(2, 'Fotografia'),
(3, 'Expedientes Jud'),
(4, 'Mapoteca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `ID_Libro` int(11) NOT NULL,
  `ID_Archivo` int(11) NOT NULL,
  `Titulo_libro` varchar(20) NOT NULL,
  `Autor` varchar(20) NOT NULL,
  `Materia` varchar(60) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `sinopsis` text NOT NULL,
  `ID_coleccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`ID_Libro`, `ID_Archivo`, `Titulo_libro`, `Autor`, `Materia`, `Tipo`, `sinopsis`, `ID_coleccion`) VALUES
(4, 11, 'Expedicion al Desier', 'Bruno Paeza', 'historia', 1, 'Expedicion al desierto y los salesianos 1879', 1),
(5, 13, 'Acciones del gobiern', 'desconocido', 'Historia', 1, 'libros acerca de las acciones del gobierno de 1991', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

CREATE TABLE `coleccion` (
  `ID_coleccion` int(11) NOT NULL,
  `Tipo_coleccion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coleccion`
--

INSERT INTO `coleccion` (`ID_coleccion`, `Tipo_coleccion`) VALUES
(1, 'Coleccion Local'),
(2, 'Coleccion General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes_judiciales`
--

CREATE TABLE `expedientes_judiciales` (
  `Id_exp_jud` int(11) NOT NULL,
  `Decada` varchar(30) NOT NULL,
  `id_archivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotografia`
--

CREATE TABLE `fotografia` (
  `Id_fotografia` int(11) NOT NULL,
  `Id_archivo` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `fuente` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fotografia`
--

INSERT INTO `fotografia` (`Id_fotografia`, `Id_archivo`, `Descripcion`, `fuente`, `fecha`) VALUES
(5, 14, 'Mastil Municipal 1937', 'Club Nautico', '1937-10-23'),
(6, 15, 'Expedicion al Desierto 1879', 'Archivo Historico', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `dfecha_log` date NOT NULL,
  `chora_log` time NOT NULL,
  `cdescripcion_log` varchar(255) NOT NULL,
  `rela_rol_id` bigint(20) UNSIGNED NOT NULL,
  `id_usuarios` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabras_claves`
--

CREATE TABLE `palabras_claves` (
  `Id_palabra_clave` int(11) NOT NULL,
  `palabra_clave` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `palabras_claves`
--

INSERT INTO `palabras_claves` (`Id_palabra_clave`, `palabra_clave`) VALUES
(1, 'Pueblos aborigenes'),
(2, 'Ferrocarril'),
(3, 'Textiles'),
(4, ''),
(5, 'Hidroavion'),
(6, 'Rio'),
(7, 'Expedicion'),
(8, 'Examen'),
(9, 'Desierto'),
(10, 'Acciones'),
(11, 'Gobierno'),
(12, 'Barcos'),
(13, 'Mastil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL,
  `rol` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol_id`, `rol`) VALUES
(1, 'Administrador'),
(4, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `Id_rutas` int(11) NOT NULL,
  `rutas` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`Id_rutas`, `rutas`) VALUES
(1, '/StorageArchivoHistorico/Biblioteca/'),
(2, '/StorageArchivoHistorico/Fotografia/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_archivo`
--

CREATE TABLE `tipo_archivo` (
  `Id_tipo_Archivo` int(11) NOT NULL,
  `tipo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_archivo`
--

INSERT INTO `tipo_archivo` (`Id_tipo_Archivo`, `tipo`) VALUES
(1, 'Expediente'),
(2, 'Imagenes'),
(5, 'Libro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cont_b`
--

CREATE TABLE `tipo_cont_b` (
  `ID_tipo_cont_b` int(11) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_cont_b`
--

INSERT INTO `tipo_cont_b` (`ID_tipo_cont_b`, `Descripcion`) VALUES
(1, 'Libro'),
(2, 'Folleto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `cnombre_usuario` varchar(100) NOT NULL,
  `cemail_usuario` varchar(100) NOT NULL,
  `cpassword_usuario` varchar(200) NOT NULL,
  `rela_rol_id` int(10) NOT NULL,
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `cnombre_usuario`, `cemail_usuario`, `cpassword_usuario`, `rela_rol_id`, `estado`) VALUES
(1, 'OMAR', 'omar@gmail.com', '$2y$10$3sC4vVZrOvU7n71f0KE2UeaJ6O6/dMCEcQGwVEF1xvh/2NKP3TIHC', 1, 1),
(4, 'ESTEBAN', 'esteban@gmail.com', '$2y$10$D1oLlQGIE6jCoZ9NzWbAMe6GDnTx7wcb6jFAkAfgm6.QUvXjv2yT.', 4, 1),
(5, 'ARCHIVO', 'archivo@gmail.com', '$2y$10$tuEniK0mAXspu28UVpEG/.e3kZBt2DzGjXEyqGloOKVIadCo13Jpe', 1, 1),
(6, 'SCHNEIDER', 'Schneider@gmail.com', '$2y$10$jNBoxtVclwfQgjlfNMplbe6vgBRCmqSPCJuFxTYTI77VOe439fWje', 20, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`ID_Areas`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`ID_Libro`);

--
-- Indices de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`ID_coleccion`);

--
-- Indices de la tabla `expedientes_judiciales`
--
ALTER TABLE `expedientes_judiciales`
  ADD PRIMARY KEY (`Id_exp_jud`);

--
-- Indices de la tabla `fotografia`
--
ALTER TABLE `fotografia`
  ADD PRIMARY KEY (`Id_fotografia`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `palabras_claves`
--
ALTER TABLE `palabras_claves`
  ADD PRIMARY KEY (`Id_palabra_clave`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`Id_rutas`);

--
-- Indices de la tabla `tipo_archivo`
--
ALTER TABLE `tipo_archivo`
  ADD PRIMARY KEY (`Id_tipo_Archivo`);

--
-- Indices de la tabla `tipo_cont_b`
--
ALTER TABLE `tipo_cont_b`
  ADD PRIMARY KEY (`ID_tipo_cont_b`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `ID_Areas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `ID_Libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `ID_coleccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `expedientes_judiciales`
--
ALTER TABLE `expedientes_judiciales`
  MODIFY `Id_exp_jud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotografia`
--
ALTER TABLE `fotografia`
  MODIFY `Id_fotografia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `palabras_claves`
--
ALTER TABLE `palabras_claves`
  MODIFY `Id_palabra_clave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `Id_rutas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_archivo`
--
ALTER TABLE `tipo_archivo`
  MODIFY `Id_tipo_Archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_cont_b`
--
ALTER TABLE `tipo_cont_b`
  MODIFY `ID_tipo_cont_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
