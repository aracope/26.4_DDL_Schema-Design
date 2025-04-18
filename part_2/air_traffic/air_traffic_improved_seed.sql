-- Insert Airlines
INSERT INTO airline (name) VALUES
  ('United'),
  ('British Airways'),
  ('Delta'),
  ('TUI Fly Belgium'),
  ('Air China'),
  ('American Airlines'),
  ('Avianca Brasil');

-- Insert Locations (city, country)
INSERT INTO location (city, country) VALUES
  ('Washington DC', 'United States'),
  ('Seattle', 'United States'),
  ('Tokyo', 'Japan'),
  ('London', 'United Kingdom'),
  ('Los Angeles', 'United States'),
  ('Las Vegas', 'United States'),
  ('Mexico City', 'Mexico'),
  ('Paris', 'France'),
  ('Casablanca', 'Morocco'),
  ('Dubai', 'UAE'),
  ('Beijing', 'China'),
  ('New York', 'United States'),
  ('Charlotte', 'United States'),
  ('Cedar Rapids', 'United States'),
  ('Chicago', 'United States'),
  ('New Orleans', 'United States'),
  ('Sao Paolo', 'Brazil'),
  ('Santiago', 'Chile');

-- Insert Passengers
INSERT INTO passenger (first_name, last_name) VALUES
  ('Jennifer', 'Finch'),
  ('Thadeus', 'Gathercoal'),
  ('Sonja', 'Pauley'),
  ('Waneta', 'Skeleton'),
  ('Berkie', 'Wycliff'),
  ('Alvin', 'Leathes'),
  ('Cory', 'Squibbes');

-- Insert Tickets
INSERT INTO ticket (
  passenger_id,
  airline_id,
  from_location_id,
  to_location_id,
  seat,
  departure,
  arrival
)
VALUES
(
  (SELECT id FROM passenger WHERE first_name = 'Jennifer' AND last_name = 'Finch'),
  (SELECT id FROM airline WHERE name = 'United'),
  (SELECT id FROM location WHERE city = 'Washington DC'),
  (SELECT id FROM location WHERE city = 'Seattle'),
  '33B',
  '2018-04-08 09:00:00',
  '2018-04-08 12:00:00'
),
(
  (SELECT id FROM passenger WHERE first_name = 'Jennifer' AND last_name = 'Finch'),
  (SELECT id FROM airline WHERE name = 'Delta'),
  (SELECT id FROM location WHERE city = 'Seattle'),
  (SELECT id FROM location WHERE city = 'Mexico City'),
  '20A',
  '2018-04-15 16:50:00',
  '2018-04-15 21:00:00'
),

(
  (SELECT id FROM passenger WHERE first_name = 'Waneta' AND last_name = 'Skeleton'),
  (SELECT id FROM airline WHERE name = 'TUI Fly Belgium'),
  (SELECT id FROM location WHERE city = 'Paris'),
  (SELECT id FROM location WHERE city = 'Casablanca'),
  '23D',
  '2018-08-01 18:30:00', 
  '2018-08-01 21:50:00'
),

(
  (SELECT id FROM passenger WHERE first_name = 'Thadeus' AND last_name = 'Gathercoal'),
  (SELECT id FROM airline WHERE name = 'British Airways'),
  (SELECT id FROM location WHERE city = 'Tokyo'),
  (SELECT id FROM location WHERE city = 'London'),
  '8A',
  '2018-12-19 12:45:00',
  '2018-12-19 16:15:00'
),
(
  (SELECT id FROM passenger WHERE first_name = 'Thadeus' AND last_name = 'Gathercoal'),
  (SELECT id FROM airline WHERE name = 'Air China'),
  (SELECT id FROM location WHERE city = 'Dubai'),
  (SELECT id FROM location WHERE city = 'Beijing'),
  '18C',
  '2018-10-31 01:15:00',
  '2018-10-31 12:55:00'
),
(
  (SELECT id FROM passenger WHERE first_name = 'Sonja' AND last_name = 'Pauley'),
  (SELECT id FROM airline WHERE name = 'Delta'),
  (SELECT id FROM location WHERE city = 'Los Angeles'),
  (SELECT id FROM location WHERE city = 'Las Vegas'),
  '12F',
  '2018-01-02 07:00:00',
  '2018-01-02 08:03:00'
),

(
  (SELECT id FROM passenger WHERE first_name= 'Berkie' AND last_name = 'Wycliff'),
  (SELECT id FROM airline WHERE name = 'United'),
  (SELECT id FROM location WHERE city = 'New York'),
  (SELECT id FROM location WHERE city = 'Charlotte'),
  '9E', 
  '2019-02-06 06:00:00',
  '2019-02-06 07:47:00'
),
(
  (SELECT id FROM passenger WHERE first_name= 'Berkie' AND last_name = 'Wycliff'),
  (SELECT id FROM airline WHERE name = 'American Airlines'),
  (SELECT id FROM location WHERE city = 'Charlotte'),
  (SELECT id FROM location WHERE city = 'New Orleans'),
  '32B', 
  '2019-02-06 16:28:00',
  '2019-02-06 19:18:00'
),

(
  (SELECT id FROM passenger WHERE first_name= 'Alvin' AND last_name = 'Leathes'),
  (SELECT id FROM airline WHERE name = 'American Airlines'),
  (SELECT id FROM location WHERE city = 'Cedar Rapids'),
  (SELECT id FROM location WHERE city = 'Chicago'),  
  '1A',
  '2018-12-22 14:42:00',
  '2018-12-22 15:56:00' 
),

(
  (SELECT id FROM passenger WHERE first_name= 'Cory' AND last_name = 'Squibbes'),
  (SELECT id FROM airline WHERE name = 'Avianca Brasil'),
  (SELECT id FROM location WHERE city = 'Sao Paolo'),
  (SELECT id FROM location WHERE city = 'Santiago'), 
   '10D',
   '2019-01-20 19:30:00',
   '2019-01-20 22:45:00'
);