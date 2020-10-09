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
ValorUnitario INT not NULL
);
