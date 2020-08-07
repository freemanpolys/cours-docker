# Objectif du TP:
Création d'une image nommée *apache-php* et dont le tag est 1.0.0
# Utiliser l'image de base ubuntu version 18.04
# Ajouter la varaible d'environnement ci-dessous pour éviter que l'installation des paquets avec apt-get ne soit interactif
DEBIAN_FRONTEND=noninteractive
# Installer le serveur apache et les librairies php 
apt-get update

apt-get -y upgrade

apt-get -y install apache2 php libapache2-mod-php php-gd  php-curl php-json php-mbstring php-mysql php-xml php-xsl php-zip
# Copier le fichier index.php du dossier site dans  /var/www/html
# Supprimer le fichier /var/www/html/index.html
Apache affiche par défaut le fichier index.html. Pour que notre fichier index.php soit afficher, il faut soit reconfigurer apache ou supprimer le fichier index.html
# Donner les droits à l'utilisateur www-data sur le répertoire racine
chown -R www-data:www-data /var/www/html
# Exposer le port 80
# La commande pour démarrer le processus apache est la suivante 
/usr/sbin/apache2ctl -D FOREGROUND
