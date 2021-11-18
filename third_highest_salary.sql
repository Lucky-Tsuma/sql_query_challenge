CREATE TABLE employee (
    employee_name VARCHAR(50),
    salary INT
);

INSERT INTO employee (employee_name, salary) 
VALUES 
    ('Evans Dzombo', 5500), 
    ('Karen Kathambi', 7800), 
    ('Jackson Jera', 4550), 
    ('Hamida Dzuya', 2750), 
    ('Wycliff Odiwor', 3500), 
    ('Anne Wanjiru', 10000);

SELECT * FROM 
(SELECT employee_name, salary, DENSE_RANK() OVER (ORDER BY salary DESC) salary_rank FROM employee) third_highest_salary
WHERE salary_rank = 3;



