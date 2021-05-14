# !/usr/bin/env python
# -*- coding: utf-8 -*-

import mysql.connector


class ConnexionBDD:
    def __init__(self, user, password, host, database):
        """Class to connect to the server and create a cursor
        Args:
            user (str): database username
            password (str): database user password
            host (str): name where the database is hosted
            database (str): database name
        """
        self.user = user
        self.password = password
        self.host = host
        self.database = database
        self.connexion = self.connect_db()
        self.cursor = self.connexion.cursor()

    def connect_db(self):
        """function to connect to the server
        Returns:
            MySQLConnection: Connection to the server
        """
        try:
            connexion = mysql.connector.connect(
                user=self.user,
                password=self.password,
                host=self.host,
                database=self.database)
            return connexion
        except mysql.connector.errors.ProgrammingError:
            print("Vous n'êtes pas connecté")

    def get_attribut(self, query):
        """function to transmit SQL commands to the server
        Args:
            query (str): SQL command
        Returns:
            [tuple]: the result of the SQL query
        """
        self.cursor.execute(query)
        attribut = self.cursor.fetchall()
        attribut = str(attribut)[1:-1]
        return attribut
    
    def passerCommande(self,status_id:int, client_id:int, date, montant, pizzeria_id, mode_paiement_id):
        produit_id = input("entrez votre choix de produit: ")
        commande_id = input(("entrez votre commande_id: "))
        query_ligne_commande = "INSERT INTO ligne_commande VALUES ('{produit_id}', '{commande_id}')"
        
    
    def plusieursPizzasDansCommande(self, commande_id):
        query = f"SELECT * FROM ligne_commande WHERE commande_id = '{commande_id}'"
        self.cursor.execute(query)
        resultat= self.cursor.fetchall()
        return resultat
    
    def retrouverContenusCommande(self, id_commande:int):
        query = f"SELECT * FROM commande WHERE id = '{id_commande}'"
        self.cursor.execute(query)
        resultat = self.cursor.fetchall()
        return resultat
    
    def afficherStatusCommandes(self, pizzeria_id, status_id):
        query = f"SELECT * FROM commande WHERE pizzeria_id = '{pizzeria_id}' AND status_id = '{status_id}'"
        self.cursor.execute(query)
        resultat = self.cursor.fetchall()
        return resultat
    
    def afficherAdresseLivraison(self, adresse):
        query = f"SELECT * FROM adresse WHERE "
    
    def afficherPrixPayePourUnePizza(self, prix_pizzas):
        query = f"SELECT "


if __name__ == "__main__":
    connexion = ConnexionBDD("root", "", "localhost", "ocpizzas")
    connexion.connect_db()
    print(connexion.plusieursPizzasDansCommande(3))
    print(connexion.retrouverContenusCommande(3))
    print(connexion.afficherStatusCommandes(2, 2))