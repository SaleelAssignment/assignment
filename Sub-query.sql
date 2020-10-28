----------------------- Scaler-----------------------------------------------
-- Find the difference of total for order 'Shipped' and order 'Cancelled'
select (select sum(total) from ord where status = 'Shipped') R1, (select sum(total) from ord where status = 'Cancelled') R2 ;

---------------------- FORM------------------------------------------------
-- Use of nesting of aggregae function
select max(R1) from (select count(*) as R1 from emp group by job) T1;

----------------------- WHERE-----------------------------------------------
-- Display all employees whose salary is more than 'blake'.
select * from emp where sal > (select sal from emp where ename = 'blake');

-- Display the employees who is getting higest salary.
select * from emp where sal = (select max(sal) from emp);

-- 2nd higest salary
select max(sal) from emp where sal < (select max(sal) from emp);

-- 2nd higest salary for every jobs.
select max(sal) from emp where sal not in (select max(sal) from emp group by job) group by job;

-- Display all employees whose salary > lowest salary and sal < higest salary.
select * from emp where sal > (select min(sal) from emp) and sal < (select max(sal) from emp);

---------------------- FORM------------------------------------------------
-- Display all odd record

-- Display all employee working in least number of deptno.
select * from emp where deptno in (select  deptno from emp group by deptno having count(*)  = (select min(r1) from (select count(*) R1 from emp group by deptno) T1));

-- Display the job name where  least number of employees are working.
select job from emp where job in (select job from emp group by job having count(*) = (select min(R1) from (select count(*) R1 from emp group by job) T1));

-- Display all employees where most of the employees are working for every jobs.
select * from emp where job in (select job from emp group by job having count(*) = (select max(R1) from (select count(*) R1 from emp group by job) T1));

-- Display the customer who have placed order of maximum total sum of amount.
 select * from customer, ord where ord.custid=customer.custid group by ord.custid having sum(total) = ( select max(R1) from (select sum(total) R1 from ord group by custid) T1);
 
-- In which year max employee have joined.
 select * from emp where year(hiredate) = (select year(hiredate) from emp  group by year(hiredate) having count(*) = (select max(r1) from (select count(*) R1 from emp group by year(hiredate)) T1));
 

 ---------------------- EXISTS------------------------------------------------
-- Display deptno where not employee are working.
select * from dept where not exists (select True from emp where dept.deptno = emp.deptno);

-- Display all employees who are having any type of cards.
select * from emp where exists (select * from emp_cards where emp.empno = emp_cards.empno);

-- Display all customers who have placed any order.
select * from customers where exists (select * from orders where customers.cnum = orders.cnum);


-- Display all employees who does not have any type of cards.
select * from emp where not exists (select * from emp_cards where emp.empno = emp_cards.empno);

-- Display all customers who have not placed any order.
select * from customers where not exists (select * from orders where customers.cnum = orders.cnum);
 ----------------------------------------------------------------
 
 select a.ename, b.ename from emp a, emp b where a.hiredate = b.hiredate and a.ename<> b.ename;
 select * from salespeople where format(comm,2) > 0.1 and format(comm, 2) < 0.26;
 
 
CREATE TABLE pwd (
c1 int PRIMARY KEY,
name varchar(45),
pwd varbinary(45)
);

insert into pwd values(1,'sharmin',AES_ENCRYPT('sharmin','sharmin1'));
insert into pwd values(2,'saleel',AES_ENCRYPT('saleel','sharmin1'));
insert into pwd values(3,'kaushal',AES_ENCRYPT('kaushal','kaushal1'));
insert into pwd values(4,'ruhan',AES_ENCRYPT('ruhan','v1'));


select name, aes_decrypt(pwd,'sharmin1') from pwd;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 