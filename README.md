# E-Boutique Express - Configuration PostgreSQL

Ce projet démontre la mise en place et la configuration complète d'une base de données PostgreSQL pour une boutique en ligne. Il inclut la création de schémas, tables, vues et des exemples d'analyses de données.

## 🚀 Fonctionnalités

- Configuration complète d'un serveur PostgreSQL
- Gestion des schémas et des permissions
- Création de vues pour l'analyse des produits
- Optimisation des performances
- Intégration avec PGAdmin

## 📊 Structure de la Base de Données

### Schémas
- `catalog` : Gestion des produits et catégories
- `customers` : Informations clients
- `orders` : Gestion des commandes

### Vues Principales
- `product_inventory` : Vue consolidée des produits avec leurs catégories et stocks

## 🛠 Configuration Technique

### Prérequis
- PostgreSQL 15+
- PGAdmin 4
- Port configuré : 5433

### Configuration Serveur
```sql
# Paramètres principaux
port = 5433
max_connections = 100
shared_buffers = 128MB
effective_io_concurrency = 0  # Optimisé pour MacOS
```

## 📈 Exemples d'Analyses

```sql
-- Distribution des produits par catégorie
WITH inventory_stats AS (
  SELECT 
    category_name,
    COUNT(*) as product_count,
    SUM(stock_quantity) as total_stock,
    SUM(price * stock_quantity) as inventory_value
  FROM catalog.product_inventory
  GROUP BY category_name
)
SELECT 
  category_name,
  product_count,
  total_stock,
  ROUND(inventory_value::numeric, 2) as inventory_value,
  ROUND((inventory_value / SUM(inventory_value) OVER ()) * 100, 2) as value_percentage
FROM inventory_stats
ORDER BY inventory_value DESC;
```

## 🔐 Sécurité

- Authentification configurée avec SCRAM-SHA-256
- Utilisateurs et rôles dédiés
- Permissions granulaires par schéma

## 📚 Documentation

Les scripts SQL et la documentation détaillée sont organisés dans les dossiers suivants :
- `/sql` : Scripts de création et configuration
- `/docs` : Documentation détaillée
- `/analyses` : Exemples d'analyses et requêtes

## 🤝 Contribution

Ce projet fait partie de mon portfolio de développement. N'hésitez pas à l'explorer et à me contacter pour toute question ou suggestion d'amélioration.

## 📝 License

MIT License - Voir le fichier [LICENSE](LICENSE) pour plus de détails.