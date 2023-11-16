CREATE TABLE Équipements (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nom VARCHAR(255) NOT NULL
);

CREATE TABLE Salles (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nom VARCHAR(255) NOT NULL,
    Capacité VARCHAR(255) NOT NULL,
    equipements_Id INT,
    FOREIGN KEY (equipements_Id) REFERENCES Équipements(Id)
);

CREATE TABLE Departement (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Poste VARCHAR(255) NOT NULL,
);

CREATE TABLE Employés (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nom VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Département_Id INT,
    FOREIGN KEY (Département_Id) REFERENCES Departement(Id)
);


CREATE TABLE Réservations (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Salle_Id INT,
    Employé_Id INT,
    Date_Debut DATE,
    Date_Fin DATE,
    FOREIGN KEY (Salle_Id) REFERENCES Salles(Id)
    FOREIGN KEY (Employé_Id) REFERENCES Employés(Id)
);