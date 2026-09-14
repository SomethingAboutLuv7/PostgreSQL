-- Create the main products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    price DECIMAL(10,2),
    stock INTEGER,
    status TEXT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some initial data
INSERT INTO products (name, price, stock, status) VALUES
    ('Laptop', 999.99, 50, 'active'),
    ('Keyboard', 79.99, 100, 'active'),
    ('Mouse', 29.99, 200, 'active');

-- Create a table for our updates
CREATE TABLE product_updates (
    name TEXT,
    price DECIMAL(10,2),
    stock INTEGER,
    status TEXT
);

-- Insert mixed update data (new products, updates, and discontinuations)
INSERT INTO product_updates VALUES
    ('Laptop', 1099.99, 75, 'active'),      -- Update: price and stock change
    ('Monitor', 299.99, 30, 'active'),      -- Insert: new product
    ('Keyboard', NULL, 0, 'discontinued'),  -- Delete: mark as discontinued
    ('Headphones', 89.99, 50, 'active');    -- Insert: another new product