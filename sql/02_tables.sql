-- Création des tables principales

-- Tables du schéma catalog
CREATE TABLE catalog.categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE catalog.products (
    id SERIAL PRIMARY KEY,
    reference VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    price NUMERIC(10,2) NOT NULL,
    stock_quantity INTEGER NOT NULL DEFAULT 0,
    category_id INTEGER REFERENCES catalog.categories(id)
);

-- Attribution des droits sur les tables
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA catalog TO app_user;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA catalog TO app_user;