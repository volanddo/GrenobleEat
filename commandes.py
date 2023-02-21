#! /usr/bin/env python3

from datetime import datetime, timedelta
import random
import time

noCommande = 1

clients = range(1, 11)
restaurants = ['chez.li@buffets-volonte.com', 'boeuf.gourmand@bourgignon.fr',
               'caserne.fromage@lafondue.fr', 'chez.giovanni@pizzalpes.it', 'burger.cie@doublecheese.us']
plats = {
    'chez.li@buffets-volonte.com': range(1, 6),
    'boeuf.gourmand@bourgignon.fr': range(1, 6),
    'caserne.fromage@lafondue.fr': range(1, 6),
    'chez.giovanni@pizzalpes.it': range(1, 6),
    'burger.cie@doublecheese.us': range(1, 6)
}
adresses = {
    1: '134 Avenue des Oliviers',
    2: '12 rue des Lilas',
    3: '66 bis Cours Charles de Gaulle',
    4: '53 rue des Églantiers',
    5: '78 rue des trois fontaines',
    6: '231 Avenue des Alpes',
    7: '43 rue de la République',
    8: '23 rue de la Grande Place',
    9: '98 chemin des chataîgniers',
    10: '88 Avenue des Platanes'
}
typesCommande = ['Sur place', 'A emporter', 'Livraison']
informationsLivreur = ['2ème étage porte de droite', 'Déposez devant la porte',
                       'Le code du portail est 1567', 'La sonnette est à gauche de la boite aux lettres']
avis = {
    0: ["Catastrophique", "Affreux", "Immonde", "Infâme"],
    1: ["Minable", "Service long et irrespectueux"],
    2: ["Pas terrible", "Y a mieux"],
    3: ["Bien mais service vraiment trop long", "Bien mais vraiment trop cher"],
    4: ["Bien mais les couverts sont pas terribles", "Parfait mais un peu cher"],
    5: ["Génial", "Je recommande"]
}
statutsCommande = ['Attente de confirmation', 'Validé', 'Disponible',
                   'En livraison', 'Annulé client', 'Annulé restaurant', 'Terminé']
creneaux = {
    'chez.li@buffets-volonte.com': [
        ('12:30', 2, '14:30'),
        ('19:00', 2, '23:00'),
        ('12:30', 3, '14:30'),
        ('19:00', 3, '23:00'),
        ('12:30', 4, '14:30'),
        ('19:00', 4, '23:00'),
        ('12:30', 5, '14:30'),
        ('19:00', 5, '23:00'),
        ('12:30', 6, '14:30'),
        ('19:00', 6, '23:00'),
        ('12:30', 7, '14:30')
    ],
    'boeuf.gourmand@bourgignon.fr': [
        ('12:30', 2, '14:30'),
        ('19:00', 2, '23:00'),
        ('12:30', 3, '14:30'),
        ('19:00', 3, '23:00'),
        ('12:30', 4, '14:30'),
        ('19:00', 4, '23:00'),
        ('12:30', 5, '14:30'),
        ('19:00', 5, '23:00'),
        ('12:30', 6, '14:30'),
        ('19:00', 6, '23:00'),
        ('12:30', 7, '14:30')
    ],
    'caserne.fromage@lafondue.fr': [
        ('12:30', 2, '14:30'),
        ('19:00', 2, '23:00'),
        ('12:30', 3, '14:30'),
        ('19:00', 3, '23:00'),
        ('12:30', 4, '14:30'),
        ('19:00', 4, '23:00'),
        ('12:30', 5, '14:30'),
        ('19:00', 5, '23:00'),
        ('12:30', 6, '14:30'),
        ('19:00', 6, '23:00'),
        ('12:30', 7, '14:30')
    ],
    'chez.giovanni@pizzalpes.it': [
        ('12:30', 2, '14:30'),
        ('19:00', 2, '23:00'),
        ('12:30', 3, '14:30'),
        ('19:00', 3, '23:00'),
        ('12:30', 4, '14:30'),
        ('19:00', 4, '23:00'),
        ('12:30', 5, '14:30'),
        ('19:00', 5, '23:00'),
        ('12:30', 6, '14:30'),
        ('19:00', 6, '23:00'),
        ('12:30', 7, '14:30')
    ],
    'burger.cie@doublecheese.us': [
        ('12:30', 2, '14:30'),
        ('19:00', 2, '23:00'),
        ('12:30', 3, '14:30'),
        ('19:00', 3, '23:00'),
        ('12:30', 4, '14:30'),
        ('19:00', 4, '23:00'),
        ('12:30', 5, '14:30'),
        ('19:00', 5, '23:00'),
        ('12:30', 6, '14:30'),
        ('19:00', 6, '23:00'),
        ('12:30', 7, '14:30')
    ]
}
commandes_restaurant = {
    'chez.li@buffets-volonte.com': 0,
    'boeuf.gourmand@bourgignon.fr': 0,
    'caserne.fromage@lafondue.fr': 0,
    'chez.giovanni@pizzalpes.it': 0,
    'burger.cie@doublecheese.us': 0
}
commandes_type = {
    'Sur place': 0,
    'A emporter': 0,
    'Livraison': 0
}

SQLDateFormat = "YYYY-MM-DD HH24:MI"


def str_time_prop(start, end, time_format, prop):
    stime = time.mktime(time.strptime(start, time_format))
    etime = time.mktime(time.strptime(end, time_format))
    ptime = stime + prop * (etime - stime)
    return ptime


