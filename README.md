# Projet OCpizzas

![logo ocpizzas](documentation/ocpizzas.jpeg)

## Logiciels utilisés:

https://github.com/jgraph/drawio-desktop

https://www.mysql.com/fr/



## Sur votre terminal:

1. Cloner le projet: git clone https://github.com/jbbaillet85/OCpizzas.git

2. Créer un environnement virtuel dans le dossier OCpizzas:

    windows: py -3.8 -m venv env

    mac/linux: python3 -m venv env

3. Activer l'environnement virtuel:

    windows: env\Scripts\activate

    mac/linux: source/bin/activate

4. Installer les dépendances à partir du fichier [requirements.txt](requirements.txt):

    pip3 install -r requirements.txt

5. executer le serveur:

    linux: sudo service mysql start

    windows à partir du dossier mysql/bin: ./mysqld.exe --console

6. executer client mysql

    linux: sudo mysql -u root -p

    windows: /mysql.exe -u root -p

7. Créer une base de donnée avec le client mysql:

    source SQL/script.sql
