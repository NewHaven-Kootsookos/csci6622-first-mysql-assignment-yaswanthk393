USE elmasri_company;
SELECT Fname,Lname,Address FROM dependent,employee WHERE Ssn=Essn AND 'Son' IN (SELECT Relationship FROM dependent WHERE Essn=Ssn)
AND 'Daughter' NOT IN(SELECT Relationship FROM dependent WHERE Essn=Ssn);
