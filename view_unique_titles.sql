CREATE VIEW unique_titles AS
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
FROM retiring_employees
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC;

SELECT * FROM unique_titles;