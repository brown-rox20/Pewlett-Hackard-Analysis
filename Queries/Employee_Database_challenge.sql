-- Challenge Deliverable #1
-- Create table of number of retiring Employees by title
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date,
INTO retirement_titles
FROM employee as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

--DROP TABLE retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON(emp_no) , emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Create table with number of employees by their most recent job title who are about to retire
SELECT COUNT(title) as "count", title
FROM unique_titles
--INTO retiring_titles
GROUP BY title
ORDER BY "count" DESC;


-- Challenge Deliverable #2
SELECT DISTINCT ON(emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t2.title
--INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
JOIN titles as t2
	ON (e.emp_no = t2.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965_01_01' AND '1965-12-31')
ORDER BY emp_no ASC;