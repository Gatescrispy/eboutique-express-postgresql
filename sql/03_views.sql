-- Création des vues

-- Vue d'inventaire des produits
CREATE OR REPLACE VIEW catalog.product_inventory AS
SELECT 
    p.id as product_id,
    p.reference,
    p.name as product_name,
    p.description,
    p.price,
    p.stock_quantity,
    c.id as category_id,
    c.name as category_name,
    c.description as category_description
FROM catalog.products p
JOIN catalog.categories c ON p.category_id = c.id;

-- Attribution des droits sur la vue
GRANT SELECT ON catalog.product_inventory TO app_user;