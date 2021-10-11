-- 1. Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами.
SELECT employees.employee_name, employees_salary.monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id;

-- 2. Вывести всех работников, у которых зарплата меньше 2000.
SELECT employees.employee_name, employees_salary.monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE employees_salary.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, по которым работник не назначен (ЗП есть, но непонятно, кто её получает).
SELECT employees_salary.monthly_salary
FROM employees
RIGHT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE employees.employee_name IS NULL;

-- 4. Вывести все зарплатные позиции меньше 2000, по которым работник не назначен (ЗП есть, но непонятно, кто её получает).
SELECT employees_salary.monthly_salary
FROM employees
RIGHT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE employees.employee_name IS NULL AND employees_salary.monthly_salary < 2000;

-- 5. Найти всех работников, кому не начислена зарплата.
SELECT employees.employee_name
FROM employees
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE employees_salary.monthly_salary IS NULL;

-- 6. Вывести всех работников с названиями их должности.
SELECT employees.employee_name, roles.role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id;

-- 7. Вывести имена и должности только Java-разработчиков.
SELECT employees.employee_name, roles.role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Java developer%';

-- 8. Вывести имена и должности только Python-разработчиков.
SELECT employees.employee_name, roles.role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Python developer%';

-- 9. Вывести имена и должности всех QA-инженеров.
SELECT employees.employee_name, roles.role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%QA%';

-- 10. Вывести имена и должность Manual QA-инженеров.
SELECT employees.employee_name, roles.role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Manual QA%';

-- 11. Вывести имена и должность Automation QA-инженеров.
SELECT employees.employee_name, roles.role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior-специалистов.
SELECT employees.employee_name, employees_salary.monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id
JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Junior%';

-- 13. Вывести имена и зарплаты Middle-специалистов.
SELECT employees.employee_name, employees_salary.monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id
JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Middle%';

-- 14. Вывести имена и зарплаты Senior-специалистов.
SELECT employees.employee_name, employees_salary.monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id
JOIN roles_employees
ON employees.id = roles_employees.employee_id
JOIN roles
ON roles_employees.role_id = roles.id
WHERE roles.role_name LIKE '%Senior%';

-- 15. Вывести зарплаты Java-разработчиков.
-- 16. Вывести зарплаты Python-разработчиков.
-- 17. Вывести имена и зарплаты Junior Python-разработчиков.
-- 18. Вывести имена и зарплаты Middle JS-разработчиков.
-- 19. Вывести имена и зарплаты Senior Java-разработчиков.
-- 20. Вывести зарплаты Junior QA-инженеров.
-- 21. Вывести среднюю зарплату всех Junior-специалистов.
-- 22. Вывести сумму зарплат JS-разработчиков.
-- 23. Вывести минимальную зарплату QA-инженеров.
-- 24. Вывести максимальную зарплату QA-инженеров.
-- 25. Вывести количество QA-инженеров.
-- 26. Вывести количество Middle-специалистов.
-- 27. Вывести количество разработчиков.
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
-- 29. Вывести имена, должности и зарплаты всех специалистов по возрастанию.
-- 30. Вывести имена, должности и зарплаты всех специалистов, у которых зарплата от 1700 до 2300, по возрастанию.
-- 31. Вывести имена, должности и зарплаты всех специалистов, у которых зарплата меньше 2300, по возрастанию.
-- 32. Вывести имена, должности и зарплаты всех специалистов, у которых ЗП равна 1100, 1500, 2000, по возрастанию.