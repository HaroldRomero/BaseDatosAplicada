create database if not exists Subjets;
use Subjets;
create table if not exists Cliente3(
    id int,
    namecliente varchar(45) not null,
    lastname varchar(45) not null,
    email varchar(45) not null,
    primary key(id)
);

create table if not exists provedor3(
    id int,
    nameprovedor varchar(45) not null,
    lastname varchar(45) not null,
    email varchar(45) not null,
    idcliente int,
    primary key(id),
    constraint fk_cliente foreign key(idcliente)
    references Cliente3(id)
);
insert into Cliente3
    values(1,"Andrea","infante","andrea@gmail.com");
    
insert into provedor3
    values(
        1,
        "Andres",
        "perez",
        "andres@gmail.com",
        1
    );
insert into provedor3 values(2,"Carolina","Melo","carolina@gmail.com",1);
insert into provedor3
    values(3,"","Ramirez","Sandra@gmail.com",1);
insert into Cliente3
    values(2,"Ramon","Valdez","ramon@gmail.com");
insert into provedor3
    values(4,"lina","Ordoñes","lina@gmail.com",2);
    
alter table provedor3 modify id int auto_increment; 
create table if not exists Cliente4(
    id int auto_increment,
    namecliente varchar(45) not null,
    lastname varchar(45) not null,
    email varchar(45) not null,
    primary key(id)
);
create table if not exists provedor4(
    id int auto_increment,
    nameprovedor varchar(45) not null,
    lastname varchar(45) not null,
    email varchar(45) not null,
    idcliente int,
    primary key(id),
    constraint fk_Cliente4 foreign key(idCliente)
    references Cliente4(id)
);
insert into Cliente4
    values(0,"Oscar","hernandez","Oscar@gmail.com");
    
insert into provedor4
    values(
        0,
        "Maria",
        "Martinez",
        "maria@gmail.com",
        1
    );
insert into provedor4 values(0,"carolina","Medez","carolina@gmail.com",1);
insert into provedor4 
    values(0,"Laura","benitez","laura@gmail.com",1);
insert into Cliente4
    values(0,"Pedro","Ramirez","pedro@gmail.com");
insert into provedor4
    values(0,"Carlos","Alvarez","Carlos@gmail.com",2);