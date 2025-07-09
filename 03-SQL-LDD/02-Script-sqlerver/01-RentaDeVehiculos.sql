-- Crear la base de datos
CREATE DATABASE RentaDeVehiculos;
GO

-- Usar la base de datos creada
USE RentaDeVehiculos;
GO

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    Id INT, 
    nombre NVARCHAR(50), 
    apellido NVARCHAR(50), 
    apellido2 NVARCHAR(50), 
    curp NVARCHAR(18), 
    telefono NVARCHAR(12), 
    calle NVARCHAR(50), 
    ciudad NVARCHAR(20), 
    numero INT, 
    CONSTRAINT PK_Clientes PRIMARY KEY (Id)
);
GO

-- Crear la tabla Sucursal
CREATE TABLE Sucursal (
    Id INT, 
    nombre NVARCHAR(20), 
    ubicacion NVARCHAR(25), 
    CONSTRAINT PK_Sucursal PRIMARY KEY (Id)
);
GO

-- Crear la tabla Vehiculo
CREATE TABLE Vehiculo (
    Id INT, 
    placa NVARCHAR(8), 
    marca NVARCHAR(15), 
    modelo NVARCHAR(20), 
    anio INT, 
    Id_Cliente INT, 
    Id_Sucursal INT, 
    CONSTRAINT PK_Vehiculo PRIMARY KEY (Id), 
    CONSTRAINT FK_Vehiculo_Clientes FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id),
    CONSTRAINT FK_Vehiculo_Sucursal FOREIGN KEY (Id_Sucursal) REFERENCES Sucursal(Id)
);
GO
