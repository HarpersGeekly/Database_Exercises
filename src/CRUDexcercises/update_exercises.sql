USE codeup_test_db;


# Write SELECT statements to output each of the following with a caption:

SELECT * FROM albums;
# All albums in your table.
SELECT * FROM albums where release_date < 1980;
# All albums released before 1980
Select name from albums where artist = 'Michael Jackson';
# All albums by Michael Jackson

# After each SELECT add an UPDATE statement to:
#  Make all the albums 10 times more popular (sales * 10)
#  Move all the albums before 1980 back to the 1800s.
#  Change "Michael Jackson" to "Peter Jackson"
# Add SELECT statements after each UPDATE so you can see the results of your handiwork.

UPDATE albums SET sales = (sales * 10);
SELECT sales FROM albums;

UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT artist, name FROM albums where release_date = 1800;

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist FROM albums where artist = 'Peter Jackson';


# Push all your changes to GitHub.