CREATE DATABASE Bookify;

CREATE TABLE Équipements (
    Id INT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL
);

CREATE TABLE Salles (
    Id INT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Capacité VARCHAR(255) NOT NULL,
    equipements_Id INT,
    FOREIGN KEY (equipements_Id) REFERENCES Équipements(Id)
);

CREATE TABLE Departement (
    Id INT PRIMARY KEY,
    Poste VARCHAR(255) NOT NULL,
);

CREATE TABLE Employés (
    Id INT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Département_Id INT,
    FOREIGN KEY (Département_Id) REFERENCES Departement(Id)
);


CREATE TABLE Réservations (
    Id INT PRIMARY KEY,
    Salle_Id INT,
    Employé_Id INT,
    Date_Debut DATE,
    Date_Fin DATE,
    FOREIGN KEY (Salle_Id) REFERENCES Salles(Id)
    FOREIGN KEY (Employé_Id) REFERENCES Employés(Id)
);

-- INSERTION

INSERT INTO Équipements (Nom) VALUES ('Chaises');
INSERT INTO Équipements (Nom) VALUES ('Tables');
INSERT INTO Équipements (Nom) VALUES ('Les Ordinateurs');

INSERT INTO Salles (Nom, Capacité, equipements_Id) VALUES ('Salle 1', '23', 1);
INSERT INTO Salles (Nom, Capacité, equipements_Id) VALUES ('Salle 2', '23', 2);
INSERT INTO Salles (Nom, Capacité, equipements_Id) VALUES ('Salle 3', '25', 3);

INSERT INTO Departement (Poste) VALUES ('DEV MOBILE');
INSERT INTO Departement (Poste) VALUES ('DEV WEB');
INSERT INTO Departement (Poste) VALUES ('DEVOPS');

INSERT INTO Employés (Nom, Email, Département_Id) VALUES ('Said Aabilla', 'said.aabilla@gmail.com', 1);
INSERT INTO Employés (Nom, Email, Département_Id) VALUES ('Nabil Chabab', 'nabil.chababnabil@gmail.com', 2);
INSERT INTO Employés (Nom, Email, Département_Id) VALUES ('Zakaria Elkoh ', 'zakaria.elkoh@gmail.com', 3);

INSERT INTO Réservations (Salle_Id, Employé_Id, Date_Debut, Date_Fin) VALUES (1, 1, '16-11-2023', '17-11-2023');
INSERT INTO Réservations (Salle_Id, Employé_Id, Date_Debut, Date_Fin) VALUES (2, 2, '17-11-2023', '18-11-2023');
INSERT INTO Réservations (Salle_Id, Employé_Id, Date_Debut, Date_Fin) VALUES (3, 3, '18-11-2023', '19-11-2023');

--List (SELECT)

SELECT * FROM Employés;
SELECT * FROM Employés WHERE Id = 1;
SELECT * FROM Employés WHERE Nom LIKE 'N%';
