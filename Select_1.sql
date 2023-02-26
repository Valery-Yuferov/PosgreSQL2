
-- 1 Название и год выхода альбомов,вышедших в 2018 году
select title, year from album
	where year = 2018;
	

-- 2. Название и продолжительность самого длительного трека.
select name, duration from track
	order by duration desc
	limit 1;


-- 3. Название треков, продолжительность которых не менее 3,5 минут.
select name, duration from track
	where duration >= 3.5;


-- 4. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name, year from collection
	where year between 2018 and 2020;


-- 5. Исполнители, чьё имя состоит из одного слова.
select name from artist
	where name not like '% %';


-- 6. Название треков, которые содержат слово «мой» или «my».
select name from track
	where name like '%My%';

select name from track
	where name like '%my%';

select name from track
	where name like '%Мой%';

select name from track
	where name like '%мой%';















