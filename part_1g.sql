USE elmasri_company;
SELECT DISTINCT dname 
FROM dependent, employee, department
WHERE dependent.Essn = employee.Ssn AND employee.Dno = department.Dnumber
GROUP BY dependent.Essn
HAVING COUNT(dependent.Essn) =
(SELECT MAX(NUM_DEPNT) FROM( SELECT COUNT(dependent.Essn) AS NUM_DEPNT 
                       FROM dependent GROUP BY dependent.Essn) AS tb1)
