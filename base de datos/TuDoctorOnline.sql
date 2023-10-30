CREATE DATABASE TuDoctorOnline; 
USE TuDoctorOnline;
DROP DATABASE TuDoctorOnline;

CREATE TABLE Cargos
(
	codigoCargo INT PRIMARY KEY,
    cargo VARCHAR(30) NOT NULL,
	descripcionCargo VARCHAR(50) NOT NULL
);

CREATE TABLE Pacientes
( 
	numeroIdentificacion INT PRIMARY KEY,
    nombrePaciente VARCHAR(50) NOT NULL,
    apellidoPaciente VARCHAR(50) NOT NULL,
    telefonoPaciente VARCHAR(15) NOT NULL,
    direccionPaciente VARCHAR(50) NOT NULL,
    correoPaciente VARCHAR(50) NOT NULL,
    eps VARCHAR(35) NOT NULL,
    emailPaciente VARCHAR(32) NOT NULL,
	contrasenaPaciente VARCHAR(32) NOT NULL,
    rhPaciente VARCHAR(20) NOT NULL,
    sexoPaciente VARCHAR(20) NOT NULL,
    fechaNacimientoPaciente DATE NOT NULL,
	ingresoPaciente DATETIME NOT NULL,
	salidaPaciente DATETIME NOT NULL
);

CREATE TABLE Empleados 
(
	documentoEmpleado INT PRIMARY KEY,
	nombreEmpleado VARCHAR(50) NOT NULL,
    apellidoEmpleado VARCHAR(50) NOT NULL,
    fechaNacimientoEmpleado DATE NOT NULL,
    rhEmpleado VARCHAR(20) NOT NULL,
    sexo VARCHAR(20) NOT NULL,
    estadoCivil VARCHAR(20) NOT NULL,
    direccionEmpleado VARCHAR(50) NOT NULL,
    correoEmpleado VARCHAR(32) NOT NULL,
    contrasenaEmpleado VARCHAR(32)NOT NULL,
    estadoEmpleado VARCHAR(50) NOT NULL,
    celularEmpleado VARCHAR(15) NOT NULL,
    ingresoContrato DATE NOT NULL,
	salidaContrato DATE NOT NULL,
    cargoFK INT,
	FOREIGN KEY (cargoFK)
	REFERENCES Cargos (codigoCargo)
);



CREATE TABLE Consultorios
(
	numeroConsultorio INT PRIMARY KEY,
    nombreConsultorio VARCHAR(30) NOT NULL
	
);
CREATE TABLE Habitaciones 
(
	numeroHabitacion INT PRIMARY KEY,
    estadoHabitacion VARCHAR(20) NOT NULL
	
);
CREATE TABLE Citas 
(   
	numeroIdentificacionFK INT NOT NULL,
	FOREIGN KEY (numeroIdentificacionFK)
	REFERENCES Pacientes (numeroIdentificacion),   
    documentoEmpleadoFK INT NOT NULL,
	FOREIGN KEY (documentoEmpleadoFK)
	REFERENCES Empleados (documentoEmpleado),
	numeroConsultorioFK INT NOT NULL,
	FOREIGN KEY (numeroConsultorioFK)
	REFERENCES Consultorios (numeroConsultorio),
    numeroHabitacionFK INT NOT NULL,
	FOREIGN KEY (numeroHabitacionFK)
	REFERENCES Habitaciones (numeroHabitacion)

);


INSERT INTO Cargos (codigoCargo,cargo,descripcionCargo) VALUES
(1,'administrador','activo'),
(2,'doctor','activo'),
(3,'enfermera','activo');


SELECT * FROM Cargos;
SELECT * FROM Empleados;
SELECT * FROM Pacientes;


