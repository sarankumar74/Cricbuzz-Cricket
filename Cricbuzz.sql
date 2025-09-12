use cricbuzz;


create table players_trend(
players_id	int primary key,
name	varchar(100),
teamName varchar(100),
faceImageId bigint
);

select * from players_trend;

select p.players_id, p.name, p.teamName from players_trend p 
left join international i
on p.name = i.seriesname 
where teamName = 'India' 
order by
p.name  asc;


create table international(
matchType	varchar(100),
seriesname varchar(200),
matchId bigint primary key,
matchDesc	varchar(100),
matchFormat varchar(50),
startDate	bigint,
status	varchar(100),
team1_name	varchar(100),
team2_name	varchar(100),
venue_ground	varchar(100),
venue_city	varchar(100),
venue_timezone varchar(50)
);

select * from international ;

select matchType,  seriesname, team1_name, team2_name, venue_ground from international ;

DESCRIBE international;

create table players(
id int primary key,
name varchar(100),
fullName varchar(100),
nickName varchar(100),
captain boolean,
role varchar(100),
keeper boolean,
substitute boolean,
teamId int,
battingStyle varchar(100),
bowlingStyle varchar(100),
teamName varchar(100),
faceImageId bigint

);

DESCRIBE players;

SELECT b.rank,  b.difference, p.id, p.nickName, p.battingStyle, p.teamId
FROM batsman b INNER JOIN players p limit 15;


select * from players;


create table league(
id int primary key,
name varchar(200),
startDt	bigint,
endDt bigint
);

select * from league;
DESCRIBE league;


CREATE TABLE batsman (
    id INT PRIMARY KEY,
    `rank` INT,
    name VARCHAR(100),
    country VARCHAR(100),
    rating INT,
    difference INT,
    points INT,
    lastUpdatedOn DATE,
    trend VARCHAR(10),
    faceImageId BIGINT,
    countryId INT
);

SELECT `rank`, name, country, rating, points, difference, countryId FROM batsman;
SELECT name, country, rating, points, trend, countryId FROM batsman order by country and  `name` asc;

SELECT name, country, rating, points, trend, countryId
FROM batsman
ORDER BY country ASC;


CREATE TABLE bowlers (
    id INT PRIMARY KEY,
    `rank` INT,
    name VARCHAR(100),
    country VARCHAR(100),
    rating INT,
    difference INT,
    points INT,
    lastUpdatedOn DATE,
    trend VARCHAR(10),
    faceImageId BIGINT,
    countryId INT
);
select * from bowlers;
SELECT `rank`, name, country, rating, points, difference, countryId FROM bowlers    where rating >= 600 and country = 'India';


create table ipl (
team_id int primary key,
team_name varchar(100),
team_s_name varchar(100),
image_id bigint,
country_name  varchar(50),
belong_to varchar(50)
);

select * from ipl;



create table match_scorecard(
matchId bigint,
inningsId	int,
timeScore	bigint,
batTeamId	int,
batTeamName	 varchar(100),
batTeamShortName varchar(100),
batId	bigint, 
batName varchar(100),
isCaptain boolean,
isKeeper boolean,
runs	int,
balls	int,
strikeRate int,
outDesc VARCHAR(255)
);

select * from match_scorecard;

create table rowhead(
rowheader varchar(100),
test int,
odi int,
t20 int,
ipl int
); 

select * from rowhead;


create table player_rank (
    id int primary key,
    `rank` int,
    name varchar(50),
    country varchar(50),
    rating bigint,
    points bigint,
    lastUpdatedOn date,
    trend varchar(20),
    faceImageId bigint,
    countryId int
);

select * from player_rank;

select p.`rank`, p.country, p.name, p.country, i.team, i.`rank` from player_rank p inner join icc_stands i 
where i.`rank` >= 4 order by p.country desc ;



create table icc_stands(
`rank` int,
flag bigint,
team varchar(20),
pct decimal(10,4)
);

select * from icc_stands;


create table player_search(
id int primary key,
name varchar(20),
teamName varchar(20),
faceImageId bigint,
dob date
);

select * from series_player;

select p.id, p.name, p.teamName, p.dob from series_player 
left join series_player on series_player.teamName = series_player.teamName;


create table series_player(
name varchar(20),
isHeader boolean,
id int,
role varchar(20),
imageId bigint,
battingStyle varchar(200),
bowlingStyle varchar(200)
);

drop table series_player.csv;
drop table if exists series_player.csv;


select * from series_player;


-- SQL Query 1 --

