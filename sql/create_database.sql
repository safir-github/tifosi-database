-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Création du compte utilisateur et définition des privilèges
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'mot_de_passe_tifosi';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

-- Table principale : client
CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    cp_client INT NOT NULL
);

-- Table principale : focaccia
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(45) NOT NULL,
    prix_focaccia FLOAT NOT NULL
);

-- Table principale : ingredient
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(45) NOT NULL
);

-- Table principale : boisson
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(45) NOT NULL
);

-- Table principale : menu
CREATE TABLE menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom_menu VARCHAR(45) NOT NULL,
    prix_menu FLOAT NOT NULL
);

-- Table principale : marque
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(45) NOT NULL
);

-- Table associative : achete
CREATE TABLE achete (
    id_client INT NOT NULL,
    id_focaccia INT NOT NULL,
    jour DATE NOT NULL,
    PRIMARY KEY (id_client, id_focaccia, jour),
    FOREIGN KEY (id_client) REFERENCES client(id_client)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table associative : comprend
CREATE TABLE comprend (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table associative : paye
CREATE TABLE paye (
    id_client INT NOT NULL,
    id_menu INT NOT NULL,
    jour DATE NOT NULL,
    PRIMARY KEY (id_client, id_menu, jour),
    FOREIGN KEY (id_client) REFERENCES client(id_client)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table associative : est_constitue
CREATE TABLE est_constitue (
    id_menu INT NOT NULL,
    id_focaccia INT NOT NULL,
    PRIMARY KEY (id_menu, id_focaccia),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table associative : contient
CREATE TABLE contient (
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table associative : appartient
CREATE TABLE appartient (
    id_boisson INT NOT NULL,
    id_marque INT NOT NULL,
    PRIMARY KEY (id_boisson, id_marque),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
        ON DELETE CASCADE ON UPDATE CASCADE
);

