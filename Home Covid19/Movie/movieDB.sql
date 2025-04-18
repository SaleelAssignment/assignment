drop SCHEMA if exists Movies;
CREATE SCHEMA if not exists Movies;
use Movies;

drop table if exists Rating;
drop table if exists Reviewer;
drop table if exists Movie_Genres;
drop table if exists Movie_Direction;
drop table if exists Movie_cast;
drop table if exists Movie;
drop table if exists Genres;
drop table if exists Director;
drop table if exists Actor;

--
-- Dummy data for table `Actor`
--

CREATE TABLE Actor(
	act_id int PRIMARY KEY,
	act_fname varchar(20) NULL,
	act_lname varchar(20) NULL,
	act_gender varchar(1) NULL
);

--
-- Table structure for table `Director`
-- 

CREATE TABLE Director(
	dir_id int PRIMARY KEY,
	dir_fname varchar(20) NULL,
	dir_lname varchar(20) NULL
);

--
-- Table structure for table `Genres`
-- 

CREATE TABLE Genres(
	gen_id int PRIMARY KEY,
	gen_title varchar(20) NULL
);

--
-- Table structure for table `Movie`
-- 
CREATE TABLE Movie(
	mov_id int PRIMARY KEY,
	mov_title varchar(50) NULL,
	mov_year int NULL,
	mov_time int NULL,
	mov_lang varchar(15) NULL,
	mov_dt_rel date NULL,
	mov_rel_country varchar(5) NULL
);

--
-- Table structure for table `Movie_cast`
-- 

CREATE TABLE Movie_cast(
	mov_id int NULL,
	act_id int NULL,
	role varchar(30) NULL
);

--
-- Table structure for table `Movie_Direction`
-- 

CREATE TABLE Movie_Direction(
	mov_id int NULL,
	dir_id int NULL
);

--
-- Table structure for table `Movie_Genres`
-- 

CREATE TABLE Movie_Genres(
	mov_id int NULL,
	gen_id int NULL
);

--
-- Table structure for table `Rating`
-- 

CREATE TABLE Rating(
	mov_id int NULL,
	rev_id int NULL,
	rev_stars numeric(4, 2) NULL,
	num_o_ratings int NULL
);

--
-- Table structure for table `Reviewer`
-- 

CREATE TABLE Reviewer(
	rev_id int NULL,
	rev_name varchar(30) NULL
);


--
-- Dummy data for table `Actor`
--


INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (101, 'James', 'Stewart', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (102, 'Deborah', 'Kerr', 'F');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (103, 'Peter', 'OToole', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (104, 'Robert', 'De Niro', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (105, 'F. Murray', 'Abraham', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (106, 'Harrison', 'Ford', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (107, 'Nicole', 'Kidman', 'F');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (108, 'Stephen', 'Baldwin', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (109, 'Jack', 'Nicholson', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (110, 'Mark', 'Wahlberg', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (111, 'Woody', 'Allen', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (112, 'Claire', 'Danes', 'F');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (113, 'Tim', 'Robbins', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (114, 'Kevin', 'Spacey', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (115, 'Kate', 'Winslet', 'F');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (116, 'Robin', 'Williams', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (117, 'Jon', 'Voight', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (118, 'Ewan', 'McGregor', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (119, 'Christian', 'Bale', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (120, 'Maggie', 'Gyllenhaal', 'F');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (121, 'Dev', 'Patel', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (122, 'Sigourney', 'Weaver', 'F');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (123, 'David', 'Aston', 'M');
INSERT Actor (act_id, act_fname, act_lname, act_gender) VALUES (124, 'Ali', 'Astin', 'F');


--
-- Dummy data for table `Director`
--


INSERT Director (dir_id, dir_fname, dir_lname) VALUES (201, 'Alfred', 'Hitchcock');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (202, 'Jack', 'Clayton');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (203, 'David', 'Lean');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (204, 'Michael', 'Cimino');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (205, 'Milos', 'Forman');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (206, 'Ridley', 'Scott');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (207, 'Stanley', 'Kubrick');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (208, 'Bryan', 'Singer');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (209, 'Roman', 'Polanski');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (210, 'Paul', 'Thomas Anderson');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (211, 'Woody', 'Allen');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (212, 'Hayao', 'Miyazaki');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (213, 'Frank', 'Darabont');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (214, 'Sam', 'Mendes');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (215, 'James', 'Cameron');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (216, 'Gus', 'Van Sant');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (217, 'John', 'Boorman');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (218, 'Danny', 'Boyle');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (219, 'Christopher', 'Nolan');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (220, 'Richard', 'Kelly');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (221, 'Kevin', 'Spacey');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (222, 'Andrei', 'Tarkovsky');
INSERT Director (dir_id, dir_fname, dir_lname) VALUES (223, 'Peter', 'Jackson');


--
-- Dummy data for table `Genres`
--


INSERT Genres (gen_id, gen_title) VALUES (1001, 'Action');
INSERT Genres (gen_id, gen_title) VALUES (1002, 'Adventure');
INSERT Genres (gen_id, gen_title) VALUES (1003, 'Animation');
INSERT Genres (gen_id, gen_title) VALUES (1004, 'Biography');
INSERT Genres (gen_id, gen_title) VALUES (1005, 'Comedy');
INSERT Genres (gen_id, gen_title) VALUES (1006, 'Crime');
INSERT Genres (gen_id, gen_title) VALUES (1007, 'Drama');
INSERT Genres (gen_id, gen_title) VALUES (1008, 'Horror');
INSERT Genres (gen_id, gen_title) VALUES (1009, 'Music');
INSERT Genres (gen_id, gen_title) VALUES (1010, 'Mystery');
INSERT Genres (gen_id, gen_title) VALUES (1011, 'Romance');
INSERT Genres (gen_id, gen_title) VALUES (1012, 'Thriller');
INSERT Genres (gen_id, gen_title) VALUES (1013, 'War');


--
-- Dummy data for table `Movie`
--


INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (901, 'Vertigo', 1958, 128, 'English', CAST('1958-08-24' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (902, 'The Innocents', 1961, 100, 'English', CAST('1962-02-19' AS Date), 'SW');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (903, 'Lawrence of Arabia', 1962, 216, 'English', CAST('1962-12-11' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (904, 'The Deer Hunter', 1978, 183, 'English', CAST('1979-03-08' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (905, 'Amadeus', 1984, 160, 'English', CAST('1985-01-07' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (906, 'Blade Runner', 1982, 117, 'English', CAST('1982-09-09' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (907, 'Eyes Wide Shut', 1999, 159, 'English', NULL, 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (908, 'The Usual Suspects', 1995, 106, 'English', CAST('1995-08-25' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (909, 'Chinatown', 1974, 130, 'English', CAST('1974-08-09' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (910, 'Boogie Nights', 1997, 155, 'English', CAST('1998-02-16' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (911, 'Annie Hall', 1977, 93, 'English', CAST('1977-04-20' AS Date),  'USA');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (912, 'Princess Mononoke', 1997, 134, 'Japanese', CAST('2001-10-19' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (913, 'The Shawshank Redemption', 1994, 142, 'English', CAST('1995-02-17' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (914, 'American Beauty', 1999, 122, 'English', NULL,'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (915, 'Titanic', 1997, 194, 'English', CAST('1998-01-23' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (916, 'Good Will Hunting', 1997, 126, 'English', CAST('1998-06-03' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (917, 'Deliverance', 1972, 109, 'English', CAST('1982-10-05' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (918, 'Trainspotting', 1996, 94, 'English', CAST('1996-02-23' AS Date),  'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (919, 'The Prestige', 2006, 130, 'English', CAST('2006-11-10' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (920, 'Donnie Darko', 2001, 113, 'English', NULL,'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (921, 'Slumdog Millionaire', 2008, 120, 'English', CAST('2009-01-09' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (922, 'Aliens', 1986, 137, 'English', CAST('1986-08-29' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (923, 'Beyond the Sea', 2004, 118, 'English', CAST('2004-11-26' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (924, 'Avatar', 2009, 162, 'English', CAST('2009-12-17' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (926, 'Seven Samurai', 1954, 207, 'Japanese', CAST('1954-04-26' AS Date), 'JP');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (927, 'Spirited Away', 2001, 125, 'Japanese', CAST('2003-09-12' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (928, 'Back to the Future', 1985, 116, 'English', CAST('1985-12-04' AS Date), 'UK');
INSERT Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (925, 'Braveheart', 1995, 178, 'English', CAST('1995-09-08' AS Date), 'UK');


--
-- Dummy data for table `Movie_cast`
--


INSERT Movie_cast (mov_id, act_id, role) VALUES (901, 101, 'John Scottie Ferguson');
INSERT Movie_cast (mov_id, act_id, role) VALUES (902, 102, 'Miss Giddens');
INSERT Movie_cast (mov_id, act_id, role) VALUES (903, 103, 'T.E. Lawrence');
INSERT Movie_cast (mov_id, act_id, role) VALUES (904, 104, 'Michael');
INSERT Movie_cast (mov_id, act_id, role) VALUES (905, 105, 'Antonio Salieri');
INSERT Movie_cast (mov_id, act_id, role) VALUES (906, 106, 'Rick Deckard');
INSERT Movie_cast (mov_id, act_id, role) VALUES (907, 107, 'Alice Harford');
INSERT Movie_cast (mov_id, act_id, role) VALUES (908, 108, 'McManus');
INSERT Movie_cast (mov_id, act_id, role) VALUES (910, 110, 'Eddie Adams');
INSERT Movie_cast (mov_id, act_id, role) VALUES (911, 111, 'Alvy Singer');
INSERT Movie_cast (mov_id, act_id, role) VALUES (912, 112, 'San');
INSERT Movie_cast (mov_id, act_id, role) VALUES (913, 113, 'Andy Dufresne');
INSERT Movie_cast (mov_id, act_id, role) VALUES (914, 114, 'Lester Burnham');
INSERT Movie_cast (mov_id, act_id, role) VALUES (915, 115, 'Rose DeWitt Bukater');
INSERT Movie_cast (mov_id, act_id, role) VALUES (916, 116, 'Sean Maguire');
INSERT Movie_cast (mov_id, act_id, role) VALUES (917, 117, 'Ed');
INSERT Movie_cast (mov_id, act_id, role) VALUES (918, 118, 'Renton');
INSERT Movie_cast (mov_id, act_id, role) VALUES (920, 120, 'Elizabeth Darko');
INSERT Movie_cast (mov_id, act_id, role) VALUES (921, 121, 'Older Jamal');
INSERT Movie_cast (mov_id, act_id, role) VALUES (922, 122, 'Ripley');
INSERT Movie_cast (mov_id, act_id, role) VALUES (923, 114, 'Bobby Darin');
INSERT Movie_cast (mov_id, act_id, role) VALUES (909, 109, 'J.J. Gittes');
INSERT Movie_cast (mov_id, act_id, role) VALUES (919, 119, 'Alfred Borden');


--
-- Dummy data for table `Movie_Direction`
--


INSERT Movie_Direction (mov_id, dir_id) VALUES (901, 201);
INSERT Movie_Direction (mov_id, dir_id) VALUES (902, 202);
INSERT Movie_Direction (mov_id, dir_id) VALUES (903, 203);
INSERT Movie_Direction (mov_id, dir_id) VALUES (904, 204);
INSERT Movie_Direction (mov_id, dir_id) VALUES (905, 205);
INSERT Movie_Direction (mov_id, dir_id) VALUES (906, 206);
INSERT Movie_Direction (mov_id, dir_id) VALUES (907, 207);
INSERT Movie_Direction (mov_id, dir_id) VALUES (908, 208);
INSERT Movie_Direction (mov_id, dir_id) VALUES (909, 209);
INSERT Movie_Direction (mov_id, dir_id) VALUES (910, 210);
INSERT Movie_Direction (mov_id, dir_id) VALUES (911, 211);
INSERT Movie_Direction (mov_id, dir_id) VALUES (912, 212);
INSERT Movie_Direction (mov_id, dir_id) VALUES (913, 213);
INSERT Movie_Direction (mov_id, dir_id) VALUES (914, 214);
INSERT Movie_Direction (mov_id, dir_id) VALUES (915, 215);
INSERT Movie_Direction (mov_id, dir_id) VALUES (916, 216);
INSERT Movie_Direction (mov_id, dir_id) VALUES (917, 217);
INSERT Movie_Direction (mov_id, dir_id) VALUES (918, 218);
INSERT Movie_Direction (mov_id, dir_id) VALUES (919, 219);
INSERT Movie_Direction (mov_id, dir_id) VALUES (920, 220);
INSERT Movie_Direction (mov_id, dir_id) VALUES (921, 218);
INSERT Movie_Direction (mov_id, dir_id) VALUES (922, 215);
INSERT Movie_Direction (mov_id, dir_id) VALUES (923, 221);


--
-- Dummy data for table `Movie_Genres`
--


INSERT Movie_Genres (mov_id, gen_id) VALUES (922, 1001);
INSERT Movie_Genres (mov_id, gen_id) VALUES (917, 1002);
INSERT Movie_Genres (mov_id, gen_id) VALUES (903, 1002);
INSERT Movie_Genres (mov_id, gen_id) VALUES (912, 1003);
INSERT Movie_Genres (mov_id, gen_id) VALUES (911, 1005);
INSERT Movie_Genres (mov_id, gen_id) VALUES (908, 1006);
INSERT Movie_Genres (mov_id, gen_id) VALUES (913, 1006);
INSERT Movie_Genres (mov_id, gen_id) VALUES (926, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (928, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (918, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (921, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (902, 1008);
INSERT Movie_Genres (mov_id, gen_id) VALUES (923, 1009);
INSERT Movie_Genres (mov_id, gen_id) VALUES (907, 1010);
INSERT Movie_Genres (mov_id, gen_id) VALUES (927, 1010);
INSERT Movie_Genres (mov_id, gen_id) VALUES (901, 1010);
INSERT Movie_Genres (mov_id, gen_id) VALUES (914, 1011);
INSERT Movie_Genres (mov_id, gen_id) VALUES (906, 1012);
INSERT Movie_Genres (mov_id, gen_id) VALUES (904, 1013);
INSERT Movie_Genres (mov_id, gen_id) VALUES (922, 1001);
INSERT Movie_Genres (mov_id, gen_id) VALUES (917, 1002);
INSERT Movie_Genres (mov_id, gen_id) VALUES (903, 1002);
INSERT Movie_Genres (mov_id, gen_id) VALUES (912, 1003);
INSERT Movie_Genres (mov_id, gen_id) VALUES (911, 1005);
INSERT Movie_Genres (mov_id, gen_id) VALUES (908, 1006);
INSERT Movie_Genres (mov_id, gen_id) VALUES (913, 1006);
INSERT Movie_Genres (mov_id, gen_id) VALUES (926, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (928, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (918, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (921, 1007);
INSERT Movie_Genres (mov_id, gen_id) VALUES (902, 1008);
INSERT Movie_Genres (mov_id, gen_id) VALUES (923, 1009);
INSERT Movie_Genres (mov_id, gen_id) VALUES (907, 1010);
INSERT Movie_Genres (mov_id, gen_id) VALUES (927, 1010);
INSERT Movie_Genres (mov_id, gen_id) VALUES (901, 1010);
INSERT Movie_Genres (mov_id, gen_id) VALUES (914, 1011);
INSERT Movie_Genres (mov_id, gen_id) VALUES (906, 1012);
INSERT Movie_Genres (mov_id, gen_id) VALUES (904, 1013);


--
-- Dummy data for table `Rating`
--


INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (901, 9001, 8.40, 263575);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (902, 9002, 7.90, 20207);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (903, 9003, 8.30, 202778);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (906, 9005, 8.20, 484746);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (924, 9006, 7.30, NULL);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (908, 9007, 8.60, 779489);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (909, 9008, NULL, 227235);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (910, 9009, 3.00, 195961);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (911, 9010, 8.10, 203875);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (912, 9011, 8.40, NULL);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (914, 9013, 7.00, 862618);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (915, 9001, 7.70, 830095);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (916, 9014, 4.00, 642132);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (925, 9015, 7.70, 81328);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (918, 9016, NULL, 580301);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (920, 9017, 8.10, 609451);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (921, 9018, 8.00, 667758);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (922, 9019, 8.40, 511613);
INSERT Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (923, 9020, 6.70, 13091);



INSERT Reviewer (rev_id, rev_name) VALUES (9001, 'Righty Sock');
INSERT Reviewer (rev_id, rev_name) VALUES (9002, 'Jack Malvern');
INSERT Reviewer (rev_id, rev_name) VALUES (9003, 'Flagrant Baronessa');
INSERT Reviewer (rev_id, rev_name) VALUES (9004, 'Alec Shaw');
INSERT Reviewer (rev_id, rev_name) VALUES (9005, NULL);
INSERT Reviewer (rev_id, rev_name) VALUES (9006, 'Victor Woeltjen');
INSERT Reviewer (rev_id, rev_name) VALUES (9007, 'Simon Wright');
INSERT Reviewer (rev_id, rev_name) VALUES (9008, 'Neal Wruck');
INSERT Reviewer (rev_id, rev_name) VALUES (9009, 'Paul Monks');
INSERT Reviewer (rev_id, rev_name) VALUES (9010, 'Mike Salvati');
INSERT Reviewer (rev_id, rev_name) VALUES (9011, NULL);
INSERT Reviewer (rev_id, rev_name) VALUES (9012, 'Wesley S. Walker');
INSERT Reviewer (rev_id, rev_name) VALUES (9013, 'Sasha Goldshtein');
INSERT Reviewer (rev_id, rev_name) VALUES (9014, 'Josh Cates');
INSERT Reviewer (rev_id, rev_name) VALUES (9015, 'Krug Stillo');
INSERT Reviewer (rev_id, rev_name) VALUES (9016, 'Scott LeBrun');
INSERT Reviewer (rev_id, rev_name) VALUES (9017, 'Hannah Steele');
INSERT Reviewer (rev_id, rev_name) VALUES (9018, 'Vincent Cadena');
INSERT Reviewer (rev_id, rev_name) VALUES (9019, 'Brandt Sponseller');
INSERT Reviewer (rev_id, rev_name) VALUES (9020, 'Richard Adams');



--
-- Assignment
-- 


1. Write a query in SQL to find the name and year of the movies.
2. Write a query in SQL to find the year when the movie American Beauty released.
3. Write a query in SQL to find the movie which was released in the year 1999.
4. Write a query in SQL to find the movies which was released before 1998.
5. Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating. 
6. Write a query in SQL to find the titles of all movies that have no ratings.
7. Write a query in SQL to find the titles of the movies with ID 905, 907, 917.
8. Write a query in SQL to find the list of all those movies with year which include the words Boogie Nights.
9. Write a query in SQL to find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'. 
10.  Write a query in SQL to list all the information of the actors who played a role in the movie 'Annie Hall'.
11. Write a query in SQL to find the name of the director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
12. Write a query in SQL to list all the movies which released in the country other than UK.
13. Write a query in SQL to find the movie title, year, date of release, directors(firstname, lastName) and actor (firstname, lastName, and gender) for those movies which reviewer is unknown (means NULL).
14. Write a query in SQL to find the titles of all movies directed by the director whose first and last name are Woody Allen.
15. Write a query in SQL to find all the years which produced at least one movie and that received a rating of more than 3 stars(rev_stars). Show the results in increasing order.
16. Write a query in SQL to find the titles of all movies that have no ratings(rev_stars) .
17. Write a query in SQL to find the names of all reviewers who have ratings(rev_stars) with a NULL value.
18. Write a query in SQL to return the reviewer name, movie title, and stars for those movies which reviewed by a reviewer and must be rated(rev_stars). Sort the result by reviewer name, movie title, and number of stars.
19. Write a query in SQL to find the reviewers name and the title of the movie for those reviewers who rated more than one movies.
20. Write a query in SQL to find the names of all reviewers who rated the movie American Beauty.
21. Write a query in SQL to find the titles of all movies which have been reviewed by anybody except by Paul Monks.
22. Write a query in SQL to return the reviewer name, movie title, and number of stars for those movies which rating is the lowest one.
23. Write a query in SQL to find the titles of all movies directed by James Cameron. 
24. Write a query in SQL to find the name of those movies where one or more actors acted in two or more movies.
25. Write a query in SQL to list the first and last names of all the actors who were cast in the movie 'Annie Hall', and the roles they played in that production.
26. Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
27. Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role as Sean Maguire.
28. Write a query in SQL to list all the actors who have not acted in any movie between 1990 and 2000.
29. Write a query in SQL to list all the movies with year and genres.
30. Write a query in SQL to list all the movies with year, genres, and name of the director.
31. 
32. 
33. 
34. 
35. 
36. 
37. 
38. 
39. 
40. 
41. 
42. 
43. 
44. 
45. 
46. 
47. 
48. 
49. 
50. 








--
-- Assignment Solution
-- 


1. SELECT mov_title, mov_year FROM movie;
2. SELECT mov_year FROM movie WHERE mov_title = 'American Beauty';
3. SELECT mov_title FROM movie WHERE mov_year = 1999;
4. SELECT mov_title FROM movie WHERE mov_year < 1998;
5. SELECT reviewer.rev_name FROM reviewer, rating WHERE rating.rev_id = reviewer.rev_id AND rating.rev_stars > =7 
6. select * from movie where not exists (select * from rating where movie.mov_id = rating.mov_id);
7. SELECT mov_title FROM movie WHERE mov_id in (905, 907, 917);
8. SELECT mov_id, mov_title, mov_year FROM movie WHERE mov_title LIKE '%Boogie%Nights%' ORDER BY mov_year ASC;
9. SELECT act_id FROM actor WHERE act_fname = 'Woody' AND act_lname = 'Allen';
10. select * from movie, movie_cast, actor where actor.act_id = movie_cast.act_id and  movie_cast.mov_id = movie.mov_id and mov_title= 'annie hall';
11. select dir_fname, dir_lname from director, movie_direction, movie where director.dir_id =  movie_direction.dir_id and movie.mov_id  = movie_direction.mov_id and movie.mov_title ='Eyes Wide Shut';
12. SELECT mov_title, mov_year, mov_time, mov_dt_rel, mov_rel_country FROM movie WHERE mov_rel_country <> 'UK';
13. SELECT mov_title, mov_year, mov_dt_rel, dir_fname, dir_lname, act_fname, act_lname FROM movie a, movie_direction b, director c, rating d, reviewer e, actor f, movie_cast g WHERE a.mov_id = b.mov_id AND  b.dir_id = c.dir_id AND a.mov_id = d.mov_id  AND  d.rev_id = e.rev_id AND  a.mov_id = g.mov_id AND g.act_id = f.act_id AND e.rev_name IS NULL;
14. select * from movie, movie_direction, director where movie.mov_id = movie_direction.mov_id and movie_direction.dir_id = director.dir_id and dir_fname = 'Woody' and dir_lname ='Allen';
15. SELECT distinct mov_year FROM movie, rating WHERE movie. mov_id = rating.mov_id and rev_stars > 3 ORDER BY mov_year;
16. select * from movie where mov_id not in (select mov_id from rating);
17. select * from reviewer, rating where reviewer.rev_id = rating.rev_id and rev_stars is null;
18. SELECT rev_name, mov_title, rev_stars FROM reviewer, rating, movie WHERE reviewer.rev_id=rating.rev_id AND movie.mov_id=rating.mov_id AND reviewer.rev_name IS NOT NULL AND rating.rev_stars IS NOT NULL ORDER BY rev_name, mov_title, rev_stars;
19. SELECT rev_name, mov_title FROM reviewer, movie, rating, rating r2 WHERE rating.mov_id=movie.mov_id AND reviewer.rev_id=rating.rev_ID  AND rating.rev_id = r2.rev_id GROUP BY rev_name, mov_title HAVING count(*) > 1;
20. SELECT reviewer.rev_name FROM reviewer, rating, movie WHERE reviewer.rev_id = rating.rev_id AND movie.mov_id = rating.mov_id AND movie.mov_title = 'American Beauty';
21. SELECT movie.mov_title FROM movie, rating WHERE movie.mov_id = rating.mov_id and rating.rev_id NOT IN (SELECT rev_id FROM reviewer WHERE rev_name='Paul Monks');
22. select rev_name, mov_title, rev_stars from movie, rating, reviewer where movie.mov_id = rating.mov_id and rating.rev_id = reviewer.rev_id and rating.rev_stars = (select min(rev_stars) from rating);
23. SELECT mov_title FROM movie,  movie_direction, director where  movie.mov_id = movie_direction.mov_id and movie_direction.dir_id=director.dir_id and dir_fname = 'James' AND dir_lname='Cameron';
24. select mov_title from movie, movie_cast, actor where movie.mov_id = movie_cast.mov_id and movie_cast.act_id = actor.act_id and actor.act_id = ( select act_id from movie_cast group by act_id having count(*) >= 2);
25. SELECT act_fname,act_lname,role   FROM actor , movie_cast, movie where actor.act_id=movie_cast.act_id and   movie_cast.mov_id=movie.mov_id AND movie.mov_title='Annie Hall';
26. SELECT dir_fname, dir_lname, mov_title FROM  director,  movie_direction, movie, movie_cast WHERE movie.mov_id = movie_direction.mov_id and movie_direction.dir_id = director.dir_id and  movie.mov_id = movie_cast.mov_id AND mov_title =   'Eyes Wide Shut';
27. SELECT dir_fname, dir_lname, mov_title FROM  director, movie_direction, movie, movie_cast WHERE director.dir_id =movie_direction.dir_id AND movie_direction.mov_id=movie.mov_id AND movie.mov_id=movie_cast.mov_id AND movie_cast.role='Sean Maguire';
28. SELECT act_fname, act_lname, mov_title, mov_year FROM actor, movie_cast, movie WHERE actor.act_id = movie_cast.act_id AND movie_cast.mov_id= movie.mov_id AND movie.mov_year NOT BETWEEN 1990 and 2000;
29. SELECT mov_title, mov_year, gen_title FROM movie, movie_genres, genres where movie.mov_id  = movie_genres.mov_id and movie_genres.gen_id =  genres.gen_id;
30. SELECT mov_title, mov_year, gen_title, dir_fname, dir_lname FROM movie, movie_genres, genres, movie_direction, director where movie.mov_id = movie_direction.mov_id and movie_direction.dir_id = director.dir_id and movie.mov_id = movie_genres.mov_id and movie_genres.gen_id = genres.gen_id;
31. 
32. 
33. 
34. 
35. 
36. 
37. 
38. 
39. 
40. 
41. 
42. 
43. 
44. 
45. 
46. 
47. 
48. 
49. 
50. 