# !/usr/bin/env python
# -*- coding: utf-8 -*-

import mysql.connector
from ConnexionBDD import *

class Utilisateur(ConnexionBDD):
    def __init__(self, user, password, host, database, prenom, nom, couriel, passewordHash):
        """[summary]

        Args:
            user ([type]): [description]
            password ([type]): [description]
            host ([type]): [description]
            database ([type]): [description]
            prenom ([type]): [description]
            nom ([type]): [description]
            couriel ([type]): [description]
            passewordHash ([type]): [description]
        """
        ConnexionBDD.__init__(self, user, password, host, database)
        self.prenom = prenom
        self.nom = nom
        self.couriel = couriel
        self.passewordHash = passewordHash


def insertClient():
    queryInsertClient = f"INSERT INTO client VALUES ('{self.prenom}','{self.nom}', '{self.couriel}','{self.passewordHash}');"
    self.cursor.execute(queryInsertClient)
    self.connexion.commit()

def consulterProduits():
    queryConsulterProduit = f"SELECT * FROM produit"
    listeProduits = self.cursor.execute(queryConsulterProduit)
    print(listeProduits)
    return listeProduits

def selectionnerProduit(id):
    querySelecionnerProduit = f"SELECT id FROM produit WHERE id = '{id}'"
    self.cursor.execute(querySelecionnerProduit)
    return fetchall()


if __name__== "main":
    client1 = Client("root", "", "localhost", "ocpyzzas", "Jean-Baptiste", "Baillet", "jbbaillet@gmail.com", "avec56")
    client1.insertClient()
    client1.consulterProduits()