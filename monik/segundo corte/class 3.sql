create database usersFruteria;

use usersFruteria;

create table correocliente(
	id int not null auto_increment,
    email varchar(40) not null,
    statusEmail boolean not null,
    primary key(id)
);

create table usuariosfruteria(
	id int not null auto_increment,
    nombre varchar(40) not null,
    statususuario boolean not null,
    idEmailUser int not null,
    primary key(id),
    constraint fk_correocliente foreign key(idEmailUser)
    references correocliente(id)
);

insert into correocliente
	value(0,"cliente1@gmail.com",true);
insert into correocliente
	value(0,"cliente2@gmail.com",true);
insert into correocliente
	value(0,"cliente3@gmail.com",true);
insert into correocliente
	value(0,"cliente4@gmail.com",true);
    
insert into usuariosfruteria
	value(0,"user1",true,1);    
insert into usuariosfruteria
	value(0,"user2",true,2);    
insert into usuariosfruteria
	value(0,"user3",true,3);    
insert into usuariosfruteria
	value(0,"user4",true,4);
    
update usuariosfruteria
set statususuario=false
where id=1;

delete from usuariosfruteria
where  usuariosfruteria="user3";
