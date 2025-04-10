# Guide de Configuration

## Configuration du Serveur PostgreSQL

### Paramètres de Base
- Port : 5433
- Encodage : UTF-8
- Locale : fr_FR.UTF-8

### Optimisations
- shared_buffers = 128MB
- effective_io_concurrency = 0 (MacOS)
- work_mem = 4MB

## Sécurité
- Authentification : SCRAM-SHA-256
- Connexions SSL activées
- Permissions granulaires par schéma

## PGAdmin
- Configuration du serveur
- Gestion des connexions
- Visualisation des données