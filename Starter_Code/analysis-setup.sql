SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp
JOIN salaries sal ON emp.emp_no = sal.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE extract(year from hire_date) = 1986;

SELECT dep.dept_no, deps.dept_name, dep.emp_no, emp.last_name, emp.first_name
FROM dept_manager dep
JOIN departments deps ON dep.dept_no = deps.dept_no
JOIN employees emp ON dep.emp_no = emp.emp_no;

SELECT depemp.emp_no, emp.last_name, emp.first_name, deps.dept_name
FROM dept_emp depemp
JOIN employees emp ON depemp.emp_no = emp.emp_no
JOIN departments deps ON depemp.dept_no = deps.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT emp.emp_no, emp.last_name, emp.first_name
FROM employees emp
JOIN dept_emp depemp ON emp.emp_no = depemp.emp_no
JOIN departments deps ON depemp.dept_no = deps.dept_no
WHERE deps.dept_name = 'Sales';

SELECT emp.emp_no, emp.last_name, emp.first_name, deps.dept_name
FROM employees emp
JOIN dept_emp depemp ON emp.emp_no = depemp.emp_no
JOIN departments deps ON depemp.dept_no = deps.dept_no
WHERE deps.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) as name_count
FROM employees 
GROUP BY last_name
ORDER BY name_count DESC;



