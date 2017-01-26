# find the salaries of all currently employed developers (using Aliases):
select
  CONCAT(e.first_name, ' ', e.last_name) as full_name,
  d.dept_name,
  s.salary
from employees e
  JOIN dept_emp ON e.emp_no = dept_emp.emp_no
  JOIN departments d ON dept_emp.dept_no = d.dept_no
  JOIN salaries s ON e.emp_no = s.emp_no
where d.dept_name = 'Development' AND s.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01';

# show each department along with the name of the current manager for that department.
# look on the first table for foreign keys that reference other tables
# if no foreign keys...search for a table that does have the dept_no as FK
# anytime you're going to join something ask "whats the other table that I have a foreign key for?"
# in a way "ON" is a lot like "where"(non-syntax wise) as such: "join these tables together where they equal"

# First Attempt:

select
  CONCAT(e.first_name, ' ', e.last_name) as 'Current Manager',
  d.dept_name as 'Department'
from dept_manager
JOIN employees e ON dept_manager.emp_no = e.emp_no
JOIN departments d ON dept_manager.dept_no = d.dept_no
where dept_manager.to_date = '9999-01-01';

# Second Attempt (BETTER):

SELECT concat(employees.first_name,' ', employees.last_name) as ' Current Manager', dept_name
from departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > curdate();

# Find the name of all departments currently managed by women.

select
  CONCAT(employees.first_name, ' ', employees.last_name) as 'Current Manager',
  departments.dept_name as 'Department'
from dept_manager
  JOIN employees ON dept_manager.emp_no = employees.emp_no
  JOIN departments ON dept_manager.dept_no = departments.dept_no
where employees.gender = 'F' AND dept_manager.to_date > curdate();

# SECOND ATTEMPT:
select departments.dept_name, managers.first_name, managers.last_name
from departments
  join dept_manager on departments.dept_no = dept_manager.dept_no
  join employees as managers on dept_manager.emp_no = managers.emp_no
where managers.gender = "F"
      AND dept_manager.to_date > curdate();

# Find the count of current titles of employees currently working in the Customer Service department.

SELECT title as 'Job Title', count(employees.emp_no /* or count(*) for all results...*/) as 'Number of Employees'
from employees
  JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
  JOIN titles ON employees.emp_no = titles.emp_no
  JOIN departments ON dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Customer Service'
  AND dept_emp.to_date > curdate()
  AND titles.to_date > curdate()
group by titles.title;

#SECOND ATTEMPT:

select title, count(employees.first_name)
from titles
  join employees on titles.emp_no = employees.emp_no
  join dept_emp on employees.emp_no = dept_emp.emp_no
  join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Customer Service'
      AND dept_emp.to_date > curdate()
      AND titles.to_date > curdate()
group by title;


# Find the current salary of all current managers.

select
  CONCAT(employees.first_name, ' ', employees.last_name) as full_name,
  departments.dept_name,
  salaries.salary
from employees
  JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
  JOIN departments ON dept_manager.dept_no = departments.dept_no
  JOIN salaries ON employees.emp_no = salaries.emp_no
where salaries.to_date > curdate() AND dept_manager.to_date > curdate();

# Bonus Find the names of all current employees, their department name, and their current manager's name.

select concat(e.first_name, ' ', e.last_name) as "Employee",
  departments.dept_name,
  concat(managers.first_name, ' ', managers.last_name) as "Manager"
from employees as e
JOIN dept_emp ON e.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees as managers ON dept_manager.emp_no = managers.emp_no
where dept_emp.to_date > curdate() AND dept_manager.to_date > curdate();
