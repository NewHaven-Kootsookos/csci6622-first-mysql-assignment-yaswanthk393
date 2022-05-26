USE elmasri_company;
	SELECT Ssn, Fname, Minit, Lname FROM employee 
	WHERE Dno= ALL(SELECT Dno FROM employee WHERE Salary = ALL( SELECT max(Salary) FROM employee));
