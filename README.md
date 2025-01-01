# Tifosi Database Project

## Description
Ce projet consiste à concevoir une base de données pour le restaurant de street-food italien **Tifosi**. La base de données est utilisée pour gérer les focaccias, leurs ingrédients, les marques, et les boissons.

## Structure du projet
- `sql/backup_tifosi.sql` : Sauvegarde complète de la base de données, incluant la création des tables, les relations, et les données tests.

## Contenu de la base de données
### Tables principales
- **focaccia** : Informations sur les focaccias (nom, description, prix).
- **ingredient** : Liste des ingrédients.
- **marque** : Marques associées aux ingrédients ou boissons.
- **boisson** : Liste des boissons disponibles.
- **focaccia_ingredient** : Relation entre les focaccias et leurs ingrédients.
- **focaccia_boisson** : Relation entre les focaccias et les boissons.

## Instructions
### Recréer la base de données
1. Importez le fichier `sql/backup_tifosi.sql` dans votre serveur MySQL via phpMyAdmin.
2. Cela recréera automatiquement les tables, insérera les données et configurera les relations.

### Technologies utilisées
- MySQL
- phpMyAdmin (gestion de la base)

