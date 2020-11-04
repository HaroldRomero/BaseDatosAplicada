Create database FruteriaL;
use FruteriaL;


CREATE TABLE Clientes4(
cc VARCHAR(30) not NULL PRIMARY KEY,
Names varchar(30) not NULL,
Last_Names varchar(30) not NULL,
Telefono VARCHAR(30) NOT NULL,
Direccion VARCHAR(30) NOT NULL
);

CREATE TABLE Proveedores4(
NIT INT NOT NULL PRIMARY KEY,
Nombre varchar(30) not NULL,
last_name varchar(30) not NULL,
NumeroT VARCHAR(30) NOT NULL,
Dirección VARCHAR(30) NOT NULL
);


/*alter TABLE Clientes4
modify last_name varchar(30) not NULL;*/

insert into Clientes4
    values("6553663439", "Ricardo Jose","Perez Rojas","43536367","Cra 11 #41-15");
insert into Clientes4
    values("866463739", "Diego Alejandro","Fernandez Romero","3115673434","Cra 67 #56-15");
insert into Clientes4
    values("76475454", "Alejandro","Hernandez Casas","3123425674","Trans 15 #41-15");

insert into Proveedores4
    values("5719", "Diego Salomon", " manrique","3214567898","Calle 16# 99-18");
insert into Proveedores4
    values("5819", "Oscar jose", "prieto", "3116784536" ,"Cra 14 #56-67");
insert into Proveedores4
    values("5919", "Dario", "Lopez prieto", "3116784536" ,"Cra 14 #56-67")

select  * 
from Clientes4
Where Names in (select Nombre from Proveedores4);

select * 
from Proveedores4
Where Numerot in (select telefono from Clientes4);

