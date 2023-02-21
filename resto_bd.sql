
DROP TABLE ContenuCommande;
DROP TABLE PriseEnChargeRestaurant;
DROP TABLE AllergenesPlat;
DROP TABLE CategoriesRestaurant;
DROP TABLE AvisEvaluation;
DROP TABLE Evaluation;
DROP TABLE HeureLivraison;
DROP TABLE InformationLivreur;
DROP TABLE CommandeSurPlace;
DROP TABLE CommandeALivrer;
DROP TABLE Commande;
DROP TABLE StatutCommande;
DROP TABLE TypeCommande;
DROP TABLE Client;
DROP TABLE Allergene;
DROP TABLE Plat;
DROP TABLE Creneau;
DROP TABLE Categorie;
DROP TABLE Restaurant;

CREATE TABLE Restaurant(
   email VARCHAR(50) NOT NULL,
   nom VARCHAR(50) NOT NULL,
   adresse VARCHAR(50) NOT NULL,
   tel VARCHAR(20) NOT NULL,
   nbPlacesAssises INT NOT NULL,
   presentation VARCHAR(500) NOT NULL,
   PRIMARY KEY(email),
   CONSTRAINT Restaurant_nbPlacesAssises_Sup0 CHECK (nbPlacesAssises >= 0)
);

CREATE TABLE Categorie(
   categorie VARCHAR(50) NOT NULL,
   categorie_mere VARCHAR(50),
   PRIMARY KEY(categorie),
   FOREIGN KEY(categorie_mere) REFERENCES Categorie(categorie)
);

CREATE TABLE Creneau(
   email VARCHAR(50) NOT NULL,
   heureOuverture TIMESTAMP NOT NULL,
   jour INT NOT NULL,
   heureFermeture TIMESTAMP NOT NULL,
   PRIMARY KEY(email, heureOuverture, jour),
   FOREIGN KEY(email) REFERENCES Restaurant(email),
   CONSTRAINT Creneau_heures_HdebutSup0Hfin CHECK (heureOuverture < heureFermeture)
);

CREATE TABLE Plat(
   email VARCHAR(50) NOT NULL,
   noPlat INT NOT NULL,
   nom VARCHAR(50) NOT NULL,
   description VARCHAR(500) NOT NULL,
   prix FLOAT NOT NULL,
   PRIMARY KEY(email, noPlat),
   FOREIGN KEY(email) REFERENCES Restaurant(email),
   CONSTRAINT Plat_Prix_Sup0 CHECK (Prix >= 0)
);

CREATE TABLE Allergene(
   allergene VARCHAR(50) NOT NULL,
   PRIMARY KEY(allergene)
);

CREATE TABLE Client(
   noClient INT NOT NULL,
   email VARCHAR(50) NOT NULL,
   mdp VARCHAR(50) NOT NULL,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   adresse VARCHAR(50) NOT NULL,
   PRIMARY KEY(noClient)
);

CREATE TABLE TypeCommande(
   type VARCHAR(50) NOT NULL,
   PRIMARY KEY(type),
   CONSTRAINT TypeCommande_type_In CHECK (type in ('Sur place', 'A emporter', 'Livraison'))
);

CREATE TABLE StatutCommande(
   statut VARCHAR(50) NOT NULL,
   PRIMARY KEY(statut),
   CONSTRAINT StatutCommande_statut_In CHECK (statut in ('Attente de confirmation', 'Validé', 'Disponible', 'En livraison', 'Annulé client', 'Annulé restaurant', 'Terminé'))
);

CREATE TABLE Commande(
   noCommande INT NOT NULL,
   dateHeure TIMESTAMP NOT NULL,
   email VARCHAR(50) NOT NULL,
   noClient INT NOT NULL,
   type VARCHAR(50) NOT NULL,
   statut VARCHAR(50) NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(email) REFERENCES Restaurant(email),
   FOREIGN KEY(noClient) REFERENCES Client(noClient),
   FOREIGN KEY(type) REFERENCES TypeCommande(type)
);

CREATE TABLE CommandeALivrer(
   noCommande INT NOT NULL,
   adresseLivraison VARCHAR(50) NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(noCommande) REFERENCES Commande(noCommande)
);

CREATE TABLE CommandeSurPlace(
   noCommande INT NOT NULL,
   nbPersonnes INT NOT NULL,
   heureArrivee TIMESTAMP NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(noCommande) REFERENCES Commande(noCommande),
   CONSTRAINT CommandeSurPlace_nbPersonnes_SSup0 CHECK (nbPersonnes > 0)
);

CREATE TABLE InformationLivreur(
   noCommande INT NOT NULL,
   description VARCHAR(50) NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(noCommande) REFERENCES CommandeALivrer(noCommande)
);

CREATE TABLE HeureLivraison(
   noCommande INT NOT NULL,
   dateHeure TIMESTAMP NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(noCommande) REFERENCES CommandeALivrer(noCommande)
);

CREATE TABLE Evaluation(
   noCommande INT NOT NULL,
   dateHeure TIMESTAMP NOT NULL,
   note INT NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(noCommande) REFERENCES Commande(noCommande),
   CONSTRAINT Evaluation_note_Between05 CHECK (note >= 0 AND note <= 5)
);

CREATE TABLE AvisEvaluation(
   noCommande INT NOT NULL,
   avis VARCHAR(500) NOT NULL,
   PRIMARY KEY(noCommande),
   FOREIGN KEY(noCommande) REFERENCES Evaluation(noCommande)
);

CREATE TABLE CategoriesRestaurant(
   email VARCHAR(50) NOT NULL,
   categorie VARCHAR(50) NOT NULL,
   PRIMARY KEY(email, categorie),
   FOREIGN KEY(email) REFERENCES Restaurant(email),
   FOREIGN KEY(categorie) REFERENCES Categorie(categorie)
);

CREATE TABLE AllergenesPlat(
   email VARCHAR(50) NOT NULL,
   noPlat INT NOT NULL,
   allergene VARCHAR(50) NOT NULL,
   PRIMARY KEY(email, noPlat, allergene),
   FOREIGN KEY(email, noPlat) REFERENCES Plat(email, noPlat),
   FOREIGN KEY(allergene) REFERENCES Allergene(allergene)
);

CREATE TABLE PriseEnChargeRestaurant(
   email VARCHAR(50) NOT NULL,
   type VARCHAR(50) NOT NULL,
   PRIMARY KEY(email, type),
   FOREIGN KEY(email) REFERENCES Restaurant(email),
   FOREIGN KEY(type) REFERENCES TypeCommande(type)
);

CREATE TABLE ContenuCommande(
   email VARCHAR(50) NOT NULL,
   noPlat INT NOT NULL,
   noCommande INT NOT NULL,
   quantite INT NOT NULL,
   PRIMARY KEY(email, noPlat, noCommande),
   FOREIGN KEY(email, noPlat) REFERENCES Plat(email, noPlat),
   FOREIGN KEY(noCommande) REFERENCES Commande(noCommande),
   CONSTRAINT ContenuCommande_quantite_SSup0 CHECK (quantite > 0)
);
