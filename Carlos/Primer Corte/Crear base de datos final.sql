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


------//----------------//--------



CREATE SCHEMA `fruterialulu2` ;


CREATE TABLE `fruterialulu2`.`factura` (
  `IDfactura` INT NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `Cantidad` INT NOT NULL,
  `ValorTotal` INT NOT NULL,
  PRIMARY KEY (`IDfactura`));


CREATE TABLE `fruterialulu2`.`Productos de venta` (
  `Codigo` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `ValorUnitario` INT NULL,
  PRIMARY KEY (`Codigo`));


CREATE TABLE `fruterialulu2`.`Inventario` (
  `Codigo` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Caracteristicas` VARCHAR(100) NOT NULL,
  `Costos` INT NOT NULL,
  PRIMARY KEY (`Codigo`));



---------//-------------------//-------------


CREATE SCHEMA `fruterialulu3` ;


CREATE TABLE `fruterialulu3`.`factura` (
  `IDfactura` INT NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `Cantidad` INT NOT NULL,
  `ValorTotal` INT NOT NULL,
  PRIMARY KEY (`IDfactura`));


CREATE TABLE `fruterialulu3`.`clientes` (
  `CC` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Telefono` INT NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`CC`));


CREATE TABLE `fruterialulu3`.`Proveedores` (
  `NIT` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Producto` VARCHAR(45) NOT NULL,
  `Numero` INT NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`NIT`));












