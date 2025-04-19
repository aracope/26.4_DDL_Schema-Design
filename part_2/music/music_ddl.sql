DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artist (
    artist_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE producer (
    producer_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

-- Join tables
CREATE TABLE album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL  
);

CREATE TABLE song (
    song_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    album_id INTEGER NOT NULL REFERENCES album(album_id),
    duration_in_seconds INTEGER NOT NULL
);

CREATE TABLE song_producer (
    song_id INTEGER REFERENCES song(song_id) ON DELETE CASCADE,
    producer_id INTEGER REFERENCES producer(producer_id) ON DELETE CASCADE,
    PRIMARY KEY (song_id, producer_id)
);

CREATE TABLE song_artist (
    song_id INTEGER REFERENCES song(song_id) ON DELETE CASCADE,
    artist_id INTEGER REFERENCES artist(artist_id) ON DELETE CASCADE,
    PRIMARY KEY (song_id, artist_id)
);