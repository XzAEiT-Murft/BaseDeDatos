```SQL

-- Universidad (MySQL)

CREATE DATABASE Universidad;
USE Universidad;

CREATE TABLE Estudiante (
    IdEstudiante INT PRIMARY KEY AUTO_INCREMENT, 
    Matricula VARCHAR(20), 
    Nombre VARCHAR(50), 
    NombrePila VARCHAR(30), 
    Apellido1 VARCHAR(30), 
    Apellido2 VARCHAR(30)
);

CREATE TABLE Curso (
    IdCurso INT PRIMARY KEY AUTO_INCREMENT, 
    Nombre VARCHAR(50), 
    Codigo VARCHAR(20)
);

CREATE TABLE Inscripcion (
    IdEstudiante INT, 
    IdCurso INT, 
    PRIMARY KEY (IdEstudiante, IdCurso),
    FOREIGN KEY (IdEstudiante) REFERENCES Estudiante(IdEstudiante),
    FOREIGN KEY (IdCurso) REFERENCES Curso(IdCurso)
);