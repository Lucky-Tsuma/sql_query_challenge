CREATE TABLE customers(
    CustomerID INT IDENTITY(1,1) PRIMARY KEY, 
    CustomerName VARCHAR(30), 
    ContactName VARCHAR(30), 
    Address VARCHAR(15), 
    City VARCHAR(15), 
    PostalCode VARCHAR(15), 
    Country VARCHAR(15)
);

INSERT INTO customers
VALUES
    ('Arthur Manning', 'Arthur-Nairobi', '3668', 'Nairobi', '80100', 'Kenya'),
    ('Lorri Boles', 'Lorri-Mogadishu', '456', 'Mogadishu', '7667', 'Somalia'),
    ('Victor Ishee', 'Victor-Dar es salaam', '201', 'Dar es salaam', '70100', 'Tanzania'),
    ('Carin Hodge', 'Carin-Mombasa',  '868', 'Mombasa', '81500', 'Kenya'),
    ('Roland Chambless', 'Roland-Kampala',  '656', 'Kampala', '80655', 'Uganda'),
    ('Judith Mcdaniel', 'Judith-Mogadishu',  '867', 'Mogadishu', '7667', 'Somalia'),
    ('Fred Shawler', 'Fred-Dar es salaam',  '547', 'Dar es salaam', '70100', 'Tanzania'),
    ('Elaine Jones', 'Elaine-Kampala',  '658', 'Kampala', '80655', 'Uganda'),
    ('Nicholas North', 'Nicholas-Kisumu', '769', 'Kisumu', '50800', 'Kenya'),
    ('Terri Tanguay', 'Terri-Kampala',  '780', 'Kampala', '80655', 'Uganda'),
    ('James Michaud', 'James-Dar es salaam', '649', 'Dar es salaam', '70100', 'Tanzania'),
    ('Caroline Crowley', 'Caroline-Kampala',  '980', 'Kampala', '80655', 'Uganda'),
    ('Mitchell Dorsey', 'Mitchell-Dar es salaam', '637', 'Dar es salaam', '70100', 'Tanzania'),
    ('Edith Jones', 'Edith-Nakuru', '647', 'Nakuru', '70544', 'Kenya'),
    ('Willie Porras', 'Willie-Asmara', '868', 'Asmara', '10100', 'Eritrea'),
    ('Katlyn Bellamy', 'Katlyn-Eldoret', '92', 'Eldoret', '60100', 'Kenya'),
    ('Jeannie Mayberry', 'Jeannie-Addis Ababa', '64', 'Addis Ababa', '50200', 'Ethiopia'),
    ('Antonio Green', 'Antonio-Dar es salaam', '649', 'Dar es salaam', '70100', 'Tanzania'),
    ('Joe Sherman', 'Joe-Addis Ababa', '636', 'Addis Ababa', '50200', 'Ethiopia'),
    ('Marge Swaim', 'Marge-Asmara', '768', 'Asmara', '10100', 'Eritrea');

SELECT COUNT(CustomerID), Country FROM customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3;

