DROP DATABASE IF EXISTS outer_space;
CREATE DATABASE outer_space;
\c outer_space

-- Galaxies
CREATE TABLE galaxies (
  galaxy_id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

-- Stars or other orbital centers
CREATE TABLE celestial_bodies (
  body_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  type TEXT NOT NULL, -- e.g., 'Star', 'Planet', etc...
  galaxy_id INTEGER REFERENCES galaxies(galaxy_id)
);

-- Planets
CREATE TABLE planets (
  planet_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around INTEGER REFERENCES celestial_bodies(body_id)
);

-- Moons (normalized!)
CREATE TABLE moons (
  moon_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  planet_id INTEGER REFERENCES planets(planet_id)
);
