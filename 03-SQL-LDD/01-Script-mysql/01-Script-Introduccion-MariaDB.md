```SQL

CREATE TABLE Department (
    id INT,
    nombre VARCHAR(100),
    ubicacion VARCHAR(100),
    idEmpleadoJefe INT NOT NULL,

    CONSTRAINT pk_department PRIMARY KEY (id)
);

CREATE TABLE Employee (
    id INT,
    nombre VARCHAR(100),
    ap1 VARCHAR(100),
    ap2 VARCHAR(100),
    sexo CHAR(1),
    salario DECIMAL(10,2),
    idDepartamento INT,

    CONSTRAINT pk_employee PRIMARY KEY (id)
);

ALTER TABLE Department
ADD CONSTRAINT fk_jefe FOREIGN KEY (idEmpleadoJefe) REFERENCES Employee(id);

ALTER TABLE Employee
ADD CONSTRAINT fk_departamento FOREIGN KEY (idDepartamento) REFERENCES Department(id);

CREATE TABLE Project (
    projectId INT,
    nombre VARCHAR(100),

    CONSTRAINT pk_project PRIMARY KEY (projectId)
);

CREATE TABLE Work_On (
    employeeId INT,
    projectId INT,
    horas INT,

    CONSTRAINT pk_workon PRIMARY KEY (employeeId, projectId),
    CONSTRAINT fk_workon_employee FOREIGN KEY (employeeId) REFERENCES Employee(id),
    CONSTRAINT fk_workon_project FOREIGN KEY (projectId) REFERENCES Project(projectId)
);
