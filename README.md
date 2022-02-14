# Pewlett-Hackard-Analysis

## Overview of Emloyee Retirement Analysis

The team at Pewlett-Hackard are aware that a large part of their workforce is approaching their retirement age. The goal of PH headquarters was to review a list of employees who are about to retirement per title. Then the company wants to determine which employees would be eligibile for a mentorship program.

## Results

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
width="450">

The results show that there are a lot retiring employees. According to the retiring titles table the total count of employee opening is 72,458. The department with the most elegible retirees is the Senior Engineering team with 25,916 opening followed by the senior staff with 24,926 opening.

<img src="https://github.com/brown-rox20/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png" alt="retiring_titles.png"
width="340">

## Summary
