CREATE DATABASE tienda en linea;

USE tienda en linea;

CREATE TABLE Cliente
(
    Idclientes integer (30) NOT NULL,
    nombre_cliente varchar (256) NOT NULL,
    celular varchar (50) NULL,
    apellido varchar (250) NOT NULL,
    PRIMARY KEY (Idclientes) REFERENCES Clientes(id)
);


CREATE TABLE Productos 
(
  Idproductos integer (20) NOT NULL,  
  nombre varchar (200) NOT NULL,
  categoria varchar (100),
  precio integer (50) NOT NULL,
  tipo_producto varchar(150) NULL,
  PRIMARY KEY (Idproductos) REFERENCES productos(id)
);

CREATE TABLE Cliente_pedidos
(
    Idclientes integer (30) NOT NULL,
    Idpedidos  integer (30) NOT NULL
    PRIMARY KEY (Idclientes) REFERENCES clientes(id),
    FOREIGN KEY (Idpedidos) REFERENCES Pedidos(id) 
);

CREATE TABLE Pedidos
(
    Idpedidos integer (30) NOT NULL,
    direccion integer (60) NULL,
    lugar varchar (50) NOT NULL,
    fecha datetime (50) NOT NULL,
    PRIMARY KEY (Idpedidos) REFERENCES Pedidos(id)
);

CREATE TABLE Pago
(
    medios_pago varchar (100) NOT NULL,
    historial_pago varchar (500) NOT NULL
);




