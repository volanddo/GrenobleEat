'chez.li@buffets-volonte.com', 'boeuf.gourmand@bourgignon.fr', 'caserne.fromage@lafondue.fr', 'chez.giovanni@pizzalpes.it', 'burger.cie@doublecheese.us'

-- Vérifier le user + mdp
SELECT * FROM Client WHERE email = ? AND mdp = ?;

-- Récupérer toutes les catégories
SELECT * FROM Categories;

-- Filtrer les restaurants donnés en fonction d'une liste de catégories
SELECT DISTINCT email FROM CategoriesRestaurant WHERE email IN (?) AND categorie IN (?);

-- Filtrer les restaurants donnés par jour
SELECT DISTINCT email FROM Creneau WHERE jour = ? AND email IN (?);
-- Filtrer les restaurants donnés par heure
SELECT DISTINCT email FROM Creneau WHERE heureOuverture <= TO_TIMESTAMP(?, 'HH24:MI') AND heureFermeture >= TO_TIMESTAMP(?, 'HH24:MI') AND email IN (?);
-- Filtrer les restaurants donnés par jour et heure (créneau)
SELECT DISTINCT email FROM Creneau WHERE jour = ? AND heureOuverture <= TO_TIMESTAMP(?, 'HH24:MI') AND heureFermeture >= TO_TIMESTAMP(?, 'HH24:MI') AND email IN (?);

-- Filtrer les restaurants donnés en fonction d'un type de commande
SELECT DISTINCT email FROM PriseEnChargeRestaurant WHERE type = ? AND email IN (?);

-- Filtrer les restaurants donnés en fonction de s'ils ont un plat moins cher que le prix donné
SELECT DISTINCT email FROM Plat WHERE prix <= ? AND email IN (?);

-- Récupérer le nombre de places occupées dans un restaurant donné à une date donnée
SELECT SUM(NbPersonnes) FROM COMMANDESURPLACE INNER JOIN COMMANDE ON COMMANDESURPLACE.NOCOMMANDE = COMMANDE.NOCOMMANDE
    WHERE to_char(CAST(CommandeSurPlace.HeureArrivee AS DATE),'WW') = to_char(to_date(?,'YYYY-MM-DD HH24:MI'),'WW')
    AND to_char(CAST(CommandeSurPlace.HeureArrivee AS DATE),'D') = to_char(to_date(?,'YYYY-MM-DD HH24:MI'),'D')
    AND (
        SELECT heureOuverture FROM Creneau WHERE Creneau.email = ? AND jour = to_char(CAST(CommandeSurPlace.HeureArrivee AS DATE),'D') AND to_char(CAST(CommandeSurPlace.HeureArrivee AS DATE), 'HH24:MI') BETWEEN to_char(cast(heureOuverture as date), 'HH24:MI') AND to_char(cast(heureFermeture as date), 'HH24:MI')
        ) = (
        SELECT heureOuverture FROM Creneau WHERE Creneau.email = ? AND jour = to_char(to_date(?,'YYYY-MM-DD HH24:MI'),'D') AND to_char(cast(TO_TImestamp(?,'YYYY-MM-DD HH24:MI') as date), 'HH24:MI') BETWEEN to_char(cast(heureOuverture as date), 'HH24:MI') AND to_char(cast(heureFermeture as date), 'HH24:MI')
        )
    AND Commande.email = ?;

-- Récupérer le nombre de place assise dans un restaurant donné
SELECT nbPlacesAssises FROM Restaurant WHERE email = ?;


-- Récupérer la note moyenne des évaluations pour un restaurant donné
SELECT AVG(note) FROM EVALUATION INNER JOIN COMMANDE ON EVALUATION.noCommande = COMMANDE.noCommande WHERE email = ?;

-- Récupérer la quantité et le prix d'un plat pour tout le contenu d'une commande donnée
SELECT quantite, prix FROM CONTENUCOMMANDE
INNER JOIN PLAT ON CONTENUCOMMANDE.noPlat = PLAT.noPlat AND CONTENUCOMMANDE.email = PLAT.email
INNER JOIN COMMANDE ON CONTENUCOMMANDE.noCommande = COMMANDE.noCommande
WHERE COMMANDE.noCommande = ?

