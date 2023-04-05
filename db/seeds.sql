
INSERT INTO department (department_name)
VALUES ("Sales"), 
       ("Engineering"),
       ("Finance"), 
       ("Legal"); 


INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1),
       ("Salesperson", 80000, 1), 
       ("Lead Engineer", 150000, 2), 
       ("Software Engineer", 120000, 2),
       ("Account Manager", 160000, 3), 
       ("Accountant", 125000, 3),
       ("Legal Team Lead", 250000, 4),
       ("Lawyer", 190000, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Scott", 1, NULL), 
       ("Dwight", "Schrute", 2, 1), 
       ("Jim", "Halpert", 3, NULL),
       ("Pam", "Beesly", 4, 3), 
       ("Jan", "Levison", 5, NULL), 
       ("Kevin", "Malone", 6, 5),
       ("Angela", "Martin", 7, NULL),
       ("Andy", "Bernard", 8, 7);