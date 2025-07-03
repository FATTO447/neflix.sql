-- CREATE DATABASE
DROP DATABASE IF EXISTS movie;
CREATE DATABASE movie;
USE movie;

-- TABLE: productioncountries
DROP TABLE IF EXISTS productioncountries;
CREATE TABLE productioncountries (
    iso_3166_1 CHAR(2) PRIMARY KEY,
    production_country_name VARCHAR(50)
);

-- TABLE: productioncompanies
DROP TABLE IF EXISTS productioncompanies;
CREATE TABLE productioncompanies (
    production_company_id INT PRIMARY KEY,
    production_company_name VARCHAR(500)
);

-- TABLE: genres
DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

-- TABLE: keywords
DROP TABLE IF EXISTS keywords;
CREATE TABLE keywords (
    keyword_id INT PRIMARY KEY,
    keyword_name VARCHAR(500)
);

-- TABLE: languages
DROP TABLE IF EXISTS languages;
CREATE TABLE languages (
    iso CHAR(2) PRIMARY KEY,
    language_name VARCHAR(50)
);

-- TABLE: actors
DROP TABLE IF EXISTS actors;
CREATE TABLE actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(100),
    gender INT
);

-- TABLE: movies
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(500),
    release_date DATETIME(6),
    budget INT,
    homepage VARCHAR(500),
    original_language VARCHAR(50),
    original_title VARCHAR(500),
    overview VARCHAR(5000),
    popularity DOUBLE,
    revenue DOUBLE,
    runtime DOUBLE,
    release_status VARCHAR(50),
    tagline VARCHAR(500),
    vote_average DOUBLE,
    vote_count INT
);

-- TABLE: casts
DROP TABLE IF EXISTS casts;
CREATE TABLE casts (
    movie_id INT,
    actor_id INT,
    characters VARCHAR(500),
    PRIMARY KEY (movie_id, actor_id, characters),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

-- TABLE: genremap
DROP TABLE IF EXISTS genremap;
CREATE TABLE genremap (
    movie_id INT,
    genre_id INT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- TABLE: keywordmap
DROP TABLE IF EXISTS keywordmap;
CREATE TABLE keywordmap (
    movie_id INT,
    keyword_id INT,
    PRIMARY KEY (movie_id, keyword_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (keyword_id) REFERENCES keywords(keyword_id)
);

-- TABLE: language_map
DROP TABLE IF EXISTS language_map;
CREATE TABLE language_map (
    movie_id INT,
    iso CHAR(2),
    PRIMARY KEY (movie_id, iso),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (iso) REFERENCES languages(iso)
);

-- TABLE: productioncountrymap
DROP TABLE IF EXISTS productioncountrymap;
CREATE TABLE productioncountrymap (
    movie_id INT,
    iso_3166_1 CHAR(2),
    PRIMARY KEY (movie_id, iso_3166_1),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (iso_3166_1) REFERENCES productioncountries(iso_3166_1)
);

-- TABLE: productioncompanymap
DROP TABLE IF EXISTS productioncompanymap;
CREATE TABLE productioncompanymap (
    movie_id INT,
    production_company_id INT,
    PRIMARY KEY (movie_id, production_company_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (production_company_id) REFERENCES productioncompanies(production_company_id)
); 


INSERT INTO movies VALUES
(1, 'Inception', '2010-07-16', 160000000, 'http://inceptionmovie.warnerbros.com/', 'en', 'Inception', 'A thief who steals corporate secrets...', 82.5, 825532764, 148, 'Released', 'Your mind is the scene of the crime.', 8.3, 27000),
(2, 'The Matrix', '1999-03-31', 63000000, 'http://www.whatisthematrix.com', 'en', 'The Matrix', 'A computer hacker learns...', 78.1, 466364845, 136, 'Released', 'Welcome to the Real World.', 8.7, 21000),
(3, 'Interstellar', '2014-11-07', 165000000, 'http://www.interstellarmovie.net/', 'en', 'Interstellar', 'A team of explorers travel...', 90.2, 701729206, 169, 'Released', 'Mankind was born on Earth...', 8.6, 29000),
(4, 'Parasite', '2019-05-30', 11400000, 'https://www.parasite-movie.com', 'ko', '기생충', 'Greed and class discrimination...', 88.4, 257591776, 132, 'Released', 'Act like you own the place.', 8.5, 15000),
(5, 'Avengers: Endgame', '2019-04-26', 356000000, 'https://www.marvel.com/movies/avengers-endgame', 'en', 'Avengers: Endgame', 'After the devastating events...', 95.6, 2797800564, 181, 'Released', 'Part of the journey is the end.', 8.4, 35000);

INSERT INTO actors VALUES
(101, 'Leonardo DiCaprio', 2),
(102, 'Keanu Reeves', 2),
(103, 'Matthew McConaughey', 2),
(104, 'Song Kang-ho', 2),
(105, 'Robert Downey Jr.', 2);

INSERT INTO casts VALUES
(1, 101, 'Dom Cobb'),
(2, 102, 'Neo'),
(3, 103, 'Cooper'),
(4, 104, 'Kim Ki-taek'),
(5, 105, 'Tony Stark');

INSERT INTO genres VALUES
(1, 'Action'),
(2, 'Science Fiction'),
(3, 'Drama'),
(4, 'Thriller'),
(5, 'Adventure'); 

INSERT INTO genremap VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 2),
(3, 2),
(3, 5),
(4, 3),
(4, 4),
(5, 1),
(5, 5);

INSERT INTO keywords VALUES
(201, 'dream'),
(202, 'hacker'),
(203, 'space travel'),
(204, 'class struggle'),
(205, 'superhero');

INSERT INTO keyword_map VALUES
(1, 201),
(2, 202),
(3, 203),
(4, 204),
(5, 205);

INSERT INTO languages VALUES
('en', 'English'),
('ko', 'Korean');

INSERT INTO language_map VALUES
(1, 'en'),
(2, 'en'),
(3, 'en'),
(4, 'ko'),
(5, 'en');
