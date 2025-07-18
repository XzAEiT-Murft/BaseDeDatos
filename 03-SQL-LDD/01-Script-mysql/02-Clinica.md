```SQL

-- Clinica (MySQL)

CREATE DATABASE Clinica;
USE Clinica;

CREATE TABLE Doc (
    IdDoc INT PRIMARY KEY AUTO_INCREMENT, 
    Especialidad VARCHAR(20), 
    Edad INT, 
    Nombre VARCHAR(30), 
    Apellido1 VARCHAR(30), 
    Apellido2 VARCHAR(20)
);

CREATE TABLE Paciente (
    IdPaciente INT PRIMARY KEY AUTO_INCREMENT, 
    Nombre VARCHAR(20), 
    Apellido1 VARCHAR(20), 
    Apellido2 VARCHAR(20), 
    Edad INT, 
    Peso INT, 
    Altura INT
);

CREATE TABLE Atencion (
    IdAtencion INT PRIMARY KEY AUTO_INCREMENT, 
    Diagnostico VARCHAR(100), 
    Fecha INT, 
    IdDoc INT, 
    IdPaciente INT, 
    FOREIGN KEY (IdDoc) REFERENCES Doc(IdDoc),
    FOREIGN KEY (IdPaciente) REFERENCES Paciente(IdPaciente)
);