# Pewlett-Hackard-Analysis

## Overview of Emloyee Retirement Analysis

The team at Pewlett-Hackard are aware that a large part of their workforce is approaching their retirement age. The goal of PH headquarters was to review a list of employees who are about to retirement per title. Then the company wants to determine which employees would be eligibile for a mentorship program.

## Results

### Deliverable #1 - The Number of Retiring Employee by title

To start off the data showed that there were duplicate employees that had taken different postions so we needed to find a way to exlcude duplicates. We use the following code to make that happen.

```
SELECT DISTINCT ON(emp_no) , emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;
```

below is a picture of the unique titles table saved to a csv

<img src="https://github.com/brown-rox20/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png" alt="unique_titles.png"
width="525">

The results show that there are a lot retiring employees. According to the retiring titles table the total count of employee opening is 72,458. The department with the most elegible retirees is the Senior Engineering team with 25,916 opening followed by the senior staff with 24,926 opening.

<img src="https://github.com/brown-rox20/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png" alt="retiring_titles.png"
width="340">

### Deliverable #2 - The Employee Eligible for the Mentorship Program

The total eligible employees for the Mentorship Program is 1550. The head of the csv file is below.

<img src="https://github.com/brown-rox20/Pewlett-Hackard-Analysis/blob/main/Resources/mentoring_titles.png" alt="mentoring_titles.png"
width="525">

## Summary

- There are two departments in the senior staff that make up a large portion of retiring employees.
- Using the code below we are able to see that there are over one thousand employees to contact about the mentorship program.

```
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
```

- There will be several retirees that can help the next batch of senior staff become experts in their field.
