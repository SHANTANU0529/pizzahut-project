create database joins;
use joins;
drop database joins;
CREATE table album (id int,
 artist_id int, 
 name varchar(100),
 year int);

CREATE table song (id int,
 album_id int,
 name varchar(50),
 duration float(20));

CREATE table record_label (id int,
 name varchar(50));

CREATE table artist (id int,
 record_label_id int,
 name varchar(50));
 
 INSERT INTO album (id, artist_id, name, year) 
 VALUES(1,1, 'Devils got a new disguise', 2006),
(2,1,'Keeps getting better',2008),
(3,	1,'Master of Puppets',1986),
(4,	2,'Endgame',2009),
(5,	2,'Icon',2012),
(6,3,'Story',2000),
(7,4,'Chapters',2003),
(8,4,'Riding with the King',2000),
(9,5,'Pieces of a Dream',2005),
(10,6,'Greatest Hits',2004),
(11,7,'All-Time Greatest Hits',1975),
(12,8,'Greatest Hits',1983),
(13,9,'Ultimate Collection',2015);

INSERT INTO song (id, album_id, name, duration) 
VALUES(1,1,'Dream On',4.26),(2,1,'Back in the Saddle',4.40),
(3,2,'Genie in a Bottle',5.3),
(4,2,'Beautiful',5.29),
(5,3,'Master of Puppets',8.35),
(6,3,'Battery',5.13),
(7,4,'Dialectic Chaos',2.26),
(8,4,'Endgame',5.57),
(9,5,'Watching Airplanes',4.03),
(10,5,'Man to Man',3.41),
(11,6,'Balck Winter Day',3.48),
(12,6,'Against Widows',4.04),
(13,7,'Reptile',3.36),
(14,7,'Modern Girl',4.49),
(15,8,'Riding with the King',4.23),
(16,8,'Key to the Highway',3.39),
(17,9,'Im Outta Love',4.02),
(18,9,'Not That Kind',3.20),
(19,10,'Eruption',1.43),
(20,10,'Hot For Teacher',4.43),
(21,11,'Sweet Home Alabama',4.45),
(22,11,'Free Bird',14.23),
(23,12,'Thunderstruck',4.52),
(24,12,'T.N.T',3.35),
(25,13,'Sgt. Pepper''s Lonely Hearts Club Band',2.0333),
(26,13,'With a Little Help from My Friends',2.7333),
(27,13,'Lucy in the Sky with Diamonds',3.4666),
(28,13,'Getting Better',2.8),(29,13,'Fixing a Hole',2.6),
(30,13,'Shes Leaving Home',3.5833),
(31,13,'Being for the Benefit of Mr. Kite!',2.6166),
(32,13,'Within You Without You',5.066),
(33,13,'When I''m Sixty-Four',2.6166),
(34,13,'Lovely Rita',2.7),
(35,13,'Good Morning Good Morning',2.6833),
(36,13,'Sgt. Pepper''s Lonely Hearts Club Band (Reprise)',1.3166),
(37,13,'A Day in the Life',5.65);

INSERT INTO record_label (id, name) VALUES(1,'Blackened'),
(6,'Capitol'),
(5,'Elektra'),
(4,'MCA'),
(3,'Universal'),
(2,'Warner Bros');
INSERT INTO artist (id, record_label_id, name) 
VALUES(3,1,'Anthrax'),
(2,1,'Christina'),
(1,1,'Aerosmith'),
(4,2,'Eric Clapton'),
(6,2,'Amorphis'),
(5,2,'Gary Allan'),
(8,3,'AC/DC'),
(7,3,'Lynyrd Skynyrd'),
(9,6,'Anastacia');

-- Q1. Show all the 4 tables(album, song, record label and artist)

SELECT * FROM album;
SELECT * FROM song;
SELECT * FROM record_label;
SELECT * FROM artist;

-- 2 List all artists for each record label sorted by artist name.
SELECT rl. name, ar.name FROM artist ar
JOIN record_label rl ON ar.record_label_id = rl.id
ORDER BY ar.name;

-- 3.Which record labels have no artists?
SELECT rl. name FROM record_label rl
LEFT JOIN  artist ar ON rl.id = ar.record_label_id
WHERE  ar.id IS NULL;

-- 4. List the number of songs per artist in descending order?
SELECT ar.name, COUNT(s.id) AS song_count
FROM artist ar
JOIN album a ON ar.id = a.artist_id
JOIN song s ON a.id = s.album_id
GROUP BY ar.name
ORDER BY COUNT(s.id) DESC;


-- 5. Which artist or artists have recorded the most number of songs?
SELECT ar.name , COUNT(s.id) AS song_count
FROM artist ar
JOIN album a ON ar.id = a. artist_id 
JOIN song s ON a.id = s.album_id 
GROUP BY ar.id, ar.name 
HAVING  COUNT(s.id) = (
   SELECT MAX(song_count)
   FROM (
     SELECT COUNT(s.id) AS song_count
     FROM artist ar
     JOIN album a ON ar.id = a. artist_id 
     JOIN song s ON a.id = s.album_id 
     GROUP BY ar.id, ar.name 
     ) AS song_count
);


