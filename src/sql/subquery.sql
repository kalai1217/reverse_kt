-- using demokt database
use demokt
-- display all the records in the employees table
select * from employees
-- inner query
SELECT CONCAT(first_name,last_name) as name
FROM employees
WHERE salary < (select AVG(salary) FROM employees);

select * from employees

-- nested query
SELECT * FROM employees WHERE department_id  IN 
(SELECT department_id FROM
(SELECT department_id, AVG(salary) AS AverageSalary
FROM employees
GROUP BY department_id)
AS t
WHERE t.AverageSalary > 50000);

SELECT * FROM employee;


SELECT AVG(salary) FROM employees;

--scalar sub query
SELECT CONCAT(first_name,last_name) AS name
FROM employees
WHERE salary < (SELECT AVG(SALARY) FROM employees);

--multi line sub query
SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2

SELECT first_name, department_id
FROM employees
WHERE department_id IN
 		(SELECT department_id
		FROM employees
		GROUP BY department_id
		HAVING COUNT(*) > 2)

--correlated sub query
select * from employees

SELECT *
FROM employees e1
WHERE SALARY > (
		SELECT AVG(salary)
		FROM employees
		WHERE e1.department_id = e1.department_id
);



