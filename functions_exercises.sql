# use order_by_exercises for the original queries.

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each
# gender with those names. Your results should be:

# 441 M
# 268 F

select concat(COUNT(*), " ", gender) as "Gender Count"
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last
# name together as a single column in your results:

select concat(first_name, " ", last_name) as "Full Name"
from employees
where last_name like 'E%E';

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have
# been working at the company (Hint: You will also need to use now() or curdate())

select first_name, last_name, datediff(curdate(), hire_date) as "Number of Days Employed"
from employees
where hire_date like '199%' AND birth_date like '%-12-25';


# Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first
# and last names. You will find there were some duplicate first and last name pairs in your previous results.
# Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select concat(first_name, " ", last_name) as "Full Name", count(first_name) as "Number of People with this name"
from employees
where last_name like '%q%' AND NOT last_name like '%qu%'
GROUP BY `Full Name` ORDER BY `Number of People with this name` DESC;

# GROUP BY and ORDER BY can call the specific tags I created after "as"...

