# Exemples d'Analyses

## Analyse de l'Inventaire

### Distribution par Catégorie
```sql
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

### Résultats
- Smartphones : 36.38% de la valeur totale
- Informatique : 36.29% de la valeur totale
- Audio : 12.56% de la valeur totale
- Gaming : 9.27% de la valeur totale
- Connectée : 5.50% de la valeur totale