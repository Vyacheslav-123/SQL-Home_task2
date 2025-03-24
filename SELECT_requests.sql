-- ЗАДАНИЕ № 2
-- Название и продолжительность самого длительного трека.
SELECT track_title, track_length FROM track
WHERE track_length = (SELECT MAX(track_length) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_title FROM track
WHERE track_length >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_title FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова.
SELECT musician_name FROM musician
WHERE musician_name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT track_title FROM track
WHERE track_title ILIKE 'my %'
OR track_title ILIKE '% my'
OR track_title ILIKE '% my %'
OR track_title ILIKE 'my'
OR track_title ILIKE 'мой %'
OR track_title ILIKE '% мой'
OR track_title ILIKE '% мой %'
OR track_title ILIKE 'мой';

-- ЗАДАНИЕ 3
-- Количество исполнителей в каждом жанре.
SELECT g.genre_name, COUNT(musician_id) FROM musician_genre mg 
LEFT JOIN genre g ON g.id = mg.genre_id
GROUP BY g.genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) track_quantity FROM track t 
LEFT JOIN album a on t.album_id = a.id
WHERE album_year BETWEEN 2019 AND 2020;

-- средняя продолжительность треков по каждому альбому;
SELECT a.album_title, AVG(track_length) average_length FROM track t
LEFT JOIN album a ON t.album_id = a.id
GROUP BY a.album_title;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT m.musician_name FROM musician m 
WHERE m.musician_name NOT IN
	(SELECT m.musician_name FROM musician m
	 JOIN album_musician am ON m.id = am.musician_id
	 JOIN album a ON am.album_id =a.id
	 WHERE a.album_year = 2020);

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT c.collection_title FROM collection c 
LEFT JOIN collection_track ct ON ct.collection_id = c.id 
LEFT JOIN track t ON ct.track_id  = t.id 
LEFT JOIN album a ON t.album_id  = a.id 
LEFT JOIN album_musician am ON a.id = am.album_id 
LEFT JOIN musician m ON m.id = am.musician_id
WHERE m.musician_name LIKE 'Rammstein';

