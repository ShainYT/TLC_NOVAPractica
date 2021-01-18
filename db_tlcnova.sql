-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2021 a las 22:50:59
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tlcnova`
--
CREATE DATABASE IF NOT EXISTS `db_tlcnova` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_tlcnova`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `ubicacion_idubicacion` int(11) DEFAULT NULL,
  `catproducto_idproducto` int(11) DEFAULT NULL,
  `tipoproducto_idtipo` int(11) DEFAULT NULL,
  `modelos_idmodelos` int(11) DEFAULT NULL,
  `modelos_marca_idmarca` int(11) DEFAULT NULL,
  `status_idstatus` int(11) DEFAULT NULL,
  `unidadmed_idmedida` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fichatecnica` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nserie` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catproducto`
--

CREATE TABLE `catproducto` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `nombre`, `update`, `create`, `delete`) VALUES
(1, 'Alvaro Cruz', '2021-01-17 19:32:12', '2021-01-18 00:05:00', NULL),
(2, 'Pedro Perez Flores', '2021-01-17 20:06:50', '2021-01-18 02:04:52', NULL),
(3, 'Jose Roberto', NULL, '2021-01-18 02:06:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `nombre`, `update`, `create`, `delete`) VALUES
(1, 'Recursos Humanos 2', '2021-01-18 11:09:18', '2021-01-18 16:58:17', NULL),
(2, 'Recursos Humanos 3', '2021-01-18 11:10:33', '2021-01-18 17:09:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallerequi`
--

