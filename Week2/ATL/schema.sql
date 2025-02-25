CREATE TABLE Passengers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE CheckIns (
    "id" INTEGER,
    "datetime" DATETIME,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "Passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "Flights"("id")
);

CREATE TABLE Airlines (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE Flights (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "airport_code_depart" TEXT,
    "airport_code_arrival" TEXT,
    "departure_datetime" DATETIME,
    "arrival_datetime" DATETIME,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "Airlines"("id")
);
