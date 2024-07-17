#!/bin/bash

# Fonction pour installer PostgreSQL
install_postgresql() {
  echo "Installation de PostgreSQL..."
  sudo dnf install -y postgresql-server postgresql-contrib

  echo "Initialisation de PostgreSQL..."
  sudo postgresql-setup --initdb

  echo "Démarrage de PostgreSQL..."
  sudo systemctl start postgresql

  echo "Activation de PostgreSQL au démarrage..."
  sudo systemctl enable postgresql

  echo "Vérification du statut de PostgreSQL..."
  sudo systemctl status postgresql
}

# Fonction pour installer MariaDB
install_mariadb() {
  echo "Installation de MariaDB..."
  sudo dnf install -y mariadb-server

  echo "Démarrage de MariaDB..."
  sudo systemctl start mariadb

  echo "Activation de MariaDB au démarrage..."
  sudo systemctl enable mariadb

  echo "Vérification du statut de MariaDB..."
  sudo systemctl status mariadb
}

# Fonction pour nettoyer les installations précédentes
cleanup_previous_installations() {
  echo "Arrêt de PostgreSQL et MariaDB..."
  sudo systemctl stop postgresql
  sudo systemctl stop mariadb

  echo "Suppression des paquets PostgreSQL et MariaDB..."
  sudo dnf remove -y postgresql-server postgresql-contrib mariadb-server

  echo "Suppression des répertoires de données PostgreSQL et MariaDB..."
  sudo rm -rf /var/lib/pgsql/data
  sudo rm -rf /var/lib/mysql
}

# Exécuter les fonctions
cleanup_previous_installations
install_postgresql
install_mariadb

echo "Installation et configuration de PostgreSQL et MariaDB terminées."
