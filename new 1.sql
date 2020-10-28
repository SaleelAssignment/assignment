select ename,sal, comm, if(isnull(comm), 200, comm) R1 from emp;

select ename,sal, if(sal>=3000, '**********', sal) from emp;

select ename, if(length(ename) > 5, '****', ename) from emp;

select ename, if(left(ename,1)='a','******',ename) from emp;

select ename,job, if(isnull(phone),'**********',rpad(left(phone,4),10,'*')) from emp;

select job, field(job,'manager','salesman','analyst','clerk') as R1

select NORTH, SOUTH, EAST, WEST, field('y', NORTH, SOUTH, EAST, WEST) R1 from zone;

select NORTH, SOUTH, EAST, WEST, case field('y',NORTH, SOUTH, EAST, WEST) when 0 then 'Product not Sold' else 'Sold'  end  R1 from zone;

select NORTH, SOUTH, EAST, WEST, case field('y',NORTH, SOUTH, EAST, WEST) when 0 then 'Product not Sold' when 1 then 'North' when 2 then 'South' when 3 then 'East' when 4 then 'West'  end  R1 from zone;

select hiredate, elt(month(hiredate),'Winter', 'Winter', 'Spring', 'Spring', 'Spring', 'Summer', 'Summer', 'Summer', 'Autumn', 'Autumn', 'Autumn', 'Winter') R1 from emp;

select job, field(job,'manager','salesman','analyst','clerk') as R1 from emp order by 2;

select * from emp order by if(left(ename,1) = 'a',1,ename);


select ename, sal,losal,hisal, grade from emp, salgrade where sal between losal and hisal order by sal;

select grade, count(*) from emp, salgrade where sal between losal and hisal group by grade;

select * from  product, warehouse, location where location.LOCATIONID = warehouse.location_id;



select * from movie where exists(select * from rating where movie.mov_id = rating.mov_id);
select * from movie where not exists(select * from rating where movie.mov_id = rating.mov_id);


select * from emp where exists (select * from emp_cards where emp.empno = emp_cards.empno);
select * from emp where not exists (select * from emp_cards where emp.empno = emp_cards.empno);
















