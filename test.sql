use employees; select * from departments;

select first_name FROM employees
WHERE first_name LIKE '%z';

select DISTINCT first_name from employees where first_name like '%z%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;