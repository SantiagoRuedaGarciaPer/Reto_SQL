CREATE TABLE Clientes(
  ID INT PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL, 
  Apellido VARCHAR(50) NOT NULL,
  Documento INT NOT NULL,
  Email VARCHAR(70),
  Celular INT NOT NULL
);
CREATE TABLE Producto(
  ID INT PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  Marca VARCHAR(50) NOT NULL,
  Precio INT NOT NULL
);
CREATE TABLE Ventas_detalle(
  ID INT PRIMARY KEY,
  id_producto INT NOT NULL,
  Cantidad INT NOT NULL,
  FOREIGN KEY (id_producto) REFERENCES Producto(ID)
);
CREATE TABLE Ventas(
  ID INT PRIMARY KEY,
  Cliente INT NOT NULL,
  Fecha DATE NOT NULL,
  Detalles INT NOT NULL,
  FOREIGN KEY (Cliente) REFERENCES Clientes(ID),
  FOREIGN KEY (Detalles) REFERENCES Ventas_detalle(ID)
);
