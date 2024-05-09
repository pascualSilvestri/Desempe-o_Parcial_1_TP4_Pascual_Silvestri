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
( 'Juana', 'De arco'),
( 'Susana', 'oria'),
( 'Arya', 'Daenerys'),
( 'Goku', 'Kakaroto'),
( 'Will', 'Smit');


INSERT INTO Peliculas (nombre, idDirector)
VALUES 
( 'Deadpool', 1),
( 'Rapido y furiozo 25', 2),
( 'El secreto de la montaña', 3),
( 'Boca campeon', 4),
( 'Harry potter', 5),
( 'El planeta de los chimpances', 1),
( 'Lobezno', 2);
