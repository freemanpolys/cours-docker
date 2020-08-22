# Objectif du TP:
Installer un serveur mysql en utlisant un volume pour persister les données.

Interconnecter une application (générateur d'uuid) avec la base de données mysql installée.

# Installation de mysql - Volume
Créer un volume nommé de mysql-uuid

# Installation de mysql
A partir de l'image docker [mysql](https://hub.docker.com/_/mysql) créer un conteneur du nom de mysql qui utilise le volume mysql-uuid pour persister les données de la base de donnés (/var/lib/mysql).

L'utilisateur de la base de données devra être nommé *garkado* et son mot de passe *docker* (utiliser les variables d'environnement MYSQL_USER et MYSQL_PASSWORD)

Le nom de la base de données à créer est *docker_tp* (utiliser la variable d'environnement MYSQL_DATABASE)

# Créer le réseau garkado-net
Créer le réseau bridge *garkado-net* pour interconnecter la base de données et l'application

Connecter la base de données au réseau garkado-net.

# Création de l'image l'application de génaration d'uuid
Le dossier uuid-service contient le code de l'application de génértation d'uuid.

Les configurations de la base de donnée se trouvent dans le fichier conf/app.conf.

Grâce au Dockerfile présent dans le dossier, construisez une image nommée *docker-tp*.

# Déploiement de l'application
Démarrer un conteneur à partir de l'image docker-tp en l'ajoutant dans le réseau garkado-net puis en mappant sont port 8080.

Consulter l'url http://localhost:8080 . A chaque fois que la page est actualisée, une nouvelle id est générée, stockée dans la base de données puis affichée à l'écran. Vous devez donc avoir une page comme sur la capture ci-dessous.
![UUID Generator](uuid-generator.png)








