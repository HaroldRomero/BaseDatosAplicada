create database`base1` ;

create table `base1`.`cliente` (
  `idcliente` int primary key auto_increment,
  `nit` int not null,
  `nombre` int not null
   );
  
  create table `base1`.`factura` (
  `idfactura` int primary key auto_increment,
  `nit` int not null,
  `fecha` date not null,
  `direccion` varchar(16) not null
   );
   
create table `base1`.`provedor` (
  `idfactura` int primary key auto_increment,
  `nit` int not null,
  `fecha` date not null,
  `direccion` varchar(16) not null,
  
  constraint `provedor`
  foreign key (`idprovedor`)
  references `base1`.`cliente` (`idcliente`),
  
  constraint `factura` 
  foreign key (`idfactura`) 
  references `provedor` (`idproveedor`)

   );
   
   
   