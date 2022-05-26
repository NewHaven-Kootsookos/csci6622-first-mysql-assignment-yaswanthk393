use elmasri_company;
select d.Dlocation 
from dept_locations as d
where d.Dnumber =(select pr.Dnum from works_on as wo,project as pr
where wo.Pno=pr.Pnumber
group by pr.Dnum 
order by SUM(wo.Hours) limit 1);
