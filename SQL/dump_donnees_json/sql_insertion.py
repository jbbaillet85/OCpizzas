import mysql.connector
import json

import PackageFonctionnalitesClient.ConnexionBDD

class InsertData(PackageFonctionnalitesClient.ConnexionBDD):
    def __init__(self, table_name, data_path):
        PackageFonctionnalitesClient.ConnexionBDD__init__()
        self.table_name = table_name
        self.data_path = data_path
    
    def insert_data():
        query = f"INSERT INTO '{self.table_name} VALUES '{self.data_path}"
        with open (self.data_path) as fiel:
            data = json.loads(fiel)
        for values in data:
            line = InsertData(self.table_name, self.data_path)
            
if __name__=="__main__":
    adresse = InsertData(adresse, "SQL\dump_donnees_json\adresse.json")
    adresse.insert_data()
        