-- 6.Which artist or artists have recorded the least number of songs?
SELECT ar.name , COUNT(s.id) AS song_count
FROM artist ar
JOIN album a ON ar.id = a. artist_id 
JOIN song s ON a.id = s.album_id 
GROUP BY ar.id, ar.name 
HAVING  COUNT(s.id) = (
   SELECT MIN(song_count)
   FROM (
     SELECT COUNT(s.id) AS song_count
     FROM artist ar
     JOIN album a ON ar.id = a. artist_id 
     JOIN song s ON a.id = s.album_id 
     GROUP BY ar.id, ar.name 
     ) AS song_count
);

-- 7.which artists have recorded songs longer than 5 minutes, and how many songs was that?
SELECT ar.id,ar.name,COUNT(s.id) AS song_more_than_5_min FROM artist ar
JOIN album a ON ar.id = a. artist_id
JOIN song s ON a.id = s. album_id 
WHERE s. duration > 5
GROUP BY ar.id,ar.name
ORDER BY  song_more_than_5_min DESC;

-- 8.for each artist and album how many songs were less than 5 minutes long?

SELECT ar.name,a.name,COUNT(s.id) AS song_more_than_5_min FROM artist ar
JOIN album a ON ar.id = a. artist_id
JOIN song s ON a.id = s. album_id 
WHERE s. duration < 5
GROUP BY a.name,ar.id,ar.name
ORDER BY a.name, song_more_than_5_min ASC;

-- 9.In which year or years were the most songs recorded?
SELECT a.year, COUNT(s.id) AS num_songs FROM album a
JOIN song s ON a.id = s. album_id 
GROUP BY a.year
ORDER BY num_songs DESC
LIMIT 1;

-- 10. list the artist, song and year of the top 5 longest recorded songs
SELECT ar. name ,a.name, s.name, a.year,s.duration FROM artist ar
JOIN album a ON ar.id = a. artist_id
JOIN song s ON a.id = s. album_id
ORDER BY s.duration DESC
LIMIT 5;

-- 11.Number of albums recorded for each year
SELECT year,COUNT(id) FROM album
GROUP BY year
ORDER BY year;

-- 12. What is the max number of recorded albums across all the years?

SELECT COUNT(id) AS max_count FROM album
GROUP BY year
HAVING COUNT(id) = (SELECT MAX( max_count) FROM 
       ( SELECT COUNT(id) AS max_count 
	   FROM album
       GROUP BY year
       ) AS max_count 
	);

-- 13. In which year (or years) were the most (max) number of albums recorded, and how many were recorded?

SELECT year,COUNT(id) AS max_count FROM album
GROUP BY year
HAVING COUNT(id) = (SELECT MAX( max_count) FROM 
       ( SELECT COUNT(id) AS max_count 
	   FROM album
       GROUP BY year
       ) AS max_count 
	);

-- 14. total duration of all songs recorded by each artist in descending order

SELECT ar.name, SUM(s.duration) FROM artist ar
JOIN album a ON ar.id = a.artist_id
JOIN song s ON a.id = s.album_id
GROUP BY ar.name
ORDER BY SUM(s.duration) DESC;

-- 15.for which artist and album are there no songs less than 5 minutes long?

SELECT ar.name, a.name FROM artist ar
JOIN album a ON ar.id = a.artist_id
JOIN song s ON a.id = s.album_id
GROUP BY ar.name, a.name
HAVING MIN(s.duration > 5);

-- 16. Display a table of all artists, albums, songs and song duration -- all ordered in ascending order by artist, album and song

SELECT ar.name, a.name, s.name, s. duration FROM artist ar
JOIN album a ON ar.id = a.artist_id
JOIN song s ON a.id  = s. album_id
ORDER BY ar.name ASC, a.name ASC, s.name ASC ;

-- 18. Total album length for all songs on the Greatest hits album - in minutes and seconds

SELECT 
    a.name AS album_name,
    FLOOR(SUM(s.duration)) AS total_minutes, 
    ROUND((SUM(s.duration) - FLOOR(SUM(s.duration))) * 60) AS total_seconds
FROM album a
JOIN song s ON a.id = s.album_id
WHERE a.name = 'Greatest Hits'
GROUP BY a.name;

-- 19. Which artists did not release an album during the decades of the 1980's and the 1990's?

SELECT ar.name FROM artist ar
JOIN album a ON ar.id = a. artist_id
GROUP BY ar.name
HAVING SUM(CASE WHEN a.year BETWEEN 1980 AND 1999 THEN 1 ELSE 0 END) = 0
ORDER BY ar.name;

-- 20. Which artists did release an album during the decades of the 1980's and the 1990's?

SELECT ar.name FROM artist ar
JOIN album a ON ar.id = a. artist_id
WHERE A.year BETWEEN 1980 AND 1990
ORDER BY ar.name ;






