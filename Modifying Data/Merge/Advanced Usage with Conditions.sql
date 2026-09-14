MERGE INTO products p
USING (
    SELECT
        name,
        price,
        stock,
        status,
        CASE
            WHEN price IS NULL AND status = 'discontinued' THEN 'DELETE'
            WHEN stock = 0 THEN 'OUT_OF_STOCK'
            ELSE status
        END as action_type
    FROM product_updates
) u
ON p.name = u.name
WHEN MATCHED AND u.action_type = 'DELETE' THEN
    DELETE
WHEN MATCHED AND u.action_type = 'OUT_OF_STOCK' THEN
    UPDATE SET
        status = 'inactive',
        stock = 0,
        last_updated = CURRENT_TIMESTAMP
WHEN MATCHED THEN
    UPDATE SET
        price = COALESCE(u.price, p.price),
        stock = u.stock,
        status = u.status,
        last_updated = CURRENT_TIMESTAMP
WHEN NOT MATCHED AND u.action_type != 'DELETE' THEN
    INSERT (name, price, stock, status)
    VALUES (u.name, u.price, u.stock, u.status)
RETURNING
    merge_action() as action,
    p.*,
    u.action_type;