CREATE DATABASE nutriologa;
USE nutriologa;
CREATE TABLE Pacientes (
    ID_Paciente INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Fecha_Nacimiento DATE,
    Sexo VARCHAR(10),
    Direcci�n VARCHAR(100),
    Tel�fono VARCHAR(20),
    Email VARCHAR(50),
    Fecha_Registro DATE,
    Historial_M�dico TEXT
);
INSERT INTO Pacientes (Nombre, Apellido, Fecha_Nacimiento, Sexo, Direcci�n, Tel�fono, Email, Fecha_Registro, Historial_M�dico) VALUES
('Juan', 'P�rez', '1985-01-15', 'Masculino', 'Calle 123', '3001234567', 'juan.perez@example.com', '2024-01-01', 'Ninguno'),
('Mar�a', 'G�mez', '1990-05-20', 'Femenino', 'Avenida 456', '3007654321', 'maria.gomez@example.com', '2024-01-02', 'Alergia al gluten'),
('Carlos', 'Rodr�guez', '1978-03-10', 'Masculino', 'Carrera 789', '3009876543', 'carlos.rodriguez@example.com', '2024-01-03', 'Hipertensi�n'),
('Ana', 'Mart�nez', '1982-07-25', 'Femenino', 'Calle 321', '3006543210', 'ana.martinez@example.com', '2024-01-04', 'Diabetes tipo 2'),
('Luis', 'Fern�ndez', '1995-12-05', 'Masculino', 'Avenida 654', '3003210987', 'luis.fernandez@example.com', '2024-01-05', 'Ninguno'),
('Laura', 'L�pez', '1988-11-30', 'Femenino', 'Carrera 123', '3008765432', 'laura.lopez@example.com', '2024-01-06', 'Alergia a los l�cteos'),
('Pedro', 'Garc�a', '1975-09-15', 'Masculino', 'Calle 456', '3005432109', 'pedro.garcia@example.com', '2024-01-07', 'Colesterol alto'),
('Sof�a', 'Hern�ndez', '1992-04-18', 'Femenino', 'Avenida 789', '3002109876', 'sofia.hernandez@example.com', '2024-01-08', 'Ninguno'),
('Miguel', 'S�nchez', '1980-06-22', 'Masculino', 'Carrera 456', '3000987654', 'miguel.sanchez@example.com', '2024-01-09', 'Asma'),
('Elena', 'Ram�rez', '1998-02-14', 'Femenino', 'Calle 789', '3008765432', 'elena.ramirez@example.com', '2024-01-10', 'Ninguno');
CREATE TABLE Consultas (
    ID_Consulta INT, 
	ID_Paciente INT,
    Fecha_Consulta DATE,
    Peso DECIMAL(5,2),
    Altura DECIMAL(5,2),
    IMC DECIMAL(5,2),
    Diagn�stico TEXT,
    Recomendaciones TEXT,
    Pr�xima_Consulta DATETIME,
    Notas TEXT,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente)
);
INSERT INTO Consultas (ID_Paciente, Fecha_Consulta, Peso, Altura, IMC, Diagn�stico, Recomendaciones, Pr�xima_Consulta, Notas) VALUES
(1, '2024-01-10', 70.5, 1.75, 23.0, 'Saludable', 'Mantener dieta equilibrada', '2024-02-10', 'Ninguna'),
(2, '2024-01-15', 65.0, 1.65, 23.9, 'Sobrepeso', 'Reducir carbohidratos', '2024-02-15', 'Ninguna'),
(3, '2024-01-20', 80.0, 1.80, 24.7, 'Hipertensi�n', 'Reducir sal', '2024-02-20', 'Ninguna'),
(4, '2024-01-25', 68.0, 1.60, 26.6, 'Diabetes tipo 2', 'Controlar az�car', '2024-02-25', 'Ninguna'),
(5, '2024-01-30', 75.0, 1.70, 25.9, 'Saludable', 'Mantener actividad f�sica', '2024-02-28', 'Ninguna'),
(6, '2024-02-05', 60.0, 1.55, 24.9, 'Alergia a los l�cteos', 'Evitar l�cteos', '2024-03-05', 'Ninguna'),
(7, '2024-02-10', 85.0, 1.85, 24.8, 'Colesterol alto', 'Reducir grasas saturadas', '2024-03-10', 'Ninguna'),
(8, '2024-02-15', 55.0, 1.50, 24.4, 'Saludable', 'Mantener dieta equilibrada', '2024-03-15', 'Ninguna'),
(9, '2024-02-20', 90.0, 1.90, 24.9, 'Asma', 'Evitar al�rgenos', '2024-03-20', 'Ninguna'),
(10, '2024-02-25', 50.0, 1.45, 23.8, 'Saludable', 'Mantener actividad f�sica', '2024-03-25', 'Ninguna');
CREATE TABLE Dieta (
    ID_Dieta INT PRIMARY KEY IDENTITY,
    ID_Paciente INT,
    Fecha_Inicio DATE,
    Fecha_Fin DATE,
    Descripci�n TEXT,
    Calor�as_Totales DECIMAL(10,2),
    Prote�nas_Totales DECIMAL(10,2),
    Grasas_Totales DECIMAL(10,2),
    Carbohidratos_Totales DECIMAL(10,2),
    Notas TEXT,
	FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente)
);
INSERT INTO Dieta (ID_Paciente, Fecha_Inicio, Fecha_Fin, Descripci�n, Calor�as_Totales, Prote�nas_Totales, Grasas_Totales, Carbohidratos_Totales, Notas) VALUES
(1, '2024-01-01', '2024-01-31', 'Dieta baja en carbohidratos', 2000.00, 150.00, 70.00, 250.00, 'Ninguna'),
(2, '2024-02-01', '2024-02-28', 'Dieta alta en prote�nas', 2200.00, 180.00, 80.00, 200.00, 'Ninguna'),
(3, '2024-03-01', '2024-03-31', 'Dieta para hipertensi�n', 1800.00, 120.00, 60.00, 200.00, 'Reducir sal'),
(4, '2024-04-01', '2024-04-30', 'Dieta para diabetes', 1600.00, 100.00, 50.00, 200.00, 'Controlar az�car'),
(5, '2024-05-01', '2024-05-31', 'Dieta equilibrada', 2000.00, 150.00, 70.00, 250.00, 'Ninguna'),
(6, '2024-06-01', '2024-06-30', 'Dieta sin l�cteos', 1800.00, 130.00, 60.00, 220.00, 'Evitar l�cteos'),
(7, '2024-07-01', '2024-07-31', 'Dieta para colesterol alto', 1700.00, 120.00, 50.00, 200.00, 'Reducir grasas saturadas'),
(8, '2024-08-01', '2024-08-31', 'Dieta equilibrada', 2000.00, 150.00, 70.00, 250.00, 'Ninguna'),
(9, '2024-09-01', '2024-09-30', 'Dieta para asma', 1900.00, 140.00, 60.00, 230.00, 'Evitar al�rgenos'),
(10, '2024-10-01', '2024-10-31', 'Dieta equilibrada', 2000.00, 150.00, 70.00, 250.00, 'Ninguna');
CREATE TABLE Alimentos (
    ID_Alimento INT PRIMARY KEY identity,
	Nombre VARCHAR(50),
    Grupo_Alimenticio VARCHAR(50),
    Calor�as_por_Porci�n DECIMAL(5,2),
    Prote�nas DECIMAL(5,2),
    Grasas DECIMAL(5,2),
    Carbohidratos DECIMAL(5,2),
    Fibra DECIMAL(5,2),
    Vitaminas TEXT,
    Minerales TEXT,
);
INSERT INTO Alimentos (Nombre, Grupo_Alimenticio, Calor�as_por_Porci�n, Prote�nas, Grasas, Carbohidratos, Fibra, Vitaminas, Minerales) VALUES
('Manzana', 'Frutas', 52, 0.3, 0.2, 14, 2.4, 'Vitamina C', 'Potasio'),
('Pollo', 'Prote�nas', 239, 27, 14, 0, 0, 'Vitamina B6', 'F�sforo'),
('Arroz', 'Cereales', 130, 2.4, 0.3, 28, 0.4, 'Vitamina B1', 'Magnesio'),
('Leche', 'L�cteos', 42, 3.4, 1.0, 5, 0, 'Vitamina D', 'Calcio'),
('Br�coli', 'Verduras', 34, 2.8, 0.4, 7, 2.6, 'Vitamina K', 'Hierro'),
('Salm�n', 'Prote�nas', 208, 20, 13, 0, 0, 'Vitamina B12', 'Selenio'),
('Naranja', 'Frutas', 47, 0.9, 0.1, 12, 2.4, 'Vitamina C', 'Calcio'),
('Pan integral', 'Cereales', 247, 13, 4.2, 41, 7, 'Vitamina B3', 'Hierro'),
('Yogur', 'L�cteos', 59, 10, 0.4, 3.6, 0, 'Vitamina B2', 'Calcio'),
('Espinaca', 'Verduras', 23, 2.9, 0.4, 3.6, 2.2, 'Vitamina A', 'Magnesio');
CREATE TABLE Suplementos (
    ID_Suplemento INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(50),
    Descripci�n TEXT,
    Dosis_Recomendada VARCHAR(50),
    Efectos_Secundarios TEXT,
    Contraindicaciones TEXT,
    Precio DECIMAL(10,2),
    Marca VARCHAR(50),
    Fecha_Caducidad DATE,
    Notas TEXT
);
INSERT INTO Suplementos (Nombre, Descripci�n, Dosis_Recomendada, Efectos_Secundarios, Contraindicaciones, Precio, Marca, Fecha_Caducidad, Notas) VALUES
('Multivitam�nico', 'Suplemento diario de vitaminas y minerales', '1 c�psula al d�a', 'N�useas', 'No recomendado para menores de 12 a�os', 15.99, 'Marca A', '2025-12-31', 'Ninguna'),
('Prote�na en polvo', 'Suplemento de prote�nas para deportistas', '30g despu�s del ejercicio', 'Problemas digestivos', 'No recomendado para personas con problemas renales', 25.50, 'Marca B', '2025-06-30', 'Ninguna'),
('Omega 3', 'Suplemento de �cidos grasos esenciales', '2 c�psulas al d�a', 'Mal aliento', 'No recomendado para personas con problemas de coagulaci�n', 20.00, 'Marca C', '2025-11-30', 'Ninguna'),
('Calcio', 'Suplemento para fortalecer huesos', '1 tableta al d�a', 'Estre�imiento', 'No recomendado para personas con problemas renales', 10.00, 'Marca D', '2025-10-31', 'Ninguna'),
('Vitamina D', 'Suplemento para mejorar la absorci�n de calcio', '1 c�psula al d�a', 'Dolor de cabeza', 'No recomendado para personas con hipercalcemia', 12.00, 'Marca E', '2025-09-30', 'Ninguna'),
('Hierro', 'Suplemento para prevenir la anemia', '1 tableta al d�a', 'Dolor de est�mago', 'No recomendado para personas con hemocromatosis', 8.00, 'Marca F', '2025-08-31', 'Ninguna'),
('Magnesio', 'Suplemento para mejorar la funci�n muscular', '1 c�psula al d�a', 'Diarrea', 'No recomendado para personas con problemas renales', 9.50, 'Marca G', '2025-07-31', 'Ninguna'),
('Zinc', 'Suplemento para mejorar el sistema inmunol�gico', '1 c�psula al d�a', 'N�useas', 'No recomendado para personas con problemas renales', 7.00, 'Marca H', '2025-06-30', 'Ninguna'),
('Vitamina B12', 'Suplemento para mejorar la funci�n nerviosa', '1 tableta al d�a', 'Dolor de cabeza', 'No recomendado para personas con alergia a la cobalamina', 11.00, 'Marca I', '2025-05-31', 'Ninguna'),
('Col�geno', 'Suplemento para mejorar la salud de la piel', '1 c�psula al d�a', 'Dolor de est�mago', 'No recomendado para personas con alergia al col�geno', 18.00, 'Marca J', '2025-04-30', 'Ninguna');
CREATE TABLE dieta_alimento(
	ID_dieta_alimento INT PRIMARY KEY IDENTITY,
	ID_Dieta INT,
	FOREIGN KEY (ID_Dieta) REFERENCES Dieta (ID_Dieta),
	ID_Alimento INT,
	FOREIGN KEY (ID_Alimento) REFERENCES Alimentos (ID_Alimento),
);
CREATE TABLE suplemento_paciente(
	ID_suple_paciente INT PRIMARY KEY IDENTITY,
	ID_Paciente INT,
	FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente),
	ID_Suplemento INT,
	FOREIGN KEY (ID_Suplemento) REFERENCES Suplementos (ID_Suplemento)
);
INSERT INTO suplemento_paciente (ID_Paciente, ID_Suplemento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
INSERT INTO dieta_alimento (ID_Dieta, ID_Alimento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


-- Procedimientos Almacenados con SELECT
CREATE PROCEDURE ListarPacientes
AS
BEGIN
    SELECT * FROM Pacientes;
END;

CREATE PROCEDURE ObtenerPacientePorID
    @ID_Paciente INT
AS
BEGIN
    SELECT * FROM Pacientes
    WHERE ID_Paciente = @ID_Paciente;
END;

-- Procedimientos Almacenados con JOIN
CREATE PROCEDURE ConsultasConPacientes
AS
BEGIN
    SELECT c.ID_Consulta, c.Fecha_Consulta, p.Nombre, p.Apellido, c.Diagn�stico, c.Recomendaciones
    FROM Consultas c
    JOIN Pacientes p ON c.ID_Paciente = p.ID_Paciente;
END;

CREATE PROCEDURE DietasConPacientes
AS
BEGIN
    SELECT d.ID_Dieta, d.Descripci�n, p.Nombre, p.Apellido, d.Calor�as_Totales, d.Prote�nas_Totales
    FROM Dieta d
    JOIN Pacientes p ON d.ID_Paciente = p.ID_Paciente;
END;

-- Procedimientos Almacenados con Sentencias de Bloque SQL
CREATE PROCEDURE ActualizarDiagnostico
    @ID_Consulta INT,
    @NuevoDiagnostico TEXT
AS
BEGIN
    UPDATE Consultas
    SET Diagn�stico = @NuevoDiagnostico
    WHERE ID_Consulta = @ID_Consulta;
END;


-- Procedimientos Almacenados con Subconsultas
CREATE PROCEDURE PacienteConMasConsultas
AS
BEGIN
    SELECT TOP 1 ID_Paciente
    FROM Consultas
    GROUP BY ID_Paciente
    ORDER BY COUNT(*) DESC;
END;

CREATE PROCEDURE PacientesSinConsultas
AS
BEGIN
    SELECT * 
    FROM Pacientes
    WHERE ID_Paciente NOT IN (SELECT ID_Paciente FROM Consultas);
END;


SELECT * FROM Pacientes;

SELECT * FROM Consultas
WHERE ID_Paciente = 1; -- Reemplaza 1 con el ID del paciente deseado

SELECT * FROM Alimentos
WHERE Grupo_Alimenticio = 'Frutas'; 
-- Reemplaza 'Frutas' con el grupo alimenticio deseado

SELECT * FROM Dieta
WHERE ID_Paciente = 1 AND Fecha_Inicio >= '2024-01-01' AND Fecha_Fin <= '2024-12-31'; 
-- Reemplaza 1 con el ID del paciente y ajusta las fechas seg�n sea necesario

SELECT * FROM Suplementos
WHERE Contraindicaciones NOT LIKE '%Diabetes%'; 
-- Reemplaza 'Diabetes' con la condici�n que deseas excluir

SELECT * FROM Consultas
WHERE ID_Paciente = 1
ORDER BY Fecha_Consulta DESC; -- Reemplaza 1 con el ID del paciente deseado

SELECT P.Nombre, P.Apellido, C.IMC
FROM Pacientes P
JOIN Consultas C ON P.ID_Paciente = C.ID_Paciente
WHERE C.IMC > 25;

SELECT * FROM Consultas
WHERE MONTH(Fecha_Consulta) = 1 AND YEAR(Fecha_Consulta) = 2024; 
-- Reemplaza 1 con el mes deseado y 2024 con el a�o deseado

SELECT A.Nombre, COUNT(*) AS Veces_Usado
FROM Dieta D
JOIN Alimentos A ON D.ID_Dieta = A.ID_Alimento
GROUP BY A.Nombre
ORDER BY Veces_Usado DESC;

SELECT Nombre, COUNT(*) AS Veces_Recomendado
FROM Suplementos
GROUP BY Nombre
ORDER BY Veces_Recomendado DESC;

CREATE PROCEDURE InsertarNuevoPaciente
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @Fecha_Nacimiento DATE,
    @Sexo VARCHAR(10),
    @Direcci�n VARCHAR(100),
    @Tel�fono VARCHAR(20),
    @Email VARCHAR(50),
    @Historial_M�dico TEXT
AS
BEGIN
    INSERT INTO Pacientes (Nombre, Apellido, Fecha_Nacimiento, Sexo, Direcci�n, Tel�fono, Email, Fecha_Registro, Historial_M�dico)
    VALUES (@Nombre, @Apellido, @Fecha_Nacimiento, @Sexo, @Direcci�n, @Tel�fono, @Email, GETDATE(), @Historial_M�dico);
END;

CREATE PROCEDURE InsertarConsultaNueva
    @ID_Paciente INT,
    @Fecha_Consulta DATE,
    @Peso DECIMAL(5,2),
    @Altura DECIMAL(5,2),
    @IMC DECIMAL(5,2),
    @Diagn�stico TEXT,
    @Recomendaciones TEXT,
    @Pr�xima_Consulta DATE,
    @Notas TEXT
AS
BEGIN
    INSERT INTO Consultas (ID_Paciente, Fecha_Consulta, Peso, Altura, IMC, Diagn�stico, Recomendaciones, Pr�xima_Consulta, Notas)
    VALUES (@ID_Paciente, @Fecha_Consulta, @Peso, @Altura, @IMC, @Diagn�stico, @Recomendaciones, @Pr�xima_Consulta, @Notas);
END;

CREATE PROCEDURE ObtenerHistorialConsultas
    @ID_Paciente INT
AS
BEGIN
    SELECT * FROM Consultas
    WHERE ID_Paciente = @ID_Paciente
    ORDER BY Fecha_Consulta DESC;
END;

CREATE PROCEDURE ListarAlimentosPorGrupo
    @Grupo_Alimenticio VARCHAR(50)
AS
BEGIN
    SELECT * FROM Alimentos
    WHERE Grupo_Alimenticio = @Grupo_Alimenticio;
END;

CREATE PROCEDURE VerDietasPorPaciente
    @ID_Paciente INT,
    @Fecha_Inicio DATE,
    @Fecha_Fin DATE
AS
BEGIN
    SELECT * FROM Dieta
    WHERE ID_Paciente = @ID_Paciente AND Fecha_Inicio >= @Fecha_Inicio AND Fecha_Fin <= @Fecha_Fin;
END;

CREATE PROCEDURE ConsultarSuplementosPorCondicion
    @Condicion TEXT
AS
BEGIN
    SELECT * FROM Suplementos
    WHERE Contraindicaciones NOT LIKE '%' + @Condicion + '%';
END;


CREATE PROCEDURE ActualizarPaciente
    @ID_Paciente INT,
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @Fecha_Nacimiento DATE,
    @Sexo VARCHAR(10),
    @Direcci�n VARCHAR(100),
    @Tel�fono VARCHAR(20),
    @Email VARCHAR(50),
    @Historial_M�dico TEXT
AS
BEGIN
    UPDATE Pacientes
    SET Nombre = @Nombre, Apellido = @Apellido, Fecha_Nacimiento = @Fecha_Nacimiento, Sexo = @Sexo, Direcci�n = @Direcci�n, Tel�fono = @Tel�fono, Email = @Email, Historial_M�dico = @Historial_M�dico
    WHERE ID_Paciente = @ID_Paciente;
END;

CREATE PROCEDURE EliminarPaciente
    @ID_Paciente INT
AS
BEGIN
    DELETE FROM Pacientes
    WHERE ID_Paciente = @ID_Paciente;
END;


CREATE PROCEDURE ReportePacientesSobrepeso
AS
BEGIN
    SELECT P.Nombre, P.Apellido, C.IMC
    FROM Pacientes P
    JOIN Consultas C ON P.ID_Paciente = C.ID_Paciente
    WHERE C.IMC > 25;
END;

CREATE PROCEDURE ReporteConsultasPorMes
    @Mes INT,
    @A�o INT
AS
BEGIN
    SELECT * FROM Consultas
    WHERE MONTH(Fecha_Consulta) = @Mes AND YEAR(Fecha_Consulta) = @A�o;
END;


CREATE TABLE EventoControl (
    ID_Evento INT PRIMARY KEY IDENTITY,
    Tipo_Evento VARCHAR(50),
    Nombre_Tabla VARCHAR(50),
    Fecha_Hora DATETIME,
    Usuario VARCHAR(50),
    Informacion TEXT
);
CREATE TRIGGER Trigger_Insert_Evento
ON Pacientes
AFTER INSERT
AS
BEGIN
    INSERT INTO EventoControl (Tipo_Evento, Nombre_Tabla, Fecha_Hora, Usuario, Informacion)
    SELECT 'INSERT', 'Pacientes', GETDATE(), SUSER_SNAME(), 
           'Nuevo registro insertado: ID_Paciente=' + CAST(i.ID_Paciente AS VARCHAR(10))
    FROM INSERTED i;
END;

CREATE TRIGGER Trigger_Update_Evento
ON Pacientes
AFTER UPDATE
AS
BEGIN
    INSERT INTO EventoControl (Tipo_Evento, Nombre_Tabla, Fecha_Hora, Usuario, Informacion)
    SELECT 'UPDATE', 'Pacientes', GETDATE(), SUSER_SNAME(), 
           'Registro actualizado: ID_Paciente=' + CAST(i.ID_Paciente AS VARCHAR(10))
    FROM INSERTED i;
END;

CREATE TRIGGER Trigger_Delete_Evento
ON Pacientes
AFTER DELETE
AS
BEGIN
    INSERT INTO EventoControl (Tipo_Evento, Nombre_Tabla, Fecha_Hora, Usuario, Informacion)
    SELECT 'DELETE', 'Pacientes', GETDATE(), SUSER_SNAME(), 
           'Registro eliminado: ID_Paciente=' + CAST(d.ID_Paciente AS VARCHAR(10))
    FROM DELETED d;
END;


SELECT * FROM Pacientes;

SELECT * FROM Consultas
WHERE ID_Paciente = 2; 

SELECT * FROM Alimentos
WHERE Grupo_Alimenticio = 'Frutas'; 

-- Dietas asignadas a un paciente en un periodo de tiempo
SELECT * FROM Dieta
WHERE ID_Paciente = 10 AND Fecha_Inicio >= '2024-01-01' AND Fecha_Fin <= '2024-12-31'; 

-- Suplementos recomendados para pacientes sin ciertas condiciones
SELECT * FROM Suplementos
WHERE Contraindicaciones NOT LIKE 'Diabetes'; 

-- Pacientes con IMC > 25
SELECT P.Nombre, P.Apellido, C.IMC
FROM Pacientes P
JOIN Consultas C ON P.ID_Paciente = C.ID_Paciente
WHERE C.IMC > 25;

-- Alimentos m�s utilizados en dietas
SELECT A.Nombre, COUNT(*) AS Veces_Usado
FROM Dieta D
JOIN Alimentos A ON D.ID_Dieta = A.ID_Alimento
GROUP BY A.Nombre
ORDER BY Veces_Usado DESC;

-- Suplementos m�s recomendados
SELECT Nombre, COUNT(*) AS Veces_Recomendado
FROM Suplementos
GROUP BY Nombre
ORDER BY Veces_Recomendado DESC;


-- Paciente con diagn�stico de hipertensi�n
SELECT * FROM Consultas
WHERE Diagn�stico LIKE 'Hipertensi�n';

-- Promedio de calor�as por grupo alimenticio
SELECT Grupo_Alimenticio, AVG(Calor�as_por_Porci�n) AS Promedio_Calor�as
FROM Alimentos
GROUP BY Grupo_Alimenticio;

-- Pacientes con alergias 
SELECT * FROM Pacientes
WHERE Historial_M�dico LIKE '%Alergia%';


-- Alimentos con m�s de 100 calor�as por porci�n
SELECT * FROM Alimentos
WHERE Calor�as_por_Porci�n > 100;

-- Suplementos con efectos secundarios espec�ficos
SELECT * FROM Suplementos
WHERE Efectos_Secundarios LIKE '%dolor%'; 

-- IMC promedio de todos los pacientes
SELECT AVG(IMC) AS Promedio_IMC
FROM Consultas;

-- Dietas con m�s de 2000 calor�as totales
SELECT * FROM Dieta
WHERE Calor�as_Totales > 2000;


-- Total de calor�as consumidas por paciente en dietas
SELECT P.Nombre, P.Apellido, SUM(D.Calor�as_Totales) AS Total_Calor�as
FROM Pacientes P
JOIN Dieta D ON P.ID_Paciente = D.ID_Paciente
GROUP BY P.Nombre, P.Apellido;

-- Alimentos con m�s de 10 gramos de prote�nas
SELECT * FROM Alimentos
WHERE Prote�nas > 10;

-- Dietas con m�s de 100 gramos de prote�nas totales
SELECT * FROM Dieta
WHERE Prote�nas_Totales > 100;

-- Suplementos precio mayor a 20$
SELECT * FROM Suplementos
WHERE Precio > 15;

