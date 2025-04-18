DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE passengers (
    passenger_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
);

CREATE TABLE airlines (
    airline_id SERIAL PRIMARY KEY,
    name NOT TEXT NULL
);

CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    city TEXT NOT NULL,
    country TEXT NOT NULL 
);

CREATE TABLE flights (
    flight_id SERIAL PRIMARY KEY,
    airline_id INTEGER REFERENCES airline(airline_id),
    from_location_id INTEGER REFERENCES locations(location_id),
    to_location_id INTEGER REFERENCES locations(location_id),
    departure TIMESTAMP NOT NULL,
    arrival TIMESTAMP NOT NULL
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    passenger_id INTEGER REFERENCES passengers(passenger_id),
    flight_id INTEGER REFERENCES flights(flight_id),
    seat TEXT NOT NULL    
);

