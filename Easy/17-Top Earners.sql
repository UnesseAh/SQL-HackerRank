SELECT DISTINCT (SELECT MAX(salary*months) FROM employee), SPACE(2) ,
(SELECT COUNT(*) FROM employee WHERE salary*months = (SELECT MAX(salary*months) FROM employee)) FROM employee;

SELECT MAX(salary * months) AS max_earnings,
COUNT(CASE WHEN salary * months = (SELECT MAX(salary * months) FROM Employee) THEN 1 END) AS max_earners
FROM Employee;