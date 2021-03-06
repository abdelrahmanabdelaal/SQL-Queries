/*1*/
select Dname, Dnum, MGRSSN from Departments
/*2*/
select dep.dname, pr.pname
from Departments dep
join Project pr
on dep.Dnum = pr.Dnum
/*3*/
select em.fname, em.lname, dn.Dependent_name, dn.Sex, dn.Bdate
from Employee em 
join Dependent dn
on em.SSN = dn.ESSN
/*4*/
select pname, pnumber, plocation from Project
where City in ('Cairo', 'Alex')
/*5*/
select *from Project where pname like('a%')
/*6*/
select fname, lname from Employee
where dno=30 and salary between 1000 and  2000
/*7*/
select fname+' '+lname [full name]
from Employee em , Works_for wo, Project pr
where em.Dno=10 and pr.Pnumber=200 and wo.Hours>=10 and wo.Pno=pr.Pnumber and em.SSN=wo.ESSn
/*8*/
select fname, lname from Employee
where Superssn = 223344
/*9*/
select em.fname, em.lname, pr.pname
from Employee em
join Project pr
on em.dno = pr.dnum
order by pr.Pname
/*10*/
select pr.pnumber, 
select * from Project
select * from Employee
select * from Project
/*11*/
select a.*
from Employee a
join Employee b
on a.SSN = b.Superssn
/*12*/
select em.*, de.*
from Employee em
full outer join Dependent de
on em.SSN = de.essn
select * from Employee