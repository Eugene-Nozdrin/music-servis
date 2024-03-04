
--Название и продолжительность самого длительного трека.
select track_name, song_length  
from music_track 
where song_length = (select max(song_length) from music_track)

--Название треков, продолжительность которых не менее 3,5 минут.
select track_name, song_length 
from music_track
where song_length >= 210

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_name, raleased 
from collection
where raleased >= 2018 and raleased <= 2020

--Исполнители, чьё имя состоит из одного слова.
select singer_name 
from singer
where singer_name not like '%% %%'

--Название треков, которые содержат слово «мой» или «my».
select track_name 
from music_track 
WHERE 
'my' = ANY(string_to_array(regexp_replace(lower(track_name), '\W+', ' ', 'g'),' '))
OR 
'мой' = ANY(string_to_array(regexp_replace(lower(track_name), '\W+', ' ', 'g'),' '));

--Количество исполнителей в каждом жанре.
select ms.style_name, count(ss.id_singer)  
from singer_style ss 
join music_style ms on ss.id_style = ms.id 
group by ss.id_style, ms.style_name 

--Количество треков, вошедших в альбомы 2019–2020 годов.
select count(*) 
from music_track mt 
join music_albom ma on mt.id_albom = mt.id 
where released between 2019 and 2020

--Средняя продолжительность треков по каждому альбому.
select albom_name, avg(song_length)
from music_track mt 
join music_albom ma on mt.id_albom = ma.id 
group by albom_name 

--Все исполнители, которые не выпустили альбомы в 2020 году.
select singer_name 
from singer s 
where not id in(select id_albom
				from albom_autor aa
				join music_albom ma on aa.id_albom = ma.id 
				where ma.released = 2020			
);
		
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select distinct collection_name  
from collection c 
join collection_track ct on c.id = ct.id_collection 
join music_track mt on ct.id_track = mt.id 
join music_albom ma on mt.id_albom = ma.id 
join albom_autor aa on ma.id = aa.id_albom 
join singer s on aa.id_singer = s.id 
where s.singer_name = 'Lady Gaga'
		
-- так как нет четкой связи между песней и автором, они связаны через альбомы, 
--которые в свою очередь могут быть написаны двумя автороми, 
--в данный запрос могут попадать ошибочно авторы которые были только соавторами альбома,
--но не конкретного трека.  		
		
		
		
		
		
		
		
		
		
		
		
		
		
