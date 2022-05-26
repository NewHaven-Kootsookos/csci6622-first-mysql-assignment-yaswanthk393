USE elmasri_company;
SELECT CONCAT(E.Fname,' ', E.Minit,' ', E.Lname) AS Employee, CONCAT(S.Fname,' ',S.Minit,' ',S.Lname)
AS Supervisor FROM employee E LEFT JOIN employee S ON S.Ssn=E.Super_ssn  ORDER BY E.Lname;
