create database`base2` ;

create table `base2`.`alumno` (
  `idalumno` int primary key auto_increment,
  `codigo` int not null,
  `nombre`  varchar(16) not null
   );
  
  create table `base2`.`padre` (
  `idpadre` int primary key auto_increment,
  `nombre` int not null,
  `cedula` varchar (14) not null
  );
  
  create table `base2`.`profesor` (
  `idprofesor` int primary key auto_increment,
  `codigo` varchar (15) not null,
  `nombre`  varchar(20) not null
   );
   
   
   alter table `base2`.`alumno`
   add telephone int;
   
   alter table  `base2`.`profesor`
   add cargo decimal(5) not null;
   
   alter table `base2`.`padre`
   add apellido varchar (7) after telephone;
   
    alter table `base2`.`padre`
	drop column nombre;
    
    alter table `base2`.`alumno`
    modify nombre varchar (14);
    
    alter table `base2`.`alumno`
    change nombre nombre1 varchar (14);
    