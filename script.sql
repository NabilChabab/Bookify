CREATE DATABASE Bookify;

CREATE TABLE Equipements (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(255) NOT NULL
);

CREATE TABLE Salles (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(255) NOT NULL,
    Capacité VARCHAR(255) NOT NULL,
    equipements_Id INT,
    FOREIGN KEY (equipements_Id) REFERENCES Équipements(Id)
);

CREATE TABLE Departement (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Poste VARCHAR(255) NOT NULL,
);

CREATE TABLE Employes (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Département_Id INT,
    FOREIGN KEY (Département_Id) REFERENCES Departement(Id)
);


CREATE TABLE Reservations (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Salle_Id INT,
    Employé_Id INT,
    Date_Debut DATE,
    Date_Fin DATE,
    FOREIGN KEY (Salle_Id) REFERENCES Salles(Id)
    FOREIGN KEY (Employé_Id) REFERENCES Employés(Id)
);

-- INSERTION

INSERT INTO Équipements (Nom)
VALUES
('Chaises'),
('Tables'),
('Les Ordinateurs'),
('Tables');

INSERT INTO Salles (Nom, Capacité, equipements_Id)
VALUES
('Salle 1', '23', 1),
('Salle 2', '23', 2),
('Salle 3', '25', 3),
('Salle 4', '25', 4);

INSERT INTO Departement (Poste) 
VALUES ('DEV MOBILE'),('DEV WEB'),('DEVOPS'),('BIG DATA');

INSERT INTO Employés (Nom, Email, Département_Id)
VALUES 
('Said Aabilla', 'said.aabilla@gmail.com', 1),
('Nabil Chabab', 'nabil.chababnabil@gmail.com', 2),
('Zakaria Elkoh ', 'zakaria.elkoh@gmail.com', 3),
('Adnane Roujane ', 'adnane.roujane@gmail.com', 4);

INSERT INTO Réservations (Salle_Id, Employé_Id, Date_Debut, Date_Fin)
VALUES
(1, 1, '2023-11-16', '2023-11-17'),
(2, 2, '2023-11-17', '2023-11-18'),
(3, 3, '2023-11-18', '2023-11-19');
(4, 4, '2023-11-19', '2023-11-20');

--List (SELECT)

SELECT * FROM Employés;
SELECT * FROM Employés WHERE Id = 1;
SELECT * FROM Employés WHERE Nom LIKE 'N%';


SELECT Réservations.*, Salles.Nom AS Nom_Salle
FROM Réservations
JOIN Employés ON Réservations.Employé_Id = Employés.Id
JOIN Salles ON Réservations.Salle_Id = Salles.Id
WHERE Employés.Nom = 'Nabil Chabab';

SELECT Réservations.*, Salles.Nom AS Nom_Salle, Employés.Nom AS Nom_Employe
FROM Réservations
JOIN Employés ON Réservations.Employé_Id = Employés.Id
JOIN Salles ON Réservations.Salle_Id = Salles.Id
JOIN Departement ON Employés.Département_Id = Departement.Id
WHERE Departement.Poste = 'DEV MOBILE';

SELECT Réservations.*, Salles.Nom AS Nom_Salle, Employes.Nom AS Nom_Employe
FROM Réservations
JOIN Employes ON Réservations.Employé_Id = Employes.Id
JOIN Salles ON Réservations.Salle_Id = Salles.Id
WHERE Salles.Nom = 'Salle 3';

SELECT Employés.*, Réservations.*, Salles.Nom AS Nom_Salle
FROM Employés
INNER JOIN Réservations ON Employés.Id = Réservations.Employé_Id
INNER JOIN Salles ON Réservations.Salle_Id = Salles.Id;

SELECT Salles.*, Réservations.*, Employés.Nom AS Nom_Employe
FROM Salles
RIGHT JOIN Réservations ON Salles.Id = Réservations.Salle_Id
LEFT JOIN Employés ON Réservations.Employé_Id = Employés.Id;

SELECT Employés.*, Réservations.*, Salles.Nom AS Nom_Salle
FROM Employés
LEFT JOIN Réservations ON Employés.Id = Réservations.Employé_Id
LEFT JOIN Salles ON Réservations.Salle_Id = Salles.Id;
