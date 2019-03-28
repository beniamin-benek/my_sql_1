-- 4. Wyświetl imię, nazwisko, datę urodzenia najmłodszego mężczyzny w firmie:

SELECT first_name, last_name, birth_date FROM employees
WHERE 1=1
AND gender = 'M'
AND birth_date = (SELECT MAX(birth_date) FROM employees WHERE gender='M');

-- 5. Wyświetl pracownika o numerze 10009 z wszystkimi dotychczasowymi stanowiskami pracy:

SELECT * FROM employees
JOIN titles ON titles.emp_no = employees.emp_no
WHERE
1=1
AND employees.emp_no = 10009;

-- 6. Wyświetl pracowników z aktualnmi stanowiskami pracy:

SELECT * FROM employees
JOIN titles ON titles.emp_no = employees.emp_no
WHERE
1=1
AND titles.to_date = '9999-01-01';

-- 7. Wyświetl najlepiej zarabiającego pracownika:

SELECT * FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE
1=1
AND salary = (SELECT MAX(salary) FROM salaries WHERE to_date = '9999-01-01');

-- 8. Wyświetl najlepiej i najgorzej zarabiającego pracownika:

SELECT * FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE salaries.salary IN (SELECT MAX(salaries.salary) FROM salaries WHERE salaries.to_date = '9999-01-01')
OR salaries.salary IN (SELECT MIN(salaries.salary) FROM salaries WHERE salaries.to_date = '9999-01-01');

-- 9. Wyświetl imię i nazwisko pracownika oraz imię i nazwisko managera jego działu:



-- 10. Wyświetl wszystkie stanowiska w fimie:

SELECT DISTINCT title FROM titles; 	