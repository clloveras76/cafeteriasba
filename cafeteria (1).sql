-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generacion: 13-06-2018 a las 23:03:21
-- Version del servidor: 10.1.31-MariaDB
-- Version de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteria`
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
  `sucursal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cafeteria`
--

INSERT INTO `cafeteria` (`id`, `usuarios_id`, `nombre`, `direccion`, `telefono`, `email`, `sitioweb`, `sucursal`) VALUES
(1, 5, 'All Saint Cafe', ' Cdad. de La Paz 2300', '011 4706-0016', 'allsaint@gmail.com', 'https://allsaintscafe.com.ar/', NULL),
(2, 6, 'Coffee Town', 'Defensa 961', '4361-0019', 'cofeetown@gmail.com', 'coffeetowncompany.com/', 'San Telmo');

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
(6, 1, 2);

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
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(6, 5, '1121.jpg', '/assets/img/notas', 'Portada nota cafe gourmet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(1, 'Dicen que, alguna vez, Buenos Aires tuvo un cafe en cada esquina y que en los barrios la noche peregrinaba de un local a otro. Era una ciudad con tiempo para arreglar el mundo desde una mesa de cafe, con el bolsillo suelto y las esperanzas apretadas. En las mesas, un pocillo de cafe se alargaba interminablemente, tanto como la nostalgia impregnada por el humo de un cigarrillo.', 'El boom de los cafe gourmet de Buenos Aires', 1, 3);

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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_autologin`
--

CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `ubicacion_foto` varchar(45) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rol_usuario_id`, `estados_id`, `nombre`, `apellido`, `email`, `pass`, `ubicacion_foto`, `fecha_registro`) VALUES
(1, 1, 1, 'Admin', 'Admin', 'admin@cafeteriasba.com', '123456', '/assets/img/1.jpg', '2018-05-18 00:00:00'),
(3, 3, 1, 'Editor', 'Editor', 'editor@cafeteriasba.com', '987654321', '/assets/img/2.jpg', '2018-05-18 00:00:00'),
(4, 4, 1, 'Sergio', 'Martinez', 'sergio@gmail.com', '1358546', '/assets/img/2.jpg', '2018-05-18 00:00:00'),
(5, 2, 1, 'All saint', 'cafe', 'allsaint@gmail.com', '12121325', '/assets/img/5.jpg', '2018-05-20 00:00:00'),
(6, 2, 1, 'cofee town', 'caefteria', 'cofeetown@gmail.com', '225213', '/assets/img/6.jpg', '2018-05-20 00:00:00');

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
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`);

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
-- Indices de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Indices de la tabla `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
