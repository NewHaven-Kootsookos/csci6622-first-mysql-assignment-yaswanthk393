USE elmasri_company;
SELECT P.Pname, d.Dname FROM project P INNER JOIN department d ON P.Dnum=d.Dnumber
WHERE P.Pnumber IN(SELECT w.Pno FROM works_on w INNER JOIN employee e on w.Essn=e.Super_ssn WHERE w.Hours>=20.0);
