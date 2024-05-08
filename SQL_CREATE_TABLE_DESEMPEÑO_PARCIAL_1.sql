CREATE TABLE Directores (
    ID INT PRIMARY KEY IDENTITY,
    apellido VARCHAR(50),
    nombre VARCHAR(50)
);

CREATE TABLE Peliculas (
    ID INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50),
    idDirector INT,
    CONSTRAINT fk_Director
        FOREIGN KEY (idDirector) 
        REFERENCES Directores(ID)
);


INSERT INTO Directores ( apellido, nombre)
VALUES 
( 'Gonzalez', 'Juan'),
( 'Rodriguez', 'Maria'),
( 'Lopez', 'Carlos'),
( 'Perez', 'Ana'),
( 'Martinez', 'Jose');


INSERT INTO Peliculas (nombre, idDirector)
VALUES 
( 'El viaje de Juan', 1),
( 'Maria en el espejo', 2),
( 'Los secretos de Carlos', 3),
( 'Ana y el mar', 4),
( 'El jardín de Jose', 5),
( 'El regreso de Juan', 1),
( 'Maria y la montaña', 2);
