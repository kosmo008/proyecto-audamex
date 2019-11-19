-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Servidor: 97.74.31.133
-- Tiempo de generación: 19-11-2019 a las 15:49:10
-- Versión del servidor: 5.5.51
-- Versión de PHP: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `SireAudamex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `nombre_Area` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcar la base de datos para la tabla `area`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areatec`
--

CREATE TABLE `areatec` (
  `idareaTec` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_AT` longtext COLLATE utf8_spanish2_ci,
  `Sector_idSector` int(11) NOT NULL,
  PRIMARY KEY (`idareaTec`),
  KEY `fk_areaTec_Sector_idx` (`Sector_idSector`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=31 ;

--
-- Volcar la base de datos para la tabla `areatec`
--

INSERT INTO `areatec` VALUES(1, '13.92', 'fabricacion de articulos confeccionados con textiles, excepto prendas de vestir', 4);
INSERT INTO `areatec` VALUES(2, '82.91', 'Actividades de las agencias de cobros y de informacion comercial', 35);
INSERT INTO `areatec` VALUES(3, '20.20', 'Fabricacion de pesticidas y otros productos agroquimicos', 12);
INSERT INTO `areatec` VALUES(5, '46.46', 'Comercio al por mayor de productos farmaceuticos', 29);
INSERT INTO `areatec` VALUES(6, '46.69', 'Comercio al por mayor de otra maquinaria y equipo', 29);
INSERT INTO `areatec` VALUES(7, '46.75', 'Comercio al por mayor de productos quimicos', 29);
INSERT INTO `areatec` VALUES(8, '38.11', 'Recogida de residuos no peligrosos', 39);
INSERT INTO `areatec` VALUES(9, '20.60', 'Fabricación de fibras artificiales y sintéticas', 12);
INSERT INTO `areatec` VALUES(10, '13.96', 'Fabricación de otros productos textiles de uso técnico e industrial', 4);
INSERT INTO `areatec` VALUES(11, '13.30', 'Acabado de textiles', 4);
INSERT INTO `areatec` VALUES(12, '25.99', 'Fabricación de otros productos metálicos n.c.o.p.', 17);
INSERT INTO `areatec` VALUES(13, '25.61', 'Tratamiento y revestimiento de metales', 17);
INSERT INTO `areatec` VALUES(14, '20.30', 'Fabricación de pinturas, barnices y revestimientos similares; tintas de imprenta y masillas', 12);
INSERT INTO `areatec` VALUES(15, '22.22', 'Fabricación de envases y embalajes de plástico', 14);
INSERT INTO `areatec` VALUES(16, '46.73', 'Comercio al por mayor de madera, materiales de construcción y aparatos sanitarios', 29);
INSERT INTO `areatec` VALUES(17, '78.10', 'Actividades de las agencias de colocación', 35);
INSERT INTO `areatec` VALUES(18, '22.11', 'Fabricación de neumáticos y cámaras de caucho; reconstrucción y recauchutado\r\nde neumáticos', 14);
INSERT INTO `areatec` VALUES(19, '33.11', ' Reparación de productos metálicos', 17);
INSERT INTO `areatec` VALUES(20, '25.62', 'Ingeniería mecánica por cuenta de terceros', 17);
INSERT INTO `areatec` VALUES(21, '20.16', 'Fabricación de plásticos en formas primarias', 12);
INSERT INTO `areatec` VALUES(22, '56.29', 'Otros servicios de comidas', 30);
INSERT INTO `areatec` VALUES(23, '82.19', 'Actividades de fotocopiado, preparación de documentos y otras actividades especializadas de oficina', 35);
INSERT INTO `areatec` VALUES(24, '79.11', 'Actividades de las agencias de viajes', 39);
INSERT INTO `areatec` VALUES(25, '82.30', 'Organización de convenciones y ferias de muestras', 35);
INSERT INTO `areatec` VALUES(26, '85.42', 'Educación terciaria', 37);
INSERT INTO `areatec` VALUES(29, '61.10', 'Telecomunicaciones por cable', 31);
INSERT INTO `areatec` VALUES(30, '46.31', 'Comercio al por mayor de frutas y hortalizas', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areatvscliente`
--

CREATE TABLE `areatvscliente` (
  `AreaTvsCliente` int(11) NOT NULL AUTO_INCREMENT,
  `areaTec_idareaTec` int(11) NOT NULL,
  `cliente_idcliente` int(11) NOT NULL,
  PRIMARY KEY (`AreaTvsCliente`),
  KEY `fk_detalleATvsC_areaTec1_idx` (`areaTec_idareaTec`),
  KEY `fk_detalleATvsC_cliente1_idx` (`cliente_idcliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `areatvscliente`
--

INSERT INTO `areatvscliente` VALUES(1, 3, 1);
INSERT INTO `areatvscliente` VALUES(2, 2, 2);
INSERT INTO `areatvscliente` VALUES(3, 5, 3);
INSERT INTO `areatvscliente` VALUES(4, 6, 3);
INSERT INTO `areatvscliente` VALUES(5, 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditor`
--

CREATE TABLE `auditor` (
  `idauditor` int(11) NOT NULL AUTO_INCREMENT,
  `clave_Aud` varchar(6) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_Aud` varchar(90) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idauditor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=18 ;

--
-- Volcar la base de datos para la tabla `auditor`
--

INSERT INTO `auditor` VALUES(1, 'MARJ', 'Marco Antonio Rosales Jimenez');
INSERT INTO `auditor` VALUES(2, 'EAE', 'Eduardo Antunez Escobar');
INSERT INTO `auditor` VALUES(3, 'JTM', 'Jose Tovar Mora');
INSERT INTO `auditor` VALUES(4, 'EMG', 'Erick Manuel Garfias');
INSERT INTO `auditor` VALUES(5, 'ARM', 'Alfonso Reyes Marin');
INSERT INTO `auditor` VALUES(6, 'COMT', 'Carlos Orlando Masse Tellez');
INSERT INTO `auditor` VALUES(7, 'UGM', 'Ulises Gomez Molina');
INSERT INTO `auditor` VALUES(8, 'SGP', 'Santos Gomez Perez');
INSERT INTO `auditor` VALUES(9, 'AMT', 'Araceli Mendoza Torres');
INSERT INTO `auditor` VALUES(10, 'ESM', 'Erika Sanchez Martinez');
INSERT INTO `auditor` VALUES(11, 'LAHR', 'Luz Adriana Hernandez Rodriguez');
INSERT INTO `auditor` VALUES(12, 'DSS', 'Daniel Sosa Sanchez');
INSERT INTO `auditor` VALUES(13, 'DBGC', 'Diana Betsabe Gonzales Chavez');
INSERT INTO `auditor` VALUES(14, 'PRSH', 'Perla Raquel Sanchez Herrera');
INSERT INTO `auditor` VALUES(15, 'NDDT', 'Nazario Dante de Dios Toledano');
INSERT INTO `auditor` VALUES(16, 'SGM', 'Samuel Gutierez Montiel');
INSERT INTO `auditor` VALUES(17, 'DOH', 'David Ocampo Hernandez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `idauditoria` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'E1=Etapa 1; E2=Etapa 2; S1=Primer seguimiento; RC=Recertificacion; ',
  `dias` tinyint(4) NOT NULL COMMENT 'Dias por auditor',
  `fechaInicioR` date DEFAULT NULL COMMENT 'Fecha Real de inicio',
  `fechaFinR` date NOT NULL COMMENT 'Fecha Real de fin',
  `fechaInicioD` date DEFAULT NULL COMMENT 'fecha documental de inicio',
  `FechaFinD` date NOT NULL COMMENT 'fecha documental de fin',
  `confirmada` int(11) DEFAULT NULL COMMENT '0=notificada\n1=confirmada\n',
  `cliente_idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idauditoria`),
  KEY `fk_auditoria_cliente1_idx` (`cliente_idcliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` VALUES(1, 'Etapa 1 ', 0, '2018-01-17', '2018-01-17', '2018-01-05', '2018-01-05', 1, 1);
INSERT INTO `auditoria` VALUES(2, 'Etapa 2', 0, '2018-01-18', '2018-01-19', '2018-01-18', '2018-01-19', 1, 1);
INSERT INTO `auditoria` VALUES(3, 'Etapa 1 ', 0, '2018-03-05', '2018-03-05', '2018-03-05', '2018-03-05', 1, 3);
INSERT INTO `auditoria` VALUES(4, 'Etapa 2', 0, '2018-03-22', '2018-03-23', '2018-03-22', '2018-03-23', 1, 3);
INSERT INTO `auditoria` VALUES(5, '5S', 2, '2019-05-24', '2019-05-24', '2019-05-24', '2019-05-24', 1, 5);
INSERT INTO `auditoria` VALUES(6, '5S', 2, '2019-05-06', '2019-05-07', '2019-05-06', '2019-05-07', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoriavsesquema`
--

CREATE TABLE `auditoriavsesquema` (
  `idauditoriavsesquema` int(11) NOT NULL AUTO_INCREMENT,
  `esquema_idesquema` int(11) NOT NULL,
  `auditoria_idauditoria` int(11) NOT NULL,
  PRIMARY KEY (`idauditoriavsesquema`),
  KEY `fk_auditoriavsesquema_esquema1_idx` (`esquema_idesquema`),
  KEY `fk_auditoriavsesquema_auditoria1_idx` (`auditoria_idauditoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `auditoriavsesquema`
--

INSERT INTO `auditoriavsesquema` VALUES(1, 1, 1);
INSERT INTO `auditoriavsesquema` VALUES(2, 2, 1);
INSERT INTO `auditoriavsesquema` VALUES(3, 1, 5);
INSERT INTO `auditoriavsesquema` VALUES(4, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `idCalificacion` int(11) NOT NULL AUTO_INCREMENT,
  `areaTec_idareaTec` int(11) NOT NULL,
  `auditor_idauditor` int(11) NOT NULL,
  `esquema_idesquema` int(11) NOT NULL,
  PRIMARY KEY (`idCalificacion`),
  KEY `fk_Calificacion_areaTec1_idx` (`areaTec_idareaTec`),
  KEY `fk_Calificacion_auditor1_idx` (`auditor_idauditor`),
  KEY `fk_Calificacion_esquema1_idx` (`esquema_idesquema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `calificacion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambioscertificado`
--

CREATE TABLE `cambioscertificado` (
  `idCambiosCertificado` int(11) NOT NULL AUTO_INCREMENT,
  `edicion` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `motivo` longtext COLLATE utf8_spanish2_ci,
  `certificado_idcertificado` int(11) NOT NULL,
  PRIMARY KEY (`idCambiosCertificado`),
  KEY `fk_CambiosCertificado_certificado1_idx` (`certificado_idcertificado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cambioscertificado`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `idcertificado` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `emision` date NOT NULL COMMENT 'Emisión del certificado',
  `expiracion` date DEFAULT NULL COMMENT 'Expiracion del ciclo de certificacion',
  `cambio1` date NOT NULL COMMENT 'fecha cuando se tiene que cambiar certificado',
  `cambio2` date NOT NULL COMMENT 'fecha del 2° cambio de certificado',
  `estatus` tinyint(4) DEFAULT NULL COMMENT '0=cancelado, 1=vigente, 2= suspendido, 3=expirado',
  `comentario` longtext COLLATE utf8_spanish2_ci,
  `cliente_idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idcertificado`),
  KEY `fk_certificado_cliente1_idx` (`cliente_idcliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=334 ;

--
-- Volcar la base de datos para la tabla `certificado`
--

INSERT INTO `certificado` VALUES(1, 'SGA-04-2013', '2013-06-03', '2020-06-02', '2014-06-02', '2015-06-02', 1, NULL, 96);
INSERT INTO `certificado` VALUES(39, 'SGC-39-2011', '2017-06-17', '2020-06-16', '2018-06-16', '2019-06-16', 1, 'CERTIFICACION INICIAL 08/07/2011 actualizacion 21/04/18\r\n', 47);
INSERT INTO `certificado` VALUES(40, 'SGC-40-2011', '2017-07-08', '2020-07-07', '2018-07-07', '2019-07-07', 1, 'RECERTIFICACION 07/07/14\r\n', 48);
INSERT INTO `certificado` VALUES(41, 'SGC-41-2011', '2011-07-29', '2014-07-29', '2012-07-28', '2013-07-28', 3, NULL, 49);
INSERT INTO `certificado` VALUES(42, 'SGC-42-2011', '2011-07-29', '2014-07-29', '2012-07-28', '2013-07-28', 3, NULL, 50);
INSERT INTO `certificado` VALUES(43, 'SGC-43-2011', '2011-08-03', '2014-08-02', '2012-08-02', '2013-08-02', 0, NULL, 51);
INSERT INTO `certificado` VALUES(44, 'SGC-44-2011', '2011-08-04', '2014-08-04', '2012-08-03', '2013-08-03', 3, NULL, 52);
INSERT INTO `certificado` VALUES(45, 'SGC-45-2011', '2011-08-04', '2014-08-04', '2012-08-03', '2013-08-03', 3, NULL, 53);
INSERT INTO `certificado` VALUES(46, 'SGC-46-2011', '0000-00-00', '2014-08-09', '0000-00-00', '0000-00-00', 0, NULL, 54);
INSERT INTO `certificado` VALUES(47, 'SGC-47-2011', '0000-00-00', '2014-08-15', '0000-00-00', '0000-00-00', 0, NULL, 55);
INSERT INTO `certificado` VALUES(48, 'SGC-48-2011', '2017-08-24', '2018-09-15', '2018-08-23', '2019-08-23', 0, NULL, 56);
INSERT INTO `certificado` VALUES(49, 'SGC-49-2011', '2011-09-02', '2014-09-01', '2012-09-01', '2013-09-01', 3, NULL, 57);
INSERT INTO `certificado` VALUES(50, 'SGC-50-2011', '2011-09-02', '2014-09-01', '2012-09-01', '2013-09-01', 3, NULL, 58);
INSERT INTO `certificado` VALUES(51, 'SGC-51-2011', '2011-09-07', '2014-09-06', '2012-09-06', '2013-09-06', 3, NULL, 91);
INSERT INTO `certificado` VALUES(52, 'SGC-52-2011', '2011-09-07', '2014-09-06', '2012-09-06', '2013-09-06', 3, NULL, 60);
INSERT INTO `certificado` VALUES(53, 'SGC-53-2011', '2011-09-07', '2014-09-06', '2012-09-06', '2013-09-06', 3, NULL, 61);
INSERT INTO `certificado` VALUES(54, 'SGC-54-2011', '2017-10-06', '2020-10-05', '2018-10-05', '2019-10-05', 1, 'CERTIFICACION INIAL 06/10/11\r\n', 62);
INSERT INTO `certificado` VALUES(55, 'SGC-55-2011', '2017-10-11', '2020-10-10', '2018-10-10', '2019-10-10', 2, NULL, 63);
INSERT INTO `certificado` VALUES(56, 'SGC-56-2011', '2014-10-16', '2017-10-17', '2015-10-15', '2016-10-15', 3, NULL, 64);
INSERT INTO `certificado` VALUES(57, 'SGC-57-2012', '2015-03-26', '2018-03-25', '2016-03-25', '2017-03-25', 3, NULL, 65);
INSERT INTO `certificado` VALUES(58, 'SGC-58-2012', '2018-06-18', '2021-06-17', '2019-06-17', '2020-06-17', 1, NULL, 66);
INSERT INTO `certificado` VALUES(59, 'SGC-59-2012', '2015-12-10', '2018-12-09', '2016-12-09', '2017-12-09', 3, 'Recertificacion diciembre del 2012\r\n', 67);
INSERT INTO `certificado` VALUES(60, 'SGC-60-2012', '2019-02-23', '2021-12-16', '2020-02-22', '2021-02-22', 1, 'recertificacion diciembre 2012\r\nmodificcaion de alcance y actualizacion de norma 07/07/18\r\n', 68);
INSERT INTO `certificado` VALUES(61, 'SG-61-2012', '2012-11-17', '2015-12-17', '2013-11-16', '2014-11-16', 3, NULL, 69);
INSERT INTO `certificado` VALUES(62, 'SCG-62-2013', '2019-02-11', '2022-02-10', '2020-02-10', '2021-02-11', 1, 'ACTUALIZACION A 2015 24/03/18\r\nrecer 09-02-19\r\n', 70);
INSERT INTO `certificado` VALUES(63, 'SCG-63-2013', '2016-02-11', '2018-09-15', '2017-02-10', '2018-02-10', 3, 'Recertificacion febrero del 2017\r\n', 70);
INSERT INTO `certificado` VALUES(64, 'SGC-64-2013', '2013-05-06', '2016-05-05', '2014-05-05', '2015-05-05', 3, NULL, 72);
INSERT INTO `certificado` VALUES(65, 'SGC-65-2013', '2013-07-08', '2016-07-07', '2014-07-07', '2015-07-07', 3, '\r\n', 73);
INSERT INTO `certificado` VALUES(66, 'SGC-66-2013', '2016-08-05', '2018-09-15', '2017-08-04', '2018-08-04', 0, NULL, 74);
INSERT INTO `certificado` VALUES(67, 'SGC-67-2013', '2013-09-11', '2016-09-10', '2017-09-10', '2018-09-10', 0, NULL, 75);
INSERT INTO `certificado` VALUES(68, 'SGC-68-2013', '2016-11-11', '2019-11-10', '2017-11-10', '2018-11-10', 1, NULL, 76);
INSERT INTO `certificado` VALUES(69, 'SGC-69-2013', '2013-11-11', '2016-11-10', '2014-11-10', '2015-11-10', 3, NULL, 77);
INSERT INTO `certificado` VALUES(70, 'SGC-70-2013', '2016-12-13', '2019-12-12', '2017-12-12', '2016-12-12', 1, NULL, 78);
INSERT INTO `certificado` VALUES(71, 'SGC-71-2013', '2013-12-13', '2013-12-12', '2014-12-12', '2015-12-12', 0, NULL, 79);
INSERT INTO `certificado` VALUES(72, 'SGC-72-2013', '2013-09-02', '2016-09-01', '2014-09-01', '2015-09-01', 0, NULL, 80);
INSERT INTO `certificado` VALUES(73, 'SGC-73-2014', '2014-02-27', '2017-03-28', '2015-02-26', '2016-02-26', 0, NULL, 81);
INSERT INTO `certificado` VALUES(74, 'SGC-74-2014', '2017-08-18', '2020-08-17', '2018-08-17', '2019-09-17', 1, NULL, 82);
INSERT INTO `certificado` VALUES(75, 'SGC-75-2014', '2014-08-04', '2017-08-03', '2015-08-03', '2016-08-03', 3, NULL, 83);
INSERT INTO `certificado` VALUES(76, 'SGC-76-2014', '2017-08-04', '2020-08-03', '2018-08-03', '2019-08-03', 2, NULL, 84);
INSERT INTO `certificado` VALUES(77, 'SGC-77-2014', '2017-08-04', '2020-08-03', '2018-08-03', '2019-08-03', 1, NULL, 85);
INSERT INTO `certificado` VALUES(78, 'SGC-78-2014', '2014-08-18', '2017-08-17', '2015-08-17', '2016-08-17', 3, NULL, 86);
INSERT INTO `certificado` VALUES(79, 'SGC-79-2014', '2014-08-18', '2017-08-17', '2015-08-17', '2016-08-17', 0, NULL, 87);
INSERT INTO `certificado` VALUES(80, 'SGC-80-2014', '2014-08-18', '2017-08-17', '2015-08-17', '2016-08-17', 3, NULL, 88);
INSERT INTO `certificado` VALUES(81, 'SGC-81-2014', '2017-08-18', '2020-08-17', '2018-08-17', '2019-08-17', 2, NULL, 89);
INSERT INTO `certificado` VALUES(82, 'SGC-82-2014', '2017-08-18', '2020-08-17', '2018-08-17', '2019-08-17', 0, NULL, 90);
INSERT INTO `certificado` VALUES(83, 'SGC-83-2015', '2017-08-18', '2020-08-17', '2018-08-17', '2019-08-17', 2, NULL, 91);
INSERT INTO `certificado` VALUES(84, 'SGC-84-2014', '2014-08-30', '2017-08-29', '2015-08-29', '2016-08-29', 0, NULL, 92);
INSERT INTO `certificado` VALUES(85, 'SGC-85-2014', '2017-09-08', '2020-09-07', '2018-09-07', '2019-09-07', 2, NULL, 93);
INSERT INTO `certificado` VALUES(86, 'SGC-86-2014', '2017-09-08', '2020-09-07', '2018-09-07', '2019-09-07', 2, NULL, 94);
INSERT INTO `certificado` VALUES(87, 'SGC-87-2014', '2014-09-08', '2017-09-07', '2015-09-07', '2016-09-07', 0, NULL, 95);
INSERT INTO `certificado` VALUES(88, 'SGC-88-2014', '2017-10-20', '2020-10-19', '2018-10-19', '2019-10-19', 1, NULL, 96);
INSERT INTO `certificado` VALUES(89, 'SGC-89-2014', '2014-10-27', '2017-10-26', '2015-10-26', '2016-10-26', 3, NULL, 97);
INSERT INTO `certificado` VALUES(90, 'SGC-90-2014', '2017-12-08', '0000-00-00', '2018-12-07', '2019-12-07', 1, NULL, 98);
INSERT INTO `certificado` VALUES(91, 'SGC-91-2014', '2017-12-08', '2020-12-07', '2018-12-07', '2019-12-07', 1, NULL, 99);
INSERT INTO `certificado` VALUES(92, 'SGC-92-2014', '2017-12-15', '2020-12-14', '2018-12-14', '2019-12-14', 1, NULL, 100);
INSERT INTO `certificado` VALUES(93, 'SGC-93-2014', '2017-12-15', '2020-12-14', '2018-12-14', '2019-12-14', 1, NULL, 101);
INSERT INTO `certificado` VALUES(94, 'SGC-94-2014', '2017-12-29', '2020-12-28', '2018-12-28', '2019-12-28', 1, NULL, 102);
INSERT INTO `certificado` VALUES(95, 'SGC-95-2015', '2018-03-02', '2021-03-01', '2019-03-01', '2020-03-01', 1, NULL, 103);
INSERT INTO `certificado` VALUES(96, 'SGC-96-2015', '2015-03-23', '2015-03-22', '2016-03-22', '2017-03-22', 0, NULL, 104);
INSERT INTO `certificado` VALUES(97, 'SGC-97-2015', '2015-04-13', '2018-03-12', '2016-04-12', '2017-04-12', 0, NULL, 105);
INSERT INTO `certificado` VALUES(98, 'SGC-98-2015', '2015-04-06', '2018-04-05', '2016-04-05', '2017-04-05', 0, NULL, 106);
INSERT INTO `certificado` VALUES(99, 'SGC-99-2015', '2015-04-13', '2018-04-12', '2016-04-12', '2017-04-12', 0, NULL, 107);
INSERT INTO `certificado` VALUES(100, 'SGC-100-2015', '2015-05-04', '2018-05-03', '2016-05-03', '2017-05-03', 0, NULL, 108);
INSERT INTO `certificado` VALUES(101, 'SGC-101-2015', '2015-05-11', '2018-05-10', '2016-05-10', '0000-00-00', 0, NULL, 109);
INSERT INTO `certificado` VALUES(102, 'SGC-102-2015', '2018-05-25', '2021-05-24', '2019-05-24', '2020-05-24', 0, NULL, 110);
INSERT INTO `certificado` VALUES(103, 'SGC-103-2015', '2018-11-24', '2021-05-29', '2019-11-23', '0000-00-00', 1, NULL, 111);
INSERT INTO `certificado` VALUES(104, 'SGC-104-2015', '2018-07-06', '2021-07-05', '2019-07-05', '2020-07-05', 1, NULL, 112);
INSERT INTO `certificado` VALUES(105, 'SGC-105-2015', '2015-07-06', '2018-07-05', '2016-07-05', '2017-07-05', 0, NULL, 113);
INSERT INTO `certificado` VALUES(106, 'SGC-106-2015', '2015-07-13', '2015-07-12', '0000-00-00', '0000-00-00', 0, NULL, 114);
INSERT INTO `certificado` VALUES(107, 'SGC-107-2015', '2015-07-27', '2018-07-26', '2016-07-26', '2017-07-26', 1, NULL, 115);
INSERT INTO `certificado` VALUES(108, 'SGC-108-2015', '2015-08-03', '2018-08-02', '2016-08-02', '2017-08-02', 0, NULL, 116);
INSERT INTO `certificado` VALUES(109, 'SGC-109-2015', '2018-08-14', '2021-08-13', '2019-08-13', '2020-08-13', 1, NULL, 117);
INSERT INTO `certificado` VALUES(110, 'SGC-110-2015', '2018-09-21', '2021-09-20', '2019-09-20', '2020-09-20', 1, NULL, 118);
INSERT INTO `certificado` VALUES(111, 'SGC-111-2015', '2015-09-21', '2018-09-15', '2016-09-20', '2017-09-20', 0, NULL, 119);
INSERT INTO `certificado` VALUES(112, 'SGC-112-2015', '2015-10-19', '2018-10-18', '2016-10-18', '2017-10-18', 0, NULL, 120);
INSERT INTO `certificado` VALUES(113, 'SGC-113-2015', '2018-10-19', '2021-10-18', '2019-10-18', '2020-10-18', 1, NULL, 121);
INSERT INTO `certificado` VALUES(114, 'SGC-114-2015', '2015-11-03', '2018-09-15', '2016-11-02', '2017-11-02', 0, NULL, 122);
INSERT INTO `certificado` VALUES(115, 'SGC-115-2015', '2018-11-09', '2021-11-08', '2019-11-08', '0000-00-00', 1, 'el certificado que se le dio al cliente tiene fecha de expiracion de noviembre del 2018\r\n', 123);
INSERT INTO `certificado` VALUES(116, 'SGC-116-2015', '2018-11-23', '2021-11-22', '2019-11-22', '2020-11-22', 1, 'actualizacion de norma 07/07/18\r\nrecer 15/11/18', 124);
INSERT INTO `certificado` VALUES(117, 'SGC-117-2015', '2015-11-23', '2018-09-15', '2016-11-22', '2017-11-22', 0, NULL, 125);
INSERT INTO `certificado` VALUES(118, 'SGC-118-2015', '2015-11-30', '2018-09-15', '2016-11-29', '2017-11-29', 0, NULL, 126);
INSERT INTO `certificado` VALUES(119, 'SGC-119-2015', '2015-12-07', '2018-09-15', '2016-12-06', '2017-12-06', 0, NULL, 127);
INSERT INTO `certificado` VALUES(120, 'SGC-120-2015', '2015-12-21', '2018-09-15', '2016-12-20', '2017-12-20', 0, NULL, 128);
INSERT INTO `certificado` VALUES(121, 'SGC-121-2016', '2019-01-30', '2022-01-29', '2020-01-29', '2021-01-29', 1, NULL, 130);
INSERT INTO `certificado` VALUES(125, 'SGC-125-2016', '2016-04-04', '2018-09-15', '2017-04-03', '2018-04-03', 0, NULL, 137);
INSERT INTO `certificado` VALUES(126, 'SGC-126-2016', '2016-03-07', '2018-09-15', '2017-03-06', '2018-03-06', 0, NULL, 138);
INSERT INTO `certificado` VALUES(127, 'SGC-127-2016', '2016-04-11', '2018-09-15', '2017-04-10', '2018-04-10', 3, NULL, 139);
INSERT INTO `certificado` VALUES(128, 'SGC-128-2016', '2019-04-11', '2020-04-10', '2020-04-10', '2021-04-10', 1, 'actualizacion y modificacion de alcance \r\n15-09-18\r\nrecer 23-03-19', 140);
INSERT INTO `certificado` VALUES(129, 'SGC-129-2016', '2016-05-02', '2018-09-15', '2017-05-01', '2018-05-01', 0, NULL, 141);
INSERT INTO `certificado` VALUES(130, 'SGC-130-2016', '2016-05-02', '2019-05-01', '2017-05-01', '2018-05-01', 3, NULL, 142);
INSERT INTO `certificado` VALUES(131, 'SGC-131-2016', '2019-04-26', '2022-04-25', '2020-04-25', '2021-04-25', 1, 'actualizacion \r\n07-07-18\r\nrecer 06-04-19', 143);
INSERT INTO `certificado` VALUES(132, 'SGC-132-2016', '2016-05-10', '2018-09-15', '2017-05-09', '2018-05-09', 0, NULL, 144);
INSERT INTO `certificado` VALUES(133, 'SGC-133-2016', '2019-05-23', '2022-05-22', '2020-05-22', '2021-05-22', 1, 'actualizacion \r\n18-08-18', 145);
INSERT INTO `certificado` VALUES(134, 'SGC-134-2016', '2016-05-23', '2018-09-15', '2017-05-22', '2018-05-22', 0, NULL, 146);
INSERT INTO `certificado` VALUES(135, 'SGC-135-2016', '2016-05-30', '2018-09-15', '2017-05-29', '2018-05-29', 0, NULL, 147);
INSERT INTO `certificado` VALUES(136, 'SGC-136-2016', '2016-06-20', '2018-09-15', '2017-06-19', '2018-06-19', 0, NULL, 148);
INSERT INTO `certificado` VALUES(137, 'SGC-137-2016', '2016-07-25', '2019-07-24', '2017-07-24', '2018-07-24', 2, 'actualizacion \r\n11-08-18', 149);
INSERT INTO `certificado` VALUES(138, 'SGC-138-2016', '2016-08-08', '2019-08-07', '2017-08-07', '2018-08-07', 1, 'actualizacion \r\n11-08-18', 150);
INSERT INTO `certificado` VALUES(139, 'SGC-139-2016', '2016-08-08', '2018-09-15', '2017-08-07', '2018-08-08', 0, NULL, 151);
INSERT INTO `certificado` VALUES(140, 'SGC-140-2016', '2016-08-08', '2019-08-07', '2017-08-07', '2018-08-07', 2, NULL, 152);
INSERT INTO `certificado` VALUES(141, 'SGC-141-2016', '2016-08-22', '2018-09-15', '2017-08-21', '2018-08-21', 0, NULL, 153);
INSERT INTO `certificado` VALUES(142, 'SGC-142-2016', '2016-08-29', '2019-08-28', '2017-08-28', '2018-08-28', 1, 'actualizacion de norma \r\n08-09-18', 154);
INSERT INTO `certificado` VALUES(143, 'SGC-143-2016', '2016-11-05', '2018-09-15', '2017-11-04', '2018-11-04', 0, NULL, 155);
INSERT INTO `certificado` VALUES(144, 'SGC-144-2016', '2016-11-05', '2019-11-04', '2017-11-04', '2018-11-04', 1, 'actualizacion \r\n21-04-18 y cambio razon social el \r\n01-08-18', 230);
INSERT INTO `certificado` VALUES(145, 'SGC-145-2016', '2019-11-05', '2020-11-04', '0000-00-00', '0000-00-00', 1, 'actualizacion\r\n 21-04-18', 113);
INSERT INTO `certificado` VALUES(146, 'SGC-146-2016', '2016-11-26', '2019-11-25', '2017-11-25', '2018-11-25', 1, NULL, 158);
INSERT INTO `certificado` VALUES(147, 'SGC-147-2016', '2016-11-26', '2019-09-15', '2017-11-25', '2018-11-25', 1, NULL, 159);
INSERT INTO `certificado` VALUES(148, 'SGC-148-2016', '2016-11-26', '2019-09-25', '2017-11-25', '2018-11-25', 1, 'modificacion de alcance 09/09/17\r\n', 160);
INSERT INTO `certificado` VALUES(149, 'SGC-149-2016', '2016-12-03', '2019-12-02', '2017-12-02', '2018-12-02', 1, NULL, 161);
INSERT INTO `certificado` VALUES(150, 'SGC-150-2016', '2016-12-03', '2019-12-02', '2017-12-02', '2018-12-02', 2, 'actualizacion \r\n08-09-18', 162);
INSERT INTO `certificado` VALUES(151, 'SGC-151-2016', '2016-12-17', '2019-12-16', '2017-12-16', '2018-12-16', 1, NULL, 163);
INSERT INTO `certificado` VALUES(152, 'SGC-152-2016', '2016-12-17', '2018-12-15', '2016-12-16', '2018-12-16', 0, NULL, 164);
INSERT INTO `certificado` VALUES(153, 'SGC-153-2016', '2016-12-17', '2019-12-16', '2017-12-16', '2018-12-16', 2, NULL, 165);
INSERT INTO `certificado` VALUES(154, 'SGC-154-2017', '2017-01-07', '2020-01-06', '2018-01-06', '2019-01-06', 1, NULL, 166);
INSERT INTO `certificado` VALUES(155, 'SGC-155-2017', '2017-01-21', '2020-01-20', '2018-01-20', '2019-01-20', 2, NULL, 167);
INSERT INTO `certificado` VALUES(156, 'SGC-156-2017', '2017-01-28', '2020-01-27', '2018-01-27', '2019-01-27', 1, NULL, 168);
INSERT INTO `certificado` VALUES(157, 'SGC-157-2017', '2017-01-28', '2018-09-15', '2017-01-27', '2018-01-27', 0, NULL, 169);
INSERT INTO `certificado` VALUES(158, 'SGC-158-2017', '2017-02-11', '2020-02-10', '2018-02-10', '2019-02-10', 2, NULL, 170);
INSERT INTO `certificado` VALUES(159, 'SGC-159-2017', '2017-03-11', '2018-09-15', '2017-03-10', '2018-03-10', 0, NULL, 171);
INSERT INTO `certificado` VALUES(160, 'SGC-160-2017', '2017-03-18', '2020-03-17', '2018-03-17', '2019-03-17', 1, NULL, 172);
INSERT INTO `certificado` VALUES(161, 'SGC-161-2017', '2017-03-25', '2020-03-24', '2018-03-24', '2019-03-24', 1, NULL, 173);
INSERT INTO `certificado` VALUES(162, 'SGC-162-2017', '2019-03-16', '2020-05-15', '2020-03-15', '2021-03-15', 1, 'recer 27/01/2019\r\n', 174);
INSERT INTO `certificado` VALUES(163, 'SGC-163-2017', '2017-06-24', '2020-06-23', '2018-06-23', '2019-06-23', 1, NULL, 175);
INSERT INTO `certificado` VALUES(164, 'SGC-164-2017', '2017-08-26', '2020-08-25', '2018-08-25', '2019-08-25', 0, NULL, 176);
INSERT INTO `certificado` VALUES(165, 'SGC-165-2017', '2017-09-30', '2020-09-29', '2018-09-29', '2019-09-29', 1, NULL, 177);
INSERT INTO `certificado` VALUES(166, 'SGC-166-2017', '2017-10-14', '2020-10-13', '2018-10-13', '2019-10-13', 1, NULL, 178);
INSERT INTO `certificado` VALUES(167, 'SGC-167-2017', '2017-10-14', '2020-10-13', '2018-10-13', '2019-10-13', 1, NULL, 179);
INSERT INTO `certificado` VALUES(168, 'SGC-168-2017', '2017-11-11', '2020-11-10', '2018-11-10', '2019-11-10', 1, NULL, 1);
INSERT INTO `certificado` VALUES(169, 'SGC-169-2017', '2017-11-25', '2020-11-24', '2018-11-24', '2019-11-24', 1, NULL, 180);
INSERT INTO `certificado` VALUES(170, 'SGC-170-2017', '2017-12-02', '2020-12-01', '2018-12-01', '2019-12-01', 1, NULL, 181);
INSERT INTO `certificado` VALUES(171, 'SGC-171-2017', '2017-12-16', '2017-12-15', '0000-00-00', '0000-00-00', 2, NULL, 182);
INSERT INTO `certificado` VALUES(172, 'SGC-172-2018', '2018-02-03', '2021-02-02', '2019-02-02', '2020-02-02', 0, NULL, 183);
INSERT INTO `certificado` VALUES(173, 'SGC-173-2018', '2018-02-03', '2021-02-02', '2019-02-02', '2020-02-02', 1, NULL, 184);
INSERT INTO `certificado` VALUES(174, 'SGC-174-2018', '2018-02-17', '2021-02-16', '2019-02-16', '2020-02-16', 0, NULL, 185);
INSERT INTO `certificado` VALUES(175, 'SGC-175-2018', '2018-03-03', '2021-03-02', '2019-03-02', '2020-03-02', 1, 'se cambio a seguimientos anuales 23-03-19\r\n', 186);
INSERT INTO `certificado` VALUES(176, 'SGC-176-2018', '2018-03-17', '2021-03-16', '2019-03-16', '2020-03-16', 1, NULL, 7);
INSERT INTO `certificado` VALUES(177, 'SGC-177-2018', '2018-03-24', '2021-03-23', '2019-03-23', '0000-00-00', 2, NULL, 187);
INSERT INTO `certificado` VALUES(178, 'SGC-178-2018', '2018-04-21', '2021-04-20', '2019-04-20', '2020-04-20', 1, NULL, 3);
INSERT INTO `certificado` VALUES(179, 'SGC-179-2018', '2018-05-19', '2021-05-18', '2019-05-18', '2020-05-19', 1, NULL, 188);
INSERT INTO `certificado` VALUES(180, 'SGC-180-2018', '2018-05-19', '2021-05-18', '2019-05-18', '2020-05-18', 1, NULL, 189);
INSERT INTO `certificado` VALUES(181, 'SGC-181-2018', '2018-05-19', '2021-05-18', '2019-05-18', '2020-05-18', 2, NULL, 190);
INSERT INTO `certificado` VALUES(182, 'SGC-182-2018', '2018-06-09', '2021-06-08', '2019-06-08', '2020-06-08', 2, NULL, 191);
INSERT INTO `certificado` VALUES(183, 'SGC-183-2018', '2018-06-16', '2021-06-15', '2019-06-15', '2020-06-15', 0, NULL, 192);
INSERT INTO `certificado` VALUES(184, 'SGC-184-2018', '2018-06-16', '2021-06-15', '2019-06-15', '2020-06-15', 1, NULL, 193);
INSERT INTO `certificado` VALUES(185, 'SGC-185-2018', '2018-07-14', '2021-07-13', '2019-07-13', '2020-07-13', 1, NULL, 194);
INSERT INTO `certificado` VALUES(186, 'SGC-186-2018', '2018-07-21', '2021-07-20', '2019-07-20', '2020-07-20', 2, NULL, 195);
INSERT INTO `certificado` VALUES(187, 'SGC-187-2018', '2018-08-11', '2021-08-10', '2019-08-10', '2020-08-10', 1, NULL, 196);
INSERT INTO `certificado` VALUES(188, 'SGC-188-2018', '2018-09-08', '2021-09-07', '2019-09-07', '2020-09-07', 1, NULL, 2);
INSERT INTO `certificado` VALUES(189, 'SGC-189-2018', '2018-11-17', '2021-11-16', '2019-11-16', '2020-11-16', 1, NULL, 197);
INSERT INTO `certificado` VALUES(190, 'SGC-190-2018', '2018-11-17', '2021-11-16', '2019-11-16', '2020-11-16', 1, NULL, 198);
INSERT INTO `certificado` VALUES(191, 'SGC-191-2018', '2018-11-17', '2021-11-16', '2019-11-16', '2020-11-16', 1, NULL, 199);
INSERT INTO `certificado` VALUES(192, 'SGC-192-2018', '2018-11-30', '2021-11-29', '2019-11-29', '2020-11-29', 2, NULL, 122);
INSERT INTO `certificado` VALUES(193, 'SGC-193-2018', '2018-12-01', '2021-11-30', '2019-11-30', '2020-11-30', 1, NULL, 201);
INSERT INTO `certificado` VALUES(194, 'SGC-194-2018', '2018-12-01', '2021-11-30', '2019-11-30', '2020-11-30', 1, NULL, 202);
INSERT INTO `certificado` VALUES(195, 'SGC-195-2019', '2019-01-05', '2022-01-04', '2020-01-04', '2021-01-04', 1, NULL, 203);
INSERT INTO `certificado` VALUES(196, 'SGC-196-2019', '2019-01-12', '2022-01-11', '2020-01-11', '2021-01-11', 1, NULL, 204);
INSERT INTO `certificado` VALUES(197, 'SGC-197-2019', '2019-02-02', '2022-02-01', '2020-02-01', '2021-02-01', 1, NULL, 205);
INSERT INTO `certificado` VALUES(198, 'SGC-198-2019', '2019-02-23', '2022-02-22', '2020-02-22', '2021-02-22', 1, NULL, 206);
INSERT INTO `certificado` VALUES(199, 'SGC-199-2019', '2019-03-09', '2022-03-08', '2020-03-08', '2021-03-08', 1, NULL, 207);
INSERT INTO `certificado` VALUES(200, 'SGC-200-2019', '2019-04-06', '2022-04-05', '2020-04-05', '2021-04-05', 1, NULL, 208);
INSERT INTO `certificado` VALUES(202, 'SGA-06-2015', '2018-07-06', '2021-07-05', '2019-07-05', '2020-07-05', 1, NULL, 112);
INSERT INTO `certificado` VALUES(204, 'SGC-201-2019', '2019-04-20', '2020-04-19', '2020-04-19', '0000-00-00', 1, NULL, 209);
INSERT INTO `certificado` VALUES(206, 'SGI-017-2019', '2019-02-16', '2022-02-15', '2020-02-15', '2021-02-15', 1, NULL, 110);
INSERT INTO `certificado` VALUES(207, 'SGIA-07-2015', '2018-03-02', '2021-03-01', '2019-03-01', '2020-03-01', 1, NULL, 209);
INSERT INTO `certificado` VALUES(208, 'SGIA-13-2016', '2016-10-24', '2019-10-23', '2017-10-23', '2018-10-23', 1, NULL, 112);
INSERT INTO `certificado` VALUES(209, 'SGIA-10-2015', '2018-08-09', '2021-08-08', '2019-08-08', '2020-08-08', 1, NULL, 96);
INSERT INTO `certificado` VALUES(210, 'SGSST-05-2014', '2018-07-06', '2021-07-05', '2019-07-05', '2020-07-05', 1, NULL, 112);
INSERT INTO `certificado` VALUES(211, 'SGSST-02-2013', '2019-07-29', '2022-07-28', '2020-07-28', '2021-07-28', 1, NULL, 96);
INSERT INTO `certificado` VALUES(212, 'SGI-01-2016', '2016-05-16', '2018-09-15', '2017-05-15', '2018-05-15', 3, NULL, 174);
INSERT INTO `certificado` VALUES(213, 'SGI-02-2016', '2019-05-30', '2022-05-29', '2020-05-29', '2021-05-29', 0, NULL, 210);
INSERT INTO `certificado` VALUES(214, 'SGI-03-2016', '2019-10-07', '2020-10-06', '0000-00-00', '0000-00-00', 1, NULL, 79);
INSERT INTO `certificado` VALUES(215, 'SGI-04-2016', '2016-12-17', '2019-12-16', '2017-12-16', '2018-12-16', 1, NULL, 79);
INSERT INTO `certificado` VALUES(216, 'SGI-05-2017', '2017-08-30', '2020-08-29', '2018-08-29', '2019-08-29', 1, NULL, 4);
INSERT INTO `certificado` VALUES(217, 'SGI-06-2017', '2017-08-20', '2020-08-29', '2018-08-19', '2019-08-19', 1, NULL, 4);
INSERT INTO `certificado` VALUES(218, 'SGI-07-2017', '2017-08-30', '2020-08-29', '2018-08-29', '2019-08-29', 1, NULL, 4);
INSERT INTO `certificado` VALUES(219, 'SGI-08-2017', '2017-09-30', '2020-09-29', '2018-09-29', '2019-09-29', 1, NULL, 211);
INSERT INTO `certificado` VALUES(220, 'SGI-09-2017', '2017-12-09', '2020-12-08', '2018-12-08', '2019-12-08', 1, NULL, 212);
INSERT INTO `certificado` VALUES(221, 'SGI-010-2018', '2018-01-27', '2021-01-29', '2019-01-26', '2020-01-26', 1, NULL, 4);
INSERT INTO `certificado` VALUES(222, 'SGI-011-2018', '2018-02-10', '2021-02-09', '2019-02-09', '2020-02-09', 1, NULL, 213);
INSERT INTO `certificado` VALUES(223, 'SGI-013-2018', '2018-12-08', '2021-12-07', '2019-12-07', '2020-12-07', 1, NULL, 214);
INSERT INTO `certificado` VALUES(224, 'SGI-014-2018', '2018-12-08', '2021-12-07', '2019-12-07', '2020-12-07', 1, NULL, 215);
INSERT INTO `certificado` VALUES(225, 'SGI-016-2019', '2019-02-09', '2022-02-08', '2020-02-08', '2021-02-08', 1, NULL, 216);
INSERT INTO `certificado` VALUES(226, 'SHACCP-09-2015', '2015-07-06', '2021-07-05', '2016-07-06', '2017-07-06', 1, 'RECERTIFICACION 06/07/2018\r\n', 110);
INSERT INTO `certificado` VALUES(227, 'SGI-020-2019', '2019-03-30', '2022-03-29', '2020-03-29', '2021-03-29', 1, NULL, 217);
INSERT INTO `certificado` VALUES(228, 'SGI-019-2019', '2019-03-30', '2022-03-29', '2020-03-29', '2021-03-29', 1, NULL, 218);
INSERT INTO `certificado` VALUES(229, 'SGA-01-2012', '2012-12-03', '2018-12-02', '2013-12-02', '2014-12-02', 3, 'RECERTIFICACION EN 03/12/2015\r\n', 79);
INSERT INTO `certificado` VALUES(234, 'SGIA-09-2015', '2015-07-06', '2018-07-05', '2016-07-05', '2017-07-05', 0, NULL, 110);
INSERT INTO `certificado` VALUES(235, 'SGIA-11-2015', '2015-08-14', '2021-08-13', '2018-08-14', '0000-00-00', 1, NULL, 117);
INSERT INTO `certificado` VALUES(236, 'SGIA-12-2016', '2016-01-18', '2022-01-17', '2017-01-17', '2018-01-17', 1, 'RECERTIFICACION  EN 18/01/2019\r\n', 79);
INSERT INTO `certificado` VALUES(237, 'SGIA-06-2015', '2018-01-28', '2021-01-27', '2019-01-27', '2020-01-27', 1, NULL, 113);
INSERT INTO `certificado` VALUES(238, 'SGIA-03-2011', '2011-12-05', '2017-12-05', '2012-12-05', '2013-12-05', 3, 'RECERTIFICACION EN 04/12/2014\r\n', 79);
INSERT INTO `certificado` VALUES(239, 'SGIA-05-2015', '2015-05-25', '2018-05-24', '2016-05-24', '2017-05-24', 3, NULL, 79);
INSERT INTO `certificado` VALUES(240, 'SGSST-03-2013', '2013-09-23', '2016-09-22', '2014-09-22', '2015-09-22', 3, NULL, 79);
INSERT INTO `certificado` VALUES(241, 'SGSST-04-2015', '2018-05-25', '2021-05-24', '2019-05-24', '2020-05-24', 0, NULL, 110);
INSERT INTO `certificado` VALUES(242, 'SGSST-06-2015', '2018-09-21', '2021-09-20', '2019-09-20', '2020-09-20', 1, NULL, 113);
INSERT INTO `certificado` VALUES(243, 'SGSST-07-2018', '2018-03-17', '2021-03-16', '2019-03-16', '2020-03-16', 1, NULL, 7);
INSERT INTO `certificado` VALUES(244, 'SGA-05-2015', '2015-05-25', '2018-05-24', '2016-05-24', '2017-05-24', 0, 'RECERTIFICACION EN 14/10/2017\r\n', 110);
INSERT INTO `certificado` VALUES(245, 'SGSCS-03-2018', '2018-06-30', '2021-06-29', '2019-06-29', '2020-06-29', 1, NULL, 219);
INSERT INTO `certificado` VALUES(246, 'SGSCS-01-2017', '2017-01-28', '2020-01-27', '2018-01-27', '2019-01-27', 0, NULL, 79);
INSERT INTO `certificado` VALUES(247, 'SGSCS-02-2018', '2018-03-10', '2021-03-09', '2019-03-09', '2020-03-09', 2, NULL, 220);
INSERT INTO `certificado` VALUES(248, 'SGI-012-2018', '2018-05-19', '2021-05-18', '2019-05-18', '2020-05-18', 2, NULL, 221);
INSERT INTO `certificado` VALUES(249, 'SGI-015-2019', '2019-01-05', '2022-01-04', '2020-01-04', '2021-01-04', 1, NULL, 4);
INSERT INTO `certificado` VALUES(250, 'SGI-018-2019', '2019-02-23', '2022-02-22', '2020-02-22', '2021-02-22', 1, NULL, 222);
INSERT INTO `certificado` VALUES(251, 'SGSST-05-2015', '2018-08-14', '2021-08-13', '2019-08-13', '2020-08-13', 1, NULL, 117);
INSERT INTO `certificado` VALUES(252, 'SGA-08-2015', '2015-09-21', '2021-09-20', '2018-09-21', '0000-00-00', 1, NULL, 113);
INSERT INTO `certificado` VALUES(253, 'SGA-07-2015', '2015-08-14', '2021-08-13', '2018-08-14', '0000-00-00', 1, NULL, 117);
INSERT INTO `certificado` VALUES(254, 'SGA-09-2018', '2018-03-17', '2021-03-16', '2019-03-16', '2020-03-16', 1, NULL, 7);
INSERT INTO `certificado` VALUES(255, 'SGC-202-2019', '2019-06-08', '2020-06-07', '2020-06-07', '0000-00-00', 1, NULL, 223);
INSERT INTO `certificado` VALUES(256, 'SGC-204-2019', '2019-06-22', '2020-06-21', '2020-06-21', '0000-00-00', 1, NULL, 109);
INSERT INTO `certificado` VALUES(258, 'SGI-023-2019', '2019-05-17', '2022-05-16', '2020-05-16', '2021-05-16', 1, NULL, 224);
INSERT INTO `certificado` VALUES(259, 'SGI-021-2019', '2019-05-11', '2022-05-10', '2020-05-10', '2021-05-10', 1, NULL, 191);
INSERT INTO `certificado` VALUES(260, 'SGI-022-2019', '2019-05-18', '2022-05-17', '2020-05-17', '2021-05-17', 1, NULL, 225);
INSERT INTO `certificado` VALUES(261, 'SGI-024-2019', '2019-07-13', '2022-07-12', '2020-07-12', '2021-07-12', 1, NULL, 226);
INSERT INTO `certificado` VALUES(262, 'SGC-205-2019', '2019-07-20', '2020-07-19', '0000-00-00', '0000-00-00', 1, NULL, 227);
INSERT INTO `certificado` VALUES(263, 'SGA-14-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 228);
INSERT INTO `certificado` VALUES(264, 'SGA-13-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 229);
INSERT INTO `certificado` VALUES(265, 'SGSST-11-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 228);
INSERT INTO `certificado` VALUES(266, 'SGSST-10-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 229);
INSERT INTO `certificado` VALUES(267, 'SGIA-17-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 228);
INSERT INTO `certificado` VALUES(268, 'SGIA-16-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 229);
INSERT INTO `certificado` VALUES(269, 'SGSCS-07-2019', '2019-08-03', '2022-08-02', '2020-08-02', '0000-00-00', 1, NULL, 228);
INSERT INTO `certificado` VALUES(270, 'SGSCS-06-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 229);
INSERT INTO `certificado` VALUES(271, 'SHACCP-19-2019', '2019-08-03', '2020-08-02', '0000-00-00', '0000-00-00', 1, NULL, 229);
INSERT INTO `certificado` VALUES(272, 'SHACCP-20-2019', '2019-08-03', '2022-08-02', '2020-08-02', '2021-08-02', 1, NULL, 228);
INSERT INTO `certificado` VALUES(273, 'SGC-207-2019', '2019-08-03', '2020-08-02', '0000-00-00', '0000-00-00', 1, NULL, 228);
INSERT INTO `certificado` VALUES(274, 'SGC-206-2019', '2019-08-03', '2020-08-02', '0000-00-00', '0000-00-00', 1, NULL, 229);
INSERT INTO `certificado` VALUES(275, 'AUC-04-2006', '2018-07-24', '2021-07-23', '2019-07-23', '2020-07-23', 1, NULL, 13);
INSERT INTO `certificado` VALUES(276, 'AUC-34-2010', '2017-01-07', '2020-01-06', '2018-01-06', '2019-01-06', 1, NULL, 5);
INSERT INTO `certificado` VALUES(277, 'SGC-203-2019', '2019-06-08', '2020-06-07', '0000-00-00', '0000-00-00', 1, NULL, 74);
INSERT INTO `certificado` VALUES(278, 'AUC-23-2008', '2017-12-15', '2020-12-15', '2018-12-14', '2019-12-14', 1, NULL, 32);
INSERT INTO `certificado` VALUES(279, 'AUC-25-2009', '2018-09-21', '2021-09-20', '2019-09-20', '2020-09-20', 1, NULL, 34);
INSERT INTO `certificado` VALUES(280, 'AUC-33-2010', '2016-12-10', '2019-12-09', '2017-12-09', '2019-12-09', 1, NULL, 42);
INSERT INTO `certificado` VALUES(281, 'AUC-35-2010', '2017-01-07', '2020-01-06', '2018-01-06', '2019-01-06', 1, NULL, 6);
INSERT INTO `certificado` VALUES(282, 'AUC-38-2011', '2017-05-27', '2020-05-26', '2018-05-26', '2019-05-26', 1, NULL, 46);
INSERT INTO `certificado` VALUES(286, 'SGC-30-2010', '2010-08-02', '2018-09-15', '0000-00-00', '0000-00-00', 0, NULL, 39);
INSERT INTO `certificado` VALUES(287, 'SGA-12-2019', '2019-07-13', '2022-07-12', '2020-07-12', '2021-07-12', 1, NULL, 230);
INSERT INTO `certificado` VALUES(288, 'SGA-11-2019', '2019-06-29', '2022-06-28', '2021-06-28', '2020-06-28', 1, NULL, 1);
INSERT INTO `certificado` VALUES(289, 'SGA-10-2019', '2019-02-16', '2022-02-15', '2020-02-15', '2021-02-15', 1, NULL, 231);
INSERT INTO `certificado` VALUES(290, 'SGC-122-2016', '2019-02-28', '2022-02-28', '2020-02-28', '2021-02-28', 1, NULL, 131);
INSERT INTO `certificado` VALUES(291, 'SGC-122-2016', '2019-01-30', '2022-01-29', '2020-01-29', '2021-01-29', 1, NULL, 132);
INSERT INTO `certificado` VALUES(292, 'SGC-123-2016', '2019-03-16', '2022-02-28', '2020-02-28', '2021-02-28', 1, NULL, 133);
INSERT INTO `certificado` VALUES(293, 'SGC-124-2016', '2019-04-06', '2022-03-20', '2020-03-20', '2021-03-20', 1, NULL, 136);
INSERT INTO `certificado` VALUES(294, 'SGSST-08-2019', '2019-02-16', '2022-02-15', '2020-02-15', '0000-00-00', 1, NULL, 231);
INSERT INTO `certificado` VALUES(295, 'SGSST-09-2019', '2019-07-13', '2022-07-12', '2020-07-12', '0000-00-00', 1, NULL, 230);
INSERT INTO `certificado` VALUES(296, 'SGIA-14-2018', '2018-02-17', '2021-02-16', '2019-02-16', '2020-02-16', 0, NULL, 185);
INSERT INTO `certificado` VALUES(297, 'SGIA-15-2019', '2019-07-13', '2022-07-12', '2020-07-12', '2021-07-12', 1, NULL, 230);
INSERT INTO `certificado` VALUES(298, 'SGSCS-04-2019', '2019-07-06', '2022-07-05', '2020-07-05', '2021-07-05', 1, NULL, 220);
INSERT INTO `certificado` VALUES(299, 'SGSCS-05-2019', '2019-07-13', '2022-07-12', '2020-07-12', '2021-07-12', 1, NULL, 230);
INSERT INTO `certificado` VALUES(300, 'FSSC-01-2016', '2019-08-19', '2022-09-26', '2020-08-18', '2021-08-18', 1, 'emisión inicial: 2016-09-26\r\nprimer expiración: 2019-09-24', 232);
INSERT INTO `certificado` VALUES(301, 'SHACCP-02-2012', '2019-10-07', '2020-10-06', '0000-00-00', '0000-00-00', 1, NULL, 79);
INSERT INTO `certificado` VALUES(302, 'SHACCP-03-2013', '2018-10-31', '2021-10-30', '2019-10-30', '2020-10-30', 1, NULL, 79);
INSERT INTO `certificado` VALUES(303, 'SHACCP-04-2013', '2014-04-14', '2014-04-13', '0000-00-00', '0000-00-00', 0, NULL, 79);
INSERT INTO `certificado` VALUES(304, 'SHACCP-05-2014', '2017-04-11', '2020-04-10', '2018-04-10', '2019-04-10', 1, NULL, 113);
INSERT INTO `certificado` VALUES(305, 'SHACCP-06-2015', '2015-03-02', '2021-03-01', '0000-00-00', '0000-00-00', 1, NULL, 209);
INSERT INTO `certificado` VALUES(306, 'SHACCP-07-2015', '2015-05-25', '2015-05-26', '0000-00-00', '0000-00-00', 0, NULL, 79);
INSERT INTO `certificado` VALUES(307, 'SHACCP-08-2015', '2018-06-01', '2021-05-31', '2019-05-31', '2020-05-31', 1, NULL, 79);
INSERT INTO `certificado` VALUES(308, 'SHACCP-10-2015', '2018-08-14', '2021-08-13', '2019-08-13', '2020-08-13', 1, NULL, 117);
INSERT INTO `certificado` VALUES(309, 'SHACCP-11-2015', '2018-07-06', '2021-07-05', '2019-07-05', '2020-07-05', 1, NULL, 96);
INSERT INTO `certificado` VALUES(310, 'SHACCP-12-2016', '2016-10-24', '2019-10-23', '2017-10-23', '2018-10-23', 1, NULL, 112);
INSERT INTO `certificado` VALUES(311, 'SHACCP-13-2016', '2016-12-17', '2019-12-16', '2017-12-16', '2018-12-16', 1, NULL, 79);
INSERT INTO `certificado` VALUES(312, 'SHACCP-14-2017', '2017-07-01', '2020-06-30', '2018-06-30', '2019-06-30', 1, NULL, 233);
INSERT INTO `certificado` VALUES(313, 'SHACCP-15-2019', '2019-05-11', '2022-05-10', '2020-05-10', '2021-05-10', 1, NULL, 191);
INSERT INTO `certificado` VALUES(314, 'SHACCP-16-2019', '2019-05-17', '2022-05-16', '2020-05-16', '2021-05-16', 1, NULL, 224);
INSERT INTO `certificado` VALUES(315, 'SHACCP-17-2016', '2019-05-30', '2022-05-29', '2020-05-29', '2021-05-09', 1, NULL, 210);
INSERT INTO `certificado` VALUES(316, 'SHACCP-18-2019', '2019-07-13', '2022-07-12', '2020-07-12', '2021-07-12', 1, NULL, 230);
INSERT INTO `certificado` VALUES(318, 'SGIA-04-2015', '2015-03-23', '2018-03-22', '2016-03-22', '2017-03-22', 0, NULL, 209);
INSERT INTO `certificado` VALUES(319, 'SGI-025-2019', '2019-08-17', '2022-08-16', '2020-08-16', '2021-08-16', 1, NULL, 234);
INSERT INTO `certificado` VALUES(320, 'SGC-208-2019', '2019-08-17', '2020-08-16', '0000-00-00', '0000-00-00', 1, NULL, 235);
INSERT INTO `certificado` VALUES(321, 'SGSCS-08-2019', '2019-08-31', '2020-08-31', '0000-00-00', '0000-00-00', 1, NULL, 238);
INSERT INTO `certificado` VALUES(322, 'SGC-142-2016', '2019-08-29', '2020-08-28', '0000-00-00', '0000-00-00', 1, 'FECHA DE CERTIFICACION INICIAL 29-08-2016', 237);
INSERT INTO `certificado` VALUES(323, 'SGC-209-2019', '2019-08-31', '2020-08-30', '0000-00-00', '0000-00-00', 1, NULL, 239);
INSERT INTO `certificado` VALUES(324, 'SGC-210-2019', '2019-09-28', '2022-09-27', '2020-09-27', '2021-09-07', 1, NULL, 240);
INSERT INTO `certificado` VALUES(325, 'SGC-211-2019', '2019-10-05', '2022-10-04', '2020-10-04', '2021-10-04', 1, NULL, 231);
INSERT INTO `certificado` VALUES(326, 'SGI-026-2019', '2019-10-12', '2022-10-11', '2020-10-11', '2021-10-11', 1, NULL, 241);
INSERT INTO `certificado` VALUES(327, 'SGSSST-07-2015', '2019-10-19', '2020-08-13', '0000-00-00', '0000-00-00', 1, NULL, 117);
INSERT INTO `certificado` VALUES(328, 'SGSCS-09-2019', '2019-10-19', '2020-08-18', '0000-00-00', '0000-00-00', 1, NULL, 185);
INSERT INTO `certificado` VALUES(329, 'SGI-027-2019', '2019-10-19', '2022-10-18', '2020-10-18', '2021-10-18', 1, NULL, 242);
INSERT INTO `certificado` VALUES(330, 'SGC-213-2019', '2019-10-19', '2022-10-18', '2020-10-18', '2021-10-18', 1, NULL, 243);
INSERT INTO `certificado` VALUES(332, 'SGI-028-2019', '2019-10-19', '2020-10-18', '0000-00-00', '0000-00-00', 1, NULL, 244);
INSERT INTO `certificado` VALUES(333, 'SHACCP-21-2019', '2019-10-19', '2020-10-18', '0000-00-00', '0000-00-00', 1, 'EXPIRACION CERTIFICACION: 2022-10-18', 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreOrganizacion` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `alcance` longtext COLLATE utf8_spanish2_ci,
  `personas` int(11) DEFAULT NULL COMMENT 'Numero de personas declaradas',
  `diasAuditoria` int(11) DEFAULT NULL COMMENT 'Calculo de Dias auditoria de certificacion Inicial Incluyendo E1 y E2',
  `seguimientos` int(11) DEFAULT NULL COMMENT '0= seguimientos anuales\n1= seguimientos semestrales',
  `direccion` longtext COLLATE utf8_spanish2_ci,
  `correo` varchar(90) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `multisitios` int(11) DEFAULT NULL COMMENT '0= no\n1=si',
  `integral` int(11) DEFAULT NULL COMMENT '0=integral\n1=combinada\n2=independientes',
  `expediente` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT '0=prospecto;\n1= cliente\n',
  `tipoProducto` varchar(90) COLLATE utf8_spanish2_ci NOT NULL,
  `rfc` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=245 ;

--
-- Volcar la base de datos para la tabla `cliente`
--

INSERT INTO `cliente` VALUES(1, 'AGROMAQUILAS SA DE C V', 'Servicios de capacitacion para operadores de auto transporte\r\n', 5, 2, 1, 'CDMX', 'SCOA@gmail.com', '5556968975', 0, 0, 'SGC-01-02-18-100', '1', '', '', 1);
INSERT INTO `cliente` VALUES(2, 'GUARNEROS TRUJILLO, S.A. DE C.V.', 'Recuperacion de cartera via Judicial y Extrajudicial.', 12, 3, 1, 'condesa, CDMX', 'calidad@gtrujillo.com', '5556897708', 0, 0, 'GTS-08-08-18-SGC-194', '1', '', '', 1);
INSERT INTO `cliente` VALUES(3, 'DISTRIBUIDORA COMERCIAL ZOGBI S.A. DE C.V.', 'Servicios de comercializacion y distribucion de productos especificos de las areas forenses y de criminalistica ', 16, 3, 1, 'Municipio libre No. 366 Col. Santa cruz Atoyac, 03310 Benito Juarez CDMX', 'jzogbi@dczogbi.com', '5556012856', 0, 0, 'ZOGBI-19-02-18-SGC-185', '1', '', '', 1);
INSERT INTO `cliente` VALUES(4, 'Tecmed, Tecnicas Medioambientales de Mexico S. A. de C. V. ', 'Servicios de recoleccion de residuos solidos urbanos ', 116, 24, 1, 'Sitio 1 Av. Homero 229, Int. 401; Col. Polanco V seccion. 11560 Miguel Hidalgo, Ciudad de Mexico \r\nSitio 2  A. Reforma No. 12 Col. Las Ventas, San Juan Tilcuutla 42160, San Agustin Tlaxiaca, Hidalgo.', 'diego.sanchez@tecmedmx.com  alejandro.garcia@tecmedmx.com', '5526542365', 1, 1, 'TMDTL-05-10-18-SGI-016', '1', '', '', 1);
INSERT INTO `cliente` VALUES(5, 'IUSA IZTAPALAPA DIVISION FILAMENTOS MEXICANOS (FILMEX)', 'filamentos', 12, 4, 1, 'iztapalapa', 'ggil@iusa.com.mx ebetancourt@iusa.com.mx', NULL, 0, 0, 'IUSA-FILMEX-31-08-10-SGC-036', '1', '', '', 1);
INSERT INTO `cliente` VALUES(6, 'IUSA IZTAPALAPA DIVISION MEXICANA DE PARCHES Y VALVULAS(PANESA)', 'parches y valvulas', NULL, NULL, 1, 'iztapalapa', 'ggmendoza@iusa.com.mx ohernandez@iusa.com.mx', NULL, 0, 0, 'IUSA-PANESA-31-08-10-SGC-037', '1', '', '', 1);
INSERT INTO `cliente` VALUES(7, 'Construcciones Rocha S.A. de C.V.', 'Construccion y mantenimiento de obra civil y electromecanica, de lineas de transmision y subestaciones electricas', 45, 4, 1, 'Sitio 1 Cede Central Camino Real a Cholula No. 1408, colonia San Juan Aquiahuac, San Andres Cholula, Puebla C.P. 72810 Sitio 2 Almacenamiento Calle San Bernardo No. 31, colonia Sanctorum, Cuautlancingo, Puebla (aproximadamente a 15 minutos de distancia en automovil de oficinas administrativas), como referencia frente a puerta 3 de VW, a un costado de transportes tres Guerras.', 'grodriguez@cosntruccionesrocha.com', '(222) 2478', 1, 2, 'ROCHA-14-09-17-SGC-174', '1', '', '', 1);
INSERT INTO `cliente` VALUES(11, 'GAGE PRODUCTS COMPANY DE MEXICO S DE R.L. DE C.V.', 'Comercializacion de Productos y Servicios para pintura en la industria automotriz, en los siguientes procesos: Limpieza de Sistemas, Solvente Purga y Suministro de Productos\r\n', NULL, NULL, NULL, 'Alfonso Napoles Gandara No. 50 - 4to. Piso, Col. Peña Blanca, Santa Fe, Mexico D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(12, 'INSTITUTO MEXICANO DE CINEMATOGRAFIA', 'Proceso de estimulo a la escritura de guion de largometraje a traves del IMCINE, Apoyo al desarrollo de proyectos de largometraje a traves del IMCINE, Apoyo a la Produccion de proyectos de cortometrajes a traves del IMCINE, Apoyo financiero a la produccion y post-produccion de largo metraje a traves del FOPROCINE, Apoyo financiero a la produccion, distribucion o exhibicion de largometraje a traves de FIDECINE y Otorgamiento de estimulos a la comunidad cinematografica nacional\r\n', NULL, NULL, NULL, 'Av. Insurgentes Sur No. 674, col. del Valle, delegacion Benito Juarez, Mexico D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(13, 'RIVACOLOR, S.A. DE C.V.', 'Comercializacion de aditivos y materia prima de uso en la industria alimenticia, farmaceutica y cosmetica.', NULL, NULL, NULL, 'Manuel Acuña No 6, Col. Jacarandas, Del. Iztapalapa, C.P. 09280,  Ciudad de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(14, 'TECNICOS EN ALIMENTACION, S.A. DE C.V.', 'Recepcion, manipulacion, conservacion y preparacion de productos alimenticios para su comercializacion.', NULL, NULL, NULL, 'Avenida Gavilan No. 565, Bodegas L, M, N en la Col. Guadalupe del Moral \r\nDelegacion. Iztapalapa Mexico, D.F\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(17, 'CONSULTORES PROFESIONALES CORPORATIVOS, S.C.', 'Prestacion de servicios juridicos y administrativos; especificamente para lo siguiente: recuperacion judicial de cartera, recuperacion extrajudicial de cartera, asesoria administrativa y financiera para desarrollo de negocios.\r\n', NULL, NULL, NULL, 'Calle Magdalena No. 434 int. 401, col. del Valle Mexico D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(18, 'SISTEMAS DE INGENIERÍA Y MANTENIMIENTO EN AIRE ACONDICIONADO S.A. DE C.V.', 'Servicios de instalaciones de sistemas de aire acondicionado y servicios de mantenimiento a equipos y sistemas de aire acondicionado.', NULL, NULL, NULL, 'Cincinnati No. 40 interior 103,Col. Noche Buena, Delegacion Benito Juarez, Mexico D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(19, 'VINSMAN ELECTROMECANICA S.A. DE C.V.', 'Servicios para el proceso de mantenimientos preventivos, predictivos y correctivos a plantas electricas.', NULL, NULL, NULL, 'Av. Presidentes No 125. Col Portales, Delegación Benito Juarez, Mexico D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(20, 'UNIVERSIDAD AUTONOMA DEL ESTADO DE MORELOS NIVEL MEDIO SUPERIOR', 'Administracion central local, secretaria academica, unidad escolar local (inscripcion administracion de la unidad escolar local y egreso), orientacion educativa, establecimiento de convenios, titulacion, coordinacion de laboratorios, transparencia y acceso a la informacion-(solicitudes e informes) y liberacion de proyectos.\r\nPreparatoria No. 2 vespertino, Preparatoria Cuautla  diurna y vespertino, Preparatoria Puente de Ixtla diurna y vespertino, Preparatoria Tlaltizapan diurna  y Escuela de Tecnicos Laboratoristas.\r\n1.- los procesos de establecimiento de convenios, TITULACION y COORDINACION DE LABORATORIOS son aplicables unicamente en la Escuela de Tecnicos Laboratoristas.\r\n2.- El proceso de TRANSPARENCIA Y ACCESO A LA INFORMACION SOLICITUDES E INFORMES son aplicables en la Dirección de Informacion Institucional.\r\n\r\n\r\n', NULL, NULL, NULL, 'Avenida Universidad N. 1001,  Colonia Chamilpa,  Cuernavaca Morelos.\r\n\r\n\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(21, 'ENSARS INTERNATIONAL S DE RL DE CV', 'Procesos de inspeccion y re trabajo de materiales.\r\n', NULL, NULL, NULL, 'Iturbide No. 1511, Col. Centro Matamoros, Tamaulipas.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(22, 'MEXICANA DE ADITIVOS ALIMENTICIOS S.A DE C.V.', 'Comercializacion de aditivos alimenticios.', NULL, NULL, NULL, 'Temaca No. 6233, Col. Aragon Inguaran, Gustavo A. Madero, Mexico D.F. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(23, 'CENTRO DE CAPACITACION TECNICA S.A DE C.V.', 'Procesos de capacitacion a operadores para el transporte de materiales y residuos peligrosos, para el transporte de pasaje publico y turismo, para el transporte publico de carga en general y para el traslado de puertos y aeropuertos.', NULL, NULL, NULL, 'Carreteros No. 7 Fraccionamiento industrial Xhala, Cuautitlan Izcalli, Edo. De Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(25, 'CONVERSIONES A GAS JOAN, S.A. DE C.V.  ', 'Capacitacion de conductores del Servicio de Auto Transporte Federal y Transporte Privado en las modalidades de servicio de pasaje y turismo, carga general , materiales y residuos peligros.\r\n', NULL, NULL, NULL, 'Av. Melchor Ocampo No. 80-A Int. 1 Barrio de Santiago 1ra. Seccion , Zumpango,  Edo. De Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(26, 'CENTRO ESPECIALIZADO DE VERIFICACION  TYCSA, S.A DE C.V.', 'Capacitacion de conductores del Servicio de Auto Transporte Federal y Transporte Privado en las modalidades de servicio de pasaje y turismo, carga general , materiales y residuos peligros.', NULL, NULL, NULL, 'Av. Santa Cecilia No. 294-Altos, Santa Cecilia Tlalnepantla de Baz, Edo. De Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(27, 'QUENMOR, S.A DE C.V.', 'Servicio de verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacion de uso particular o intensivos que utilicen gasolina, gas L.P., gas natural o diesel como combustible.', NULL, NULL, NULL, ' Av. Santa Cecilia, N0. 294-A Santa Cecilia, Tlalnepantla De Baz Edo. De Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(30, 'Electropruebas de Mexico S.A. de C.V.', 'Los procesos operativos y administrativos asociados a los servicios de mantenimiento preventivo, correctivo y por evento a sucursales bancarias y edificios relacionados con la comercializacion, instalacion y mantenimiento a instalaciones electricas y electromecanicas. \r\n', NULL, NULL, NULL, 'Xicotencatl No. 160 Col. Del Carmen Coyoacán, Deleg. Coyoacán, C.P. 14100, México, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(31, 'Personal academico de la Universidad Autonoma del  Estado de Hidalgo A.C.(Guardería U-359)', 'Servicios Asistenciales de Guardería (Pedagogia, Nutricion y fomento a la salud).', NULL, NULL, NULL, 'Avenida Solidaridad s/n; Colonia Aquiles Serdán, Pachuca Hidalgo, C. P.  42034\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(32, 'Instituto Universitario Internacional S.C. (Universidad Internacional UNINTER)', 'Diseño y desarrollo de programas educativos de materias extracurriculares, asi como la imparticion de planes y programas de estudios de educacion de nivel basico en la Secundaria Internacional UNINTER (SIU) y de nivel medio superior en el Bachillerato Internacional UNINTER (BIU), considerando los servicios relacionados desde la promoción de la oferta educativa hasta la entrega del Certificado al alumno.', NULL, NULL, NULL, 'San Jeronimo No. 304  colonia, San Jeronimo, Cuernavaca, Morelos, C.P. 62179\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(33, 'OMNI-SKY, S.A DE C.V.', 'Diseño, desarrollo y prestacion del servicio de transporte aereo discrecional de pasajeros.', NULL, NULL, NULL, 'Aeropuerto Internacional Miguel Hidalgo, fila 10, hangar 4 Tlajomulco de Zuñiga Jalisco.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(34, 'TECNOLOGICO DE ESTUDIOS SUPERIORES DE SAN FELIPE DEL PROGRESO', 'El servicio al usuario en el proceso de enseñanza – aprendizaje y de control escolar (inscripcion, reinscripcion y titulacion)', NULL, NULL, NULL, 'Av. Instituto Tecnologico S/N Col. Ejido de San Felipe del Progreso, C.P. 50640, San Felipe del Progreso,  Estado de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(35, 'Industria Mexicana de Plasticos  Olimpia S.A. De C.V.', 'Desarrollo, fabricacion y venta de productos plasticos para la industria cosmetica, alimenticia, quimica, farmaceutica, automotriz, higiene y limpieza, cuidado personal y productos de consumo.', NULL, NULL, NULL, 'Carretera Federal Mexico-Puebla, Km. 19.5, Col. Los Reyes la Paz, Edo. De Mexico, C.P. 56400\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(38, 'SECRETARIA DE DESARROLLO SOCIAL (SEDESOL) DELEGACION MORELIA', 'Administracion publica para la Gestion de Programas Sociales de la Secretaria de Desarrollo Social (SEDESOL), delegacion en el estado de Michoacan.', NULL, NULL, NULL, 'Santos Degollado No. 255 y 262, Col. Nueva Chapultepec Sur  C.P. 58260 y Av. Madero Poniente No. 3080 Col. Los Ejidos C.P. 58180, Morelia Michoacan.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(39, 'TECNOLOGIA DE RECICLAJE S.A. de C.V.', 'Produccion de hojuela de Polietilentereftalato (PET), fibra corta de poliester y telas punzonadas (geotextil), a través del reciclaje de botellas de PET.', NULL, NULL, NULL, 'Av. Chapultepec No. 32 manzana 139 Lt 1, colonia Los Heroes de Tecamac, Seccion Bosques, Tecamac, C.P. 55764, Estado de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(40, ' TECNICOS EN ALIMENTACION, S.A. DE C.V.', 'Desarrollo y preparacion de productos alimentarios box lunch, catering y suministro de insumos no procesados para hospitales y comedores industriales', NULL, NULL, NULL, 'Avenida Gavilan No. 565, Bodegas L, M, N en la Col. Guadalupe del Moral \r\nDelegacion. Iztapalapa, C.P. 09300 Mexico, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(41, 'VERIFICENTROS Y SERVICIOS DEL SUR S DE RL DE CV', 'Verificacion vehicular de holograma 0 y 00 de emision de contaminantes a la atmosfera, provenientes de los vehiculos automotores en circulacion que usan gasolina.', NULL, NULL, NULL, 'Av. Centenario 2002,  letra M, Col. CIVAC,  Jiutepec, Morelos. C.P. 62578 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(42, 'SERVICIOS Y ASESORIA EN SISTEMAS DE COMBUSTION INTERNA S.A DE C.V.', 'Servicio de Capacitacion para operadores que conducen unidades del Servicio Publico Federal. En las modalidades de pasaje y turismo A carga general B y C y materiales peligrosos E', NULL, NULL, NULL, 'Camino al Aguaje 600 Int. 3, poblado El Aguaje, C.P. 78380, San Luis Potosi, Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(44, 'CONSTRUCCION Y MANTENIMIENTO GERCO S.A DE C.V.', 'Seleccion y colocacion de personal para la realizacion de servicios de mantenimiento, reparacion y/o modificacion de equipos industriales, paileria y soldadura para la fabricación de piezas y estructuras industriales.', NULL, NULL, NULL, 'En las instalaciones ubicadas en carretera Tezoyuca, Tepetzingo, entronque Chalma, sin número Municipio de Emiliano Zapata, Morelos', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(46, 'IUSA IZTAPALAPA S.A. DE C.V. DIVISIÓN ETIC ART', 'Diseño, desarrollo y fabricacion de:\r\n( Etiquetas tejidas, escudos, tallas, instrucciones de lavado y cintas continuas.)\r\nDirigidas a la industria de la confeccion, calzado, blancos, maleteros', NULL, NULL, NULL, 'Camino Real a  San Lorenzo numero 284 int. B, Col. San Miguel 8 Ampliacion, Del. Iztapalapa, C.P. 09837, Ciudad de Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(47, 'IUSA IZTAPALAPA S.A. DE C.V. DIVISION BROCHES DE PRESION IDEAL', 'Diseño, Desarrollo, Manufactura de broches, botones remaches y otros productos metalicos para la industria del vestido, lapicero y diversos.', NULL, NULL, NULL, 'Camino Real  San a Lorenzo numero 284 Col. San Miguel 8 Ampliacion, Del. Iztapalapa, C.P. 09837, Ciudad de Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(48, 'CENTRO DE CAPACITACION TECNICA S.A DE C.V. (N de registro SCT.CC/000007)', 'Prestacion de servicios de capacitacion conductual y tecnica automotriz', NULL, NULL, NULL, 'Carreteros No. 7 Fraccionamiento industrial Xhala, Cuautitlan Izcalli, C.P. 54714, Edo. De Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(49, 'ROCARERI S.A. DE C.V.', 'La verificacion de emisiones contaminantes a la astrosfera provenientes de vehiculos automotores en circulacion de uso particular o intestino que utilicen gasolina, gas L. P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Marcos Lopez Jimenez, Lote 29, Manzana 169, Col. Santa Martha Acatitla Norte Mexico, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(50, 'CARUAL S.A. DE C.V.', 'La verificacion de emisiones contaminantes a la astrosfera provenientes de vehiculos automotores en circulacion de uso particular o intestino que utilicen gasolina, gas L. P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Avenida Tezozomoc esquina Poniente 10, Mz. 47, Lote 1al 4, , Col. Alfredo Baranda, Municipio Valle de Chalco Solidaridad, Mexico, D. F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(51, 'Escuela Integral de Capacitacion para Operadores del Transporte S.A. De C.V.', 'La capacitacion y adiestramiento de conductores del servicio de autotransporte federal y transporte privado en la modalidad de servicio de pasaje y turismo, carga general, materiales y residuos peligrosos.', NULL, NULL, NULL, 'Guillermo Prieto No. 106 interior 13, Col. San Sebastian, Toluca, Edo. De Mexico, C.P. 50090.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(52, 'JARRIS S.A. DE C.V.  (Verificentro TP-964)', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacion de uso particular o intensivo que utilicen gasolina, gas L.P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Libramiento Sur No. 4, Barrio Texcacoa,  Tepotzotlan, Estado de Mexico, C.P. 54601.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(53, 'CERMEG S.A. DE C.V.   (Verificentro IX-923)', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacion de uso particular o intensivo que utilicen gasolina, gas L.P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Av. Cuauhtemoc No. 21, Colonia Zoquiapan, Municipio Ixtapaluca Edo. de Mexico,  C.P. 56530\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(54, 'CENTRO ESPECIALIZADO DE VERIFICACION TYCSA, S.A. de C.V.  (Registro No. SCT.CC/000047)', 'La Capacitacion y Adiestramiento de Conductores del Servicio de Autotransporte Federal y Transporte Privado en la modalidad de servicio de Pasaje y Turismo, Carga General y Materiales y Residuos Peligrosos\r\n', NULL, NULL, NULL, 'Avenida Santa Cecilia 294-Altos, Col. Santa Cecilia, Tlalnepantla Estado de Mexico, C.P. 54130\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(55, 'CONVERSIONES A GAS JOAN, S.A. de C.V. (Registro No. SCT.CC/000154)', 'La capacitacion y adiestramiento de conductores del servicio de autotransporte federal y transporte privado en la modalidad de servicio de pasaje y turismo, carga general y materiales y residuos peligrosos.', NULL, NULL, NULL, 'Avenida Melchor Ocampo 80, Interior A, Barrio de Santiago, Zumpango, Estado de México, C.P. 55600.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(56, 'Asociacion de Colonos de la Herradura A.C.', 'Servicios de mantenimiento y reparacion de la red de gas L.P.\r\nServicios administrativos para el pago de servicios de gas, luz, telefono, agua y predial, asi como el servicio para la realizacion de tramites ante las autoridades correspondientes con respecto a ecologia, construccion y municipales.', NULL, NULL, NULL, 'Bosque de Moctezuma No. 21, Col. La Herradura, Huixquilucan, C.P. 52783, Edo. de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(57, 'QUENMOR, S.A. de C.V.  (Verificentro TL-971)', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacion de uso particular o intensivo que utilicen gasolina, gas L.P., gas natural o diesel como combustible.\r\n', NULL, NULL, NULL, 'Avenida Santa Cecilia, N 294, Col. Santa Cecilia, Tlalnepantla - Estado de Mexico, C. P. 54130 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(58, 'VERIFIAUTO SAQ, S.A. de C.V.', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulación de uso particular o intensivo que utilicen gasolina, gas L.P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Avenida Hidalgo Sur,  n 3, Col. San Martin Tepetlixpan, Cuautitlan Izcalli - Edo. de Mexico, C. P. 54763.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(60, 'DIAGNOSTICO AVANZADO EN EMISIONES CONTAMINANTES, S.A. de C.V.   (Verificentro HX-939)', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacon de uso particular o intensivo que utilicen gasolina, gas L.P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Paraje Paraiso,  S/N, Col. Magdalena Chichicaspa, Huixquilucan - Estado de Mexico, C. P. 52760 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(61, 'SERVICIOS AMBIENTALES J.M.A., S.A. de C.V.  (Verificentro AT-988)', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacion de uso particular o intensivo que utilicen gasolina, gas L.P., gas natural o diesel como combustible.', NULL, NULL, NULL, 'Pioneros del Cooperativismo, Nº 75, Col. México Nuevo, Atizapan de Zaragoza - Estado de Mexico, C. P. 52972.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(62, 'HV Plasticos S.A. de C.V. ', 'Fabricacion de bolsas y rollos de polietileno de alta y baja densidad.', NULL, NULL, NULL, 'Calle Pino 456, Colonia Santa Maria Insurgentes, Delg. Cuauhtemoc;Ciudad de Mexico. C.P. 06430.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(63, 'DIAGNOSTICO Y CONTROL DE CONTAMINANTES, S.A. de C.V. (Verificentro CH-922)', 'La atencion al cliente del servicio de verificacion vehicular', NULL, NULL, NULL, 'Carretera Mexico  Cuautla km 39, S/N,  Col. Granjas Chalco; Chalco, \r\n C.P. 56600 Estado de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(64, 'MANITOGO  Refrigeracion, S. A. de C.V.', 'La fabricacion de paneles para camaras frigorificas modulares.', NULL, NULL, NULL, 'Cda. Benito Juarez No. 37, Colonia Culhuacan; Delegacion Iztapalapa, Mexico D.F. 09800\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(65, 'RANDOX MEXICO S.A. DE C.V.  ', 'Compra, venta, almacenamiento, importacion, exportacion, consignacion, arrendamiento, comercializacion, distribucion de equipos integrales de sistemas automaticos de quimica clinica, programas de control de calidad externo o por internet, material para control de calidad, reactivos de diagnostico clinico y tecnologia de biochip Array, sistemas informaticos de administracion de laboratorios y hospitales, asi como servicios de asistencia tecnica a los equipos integrales comercializados.', NULL, NULL, NULL, 'Convento de Acolman No. 26, Col. Jardines de Santa Monica, Tlalnepantla, Edo. de Mexico, . C.P. 54050\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(66, 'DUAL TALLERES METAL MECANICA S.A. DE C.V.  ', 'Diseño, desarrollo, maquinado, fabricacion reparacion y/ o suministro de componentes de equipos ( chumaceras centrifugadas, ventiladores, valvulas, refacciones) y la reparacion y /o mantenimiento de equipos dinamicos ( turbocargadores, turbinas, generadores, bombas, compresores, reductores de velocidad, motores elctricos y de combustion interna), asi como intercambiadores de calor', NULL, NULL, NULL, 'Avenida 21 poniente No. 2323, Colonia Volcanes, Puebla, Puebla, C.P. 72410\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(67, 'Ivonne Tovar Guerra  (Servicio y Climatizacion)', 'Servicio de instalacion, mantenimiento preventivo y correctivo a sistemas de equipos de aire acondicionado', NULL, NULL, NULL, 'Privada 17 de julio No. 15, Colonia Otilio Montaño, CP.62557, Jiutepec, Morelos.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(68, 'Facultad de Ciencias Quimicas e Ingenieria  (FCQI) de la Universidad Autonoma de Estado  de Morelos (UAEM)', 'Servicios educativos de nivel licenciatura, posgrado y de capacitacion para la actualizacion profesional.', NULL, NULL, NULL, 'Avenida Universidad No. 1001, Col. Chamilpa, Cuernavaca, Morelos C.P. 62209\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(69, 'CENTRO DE ESTUDIOS SUPERIORES DE COMUNICACIÓN EDUCATIVA DE TLAXCALA (C.E.S.C.E.T)', 'Servicios educativos para la formacion de profesionales de la educacion basica, en la Licenciatura en Educacion Secundaria con Especialidad en Telesecundaria.', NULL, NULL, NULL, 'Ignacio Zaragoza No. 3, Col. Zaragoza, Totolac Tlaxcala, C.P. 90160\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(70, ' Jorge Moreno Gonzalez/ CENTRO DE CAPACITACION Y ADIESTRAMIENTO SCT.CC/000138', 'Servicios de capacitacion a operadores para el transporte de materiales y residuos peligrosos', NULL, NULL, NULL, 'Blvd.  Siglo XXI No. 1416, fraccionamiento Balcones de Ojo Caliente CP 20263, Aguascalientes, AGS.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(71, ' Jorge Moreno Gonzalez / CENTRO DE CAPACITACION Y ADIESTRAMIENTO SCT.CC/000163', 'Servicios de capacitacion a operadores para el transporte de materiales y residuos peligrosos', NULL, NULL, NULL, 'Parque Zoquipan No. 36, Jardines del Alba CP 54750, Cuautitlan Izcalli, Edo. Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(72, 'Equipos de Bombeo Rios S.A. de C.V. ', 'Servicios tecnicos de ingenieria, diseño y desarrollo de infraestructura para el manejo, bombeo, tratamiento y potabilizacion de agua', NULL, NULL, NULL, 'Carretera Tepoztlan-Yautepec No. 105, Col.  Vicente Estrada Cajigal, Municipio de Yautepec, Morelos, C.P. 62732.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(73, 'Comercializadora El Sardinero S.A. de C.V. ', 'Abasto, manejo, transportacion, procesamiento, preparacion de alimentos y servicios de hoteleria costa afuera.', NULL, NULL, NULL, 'Calle 2 Oriente, No. 13; Lote 2, Manzana F, Col. Puerto Isla del Carmen, Cd del Carmen Campeche, C.P. 24140\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(74, 'JOSE FRANCISCO BARBOSA SERVIN Centro de Capacitacion y Adiestramiento para conductores de Autotransporte Federal y Transporte Privado SCT.CC/000257 ', 'La capacitacion y adiestramiento de conductores del servicio de autotransporte federal y transporte privado en la modalidad de servicios de pasajeros, turismo, carga general, materiales y residuos peligrosos.', NULL, NULL, NULL, 'Av. Vallarta 4901 ext. C Col. Prados Vallarta C.P. 45020 Zapopan. Jalisco\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(75, 'MACOLZA, S.A. de C.V.', 'Servicios de Construccion y Rehabilitacion de Plataformas y Vias de Acceso.', NULL, NULL, NULL, 'Av. Puebla S/N, Colonia Palma Sola, Acceso 2 Central de Abastos, Poza Rica, Veracruz, C.P. 93320.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(76, 'NAVIERA LUCERO S.A. DE C.V.', 'Prestacion de Servicios de Alimentacion y Hoteleria en \r\nTerritorio Nacional y  Costa Afuera.', NULL, NULL, NULL, 'Calle 22 No. 16, Col. Pallas, Cd. Del Carmen, Campeche, Mexico, C.P. 24140\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(77, 'Servicios Suministros y Construcciones Trucsa S.A. de C.V.', 'Servicios de Alimentacion y Hoteleria a Embarcaciones e instalaciones del Cliente Costa Afuera.', NULL, NULL, NULL, 'Calle 35 No. 57, Col. Tecolutla, Cd. Del Carmen, Campeche, Mexico, C.P. 24178\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(78, 'Industrias LAVIN de Mexico, S.A. de C.V.', 'Diseño, desarrollo, fabricacion, comercializacion y distribucion de productos de cuidado personal', NULL, NULL, NULL, 'calle 9 este, No 24, lote 2a y 2b, Col.Civac, Jiutepec, Morelos, Mexico,C.P. 62500\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(79, 'Productos Serel S.A de C.V.', 'Procesamiento, elaboración y envasado de productos cárnicos, desarrollo de menús, abastecimiento, elaboración y servicio de alimentos para todo tipo de personas y / o pacientes (Catering y Box Lunch); formación de despensas, considerando las actividades a partir de la compra, almacenamiento, empaque, transporte, distribución hasta la entrega de productos alimenticios en establecimientos propios y / o de Instituciones Públicas y Privadas.\r\n', NULL, NULL, NULL, 'Avenida Lomas de Sotelo, N 1094, Piso 1, Colonia Loma Hermosa, Delegacion Miguel Hidalgo, Mexico Distrito Federal. C.P. 11200\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(80, 'Rafael Jose Prado (Centro de Capacitacion y Adiestramiento de Conductores del servicio de autotransporte Federal y Transporte Privado SCT.CC/000260)', 'La prestacion de servicios de capacitacion para conductores u operadores del Servicio Publico Federal y Transporte Privado, en la modalidad de carga general y carga especializada en materiales y residuos peligrosos', NULL, NULL, NULL, 'Calle Carretera Mexico Oaxaca km 108.5,Lote 1 y Lote 50, Col.Empleado Municipal,Cuautla Morelos, .C.P.62749\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(81, 'CINE TRANSFORMER, S.A DE C.V.', 'Comercializacion de mercadotecnia, publicidad y capacitacion a traves de unidades moviles', NULL, NULL, NULL, 'Calle Melchor Ocampo  No. 193, Col. Veronica Anzures, Delegacion Miguel Hidalgo, México D.F. C.P. 11300.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(82, 'Kaufen Soluciones y Etiquetas S.A. de C.V.', 'Diseño, desarrollo y Produccion de etiquetas mediante el proceso de flexografia, asi como la produccion de cinta de refuerzo', NULL, NULL, NULL, 'Calle 10 poniente No. 2118 C, Colonia Tierra y Libertad, Puebla, Puebla, C.P. 72090 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(83, 'Sonigas S.A de C.V.', 'La atencion, recepcion, transmision y confirmacion de los pedidos programados y no programados que solicitan a traves del CALL CENTER', NULL, NULL, NULL, 'Calle Timoteo Lozano No. 112, Colonia San Miguel, Leon , Guanajuato, C.P. 37460 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(84, 'ROCARERI S.A. DE C.V.', 'La atencion al cliente del servicio de verificacion vehicular', NULL, NULL, NULL, 'Calle Uno, No.16, Col. Las Aguilas, Nezahualcoyotl, Estado de Mexico, C.P. 57900.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(85, 'CARUAL S.A. DE C.V.', 'La atencion al Cliente del Servicio de Verificacion Vehicular', NULL, NULL, NULL, 'Avenida Tezozomoc esquina Poniente 10, Mz. 47, Lote 1al 4, , Col. Alfredo Baranda, C.P. 56610; Municipio Valle de Chalco Solidaridad, Mexico, D. F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(86, 'QUENMOR, S.A. de C.V. (Verificentro TL-971)', 'Prestacion del Servicio de Atencion al Cliente  para la Verificacion Vehicular', NULL, NULL, NULL, 'Avenida Santa Cecilia, Nº 294-A, Col. Santa Cecilia, Tlalnepantla - Estado de Mexico, C.P. 54130\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(87, 'CENTRO ESPECIALIZADO DE VERIFICACION TYCSA, S.A. de C.V. (Centro de Capacitacion y Adiestramiento Externo) Registro SCT.CC/000047', 'La capacitacion y adiestramiento de conductores del servicio de autotransporte federal y transporte privado en la modalidad de servicio de pasaje y turismo, carga general y materiales y residuos peligrosos.\r\nCon numero de registro SCT.CC/000047\r\n', NULL, NULL, NULL, 'Avenida Santa Cecilia, Nº 294-Altos, Col. Santa Cecilia, Tlalnepantla - Estado de Mexico, C. P. 54130\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(88, 'VERIFIAUTO SAQ, S.A. de C.V. (Verificentro CI-980)', 'Prestacion de Servicios de Atencion al Cliente para la Verificacion Vehicular', NULL, NULL, NULL, 'Av. Hidalgo Sur, No. 3, Col. San Martin Tepetlixpan, C.P.54763, Cuautitlan Izcalli, Estado de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(89, 'CERMEG S.A. DE C.V', 'Servicio de atencion al cliente derivado de la veificacion vehicular ', NULL, NULL, NULL, 'Av. Cuauhtemoc S/N, Colonia Zoquiapan,  Ixtapaluca Edo. de Mexico, . C.P. 56530\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(90, 'JARRIS S.A. DE C.V. (Verificentro TP-964)', 'La atencion al Cliente del Servicio de Verificacion Vehicular', NULL, NULL, NULL, 'Libramiento Sur No. 4, Barrio Texcacoa,  Tepotzotlan, Estado de Mexico, C.P. 54601.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(91, 'RECUPERACION AMBIENTAL, S.A. de C.V. (Verificentro TY-924)', 'Servicio de atencion al cliente derivado de la verificacion vehicular', NULL, NULL, NULL, 'Carretera Cuautitlan Teoloyucan,  S/N, Col. Ex hacienda San Jose, Teoloyucan - Estado de Mexico, C. P. 54770.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(92, 'GRUPO INDUSTRIAL DE CONTROL DE CALIDAD S.A. DE C.V.', 'Armado de libros como resultado de la supervision de proyecto en las etapas de ingenieria, procuracion de materiales y equipo, construccion, arranque y pruebas pre-operacionales.\r\n', NULL, NULL, NULL, 'Av. Tito Estrada No. 67-1, Col. Centro, Progreso de Obregon, Hidalgo\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(93, 'DIAGNOSTICO AVANZADO EN EMISIONES CONTAMINANTES, S.A. de C.V. (Verificentro HX-939)', 'Servicios de atencion al cliente derivado de la verificacion vehicular', NULL, NULL, NULL, 'Paraje Paraiso,  S/N, Col. Magdalena Chichicaspa, Huixquilucan - Estado de Mexico, C. P. 52773 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(94, 'SEVICIOS AMBIENTALES J.M.A., S.A. de C.V. (Verificentro AT-988)', 'Servicios de atencion al cliente derivado de la verificacion vehicular', NULL, NULL, NULL, 'Pioneros del Cooperativismo, Nº 75, Col. Mexico Nuevo, Atizapan de Zaragoza - Estado de Mexico, C. P. 52966.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(95, 'DISTRIBUIDORA DE PRODUCTOS DE EXPORTACION, DIPESA', 'Compra, distribucion y comercializacion de productos a nivel nacional e internacional\r\nProductos relacionados con la reparacion, conservacion de todo tipo de neumaticos.', NULL, NULL, NULL, 'Uranio, Mz. 44, Lt. 9, Col. San Juan, Del. Iztapalapa, C.P. 09400, Mexico, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(96, ' Comercializadora  El Sardinero S.A. de C.V.', 'Compra, almacenamiento, integracion, acondicionamiento armado de despensas, venta y comercializacion de alimentos, abarrotes y material de higiene personal y limpieza.Asi como logistica y distribucion.', NULL, NULL, NULL, 'Km. 39.5 Autopista Mexico- Queretaro  Mz. 1 Lote 6 letra B, Zona industrial Xhala. C.P.54714, Cuautitlan izcalli, Estado de mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(97, 'HEMOSER S.A de C.V, Centro de Distribución', 'Adquisicion y distribucion de productos relacionados con laboratorios y bancos de sangre.\r\n', NULL, NULL, NULL, 'Av. 16 de Septiembre No. 777, Bodegas 2 y 3 piso 1, Col. Alce Blanco, Naucalpan de Juárez, Estado de Mexico, C.P. 53370.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(98, 'Felix Diaz Alvarez', 'Servicios de transporte terrestre de productos derivados del petroleo y carga en general', NULL, NULL, NULL, 'calle 10 s/n entre lazaro cardenas y carretera transpeninsular, Col. Ampliacion ejido el centenario, C.P. 23201, la paz , Baja california \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(99, 'Grupo Díaz Alvarez Hermanos,  S.A de C.V.', 'Servicios de transporte terrestre de productos derivados del petroleo y  carga en general', NULL, NULL, NULL, 'calle 10 s/n entre lazaro cardenas y carretera transpeninsular, Col. Ampliacion ejido el centenario, C.P. 23201, la paz , Baja california \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(100, 'Inspecciones no destructivas del Golfo S.A de C.V.(INDEGSA)', 'Servicios de inspeccion mediante pruebas no destructivas terrestres y submarinas, videos y fotografia, limpieza de casco, propelas de embarcaciones y estructuras submarinas', NULL, NULL, NULL, 'Calle  Pino Suarez No. 2330, Colonia  Centro ,  C.P. 91700, Veracruz,  Veracruz .\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(101, 'Quality Protec, S.A de C.V.', 'Servicio de inspeccion, seleccion, ensamble y/o retrabajo en los productos finales en diferentes industrias', NULL, NULL, NULL, 'Calle Emiliano Carranza, No 14 Int. A, Col. San Juan Ixtacala, Del: Tlanepantla de Baz, Estado de mexico  C.P. 54160\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(102, 'Manufacturas Valroca, S.A de C.V.', 'Diseño y Desarrollo, Maquinado, Manufactura y Comerzializacion de productos de Hule, Plasticos y Metal para la Industria en General.', NULL, NULL, NULL, 'Sitio N 1:General Florencio Antillon, No 108, Colonia Juan Escutia, Codigo Postal 09100, Delegacion Iztapalapa, Ciudad de Mexico   \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(103, 'DIAGNOSTICO MEDICO HH-LA S.A. DE C.V.', 'Atencion a usuarios solicitantes de los servicios de laboratorio clinico y diagnostico por imagen', NULL, NULL, NULL, 'Francisco Sarabia No. 405, Colonia Centro, Apizaco, Tlaxcala\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(104, 'SURTIPRACTIC, S.A. DE C.V.', 'Abasto, Manejo, Transportacion, Procesamiento, Preparacion de Alimentos y Servicios de Hoteleria en Instalaciones Costa Afuera.', NULL, NULL, NULL, 'Avenida Dos Oriente No.13, Col. Puerto Isla del Carmen, C.P. 24140,                                                  Ciudad del Carmen Campeche.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(105, 'DADUCH, S.A. DE C.V.', 'Fabricacion y comercializacion de productos inyectados de plasticos', NULL, NULL, NULL, 'Av. Jalisco No. 15 A, Santa Maria Aztahuacan, eje 5 y Batalla de paso de Oveja Iztapalapa, Distrito Federal C.P. 09500\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(106, 'EDIFICACIONES CARAPIA S.A. DE C.V.', 'Realizacion de servicios de mantenimiento correctivo y preventivo a equipos e instalaciones hidrosanitarias.', NULL, NULL, NULL, 'Justo Sierra No. 69, col. Barrio de San Pedro, Delegacion  Xochimilco, Mexico, D.F. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(107, 'Escuela Integral de Capacitacion para Operadores del Transporte S.A. De C.V.', 'La capacitacion y adiestramiento de conductores del servicio de autotransporte federal y transporte privado en la modalidad de servicio de pasaje y turismo, carga general, materiales y residuos peligrosos.', NULL, NULL, NULL, 'Guillermo Prieto Sur No. 112-A, Col. San Sebastian, Toluca, Edo. De Mexico, \r\nC.P. 50150.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(108, 'PROVEEDORA RM,  S.A. DE C.V. .', 'Comercializacion integral (venta con orientacion tecnica) de material de curacion, incluido el material de curación de alta especialidad para el Sector Salud, publico y privado', NULL, NULL, NULL, 'Calle Pablo Ucello No.75, Colonia Ciudad de los Deportes, C.P. 03710, Delegacion Benito Juarez, México, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(109, 'Fundacion para la Promocion Humana, I.A.P. Colegio Agustin Garcia Conde', 'Servicios educativos de Nivel Basico (Preescolar, Primaria y Secundaria) y Nivel Medio Superior (Colegio de Ciencias y Humanidades)', NULL, NULL, NULL, 'Morelos No. 11 Col. La Joya, C.P. 14000 Del. Tlalpan, Mexico D.F. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(110, 'Productora Procesadora Agricola de Mexico S.A de C.V', 'Integracion, acondicionamiento y  comercializacion (Compra, almacenamiento y venta) de alimentos, abarrotes y material de higiene personal y limpieza, asi como logistica y distribucion.', NULL, NULL, NULL, 'Km 39.5 Autopista Mexico- Queretaro Mz. 1, Lote 6, Int. C, Col. Zona\r\n Industrial Xhala, Cuautitlan Izcalli, Estado de Mexico, C.P. 54714.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(111, 'ALVA-MEX QUIMICA, S.A. DE C.V.', ' Diseño, Desarrollo, Produccion y Comercializacion de recubrimientos (tipo vinilica, esmalte, repintado automotriz, barniz y aerosol) y sus complementos  (catalizadores, aditivos y solventes)\r\n\r\nComercializacion de materias primas para la industria química  y sus complementos.\r\n\r\nCompra y comercialización de recubrimientos (tipo vinilica, esmalte, repintado automotriz, barniz y aerosol) y sus complementos (catalizadores, aditivos y solventes).', NULL, NULL, NULL, 'Calle Guadalajara No.29 B, Col. Constitucion de 1917, Tlalnepantla de Baz, C.P. 54190, Estado de Mexico, y las indicadas en los Anexos  SGC-103-2015-A,B,C,D,E y F.  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(112, 'SURTIPRACTIC, S.A. DE C.V.', 'Integracion, acondicionamiento (armado de despensas) y comercializacion (compra, almacenamiento y venta) de alimentos, abarrotes, y material de higiene personal y limpieza. Asi como logistica y distribucion.', NULL, NULL, NULL, 'Calle Oriente 6; numero exterior 705, Colonia Ciudad Industrial,  Municipio Morelia, Codigo Postal 58200; Michoacan, Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(113, 'La Cosmopolitana, S.A. de C.V.', 'Compra, venta, trasformacion, empaque, distribucion y entrega de productos alimenticios en general (perecederos y no perecederos), formacion de despensas en instalaciones propias y preparacion de alimentos en instalaciones del cliente. \r\n', NULL, NULL, NULL, 'Lago Zurich No. 519, Col. Francisco I. Madero, C.P. 11480, Delegacion Miguel Hidalgo, Distrito Federal, Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(114, 'Comercial Landson''s, S.A. de C.V.', 'Compra, Almacenamiento, Transportacion, Empaque y Entrega de Productos Alimenticios (Principalmente: Lacteos, Carnicos, Pescados y Mariscos, Frutas y Verduras) a instituciones Publicas y Privadas ', NULL, NULL, NULL, 'Av. Lomas de Sotelo, No.1094, Piso 1, Col. Loma Hermosa, Del. Miguel Hidalgo, C.P.11200, Mexico, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(115, 'VEM-MEX S.A. DE C.V.', 'Desarrollo y fabricacion de pistones forjados y fundidos para la industria automotriz', NULL, NULL, NULL, 'Avenida 24 S/N, Colonia Centro, Municipio Agua Prieta, C.P. 84200, Sonora, Mexico.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(116, 'COMBUSTIBLE MAR DE CORTES S.A DE C.V.', 'Servicios de capacitacion para conductores de autotransporte federal en la modalidad de materiales y residuos peigrosos', NULL, NULL, NULL, 'Sinaloa y Rangel, S/ N, Col.El Mangito,  La Paz, C.P. 23060, Baja California Sur, Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(117, 'Abastos y Distribuciones Institucionacionales,  S.A. de C.V', 'Compra-Venta, Recepcion, Almacenamiento, Integracion, Logistica y Distribucion de Productos Alimenticios\r\n(Perecederos y no Perecederos en todas sus presentaciones y variedades), incluyendo Armado de Despensas para Instituciones Publicas y Privadas.', NULL, NULL, NULL, 'Calle 4 Mz. 5 LT 6 Ejido del Moral, Delegacion Iztapalapa, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(118, 'DIANA ZAYRIK CHAHIN', 'COMPRA, ALMACENAMIENTO, EMPAQUE Y ENTREGA DE PRODUCTOS ALIMENTICIOS A INSTITUCIONES PLUBLICAS Y PRIVADAS', NULL, NULL, NULL, 'PROLONGACION DE SUR 35, No. 551, COL. RINCON GRANDE, MUNICIPIO ORIZABA, VERACRUZ\r\nC.P. 94340\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(119, 'TRANSFORMADORA DE ACEROS MENDOZA ZUÑIGA, S.A DE C.V.', 'Diseño, desarrollo, fabricacion y montaje de equipo mecanico, estructural y paileria en general, asi como los servicios asociados de procura, comercializacion, construccion, control de pruebas, arranque y puesta en operacion, mantenimiento industrial e infraestructura', NULL, NULL, NULL, 'Calle Morelos, No. 4, Colonia Santa Maria, Municipio Apaxco, C.P.55660, Estado de Mexco, Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(120, 'ELISMART S.A. DE C.V.', 'Servicio de comercializacion de software y equipos en los que funciona que incluye instalacion configuracion, soporte y mantenimiento.', NULL, NULL, NULL, 'Calle Lafayette, No. 26 Colonia Anzures, Delegación / Municipio Miguel Hidalgo, C.P. 11590, Ciudad de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(121, 'Alas del Monte S.A. de C.V.', 'Servicio de transporte terrestre especializado en productos quimicos y carga general', NULL, NULL, NULL, 'Niños Heroes No. 203, Col. San Pedro Totoltepec Toluca, Estado de Mexico.\r\nC.P.50200\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(122, 'Jose Sandoval  Lara Frutas y Vegetales Lupita', 'Compra, Almacenamiento, embalaje y Distribucion de productos alimenticios (frutas y verduras) para el sector publico y privado.', NULL, NULL, NULL, 'Prolongacion Guadalupe Victoria No. 3, Col. Nicolas Bravo Coscomatepec, Veracruz, C.P. 94139\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(123, 'ERATEX, S.A. DE C.V.', 'Teñido y acabado de todo tipo de telas.', NULL, NULL, NULL, 'Carretera Villa del Carbón, Km 10.5 Cd. Lopez Mateos\r\nC.P. 52947; Atizapan de Zaragoza, Estado de Mexico, Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(124, 'Centro de Capacitacion y Adiestramiento Antonio Vazquez Ramirez', 'Servicios de capacitacion y adiestramiento para operadores del servicio publico federal (en sus modalidades A pasaje y turismo  B y C, carga general  y E carga especial /materiales de residuos peligrosos). \r\n', NULL, NULL, NULL, 'Calle Arrayan, Interior 13; Manzana 24 Colonia la Era 1, Delegacion Iztapalapa, C.P. 09720, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(125, 'Sistemas Alemanes para Corte, S.a de C.V.  (SACSA)', 'Fabricacion, comercializacion y afilado automatizado de herramientas de corte.', NULL, NULL, NULL, 'Comision Agraria No. 103, Col. Cuatro Arboles Gelegacion Venustiano Carranza, Mexico, D.F.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(126, 'DISTRIBUIDORA VITRINA GRAFICA S.A. DE C.V.', 'Compra, Venta, Almacenamiento y Distribucion de Productos para las Artes Graficas y los Servicios de Corte de Lamina Litografica.', NULL, NULL, NULL, 'Av. Rio Churubusco No. 2305; Gabriel Ramos Millan, Iztcalco, Distrito Federal\r\nC.P. 0799', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(127, 'Lavatipsa, S.A. de C.V.', 'Servicio de lavado industrial que comprende desde la recoleccion, recepcion, desmanchado, lavado, secado, planchado, empaquetado y entrega de prendas a restauranteros, hospitales, hoteles e Instituciones', NULL, NULL, NULL, 'Tercera Cerrada de Minas No. 144, Col. Arvide, Deleg. Alvaro Obregon, Mexico, D.F., C.P. 01280.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(128, 'Grupo de Rehabilitacion Bucodental Nodenti, S.C', 'Fabricacion de protectores bucales a base de resina de plastico, medianate el proceso de Thermoformado', NULL, NULL, NULL, 'Epigmenio Gonzalez, No. 101, Col. San Bernandino, Toluca, Estado de Mexico; C.P. 50079\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(129, 'Sistema Integral Mecanico Administrativo SIMA, S.A de C.V.', 'La verificacion de emisiones contaminantes a la atmosfera provenientes de vehiculos automotores en circulacion de uso particular o intensivo que utilicen gasolina, gas L.P. gas natural o diesel como combustible', NULL, NULL, NULL, 'Carretera Tanque Blanco – San Miguel de Allende, numero exterior 690; Colonia Buena Vista, Santa Rosa Jauregui, Delegacion / Municipio, Queretaro, C.P. 76000; Estado de Queretaro.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(130, 'COMBUSTIBLE MAR DE CORTES S.A DE C.V.', 'Servicio de compra- venta, almacenamiento y transporte de carga especializada de derivados del petroleo,productos quimicos y materiales peligrosos', NULL, NULL, NULL, 'Carretera al Norte, Col.Chametla, La paz Baja California sur C.P. 23205\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(131, 'Zaragoza Rocha y Asociados,  S.C.', 'Administracion y recuperacion de cartera vencida', NULL, NULL, NULL, 'Francisco Ayala, No. 62, Colonia Vista Alegre, Delegacion Cuauhtemoc; C.P. 06860, Ciudad de Mexico', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(132, 'Agricola Comercial del Valle Santo Domingo, S.A.', 'Servicio de compra- venta, almacenamiento y transporte de carga especializada de derivados del petroleo,productos quimicos y materiales peligros\r\n', NULL, NULL, NULL, 'Carretera al Norte, Col.Chametla, La paz Baja California sur C.P. 23205\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(133, 'Corporativo Juridico MBG, S.C.', 'Servicios de Cobranza', NULL, NULL, NULL, 'La Morena No  1059 Colonia Narvarte Poniente, C.P. 03020, \r\nAlcaldia  Benito Juarez, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(134, 'O Limpia, S. A. de C.V  ', 'LA RECOLECCION DE RESIDUOS SOLIDOS URBANOS Y SU DISPOCISION FINAL', NULL, NULL, NULL, 'Av. Reforma sur, No. Exterior 916, Col. Centro, Tehuacan Puebla Mexico, C.P. 75700\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(135, 'Oscar Hernandez Montalvo (EXCELIM)', 'Servicios de limpieza general a edificios e instalaciones.', NULL, NULL, NULL, 'Avenida Palmitas No. 114-A, Col. Palmitas, Pachuca, Hidalgo. C.P. 42094\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(136, 'INDUSTRIAL AGRICOLA Y MINERA ENCINALES S.A. DE C.V.', 'Fabricacion de Implementos de Seguridad para la Mineria ( Procesos de Fabricacion de Ancla Secoint, Procesos de Fabricacion de Ancla de Ojillo de Herradura, \r\nProcesos de Fabricacion de Cartucho de Cemento).', NULL, NULL, NULL, 'Transito Pesado, s/n, Col. Adolfo Lopez Mateos, Rio Grande, C.P. 98425, Zacatecas, Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(137, 'Macore Acumuladores y Deshidratadores, S.A. de C.V.', 'Desarrollo y Fabricacion de Componentes para Refrigeracion (Filtros, Acumuladores, Serpentines)', NULL, NULL, NULL, 'Feliciana Paul Mz 1, Bodega 9,Industrial Ixtapaluca, C.P.56600, Ixtapaluca, Estado de Mexico, Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(138, 'Pro Mejoramiento Ambiental, S.A. de C.V. (Verificentro lX-940)', 'Servicios de verificacion de emisiones vehiculares y atencion al cliente.', NULL, NULL, NULL, 'Paseo de los Encinos, S/N, Col. Santa Barbara, Municipio Ixtapaluca, C.P. 56538, Estado de Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(139, 'Verificaciones Seminario, S.A. de C.V. (Verificentro 977)', 'Servicio de Verificacion de emisiones vehiculares y atencion al cliente.', NULL, NULL, NULL, 'Lago Izamal, S/N; Colonia El seminario, Municipio Toluca, C.P. 50170; Estado de Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(140, 'GRUPO DE ANÁLISIS DE INTEGRIDAD DE DUCTOS. Escuela Superior De Ingenieria Quimica e Industrias Extractivas. Instituto Politecnico Nacional.', 'Servicios de Ingenieria para la Administracion de Integridad de Ductos y Equipo Estatico que Manejan Hidrocarburos, Petrolíferos y Petroquimicos. \r\n', NULL, NULL, NULL, 'Unidad Profesional Adolfo Lopez Mateos (UPALM) edificio 8, colonia Zacatenco, Delegación Gustavo A. Madero, C. P. 07738, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(141, 'Federacion Regional de Cooperativas de Ahorro y Prestamo Centro Sur S.C. de R.L. de CV. ', 'Representacion y Asistencia Tecnica\r\n(Financiera, Auditoria Interna, Tecnologias de Informacion, Control Interno, Administracion de Riesgos, Prevencion de lavado de dinero, Juridica y Capacitacion a Cooperativas de Ahorro y Prestamo)\r\n', NULL, NULL, NULL, 'Privada Platino 11 Lomas de Cortes, Cuernavaca, Morelos C.P. 62240\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(142, 'Colegio Vasconcelos', 'Servicios educativos de nivel basico (preescolar, primaria y secundaria)', NULL, NULL, NULL, 'Miguel Quintana, No. 3, Col. Daniel Garza,  Del.Miguel Hidalgo, C.P.11830, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(143, 'EDUCADORES DOLORENSES S.C. (Universidad Patria)', 'Servicios educativos de nivel medio superior y superior, considerando los procesos relacionados desde la promocion de la oferta educativa hasta la entrega del certificado final al alumno; asi como los servicios de educacion continua', NULL, NULL, NULL, 'Campus Dolores Hidalgo, Avenida 20 de noviembre, numero 03, Colonia Revolucion, Municipio Dolores Hidalgo, Estado de Guanajuato, C.P. 37800, Mexico\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(144, 'Satelite Vehiculos, S. A. de C. V. (Verificentro AG-410)', 'La atencion al cliente del servicio de verificacion vehicular', NULL, NULL, NULL, 'Boulevard Manuel Avila Camacho No. 755 Int. I-A, Col. Santa Maria Nativitas; Naucalpan de Juarez, Estado de Mexico; C.P. 53020\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(145, 'O Limpia, S. A. de C.V  San Pedro Cholula', 'La recoleccion de residuos solidos urbanos y su \r\ndisposicion final.', NULL, NULL, NULL, 'Camino a San Luis Tehuiloyocan No 1535,Col. San Luis Tehuiloyocan, \r\nC.P. 72848, San Andres Cholula; Puebla, Mexico.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(146, 'KASA NAUCALPAN, S.A DE C.V. (Verificentro AG-406)', 'La atencion al cliente del servicio de verificacion vehicular', NULL, NULL, NULL, 'Boulevard Manuel Avila Camacho No. 480, Col. San Andres Atoto, Naucalpan de Juarez, Estado de Mexico C.P. 53500\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(147, 'Instituto de Servicios Registrales y Catastrales del Estado de Morelos', 'Servicios Registrales, Catastrales y de Archivo de Notarias, de Inscripcion, Certificacion, Archivo y Consulta', NULL, NULL, NULL, 'Calle Zapote No. 2, Col. Centro Cuernavaca, Morelos C.P. 62000\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(148, 'Satelite Vehiculos, s.a de c.v.', 'LA ATENCION AL CLIENTE DEL SERVICIO DE VERIFICACION VEHICULAR ', NULL, NULL, NULL, 'Av. Mario Colin, No. 24, Col. Tlanepantla Centro, C.P.54000\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(149, 'O limpia S.A de C.V. Relleno Sanitario Intermunicipal Zona Cuyoaco ', 'DISPOSICION FINAL Y CONFINAMIENTO DE RESIDUOS SOLIDOS URBANOS', NULL, NULL, NULL, 'Ex hacienda de la rosa s/n, colonia La Rosa, C.P. 73980, Cuyoaco Puebla, Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(150, 'ENERXICO, ENERGIA MEXICO S.A DE C.V', 'DISPOSICION FINAL Y CONFINAMIENTO DE RESIDUOS SOLIDOS URBANOS', NULL, NULL, NULL, 'km.4,7 camino tecorral, s/n, jagueyes cuates Buenavista, Apan Hidalgo, Mexico C.P 43900\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(151, 'SOL VALLE DORADO S.A.P.I  DE C.V. (CHEVROLET COACALCO AG-405)', 'La atencion al cliente del servicio de verificacion vehicular', NULL, NULL, NULL, 'Via Jose Lopez  Portillo No 53, Colonia Villa de las Flores, Coacalco Estado de Mexico C.P. 55700.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(152, 'GRUPO ECOLOGICO DEL ESTADO DE MEXICO VERIFICENTRO MILENIUM S.A DE C.V ( VERIFICENTRO AT-919)', 'Servicio de verificacion de emisiones vehiculares y atencion al cliente.\r\n', NULL, NULL, NULL, 'CARRETERA ATIZAPAN KM. 9.5, COL. EX HACIENDA EL PEDREGAL,  C.P. 52901, ATIZAPAN, MEXICO. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(153, 'SOL VALLE DORADO S.A.P.I  DE C.V. (CHEVROLET TLANEPANTLA  AG-404)', 'LA ATENCION AL CLIENTE DEL SERVICIO DE VERIFICACION VEHICULAR.', NULL, NULL, NULL, 'BVLD. MANUEL AVILA CAMACHO No 3152 COL.VALLE DORADO C.P. 54020 TLANEPANTLA DE BAZ ESTADO DE MEXICO.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(154, 'VULCAMEX S.A DE C.V. ', 'Manufactura de productos auxiliares (recubrimientos refractarios y adhesivos\r\n para moldes y corazones, desmoldantes, aglutinantes, fundentes, aislantes, \r\nexotérmicos e inoculantes) para la industria de la fundición de metales\r\n', NULL, NULL, NULL, 'JOSE RAMON CHOPE ALBARRAN NO 184 COLONIA ESFUERZO NACIONAL, XALOSTOC, ECATEPEC DE MORELOS; C.P. 55320, ESTADO DE MEXICO. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(155, 'Unidad de Capacitacion y Adiestramiento del Norte S.A DE C.V.', 'servicios de capacitacion y adiestramiento para conductores del servicio de autotransporte publico federal y transporte privado', NULL, NULL, NULL, 'Av. Gustavo Baz No Int. 170, Ext planta alta, Colonia Bosques de echegaray, Naucalpan de juarez , Estad de Mexico, C.P 53310 \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(156, 'Comercial Landson´s, S.A de C.V ', 'Compra, venta, transformacion, empaque, distribucion y entrega de productos alimenticios en general (perecederos y no perecederos), formacion de despensas\r\npara Instituciones Publicas y Privadas\r\n', NULL, NULL, NULL, 'Avenida rio churubusco S/N, nave 3, pasillo G y  H, camaras frigorificas F1, F3 y F5, interior central de abastos, Col. Ejido del moral, C.P. 09040 Iztapalapa, Ciudad de Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(157, 'La Cosmopolitana, S.A de C.V ', 'Compra, venta, trasformacion, empaque, distribucion y entrega de productos alimenticios en general (perecederos y no perecederos), formación de despensas en instalaciones propias y preparación de alimentos en instalaciones del cliente.', NULL, NULL, NULL, 'Avenida rio churubusco S/N, nave 3, pasillo A,B,C y D y  camaras frigorificas F1, F3 y F5, interior central de abastos, Col. Ejido del moral, C.P. 09040; Iztapalapa, ciudad de mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(158, 'Velsimex S.A de C.V ', 'Comercializacion de productos genericos para la proteccion de cultivos', NULL, NULL, NULL, 'Av. Central 206- 3er piso, Col. San pedro de los pinos, C.P. 01180 Alvaro Obregon, Mexico D.F \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(159, 'Gastronomica Zaida S.A de C.V ', 'Elaboracion de alimentos desde la preparacion hasta el servicio del comensal', NULL, NULL, NULL, 'Reforma 505, Colonia Cuauhtemoc, C.P. 06500 Cuauhtemoc, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(160, 'TCI CONSULTORIA INTERNACIONAL S. DE R.L. DE C.V.', 'Servicios de Archivistica y resguardo de documentacion,\r\n gestion documental y exportacion a software que distribuye y administra contenidos', NULL, NULL, NULL, 'Calzada de tlalpan No1703 Col. San diego churubusco, C.P. 04120; Coyoacan, ciudad de mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(161, 'SERVI PAC S.A DE C.V. ', 'Servicio de lavado de ropa hospitalaria, hotelera y restaurantera. ( Recepcion, lavado, secado, planchado, doblado, empacadoy entrega) ', NULL, NULL, NULL, 'Campo de tiro No 305, Col. Adolfo Lopez Mateos, Pachuca de Soto C.P. 42094 Hidalgo\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(162, 'Siete Zetas, S.A.', 'Servicios de verificacion de emisiones vehiculares y atencion al cliente.', NULL, NULL, NULL, 'Francisco Murgia No 63, Col. Granjas Valle de Guadalupe, C.P. 55270. Ecatepec de Morelos, Estado de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(163, 'Vedat de Mexico S.A DE C.', 'Fabricacion de tapas de plastico ( sistema para cerrado)', NULL, NULL, NULL, 'Calle niño Flavio Zavala No Ext. 2 Int. 2 Col. San jeronimo tepetlacalco  C.P. 54090. Estado de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(164, 'Grupo comercial Aleanah S.A de C.V.', 'Administracion, planeacion de recibo, acondicionamiento, almacenaje, distribucion, logistica en las instalaciones propias y del cliente ( servicios de mensajeria y paqueteria)', NULL, NULL, NULL, 'Norte 35 No 711, Col. Coltongo; Azcapotzalco C.P. 02630. Distrito federal \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(165, 'HIGH TECH VERICACION ', 'Servicio de Verificacion de emisiones vehiculares y atencion al cliente.', NULL, NULL, NULL, 'carretera mexico-texcoco, manzana 4, lote 15 col. San jose chicolopan estado de mexico; C.P. 56370\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(166, 'Tableros y chapas de guerrero S.A de C.V. ', 'Fabricacion y comercializacion de tableros y contrachapados', NULL, NULL, NULL, 'carretera a san miguelito, paraje el vado S/n Col. El manguito; zihuatanejo de Azueta, Guerrero , C.P. 40880\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(167, 'SERVICIO TECNICO PANTITLAN, S.A DE C.V. ', 'La atencion al cliente del servcio de verificacion vehicular ', NULL, NULL, NULL, 'Av. Pantitlan No 531, Colonia La perla, Nezahualcoyotl, C.P. 57820, Estado de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(168, 'Val Bren de México,S.A. DE C.V.', 'Comercializacion y distribucion de equipo medico, laboratorios, insumos, hospitalarios, material de curacion e instrumental medico,  incluida la capacitacion y asistencia tecnica', NULL, NULL, NULL, 'Av. Jose Lopez Portillo, No ext 339 No int Pb1, Col.  \r\nDonceles 28; C.P. 77524 Cancún Q. Roo. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(169, 'AUTOMOVILES GKA DE SATELITE S.A. DE C.V.  Hyundai Satélite Verificentro AG-408', 'La atencion al cliente del servicio de verificacion vehicular', NULL, NULL, NULL, 'Autopista Mexico- Queretaro, No 2600, Lote 2; Col.  \r\nValle de los Pinos Mza. 36,  C.P. 54040;Tlanepantla, Estado de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(170, 'TECNICA DE SERVICIO INTEGRAL, S.A DE C.V.', 'Servicio de atencion al cliente derivado de la veificacion vehicular \r\n', NULL, NULL, NULL, 'Avenida Texcoco  No 81, col Los reyes Acaquilpan C.P. 56400, La paz, Estado de Mexico \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(171, 'LIQUEN COMUNICACION, S.A DE C.V.', 'Diseño y desarrollo de servicios de imagen e identidad, ( auditoria visual, personalidad  de la marca, elementos identitarios y aplicaciones) contenidos ( productos editoriales, digitales, audiovisuales y multimedia, adaptacion de contenidos e historias narrativas, para eventos, estructuracion de proyectos) y campañas de comunicacion ( conceptual y creativo, carta de identidad y estrategia de difusion) ', NULL, NULL, NULL, 'Av. Constituyentes No 41 int 7, Col. San Miguel Chapultepec, Delg. Miguel hidalgo, Mexico D.F. C.P. 11850\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(172, 'Imagen y Laboratorio Médico  Bioscan S.C. ', 'Servicios de laboratorio medico ( Recepcion, toma de muestra , imagenologia, laboratorio de cardiologia, medicina fetal, laboratorio \r\nde neurofisiologia, estudios de espirometria, análisis clinicos, mastografias asi como unidades moviles para análisis clinicos, mastografias, ultrasonidos, colposcopia, RX simples, y espirometria) ', NULL, NULL, NULL, 'Via Atlixcayotl 3248-11 A, Col. San Martinito, C.P. 72810 San Andres Cholula Puebla. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(173, 'OROPETZA INGENIERIA & PROYECTOS S.A DE C.V. ', 'Diseño, desarrrollo y manufactura de piezas de matalmecanica asi como vulcanizado de elostomeros para la industria en general', NULL, NULL, NULL, 'San ignacio de loyola No 11 Int A, San isidro Ixhuatepec, tlalnepantla de baz, C.P. 54197 estado de mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(174, 'Buckman Laboratories,  S.A. de C.V.', 'Comercializacion de Especialidades Quimicas para los Mercados del: Papel, Tratamiento de Aguas, Tenerias y Performance Chemical', NULL, NULL, NULL, 'Paseo Cuauhnauhuac Km. 13.5, Col. Progreso, Jiutepec Morelos, \r\nMexico C.P. 62574.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(175, 'Equipos de Bombeo Rios S.A. de C.V. ', 'Servicios tecnicos de ingenieria, diseño y desarrollo de infrestructura para el manejo, bombeo, tratamiento y potabilizacion de agua', NULL, NULL, NULL, 'Carretera Tepoztlan-Yautepec No. 105, Col.  Vicente Estrada Cajigal,  Yautepec, Morelos, C.P. 62732.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(176, 'Innovacion Logika en transporte S.A. de C.V. ', 'La logistica en transportacion terrestre para productos grado alimenticio, carga en general, productos qumicos y materiales peligrosos.', NULL, NULL, NULL, 'Autopista Mexico Puebla km 30.5, S/N; Col. Santa Barbara, Ixtapaluca; Estado de Mexico, C.P. 56538\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(177, 'Montaño y Trillo Asesores Corporativos Especializados, S.C. ', 'Servicio de recuperación de cartera vencida de instituciones gubernamentales y privadas', NULL, NULL, NULL, 'Oriente 172 No 131; Col. Moctezuma 2da Seccion; Del. Venustiano Carranza, \r\nC.P. 15530, Ciudad de México.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(178, 'Cine Transformer, S.A. de C.V. ', 'Comercializacion de campañas de mercadotecnia, seguridad y \r\ncapacitacion a traves de unidades moviles expandibles\r\n ( cines, escenarios, oficinas y servicios) ', NULL, NULL, NULL, 'Melchor Ocampo No 193; Col. Veronica Anzures; Del. Miguel Hidalgo, \r\nC.P. 11300, Ciudad de Mexico.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(179, 'Ingenieria y Mantenimiento Electrico Industrial, S.A. de C.V. ', 'Servicios de ingenieria para instalaciones electricas en baja, media tension y corriente directa, asi como instalacion, venta y mantenimiento de equipos para sistemas de energia electrica.', NULL, NULL, NULL, 'Ejidos de San Andres No 45; Col. Francisco Villa; Tlalnepantla, \r\nC.P. 54059, Estado de Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(180, 'Viajes  Yeshua, S.A de C.V', 'Servicios turisticos nacionales e internacionales, asi como servicios de planeacion, organizacion y operacion de congresos, eventos y convenciones', NULL, NULL, NULL, 'Av. Xola No 1703, Col. Narvarte; C.P. 03020, Benito Juarez; Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(181, 'KLINIS, S.C.', 'Servicios de laboratorio medico\r\n( Recepcion, toma de muestra, imagenologia, laboratorio de cardialgia y \r\nrehabilitacion cardiopulmonar, analisis clinicos, toma e interpretacion de \r\nmastografias y unidad de hemodialisis)"\r\n', NULL, NULL, NULL, 'Miguel Lira y Ortega No 18, Col. Centro, Tlaxcala; C.P. 9000 Tlaxcala Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(182, 'Las Mejores Estaciones,  S.A. DE C.V.', 'Servicio de comercializacion de gasolina, diesel y consumibles \r\n( aceites, anticongelantes y aditivos) mediante \r\nvales, crédito o débito', NULL, NULL, NULL, 'Carretera Libre a Celaya Km 11.5, Col. Los Angeles, Corregidora, Queretaro C.P. 76907.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(183, 'STAR MEDICA,  S.A. DE C.V.', 'Servicio de Analisis Clinicos de Laboratorio y Banco de\r\n Sangre ( solicitud, pruebas de compatibilidad y entrega de hemocomponentes)', NULL, NULL, NULL, 'Av. Bordo de Xochiaca No 3 Lt A2- 2B, Col. Ciudad Jardin Bicentenario, Nezahualcoyotl, Estado de Mexico  C.P.57205.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(184, 'Combustibles Baja Sur,  S.A. de C.V.', 'Servicio de Compraventa de Almacenamiento de Petroliferos y Transporte de Materiales y Residuos Peligrosos. ', NULL, NULL, NULL, 'Av. Bordo de Xochiaca No 3 Lt A2- 2B, Col. Ciudad Jardin Bicentenario, Nezahualcoyotl, Estado de Mexico  C.P.57205.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(185, 'Abastos y Distribuciones Institucionales, S.A. de C.V. ', 'Compra, Venta, Recepcion, Almacenamiento, Integracion, Empaque, Logistica y Distribucion de Productos Alimenticios en todas sus presentaciones y variedades, incluyendo Armado de Despensas para Instituciones Publicas y Privadas.', NULL, NULL, NULL, 'Calle Nicolas Maquiavelo No. 12119, Local 23, Colonia Complejo Industrias, Chihuahua,  Chihuahua, C.P. 31136.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(186, 'PROSUR, S.A. de C.V. ', 'Servicios de Capacitacion y Adiestramiento a Conductores de Autotransporte Federal y Transporte Privado. \r\n', NULL, NULL, NULL, 'Avenida Tulum, Manzana 1 Lote 1, Super Manzana 64; C.P. 77522, \r\nBenito Juarez, Quintana Roo. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(187, 'COMERMET QUIM, S.A. de C.V. ', 'Servicio de comercializacion y distribucion de metales no ferrosos.', NULL, NULL, NULL, 'Fray Martin de Valencia No 212, Colonia Roble; C.P. 66450\r\nSan Nicolas de los Garza, Nuevo Leon', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(188, 'SSI Servicios y Suministros Integrales,  S.A. de C.V. ', 'Servicios de mantenimiento, reparacion, venta, renta e inspeccion de lineas de alta presion y ensayos no destructivos (particulas magneticas, liquidos penetrantes, ultrasonido industrial, pruebas hidrostaticas)', NULL, NULL, NULL, 'Carretera Municipal El Aguacate a Rancheria Zapotal Km 1.3, Localidad Occidente 4TA seccion C.P. 86650, Comalcalco, Tabasco.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(189, 'Fosfatos y Quimicos Basicos,   S.A. de C.V. ', 'Comercializacion de productos quimicos ( organicos e inorganicos) para la industria ( compra, recepcion, almacenaje, venta, dilucion, re-envase y despacho de planta)', NULL, NULL, NULL, 'Av. Framboyanes Lotes 4, 5 y 6 Manzana 7, Cd. Industrial Bruno Pagliai;\r\nC.P. 91697  Veracruz, Veracruz. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(190, 'Jorge Haro Santa Cruz   HAGO MOLECULAR', 'Servicios de Laboratorio Medico\r\n( Recepcion, toma de muestra, pruebas moleculares mediante tecnicas de PCR) -( PCR- Reaccion en cadena de la polimerasa)', NULL, NULL, NULL, 'Avenida Benito Juarez,  No 751 - Interior 1, Col. Centro C.P. 27000  Torreon, Coahuila. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(191, 'Comida Higienica y Saludable  S.A. de C.V.', 'Servicios de preparacion de alimentos a comensales y \r\nservicio de preparacion de dietas a pacientes en empresas e instituciones.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(192, 'Servicios y Asesoria de Produccion   S.A. de C.V.', 'Manufactura de ropa para hospitales, uniformes, fundas para colchones y cojines a partir de tejidos textiles ', NULL, NULL, NULL, 'Olivo No 1, Col. San Francisco Chilpan; Tultitlan  C.P. 54940, Estado de Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(193, 'Instituto Tecnologico Superior  de Macuspana', 'Servicio educativo de la institucion que comprende: Formacion profesional, practica docente, atencion en ventanilla, servicio de estudiantes, asi como servicio de apoyo y se desarrolla desde la inscripcion hasta la entrega del titulo.', NULL, NULL, NULL, 'Av. Tecnologico S/n, Col. Lerdo de Tejada 1ª Sección; C.P. 86719 Macuspana, Tabasco.  ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(194, 'CAEMSE, S.A. DE C.V.', 'Servicios de Seguridad de vigilancia intramuros y custodia para el transporte de mercancias.', NULL, NULL, NULL, 'Chalco No 17 b, Col. La loma Tlalnemex; C.P. 54070,  \r\nTlalnepantla, Estado de Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(195, 'Comprometidos con tu salud IX-940  S.A. DE C.V.', 'Servicio de verificacion de emisiones vehiculares y \r\natencion al cliente.', NULL, NULL, NULL, 'Paseo de los encinos No 4, Col. Santa Barbara, Ixtapaluca; C.P. 56538, \r\nEstado de Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(196, 'ADVANCED EQUIPMENTS AND COMPONENTS MEXICO, S.A. DE C.V.', 'Comercializacion, distribucion y apoyo tecnico para equipos y herramientas de torque', NULL, NULL, NULL, '10 Norte No 3403, Col. San Miguel Buenavista , San Pedro Cholula; C.P. 72760, \r\nPuebla, Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(197, 'Ivan Edgar Guerrero Galan  ( Centro de capacitacion y adiestramiento SCT.CC 000396)', 'Servicio de Capacitacion a Conductores del Servicio de Autotransporte Federal y Transporte Privado.', NULL, NULL, NULL, 'Av. Lopez Portillo Mz. 63 Lt. 1 local 8, Col. SM 64, Benito Juarez; C.P. 77524, \r\nQuintana Roo. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(198, 'Hybrid Telecomunicaciones,  S.A. DE C.V.', 'Servicios de construccion, empalme y mantenimiento de fibra optica, asi como el mantenimiento en microondas.', NULL, NULL, NULL, 'Isaias Cabrera Mz. 2 Lt. 6, Col. Pueblo San Juan de Aragon, Gustavo A. Madero; C.P. 07950, Ciudad de Mexico. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(199, 'SALOMON OIL COMPANY,  S.A. DE C.V.', 'Asistencia Tecnica Especializada para el Desarrollo de Proyectos de Ingenieria en la Areas de: Yacimientos ( Geociencias), Pozos \r\n( Diseño y Productividad de Pozos) e Instalaciones ( Superficie).', NULL, NULL, NULL, 'Av. Adolfo Ruiz Cortinez No 1344 piso S-200 P2, Col. Tabasco 2000, Municipio Centro Villahermosa; C.P. 86035, Tabasco.  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(201, 'ALMACENAMIENTO DE DOCUMENTOS, S.A. DE C.V.', 'Servicios de Gestion Documental que consta del Resguardo, Digitalizacion,  Organizacion, Depuracion y Administracion de todo tipo de Informacion Generada en Archivos Fisicos y Digitales para el Sector Publico y Privado.\r\n', NULL, NULL, NULL, 'Av. Industria No 4, Col. Los Reyes Ixtacala; Tlalnepantla de Baz, \r\nC.P.54075, Estado de Mexico. ', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(202, 'INSTITUTO TECNOLOGICO DEL ALTIPLANO DE TLAXCALA', 'Servicios Educativos de Nivel Superior\r\n(Comprende desde la inscripcion hasta la entrega del Titulo y Cedula Profesional).\r\n', NULL, NULL, NULL, 'Carretera Federal San Martin Texmelucan -Tlaxcala Km 7.5, Col. San Diego Xocoyucan; Ixtacuixtla de Mariano Matamoros, C.P.90122, Tlaxcala.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(203, 'Servicios de Atencion y  Actualizacion  Profesional, S.C.', 'La capacitacion y adiestramiento de conductores del servicio de autotransporte federal y transporte privado que desean obtener o renovar la licencia federal de conductor en las modalidades del servicio de carga general, pasaje y turismo, materiales y residuos peligrosos, traslado de personas de o hacia puertos maritimos y aeropuertos federales y de turismo con chofer guia.', NULL, NULL, NULL, 'Priv. Las Terrazas No 1008, Fraccionamiento las Terrazas; Tuxtla Gutierrez, C.P.29060, Chiapas.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(204, 'Benemerita y Centenaria Escuela Normal del Estado de Durango', 'Servicios de enseñanza y aprendizaje de nivel superior en la modalidad escolarizada.\r\n', NULL, NULL, NULL, 'Av. Normal  S/N, Zona Centro, Durango, Dgo. Mex. C.P.34000\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(205, 'SISTEMAS INDUSTRIALES DE MEXICO, S.A. DE C.V.', 'Comercializacion de sistemas de filtracion y maquinaria para los sectores farmaceutico, industrial, bebidas y alimentos (considerando desde la venta, \r\nla compra, almacen y distribucion). \r\n', NULL, NULL, NULL, 'Zamora 93, Col. Condesa; Alcaldia Cuauhtemoc, C.P.06140 Ciudad de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(206, 'ORGANISMO OPERADOR DEL SERVICIO DE LIMPIA DE TEHUACAN  (OOSELITE)', 'Servicio publico de limpia en el municipio de Tehuacan (incluye la recoleccion, traslado y disposicion final de residuos solidos no peligrosos; barrido manual y mecánico de vias publicas; asi como administrar las contribuciones que se\r\n deriven de la prestacion del servicio). ', NULL, NULL, NULL, 'Av. Reforma Norte 216, Col. Centro; C.P.75700, Tehuacan Puebla. \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(207, 'Escuela Nacional de Capacitacion Profesional  del Transporte S.A. de C.V.', 'Servicios de capacitacion y adiestramiento a los conductores de autotransporte federal, que deseen obtener por primera vez o renovar su licencia federal en sus diferentes modalidades de servicio y tipo de licencia; pasaje y turismo, carga general, materiales y residuos peligrosos, servicio de traslado de personas de puertos y aeropuertos en modalidad de chofer guia\r\n', NULL, NULL, NULL, 'Av. Frutas y Legumbres, Frente Azul  No 17 Int 1, Col. Ejidos del Moral,\r\nC.P. 09040;Alcaldia Iztapalapa, Ciudad de Mexico.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(208, 'ESCAIP KARAM S.C', 'Servicios de soluciones de recuperacion de cartera vencida via judicial y extrajudicial.\r\n', NULL, NULL, NULL, 'San Borja No 412, Col. Del Valle, C.P. 03100;Alcaldia Benito Juarez, Ciudad de Mexico.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(209, 'SURTIPRACTIC, S.A. DE C.V.', 'Comercializacion, Elaboracion, Abastecimiento, Servicios de Alimentacion/comida (Catering) y Servicios de Hoteleria.\r\n', NULL, NULL, NULL, 'Km 39.5 Autopista Mexico- Queretaro Mz. 1, Lote 6, Int. A, Col. Zona\r\n Industrial Xhala, Cuautitlan Izcalli, Estado de Mexico, C.P. 54714.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(210, 'COMEDORES DE HOSPITALIDAD Y SERVICIO, S.A. DE C.V.', 'PLANEACION, ELABORACION, ALMACENAMIENTO Y DISTRIBUCION DE PRODUCTOS ALIMENTICIOS, CATERING, BOX LUNCH Y MENUS FRIOS', 13, 4, NULL, 'SITIO1: PRIV. DE LA CALLE 1, NO.80, COL. DEL EMPLEADO; CUERNAVACA MORELOS CP.62250 MEXICO     SITIO2:SAN FRANCISCO NO.1434, COL.TLACOQUEMECATL DEL VALLE, DEL. BENITO JUAREZ, CP.03100 CDMX\r\n', 'amartinez@chsmx.com', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(211, 'DUMEZ COPISA SISTEMAS MEXICANOS S.A. DE C.V.', 'INGENIERIA Y A DISEÑO, CONSTRUCCION DE OBRAS Y MANTENIMIENTO EN LA INDUSTRIA PETROLERA, NUCLEAR, CONVENCIONAL, NAVAL Y EN PLANTAS GENERADORAS DE ENERGIA ASI COMO FABRICACION DE RECIPIENTES A PRESION(DE ACUERDO A CODIGO ASME SECCION VIII DIV. I)', 51, 24, NULL, 'EUCALIPTO LT 5, CIUDAD INDUSTRIAL BRUNO PLAGLIALI, No.5; COL. S/C; VERACRUZ CP.91697, VEREACRUZ\r\n', 'mjtorresj@dumezcopisa.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(212, 'CONSTRUCTORA TOSAL, S.A. DE C.V.', 'SERVICIO DE INSTALACION DE LINEAS DE TRANSMISION Y SUBESTACIONES ELECTRICAS', 32, 9, NULL, 'CUAUHTEMOC #22, COL. CENTRO, SAN JUAN DEL RIO; CP.76800,QUERETARO\r\n', 'lopezjuanluis@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(213, 'CORPORATIVO DE OBRAS Y SERVICIOS MULTIPLES DE LA REGION, S.A. DE C.V.', 'SERVICIOS DE CAPACITACION Y ENTRENAMIENTO EN SEGURIDAD INDUSTRIAL SALUD EN EL TRABAJO Y PROTECCION AMBIENTAL PARA LA INDUSTRIA PETROLERA', 6, 5, NULL, 'CARRETERA MUNICIPAL NACAJUCA A BOSQUES DE SALOYA KM.2.4 S/N LOCALIDAD EL CEDRO, NACAJUCA TABASCO MEXICO CP.8622\r\n', 'compras@comursa.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(214, 'SERVICIOS INTEGRALES DE CONSOLIDACION AEREA Y MENSAJERIA S.A. DE C.V.', 'SERVICIO ESPECIALIZADO DE LOGISTICA, TRANSPORTE AEREO Y TERRESTRE, ALMACENAMIENTO CON CADENA DE FRIO DE MUESTRAS BIOLOGICAS Y PRODUCTOS ESPECIALIZADOS PARA EL SECTOR FARMACEUTICO (INSUMOS PARA LA SALUD, MEDICAMENTOS Y PRODUCTOS BIOLOGICOS) Y TEJIDOS HUMANOS; SERVICIOS DE MENSAJERIA, CONSOLIDACION DE CARGA TERRESTRE Y VUELOS CHARTER', 21, 13, NULL, 'AV. TLALNEPANTLA #24, COL. PRADO IXTACALA CP. 54160; TLALNEPANTLA, MEXICO\r\n', 'calidad@sicamsa.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(215, 'KOL TOV, S.A. DE C.V.', 'SERVICIO DE ALIMENTACION, HOTELERIA Y CATERING EN TIERRA Y COSTA AFUERA', 57, 18, NULL, 'CALLE 67, #32, COL. PLAYA DEL NORTE; CIUDAD DEL CARMEN, CP.24115, CAMPECHE \r\n', 'concepcion.ayala@ck.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(216, 'MEAT AND VEG, S.A. DE C.V.', 'SERVICIO DE ABASTO DE COMISARIA, ALIMENTACION, HOTELERIA  EN INSTALACIONES DEL CLIENTE EN TIERRA Y COSTA AFUERA', 20, 8, NULL, 'AV.CAMARON #97, COL.JUSTO SIERRA, CIUDAD DEL CARMEN, CP. 24114, CAMPECHE\r\n', 'gabriela.castillo@meatandveg.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(217, 'AIRMAR TRANSPORTES INTERNACIONALES, S.A. DE C.V.', 'SERVICIOS DE TRANSPORTACION TERRESTRE, MARITIMA Y AEREA DE MERCANCIAS (PARA IMPORTACION Y EXPORTACION A CUALQUIER PAIS DEL MUNDO)', 84, 20, NULL, 'NORTE 174, #517,549 Y 576; COL. PENSADOR MEXICANO; VENUSTIANO CARRANZA;CP.15510, CIUDAD DE MEXICO (Y LAS INDICADAS EN ANEXO SGI-020-2019)\r\n', 'mbala@airmar.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(218, 'IMAATECH S.A. DE C.V.', 'DISEÑO Y FABRICACION DE SISTEMAS EMBEBIDOS Y TREN DE POTENCIA PARA BICICLETA ELECTRICA; ASI COMO LA INTEGRACION DE BATERIAS DE LITIO-ION Y BICICLETAS ELECTRICAS', 12, NULL, NULL, 'TRES ANEGAS 409, BODEGA 6, NUEVA INDUSTRIAL VALEJO, GUSTAVO A. MADERO, CIUDAD DE MEXICO, CP.07700\r\n', 'mexico@imaatech.com', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(219, 'FAST LOCCITEC,S.A. DE C.V.', 'SERVICIOS DE ALMACENAMIENTO, TRASLADO E INSPECCION DE UNIDADES DE TRANSPORTE', 6, 4, NULL, 'LOPE DE VEGA #132 INT 9, COL. CHAPULTEPEC MORALES, MIGUEL HIDALGO;CP. 11570 CD. DE MEXICO\r\n', 'finanzas@loccitec.com', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(220, 'CONSORCIO TOREDO, S.A. DE C.V.', 'COMERCIALIZACION, ALMACENAMIENTO, EMPAQUE, DISTRIBUCION Y SUMINISTRO DE ALIMENTOS Y BEBIDAS(FRUTAS, VERDURAS, ABRROTES, CARNICOS, PESCADOS, MARISCOS, LACTEOS Y DERIVADOS DE LAS MISMAS), ASI COMO, LA PREPARACION Y MANIPULACION DE ALIMENTOS CRUDOS Y COCIDOS(CATERING Y BOX LUNCH) Y LA FABRICACION DE TORTILLAS Y DERIVADOS DE MAIZ, FABRICACION DE PRODUCTO DE PANADERIA Y REPOSTERIA(GALLETAS Y PANADERIA SALADA Y DULCE), PURIFICACION Y ENVASADO DE AGUA', 20, 7, NULL, '2a PRIVADA DE MIGUEL HIDALGO #9, COL. SANTA URSULA COAPA, COYOACAN CP.04650 CDMX\r\n', 'hmgo30@yahoo.com.mx', NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(221, 'SERVICIOS INDUSTRIALES MAYPA, S.A. DE C.V.', '"SERVICIOS DE LIMPIEZA, RESTAURACION Y TRATAMIENTO DE SUELOS Y CUERPOS DE AGUA, ESTUDIOS AMBIENTALES Y PROTECCION DEL MEDIO AMBIENTE"', NULL, NULL, NULL, 'CALLE 5 NORTE #129; FRACCIONAMIENTO SAN ANGEL, CP.86017 VILLAHERMOSA,TABASCO', NULL, NULL, NULL, NULL, 'MAYPA-12-03-18-SGI-013', NULL, '', '', 1);
INSERT INTO `cliente` VALUES(222, 'MULTIPROYECTOS GLOBAL ENTERPRISE, S.A. DE C.V.', '"DISEÑO, DESARROLLO, CONSTRUCCION Y MANTENIMIENTO DE CENTROS DE PROCESAMIENTO DE DATOS E INSTALACIONES ESPECIALES (ELECTRICAS, MECANICAS, DE ENTORNO, SEGURIDAD Y COMUNICACION); ASI COMO LA ASESORIA TECNICA PARA LA CERTIFICACION DE CENTROS DE PROCESAMIENTOS DE DATOS"', NULL, NULL, NULL, 'BOULEVARD MANUEL AVILA CAMACHO NO.2900 INT.203, COL. LOS PIRULES; TLALNEPANTLA DE BAZ; CP.54040; ESTADO DE MEXICO', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(223, 'MANUFACTURERA DE REACTORES S.A.', 'MANUFACTURA DE LUMINARIAS VIALES Y TRADICIONALES', NULL, NULL, NULL, 'VICENTE GUERRERO #28, COL. GUADALUPE DEL MORAL; IZTAPALPA, CP.09300, CIUDAD DE MEXICO', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(224, 'COMEDORES DE HOSPITALIDAD SALUDABLE, S.A. DE C.V.', 'Planeacion, elaboracion, incluyendo almacenamiento y distribucion de productos alimenticios, box lunch, catering y menus frios ', NULL, NULL, NULL, 'De calle 1, no. 104, Col. Recursos Hidraulicos, CP. 62245, Cuernavaca Morelos', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(225, 'TRAFFICTHOR GROUP, S.A. DE C.V.', 'Servicios de despacho aduanal ylogistica integral aerea, maritima y terrestre', NULL, NULL, NULL, 'Industria de comercio y trabajo #36 Int.1;col. Federal, Venustiano Carranza, C.P.15700, Ciudad de Mexico', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(226, 'X-TRACT GLOBAL LOGISTICS, S.A. DE C.V.', 'Servicios de transporte internacional aereo, maritimo y terrestre de mercancias; desde la recoleccion hasta la entrega', NULL, NULL, NULL, 'Sinaloa #84,int.32; col.Roma,Cuauhtemoc,CP.06700,Ciudad de Mexico', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(227, 'VIAJES ARBOLEDAS S.A. DE C.V.', 'Servicios Integrales de agencia de viajes para la realizacion de eventos;asi como arrendamiento de autos, venta de boletos aereos y terrestres', NULL, NULL, NULL, 'Xochicalco #464,col. Vertiz Narvarte; Benito Juarez, CP.03600, Ciudad de Mexico', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(228, 'OPERADORES DE COMEDORES SALUDABLES, S.A. DE C.V.', 'RECEPCION , COMPRA, VENTA, ALMACENAMIENTO, DISTRIBUCION, INTEGRACION, LOGISTICA, TRANSPORTE, ENTREGA DE MATERIAS PRIMAS Y COMERCIALIZACION DE PRODUCTOS ALIMENTICIOS (ENLATADOS, ENVASADOS, EN ESTADO NATURAL, AMBUTIDOS, DERIVADOS LACTEOS, SEMI-ELABORADOS, PROCESADOS A GRANEL Y DEL CAMPO); SERVICIO INTEGRAL DE HOTELERIA (LAVANDERIA, LIMPIEZA, MANTENIMIENTO, JARDINERIA Y ENTRETENIMIENTO) Y PREPARACION Y SERVICIO DE ALIMENTOS PARA CONSUMO HUMANO (CATERING Y BOX LUNCH) PARA INSTITUCIONES PUBLICAS Y PRIVADAS\r\n', NULL, NULL, NULL, 'Sitio1:Sector de servicios complementarios de bodegas de transferencia de la central de abastos, num. ext.05, lt 8, CP 09040, colonia Ejidos del Moral, alcaldia Iztapalapa CDMX\r\nSitio2: San Francisco num.1434, col. Tlacoquemecatl del Valle, CP. 03200, alcaldia Benito Juarez, CDMX', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(229, 'COMERCIALIZADORA CUN, S.A. DE C.V.', 'Compra, venta, integracion, almacenamiento, distribucion, comercializacion, suministro, logistica, transporte y entrega de todo tipo de productos alimenticios (productos envasados y enlatados, abarrotes, semillas, granos, despensas, carnicos y embutidos en todas sus presentaciones, asi como derivados lacteos)y servicios de alimentos (catering) para organismos publicos y privados', NULL, NULL, NULL, 'Heroe de Nacozari num.354, bodega 5 y cocina de capacitacion, col. Ferrocarril, CP.44440, Guadalajara, Jalisco', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(230, 'ALIMENTOS Y SERVICIOS INTEGRALES ALSERVI, SA DE CV', 'Compra, Venta, Almacenamiento, Comercialización, Transformación, Empaque, Distribución, Integración (Armado y Empacado), Logistica y Entrega de Productos Alimenciticios en General, tales como: Alimentos Perecederos y Alimentos no Perecederos; Despensas; Artículos de Limpieza e Higiene Personal; Elaboración y Servicio de Alimentos (Catering y Box Lunch) para todo tipo de personas (deportistas, empleados, pacientes, etc.) en Instalaciones Públicas y Privadas.\r\n', NULL, NULL, NULL, 'Lomas de Sotelo no.1094, Piso 1, col. Lomas Hermosa. CP11200, Alcaldia Miguel Hidalgo, ciudad de Mexico\r\nInstalaciones:Av. Rio Churubusco, no.1015(mercado de aves y carnicos), Nave 1, bodegas A-26, A-27 y A-28 del ANden A local K del anden B, col. Central de Abastos, CP.09040, Alcaldia Iztapalapa, Ciudad de Mexico', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(231, 'DYNAMIC SOFTWARE-BASED CONTROLS, S.A. DE C.V.', 'Servicios de Desarrollo de Ingenieria, Fabricacion, Suministro, Instalacion, Pruebas, Puesta en Marcha y Mantenimiento de Sistemas de Control(SCADA), Transmision de Datos, Monitoreo, Instrumentacion y Automatizacion de Procesos Petroleros e Industriales', NULL, NULL, NULL, 'Tamaulipas no. 407, col. Petrolera Coatzacoalcos, Veracruz CP 96500.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(232, 'ANFRUTE S.A. DE C.V.', 'Elaboration and distribution of concentrated pineapple juice. Processes: juice extraction , thermal shock, packed in plastic bags, and metal containers, and cold distribution and storage. Food Chain (Sub) Category "CII" Processing of perishable plant products.\r\n', NULL, NULL, NULL, 'Av revolucion S/N Col. Del Bosque, C.P. 95580, Villa Azueta, Jose Azueta, veracruz \r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(233, 'RAMOS HERMANOS INTERNACIONAL, S.P.R. DE R.L. DE C.V.', 'Acondicionamiento, empacado y distribución de chile chipotle deshidratado\r\n', NULL, NULL, NULL, 'Carretera panamericana Km 60 S/N Col. Centro C.P. 33700 Camargo, Chihuahua.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(234, 'TITO CADEMARTORI DE MEXICO S.A. DE C.V.', 'Servicios de logistica aerea, maritima y terrestre para la importacion y exportacion de mercancias', NULL, NULL, NULL, 'Mariano Escobedo No. exterior 396 despacho 201, Colonia Anzures, Alcaldia Miguel Hidalgo, C.P. 11590, Ciudad de Mexico.', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(235, 'GRUPO CONSTRUCTOR ARROSAM S.A. DE C.V.', 'Diseño, desarrollo de lineas de media y baja tension; instalacion, mantenimiento y pruebas de lineas de alta, media, baja tension y fibra optica, aereas y subterraneas.', NULL, NULL, NULL, 'Carretera Huatusco-Xalapa Km 3.5, Col. Tlavictepan; C.P: 94100, Huatusco, Veracruz (y las indicadas en el anexo SGC-208-2019)', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(236, 'ejemplo', NULL, NULL, NULL, NULL, NULL, 'ejemplo', NULL, NULL, NULL, NULL, NULL, 'ejemplo', 'ejemplo', 1);
INSERT INTO `cliente` VALUES(237, 'BAUMET S.A. DE C.V. (BASICOS AUXILIARES METALURGICOS)', 'Diseño y Desarrollo, Manufactura de productos auxiliares (recubrimientos refractarios y adhesivos para moldes y corazones, desmoldantes, aglutinantes, fundentes, aislantes, exotermicos e inoculantes) para la industria de la fundicion de metales', NULL, NULL, NULL, 'Jose Ramon "Chope" Albarran, No.184, Col. Esfuerzo Nacional, Xalostoc Ecatepec de Morelos;CP. 55320, Estado de Mexico', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(238, 'GRUPO SECURITAS MEXICO, SA DE CV', 'Servicios de la seguridad en la cadena de suministros para los servicios de seguridad privada (seguridad intramuros, patrullaje, monitoreo en sitio y vigilancia), en el proceso estrategico (seleccion y evaluacion de clientes, proveedores y reclutamiento, seleccion y contratacion de personal) en instituciones publicas y privadas', NULL, NULL, NULL, 'Av. Isidoro Sepulveda, No. 535, int I-10, col. Los Arrecifes, Apodaca; CP.66633 Nuevo Leon', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(239, 'MULTISERVICIOS IVADOMA S.A. DE C.V.', 'Servicios de recuperacion especializada de cartera (Cobranza Prejuridica o Extrajudicial y Cobranza juridica)', NULL, NULL, NULL, 'Nueva Tabachin No. ext. 301, Col. Tlaltenango; CP. 62170, Cuernavaca Morelos', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(240, 'Centro de Capacitación del Sureste Gorsal, S. C.', 'Servicios de Capacitación a los Conductores del Servicio Público Federal y Privados con bases a los Programas Integrales de Capacitación de la SCT; y Cursos de Capacitaci{on en General.', NULL, NULL, NULL, 'Sitio 1: Calle 35, No. 468, Col. Fraccionamiento las Brisas del Norte, C. P. 97144, Mérida, Yucatán.\r\nSitio 2: Calle 10, No. 23, Col. Barrio de la Ermita, C. P. 24020, Campeche, Campeche.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(241, 'WINAX INGENIERÍA Y PROTECCIÓN AMBIENTAL S. A. DE C. V.', 'Diseño y desarrollo de Ingeniería, construcción, asesoramiento, supervision y asistencia tecnica para proyectos de obra civil de infraestructura terrestre; asi como los servicios de consultoria para gestion de proyectos.\r\n', NULL, NULL, NULL, 'Calle 24, No. 128, Col. Florida, Villahermosa, Tabasco, C. P. 86040.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(242, 'International Metals de México S. A. de C. V.', 'Desarrollo y fabricación de conectores, buses de cobre y aluminio; aislados y sin aislar; así como desarrollo y fabricación aisladores bajo dIseño del cliente.\r\n', NULL, NULL, NULL, 'Av. Alfredo del Mazo, Lt. 5, Núm. 14, Col. Zona Industrial 1 y 2,  Atizapán de Zaragoza, C. P. 52968, Estado de México.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(243, 'Industrias Mavaen S. A. de C. V.', 'Compra, venta, comercialización y ensamble de componentes y equipos para el transporte terrestre de carga. (Dollys)                                                                                               No aplicabilidad de los requisitos: 8.3 Diseño y desarrollo de los productos y servicios.\r\n', NULL, NULL, NULL, 'Camino a la Trinidad y Camino Interparcelario, Km 19.5, C.P. 43830, Zempoala, Hidalgo, México.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
INSERT INTO `cliente` VALUES(244, 'Abastos y Distribuciones Institucionales S. A. de C. V.', 'Compra - Venta, Recepcion, Almacenamiento, Empaque, Integracion, Logistica y Distribucion de Productos Alimenticios No Perecederos en todas sus presentaciones y variedades, incluyendo Paquetes Alimentarios y Armado de Despensas para Instituciones Publicas y Privadas.\r\n', NULL, NULL, NULL, 'Calle 6 No. 192, Colonia Granjas de San Antonio,  Alcaldia Iztapalapa, C. P. 09070, Ciudad de Mexico.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientevsesquema`
--

CREATE TABLE `clientevsesquema` (
  `idClientevsEsquema` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_idcliente` int(11) NOT NULL,
  `esquema_idesquema` int(11) NOT NULL,
  PRIMARY KEY (`idClientevsEsquema`),
  KEY `fk_ClientevsEsquema_cliente1_idx` (`cliente_idcliente`),
  KEY `fk_ClientevsEsquema_esquema1_idx` (`esquema_idesquema`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `clientevsesquema`
--

INSERT INTO `clientevsesquema` VALUES(1, 1, 1);
INSERT INTO `clientevsesquema` VALUES(2, 1, 2);
INSERT INTO `clientevsesquema` VALUES(3, 2, 1);
INSERT INTO `clientevsesquema` VALUES(4, 3, 1);
INSERT INTO `clientevsesquema` VALUES(5, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `designacion`
--

CREATE TABLE `designacion` (
  `iddesignacion` int(11) NOT NULL AUTO_INCREMENT,
  `auditoria_idauditoria` int(11) NOT NULL,
  `auditor_idauditor` int(11) NOT NULL,
  `funcion_idfuncion` int(11) NOT NULL,
  `real` int(11) DEFAULT NULL COMMENT '0=documental; 1=realidad',
  PRIMARY KEY (`iddesignacion`),
  KEY `fk_designacion_auditoria1_idx` (`auditoria_idauditoria`),
  KEY `fk_designacion_auditor1_idx` (`auditor_idauditor`),
  KEY `fk_designacion_funcion1_idx` (`funcion_idfuncion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `designacion`
--

INSERT INTO `designacion` VALUES(1, 1, 1, 3, 1);
INSERT INTO `designacion` VALUES(2, 1, 3, 1, 0);
INSERT INTO `designacion` VALUES(3, 1, 4, 2, 0);
INSERT INTO `designacion` VALUES(4, 3, 14, 2, 0);
INSERT INTO `designacion` VALUES(5, 3, 12, 1, 0);
INSERT INTO `designacion` VALUES(6, 3, 13, 5, 0);
INSERT INTO `designacion` VALUES(7, 4, 12, 1, 0);
INSERT INTO `designacion` VALUES(8, 5, 3, 1, 1);
INSERT INTO `designacion` VALUES(9, 5, 10, 3, 1);
INSERT INTO `designacion` VALUES(10, 6, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `domicilioFiscal` varchar(150) NOT NULL,
  `noExt` varchar(5) NOT NULL,
  `noInt` varchar(5) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `alcaldia` varchar(45) NOT NULL,
  `codigopostal` varchar(10) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `cliente_idcliente` (`cliente_idCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `direccion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL,
  `nombre_Emp` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcar la base de datos para la tabla `empresa`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esquema`
--

CREATE TABLE `esquema` (
  `idesquema` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre_Esq` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idesquema`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `esquema`
--

INSERT INTO `esquema` VALUES(1, 'ISO 9001:2015', 'Sistema de Gestion de la Calidad');
INSERT INTO `esquema` VALUES(2, 'ISO 14001:2015', 'Sistema de Gestion Ambiental');
INSERT INTO `esquema` VALUES(3, 'ISO 22000:2018', 'Sistema de Gestion de Inocuidad de los alimen');
INSERT INTO `esquema` VALUES(4, 'ISO 28000', 'Sistema de Gestion de Seguridad en la Cadena ');
INSERT INTO `esquema` VALUES(5, 'ISO 45001:2018', 'Sistema de Gestion de Seguridad y Salud en el');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion`
--

CREATE TABLE `funcion` (
  `idfuncion` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_func` varchar(90) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idfuncion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `funcion`
--

INSERT INTO `funcion` VALUES(1, 'AL', 'Auditor Lider');
INSERT INTO `funcion` VALUES(2, 'ET', 'Experto Tecnico');
INSERT INTO `funcion` VALUES(3, 'A', 'Auditor');
INSERT INTO `funcion` VALUES(4, 'TC', 'Tecnico en Certificacion');
INSERT INTO `funcion` VALUES(5, 'AL-E', 'Auditor Lider en Entrenamiento');
INSERT INTO `funcion` VALUES(6, 'A-E', 'Auditor en Entrenamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hallazgos`
--

CREATE TABLE `hallazgos` (
  `idHallazgos` int(11) NOT NULL AUTO_INCREMENT,
  `requisito` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `clasificacion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `auditoria_idauditoria` int(11) NOT NULL,
  PRIMARY KEY (`idHallazgos`),
  KEY `fk_Hallazgos_auditoria1_idx` (`auditoria_idauditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `hallazgos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegio`
--

CREATE TABLE `privilegio` (
  `idprivilegio` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `create` int(11) DEFAULT NULL COMMENT '0=no\n1=si',
  `read` int(11) DEFAULT NULL,
  `update` int(11) DEFAULT NULL,
  `delete` int(11) DEFAULT NULL,
  `analysis` int(11) DEFAULT NULL,
  `empresa_idempresa` int(11) NOT NULL,
  `Area_idArea` int(11) NOT NULL,
  PRIMARY KEY (`idprivilegio`),
  KEY `fk_privilegio_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_privilegio_empresa1_idx` (`empresa_idempresa`),
  KEY `fk_privilegio_Area1_idx` (`Area_idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcar la base de datos para la tabla `privilegio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `idSector` int(11) NOT NULL,
  `descripcion_Sec` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idSector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcar la base de datos para la tabla `sector`
--

INSERT INTO `sector` VALUES(3, 'Productos alimenticios, bebidas y tabaco ');
INSERT INTO `sector` VALUES(4, 'Textiles y productos textiles');
INSERT INTO `sector` VALUES(12, 'Quimicos, productos quimicos y fibras');
INSERT INTO `sector` VALUES(14, 'Hule y productos de plastico');
INSERT INTO `sector` VALUES(17, 'Metales básicos y productos de metal fabricados');
INSERT INTO `sector` VALUES(19, 'Equipo Electrico y Optico');
INSERT INTO `sector` VALUES(28, 'Construccion');
INSERT INTO `sector` VALUES(29, 'Comercializacion');
INSERT INTO `sector` VALUES(30, 'Hoteles y Restaurantes');
INSERT INTO `sector` VALUES(31, 'Trasnporte Almacenamiento y comunicacion');
INSERT INTO `sector` VALUES(34, 'Servicios de Ingenieria');
INSERT INTO `sector` VALUES(35, 'Otros servicios');
INSERT INTO `sector` VALUES(37, 'Educacion');
INSERT INTO `sector` VALUES(39, 'Otros Servicios Sociales, Tratamiento de residuos peligrosos y no peligrosos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre_user` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` VALUES(0, 'Marco Antonio Rosales Jimenez', 'MarcoRJ', 'MARJ4381', 0, 1);
INSERT INTO `usuario` VALUES(1, 'AUDAMEX', '', '2019', 0, 1);
INSERT INTO `usuario` VALUES(3, 'Isabel Garcia Torres', 'IsaGT', 'IGT9173', 2, 1);

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `areatec`
--
ALTER TABLE `areatec`
  ADD CONSTRAINT `fk_areaTec_Sector` FOREIGN KEY (`Sector_idSector`) REFERENCES `sector` (`idSector`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `areatvscliente`
--
ALTER TABLE `areatvscliente`
  ADD CONSTRAINT `fk_detalleATvsC_areaTec1` FOREIGN KEY (`areaTec_idareaTec`) REFERENCES `areatec` (`idareaTec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalleATvsC_cliente1` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD CONSTRAINT `fk_auditoria_cliente1` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auditoriavsesquema`
--
ALTER TABLE `auditoriavsesquema`
  ADD CONSTRAINT `fk_auditoriavsesquema_auditoria1` FOREIGN KEY (`auditoria_idauditoria`) REFERENCES `auditoria` (`idauditoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auditoriavsesquema_esquema1` FOREIGN KEY (`esquema_idesquema`) REFERENCES `esquema` (`idesquema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_Calificacion_areaTec1` FOREIGN KEY (`areaTec_idareaTec`) REFERENCES `areatec` (`idareaTec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Calificacion_auditor1` FOREIGN KEY (`auditor_idauditor`) REFERENCES `auditor` (`idauditor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Calificacion_esquema1` FOREIGN KEY (`esquema_idesquema`) REFERENCES `esquema` (`idesquema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cambioscertificado`
--
ALTER TABLE `cambioscertificado`
  ADD CONSTRAINT `fk_CambiosCertificado_certificado1` FOREIGN KEY (`certificado_idcertificado`) REFERENCES `certificado` (`idcertificado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `fk_certificado_cliente1` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientevsesquema`
--
ALTER TABLE `clientevsesquema`
  ADD CONSTRAINT `fk_ClientevsEsquema_cliente1` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ClientevsEsquema_esquema1` FOREIGN KEY (`esquema_idesquema`) REFERENCES `esquema` (`idesquema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `designacion`
--
ALTER TABLE `designacion`
  ADD CONSTRAINT `fk_designacion_auditor1` FOREIGN KEY (`auditor_idauditor`) REFERENCES `auditor` (`idauditor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_designacion_auditoria1` FOREIGN KEY (`auditoria_idauditoria`) REFERENCES `auditoria` (`idauditoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_designacion_funcion1` FOREIGN KEY (`funcion_idfuncion`) REFERENCES `funcion` (`idfuncion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hallazgos`
--
ALTER TABLE `hallazgos`
  ADD CONSTRAINT `fk_Hallazgos_auditoria1` FOREIGN KEY (`auditoria_idauditoria`) REFERENCES `auditoria` (`idauditoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `privilegio`
--
ALTER TABLE `privilegio`
  ADD CONSTRAINT `fk_privilegio_Area` FOREIGN KEY (`Area_idArea`) REFERENCES `area` (`idArea`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_privilegio_empresa` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_privilegio_usuario` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