create table Questions_1 (
id int primary key auto_increment,
full_name varchar(20),
playing_role varchar(20),
batting_style varchar(50),
bowling_style varchar(50)
);

select * from Questions_1;

SELECT q.id AS question_id, q.full_name, q.playing_role, q.batting_style, l.team1, l.team2, l.id AS match_id
FROM Questions_1 q
LEFT JOIN last_30_days l
    ON q.id = l.id limit 5;  



create table last_30_days (
id int primary key auto_increment,
match_description	varchar(200),
team1 varchar(200),
team2	varchar(200),
venue_name varchar(100),
city	varchar(100),
match_date date
);

select * from last_30_days
where team1 = 'India' and city = 'Mumbai';

create table odi_match (
id int primary key auto_increment,
`date`	date,
match_description varchar(250),
venue	 varchar(200),
city	varchar(100),
result varchar(200)
);

select * from odi_match;

create table question_4 (
id int primary key auto_increment,
venue_name varchar(200),
city	varchar(200),
country	varchar(50),
capacity bigint
);

select * from question_4;

create table question_5 (
id int primary key auto_increment,
`date` date,
`match`	varchar(100),
venue varchar(100),
result	varchar(100)
);

select * from question_5;

create table question_6 (
full_name	varchar(100),
country varchar(100),
playing_role varchar(100)
);

select * from question_6;

CREATE TABLE question_7 (
    match_type VARCHAR(50),
    player_name VARCHAR(50),
    country VARCHAR(50),
    highest_score BIGINT,
    opponent VARCHAR(50),
    venue VARCHAR(50),
    `date` DATE,
    note VARCHAR(100)
);

select * from question_7;

-- q1 final --

create table q1 (
id int primary key auto_increment,
full_name varchar(30),
role varchar(30),
country	varchar(30),
batting_style	varchar(30),
bowling_style varchar(30)
);
select * from q1;
select id, full_name, role,country, batting_style, bowling_style from q1
where country = 'India';


create table q2 (
id int primary key auto_increment,
match_description varchar(200),
teams	varchar(50),
venue	varchar(50),
city	varchar(50),
match_date date
);
select * from q2;
select match_description, teams, venue, city, match_date from q2;

CREATE TABLE q3 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `Player Name` VARCHAR(50),
     `Total Runs Scored` INT,
     `Batting Average` FLOAT,
     `County Name` VARCHAR(50),
     `Centuries` INT
);
select id, `Player Name`,  `Total Runs Scored`, `Batting Average`, `County Name`, `Centuries` from q3 limit 10;

create table q4 (
id INT PRIMARY KEY AUTO_INCREMENT,
`Venue ID` int,
`Venue Name` varchar(200),
City varchar(100),
Country varchar(30),
`Capacity` bigint
);
select * from q4;
select `Venue Name`, `Venue ID`, `Capacity`, Country, City from q4 where  `Capacity` > 50000 ;
CREATE TABLE q5 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `Team Name` VARCHAR(50),
    `Format` VARCHAR(10),
    `Total Wins` INT,
    `Total Losses` INT,
    `Venue` VARCHAR(50),
    `Last Match Date` DATE,
    `Total Matches` INT
);
select * from q5;
select `Team Name`, `Format` ,  `Total Wins`,   `Total Losses` from q5;

create table q6 (
id int primary key auto_increment,
`Player Name` varchar(20),
`Format` varchar(20),
`Role` varchar(20),
Team varchar(50),
Matches	int, 
Runs	bigint,
Wickets	int, 
Average	int,
`Strike Rate` bigint,
`IPL Team` varchar(10)
);

select * from q6;

SELECT  q6.id, q6.`Player Name`, q6.Team, q6.Runs, q6.Wickets, q5.`Total Wins`
FROM q6 INNER JOIN q5 ON q6.Team = q5.`Team Name`;


SELECT  q7.id, q7.`Match ID`, q7.Format, q7.`Date`, q7.Runs, q7.Team
FROM q7 INNER JOIN q7 ON q6.Team = q7.`Team Name`;

SELECT  q6.`Player Name`,q6.Team,q7.`Match ID`,q7.Format,q7.`Date`,q7.Runs
FROM q6 LEFT JOIN q7 ON q6.Team = q7.Team;


CREATE TABLE q7 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `Match ID` VARCHAR(20),
    Format VARCHAR(20),
    `Date` DATE,
    Venue VARCHAR(50),
    Team VARCHAR(20),
    Player VARCHAR(40),
    `Role` VARCHAR(20),
    Runs INT,
    `Balls Faced` INT, 
    Fours INT,
    Sixes INT,
    `Strike Rate` FLOAT,
    Overs FLOAT,
    Maidens INT,
    `Runs Conceded` INT,
    Wickets INT,
    Economy FLOAT
);




