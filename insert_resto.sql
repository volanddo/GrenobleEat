INSERT ALL
    INTO Restaurant(email, nom, adresse, tel, nbPlacesAssises, presentation) VALUES ('chez.li@buffets-volonte.com', 'Chez Li', '5 Grande Rue 38000 Grenoble', '01.64.84.61.31', 57, 'Buffet à volonté de spécialités chinoises et japonaises')
    INTO Restaurant(email, nom, adresse, tel, nbPlacesAssises, presentation) VALUES ('boeuf.gourmand@bourgignon.fr', 'Au Boeuf Gourmand', '18 rue des Mathématiques 38000 Grenoble', '01.84.35.76.83', 20, 'Plats régionaux de qualité, viande des Alpes')
    INTO Restaurant(email, nom, adresse, tel, nbPlacesAssises, presentation) VALUES ('caserne.fromage@lafondue.fr', 'La Caserne à Fromage', '32 rue des grands prés 38000 Grenoble', '01.86.67.76.86', 32, 'Fromages régionaux, fondue, tartiflette, raclette')
    INTO Restaurant(email, nom, adresse, tel, nbPlacesAssises, presentation) VALUES ('chez.giovanni@pizzalpes.it', 'Chez Giovanni', '56 rue du Bleu d''Auvergne 38000 Grenboble', '04.76.48.45.72', 12, 'Toutes les spécialités italiennes de pizzas')
    INTO Restaurant(email, nom, adresse, tel, nbPlacesAssises, presentation) VALUES ('burger.cie@doublecheese.us', 'Burger & Cie', '3 rue des Amériques 38000 Grenboble', '04.76.48.54.57', 19, 'Tout type de burgers pour les carnivores')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine régionale', NULL)
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine étrangère', NULL)
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine des Alpes', 'Cuisine régionale')
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine savoyarde', 'Cuisine des Alpes')
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine du Dauphiné', 'Cuisine des Alpes')
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine italienne', 'Cuisine étrangère')
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine chinoise', 'Cuisine étrangère')
    INTO Categorie(categorie, categorie_mere) VALUES ('Cuisine américaine', 'Cuisine étrangère')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    INTO TypeCommande(type) VALUES ('Sur place')
    INTO TypeCommande(type) VALUES ('A emporter')
    INTO TypeCommande(type) VALUES ('Livraison')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    /* Chez Li */
    INTO PriseEnChargeRestaurant(email, type) VALUES ('chez.li@buffets-volonte.com', 'A emporter')
    INTO PriseEnChargeRestaurant(email, type) VALUES ('chez.li@buffets-volonte.com', 'Sur place')
    /* Au Boeuf Gourmand */
    INTO PriseEnChargeRestaurant(email, type) VALUES ('boeuf.gourmand@bourgignon.fr', 'Sur place')
    /* La Caserne à Fromage */
    INTO PriseEnChargeRestaurant(email, type) VALUES ('caserne.fromage@lafondue.fr', 'Sur place')
    /* Chez Giovanni */
    INTO PriseEnChargeRestaurant(email, type) VALUES ('chez.giovanni@pizzalpes.it', 'A emporter')
    INTO PriseEnChargeRestaurant(email, type) VALUES ('chez.giovanni@pizzalpes.it', 'Livraison')
    INTO PriseEnChargeRestaurant(email, type) VALUES ('chez.giovanni@pizzalpes.it', 'Sur place')
    /* Burger & Cie */
    INTO PriseEnChargeRestaurant(email, type) VALUES ('burger.cie@doublecheese.us', 'A emporter')
    INTO PriseEnChargeRestaurant(email, type) VALUES ('burger.cie@doublecheese.us', 'Livraison')
    INTO PriseEnChargeRestaurant(email, type) VALUES ('burger.cie@doublecheese.us', 'Sur place')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    /* Chez Li */
    INTO CategoriesRestaurant(email, categorie) VALUES('chez.li@buffets-volonte.com', 'Cuisine étrangère')
    INTO CategoriesRestaurant(email, categorie) VALUES('chez.li@buffets-volonte.com', 'Cuisine chinoise')
    /* Au Boeuf Gourmand */
    INTO CategoriesRestaurant(email, categorie) VALUES('boeuf.gourmand@bourgignon.fr', 'Cuisine régionale')
    INTO CategoriesRestaurant(email, categorie) VALUES('boeuf.gourmand@bourgignon.fr', 'Cuisine des Alpes')
    INTO CategoriesRestaurant(email, categorie) VALUES('boeuf.gourmand@bourgignon.fr', 'Cuisine du Dauphiné')
    /* La Caserne à Fromage */
    INTO CategoriesRestaurant(email, categorie) VALUES('caserne.fromage@lafondue.fr', 'Cuisine régionale')
    INTO CategoriesRestaurant(email, categorie) VALUES('caserne.fromage@lafondue.fr', 'Cuisine des Alpes')
    INTO CategoriesRestaurant(email, categorie) VALUES('caserne.fromage@lafondue.fr', 'Cuisine savoyarde')
    /* Chez Giovanni */
    INTO CategoriesRestaurant(email, categorie) VALUES('chez.giovanni@pizzalpes.it', 'Cuisine étrangère')
    INTO CategoriesRestaurant(email, categorie) VALUES('chez.giovanni@pizzalpes.it', 'Cuisine italienne')
    /* Burger & Cie */
    INTO CategoriesRestaurant(email, categorie) VALUES('burger.cie@doublecheese.us', 'Cuisine étrangère')
    INTO CategoriesRestaurant(email, categorie) VALUES('burger.cie@doublecheese.us', 'Cuisine américaine')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    /* Chez Li */
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('12:30', 'HH24:MI'), '2', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('19:00', 'HH24:MI'), '2', TO_TIMESTAMP('23:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('12:30', 'HH24:MI'), '3', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('19:00', 'HH24:MI'), '3', TO_TIMESTAMP('23:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('12:30', 'HH24:MI'), '4', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('19:00', 'HH24:MI'), '4', TO_TIMESTAMP('23:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('12:30', 'HH24:MI'), '5', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('19:00', 'HH24:MI'), '5', TO_TIMESTAMP('23:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('12:30', 'HH24:MI'), '6', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('19:00', 'HH24:MI'), '6', TO_TIMESTAMP('23:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.li@buffets-volonte.com', TO_TIMESTAMP('12:30', 'HH24:MI'), '7', TO_TIMESTAMP('14:30', 'HH24:MI'))
    /* Au Boeuf Gourmand */
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('11:00', 'HH24:MI'), '2', TO_TIMESTAMP('13:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('20:00', 'HH24:MI'), '2', TO_TIMESTAMP('22:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('11:00', 'HH24:MI'), '3', TO_TIMESTAMP('13:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('20:00', 'HH24:MI'), '3', TO_TIMESTAMP('22:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('11:00', 'HH24:MI'), '4', TO_TIMESTAMP('13:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('20:00', 'HH24:MI'), '4', TO_TIMESTAMP('22:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('11:00', 'HH24:MI'), '5', TO_TIMESTAMP('13:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('20:00', 'HH24:MI'), '5', TO_TIMESTAMP('22:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('11:00', 'HH24:MI'), '6', TO_TIMESTAMP('13:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('20:00', 'HH24:MI'), '6', TO_TIMESTAMP('22:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('11:00', 'HH24:MI'), '7', TO_TIMESTAMP('13:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('boeuf.gourmand@bourgignon.fr', TO_TIMESTAMP('20:00', 'HH24:MI'), '7', TO_TIMESTAMP('22:30', 'HH24:MI'))
    /* La Caserne à Fromage */
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('caserne.fromage@lafondue.fr', TO_TIMESTAMP('10:00', 'HH24:MI'), '2', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('caserne.fromage@lafondue.fr', TO_TIMESTAMP('10:00', 'HH24:MI'), '3', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('caserne.fromage@lafondue.fr', TO_TIMESTAMP('10:00', 'HH24:MI'), '4', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('caserne.fromage@lafondue.fr', TO_TIMESTAMP('10:00', 'HH24:MI'), '5', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('caserne.fromage@lafondue.fr', TO_TIMESTAMP('10:00', 'HH24:MI'), '6', TO_TIMESTAMP('14:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('caserne.fromage@lafondue.fr', TO_TIMESTAMP('10:00', 'HH24:MI'), '7', TO_TIMESTAMP('14:30', 'HH24:MI'))
    /* Chez Giovanni */
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.giovanni@pizzalpes.it', TO_TIMESTAMP('18:30', 'HH24:MI'), '2', TO_TIMESTAMP('23:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.giovanni@pizzalpes.it', TO_TIMESTAMP('18:30', 'HH24:MI'), '3', TO_TIMESTAMP('23:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.giovanni@pizzalpes.it', TO_TIMESTAMP('18:30', 'HH24:MI'), '4', TO_TIMESTAMP('23:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.giovanni@pizzalpes.it', TO_TIMESTAMP('18:30', 'HH24:MI'), '5', TO_TIMESTAMP('23:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.giovanni@pizzalpes.it', TO_TIMESTAMP('18:30', 'HH24:MI'), '6', TO_TIMESTAMP('23:30', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('chez.giovanni@pizzalpes.it', TO_TIMESTAMP('18:30', 'HH24:MI'), '7', TO_TIMESTAMP('23:30', 'HH24:MI'))
    /* Burger & Cie */
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '2', TO_TIMESTAMP('22:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '3', TO_TIMESTAMP('22:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '4', TO_TIMESTAMP('22:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '5', TO_TIMESTAMP('22:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '6', TO_TIMESTAMP('22:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '7', TO_TIMESTAMP('22:00', 'HH24:MI'))
    INTO Creneau(email, heureOuverture, jour, heureFermeture) VALUES ('burger.cie@doublecheese.us', TO_TIMESTAMP('09:00', 'HH24:MI'), '1', TO_TIMESTAMP('22:00', 'HH24:MI'))
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    /* Chez Li */
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.li@buffets-volonte.com', 1, 'Poulet impérial', 'Poulet coupé en dés, piment séché, cacahuètes frites', 14.30)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.li@buffets-volonte.com', 2, 'Tofu ma po', 'Goût épicé et piquant, soupe épicé de boeuf et d''oignon vert', 11.70)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.li@buffets-volonte.com', 3, 'Porc de Sichuan', 'Porc sauté à la poêle, bouillon de viande, riz', 17.80)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.li@buffets-volonte.com', 4, 'Nouilles sautées', 'Nouilles, viande, oignons, céleri', 9.10)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.li@buffets-volonte.com', 5, 'Rouleaux de printemps', 'Légumes chinois, crêpe de riz frites, viande', 15.60)
    /* Au Boeuf Gourmand */
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('boeuf.gourmand@bourgignon.fr', 1, 'Boeuf Bourgignon', 'Boeuf, vin rouge, champignon', 23.30)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 'Roti de boeuf aux petits légumes', 'Boeuf, carottes, moutardes', 25.60)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('boeuf.gourmand@bourgignon.fr', 3, 'Macaronis et boulettes de boeuf aux carottes', 'Macaronis, boeuf, carottes', 19.20)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('boeuf.gourmand@bourgignon.fr', 4, 'Pavé de boeuf grillé sur purée de petits pois', 'Boeuf, petits pois, vinaigre de vin, volaille', 26.80)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('boeuf.gourmand@bourgignon.fr', 5, 'Boeuf braisé à la bière', 'Boeuf, carottes, ail, bouillon de boeuf, bière régionale', 27)
    /* La Caserne à Fromage */
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('caserne.fromage@lafondue.fr', 1, 'Raclette', 'Charcuterie régionale, pommes de terre, salade, fromage à raclette', 17)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('caserne.fromage@lafondue.fr', 2, 'Fondue savoyarde', 'Fromage à fondue, vin blanc, charcuterie, pain', 27)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('caserne.fromage@lafondue.fr', 3, 'Tartiflette', 'Pommes de terre, crème, lardon, oignons, Reblochon de nos régions', 13)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('caserne.fromage@lafondue.fr', 4, 'Croziflette', 'Crozets, crème, lardon, oignons, Reblochon de nos régions', 19)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('caserne.fromage@lafondue.fr', 5, 'Camembert rôti', 'Pomme de terre, camembert, vin blanc, ail', 16)
    /* Chez Giovanni */
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.giovanni@pizzalpes.it', 1, 'Pizza 4 fromages', 'Reblochon, Saint Marcelain, Comté, Roquefort', 15.30)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.giovanni@pizzalpes.it', 2, 'Pizza napolitaine', 'Sauce tomate, Mozzarella', 9.60)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.giovanni@pizzalpes.it', 3, 'Regina', 'Champignons, Mozzarella, jambon', 11.20)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.giovanni@pizzalpes.it', 4, 'Calzone', 'Champignons, Gruyère, Origan, jambon, olives', 14.30)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('chez.giovanni@pizzalpes.it', 5, 'Margherita', 'Tomate, Mozarella, Basilic', 8.40)
    /* Burger & Cie */
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('burger.cie@doublecheese.us', 1, 'Burger auvergnat maison', 'Salade, steak haché, bleu d''auverge', 15.60)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('burger.cie@doublecheese.us', 2, 'Burger Raclette', 'Steak haché, salade, tomate, oignon rouge, fromage à raclette, moutarde', 16.10)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('burger.cie@doublecheese.us', 3, 'Burger au magret de canard fumé', 'Confit d''oignon, magret de canard fumé, laitue, mayonnaise', 19.30)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('burger.cie@doublecheese.us', 4, 'Burger au Saumon et galettes de pommes de terre', 'Galette de pomme de terre, steak de saumon, citron, fines herbes', 21.40)
    INTO Plat(email, noPlat, nom, description, prix) VALUES ('burger.cie@doublecheese.us', 5, 'Burger indien au poulet, naan et raita', 'Poulet, pâte tikka, concombre, corriandre, menthe, pain naan', 16.70)
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    INTO Allergene(allergene) VALUES ('Gluten')
    INTO Allergene(allergene) VALUES ('Lactose')
    INTO Allergene(allergene) VALUES ('Arachides')
    INTO Allergene(allergene) VALUES ('Poisson')
    INTO Allergene(allergene) VALUES ('Oeuf')
    INTO Allergene(allergene) VALUES ('Moutarde')
    INTO Allergene(allergene) VALUES ('Fruits à coque')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    /* Chez Li */
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('chez.li@buffets-volonte.com', 1, 'Arachides')
    /* Au Boeuf Gourmand */
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('boeuf.gourmand@bourgignon.fr', 2, 'Moutarde')
    /* La Caserne à Fromage */
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('caserne.fromage@lafondue.fr', 1, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('caserne.fromage@lafondue.fr', 2, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('caserne.fromage@lafondue.fr', 3, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('caserne.fromage@lafondue.fr', 4, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('caserne.fromage@lafondue.fr', 5, 'Lactose')
    /* Chez Giovanni */
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('chez.giovanni@pizzalpes.it', 1, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('chez.giovanni@pizzalpes.it', 2, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('chez.giovanni@pizzalpes.it', 3, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('chez.giovanni@pizzalpes.it', 4, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('chez.giovanni@pizzalpes.it', 5, 'Lactose')
    /* Burger & Cie */
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('burger.cie@doublecheese.us', 1, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('burger.cie@doublecheese.us', 2, 'Lactose')
    INTO AllergenesPlat(email, noPlat, allergene) VALUES ('burger.cie@doublecheese.us', 3, 'Moutarde')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    INTO StatutCommande(statut) VALUES ('Attente de confirmation') 
    INTO StatutCommande(statut) VALUES ('Validé') 
    INTO StatutCommande(statut) VALUES ('Disponible') 
    INTO StatutCommande(statut) VALUES ('En livraison') 
    INTO StatutCommande(statut) VALUES ('Annulé client') 
    INTO StatutCommande(statut) VALUES ('Annulé restaurant') 
    INTO StatutCommande(statut) VALUES ('Terminé')
SELECT 1 FROM DUAL;
COMMIT;

INSERT ALL
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (1, 'jean.neymard@gmail.com', 'VGJKx,kmsc1564', 'Neymard', 'Jean', '134 Avenue des Oliviers')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (2, 'pierre.papiéciso@gmail.com', 'KHxbsLJHK896J', 'Papiéciso', 'Pierre', '12 rue des Lilas')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (3, 'marc.hyse@gmail.com', 'kj86HBHJVK', 'Hyse', 'Marc', '66 bis Cours Charles de Gaulle')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (4, 'martine.alaplage@gmail.com', 'CFTL9875ndks', 'Alaplage', 'Martine', '53 rue des Églantiers')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (5, 'abel.auboisdormand@gmail.com', '56182*JJJd', 'Auboisdormand', 'Abel', '78 rue des trois fontaines')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (6, 'aubin.sahalor@gmail.com', '78ttg*524', 'Aubin', 'Sahalor', '231 Avenue des Alpes')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (7, 'cecile.ancieu@gmail.com', 'KbhdsJNncjz', 'Cécile', 'Ancieu', '43 rue de la République')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (8, 'maggy.tarécassé@gmail.com', 'AZERTY4321', 'Tarécassé', 'Maggy', '23 rue de la Grande Place')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (9, 'paul.amploy@gmail.com', 'jnzdBBSznùza', 'Paul', 'Amploy', '98 chemin des chataîgniers')
    INTO Client(noClient, email, mdp, nom, prenom, adresse) VALUES (10, 'sandy.kilos@gmail.com', 'AEZtzc651', 'Kilos', 'Sandy', '88 Avenue des Platanes')
SELECT 1 FROM DUAL;
COMMIT;

/*
INSERTION DES COMMANDES DANS insert_commandes.sql
*/