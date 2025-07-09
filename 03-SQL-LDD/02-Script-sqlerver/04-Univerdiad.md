```SQL

-- Crear la base de datos
CREATE DATABASE Universidad;
GO

-- Usar la base de datos creada
USE Universidad;
GO

-- Crear la tabla Estudiante
CREATE TABLE Estudiante (
    IdEstudiante INT, 
    Matricula NVARCHAR(20), 
    Nombre NVARCHAR(50), 
    NombrePila NVARCHAR(30), 
    Apellido1 NVARCHAR(30), 
    Apellido2 NVARCHAR(30), 
    CONSTRAINT PK_Estudiante PRIMARY KEY (IdEstudiante)
);
GO

-- Crear la tabla Curso
CREATE TABLE Curso (
    IdCurso INT, 
    Nombre NVARCHAR(50), 
    Codigo NVARCHAR(20), 
    CONSTRAINT PK_Curso PRIMARY KEY (IdCurso)
);
GO

-- Crear la tabla Inscripcion (Inscripción)
CREATE TABLE Inscripcion (
    IdEstudiante INT, 
    IdCurso INT, 
    CONSTRAINT PK_Inscripcion PRIMARY KEY (IdEstudiante, IdCurso),
    CONSTRAINT FK_Inscripcion_Estudiante FOREIGN KEY (IdEstudiante) REFERENCES Estudiante(IdEstudiante),
    CONSTRAINT FK_Inscripcion_Curso FOREIGN KEY (IdCurso) REFERENCES Curso(IdCurso)
);
GO
