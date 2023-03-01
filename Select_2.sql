
-- 1 Название и год выхода альбомов,вышедших в 2018 году
select album_title, album_year from album
	where album_year = 2018;
	

-- 2. Название и продолжительность самого длительного трека.
select track_name, track_duration from track
	order by track_duration desc
	limit 1;


-- 3. Название треков, продолжительность которых не менее 3,5 минут.
select track_name, track_duration from track
	where track_duration >= 3.5;


-- 4. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_name, collection_year from collection
	where collection_year between 2018 and 2020;


-- 5. Исполнители, чьё имя состоит из одного слова.
select artist_name from artist
	where artist_name not like '% %';


-- 6. Название треков, которые содержат слово «мой» или «my».
select track_name from track
	where track_name like '%My%';

select track_name from track
	where track_name like '%my%';

select track_name from track
	where track_name like '%Мой%';

select track_name from track
	where track_name like '%мой%';















