INSERT ALL
	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (1, TO_TIMESTAMP('2022-11-14 22:40', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 1, 'Sur place', 'Terminé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (1, 6, TO_TIMESTAMP('2022-11-30 12:41', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 5, 1, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 4, 1, 2)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (1, TO_TIMESTAMP('2022-12-03 01:01', 'YYYY-MM-DD HH24:MI'), 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (2, TO_TIMESTAMP('2022-11-15 19:52', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 1, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (2, '134 Avenue des Oliviers')
	INTO InformationLivreur(noCommande, description) VALUES (2, 'Déposez devant la porte')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (2, TO_TIMESTAMP('2022-11-15 21:05', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 5, 2, 2)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (2, TO_TIMESTAMP('2022-11-17 19:38', 'YYYY-MM-DD HH24:MI'), 4)
	INTO AvisEvaluation(noCommande, avis) VALUES (2, 'Parfait mais un peu cher')

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (3, TO_TIMESTAMP('2022-11-08 13:54', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 1, 'Livraison', 'Annulé restaurant')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (3, '134 Avenue des Oliviers')
	INTO InformationLivreur(noCommande, description) VALUES (3, 'Le code du portail est 1567')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (3, TO_TIMESTAMP('2022-11-08 15:43', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 3, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 5, 3, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 3, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (4, TO_TIMESTAMP('2022-11-18 20:49', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 1, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (4, '134 Avenue des Oliviers')
	INTO InformationLivreur(noCommande, description) VALUES (4, '2ème étage porte de droite')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (4, TO_TIMESTAMP('2022-11-18 22:01', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 4, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 4, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 4, 5)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (4, TO_TIMESTAMP('2022-11-18 22:55', 'YYYY-MM-DD HH24:MI'), 2)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (5, TO_TIMESTAMP('2022-11-27 12:55', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 1, 'Sur place', 'Validé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (5, 1, TO_TIMESTAMP('2022-12-04 22:23', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 5, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (6, TO_TIMESTAMP('2022-11-23 20:47', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 1, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 1, 6, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 5, 6, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 2, 6, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (7, TO_TIMESTAMP('2022-11-21 12:43', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 1, 'Sur place', 'Disponible')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (7, 8, TO_TIMESTAMP('2022-12-06 22:37', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 7, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 7, 6)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (8, TO_TIMESTAMP('2022-11-17 13:16', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 1, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (8, '134 Avenue des Oliviers')
	INTO InformationLivreur(noCommande, description) VALUES (8, 'La sonnette est à gauche de la boite aux lettres')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (8, TO_TIMESTAMP('2022-11-17 14:10', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 8, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 8, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (9, TO_TIMESTAMP('2022-11-12 12:51', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 2, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (9, '12 rue des Lilas')
	INTO InformationLivreur(noCommande, description) VALUES (9, 'La sonnette est à gauche de la boite aux lettres')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (9, TO_TIMESTAMP('2022-11-12 13:25', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 4, 9, 4)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (9, TO_TIMESTAMP('2022-11-15 03:42', 'YYYY-MM-DD HH24:MI'), 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (10, TO_TIMESTAMP('2022-11-28 13:36', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 2, 'A emporter', 'En livraison')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 4, 10, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 5, 10, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (11, TO_TIMESTAMP('2022-11-10 13:03', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 2, 'Sur place', 'Terminé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (11, 12, TO_TIMESTAMP('2022-11-25 21:13', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 1, 11, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 2, 11, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (12, TO_TIMESTAMP('2022-11-17 12:49', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 2, 'A emporter', 'Validé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 5, 12, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 2, 12, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 1, 12, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (13, TO_TIMESTAMP('2022-11-25 20:21', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 2, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 3, 13, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 5, 13, 1)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (13, TO_TIMESTAMP('2022-11-27 23:55', 'YYYY-MM-DD HH24:MI'), 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (14, TO_TIMESTAMP('2022-11-27 13:02', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 2, 'A emporter', 'Disponible')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 14, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (15, TO_TIMESTAMP('2022-11-22 13:49', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 2, 'Sur place', 'Terminé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (15, 2, TO_TIMESTAMP('2022-12-05 21:44', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 4, 15, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 3, 15, 6)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (15, TO_TIMESTAMP('2022-12-08 14:34', 'YYYY-MM-DD HH24:MI'), 4)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (16, TO_TIMESTAMP('2022-11-29 22:38', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 2, 'Sur place', 'Terminé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (16, 4, TO_TIMESTAMP('2022-12-08 19:33', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 2, 16, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 1, 16, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 3, 16, 5)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (16, TO_TIMESTAMP('2022-12-11 13:39', 'YYYY-MM-DD HH24:MI'), 0)
	INTO AvisEvaluation(noCommande, avis) VALUES (16, 'Immonde')

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (17, TO_TIMESTAMP('2022-11-29 21:11', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 2, 'Sur place', 'Disponible')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (17, 8, TO_TIMESTAMP('2022-12-13 14:05', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 17, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 17, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 17, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (18, TO_TIMESTAMP('2022-11-12 20:03', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 2, 'Sur place', 'Disponible')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (18, 11, TO_TIMESTAMP('2022-11-23 20:14', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 18, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 18, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 18, 2)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (19, TO_TIMESTAMP('2022-11-29 20:32', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 3, 'Livraison', 'Disponible')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (19, '66 bis Cours Charles de Gaulle')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (19, TO_TIMESTAMP('2022-11-29 21:47', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 5, 19, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 3, 19, 6)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (20, TO_TIMESTAMP('2022-12-02 14:05', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 3, 'A emporter', 'Annulé restaurant')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 1, 20, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 2, 20, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (21, TO_TIMESTAMP('2022-12-03 14:20', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 3, 'A emporter', 'Attente de confirmation')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 3, 21, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 1, 21, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 4, 21, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (22, TO_TIMESTAMP('2022-11-12 14:01', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 4, 'A emporter', 'Disponible')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 2, 22, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 1, 22, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 5, 22, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (23, TO_TIMESTAMP('2022-11-24 19:48', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 4, 'A emporter', 'Attente de confirmation')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 3, 23, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 4, 23, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 5, 23, 6)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (24, TO_TIMESTAMP('2022-11-16 19:18', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 4, 'Sur place', 'Annulé client')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (24, 3, TO_TIMESTAMP('2022-12-09 20:46', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 5, 24, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 3, 24, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (25, TO_TIMESTAMP('2022-11-28 13:02', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 4, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (25, '53 rue des Églantiers')
	INTO InformationLivreur(noCommande, description) VALUES (25, 'Le code du portail est 1567')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (25, TO_TIMESTAMP('2022-11-28 14:36', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 5, 25, 6)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (25, TO_TIMESTAMP('2022-11-30 18:25', 'YYYY-MM-DD HH24:MI'), 1)
	INTO AvisEvaluation(noCommande, avis) VALUES (25, 'Minable')

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (26, TO_TIMESTAMP('2022-11-19 22:59', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 4, 'A emporter', 'Disponible')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 1, 26, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 4, 26, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 2, 26, 6)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (27, TO_TIMESTAMP('2022-11-26 22:57', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 4, 'Sur place', 'Validé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (27, 10, TO_TIMESTAMP('2022-12-14 13:46', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 27, 2)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (28, TO_TIMESTAMP('2022-11-28 13:49', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 4, 'A emporter', 'En livraison')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 28, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (29, TO_TIMESTAMP('2022-11-21 12:45', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 5, 'Sur place', 'Disponible')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (29, 1, TO_TIMESTAMP('2022-12-02 22:40', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 29, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 29, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (30, TO_TIMESTAMP('2022-11-24 20:18', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 5, 'Livraison', 'Annulé client')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (30, '78 rue des trois fontaines')
	INTO InformationLivreur(noCommande, description) VALUES (30, 'Déposez devant la porte')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (30, TO_TIMESTAMP('2022-11-24 21:41', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 3, 30, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (31, TO_TIMESTAMP('2022-11-15 14:10', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 5, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 5, 31, 3)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (31, TO_TIMESTAMP('2022-11-15 21:25', 'YYYY-MM-DD HH24:MI'), 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (32, TO_TIMESTAMP('2022-11-25 20:26', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 5, 'A emporter', 'Annulé client')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 5, 32, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (33, TO_TIMESTAMP('2022-12-02 22:55', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 6, 'Sur place', 'En livraison')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (33, 11, TO_TIMESTAMP('2022-12-14 20:35', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 33, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 33, 4)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (34, TO_TIMESTAMP('2022-11-13 12:47', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 6, 'Sur place', 'Attente de confirmation')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (34, 5, TO_TIMESTAMP('2022-11-26 12:52', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 2, 34, 2)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (35, TO_TIMESTAMP('2022-11-19 22:00', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 6, 'Livraison', 'En livraison')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (35, '231 Avenue des Alpes')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (35, TO_TIMESTAMP('2022-11-19 23:20', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 35, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 5, 35, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (36, TO_TIMESTAMP('2022-11-16 14:01', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 6, 'A emporter', 'Attente de confirmation')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 1, 36, 6)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (37, TO_TIMESTAMP('2022-11-14 20:30', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 6, 'A emporter', 'Validé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 2, 37, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 37, 2)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (38, TO_TIMESTAMP('2022-11-14 13:47', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 7, 'Livraison', 'Disponible')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (38, '43 rue de la République')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (38, TO_TIMESTAMP('2022-11-14 15:39', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 5, 38, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 4, 38, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (39, TO_TIMESTAMP('2022-11-29 19:01', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 7, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (39, '43 rue de la République')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (39, TO_TIMESTAMP('2022-11-29 19:51', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 4, 39, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 5, 39, 5)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (39, TO_TIMESTAMP('2022-12-01 09:02', 'YYYY-MM-DD HH24:MI'), 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (40, TO_TIMESTAMP('2022-11-19 13:58', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 7, 'Sur place', 'Terminé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (40, 10, TO_TIMESTAMP('2022-11-28 21:05', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 2, 40, 4)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 40, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 5, 40, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (41, TO_TIMESTAMP('2022-11-16 13:54', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 7, 'Livraison', 'Validé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (41, '43 rue de la République')
	INTO InformationLivreur(noCommande, description) VALUES (41, 'Déposez devant la porte')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (41, TO_TIMESTAMP('2022-11-16 14:29', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 4, 41, 2)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (42, TO_TIMESTAMP('2022-11-17 13:21', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 7, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 5, 42, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 1, 42, 3)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (42, TO_TIMESTAMP('2022-11-19 21:21', 'YYYY-MM-DD HH24:MI'), 4)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (43, TO_TIMESTAMP('2022-11-26 12:48', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 7, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 3, 43, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 1, 43, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 2, 43, 6)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (43, TO_TIMESTAMP('2022-11-28 10:50', 'YYYY-MM-DD HH24:MI'), 2)
	INTO AvisEvaluation(noCommande, avis) VALUES (43, 'Pas terrible')

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (44, TO_TIMESTAMP('2022-11-29 12:48', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 7, 'Livraison', 'En livraison')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (44, '43 rue de la République')
	INTO InformationLivreur(noCommande, description) VALUES (44, 'Déposez devant la porte')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (44, TO_TIMESTAMP('2022-11-29 13:41', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 1, 44, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 2, 44, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 3, 44, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (45, TO_TIMESTAMP('2022-11-16 20:31', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 8, 'Sur place', 'Terminé')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (45, 10, TO_TIMESTAMP('2022-12-01 12:48', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 3, 45, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (46, TO_TIMESTAMP('2022-11-23 19:57', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 8, 'Livraison', 'Disponible')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (46, '23 rue de la Grande Place')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (46, TO_TIMESTAMP('2022-11-23 21:36', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 46, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 46, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 46, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (47, TO_TIMESTAMP('2022-11-14 12:59', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 8, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 5, 47, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 3, 47, 4)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (47, TO_TIMESTAMP('2022-11-16 08:52', 'YYYY-MM-DD HH24:MI'), 4)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (48, TO_TIMESTAMP('2022-11-17 12:46', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 8, 'A emporter', 'Annulé client')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 48, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 1, 48, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (49, TO_TIMESTAMP('2022-11-18 22:45', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 8, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (49, '23 rue de la Grande Place')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (49, TO_TIMESTAMP('2022-11-18 23:24', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 2, 49, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 1, 49, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 49, 3)
	INTO Evaluation(noCommande, dateHeure, note) VALUES (49, TO_TIMESTAMP('2022-11-19 21:17', 'YYYY-MM-DD HH24:MI'), 5)
	INTO AvisEvaluation(noCommande, avis) VALUES (49, 'Je recommande')

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (50, TO_TIMESTAMP('2022-11-18 20:32', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 9, 'Livraison', 'Disponible')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (50, '98 chemin des chataîgniers')
	INTO InformationLivreur(noCommande, description) VALUES (50, '2ème étage porte de droite')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (50, TO_TIMESTAMP('2022-11-18 21:35', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 3, 50, 3)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 4, 50, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (51, TO_TIMESTAMP('2022-11-18 13:52', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 9, 'A emporter', 'Validé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 3, 51, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 1, 51, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 51, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (52, TO_TIMESTAMP('2022-11-15 19:54', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 9, 'A emporter', 'Annulé restaurant')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 52, 5)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (53, TO_TIMESTAMP('2022-11-26 14:25', 'YYYY-MM-DD HH24:MI'), 'boeuf.gourmand@bourgignon.fr', 10, 'Sur place', 'Attente de confirmation')
	INTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES (53, 12, TO_TIMESTAMP('2022-12-09 12:31', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 53, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 53, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (54, TO_TIMESTAMP('2022-11-11 12:32', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 10, 'Livraison', 'Terminé')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (54, '88 Avenue des Platanes')
	INTO InformationLivreur(noCommande, description) VALUES (54, '2ème étage porte de droite')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (54, TO_TIMESTAMP('2022-11-11 14:28', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 4, 54, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 2, 54, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 3, 54, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (55, TO_TIMESTAMP('2022-11-13 20:10', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 10, 'A emporter', 'Terminé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 5, 55, 6)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 1, 55, 1)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 2, 55, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (56, TO_TIMESTAMP('2022-11-09 22:17', 'YYYY-MM-DD HH24:MI'), 'chez.li@buffets-volonte.com', 10, 'Livraison', 'Attente de confirmation')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (56, '88 Avenue des Platanes')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (56, TO_TIMESTAMP('2022-11-09 23:11', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 2, 56, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 3, 56, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.li@buffets-volonte.com', 1, 56, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (57, TO_TIMESTAMP('2022-11-17 13:40', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 10, 'Livraison', 'Attente de confirmation')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (57, '88 Avenue des Platanes')
	INTO InformationLivreur(noCommande, description) VALUES (57, 'Le code du portail est 1567')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (57, TO_TIMESTAMP('2022-11-17 15:29', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 4, 57, 3)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (58, TO_TIMESTAMP('2022-11-20 12:31', 'YYYY-MM-DD HH24:MI'), 'caserne.fromage@lafondue.fr', 10, 'A emporter', 'En livraison')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('caserne.fromage@lafondue.fr', 2, 58, 4)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (59, TO_TIMESTAMP('2022-11-27 13:46', 'YYYY-MM-DD HH24:MI'), 'burger.cie@doublecheese.us', 10, 'A emporter', 'Validé')
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 5, 59, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('burger.cie@doublecheese.us', 2, 59, 1)

	INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (60, TO_TIMESTAMP('2022-11-23 13:35', 'YYYY-MM-DD HH24:MI'), 'chez.giovanni@pizzalpes.it', 10, 'Livraison', 'Attente de confirmation')
	INTO CommandeALivrer(noCommande, adresseLivraison) VALUES (60, '88 Avenue des Platanes')
	INTO HeureLivraison(noCommande, dateHeure) VALUES (60, TO_TIMESTAMP('2022-11-23 15:17', 'YYYY-MM-DD HH24:MI'))
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 2, 60, 2)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 5, 60, 5)
	INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('chez.giovanni@pizzalpes.it', 3, 60, 5)

SELECT 1 FROM DUAL;
COMMIT;

-- 60 commandes créées
-- {'chez.li@buffets-volonte.com': 14, 'boeuf.gourmand@bourgignon.fr': 14, 'caserne.fromage@lafondue.fr': 9, 'chez.giovanni@pizzalpes.it': 10, 'burger.cie@doublecheese.us': 13}
-- {'Sur place': 16, 'A emporter': 24, 'Livraison': 20}
