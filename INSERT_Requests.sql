INSERT INTO musician(musician_name)
VALUES('Rammstein'), ('Evanescence'), ('Rihanna'), ('Faun');

INSERT INTO genre(genre_name)
VALUES('Rock'), ('Folk'), ('Pop');

INSERT INTO album (album_title, album_year)
VALUES
('Mutter', 2001),
('Rammstein', 2019),
('Fallen', 2003),
('The Bitter Truth', 2020),
('Unapologetic', 2012),
('Märchen & Mythen', 2019);

INSERT INTO track (track_title, track_length, album_id)
VALUES
('Ich will', 210, 1),
('Diamant', 130, 2),
('Hallomann', 220, 2),
('My Immortal', 160, 3),
('Hello', 160, 3),
('Take Cover', 240, 4),
('Jump', 250, 5),
('Jorinde', 230, 6),
('Hagazussa', 145, 6);

INSERT INTO track (track_title, track_length, album_id)
VALUES
('my own', 150, 4),
('own my', 123, 3),
('my', 210, 1),
('oh my god', 201, 2),
('myself', 240, 3),
('by myself', 210, 4),
('bemy self', 100, 6),
('myself by', 240, 4),
('by myself by', 120, 5),
('beemy', 100, 2),
('premyne', 159, 2);

INSERT INTO collection (collection_title, collection_year)
VALUES
('Rock hits', 2019),
('Rammstein collection', 2020),
('Music collection', 2004),
('Best hits', 2024);

INSERT INTO album_musician (musician_id, album_id)
VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5),
(4, 6);

INSERT INTO album_musician (musician_id, album_id)
VALUES
(1, 7);

INSERT INTO collection_track (collection_id, track_id)
VALUES
(1, 1), (1, 2), (1, 4),
(2, 1), (2, 3),
(3, 4), (3, 7), (3, 9),
(4, 1), (4, 4), (4, 7), (4, 8);

INSERT INTO musician_genre (musician_id, genre_id)
VALUES
(1, 1), (2, 1),
(3, 3),
(4, 2);
