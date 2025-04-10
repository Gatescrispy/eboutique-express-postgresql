-- Configuration initiale de la base de données

-- Création de la base de données
CREATE DATABASE eboutique
    WITH ENCODING = 'UTF8'
    LC_COLLATE = 'fr_FR.UTF-8'
    LC_CTYPE = 'fr_FR.UTF-8'
    TEMPLATE = template0;

-- Création de l'utilisateur applicatif
CREATE USER app_user WITH PASSWORD 'app_user_password';

-- Connexion à la base eboutique
\c eboutique

-- Création des schémas
CREATE SCHEMA catalog;
CREATE SCHEMA customers;
CREATE SCHEMA orders;

-- Attribution des droits
GRANT CONNECT ON DATABASE eboutique TO app_user;
GRANT USAGE ON SCHEMA catalog TO app_user;
GRANT USAGE ON SCHEMA customers TO app_user;
GRANT USAGE ON SCHEMA orders TO app_user;