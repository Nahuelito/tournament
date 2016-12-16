-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS matches;

CREATE TABLE players (
	id SERIAL PRIMARY KEY,
	name VARCHAR(25), 
	wins INT,
	matches INT
);

CREATE TABLE matches (
	id SERIAL PRIMARY KEY,
	winner INT REFERENCES players(id),
	looser INT REFERENCES players(id)
);



