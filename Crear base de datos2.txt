CREATE SCHEMA `fruterialulu` ;


CREATE TABLE `fruterialulu`.`identificadorfruteria` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Direccion` VARCHAR(45) NOT NULL,
  `Numero Contacto` INT NOT NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `fruterialulu`.`clientes` (
  `CC` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Telefono` INT NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`CC`));


CREATE TABLE `fruterialulu`.`domiciliarios` (
  `CC` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Telefono` INT NOT NULL,
  PRIMARY KEY (`CC`));

