CREATE TABLE Salles (
    Id INT PRIMARY KEY NOT NULL,
    Nom VARCHAR(255) NOT NULL,
    Capacité INT,
    Équipements VARCHAR(255)
);

CREATE TABLE Employés (
    Id INT PRIMARY KEY,
    Nom VARCHAR(255),
    Email VARCHAR(255),
    Département VARCHAR(255),
    Poste VARCHAR(255)
);

CREATE TABLE Équipements (
    Id INT PRIMARY KEY,
    Nom VARCHAR(255)
);

CREATE TABLE Réservations (
    Id INT PRIMARY KEY,
    Salle_ID INT,
    Employé_ID INT,
    Date_Debut DATETIME,
    Date_Fin DATETIME,
    FOREIGN KEY (Salle_ID) REFERENCES Salles(Id),
    FOREIGN KEY (Employé_ID) REFERENCES Employés(Id)
);