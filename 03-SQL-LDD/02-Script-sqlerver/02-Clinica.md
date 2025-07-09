```SQL

-- Crear la base de datos
CREATE DATABASE Clinica;
GO

-- Usar la base de datos creada
USE Clinica;
GO

-- Crear la tabla Doc (Doctor)
CREATE TABLE Doc (
    IdDoc INT, 
    Especialidad NVARCHAR(20), 
    Edad INT, 
    Nombre NVARCHAR(30), 
    Apellido1 NVARCHAR(30), 
    Apellido2 NVARCHAR(20), 
    CONSTRAINT PK_Doc PRIMARY KEY (IdDoc)
);
GO

-- Crear la tabla Paciente
CREATE TABLE Paciente (
    IdPaciente INT, 
    Nombre NVARCHAR(20), 
    Apellido1 NVARCHAR(20), 
    Apellido2 NVARCHAR(20), 
    Edad INT, 
    Peso INT, 
    Altura INT, 
    CONSTRAINT PK_Paciente PRIMARY KEY (IdPaciente)
);
GO

-- Crear la tabla Atencion
CREATE TABLE Atencion (
    IdAtencion INT, 
    Diagnostico NVARCHAR(100), 
    Fecha INT, 
    IdDoc INT, 
    IdPaciente INT, 
    CONSTRAINT PK_Atencion PRIMARY KEY (IdAtencion),
    CONSTRAINT FK_Atencion_Doc FOREIGN KEY (IdDoc) REFERENCES Doc(IdDoc),
    CONSTRAINT FK_Atencion_Paciente FOREIGN KEY (IdPaciente) REFERENCES Paciente(IdPaciente)
);
GO
