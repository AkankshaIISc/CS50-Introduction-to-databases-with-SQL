CREATE TABLE "Ingredients" (
    "id" INTEGER,
    "name" TEXT,
    "price_per_unit" REAL,
    "unit" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "Donuts" (
    "id" INTEGER,
    "name" TEXT,
    "type" BOOLEAN,
    "price" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE "DonutIngredient" (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY("donut_id", "ingredient_id"),
    FOREIGN KEY("donut_id") REFERENCES "Donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "Ingredients"("id")
);

CREATE TABLE "Orders" (
    "id" INTEGER,
    "order_number" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "Donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "Customers"("id")

);

CREATE TABLE "Customers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "Orders"("id")
);
