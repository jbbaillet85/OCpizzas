# !/usr/bin/env python
# -*- coding: utf-8 -*-

import mysql.connector
from ConnexionBDD import *

class Client(ConnexionBDD):
    def __init__(self, user, password, host, database, prenom, nom):
        ConnexionBDD.__init__(self, user, password, host, database)
        self.prenom = prenom
        self.nom = nom


def insertClient():
    queryInsertClient = f"INSERT INTO client VALUES ('{self.prenom}','{self.nom}');"
    self.cursor.execute(queryInsertClient)
    self.connexion.commit()


if __name__== "main":
    client1 = Client("root", "", "localhost", "ocpyzzas", "Jean-Baptiste", "Baillet")
    client1.insertClient()