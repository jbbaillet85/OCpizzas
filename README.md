# OCpizzas

Logiciels utilisés:
https://github.com/jgraph/drawio-desktop
https://www.mysql.com/fr/



Sur votre terminal:

    Cloner le projet: git clone https://github.com/jbbaillet85/OCpizzas.git

    Créer un environnement virtuel dans le dossier OCpizzas:

    windows: py -3.8 -m venv env
    mac/linux: python3 -m venv env

    Activer l'environnement virtuel:

    windows: env\Scripts\activate
    mac/linux: source/bin/activate

    Installer les dépendances à partir du fichier requirements.txt pip3 install -r requirements.txt

    executer le serveur

    linux: sudo service mysql start
    windows à partir du dossier mysql/bin: ./mysqld.exe --console

    executer client mysql

    linux: sudo mysql -u root -p
    windows: /mysql.exe -u root -p

    Créer une base de donnée avec le client mysql:

    CREATE DATABASE nombase
