-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Audamex
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Audamex
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Audamex` DEFAULT CHARACTER SET utf8 ;
USE `Audamex` ;

-- -----------------------------------------------------
-- Table `Audamex`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `expediente` VARCHAR(45) NULL,
  `razonSocial` VARCHAR(200) NULL,
  `noPersonas` INT NULL,
  `correoEmp` VARCHAR(90) NULL,
  `telEmp` VARCHAR(10) NULL,
  `telEmp2` VARCHAR(10) NULL,
  `productoServicio` VARCHAR(200) NULL,
  `integral` TINYINT NULL,
  `nivelIntergacion` INT NULL,
  `observaciones` LONGTEXT NULL,
  `condicion` TINYINT NULL COMMENT 'Estatus del cliente aceptado, activiado, desactivado.',
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`norma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`norma` (
  `idNorma` INT NOT NULL AUTO_INCREMENT,
  `acronimo` VARCHAR(10) NULL,
  `claveMex` VARCHAR(90) NULL,
  `claveISO` VARCHAR(45) NULL,
  `descripcion` LONGTEXT NULL,
  `condicion` TINYINT NULL,
  PRIMARY KEY (`idNorma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`representate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`representate` (
  `idRepresentate` INT NOT NULL AUTO_INCREMENT,
  `puesto` VARCHAR(90) NULL,
  `nombre` VARCHAR(90) NULL,
  `telefono` VARCHAR(10) NULL,
  `extension` VARCHAR(5) NULL,
  `correo` VARCHAR(90) NULL,
  `condicion` TINYINT NULL,
  `cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idRepresentate`),
  INDEX `fk_representate_cliente1_idx` (`cliente_idCliente` ASC),
  CONSTRAINT `fk_representate_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `Audamex`.`cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`certificacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`certificacion` (
  `idCertificacion` INT NOT NULL AUTO_INCREMENT,
  `alcance` LONGTEXT NULL,
  `noCertificado` VARCHAR(60) NULL,
  `diasAuditoria` INT NULL,
  `seguimientos` VARCHAR(45) NULL COMMENT 'Semestral o anual.',
  `condicion` TINYINT NULL,
  `cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idCertificacion`),
  INDEX `fk_certificacion_cliente1_idx` (`cliente_idCliente` ASC),
  CONSTRAINT `fk_certificacion_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `Audamex`.`cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`sitio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`sitio` (
  `idSitio` INT NOT NULL AUTO_INCREMENT,
  `noSitio` INT NULL,
  `descripcion` VARCHAR(90) NULL,
  `referencia` VARCHAR(120) NULL,
  `pais` VARCHAR(60) NULL,
  `estado` VARCHAR(90) NULL,
  `municipio` VARCHAR(90) NULL,
  `cp` VARCHAR(5) NULL,
  `colonia` VARCHAR(90) NULL,
  `numExt` VARCHAR(45) NULL,
  `numInt` VARCHAR(45) NULL,
  `responsable` VARCHAR(90) NULL,
  `noEmpleados` INT NULL,
  `observaciones` LONGTEXT NULL COMMENT 'Requerimientos o conocimientos especiales.',
  `condicion` TINYINT NULL,
  `certificacion_idCertificacion` INT NOT NULL,
  PRIMARY KEY (`idSitio`),
  INDEX `fk_sitio_certificacion1_idx` (`certificacion_idCertificacion` ASC),
  CONSTRAINT `fk_sitio_certificacion1`
    FOREIGN KEY (`certificacion_idCertificacion`)
    REFERENCES `Audamex`.`certificacion` (`idCertificacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`turno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`turno` (
  `idTurno` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(90) NULL,
  `condicion` TINYINT NULL,
  PRIMARY KEY (`idTurno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`proceso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`proceso` (
  `idProceso` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(90) NULL,
  `internosExternos` VARCHAR(45) NULL,
  `condicion` TINYINT NULL,
  `sitio_idSitio` INT NOT NULL,
  `turno_idTurno` INT NOT NULL,
  PRIMARY KEY (`idProceso`),
  INDEX `fk_proceso_sitio1_idx` (`sitio_idSitio` ASC),
  INDEX `fk_proceso_turno1_idx` (`turno_idTurno` ASC),
  CONSTRAINT `fk_proceso_sitio1`
    FOREIGN KEY (`sitio_idSitio`)
    REFERENCES `Audamex`.`sitio` (`idSitio`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_proceso_turno1`
    FOREIGN KEY (`turno_idTurno`)
    REFERENCES `Audamex`.`turno` (`idTurno`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`cotizacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`cotizacion` (
  `idCotizacion` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL,
  `descripcion` LONGTEXT NULL,
  `fechaProbAud` DATE NULL,
  `fechaImpSG` DATE NULL,
  `subtotal` DECIMAL(12,2) NULL,
  `costoSeg` DECIMAL(12,2) NULL,
  `costoDesc` DECIMAL(12,2) NULL,
  `costoNormal` DECIMAL(12,2) NULL,
  `costoAumento` DECIMAL(12,2) NOT NULL,
  `descuento` INT NULL,
  `asesores` VARCHAR(90) NULL,
  `condicion` TINYINT NULL,
  `cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idCotizacion`),
  INDEX `fk_cotizacion_cliente1_idx` (`cliente_idCliente` ASC),
  CONSTRAINT `fk_cotizacion_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `Audamex`.`cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`empleado` (
  `idEmpleado` INT NOT NULL AUTO_INCREMENT,
  `identificador` VARCHAR(10) NULL,
  `nombre` VARCHAR(200) NULL,
  `direccion` VARCHAR(200) NULL,
  `observaciones` LONGTEXT NULL,
  `condicion` TINYINT NULL,
  PRIMARY KEY (`idEmpleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`area`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`area` (
  `idArea` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(90) NULL,
  `condicion` TINYINT NULL,
  PRIMARY KEY (`idArea`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`usuarioInt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`usuarioInt` (
  `idUsuarioInt` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(90) NULL,
  `usuario` VARCHAR(120) NULL,
  `condicion` TINYINT NULL,
  PRIMARY KEY (`idUsuarioInt`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`permiso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`permiso` (
  `idPermiso` INT NOT NULL AUTO_INCREMENT,
  `condicion` TINYINT NULL,
  `area_idArea` INT NOT NULL,
  `usuarioInt_idUsuarioInt` INT NOT NULL,
  PRIMARY KEY (`idPermiso`),
  INDEX `fk_permiso_area1_idx` (`area_idArea` ASC),
  INDEX `fk_permiso_usuarioInt1_idx` (`usuarioInt_idUsuarioInt` ASC),
  CONSTRAINT `fk_permiso_area1`
    FOREIGN KEY (`area_idArea`)
    REFERENCES `Audamex`.`area` (`idArea`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_permiso_usuarioInt1`
    FOREIGN KEY (`usuarioInt_idUsuarioInt`)
    REFERENCES `Audamex`.`usuarioInt` (`idUsuarioInt`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`usuarioExt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`usuarioExt` (
  `idUsuarioExt` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(90) NULL,
  `pasword` VARCHAR(90) NULL,
  `condicion` TINYINT NULL,
  `cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idUsuarioExt`),
  INDEX `fk_usuarioExt_cliente1_idx` (`cliente_idCliente` ASC),
  CONSTRAINT `fk_usuarioExt_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `Audamex`.`cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`solicitud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`solicitud` (
  `idSolicitud` INT NOT NULL AUTO_INCREMENT,
  `folio` VARCHAR(5) NULL,
  `fecha` DATE NULL,
  `observaciones` LONGTEXT NULL,
  `progreso` INT NULL,
  `condicion` TINYINT NULL,
  `cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idSolicitud`),
  INDEX `fk_solicitudServicios_cliente1_idx` (`cliente_idCliente` ASC),
  CONSTRAINT `fk_solicitudServicios_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `Audamex`.`cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`servicio` (
  `idServicio` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(120) NULL,
  `observaciones` LONGTEXT NULL,
  `condicion` TINYINT NULL,
  PRIMARY KEY (`idServicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`certificacionVsNorma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`certificacionVsNorma` (
  `idCertificacionVsNorma` INT NOT NULL AUTO_INCREMENT,
  `certificacion_idCertificacion` INT NOT NULL,
  `norma_idNorma` INT NOT NULL,
  PRIMARY KEY (`idCertificacionVsNorma`),
  INDEX `fk_certificacionVsNorma_certificacion1_idx` (`certificacion_idCertificacion` ASC),
  INDEX `fk_certificacionVsNorma_norma1_idx` (`norma_idNorma` ASC),
  CONSTRAINT `fk_certificacionVsNorma_certificacion1`
    FOREIGN KEY (`certificacion_idCertificacion`)
    REFERENCES `Audamex`.`certificacion` (`idCertificacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_certificacionVsNorma_norma1`
    FOREIGN KEY (`norma_idNorma`)
    REFERENCES `Audamex`.`norma` (`idNorma`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Audamex`.`solicitudVsServicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Audamex`.`solicitudVsServicios` (
  `idSolicitudVsServicios` INT NOT NULL AUTO_INCREMENT,
  `solicitud_idSolicitud` INT NOT NULL,
  `servicio_idServicio` INT NOT NULL,
  PRIMARY KEY (`idSolicitudVsServicios`),
  INDEX `fk_solicitudVsServicios_solicitud1_idx` (`solicitud_idSolicitud` ASC),
  INDEX `fk_solicitudVsServicios_servicio1_idx` (`servicio_idservicio` ASC),
  CONSTRAINT `fk_solicitudVsServicios_solicitud1`
    FOREIGN KEY (`solicitud_idSolicitud`)
    REFERENCES `Audamex`.`solicitud` (`idSolicitud`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_solicitudVsServicios_servicio1`
    FOREIGN KEY (`servicio_idServicio`)
    REFERENCES `Audamex`.`servicio` (`idServicio`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
