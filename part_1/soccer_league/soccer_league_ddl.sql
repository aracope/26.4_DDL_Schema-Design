CREATE TABLE league (
    league_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE season (
    season_id SERIAL PRIMARY KEY,
    league_id INTEGER REFERENCES league(league_id),
    start_date DATE,
    end_date DATE
);

CREATE TABLE match (
    match_id SERIAL PRIMARY KEY,
    season_id INTEGER REFERENCES season(season_id),
    home_team INTEGER REFERENCES team(team_id),
    away_team INTEGER REFERENCES team(team_id),
    location VARCHAR(100),
    date DATE
);

CREATE TABLE team (
    team_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    ranking VARCHAR(100) NOT NULL
);

-- NOTE:
-- This join table tracks which teams participated in which seasons.
-- Useful for leagues with multiple or changing teams each season.
CREATE TABLE season_team (
    season_id INTEGER REFERENCES season(season_id),
    team_id INTEGER REFERENCES team(team_id),
    PRIMARY KEY (season_id, team_id)
);

CREATE TABLE player (
    player_id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES team(team_id),
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    age INTEGER
);

CREATE TABLE goal (
    goal_id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES player(player_id),
    match_id INTEGER REFERENCES match(match_id),
    time_scored TIME
);

CREATE TABLE referee (
    referee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    certification_level VARCHAR(100) NOT NULL
);

CREATE TABLE match_referee (
    match_id INTEGER REFERENCES match(match_id),
    referee_id INTEGER REFERENCES referee(referee_id),
    PRIMARY KEY (match_id, referee_id)
);
