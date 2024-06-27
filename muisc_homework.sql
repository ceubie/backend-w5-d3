CREATE DATABASE music_homework;
USE music_homework;

CREATE TABLE album (
id INT AUTO_INCREMENT PRIMARY KEY,
title CHAR NOT NULL,
release_year INT NOT NULL,
total_tracks INT NOT NULL
);

CREATE TABLE artist (
id CHAR PRIMARY KEY,
record_label CHAR,
total_streams INT
);

CREATE TABLE genre (id CHAR PRIMARY KEY);

ALTER TABLE album ADD runtime_minutes INT;


ALTER TABLE album 
ADD genre_id CHAR;


ALTER TABLE album 
ADD FOREIGN KEY (genre_id) REFERENCES genre(id);

ALTER TABLE album
ADD artist_id CHAR;

ALTER TABLE album
ADD FOREIGN KEY (artist_id) REFERENCES artist(id);