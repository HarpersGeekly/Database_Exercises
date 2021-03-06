
# Be sure to select the employees database from the dropdown before you begin.
# Write individual queries to find the following things:

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
select * from employees where first_name IN ('Irena', 'Vidya', 'Maya');

# Employees whose last name starts with 'E' — 7,330 rows.
select * from employees where last_name like 'E%';

# Employees hired in the 90s — 135,214 rows.
select * from employees where hire_date like '%199%';

# Employees born on Christmas — 842 rows.
select * from employees where birth_date like '%-12-25%';

# Employees with a 'q' in their last name — 1,873 rows.
select * from employees where last_name like '%q%';



# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
select * from employees where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Now add a condition to find everybody with those names who is also male — 441 rows.
select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select * from employees where last_name like 'E%' OR last_name like '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select * from employees where last_name like 'E%' AND last_name like '%E';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
select * from employees where hire_date like '199%' AND birth_date like '%-12-25';
# you could also use:
# select * from employees where hire_date between '1990-01-01' AND '1999-12-31' AND birth_date like '%-12-25';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select * from employees where last_name like '%q%' AND NOT last_name like '%qu%';



# Modify your first query to order by first name. The first result should be Irena Majewski and the last result should
# be Vidya Schaft.
select * from employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last
# should be Vidya Zweizig.
select * from employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# Change the order by clause so that you order by last name before first name. Your first result should still be Irena
# Acton but now the last result should be Maya Zyda.
select * from employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your
# results should not change!
select * from employees where last_name like '%E%' ORDER BY emp_no;
# select * from employees where last_name like 'e%e' ORDER BY emp_no;

# Now reverse the sort order for both queries.
select * from employees where last_name like '%E%' ORDER BY emp_no desc;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest
# employee who was hired last. It should be Khun Bernini.
select * from employees where hire_date like '199%' AND birth_date like '%-12-25' ORDER BY birth_date asc, hire_date desc;