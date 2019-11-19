-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Servidor: 68.178.217.49
-- Tiempo de generación: 19-11-2019 a las 13:47:00
-- Versión del servidor: 5.5.51
-- Versión de PHP: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `Temporal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fechaAlta` date NOT NULL,
  `fechaAtendida` date DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `FK_Bitacora_Cliente_idx` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `bitacora`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(90) NOT NULL,
  `nombreContacto` varchar(50) NOT NULL,
  `puestoContacto` varchar(25) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono1` varchar(20) NOT NULL,
  `telefono2` varchar(20) DEFAULT NULL,
  `tipoProducto` longtext NOT NULL,
  `alcance` longtext NOT NULL,
  `procesos` longtext NOT NULL,
  `noPersonal` int(11) NOT NULL,
  `multiSitio` tinyint(1) NOT NULL,
  `fechaProbable` date NOT NULL,
  `requerimientoAdd` longtext,
  `fechaImplementado` date DEFAULT NULL,
  `integral` tinyint(1) NOT NULL,
  `nivelIntegrado` int(11) DEFAULT NULL,
  `observaciones` longtext,
  `costoCotizacion` int(11) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= pendiente; 1=revizado;2=aprovado',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcar la base de datos para la tabla `cliente`
--

INSERT INTO `cliente` VALUES(18, 'Coca-cola', 'Daniel', 'Ing.', 'dan@gmail.com', '5537124563', '', 'Servicio', 'sn', 'sn', 2, 0, '2019-09-17', 'no', '0000-00-00', 1, 10, '', 52275, 0);
INSERT INTO `cliente` VALUES(24, 'CEMEX', 'pedro', 'ing', 'edro@gmail.com', '55672413', '5534257689', 'material', 'asdfasdfasdf', 'sadfasdfadf', 150, 1, '2019-10-21', 'no', '2019-10-30', 1, 0, 'ninguno', 24001, 1);
INSERT INTO `cliente` VALUES(25, 'Servicios en Manejo de Mercancias Peligrosas DGM México, SA DE CV', 'Mariana Pacheco', 'Lic.', 'mpacheco@dgmmex.net', '5515603220', '', 'Transporte, capacitación, asesoría, comercialización de productos y empacado y almacenamiento de productos considerados peligrosos para el pransporte', 'Certificación del proceso de capacitación en el manejo de mercancías peligrosas vía terrestre para la obtención y renovación de la licencia tipo E, vía aéreo y marítimo', 'Proceso clave: Capacitación.\r\nDesarrollo de materiales\r\nlogística para la realización de un curso', 19, 0, '2019-12-02', 'Ninguno', '2015-01-01', 1, 0, 'Sólo en el caso de que desee accesar a nuestra área de almacén (la cual no esta vinculada con el proceso que deseamos certificar), deberá portar zapatos de seguridad con casquillo y chaleco de seguridad.', 34007, 1);
INSERT INTO `cliente` VALUES(26, 'RIALVAS GEO-ENVIRONMENTAL SOLUTIONS SC', 'ERIKA DEL CARMEN SALAZAR CONDE', 'DIRECTORA GENERAL', 'erika.salazar@rialvasgeo.com', '(9932) 77 50 32', '', '1. ESTUDIOS  2. INGENIERIA 3. CONSTRUCCIÓN', 'POR CONFIRMAR', '1.	ESTUDIOS  2. INGENIERÍA 3. CONSTRUCCIÓN', 6, 0, '2020-03-16', 'no aplica', '0000-00-00', 1, 0, 'SE INICIARÁ EN EL MES DE NOVIEMBRE PARA SU POSTERIOR VALIDACIÓN DE CERTIFICACIÓN APROXIMADAMENTE EN EL MES DE MARZO-ABRIL DE 2020', 15451, 1);
INSERT INTO `cliente` VALUES(27, 'Chihueca, S.A. de C.V.', 'Luis Antonio Pulido Castillo', 'Coordinador del Sistema d', 'calidad.fmn@gmail.com', '(55)58241602', '', 'Fabricación de productos para el Aseo', 'El sistema de gestión de la calidad es aplicable al Diseño, elaboración, venta y entrega de productos: de limpieza, desinfección y Jarcería', 'Procesos Principales (Diseño y Desarrollo, Ventas, Elaboración, Entrega)\r\nProcesos de Apoyo (Control de Calidad, Compras, Almacén, Mantenimiento)', 16, 0, '2020-07-01', '', '2015-01-01', 1, 0, 'Equipo de Protección Personal (Zapatos de Seguridad, Bata)\r\nActualmente la organización se encuentra certificada en ISO 9001 versión 2015 y por así convenir a los intereses de la organización se quiere cambiar de organismo certificador, en la semana 41 de este año, se tuvo el 3er seguimiento a nuestro sistema de gestión de la calidad.', 2, 1);
INSERT INTO `cliente` VALUES(28, 'SASCE DE MEXICO, S.A. DE C.V.', 'Lic. Mari Carmen Salas Meléndez', 'director general', 'isabelgarcia30@hotmail.com', '55 68063533', '', 'Maquinaria CNC, Servicios y Refacciones', 'comercialización, instalación y servicios de maquinaria CNC y sus refacciones.', 'Ventas, administración, compras, ingeniería, post venta, recursos humanos y gestión de calidad.', 43, 0, '2019-12-16', 'NO', '2019-07-01', 1, 0, 'NO', 0, 1);
INSERT INTO `cliente` VALUES(29, 'CIELCO S.A. DE C.V.', 'David Azuara Toscano', 'Coordinador SGI', 'david.azuara@cielco.com.mx', '7731107858', '5550391790', 'Construcción civil y electromecánico', 'Construcción de líneas de transmisión eléctrica aéreas y subterráneas y subestaciones eléctricas. (obra civil y electromecánica)', 'administrativos \r\n Dirección \r\n Recursos Humanos \r\n Compras \r\n contabilidad\r\n \r\n Operativo\r\n Construcción (civil y montaje electromecánico)\r\n calidad \r\n Seguridad y Salud \r\n Medio Ambiente', 0, 0, '0000-00-00', '', '0000-00-00', 1, 0, '', 0, 1);
INSERT INTO `cliente` VALUES(30, 'CIELCO S.A. DE C.V.', 'David Azuara Toscano', 'Coordinador SGI', 'david.azuara@cielco.com.mx', '7731107858', '5550391790', 'Construcción civil y electromecánico', 'construcción de líneas de transmisión eléctrica aéreas y subterráneas (obra civil y electromecánica)', 'Administración\r\n\r\n Gerencia\r\n Compras \r\n Recursos Humanos \r\n Contabilidad \r\n\r\n Operación \r\n  \r\n Construcción (obra civil y electromecánica)\r\n Calidad \r\n Seguridad \r\n Medio Ambiente', 0, 0, '2019-12-15', '', '0000-00-00', 1, 0, '', 0, 1);
INSERT INTO `cliente` VALUES(31, 'Recubrimientos Industriales Fronterizos', 'Arturo Romero', 'Gerente de Calidad', 'arturo.romero@reinfro.com', '8688100106', '', 'Recubrimiento metalico y pintura', 'ISO 9001 2015 \r\nRecubrimientos metalicos y de pintura a piezas automotrices', '', 168, 1, '2019-12-09', 'Zapatos de seguridad\r\nLentes de Seguridad', '2019-05-18', 1, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL,
  `noInterior` varchar(5) DEFAULT NULL,
  `noExterior` varchar(5) DEFAULT NULL,
  `colonia` varchar(10) NOT NULL,
  `alcaldia` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idDireccion`),
  KEY `FK_Direccion_Cliente_idx` (`cliente_idCliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcar la base de datos para la tabla `direccion`
--

INSERT INTO `direccion` VALUES(6, 'av. presidentes', '', 's/n', 'Potrero', 'Coacalco', 'México', 'México', '55714', 18, 1);
INSERT INTO `direccion` VALUES(11, 'calle uno', '2', '1', 'Potrero', 'Coacalco', 'mexico', 'México', '55714', 24, 1);
INSERT INTO `direccion` VALUES(12, 'vallejo', '', '12', 'vallejo', 'lindavista', 'CDMX', 'mexico', '03580', 24, 1);
INSERT INTO `direccion` VALUES(13, 'AV. Ferrocarril Industrial 163', '', '163', 'Moctezuma ', 'Venustiano Carranza', 'CDMX', 'México', '15530', 25, 1);
INSERT INTO `direccion` VALUES(14, 'MAGDALENA PASCUAL  ESQ. FRANCISCO CELORIO. FRACC. ', '41', '98', 'Plaza Vill', 'Villahermosa', 'Tabasco', 'México', '86170', 26, 1);
INSERT INTO `direccion` VALUES(15, 'Calle Baja California', 'mz 48', '8', 'México Nue', 'Atizapán de Zaragoza', 'Estado de México', 'México', '52966', 27, 1);
INSERT INTO `direccion` VALUES(16, 'Avena', '', '596', 'granjas me', 'iztacalco', 'cdmx', 'mexico', '08400', 28, 1);
INSERT INTO `direccion` VALUES(17, 'ÁLAMO', '', '36', 'TABLA HOND', 'TLALNEPANTLA DE BAZ', 'ESTADO MEXICO', 'MÉXICO', '54126', 29, 1);
INSERT INTO `direccion` VALUES(18, 'ÁLAMO', '', '36', 'TABLA HOND', 'TLALNEPANTLA DE BAZ', 'ESTADO MEXICO', 'MÉXICO', '54126', 30, 1);
INSERT INTO `direccion` VALUES(19, 'Sendero Nacional Km. 4.9', '', 'SN', 'Ejido Los ', 'Heroica Matamoros', 'Tamaulipas', 'Matamoros', '87560', 31, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normas`
--

CREATE TABLE `normas` (
  `idNormas` int(11) NOT NULL AUTO_INCREMENT,
  `certificado` varchar(90) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `acronimo` varchar(25) NOT NULL,
  `nmx` varchar(90) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idNormas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `normas`
--

INSERT INTO `normas` VALUES(1, '0', 'Sistema de Gestion Integral', 'SGI', NULL, 0);
INSERT INTO `normas` VALUES(2, 'ISO 9001:2015', 'Sistema de Gestion de Calidad', 'SGC', 'NMX-CC-9001-IMNC-2015', 1);
INSERT INTO `normas` VALUES(3, 'ISO 14001:2005', 'Sistema de Gestion Ambiental', 'SGA', 'NMX-SAA-14001-IMNC-2015', 1);
INSERT INTO `normas` VALUES(4, 'ISO 22000:2005', 'Sistema de Gestion Inocuidad de los Alimentos', 'SGIA', 'NMX-F-CC-22000-NORMEX-2007', 1);
INSERT INTO `normas` VALUES(5, 'ISO 22000:2018', 'Sistema de Gestion Inocuidad de los Alimentos', 'SGIA', NULL, 1);
INSERT INTO `normas` VALUES(6, 'ISO 28000:2007', 'Sistema de Gestion Seguridad Cadena de Suministro', 'SGSCS', NULL, 1);
INSERT INTO `normas` VALUES(7, 'ISO 37001', 'Sistema de Gestion Anti-Soborno', 'SGAS', NULL, 1);
INSERT INTO `normas` VALUES(8, 'ISO 45001:2018', 'Sistema de Gestion Seguridad y Salud en Trabajo', 'SGSST', 'NMX-SAST-45001-IMNC-2018', 1);
INSERT INTO `normas` VALUES(9, 'FSSC 22000', 'Food Safety System Certification', 'FSSC', NULL, 1);
INSERT INTO `normas` VALUES(10, 'HACCP', 'Sistema de Análisis de Peligros y de Puntos Críticos', 'HACCP', NULL, 1);
INSERT INTO `normas` VALUES(11, 'NMX-R-025-SCFI-2015', 'Norma Mexicana en Igualdad Laboral y No Discriminacion', '025', NULL, 1);
INSERT INTO `normas` VALUES(12, 'OHSAS 18001:2007', 'Sistema de Gestión de Seguridad y Salud Laboral', 'OHSAS', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normasSolicitadas`
--

CREATE TABLE `normasSolicitadas` (
  `idSolicitud` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idNorma` int(11) NOT NULL,
  PRIMARY KEY (`idSolicitud`),
  KEY `FK_Solicitud_Cliente_idx` (`idCliente`),
  KEY `FK_Solicitud_Norma_idx` (`idNorma`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Volcar la base de datos para la tabla `normasSolicitadas`
--

INSERT INTO `normasSolicitadas` VALUES(24, 18, 2);
INSERT INTO `normasSolicitadas` VALUES(37, 24, 3);
INSERT INTO `normasSolicitadas` VALUES(40, 25, 2);
INSERT INTO `normasSolicitadas` VALUES(42, 26, 8);
INSERT INTO `normasSolicitadas` VALUES(43, 27, 2);
INSERT INTO `normasSolicitadas` VALUES(44, 28, 2);
INSERT INTO `normasSolicitadas` VALUES(45, 30, 2);
INSERT INTO `normasSolicitadas` VALUES(46, 30, 3);
INSERT INTO `normasSolicitadas` VALUES(47, 30, 8);
INSERT INTO `normasSolicitadas` VALUES(48, 31, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios`
--

CREATE TABLE `sitios` (
  `idSitio` int(11) NOT NULL AUTO_INCREMENT,
  `sitio` varchar(100) NOT NULL,
  `estadoSitio` varchar(50) NOT NULL,
  `noPersonalAlias` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idSitio`),
  KEY `FK_Sitio_Cliente_idx` (`cliente_idCliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=360 ;

--
-- Volcar la base de datos para la tabla `sitios`
--

INSERT INTO `sitios` VALUES(1, 'ejlemplo', 'ejemplo', 30, 18, 1);
INSERT INTO `sitios` VALUES(350, 'valle dorado', 'mexico', 50, 24, 1);
INSERT INTO `sitios` VALUES(351, 'puerto', 'veracruz', 50, 24, 1);
INSERT INTO `sitios` VALUES(352, 'tampico', 'tampico', 50, 24, 1);
INSERT INTO `sitios` VALUES(353, '', '', 0, 25, 1);
INSERT INTO `sitios` VALUES(354, '', '', 0, 26, 1);
INSERT INTO `sitios` VALUES(355, '', '', 0, 27, 1);
INSERT INTO `sitios` VALUES(356, '', '', 0, 28, 1);
INSERT INTO `sitios` VALUES(357, '', '', 0, 29, 1);
INSERT INTO `sitios` VALUES(358, '', '', 0, 30, 1);
INSERT INTO `sitios` VALUES(359, '', 'Matamoros Tamaulipas', 30, 31, 1);

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `FK_Bitacora_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `FK_Direccion_Cliente` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `normasSolicitadas`
--
ALTER TABLE `normasSolicitadas`
  ADD CONSTRAINT `FK_Solicitud_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Solicitud_Norma` FOREIGN KEY (`idNorma`) REFERENCES `normas` (`idNormas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sitios`
--
ALTER TABLE `sitios`
  ADD CONSTRAINT `FK_Sitio_Cliente` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;