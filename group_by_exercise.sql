# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT title from titles;

# Update the previous query to sort the results alphabetically.
SELECT title from titles GROUP BY title ASC;

# Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:

select last_name from employees where last_name like 'E%' AND last_name like '%E' GROUP BY last_name ASC;
# Eldridge
# Erbe
# Erde
# Erie
# Etalle
# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
# You should get 846 rows.
select DISTINCT first_name, last_name from employees where last_name like 'E%' AND last_name like '%E';

# Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
select DISTINCT last_name from employees where last_name like '%q%' AND NOT last_name like '%qu%';
# Chleq
# Lindqvist
# Qiwen
# After each step commit your changes and push to GitHub when you are done.