CREATE TABLE employee_table(
    employee_id INT IDENTITY(1, 1) PRIMARY KEY,
    firstname VARCHAR(15),
    lastname VARCHAR(15)
);

CREATE TABLE sales_table(
    employee_id INT,
    sale_date DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY(employee_id) REFERENCES employee_table(employee_id)
);

INSERT INTO employee_table(firstname, lastname)
VALUES
    ('Arthur', 'Manning'),
    ('Lorri', 'Boles'),
    ('Victor', 'Ishee'),
    ('Carin', 'Hodge'),
    ('Roland', 'Chambless'),
    ('Judith', 'Mcdaniel'),
    ('Fred', 'Shawler'),
    ('Elaine', 'Jones'),
    ('Nicholas', 'North'),
    ('Terri', 'Tanguay'),
    ('James', 'Michaud'),
    ('Caroline', 'Crowley'),
    ('Mitchell', 'Dorsey'),
    ('Edith', 'Jones'),
    ('Willie', 'Porras'),
    ('Katlyn', 'Bellamy'),
    ('Jeannie', 'Mayberry'),
    ('Antonio', 'Green'),
    ('Joe', 'Sherman'),
    ('Marge', 'Swaim');

INSERT INTO sales_table(employee_id)
VALUES (1), (3), (4), (7), (12), (15), (16), (19);  

--Change offset value at every loop

DECLARE @offset_value INT;
SET @offset_value = 0;

WHILE @offset_value <= (SELECT COUNT(employee_id) id FROM employee_table)
    BEGIN
        SELECT employee_table.employee_id, employee_table.firstname, employee_table.lastname, sales_table.sale_date
        FROM employee_table 
        LEFT JOIN sales_table 
        ON employee_table.employee_id = sales_table.employee_id
        WHERE sale_date IS NULL
        ORDER BY employee_id
        OFFSET @offset_value ROWS FETCH NEXT 10 ROWS ONLY;
        SET @offset_value = @offset_value + 10;
    END