CREATE TABLE ingredients(
    id NUMERIC,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE donuts(
    id NUMERIC,
    name TEXT NOT NULL,
    type TEXT CHECK(type IN('gluten-free', 'not gluten-free')),
    price REAL NOT NULL,
    ingredients_id NUMERIC,
    PRIMARY KEY(id),
    FOREIGN KEY(ingredients_id) REFERENCES ingredients(id)
);

CREATE TABLE orders(
    orderNo NUMERIC,
    donuts_id NUMERIC,
    customer_id NUMERIC,
    PRIMARY KEY(orderNo),
    FOREIGN KEY(donuts_id) REFERENCES donuts(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE customers(
    id NUMERIC,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    order_id NUMERIC,
    PRIMARY KEY(id)
    FOREIGN KEY(order_id) REFERENCES orders(orderNo)
);
