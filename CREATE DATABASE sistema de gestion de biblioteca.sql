CREATE DATABASE sistema de gestion de biblioteca;

USE sistema de gestion de biblioteca;

CREATE TABLE Libros
(
    Idlibros integer (50) NOT NULL,
    nombre varchar (100) NOT NULL,
    titulo varchar (100) NOT NULL,
    coleccion varchar(200) NOT NULL,
    num_paginas integer (1000) NOT NULL,
    PRIMARY KEY (Idlibros) REFERENCES Libros(id)
    
);


CREATE TABLE Autores
(
  Idautor integer (50) NOT NULL,  
  nombre_autor varchar (100) NOT NULL,
  nacionalidad varchar (60) NOT NULL,
  años integer (30) NOT NULL,
  fecha_Nacimiento datetime (30) NOT NULL,
  PRIMARY KEY (Idautor) REFERENCES Autor(id)
);

CREATE TABLE Usuarios
(
    Idusuarios integer (50) NOT NULL,
    nombre_usuarios varchar (100) NOT NULL,
    apellido varchar (50) NOT NULL,
    email varchar (60) NOT NULL,
    PRIMARY KEY (Idusuarios) REFERENCES Usuarios(id)  
);

CREATE TABLE Prestamo
(
    fecha_prestamo datetime (60) NOT NULL,
    fecha_entrega datetime (60) NOT NULL,
);

CREATE TABLE Multas
(
    pago integer (50) NOT NULL,
    dia_multa datetime (50) NOT NULL
);
