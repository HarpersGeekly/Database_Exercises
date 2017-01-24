CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
id INT unsigned AUTO_INCREMENT primary key,
artist VARCHAR(256) NOT NULL,
name VARCHAR(256) NOT NULL ,
release_date YEAR NOT NULL ,
sales FLOAT NOT NULL,
genre VARCHAR(256) NOT NULL
);

# not null means required

-- Create a new file in your called albums_migration.sql.
-- The first command your albums_migration.sql will need is:
--  USE codeup_test_db;
-- Next, use DROP IF EXISTS to (optionally) delete a table called albums.
-- After dropping in your SQL script, create an albums table with the following columns:
-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released (Note: MySQL also supports a YEAR data type!)
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)
-- Run the script with
--  mysql -u codeup -p < albums_migration.sql
-- After running the script, connect to the MySQL client normally...
-- USE the codeup_test_db and use DESCRIBE and SHOW CREATE to verify that your albums table has been successfully created.
-- If everything looks good, remember to git push your changes!