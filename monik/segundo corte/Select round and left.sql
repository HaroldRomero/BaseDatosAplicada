create database if not exists Subjets;
use Subjets;
create table productos1(
    id int,
    nameproducto varchar(45) not null,
    Valorproducto varchar(45) not null,
    Valortotal varchar(45) not null,
    primary key(id)
);
insert into productos1
    values(1,"queso","4500");
insert into productos1
	values(2,"jamon","3500");
insert into productos1
	values(3,"Galleta","2500");
    
select *from productos1;
select Valorproducto*5 as Valortotal
from productos1;
   
    
select * from cliente3;
select date_format(Fechacumpleaños,'%d/%b/%Y') as date1
from cliente3;

select round(Valorproducto,1) as RoundValue
from productos1;

select left(namecliente,4) as ExtractString
from cliente3;
