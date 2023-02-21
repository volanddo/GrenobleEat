CREATE TABLE Eleves (
	prenom varchar(30) NOT NULL, 
    nom varchar (30) NOT NULL, 
    email varchar (30),
	opt varchar (5),
	PRIMARY KEY (prenom, nom)
);

CREATE TABLE Notes (
	cours varchar (30) NOT NULL, prenom varchar (30) NOT NULL, nom varchar (30) NOT NULL, note integer,
	PRIMARY KEY(cours, prenom, nom),
	FOREIGN KEY (prenom, nom) REFERENCES Eleves(prenom, nom) );


INSERT INTO Eleves VALUES ('Luke', 'Skywalker', 'skywalker@imag.fr', 'MMIS');
INSERT INTO Eleves VALUES ('Jabba', 'The Hut', 'jbthHut@imag.fr', 'ISI');
INSERT INTO Notes VALUES ('sport', 'Jabba', 'The Hut', '3');
INSERT INTO Notes VALUES ('sport', 'Luke', 'Skywalker', '20');
INSERT INTO Notes VALUES ('Francais', 'Luke', 'Skywalker', '5');

SELECT n.cours, AVG(n.note) 
FROM Notes n, Eleves e
WHERE n.nom = e.nom AND n.prenom = e.prenom
GROUP BY n.cours;