USE elmasri_company;
SELECT P.Pname AS Name, sum(W.Hours) AS TotalHours FROM project P INNER JOIN works_on W ON W.Pno=P.Pnumber
WHERE P.Plocation='Houston' GROUP BY W.Pno HAVING count(W.Essn)>2;