SELECT  q7.Sixes,  q7.Team, q7.Overs, q7.Player,  q7.Runs, q8.`Total Matches`, q8.`Series Name`
FROM q8 RIGHT JOIN q7 ON q7.Team = q7.player;



CREATE TABLE q8 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `Series Name` varchar(70),
    `Host Country` varchar(20),
    `Match Type` varchar(20),
    `Start Date` date,
    `Total Matches` int
);

SELECT  q8.id, q8.`Series Name`, q8.`Host Country`
FROM q8 LEFT JOIN q9 ON q8.`Series Name` = q9.`Player Name`;

create table q9 (
id int primary key auto_increment,
`Player Name` varchar(20),
`Total Runs` int8,
 `Total Wickets` int8,
 `Batting Style` varchar(30),
 `Bowling Style`	varchar(30),
 `Format` varchar(10)
);


select * from q9;

create table q10 (
id int primary key auto_increment,
`Match` int,
`Team A` varchar(30),
`Team B`	varchar(30),
`Winning Team` varchar(30),
`Victory Margin` int4,
`Victory Type` varchar(30),
`Venue` varchar(30),
`Player Name` varchar(30),
`Player Role` varchar(30),	
`Strike Rate` varchar(30)
);
select * from q10;




create table odi (
id int primary key auto_increment,
`Player Name` varchar(20), 
Runs	int, 
`Wickets` int,
Team	varchar(30),
Venue varchar(30),
`Date` date, 
Country varchar(20)
);

select * from odi;

SELECT  q6.`Player Name`,q6.Team,q7.`Match ID`,q7.Format,q7.`Date`,q7.Runs
FROM q6 LEFT JOIN q7 ON q6.Team = q7.Team;

select t20i.id,   t20i.Runs, t20i.`Wickets`, odi.`Player Name`
from t20i left join odi on t20i.`Player Name` = odi.`Player Name` ;

SELECT 
    t20i.id, 
    t20i.`Player Name` AS T20_Player, 
    t20i.Runs AS T20_Runs, 
    t20i.`Wickets` AS T20_Wickets,
    odi.`Player Name` AS ODI_Player,
    odi.Runs AS ODI_Runs
FROM t20i
LEFT JOIN odi
    ON t20i.`Player Name` = odi.`Player Name`
    AND t20i.Runs = odi.Runs;


create table t20i (
id int primary key auto_increment,
`Player Name` varchar(20), 
Runs	int, 
`Wickets` int,
Team	varchar(30),
Venue varchar(30),
`Date` date, 
Country varchar(20)
);

select * from t20i;

create table reasent (
`Unnamed: 0` int,
matchId bigint, 
seriesId bigint, 
seriesName varchar(200),
matchDesc varchar(50),
matchFormat varchar(50),
startDate bigint,
endDate bigint,
state varchar(200),
status varchar(200),
team1  varchar(200),
team2 varchar(200),
venue varchar(200),
city varchar(200)
);

select seriesName, team1, team2, venue, city,status from reasent;


create table crud_operation (
id int primary key auto_increment,
`full name` varchar(40),
role  varchar(40),
country varchar(40),
runs bigint,
matches varchar(50),
venue varchar(200),
city varchar(200)
);



DESCRIBE crud_operation;


CREATE DATABASE IF NOT EXISTS cricket;

USE Cricbuzz;

