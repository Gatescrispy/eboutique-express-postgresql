-- Insertion des données de test

-- Insertion des catégories
INSERT INTO catalog.categories (name, description) VALUES
('Informatique', 'Ordinateurs, périphériques et accessoires'),
('Smartphones', 'Téléphones mobiles et accessoires'),
('Audio', 'Casques, enceintes et équipement audio'),
('Gaming', 'Consoles et jeux vidéo'),
('Connectée', 'Objets connectés et domotique');

-- Insertion des produits
INSERT INTO catalog.products (reference, name, description, price, stock_quantity, category_id) VALUES
('LAP-MAC-M1', 'MacBook Air M1', 'Ordinateur portable Apple avec puce M1', 1099.99, 15, 1),
('LAP-DEL-XPS', 'Ultrabook Dell premium', 'Ultrabook haut de gamme', 1299.99, 8, 1),
('PHN-IPH-13', 'iPhone 13', 'Smartphone Apple dernière génération', 899.99, 25, 2);