-- Recommandation par catégorie sur l'historique des commandes pour un client donné
-- Notes moyennes des categories par utilisateur
-- SELECT AVG(note), categorie FROM CATEGORIESRESTAURANT
-- INNER JOIN COMMANDE ON COMMANDE.email = CATEGORIESRESTAURANT.email
-- INNER JOIN EVALUATION ON EVALUATION.noCommande = COMMANDE.noCommande
-- WHERE noClient = 5
-- GROUP BY categorie
-- ORDER BY AVG(note) DESC;
-- -- Nombre de notes par catégories
-- SELECT COUNT(note), categorie FROM EVALUATION
-- INNER JOIN COMMANDE ON EVALUATION.noCommande = COMMANDE.noCommande
-- INNER JOIN CATEGORIESRESTAURANT ON COMMANDE.email = CATEGORIESRESTAURANT.email
-- GROUP BY categorie
-- ORDER BY COUNT(note) DESC;
SELECT noteM.categorie, noteMoyenne, nombreNotes FROM (
    SELECT AVG(note) as noteMoyenne, categorie FROM CATEGORIESRESTAURANT
    INNER JOIN COMMANDE ON COMMANDE.email = CATEGORIESRESTAURANT.email
    INNER JOIN EVALUATION ON EVALUATION.noCommande = COMMANDE.noCommande
    WHERE noClient = ?
    GROUP BY categorie
    ORDER BY AVG(note) DESC
    ) noteM INNER JOIN (
    SELECT COUNT(note) as nombreNotes, categorie FROM EVALUATION
    INNER JOIN COMMANDE ON EVALUATION.noCommande = COMMANDE.noCommande
    INNER JOIN CATEGORIESRESTAURANT ON COMMANDE.email = CATEGORIESRESTAURANT.email
    GROUP BY categorie
    ORDER BY COUNT(note) DESC
    ) noteT ON noteM.categorie = noteT.categorie;

-- Choix des restaurants par leur note moyenne
SELECT email, AVG(note) FROM EVALUATION
INNER JOIN COMMANDE ON EVALUATION.noCommande = COMMANDE.noCommande
GROUP BY email
ORDER BY AVG(note) DESC;

-- Récupérer toutes les commandes d'un restaurant
SELECT * FROM Commande WHERE email = ?;

-- Récupérer toutes les commandes en cours d'un restaurant
SELECT * FROM Commande WHERE statut IN ('Disponible', 'Validé', 'Attente de confirmation') AND email = ?;

-- Modifier le statut d'une commande
UPDATE Commande SET statut = ? WHERE noCommande = ?;

-- Récupérer le statut d'une commande donnée (pour tester la requête précédente)
SELECT statut FROM Commande WHERE noCommande = ?;

-- Récupérer toutes les commandes à livrer
SELECT Commande.* FROM Commande 
INNER JOIN CommandeALivrer ON CommandeALivrer.noCommande = Commande.noCommande
WHERE statut = 'Disponible';

-- Récupérer toutes les informations que cherche le livreur pour une commande donnée
SELECT Commande.noCommande, email, adresseLivraison, description, Commande.dateHeure FROM Commande
INNER JOIN CommandeALivrer ON CommandeALivrer.noCommande = Commande.noCommande
INNER JOIN InformationLivreur ON InformationLivreur.noCommande = Commande.noCommande
INNER JOIN HeureLivraison ON HeureLivraison.noCommande = Commande.noCommande
WHERE Commande.noCommande = ?;

-- Récupérer toutes les évaluations associés à un restaurant
SELECT Commande.noCommande, note, avis FROM Evaluation
INNER JOIN Commande ON Commande.noCommande = Evaluation.noCommande
LEFT JOIN AvisEvaluation ON Evaluation.noCommande = AvisEvaluation.noCommande
WHERE email = ?;

-- Droit à l'oubli, on oublie les données personnelles du client
UPDATE Client
SET email = 'anonyme', mdp = 'anonyme', prenom = 'anonyme', nom = 'anonyme', adresse = 'anonyme'
WHERE noClient = ?;

-- Récupérer le numéro de la prochaine commmande créée
SELECT MAX(noCommande) + 1 FROM Commande;

-- Création d'une commande à emporter pour un restaurant donné, un client donné, des plats données, des quantités données pour chacun des plats
INSERT ALL -- TODO: à corriger
    INTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES (SELECT MAX(noCommande) + 1 FROM Commande, CURRENT_TIMESTAMP, ?, ?, 'A emporter', 'Attente de confirmation')
    DECLARE @Counter INT 
    SET @Counter=1
    WHILE ( @Counter <= 10) -- Le ? correspond aux nombres de plats commandés
    BEGIN
	    INTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES (?, ?, SELECT MAX(noCommande) + 1 FROM Commande, ?)
    END
SELECT 1 FROM DUAL;
COMMIT;

-- Ajout d'une évaluation (d'une note) pour une commande donnée avec avis
INSERT ALL
    INTO Evaluation(noCommande, dateHeure, note) VALUES (?, CURRENT_TIMESTAMP, ?)
    INTO AvisEvaluation(noCommande, avis) VALUES (?, ?)
SELECT 1 FROM DUAL;
COMMIT;

-- Ajout d'une évaluation (d'une note) pour une commande donnée sans avis
INSERT ALL
    INTO Evaluation(noCommande, dateHeure, note) VALUES (?, CURRENT_TIMESTAMP, ?)
SELECT 1 FROM DUAL;
COMMIT;
