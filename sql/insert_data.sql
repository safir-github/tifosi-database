-- Insertion des marques
INSERT INTO marque (id_marque, nom_marque)
VALUES
    (1, 'Coca-cola'),
    (2, 'Cristalline'),
    (3, 'Monster'),
    (4, 'Pepsico');

-- Insertion des ingrédients
INSERT INTO ingredient (id_ingredient, nom_ingredient)
VALUES
    (1, 'Ail'),
    (2, 'Ananas'),
    (3, 'Artichaut'),
    (4, 'Bacon'),
    (5, 'Base Tomate'),
    (6, 'Base Crème'),
    (7, 'Champignon'),
    (8, 'Chèvre'),
    (9, 'Cresson'),
    (10, 'Emmental'),
    (11, 'Gorgonzola'),
    (12, 'Jambon cuit'),
    (13, 'Jambon fumé'),
    (14, 'Oeuf'),
    (15, 'Oignon'),
    (16, 'Olive noire'),
    (17, 'Olive verte'),
    (18, 'Parmesan'),
    (19, 'Piment'),
    (20, 'Poivre'),
    (21, 'Pomme de terre'),
    (22, 'Raclette'),
    (23, 'Salami'),
    (24, 'Tomate cerise');

-- Insertion des boissons
INSERT INTO boisson (id_boisson, nom_boisson)
VALUES
    (1, 'Coca-cola zéro'),
    (2, 'Coca-cola original'),
    (3, 'Fanta citron'),
    (4, 'Fanta orange'),
    (5, 'Capri-sun'),
    (6, 'Pepsi'),
    (7, 'Pepsi Max Zéro'),
    (8, 'Lipton zéro citron'),
    (9, 'Lipton Peach'),
    (10, 'Monster energy ultra gold'),
    (11, 'Monster energy ultra blue'),
    (12, 'Eau de source');

-- Insertion des focaccias
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix_focaccia)
VALUES
    (1, 'Mozaccia', 9.80),
    (2, 'Gorgonzollaccia', 10.80),
    (3, 'Raclaccia', 8.90),
    (4, 'Emmentalaccia', 9.80),
    (5, 'Tradizione', 8.90),
    (6, 'Hawaienne', 11.20),
    (7, 'Américaine', 10.80),
    (8, 'Paysanne', 12.80);

INSERT INTO client (nom_client, age, cp_client)
VALUES
    ('Jean Dupont', 32, 75001),
    ('Marie Curie', 28, 69002),
    ('Albert Einstein', 40, 31000),
    ('Isaac Newton', 45, 13008),
    ('Galileo Galilei', 36, 54000);

INSERT INTO menu (nom_menu, prix_menu)
VALUES
    ('Menu Classique', 15.99),
    ('Menu Gourmet', 25.99),
    ('Menu Végétarien', 19.99),
    ('Menu Enfant', 9.99),
    ('Menu Spécial', 29.99);

-- Insertion des relations achete (client -> focaccia)
INSERT INTO achete (id_client, id_focaccia, jour)
VALUES
    (1, 1, '2025-01-01'), -- Client 1 achète Mozaccia le 1er janvier 2025
    (1, 2, '2025-01-02'), -- Client 1 achète Gorgonzollaccia le 2 janvier 2025
    (2, 3, '2025-01-03'), -- Client 2 achète Raclaccia le 3 janvier 2025
    (3, 4, '2025-01-04'); -- Client 3 achète Emmentalaccia le 4 janvier 2025

-- Insertion des relations comprend (focaccia -> ingrédients)
INSERT INTO comprend (id_focaccia, id_ingredient)
VALUES
    -- Mozaccia
    (1, 5), (1, 9), (1, 13), (1, 1), (1, 3), (1, 7), (1, 18), (1, 20), (1, 16),
    -- Gorgonzollaccia
    (2, 5), (2, 11), (2, 9), (2, 1), (2, 7), (2, 18), (2, 20), (2, 16),
    -- Raclaccia
    (3, 5), (3, 22), (3, 9), (3, 1), (3, 7), (3, 18), (3, 20),
    -- Emmentalaccia
    (4, 6), (4, 10), (4, 9), (4, 7), (4, 18), (4, 20), (4, 15),
    -- Tradizione
    (5, 5), (5, 9), (5, 12), (5, 7), (5, 18), (5, 20), (5, 16), (5, 17),
    -- Hawaienne
    (6, 5), (6, 9), (6, 4), (6, 2), (6, 19), (6, 18), (6, 20), (6, 16),
    -- Américaine
    (7, 5), (7, 9), (7, 4), (7, 21), (7, 18), (7, 20), (7, 16),
    -- Paysanne
    (8, 6), (8, 8), (8, 21), (8, 13), (8, 1), (8, 3), (8, 7), (8, 18), (8, 20), (8, 16), (8, 14);

-- Insertion des relations paye (client -> menu)
INSERT INTO paye (id_client, id_menu, jour)
VALUES
    (1, 1, '2025-01-01'), -- Client 1 paye Menu 1 le 1er janvier 2025
    (1, 2, '2025-01-02'), -- Client 1 paye Menu 2 le 2 janvier 2025
    (2, 3, '2025-01-03'), -- Client 2 paye Menu 3 le 3 janvier 2025
    (3, 4, '2025-01-04'); -- Client 3 paye Menu 4 le 4 janvier 2025

-- Insertion des relations est_constitue (menu -> focaccia)
INSERT INTO est_constitue (id_menu, id_focaccia)
VALUES
    (1, 1), (1, 2), -- Menu 1 est constitué de Mozaccia et Gorgonzollaccia
    (2, 3), (2, 4), -- Menu 2 est constitué de Raclaccia et Emmentalaccia
    (3, 5), (3, 6), -- Menu 3 est constitué de Tradizione et Hawaienne
    (4, 7), (4, 8); -- Menu 4 est constitué de Américaine et Paysanne

-- Insertion des relations contient (menu -> boisson)
INSERT INTO contient (id_menu, id_boisson)
VALUES
    (1, 1), -- Menu 1 contient Coca-cola zéro
    (1, 3), -- Menu 1 contient Fanta citron
    (2, 2), -- Menu 2 contient Coca-cola original
    (2, 4), -- Menu 2 contient Fanta orange
    (3, 6), -- Menu 3 contient Pepsi
    (3, 7), -- Menu 3 contient Pepsi Max Zéro
    (4, 10), -- Menu 4 contient Monster energy ultra gold
    (4, 11), -- Menu 4 contient Monster energy ultra blue
    (5, 12); -- Menu 5 contient Eau de source

-- Insertion des relations appartient (boisson -> marque)
INSERT INTO appartient (id_boisson, id_marque)
VALUES
    (1, 1), -- Coca-cola zéro appartient à Coca-cola
    (2, 1), -- Coca-cola original appartient à Coca-cola
    (3, 1), -- Fanta citron appartient à Coca-cola
    (4, 1), -- Fanta orange appartient à Coca-cola
    (5, 1), -- Capri-sun appartient à Coca-cola
    (6, 4), -- Pepsi appartient à Pepsico
    (7, 4), -- Pepsi Max Zéro appartient à Pepsico
    (8, 4), -- Lipton zéro citron appartient à Pepsico
    (9, 4), -- Lipton Peach appartient à Pepsico
    (10, 3), -- Monster energy ultra gold appartient à Monster
    (11, 3), -- Monster energy ultra blue appartient à Monster
    (12, 2); -- Eau de source appartient à Cristalline
