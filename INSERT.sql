
--Добавляем данные в таблицу music_style
--Поп Рок.Хип-хоп.Рэп.R&B.Джаз

insert into music_style (style_name)
values 
	('поп'),
	('рок'),
	('хип-хоп'),
	('реп'),
	('R&B'),
	('джаз');
	
--заполняем исполнителей 
--1
--Ariana Grande 
--Lady Gaga 
--Rihanna
--2 
--The Beatles 
--Queen 
--Led Zeppelin 
--3
--Kanye West 
--Drake 
--Post Malone 
--4
--Eminem 
--Agust D 
--Baby Keem 
--5
--The Weeknd 
--Beyoncé 
--Frank Ocean 
--6
--Steve Lacy 
--Frank Sinatra 
--Laufey 

insert  into singer (singer_name)
values
	('Ariana Grande'),
	('Lady Gaga'),
	('Rihanna'),
	('The Beatles'), 
	('Queen'),
	('Led Zeppelin'),
	('Kanye West'),
	('Drake'),
	('Post Malone'),
	('Eminem'),
	('Agust D'),
	('Baby Keem'),
	('The Weeknd'), 
	('Beyoncé'),
	('Frank Ocean'),
	('Steve Lacy'),
	('Frank Sinatra'), 
	('Laufey');
	
--заполняем таблицу связи между стилем и исполнителями
insert into singer_style (id_style, id_singer)
values 
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 9),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(4, 10),
	(4, 11),
	(4, 12),
	(4, 14),
	(5, 13),
	(5, 14),
	(5, 7),
	(5, 15),
	(6, 16),
	(6, 17),
	(6, 18),
	(6, 2);
	
--заполняем таблицу альбомы
--id singer  id albom
-- 1,1		
-- 2,2 	
-- 3,5 1
-- 4,9	
-- 5,10	17	
-- 6,14
-- 7,17	
		
insert into music_albom (albom_name, released)
values 
	('Positions', 2020),
	('Chromatica', 2020),
	('News Of The World', 1977),
	('Hollywood’s Bleeding', 2019),
	('Kamikaze', 2018),
	('Lemonade', 2016),
	('Christmas Songs by Sinatra', 1948);


--таблица связи исполнитель альбом
insert into albom_autor (id_albom , id_singer)
values
	(1, 1),
	(2, 2),
	(3, 5),
	(3, 1),
	(4, 9),
	(5, 10),
	(5, 17),
	(6, 14),
	(7, 17);

--таблица треков
insert into music_track (track_name, song_length, id_albom)
values 
	('Off the Table', 240, 1),
	('Alice', 178, 2),
	('We Are the Champions', 180, 3),
	('enemies', 197, 4),
	('lucky you', 245, 5),
	('Pray You Catch Me', 196, 6),
	('white christmas', 204, 7),
	('my hair',500 , 1);
	
--заполнение таблицы сборники

insert into collection (collection_name, raleased)
values
	('сборник 1', 2019),
	('сборник 2', 2000),
	('сборник 3', 2020),
	('сборник 4', 2003),
	('сборник 5', 2014),
	('сборник 6', 2017);

--таблица связи сборник трек(наобум)
insert into collection_track (id_collection, id_track)
values
	(1, 1),
	(1, 3),
	(1, 5),
	(2, 2),
	(2, 4),
	(2, 6),
	(2, 8),
	(3, 1),
	(3, 4),
	(3, 7),
	(3, 8),
	(4, 2),
	(4, 5),
	(4, 8),
	(5, 1),
	(5, 6),
	(5, 7),
	(6, 2),
	(6, 6);
	