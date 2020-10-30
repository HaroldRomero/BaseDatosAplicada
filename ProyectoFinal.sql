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