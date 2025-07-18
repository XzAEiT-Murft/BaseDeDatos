```SQL

-- Biblioteca (MySQL)

CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Libro (
    IdLibro INT PRIMARY KEY AUTO_INCREMENT, 
    ISBN VARCHAR(20), 
    Titulo VARCHAR(100), 
    Autor VARCHAR(50), 
    Cantidad INT
);

CREATE TABLE Lector (
    IdLector INT PRIMARY KEY AUTO_INCREMENT, 
    NumMembresia INT, 
    Nombre VARCHAR(50), 
    NombrePila VARCHAR(30), 
    Apellido1 VARCHAR(30), 
    Apellido2 VARCHAR(30)
);

CREATE TABLE Presta (
    IdLibro INT, 
    IdLector INT, 
    PRIMARY KEY (IdLibro, IdLector),
    FOREIGN KEY (IdLibro) REFERENCES Libro(IdLibro),
    FOREIGN KEY (IdLector) REFERENCES Lector(IdLector)
);