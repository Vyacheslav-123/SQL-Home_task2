CREATE TABLE IF NOT EXISTS Musician (
	Id SERIAL PRIMARY KEY,
	Musician_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	Id SERIAL PRIMARY KEY,
	Genre_name VARCHAR (30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	Id SERIAL PRIMARY KEY,
	Album_title VARCHAR (40) NOT NULL,
	Album_year INTEGER CHECK(Album_year BETWEEN 1000 AND 9999)
);

CREATE TABLE IF NOT EXISTS Track (
	Id SERIAL PRIMARY KEY,
	Track_Title VARCHAR (40),
	Track_Length INTEGER CHECK(Track_Length > 0),
	Album_id INTEGER REFERENCES Album(Id)
);

CREATE TABLE IF NOT EXISTS Collection (
	Id SERIAL PRIMARY KEY,
	Collection_title VARCHAR (40) NOT NUll,
	Collection_year INTEGER CHECK(Collection_year BETWEEN 1000 AND 9999)
);

CREATE TABLE IF NOT EXISTS Musician_genre (
	Musician_id INTEGER REFERENCES Musician(Id),
	Genre_id INTEGER REFERENCES Genre(Id),
	CONSTRAINT pk PRIMARY KEY (Musician_id, Genre_id)
);

CREATE TABLE IF NOT EXISTS Album_musician (
	Musician_id INTEGER REFERENCES Musician(Id),
	Album_id INTEGER REFERENCES Album(Id),
	CONSTRAINT pk1 PRIMARY KEY (Musician_id, Album_id)
);

CREATE TABLE IF NOT EXISTS Collection_track (
	Collection_id INTEGER REFERENCES Collection(Id),
	Track_id INTEGER REFERENCES Track(Id),
	CONSTRAINT pk2 PRIMARY KEY (Collection_id, Track_id)
)