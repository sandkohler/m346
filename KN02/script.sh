#!/bin/bash

# Pakete/Software aktualisieren
sudo apt update

# Apache Webserver installieren
sudo apt install apache2

# PHP Applikationsserver installieren
sudo apt install php

# PHP-Erweiterung für Apache installieren
sudo apt install libapache2-mod-php

# Datenbankserver installieren
sudo apt install mariadb-server

# PHP-Modul für Datenbank-Abfragen installieren
sudo apt install php-mysqli

# Neuen Benutzer erstellen
sudo mysql -sfu root -e "GRANT ALL ON *.* TO 'admin'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;"

# DB Server neu starten
sudo systemctl restart mariadb.service

# Webserver neu starten
sudo systemctl restart apache2

# In das Home-Verzeichnis wechseln
cd ~

# Repository klonen
git clone https://gitlab.com/ch-tbz-it/Stud/m346/m346scripts.git

# PHP-Dateien in das Verzeichnis des Webservers kopieren
sudo cp ./m346scripts/KN01/*.php /var/www/html/
