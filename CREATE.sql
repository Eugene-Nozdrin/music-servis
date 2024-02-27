
--drop table collection_track;
--drop table albom_autor;
--drop table singer_style;
--drop table music_style;
--drop table singer; 
--drop table music_track; 
--drop table music_albom; 
--drop table collection; 




--музыкальный стиль
create table if not exists music_style (
	id serial primary key,
	style_name varchar(128) unique not null
);

--исполнитель
create table if not exists singer (
	id serial primary key,
	singer_name varchar(128) unique not null
);

--альбом
create table if not exists music_albom(
	id serial primary key,
	albom_name varchar(128) unique not null,
	released integer not null
);

--трек
create table if not exists music_track(
	id serial primary key,
	track_name varchar(128) not null,
	song_length integer not null,
	id_albom integer references music_albom(id)
);

--сборник
create table if not exists collection(
	id serial primary key,
	collection_name varchar(128) not null,
	raleased integer not null
);

--таблицы для связи

--исполнители и стиль
create table if not exists singer_style(
	id_style integer references music_style(id),
	id_singer integer references singer(id),
	constraint style_singer primary key (id_style, id_singer)
);

--альбомы и авторы
create table if not exists albom_autor(
	id_albom integer references music_albom(id),
	id_singer integer references singer(id),
	constraint albom_singer primary key(id_albom, id_singer)
);

--сборники и треки
create table if not exists collection_track(
	id_collection integer references collection(id),
	id_track integer references  music_track(id),
	constraint tracks_collection primary key(id_collection, id_track)
);