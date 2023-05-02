CREATE DATABASE Aplicacion de musica;

USE Aplicacion de musica;

CREATE TABLE Canciones
(
    titulo_cancion varchar (100) NOT NULL,
    duracion_cancion varchar (500) NOT NULL,
    letra_cancion varchar (1000) NOT NULL,
    genero_cancion varchar (50) NOT NULL,
);


CREATE TABLE Artistas 
(
   nombre varchar (256) NOT NULL,
   edad integer (10)NOT NULL,
   nacionalidad varchar (50) NOT NULL,
   fecha_nacimiento datetime (20) NOT NULL
);

CREATE TABLE Albumes
(
    nombre_album varchar (50) NOT NULL,
    numero_canciones integer (10) NOT NULL,
    autor varchar (50) NOT NULL
);

CREATE TABLE Usuario
(
   idusuario integer (50) NOT NULL,
   PRIMARY KEY (idusuario) REFERENCES Usuario(id)

);
CREATE TABLE Lista_de_reproducciones
(
   reproduccion_cancion varchar (80) NOT NULL,
   historial_canciones varchar (100) NOT NULL  
);