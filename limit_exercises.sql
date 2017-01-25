
# List the first 10 distinct last name sorted in descending order. Your result should look like this:
#
# Zykh
# Zyda
# Zwicker
# Zweizig
# Zumaque
# Zultner
# Zucker
# Zuberek
# Zschoche
# Zongker

SELECT DISTINCT last_name from employees ORDER BY last_name desc limit 10;

# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql.
# Update it to find just the first 5 employees. Their names should be:
# Khun Bernini
# Pohua Sudkamp
# Xiaopeng Uehara
# Irene Isaak
# Dulce Wrigley

SELECT * from employees where hire_date like '199%' AND birth_date like '%-12-25' ORDER BY birth_date asc, hire_date DESC LIMIT 5;

# Try to think of your results as batches, or sets. The first five results are your first batch.
# The five after that would be your second batch, etc. Update the query to find the tenth batch of results.
# The employee names should be:

# Piyawadee Bultermann
# Heng Luft
# Yuqun Kandlur
# Basil Senzako
# Mabo Zobel

SELECT * from employees where hire_date like '199%' AND birth_date like '%-12-25' ORDER BY birth_date asc, hire_date desc
lIMIT 5 OFFSET 45;