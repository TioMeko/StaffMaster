-- View All Departments -- 
SELECT id, department_name FROM department;

-- View ALL Roles --
SELECT role.id, role.title, department.department_name, role.salary
FROM role
JOIN department ON role.department_id = department.id;

-- View All Employees -- 
SELECT employee.id, employee.first_name, employee.last_name, role.title, department.department_name AS department, role.salary, employee.manager_id
FROM employee
JOIN role ON employee.role_id = role.id
JOIN department ON role.department_id = department.id
ORDER BY employee.id;

-- * View employees by department.
SELECT department.department_name AS department, employee.id, employee.first_name, employee.last_name
FROM employee
JOIN role ON employee.role_id = role.id
JOIN department ON role.department_id = department.id
WHERE department.id = 2;

-- * View the total utilized budget of a department&mdash;in other words, the combined salaries of all employees in that department. --
SELECT department.department_name AS department, SUM(role.salary) AS total_utilized_budget
FROM employee
JOIN role ON employee.role_id = role.id
JOIN department ON role.department_id = department.id
WHERE department_name = 'Engineering';


-- * View employees by manager.
SELECT CONCAT(manager.first_name, ' ', manager.last_name) AS manager, CONCAT(emp.first_name, ' ', emp.last_name) AS employee
FROM employee emp
LEFT JOIN employee manager ON emp.manager_id = manager.id;


SELECT e.first_name, e.last_name, r.title as role, d.department_name as department, CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM employee e
LEFT JOIN role r ON e.role_id = r.id
LEFT JOIN department d ON r.department_id = d.id
LEFT JOIN employee m ON e.manager_id = m.id;