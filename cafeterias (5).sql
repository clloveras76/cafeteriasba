-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2018 a las 05:55:48
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeterias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeteria`
--

CREATE TABLE `cafeteria` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sitioweb` varchar(100) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  `ranking` bigint(20) DEFAULT NULL,
  `puntaje` bigint(20) DEFAULT NULL,
  `id_estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cafeteria`
--

INSERT INTO `cafeteria` (`id`, `usuarios_id`, `nombre`, `direccion`, `telefono`, `email`, `sitioweb`, `sucursal`, `ranking`, `puntaje`, `id_estado`) VALUES
(1, 1, 'All Saint Cafe', ' Cdad. de La Paz 2300', '011-4706-0016', 'allsaint@gmail.com', 'https://allsaintscafe.com.ar', 'Belgrano', 1, 0, 2),
(2, 6, 'Coffee Town', 'Defensa 961', '4361-0019', 'cofeetown@gmail.com', 'coffeetowncompany.com/', 'San Telmo', 2, 0, 2),
(3, 1, 'Café Tortoni', 'Avenida de Mayo 825', '011 4342-4328', 'cafetortoni@gmail.com', 'http://www.cafetortoni.com.ar/', 'San Nicolas', 3, 0, 2),
(4, 1, 'Havanna', 'Florida 948', NULL, 'havanna@gmail.com', 'http://www.havanna.com.ar/', 'San Nicolas', 4, 0, 0),
(5, 1, 'Labiela', 'Av. Quintana 600', '011 4804-0449', 'labiela@gmail.com', 'www.labiela.com/', 'Recoleta', 5, 0, 0),
(6, 1, 'Hard Rock Cafe', 'Av. Pueyrredon 2501', '011 4807-7625', 'hardrockar@gmail.com', 'www.hardrockcafebuenosaires.com.ar', 'Recoleta', 6, 0, 0),
(7, 1, 'Cafe Martinez', 'Av. Callao 858', '22222222222222222', 'cafemartinez@gmail.com', 'cuartito.com', 'Recoleta', 7, 0, 0),
(8, 1, 'StarBucks', NULL, NULL, 'starbucksar@gmail.com', 'http://www.starbucks.com', 'San Nicolas', 8, 0, 0),
(9, 1, 'Iceland San Telmo', 'Defensa 1105', '011 4361-4889', 'icelandhelados@gmail.com', 'http://icelandhelados.com.ar', 'San Telmo', 9, 0, 0),
(10, 1, 'Moliere Cafe', 'Chile 299', '4343-2623', 'molierecafe@gmail.com', 'http://www.moliere-cafe.com/', 'San Telmo', 10, 0, 0),
(11, 1, 'Maru Botana', '11 de Septiembre 1888', '011 4781-3385', 'marubotana@gmail.com', 'http://www.marubotana.com/', 'Belgrano', 11, 0, 0),
(57, 1, 'casa do cafe', 'brasil 555', '555-555', 'l@l.com', 'l@l.com', 'constitucion', 12, NULL, 0),
(58, 1, 'casa do cafe', 'brasil 555', '555-555', 'l@l.com', 'l@l.com', 'constitucion', 13, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeterias_comentarios`
--

CREATE TABLE `cafeterias_comentarios` (
  `id` int(11) NOT NULL,
  `cafeteria_id` int(11) NOT NULL,
  `comentario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cafeterias_comentarios`
--

INSERT INTO `cafeterias_comentarios` (`id`, `cafeteria_id`, `comentario_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeterias_estado`
--

CREATE TABLE `cafeterias_estado` (
  `id` int(11) NOT NULL,
  `estados_id` int(11) NOT NULL,
  `cafeteria_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeteria_has_imagenes`
--

CREATE TABLE `cafeteria_has_imagenes` (
  `id` int(11) NOT NULL,
  `cafeteria_id` int(11) NOT NULL,
  `imagenes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cafeteria_has_imagenes`
--

INSERT INTO `cafeteria_has_imagenes` (`id`, `cafeteria_id`, `imagenes_id`) VALUES
(4, 1, 1),
(5, 1, 2),
(6, 1, 2),
(7, 57, 13),
(8, 58, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeteria_has_producto`
--

CREATE TABLE `cafeteria_has_producto` (
  `id` int(11) NOT NULL,
  `cafeteria_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cafeteria_has_producto`
--

INSERT INTO `cafeteria_has_producto` (`id`, `cafeteria_id`, `producto_id`) VALUES
(1, 1, 3),
(2, 2, 5),
(3, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_cafeterias`
--

CREATE TABLE `categorias_cafeterias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias_cafeterias`
--

INSERT INTO `categorias_cafeterias` (`id`, `descripcion`) VALUES
(1, 'Historica'),
(2, 'Gourmet'),
(3, 'Degustacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_notas`
--

CREATE TABLE `categorias_notas` (
  `id` int(11) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias_notas`
--

INSERT INTO `categorias_notas` (`id`, `descripcion`) VALUES
(1, 'Tendencia'),
(2, 'Recomendacion'),
(3, 'Descubrir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_producto`
--

CREATE TABLE `categorias_producto` (
  `id` int(11) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias_producto`
--

INSERT INTO `categorias_producto` (`id`, `descripcion`) VALUES
(1, 'Bebida'),
(2, 'Comida'),
(3, 'Accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_cafeteria`
--

CREATE TABLE `categoria_cafeteria` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_cafeteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_cafeteria`
--

INSERT INTO `categoria_cafeteria` (`id`, `id_categoria`, `id_cafeteria`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `estados_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `comentario` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuarios_id`, `estados_id`, `fecha`, `comentario`) VALUES
(1, 4, 1, '2018-05-20 00:00:00', 'Fui varias veces, inclusive fui a su antigua sucursal de Arenales, y nunca me decepciono. Lo coloco entre los mejores junto '),
(2, 4, 2, '2018-05-20 00:00:00', 'Fui a probar el cafe en el el lugar que, segun habia leido, era muy bueno. Decepcionante, pedi un cafe cargado ( ya que generalmente suelo hacer este comentario para advertir que no me gusta un \"jugo de paeaguas ) fy recibi un cafe muy suave, sin cuerpo y casi sin gusto.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `nombre_sistema` varchar(80) DEFAULT NULL,
  `ubicacion` varchar(80) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `usuarios_id`, `nombre_sistema`, `ubicacion`, `descripcion`) VALUES
(1, 5, '5.jpg', '/assets/img/cafeterias', 'Portada cafeteria all saint'),
(2, 5, '6.jpg', '/assets/img/cafeterias', 'thumbnails cafe all saints'),
(3, 5, '7', '/assets/img/cafeterias', 'foto menu all saints'),
(4, 5, '8.jpg', '/assets/img/cafeterias', 'Portada cafeteria cofee town'),
(5, 5, '9.jpg', '/assets/img/cafeterias', 'thumbnails cafe Cofee town'),
(6, 5, '1121.jpg', '/assets/img/notas', 'Portada nota cafe gourmet'),
(7, 1, 'id_51_docafe.jpg', 'img/cafeterias/id_51_docafe.jpg', 'Portada cafeteria'),
(8, 1, 'id_52_docafe.jpg', 'img/cafeterias/id_52_docafe.jpg', 'Portada cafeteria'),
(9, 1, 'id_53_docafe.jpg', 'img/cafeterias/id_53_docafe.jpg', 'Portada cafeteria'),
(10, 1, 'id_54_docafe.jpg', 'img/cafeterias/id_54_docafe.jpg', 'Portada cafeteria'),
(11, 1, 'id_55_docafe.jpg', 'img/cafeterias/id_55_docafe.jpg', 'Portada cafeteria'),
(12, 1, 'id_56_docafe.jpg', 'img/cafeterias/id_56_docafe.jpg', 'Portada cafeteria'),
(13, 1, 'id_57_docafe.jpg', 'img/cafeterias/id_57_docafe.jpg', 'Portada cafeteria'),
(14, 1, 'id_58_docafe.jpg', 'img/cafeterias/id_58_docafe.jpg', 'Portada cafeteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `descripcion` text,
  `precio` float(2,2) DEFAULT NULL,
  `id_cafeteria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `nombre`, `descripcion`, `precio`, `id_cafeteria`) VALUES
(1, 'menu desayuno', 'cafe con leche con 2 medialunas', 0.99, 1),
(2, 'Menu desayuno gourmet', 'Degustacion 2 tipos de cafe , medialunas gourmet + tostadas', 0.99, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_has_producto`
--

CREATE TABLE `menu_has_producto` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_has_producto`
--

INSERT INTO `menu_has_producto` (`id`, `menu_id`, `producto_id`) VALUES
(3, 1, 3),
(4, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `nota` text,
  `titulo` varchar(100) DEFAULT NULL,
  `comentarios_habilitados` tinyint(1) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `nota`, `titulo`, `comentarios_habilitados`, `id_usuario`) VALUES
(1, 'Dicen que, alguna vez, Buenos Aires tuvo un café en cada esquina y que en los barrios la noche peregrinaba de un local a otro. Era una ciudad con tiempo para arreglar el mundo desde una mesa de café, con el bolsillo suelto y las esperanzas apretadas. En las mesas, un pocillo de café se alargaba interminablemente, tanto como la nostalgia impregnada por el humo de un cigarrillo.', 'El boom de los café gourmet de Buenos Aires', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_categoria`
--

CREATE TABLE `notas_categoria` (
  `id` int(11) NOT NULL,
  `notas_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas_categoria`
--

INSERT INTO `notas_categoria` (`id`, `notas_id`, `categorias_id`) VALUES
(1, 1, 2),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_estado`
--

CREATE TABLE `notas_estado` (
  `id` int(11) NOT NULL,
  `estados_id` int(11) NOT NULL,
  `notas_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `comentario` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas_estado`
--

INSERT INTO `notas_estado` (`id`, `estados_id`, `notas_id`, `fecha`, `comentario`) VALUES
(1, 1, 1, '2018-05-20 00:00:00', 'Nota APROBADA POR ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_has_imagenes`
--

CREATE TABLE `notas_has_imagenes` (
  `id` int(11) NOT NULL,
  `notas_id` int(11) NOT NULL,
  `imagenes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas_has_imagenes`
--

INSERT INTO `notas_has_imagenes` (`id`, `notas_id`, `imagenes_id`) VALUES
(1, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privacidad`
--

CREATE TABLE `privacidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `privacidad`
--

INSERT INTO `privacidad` (`id`, `descripcion`) VALUES
(1, 'Publico'),
(2, 'Privado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privacidad_usuarios`
--

CREATE TABLE `privacidad_usuarios` (
  `id` int(11) NOT NULL,
  `idprivacidad` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `activo-inactivo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `privacidad_usuarios`
--

INSERT INTO `privacidad_usuarios` (`id`, `idprivacidad`, `idusuario`, `activo-inactivo`) VALUES
(1, 2, 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `imagenes_id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `precio` float(6,2) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `categorias_producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `imagenes_id`, `nombre`, `precio`, `descripcion`, `categorias_producto_id`) VALUES
(3, 1, 'Cafe gourmet', 120.99, 'Cafe exclusivo de cafeteria cofee town . Exportado de Colombia', 1),
(4, 2, 'Filtro de cafe', 85.99, 'Filtro con varios nieveles de filtrado para los diferentes tipos de cafe', 3),
(5, 3, 'Cafe gourmet cafeteria all saint', 250.00, 'Cafe exclusivo de cafeteria all saint . Exportado de Colombia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`id`, `descripcion`) VALUES
(1, 'Admin'),
(2, 'Cafeteria'),
(3, 'Editor'),
(4, 'Registrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `rol_usuario_id` int(11) NOT NULL,
  `estados_id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `ubicacion_foto` varchar(45) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rol_usuario_id`, `estados_id`, `nombre`, `apellido`, `email`, `pass`, `ubicacion_foto`, `fecha_registro`) VALUES
(1, 1, 1, 'Admin', 'Admin', 'admin@cafeteriasba.com', '$2y$10$prXfaT96WFmAZ08VS3ejG.HgvLgnc0yczuJK2RPNxUgyNOfJ8Ruq.', '/assets/img/1.jpg', '2018-05-18 03:00:00'),
(3, 3, 1, 'Editor nuevo', 'Editor nuevo', 'editornuevo@cafeteriasba.com', '$2y$10$ixpEnUbzIYyEIjkj8wAaXeTH6Srl8khoSpJ.DLGGmZUNJ/sYBumNe', '/assets/img/2.jpg', '2018-05-18 03:00:00'),
(4, 4, 1, 'Sergio', 'Martinez', 'sergio@gmail.com', '1358546', '/assets/img/2.jpg', '2018-05-18 03:00:00'),
(5, 2, 1, 'All saint', 'cafe', 'allsaint@gmail.com', '12121325', '/assets/img/5.jpg', '2018-05-20 03:00:00'),
(6, 2, 1, 'cofee town', 'caefteria', 'cofeetown@gmail.com', '225213', '/assets/img/6.jpg', '2018-05-20 03:00:00'),
(7, 4, 1, NULL, NULL, 'halonso@gmail.com', '$2y$10$f71Co/SzVVrYxatstW1YaejghYyBauM4.DnbVXNIjLmOwS6RgB5he', NULL, NULL),
(8, 4, 1, NULL, NULL, 'jmariano@gmail.com', '$2y$10$6D6pWtexC3.DL4vklmRq.ONVddfHYJ3qYeN8hyn3kIwwUvC7kCvyW', NULL, NULL),
(9, 4, 1, NULL, NULL, '', '$2y$10$EIXCu.ixwvMjcIHeIVDV2.cVEXpAUtmPX7CsBajSCJmVm.ihLBeay', NULL, NULL),
(10, 4, 1, NULL, NULL, 'admin2@cafeteriasba.com', '$2y$10$5/epG2bi7IiH2.RD.FR8OOX3Grs7JNWusZtJdG0kuNdyl6sRoaVrW', NULL, NULL),
(11, 4, 1, NULL, NULL, 'admin3@cafeteriasba.com', '$2y$10$8nq.wFU0z9x3KpvMOaX.HOcKErMNrQEwfxqCzq/c4.cjzXIi0dVF6', NULL, NULL),
(12, 4, 1, NULL, NULL, 'admin3@cafeteriasba.com', '$2y$10$xY7B2FHGODkR235yFf7G6efOgy4bM2/ulygErm2XbNYNwc/ANm3Ia', NULL, NULL),
(13, 4, 1, NULL, NULL, 'admin4@cafeteriasba.com', '$2y$10$jlCCNZecBZfnnyQKoQ15xeyRI46fdvHKy5sA.Vltsay8y00T3KPTu', NULL, NULL),
(14, 4, 1, NULL, NULL, 'admin4@cafeteriasba.com', '$2y$10$2uj0Z68qvJ2VjYmXJVTUuO4UorKGuP0R3guJEPl8sxNyG9oReNTza', NULL, NULL),
(15, 4, 1, NULL, NULL, 'admin5@cafeteriasba.com', '$2y$10$qTtjFi0ovznJ/WsT55NOXulvl.kyzYATe9/d67Ne0gKRZ73Wu43sC', NULL, NULL),
(16, 4, 1, NULL, NULL, 'admin6@cafeteriasba.com', '$2y$10$SpFRexsrlU/nzcvUVmu32euouFgBecbtgOz0yUAdmwJXjMly6r2XW', NULL, NULL),
(17, 4, 1, NULL, NULL, 'admin6@cafeteriasba.com', '$2y$10$H5tOWjB6wytowMBXys8LQOrp9yy3gwRUd/0obWJJl93CWR9TNJCP2', NULL, NULL),
(18, 1, 1, 'german', 'rodriguez', 'grodriguez@gmail.com', '', NULL, NULL),
(19, 1, 1, 'german', 'rodriguez', 'grodriguez@gmail.com', '', NULL, NULL),
(20, 2, 2, 'laureano222', 'quiroga222', 'lalo.q2121@gmail.com222', '$2y$10$.xezxIHbGGvP69.lIRQ0Me89pvxQsGHuvk3lHbjP39y2hYRatk7u6', NULL, NULL),
(21, 4, 1, NULL, NULL, 'admin8@gmail.com', '$2y$10$DrvOroKB21ktl2Y91LMt.eqHHWxcPAZgKpMTVBlCU2HEAGONboKFC', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cafeteria`
--
ALTER TABLE `cafeteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_cafeteria_usuarios1_idx` (`usuarios_id`);

--
-- Indices de la tabla `cafeterias_comentarios`
--
ALTER TABLE `cafeterias_comentarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_comentarios_has_usuarios_comentarios1_idx` (`comentario_id`),
  ADD KEY `fk_comentarios_has_usuarios_cafeteria1_idx` (`cafeteria_id`);

--
-- Indices de la tabla `cafeterias_estado`
--
ALTER TABLE `cafeterias_estado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_estados_has_cafeteria_cafeteria1_idx` (`cafeteria_id`),
  ADD KEY `fk_estados_has_cafeteria_estados1_idx` (`estados_id`),
  ADD KEY `fk_cafeterias_estado_usuarios1_idx` (`usuarios_id`);

--
-- Indices de la tabla `cafeteria_has_imagenes`
--
ALTER TABLE `cafeteria_has_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_cafeteria_has_imagenes_imagenes1_idx` (`imagenes_id`),
  ADD KEY `fk_cafeteria_has_imagenes_cafeteria1_idx` (`cafeteria_id`);

--
-- Indices de la tabla `cafeteria_has_producto`
--
ALTER TABLE `cafeteria_has_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_cafeteria_has_producto_producto1_idx` (`producto_id`),
  ADD KEY `fk_cafeteria_has_producto_cafeteria1_idx` (`cafeteria_id`);

--
-- Indices de la tabla `categorias_cafeterias`
--
ALTER TABLE `categorias_cafeterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `categorias_notas`
--
ALTER TABLE `categorias_notas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `categorias_producto`
--
ALTER TABLE `categorias_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `categoria_cafeteria`
--
ALTER TABLE `categoria_cafeteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_categorias_has_cafeteria_cafeteria1_idx` (`id_cafeteria`),
  ADD KEY `fk_categorias_has_cafeteria_categorias1_idx` (`id_categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_comentarios_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_comentarios_estados1_idx` (`estados_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_imagenes_usuarios1_idx` (`usuarios_id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `menu_has_producto`
--
ALTER TABLE `menu_has_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_menu_has_producto_producto1_idx` (`producto_id`),
  ADD KEY `fk_menu_has_producto_menu1_idx` (`menu_id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `notas_categoria`
--
ALTER TABLE `notas_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_notas_has_categorias_categorias1_idx` (`categorias_id`),
  ADD KEY `fk_notas_has_categorias_notas1_idx` (`notas_id`);

--
-- Indices de la tabla `notas_estado`
--
ALTER TABLE `notas_estado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_estados_has_notas_notas1_idx` (`notas_id`),
  ADD KEY `fk_estados_has_notas_estados1_idx` (`estados_id`);

--
-- Indices de la tabla `notas_has_imagenes`
--
ALTER TABLE `notas_has_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_notas_has_imagenes_imagenes1_idx` (`imagenes_id`),
  ADD KEY `fk_notas_has_imagenes_notas1_idx` (`notas_id`);

--
-- Indices de la tabla `privacidad`
--
ALTER TABLE `privacidad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `privacidad_usuarios`
--
ALTER TABLE `privacidad_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_privacidad_has_usuarios_usuarios1_idx` (`idusuario`),
  ADD KEY `fk_privacidad_has_usuarios_privacidad_idx` (`idprivacidad`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_producto_imagenes1_idx` (`imagenes_id`),
  ADD KEY `fk_producto_categorias_producto1_idx` (`categorias_producto_id`);

--
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_usuarios_rol_usuario1_idx` (`rol_usuario_id`),
  ADD KEY `fk_usuarios_estados1_idx` (`estados_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cafeteria`
--
ALTER TABLE `cafeteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `cafeterias_comentarios`
--
ALTER TABLE `cafeterias_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cafeterias_estado`
--
ALTER TABLE `cafeterias_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cafeteria_has_imagenes`
--
ALTER TABLE `cafeteria_has_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `cafeteria_has_producto`
--
ALTER TABLE `cafeteria_has_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `categorias_cafeterias`
--
ALTER TABLE `categorias_cafeterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `categorias_notas`
--
ALTER TABLE `categorias_notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `categorias_producto`
--
ALTER TABLE `categorias_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `categoria_cafeteria`
--
ALTER TABLE `categoria_cafeteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `menu_has_producto`
--
ALTER TABLE `menu_has_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `notas_categoria`
--
ALTER TABLE `notas_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `notas_estado`
--
ALTER TABLE `notas_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `notas_has_imagenes`
--
ALTER TABLE `notas_has_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `privacidad`
--
ALTER TABLE `privacidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `privacidad_usuarios`
--
ALTER TABLE `privacidad_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cafeteria`
--
ALTER TABLE `cafeteria`
  ADD CONSTRAINT `fk_cafeteria_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cafeterias_comentarios`
--
ALTER TABLE `cafeterias_comentarios`
  ADD CONSTRAINT `fk_comentarios_has_usuarios_cafeteria1` FOREIGN KEY (`cafeteria_id`) REFERENCES `cafeteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comentarios_has_usuarios_comentarios1` FOREIGN KEY (`comentario_id`) REFERENCES `comentarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cafeterias_estado`
--
ALTER TABLE `cafeterias_estado`
  ADD CONSTRAINT `fk_cafeterias_estado_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estados_has_cafeteria_cafeteria1` FOREIGN KEY (`cafeteria_id`) REFERENCES `cafeteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estados_has_cafeteria_estados1` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cafeteria_has_imagenes`
--
ALTER TABLE `cafeteria_has_imagenes`
  ADD CONSTRAINT `fk_cafeteria_has_imagenes_cafeteria1` FOREIGN KEY (`cafeteria_id`) REFERENCES `cafeteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cafeteria_has_imagenes_imagenes1` FOREIGN KEY (`imagenes_id`) REFERENCES `imagenes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cafeteria_has_producto`
--
ALTER TABLE `cafeteria_has_producto`
  ADD CONSTRAINT `fk_cafeteria_has_producto_cafeteria1` FOREIGN KEY (`cafeteria_id`) REFERENCES `cafeteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cafeteria_has_producto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `categoria_cafeteria`
--
ALTER TABLE `categoria_cafeteria`
  ADD CONSTRAINT `fk_categorias_has_cafeteria_cafeteria1` FOREIGN KEY (`id_cafeteria`) REFERENCES `cafeteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_categorias_has_cafeteria_categorias1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias_cafeterias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_estados1` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comentarios_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fk_imagenes_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `id_cafeteria` FOREIGN KEY (`id`) REFERENCES `cafeteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_has_producto`
--
ALTER TABLE `menu_has_producto`
  ADD CONSTRAINT `fk_menu_has_producto_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_menu_has_producto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notas_categoria`
--
ALTER TABLE `notas_categoria`
  ADD CONSTRAINT `fk_notas_has_categorias_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias_notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_notas_has_categorias_notas1` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notas_estado`
--
ALTER TABLE `notas_estado`
  ADD CONSTRAINT `fk_estados_has_notas_estados1` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estados_has_notas_notas1` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notas_has_imagenes`
--
ALTER TABLE `notas_has_imagenes`
  ADD CONSTRAINT `fk_notas_has_imagenes_imagenes1` FOREIGN KEY (`imagenes_id`) REFERENCES `imagenes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_notas_has_imagenes_notas1` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `privacidad_usuarios`
--
ALTER TABLE `privacidad_usuarios`
  ADD CONSTRAINT `fk_privacidad_has_usuarios_privacidad` FOREIGN KEY (`idprivacidad`) REFERENCES `privacidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_privacidad_has_usuarios_usuarios1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categorias_producto1` FOREIGN KEY (`categorias_producto_id`) REFERENCES `categorias_producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_estados1` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarios_rol_usuario1` FOREIGN KEY (`rol_usuario_id`) REFERENCES `rol_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
