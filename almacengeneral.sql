-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2022 a las 03:42:24
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
-- Base de datos: `almacengeneral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `identificador` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` int(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `Foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `identificador`, `nombre`, `email`, `telefono`, `direccion`, `Foto`) VALUES
(1, '', '', '', 0, '1', ''),
(2, 'gdgdg', 'shsdh', 'caleb@gmail.com', 43243, 'f', 'FB_IMG_1647394696171.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_inv`
--

CREATE TABLE `control_inv` (
  `id` int(11) NOT NULL,
  `id_num` int(11) NOT NULL,
  `numeroR` varchar(100) NOT NULL,
  `fechaAct` date NOT NULL,
  `codigo` varchar(150) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `existencias` int(200) NOT NULL,
  `entrada` int(150) NOT NULL,
  `salida` varchar(150) NOT NULL,
  `stock` varchar(150) NOT NULL,
  `autorizo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `control_inv`
--

INSERT INTO `control_inv` (`id`, `id_num`, `numeroR`, `fechaAct`, `codigo`, `descripcion`, `existencias`, `entrada`, `salida`, `stock`, `autorizo`) VALUES
(1, 0, '', '0000-00-00', 'adas ', 'dasd', 0, 0, 'adas', 'adas', '3'),
(6, 2, 'fasdf', '2022-03-14', 'sag', 'sas', 0, 0, 'sg', 'gs', '2'),
(7, 2, '', '0000-00-00', '', '', 0, 0, '', '', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_alm`
--

CREATE TABLE `entrada_alm` (
  `id` int(11) NOT NULL,
  `folioalm` varchar(100) NOT NULL,
  `encargado_us` int(11) NOT NULL,
  `fecharegistro` date NOT NULL DEFAULT current_timestamp(),
  `n_contenedor` varchar(100) NOT NULL,
  `medida` varchar(100) NOT NULL,
  `n_booking` varchar(100) NOT NULL,
  `n_bultos` varchar(100) NOT NULL,
  `fh_llegada` date NOT NULL,
  `refe_lote` varchar(100) NOT NULL,
  `desc_merca` varchar(100) NOT NULL,
  `clientes` varchar(100) NOT NULL,
  `s_fiscal` varchar(100) NOT NULL,
  `s_adicional` varchar(100) NOT NULL,
  `n_factura` varchar(100) NOT NULL,
  `p_neto` varchar(100) NOT NULL,
  `p_bruto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_logout`
--

CREATE TABLE `login_logout` (
  `id_login` int(11) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fecha_log` datetime(6) NOT NULL,
  `fecha_logout` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nn_inventario`
--

CREATE TABLE `nn_inventario` (
  `id` int(11) NOT NULL,
  `idnum_inv` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nn_inventario`
--

INSERT INTO `nn_inventario` (`id`, `idnum_inv`, `fecha`) VALUES
(1, 2, '2022-03-03'),
(2, 3, '2022-03-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Alumno'),
(3, 'Cliente'),
(4, 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_ins`
--

CREATE TABLE `solicitud_ins` (
  `id` int(11) NOT NULL,
  `numero_Cont` varchar(50) NOT NULL,
  `fecha_Hora` date NOT NULL,
  `lugar_Ins` varchar(500) NOT NULL,
  `via` varchar(100) NOT NULL,
  `nombre_Solicicitante` varchar(150) NOT NULL,
  `tipo_de_Op` varchar(500) NOT NULL,
  `nombre_Ser` varchar(250) NOT NULL,
  `metodo_Trans` varchar(100) NOT NULL,
  `traspor_Gondo` varchar(150) NOT NULL,
  `empaque` varchar(250) NOT NULL,
  `marca` varchar(250) NOT NULL,
  `tone` varchar(250) NOT NULL,
  `bulto` varchar(250) NOT NULL,
  `lote` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarja_exp`
--

CREATE TABLE `tarja_exp` (
  `id` int(11) NOT NULL,
  `agente_A` varchar(150) NOT NULL,
  `cliente` varchar(150) NOT NULL,
  `buque` varchar(150) NOT NULL,
  `num_Cont` varchar(100) NOT NULL,
  `medida_Cont` varchar(100) NOT NULL,
  `lineaTras` varchar(100) NOT NULL,
  `nombreCon` varchar(150) NOT NULL,
  `placasCa` varchar(100) NOT NULL,
  `pla_plataformas` varchar(100) NOT NULL,
  `n_economico` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `s_fiscal` varchar(100) NOT NULL,
  `t_mercancia` varchar(100) NOT NULL,
  `p_neto` varchar(100) NOT NULL,
  `p_bruto` varchar(100) NOT NULL,
  `bultos` varchar(100) NOT NULL,
  `lote` varchar(100) NOT NULL,
  `obser` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarja_exp`
--

INSERT INTO `tarja_exp` (`id`, `agente_A`, `cliente`, `buque`, `num_Cont`, `medida_Cont`, `lineaTras`, `nombreCon`, `placasCa`, `pla_plataformas`, `n_economico`, `destino`, `s_fiscal`, `t_mercancia`, `p_neto`, `p_bruto`, `bultos`, `lote`, `obser`) VALUES
(4, 'Contecon', ' 2', '1000989', '028348897 ', '3MT', 'TMirage', 'Juan Carlos', '343HJ34', 'JOP4TH', '237329', 'Guanajuato', '343532', 'Electrodomesticos', '34k', '27k', '10 ', '24131 ', 'Precaución'),
(6, '', ' 2', '', ' ', '', '', '', '', '', '', '', '', '', '', '', ' ', ' ', ''),
(7, '', ' 2', '', ' ', '', '', '', '', '', '', '', '', '', '', '', ' ', ' ', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `identificador` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `telefono` int(20) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `Foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `identificador`, `nombre`, `apellidos`, `email_user`, `contraseña`, `telefono`, `rol_id`, `status`, `Foto`) VALUES
(14, 'dgf', 'dgg', 'gagd', 'yheolga@gmail.com', 'admin', 2147483647, 2, 2, 'Jett cute.jpg'),
(15, 'duna23', 'Admin', 'Falso', 'c@gmail.com', 'admin', 2323, 3, 1, ''),
(19, 'Adminusuario', 'Admin', 'Docente', 'admin@gmail.com', 'admin', 233232, 3, 1, 'Reyna cute.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `control_inv`
--
ALTER TABLE `control_inv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_num` (`id_num`);

--
-- Indices de la tabla `entrada_alm`
--
ALTER TABLE `entrada_alm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_logout`
--
ALTER TABLE `login_logout`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `login_fk_1` (`fk_usuario`);

--
-- Indices de la tabla `nn_inventario`
--
ALTER TABLE `nn_inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud_ins`
--
ALTER TABLE `solicitud_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarja_exp`
--
ALTER TABLE `tarja_exp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_idrol_1` (`rol_id`),
  ADD KEY `email_user` (`email_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `control_inv`
--
ALTER TABLE `control_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `entrada_alm`
--
ALTER TABLE `entrada_alm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `login_logout`
--
ALTER TABLE `login_logout`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `nn_inventario`
--
ALTER TABLE `nn_inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud_ins`
--
ALTER TABLE `solicitud_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tarja_exp`
--
ALTER TABLE `tarja_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entrada_alm`
--
ALTER TABLE `entrada_alm`
  ADD CONSTRAINT `encargado_fk1_1` FOREIGN KEY (`encargado_us`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `login_logout`
--
ALTER TABLE `login_logout`
  ADD CONSTRAINT `login_fk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_idrol_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
