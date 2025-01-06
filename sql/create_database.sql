-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Table focaccia
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(255) NOT NULL,
    description TEXT,
    prix DECIMAL(5,2) NOT NULL
);

-- Table ingredient
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(255) NOT NULL,
    type_ingredient VARCHAR(100) NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table marque
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(255) NOT NULL,
    pays_origine VARCHAR(100)
);

-- Table boisson
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(255) NOT NULL,
    id_marque INT NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table focaccia_ingredient
CREATE TABLE focaccia_ingredient (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table focaccia_boisson
CREATE TABLE focaccia_boisson (
    id_focaccia INT NOT NULL,
    id_boisson INT NOT NULL,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
        ON DELETE CASCADE ON UPDATE CASCADE
);
