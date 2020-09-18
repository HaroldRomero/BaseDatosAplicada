create database`base3` ;

create table `base3`.`Cliente2` (
  `idCliente2` int primary key auto_increment,
  `codigo` int not null,
  `cedula`  varchar(16) not null
   );
  
  create table `base3`.`inventario` (
  `idinventario` int primary key auto_increment,
  `id` int primary key,
  `Codigo` int not null,
  `nombreP` varchar (14) not null
  );
  
  create table `base3`.`docmiciliario` (
  `iddomiciliario` int primary key auto_increment,
  `codigo` varchar (15) not null,
  `nombre`  varchar(20) not null
   );
   
   alter table `base3`.`Cliente2`
   add telefono int;
   
   alter table  `base3`.`Cliente2`
   add cargo decimal(5) not null;
   
   alter table `base3`.`Cliente2`
   add apellido varchar (7) after telefono;
   
    alter table `base3`.`Cliente2`
	drop column telefono;
    
    alter table `base3`.`docmiciliario`
    modify nombre varchar (14);
    
    alter table `base3`.`inventario`
    change nombrep producton varchar (14);
    

    alter table `base3`.`cliente2`
         add constraint cliente2_inventario
              foreign key (id)
              references inventario(id);
              

     alter table `base3`.`cliente2`
		 drop foreign key cliente2_inventario
         
     /*alter `base3`.`cliente2`
     drop colum id;*/