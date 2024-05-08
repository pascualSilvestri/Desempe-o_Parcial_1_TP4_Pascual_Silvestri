CREATE TABLE Directores (
    ID INT PRIMARY KEY,
    apellido VARCHAR(50),
    nombre VARCHAR(50),

);

CREATE TABLE Peliculas (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50),
    idDirector INT,
    CONSTRAINT fk_Director
        FOREIGN KEY (idDirector) 
        REFERENCES Directores(ID)
);

INSERT INTO Directores (ID, apellido, nombre)
VALUES 
(1, 'Gonzalez', 'Juan'),
(2, 'Rodriguez', 'Maria'),
(3, 'Lopez', 'Carlos'),
(4, 'Perez', 'Ana'),
(5, 'Martinez', 'Jose');


INSERT INTO Peliculas (ID, nombre, idDirector)
VALUES 
(1, 'El viaje de Juan', 1),
(2, 'Maria en el espejo', 2),
(3, 'Los secretos de Carlos', 3),
(4, 'Ana y el mar', 4),
(5, 'El jardín de Jose', 5),
(6, 'El regreso de Juan', 1),
(7, 'Maria y la montaña', 2);
