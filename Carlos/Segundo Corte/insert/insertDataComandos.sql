create database if not exists Fruteria3;

use Fruteria3;

create table if not exists nuestraTienda(
	id int AUTO_INCREMENT,
    nombreEmpleados varchar(45) not null,
    apellidoEmpleados varchar(45) not null,
    numeroCelular int not null,
    primary key(id)
);
create table if not exists productos(
	id int AUTO_INCREMENT,
    nombreProducto varchar(45) not null,
    cantidad int not null,
    precio int not null,
    idTienda int,
    primary key(id),
    constraint pd_nt foreign key(idTienda)
    references nuestraTienda(id)
);
insert into nuestraTienda
	values(0,"Carlos","Cumaco",123);
    
insert into productos
	values(0,"Pera",22,2500,1);
insert into productos 
    values(0,"manzana",15,1000,1);

insert into productos
	values(0,"banano",14,500,1);
insert into nuestraTienda
	values(0,"Harol","Martinez",1234);
insert into productos
	values(0,"kiwi",40,2000,2);