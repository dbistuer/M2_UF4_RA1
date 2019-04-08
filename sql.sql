DROP TABLE IF EXISTS Alumne;
DROP TABLE IF EXISTS Assignatura;
DROP TABLE IF EXISTS Notes;


CREATE TABLE Alumne (
	Idalumne	serial primary key,
	Nom		varchar(20),
	Edat		int,
	Ciutat		varchar(15)
	);

CREATE TABLE Assignatura (
	Idassignatura	serial,
	Nom		varchar(20),
	NumAlumnes	int,
        PRIMARY KEY (Idassignatura)
	);

CREATE TABLE Notes (
        Idalumne        int,
        Idassignatura   int references Assignatura(Idassignatura),
	Nota		int,
        PRIMARY KEY (Idalumne,Idassignatura),
        FOREIGN KEY (Idalumne) REFERENCES Alumne(Idalumne)
	);


/**********************************************************/
/*  INSERCIÓ DE VALORS A LES TAULES CREADES ANTERIORMENT  */
/**********************************************************/

INSERT INTO Alumne (Nom,Edat,Ciutat) VALUES ('Joan',19,'Lleida');
INSERT INTO Alumne (Nom,Edat,Ciutat) VALUES ('Abel',18,'Manresa');
INSERT INTO Alumne (Nom,Edat,Ciutat) VALUES ('Marisa',20,'Barcelona');
INSERT INTO Alumne (Nom,Edat,Ciutat) VALUES ('Marta',18,'Lleida');
INSERT INTO Alumne (Nom,Edat,Ciutat) VALUES ('Juli',22,'Manresa');
INSERT INTO Alumne (Nom,Edat,Ciutat) VALUES ('Montse',17,'Barcelona');

INSERT INTO Assignatura (Nom,NumAlumnes) VALUES ('IBD',60);
INSERT INTO Assignatura (Nom,NumAlumnes) VALUES ('EDALG',50);
INSERT INTO Assignatura (Nom,NumAlumnes) VALUES ('ESOFT',30);
INSERT INTO Assignatura (Nom,NumAlumnes) VALUES ('EDI',75);
INSERT INTO Assignatura (Nom,NumAlumnes) VALUES ('LABOSOFT',30);
INSERT INTO Assignatura (Nom,NumAlumnes) VALUES ('TC',40);

INSERT INTO Notes VALUES (1,1,10);
INSERT INTO Notes VALUES (1,2,8);
INSERT INTO Notes VALUES (1,4,10);
INSERT INTO Notes VALUES (2,1,8);
INSERT INTO Notes VALUES (2,2,3);
INSERT INTO Notes VALUES (3,1,4);
INSERT INTO Notes VALUES (3,2,3);
INSERT INTO Notes VALUES (3,6,4);
INSERT INTO Notes VALUES (4,1,10);
INSERT INTO Notes VALUES (4,2,8);
INSERT INTO Notes VALUES (4,3,3);
INSERT INTO Notes VALUES (4,5,10);
INSERT INTO Notes VALUES (4,6,9);
INSERT INTO Notes VALUES (5,1,10);
INSERT INTO Notes VALUES (5,2,9);
INSERT INTO Notes VALUES (5,3,6);
INSERT INTO Notes VALUES (5,5,7);
INSERT INTO Notes VALUES (6,1,8);
INSERT INTO Notes VALUES (6,2,8);
INSERT INTO Notes VALUES (6,5,3);
