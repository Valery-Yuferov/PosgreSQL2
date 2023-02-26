create table if not exists Genre (
	id integer primary key,
	title varchar(40)
);


create table if not exists Artist (
	id integer primary key,
	name varchar(40)
);


create table if not exists Album (
	id integer primary key,
	title varchar(40),
	year integer not null,
	artist varchar(40)
);


create table if not exists Track (
	id integer primary key,
	name varchar(40),
	duration numeric,
	album_id integer not null references Album(id)
);


create table if not exists Collection (
	id integer primary key,
	name varchar(40),
	year integer not null
);


create table if not exists GenreArtist (
	genre_id integer not null references Genre(id),
	artist_id integer not null references Artist(id)
);


create table if not exists ArtistAlbum (
	artist_id integer references Artist(id),
	album_id integer references Album(id)
);


create table if not exists CollectionTrack (
	collection_id integer references Collection(id),
	track_id integer references Track(id)
);