CREATE TABLE `detallerequi` (
  `iddetallerequi` int(11) NOT NULL,
  `articulo_idarticulo` int(11) DEFAULT NULL,
  `articulo_ubicacion_idubicacion` int(11) DEFAULT NULL,
  `articulo_catproducto_idproducto` int(11) DEFAULT NULL,
  `articulo_tipoproducto_idtipo` int(11) DEFAULT NULL,
  `articulo_modelos_idmodelos` int(11) DEFAULT NULL,
  `articulo_modelos_marca_idmarca` int(11) DEFAULT NULL,
  `articulo_status_idstatus` int(11) DEFAULT NULL,
  `articulo_unidadmed_idmedida` int(11) DEFAULT NULL,
  `requisicion_idrequisicion` int(11) DEFAULT NULL,
  `tipouso_idtipouso` int(11) DEFAULT NULL,
  `cantidad` decimal(2,0) DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `iddevolucion` int(11) NOT NULL,
  `cantidad` decimal(2,0) DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL,
  `quesucedio` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cotizacion` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ncotizacion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detallerequi_iddetallerequi` int(11) DEFAULT NULL,
  `detallerequi_articulo_idarticulo` int(11) DEFAULT NULL,
  `detallerequi_articulo_ubicacion_idubicacion` int(11) DEFAULT NULL,
  `detallerequi_articulo_catproducto_idproducto` int(11) DEFAULT NULL,
  `detallerequi_articulo_tipoproducto_idtipo` int(11) DEFAULT NULL,
  `detallerequi_articulo_modelos_idmodelos` int(11) DEFAULT NULL,
  `detallerequi_articulo_modelos_marca_idmarca` int(11) DEFAULT NULL,
  `detallerequi_articulo_status_idstatus` int(11) DEFAULT NULL,
  `detallerequi_articulo_unidadmed_idmedida` int(11) DEFAULT NULL,
  `detallerequi_requisicion_idrequisicion` int(11) DEFAULT NULL,
  `detallerequi_tipouso_idtipouso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `idfabricante` int(11) NOT NULL,
  `marca_idmarca` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`idfabricante`, `marca_idmarca`, `nombre`, `update`, `create`, `delete`) VALUES
(1, 2, 'Avera', NULL, '2021-01-18 19:24:26', NULL),
(2, 2, 'Avera2', NULL, '2021-01-18 20:38:46', NULL),
(3, 2, 'Avera 3', '2021-01-18 15:13:03', '2021-01-18 20:39:04', NULL),
(4, 4, 'Avera4', NULL, '2021-01-18 20:56:49', '2021-01-18 14:59:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresomaterial`
--

CREATE TABLE `ingresomaterial` (
  `idingreso` int(11) NOT NULL,
  `clientes_idclientes` int(11) DEFAULT NULL,
  `personal_idpersonal` int(11) DEFAULT NULL,
  `comentarios` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificado` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comoseve` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apartado` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cotizacion` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ncotizacion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idmarca`, `nombre`, `update`, `create`, `delete`) VALUES
(2, 'Apple', '2021-01-17 11:37:16', '2021-01-17 05:19:25', NULL),
(3, 'Lenovo', NULL, '2021-01-17 05:19:38', NULL),
(4, 'Motorola', NULL, '2021-01-17 05:24:15', NULL),
(12, 'Acer', '2021-01-17 11:32:35', '2021-01-17 05:32:52', NULL),
(16, 'Nueva marca', NULL, '2021-01-17 17:17:25', NULL),
(17, 'MSI', NULL, '2021-01-18 02:05:21', '2021-01-17 23:52:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `idmodelos` int(11) NOT NULL,
  `marca_idmarca` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL,
  `departamento_iddepartamento` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reemplazo`
--

CREATE TABLE `reemplazo` (
  `idreemplazo` int(11) NOT NULL,
  `comentarios` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` timestamp NULL DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL,
  `detalle` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detallerequi_iddetallerequi` int(11) DEFAULT NULL,
  `detallerequi_articulo_idarticulo` int(11) DEFAULT NULL,
  `detallerequi_articulo_ubicacion_idubicacion` int(11) DEFAULT NULL,
  `detallerequi_articulo_catproducto_idproducto` int(11) DEFAULT NULL,
  `detallerequi_articulo_tipoproducto_idtipo` int(11) DEFAULT NULL,
  `detallerequi_articulo_modelos_idmodelos` int(11) DEFAULT NULL,
  `detallerequi_articulo_modelos_marca_idmarca` int(11) DEFAULT NULL,
  `detallerequi_articulo_status_idstatus` int(11) DEFAULT NULL,
  `detallerequi_articulo_unidadmed_idmedida` int(11) DEFAULT NULL,
  `detallerequi_requisicion_idrequisicion` int(11) DEFAULT NULL,
  `detallerequi_tipouso_idtipouso` int(11) DEFAULT NULL,
  `verificador` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comoloven` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_idpersonal` int(11) DEFAULT NULL,
  `personal_departamento_iddepartamento` int(11) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisicion`
--

CREATE TABLE `requisicion` (
  `idrequisicion` int(11) NOT NULL,
  `claverequi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zona` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donde` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proyecto` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL,
  `reemplazo_idreemplazo` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `idtipo` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipouso`
--

CREATE TABLE `tipouso` (
  `idtipouso` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `idubicacion` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL,
  `almacen_idalmacen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadmed`
--

CREATE TABLE `unidadmed` (
  `idmedida` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomenclatura` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `create` timestamp NULL DEFAULT NULL,
  `delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD KEY `fk_ubicacion_idubicacion_idx` (`ubicacion_idubicacion`),
  ADD KEY `fk_catproducto_idproducto_idx` (`catproducto_idproducto`),
  ADD KEY `fk_tipoproducto_idtipo_idx` (`tipoproducto_idtipo`),
  ADD KEY `fk_modelos_idmodelos_idx` (`modelos_idmodelos`),
  ADD KEY `fk_modelos_marca_idmarca_idx` (`modelos_marca_idmarca`),
  ADD KEY `fk_status_idstatus_idx` (`status_idstatus`),
  ADD KEY `fk_unimadmed_idmedida_idx` (`unidadmed_idmedida`);

--
-- Indices de la tabla `catproducto`
--
ALTER TABLE `catproducto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `detallerequi`
--
ALTER TABLE `detallerequi`
  ADD PRIMARY KEY (`iddetallerequi`),
  ADD KEY `articulo_idarticulo_idx` (`articulo_idarticulo`),
  ADD KEY `fk_articulo_ubicacion_idubicacion_idx` (`articulo_ubicacion_idubicacion`),
  ADD KEY `fk_articulo_catproducto_idproducto_idx` (`articulo_catproducto_idproducto`),
  ADD KEY `fk_articulo_tipoproducto_idtipo_idx` (`articulo_tipoproducto_idtipo`),
  ADD KEY `fk_articulo_modelos_idmodelos_idx` (`articulo_modelos_idmodelos`),
  ADD KEY `fk_articulo_modelos_marca_idmarca_idx` (`articulo_modelos_marca_idmarca`),
  ADD KEY `fk_articulo_status_idstatus_idx` (`articulo_status_idstatus`),
  ADD KEY `fk_articulo_unidadmed_idmedida_idx` (`articulo_unidadmed_idmedida`),
  ADD KEY `fk_requisicion_idrequisicion_idx` (`requisicion_idrequisicion`),
  ADD KEY `fk_tipouso_idtipouso_idx` (`tipouso_idtipouso`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`iddevolucion`),
  ADD KEY `fk_detallerequi_iddetallerequi_idx` (`detallerequi_iddetallerequi`),
  ADD KEY `fk_devolucion_detallerequi_articulo_idarticulo_idx` (`detallerequi_articulo_idarticulo`),
  ADD KEY `fk_devolucion_detallerequi_articulo_ubicacion_idubicacion_idx` (`detallerequi_articulo_ubicacion_idubicacion`),
  ADD KEY `fk_devolucion_detallerequi_articulo_catproducto_idproducto_idx` (`detallerequi_articulo_catproducto_idproducto`),
  ADD KEY `fk_devolucion_detallerequi_articulo_tipoproducto_idtipo_idx` (`detallerequi_articulo_tipoproducto_idtipo`),
  ADD KEY `fk_devolucion_detallerequi_articulo_modelos_idmodelos_idx` (`detallerequi_articulo_modelos_idmodelos`),
  ADD KEY `fk_devolucion_detallerequi_articulo_modelos_marca_idmarca_idx` (`detallerequi_articulo_modelos_marca_idmarca`),
  ADD KEY `fk_devolucion_detallerequi_articulo_status_idstatus_idx` (`detallerequi_articulo_status_idstatus`),
  ADD KEY `fk_devolucion_detallerequi_articulo_unidadmed_idmedida_idx` (`detallerequi_articulo_unidadmed_idmedida`),
  ADD KEY `fk_devolucion_detallerequi_requisicion_idrequisicion_idx` (`detallerequi_requisicion_idrequisicion`),
  ADD KEY `fk_devolucion_detallerequi_tipouso_idtipouso_idx` (`detallerequi_tipouso_idtipouso`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`idfabricante`),
  ADD KEY `fk_marca_idmarca_idx` (`marca_idmarca`);

--
-- Indices de la tabla `ingresomaterial`
--
ALTER TABLE `ingresomaterial`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `fk_clientes_idcliente_idx` (`clientes_idclientes`),
  ADD KEY `fk_personal_idpersonal_idx` (`personal_idpersonal`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmarca`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`idmodelos`),
  ADD KEY `fk_marca_idmarca_idx` (`marca_idmarca`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idpersonal`),
  ADD KEY `fk_departamento_iddepartamento_idx` (`departamento_iddepartamento`);

--
-- Indices de la tabla `reemplazo`
--
ALTER TABLE `reemplazo`
  ADD PRIMARY KEY (`idreemplazo`),
  ADD KEY `fk_detallerequi_iddetallerequi_idx` (`detallerequi_iddetallerequi`),
  ADD KEY `fk_detallerequi_articulo_idarticulo_idx` (`detallerequi_articulo_idarticulo`),
  ADD KEY `fk_detallerequi_articulo_ubicacion_idubicacion_idx` (`detallerequi_articulo_ubicacion_idubicacion`),
  ADD KEY `fk_detallerequi_articulo_catproducto_idproducto_idx` (`detallerequi_articulo_catproducto_idproducto`),
  ADD KEY `detallerequi_articulo_tipoproducto_idtipo_idx` (`detallerequi_articulo_tipoproducto_idtipo`),
  ADD KEY `fk_detallerequi_articulo_modelos_idmodelos_idx` (`detallerequi_articulo_modelos_idmodelos`),
  ADD KEY `fk_detallerequi_articulo_modelos_marca_idmarca_idx` (`detallerequi_articulo_modelos_marca_idmarca`),
  ADD KEY `fk_detallerequi_articulo_status_idstatus_idx` (`detallerequi_articulo_status_idstatus`),
  ADD KEY `fk_detallerequi_articulo_unidadmed_idmedida_idx` (`detallerequi_articulo_unidadmed_idmedida`),
  ADD KEY `fk_detallerequi_requisicion_idrequisicion_idx` (`detallerequi_requisicion_idrequisicion`),
  ADD KEY `fk_detallerequi_tipouso_idtipouso_idx` (`detallerequi_tipouso_idtipouso`),
  ADD KEY `fk_departamento_iddepartamento_idx` (`personal_departamento_iddepartamento`),
  ADD KEY `fk_personal_idx` (`personal_idpersonal`);

--
-- Indices de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  ADD PRIMARY KEY (`idrequisicion`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idstatus`),
  ADD KEY `fk_reemplazo_idremplazo_idx` (`reemplazo_idreemplazo`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tipouso`
--
ALTER TABLE `tipouso`
  ADD PRIMARY KEY (`idtipouso`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`idubicacion`),
  ADD KEY `fk_almacen_idalmacen_idx` (`almacen_idalmacen`);

--
-- Indices de la tabla `unidadmed`
--
ALTER TABLE `unidadmed`
  ADD PRIMARY KEY (`idmedida`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id_almacen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catproducto`
--
ALTER TABLE `catproducto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detallerequi`
--
ALTER TABLE `detallerequi`
  MODIFY `iddetallerequi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `iddevolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `idfabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ingresomaterial`
--
ALTER TABLE `ingresomaterial`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `idmodelos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idpersonal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reemplazo`
--
ALTER TABLE `reemplazo`
  MODIFY `idreemplazo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  MODIFY `idrequisicion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `idstatus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipouso`
--
ALTER TABLE `tipouso`
  MODIFY `idtipouso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `idubicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidadmed`
--
ALTER TABLE `unidadmed`
  MODIFY `idmedida` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_catproducto_idproducto` FOREIGN KEY (`catproducto_idproducto`) REFERENCES `catproducto` (`idproducto`),
  ADD CONSTRAINT `fk_modelos_idmodelos` FOREIGN KEY (`modelos_idmodelos`) REFERENCES `modelos` (`idmodelos`),
  ADD CONSTRAINT `fk_modelos_marca_idmarca` FOREIGN KEY (`modelos_marca_idmarca`) REFERENCES `modelos` (`marca_idmarca`),
  ADD CONSTRAINT `fk_status_idstatus` FOREIGN KEY (`status_idstatus`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `fk_tipoproducto_idtipo` FOREIGN KEY (`tipoproducto_idtipo`) REFERENCES `tipoproducto` (`idtipo`),
  ADD CONSTRAINT `fk_ubicacion_idubicacion` FOREIGN KEY (`ubicacion_idubicacion`) REFERENCES `ubicacion` (`idubicacion`),
  ADD CONSTRAINT `fk_unimadmed_idmedida` FOREIGN KEY (`unidadmed_idmedida`) REFERENCES `unidadmed` (`idmedida`);

--
-- Filtros para la tabla `detallerequi`
--
ALTER TABLE `detallerequi`
  ADD CONSTRAINT `fk_articulo_catproducto_idproducto` FOREIGN KEY (`articulo_catproducto_idproducto`) REFERENCES `articulo` (`catproducto_idproducto`),
  ADD CONSTRAINT `fk_articulo_idarticulo` FOREIGN KEY (`articulo_idarticulo`) REFERENCES `articulo` (`idarticulo`),
  ADD CONSTRAINT `fk_articulo_modelos_idmodelos` FOREIGN KEY (`articulo_modelos_idmodelos`) REFERENCES `articulo` (`modelos_idmodelos`),
  ADD CONSTRAINT `fk_articulo_modelos_marca_idmarca` FOREIGN KEY (`articulo_modelos_marca_idmarca`) REFERENCES `articulo` (`modelos_marca_idmarca`),
  ADD CONSTRAINT `fk_articulo_status_idstatus` FOREIGN KEY (`articulo_status_idstatus`) REFERENCES `articulo` (`status_idstatus`),
  ADD CONSTRAINT `fk_articulo_tipoproducto_idtipo` FOREIGN KEY (`articulo_tipoproducto_idtipo`) REFERENCES `articulo` (`tipoproducto_idtipo`),
  ADD CONSTRAINT `fk_articulo_ubicacion_idubicacion` FOREIGN KEY (`articulo_ubicacion_idubicacion`) REFERENCES `articulo` (`ubicacion_idubicacion`),
  ADD CONSTRAINT `fk_articulo_unidadmed_idmedida` FOREIGN KEY (`articulo_unidadmed_idmedida`) REFERENCES `articulo` (`unidadmed_idmedida`),
  ADD CONSTRAINT `fk_requisicion_idrequisicion` FOREIGN KEY (`requisicion_idrequisicion`) REFERENCES `requisicion` (`idrequisicion`),
  ADD CONSTRAINT `fk_tipouso_idtipouso` FOREIGN KEY (`tipouso_idtipouso`) REFERENCES `tipouso` (`idtipouso`);

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_catproducto_idproducto` FOREIGN KEY (`detallerequi_articulo_catproducto_idproducto`) REFERENCES `detallerequi` (`articulo_catproducto_idproducto`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_idarticulo` FOREIGN KEY (`detallerequi_articulo_idarticulo`) REFERENCES `detallerequi` (`articulo_idarticulo`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_modelos_idmodelos` FOREIGN KEY (`detallerequi_articulo_modelos_idmodelos`) REFERENCES `detallerequi` (`articulo_modelos_idmodelos`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_modelos_marca_idmarca` FOREIGN KEY (`detallerequi_articulo_modelos_marca_idmarca`) REFERENCES `detallerequi` (`articulo_modelos_marca_idmarca`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_status_idstatus` FOREIGN KEY (`detallerequi_articulo_status_idstatus`) REFERENCES `detallerequi` (`articulo_status_idstatus`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_tipoproducto_idtipo` FOREIGN KEY (`detallerequi_articulo_tipoproducto_idtipo`) REFERENCES `detallerequi` (`articulo_tipoproducto_idtipo`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_ubicacion_idubicacion` FOREIGN KEY (`detallerequi_articulo_ubicacion_idubicacion`) REFERENCES `detallerequi` (`articulo_ubicacion_idubicacion`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_articulo_unidadmed_idmedida` FOREIGN KEY (`detallerequi_articulo_unidadmed_idmedida`) REFERENCES `detallerequi` (`articulo_unidadmed_idmedida`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_iddetallerequi` FOREIGN KEY (`detallerequi_iddetallerequi`) REFERENCES `detallerequi` (`iddetallerequi`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_requisicion_idrequisicion` FOREIGN KEY (`detallerequi_requisicion_idrequisicion`) REFERENCES `detallerequi` (`requisicion_idrequisicion`),
  ADD CONSTRAINT `fk_devolucion_detallerequi_tipouso_idtipouso` FOREIGN KEY (`detallerequi_tipouso_idtipouso`) REFERENCES `tipouso` (`idtipouso`);

--
-- Filtros para la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD CONSTRAINT `fk_marca_idmarca` FOREIGN KEY (`marca_idmarca`) REFERENCES `marca` (`idmarca`);

--
-- Filtros para la tabla `ingresomaterial`
--
ALTER TABLE `ingresomaterial`
  ADD CONSTRAINT `fk_clientes_idcliente` FOREIGN KEY (`clientes_idclientes`) REFERENCES `clientes` (`idcliente`),
  ADD CONSTRAINT `fk_personal_idpersonal` FOREIGN KEY (`personal_idpersonal`) REFERENCES `personal` (`idpersonal`);

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `fk_departamento_iddepartamento` FOREIGN KEY (`departamento_iddepartamento`) REFERENCES `departamento` (`iddepartamento`);

--
-- Filtros para la tabla `reemplazo`
--
ALTER TABLE `reemplazo`
  ADD CONSTRAINT `fk_detallerequi_articulo_catproducto_idproducto` FOREIGN KEY (`detallerequi_articulo_catproducto_idproducto`) REFERENCES `detallerequi` (`articulo_catproducto_idproducto`),
  ADD CONSTRAINT `fk_detallerequi_articulo_idarticulo` FOREIGN KEY (`detallerequi_articulo_idarticulo`) REFERENCES `detallerequi` (`articulo_idarticulo`),
  ADD CONSTRAINT `fk_detallerequi_articulo_modelos_idmodelos` FOREIGN KEY (`detallerequi_articulo_modelos_idmodelos`) REFERENCES `detallerequi` (`articulo_modelos_idmodelos`),
  ADD CONSTRAINT `fk_detallerequi_articulo_modelos_marca_idmarca` FOREIGN KEY (`detallerequi_articulo_modelos_marca_idmarca`) REFERENCES `detallerequi` (`articulo_modelos_marca_idmarca`),
  ADD CONSTRAINT `fk_detallerequi_articulo_status_idstatus` FOREIGN KEY (`detallerequi_articulo_status_idstatus`) REFERENCES `detallerequi` (`articulo_status_idstatus`),
  ADD CONSTRAINT `fk_detallerequi_articulo_tipoproducto_idtipo` FOREIGN KEY (`detallerequi_articulo_tipoproducto_idtipo`) REFERENCES `detallerequi` (`articulo_tipoproducto_idtipo`),
  ADD CONSTRAINT `fk_detallerequi_articulo_ubicacion_idubicacion` FOREIGN KEY (`detallerequi_articulo_ubicacion_idubicacion`) REFERENCES `detallerequi` (`articulo_ubicacion_idubicacion`),
  ADD CONSTRAINT `fk_detallerequi_articulo_unidadmed_idmedida` FOREIGN KEY (`detallerequi_articulo_unidadmed_idmedida`) REFERENCES `detallerequi` (`articulo_unidadmed_idmedida`),
  ADD CONSTRAINT `fk_detallerequi_iddetallerequi` FOREIGN KEY (`detallerequi_iddetallerequi`) REFERENCES `detallerequi` (`iddetallerequi`),
  ADD CONSTRAINT `fk_detallerequi_requisicion_idrequisicion` FOREIGN KEY (`detallerequi_requisicion_idrequisicion`) REFERENCES `detallerequi` (`requisicion_idrequisicion`),
  ADD CONSTRAINT `fk_detallerequi_tipouso_idtipouso` FOREIGN KEY (`detallerequi_tipouso_idtipouso`) REFERENCES `detallerequi` (`tipouso_idtipouso`),
  ADD CONSTRAINT `fk_reemplazo_personal_departamento_iddepartamento` FOREIGN KEY (`personal_departamento_iddepartamento`) REFERENCES `personal` (`departamento_iddepartamento`),
  ADD CONSTRAINT `fk_reemplazo_personal_idpersonal` FOREIGN KEY (`personal_idpersonal`) REFERENCES `personal` (`idpersonal`);

--
-- Filtros para la tabla `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `fk_reemplazo_idremplazo` FOREIGN KEY (`reemplazo_idreemplazo`) REFERENCES `reemplazo` (`idreemplazo`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `fk_almacen_idalmacen` FOREIGN KEY (`almacen_idalmacen`) REFERENCES `almacen` (`id_almacen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
