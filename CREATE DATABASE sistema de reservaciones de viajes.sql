CREATE DATABASE sistema de reservaciones de viaje;

USE sistema de reservaciones de viaje;

CREATE TABLE Hotel
(
    Id integer (10) NOT NULL AUTO_INCREMENT,
    nombre varchar (50) NOT NULL,
    direccion varchar (50) NOT NULL,
    telefono varchar(20) NULL,
    Idcliente integer (15) NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Idcliente) REFERENCES Cliente(id)
    
);

CREATE TABLE Hotel_reservacion
(
  Idhotel integer (10) NOT NULL,  
  Idreservacion integer (20) NOT NULL,
  PRIMARY KEY (Idhotel) REFERENCES hotel(id),
  FOREIGN KEY (Idreservacion) REFERENCES Reservacion(id)
);

CREATE TABLE Reservacion
(
    Idhotel integer (20) NOT NULL,
    fecha y hora datetime (50) NOT NULL,
    Idreservacion integer (20) NOT NULL,
    PRIMARY KEY (Id hotel) REFERENCES hotel(id),
    FOREIGN KEY (Idreservacion) REFERENCES reservacion(id)
);

CREATE TABLE Hotel_cliente
(
    Idhotel integer (10) NOT NULL ,
    Idcliente integer (20) NOT NULL,
    PRIMARY KEY (Idhotel) REFERENCES hotel(id),
    FOREIGN KEY (Idcliente) REFERENCES Cliente(id)
);

CREATE TABLE Cliente
(
    Idcliente integer (20) NOT NULL,
    nombre varchar (260) NOT NULL,
    apellido varchar (260) NOT NULL,
    telefono integer (15) NULL,
    direccion_cliente integer (50) NULL,
    PRIMARY KEY (Idcliente) REFERENCES Cliente(id)
);
CREATE TABLE Vuelos_clientes
(
    Idvuelos integer (20) NOT NULL,
    Idclientes integer (20) NOT NULL,
    PRIMARY KEY (Idvuelos) REFERENCES Vuelos(id),
    FOREIGN KEY (Idcliente) REFERENCES Cliente(id)
    
);
CREATE TABLE Vuelos
(
    Idvuelos integer (20) NOT NULL,
    destino varchar (60) NOT NULL,
    fecha y hora datetime (50) NOT NULL,
    PRIMARY KEY (Idvuelos) REFERENCES Vuelos(id)
);
