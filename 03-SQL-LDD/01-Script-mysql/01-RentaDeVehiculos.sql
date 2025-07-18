-- RentaDeVehiculos (MySQL)

CREATE DATABASE RentaDeVehiculos;
USE RentaDeVehiculos;

CREATE TABLE Clientes (
    Id INT PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50), 
    apellido VARCHAR(50), 
    apellido2 VARCHAR(50), 
    curp VARCHAR(18), 
    telefono VARCHAR(12), 
    calle VARCHAR(50), 
    ciudad VARCHAR(20), 
    numero INT
);

CREATE TABLE Sucursal (
    Id INT PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(20), 
    ubicacion VARCHAR(25)
);

CREATE TABLE Vehiculo (
    Id INT PRIMARY KEY AUTO_INCREMENT, 
    placa VARCHAR(8), 
    marca VARCHAR(15), 
    modelo VARCHAR(20), 
    anio INT, 
    Id_Cliente INT, 
    Id_Sucursal INT, 
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id),
    FOREIGN KEY (Id_Sucursal) REFERENCES Sucursal(Id)
);