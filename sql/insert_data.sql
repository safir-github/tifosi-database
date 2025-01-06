-- Insérer des marques
INSERT INTO marque (nom_marque, pays_origine)
VALUES
    ('Coca-Cola', 'États-Unis'),
    ('Pepsi', 'États-Unis'),
    ('Nestlé', 'Suisse'),
    ('Evian', 'France');

-- Insérer des boissons
INSERT INTO boisson (nom_boisson, id_marque, prix)
VALUES
    ('Coca-Cola Zéro', 1, 1.50),
    ('Coca-Cola Original', 1, 1.50),
    ('Pepsi Max', 2, 1.40),
    ('Evian Eau Minérale', 4, 1.00);

-- Insérer des ingrédients
INSERT INTO ingredient (nom_ingredient, type_ingredient, id_marque)
VALUES
    ('Tomate', 'Légume', NULL),
    ('Mozzarella', 'Fromage', 3),
    ('Basilic', 'Herbe', 4),
    ('Jambon', 'Viande', NULL),
    ('Champignon', 'Légume', NULL);

-- Insérer des focaccias
INSERT INTO focaccia (nom_focaccia, description, prix)
VALUES
    ('Margherita', 'Focaccia classique avec tomate, mozzarella et basilic.', 5.99),
    ('Prosciutto', 'Focaccia avec jambon, mozzarella et roquette.', 6.99),
    ('Veggie', 'Focaccia avec légumes grillés, mozzarella et pesto.', 6.49);

-- Insérer des relations focaccia_ingredient
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
VALUES
    (1, 1), (1, 2), (1, 3), -- Margherita
    (2, 4), (2, 2);         -- Prosciutto

-- Insérer des relations focaccia_boisson
INSERT INTO focaccia_boisson (id_focaccia, id_boisson)
VALUES
    (1, 1), -- Margherita -> Coca-Cola Zéro
    (2, 3); -- Prosciutto -> Pepsi Max
