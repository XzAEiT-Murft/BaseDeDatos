```SQL

-- Crear la base de datos
CREATE DATABASE Biblioteca;
GO

-- Usar la base de datos creada
USE Biblioteca;
GO

-- Crear la tabla Libro
CREATE TABLE Libro (
    IdLibro INT, 
    ISBN NVARCHAR(20), 
    Titulo NVARCHAR(100), 
    Autor NVARCHAR(50), 
    Cantidad INT, 
    CONSTRAINT PK_Libro PRIMARY KEY (IdLibro)
);
GO

-- Crear la tabla Lector
CREATE TABLE Lector (
    IdLector INT, 
    NumMembresia INT, 
    Nombre NVARCHAR(50), 
    NombrePila NVARCHAR(30), 
    Apellido1 NVARCHAR(30), 
    Apellido2 NVARCHAR(30), 
    CONSTRAINT PK_Lector PRIMARY KEY (IdLector)
);
GO

-- Crear la tabla Presta (Préstamo)
CREATE TABLE Presta (
    IdLibro INT, 
    IdLector INT, 
    CONSTRAINT PK_Presta PRIMARY KEY (IdLibro, IdLector),
    CONSTRAINT FK_Presta_Libro FOREIGN KEY (IdLibro) REFERENCES Libro(IdLibro),
    CONSTRAINT FK_Presta_Lector FOREIGN KEY (IdLector) REFERENCES Lector(IdLector)
);
GO
