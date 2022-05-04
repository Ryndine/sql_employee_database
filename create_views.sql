-- Retirement eligibility
CREATE VIEW retirement AS
SELECT emp_no, first_name, lASt_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Current employees
CREATE VIEW current_employees AS
SELECT ri.emp_no,
	ri.first_name,
	ri.lASt_name,
	de.to_date
FROM retirement AS ri
LEFT JOIN dept_emp AS de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

-- Employee list with gender and salary
CREATE VIEW employee_info AS
SELECT e.emp_no,
	e.first_name,
	e.lASt_name,
	e.gender,
	s.salary,
	de.to_date
FROM employees AS e
INNER JOIN salaries AS s
	ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');

-- Managers per department
CREATE VIEW manager_info AS
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.lASt_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_employees AS ce
        ON (dm.emp_no = ce.emp_no);

-- Employees with departments
CREATE VIEW department_info AS
SELECT ce.emp_no,
	ce.first_name,
	ce.lASt_name,
	d.dept_name
FROM current_employees AS ce
	INNER JOIN dept_emp AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no);
		
-- Employees in Sales and Development
CREATE VIEW sales_development AS
SELECT ce.emp_no,
	ce.first_name,
	ce.lASt_name,
	d.dept_name
FROM current_employees AS ce
	INNER JOIN dept_emp AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY ce.emp_no;