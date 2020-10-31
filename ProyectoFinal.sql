Create database FruteriaLulu;
use FruteriaLulu;

CREATE TABLE Empleado
(cc VARCHAR(30) not NULL PRIMARY KEY,
Names varchar(30) not NULL,
Last_Names varchar(30) not NULL,
Telefono VARCHAR(30) NOT NULL,
Cargo VARCHAR(30) NOT NULL
);
CREATE TABLE Clientes
(cc VARCHAR(30) not NULL PRIMARY KEY,
id_Pdv INT not NULL ,
Names varchar(30) not NULL,
Last_Names varchar(30) not NULL,
Telefono VARCHAR(30) NOT NULL,
Direccion VARCHAR(30) NOT NULL
);
CREATE TABLE Inventario
(Codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NameProduct varchar(30) not NULL,
Caracteristicas varchar(30) not NULL,
Costos VARCHAR(30) NOT NULL,
Id_proveedor VARCHAR(30) NOT NULL
);
CREATE TABLE Proveedores
(NIT INT NOT NULL PRIMARY KEY,
Nombre varchar(30) not NULL,
Producto varchar(30) not NULL,
NumeroT VARCHAR(30) NOT NULL,
Dirección VARCHAR(30) NOT NULL
);
CREATE TABLE PDV
(Code INT NOT NULL PRIMARY KEY,
Nombre VARCHAR(30) NOT NULL,
ValorUnitario INT not NULL,
id_inv int not null
);

CREATE TABLE Factura
(codigo INT NOT NULL PRIMARY KEY,
Fecha DATETIME not NULL,
Cantidad int not null,
Id_Empleado VARCHAR(30) not NULL,
Id_Cliente VARCHAR(30) not NULL,
Id_Pdv int not NULL
);

insert into Empleado
	values("103056784","Jose Fernando","Gomez Perez","6754893","Cajero");
insert into Empleado
	values("578364634","Ricardo","Perez Galindo","3117856435","Domiciliario");
insert into Empleado
	values("53627463","Jorge Ernesto","Quiroga Gonzalez","3208765432","administrador");
insert into Empleado
	values("56474839","Carlos  ","Rojas Giraldo","3505647838","Preparador");

insert into Clientes
    values("6553663439", "4011", "Ricardo Jose","Perez Rojas","43536367","Cra 11 #41-15");
insert into Clientes
    values("866463739", "4002", "Diego Alejandro","Fernandez Romero","3115673434","Cra 67 #56-15");
insert into Clientes
    values("76475454", "4012", "Alejandro","Hernandez Casas","3123425674","Trans 15 #41-15");

insert into Inventario
    values("14156", "Helado", " Dulce","20000","5678");
insert into Inventario
    values("14203", "Fruta", " Citrica ","10000","5719");
insert into Inventario
    values("14304", "Galleta", "Crocante","30000","5819");

insert into Proveedores
    values("5719", "Natural Tropic", " Frutas","3214567898","Calle 16# 99-18");
insert into Proveedores
    values("5819", "frutiban", "Frutos secos", "3116784536" ,"Cra 14 #56-67");
insert into Proveedores
    values("5919", "Ferjusanz", "Helado", "3116784536" ,"Cra 14 #56-67");

insert into PDV
    values("1123", "Ensalada Natural", "2300","14156");
insert into PDV
    values("1143",  "Ensalada Mixta","6000","14203");
insert into PDV
    values("1134", "Ensalada Junior", "7000" ,"14204");

insert into Factura
    values("11239", "2020/01/13", "3","5436","4011","1123");
insert into Factura
    values("11430",  "2020/03/14","5","6754","4002","1143");
insert into Factura
    values("11234", "2020/04/15","2","8769","4012","1134");



alter TABLE PDV add id_inv int not null;

alter TABLE Clientes
ADD CONSTRAINT fk_pdv
FOREIGN KEY (id_Pdv)
REFERENCES  PDV (Code);

alter TABLE Factura
ADD CONSTRAINT fk_empleado
FOREIGN KEY (Id_Empleado)
REFERENCES  Empleado (cc);

alter TABLE Factura
ADD CONSTRAINT fk_cliente
FOREIGN KEY (Id_Cliente)
REFERENCES  clientes (cc);

alter TABLE Factura
ADD CONSTRAINT fk_proveedores
FOREIGN KEY (Id_Pdv)
REFERENCES  Proveedores (NIT);

alter TABLE PDV
ADD CONSTRAINT fk_inventario
FOREIGN KEY (id_inv)
REFERENCES  Inventario (Codigo);