CREATE TABLE IF NOT EXISTS sample_players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50),
    role VARCHAR(30),
    country VARCHAR(30),
    runs INT,
    matches INT,
    wickets INT,
    `batting styles` VARCHAR(50),
    `batting style`VARCHAR(50),
    team VARCHAR(50)
);
drop table sample_players;
INSERT INTO sample_players (full_name, role, country, runs, matches, wickets, `batting styles`, `batting style`, team) VALUES
('Virat Kohli', 'Batsman', 'India', 4000, 120, 4, 'Right-hand bat', 'Right-hand bat', 'India T20I'),
('David Warner', 'Batsman', 'Australia', 3500, 110, 0, 'Left-hand bat', 'Left-hand bat', 'Australia T20I'),
('Babar Azam', 'Batsman', 'Pakistan', 3600, 105, 0, 'Right-hand bat', 'Right-hand bat', 'Pakistan T20I'),
('Jos Buttler', 'Wicketkeeper', 'England', 3100, 100, 0, 'Right-hand bat', 'Right-hand bat', 'England T20I'),
('Glenn Maxwell', 'All-rounder', 'Australia', 2500, 95, 38, 'Right-hand bat', 'Right-arm offbreak', 'Australia T20I'),
('Rashid Khan', 'Bowler', 'Afghanistan', 1000, 80, 120, 'Right-hand bat', 'Right-arm legbreak', 'Afghanistan T20I'),
('Kane Williamson', 'Batsman', 'New Zealand', 6500, 160, 0, 'Right-hand bat', 'Right-hand bat', 'New Zealand ODI'),
('Steve Smith', 'Batsman', 'Australia', 7000, 180, 20, 'Right-hand bat', 'Right-arm legbreak', 'Australia ODI'),
('Rohit Sharma', 'Batsman', 'India', 9800, 240, 8, 'Right-hand bat', 'Right-arm offbreak', 'India ODI'),
('Shakib Al Hasan', 'All-rounder', 'Bangladesh', 7500, 230, 280, 'Left-hand bat', 'Left-arm orthodox', 'Bangladesh ODI'),
('Ben Stokes', 'All-rounder', 'England', 5000, 150, 100, 'Left-hand bat', 'Right-arm fast-medium', 'England ODI'),
('Trent Boult', 'Bowler', 'New Zealand', 600, 120, 220, 'Right-hand bat', 'Left-arm fast-medium', 'New Zealand ODI'),
('Cheteshwar Pujara', 'Batsman', 'India', 7000, 100, 0, 'Right-hand bat', 'Right-hand bat', 'India Test'),
('Joe Root', 'Batsman', 'England', 11000, 140, 25, 'Right-hand bat', 'Right-arm offbreak', 'England Test'),
('Pat Cummins', 'Bowler', 'Australia', 800, 50, 210, 'Right-hand bat', 'Right-arm fast', 'Australia Test'),
('James Anderson', 'Bowler', 'England', 1200, 180, 680, 'Left-hand bat', 'Right-arm fast-medium', 'England Test'),
('Ravindra Jadeja', 'All-rounder', 'India', 2600, 70, 250, 'Left-hand bat', 'Left-arm orthodox', 'India Test'),
('Marnus Labuschagne', 'Batsman', 'Australia', 3500, 40, 10, 'Right-hand bat', 'Right-arm legbreak', 'Australia Test'),
('MS Dhoni', 'Wicketkeeper', 'India', 5000, 230, 0, 'Right-hand bat', 'Right-hand bat', 'Chennai Super Kings'),
('AB de Villiers', 'Batsman', 'South Africa', 4800, 170, 2, 'Right-hand bat', 'Right-arm medium', 'Royal Challengers Bangalore'),
('Chris Gayle', 'Batsman', 'West Indies', 4950, 150, 20, 'Left-hand bat', 'Right-arm offbreak', 'Punjab Kings'),
('Hardik Pandya', 'All-rounder', 'India', 1800, 120, 55, 'Right-hand bat', 'Right-arm fast-medium', 'Mumbai Indians'),
('Rohit Sharma', 'Batsman', 'India', 6000, 220, 15, 'Right-hand bat', 'Right-arm offbreak', 'Mumbai Indians'),
('Suresh Raina', 'Batsman', 'India', 5500, 190, 25, 'Left-hand bat', 'Right-arm offbreak', 'Chennai Super Kings'),
('Shaheen Afridi', 'Bowler', 'Pakistan', 300, 60, 90, 'Left-hand bat', 'Left-arm fast', 'Pakistan T20I'),
('Martin Guptill', 'Batsman', 'New Zealand', 2900, 100, 0, 'Right-hand bat', 'Right-hand bat', 'New Zealand T20I'),
('Andre Russell', 'All-rounder', 'West Indies', 1500, 80, 70, 'Right-hand bat', 'Right-arm fast-medium', 'West Indies T20I'),
('Kieron Pollard', 'All-rounder', 'West Indies', 1800, 100, 60, 'Right-hand bat', 'Right-arm medium', 'West Indies T20I'),
('Quinton de Kock', 'Wicketkeeper', 'South Africa', 2200, 85, 0, 'Left-hand bat', 'Left-hand bat', 'South Africa T20I'),
('Faf du Plessis', 'Batsman', 'South Africa', 2300, 90, 5, 'Right-hand bat', 'Right-arm legbreak', 'South Africa T20I');


select * from sample_players;
