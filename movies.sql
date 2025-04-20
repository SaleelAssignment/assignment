drop table if exists movies;
drop table if exists actor;
drop table if exists director;
drop table if exists movie_director;
drop table if exists genres;
drop table if exists movie_genres;
drop table if exists movie_cast;
drop table if exists movie_review;
drop table if exists movie_rating;


create table if not exists movies (
 movieID int primary key,
 title varchar(100),
 movie_year year,
 movie_time int,
 language varchar(20),
 releaseDate date,
 releaseCountry varchar(20));
 
 
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('901', 'Vertigo', 1958, '128', 'English', '1958-08-24', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('902', 'The Innocents', 1961, '100', 'English', '1962-02-19', 'SW');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('903', 'Lawrence of Arabia', 1962, '216', 'English', '1962-12-11', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('904', 'The Deer Hunter', 1978, '183', 'English', '1979-03-08', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('905', 'Amadeus', 1984, '160', 'English', '1985-01-07', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('906', 'Blade Runner', 1982, '117', 'English', '1982-09-09', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('908', 'The Usual Suspects', 1995, '106', 'English', '1995-08-25', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('909', 'Chinatown', 1974, '130', 'English', '1974-08-09', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('910', 'Boogie Nights', 1997, '155', 'English', '1998-02-16', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('911', 'Annie Hall', 1977, '93', 'English', '1977-04-20', 'USA');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('912', 'Princess Mononoke', 1997, '134', 'Japanese', '2001-10-19', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('913', 'The Shawshank Redemption', 1994, '142', 'English', '1995-02-17', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('915', 'Titanic', 1997, '194', 'English', '1998-01-23', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('916', 'Good Will Hunting', 1997, '126', 'English', '1998-06-03', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('917', 'Deliverance', 1972, '109', 'English', '1982-10-05', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('918', 'Trainspotting', 1996, '94', 'English', '1996-02-23', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('919', 'The Prestige', 2006, '130', 'English', '2006-11-10', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('921', 'Slumdog Millionaire', 2008, '120', 'English', '2009-01-09', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('922', 'Aliens', 1986, '137', 'English', '1986-08-29', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('923', 'Beyond the Sea', 2004, '118', 'English', '2004-11-26', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('924', 'Avatar', 2009, '162', 'English', '2009-12-17', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('926', 'Seven Samurai', 1954, '207', 'Japanese', '1954-04-26', 'JP');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('927', 'Spirited Away', 2001, '125', 'Japanese', '2003-09-12', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('928', 'Back to the Future', 1985, '116', 'English', '1985-12-04', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseDate`, `releaseCountry`) VALUES ('925', 'Braveheart', 1995, '178', 'English', '1995-09-08', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseCountry`) VALUES ('914', 'American Beauty', 1999, '122', 'English', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseCountry`) VALUES ('920', 'Donnie Darko', 2001, '113', 'English', 'UK');
INSERT INTO `movies` (`MovieID`, `title`, `movie_year`, `movie_time`, `language`, `releaseCountry`) VALUES ('907', 'Eyes Wide Shut', 1999, '159', 'English', 'UK');


create table if not exists actor (
actorID int primary key,
firstName varchar(20),
lastName varchar(20),
gender char(1));


INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('101', 'James', 'Stewart', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('102', 'Deborah', 'Kerr', 'F');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('103', 'Peter', 'OToole', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('104', 'Robert', 'De Niro', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('105', 'F. Murray', 'Abraham', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('106', 'Harrison', 'Ford', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('107', 'Nicole', 'Kidman', 'F');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('108', 'Stephen', 'Baldwin', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('109', 'Jack', 'Nicholson', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('110', 'Mark', 'Wahlberg', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('111', 'Woody', 'Allen', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('112', 'Claire', 'Danes', 'F');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('113', 'Tim', 'Robbins', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('114', 'Kevin', 'Spacey', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('115', 'Kate', 'Winslet', 'F');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('116', 'Robin', 'Williams', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('117', 'Jon', 'Voight', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('118', 'Ewan', 'McGregor', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('119', 'Christian', 'Bale', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('120', 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('121', 'Dev', 'Patel', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('122', 'Sigourney', 'Weaver', 'F');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('123', 'David', 'Aston', 'M');
INSERT INTO `actor` (`actorID`, `firstName`, `lastName`, `gender`) VALUES ('124', 'Ali', 'Astin', 'F');


create table if not exists director (
directorID int primary key,
firstName varchar(20),
lastName varchar(20));

INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('201', 'Alfred', 'Hitchcock');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('202', 'Jack', 'Clayton');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('203', 'David', 'Lean');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('204', 'Michael', 'Cimino');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('205', 'Milos', 'Forman');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('206', 'Ridley', 'Scott');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('207', 'Stanley', 'Kubrick');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('208', 'Bryan', 'Singer');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('209', 'Roman', 'Polanski');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('210', 'Paul', 'Thomas Anderson');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('211', 'Woody', 'Allen');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('212', 'Hayao', 'Miyazaki');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('213', 'Frank', 'Darabont');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('214', 'Sam', 'Mendes');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('215', 'James', 'Cameron');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('216', 'Gus', 'Van Sant');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('217', 'John', 'Boorman');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('218', 'Danny', 'Boyle');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('219', 'Christopher', 'Nolan');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('220', 'Richard', 'Kelly');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('221', 'Kevin', 'Spacey');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('222', 'Andrei', 'Tarkovsky');
INSERT INTO `director` (`directorID`, `firstName`, `lastName`) VALUES ('223', 'Peter', 'Jackson');


create table if not exists movie_director (
directorID int,
movieID int,
primary key(directorID, movieID),
constraint fk_director_directorID foreign key(directorID) references director(directorID),
constraint fk_movies_movieID foreign key(movieID) references movies(movieID));


INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('201', '901');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('202', '902');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('203', '903');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('204', '904');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('205', '905');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('206', '906');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('207', '907');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('208', '908');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('209', '909');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('210', '910');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('211', '911');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('212', '912');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('213', '913');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('214', '914');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('215', '915');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('216', '916');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('217', '917');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('218', '918');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('219', '919');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('220', '920');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('218', '921');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('215', '922');
INSERT INTO `movie_director` (`directorID`, `movieID`) VALUES ('221', '923');


create table if not exists genres (
genresID int primary key,
genresTitle varchar(20));

INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1001', 'Action');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1002', 'Adventure');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1003', 'Animation');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1004', 'Biography');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1005', 'Comedy');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1006', 'Crime');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1007', 'Drama');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1008', 'Horror');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1009', 'Music');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1010', 'Mystery');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1011', 'Romance');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1012', 'Thriller');
INSERT INTO `genres` (`genresID`, `genresTitle`) VALUES ('1013', 'War');


create table if not exists movie_genres (
movieID int,
genresID int,
primary key(movieID, genresID),
constraint fk_movies_genres_movieID foreign key(movieID) references movies(movieID),
constraint fk_genres_genresID foreign key(genresID) references genres(genresID));


INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('922', '1001');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('917', '1002');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('903', '1002');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('912', '1003');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('911', '1005');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('908', '1006');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('913', '1006');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('926', '1007');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('928', '1007');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('918', '1007');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('921', '1007');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('902', '1008');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('923', '1009');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('907', '1010');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('927', '1010');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('901', '1010');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('914', '1011');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('906', '1012');
INSERT INTO `movie_genres` (`movieID`, `genresID`) VALUES ('904', '1013');



create table if not exists movie_cast(
actorID int,
movieID int,
role varchar(40),
primary key(actorID, movieID),
constraint fk_movie_cast_actorID foreign key(actorID) references actor(actorID),
constraint fk_movie_cast_movieID foreign key(movieID) references movies(movieID));


INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('101', '901', 'John Scottie Ferguson');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('102', '902', 'Miss Giddens');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('103', '903', 'T.E. Lawrence');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('104', '904', 'Michael');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('105', '905', 'Antonio Salieri');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('106', '906', 'Rick Deckard');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('107', '907', 'Alice Harford');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('108', '908', 'McManus');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('110', '910', 'Eddie Adams');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('111', '911', 'Alvy Singer');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('112', '912', 'San');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('113', '913', 'Andy Dufresne');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('114', '914', 'Lester Burnham');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('115', '915', 'Rose DeWitt Bukater');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('116', '916', 'Sean Maguire');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('117', '917', 'Ed');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('118', '918', 'Renton');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('120', '920', 'Elizabeth Darko');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('121', '921', 'Older Jamal');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('122', '922', 'Ripley');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('114', '923', 'Bobby Darin');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('109', '909', 'J.J. Gittes');
INSERT INTO `movie_cast` (`actorID`, `movieID`, `role`) VALUES ('119', '919', 'Alfred Borden');


create table if not exists movie_review (
reviewID int primary key,
reviewName varchar(40));

INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9001', 'Righty Sock');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9002', 'Jack Malvern');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9003', 'Flagrant Baronessa');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9004', 'Alec Shaw');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9005', NULL);
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9006', 'Victor Woeltjen');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9007', 'Simon Wright');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9008', 'Neal Wruck');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9009', 'Paul Monks');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9010', 'Mike Salvati');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9011', NULL);
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9012', 'Wesley S. Walker');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9013', 'Sasha Goldshtein');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9014', 'Josh Cates');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9015', 'Krug Stillo');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9016', 'Scott LeBrun');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9017', 'Hannah Steele');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9018', 'Vincent Cadena');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9019', 'Brandt Sponseller');
INSERT INTO `movie_review` (`reviewID`, `reviewName`) VALUES ('9020', 'Richard Adams');



create table if not exists movie_rating(
movieID int,
reviewID int,
reviewStars int,
numberOfRatings bigint,
primary key(movieID, reviewID),
constraint fk_movie_rating_movieID foreign key(movieID) references movies(movieID),
constraint fk_movie_rating_reviewID foreign key(reviewID) references movie_review(reviewID));


INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('901', '9001', '8.40', '263575');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('902', '9002', '7.90', '20207');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('903', '9003', '8.30', '202778');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('906', '9005', '8.20', '484746');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('924', '9006', '7.30', NULL);
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('908', '9007', '8.60', '779489');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('909', '9008', NULL, '227235');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('910', '9009', '3.00', '195961');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('911', '9010', '8.10', '203875');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('912', '9011', '8.40', NULL);
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('914', '9013', '7.00', '862618');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('915', '9001', '7.70', '830095');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('916', '9014', '4.00', '642132');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('925', '9015', '7.70', '81328');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('918', '9016', NULL, '580301');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('920', '9017', '8.10', '609451');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('921', '9018', '8.00', '667758');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('922', '9019', '8.40', '511613');
INSERT INTO `movie_rating` (`movieID`, `reviewID`, `reviewStars`, `numberOfRatings`) VALUES ('923', '9020', '6.70', '13091');
