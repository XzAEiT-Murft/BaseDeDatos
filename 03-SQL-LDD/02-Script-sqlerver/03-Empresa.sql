-- Crear la base de datos
CREATE DATABASE Empresa;
GO

-- Usar la base de datos creada
USE Empresa;
GO

-- Crear la tabla Employer (Empleado)
CREATE TABLE Employer (
    IdEmployer INT, 
    Firstname NVARCHAR(20), 
    Lastname NVARCHAR(20), 
    Address NVARCHAR(100), 
    Birthdate DATE, 
    Salary INT, 
    Sex INT, 
    IdDepartment INT, 
    IdSupervisor INT, 
    CONSTRAINT PK_Employer PRIMARY KEY (IdEmployer),
    CONSTRAINT FK_Employer_Department FOREIGN KEY (IdDepartment) REFERENCES Department(IdDepartment),
    CONSTRAINT FK_Employer_Supervisor FOREIGN KEY (IdSupervisor) REFERENCES Employer(IdEmployer)
);
GO

-- Crear la tabla Department (Departamento)
CREATE TABLE Department (
    IdDepartment INT, 
    NameDepartment NVARCHAR(20), 
    NumberDepartment INT, 
    StartDate DATE, 
    CONSTRAINT PK_Department PRIMARY KEY (IdDepartment)
);
GO

-- Crear la tabla DeptLocation (Ubicación del Departamento)
CREATE TABLE DeptLocation (
    IdDepartment INT, 
    Location NVARCHAR(20), 
    CONSTRAINT PK_DeptLocation PRIMARY KEY (IdDepartment),
    CONSTRAINT FK_DeptLocation_Department FOREIGN KEY (IdDepartment) REFERENCES Department(IdDepartment)
);
GO

-- Crear la tabla Project (Proyecto)
CREATE TABLE Project (
    IdProject INT, 
    NameProject NVARCHAR(30), 
    Location NVARCHAR(20), 
    IdDepartment INT, 
    CONSTRAINT PK_Project PRIMARY KEY (IdProject),
    CONSTRAINT FK_Project_Department FOREIGN KEY (IdDepartment) REFERENCES Department(IdDepartment)
);
GO

-- Crear la tabla Dependent (Dependientes)
CREATE TABLE Dependent (
    IdDependent INT, 
    Name NVARCHAR(20), 
    Relationship NVARCHAR(20), 
    Sex INT, 
    Birthdate DATE, 
    IdEmployer INT, 
    CONSTRAINT PK_Dependent PRIMARY KEY (IdDependent),
    CONSTRAINT FK_Dependent_Employer FOREIGN KEY (IdEmployer) REFERENCES Employer(IdEmployer)
);
GO

-- Crear la tabla WorkOn (Trabajo en Proyecto)
CREATE TABLE WorkOn (
    IdEmployer INT, 
    IdProject INT, 
    Hours INT, 
    CONSTRAINT PK_WorkOn PRIMARY KEY (IdEmployer, IdProject),
    CONSTRAINT FK_WorkOn_Employer FOREIGN KEY (IdEmployer) REFERENCES Employer(IdEmployer),
    CONSTRAINT FK_WorkOn_Project FOREIGN KEY (IdProject) REFERENCES Project(IdProject)
);
GO
