--Retrieving desired columns from Employees and Titles tables
SELECT emp_no, first_name, last_name FROM employees;
SELECT title, from_date, to_date FROM titles;

--Creating retirement_titles table 
SELECT e.emp_no, e.first_name, e.last_name,
		ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti 
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Creating new table with non-duplicates titled unique_titles
SELECT DISTINCT ON (rt.emp_no)rt.emp_no, rt.first_name, rt.last_name,
					rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01' )
ORDER BY rt.emp_no ASC, rt.to_date DESC;

--Creating retiring_titles table
SELECT COUNT (ut.title) AS "count", ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY "count" DESC;

--Retrieving desired columns from Employees, Dept_emp, and Titles tables
SELECT emp_no, first_name, last_name, birth_date FROM employees;
SELECT from_date, to_date FROM dept_emp;
SELECT title FROM titles;

--Creating mentorship_elegibility table
SELECT DISTINCT ON (e.emp_no)e.emp_no, e.first_name,
					e.last_name, e.birth_date,
					de.from_date, de.to_date,
					ti.title
INTO mentorship_elegibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
	ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_elegibility;


