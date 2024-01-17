CREATE TABLE passengers(
    id NUMERIC,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    age NUMERIC NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE checkIns(
    id NUMERIC,
    passenger_id NUMERIC,
    flight_No TEXT,
    checkIn_Date TEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(passenger_id) REFERENCES passengers(id),
    FOREIGN KEY(flight_No) REFERENCES flight(flightNo)
);

CREATE TABLE airlines(
    id NUMERIC,
    airline_name TEXT NOT NULL,
    concourse TEXT CHECK(concourse IN('A','B','C','D','E','F','T')),
    PRIMARY KEY(id)
);

CREATE TABLE flight(
    flightNo NUMERIC,
    airline_id NUMERIC,
    departCode TEXT NOT NULL,
    headCode TEXT NOT NULL,
    departDate TEXT NOT NULL,
    arriveDate TEXT NOT NULL,
    PRIMARY KEY(flightNo, airline_id),
    FOREIGN KEY(airline_id) REFERENCES airlines(id)
);
