create database grpby;
use grpby;
CREATE TABLE Actor(Actor_ID int,
Actor_name varchar(30),
Gender varchar(10),
debut_year int);

CREATE TABLE Director (
    director_id INT,
    Director_name VARCHAR(30),
    no_of_movies INT
);

CREATE TABLE Movie(Movie_name varchar(30),
release_year int,genre varchar(15),
lead_1 int,lead_2 int,
director_id int,
box_collection int );

CREATE TABLE DVD(DVD_id int,
Movie_name varchar(30),
sale int);

-- Inserting Values
insert into actor values(1,'Aamir Khan','male',1988);
insert into actor values(2,'Shahrukh Khan','male',1992);
insert into actor values(3,'Kareena Kapoor','female',2000);
insert into actor values(4,'Kajol','female',1992);
insert into actor values(5,'Anushka Sharma','female',2008);
insert into actor values(6,'Ranbir Kapoor','male',2007);
insert into actor values(7,'Alia Bhatt','female',2012);
insert into actor values(8,'Ranveer Singh','male',2010);
insert into actor values(9,'Deepika Padukone','female',2006);
insert into actor values(10,'Shahid Kapoor','male',2003);
insert into actor values(11,'Katrina Kaif','female',2003);
insert into actor values(12,'Varun Dhawan','male',2012);



insert into director values(1,'Rajkumar Hirani',10);
insert into director values(2,'Sanjay Leela Bhansali',8);
insert into director values(3,'Aditya Chopra',6);
insert into director values(4,'Zoya Akhtar',3);
insert into director values(5,'Imtiaz Ali',5);
insert into director values(6,'Ayan Mukerji',4);
insert into director values(7,'Santosh Sivan',9);
insert into director values(8,'Farah Khan',4);


insert into movie values('3 Idiots',2009,'comedy',1,3,1,989600000);
insert into movie values('PK',2014,'satire',1,5,1,789600000);
insert into movie values('Bajirao Mastani',2015,'historic',8,9,2,68960000);

insert into movie values('Rab ne bana di jodi',2008,'romance',2,5,3,48960000);

insert into movie values('Gully boy',2019,'Musical drama',8,7,4,28950000);
insert into movie values('Jab we met',2007,'romance',10,3,5,18980000);
insert into movie values('Padmavat',2018,'historic',8,9,2,38460000);
insert into movie values('Yeh jawani hai deewani',2013,'romance',6,9,6,581600000);

insert into movie values('Ashoka',2001,'historic',2,3,7,8796000);
insert into movie values('Happy new year',2014,'comedy',2,9,8,68960000);

insert into DVD values(1,'3 Idiots',8890);
insert into DVD values(2,'PK',8790);
insert into DVD values(3,'Bajirao Mastani',6810);
insert into DVD values(4,'Rab ne bana di jodi',7920);
insert into DVD values(5,'Gully boy',870);
insert into DVD values(6,'Jab we met',4792);
insert into DVD values(7,'Padmavat',590);
insert into DVD values(8,'Yeh jawani hai deewani',2890);
insert into DVD values(9,'Ashoka',730);
insert into DVD values(10,'Happy new year',1690);

-- Q1: Count of Male and Female Actors
SELECT Gender, COUNT(*) FROM Actor
GROUP BY Gender;

-- Q2: Count of Movies in Each Genre
SELECT genre, COUNT(*) FROM Movie
GROUP BY genre;

-- Q3: Oldest Released Movie of Each Genre
SELECT genre, MIN(release_year) FROM Movie
GROUP BY genre;

-- Q4: Total Box Office Collection for Each Genre
SELECT genre, SUM(box_collection) FROM Movie
GROUP BY genre;

-- Q5: Director Name, Current Movie Count, and Total Movie Count
SELECT  d.Director_name, COUNT(m.Movie_name), d.no_of_movies FROM Director d
LEFT JOIN Movie m ON d.Director_ID = m.director_id
GROUP BY d.Director_name , d.no_of_movies;

-- Q6: Lead_1 Actors, Their Movie Count, and Their Total DVD Sales
SELECT a.Actor_name, COUNT(m.Movie_name), SUM(d.sale) FROM Actor a
JOIN Movie m ON a.Actor_ID = m.lead_1
LEFT JOIN DVD d ON m.Movie_name = d.Movie_name
GROUP BY a.Actor_name;

-- Q7: Release Year and Movie Count (Only if More Than 1 Movie Released)
SELECT release_year, COUNT(Movie_name) FROM Movie
GROUP BY release_year
HAVING COUNT(Movie_name) > 1;

-- Q8: Director Name and Total Box Office Collection (Only if > 50 Crores)
SELECT d.Director_name, SUM(m.box_collection) FROM Director d
LEFT JOIN Movie m ON d.Director_ID = m.director_id
GROUP BY d.Director_name
HAVING SUM(m.box_collection) > 500000000;


-- Q9: Movies Sorted by Director Names
SELECT genre, COUNT(Movie_name) FROM movie
GROUP BY genre
ORDER BY COUNT(Movie_name) DESC;


-- Q10: Sort the movie names based on director names.
SELECT m.Movie_name, d.Director_name FROM Movie m
JOIN Director d ON m.director_id = d.Director_ID
ORDER BY d.Director_name ASC , m.Movie_name ASC;


