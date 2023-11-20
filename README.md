# Bookify

# Gestion des Réservations de Salles

Ce projet vise à fournir un système de gestion des réservations de salles pour une organisation.

## Tables

1. **Salles:**
   - Id (Clé primaire)
   - Nom
   - Capacité
   - Équipements

2. **Employés:**
   - Id (Clé primaire)
   - Nom
   - Email
   - Département
   - Poste

3. **Réservations:**
   - Id (Clé primaire)
   - Salle_ID (Clé étrangère vers la table Salles)
   - Employé_ID (Clé étrangère vers la table Employés)
   - Date_Debut
   - Date_Fin

4. **Équipements:**
   - Id (Clé primaire)
   - Nom

## Clés Étrangères

- La colonne `Salle_ID` dans la table `Réservations` est une clé étrangère référençant la clé primaire `Id` dans la table `Salles`.
  
- La colonne `Employé_ID` dans la table `Réservations` est une clé étrangère référençant la clé primaire `Id` dans la table `Employés`.

## Comment Utiliser

1. Clonez le dépôt.
2. Configurez la base de données avec les informations appropriées.
3. Exécutez le script SQL pour créer les tables.
4. Insérez des données initiales si nécessaire.
5. Lancez l'application.

## Contribuer

1. Fork du dépôt.
2. Créez une nouvelle branche.
3. Effectuez des modifications.
4. Soumettez une pull request.

## Auteur

[Nabil CHABAB]

