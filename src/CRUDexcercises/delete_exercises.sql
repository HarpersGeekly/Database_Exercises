USE codeup_test_db;

# Create a file called delete_exercises.sql.
# Write SELECT statements for:
SELECT * from albums where release_date > 1991;
DELETE from albums where release_date > 1991;
# Albums released after 1991
SELECT * from albums where genre = 'disco';
DELETE from albums where genre = 'disco';
# Albums with the genre "disco"
SELECT * from albums where artist = 'Guns N Roses';
DELETE from albums where artist = 'Guns N Roses';
# Albums by "Whitney Houston" (...or maybe an artist of your choice)
# Make sure to put appropriate captions before each SELECT.
# Convert the SELECT statements to DELETE.
# Use the MySQL command line client to make sure your records really were removed.
# Commit your changes after each step and push to GitHub.