def random_date(start, end, prop):
    return str_time_prop(start, end, '%d/%m/%Y %H:%M', prop)


def date_to_string(date=0):
    return time.strftime("%Y-%m-%d %H:%M", time.localtime(date))


def parse_creneau(creneau=('', '', '')):
    start = int(creneau[0].split(':')[0]) * 60 + int(creneau[0].split(':')[1])
    end = int(creneau[2].split(':')[0]) * 60 + int(creneau[2].split(':')[1])
    return (start, end - start)


def adjust_time_to_next_creneau(time, creneau):
    date = datetime.fromtimestamp(time)
    creneau_parsed = parse_creneau(creneau)
    total_minutes = creneau_parsed[0] + random.random() * creneau_parsed[1]
    hours = total_minutes // 60
    minutes = total_minutes % 60
    date = date.replace(hour=int(hours), minute=int(minutes))
    day = date.today().isoweekday() % 7 + 1
    date = date + timedelta(days=(7 - (day - creneau[1])))
    return datetime.timestamp(date)


def creerCommande(client=1):
    global noCommande, clients, restaurants, adresses, informationsLivreur, SQLDateFormat
    no = noCommande
    noCommande += 1
    date = random_date("01/11/2022 00:01", "23/11/2022 23:59", random.random())
    date = round(date)
    restaurant = random.choice(restaurants)
    creneau = random.choice(creneaux[restaurant])
    date = adjust_time_to_next_creneau(date, creneau)
    type = random.choice(typesCommande)
    if (random.randint(1, 3) > 1):
        statut = random.choice(statutsCommande)
    else:
        statut = 'Terminé'
    print(
        f"\tINTO Commande(noCommande, dateHeure, email, noClient, type, statut) VALUES ({no}, TO_TIMESTAMP('{date_to_string(date)}', '{SQLDateFormat}'), '{restaurant}', {client}, '{type}', '{statut}')")
    if (type == "Livraison"):
        adresse = adresses[client]
        print(
            f"\tINTO CommandeALivrer(noCommande, adresseLivraison) VALUES ({no}, '{adresse}')")
        if (random.randint(0, 1) == 1):
            message = random.choice(informationsLivreur)
            print(
                f"\tINTO InformationLivreur(noCommande, description) VALUES ({no}, '{message}')")
        date += random.randint(30 * 60, 120 * 60)
        print(
            f"\tINTO HeureLivraison(noCommande, dateHeure) VALUES ({no}, TO_TIMESTAMP('{date_to_string(date)}', '{SQLDateFormat}'))")
    if (type == 'Sur place'):
        nbPersonnes = random.randint(1, 15)
        creneau = random.choice(creneaux[restaurant])
        date += random.randint(30 * 60, 14 * 24 * 60 * 60)
        date = adjust_time_to_next_creneau(date, creneau)
        print(
            f"\tINTO CommandeSurPlace(noCommande, nbPersonnes, heureArrivee) VALUES ({no}, {nbPersonnes}, TO_TIMESTAMP('{date_to_string(date)}', '{SQLDateFormat}'))")
    return (no, restaurant, date, type, statut)


def creerContenu(commande=(1, ""), contenu = []):
    global plats
    plat = random.choice(plats[commande[1]])
    while plat in contenu:
        plat = random.choice(plats[commande[1]])
    quantite = random.randint(1, 6)
    print(
        f"\tINTO ContenuCommande(email, noPlat, noCommande, quantite) VALUES ('{commande[1]}', {plat}, {commande[0]}, {quantite})")
    contenu.append(plat)


def creerEvaluation(commande=(1, "")):
    global avis, SQLDateFormat
    note = random.randint(0, 5)
    ajoutDate = random.randint(30 * 60, 3 * 24 * 60 * 60)
    print(
        f"\tINTO Evaluation(noCommande, dateHeure, note) VALUES ({commande[0]}, TO_TIMESTAMP('{date_to_string(commande[2] + ajoutDate)}', '{SQLDateFormat}'), {note})")
    if (random.randint(0, 1) == 1):
        texteAvis = random.choice(avis[note])
        print(
            f"\tINTO AvisEvaluation(noCommande, avis) VALUES ({commande[0]}, '{texteAvis}')")


def main():
    global commandes_restaurant, commandes_type

    NOMBRE_COMMANDES_PAR_CLIENT = (3, 10)
    NOMBRE_PLAT_PAR_COMMANDE = (1, 3)

    print("INSERT ALL")
    for client in clients:
        for _ in range(random.randint(NOMBRE_COMMANDES_PAR_CLIENT[0], NOMBRE_COMMANDES_PAR_CLIENT[1])):
            commande = creerCommande(client)
            commandes_restaurant[commande[1]] += 1
            commandes_type[commande[3]] += 1
            contenu_commande = []
            for __ in range(random.randint(NOMBRE_PLAT_PAR_COMMANDE[0], NOMBRE_PLAT_PAR_COMMANDE[1])):
                creerContenu(commande, contenu_commande)
            if (random.randint(1, 4) > 1 and commande[4] == 'Terminé'):
                creerEvaluation(commande)
            print("")
    print("SELECT 1 FROM DUAL;")
    print("COMMIT;")

    print("")
    print(f"-- {noCommande - 1} commandes créées")
    print(f"-- {commandes_restaurant}")
    print(f"-- {commandes_type}")


if __name__ == "__main__":
    main()
