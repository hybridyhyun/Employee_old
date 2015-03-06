
select *
from dept d, emp e
where d.deptno =e.deptno
	and d.deptno = 40;
	
select *
from dept d inner join emp e
on d.deptno = e.deptno
where d.deptno =40;

select *
from dept d left join emp e
on d.deptno = e.deptno
where d.deptno =40;

insert into dept (deptno, dname, loc) values (50, '총무부', 'seoul');
insert into dept values (60, '총무부', 'seoul');
insert into dept (deptno, dname) values (70, '총무부');

delete from dept where deptno > 40;

rollback
commit

select * from dept;
select * from emp;
select * from bonus;
select * from salgrade;

REM ####################
REM DeptDao.selectAllWithEmps()
REM ####################

select  d.deptno   	as deptno,
		  d.dname    	as dname,
		  d.loc         	as loc,
		  e.empno   	as empno,
		  e.ename    	as ename,
		  e.job	    	as job,
		  e.mgr       	as mgr,
		  e.hiredate  	as hiredate,
		  e.sal			 	as sal,
		  e.comm		as comm
from dept d left outer join emp e
   on d.deptno = e.deptno
 order by d.deptno asc, e.empno desc;

