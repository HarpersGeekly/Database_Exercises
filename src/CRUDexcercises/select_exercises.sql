USE codeup_test_db;


SELECT name from albums where artist = 'Pink Floyd';
# The name of all albums by Pink Floyd.

SELECT release_date from albums where artist = 'The Beatles';
# The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT genre from albums where name = 'Nevermind';
# The genre for Nevermind

SELECT name from albums where release_date like ('%199%');
# Which albums were released in the 1990s

SELECT name from albums where sales < 20000000;
# Which albums had less than 20 million certified sales

SELECT name from albums where genre = 'rock';
# All the albums in the rock genre. Is this all the rock albums in the table?

SELECT name from albums where genre like '%rock%';
# now it shows all rock albums..