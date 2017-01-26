# find the salaries of all currently employed developers:
select
  CONCAT(e.first_name, ' ', e.last_name) as full_name,
  d.dept_name,
  s.salary
from employees e
  JOIN dept_emp ON e.emp_no = dept_emp.emp_no
  JOIN departments d ON dept_emp.dept_no = d.dept_no
  JOIN salaries s ON e.emp_no = s.emp_no
where d.dept_name = 'Development' AND s.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01';