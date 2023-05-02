CREATE DATABASE red social;

USE red social;

CREATE TABLE Usuarios
(
    Idusuarios integer (11) NOT NULL,
    nombre varchar (256) NOT NULL,
    correo varchar (100) NOT NULL,
    contraseña varchar (100) NOT NULL,
    PRIMARY KEY (Idusuarios) REFERENCES Usuarios(id)
);


CREATE TABLE Publicaciones 
(
  Idpublicaciones integer (100) NOT NULL,  
  fecha_publicaciones datetime (50) NOT NULL, 
  PRIMARY KEY (Idpublicaciones) REFERENCES Publicaciones(id)
);

CREATE TABLE Usuario_amigos
(
    Idusuario integer (11) NOT NULL,
    Idamigos  integer (30) NOT NULL ,
    PRIMARY KEY (Idusuarios) REFERENCES Usuarios(id),
    FOREIGN KEY (Idamigos) REFERENCES Amigos(id)  
);

CREATE TABLE Publicaciones_amigos
(
    Idpublicaciones integer (100) NOT NULL,
    Idamigos integer (30) NOT NULL,
    PRIMARY KEY (Idpublicaciones) REFERENCES Publicaciones(id),
    FOREIGN KEY (Idamigos) REFERENCES Amigos(id)      
);

CREATE TABLE Amigos
(
    Idamigos integer (30) NOT NULL,
    Idcontactos integer (11) NOT NULL,
    informacion varchar (500) NOT NULL,
    nombre_persona varchar (256) NOT NULL,
    PRIMARY KEY (Idamigos) REFERENCES Amigos(id),
    FOREIGN KEY (Idcontactos) REFERENCES contactos(id)
    
);


CREATE TABLE Comentario
(
    fecha_comentario datetime (50) NOT NULL
);



