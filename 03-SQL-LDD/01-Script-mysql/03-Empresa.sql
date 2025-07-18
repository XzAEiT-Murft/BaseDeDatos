-- Empresa (MySQL)

CREATE DATABASE Empresa;
USE Empresa;

CREATE TABLE Department (
    IdDepartment INT PRIMARY KEY AUTO_INCREMENT, 
    NameDepartment VARCHAR(20), 
    NumberDepartment INT, 
    StartDate DATE
);

CREATE TABLE Employer (
    IdEmployer INT PRIMARY KEY AUTO_INCREMENT, 
    Firstname VARCHAR(20), 
    Lastname VARCHAR(20), 
    Address VARCHAR(100), 
    Birthdate DATE, 
    Salary INT, 
    Sex INT, 
    IdDepartment INT, 
    IdSupervisor INT,
    FOREIGN KEY (IdDepartment) REFERENCES Department(IdDepartment),
    FOREIGN KEY (IdSupervisor) REFERENCES Employer(IdEmployer)
);

CREATE TABLE DeptLocation (
    IdDepartment INT PRIMARY KEY, 
    Location VARCHAR(20), 
    FOREIGN KEY (IdDepartment) REFERENCES Department(IdDepartment)
);

CREATE TABLE Project (
    IdProject INT PRIMARY KEY AUTO_INCREMENT, 
    NameProject VARCHAR(30), 
    Location VARCHAR(20), 
    IdDepartment INT, 
    FOREIGN KEY (IdDepartment) REFERENCES Department(IdDepartment)
);

CREATE TABLE Dependent (
    IdDependent INT PRIMARY KEY AUTO_INCREMENT, 
    Name VARCHAR(20), 
    Relationship VARCHAR(20), 
    Sex INT, 
    Birthdate DATE, 
    IdEmployer INT, 
    FOREIGN KEY (IdEmployer) REFERENCES Employer(IdEmployer)
);

CREATE TABLE WorkOn (
    IdEmployer INT, 
    IdProject INT, 
    Hours INT, 
    PRIMARY KEY (IdEmployer, IdProject),
    FOREIGN KEY (IdEmployer) REFERENCES Employer(IdEmployer),
    FOREIGN KEY (IdProject) REFERENCES Project(IdProject)
);